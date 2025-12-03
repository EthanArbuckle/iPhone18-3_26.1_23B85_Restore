@interface CLInUseAssertion
+ (id)newAssertionForBundle:(id)bundle withReason:(id)reason level:(int)level;
+ (id)newAssertionForBundleIdentifier:(id)identifier withReason:(id)reason level:(int)level;
@end

@implementation CLInUseAssertion

+ (id)newAssertionForBundleIdentifier:(id)identifier withReason:(id)reason level:(int)level
{
  v7 = [identifier copy];
  v8 = [reason copy];

  return MEMORY[0x1EEE66B58](self, sel_newAssertionForBundleIdentifier_bundlePath_reason_level_);
}

+ (id)newAssertionForBundle:(id)bundle withReason:(id)reason level:(int)level
{
  v7 = [objc_msgSend(bundle "bundlePath")];
  v8 = [reason copy];

  return MEMORY[0x1EEE66B58](self, sel_newAssertionForBundleIdentifier_bundlePath_reason_level_);
}

@end