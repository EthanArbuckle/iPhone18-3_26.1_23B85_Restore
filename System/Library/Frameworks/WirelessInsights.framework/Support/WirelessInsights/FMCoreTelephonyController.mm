@interface FMCoreTelephonyController
+ (id)cellInfoToFMCongestionCell:(id)cell atTime:(id)time inSlot:(id)slot error:(id *)error;
+ (id)cellInfoToFMServingCell:(id)cell atTime:(id)time inSlot:(id)slot error:(id *)error;
- (BOOL)isDataContextUuid:(id)uuid;
- (FMCoreTelephonyController)initWithFMModel:(id)model;
- (FMModel)fmModel;
- (id)CTSubscriptionSlotToSubscriptionID:(int64_t)d;
- (id)CTXPCServiceSubscriptionContextToFMSubscriptionContext:(id)context;
- (id)getRegistrationStatus:(id)status;
- (id)getSubscriptionContextFromUUID:(id)d;
- (id)getSubscriptionContextsInUse;
- (void)dealloc;
- (void)handleUpdate:(id)update forKey:(int)key withState:(id)state;
- (void)removeAsDelegate;
- (void)updateUuidContextMap;
@end

@implementation FMCoreTelephonyController

- (FMModel)fmModel
{
  WeakRetained = objc_loadWeakRetained(&self->_fmModel);

  return WeakRetained;
}

- (FMCoreTelephonyController)initWithFMModel:(id)model
{
  modelCopy = model;
  v18.receiver = self;
  v18.super_class = FMCoreTelephonyController;
  v5 = [(FMCoreTelephonyController *)&v18 init];
  v6 = v5;
  if (!v5)
  {
    if (os_log_type_enabled(*(qword_1002DBE98 + 136), OS_LOG_TYPE_DEBUG))
    {
      sub_1001FE470();
    }

    goto LABEL_11;
  }

  [(FMCoreTelephonyController *)v5 setFmModel:modelCopy];
  v7 = objc_alloc_init(NSMutableDictionary);
  [(FMCoreTelephonyController *)v6 setUuidToContextMap:v7];

  v6->uuidToContextMapLock._os_unfair_lock_opaque = 0;
  [(FMCoreTelephonyController *)v6 setQueue:dispatch_queue_create("com.apple.wirelessinsightsd.FederatedMobility.CoreTelephonyController", 0)];
  if (![(FMCoreTelephonyController *)v6 queue])
  {
LABEL_11:
    v13 = 0;
    goto LABEL_12;
  }

  v8 = +[TelephonyStateRelay sharedInstance];
  [(FMCoreTelephonyController *)v6 setCtRelay:v8];

  ctRelay = [(FMCoreTelephonyController *)v6 ctRelay];
  coreTelephonyClient = [ctRelay coreTelephonyClient];

  if (!coreTelephonyClient)
  {
    if (os_log_type_enabled(*(qword_1002DBE98 + 136), OS_LOG_TYPE_ERROR))
    {
      sub_1001FE430();
    }

    goto LABEL_11;
  }

  objc_initWeak(&location, v6);
  _initialSyncGroup = [modelCopy _initialSyncGroup];
  queue = [(FMCoreTelephonyController *)v6 queue];
  v15[0] = _NSConcreteStackBlock;
  v15[1] = 3221225472;
  v15[2] = sub_10005103C;
  v15[3] = &unk_1002AC020;
  objc_copyWeak(&v16, &location);
  dispatch_group_async(_initialSyncGroup, queue, v15);
  if (os_log_type_enabled(*(qword_1002DBE98 + 136), OS_LOG_TYPE_DEBUG))
  {
    sub_1001FE3FC();
  }

  v13 = v6;
  objc_destroyWeak(&v16);
  objc_destroyWeak(&location);
LABEL_12:

  return v13;
}

- (void)dealloc
{
  if (os_log_type_enabled(*(qword_1002DBE98 + 136), OS_LOG_TYPE_DEBUG))
  {
    sub_1001FE4A4();
  }

  if ([(FMCoreTelephonyController *)self queue])
  {
    dispatch_release([(FMCoreTelephonyController *)self queue]);
  }

  v3.receiver = self;
  v3.super_class = FMCoreTelephonyController;
  [(FMCoreTelephonyController *)&v3 dealloc];
}

- (void)removeAsDelegate
{
  ctRelay = [(FMCoreTelephonyController *)self ctRelay];
  [ctRelay removeTelephonyStateDelegate:self];
}

