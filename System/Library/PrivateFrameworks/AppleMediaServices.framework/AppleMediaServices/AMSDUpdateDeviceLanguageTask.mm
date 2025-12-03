@interface AMSDUpdateDeviceLanguageTask
- (id)_updateLanguageForAccount:(id)account mediaType:(id)type;
- (id)perform;
@end

@implementation AMSDUpdateDeviceLanguageTask

- (id)perform
{
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_100090EF0;
  v4[3] = &unk_1002AFFB8;
  v4[4] = self;
  v2 = [(AMSDUpdateDeviceLanguageTask *)self performBinaryTaskWithBlock:v4];

  return v2;
}

- (id)_updateLanguageForAccount:(id)account mediaType:(id)type
{
  accountCopy = account;
  typeCopy = type;
  v7 = [AMSDBag bagForMediaType:typeCopy];
  v8 = +[AMSProcessInfo currentProcess];
  [v8 setAccountMediaType:typeCopy];
  v9 = [[AMSURLRequestEncoder alloc] initWithBag:v7];
  [v9 setAccount:accountCopy];
  v10 = AMSLogKey();
  [v9 setLogUUID:v10];

  [v9 setClientInfo:v8];
  v11 = [v7 URLForKey:@"change-language" account:accountCopy];
  v12 = [v9 requestWithMethod:2 bagURL:v11 parameters:0];
  v18 = _NSConcreteStackBlock;
  v19 = 3221225472;
  v20 = sub_1000916CC;
  v21 = &unk_1002B0008;
  v22 = accountCopy;
  v23 = typeCopy;
  v13 = typeCopy;
  v14 = accountCopy;
  v15 = [v12 thenWithBlock:&v18];
  v16 = [v15 catchWithBinaryPromiseBlock:{&stru_1002B26D0, v18, v19, v20, v21}];

  return v16;
}

@end