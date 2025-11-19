@interface Module
+ (id)missingSubclassErrorWithIdentifier:(id)a3;
- (Module)initWithMechanismManager:(id)a3 type:(int64_t)a4;
- (void)contextPluginWithExternalizedContext:(id)a3 flags:(int64_t)a4 reply:(id)a5;
@end

@implementation Module

- (Module)initWithMechanismManager:(id)a3 type:(int64_t)a4
{
  v7 = a3;
  v11.receiver = self;
  v11.super_class = Module;
  v8 = [(Module *)&v11 init];
  v9 = v8;
  if (v8)
  {
    objc_storeStrong(&v8->_mechanismManager, a3);
    v9->_type = a4;
  }

  return v9;
}

- (void)contextPluginWithExternalizedContext:(id)a3 flags:(int64_t)a4 reply:(id)a5
{
  v6 = a5;
  v7 = [Module missingSubclassErrorWithIdentifier:@"contextPluginWithExternalizedContext"];
  (*(a5 + 2))(v6, 0, v7);
}

+ (id)missingSubclassErrorWithIdentifier:(id)a3
{
  v3 = MEMORY[0x277CD47F0];
  v4 = [MEMORY[0x277CCACA8] stringWithFormat:@"Missing subclass implementation: %@", a3];
  v5 = [v3 internalErrorWithMessage:v4];

  return v5;
}

@end