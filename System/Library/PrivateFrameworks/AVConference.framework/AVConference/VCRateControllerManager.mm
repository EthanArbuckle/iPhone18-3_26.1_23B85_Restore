@interface VCRateControllerManager
+ (id)sharedInstance;
- (VCRateControllerManager)init;
- (id)getRateControllerSharingGroupWithConnection:(id)connection usePolicy:(unsigned int)policy;
- (id)prepareCallIDKeyFromConnection:(id)connection;
- (id)prepareEndPointKeyFromConnection:(id)connection;
- (void)cleanupRateControllerSharingGroupWithConnection:(id)connection usePolicy:(unsigned int)policy;
- (void)dealloc;
- (void)init;
@end

@implementation VCRateControllerManager

+ (id)sharedInstance
{
  if (sharedInstance_onceToken_3 != -1)
  {
    +[VCRateControllerManager sharedInstance];
  }

  return sharedInstance_rateControllerManager;
}

VCRateControllerManager *__41__VCRateControllerManager_sharedInstance__block_invoke()
{
  result = objc_alloc_init(VCRateControllerManager);
  sharedInstance_rateControllerManager = result;
  return result;
}

- (VCRateControllerManager)init
{
  v7 = *MEMORY[0x1E69E9840];
  v6.receiver = self;
  v6.super_class = VCRateControllerManager;
  v2 = [(VCObject *)&v6 init];
  if (v2)
  {
    v3 = objc_alloc_init(VCRateSharingGroup);
    v2->_defaultSharingGroup = v3;
    if (v3)
    {
      pthread_mutex_init(&v2->_sharingGroupMutex, 0);
      v4 = objc_alloc_init(MEMORY[0x1E695DF90]);
      v2->_sharingGroupDict = v4;
      if (v4)
      {
        return v2;
      }

      [(VCRateControllerManager *)v2 init];
    }

    else
    {
      [(VCRateControllerManager *)v2 init];
    }

    return 0;
  }

  return v2;
}

- (void)dealloc
{
  v4 = *MEMORY[0x1E69E9840];

  pthread_mutex_destroy(&self->_sharingGroupMutex);
  v3.receiver = self;
  v3.super_class = VCRateControllerManager;
  [(VCObject *)&v3 dealloc];
}

- (id)prepareEndPointKeyFromConnection:(id)connection
{
  v9 = *MEMORY[0x1E69E9840];
  if (!connection)
  {
    return 0;
  }

  if (![connection connectionResult])
  {
    [VCRateControllerManager prepareEndPointKeyFromConnection:];
    return v7;
  }

  memset(v8, 0, sizeof(v8));
  IPToString();
  v3 = [MEMORY[0x1E696AEC0] stringWithUTF8String:v8];
  if (!v3)
  {
    [VCRateControllerManager prepareEndPointKeyFromConnection:];
    return v7;
  }

  v4 = v3;
  IPToString();
  v5 = [MEMORY[0x1E696AEC0] stringWithUTF8String:v8];
  if (!v5)
  {
    [VCRateControllerManager prepareEndPointKeyFromConnection:];
    return v7;
  }

  result = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@_%@", v4, v5];
  if (!result)
  {
    [VCRateControllerManager prepareEndPointKeyFromConnection:];
    return v7;
  }

  return result;
}

- (id)prepareCallIDKeyFromConnection:(id)connection
{
  if (!connection)
  {
    [VCRateControllerManager prepareCallIDKeyFromConnection:];
    return v5;
  }

  connectionResult = [connection connectionResult];
  if (!connectionResult)
  {
    [VCRateControllerManager prepareCallIDKeyFromConnection:];
    return v5;
  }

  result = [MEMORY[0x1E696AEC0] stringWithFormat:@"%u", *connectionResult];
  if (!result)
  {
    [VCRateControllerManager prepareCallIDKeyFromConnection:];
    return v5;
  }

  return result;
}

