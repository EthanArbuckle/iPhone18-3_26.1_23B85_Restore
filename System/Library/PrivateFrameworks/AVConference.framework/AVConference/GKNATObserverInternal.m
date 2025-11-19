@interface GKNATObserverInternal
- (BOOL)ensureNatCachePathExists;
- (GKNATObserverInternal)initWithOptions:(id)a3;
- (id)copyNatTypeCachePlistScheme;
- (id)copyNatTypeCache_OSXGamedScheme;
- (id)lookupCachedNATFlagsForNetwork:(id)a3;
- (id)nameForNetworkWithIPPort:(tagIPPORT *)a3 interfaceName:(id)a4;
- (int)callHTTPTestFromIPPort:(tagIPPORT *)a3 ipv6Prefix:(id *)a4 ToServer:(id)a5 isSSL:(BOOL)a6;
- (int)currentNATType;
- (int)natTypeForCommNATFlags:(unsigned int)a3 isCarrier:(BOOL)a4;
- (tagCommNATInfo)callCommNATTestFromIPPort:(tagIPPORT *)a3 ipv6Prefix:(id *)a4;
- (unsigned)setFlags:(unsigned int)a3 forInterface:(id)a4 isCached:(BOOL)a5 isCachedKey:(id)a6 mask:(unsigned int)a7;
- (void)HTTPCheckWithIPPort:(tagIPPORT *)a3 ipv6Prefix:(id *)a4 useCache:(BOOL)a5;
- (void)HTTPSCheckWithIPPort:(tagIPPORT *)a3 ipv6Prefix:(id *)a4 useCache:(BOOL)a5;
- (void)NATCheckWithIPPort:(tagIPPORT *)a3 ipv6Prefix:(id *)a4 useCache:(BOOL)a5;
- (void)cacheNATFlags:(id)a3 forNetwork:(id)a4;
- (void)calculateSummmaryNATType:(int *)a3 andCarrierNATType:(int *)a4 andNonCarrierNATType:(int *)a5 copyInterfaceInfoDictionary:(id *)a6;
- (void)clearRetries;
- (void)dealloc;
- (void)registerForNetworkChanges;
- (void)release;
- (void)reportNATType;
- (void)setDelegate:(id)a3;
- (void)shouldTryNATCheck;
- (void)tryNATCheckWithDelay:(double)a3;
- (void)updateNatTypeCache_CachePlistScheme:(id)a3;
- (void)updateNatTypeCache_OSXGamedScheme:(id)a3;
@end

@implementation GKNATObserverInternal

