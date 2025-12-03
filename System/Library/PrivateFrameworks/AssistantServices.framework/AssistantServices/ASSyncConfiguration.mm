@interface ASSyncConfiguration
- (ASSyncConfiguration)initWithConfigurationPlistForSyncKey:(id)key;
- (id)configurationInfoForKey:(id)key;
- (void)_tryGettingPlistData;
@end

@implementation ASSyncConfiguration

- (void)_tryGettingPlistData
{
  if (!self->_attemptedPlistOpen)
  {
    self->_attemptedPlistOpen = 1;
    if (self->_syncKey)
    {
      v3 = NSSearchPathForDirectoriesInDomains(NSLibraryDirectory, 0x408uLL, 1);
      firstObject = [v3 firstObject];

      v4 = [firstObject stringByAppendingPathComponent:@"Assistant/SyncConfiguration/"];
      v5 = [NSString stringWithFormat:@"%@.plist", self->_syncKey];
      v6 = [v4 stringByAppendingPathComponent:v5];

      if (v6)
      {
        v7 = [NSData dataWithContentsOfFile:v6 options:1 error:0];
        configPlistData = self->_configPlistData;
        self->_configPlistData = v7;
      }
    }
  }
}

- (id)configurationInfoForKey:(id)key
{
  keyCopy = key;
  [(ASSyncConfiguration *)self _tryGettingPlistData];
  if (keyCopy && self->_configPlistData)
  {
    _CFPropertyListCreateSingleValue();
  }

  return 0;
}

- (ASSyncConfiguration)initWithConfigurationPlistForSyncKey:(id)key
{
  keyCopy = key;
  v9.receiver = self;
  v9.super_class = ASSyncConfiguration;
  v5 = [(ASSyncConfiguration *)&v9 init];
  if (v5)
  {
    v6 = [keyCopy copy];
    syncKey = v5->_syncKey;
    v5->_syncKey = v6;
  }

  return v5;
}

@end