@interface LSOpenResourceOperationDelegateGetXPCInterface
@end

@implementation LSOpenResourceOperationDelegateGetXPCInterface

void ___LSOpenResourceOperationDelegateGetXPCInterface_block_invoke()
{
  v0 = [MEMORY[0x1E696B0D0] interfaceWithProtocol:&unk_1EEFA76E8];
  v1 = _LSOpenResourceOperationDelegateGetXPCInterface::result;
  _LSOpenResourceOperationDelegateGetXPCInterface::result = v0;

  v2 = _LSOpenResourceOperationDelegateGetXPCInterface::result;
  if (_LSOpenResourceOperationDelegateGetXPCInterface::result)
  {
    goto LABEL_2;
  }

  v5 = [MEMORY[0x1E696AAA8] currentHandler];
  v6 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"NSXPCInterface *_LSOpenResourceOperationDelegateGetXPCInterface()_block_invoke"];
  [v5 handleFailureInFunction:v6 file:@"LSOpenOperation.mm" lineNumber:138 description:@"Failed to create XPC interface object."];

  v2 = _LSOpenResourceOperationDelegateGetXPCInterface::result;
  if (_LSOpenResourceOperationDelegateGetXPCInterface::result)
  {
LABEL_2:
    [v2 setClass:objc_opt_class() forSelector:sel_openResourceOperation_didFinishCopyingResource_ argumentIndex:0 ofReply:0];
    v3 = _LSOpenResourceOperationDelegateGetXPCInterface::result;
    v4 = objc_opt_class();

    [v3 setClass:v4 forSelector:sel_openResourceOperation_didFinishCopyingResource_ argumentIndex:1 ofReply:0];
  }
}

@end