- (GKNATObserverInternal)initWithOptions:(id)a3
{
  v25 = *MEMORY[0x1E69E9840];
  v16.receiver = self;
  v16.super_class = GKNATObserverInternal;
  v4 = [(GKNATObserverInternal *)&v16 init];
  if (v4)
  {
    v5 = dispatch_queue_create([objc_msgSend(MEMORY[0x1E696AEC0] stringWithFormat:@"com.apple.gamekitservices.GKNATObserver.%p.natCheckQueue", v4), "UTF8String"], 0);
    v4->_natCheckQueue = v5;
    if (!v5 || (v6 = dispatch_queue_create([objc_msgSend(MEMORY[0x1E696AEC0] stringWithFormat:@"com.apple.gamekitservices.GKNATObserver.%p.reportNATQueue", v4), "UTF8String"], 0), (v4->_reportNATQueue = v6) == 0) || (v7 = dispatch_group_create(), (v4->_natCheckGroup = v7) == 0) || (v8 = dispatch_semaphore_create(1), (v4->_natCheckNetNameSema = v8) == 0))
    {

      return 0;
    }

    if ([a3 objectForKeyedSubscript:@"nonCarrier"])
    {
      v4->_nonCarrierInterfacesOnly = [objc_msgSend(a3 objectForKeyedSubscript:{@"nonCarrier", "BOOLValue"}];
    }

    if ([a3 objectForKeyedSubscript:@"checkTCPSSL"])
    {
      v4->_checkTCPAndSSL = [objc_msgSend(a3 objectForKeyedSubscript:{@"checkTCPSSL", "BOOLValue"}];
    }

    if ([a3 objectForKeyedSubscript:@"favorNonCar"])
    {
      v4->_favorNonCarrier = [objc_msgSend(a3 objectForKeyedSubscript:{@"favorNonCar", "BOOLValue"}];
    }

    if ([a3 objectForKeyedSubscript:@"carrierType"])
    {
      v4->_newCarrierType = [objc_msgSend(a3 objectForKeyedSubscript:{@"carrierType", "BOOLValue"}];
    }

    if ([a3 objectForKeyedSubscript:@"addInRange"])
    {
      v4->_addInRangeFlag = [objc_msgSend(a3 objectForKeyedSubscript:{@"addInRange", "BOOLValue"}];
    }

    if ([a3 objectForKeyedSubscript:@"addCarrier"])
    {
      v4->_addCarrierFlag = [objc_msgSend(a3 objectForKeyedSubscript:{@"addCarrier", "BOOLValue"}];
    }

    if ([a3 objectForKeyedSubscript:@"ignoreCache"])
    {
      v4->_ignoreNatTypeCache = [objc_msgSend(a3 objectForKeyedSubscript:{@"ignoreCache", "BOOLValue"}];
    }

    if ([a3 objectForKeyedSubscript:@"ignoreCarrierBundle"])
    {
      v4->_ignoreCarrierBundle = [objc_msgSend(a3 objectForKeyedSubscript:{@"ignoreCarrierBundle", "BOOLValue"}];
    }

    v4->_interfaceInfoDictionary = objc_alloc_init(MEMORY[0x1E695DF90]);
    v4->_currentNetworkNames = objc_alloc_init(MEMORY[0x1E695DF90]);
    v4->_lastReportedNATType = -1;
    v4->_xNATCheck = objc_alloc_init(MEMORY[0x1E696AE68]);
    v4->_hasNATCheckStarted = 0;
    v4->_hasNATCheckEnded = 0;
    [(GKNATObserverInternal *)v4 registerForNetworkChanges];
    v9 = objc_opt_class();
    objc_sync_enter(v9);
    if (!cachedNATTypeDictionary)
    {
      if (VRTraceGetErrorLogLevelForModule() >= 8)
      {
        v10 = VRTraceErrorLogLevelToCSTR();
        v11 = *MEMORY[0x1E6986650];
        v12 = *MEMORY[0x1E6986650];
        if (*MEMORY[0x1E6986640] == 1)
        {
          if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 136315650;
            v18 = v10;
            v19 = 2080;
            v20 = "[GKNATObserverInternal initWithOptions:]";
            v21 = 1024;
            v22 = 357;
            _os_log_impl(&dword_1DB56E000, v11, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d GKNATObserver: no NAT cache available, running NAT check", buf, 0x1Cu);
          }
        }

        else if (os_log_type_enabled(v12, OS_LOG_TYPE_DEBUG))
        {
          [GKNATObserverInternal initWithOptions:];
        }
      }

      [(GKNATObserverInternal *)v4 tryNATCheckWithDelay:0.0];
    }

    objc_sync_exit(v9);
  }

  if (VRTraceGetErrorLogLevelForModule() >= 7)
  {
    v13 = VRTraceErrorLogLevelToCSTR();
    v14 = *MEMORY[0x1E6986650];
    if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315906;
      v18 = v13;
      v19 = 2080;
      v20 = "[GKNATObserverInternal initWithOptions:]";
      v21 = 1024;
      v22 = 363;
      v23 = 2048;
      v24 = v4;
      _os_log_impl(&dword_1DB56E000, v14, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d GKNATObserverInternal(%p) -init", buf, 0x26u);
    }
  }

  return v4;
}

- (void)release
{
  v5 = *MEMORY[0x1E69E9840];
  sccontext = self->_sccontext;
  objc_sync_enter(sccontext);
  v4.receiver = self;
  v4.super_class = GKNATObserverInternal;
  [(GKNATObserverInternal *)&v4 release];
  objc_sync_exit(sccontext);
}

- (void)dealloc
{
  v14 = *MEMORY[0x1E69E9840];
  if (VRTraceGetErrorLogLevelForModule() >= 7)
  {
    v3 = VRTraceErrorLogLevelToCSTR();
    v4 = *MEMORY[0x1E6986650];
    if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315906;
      v7 = v3;
      v8 = 2080;
      v9 = "[GKNATObserverInternal dealloc]";
      v10 = 1024;
      v11 = 377;
      v12 = 2048;
      v13 = self;
      _os_log_impl(&dword_1DB56E000, v4, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d GKNATObserverInternal(%p) -dealloc", buf, 0x26u);
    }
  }

  VCNAT64ResolverDeregisterAll(self);
  [(GKNATObserver_SCContext *)self->_sccontext setObserver:0];

  [(GKNATObserverInternal *)self setDelegate:0];
  objc_storeWeak(&self->_delegate, 0);

  dispatch_release(self->_natCheckQueue);
  dispatch_release(self->_reportNATQueue);
  dispatch_release(self->_natCheckGroup);
  dispatch_release(self->_natCheckNetNameSema);
  v5.receiver = self;
  v5.super_class = GKNATObserverInternal;
  [(GKNATObserverInternal *)&v5 dealloc];
}

- (int)natTypeForCommNATFlags:(unsigned int)a3 isCarrier:(BOOL)a4
{
  if (!a3)
  {
    v4 = 0;
    goto LABEL_26;
  }

  if (a3)
  {
    v4 = 6;
    if ((a3 & 0x800) != 0)
    {
      v5 = 5;
    }

    else
    {
      v5 = 4;
    }

    v6 = (a3 & 0x1000) == 0;
  }

  else
  {
    if (a4 && self->_newCarrierType && !self->_addCarrierFlag)
    {
      v4 = 128;
      if ((a3 & 0x2000) == 0)
      {
        goto LABEL_22;
      }

      goto LABEL_19;
    }

    v4 = 1;
    if ((a3 & 4) != 0)
    {
      v5 = 3;
    }

    else
    {
      v5 = 2;
    }

    v6 = (a3 & 2) == 0;
  }

  if (v6)
  {
    v4 = v5;
  }

  if ((a3 & 0x2000) != 0)
  {
LABEL_19:
    if (a4 && self->_addCarrierFlag)
    {
      v4 = 4;
    }
  }

LABEL_22:
  if ((a3 & 0x10) == 0 || !self->_addInRangeFlag)
  {
LABEL_26:
    v7 = 0;
    if (!a4)
    {
      return v4 + v7;
    }

    goto LABEL_27;
  }

  v7 = 64;
  if (!a4)
  {
    return v4 + v7;
  }

LABEL_27:
  if (self->_addCarrierFlag)
  {
    v4 += 128;
  }

  else if (self->_newCarrierType)
  {
    v4 = 128;
  }

  return v4 + v7;
}

- (unsigned)setFlags:(unsigned int)a3 forInterface:(id)a4 isCached:(BOOL)a5 isCachedKey:(id)a6 mask:(unsigned int)a7
{
  v9 = a5;
  v36 = *MEMORY[0x1E69E9840];
  v13 = [(NSMutableDictionary *)self->_interfaceInfoDictionary objectForKeyedSubscript:a4];
  if (!v13)
  {
    v13 = [MEMORY[0x1E695DF90] dictionary];
    [(NSMutableDictionary *)self->_interfaceInfoDictionary setObject:v13 forKeyedSubscript:a4];
    v14 = MEMORY[0x1E696AD98];
    if ([a4 hasPrefix:@"gk_ci_"])
    {
      v15 = 1;
    }

    else
    {
      v15 = 2;
    }

    [v13 setObject:objc_msgSend(v14 forKeyedSubscript:{"numberWithInt:", v15), @"interfaceType"}];
  }

  v16 = [objc_msgSend(v13 objectForKeyedSubscript:{@"commnatFlags", "unsignedLongValue"}];
  [v13 setObject:objc_msgSend(MEMORY[0x1E696AD98] forKeyedSubscript:{"numberWithUnsignedInt:", v16 & ~a7 | a7 & a3), @"commnatFlags"}];
  [v13 setObject:objc_msgSend(MEMORY[0x1E696AD98] forKeyedSubscript:{"numberWithBool:", v9), a6}];
  if (VRTraceGetErrorLogLevelForModule() >= 6)
  {
    v17 = VRTraceErrorLogLevelToCSTR();
    v18 = *MEMORY[0x1E6986650];
    if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
    {
      v20 = 136316930;
      v21 = v17;
      v22 = 2080;
      v23 = "[GKNATObserverInternal setFlags:forInterface:isCached:isCachedKey:mask:]";
      v24 = 1024;
      v25 = 467;
      v26 = 1024;
      v27 = a3;
      v28 = 1024;
      v29 = a7;
      v30 = 1024;
      v31 = v16;
      v32 = 1024;
      v33 = v16 & ~a7 | a7 & a3;
      v34 = 1024;
      v35 = v9;
      _os_log_impl(&dword_1DB56E000, v18, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d GKNATObserver setting flags[%08X] mask[%08X] old[%08X]=>result[%08X] (cached:%d)", &v20, 0x3Au);
    }
  }

  return v16 & ~a7 | a7 & a3;
}

- (void)calculateSummmaryNATType:(int *)a3 andCarrierNATType:(int *)a4 andNonCarrierNATType:(int *)a5 copyInterfaceInfoDictionary:(id *)a6
{
  v40 = *MEMORY[0x1E69E9840];
  v36 = 0u;
  v37 = 0u;
  v38 = 0u;
  v39 = 0u;
  obj = self->_interfaceInfoDictionary;
  v11 = [(NSMutableDictionary *)obj countByEnumeratingWithState:&v36 objects:v35 count:16];
  if (!v11)
  {
    v14 = 0;
    v13 = 0;
    v29 = 0;
    if (!a3)
    {
      goto LABEL_51;
    }

    goto LABEL_50;
  }

  v12 = v11;
  v30 = a3;
  v31 = a4;
  v32 = a5;
  v33 = a6;
  v13 = 0;
  v14 = 0;
  v15 = *v37;
  do
  {
    for (i = 0; i != v12; ++i)
    {
      if (*v37 != v15)
      {
        objc_enumerationMutation(obj);
      }

      v17 = *(*(&v36 + 1) + 8 * i);
      v18 = [(NSMutableDictionary *)self->_interfaceInfoDictionary objectForKeyedSubscript:v17, v30];
      if (v18)
      {
        v19 = v18;
        v20 = [v17 hasPrefix:@"gk_ci_"];
        v21 = -[GKNATObserverInternal natTypeForCommNATFlags:isCarrier:](self, "natTypeForCommNATFlags:isCarrier:", [objc_msgSend(v19 objectForKeyedSubscript:{@"commnatFlags", "unsignedLongValue"}], objc_msgSend(v17, "hasPrefix:", @"gk_ci_"));
        if (v20)
        {
          v22 = v13;
        }

        else
        {
          v22 = v14;
        }

        v23 = v21 - 128;
        if (v21 <= 0x7F)
        {
          v23 = v21;
        }

        if (v22 > 0x7F)
        {
          v22 -= 128;
        }

        if (v23)
        {
          if (!v22 || v23 != 4 && (v22 != 4 ? (v24 = v23 >= v22) : (v24 = 0), !v24))
          {
            if (v20)
            {
              v13 = v21;
            }

            else
            {
              v14 = v21;
            }
          }
        }
      }
    }

    v12 = [(NSMutableDictionary *)obj countByEnumeratingWithState:&v36 objects:v35 count:16];
  }

  while (v12);
  if (self->_favorNonCarrier && (v14 & 0xFFFFFFFB) != 0)
  {
    v29 = v14;
    a5 = v32;
    a6 = v33;
    a3 = v30;
    a4 = v31;
    if (!v30)
    {
      goto LABEL_51;
    }

LABEL_50:
    *a3 = v29;
    goto LABEL_51;
  }

  v26 = v13 - 128;
  if (v13 <= 0x7F)
  {
    v26 = v13;
  }

  v27 = v14 - 128;
  if (v14 <= 0x7F)
  {
    v27 = v14;
  }

  a3 = v30;
  if (!v26)
  {
    v29 = v14;
    a5 = v32;
    a6 = v33;
    a4 = v31;
    if (!v30)
    {
      goto LABEL_51;
    }

    goto LABEL_50;
  }

  a5 = v32;
  a6 = v33;
  a4 = v31;
  if (!v27 || v26 != 4 && (v26 >= v27 ? (v28 = v27 == 4) : (v28 = 1), v28))
  {
    v29 = v13;
    if (!v30)
    {
      goto LABEL_51;
    }

    goto LABEL_50;
  }

  v29 = v14;
  if (v30)
  {
    goto LABEL_50;
  }

LABEL_51:
  if (a4)
  {
    *a4 = v13;
  }

  if (a5)
  {
    *a5 = v14;
  }

  if (a6)
  {
    *a6 = [(NSMutableDictionary *)self->_interfaceInfoDictionary copyGKSDeepMutable];
  }
}

- (int)currentNATType
{
  v16 = *MEMORY[0x1E69E9840];
  [(NSRecursiveLock *)self->_xNATCheck lock];
  if (VRTraceGetErrorLogLevelForModule() >= 7)
  {
    v3 = VRTraceErrorLogLevelToCSTR();
    v4 = *MEMORY[0x1E6986650];
    if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
    {
      interfaceInfoDictionary = self->_interfaceInfoDictionary;
      if (interfaceInfoDictionary)
      {
        v6 = [-[NSMutableDictionary description](interfaceInfoDictionary "description")];
      }

      else
      {
        v6 = "<nil>";
      }

      v8 = 136315906;
      v9 = v3;
      v10 = 2080;
      v11 = "[GKNATObserverInternal currentNATType]";
      v12 = 1024;
      v13 = 556;
      v14 = 2080;
      v15 = v6;
      _os_log_impl(&dword_1DB56E000, v4, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d GKNATObserver _commNATFlagDictionary = %s", &v8, 0x26u);
    }
  }

  v8 = -1431655766;
  [(GKNATObserverInternal *)self calculateSummmaryNATType:&v8 andCarrierNATType:0 andNonCarrierNATType:0 copyInterfaceInfoDictionary:0];
  [(NSRecursiveLock *)self->_xNATCheck unlock];
  return v8;
}

- (void)shouldTryNATCheck
{
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_2_1(&dword_1DB56E000, v0, v1, " [%s] %s:%d GKNATObserver: running NAT check from startConnection", v2, v3, v4, v5, v6);
}

- (void)reportNATType
{
  v3[5] = *MEMORY[0x1E69E9840];
  reportNATQueue = self->_reportNATQueue;
  v3[0] = MEMORY[0x1E69E9820];
  v3[1] = 3221225472;
  v3[2] = __38__GKNATObserverInternal_reportNATType__block_invoke;
  v3[3] = &unk_1E85F3778;
  v3[4] = self;
  dispatch_async(reportNATQueue, v3);
}

void __38__GKNATObserverInternal_reportNATType__block_invoke(uint64_t a1)
{
  v44 = *MEMORY[0x1E69E9840];
  v32 = -1431655766;
  v33 = -1431655766;
  v31 = -1431655766;
  v30 = 0xAAAAAAAAAAAAAAAALL;
  v2 = (a1 + 32);
  [*(*(a1 + 32) + 24) lock];
  [*v2 calculateSummmaryNATType:&v33 andCarrierNATType:&v32 andNonCarrierNATType:&v31 copyInterfaceInfoDictionary:&v30];
  [*(*v2 + 3) unlock];
  if (![*v2 delegate])
  {
    if (VRTraceGetErrorLogLevelForModule() < 5)
    {
      goto LABEL_40;
    }

    v12 = VRTraceErrorLogLevelToCSTR();
    v13 = *MEMORY[0x1E6986650];
    if (!os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_40;
    }

    *buf = 136316418;
    v35 = v12;
    v36 = 2080;
    v37 = "[GKNATObserverInternal reportNATType]_block_invoke";
    v38 = 1024;
    v39 = 640;
    v40 = 1024;
    *v41 = v33;
    *&v41[4] = 1024;
    *&v41[6] = v32;
    v42 = 1024;
    v43 = v31;
    v14 = " [%s] %s:%d GKNATObserver cannot report NAT Type %d (%d/%d), delegate is nil!";
LABEL_19:
    _os_log_impl(&dword_1DB56E000, v13, OS_LOG_TYPE_DEFAULT, v14, buf, 0x2Eu);
    goto LABEL_40;
  }

  [*(a1 + 32) delegate];
  if (objc_opt_respondsToSelector())
  {
    v3 = objc_alloc(MEMORY[0x1E695DF90]);
    v4 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:v33];
    v5 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:v32];
    v6 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:v31];
    v7 = [v3 initWithObjectsAndKeys:{v4, @"summaryType", v5, @"carrierType", v6, @"nonCarrierType", v30, @"ifDictionary", 0}];
    v8 = objc_opt_class();
    objc_sync_enter(v8);
    v9 = cachedNATTypeDictionary;
    if (*(*(a1 + 32) + 137) == 1)
    {
      cachedNATTypeDictionary = v7;

      if (VRTraceGetErrorLogLevelForModule() >= 7)
      {
        v10 = VRTraceErrorLogLevelToCSTR();
        v11 = *MEMORY[0x1E6986650];
        if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
        {
          *buf = 136315650;
          v35 = v10;
          v36 = 2080;
          v37 = "[GKNATObserverInternal reportNATType]_block_invoke";
          v38 = 1024;
          v39 = 599;
          _os_log_impl(&dword_1DB56E000, v11, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d GKNATObserver: updating cache with new NAT dict", buf, 0x1Cu);
        }
      }
    }

    else if (cachedNATTypeDictionary)
    {
      v20 = cachedNATTypeDictionary;

      v33 = [objc_msgSend(v20 objectForKeyedSubscript:{@"summaryType", "unsignedLongValue"}];
      v32 = [objc_msgSend(v20 objectForKeyedSubscript:{@"carrierType", "unsignedLongValue"}];
      v31 = [objc_msgSend(v20 objectForKeyedSubscript:{@"nonCarrierType", "unsignedLongValue"}];
      if (VRTraceGetErrorLogLevelForModule() >= 7)
      {
        v21 = VRTraceErrorLogLevelToCSTR();
        v22 = *MEMORY[0x1E6986650];
        if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
        {
          *buf = 136315650;
          v35 = v21;
          v36 = 2080;
          v37 = "[GKNATObserverInternal reportNATType]_block_invoke";
          v38 = 1024;
          v39 = 610;
          _os_log_impl(&dword_1DB56E000, v22, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d GKNATObserver: using cached NAT dict", buf, 0x1Cu);
        }
      }

      v7 = v20;
    }

    objc_sync_exit(v8);
    v23 = *(a1 + 32);
    if (v23[8] == v33 && v23[9] == v32 && v23[10] == v31)
    {
      if (VRTraceGetErrorLogLevelForModule() >= 6)
      {
        v24 = VRTraceErrorLogLevelToCSTR();
        v25 = *MEMORY[0x1E6986650];
        if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
        {
          if (v7)
          {
            v26 = [objc_msgSend(v7 "description")];
          }

          else
          {
            v26 = "<nil>";
          }

          *buf = 136315906;
          v35 = v24;
          v36 = 2080;
          v37 = "[GKNATObserverInternal reportNATType]_block_invoke";
          v38 = 1024;
          v39 = 624;
          v40 = 2080;
          *v41 = v26;
          _os_log_impl(&dword_1DB56E000, v25, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d GKNATObserver not reporting NAT Type dictionary [%s] - no change", buf, 0x26u);
        }
      }
    }

    else
    {
      v23[8] = v33;
      *(*(a1 + 32) + 36) = v32;
      *(*(a1 + 32) + 40) = v31;
      if (VRTraceGetErrorLogLevelForModule() >= 6)
      {
        v27 = VRTraceErrorLogLevelToCSTR();
        v28 = *MEMORY[0x1E6986650];
        if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
        {
          if (v7)
          {
            v29 = [objc_msgSend(v7 "description")];
          }

          else
          {
            v29 = "<nil>";
          }

          *buf = 136315906;
          v35 = v27;
          v36 = 2080;
          v37 = "[GKNATObserverInternal reportNATType]_block_invoke";
          v38 = 1024;
          v39 = 621;
          v40 = 2080;
          *v41 = v29;
          _os_log_impl(&dword_1DB56E000, v28, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d GKNATObserver reporting NAT Type dictionary [%s]", buf, 0x26u);
        }
      }

      [objc_msgSend(*(a1 + 32) "delegate")];
    }

    goto LABEL_40;
  }

  [*(a1 + 32) delegate];
  if ((objc_opt_respondsToSelector() & 1) == 0)
  {
    if (VRTraceGetErrorLogLevelForModule() < 5)
    {
      goto LABEL_40;
    }

    v19 = VRTraceErrorLogLevelToCSTR();
    v13 = *MEMORY[0x1E6986650];
    if (!os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_40;
    }

    *buf = 136316418;
    v35 = v19;
    v36 = 2080;
    v37 = "[GKNATObserverInternal reportNATType]_block_invoke";
    v38 = 1024;
    v39 = 637;
    v40 = 1024;
    *v41 = v33;
    *&v41[4] = 1024;
    *&v41[6] = v32;
    v42 = 1024;
    v43 = v31;
    v14 = " [%s] %s:%d GKNATObserver cannot report NAT Type %d (%d/%d), delegate does not respond to callbacks!";
    goto LABEL_19;
  }

  v15 = [*(a1 + 32) currentNATType];
  v33 = v15;
  if (*(*(a1 + 32) + 32) != v15)
  {
    *(*(a1 + 32) + 32) = v15;
    if (VRTraceGetErrorLogLevelForModule() >= 6)
    {
      v16 = VRTraceErrorLogLevelToCSTR();
      v17 = *MEMORY[0x1E6986650];
      if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
      {
        *buf = 136315906;
        v35 = v16;
        v36 = 2080;
        v37 = "[GKNATObserverInternal reportNATType]_block_invoke";
        v38 = 1024;
        v39 = 633;
        v40 = 1024;
        *v41 = v33;
        _os_log_impl(&dword_1DB56E000, v17, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d GKNATObserver reporting NAT Type %d", buf, 0x22u);
      }
    }

    v18 = [*(a1 + 32) delegate];
    [v18 NATTypeDidChange:v33];
  }

LABEL_40:
}

- (void)setDelegate:(id)a3
{
  objc_sync_enter(self);
  if (!a3 || [(GKNATObserverInternal *)self delegate]!= a3)
  {
    objc_storeWeak(&self->_delegate, a3);
    v5 = [(GKNATObserverInternal *)self delegate];
    dynamicStore = self->_dynamicStore;
    if (v5)
    {
      if (!dynamicStore)
      {
        [(GKNATObserverInternal *)self registerForNetworkChanges];
      }

      self->_lastReportedNATType = -1;
      [(GKNATObserverInternal *)self reportNATType];
    }

    else if (dynamicStore)
    {
      SCDynamicStoreSetDispatchQueue(dynamicStore, 0);
      v7 = self->_dynamicStore;
      if (v7)
      {
        CFRelease(v7);
        self->_dynamicStore = 0;
      }
    }
  }

  objc_sync_exit(self);
}

- (tagCommNATInfo)callCommNATTestFromIPPort:(tagIPPORT *)a3 ipv6Prefix:(id *)a4
{
  v44 = *MEMORY[0x1E69E9840];
  dwIPv4 = InterpretAddressX();
  v5 = InterpretAddressX();
  v6 = [GKSConnectivitySettings getIPPortForService:@"gk-commnat-main0-name"];
  if (!v6)
  {
    v6 = [GKSConnectivitySettings getIPPortForService:@"gk-commnat-main0"];
  }

  v7 = [GKSConnectivitySettings getIPPortForService:@"gk-commnat-main1-name", a4, a3];
  if (!v7)
  {
    v7 = [GKSConnectivitySettings getIPPortForService:@"gk-commnat-main1"];
  }

  v8 = [GKSConnectivitySettings getIPPortForService:@"gk-commnat-cohort-name"];
  if (!v8)
  {
    v8 = [GKSConnectivitySettings getIPPortForService:@"gk-commnat-cohort"];
  }

  [+[GKSConnectivitySettings getClientOption:](GKSConnectivitySettings getClientOption:{@"gk-p2p-nat-type-timeout", "doubleValue"}];
  v10 = v9;
  ErrorLogLevelForModule = VRTraceGetErrorLogLevelForModule();
  if (v10 <= 0.0)
  {
    v10 = 10.0;
    if (ErrorLogLevelForModule >= 7)
    {
      v15 = VRTraceErrorLogLevelToCSTR();
      v13 = *MEMORY[0x1E6986650];
      if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
      {
        *buf = 136315906;
        v35 = v15;
        v36 = 2080;
        v37 = "[GKNATObserverInternal callCommNATTestFromIPPort:ipv6Prefix:]";
        v38 = 1024;
        v39 = 705;
        v40 = 2048;
        *v41 = 0x4024000000000000;
        v14 = " [%s] %s:%d natchecktimeout using default: %lf";
        goto LABEL_14;
      }
    }
  }

  else if (ErrorLogLevelForModule >= 7)
  {
    v12 = VRTraceErrorLogLevelToCSTR();
    v13 = *MEMORY[0x1E6986650];
    if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315906;
      v35 = v12;
      v36 = 2080;
      v37 = "[GKNATObserverInternal callCommNATTestFromIPPort:ipv6Prefix:]";
      v38 = 1024;
      v39 = 707;
      v40 = 2048;
      *v41 = v10;
      v14 = " [%s] %s:%d natchecktimeout set to %lf from bag";
LABEL_14:
      _os_log_impl(&dword_1DB56E000, v13, OS_LOG_TYPE_DEFAULT, v14, buf, 0x26u);
    }
  }

  v16 = [MEMORY[0x1E695E000] standardUserDefaults];
  v17 = [v16 objectForKey:@"CommNATMainIP"];
  v18 = [v16 objectForKey:@"CommNATMainPort0"];
  v19 = [v16 objectForKey:@"CommNATMainPort1"];
  v20 = [v16 objectForKey:@"CommNATCohortIP"];
  v21 = [v16 objectForKey:@"CommNATCohortPort0"];
  if (!v17)
  {
    if (v6)
    {
      dwIPv4 = v6->IP.dwIPv4;
      if (!v18)
      {
        goto LABEL_20;
      }
    }

    else if (!v18)
    {
LABEL_27:
      wPort = 16385;
      if (!v19)
      {
        goto LABEL_28;
      }

LABEL_25:
      v23 = [v19 integerValue];
      if (v20)
      {
        goto LABEL_30;
      }

      goto LABEL_33;
    }

LABEL_24:
    wPort = [v18 integerValue];
    if (!v19)
    {
      goto LABEL_28;
    }

    goto LABEL_25;
  }

  [v17 UTF8String];
  dwIPv4 = InterpretAddressX();
  if (v18)
  {
    goto LABEL_24;
  }

LABEL_20:
  if (!v6)
  {
    goto LABEL_27;
  }

  wPort = v6->wPort;
  if (v19)
  {
    goto LABEL_25;
  }

LABEL_28:
  if (v7)
  {
    v23 = v7->wPort;
    if (v20)
    {
      goto LABEL_30;
    }
  }

  else
  {
    v23 = 16386;
    if (v20)
    {
LABEL_30:
      [v20 UTF8String];
      v5 = InterpretAddressX();
      if (!v21)
      {
        goto LABEL_38;
      }

      goto LABEL_37;
    }
  }

LABEL_33:
  if (v8)
  {
    v5 = v8->IP.dwIPv4;
    if (!v21)
    {
      goto LABEL_38;
    }

    goto LABEL_37;
  }

  if (v21)
  {
LABEL_37:
    [v21 integerValue];
  }

LABEL_38:
  free(v6);
  free(v7);
  free(v8);
  v24 = micro();
  v25 = CommNAT_Test(v33, 0x4013u, dwIPv4, v10, wPort, v23, v5);
  if (VRTraceGetErrorLogLevelForModule() >= 7)
  {
    v26 = VRTraceErrorLogLevelToCSTR();
    v27 = *MEMORY[0x1E6986650];
    if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
    {
      if (v25)
      {
        var0 = v25->var0;
      }

      else
      {
        var0 = 0;
      }

      v29 = micro();
      *buf = 136316418;
      v35 = v26;
      v36 = 2080;
      v37 = "[GKNATObserverInternal callCommNATTestFromIPPort:ipv6Prefix:]";
      v38 = 1024;
      v39 = 750;
      v40 = 1024;
      *v41 = var0;
      *&v41[4] = 2048;
      *&v41[6] = v29 - v24;
      v42 = 2080;
      v43 = v33 + 1;
      _os_log_impl(&dword_1DB56E000, v27, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d commnat_test: [%08X] after %0.6lfs (%s)", buf, 0x36u);
    }
  }

  return v25;
}

- (int)callHTTPTestFromIPPort:(tagIPPORT *)a3 ipv6Prefix:(id *)a4 ToServer:(id)a5 isSSL:(BOOL)a6
{
  v6 = a6;
  v97 = *MEMORY[0x1E69E9840];
  *&v9.sa_len = 0xAAAAAAAAAAAAAAAALL;
  *&v9.sa_data[6] = 0xAAAAAAAAAAAAAAAALL;
  v95 = v9;
  v94 = v9;
  v93 = v9;
  v92 = v9;
  v91 = v9;
  v90 = v9;
  v89 = v9;
  v88 = v9;
  v75 = -1431655766;
  [+[GKSConnectivitySettings getClientOption:](GKSConnectivitySettings getClientOption:{@"gk-p2p-nat-type-timeout", "doubleValue"}];
  v11 = v10;
  if (v10 <= 0.0)
  {
    v11 = 10.0;
    if (VRTraceGetErrorLogLevelForModule() >= 7)
    {
      v12 = VRTraceErrorLogLevelToCSTR();
      v13 = *MEMORY[0x1E6986650];
      if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
      {
        *buf = 136315906;
        *&buf[4] = v12;
        *&buf[12] = 2080;
        *&buf[14] = "[GKNATObserverInternal callHTTPTestFromIPPort:ipv6Prefix:ToServer:isSSL:]";
        *&buf[22] = 1024;
        *&buf[24] = 821;
        *&buf[28] = 2048;
        *&buf[30] = 0x4024000000000000;
        _os_log_impl(&dword_1DB56E000, v13, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d natchecktimeout using default: %lf", buf, 0x26u);
      }
    }
  }

  v14 = *MEMORY[0x1E695E480];
  v15 = CFURLCreateWithString(*MEMORY[0x1E695E480], a5, 0);
  v16 = CFURLCopyHostName(v15);
  [(__CFString *)v16 UTF8String];
  v75 = InterpretAddressX();
  v17 = CFURLGetPortNumber(v15);
  if (v17 < 1)
  {
    if (v6)
    {
      v18 = 443;
    }

    else
    {
      v18 = 80;
    }
  }

  else
  {
    v18 = v17;
    v19 = v6;
    v20 = CFStringCreateWithFormat(v14, 0, @"%@:%u", v16, v17);
    CFRelease(v16);
    v16 = v20;
    v6 = v19;
  }

  v21 = buf;
  memset(buf, 170, sizeof(buf));
  memset(__b, 170, sizeof(__b));
  v71 = v6;
  if (v6)
  {
    v21 = &cSSLClientHello;
    v70 = 51;
  }

  else
  {
    Request = CFHTTPMessageCreateRequest(v14, @"GET", v15, *MEMORY[0x1E695ADB8]);
    CFHTTPMessageSetHeaderFieldValue(Request, @"Host", v16);
    v23 = CFHTTPMessageCopySerializedMessage(Request);
    Length = CFDataGetLength(v23);
    if (Length >= 1024)
    {
      v25 = 1024;
    }

    else
    {
      v25 = Length;
    }

    CFDataGetBytePtr(v23);
    __memcpy_chk();
    CFRelease(Request);
    CFRelease(v23);
    buf[v25] = 0;
    v70 = v25;
  }

  if (VRTraceGetErrorLogLevelForModule() >= 7)
  {
    v26 = VRTraceErrorLogLevelToCSTR();
    v27 = *MEMORY[0x1E6986650];
    if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
    {
      if (a5)
      {
        v28 = [objc_msgSend(a5 "description")];
      }

      else
      {
        v28 = "<nil>";
      }

      v96.fds_bits[0] = 136317186;
      *&v96.fds_bits[1] = v26;
      LOWORD(v96.fds_bits[3]) = 2080;
      *(&v96.fds_bits[3] + 2) = "[GKNATObserverInternal callHTTPTestFromIPPort:ipv6Prefix:ToServer:isSSL:]";
      HIWORD(v96.fds_bits[5]) = 1024;
      v96.fds_bits[6] = 851;
      LOWORD(v96.fds_bits[7]) = 2080;
      *(&v96.fds_bits[7] + 2) = v28;
      HIWORD(v96.fds_bits[9]) = 1024;
      v96.fds_bits[10] = HIBYTE(v75);
      LOWORD(v96.fds_bits[11]) = 1024;
      *(&v96.fds_bits[11] + 2) = BYTE2(v75);
      HIWORD(v96.fds_bits[12]) = 1024;
      v96.fds_bits[13] = BYTE1(v75);
      LOWORD(v96.fds_bits[14]) = 1024;
      *(&v96.fds_bits[14] + 2) = v75;
      HIWORD(v96.fds_bits[15]) = 1024;
      v96.fds_bits[16] = v18;
      _os_log_impl(&dword_1DB56E000, v27, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d callHTTPTestFromIPPort: [%s], IP: %u.%u.%u.%u:%u", &v96, 0x44u);
    }
  }

  CFRelease(v15);
  CFRelease(v16);
  if (a3->iFlags)
  {
    v29 = 30;
  }

  else
  {
    v29 = 2;
  }

  v30 = socket(v29, 1, 6);
  if (v30 == -1)
  {
    if (VRTraceGetErrorLogLevelForModule() >= 3)
    {
      VRTraceErrorLogLevelToCSTR();
      if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
      {
        [GKNATObserverInternal callHTTPTestFromIPPort:ipv6Prefix:ToServer:isSSL:];
      }
    }

    return 0;
  }

  v31 = v30;
  v85.fds_bits[0] = 1;
  setsockopt(v30, 0xFFFF, 4130, &v85, 4u);
  memset(&v96, 0, sizeof(v96));
  FillSockAddrStorage();
  if (bind(v31, &v96, LOBYTE(v96.fds_bits[0])))
  {
    if (VRTraceGetErrorLogLevelForModule() >= 3)
    {
      VRTraceErrorLogLevelToCSTR();
      if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
      {
        [GKNATObserverInternal callHTTPTestFromIPPort:ipv6Prefix:ToServer:isSSL:];
      }
    }

LABEL_30:
    close(v31);
    return 0;
  }

  if ((v31 & 0x80000000) != 0)
  {
    return 0;
  }

  v32 = fcntl(v31, 3, 0);
  fcntl(v31, 4, v32 | 4u);
  FillSockAddrStorage();
  v33 = connect(v31, &v88, v88.sa_len);
  if (v33)
  {
    v34 = v71;
    if (v33 == -1 && *__error() != 36)
    {
      if (VRTraceGetErrorLogLevelForModule() >= 3)
      {
        VRTraceErrorLogLevelToCSTR();
        if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
        {
          [GKNATObserverInternal callHTTPTestFromIPPort:ipv6Prefix:ToServer:isSSL:];
        }
      }

      goto LABEL_30;
    }

    v35 = 0;
  }

  else
  {
    v35 = 1;
    v34 = v71;
  }

  v74.tv_sec = v11;
  *(&v74.tv_usec + 1) = -1431655766;
  v38 = 1 << v31;
  v74.tv_usec = ((v11 - v11) * 1000000.0);
  v39 = v21;
  while (1)
  {
    memset(&v96, 0, sizeof(v96));
    memset(&v85, 0, sizeof(v85));
    if (v35 > 1)
    {
      v42 = __darwin_check_fd_set_overflow(v31, &v96, 0);
      v41 = &v96.fds_bits[v31 >> 5];
      if (!v42)
      {
        goto LABEL_48;
      }

LABEL_47:
      *v41 |= v38;
      goto LABEL_48;
    }

    v40 = __darwin_check_fd_set_overflow(v31, &v85, 0);
    v41 = &v85.fds_bits[v31 >> 5];
    if (v40)
    {
      goto LABEL_47;
    }

LABEL_48:
    v43 = select(v31 + 1, &v96, &v85, 0, &v74);
    if (!v43)
    {
      if (VRTraceGetErrorLogLevelForModule() < 3)
      {
        goto LABEL_84;
      }

      v57 = VRTraceErrorLogLevelToCSTR();
      v54 = *MEMORY[0x1E6986650];
      if (!os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
      {
        goto LABEL_84;
      }

      *v76 = 136316162;
      v77 = v57;
      v78 = 2080;
      v79 = "[GKNATObserverInternal callHTTPTestFromIPPort:ipv6Prefix:ToServer:isSSL:]";
      v80 = 1024;
      v81 = 896;
      v82 = 1024;
      *v83 = 896;
      *&v83[4] = 1024;
      *&v83[6] = 10;
      v56 = " [%s] %s:%d /Library/Caches/com.apple.xbs/Sources/AVConference/AVConference.subproj/Sources/GKNATObserver.m:%d: callHTTPTestFromIPPort: connect timed out %d";
LABEL_113:
      v65 = v54;
      v66 = 40;
LABEL_114:
      _os_log_error_impl(&dword_1DB56E000, v65, OS_LOG_TYPE_ERROR, v56, v76, v66);
      goto LABEL_84;
    }

    if (v43 == -1)
    {
      if (VRTraceGetErrorLogLevelForModule() >= 3)
      {
        v53 = VRTraceErrorLogLevelToCSTR();
        v54 = *MEMORY[0x1E6986650];
        if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
        {
          v55 = *__error();
          *v76 = 136316162;
          v77 = v53;
          v78 = 2080;
          v79 = "[GKNATObserverInternal callHTTPTestFromIPPort:ipv6Prefix:ToServer:isSSL:]";
          v80 = 1024;
          v81 = 893;
          v82 = 1024;
          *v83 = 893;
          *&v83[4] = 1024;
          *&v83[6] = v55;
          v56 = " [%s] %s:%d /Library/Caches/com.apple.xbs/Sources/AVConference/AVConference.subproj/Sources/GKNATObserver.m:%d: callHTTPTestFromIPPort: select failed for connect (%d)";
          goto LABEL_113;
        }
      }

      goto LABEL_84;
    }

    if (!v35)
    {
      v72 = 4;
      v73 = -1431655766;
      getsockopt(v31, 0xFFFF, 4103, &v73, &v72);
      v44 = v73;
      ErrorLogLevelForModule = VRTraceGetErrorLogLevelForModule();
      if (v44)
      {
        if (ErrorLogLevelForModule >= 3)
        {
          v46 = VRTraceErrorLogLevelToCSTR();
          v47 = *MEMORY[0x1E6986650];
          if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
          {
            *v76 = 136316162;
            v77 = v46;
            v78 = 2080;
            v79 = "[GKNATObserverInternal callHTTPTestFromIPPort:ipv6Prefix:ToServer:isSSL:]";
            v80 = 1024;
            v81 = 905;
            v82 = 1024;
            *v83 = 905;
            *&v83[4] = 1024;
            *&v83[6] = v73;
            _os_log_error_impl(&dword_1DB56E000, v47, OS_LOG_TYPE_ERROR, " [%s] %s:%d /Library/Caches/com.apple.xbs/Sources/AVConference/AVConference.subproj/Sources/GKNATObserver.m:%d: callHTTPTestFromIPPort: connect refused (%d)", v76, 0x28u);
          }

          v35 = 5;
LABEL_60:
          v34 = v71;
          goto LABEL_63;
        }

        v35 = 5;
      }

      else
      {
        if (ErrorLogLevelForModule >= 7)
        {
          v48 = VRTraceErrorLogLevelToCSTR();
          v49 = *MEMORY[0x1E6986650];
          if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
          {
            *v76 = 136315650;
            v77 = v48;
            v78 = 2080;
            v79 = "[GKNATObserverInternal callHTTPTestFromIPPort:ipv6Prefix:ToServer:isSSL:]";
            v80 = 1024;
            v81 = 908;
            _os_log_impl(&dword_1DB56E000, v49, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d callHTTPTestFromIPPort: TCP socket connected!", v76, 0x1Cu);
          }

          v35 = 1;
          goto LABEL_60;
        }

        v35 = 1;
      }
    }

LABEL_63:
    if (v35 == 2)
    {
      goto LABEL_70;
    }

    if (v35 == 1)
    {
      break;
    }

LABEL_77:
    if (v35 == 5)
    {
      goto LABEL_84;
    }
  }

  if (!__darwin_check_fd_set_overflow(v31, &v85, 0))
  {
    goto LABEL_76;
  }

  if ((v85.fds_bits[v31 >> 5] & v38) == 0)
  {
    goto LABEL_76;
  }

  v50 = (v70 + v21 - v39);
  if (v50 < 1)
  {
    goto LABEL_76;
  }

  v51 = write(v31, v39, v50);
  if (v51 < 0)
  {
    if (*__error() != 35)
    {
      if (VRTraceGetErrorLogLevelForModule() >= 3)
      {
        v68 = VRTraceErrorLogLevelToCSTR();
        v54 = *MEMORY[0x1E6986650];
        if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
        {
          v69 = *__error();
          *v76 = 136316162;
          v77 = v68;
          v78 = 2080;
          v79 = "[GKNATObserverInternal callHTTPTestFromIPPort:ipv6Prefix:ToServer:isSSL:]";
          v80 = 1024;
          v81 = 917;
          v82 = 1024;
          *v83 = 917;
          *&v83[4] = 1024;
          *&v83[6] = v69;
          v56 = " [%s] %s:%d /Library/Caches/com.apple.xbs/Sources/AVConference/AVConference.subproj/Sources/GKNATObserver.m:%d: callHTTPTestFromIPPort: write failed with error=%d";
          goto LABEL_113;
        }
      }

LABEL_84:
      v36 = 0;
      goto LABEL_85;
    }

LABEL_76:
    v35 = 1;
    goto LABEL_77;
  }

  v39 += v51 & 0x7FFFFFFF;
  if (v39 - v21 != v70)
  {
    goto LABEL_76;
  }

LABEL_70:
  if (!__darwin_check_fd_set_overflow(v31, &v96, 0) || (v96.fds_bits[v31 >> 5] & v38) == 0)
  {
LABEL_74:
    v35 = 2;
    goto LABEL_77;
  }

  v52 = read(v31, __b, 0x400uLL);
  if (v52 < 0)
  {
    if (*__error() != 35)
    {
      if (VRTraceGetErrorLogLevelForModule() >= 3)
      {
        v61 = VRTraceErrorLogLevelToCSTR();
        v54 = *MEMORY[0x1E6986650];
        if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
        {
          v62 = *__error();
          *v76 = 136316162;
          v77 = v61;
          v78 = 2080;
          v79 = "[GKNATObserverInternal callHTTPTestFromIPPort:ipv6Prefix:ToServer:isSSL:]";
          v80 = 1024;
          v81 = 933;
          v82 = 1024;
          *v83 = 933;
          *&v83[4] = 1024;
          *&v83[6] = v62;
          v56 = " [%s] %s:%d /Library/Caches/com.apple.xbs/Sources/AVConference/AVConference.subproj/Sources/GKNATObserver.m:%d: callHTTPTestFromIPPort: read failed with error=%d";
          goto LABEL_113;
        }
      }

      goto LABEL_84;
    }

    goto LABEL_74;
  }

  if (!v52)
  {
    if (VRTraceGetErrorLogLevelForModule() < 3)
    {
      goto LABEL_84;
    }

    v63 = VRTraceErrorLogLevelToCSTR();
    v64 = *MEMORY[0x1E6986650];
    if (!os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
    {
      goto LABEL_84;
    }

    *v76 = 136315906;
    v77 = v63;
    v78 = 2080;
    v79 = "[GKNATObserverInternal callHTTPTestFromIPPort:ipv6Prefix:ToServer:isSSL:]";
    v80 = 1024;
    v81 = 937;
    v82 = 1024;
    *v83 = 937;
    v56 = " [%s] %s:%d /Library/Caches/com.apple.xbs/Sources/AVConference/AVConference.subproj/Sources/GKNATObserver.m:%d: callHTTPTestFromIPPort: server terminated";
    v65 = v64;
    v66 = 34;
    goto LABEL_114;
  }

  v36 = v34 || __b[0] == 1347703880 && LOWORD(__b[1]) == 12591;
LABEL_85:
  if (VRTraceGetErrorLogLevelForModule() >= 7)
  {
    v58 = VRTraceErrorLogLevelToCSTR();
    v59 = *MEMORY[0x1E6986650];
    if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
    {
      *v76 = 136316162;
      v60 = "HTTP";
      v77 = v58;
      v78 = 2080;
      if (v34)
      {
        v60 = "HTTPS";
      }

      v79 = "[GKNATObserverInternal callHTTPTestFromIPPort:ipv6Prefix:ToServer:isSSL:]";
      v80 = 1024;
      v81 = 952;
      v82 = 2080;
      *v83 = v60;
      *&v83[8] = 1024;
      v84 = v36;
      _os_log_impl(&dword_1DB56E000, v59, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d callHTTPTestFromIPPort: for %s result %d", v76, 0x2Cu);
    }
  }

  close(v31);
  return v36;
}

- (BOOL)ensureNatCachePathExists
{
  v14 = *MEMORY[0x1E69E9840];
  [objc_msgSend(MEMORY[0x1E6986628] "getCachesDirectoryPath")];
  Directory = VCDiskUtils_CreateDirectory();
  if (VRTraceGetErrorLogLevelForModule() >= 7)
  {
    v3 = VRTraceErrorLogLevelToCSTR();
    v4 = *MEMORY[0x1E6986650];
    if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
    {
      v6 = 136315906;
      v7 = v3;
      v8 = 2080;
      v9 = "[GKNATObserverInternal ensureNatCachePathExists]";
      v10 = 1024;
      v11 = 976;
      v12 = 1024;
      v13 = Directory;
      _os_log_impl(&dword_1DB56E000, v4, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d GKNATObserver:ensureNatCachePathExists : %d", &v6, 0x22u);
    }
  }

  return Directory;
}

- (id)copyNatTypeCachePlistScheme
{
  v3 = [objc_msgSend(MEMORY[0x1E6986628] "getCachesDirectoryPath")];
  v4 = [objc_alloc(MEMORY[0x1E695DF20]) initWithContentsOfFile:v3];
  if (v4)
  {
    v5 = v4;
    v6 = [v4 objectForKeyedSubscript:@"natTypeCache"];

    return v6;
  }

  else
  {
    v8 = [(GKNATObserverInternal *)self ensureNatCachePathExists];
    CFPreferencesAppSynchronize(@"com.apple.conference");
    v9 = CFPreferencesCopyAppValue(@"natTypeCache", @"com.apple.conference");
    v10 = v9;
    if (v8 && v9)
    {
      CFPreferencesSetAppValue(@"natTypeCache", 0, @"com.apple.conference");
      CFPreferencesAppSynchronize(@"com.apple.conference");
    }

    if (v8)
    {
      [(GKNATObserverInternal *)self updateNatTypeCache_CachePlistScheme:v10];
    }

    return v10;
  }
}

- (void)updateNatTypeCache_CachePlistScheme:(id)a3
{
  v4 = [objc_msgSend(MEMORY[0x1E6986628] "getCachesDirectoryPath")];
  v5 = [objc_alloc(MEMORY[0x1E695DF90]) initWithContentsOfFile:v4];
  if (!v5)
  {
    v5 = objc_alloc_init(MEMORY[0x1E695DF90]);
  }

  v6 = v5;
  if (a3)
  {
    [v5 setObject:a3 forKeyedSubscript:@"natTypeCache"];
    v5 = v6;
  }

  [v5 writeToFile:v4 atomically:1];
}

- (id)copyNatTypeCache_OSXGamedScheme
{
  CFPreferencesAppSynchronize(@"com.apple.gamed");

  return CFPreferencesCopyAppValue(@"natTypeCache", @"com.apple.gamed");
}

- (void)updateNatTypeCache_OSXGamedScheme:(id)a3
{
  CFPreferencesSetAppValue(@"natTypeCache", a3, @"com.apple.gamed");

  CFPreferencesAppSynchronize(@"com.apple.gamed");
}

- (id)lookupCachedNATFlagsForNetwork:(id)a3
{
  v3 = a3;
  v17 = *MEMORY[0x1E69E9840];
  if (a3)
  {
    v4 = [(GKNATObserverInternal *)self copyNatTypeCache];
    v3 = [objc_msgSend(v4 objectForKeyedSubscript:{v3), "objectForKey:", @"natFlags"}];
    if (VRTraceGetErrorLogLevelForModule() >= 8)
    {
      v5 = VRTraceErrorLogLevelToCSTR();
      v6 = *MEMORY[0x1E6986650];
      v7 = *MEMORY[0x1E6986650];
      if (*MEMORY[0x1E6986640] == 1)
      {
        if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
        {
          v9 = 136315906;
          v10 = v5;
          v11 = 2080;
          v12 = "[GKNATObserverInternal lookupCachedNATFlagsForNetwork:]";
          v13 = 1024;
          v14 = 1082;
          v15 = 2080;
          v16 = [objc_msgSend(v4 "description")];
          _os_log_impl(&dword_1DB56E000, v6, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d GKNATObserver: NAT Cache = %s", &v9, 0x26u);
          if (!v4)
          {
            return v3;
          }

          goto LABEL_9;
        }
      }

      else if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
      {
        [(GKNATObserverInternal *)v5 lookupCachedNATFlagsForNetwork:v4];
        if (!v4)
        {
          return v3;
        }

        goto LABEL_9;
      }
    }

    if (v4)
    {
LABEL_9:
      CFRelease(v4);
    }
  }

  return v3;
}

- (void)cacheNATFlags:(id)a3 forNetwork:(id)a4
{
  v47 = *MEMORY[0x1E69E9840];
  if (a4)
  {
    if (VRTraceGetErrorLogLevelForModule() >= 7)
    {
      v7 = VRTraceErrorLogLevelToCSTR();
      v8 = *MEMORY[0x1E6986650];
      if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
      {
        *buf = 136316162;
        v38 = v7;
        v39 = 2080;
        v40 = "[GKNATObserverInternal cacheNATFlags:forNetwork:]";
        v41 = 1024;
        v42 = 1095;
        v43 = 2080;
        v44 = [objc_msgSend(a3 "description")];
        v45 = 2080;
        v46 = [objc_msgSend(a4 "description")];
        _os_log_impl(&dword_1DB56E000, v8, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d GKNATObserver: Caching NAT flags [%s] for network %s...", buf, 0x30u);
      }
    }

    v9 = [(GKNATObserverInternal *)self copyNatTypeCache];
    if (v9)
    {
      v10 = [objc_alloc(MEMORY[0x1E695DF90]) initWithDictionary:v9];
    }

    else
    {
      v10 = objc_alloc_init(MEMORY[0x1E695DF90]);
    }

    v11 = v10;
    v31 = self;
    if ([v10 objectForKeyedSubscript:a4])
    {
      v12 = [objc_alloc(MEMORY[0x1E695DF90]) initWithDictionary:{objc_msgSend(v11, "objectForKeyedSubscript:", a4)}];
    }

    else
    {
      v12 = objc_alloc_init(MEMORY[0x1E695DF90]);
    }

    v13 = v12;
    cf = v9;
    if (a3)
    {
      [v12 setObject:a3 forKeyedSubscript:@"natFlags"];
      [v13 setObject:objc_msgSend(MEMORY[0x1E695DF00] forKeyedSubscript:{"date"), @"natFlagsLastUpdated"}];
    }

    else
    {
      [v12 removeObjectForKey:@"natFlags"];
    }

    [v11 setObject:v13 forKeyedSubscript:a4];
    if ([v11 count] >= 0x65)
    {
      *&v14 = 136316162;
      v29 = v14;
      do
      {
        v35 = 0u;
        v36 = 0u;
        v33 = 0u;
        v34 = 0u;
        v15 = [v11 countByEnumeratingWithState:&v33 objects:v32 count:{16, v29}];
        if (!v15)
        {
          break;
        }

        v16 = v15;
        v17 = 0;
        v18 = 0;
        v19 = *v34;
        while (2)
        {
          for (i = 0; i != v16; ++i)
          {
            if (*v34 != v19)
            {
              objc_enumerationMutation(v11);
            }

            v21 = *(*(&v33 + 1) + 8 * i);
            v22 = [objc_msgSend(v11 objectForKeyedSubscript:{v21), "objectForKey:", @"natFlagsLastUpdated"}];
            if (!v22)
            {
              v18 = v21;
              goto LABEL_29;
            }

            v23 = v22;
            if (!v17 || [v17 earlierDate:v22] == v22)
            {
              v17 = v23;
              v18 = v21;
            }
          }

          v16 = [v11 countByEnumeratingWithState:&v33 objects:v32 count:16];
          if (v16)
          {
            continue;
          }

          break;
        }

LABEL_29:
        if (!v18)
        {
          break;
        }

        if (VRTraceGetErrorLogLevelForModule() >= 8)
        {
          v24 = VRTraceErrorLogLevelToCSTR();
          v25 = *MEMORY[0x1E6986650];
          v26 = *MEMORY[0x1E6986650];
          if (*MEMORY[0x1E6986640] == 1)
          {
            if (os_log_type_enabled(v26, OS_LOG_TYPE_DEFAULT))
            {
              v27 = [v18 UTF8String];
              *buf = v29;
              v38 = v24;
              v39 = 2080;
              v40 = "[GKNATObserverInternal cacheNATFlags:forNetwork:]";
              v41 = 1024;
              v42 = 1142;
              v43 = 2080;
              v44 = v27;
              v45 = 1024;
              LODWORD(v46) = 100;
              _os_log_impl(&dword_1DB56E000, v25, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d GKNATObserver: Pruning network %s from NAT flags cache. (GKNATObserverMaxCachedNetworks=%d)", buf, 0x2Cu);
            }
          }

          else if (os_log_type_enabled(v26, OS_LOG_TYPE_DEBUG))
          {
            v28 = [v18 UTF8String];
            *buf = v29;
            v38 = v24;
            v39 = 2080;
            v40 = "[GKNATObserverInternal cacheNATFlags:forNetwork:]";
            v41 = 1024;
            v42 = 1142;
            v43 = 2080;
            v44 = v28;
            v45 = 1024;
            LODWORD(v46) = 100;
            _os_log_debug_impl(&dword_1DB56E000, v25, OS_LOG_TYPE_DEBUG, " [%s] %s:%d GKNATObserver: Pruning network %s from NAT flags cache. (GKNATObserverMaxCachedNetworks=%d)", buf, 0x2Cu);
          }
        }

        [v11 removeObjectForKey:v18];
      }

      while ([v11 count] > 0x64);
    }

    [(GKNATObserverInternal *)v31 updateNatTypeCache:v11];
    if (cf)
    {
      CFRelease(cf);
    }
  }
}

- (void)NATCheckWithIPPort:(tagIPPORT *)a3 ipv6Prefix:(id *)a4 useCache:(BOOL)a5
{
  v5 = a5;
  v63 = *MEMORY[0x1E69E9840];
  v9 = objc_alloc_init(MEMORY[0x1E696AAC8]);
  if ((a3->iFlags & 4) != 0)
  {
    v10 = [MEMORY[0x1E696AEC0] stringWithFormat:@"gk_ci_%s", a3->szIfName];
  }

  else
  {
    v10 = [MEMORY[0x1E696AEC0] stringWithUTF8String:a3->szIfName];
  }

  v11 = v10;
  if (VRTraceGetErrorLogLevelForModule() >= 7)
  {
    v12 = VRTraceErrorLogLevelToCSTR();
    v13 = *MEMORY[0x1E6986650];
    if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
    {
      if (v11)
      {
        v14 = [objc_msgSend(v11 "description")];
      }

      else
      {
        v14 = "<nil>";
      }

      *buf = 136315906;
      v54 = v12;
      v55 = 2080;
      v56 = "[GKNATObserverInternal NATCheckWithIPPort:ipv6Prefix:useCache:]";
      v57 = 1024;
      v58 = 1169;
      v59 = 2080;
      v60 = *&v14;
      _os_log_impl(&dword_1DB56E000, v13, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d GKNATObserver: NATCheckWithIPPort starting for %s", buf, 0x26u);
    }
  }

  v15 = micro();
  if ((a3->iFlags & 4) != 0)
  {
    v16 = @"gk_ci_cache";
  }

  else
  {
    v16 = [(GKNATObserverInternal *)self nameForNetworkWithIPPort:a3 interfaceName:v11];
  }

  v17 = micro() - v15;
  if (v17 > 0.01 && VRTraceGetErrorLogLevelForModule() >= 7)
  {
    v18 = VRTraceErrorLogLevelToCSTR();
    v19 = *MEMORY[0x1E6986650];
    if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315906;
      v54 = v18;
      v55 = 2080;
      v56 = "[GKNATObserverInternal NATCheckWithIPPort:ipv6Prefix:useCache:]";
      v57 = 1024;
      v58 = 1175;
      v59 = 2048;
      v60 = v17;
      _os_log_impl(&dword_1DB56E000, v19, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d GKNATObserver: nameForNetworkWithIPPort took %0.lf seconds", buf, 0x26u);
    }
  }

  v20 = micro();
  dispatch_semaphore_wait(self->_natCheckNetNameSema, 0xFFFFFFFFFFFFFFFFLL);
  if (v5)
  {
    if (v16)
    {
      v52 = v9;
      v21 = micro();
      v22 = [(GKNATObserverInternal *)self lookupCachedNATFlagsForNetwork:v16];
      v23 = micro() - v21;
      if (v23 > 0.01 && VRTraceGetErrorLogLevelForModule() >= 7)
      {
        v24 = VRTraceErrorLogLevelToCSTR();
        v25 = *MEMORY[0x1E6986650];
        if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
        {
          *buf = 136315906;
          v54 = v24;
          v55 = 2080;
          v56 = "[GKNATObserverInternal NATCheckWithIPPort:ipv6Prefix:useCache:]";
          v57 = 1024;
          v58 = 1192;
          v59 = 2048;
          v60 = v23;
          _os_log_impl(&dword_1DB56E000, v25, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d GKNATObserver: cache lookup took %0.lf seconds", buf, 0x26u);
        }
      }

      if (!v22)
      {
        goto LABEL_34;
      }

      [(NSRecursiveLock *)self->_xNATCheck lock];
      v26 = [v22 unsignedLongValue];
      [(GKNATObserverInternal *)self setCommNATFlags:v26 forInterface:v11 isCached:1];
      [(GKNATObserverInternal *)self setTCPFlags:v26 forInterface:v11 isCached:1];
      [(GKNATObserverInternal *)self setSSLFlags:v26 forInterface:v11 isCached:1];
      if (VRTraceGetErrorLogLevelForModule() >= 7)
      {
        v51 = VRTraceErrorLogLevelToCSTR();
        v27 = *MEMORY[0x1E6986650];
        if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
        {
          v28 = [-[__CFString description](v16 "description")];
          *buf = 136316162;
          v54 = v51;
          v55 = 2080;
          v56 = "[GKNATObserverInternal NATCheckWithIPPort:ipv6Prefix:useCache:]";
          v57 = 1024;
          v58 = 1201;
          v59 = 2080;
          v60 = *&v28;
          v61 = 2048;
          v62 = v26;
          _os_log_impl(&dword_1DB56E000, v27, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d GKNATObserver: Cached NAT flags for network %s: [%08lX]", buf, 0x30u);
        }
      }

      [(NSRecursiveLock *)self->_xNATCheck unlock];
      [(GKNATObserverInternal *)self reportNATType];
      v29 = [-[NSMutableDictionary objectForKeyedSubscript:](self->_currentNetworkNames objectForKeyedSubscript:{v11), "isEqualToString:", v16}];
      if (v26)
      {
LABEL_34:
        v9 = v52;
      }

      else
      {
        v9 = v52;
        if (v29)
        {
          dispatch_semaphore_signal(self->_natCheckNetNameSema);
          if (VRTraceGetErrorLogLevelForModule() >= 7)
          {
            v30 = VRTraceErrorLogLevelToCSTR();
            v31 = *MEMORY[0x1E6986650];
            if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
            {
              if (v11)
              {
                v32 = [objc_msgSend(v11 "description")];
              }

              else
              {
                v32 = "<nil>";
              }

              v50 = [-[__CFString description](v16 "description")];
              *buf = 136316162;
              v54 = v30;
              v55 = 2080;
              v56 = "[GKNATObserverInternal NATCheckWithIPPort:ipv6Prefix:useCache:]";
              v57 = 1024;
              v58 = 1209;
              v59 = 2080;
              v60 = *&v32;
              v61 = 2080;
              v62 = v50;
              v47 = " [%s] %s:%d GKNATObserver: Network on interface %s [%s] did not change, skipping...";
              v48 = v31;
              v49 = 48;
              goto LABEL_55;
            }
          }

          goto LABEL_56;
        }
      }

      [(NSMutableDictionary *)self->_currentNetworkNames setValue:v16 forKey:v11];
    }

    else
    {
      [(NSMutableDictionary *)self->_currentNetworkNames removeObjectForKey:v11];
    }
  }

  dispatch_semaphore_signal(self->_natCheckNetNameSema);
  v33 = micro() - v20;
  if (v33 > 0.01 && VRTraceGetErrorLogLevelForModule() >= 7)
  {
    v34 = VRTraceErrorLogLevelToCSTR();
    v35 = *MEMORY[0x1E6986650];
    if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315906;
      v54 = v34;
      v55 = 2080;
      v56 = "[GKNATObserverInternal NATCheckWithIPPort:ipv6Prefix:useCache:]";
      v57 = 1024;
      v58 = 1222;
      v59 = 2048;
      v60 = v33;
      _os_log_impl(&dword_1DB56E000, v35, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d GKNATObserver: cache lookup semaphore took %0.lf seconds", buf, 0x26u);
    }
  }

  v36 = [(GKNATObserverInternal *)self callCommNATTestFromIPPort:a3 ipv6Prefix:a4];
  if (v36)
  {
    var0 = v36->var0;
  }

  else
  {
    var0 = 1;
  }

  free(v36);
  v38 = micro();
  [(NSRecursiveLock *)self->_xNATCheck lock];
  v39 = [(GKNATObserverInternal *)self setCommNATFlags:var0 forInterface:v11 isCached:0];
  [(NSRecursiveLock *)self->_xNATCheck unlock];
  v40 = micro() - v38;
  if (v40 > 0.01 && VRTraceGetErrorLogLevelForModule() >= 7)
  {
    v41 = VRTraceErrorLogLevelToCSTR();
    v42 = *MEMORY[0x1E6986650];
    if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315906;
      v54 = v41;
      v55 = 2080;
      v56 = "[GKNATObserverInternal NATCheckWithIPPort:ipv6Prefix:useCache:]";
      v57 = 1024;
      v58 = 1235;
      v59 = 2048;
      v60 = v40;
      _os_log_impl(&dword_1DB56E000, v42, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d GKNATObserver: updating NAT flags dictionary took %0.lf seconds", buf, 0x26u);
    }
  }

  [(GKNATObserverInternal *)self reportNATType];
  if (v5)
  {
    if (v16)
    {
      v43 = micro();
      -[GKNATObserverInternal cacheNATFlags:forNetwork:](self, "cacheNATFlags:forNetwork:", [MEMORY[0x1E696AD98] numberWithUnsignedInt:v39], v16);
      v44 = micro() - v43;
      if (v44 > 0.01 && VRTraceGetErrorLogLevelForModule() >= 7)
      {
        v45 = VRTraceErrorLogLevelToCSTR();
        v46 = *MEMORY[0x1E6986650];
        if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
        {
          *buf = 136315906;
          v54 = v45;
          v55 = 2080;
          v56 = "[GKNATObserverInternal NATCheckWithIPPort:ipv6Prefix:useCache:]";
          v57 = 1024;
          v58 = 1245;
          v59 = 2048;
          v60 = v44;
          v47 = " [%s] %s:%d GKNATObserver: caching took %0.lf seconds";
          v48 = v46;
          v49 = 38;
LABEL_55:
          _os_log_impl(&dword_1DB56E000, v48, OS_LOG_TYPE_DEFAULT, v47, buf, v49);
        }
      }
    }
  }

LABEL_56:
}

- (void)HTTPCheckWithIPPort:(tagIPPORT *)a3 ipv6Prefix:(id *)a4 useCache:(BOOL)a5
{
  v5 = a5;
  v9 = objc_alloc_init(MEMORY[0x1E696AAC8]);
  if ((a3->iFlags & 4) != 0)
  {
    v10 = [MEMORY[0x1E696AEC0] stringWithFormat:@"gk_ci_%s", a3->szIfName];
  }

  else
  {
    v10 = [MEMORY[0x1E696AEC0] stringWithUTF8String:a3->szIfName];
  }

  v11 = v10;
  if ((a3->iFlags & 4) != 0)
  {
    v12 = @"gk_ci_cache";
  }

  else
  {
    v12 = [(GKNATObserverInternal *)self nameForNetworkWithIPPort:a3 interfaceName:v10];
  }

  v13 = [GKSConnectivitySettings getAddressForService:@"gk-p2p-tcp-check-url"];
  if (v13)
  {
    v14 = ([(GKNATObserverInternal *)self callHTTPTestFromIPPort:a3 ipv6Prefix:a4 ToServer:v13 isSSL:0]!= 0) << 11;
    [(NSRecursiveLock *)self->_xNATCheck lock];
    v15 = [(GKNATObserverInternal *)self setTCPFlags:v14 forInterface:v11 isCached:0];
    [(NSRecursiveLock *)self->_xNATCheck unlock];
    [(GKNATObserverInternal *)self reportNATType];
    if (v5 && v12)
    {
      -[GKNATObserverInternal cacheNATFlags:forNetwork:](self, "cacheNATFlags:forNetwork:", [MEMORY[0x1E696AD98] numberWithUnsignedInt:v15], v12);
    }
  }

  else if (VRTraceGetErrorLogLevelForModule() >= 3)
  {
    VRTraceErrorLogLevelToCSTR();
    if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
    {
      [GKNATObserverInternal HTTPCheckWithIPPort:ipv6Prefix:useCache:];
    }
  }
}

- (void)HTTPSCheckWithIPPort:(tagIPPORT *)a3 ipv6Prefix:(id *)a4 useCache:(BOOL)a5
{
  v5 = a5;
  v9 = objc_alloc_init(MEMORY[0x1E696AAC8]);
  if ((a3->iFlags & 4) != 0)
  {
    v10 = [MEMORY[0x1E696AEC0] stringWithFormat:@"gk_ci_%s", a3->szIfName];
  }

  else
  {
    v10 = [MEMORY[0x1E696AEC0] stringWithUTF8String:a3->szIfName];
  }

  v11 = v10;
  if ((a3->iFlags & 4) != 0)
  {
    v12 = @"gk_ci_cache";
  }

  else
  {
    v12 = [(GKNATObserverInternal *)self nameForNetworkWithIPPort:a3 interfaceName:v10];
  }

  v13 = [GKSConnectivitySettings getAddressForService:@"gk-p2p-ssl-check-url"];
  if (v13)
  {
    v14 = ([(GKNATObserverInternal *)self callHTTPTestFromIPPort:a3 ipv6Prefix:a4 ToServer:v13 isSSL:1]!= 0) << 12;
    [(NSRecursiveLock *)self->_xNATCheck lock];
    v15 = [(GKNATObserverInternal *)self setSSLFlags:v14 forInterface:v11 isCached:0];
    [(NSRecursiveLock *)self->_xNATCheck unlock];
    [(GKNATObserverInternal *)self reportNATType];
    if (v5 && v12)
    {
      -[GKNATObserverInternal cacheNATFlags:forNetwork:](self, "cacheNATFlags:forNetwork:", [MEMORY[0x1E696AD98] numberWithUnsignedInt:v15], v12);
    }
  }

  else if (VRTraceGetErrorLogLevelForModule() >= 3)
  {
    VRTraceErrorLogLevelToCSTR();
    if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
    {
      [GKNATObserverInternal HTTPSCheckWithIPPort:ipv6Prefix:useCache:];
    }
  }
}

- (void)clearRetries
{
  [(NSRecursiveLock *)self->_xNATCheck lock];
  self->_NATCheckRetryCount = 0;
  xNATCheck = self->_xNATCheck;

  [(NSRecursiveLock *)xNATCheck unlock];
}

- (void)tryNATCheckWithDelay:(double)a3
{
  v19 = *MEMORY[0x1E69E9840];
  self->_hasNATCheckStarted = 1;
  if (VRTraceGetErrorLogLevelForModule() >= 6)
  {
    v6 = VRTraceErrorLogLevelToCSTR();
    v7 = *MEMORY[0x1E6986650];
    if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315906;
      v12 = v6;
      v13 = 2080;
      v14 = "[GKNATObserverInternal tryNATCheckWithDelay:]";
      v15 = 1024;
      v16 = 1332;
      v17 = 2080;
      Name = sel_getName(a2);
      _os_log_impl(&dword_1DB56E000, v7, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d GKNATObserver: %s", buf, 0x26u);
    }
  }

  [(NSRecursiveLock *)self->_xNATCheck lock];
  if (self->_fNATCheckQueued)
  {
    [(NSRecursiveLock *)self->_xNATCheck unlock];
  }

  else
  {
    if (self->_fNATCheckInProgress)
    {
      v8 = 0.25;
    }

    else
    {
      v8 = 0.0;
    }

    self->_fNATCheckQueued = 1;
    [(NSRecursiveLock *)self->_xNATCheck unlock];
    natCheckQueue = self->_natCheckQueue;
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __46__GKNATObserverInternal_tryNATCheckWithDelay___block_invoke;
    block[3] = &unk_1E85F4090;
    block[4] = self;
    *&block[5] = a3;
    *&block[6] = v8;
    dispatch_async(natCheckQueue, block);
  }
}

uint64_t __46__GKNATObserverInternal_tryNATCheckWithDelay___block_invoke(uint64_t a1)
{
  v96 = *MEMORY[0x1E69E9840];
  if (VRTraceGetErrorLogLevelForModule() >= 6)
  {
    v2 = VRTraceErrorLogLevelToCSTR();
    v3 = *MEMORY[0x1E6986650];
    if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
    {
      v4 = *(a1 + 40);
      *buf = 136315906;
      v87 = v2;
      v88 = 2080;
      v89 = "[GKNATObserverInternal tryNATCheckWithDelay:]_block_invoke";
      v90 = 1024;
      v91 = 1345;
      v92 = 2048;
      *v93 = v4;
      _os_log_impl(&dword_1DB56E000, v3, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d GKNATObserver: start setting up NAT checks (delay: %lf)", buf, 0x26u);
    }
  }

  [*(*(a1 + 32) + 24) lock];
  *(*(a1 + 32) + 120) = 0;
  *(*(a1 + 32) + 121) = 1;
  [*(*(a1 + 32) + 24) unlock];
  usleep(((*(a1 + 40) + *(a1 + 48)) * 1000000.0));
  v85 = 0;
  [*(*(a1 + 32) + 24) lock];
  v76 = [objc_msgSend(*(*(a1 + 32) + 48) "allKeys")];
  [*(*(a1 + 32) + 24) unlock];
  LocalInterfaceListWithOptions = GetLocalInterfaceListWithOptions();
  if (LocalInterfaceListWithOptions >= 1)
  {
    v6 = 0;
    v7 = 0;
    v8 = LocalInterfaceListWithOptions;
    v9 = 4;
    v75 = LocalInterfaceListWithOptions;
    while (1)
    {
      v94 = 0;
      v95 = 0;
      v10 = v85;
      if ((*(v85 + v9 - 4) & 1) == 0)
      {
        goto LABEL_7;
      }

      VCNAT64ResolverRegisterForPrefixUpdate((v85 + v9), NAT64ResolverCallBack, *(a1 + 32));
      VCNAT64ResolverGetPrefix(v85 + v9, &v94);
      if (VCNAT64ResolverIsNonzeroPrefix(&v94))
      {
        [*(a1 + 32) delegate];
        if (objc_opt_respondsToSelector())
        {
          break;
        }
      }

LABEL_20:
      ++v6;
      v9 += 40;
      if (v8 == v6)
      {
        goto LABEL_23;
      }
    }

    global_queue = dispatch_get_global_queue(0, 0);
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __46__GKNATObserverInternal_tryNATCheckWithDelay___block_invoke_152;
    block[3] = &unk_1E85F3778;
    block[4] = *(a1 + 32);
    dispatch_async(global_queue, block);
    v10 = v85;
LABEL_7:
    if (strcmp((v10 + v9), "lo0"))
    {
      v11 = objc_alloc_init(IPPortWrapper);
      v12 = [(IPPortWrapper *)v11 ipport];
      v13 = *(v85 + v9 + 28);
      v14 = *(v85 + v9 + 12);
      *v12 = *(v85 + v9 - 4);
      *(v12 + 16) = v14;
      *(v12 + 32) = v13;
      v15 = [[IPv6PrefixWrapper alloc] initWithPrefix:&v94];
      if (VRTraceGetErrorLogLevelForModule() >= 7)
      {
        v16 = VRTraceErrorLogLevelToCSTR();
        v17 = *MEMORY[0x1E6986650];
        if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
        {
          *buf = 136316418;
          v87 = v16;
          v88 = 2080;
          v89 = "[GKNATObserverInternal tryNATCheckWithDelay:]_block_invoke";
          v90 = 1024;
          v91 = 1393;
          v92 = 1024;
          *v93 = v6;
          *&v93[4] = 1024;
          *&v93[6] = v8;
          *&v93[10] = 2080;
          *&v93[12] = v9 + v85;
          _os_log_impl(&dword_1DB56E000, v17, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d GKNATObserver: queued non-carrier NAT check %d@%d, %s", buf, 0x32u);
        }
      }

      if ((*(v85 + v9 - 4) & 4) != 0)
      {
        v18 = [MEMORY[0x1E696AEC0] stringWithFormat:@"gk_ci_%s", v85 + v9];
      }

      else
      {
        v18 = [MEMORY[0x1E696AEC0] stringWithUTF8String:?];
      }

      [v76 removeObject:v18];
      v20 = *(a1 + 32);
      v21 = *(v20 + 104);
      v22 = dispatch_get_global_queue(2, 0);
      v83[0] = MEMORY[0x1E69E9820];
      v83[1] = 3221225472;
      v83[2] = __46__GKNATObserverInternal_tryNATCheckWithDelay___block_invoke_156;
      v83[3] = &unk_1E85F3E30;
      v83[4] = v20;
      v83[5] = v11;
      v83[6] = v15;
      dispatch_group_async(v21, v22, v83);
      v23 = *(a1 + 32);
      if (*(v23 + 57) == 1)
      {
        v24 = *(v23 + 104);
        v82[0] = MEMORY[0x1E69E9820];
        v82[1] = 3221225472;
        v82[2] = __46__GKNATObserverInternal_tryNATCheckWithDelay___block_invoke_2;
        v82[3] = &unk_1E85F3E30;
        v82[4] = v23;
        v82[5] = v11;
        v82[6] = v15;
        dispatch_group_async(v24, v22, v82);
        v25 = *(a1 + 32);
        v26 = *(v25 + 104);
        v81[0] = MEMORY[0x1E69E9820];
        v81[1] = 3221225472;
        v81[2] = __46__GKNATObserverInternal_tryNATCheckWithDelay___block_invoke_3;
        v81[3] = &unk_1E85F3E30;
        v81[4] = v25;
        v81[5] = v11;
        v81[6] = v15;
        dispatch_group_async(v26, v22, v81);
      }

      ++v7;
      v8 = v75;
    }

    goto LABEL_20;
  }

  v7 = 0;
LABEL_23:
  FreeLocalInterfaceList();
  if ((*(*(a1 + 32) + 56) & 1) == 0)
  {
    v85 = 0;
    v29 = GetLocalInterfaceListWithOptions();
    if (v29 < 1)
    {
      if (VRTraceGetErrorLogLevelForModule() >= 6)
      {
        v53 = VRTraceErrorLogLevelToCSTR();
        v54 = *MEMORY[0x1E6986650];
        if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
        {
          *buf = 136315650;
          v87 = v53;
          v88 = 2080;
          v89 = "[GKNATObserverInternal tryNATCheckWithDelay:]_block_invoke_2";
          v90 = 1024;
          v91 = 1491;
          _os_log_impl(&dword_1DB56E000, v54, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d GKNATObserver: No usable carrier interfaces found.", buf, 0x1Cu);
        }
      }

      goto LABEL_59;
    }

    v30 = v29;
    if ((*(*(a1 + 32) + 63) & 1) == 0)
    {
      v31 = +[GKSConnectivitySettings getNATTypeFromCarrierBundle];
      if (v31)
      {
        v32 = v31;
        if (VRTraceGetErrorLogLevelForModule() >= 7)
        {
          v33 = VRTraceErrorLogLevelToCSTR();
          v34 = *MEMORY[0x1E6986650];
          if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
          {
            *buf = 136315906;
            v87 = v33;
            v88 = 2080;
            v89 = "[GKNATObserverInternal tryNATCheckWithDelay:]_block_invoke_4";
            v90 = 1024;
            v91 = 1433;
            v92 = 1024;
            *v93 = v32;
            _os_log_impl(&dword_1DB56E000, v34, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d GKNATObserver: carrier static NAT type: %08X", buf, 0x22u);
          }
        }

        [*(*(a1 + 32) + 24) lock];
        [*(a1 + 32) setCommNATFlags:v32 forInterface:@"gk_ci_" isCached:0];
        [*(*(a1 + 32) + 24) unlock];
        [v76 removeObject:@"gk_ci_"];
        ++v7;
LABEL_59:
        FreeLocalInterfaceList();
        goto LABEL_60;
      }
    }

    v35 = 0;
    v36 = v30;
    while (1)
    {
      v94 = 0;
      v95 = 0;
      if ((*(v85 + v35) & 1) == 0)
      {
        goto LABEL_36;
      }

      VCNAT64ResolverRegisterForPrefixUpdate((v85 + v35 + 4), NAT64ResolverCallBack, *(a1 + 32));
      VCNAT64ResolverGetPrefix(v85 + v35 + 4, &v94);
      if (VCNAT64ResolverIsNonzeroPrefix(&v94))
      {
        [*(a1 + 32) delegate];
        if (objc_opt_respondsToSelector())
        {
          break;
        }
      }

LABEL_50:
      v35 += 40;
      if (!--v36)
      {
        goto LABEL_59;
      }
    }

    v46 = dispatch_get_global_queue(0, 0);
    v80[0] = MEMORY[0x1E69E9820];
    v80[1] = 3221225472;
    v80[2] = __46__GKNATObserverInternal_tryNATCheckWithDelay___block_invoke_158;
    v80[3] = &unk_1E85F3778;
    v80[4] = *(a1 + 32);
    dispatch_async(v46, v80);
LABEL_36:
    v37 = objc_alloc_init(IPPortWrapper);
    v38 = [(IPPortWrapper *)v37 ipport];
    v39 = *(v85 + v35 + 32);
    v40 = *(v85 + v35 + 16);
    *v38 = *(v85 + v35);
    *(v38 + 16) = v40;
    *(v38 + 32) = v39;
    v41 = [[IPv6PrefixWrapper alloc] initWithPrefix:&v94];
    if (VRTraceGetErrorLogLevelForModule() >= 7)
    {
      v42 = VRTraceErrorLogLevelToCSTR();
      v43 = *MEMORY[0x1E6986650];
      if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
      {
        *buf = 136315906;
        v87 = v42;
        v88 = 2080;
        v89 = "[GKNATObserverInternal tryNATCheckWithDelay:]_block_invoke";
        v90 = 1024;
        v91 = 1464;
        v92 = 2080;
        *v93 = v35 + v85 + 4;
        _os_log_impl(&dword_1DB56E000, v43, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d GKNATObserver: queued carrier NAT check on %s", buf, 0x26u);
      }
    }

    v44 = v85 + v35 + 4;
    if ((*(v85 + v35) & 4) != 0)
    {
      v45 = [MEMORY[0x1E696AEC0] stringWithFormat:@"gk_ci_%s", v44];
    }

    else
    {
      v45 = [MEMORY[0x1E696AEC0] stringWithUTF8String:v44];
    }

    v47 = v45;
    [v76 removeObject:v45];
    v48 = *(a1 + 32);
    if (*(v48 + 59) != 1 || (*(v48 + 61) & 1) != 0 || (*(v48 + 60) & 1) != 0)
    {
      v49 = *(v48 + 104);
      v50 = dispatch_get_global_queue(2, 0);
      v79[0] = MEMORY[0x1E69E9820];
      v79[1] = 3221225472;
      v79[2] = __46__GKNATObserverInternal_tryNATCheckWithDelay___block_invoke_159;
      v79[3] = &unk_1E85F3E30;
      v79[4] = v48;
      v79[5] = v37;
      v79[6] = v41;
      dispatch_group_async(v49, v50, v79);
    }

    else
    {
      if (VRTraceGetErrorLogLevelForModule() >= 7)
      {
        v51 = VRTraceErrorLogLevelToCSTR();
        v52 = *MEMORY[0x1E6986650];
        if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
        {
          *buf = 136315650;
          v87 = v51;
          v88 = 2080;
          v89 = "[GKNATObserverInternal tryNATCheckWithDelay:]_block_invoke";
          v90 = 1024;
          v91 = 1472;
          _os_log_impl(&dword_1DB56E000, v52, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d GKNATObserver: empty carrier NAT type set", buf, 0x1Cu);
        }
      }

      [*(*(a1 + 32) + 24) lock];
      [*(a1 + 32) setCommNATFlags:0 forInterface:v47 isCached:0];
      [*(*(a1 + 32) + 24) unlock];
    }

    ++v7;
    goto LABEL_50;
  }

  if (VRTraceGetErrorLogLevelForModule() >= 7)
  {
    v27 = VRTraceErrorLogLevelToCSTR();
    v28 = *MEMORY[0x1E6986650];
    if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315650;
      v87 = v27;
      v88 = 2080;
      v89 = "[GKNATObserverInternal tryNATCheckWithDelay:]_block_invoke";
      v90 = 1024;
      v91 = 1497;
      _os_log_impl(&dword_1DB56E000, v28, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d GKNATObserver: _nonCarrierInterfacesOnly set, skipping carrier interfaces test", buf, 0x1Cu);
    }
  }

LABEL_60:
  if ([v76 count])
  {
    if (VRTraceGetErrorLogLevelForModule() >= 7)
    {
      v55 = VRTraceErrorLogLevelToCSTR();
      v56 = *MEMORY[0x1E6986650];
      if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
      {
        v57 = [objc_msgSend(v76 "description")];
        *buf = 136315906;
        v87 = v55;
        v88 = 2080;
        v89 = "[GKNATObserverInternal tryNATCheckWithDelay:]_block_invoke";
        v90 = 1024;
        v91 = 1502;
        v92 = 2080;
        *v93 = v57;
        _os_log_impl(&dword_1DB56E000, v56, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d GKNATObserver: Removing interfaces from consideration: %s", buf, 0x26u);
      }
    }

    [*(*(a1 + 32) + 24) lock];
    [*(*(a1 + 32) + 48) removeObjectsForKeys:v76];
    [*(*(a1 + 32) + 24) unlock];
  }

  [*(a1 + 32) reportNATType];
  v58 = *(a1 + 32);
  if (v7)
  {
    [v58 clearRetries];
    dispatch_group_wait(*(*(a1 + 32) + 104), 0xFFFFFFFFFFFFFFFFLL);
  }

  else
  {
    [v58[3] lock];
    v59 = *(a1 + 32);
    v60 = *(v59 + 64);
    if (v60 > 2)
    {
      if (VRTraceGetErrorLogLevelForModule() >= 6)
      {
        v62 = VRTraceErrorLogLevelToCSTR();
        v63 = *MEMORY[0x1E6986650];
        if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
        {
          v64 = *(*(a1 + 32) + 64);
          *buf = 136315906;
          v87 = v62;
          v88 = 2080;
          v89 = "[GKNATObserverInternal tryNATCheckWithDelay:]_block_invoke_2";
          v90 = 1024;
          v91 = 1544;
          v92 = 1024;
          *v93 = v64;
          _os_log_impl(&dword_1DB56E000, v63, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d GKNATObserver: no usable interfaces (already retried %d times)", buf, 0x22u);
        }
      }
    }

    else
    {
      if (v60)
      {
        v61 = *(v59 + 72) + *(v59 + 72);
      }

      else
      {
        v61 = 0.25;
      }

      *(v59 + 72) = v61;
      ++*(*(a1 + 32) + 64);
      v65 = *(a1 + 32);
      v66 = *(v65 + 64);
      v67 = *(v65 + 72);
      if (VRTraceGetErrorLogLevelForModule() >= 6)
      {
        v68 = VRTraceErrorLogLevelToCSTR();
        v69 = *MEMORY[0x1E6986650];
        if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
        {
          v70 = *(*(a1 + 32) + 64);
          *buf = 136316162;
          v87 = v68;
          v88 = 2080;
          v89 = "[GKNATObserverInternal tryNATCheckWithDelay:]_block_invoke";
          v90 = 1024;
          v91 = 1529;
          v92 = 1024;
          *v93 = v70;
          *&v93[4] = 2048;
          *&v93[6] = v67;
          _os_log_impl(&dword_1DB56E000, v69, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d GKNATObserver: no usable interfaces (retry #%d in %0.3lfs)", buf, 0x2Cu);
        }
      }

      v71 = dispatch_get_global_queue(0, 0);
      v77[0] = MEMORY[0x1E69E9820];
      v77[1] = 3221225472;
      v77[2] = __46__GKNATObserverInternal_tryNATCheckWithDelay___block_invoke_161;
      v77[3] = &unk_1E85F3908;
      v77[5] = v67;
      v77[4] = *(a1 + 32);
      v78 = v66;
      dispatch_async(v71, v77);
    }

    [*(*(a1 + 32) + 24) unlock];
  }

  *(*(a1 + 32) + 137) = 1;
  [*(a1 + 32) reportNATType];
  if (VRTraceGetErrorLogLevelForModule() >= 7)
  {
    v72 = VRTraceErrorLogLevelToCSTR();
    v73 = *MEMORY[0x1E6986650];
    if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315650;
      v87 = v72;
      v88 = 2080;
      v89 = "[GKNATObserverInternal tryNATCheckWithDelay:]_block_invoke";
      v90 = 1024;
      v91 = 1552;
      _os_log_impl(&dword_1DB56E000, v73, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d GKNATObserver: done waiting for NAT check group", buf, 0x1Cu);
    }
  }

  [*(*(a1 + 32) + 24) lock];
  *(*(a1 + 32) + 121) = 0;
  return [*(*(a1 + 32) + 24) unlock];
}

uint64_t __46__GKNATObserverInternal_tryNATCheckWithDelay___block_invoke_152(uint64_t a1)
{
  v11 = *MEMORY[0x1E69E9840];
  if (VRTraceGetErrorLogLevelForModule() >= 7)
  {
    v2 = VRTraceErrorLogLevelToCSTR();
    v3 = *MEMORY[0x1E6986650];
    if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
    {
      v5 = 136315650;
      v6 = v2;
      v7 = 2080;
      v8 = "[GKNATObserverInternal tryNATCheckWithDelay:]_block_invoke";
      v9 = 1024;
      v10 = 1380;
      _os_log_impl(&dword_1DB56E000, v3, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d Trigger interface change directly from non-carrier check", &v5, 0x1Cu);
    }
  }

  return [objc_msgSend(*(a1 + 32) "delegate")];
}

uint64_t __46__GKNATObserverInternal_tryNATCheckWithDelay___block_invoke_156(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = [*(a1 + 40) ipport];
  v4 = [*(a1 + 48) ipv6Prefix];
  v5 = (*(*(a1 + 32) + 62) & 1) == 0;

  return [v2 NATCheckWithIPPort:v3 ipv6Prefix:v4 useCache:v5];
}

uint64_t __46__GKNATObserverInternal_tryNATCheckWithDelay___block_invoke_2(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = [*(a1 + 40) ipport];
  v4 = [*(a1 + 48) ipv6Prefix];
  v5 = (*(*(a1 + 32) + 62) & 1) == 0;

  return [v2 HTTPCheckWithIPPort:v3 ipv6Prefix:v4 useCache:v5];
}

uint64_t __46__GKNATObserverInternal_tryNATCheckWithDelay___block_invoke_3(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = [*(a1 + 40) ipport];
  v4 = [*(a1 + 48) ipv6Prefix];
  v5 = (*(*(a1 + 32) + 62) & 1) == 0;

  return [v2 HTTPSCheckWithIPPort:v3 ipv6Prefix:v4 useCache:v5];
}

uint64_t __46__GKNATObserverInternal_tryNATCheckWithDelay___block_invoke_158(uint64_t a1)
{
  v11 = *MEMORY[0x1E69E9840];
  if (VRTraceGetErrorLogLevelForModule() >= 7)
  {
    v2 = VRTraceErrorLogLevelToCSTR();
    v3 = *MEMORY[0x1E6986650];
    if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
    {
      v5 = 136315650;
      v6 = v2;
      v7 = 2080;
      v8 = "[GKNATObserverInternal tryNATCheckWithDelay:]_block_invoke";
      v9 = 1024;
      v10 = 1456;
      _os_log_impl(&dword_1DB56E000, v3, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d Trigger interface change directly from carrier check", &v5, 0x1Cu);
    }
  }

  return [objc_msgSend(*(a1 + 32) "delegate")];
}

uint64_t __46__GKNATObserverInternal_tryNATCheckWithDelay___block_invoke_159(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = [*(a1 + 40) ipport];
  v4 = [*(a1 + 48) ipv6Prefix];

  return [v2 NATCheckWithIPPort:v3 ipv6Prefix:v4 useCache:1];
}

uint64_t __46__GKNATObserverInternal_tryNATCheckWithDelay___block_invoke_161(uint64_t a1)
{
  usleep((*(a1 + 40) * 1000000.0));
  [*(*(a1 + 32) + 24) lock];
  v2 = *(a1 + 48);
  v3 = *(a1 + 32);
  v4 = *(v3 + 64);
  result = [*(v3 + 24) unlock];
  if (v2 <= v4)
  {
    v6 = *(a1 + 32);

    return [v6 tryNATCheckWithDelay:0.0];
  }

  return result;
}

- (id)nameForNetworkWithIPPort:(tagIPPORT *)a3 interfaceName:(id)a4
{
  v31 = *MEMORY[0x1E69E9840];
  objc_sync_enter(self);
  v7 = SCDynamicStoreCopyMultiple(self->_dynamicStore, 0, &unk_1F579C978);
  objc_sync_exit(self);
  if (v7)
  {
    v8 = [(__CFDictionary *)v7 allValues];
    if (VRTraceGetErrorLogLevelForModule() >= 8)
    {
      v9 = VRTraceErrorLogLevelToCSTR();
      v10 = *MEMORY[0x1E6986650];
      v11 = *MEMORY[0x1E6986650];
      if (*MEMORY[0x1E6986640] == 1)
      {
        if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 136315906;
          v24 = v9;
          v25 = 2080;
          v26 = "[GKNATObserverInternal nameForNetworkWithIPPort:interfaceName:]";
          v27 = 1024;
          v28 = 1577;
          v29 = 2080;
          v30 = [-[__CFDictionary description](v7 "description")];
          _os_log_impl(&dword_1DB56E000, v10, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d GKNATObserver: SCDS dictionary: %s", buf, 0x26u);
        }
      }

      else if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
      {
        [GKNATObserverInternal nameForNetworkWithIPPort:v9 interfaceName:v7];
      }
    }

    v21 = 0u;
    v22 = 0u;
    v19 = 0u;
    v20 = 0u;
    v12 = [v8 countByEnumeratingWithState:&v19 objects:v18 count:16];
    if (v12)
    {
      v13 = *v20;
LABEL_10:
      v14 = 0;
      while (1)
      {
        if (*v20 != v13)
        {
          objc_enumerationMutation(v8);
        }

        v15 = *(*(&v19 + 1) + 8 * v14);
        if ([objc_msgSend(v15 objectForKeyedSubscript:{@"InterfaceName", "isEqual:", a4}])
        {
          break;
        }

        if (v12 == ++v14)
        {
          v12 = [v8 countByEnumeratingWithState:&v19 objects:v18 count:16];
          if (v12)
          {
            goto LABEL_10;
          }

          goto LABEL_16;
        }
      }

      v16 = [v15 objectForKeyedSubscript:@"NetworkSignature"];
      CFRelease(v7);
      if (v16)
      {
        return v16;
      }
    }

    else
    {
LABEL_16:
      CFRelease(v7);
    }
  }

  else
  {
    [GKNATObserverInternal nameForNetworkWithIPPort:interfaceName:];
  }

  return [MEMORY[0x1E696AEC0] stringWithFormat:@"%u.%u.%u.%u%%%@", HIBYTE(a3->IP.dwIPv4), BYTE2(a3->IP.dwIPv4), BYTE1(a3->IP.dwIPv4), a3->IP.dwIPv4, a4];
}

- (void)registerForNetworkChanges
{
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_2_1(&dword_1DB56E000, v0, v1, " [%s] %s:%d GKNATObserver: SCDynamicStoreCreate failed, we will miss network change notifications!", v2, v3, v4, v5, v6);
}

- (void)initWithOptions:.cold.1()
{
  v3 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_0();
  v2 = 357;
  _os_log_debug_impl(&dword_1DB56E000, v0, OS_LOG_TYPE_DEBUG, " [%s] %s:%d GKNATObserver: no NAT cache available, running NAT check", v1, 0x1Cu);
}

- (void)callHTTPTestFromIPPort:ipv6Prefix:ToServer:isSSL:.cold.1()
{
  __error();
  OUTLINED_FUNCTION_4_3();
  OUTLINED_FUNCTION_7();
  OUTLINED_FUNCTION_3_6();
  OUTLINED_FUNCTION_6_4(&dword_1DB56E000, v0, v1, " [%s] %s:%d /Library/Caches/com.apple.xbs/Sources/AVConference/AVConference.subproj/Sources/GKNATObserver.m:%d: createTCPSocket: bind() failed (%d)", v2, v3, v4, v5, v6);
}

- (void)callHTTPTestFromIPPort:ipv6Prefix:ToServer:isSSL:.cold.2()
{
  __error();
  OUTLINED_FUNCTION_4_3();
  OUTLINED_FUNCTION_7();
  OUTLINED_FUNCTION_3_6();
  OUTLINED_FUNCTION_6_4(&dword_1DB56E000, v0, v1, " [%s] %s:%d /Library/Caches/com.apple.xbs/Sources/AVConference/AVConference.subproj/Sources/GKNATObserver.m:%d: connectTCPSocket: connect failed (%d)", v2, v3, v4, v5, v6);
}

- (void)callHTTPTestFromIPPort:ipv6Prefix:ToServer:isSSL:.cold.3()
{
  __error();
  OUTLINED_FUNCTION_4_3();
  OUTLINED_FUNCTION_7();
  OUTLINED_FUNCTION_3_6();
  OUTLINED_FUNCTION_6_4(&dword_1DB56E000, v0, v1, " [%s] %s:%d /Library/Caches/com.apple.xbs/Sources/AVConference/AVConference.subproj/Sources/GKNATObserver.m:%d: createTCPSocket: socket() failed (%d)", v2, v3, v4, v5, v6);
}

- (void)lookupCachedNATFlagsForNetwork:(uint64_t)a1 .cold.1(uint64_t a1, void *a2)
{
  [objc_msgSend(a2 "description")];
  OUTLINED_FUNCTION_11();
  OUTLINED_FUNCTION_7();
  OUTLINED_FUNCTION_8_2(&dword_1DB56E000, v2, v3, " [%s] %s:%d GKNATObserver: NAT Cache = %s", v4, v5, v6, v7, v8);
}

- (void)HTTPCheckWithIPPort:ipv6Prefix:useCache:.cold.1()
{
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_2_1(&dword_1DB56E000, v0, v1, " [%s] %s:%d No tcp server... aborting", v2, v3, v4, v5, v6);
}

- (void)HTTPSCheckWithIPPort:ipv6Prefix:useCache:.cold.1()
{
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_2_1(&dword_1DB56E000, v0, v1, " [%s] %s:%d No https server... aborting", v2, v3, v4, v5, v6);
}

- (void)nameForNetworkWithIPPort:(uint64_t)a1 interfaceName:(void *)a2 .cold.1(uint64_t a1, void *a2)
{
  [objc_msgSend(a2 "description")];
  OUTLINED_FUNCTION_11();
  OUTLINED_FUNCTION_7();
  OUTLINED_FUNCTION_8_2(&dword_1DB56E000, v2, v3, " [%s] %s:%d GKNATObserver: SCDS dictionary: %s", v4, v5, v6, v7, v8);
}

- (void)nameForNetworkWithIPPort:interfaceName:.cold.2()
{
  v3 = *MEMORY[0x1E69E9840];
  if (VRTraceGetErrorLogLevelForModule() >= 5)
  {
    VRTraceErrorLogLevelToCSTR();
    v0 = *MEMORY[0x1E6986650];
    if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
    {
      OUTLINED_FUNCTION_11();
      OUTLINED_FUNCTION_0();
      v2 = 1575;
      _os_log_impl(&dword_1DB56E000, v0, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d Dynamic store is nil", v1, 0x1Cu);
    }
  }
}

@end