- (void)cleanupRateControllerSharingGroupWithConnection:(id)connection usePolicy:(unsigned int)policy
{
  if (!connection)
  {
    return;
  }

  if (policy == 2)
  {
    objc_opt_class();
    if (OUTLINED_FUNCTION_41())
    {
      v5 = [OUTLINED_FUNCTION_18_0() prepareCallIDKeyFromConnection:?];
      if (v5)
      {
        goto LABEL_11;
      }

      if (objc_opt_class() != self)
      {
        if (OUTLINED_FUNCTION_28_0())
        {
          [OUTLINED_FUNCTION_18_0() performSelector:?];
        }

        if (VRTraceGetErrorLogLevelForModule() >= 3)
        {
          VRTraceErrorLogLevelToCSTR();
          if (OUTLINED_FUNCTION_40())
          {
            goto LABEL_46;
          }
        }

        return;
      }

      if (VRTraceGetErrorLogLevelForModule() < 3)
      {
        return;
      }

      VRTraceErrorLogLevelToCSTR();
      if (!OUTLINED_FUNCTION_34())
      {
        return;
      }
    }

    else
    {
      if (objc_opt_class() != self)
      {
        if (OUTLINED_FUNCTION_28_0())
        {
          [OUTLINED_FUNCTION_18_0() performSelector:?];
        }

        if (VRTraceGetErrorLogLevelForModule() >= 3)
        {
          VRTraceErrorLogLevelToCSTR();
          if (OUTLINED_FUNCTION_40())
          {
            goto LABEL_46;
          }
        }

        return;
      }

      if (VRTraceGetErrorLogLevelForModule() < 3)
      {
        return;
      }

      VRTraceErrorLogLevelToCSTR();
      if (!OUTLINED_FUNCTION_34())
      {
        return;
      }
    }

LABEL_34:
    OUTLINED_FUNCTION_11();
    OUTLINED_FUNCTION_0();
    OUTLINED_FUNCTION_16_0();
LABEL_47:
    _os_log_error_impl(v7, v8, v9, v10, v11, v12);
    return;
  }

  if (policy != 1)
  {
    return;
  }

  objc_opt_class();
  if ((OUTLINED_FUNCTION_41() & 1) == 0)
  {
    if (objc_opt_class() != self)
    {
      if (OUTLINED_FUNCTION_28_0())
      {
        [OUTLINED_FUNCTION_18_0() performSelector:?];
      }

      if (VRTraceGetErrorLogLevelForModule() >= 3)
      {
        VRTraceErrorLogLevelToCSTR();
        if (OUTLINED_FUNCTION_40())
        {
          goto LABEL_46;
        }
      }

      return;
    }

    if (VRTraceGetErrorLogLevelForModule() < 3)
    {
      return;
    }

    VRTraceErrorLogLevelToCSTR();
    if (!OUTLINED_FUNCTION_34())
    {
      return;
    }

    goto LABEL_34;
  }

  v5 = [OUTLINED_FUNCTION_18_0() prepareEndPointKeyFromConnection:?];
  if (v5)
  {
LABEL_11:
    v6 = v5;
    pthread_mutex_lock(&self->_sharingGroupMutex);
    [(NSMutableDictionary *)self->_sharingGroupDict setObject:0 forKeyedSubscript:v6];

    pthread_mutex_unlock(&self->_sharingGroupMutex);
    return;
  }

  if (objc_opt_class() == self)
  {
    if (VRTraceGetErrorLogLevelForModule() < 3)
    {
      return;
    }

    VRTraceErrorLogLevelToCSTR();
    if (!OUTLINED_FUNCTION_34())
    {
      return;
    }

    goto LABEL_34;
  }

  if (OUTLINED_FUNCTION_28_0())
  {
    [OUTLINED_FUNCTION_18_0() performSelector:?];
  }

  if (VRTraceGetErrorLogLevelForModule() >= 3)
  {
    VRTraceErrorLogLevelToCSTR();
    if (OUTLINED_FUNCTION_40())
    {
LABEL_46:
      OUTLINED_FUNCTION_10();
      OUTLINED_FUNCTION_0();
      OUTLINED_FUNCTION_0_0();
      OUTLINED_FUNCTION_7_3();
      goto LABEL_47;
    }
  }
}

