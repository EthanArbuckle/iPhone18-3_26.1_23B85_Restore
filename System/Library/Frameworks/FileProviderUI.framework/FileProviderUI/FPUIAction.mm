@interface FPUIAction
- (FPUIAction)initWithIdentifier:(id)a3 uiActionProviderIdentifier:(id)a4 fileProviderIdentifier:(id)a5 displayName:(id)a6 predicate:(id)a7 displayInline:(BOOL)a8 isNonUIAction:(BOOL)a9;
@end

@implementation FPUIAction

- (FPUIAction)initWithIdentifier:(id)a3 uiActionProviderIdentifier:(id)a4 fileProviderIdentifier:(id)a5 displayName:(id)a6 predicate:(id)a7 displayInline:(BOOL)a8 isNonUIAction:(BOOL)a9
{
  v10.receiver = self;
  v10.super_class = FPUIAction;
  result = [(UIDocumentBrowserActionDescriptor *)&v10 initWithIdentifier:a3 uiActionProviderIdentifier:a4 fileProviderIdentifier:a5 displayName:a6 predicate:a7 displayInline:a6 != 0];
  if (result)
  {
    result->_isNonUIAction = a9;
  }

  return result;
}

@end