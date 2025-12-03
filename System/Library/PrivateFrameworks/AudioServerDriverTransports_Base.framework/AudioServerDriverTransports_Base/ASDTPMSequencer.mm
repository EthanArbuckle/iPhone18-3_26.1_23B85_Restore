@interface ASDTPMSequencer
+ (ASDTPMSequencer)pmSequencerWithPMDeviceConfig:(id)config withParent:(id)parent;
+ (int64_t)compare:(id)compare with:(id)with forPowerUp:(BOOL)up;
- (ASDTAudioDevice)parentDevice;
- (ASDTPMProtocol)parent;
- (ASDTPMSequencer)initWithPMDeviceConfig:(id)config withParent:(id)parent;
- (BOOL)addPMDevicesWithConfig:(id)config;
- (BOOL)doAddPMDeviceWithConfig:(id)config;
- (id)pmDeviceWithName:(id)name;
- (int)executeSequenceFromState:(int)state toState:(int)toState;
- (int)executeSequenceToState:(int)state;
- (int)executeSequenceToState:(int)state fromState:(int)fromState;
- (int)powerState;
- (void)sortPMDevices;
- (void)updateQuiescentState:(int)state;
@end

@implementation ASDTPMSequencer

+ (ASDTPMSequencer)pmSequencerWithPMDeviceConfig:(id)config withParent:(id)parent
{
  configCopy = config;
  parentCopy = parent;
  v7 = [[ASDTPMSequencer alloc] initWithPMDeviceConfig:configCopy withParent:parentCopy];

  return v7;
}

- (ASDTPMSequencer)initWithPMDeviceConfig:(id)config withParent:(id)parent
{
  v35 = *MEMORY[0x277D85DE8];
  configCopy = config;
  parentCopy = parent;
  if (!parentCopy)
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
    [(ASDTPMSequencer *)self setParent:parentCopy];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      [(ASDTPMSequencer *)self setParentDevice:parentCopy];
    }

    v9 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v10 = dispatch_queue_attr_make_with_qos_class(v9, QOS_CLASS_USER_INTERACTIVE, 0);

    v11 = MEMORY[0x277CCACA8];
    parent = [(ASDTPMSequencer *)self parent];
    name = [parent name];
    v14 = [v11 stringWithFormat:@"%s.%@.serial", "com.apple.AudioServerDriverTransports", name];

    v15 = v14;
    v16 = dispatch_queue_create([v14 UTF8String], v10);
    [(ASDTPMSequencer *)self setPmSerialQueue:v16];

    pmSerialQueue = [(ASDTPMSequencer *)self pmSerialQueue];
    LODWORD(v16) = pmSerialQueue == 0;

    if (v16)
    {
      v20 = ASDTBaseLogType();
      if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
      {
        parent2 = [(ASDTPMSequencer *)self parent];
        name2 = [parent2 name];
        [(ASDTPMSequencer *)name2 initWithPMDeviceConfig:buf withParent:v20, parent2];
      }
    }

    else
    {
      v18 = [MEMORY[0x277CBEB18] arrayWithCapacity:{objc_msgSend(configCopy, "count") + 1}];
      [(ASDTPMSequencer *)self setMutablePMDevicesPowerUp:v18];

      v19 = [MEMORY[0x277CBEB18] arrayWithCapacity:{objc_msgSend(configCopy, "count") + 1}];
      [(ASDTPMSequencer *)self setMutablePMDevicesPowerDown:v19];

      v20 = [ASDTPMDeviceProxy forPMDevice:parentCopy];
      mutablePMDevicesPowerUp = [(ASDTPMSequencer *)self mutablePMDevicesPowerUp];
      [mutablePMDevicesPowerUp addObject:v20];

      mutablePMDevicesPowerDown = [(ASDTPMSequencer *)self mutablePMDevicesPowerDown];
      [mutablePMDevicesPowerDown addObject:v20];

      if ([(ASDTPMSequencer *)self addPMDevicesWithConfig:configCopy])
      {
        pmDevicesPowerUp = [(ASDTPMSequencer *)self pmDevicesPowerUp];
        if ([pmDevicesPowerUp count])
        {
          pmDevicesPowerDown = [(ASDTPMSequencer *)self pmDevicesPowerDown];
          v25 = [pmDevicesPowerDown count] == 0;

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
          name3 = [parentCopy name];
          [(ASDTPMSequencer *)name3 initWithPMDeviceConfig:buf withParent:v29];
        }
      }
    }