- (id)getRateControllerSharingGroupWithConnection:(id)connection usePolicy:(unsigned int)policy
{
  v6 = *&policy;
  v89 = *MEMORY[0x1E69E9840];
  connectionCopy2 = 184;
  pthread_mutex_lock(&self->_sharingGroupMutex);
  v10 = self->_defaultSharingGroup;
  if (connection && v6)
  {
    if (v6 != 2)
    {
      if (v6 != 1)
      {
        goto LABEL_57;
      }

      objc_opt_class();
      if (OUTLINED_FUNCTION_41())
      {
        v11 = [(VCRateControllerManager *)self prepareEndPointKeyFromConnection:connection];
        if (v11)
        {
          v12 = OUTLINED_FUNCTION_39_5(v11);
          v13 = objc_opt_class();
          if (v12)
          {
            v72 = 1;
            OUTLINED_FUNCTION_13_4();
            if (v14 != self)
            {
              if (OUTLINED_FUNCTION_25_2())
              {
                OUTLINED_FUNCTION_34_2();
              }

              if (VRTraceGetErrorLogLevelForModule() < 7)
              {
                goto LABEL_36;
              }

              VRTraceErrorLogLevelToCSTR();
              if (!OUTLINED_FUNCTION_36_2())
              {
                goto LABEL_36;
              }

              goto LABEL_34;
            }

            if (VRTraceGetErrorLogLevelForModule() < 7)
            {
              goto LABEL_36;
            }

            VRTraceErrorLogLevelToCSTR();
            if (!OUTLINED_FUNCTION_30_1())
            {
              goto LABEL_36;
            }

            goto LABEL_28;
          }

          if (v13 == self)
          {
            if (VRTraceGetErrorLogLevelForModule() >= 7)
            {
              VRTraceErrorLogLevelToCSTR();
              if (OUTLINED_FUNCTION_30_1())
              {
                OUTLINED_FUNCTION_3_12();
                OUTLINED_FUNCTION_5_13();
                OUTLINED_FUNCTION_6_17();
                OUTLINED_FUNCTION_21_2();
LABEL_46:
                _os_log_impl(v25, v26, v27, v28, v29, v30);
              }
            }
          }

          else
          {
            if (OUTLINED_FUNCTION_25_2())
            {
              OUTLINED_FUNCTION_34_2();
            }

            if (VRTraceGetErrorLogLevelForModule() >= 7)
            {
              VRTraceErrorLogLevelToCSTR();
              if (OUTLINED_FUNCTION_36_2())
              {
                OUTLINED_FUNCTION_7_8();
                OUTLINED_FUNCTION_5_13();
                OUTLINED_FUNCTION_4_11();
                OUTLINED_FUNCTION_20_1();
                v30 = 58;
                goto LABEL_46;
              }
            }
          }

          v37 = [[VCRateSharingGroup alloc] initWithIdentifier:v4 useMediaQueue:1];
          if (!v37)
          {
            if (objc_opt_class() != self)
            {
              if (objc_opt_respondsToSelector())
              {
                OUTLINED_FUNCTION_34_2();
              }

              if (VRTraceGetErrorLogLevelForModule() < 3)
              {
                goto LABEL_122;
              }

              VRTraceErrorLogLevelToCSTR();
              if (!OUTLINED_FUNCTION_31_3())
              {
                goto LABEL_122;
              }

              goto LABEL_123;
            }

            if (VRTraceGetErrorLogLevelForModule() < 3)
            {
              goto LABEL_122;
            }

            VRTraceErrorLogLevelToCSTR();
            if (!OUTLINED_FUNCTION_31())
            {
              goto LABEL_122;
            }

            OUTLINED_FUNCTION_6_14();
            OUTLINED_FUNCTION_5_13();
            v76 = 135;
            goto LABEL_116;
          }

          goto LABEL_56;
        }

        v53 = v6;
        OUTLINED_FUNCTION_13_4();
        if (objc_opt_class() != self)
        {
          if (OUTLINED_FUNCTION_19_5())
          {
            OUTLINED_FUNCTION_37_3();
          }

          if (VRTraceGetErrorLogLevelForModule() < 3)
          {
            goto LABEL_109;
          }

          VRTraceErrorLogLevelToCSTR();
          if (!OUTLINED_FUNCTION_40_2())
          {
            goto LABEL_109;
          }

          goto LABEL_108;
        }

        if (VRTraceGetErrorLogLevelForModule() < 3)
        {
          goto LABEL_109;
        }

        VRTraceErrorLogLevelToCSTR();
        if (!OUTLINED_FUNCTION_31_3())
        {
          goto LABEL_109;
        }

        OUTLINED_FUNCTION_3_12();
        OUTLINED_FUNCTION_5_13();
        v76 = 131;
LABEL_93:
        OUTLINED_FUNCTION_16_0();
        _os_log_error_impl(v54, v55, v56, v57, v58, v59);
LABEL_109:
        connectionCopy2 = connection;
        connection = v6;
        LODWORD(v6) = v53;
        goto LABEL_57;
      }

      v53 = v6;
      OUTLINED_FUNCTION_13_4();
      if (objc_opt_class() == self)
      {
        if (VRTraceGetErrorLogLevelForModule() < 3)
        {
          goto LABEL_109;
        }

        VRTraceErrorLogLevelToCSTR();
        if (!OUTLINED_FUNCTION_31_3())
        {
          goto LABEL_109;
        }

        OUTLINED_FUNCTION_3_12();
        OUTLINED_FUNCTION_5_13();
        v76 = 129;
        goto LABEL_93;
      }

      if (OUTLINED_FUNCTION_19_5())
      {
        OUTLINED_FUNCTION_37_3();
      }

      if (VRTraceGetErrorLogLevelForModule() < 3)
      {
        goto LABEL_109;
      }

      VRTraceErrorLogLevelToCSTR();
      if (!OUTLINED_FUNCTION_40_2())
      {
        goto LABEL_109;
      }

      goto LABEL_108;
    }

    objc_opt_class();
    if ((OUTLINED_FUNCTION_41() & 1) == 0)
    {
      v53 = v6;
      OUTLINED_FUNCTION_13_4();
      if (objc_opt_class() == self)
      {
        if (VRTraceGetErrorLogLevelForModule() < 3)
        {
          goto LABEL_109;
        }

        VRTraceErrorLogLevelToCSTR();
        if (!OUTLINED_FUNCTION_31_3())
        {
          goto LABEL_109;
        }

        OUTLINED_FUNCTION_3_12();
        OUTLINED_FUNCTION_5_13();
        v76 = 144;
        goto LABEL_93;
      }

      if (OUTLINED_FUNCTION_19_5())
      {
        OUTLINED_FUNCTION_37_3();
      }

      if (VRTraceGetErrorLogLevelForModule() < 3)
      {
        goto LABEL_109;
      }

      VRTraceErrorLogLevelToCSTR();
      if (!OUTLINED_FUNCTION_40_2())
      {
        goto LABEL_109;
      }

LABEL_108:
      OUTLINED_FUNCTION_7_8();
      OUTLINED_FUNCTION_5_13();
      OUTLINED_FUNCTION_6_17();
      OUTLINED_FUNCTION_16_8();
      OUTLINED_FUNCTION_7_3();
      _os_log_error_impl(v60, v61, v62, v63, v64, v65);
      goto LABEL_109;
    }

    v15 = [(VCRateControllerManager *)self prepareCallIDKeyFromConnection:connection];
    if (!v15)
    {
      v53 = v6;
      OUTLINED_FUNCTION_13_4();
      if (objc_opt_class() == self)
      {
        if (VRTraceGetErrorLogLevelForModule() < 3)
        {
          goto LABEL_109;
        }

        VRTraceErrorLogLevelToCSTR();
        if (!OUTLINED_FUNCTION_31_3())
        {
          goto LABEL_109;
        }

        OUTLINED_FUNCTION_3_12();
        OUTLINED_FUNCTION_5_13();
        v76 = 146;
        goto LABEL_93;
      }

      if (OUTLINED_FUNCTION_19_5())
      {
        OUTLINED_FUNCTION_37_3();
      }

      if (VRTraceGetErrorLogLevelForModule() < 3)
      {
        goto LABEL_109;
      }

      VRTraceErrorLogLevelToCSTR();
      if (!OUTLINED_FUNCTION_40_2())
      {
        goto LABEL_109;
      }

      goto LABEL_108;
    }

    v16 = OUTLINED_FUNCTION_39_5(v15);
    v17 = objc_opt_class();
    if (v16)
    {
      v72 = 2;
      OUTLINED_FUNCTION_13_4();
      if (v18 != self)
      {
        if (OUTLINED_FUNCTION_25_2())
        {
          OUTLINED_FUNCTION_34_2();
        }

        if (VRTraceGetErrorLogLevelForModule() < 7)
        {
          goto LABEL_36;
        }

        VRTraceErrorLogLevelToCSTR();
        if (!OUTLINED_FUNCTION_36_2())
        {
          goto LABEL_36;
        }

LABEL_34:
        OUTLINED_FUNCTION_7_8();
        OUTLINED_FUNCTION_5_13();
        OUTLINED_FUNCTION_4_11();
        OUTLINED_FUNCTION_20_1();
        v24 = 58;
        goto LABEL_35;
      }

      if (VRTraceGetErrorLogLevelForModule() < 7)
      {
        goto LABEL_36;
      }

      VRTraceErrorLogLevelToCSTR();
      if (!OUTLINED_FUNCTION_30_1())
      {
        goto LABEL_36;
      }

LABEL_28:
      OUTLINED_FUNCTION_3_12();
      OUTLINED_FUNCTION_5_13();
      OUTLINED_FUNCTION_6_17();
      OUTLINED_FUNCTION_21_2();
LABEL_35:
      _os_log_impl(v19, v20, v21, v22, v23, v24);
LABEL_36:
      v10 = [*(&self->super.super.isa + v5) objectForKeyedSubscript:v4];
      connectionCopy2 = connection;
      connection = v6;
      LODWORD(v6) = v72;
      goto LABEL_57;
    }

    if (v17 == self)
    {
      if (VRTraceGetErrorLogLevelForModule() >= 7)
      {
        VRTraceErrorLogLevelToCSTR();
        if (OUTLINED_FUNCTION_30_1())
        {
          OUTLINED_FUNCTION_3_12();
          OUTLINED_FUNCTION_5_13();
          OUTLINED_FUNCTION_6_17();
          OUTLINED_FUNCTION_21_2();
LABEL_54:
          _os_log_impl(v31, v32, v33, v34, v35, v36);
        }
      }
    }

    else
    {
      if (OUTLINED_FUNCTION_25_2())
      {
        OUTLINED_FUNCTION_34_2();
      }

      if (VRTraceGetErrorLogLevelForModule() >= 7)
      {
        VRTraceErrorLogLevelToCSTR();
        if (OUTLINED_FUNCTION_36_2())
        {
          OUTLINED_FUNCTION_7_8();
          OUTLINED_FUNCTION_5_13();
          OUTLINED_FUNCTION_4_11();
          OUTLINED_FUNCTION_20_1();
          v36 = 58;
          goto LABEL_54;
        }
      }
    }

    v37 = [[VCRateSharingGroup alloc] initWithIdentifier:v4 useMediaQueue:0];
    if (!v37)
    {
      if (objc_opt_class() != self)
      {
        if (objc_opt_respondsToSelector())
        {
          OUTLINED_FUNCTION_34_2();
        }

        if (VRTraceGetErrorLogLevelForModule() < 3)
        {
          goto LABEL_122;
        }

        VRTraceErrorLogLevelToCSTR();
        if (!OUTLINED_FUNCTION_31_3())
        {
          goto LABEL_122;
        }

LABEL_123:
        OUTLINED_FUNCTION_3_12();
        OUTLINED_FUNCTION_5_13();
        OUTLINED_FUNCTION_10_7();
        OUTLINED_FUNCTION_16_8();
        OUTLINED_FUNCTION_7_3();
        goto LABEL_124;
      }

      if (VRTraceGetErrorLogLevelForModule() < 3)
      {
        goto LABEL_122;
      }

      VRTraceErrorLogLevelToCSTR();
      if (!OUTLINED_FUNCTION_31())
      {
        goto LABEL_122;
      }

      OUTLINED_FUNCTION_6_14();
      OUTLINED_FUNCTION_5_13();
      v76 = 150;
LABEL_116:
      OUTLINED_FUNCTION_16_0();
LABEL_124:
      _os_log_error_impl(v66, v67, v68, v69, v70, v71);
LABEL_122:
      v10 = 0;
      goto LABEL_57;
    }

LABEL_56:
    v10 = v37;
    [*(&self->super.super.isa + v5) setObject:v37 forKeyedSubscript:v4];
  }

LABEL_57:
  pthread_mutex_unlock((self + connectionCopy2));
  if (objc_opt_class() == self)
  {
    if (VRTraceGetErrorLogLevelForModule() >= 7)
    {
      v39 = VRTraceErrorLogLevelToCSTR();
      v40 = *MEMORY[0x1E6986650];
      if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
      {
        v73 = 136316674;
        v74 = v39;
        v75 = 2080;
        OUTLINED_FUNCTION_27_4();
        v77 = 2048;
        v78 = v10;
        v79 = 2048;
        selfCopy = v41;
        v81 = 2048;
        connectionCopy3 = connection;
        v83 = v42;
        LODWORD(v84) = v6;
        v43 = &dword_1DB56E000;
        v44 = " [%s] %s:%d Returning sharingGroup=%p defaultSharingGroup=%p connection=%p policy=%d";
        v45 = &v73;
        v46 = v40;
        v47 = OS_LOG_TYPE_DEFAULT;
        v48 = 64;
LABEL_67:
        _os_log_impl(v43, v46, v47, v44, v45, v48);
      }
    }
  }

  else
  {
    if (objc_opt_respondsToSelector())
    {
      v38 = OUTLINED_FUNCTION_37_3();
    }

    else
    {
      v38 = &stru_1F570E008;
    }

    if (VRTraceGetErrorLogLevelForModule() >= 7)
    {
      v49 = VRTraceErrorLogLevelToCSTR();
      if (OUTLINED_FUNCTION_36_2())
      {
        v73 = 136317186;
        v74 = v49;
        v75 = 2080;
        OUTLINED_FUNCTION_27_4();
        v77 = 2112;
        v78 = v38;
        v79 = 2048;
        selfCopy = self;
        v81 = 2048;
        connectionCopy3 = v10;
        v83 = 2048;
        v84 = v50;
        v85 = 2048;
        connectionCopy4 = connection;
        v87 = v51;
        v88 = v6;
        OUTLINED_FUNCTION_20_1();
        v48 = 84;
        goto LABEL_67;
      }
    }
  }

  return v10;
}

