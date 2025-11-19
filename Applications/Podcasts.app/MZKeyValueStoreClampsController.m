@interface MZKeyValueStoreClampsController
+ (id)_classesForTransactionClampsValues;
+ (id)sharedClampsController;
- (BOOL)_canScheduleTransactionBasedOfNetworkingBlocked:(id)a3 error:(id *)a4;
- (BOOL)_canScheduleTransactionBasedOnBackOff:(id)a3 error:(id *)a4;
- (BOOL)_canScheduleTransactionBasedOnDSIDCheck:(id)a3 error:(id *)a4;
- (BOOL)_canScheduleTransactionBasedOnType:(id)a3 error:(id *)a4;
- (BOOL)_canScheduleTransactionBasedOnUserCancelledSignIn:(id)a3 error:(id *)a4;
- (BOOL)canScheduleTransaction:(id)a3 error:(id *)a4;
- (BOOL)hasAuthenticatedTooRecentlyForTransaction:(id)a3 error:(id *)a4;
- (BOOL)hasUserRecentlyAcceptedSync;
- (BOOL)isNetworkingBlocked;
- (MZKeyValueStoreClampsController)init;
- (MZKeyValueStoreClampsController)initWithCoder:(id)a3;
- (double)_rightNow;
- (id)_keyForTransaction:(id)a3;
- (id)description;
- (void)accessTransactionClampsWithBlock:(id)a3;
- (void)backOffForTimeInterval:(double)a3;
- (void)clearAuthenticationRequest;
- (void)clearBackOff;
- (void)clearDSIDCheckTimestamp;
- (void)clearTimestampForTransaction:(id)a3;
- (void)clearUserAcceptedSyncTimestamp;
- (void)clearUserCancelledSignIn;
- (void)encodeWithCoder:(id)a3;
- (void)reset;
- (void)saveToUserDefaults;
- (void)setAuthenticationRequest;
- (void)setDSIDCheckTimestamp;
- (void)setNetworkingBlocked;
- (void)setTimestampForTransaction:(id)a3;
- (void)setUserAcceptedSyncTimestamp;
- (void)setUserCancelledSignIn;
@end

@implementation MZKeyValueStoreClampsController

+ (id)sharedClampsController
{
  if (qword_100583AD8 != -1)
  {
    sub_1000439E8();
  }

  v3 = qword_100583AE0;

  return v3;
}

- (MZKeyValueStoreClampsController)init
{
  v8.receiver = self;
  v8.super_class = MZKeyValueStoreClampsController;
  v2 = [(MZKeyValueStoreClampsController *)&v8 init];
  if (v2)
  {
    v3 = objc_alloc_init(NSMutableDictionary);
    transactionClamps = v2->_transactionClamps;
    v2->_transactionClamps = v3;

    v2->_nextUserCancelBackOffInterval = 300.0;
    v5 = dispatch_queue_create("com.apple.MZKeyValueStoreClampsController", 0);
    queue = v2->_queue;
    v2->_queue = v5;
  }

  return v2;
}

+ (id)_classesForTransactionClampsValues
{
  if (qword_100583AF0 != -1)
  {
    sub_100043E54();
  }

  v3 = qword_100583AE8;

  return v3;
}

- (void)reset
{
  [(MZKeyValueStoreClampsController *)self accessTransactionClampsWithBlock:&stru_1004D97D0];
  [(MZKeyValueStoreClampsController *)self clearDSIDCheckTimestamp];
  [(MZKeyValueStoreClampsController *)self clearAuthenticationRequest];
  [(MZKeyValueStoreClampsController *)self clearBackOff];
  [(MZKeyValueStoreClampsController *)self clearNetworkingBlocked];
  [(MZKeyValueStoreClampsController *)self clearUserAcceptedSyncTimestamp];
  [(MZKeyValueStoreClampsController *)self clearUserCancelledSignIn];

  [(MZKeyValueStoreClampsController *)self saveToUserDefaults];
}

- (void)clearDSIDCheckTimestamp
{
  [(MZKeyValueStoreClampsController *)self setDsidCheckTimestamp:0.0];

  [(MZKeyValueStoreClampsController *)self saveToUserDefaults];
}

