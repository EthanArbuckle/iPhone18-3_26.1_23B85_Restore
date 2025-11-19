@interface CLInUseAssertion
+ (id)newAssertionForBundle:(id)a3 withReason:(id)a4 level:(int)a5;
+ (id)newAssertionForBundleIdentifier:(id)a3 withReason:(id)a4 level:(int)a5;
@end

@implementation CLInUseAssertion

+ (id)newAssertionForBundleIdentifier:(id)a3 withReason:(id)a4 level:(int)a5
{
  v7 = [a3 copy];
  v8 = [a4 copy];

  return MEMORY[0x1EEE66B58](a1, sel_newAssertionForBundleIdentifier_bundlePath_reason_level_);
}

+ (id)newAssertionForBundle:(id)a3 withReason:(id)a4 level:(int)a5
{
  v7 = [objc_msgSend(a3 "bundlePath")];
  v8 = [a4 copy];

  return MEMORY[0x1EEE66B58](a1, sel_newAssertionForBundleIdentifier_bundlePath_reason_level_);
}

@end