@interface ASDTPMSequencer
+ (ASDTPMSequencer)pmSequencerWithPMDeviceConfig:(id)a3 withParent:(id)a4;
+ (int64_t)compare:(id)a3 with:(id)a4 forPowerUp:(BOOL)a5;
- (ASDTAudioDevice)parentDevice;
- (ASDTPMProtocol)parent;
- (ASDTPMSequencer)initWithPMDeviceConfig:(id)a3 withParent:(id)a4;
- (BOOL)addPMDevicesWithConfig:(id)a3;
- (BOOL)doAddPMDeviceWithConfig:(id)a3;
- (id)pmDeviceWithName:(id)a3;
- (int)executeSequenceFromState:(int)a3 toState:(int)a4;
- (int)executeSequenceToState:(int)a3;
- (int)executeSequenceToState:(int)a3 fromState:(int)a4;
- (int)powerState;
- (void)sortPMDevices;
- (void)updateQuiescentState:(int)a3;
@end

@implementation ASDTPMSequencer

+ (ASDTPMSequencer)pmSequencerWithPMDeviceConfig:(id)a3 withParent:(id)a4
{
  v5 = a3;
  v6 = a4;
  v7 = [[ASDTPMSequencer alloc] initWithPMDeviceConfig:v5 withParent:v6];

  return v7;
}

- (ASDTPMSequencer)initWithPMDeviceConfig:(id)a3 withParent:(id)a4
{
  v35 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  if (!v7)
  {
    goto LABEL_19;
  }

  v33.receiver = self;
  v33.super_class = ASDTPMSequencer;
  v8 = [(ASDTPMSequencer *)&v33 init];
  self = v8;
  if (v8)
  {
    [(ASDTPMSequencer *)v8 setQuiescentState:1767990132];
    [(ASDTPMSequencer *)self setParent:v7];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      [(ASDTPMSequencer *)self setParentDevice:v7];
    }

    v9 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v10 = dispatch_queue_attr_make_with_qos_class(v9, QOS_CLASS_USER_INTERACTIVE, 0);

    v11 = MEMORY[0x277CCACA8];
    v12 = [(ASDTPMSequencer *)self parent];
    v13 = [v12 name];
    v14 = [v11 stringWithFormat:@"%s.%@.serial", "com.apple.AudioServerDriverTransports", v13];

    v15 = v14;
    v16 = dispatch_queue_create([v14 UTF8String], v10);
    [(ASDTPMSequencer *)self setPmSerialQueue:v16];

    v17 = [(ASDTPMSequencer *)self pmSerialQueue];
    LODWORD(v16) = v17 == 0;

    if (v16)
    {
      v20 = ASDTBaseLogType();
      if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
      {
        v27 = [(ASDTPMSequencer *)self parent];
        v28 = [v27 name];
        [(ASDTPMSequencer *)v28 initWithPMDeviceConfig:buf withParent:v20, v27];
      }
    }

    else
    {
      v18 = [MEMORY[0x277CBEB18] arrayWithCapacity:{objc_msgSend(v6, "count") + 1}];
      [(ASDTPMSequencer *)self setMutablePMDevicesPowerUp:v18];

      v19 = [MEMORY[0x277CBEB18] arrayWithCapacity:{objc_msgSend(v6, "count") + 1}];
      [(ASDTPMSequencer *)self setMutablePMDevicesPowerDown:v19];

      v20 = [ASDTPMDeviceProxy forPMDevice:v7];
      v21 = [(ASDTPMSequencer *)self mutablePMDevicesPowerUp];
      [v21 addObject:v20];

      v22 = [(ASDTPMSequencer *)self mutablePMDevicesPowerDown];
      [v22 addObject:v20];

      if ([(ASDTPMSequencer *)self addPMDevicesWithConfig:v6])
      {
        v23 = [(ASDTPMSequencer *)self pmDevicesPowerUp];
        if ([v23 count])
        {
          v24 = [(ASDTPMSequencer *)self pmDevicesPowerDown];
          v25 = [v24 count] == 0;

          if (!v25)
          {

            goto LABEL_10;
          }
        }

        else
        {
        }

        v29 = ASDTBaseLogType();
        if (os_log_type_enabled(v29, OS_LOG_TYPE_ERROR))
        {
          v30 = [v7 name];
          [(ASDTPMSequencer *)v30 initWithPMDeviceConfig:buf withParent:v29];
        }
      }
    }

LABEL_19:
    v26 = 0;
    goto LABEL_20;
  }