- (void)init
{
  if (objc_opt_class() == self)
  {
    if (VRTraceGetErrorLogLevelForModule() < 3)
    {
      return;
    }

    VRTraceErrorLogLevelToCSTR();
    if (!OUTLINED_FUNCTION_34())
    {
      return;
    }

    OUTLINED_FUNCTION_11();
    OUTLINED_FUNCTION_0();
    OUTLINED_FUNCTION_16_0();
LABEL_11:
    _os_log_error_impl(v1, v2, v3, v4, v5, v6);
    return;
  }

  if (OUTLINED_FUNCTION_28_0())
  {
    [OUTLINED_FUNCTION_18_0() performSelector:?];
  }

  if (VRTraceGetErrorLogLevelForModule() >= 3)
  {
    VRTraceErrorLogLevelToCSTR();
    if (OUTLINED_FUNCTION_40())
    {
      OUTLINED_FUNCTION_10();
      OUTLINED_FUNCTION_0();
      OUTLINED_FUNCTION_0_0();
      OUTLINED_FUNCTION_7_3();
      goto LABEL_11;
    }
  }
}

- (void)prepareEndPointKeyFromConnection:.cold.1()
{
  OUTLINED_FUNCTION_40_0();
  OUTLINED_FUNCTION_11_0();
  if (objc_opt_class() == v0)
  {
    if (VRTraceGetErrorLogLevelForModule() < 3)
    {
      goto LABEL_9;
    }

    VRTraceErrorLogLevelToCSTR();
    if (!OUTLINED_FUNCTION_28())
    {
      goto LABEL_9;
    }

    OUTLINED_FUNCTION_1_0();
    OUTLINED_FUNCTION_0();
    OUTLINED_FUNCTION_11_1();
LABEL_11:
    _os_log_error_impl(v1, v2, v3, v4, v5, v6);
    goto LABEL_9;
  }

  if (OUTLINED_FUNCTION_38_0())
  {
    OUTLINED_FUNCTION_37_0();
  }

  if (VRTraceGetErrorLogLevelForModule() >= 3)
  {
    VRTraceErrorLogLevelToCSTR();
    if (OUTLINED_FUNCTION_31())
    {
      OUTLINED_FUNCTION_8();
      OUTLINED_FUNCTION_0();
      OUTLINED_FUNCTION_5_4();
      OUTLINED_FUNCTION_8_4();
      goto LABEL_11;
    }
  }

LABEL_9:
  OUTLINED_FUNCTION_23_3();
  OUTLINED_FUNCTION_39_0();
}