- (void)saveToUserDefaults
{
  v7 = 0;
  v8 = &v7;
  v9 = 0x2020000000;
  v10 = 0;
  v3 = [(MZKeyValueStoreClampsController *)self queue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100044230;
  block[3] = &unk_1004D9068;
  block[4] = self;
  block[5] = &v7;
  dispatch_sync(v3, block);

  if (*(v8 + 24) == 1)
  {
    v4 = dispatch_time(0, 2000000000);
    v5[0] = _NSConcreteStackBlock;
    v5[1] = 3221225472;
    v5[2] = sub_10007B890;
    v5[3] = &unk_1004D8358;
    v5[4] = self;
    dispatch_after(v4, &_dispatch_main_q, v5);
  }

  _Block_object_dispose(&v7, 8);
}

- (void)clearAuthenticationRequest
{
  [(MZKeyValueStoreClampsController *)self setAuthenticationNeededTimestamp:0.0];

  [(MZKeyValueStoreClampsController *)self saveToUserDefaults];
}

- (void)clearBackOff
{
  [(MZKeyValueStoreClampsController *)self setBackOffUntil:0.0];

  [(MZKeyValueStoreClampsController *)self saveToUserDefaults];
}

- (void)clearUserAcceptedSyncTimestamp
{
  [(MZKeyValueStoreClampsController *)self setUserAcceptedSyncTimestamp:0.0];

  [(MZKeyValueStoreClampsController *)self saveToUserDefaults];
}

- (void)clearUserCancelledSignIn
{
  self->_nextUserCancelBackOffInterval = 300.0;
  [(MZKeyValueStoreClampsController *)self setUserCancelledSignInBackOffUntil:0.0];

  [(MZKeyValueStoreClampsController *)self saveToUserDefaults];
}

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  transactionClamps = self->_transactionClamps;
  v6 = v4;
  if (transactionClamps)
  {
    [v4 encodeObject:transactionClamps forKey:@"MZTransactionClamps"];
    v4 = v6;
  }

  if (fabs(self->_dsidCheckTimestamp) > 2.22044605e-16)
  {
    [v6 encodeDouble:@"MZDSIDCheckTimestamp" forKey:?];
    v4 = v6;
  }

  if (fabs(self->_authenticationNeededTimestamp) > 2.22044605e-16)
  {
    [v6 encodeDouble:@"MZAuthenticationNeededTimestamp" forKey:?];
    v4 = v6;
  }

  if (fabs(self->_userAcceptedSyncTimestamp) > 2.22044605e-16)
  {
    [v6 encodeDouble:@"MZUserAcceptedSyncTimestamp" forKey:?];
    v4 = v6;
  }

  if (fabs(self->_networkingBlockedUntil) > 2.22044605e-16)
  {
    [v6 encodeDouble:@"MZNetworkingBlockedUntil" forKey:?];
    v4 = v6;
  }

  if (fabs(self->_userCancelledSignInBackOffUntil) > 2.22044605e-16)
  {
    [v6 encodeDouble:@"MZUserCancelledSignInBackOffUntil" forKey:?];
    v4 = v6;
  }
}

- (MZKeyValueStoreClampsController)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = [(MZKeyValueStoreClampsController *)self init];
  if (v5)
  {
    v6 = [objc_opt_class() _classesForTransactionClampsValues];
    v7 = [v4 decodeObjectOfClasses:v6 forKey:@"MZTransactionClamps"];
    v8 = [v7 mutableCopy];

    if (v8)
    {
      v15[0] = _NSConcreteStackBlock;
      v15[1] = 3221225472;
      v15[2] = sub_10007B83C;
      v15[3] = &unk_1004D9790;
      v16 = v8;
      [(MZKeyValueStoreClampsController *)v5 accessTransactionClampsWithBlock:v15];
    }

    [v4 decodeDoubleForKey:@"MZDSIDCheckTimestamp"];
    v5->_dsidCheckTimestamp = v9;
    [v4 decodeDoubleForKey:@"MZAuthenticationNeededTimestamp"];
    v5->_authenticationNeededTimestamp = v10;
    [v4 decodeDoubleForKey:@"MZUserAcceptedSyncTimestamp"];
    v5->_userAcceptedSyncTimestamp = v11;
    [v4 decodeDoubleForKey:@"MZNetworkingBlockedUntil"];
    v5->_networkingBlockedUntil = v12;
    [v4 decodeDoubleForKey:@"MZUserCancelledSignInBackOffUntil"];
    v5->_userCancelledSignInBackOffUntil = v13;
  }

  return v5;
}