LABEL_10:
  self = self;
  v26 = self;
LABEL_20:

  v31 = *MEMORY[0x277D85DE8];
  return v26;
}

- (BOOL)doAddPMDeviceWithConfig:(id)a3
{
  v17 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [ASDTPMDevice pmDeviceWithConfig:v4 forSequencer:self];
  if (v5)
  {
    v6 = [(ASDTPMSequencer *)self mutablePMDevicesPowerUp];
    [v6 addObject:v5];

    v7 = [(ASDTPMSequencer *)self mutablePMDevicesPowerDown];
    [v7 addObject:v5];
  }

  else
  {
    v8 = ASDTBaseLogType();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      v11 = [(ASDTPMSequencer *)self parent];
      v12 = [v11 name];
      v13 = 138412546;
      v14 = v12;
      v15 = 2112;
      v16 = v4;
      _os_log_error_impl(&dword_241659000, v8, OS_LOG_TYPE_ERROR, "%@: Error creating PM device for dictionary: %@", &v13, 0x16u);
    }
  }

  v9 = *MEMORY[0x277D85DE8];
  return v5 != 0;
}

- (void)sortPMDevices
{
  v5 = [(ASDTPMSequencer *)self mutablePMDevicesPowerUp];
  [v5 sortUsingComparator:&__block_literal_global_6];

  v6 = [(ASDTPMSequencer *)self mutablePMDevicesPowerDown];
  [v6 sortUsingComparator:&__block_literal_global_9];

  v7 = [(ASDTPMSequencer *)self mutablePMDevicesPowerUp];
  v3 = [v7 copy];
  [(ASDTPMSequencer *)self setPmDevicesPowerUp:v3];

  v8 = [(ASDTPMSequencer *)self mutablePMDevicesPowerDown];
  v4 = [v8 copy];
  [(ASDTPMSequencer *)self setPmDevicesPowerDown:v4];
}

- (BOOL)addPMDevicesWithConfig:(id)a3
{
  v16 = *MEMORY[0x277D85DE8];
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v4 = a3;
  v5 = [v4 countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v5)
  {
    v6 = *v12;
    while (2)
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v12 != v6)
        {
          objc_enumerationMutation(v4);
        }

        if (![(ASDTPMSequencer *)self doAddPMDeviceWithConfig:*(*(&v11 + 1) + 8 * i), v11])
        {

          v8 = 0;
          goto LABEL_11;
        }
      }

      v5 = [v4 countByEnumeratingWithState:&v11 objects:v15 count:16];
      if (v5)
      {
        continue;
      }

      break;
    }
  }

  [(ASDTPMSequencer *)self sortPMDevices];
  v8 = 1;
LABEL_11:

  v9 = *MEMORY[0x277D85DE8];
  return v8;
}

+ (int64_t)compare:(id)a3 with:(id)a4 forPowerUp:(BOOL)a5
{
  v5 = a5;
  v7 = a3;
  v8 = a4;
  if (v5)
  {
    v9 = [v7 pmOrderPowerUp];
    v10 = [v8 pmOrderPowerUp];
  }

  else
  {
    v10 = [v7 pmOrderPowerDown];
    v9 = [v8 pmOrderPowerDown];
  }

  if (v9 >= v10)
  {
    v11 = 0;
  }

  else
  {
    v11 = -1;
  }

  if (v9 > v10)
  {
    v12 = 1;
  }

  else
  {
    v12 = v11;
  }

  return v12;
}

