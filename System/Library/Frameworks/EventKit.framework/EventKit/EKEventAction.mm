@interface EKEventAction
+ (id)knownIdentityKeysForComparison;
@end

@implementation EKEventAction

+ (id)knownIdentityKeysForComparison
{
  if (knownIdentityKeysForComparison_onceToken_0 != -1)
  {
    +[EKEventAction knownIdentityKeysForComparison];
  }

  v3 = knownIdentityKeysForComparison_keys_0;

  return v3;
}

void __47__EKEventAction_knownIdentityKeysForComparison__block_invoke()
{
  v3[1] = *MEMORY[0x1E69E9840];
  v3[0] = *MEMORY[0x1E6992B10];
  v0 = [MEMORY[0x1E695DEC8] arrayWithObjects:v3 count:1];
  v1 = knownIdentityKeysForComparison_keys_0;
  knownIdentityKeysForComparison_keys_0 = v0;

  v2 = *MEMORY[0x1E69E9840];
}

@end