- (void)prepareEndPointKeyFromConnection:.cold.2()
{
  OUTLINED_FUNCTION_40_0();
  OUTLINED_FUNCTION_11_0();
  if (objc_opt_class() == v0)
  {
    if (VRTraceGetErrorLogLevelForModule() < 3)
    {
      goto LABEL_9;
    }

    VRTraceErrorLogLevelToCSTR();
    if (!OUTLINED_FUNCTION_28())
    {
      goto LABEL_9;
    }

    OUTLINED_FUNCTION_1_0();
    OUTLINED_FUNCTION_0();
    OUTLINED_FUNCTION_11_1();
LABEL_11:
    _os_log_error_impl(v1, v2, v3, v4, v5, v6);
    goto LABEL_9;
  }

  if (OUTLINED_FUNCTION_38_0())
  {
    OUTLINED_FUNCTION_37_0();
  }

  if (VRTraceGetErrorLogLevelForModule() >= 3)
  {
    VRTraceErrorLogLevelToCSTR();
    if (OUTLINED_FUNCTION_31())
    {
      OUTLINED_FUNCTION_8();
      OUTLINED_FUNCTION_0();
      OUTLINED_FUNCTION_5_4();
      OUTLINED_FUNCTION_8_4();
      goto LABEL_11;
    }
  }

LABEL_9:
  OUTLINED_FUNCTION_23_3();
  OUTLINED_FUNCTION_39_0();
}

