@interface LPLinkSnapshotGeneratorServiceDelegate
- (BOOL)listener:(id)a3 shouldAcceptNewConnection:(id)a4;
@end

@implementation LPLinkSnapshotGeneratorServiceDelegate

- (BOOL)listener:(id)a3 shouldAcceptNewConnection:(id)a4
{
  v4 = a4;
  v5 = [MEMORY[0x1E696B0D0] interfaceWithProtocol:&unk_1F249B130];
  v6 = MEMORY[0x1E695DFD8];
  v7 = objc_opt_class();
  v8 = [v6 setWithObjects:{v7, objc_opt_class(), 0}];
  [v5 setClasses:v8 forSelector:sel_snapshotForMetadata_configurations_completionHandler_ argumentIndex:1 ofReply:0];

  [v4 setExportedInterface:v5];
  v9 = objc_opt_new();
  [v4 setExportedObject:v9];

  [v4 resume];
  return 1;
}

@end