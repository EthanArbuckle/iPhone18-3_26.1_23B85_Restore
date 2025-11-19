@interface TKHostTokenRegistration
- (TKHostTokenRegistration)initWithCoder:(id)a3;
- (TKHostTokenRegistration)initWithPromptMessage:(id)a3 creatorBundleID:(id)a4;
- (void)encodeWithCoder:(id)a3;
@end

@implementation TKHostTokenRegistration

- (TKHostTokenRegistration)initWithPromptMessage:(id)a3 creatorBundleID:(id)a4
{
  v7 = a3;
  v8 = a4;
  v12.receiver = self;
  v12.super_class = TKHostTokenRegistration;
  v9 = [(TKHostTokenRegistration *)&v12 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_promptMessage, a3);
    objc_storeStrong(&v10->_creatorBundleID, a4);
  }

  return v10;
}

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  v5 = [(TKHostTokenRegistration *)self promptMessage];
  [v4 encodeObject:v5 forKey:@"promptmessage"];

  v6 = [(TKHostTokenRegistration *)self creatorBundleID];
  [v4 encodeObject:v6 forKey:@"creatorbundleid"];
}

- (TKHostTokenRegistration)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"promptmessage"];
  v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"creatorbundleid"];

  v7 = [(TKHostTokenRegistration *)self initWithPromptMessage:v5 creatorBundleID:v6];
  return v7;
}

@end