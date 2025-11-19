@interface NSCloudKitMirroringResetZoneRequest
- (NSCloudKitMirroringResetZoneRequest)initWithOptions:(id)a3 completionBlock:(id)a4;
- (id)copyWithZone:(_NSZone *)a3;
- (void)dealloc;
- (void)setRecordZoneIDsToReset:(uint64_t)a1;
@end

@implementation NSCloudKitMirroringResetZoneRequest

- (NSCloudKitMirroringResetZoneRequest)initWithOptions:(id)a3 completionBlock:(id)a4
{
  v8.receiver = self;
  v8.super_class = NSCloudKitMirroringResetZoneRequest;
  v4 = [(NSCloudKitMirroringRequest *)&v8 initWithOptions:a3 completionBlock:a4];
  if (v4)
  {
    v5 = objc_alloc(getCloudKitCKRecordZoneIDClass[0]());
    v6 = [v5 initWithZoneName:@"com.apple.coredata.cloudkit.zone" ownerName:getCloudKitCKCurrentUserDefaultName()];
    v4->_recordZoneIDsToReset = [objc_alloc(MEMORY[0x1E695DEC8]) initWithObjects:{v6, 0}];
  }

  return v4;
}

- (void)dealloc
{
  self->_recordZoneIDsToReset = 0;
  v3.receiver = self;
  v3.super_class = NSCloudKitMirroringResetZoneRequest;
  [(NSCloudKitMirroringRequest *)&v3 dealloc];
}

- (id)copyWithZone:(_NSZone *)a3
{
  v6.receiver = self;
  v6.super_class = NSCloudKitMirroringResetZoneRequest;
  v4 = [(NSCloudKitMirroringRequest *)&v6 copyWithZone:a3];
  v4[10] = self->_recordZoneIDsToReset;
  return v4;
}

- (void)setRecordZoneIDsToReset:(uint64_t)a1
{
  if (a1)
  {
    v4 = *(a1 + 80);
    if (v4 != a2)
    {

      if (a2)
      {
        *(a1 + 80) = a2;
      }

      else
      {
        v5 = objc_alloc(getCloudKitCKRecordZoneIDClass[0]());
        v6 = [v5 initWithZoneName:@"com.apple.coredata.cloudkit.zone" ownerName:getCloudKitCKCurrentUserDefaultName()];
        *(a1 + 80) = [objc_alloc(MEMORY[0x1E695DEC8]) initWithObjects:{v6, 0}];
      }
    }
  }
}

@end