- (id)description
{
  v3 = objc_opt_class();
  v4 = NSStringFromClass(v3);
  v5 = +[NSDate date];
  v6 = [NSDate dateWithTimeIntervalSinceReferenceDate:self->_dsidCheckTimestamp];
  v7 = [NSDate dateWithTimeIntervalSinceReferenceDate:self->_authenticationNeededTimestamp];
  v8 = [NSDate dateWithTimeIntervalSinceReferenceDate:self->_userAcceptedSyncTimestamp];
  v9 = [NSDate dateWithTimeIntervalSinceReferenceDate:self->_networkingBlockedUntil];
  v10 = [NSDate dateWithTimeIntervalSinceReferenceDate:self->_backOffUntil];
  v11 = [NSDate dateWithTimeIntervalSinceReferenceDate:self->_userCancelledSignInBackOffUntil];
  v12 = [NSString stringWithFormat:@"<%@:%p>\n                             Current Date = %@\n                             dsidCheckTimestamp = %@\n                             authenticationNeededTimestamp = %@\n                             userAcceptedSyncTimestamp = %@\n                             networkingBlockedUntil = %@\n                             backOffUntil= %@\n                             userCancelledSignInBackOffUntil = %@", v4, self, v5, v6, v7, v8, v9, v10, v11];

  return v12;
}

