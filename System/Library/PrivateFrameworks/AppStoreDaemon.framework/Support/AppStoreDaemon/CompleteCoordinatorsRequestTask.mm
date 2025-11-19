@interface CompleteCoordinatorsRequestTask
- (void)main;
@end

@implementation CompleteCoordinatorsRequestTask

- (void)main
{
  v3 = objc_alloc_init(_TtC9appstored6LogKey);
  v4 = ASDLogHandleForCategory();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    if (self)
    {
      client = self->super._client;
    }

    else
    {
      client = 0;
    }

    v6 = client;
    *buf = 138412546;
    v22 = v3;
    v23 = 2114;
    v24 = v6;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "[%@] Checking for incomplete coordinators at request of: %{public}@", buf, 0x16u);
  }

  v7 = objc_alloc_init(CompleteRestoreCoordinatorsTask);
  v9 = v7;
  if (v7)
  {
    objc_setProperty_nonatomic_copy(v7, v8, v3, 48);
  }

  if (self)
  {
    v10 = self->super._client;
  }

  else
  {
    v10 = 0;
  }

  v11 = v10;
  v13 = [(XPCClient *)v11 clientID];
  if (v9)
  {
    objc_setProperty_nonatomic_copy(v9, v12, v13, 40);
  }

  if (self)
  {
    v14 = self->super._client;
  }

  else
  {
    v14 = 0;
  }

  v15 = v14;
  v16 = [(XPCClient *)v15 clientID];
  v18 = [NSString stringWithFormat:@"Restore applications request for client %@", v16];
  if (v9)
  {
    objc_setProperty_nonatomic_copy(v9, v17, v18, 56);
  }

  v19 = sub_100284B90();
  v20 = v19;
  if (v19)
  {
    [*(v19 + 8) addOperation:v9];
  }

  if (self)
  {
    self->super.super._success = 1;
  }
}

@end