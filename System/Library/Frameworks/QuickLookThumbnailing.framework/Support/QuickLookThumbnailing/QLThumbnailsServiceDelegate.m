@interface QLThumbnailsServiceDelegate
- (BOOL)listener:(id)a3 shouldAcceptNewConnection:(id)a4;
@end

@implementation QLThumbnailsServiceDelegate

- (BOOL)listener:(id)a3 shouldAcceptNewConnection:(id)a4
{
  v4 = a4;
  v5 = +[QLThumbnailServiceProxy interface];
  [v4 setExportedInterface:v5];

  v6 = [QLThumbnailsService alloc];
  v7 = [v4 processIdentifier];
  if (v4)
  {
    [v4 auditToken];
  }

  else
  {
    memset(v10, 0, sizeof(v10));
  }

  v8 = [(QLThumbnailsService *)v6 initWithClientProcessIdentifier:v7 auditToken:v10];
  [v4 setExportedObject:v8];

  [v4 resume];
  return 1;
}

@end