LABEL_19:
    selfCopy = 0;
    goto LABEL_20;
  }

LABEL_10:
  self = self;
  selfCopy = self;
LABEL_20:

  v31 = *MEMORY[0x277D85DE8];
  return selfCopy;
}

- (BOOL)doAddPMDeviceWithConfig:(id)config
{
  v17 = *MEMORY[0x277D85DE8];
  configCopy = config;
  v5 = [ASDTPMDevice pmDeviceWithConfig:configCopy forSequencer:self];
  if (v5)
  {
    mutablePMDevicesPowerUp = [(ASDTPMSequencer *)self mutablePMDevicesPowerUp];
    [mutablePMDevicesPowerUp addObject:v5];

    mutablePMDevicesPowerDown = [(ASDTPMSequencer *)self mutablePMDevicesPowerDown];
    [mutablePMDevicesPowerDown addObject:v5];
  }

  else
  {
    v8 = ASDTBaseLogType();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      parent = [(ASDTPMSequencer *)self parent];
      name = [parent name];
      v13 = 138412546;
      v14 = name;
      v15 = 2112;
      v16 = configCopy;
      _os_log_error_impl(&dword_241659000, v8, OS_LOG_TYPE_ERROR, "%@: Error creating PM device for dictionary: %@", &v13, 0x16u);
    }
  }

  v9 = *MEMORY[0x277D85DE8];
  return v5 != 0;
}

- (void)sortPMDevices
{
  mutablePMDevicesPowerUp = [(ASDTPMSequencer *)self mutablePMDevicesPowerUp];
  [mutablePMDevicesPowerUp sortUsingComparator:&__block_literal_global_6];

  mutablePMDevicesPowerDown = [(ASDTPMSequencer *)self mutablePMDevicesPowerDown];
  [mutablePMDevicesPowerDown sortUsingComparator:&__block_literal_global_9];

  mutablePMDevicesPowerUp2 = [(ASDTPMSequencer *)self mutablePMDevicesPowerUp];
  v3 = [mutablePMDevicesPowerUp2 copy];
  [(ASDTPMSequencer *)self setPmDevicesPowerUp:v3];

  mutablePMDevicesPowerDown2 = [(ASDTPMSequencer *)self mutablePMDevicesPowerDown];
  v4 = [mutablePMDevicesPowerDown2 copy];
  [(ASDTPMSequencer *)self setPmDevicesPowerDown:v4];
}

- (BOOL)addPMDevicesWithConfig:(id)config
{
  v16 = *MEMORY[0x277D85DE8];
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  configCopy = config;
  v5 = [configCopy countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v5)
  {
    v6 = *v12;
    while (2)
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v12 != v6)
        {
          objc_enumerationMutation(configCopy);
        }

        if (![(ASDTPMSequencer *)self doAddPMDeviceWithConfig:*(*(&v11 + 1) + 8 * i), v11])
        {

          v8 = 0;
          goto LABEL_11;
        }
      }

      v5 = [configCopy countByEnumeratingWithState:&v11 objects:v15 count:16];
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

