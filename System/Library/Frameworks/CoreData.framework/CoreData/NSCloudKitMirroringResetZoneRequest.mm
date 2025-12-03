@interface NSCloudKitMirroringResetZoneRequest
- (NSCloudKitMirroringResetZoneRequest)initWithOptions:(id)options completionBlock:(id)block;
- (id)copyWithZone:(_NSZone *)zone;
- (void)dealloc;
- (void)setRecordZoneIDsToReset:(uint64_t)reset;
@end

@implementation NSCloudKitMirroringResetZoneRequest

- (NSCloudKitMirroringResetZoneRequest)initWithOptions:(id)options completionBlock:(id)block
{
  v8.receiver = self;
  v8.super_class = NSCloudKitMirroringResetZoneRequest;
  v4 = [(NSCloudKitMirroringRequest *)&v8 initWithOptions:options completionBlock:block];
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

- (id)copyWithZone:(_NSZone *)zone
{
  v6.receiver = self;
  v6.super_class = NSCloudKitMirroringResetZoneRequest;
  v4 = [(NSCloudKitMirroringRequest *)&v6 copyWithZone:zone];
  v4[10] = self->_recordZoneIDsToReset;
  return v4;
}

- (void)setRecordZoneIDsToReset:(uint64_t)reset
{
  if (reset)
  {
    v4 = *(reset + 80);
    if (v4 != a2)
    {

      if (a2)
      {
        *(reset + 80) = a2;
      }

      else
      {
        v5 = objc_alloc(getCloudKitCKRecordZoneIDClass[0]());
        v6 = [v5 initWithZoneName:@"com.apple.coredata.cloudkit.zone" ownerName:getCloudKitCKCurrentUserDefaultName()];
        *(reset + 80) = [objc_alloc(MEMORY[0x1E695DEC8]) initWithObjects:{v6, 0}];
      }
    }
  }
}

@end