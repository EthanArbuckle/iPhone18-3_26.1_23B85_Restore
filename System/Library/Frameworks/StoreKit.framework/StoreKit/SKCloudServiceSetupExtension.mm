@interface SKCloudServiceSetupExtension
+ (id)clientInterface;
+ (id)serviceInterface;
@end

@implementation SKCloudServiceSetupExtension

+ (id)clientInterface
{
  v2 = [MEMORY[0x1E696B0D0] interfaceWithProtocol:&unk_1F29F43D8];
  v3 = [MEMORY[0x1E695DFD8] setWithObjects:{objc_opt_class(), 0}];
  [v2 setClasses:v3 forSelector:sel_didFinishLoadingWithSuccess_error_ argumentIndex:1 ofReply:0];

  v4 = [MEMORY[0x1E695DFD8] setWithObjects:{objc_opt_class(), 0}];
  [v2 setClasses:v4 forSelector:sel_presentSafariViewControllerWithURL_animated_completion_ argumentIndex:0 ofReply:0];

  return v2;
}

+ (id)serviceInterface
{
  v2 = [MEMORY[0x1E696B0D0] interfaceWithProtocol:&unk_1F2A06658];
  v3 = [MEMORY[0x1E695DFD8] setWithObjects:{objc_opt_class(), 0}];
  [v2 setClasses:v3 forSelector:sel_applyConfiguration_ argumentIndex:0 ofReply:0];

  v4 = [MEMORY[0x1E695DFD8] setWithObjects:{objc_opt_class(), 0}];
  [v2 setClasses:v4 forSelector:sel_reloadWithContext_ argumentIndex:0 ofReply:0];

  v5 = [MEMORY[0x1E695DFD8] setWithObjects:{objc_opt_class(), 0}];
  [v2 setClasses:v5 forSelector:sel_handleSafariScriptURL_ argumentIndex:0 ofReply:0];

  return v2;
}

@end