- (void)prepareEndPointKeyFromConnection:.cold.3()
{
  OUTLINED_FUNCTION_40_0();
  OUTLINED_FUNCTION_11_0();
  if (objc_opt_class() == v0)
  {
    if (VRTraceGetErrorLogLevelForModule() < 3)
    {
      goto LABEL_9;
    }

    VRTraceErrorLogLevelToCSTR();
    if (!OUTLINED_FUNCTION_28())
    {
      goto LABEL_9;
    }

    OUTLINED_FUNCTION_1_0();
    OUTLINED_FUNCTION_0();
    OUTLINED_FUNCTION_11_1();
LABEL_11:
    _os_log_error_impl(v1, v2, v3, v4, v5, v6);
    goto LABEL_9;
  }

  if (OUTLINED_FUNCTION_38_0())
  {
    OUTLINED_FUNCTION_37_0();
  }

  if (VRTraceGetErrorLogLevelForModule() >= 3)
  {
    VRTraceErrorLogLevelToCSTR();
    if (OUTLINED_FUNCTION_31())
    {
      OUTLINED_FUNCTION_8();
      OUTLINED_FUNCTION_0();
      OUTLINED_FUNCTION_5_4();
      OUTLINED_FUNCTION_8_4();
      goto LABEL_11;
    }
  }

LABEL_9:
  OUTLINED_FUNCTION_23_3();
  OUTLINED_FUNCTION_39_0();
}

