@interface CellDataActivationFailureAlertState
+ (id)sharedInstance;
- (BOOL)trylockMain;
- (CellDataActivationFailureAlertState)init;
- (id).cxx_construct;
- (void)dealloc;
- (void)handleActionResponse;
- (void)setAction:(int)a3;
- (void)unlockScheduled;
@end

@implementation CellDataActivationFailureAlertState

- (CellDataActivationFailureAlertState)init
{
  v4.receiver = self;
  v4.super_class = CellDataActivationFailureAlertState;
  v2 = [(CellDataActivationFailureAlertState *)&v4 init];
  if (v2)
  {
    v2->fLockMain = objc_alloc_init(NSLock);
    v2->_scheduled = 0;
    v2->fAction = 0;
  }

  return v2;
}

- (void)dealloc
{
  self->fLockMain = 0;
  v3.receiver = self;
  v3.super_class = CellDataActivationFailureAlertState;
  [(CellDataActivationFailureAlertState *)&v3 dealloc];
}

- (BOOL)trylockMain
{
  if ([(CellDataActivationFailureAlertState *)self scheduled])
  {
    LOBYTE(v3) = 0;
  }

  else
  {
    v3 = [(NSLock *)self->fLockMain tryLock];
    if (v3)
    {
      [(CellDataActivationFailureAlertState *)self setAction:0];
      LOBYTE(v3) = 1;
    }
  }

  return v3;
}

- (void)unlockScheduled
{
  [(CellDataActivationFailureAlertState *)self setAction:0];

  [(CellDataActivationFailureAlertState *)self setScheduled:0];
}

- (void)setAction:(int)a3
{
  self->fAction = a3;
  if (!a3)
  {
    v9[3] = v3;
    v9[4] = v4;
    fRef = self->fDataPlanCsn.fRef;
    self->fDataPlanCsn.fRef = 0;
    v9[0] = fRef;
    sub_10002D760(v9);
    v7 = self->fDataPlanUrl.fRef;
    self->fDataPlanUrl.fRef = 0;
    v9[0] = v7;
    sub_100005978(v9);
    v8 = self->fDataPlanIccid.fRef;
    self->fDataPlanIccid.fRef = 0;
    v9[0] = v8;
    sub_100005978(v9);
  }
}

- (void)handleActionResponse
{
  fAction = self->fAction;
  if (fAction == 1)
  {
    v5 = @"prefs:root=MOBILE_DATA_SETTINGS_ID";
  }

  else
  {
    if (fAction != 3)
    {
      if (fAction == 2)
      {
        v10 = 0uLL;
        sub_10006C5D0(&v10);
        v4 = v10;
        if (v10)
        {
          sub_10005C7A4(&v9, &self->fDataPlanIccid.fRef);
          (*(*v4 + 88))(v4, &v9);
          sub_100005978(&v9);
        }

        if (*(&v10 + 1))
        {
          sub_100004A34(*(&v10 + 1));
        }
      }

      return;
    }

    v5 = @"prefs:root=MOBILE_DATA_SETTINGS_ID&path=CELLULAR_ACCOUNT_OPTIONS";
  }

  v6 = [NSURL URLWithString:v5];
  if (v6)
  {
    v7 = v6;
    v8 = +[LSApplicationWorkspace defaultWorkspace];

    [v8 openSensitiveURL:v7 withOptions:0];
  }
}

+ (id)sharedInstance
{
  if ((atomic_load_explicit(&qword_101FCA8E0, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_101FCA8E0))
  {
    qword_101FCA8D8 = objc_alloc_init(CellDataActivationFailureAlertState);
    __cxa_guard_release(&qword_101FCA8E0);
  }

  return qword_101FCA8D8;
}

- (id).cxx_construct
{
  *(self + 3) = 0;
  *(self + 4) = 0;
  *(self + 5) = 0;
  return self;
}

@end