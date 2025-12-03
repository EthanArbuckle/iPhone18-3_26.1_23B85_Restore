@interface TKHostTokenRegistration
- (TKHostTokenRegistration)initWithCoder:(id)coder;
- (TKHostTokenRegistration)initWithPromptMessage:(id)message creatorBundleID:(id)d;
- (void)encodeWithCoder:(id)coder;
@end

@implementation TKHostTokenRegistration

- (TKHostTokenRegistration)initWithPromptMessage:(id)message creatorBundleID:(id)d
{
  messageCopy = message;
  dCopy = d;
  v12.receiver = self;
  v12.super_class = TKHostTokenRegistration;
  v9 = [(TKHostTokenRegistration *)&v12 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_promptMessage, message);
    objc_storeStrong(&v10->_creatorBundleID, d);
  }

  return v10;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  promptMessage = [(TKHostTokenRegistration *)self promptMessage];
  [coderCopy encodeObject:promptMessage forKey:@"promptmessage"];

  creatorBundleID = [(TKHostTokenRegistration *)self creatorBundleID];
  [coderCopy encodeObject:creatorBundleID forKey:@"creatorbundleid"];
}

- (TKHostTokenRegistration)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"promptmessage"];
  v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"creatorbundleid"];

  v7 = [(TKHostTokenRegistration *)self initWithPromptMessage:v5 creatorBundleID:v6];
  return v7;
}

@end