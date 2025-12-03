@interface FPUIAction
- (FPUIAction)initWithIdentifier:(id)identifier uiActionProviderIdentifier:(id)providerIdentifier fileProviderIdentifier:(id)fileProviderIdentifier displayName:(id)name predicate:(id)predicate displayInline:(BOOL)inline isNonUIAction:(BOOL)action;
@end

@implementation FPUIAction

- (FPUIAction)initWithIdentifier:(id)identifier uiActionProviderIdentifier:(id)providerIdentifier fileProviderIdentifier:(id)fileProviderIdentifier displayName:(id)name predicate:(id)predicate displayInline:(BOOL)inline isNonUIAction:(BOOL)action
{
  v10.receiver = self;
  v10.super_class = FPUIAction;
  result = [(UIDocumentBrowserActionDescriptor *)&v10 initWithIdentifier:identifier uiActionProviderIdentifier:providerIdentifier fileProviderIdentifier:fileProviderIdentifier displayName:name predicate:predicate displayInline:name != 0];
  if (result)
  {
    result->_isNonUIAction = action;
  }

  return result;
}

@end