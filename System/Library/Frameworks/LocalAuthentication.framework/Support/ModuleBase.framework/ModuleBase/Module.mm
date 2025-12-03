@interface Module
+ (id)missingSubclassErrorWithIdentifier:(id)identifier;
- (Module)initWithMechanismManager:(id)manager type:(int64_t)type;
- (void)contextPluginWithExternalizedContext:(id)context flags:(int64_t)flags reply:(id)reply;
@end

@implementation Module

- (Module)initWithMechanismManager:(id)manager type:(int64_t)type
{
  managerCopy = manager;
  v11.receiver = self;
  v11.super_class = Module;
  v8 = [(Module *)&v11 init];
  v9 = v8;
  if (v8)
  {
    objc_storeStrong(&v8->_mechanismManager, manager);
    v9->_type = type;
  }

  return v9;
}

- (void)contextPluginWithExternalizedContext:(id)context flags:(int64_t)flags reply:(id)reply
{
  replyCopy = reply;
  v7 = [Module missingSubclassErrorWithIdentifier:@"contextPluginWithExternalizedContext"];
  (*(reply + 2))(replyCopy, 0, v7);
}

+ (id)missingSubclassErrorWithIdentifier:(id)identifier
{
  v3 = MEMORY[0x277CD47F0];
  identifier = [MEMORY[0x277CCACA8] stringWithFormat:@"Missing subclass implementation: %@", identifier];
  v5 = [v3 internalErrorWithMessage:identifier];

  return v5;
}

@end