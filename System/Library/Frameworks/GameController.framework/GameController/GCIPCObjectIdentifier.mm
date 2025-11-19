@interface GCIPCObjectIdentifier
@end

@implementation GCIPCObjectIdentifier

void __GCIPCObjectIdentifier_Classes_block_invoke()
{
  v0 = objc_alloc(MEMORY[0x1E695DFD8]);
  v1 = objc_opt_class();
  v2 = objc_opt_class();
  v3 = [v0 initWithObjects:{v1, v2, objc_opt_class(), 0}];
  v4 = GCIPCObjectIdentifier_Classes_IPCObjectIdentifierTypes;
  GCIPCObjectIdentifier_Classes_IPCObjectIdentifierTypes = v3;
}

@end