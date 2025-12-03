@interface LPLinkSnapshotGeneratorServiceDelegate
- (BOOL)listener:(id)listener shouldAcceptNewConnection:(id)connection;
@end

@implementation LPLinkSnapshotGeneratorServiceDelegate

- (BOOL)listener:(id)listener shouldAcceptNewConnection:(id)connection
{
  connectionCopy = connection;
  v5 = [MEMORY[0x1E696B0D0] interfaceWithProtocol:&unk_1F249B130];
  v6 = MEMORY[0x1E695DFD8];
  v7 = objc_opt_class();
  v8 = [v6 setWithObjects:{v7, objc_opt_class(), 0}];
  [v5 setClasses:v8 forSelector:sel_snapshotForMetadata_configurations_completionHandler_ argumentIndex:1 ofReply:0];

  [connectionCopy setExportedInterface:v5];
  v9 = objc_opt_new();
  [connectionCopy setExportedObject:v9];

  [connectionCopy resume];
  return 1;
}

@end