- (void)prepareEndPointKeyFromConnection:.cold.4()
{
  OUTLINED_FUNCTION_40_0();
  OUTLINED_FUNCTION_11_0();
  if (objc_opt_class() == v0)
  {
    if (VRTraceGetErrorLogLevelForModule() < 3)
    {
      goto LABEL_9;
    }

    VRTraceErrorLogLevelToCSTR();
    if (!OUTLINED_FUNCTION_28())
    {
      goto LABEL_9;
    }

    OUTLINED_FUNCTION_1_0();
    OUTLINED_FUNCTION_0();
    OUTLINED_FUNCTION_11_1();
LABEL_11:
    _os_log_error_impl(v1, v2, v3, v4, v5, v6);
    goto LABEL_9;
  }

  if (OUTLINED_FUNCTION_38_0())
  {
    OUTLINED_FUNCTION_37_0();
  }

  if (VRTraceGetErrorLogLevelForModule() >= 3)
  {
    VRTraceErrorLogLevelToCSTR();
    if (OUTLINED_FUNCTION_31())
    {
      OUTLINED_FUNCTION_8();
      OUTLINED_FUNCTION_0();
      OUTLINED_FUNCTION_5_4();
      OUTLINED_FUNCTION_8_4();
      goto LABEL_11;
    }
  }

LABEL_9:
  OUTLINED_FUNCTION_23_3();
  OUTLINED_FUNCTION_39_0();
}