- (int)executeSequenceFromState:(int)a3 toState:(int)a4
{
  v99 = *MEMORY[0x277D85DE8];
  if (a4)
  {
    v6 = asdtPowerTransitionForStateChange(a3, a4);
    if (v6)
    {
      v7 = v6;
      v46 = a3;
      v60 = asdtPowerTransitionUpwards(v6);
      if (v60)
      {
        [(ASDTPMSequencer *)self pmDevicesPowerUp];
      }

      else
      {
        [(ASDTPMSequencer *)self pmDevicesPowerDown];
      }
      v8 = ;
      v62 = [v8 objectEnumerator];

      v67 = 0uLL;
      v68 = 0x10000;
      ASDTTime::machAbsoluteTime(v10, &v65);
      v47 = 0;
      v12 = 0;
      if (v7 - 32 >= 0x5F)
      {
        v13 = 32;
      }

      else
      {
        v13 = v7;
      }

      v14 = BYTE1(v7);
      if (BYTE1(v7) - 32 >= 0x5F)
      {
        v14 = 32;
      }

      v58 = v14;
      v59 = v13;
      if (BYTE2(v7) - 32 >= 0x5F)
      {
        v15 = 32;
      }

      else
      {
        v15 = BYTE2(v7);
      }

      if ((v7 - 0x20000000) >> 24 >= 0x5F)
      {
        v16 = 32;
      }

      else
      {
        v16 = BYTE3(v7);
      }

      v56 = v16;
      v57 = v15;
      if (a4 - 32 >= 0x5F)
      {
        v17 = 32;
      }

      else
      {
        v17 = a4;
      }

      v18 = BYTE1(a4);
      if (BYTE1(a4) - 32 >= 0x5F)
      {
        v18 = 32;
      }

      v54 = v18;
      v55 = v17;
      if (BYTE2(a4) - 32 >= 0x5F)
      {
        v19 = 32;
      }

      else
      {
        v19 = BYTE2(a4);
      }

      if ((a4 - 0x20000000) >> 24 >= 0x5F)
      {
        v20 = 32;
      }

      else
      {
        v20 = HIBYTE(a4);
      }

      v52 = v20;
      v53 = v19;
      v21 = v46;
      if (v46 - 32 >= 0x5F)
      {
        v21 = 32;
      }

      v51 = v21;
      v22 = BYTE1(v46);
      if (BYTE1(v46) - 32 >= 0x5F)
      {
        v22 = 32;
      }

      v50 = v22;
      v23 = BYTE2(v46);
      if (BYTE2(v46) - 32 >= 0x5F)
      {
        v23 = 32;
      }

      v49 = v23;
      if ((v46 - 0x20000000) >> 24 >= 0x5F)
      {
        v24 = 32;
      }

      else
      {
        v24 = HIBYTE(v46);
      }

      v48 = v24;
      *&v11 = 138414850;
      v45 = v11;
      while (1)
      {
        v25 = v12;
        while (1)
        {
          v12 = [v62 nextObject];

          if (!v12)
          {
            LODWORD(v9) = v47;
            goto LABEL_65;
          }

          v67 = v65;
          v68 = v66;
          v9 = [v12 asdtPowerStateChange:v7];
          ASDTTime::machAbsoluteTime(v9, buf);
          v65 = *buf;
          v66 = *&buf[16];
          if (!v9)
          {
            v25 = v12;
            if (([v12 asdtHandlesPowerTransition:v7] & 1) == 0)
            {
              continue;
            }
          }

          v26 = ASDTBaseLogType();
          if (os_log_type_enabled(v26, OS_LOG_TYPE_DEFAULT))
          {
            v27 = [(ASDTPMSequencer *)self parent];
            v28 = [v27 name];
            v29 = [v12 name];
            if (v60)
            {
              v30 = [v12 pmOrderPowerUp];
            }

            else
            {
              v30 = [v12 pmOrderPowerDown];
            }

            v33 = v30;
            v63 = v65;
            v64 = v66;
            ASDTTime::operator-=(&v63, &v67, v31, v32);
            *buf = 138416898;
            *&buf[4] = v28;
            *&buf[12] = 2112;
            *&buf[14] = v29;
            *&buf[22] = 1024;
            *v70 = v33;
            *&v70[4] = 1024;
            *v71 = v48;
            *&v71[4] = 1024;
            *v72 = v49;
            *&v72[4] = 1024;
            *&v72[6] = v50;
            v73 = 1024;
            v74 = v51;
            v75 = 1024;
            v76 = v52;
            v77 = 1024;
            v78 = v53;
            v79 = 1024;
            v80 = v54;
            v81 = 1024;
            v82 = v55;
            v83 = 1024;
            v84 = v56;
            v85 = 1024;
            v86 = v57;
            v87 = 1024;
            v88 = v58;
            v89 = 1024;
            v90 = v59;
            v91 = 2048;
            v92 = v63;
            v93 = 2048;
            v94 = v65;
            v95 = 2048;
            v96 = *(&v65 + 1);
            v97 = 1024;
            v98 = v66;
            _os_log_impl(&dword_241659000, v26, OS_LOG_TYPE_DEFAULT, "%@: %@: Order: %u, State change '%c%c%c%c' to '%c%c%c%c' (transition '%c%c%c%c'): took %lluns, finished at %llu (%llu.%hu)", buf, 0x88u);
          }

          v25 = v12;
          if (v9)
          {
            break;
          }
        }

        v34 = ASDTBaseLogType();
        if (os_log_type_enabled(v34, OS_LOG_TYPE_ERROR))
        {
          v35 = [(ASDTPMSequencer *)self parent];
          v36 = [v35 name];
          v37 = [v12 name];
          v38 = v37;
          *buf = v45;
          v39 = v9 >> 24;
          *&buf[4] = v36;
          if ((v9 - 0x20000000) >> 24 >= 0x5F)
          {
            v39 = 32;
          }

          *&buf[12] = 1024;
          v40 = BYTE2(v9);
          *&buf[14] = v56;
          if (BYTE2(v9) - 32 >= 0x5F)
          {
            v40 = 32;
          }

          *&buf[18] = 1024;
          v41 = BYTE1(v9);
          *&buf[20] = v57;
          if (BYTE1(v9) - 32 >= 0x5F)
          {
            v41 = 32;
          }

          *v70 = 1024;
          v42 = v9;
          *&v70[2] = v58;
          if (v9 - 32 >= 0x5F)
          {
            v42 = 32;
          }

          *v71 = 1024;
          *&v71[2] = v59;
          *v72 = 2112;
          *&v72[2] = v37;
          v73 = 1024;
          v74 = v9;
          v75 = 1024;
          v76 = v39;
          v77 = 1024;
          v78 = v40;
          v79 = 1024;
          v80 = v41;
          v81 = 1024;
          v82 = v42;
          _os_log_error_impl(&dword_241659000, v34, OS_LOG_TYPE_ERROR, "%@: PM state transition '%c%c%c%c' failed for %@: %x '%c%c%c%c'", buf, 0x4Cu);
        }

        if (!v46)
        {
          break;
        }

        v47 = v9;
        if (v60)
        {
          v47 = v9;
          if ([(ASDTPMSequencer *)self quiescentState]!= a4)
          {
            break;
          }
        }
      }

LABEL_65:
    }

    else
    {
      LODWORD(v9) = 0;
    }
  }

  else
  {
    LODWORD(v9) = 1852797029;
  }

  v43 = *MEMORY[0x277D85DE8];
  return v9;
}

