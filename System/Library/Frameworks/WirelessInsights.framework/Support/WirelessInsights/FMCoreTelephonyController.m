@interface FMCoreTelephonyController
+ (id)cellInfoToFMCongestionCell:(id)a3 atTime:(id)a4 inSlot:(id)a5 error:(id *)a6;
+ (id)cellInfoToFMServingCell:(id)a3 atTime:(id)a4 inSlot:(id)a5 error:(id *)a6;
- (BOOL)isDataContextUuid:(id)a3;
- (FMCoreTelephonyController)initWithFMModel:(id)a3;
- (FMModel)fmModel;
- (id)CTSubscriptionSlotToSubscriptionID:(int64_t)a3;
- (id)CTXPCServiceSubscriptionContextToFMSubscriptionContext:(id)a3;
- (id)getRegistrationStatus:(id)a3;
- (id)getSubscriptionContextFromUUID:(id)a3;
- (id)getSubscriptionContextsInUse;
- (void)dealloc;
- (void)handleUpdate:(id)a3 forKey:(int)a4 withState:(id)a5;
- (void)removeAsDelegate;
- (void)updateUuidContextMap;
@end

@implementation FMCoreTelephonyController

- (FMModel)fmModel
{
  WeakRetained = objc_loadWeakRetained(&self->_fmModel);

  return WeakRetained;
}

- (FMCoreTelephonyController)initWithFMModel:(id)a3
{
  v4 = a3;
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

  [(FMCoreTelephonyController *)v5 setFmModel:v4];
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

  v9 = [(FMCoreTelephonyController *)v6 ctRelay];
  v10 = [v9 coreTelephonyClient];

  if (!v10)
  {
    if (os_log_type_enabled(*(qword_1002DBE98 + 136), OS_LOG_TYPE_ERROR))
    {
      sub_1001FE430();
    }

    goto LABEL_11;
  }

  objc_initWeak(&location, v6);
  v11 = [v4 _initialSyncGroup];
  v12 = [(FMCoreTelephonyController *)v6 queue];
  v15[0] = _NSConcreteStackBlock;
  v15[1] = 3221225472;
  v15[2] = sub_10005103C;
  v15[3] = &unk_1002AC020;
  objc_copyWeak(&v16, &location);
  dispatch_group_async(v11, v12, v15);
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
  v3 = [(FMCoreTelephonyController *)self ctRelay];
  [v3 removeTelephonyStateDelegate:self];
}

