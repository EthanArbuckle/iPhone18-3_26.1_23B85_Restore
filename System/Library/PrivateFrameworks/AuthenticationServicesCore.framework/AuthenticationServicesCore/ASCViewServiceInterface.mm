@interface ASCViewServiceInterface
+ (id)xpcInterface;
@end

@implementation ASCViewServiceInterface

+ (id)xpcInterface
{
  if (xpcInterface_onceToken_1 != -1)
  {
    +[ASCViewServiceInterface xpcInterface];
  }

  v3 = xpcInterface_interface_1;

  return v3;
}

void __39__ASCViewServiceInterface_xpcInterface__block_invoke()
{
  v0 = [MEMORY[0x1E696B0D0] interfaceWithProtocol:&unk_1F41BBAA8];
  v1 = xpcInterface_interface_1;
  xpcInterface_interface_1 = v0;

  v2 = ASAllLoginChoiceClasses();
  v3 = [v2 setByAddingObject:objc_opt_class()];

  [xpcInterface_interface_1 setClasses:v3 forSelector:sel_updateInterfaceWithLoginChoices_ argumentIndex:0 ofReply:0];
}

@end