- (int)executeSequenceToState:(int)a3
{
  v10 = 0;
  v11 = &v10;
  v12 = 0x2020000000;
  v13 = 0;
  v5 = [(ASDTPMSequencer *)self pmSerialQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __42__ASDTPMSequencer_executeSequenceToState___block_invoke;
  block[3] = &unk_278CE6658;
  block[4] = self;
  block[5] = &v10;
  v9 = a3;
  dispatch_sync(v5, block);

  v6 = *(v11 + 6);
  _Block_object_dispose(&v10, 8);
  return v6;
}

uint64_t __42__ASDTPMSequencer_executeSequenceToState___block_invoke(uint64_t a1)
{
  result = [*(a1 + 32) doExecuteSequenceToState:*(a1 + 48)];
  *(*(*(a1 + 40) + 8) + 24) = result;
  return result;
}

- (int)executeSequenceToState:(int)a3 fromState:(int)a4
{
  v6 = self;
  v12 = 0;
  v13 = &v12;
  v14 = 0x2020000000;
  v15 = 0;
  v7 = [(ASDTPMSequencer *)self pmSerialQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __52__ASDTPMSequencer_executeSequenceToState_fromState___block_invoke;
  block[3] = &unk_278CE6680;
  v10 = a4;
  v11 = a3;
  block[4] = v6;
  block[5] = &v12;
  dispatch_sync(v7, block);

  LODWORD(v6) = *(v13 + 6);
  _Block_object_dispose(&v12, 8);
  return v6;
}

uint64_t __52__ASDTPMSequencer_executeSequenceToState_fromState___block_invoke(uint64_t a1)
{
  v49 = *MEMORY[0x277D85DE8];
  v2 = [*(a1 + 32) parent];
  v3 = [v2 powerState];

  if (v3 == *(a1 + 48))
  {
    result = [*(a1 + 32) doExecuteSequenceToState:*(a1 + 52)];
  }

  else
  {
    v5 = ASDTBaseLogType();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      v7 = [*(a1 + 32) parentDevice];
      v8 = [v7 deviceUID];
      v9 = v8;
      if ((v3 - 0x20000000) >> 24 >= 0x5F)
      {
        v10 = 32;
      }

      else
      {
        v10 = HIBYTE(v3);
      }

      if (BYTE2(v3) - 32 >= 0x5F)
      {
        v11 = 32;
      }

      else
      {
        v11 = BYTE2(v3);
      }

      v12 = *(a1 + 48);
      v13 = *(a1 + 52);
      v14 = BYTE1(v3);
      if (BYTE1(v3) - 32 >= 0x5F)
      {
        v14 = 32;
      }

      v23 = 138415362;
      v24 = v8;
      v15 = v3;
      if (v3 - 32 >= 0x5F)
      {
        v15 = 32;
      }

      v25 = 1024;
      v26 = v10;
      if ((v13 - 0x20000000) >> 24 >= 0x5F)
      {
        v16 = 32;
      }

      else
      {
        v16 = HIBYTE(v13);
      }

      v27 = 1024;
      v28 = v11;
      v17 = BYTE2(v13);
      if (BYTE2(v13) - 32 >= 0x5F)
      {
        v17 = 32;
      }

      v29 = 1024;
      v30 = v14;
      v18 = BYTE1(v13);
      if (BYTE1(v13) - 32 >= 0x5F)
      {
        v18 = 32;
      }

      v31 = 1024;
      v32 = v15;
      v13 = v13;
      if (v13 - 32 >= 0x5F)
      {
        v13 = 32;
      }

      v33 = 1024;
      v34 = v16;
      if ((v12 - 0x20000000) >> 24 >= 0x5F)
      {
        v19 = 32;
      }

      else
      {
        v19 = HIBYTE(v12);
      }

      v35 = 1024;
      v36 = v17;
      v20 = BYTE2(v12);
      if (BYTE2(v12) - 32 >= 0x5F)
      {
        v20 = 32;
      }

      v37 = 1024;
      v38 = v18;
      v21 = BYTE1(v12);
      if (BYTE1(v12) - 32 >= 0x5F)
      {
        v21 = 32;
      }

      v39 = 1024;
      v40 = v13;
      v41 = 1024;
      v42 = v19;
      v43 = 1024;
      v44 = v20;
      v45 = 1024;
      v46 = v21;
      if (v12 - 32 >= 0x5F)
      {
        v22 = 32;
      }

      else
      {
        v22 = v12;
      }

      v47 = 1024;
      v48 = v22;
      _os_log_error_impl(&dword_241659000, v5, OS_LOG_TYPE_ERROR, "%@: Unexpected starting state '%c%c%c%c' for transition to '%c%c%c%c' expected '%c%c%c%c'.", &v23, 0x54u);
    }

    result = 1852990585;
  }

  *(*(*(a1 + 40) + 8) + 24) = result;
  v6 = *MEMORY[0x277D85DE8];
  return result;
}

- (int)powerState
{
  v2 = self;
  v6 = 0;
  v7 = &v6;
  v8 = 0x2020000000;
  v9 = 0;
  v3 = [(ASDTPMSequencer *)self pmSerialQueue];
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __29__ASDTPMSequencer_powerState__block_invoke;
  v5[3] = &unk_278CE66A8;
  v5[4] = v2;
  v5[5] = &v6;
  dispatch_sync(v3, v5);

  LODWORD(v2) = *(v7 + 6);
  _Block_object_dispose(&v6, 8);
  return v2;
}

void __29__ASDTPMSequencer_powerState__block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) parent];
  *(*(*(a1 + 40) + 8) + 24) = [v2 powerState];
}

