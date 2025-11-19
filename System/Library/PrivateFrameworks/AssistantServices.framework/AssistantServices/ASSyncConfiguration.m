@interface ASSyncConfiguration
- (ASSyncConfiguration)initWithConfigurationPlistForSyncKey:(id)a3;
- (id)configurationInfoForKey:(id)a3;
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
      v9 = [v3 firstObject];

      v4 = [v9 stringByAppendingPathComponent:@"Assistant/SyncConfiguration/"];
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

- (id)configurationInfoForKey:(id)a3
{
  v4 = a3;
  [(ASSyncConfiguration *)self _tryGettingPlistData];
  if (v4 && self->_configPlistData)
  {
    _CFPropertyListCreateSingleValue();
  }

  return 0;
}

- (ASSyncConfiguration)initWithConfigurationPlistForSyncKey:(id)a3
{
  v4 = a3;
  v9.receiver = self;
  v9.super_class = ASSyncConfiguration;
  v5 = [(ASSyncConfiguration *)&v9 init];
  if (v5)
  {
    v6 = [v4 copy];
    syncKey = v5->_syncKey;
    v5->_syncKey = v6;
  }

  return v5;
}

@end