- (BOOL)isDataContextUuid:(id)uuid
{
  uuidCopy = uuid;
  dataContext = [(FMCoreTelephonyController *)self dataContext];
  v6 = dataContext;
  if (dataContext)
  {
    uuid = [dataContext uuid];
    v8 = [uuid isEqual:uuidCopy];
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (id)getSubscriptionContextsInUse
{
  v3 = objc_alloc_init(NSMutableArray);
  os_unfair_lock_lock(&self->uuidToContextMapLock);
  uuidToContextMap = [(FMCoreTelephonyController *)self uuidToContextMap];
  v8 = _NSConcreteStackBlock;
  v9 = 3221225472;
  v10 = sub_100051540;
  v11 = &unk_1002AC048;
  selfCopy = self;
  v5 = v3;
  v13 = v5;
  [uuidToContextMap enumerateKeysAndObjectsUsingBlock:&v8];

  os_unfair_lock_unlock(&self->uuidToContextMapLock);
  if (os_log_type_enabled(*(qword_1002DBE98 + 136), OS_LOG_TYPE_DEBUG))
  {
    sub_1001FE4D8(v14, [v5 count]);
  }

  v6 = [v5 copy];

  return v6;
}

- (id)getSubscriptionContextFromUUID:(id)d
{
  dCopy = d;
  if (dCopy)
  {
    os_unfair_lock_lock(&self->uuidToContextMapLock);
    uuidToContextMap = [(FMCoreTelephonyController *)self uuidToContextMap];
    v6 = [uuidToContextMap objectForKey:dCopy];

    os_unfair_lock_unlock(&self->uuidToContextMapLock);
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (id)getRegistrationStatus:(id)status
{
  statusCopy = status;
  v5 = [(FMCoreTelephonyController *)self getSubscriptionContextFromUUID:statusCopy];
  if (v5)
  {
    ctRelay = [(FMCoreTelephonyController *)self ctRelay];
    coreTelephonyClient = [ctRelay coreTelephonyClient];
    v15 = 0;
    v8 = [coreTelephonyClient copyRegistrationStatus:v5 error:&v15];
    v9 = v15;

    if (v9)
    {
      v10 = *(qword_1002DBE98 + 136);
      if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
      {
        localizedDescription = [v9 localizedDescription];
        sub_1001FE51C(localizedDescription, v16, v10);
      }

      v12 = 0;
    }

    else
    {
      v12 = v8;
    }
  }

  else
  {
    v13 = *(qword_1002DBE98 + 136);
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEBUG))
    {
      sub_1001FE568(statusCopy, v13);
    }

    v12 = 0;
  }

  return v12;
}

- (void)handleUpdate:(id)update forKey:(int)key withState:(id)state
{
  updateCopy = update;
  stateCopy = state;
  fmModel = [(FMCoreTelephonyController *)self fmModel];
  v11 = fmModel;
  if (key > 6)
  {
    if (key <= 13)
    {
      if (key == 7)
      {
        -[FMCoreTelephonyController setAirplaneModeActive:](self, "setAirplaneModeActive:", [stateCopy BOOLValue]);
        if (v11)
        {
          [v11 handleAirplaneModeActiveChanged:{objc_msgSend(stateCopy, "BOOLValue")}];
        }
      }

      else if (key == 8 && updateCopy && fmModel)
      {
        uuid = [updateCopy uuid];
        [v11 handleRegistrationStatusChanged:uuid registrationStatus:stateCopy];
        goto LABEL_34;
      }

      goto LABEL_35;
    }

    if (key == 14)
    {
      if (fmModel)
      {
        [fmModel handleRadioStateChanged:stateCopy];
      }

      goto LABEL_35;
    }

    if (key != 18 || !updateCopy || !fmModel)
    {
      goto LABEL_35;
    }

    uuid = [updateCopy uuid];
    bars = [stateCopy bars];
    [v11 handleSignalStrengthChanged:uuid bars:bars];
LABEL_29:

    goto LABEL_34;
  }

  if (key > 2)
  {
    if (key == 3)
    {
      if (updateCopy)
      {
        uuid = [(FMCoreTelephonyController *)self CTXPCServiceSubscriptionContextToFMSubscriptionContext:updateCopy];
        [(FMCoreTelephonyController *)self setDataContext:uuid];
        goto LABEL_34;
      }
    }

    else if (key == 6)
    {
      if (os_log_type_enabled(*(qword_1002DBE98 + 136), OS_LOG_TYPE_DEBUG))
      {
        sub_1001FE614();
      }

      [(FMCoreTelephonyController *)self updateUuidContextMap];
      if (v11)
      {
        goto LABEL_8;
      }
    }

    goto LABEL_35;
  }

  if (!key)
  {
    if (!updateCopy || !fmModel)
    {
      goto LABEL_35;
    }

    uuid = [updateCopy uuid];
    bars = [stateCopy legacyInfo];
    [v11 handleCellMonitorUpdate:uuid info:bars];
    goto LABEL_29;
  }

  if (key == 2)
  {
    if (os_log_type_enabled(*(qword_1002DBE98 + 136), OS_LOG_TYPE_DEBUG))
    {
      sub_1001FE5E0();
    }

    [(FMCoreTelephonyController *)self updateUuidContextMap];
    if (v11)
    {
LABEL_8:
      uuid = [(FMCoreTelephonyController *)self getSubscriptionContextsInUse];
      [v11 populateSubscriptionContextsInUse:uuid];
LABEL_34:
    }
  }

LABEL_35:
}

+ (id)cellInfoToFMServingCell:(id)cell atTime:(id)time inSlot:(id)slot error:(id *)error
{
  cellCopy = cell;
  timeCopy = time;
  slotCopy = slot;
  v12 = [WISTelephonyUtils extractCellInfoValue:cellCopy key:kCTCellMonitorCellRadioAccessTechnology expectedClass:objc_opt_class() error:error];
  if (*error)
  {
    v13 = 0;
  }

  else
  {
    v14 = [WISTelephonyUtils extractCellInfoValue:cellCopy key:kCTCellMonitorCellId expectedClass:objc_opt_class() error:error];
    if (*error)
    {
      v13 = 0;
    }

    else
    {
      v15 = [WISTelephonyUtils extractCellInfoValue:cellCopy key:kCTCellMonitorMNC expectedClass:objc_opt_class() error:error];
      if (*error)
      {
        v13 = 0;
      }

      else
      {
        v16 = [WISTelephonyUtils extractCellInfoValue:cellCopy key:kCTCellMonitorMCC expectedClass:objc_opt_class() error:error];
        v17 = v16;
        if (*error)
        {
          v13 = 0;
        }

        else
        {
          v32 = v16;
          v18 = [WISTelephonyUtils extractCellInfoValue:cellCopy key:kCTCellMonitorBandInfo expectedClass:objc_opt_class() error:error];
          if (*error)
          {
            v13 = 0;
            v17 = v32;
          }

          else
          {
            v31 = v18;
            v17 = v32;
            v19 = [WISTelephonyUtils getLacOrTacFromCellInfo:cellCopy error:error];
            if (*error)
            {
              v13 = 0;
            }

            else
            {
              v28 = v19;
              v30 = [WISTelephonyUtils getArfcnFromCellInfo:cellCopy error:error];
              if (*error)
              {

                *error = 0;
                v30 = &off_1002BEE38;
              }

              v20 = [WISTelephonyUtils getBandwidthFromCellInfo:cellCopy error:error];
              v21 = v20;
              if (*error || (v29 = v20, v22 = [v20 isEqualToNumber:&off_1002BEE50], v21 = v29, v22))
              {

                v29 = 0;
                *error = 0;
              }

              v23 = [WISTelephonyUtils getPciFromCellInfo:cellCopy error:error];
              if (*error)
              {

                v27 = 0;
                *error = 0;
              }

              else
              {
                v27 = v23;
              }

              v24 = [WISTelephonyUtils extractCellInfoValue:cellCopy key:kCTCellMonitorDeploymentType expectedClass:objc_opt_class() error:error];
              v25 = v24;
              if (*error)
              {

                v25 = 0;
                *error = 0;
              }

              v13 = [[FMServingCell alloc] init:timeCopy subscriptionID:slotCopy radioAccessTechnology:v12 cellID:v14 mnc:v15 mcc:v32 bandInfo:v31 tacOrLac:v28 arfcnOrUarfcn:v30 bandwidth:v29 pci:v27 deploymentType:v25];

              v19 = v28;
            }

            v18 = v31;
          }
        }
      }
    }
  }

  return v13;
}

+ (id)cellInfoToFMCongestionCell:(id)cell atTime:(id)time inSlot:(id)slot error:(id *)error
{
  cellCopy = cell;
  timeCopy = time;
  slotCopy = slot;
  v12 = [WISTelephonyUtils extractCellInfoValue:cellCopy key:kCTCellMonitorMNC expectedClass:objc_opt_class() error:error];
  if (*error)
  {
    v13 = 0;
  }

  else
  {
    v14 = [WISTelephonyUtils extractCellInfoValue:cellCopy key:kCTCellMonitorMCC expectedClass:objc_opt_class() error:error];
    if (*error)
    {
      v13 = 0;
    }

    else
    {
      v15 = [WISTelephonyUtils getGciFromCellInfo:cellCopy error:error];
      if (*error)
      {
        v13 = 0;
      }

      else
      {
        v16 = [WISTelephonyUtils getRATFromCellInfo:cellCopy error:error];
        if (*error)
        {
          v13 = 0;
        }

        else
        {
          v17 = [WISTelephonyUtils getArfcnFromCellInfo:cellCopy error:error];
          v18 = v17;
          if (*error)
          {

            v18 = 0;
            *error = 0;
          }

          v13 = [[FMCongestionCell alloc] init:timeCopy subscriptionID:slotCopy mcc:v14 mnc:v12 gci:v15 rat:v16 arfcnOrUarfcn:v18];
        }
      }
    }
  }

  return v13;
}

- (id)CTXPCServiceSubscriptionContextToFMSubscriptionContext:(id)context
{
  contextCopy = context;
  if (contextCopy)
  {
    ctRelay = [(FMCoreTelephonyController *)self ctRelay];
    v17 = 0;
    v6 = [ctRelay getHomeCarrierMCC:contextCopy error:&v17];
    v7 = v17;

    if (v7)
    {
      if (os_log_type_enabled(*(qword_1002DBE98 + 48), OS_LOG_TYPE_ERROR))
      {
        sub_1001FE648(v19, [contextCopy slotID]);
      }
    }

    ctRelay2 = [(FMCoreTelephonyController *)self ctRelay];
    v16 = 0;
    v9 = [ctRelay2 getHomeCarrierMNC:contextCopy error:&v16];
    v10 = v16;

    if (v10 && os_log_type_enabled(*(qword_1002DBE98 + 48), OS_LOG_TYPE_ERROR))
    {
      sub_1001FE680(v18, [contextCopy slotID]);
    }

    v11 = [FMSubscriptionContext alloc];
    uuid = [contextCopy uuid];
    v13 = -[FMCoreTelephonyController CTSubscriptionSlotToSubscriptionID:](self, "CTSubscriptionSlotToSubscriptionID:", [contextCopy slotID]);
    v14 = [(FMSubscriptionContext *)v11 init:uuid subscriptionID:v13 mcc:v6 mnc:v9];
  }

  else
  {
    v14 = 0;
  }

  return v14;
}

- (id)CTSubscriptionSlotToSubscriptionID:(int64_t)d
{
  if (d == 2)
  {
    return &off_1002BEE80;
  }

  if (d)
  {
    return &off_1002BEE50;
  }

  if (os_log_type_enabled(*(qword_1002DBE98 + 48), OS_LOG_TYPE_ERROR))
  {
    sub_1001FE6B8();
  }

  return &off_1002BEE68;
}

- (void)updateUuidContextMap
{
  ctRelay = [(FMCoreTelephonyController *)self ctRelay];
  coreTelephonyClient = [ctRelay coreTelephonyClient];
  v23 = 0;
  v5 = [coreTelephonyClient getSubscriptionInfoWithError:&v23];
  v6 = v23;

  if (v6)
  {
    v7 = *(qword_1002DBE98 + 136);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      localizedDescription = [v6 localizedDescription];
      sub_1001FE6F8(localizedDescription, v25, v7);
    }
  }

  else
  {
    subscriptionsInUse = [v5 subscriptionsInUse];
    v18 = [WISTelephonyUtils sanitizedSubscriptions:subscriptionsInUse];

    os_unfair_lock_lock(&self->uuidToContextMapLock);
    uuidToContextMap = [(FMCoreTelephonyController *)self uuidToContextMap];
    [uuidToContextMap removeAllObjects];

    if (v18)
    {
      v21 = 0u;
      v22 = 0u;
      v19 = 0u;
      v20 = 0u;
      v11 = v18;
      v12 = [v11 countByEnumeratingWithState:&v19 objects:v24 count:16];
      if (v12)
      {
        v13 = *v20;
        do
        {
          for (i = 0; i != v12; i = i + 1)
          {
            if (*v20 != v13)
            {
              objc_enumerationMutation(v11);
            }

            v15 = *(*(&v19 + 1) + 8 * i);
            uuidToContextMap2 = [(FMCoreTelephonyController *)self uuidToContextMap];
            uuid = [v15 uuid];
            [uuidToContextMap2 setObject:v15 forKey:uuid];
          }

          v12 = [v11 countByEnumeratingWithState:&v19 objects:v24 count:16];
        }

        while (v12);
      }

      os_unfair_lock_unlock(&self->uuidToContextMapLock);
      if (os_log_type_enabled(*(qword_1002DBE98 + 136), OS_LOG_TYPE_DEBUG))
      {
        sub_1001FE744(v25, [v11 count]);
      }
    }

    else
    {
      if (os_log_type_enabled(*(qword_1002DBE98 + 136), OS_LOG_TYPE_DEBUG))
      {
        sub_1001FE788();
      }

      os_unfair_lock_unlock(&self->uuidToContextMapLock);
    }
  }
}

@end