- (void)prepareCallIDKeyFromConnection:.cold.1()
{
  OUTLINED_FUNCTION_40_0();
  OUTLINED_FUNCTION_11_0();
  if (objc_opt_class() == v0)
  {
    if (VRTraceGetErrorLogLevelForModule() < 3)
    {
      goto LABEL_9;
    }

    VRTraceErrorLogLevelToCSTR();
    if (!OUTLINED_FUNCTION_28())
    {
      goto LABEL_9;
    }

    OUTLINED_FUNCTION_1_0();
    OUTLINED_FUNCTION_0();
    OUTLINED_FUNCTION_11_1();
LABEL_11:
    _os_log_error_impl(v1, v2, v3, v4, v5, v6);
    goto LABEL_9;
  }

  if (OUTLINED_FUNCTION_38_0())
  {
    OUTLINED_FUNCTION_37_0();
  }

  if (VRTraceGetErrorLogLevelForModule() >= 3)
  {
    VRTraceErrorLogLevelToCSTR();
    if (OUTLINED_FUNCTION_31())
    {
      OUTLINED_FUNCTION_8();
      OUTLINED_FUNCTION_0();
      OUTLINED_FUNCTION_5_4();
      OUTLINED_FUNCTION_8_4();
      goto LABEL_11;
    }
  }

LABEL_9:
  OUTLINED_FUNCTION_23_3();
  OUTLINED_FUNCTION_39_0();
}

- (void)prepareCallIDKeyFromConnection:.cold.2()
{
  OUTLINED_FUNCTION_40_0();
  OUTLINED_FUNCTION_11_0();
  if (objc_opt_class() == v0)
  {
    if (VRTraceGetErrorLogLevelForModule() < 3)
    {
      goto LABEL_9;
    }

    VRTraceErrorLogLevelToCSTR();
    if (!OUTLINED_FUNCTION_28())
    {
      goto LABEL_9;
    }

    OUTLINED_FUNCTION_1_0();
    OUTLINED_FUNCTION_0();
    OUTLINED_FUNCTION_11_1();
LABEL_11:
    _os_log_error_impl(v1, v2, v3, v4, v5, v6);
    goto LABEL_9;
  }

  if (OUTLINED_FUNCTION_38_0())
  {
    OUTLINED_FUNCTION_37_0();
  }

  if (VRTraceGetErrorLogLevelForModule() >= 3)
  {
    VRTraceErrorLogLevelToCSTR();
    if (OUTLINED_FUNCTION_31())
    {
      OUTLINED_FUNCTION_8();
      OUTLINED_FUNCTION_0();
      OUTLINED_FUNCTION_5_4();
      OUTLINED_FUNCTION_8_4();
      goto LABEL_11;
    }
  }

LABEL_9:
  OUTLINED_FUNCTION_23_3();
  OUTLINED_FUNCTION_39_0();
}

- (void)prepareCallIDKeyFromConnection:.cold.3()
{
  OUTLINED_FUNCTION_40_0();
  OUTLINED_FUNCTION_11_0();
  if (objc_opt_class() == v0)
  {
    if (VRTraceGetErrorLogLevelForModule() < 3)
    {
      goto LABEL_9;
    }

    VRTraceErrorLogLevelToCSTR();
    if (!OUTLINED_FUNCTION_28())
    {
      goto LABEL_9;
    }

    OUTLINED_FUNCTION_1_0();
    OUTLINED_FUNCTION_0();
    OUTLINED_FUNCTION_11_1();
LABEL_11:
    _os_log_error_impl(v1, v2, v3, v4, v5, v6);
    goto LABEL_9;
  }

  if (OUTLINED_FUNCTION_38_0())
  {
    OUTLINED_FUNCTION_37_0();
  }

  if (VRTraceGetErrorLogLevelForModule() >= 3)
  {
    VRTraceErrorLogLevelToCSTR();
    if (OUTLINED_FUNCTION_31())
    {
      OUTLINED_FUNCTION_8();
      OUTLINED_FUNCTION_0();
      OUTLINED_FUNCTION_5_4();
      OUTLINED_FUNCTION_8_4();
      goto LABEL_11;
    }
  }

LABEL_9:
  OUTLINED_FUNCTION_23_3();
  OUTLINED_FUNCTION_39_0();
}

@end