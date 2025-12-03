@interface SKStoreExtension
+ (id)serviceInterface;
- (void)dismissViewControllerAnimated:(BOOL)animated completion:(id)completion;
- (void)openURL:(id)l sourceApplication:(id)application annotation:(id)annotation;
- (void)presentRequestedViewControllerWithIdentifier:(id)identifier;
@end

@implementation SKStoreExtension

- (void)dismissViewControllerAnimated:(BOOL)animated completion:(id)completion
{
  animatedCopy = animated;
  completionCopy = completion;
  _remoteViewControllerProxy = [(SKStoreExtension *)self _remoteViewControllerProxy];
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __61__SKStoreExtension_dismissViewControllerAnimated_completion___block_invoke;
  v9[3] = &unk_1E7B27900;
  v10 = completionCopy;
  v8 = completionCopy;
  [_remoteViewControllerProxy dismissViewControllerAnimated:animatedCopy completion:v9];
}

uint64_t __61__SKStoreExtension_dismissViewControllerAnimated_completion___block_invoke(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))();
  }

  return result;
}

- (void)openURL:(id)l sourceApplication:(id)application annotation:(id)annotation
{
  if ([(SKStoreExtension *)self shouldOpenURL:l sourceApplication:application annotation:annotation])
  {
    _remoteViewControllerProxy = [(SKStoreExtension *)self _remoteViewControllerProxy];
    if (_remoteViewControllerProxy)
    {
      v7 = _remoteViewControllerProxy;
      [_remoteViewControllerProxy setNeedsTabSelection];
      _remoteViewControllerProxy = v7;
    }
  }
}

- (void)presentRequestedViewControllerWithIdentifier:(id)identifier
{
  identifierCopy = identifier;
  _remoteViewControllerProxy = [(SKStoreExtension *)self _remoteViewControllerProxy];
  v5 = _remoteViewControllerProxy;
  if (_remoteViewControllerProxy)
  {
    [_remoteViewControllerProxy presentRequestedViewControllerWithIdentifier:identifierCopy];
  }
}

+ (id)serviceInterface
{
  v2 = [MEMORY[0x1E696B0D0] interfaceWithProtocol:&unk_1F29DD050];
  v3 = [MEMORY[0x1E695DFD8] setWithObjects:{objc_opt_class(), 0}];
  [v2 setClasses:v3 forSelector:sel_setTabIdentifier_ argumentIndex:0 ofReply:0];

  v4 = [MEMORY[0x1E695DFD8] setWithObjects:{objc_opt_class(), 0}];
  [v2 setClasses:v4 forSelector:sel_openURL_sourceApplication_annotation_ argumentIndex:0 ofReply:0];

  v5 = [MEMORY[0x1E695DFD8] setWithObjects:{objc_opt_class(), 0}];
  [v2 setClasses:v5 forSelector:sel_openURL_sourceApplication_annotation_ argumentIndex:1 ofReply:0];

  v6 = MEMORY[0x1E695DFD8];
  v7 = objc_opt_class();
  v8 = objc_opt_class();
  v9 = objc_opt_class();
  v10 = objc_opt_class();
  v11 = objc_opt_class();
  v12 = [v6 setWithObjects:{v7, v8, v9, v10, v11, objc_opt_class(), 0}];
  [v2 setClasses:v12 forSelector:sel_openURL_sourceApplication_annotation_ argumentIndex:2 ofReply:0];

  return v2;
}

@end