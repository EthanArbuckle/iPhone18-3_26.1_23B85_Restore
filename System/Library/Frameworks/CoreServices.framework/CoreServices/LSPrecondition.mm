@interface LSPrecondition
+ (id)emptyPrecondition;
+ (id)preconditionCheckingRelationshipToURL:(id)l ofBundleWithIdentifier:(id)identifier placeholderFetchBehavior:(int64_t)behavior requiredRelationship:(int64_t)relationship;
+ (id)registrationStatePreconditionForBundleWithIdentifier:(id)identifier placeholderInstalled:(id)installed fullApplicationInstalled:(id)applicationInstalled;
@end

@implementation LSPrecondition

+ (id)emptyPrecondition
{
  if (+[LSPrecondition emptyPrecondition]::onceToken != -1)
  {
    +[LSPrecondition emptyPrecondition];
  }

  v3 = +[LSPrecondition emptyPrecondition]::result;

  return v3;
}

void __35__LSPrecondition_emptyPrecondition__block_invoke()
{
  v0 = objc_alloc_init(LSPrecondition);
  v1 = +[LSPrecondition emptyPrecondition]::result;
  +[LSPrecondition emptyPrecondition]::result = v0;
}

+ (id)registrationStatePreconditionForBundleWithIdentifier:(id)identifier placeholderInstalled:(id)installed fullApplicationInstalled:(id)applicationInstalled
{
  identifierCopy = identifier;
  installedCopy = installed;
  applicationInstalledCopy = applicationInstalled;
  v10 = [[LSBundleRegistrationStatePrecondition alloc] initForBundleWithIdentifier:identifierCopy placeholderInstalled:installedCopy fullApplicationInstalled:applicationInstalledCopy];

  return v10;
}

+ (id)preconditionCheckingRelationshipToURL:(id)l ofBundleWithIdentifier:(id)identifier placeholderFetchBehavior:(int64_t)behavior requiredRelationship:(int64_t)relationship
{
  lCopy = l;
  identifierCopy = identifier;
  v11 = [[LSBundleURLRelationshipPrecondition alloc] initWithURL:lCopy bundleIdentifier:identifierCopy placeholderFetchBehavior:behavior requiredRelationship:relationship];

  return v11;
}

@end