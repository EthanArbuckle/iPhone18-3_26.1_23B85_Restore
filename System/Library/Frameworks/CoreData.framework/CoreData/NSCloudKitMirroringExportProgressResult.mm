@interface NSCloudKitMirroringExportProgressResult
- (NSCloudKitMirroringExportProgressResult)initWithRequest:(id)request storeIdentifier:(id)identifier objectIDToLastExportedToken:(id)token error:(id)error;
- (void)dealloc;
@end

@implementation NSCloudKitMirroringExportProgressResult

- (NSCloudKitMirroringExportProgressResult)initWithRequest:(id)request storeIdentifier:(id)identifier objectIDToLastExportedToken:(id)token error:(id)error
{
  v9.receiver = self;
  v9.super_class = NSCloudKitMirroringExportProgressResult;
  v7 = [(NSCloudKitMirroringResult *)&v9 initWithRequest:request storeIdentifier:identifier success:token != 0 madeChanges:0 error:error];
  if (v7)
  {
    v7->_objectIDToLastExportedToken = token;
  }

  return v7;
}

- (void)dealloc
{
  self->_objectIDToLastExportedToken = 0;
  v3.receiver = self;
  v3.super_class = NSCloudKitMirroringExportProgressResult;
  [(NSCloudKitMirroringResult *)&v3 dealloc];
}

@end