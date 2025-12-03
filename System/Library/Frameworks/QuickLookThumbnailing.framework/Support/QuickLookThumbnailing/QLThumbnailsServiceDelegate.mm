@interface QLThumbnailsServiceDelegate
- (BOOL)listener:(id)listener shouldAcceptNewConnection:(id)connection;
@end

@implementation QLThumbnailsServiceDelegate

- (BOOL)listener:(id)listener shouldAcceptNewConnection:(id)connection
{
  connectionCopy = connection;
  v5 = +[QLThumbnailServiceProxy interface];
  [connectionCopy setExportedInterface:v5];

  v6 = [QLThumbnailsService alloc];
  processIdentifier = [connectionCopy processIdentifier];
  if (connectionCopy)
  {
    [connectionCopy auditToken];
  }

  else
  {
    memset(v10, 0, sizeof(v10));
  }

  v8 = [(QLThumbnailsService *)v6 initWithClientProcessIdentifier:processIdentifier auditToken:v10];
  [connectionCopy setExportedObject:v8];

  [connectionCopy resume];
  return 1;
}

@end