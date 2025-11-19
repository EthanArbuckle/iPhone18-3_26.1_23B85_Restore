@interface LSPrecondition
+ (id)emptyPrecondition;
+ (id)preconditionCheckingRelationshipToURL:(id)a3 ofBundleWithIdentifier:(id)a4 placeholderFetchBehavior:(int64_t)a5 requiredRelationship:(int64_t)a6;
+ (id)registrationStatePreconditionForBundleWithIdentifier:(id)a3 placeholderInstalled:(id)a4 fullApplicationInstalled:(id)a5;
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

+ (id)registrationStatePreconditionForBundleWithIdentifier:(id)a3 placeholderInstalled:(id)a4 fullApplicationInstalled:(id)a5
{
  v7 = a3;
  v8 = a4;
  v9 = a5;
  v10 = [[LSBundleRegistrationStatePrecondition alloc] initForBundleWithIdentifier:v7 placeholderInstalled:v8 fullApplicationInstalled:v9];

  return v10;
}

+ (id)preconditionCheckingRelationshipToURL:(id)a3 ofBundleWithIdentifier:(id)a4 placeholderFetchBehavior:(int64_t)a5 requiredRelationship:(int64_t)a6
{
  v9 = a3;
  v10 = a4;
  v11 = [[LSBundleURLRelationshipPrecondition alloc] initWithURL:v9 bundleIdentifier:v10 placeholderFetchBehavior:a5 requiredRelationship:a6];

  return v11;
}

@end