- (BOOL)isDataContextUuid:(id)a3
{
  v4 = a3;
  v5 = [(FMCoreTelephonyController *)self dataContext];
  v6 = v5;
  if (v5)
  {
    v7 = [v5 uuid];
    v8 = [v7 isEqual:v4];
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
  v4 = [(FMCoreTelephonyController *)self uuidToContextMap];
  v8 = _NSConcreteStackBlock;
  v9 = 3221225472;
  v10 = sub_100051540;
  v11 = &unk_1002AC048;
  v12 = self;
  v5 = v3;
  v13 = v5;
  [v4 enumerateKeysAndObjectsUsingBlock:&v8];

  os_unfair_lock_unlock(&self->uuidToContextMapLock);
  if (os_log_type_enabled(*(qword_1002DBE98 + 136), OS_LOG_TYPE_DEBUG))
  {
    sub_1001FE4D8(v14, [v5 count]);
  }

  v6 = [v5 copy];

  return v6;
}

- (id)getSubscriptionContextFromUUID:(id)a3
{
  v4 = a3;
  if (v4)
  {
    os_unfair_lock_lock(&self->uuidToContextMapLock);
    v5 = [(FMCoreTelephonyController *)self uuidToContextMap];
    v6 = [v5 objectForKey:v4];

    os_unfair_lock_unlock(&self->uuidToContextMapLock);
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (id)getRegistrationStatus:(id)a3
{
  v4 = a3;
  v5 = [(FMCoreTelephonyController *)self getSubscriptionContextFromUUID:v4];
  if (v5)
  {
    v6 = [(FMCoreTelephonyController *)self ctRelay];
    v7 = [v6 coreTelephonyClient];
    v15 = 0;
    v8 = [v7 copyRegistrationStatus:v5 error:&v15];
    v9 = v15;

    if (v9)
    {
      v10 = *(qword_1002DBE98 + 136);
      if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
      {
        v11 = [v9 localizedDescription];
        sub_1001FE51C(v11, v16, v10);
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
      sub_1001FE568(v4, v13);
    }

    v12 = 0;
  }

  return v12;
}

- (void)handleUpdate:(id)a3 forKey:(int)a4 withState:(id)a5
{
  v8 = a3;
  v9 = a5;
  v10 = [(FMCoreTelephonyController *)self fmModel];
  v11 = v10;
  if (a4 > 6)
  {
    if (a4 <= 13)
    {
      if (a4 == 7)
      {
        -[FMCoreTelephonyController setAirplaneModeActive:](self, "setAirplaneModeActive:", [v9 BOOLValue]);
        if (v11)
        {
          [v11 handleAirplaneModeActiveChanged:{objc_msgSend(v9, "BOOLValue")}];
        }
      }

      else if (a4 == 8 && v8 && v10)
      {
        v12 = [v8 uuid];
        [v11 handleRegistrationStatusChanged:v12 registrationStatus:v9];
        goto LABEL_34;
      }

      goto LABEL_35;
    }

    if (a4 == 14)
    {
      if (v10)
      {
        [v10 handleRadioStateChanged:v9];
      }

      goto LABEL_35;
    }

    if (a4 != 18 || !v8 || !v10)
    {
      goto LABEL_35;
    }

    v12 = [v8 uuid];
    v13 = [v9 bars];
    [v11 handleSignalStrengthChanged:v12 bars:v13];
LABEL_29:

    goto LABEL_34;
  }

  if (a4 > 2)
  {
    if (a4 == 3)
    {
      if (v8)
      {
        v12 = [(FMCoreTelephonyController *)self CTXPCServiceSubscriptionContextToFMSubscriptionContext:v8];
        [(FMCoreTelephonyController *)self setDataContext:v12];
        goto LABEL_34;
      }
    }

    else if (a4 == 6)
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

  if (!a4)
  {
    if (!v8 || !v10)
    {
      goto LABEL_35;
    }

    v12 = [v8 uuid];
    v13 = [v9 legacyInfo];
    [v11 handleCellMonitorUpdate:v12 info:v13];
    goto LABEL_29;
  }

  if (a4 == 2)
  {
    if (os_log_type_enabled(*(qword_1002DBE98 + 136), OS_LOG_TYPE_DEBUG))
    {
      sub_1001FE5E0();
    }

    [(FMCoreTelephonyController *)self updateUuidContextMap];
    if (v11)
    {
LABEL_8:
      v12 = [(FMCoreTelephonyController *)self getSubscriptionContextsInUse];
      [v11 populateSubscriptionContextsInUse:v12];
LABEL_34:
    }
  }

LABEL_35:
}

+ (id)cellInfoToFMServingCell:(id)a3 atTime:(id)a4 inSlot:(id)a5 error:(id *)a6
{
  v9 = a3;
  v10 = a4;
  v11 = a5;
  v12 = [WISTelephonyUtils extractCellInfoValue:v9 key:kCTCellMonitorCellRadioAccessTechnology expectedClass:objc_opt_class() error:a6];
  if (*a6)
  {
    v13 = 0;
  }

  else
  {
    v14 = [WISTelephonyUtils extractCellInfoValue:v9 key:kCTCellMonitorCellId expectedClass:objc_opt_class() error:a6];
    if (*a6)
    {
      v13 = 0;
    }

    else
    {
      v15 = [WISTelephonyUtils extractCellInfoValue:v9 key:kCTCellMonitorMNC expectedClass:objc_opt_class() error:a6];
      if (*a6)
      {
        v13 = 0;
      }

      else
      {
        v16 = [WISTelephonyUtils extractCellInfoValue:v9 key:kCTCellMonitorMCC expectedClass:objc_opt_class() error:a6];
        v17 = v16;
        if (*a6)
        {
          v13 = 0;
        }

        else
        {
          v32 = v16;
          v18 = [WISTelephonyUtils extractCellInfoValue:v9 key:kCTCellMonitorBandInfo expectedClass:objc_opt_class() error:a6];
          if (*a6)
          {
            v13 = 0;
            v17 = v32;
          }

          else
          {
            v31 = v18;
            v17 = v32;
            v19 = [WISTelephonyUtils getLacOrTacFromCellInfo:v9 error:a6];
            if (*a6)
            {
              v13 = 0;
            }

            else
            {
              v28 = v19;
              v30 = [WISTelephonyUtils getArfcnFromCellInfo:v9 error:a6];
              if (*a6)
              {

                *a6 = 0;
                v30 = &off_1002BEE38;
              }

              v20 = [WISTelephonyUtils getBandwidthFromCellInfo:v9 error:a6];
              v21 = v20;
              if (*a6 || (v29 = v20, v22 = [v20 isEqualToNumber:&off_1002BEE50], v21 = v29, v22))
              {

                v29 = 0;
                *a6 = 0;
              }

              v23 = [WISTelephonyUtils getPciFromCellInfo:v9 error:a6];
              if (*a6)
              {

                v27 = 0;
                *a6 = 0;
              }

              else
              {
                v27 = v23;
              }

              v24 = [WISTelephonyUtils extractCellInfoValue:v9 key:kCTCellMonitorDeploymentType expectedClass:objc_opt_class() error:a6];
              v25 = v24;
              if (*a6)
              {

                v25 = 0;
                *a6 = 0;
              }

              v13 = [[FMServingCell alloc] init:v10 subscriptionID:v11 radioAccessTechnology:v12 cellID:v14 mnc:v15 mcc:v32 bandInfo:v31 tacOrLac:v28 arfcnOrUarfcn:v30 bandwidth:v29 pci:v27 deploymentType:v25];

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

+ (id)cellInfoToFMCongestionCell:(id)a3 atTime:(id)a4 inSlot:(id)a5 error:(id *)a6
{
  v9 = a3;
  v10 = a4;
  v11 = a5;
  v12 = [WISTelephonyUtils extractCellInfoValue:v9 key:kCTCellMonitorMNC expectedClass:objc_opt_class() error:a6];
  if (*a6)
  {
    v13 = 0;
  }

  else
  {
    v14 = [WISTelephonyUtils extractCellInfoValue:v9 key:kCTCellMonitorMCC expectedClass:objc_opt_class() error:a6];
    if (*a6)
    {
      v13 = 0;
    }

    else
    {
      v15 = [WISTelephonyUtils getGciFromCellInfo:v9 error:a6];
      if (*a6)
      {
        v13 = 0;
      }

      else
      {
        v16 = [WISTelephonyUtils getRATFromCellInfo:v9 error:a6];
        if (*a6)
        {
          v13 = 0;
        }

        else
        {
          v17 = [WISTelephonyUtils getArfcnFromCellInfo:v9 error:a6];
          v18 = v17;
          if (*a6)
          {

            v18 = 0;
            *a6 = 0;
          }

          v13 = [[FMCongestionCell alloc] init:v10 subscriptionID:v11 mcc:v14 mnc:v12 gci:v15 rat:v16 arfcnOrUarfcn:v18];
        }
      }
    }
  }

  return v13;
}

- (id)CTXPCServiceSubscriptionContextToFMSubscriptionContext:(id)a3
{
  v4 = a3;
  if (v4)
  {
    v5 = [(FMCoreTelephonyController *)self ctRelay];
    v17 = 0;
    v6 = [v5 getHomeCarrierMCC:v4 error:&v17];
    v7 = v17;

    if (v7)
    {
      if (os_log_type_enabled(*(qword_1002DBE98 + 48), OS_LOG_TYPE_ERROR))
      {
        sub_1001FE648(v19, [v4 slotID]);
      }
    }

    v8 = [(FMCoreTelephonyController *)self ctRelay];
    v16 = 0;
    v9 = [v8 getHomeCarrierMNC:v4 error:&v16];
    v10 = v16;

    if (v10 && os_log_type_enabled(*(qword_1002DBE98 + 48), OS_LOG_TYPE_ERROR))
    {
      sub_1001FE680(v18, [v4 slotID]);
    }

    v11 = [FMSubscriptionContext alloc];
    v12 = [v4 uuid];
    v13 = -[FMCoreTelephonyController CTSubscriptionSlotToSubscriptionID:](self, "CTSubscriptionSlotToSubscriptionID:", [v4 slotID]);
    v14 = [(FMSubscriptionContext *)v11 init:v12 subscriptionID:v13 mcc:v6 mnc:v9];
  }

  else
  {
    v14 = 0;
  }

  return v14;
}

- (id)CTSubscriptionSlotToSubscriptionID:(int64_t)a3
{
  if (a3 == 2)
  {
    return &off_1002BEE80;
  }

  if (a3)
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
  v3 = [(FMCoreTelephonyController *)self ctRelay];
  v4 = [v3 coreTelephonyClient];
  v23 = 0;
  v5 = [v4 getSubscriptionInfoWithError:&v23];
  v6 = v23;

  if (v6)
  {
    v7 = *(qword_1002DBE98 + 136);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      v8 = [v6 localizedDescription];
      sub_1001FE6F8(v8, v25, v7);
    }
  }

  else
  {
    v9 = [v5 subscriptionsInUse];
    v18 = [WISTelephonyUtils sanitizedSubscriptions:v9];

    os_unfair_lock_lock(&self->uuidToContextMapLock);
    v10 = [(FMCoreTelephonyController *)self uuidToContextMap];
    [v10 removeAllObjects];

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
            v16 = [(FMCoreTelephonyController *)self uuidToContextMap];
            v17 = [v15 uuid];
            [v16 setObject:v15 forKey:v17];
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