@interface SHLCloudContext
+ (SHLCloudContext)sharedContext;
- (CKContainer)debugContainer;
- (CKContainer)defaultContainer;
- (CKContainer)manateeContainer;
- (CKRecordZone)shazamLibraryZone;
- (id)containerWithScope:(int64_t)scope;
@end

@implementation SHLCloudContext

+ (SHLCloudContext)sharedContext
{
  if (qword_1000982C8 != -1)
  {
    sub_10002F30C();
  }

  v3 = qword_1000982C0;

  return v3;
}

- (CKContainer)defaultContainer
{
  defaultContainer = self->_defaultContainer;
  if (!defaultContainer)
  {
    v4 = [CKContainer containerWithIdentifier:@"com.apple.shazam"];
    v5 = self->_defaultContainer;
    self->_defaultContainer = v4;

    defaultContainer = self->_defaultContainer;
  }

  return defaultContainer;
}

- (CKContainer)manateeContainer
{
  manateeContainer = self->_manateeContainer;
  if (!manateeContainer)
  {
    v4 = [CKContainer containerWithIdentifier:@"com.apple.shazam.secure"];
    v5 = self->_manateeContainer;
    self->_manateeContainer = v4;

    manateeContainer = self->_manateeContainer;
  }

  return manateeContainer;
}

- (CKContainer)debugContainer
{
  debugContainer = self->_debugContainer;
  if (!debugContainer)
  {
    v4 = [CKContainer containerWithIdentifier:@"iCloud.com.shazam.Shazam"];
    v5 = self->_debugContainer;
    self->_debugContainer = v4;

    debugContainer = self->_debugContainer;
  }

  return debugContainer;
}

- (CKRecordZone)shazamLibraryZone
{
  shazamLibraryZone = self->_shazamLibraryZone;
  if (!shazamLibraryZone)
  {
    v4 = [[CKRecordZoneID alloc] initWithZoneName:@"shazam-library" ownerName:CKCurrentUserDefaultName];
    v5 = [[CKRecordZone alloc] initWithZoneID:v4];
    v6 = self->_shazamLibraryZone;
    self->_shazamLibraryZone = v5;

    shazamLibraryZone = self->_shazamLibraryZone;
  }

  return shazamLibraryZone;
}

- (id)containerWithScope:(int64_t)scope
{
  if (scope == 2)
  {
    debugContainer = [(SHLCloudContext *)self debugContainer];
  }

  else if (scope == 1)
  {
    debugContainer = [(SHLCloudContext *)self manateeContainer];
  }

  else
  {
    if (scope)
    {
      goto LABEL_8;
    }

    debugContainer = [(SHLCloudContext *)self defaultContainer];
  }

  a2 = debugContainer;
LABEL_8:

  return a2;
}

@end