- (BOOL)canScheduleTransaction:(id)a3 error:(id *)a4
{
  v6 = a3;
  if ([(MZKeyValueStoreClampsController *)self _canScheduleTransactionBasedOfNetworkingBlocked:v6 error:a4]&& [(MZKeyValueStoreClampsController *)self _canScheduleTransactionBasedOnBackOff:v6 error:a4]&& [(MZKeyValueStoreClampsController *)self _canScheduleTransactionBasedOnUserCancelledSignIn:v6 error:a4]&& [(MZKeyValueStoreClampsController *)self _canScheduleTransactionBasedOnDSIDCheck:v6 error:a4])
  {
    v7 = [(MZKeyValueStoreClampsController *)self _canScheduleTransactionBasedOnType:v6 error:a4];
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (void)accessTransactionClampsWithBlock:(id)a3
{
  v4 = a3;
  v5 = [(MZKeyValueStoreClampsController *)self queue];
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_10007BCBC;
  v7[3] = &unk_1004D8520;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
  dispatch_sync(v5, v7);
}

- (void)setTimestampForTransaction:(id)a3
{
  [(MZKeyValueStoreClampsController *)self _keyForTransaction:a3];
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_10007BE08;
  v6 = v5[3] = &unk_1004D9790;
  v4 = v6;
  [(MZKeyValueStoreClampsController *)self accessTransactionClampsWithBlock:v5];
}

- (void)clearTimestampForTransaction:(id)a3
{
  [(MZKeyValueStoreClampsController *)self _keyForTransaction:a3];
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_10007BF20;
  v6 = v5[3] = &unk_1004D9790;
  v4 = v6;
  [(MZKeyValueStoreClampsController *)self accessTransactionClampsWithBlock:v5];
  [(MZKeyValueStoreClampsController *)self saveToUserDefaults];
}

- (void)setDSIDCheckTimestamp
{
  [(MZKeyValueStoreClampsController *)self _rightNow];
  [(MZKeyValueStoreClampsController *)self setDsidCheckTimestamp:?];

  [(MZKeyValueStoreClampsController *)self saveToUserDefaults];
}

- (void)setAuthenticationRequest
{
  [(MZKeyValueStoreClampsController *)self _rightNow];
  [(MZKeyValueStoreClampsController *)self setAuthenticationNeededTimestamp:?];

  [(MZKeyValueStoreClampsController *)self saveToUserDefaults];
}

- (BOOL)hasAuthenticatedTooRecentlyForTransaction:(id)a3 error:(id *)a4
{
  v6 = a3;
  [(MZKeyValueStoreClampsController *)self _rightNow];
  v8 = v7;
  [(MZKeyValueStoreClampsController *)self authenticationNeededTimestamp];
  v10 = v8 - v9;
  if (a4 && v10 < 1.0)
  {
    *a4 = [MZKeyValueStoreError userClampErrorWithTransaction:v6 retrySeconds:0 underlyingError:1.0 - v10];
  }

  return v10 < 1.0;
}

- (void)setUserAcceptedSyncTimestamp
{
  [(MZKeyValueStoreClampsController *)self _rightNow];
  [(MZKeyValueStoreClampsController *)self setUserAcceptedSyncTimestamp:?];

  [(MZKeyValueStoreClampsController *)self saveToUserDefaults];
}

- (BOOL)hasUserRecentlyAcceptedSync
{
  [(MZKeyValueStoreClampsController *)self userAcceptedSyncTimestamp];
  if (fabs(v3) > 2.22044605e-16 && ([(MZKeyValueStoreClampsController *)self _rightNow], v5 = v4, [(MZKeyValueStoreClampsController *)self userAcceptedSyncTimestamp], v5 - v6 <= 60.0))
  {
    v7 = 1;
  }

  else
  {
    [(MZKeyValueStoreClampsController *)self setUserAcceptedSyncTimestamp:0.0];
    v7 = 0;
  }

  [(MZKeyValueStoreClampsController *)self saveToUserDefaults];
  return v7;
}

- (void)setUserCancelledSignIn
{
  [(MZKeyValueStoreClampsController *)self _rightNow];
  [(MZKeyValueStoreClampsController *)self setUserCancelledSignInBackOffUntil:v3 + self->_nextUserCancelBackOffInterval];
  self->_nextUserCancelBackOffInterval = fmin(self->_nextUserCancelBackOffInterval * 12.0, 18000.0);
  v4 = +[NSDate date];
  [v4 timeIntervalSinceReferenceDate];

  [(MZKeyValueStoreClampsController *)self saveToUserDefaults];
}

- (void)backOffForTimeInterval:(double)a3
{
  [(MZKeyValueStoreClampsController *)self _rightNow];
  [(MZKeyValueStoreClampsController *)self setBackOffUntil:v5 + a3];

  [(MZKeyValueStoreClampsController *)self saveToUserDefaults];
}

- (void)setNetworkingBlocked
{
  [(MZKeyValueStoreClampsController *)self _rightNow];
  [(MZKeyValueStoreClampsController *)self setNetworkingBlockedUntil:v3 + 31536000.0];

  [(MZKeyValueStoreClampsController *)self saveToUserDefaults];
}

- (BOOL)isNetworkingBlocked
{
  [(MZKeyValueStoreClampsController *)self networkingBlockedUntil];
  if (fabs(v3) > 2.22044605e-16)
  {
    [(MZKeyValueStoreClampsController *)self networkingBlockedUntil];
    v5 = v4;
    [(MZKeyValueStoreClampsController *)self _rightNow];
    if (v5 > v6)
    {
      return 1;
    }

    [(MZKeyValueStoreClampsController *)self clearNetworkingBlocked];
  }

  return 0;
}

- (double)_rightNow
{
  v2 = +[NSDate date];
  [v2 timeIntervalSinceReferenceDate];
  v4 = v3;

  return v4;
}

- (id)_keyForTransaction:(id)a3
{
  v3 = a3;
  v4 = [v3 type];
  v5 = [v3 processor];
  v6 = objc_opt_class();
  v7 = NSStringFromClass(v6);
  v8 = [v3 keys];

  v9 = +[NSString stringWithFormat:](NSString, "stringWithFormat:", @"%d-%@-%lu", v4, v7, [v8 count]);

  return v9;
}

- (BOOL)_canScheduleTransactionBasedOnType:(id)a3 error:(id *)a4
{
  v6 = a3;
  [(MZKeyValueStoreClampsController *)self _keyForTransaction:v6];
  v18 = 0;
  v19 = &v18;
  v20 = 0x3032000000;
  v21 = sub_100008940;
  v22 = sub_10003B484;
  v23 = 0;
  v12 = _NSConcreteStackBlock;
  v13 = 3221225472;
  v14 = sub_10007C558;
  v15 = &unk_1004D9818;
  v7 = v17 = &v18;
  v16 = v7;
  [(MZKeyValueStoreClampsController *)self accessTransactionClampsWithBlock:&v12];
  v8 = v19[5];
  if (!v8)
  {
    goto LABEL_6;
  }

  [v8 timeIntervalSinceNow];
  if (v9 < 0.0)
  {
    v9 = -v9;
  }

  if (v9 > 5.0)
  {
    [(MZKeyValueStoreClampsController *)self clearTimestampForTransaction:v6];
LABEL_6:
    v10 = 1;
    goto LABEL_10;
  }

  if (a4)
  {
    [MZKeyValueStoreError clientClampErrorWithTransaction:v6 retrySeconds:0 underlyingError:5.0 - v9];
    *a4 = v10 = 0;
  }

  else
  {
    v10 = 0;
  }

LABEL_10:

  _Block_object_dispose(&v18, 8);
  return v10;
}

- (BOOL)_canScheduleTransactionBasedOfNetworkingBlocked:(id)a3 error:(id *)a4
{
  v6 = a3;
  v7 = [(MZKeyValueStoreClampsController *)self isNetworkingBlocked];
  if (v7)
  {
    *a4 = [MZKeyValueStoreError networkingBlockedErrorWithTransaction:v6 underlyingError:0];
  }

  return v7 ^ 1;
}

- (BOOL)_canScheduleTransactionBasedOnDSIDCheck:(id)a3 error:(id *)a4
{
  v6 = a3;
  [(MZKeyValueStoreClampsController *)self dsidCheckTimestamp];
  v8 = v7;
  if (a4 && v7 != 0.0)
  {
    *a4 = [MZKeyValueStoreError userClampErrorWithTransaction:v6 retrySeconds:0 underlyingError:0.0];
  }

  return v8 == 0.0;
}

- (BOOL)_canScheduleTransactionBasedOnBackOff:(id)a3 error:(id *)a4
{
  v6 = a3;
  [(MZKeyValueStoreClampsController *)self backOffUntil];
  if (fabs(v7) <= 2.22044605e-16)
  {
    goto LABEL_4;
  }

  [(MZKeyValueStoreClampsController *)self _rightNow];
  v9 = v8;
  [(MZKeyValueStoreClampsController *)self backOffUntil];
  if (v9 > v10)
  {
    [(MZKeyValueStoreClampsController *)self clearBackOff];
LABEL_4:
    v11 = 1;
    goto LABEL_5;
  }

  [(MZKeyValueStoreClampsController *)self backOffUntil];
  if (a4)
  {
    [MZKeyValueStoreError serverClampErrorWithTransaction:v6 retrySeconds:0 underlyingError:v13 - v9];
    *a4 = v11 = 0;
  }

  else
  {
    v11 = 0;
  }

LABEL_5:

  return v11;
}

- (BOOL)_canScheduleTransactionBasedOnUserCancelledSignIn:(id)a3 error:(id *)a4
{
  v6 = a3;
  [(MZKeyValueStoreClampsController *)self userCancelledSignInBackOffUntil];
  if (fabs(v7) <= 2.22044605e-16)
  {
    goto LABEL_4;
  }

  [(MZKeyValueStoreClampsController *)self _rightNow];
  v9 = v8;
  [(MZKeyValueStoreClampsController *)self userCancelledSignInBackOffUntil];
  if (v9 > v10)
  {
    [(MZKeyValueStoreClampsController *)self clearUserCancelledSignIn];
LABEL_4:
    v11 = 1;
    goto LABEL_5;
  }

  [(MZKeyValueStoreClampsController *)self userAcceptedSyncTimestamp];
  if (a4)
  {
    [MZKeyValueStoreError userClampErrorWithTransaction:v6 retrySeconds:0 underlyingError:v13 - v9];
    *a4 = v11 = 0;
  }

  else
  {
    v11 = 0;
  }

LABEL_5:

  return v11;
}

@end