+ (int64_t)compare:(id)compare with:(id)with forPowerUp:(BOOL)up
{
  upCopy = up;
  compareCopy = compare;
  withCopy = with;
  if (upCopy)
  {
    pmOrderPowerUp = [compareCopy pmOrderPowerUp];
    pmOrderPowerUp2 = [withCopy pmOrderPowerUp];
  }

  else
  {
    pmOrderPowerUp2 = [compareCopy pmOrderPowerDown];
    pmOrderPowerUp = [withCopy pmOrderPowerDown];
  }

  if (pmOrderPowerUp >= pmOrderPowerUp2)
  {
    v11 = 0;
  }

  else
  {
    v11 = -1;
  }

  if (pmOrderPowerUp > pmOrderPowerUp2)
  {
    v12 = 1;
  }

  else
  {
    v12 = v11;
  }

  return v12;
}

- (int)executeSequenceFromState:(int)state toState:(int)toState
{
  v99 = *MEMORY[0x277D85DE8];
  if (toState)
  {
    v6 = asdtPowerTransitionForStateChange(state, toState);
    if (v6)
    {
      v7 = v6;
      stateCopy = state;
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
      objectEnumerator = [v8 objectEnumerator];

      v67 = 0uLL;
      v68 = 0x10000;
      ASDTTime::machAbsoluteTime(v10, &v65);
      v47 = 0;
      nextObject = 0;
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
      if (toState - 32 >= 0x5F)
      {
        toStateCopy = 32;
      }

      else
      {
        toStateCopy = toState;
      }

      v18 = BYTE1(toState);
      if (BYTE1(toState) - 32 >= 0x5F)
      {
        v18 = 32;
      }

      v54 = v18;
      v55 = toStateCopy;
      if (BYTE2(toState) - 32 >= 0x5F)
      {
        v19 = 32;
      }

      else
      {
        v19 = BYTE2(toState);
      }

      if ((toState - 0x20000000) >> 24 >= 0x5F)
      {
        v20 = 32;
      }

      else
      {
        v20 = HIBYTE(toState);
      }

      v52 = v20;
      v53 = v19;
      v21 = stateCopy;
      if (stateCopy - 32 >= 0x5F)
      {
        v21 = 32;
      }

      v51 = v21;
      v22 = BYTE1(stateCopy);
      if (BYTE1(stateCopy) - 32 >= 0x5F)
      {
        v22 = 32;
      }

      v50 = v22;
      v23 = BYTE2(stateCopy);
      if (BYTE2(stateCopy) - 32 >= 0x5F)
      {
        v23 = 32;
      }

      v49 = v23;
      if ((stateCopy - 0x20000000) >> 24 >= 0x5F)
      {
        v24 = 32;
      }

      else
      {
        v24 = HIBYTE(stateCopy);
      }

      v48 = v24;
      *&v11 = 138414850;
      v45 = v11;
      while (1)
      {
        v25 = nextObject;
        while (1)
        {
          nextObject = [objectEnumerator nextObject];

          if (!nextObject)
          {
            LODWORD(v9) = v47;
            goto LABEL_65;
          }

          v67 = v65;
          v68 = v66;
          v9 = [nextObject asdtPowerStateChange:v7];
          ASDTTime::machAbsoluteTime(v9, buf);
          v65 = *buf;
          v66 = *&buf[16];
          if (!v9)
          {
            v25 = nextObject;
            if (([nextObject asdtHandlesPowerTransition:v7] & 1) == 0)
            {
              continue;
            }
          }

          v26 = ASDTBaseLogType();
          if (os_log_type_enabled(v26, OS_LOG_TYPE_DEFAULT))
          {
            parent = [(ASDTPMSequencer *)self parent];
            name = [parent name];
            name2 = [nextObject name];
            if (v60)
            {
              pmOrderPowerUp = [nextObject pmOrderPowerUp];
            }

            else
            {
              pmOrderPowerUp = [nextObject pmOrderPowerDown];
            }

            v33 = pmOrderPowerUp;
            v63 = v65;
            v64 = v66;
            ASDTTime::operator-=(&v63, &v67, v31, v32);
            *buf = 138416898;
            *&buf[4] = name;
            *&buf[12] = 2112;
            *&buf[14] = name2;
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

          v25 = nextObject;
          if (v9)
          {
            break;
          }
        }

        v34 = ASDTBaseLogType();
        if (os_log_type_enabled(v34, OS_LOG_TYPE_ERROR))
        {
          parent2 = [(ASDTPMSequencer *)self parent];
          name3 = [parent2 name];
          name4 = [nextObject name];
          v38 = name4;
          *buf = v45;
          v39 = v9 >> 24;
          *&buf[4] = name3;
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
          *&v72[2] = name4;
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

        if (!stateCopy)
        {
          break;
        }

        v47 = v9;
        if (v60)
        {
          v47 = v9;
          if ([(ASDTPMSequencer *)self quiescentState]!= toState)
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

- (int)executeSequenceToState:(int)state
{
  v10 = 0;
  v11 = &v10;
  v12 = 0x2020000000;
  v13 = 0;
  pmSerialQueue = [(ASDTPMSequencer *)self pmSerialQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __42__ASDTPMSequencer_executeSequenceToState___block_invoke;
  block[3] = &unk_278CE6658;
  block[4] = self;
  block[5] = &v10;
  stateCopy = state;
  dispatch_sync(pmSerialQueue, block);

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

- (int)executeSequenceToState:(int)state fromState:(int)fromState
{
  selfCopy = self;
  v12 = 0;
  v13 = &v12;
  v14 = 0x2020000000;
  v15 = 0;
  pmSerialQueue = [(ASDTPMSequencer *)self pmSerialQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __52__ASDTPMSequencer_executeSequenceToState_fromState___block_invoke;
  block[3] = &unk_278CE6680;
  fromStateCopy = fromState;
  stateCopy = state;
  block[4] = selfCopy;
  block[5] = &v12;
  dispatch_sync(pmSerialQueue, block);

  LODWORD(selfCopy) = *(v13 + 6);
  _Block_object_dispose(&v12, 8);
  return selfCopy;
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
  selfCopy = self;
  v6 = 0;
  v7 = &v6;
  v8 = 0x2020000000;
  v9 = 0;
  pmSerialQueue = [(ASDTPMSequencer *)self pmSerialQueue];
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __29__ASDTPMSequencer_powerState__block_invoke;
  v5[3] = &unk_278CE66A8;
  v5[4] = selfCopy;
  v5[5] = &v6;
  dispatch_sync(pmSerialQueue, v5);

  LODWORD(selfCopy) = *(v7 + 6);
  _Block_object_dispose(&v6, 8);
  return selfCopy;
}

void __29__ASDTPMSequencer_powerState__block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) parent];
  *(*(*(a1 + 40) + 8) + 24) = [v2 powerState];
}

- (void)updateQuiescentState:(int)state
{
  pmSerialQueue = [(ASDTPMSequencer *)self pmSerialQueue];
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __40__ASDTPMSequencer_updateQuiescentState___block_invoke;
  v6[3] = &unk_278CE66D0;
  v6[4] = self;
  stateCopy = state;
  dispatch_sync(pmSerialQueue, v6);
}

- (id)pmDeviceWithName:(id)name
{
  v19 = *MEMORY[0x277D85DE8];
  nameCopy = name;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  pmDevicesPowerUp = [(ASDTPMSequencer *)self pmDevicesPowerUp];
  v6 = [pmDevicesPowerUp countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v6)
  {
    v7 = *v15;
    while (2)
    {
      for (i = 0; i != v6; i = i + 1)
      {
        if (*v15 != v7)
        {
          objc_enumerationMutation(pmDevicesPowerUp);
        }

        v9 = *(*(&v14 + 1) + 8 * i);
        name = [v9 name];
        v11 = [name isEqualToString:nameCopy];

        if (v11)
        {
          v6 = v9;
          goto LABEL_11;
        }
      }

      v6 = [pmDevicesPowerUp countByEnumeratingWithState:&v14 objects:v18 count:16];
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