- (void)updateQuiescentState:(int)a3
{
  v5 = [(ASDTPMSequencer *)self pmSerialQueue];
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __40__ASDTPMSequencer_updateQuiescentState___block_invoke;
  v6[3] = &unk_278CE66D0;
  v6[4] = self;
  v7 = a3;
  dispatch_sync(v5, v6);
}

- (id)pmDeviceWithName:(id)a3
{
  v19 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v5 = [(ASDTPMSequencer *)self pmDevicesPowerUp];
  v6 = [v5 countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v6)
  {
    v7 = *v15;
    while (2)
    {
      for (i = 0; i != v6; i = i + 1)
      {
        if (*v15 != v7)
        {
          objc_enumerationMutation(v5);
        }

        v9 = *(*(&v14 + 1) + 8 * i);
        v10 = [v9 name];
        v11 = [v10 isEqualToString:v4];

        if (v11)
        {
          v6 = v9;
          goto LABEL_11;
        }
      }

      v6 = [v5 countByEnumeratingWithState:&v14 objects:v18 count:16];
      if (v6)
      {
        continue;
      }

      break;
    }
  }

LABEL_11:

  v12 = *MEMORY[0x277D85DE8];

  return v6;
}

- (ASDTAudioDevice)parentDevice
{
  WeakRetained = objc_loadWeakRetained(&self->_parentDevice);

  return WeakRetained;
}

- (ASDTPMProtocol)parent
{
  WeakRetained = objc_loadWeakRetained(&self->_parent);

  return WeakRetained;
}

- (void)initWithPMDeviceConfig:(os_log_t)log withParent:.cold.1(void *a1, uint8_t *buf, os_log_t log)
{
  *buf = 138412290;
  *(buf + 4) = a1;
  _os_log_error_impl(&dword_241659000, log, OS_LOG_TYPE_ERROR, "%@: PM sequencer memory allocation error.", buf, 0xCu);
}

- (void)initWithPMDeviceConfig:(os_log_t)log withParent:(void *)a4 .cold.2(void *a1, uint8_t *buf, os_log_t log, void *a4)
{
  *buf = 138412290;
  *(buf + 4) = a1;
  _os_log_error_impl(&dword_241659000, log, OS_LOG_TYPE_ERROR, "%@: Failed creating dispatch queue.", buf, 0xCu);
}

@end