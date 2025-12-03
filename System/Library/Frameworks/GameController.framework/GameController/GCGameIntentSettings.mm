@interface GCGameIntentSettings
- (GCGameIntentSettings)init;
- (GCGameIntentSettings)initWithCoder:(id)coder;
- (void)encodeWithCoder:(id)coder;
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

- (GCGameIntentSettings)initWithCoder:(id)coder
{
  coderCopy = coder;
  v9.receiver = self;
  v9.super_class = GCGameIntentSettings;
  v5 = [(GCGameIntentSettings *)&v9 init];
  if (v5)
  {
    v5->_type = [coderCopy decodeInt64ForKey:@"_type"];
    v5->_enabled = [coderCopy decodeBoolForKey:@"_enabled"];
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"_gameBundleID"];
    gameBundleID = v5->_gameBundleID;
    v5->_gameBundleID = v6;

    v5->_appLibraryPod = [coderCopy decodeInt64ForKey:@"_appLibraryPod"];
  }

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  type = self->_type;
  coderCopy = coder;
  [coderCopy encodeInt64:type forKey:@"_type"];
  [coderCopy encodeBool:self->_enabled forKey:@"_enabled"];
  [coderCopy encodeObject:self->_gameBundleID forKey:@"_gameBundleID"];
  [coderCopy encodeInt64:self->_appLibraryPod forKey:@"_appLibraryPod"];
}

@end