@interface GCGameIntentSettings
- (GCGameIntentSettings)init;
- (GCGameIntentSettings)initWithCoder:(id)a3;
- (void)encodeWithCoder:(id)a3;
@end

@implementation GCGameIntentSettings

- (GCGameIntentSettings)init
{
  v3.receiver = self;
  v3.super_class = GCGameIntentSettings;
  result = [(GCGameIntentSettings *)&v3 init];
  if (result)
  {
    result->_type = 2;
    result->_enabled = 0;
    result->_appLibraryPod = 0;
  }

  return result;
}

- (GCGameIntentSettings)initWithCoder:(id)a3
{
  v4 = a3;
  v9.receiver = self;
  v9.super_class = GCGameIntentSettings;
  v5 = [(GCGameIntentSettings *)&v9 init];
  if (v5)
  {
    v5->_type = [v4 decodeInt64ForKey:@"_type"];
    v5->_enabled = [v4 decodeBoolForKey:@"_enabled"];
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"_gameBundleID"];
    gameBundleID = v5->_gameBundleID;
    v5->_gameBundleID = v6;

    v5->_appLibraryPod = [v4 decodeInt64ForKey:@"_appLibraryPod"];
  }

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  type = self->_type;
  v5 = a3;
  [v5 encodeInt64:type forKey:@"_type"];
  [v5 encodeBool:self->_enabled forKey:@"_enabled"];
  [v5 encodeObject:self->_gameBundleID forKey:@"_gameBundleID"];
  [v5 encodeInt64:self->_appLibraryPod forKey:@"_appLibraryPod"];
}

@end