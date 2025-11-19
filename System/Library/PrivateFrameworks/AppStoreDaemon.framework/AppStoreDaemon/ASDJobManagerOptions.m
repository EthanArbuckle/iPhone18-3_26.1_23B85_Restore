@interface ASDJobManagerOptions
- (ASDJobManagerOptions)initWithCoder:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (void)encodeWithCoder:(id)a3;
@end

@implementation ASDJobManagerOptions

- (id)copyWithZone:(_NSZone *)a3
{
  v5 = [+[ASDJobManagerOptions allocWithZone:](ASDJobManagerOptions init];
  v6 = [(NSString *)self->_persistenceIdentifier copyWithZone:a3];
  persistenceIdentifier = v5->_persistenceIdentifier;
  v5->_persistenceIdentifier = v6;

  v5->_shouldFilterExternalOriginatedDownloads = self->_shouldFilterExternalOriginatedDownloads;
  return v5;
}

- (ASDJobManagerOptions)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = [(ASDJobManagerOptions *)self init];
  if (v5)
  {
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"persistenceIdentifier"];
    persistenceIdentifier = v5->_persistenceIdentifier;
    v5->_persistenceIdentifier = v6;

    v5->_shouldFilterExternalOriginatedDownloads = [v4 decodeBoolForKey:@"shouldFilterExternalOriginatedDownloads"];
  }

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  persistenceIdentifier = self->_persistenceIdentifier;
  v5 = a3;
  [v5 encodeObject:persistenceIdentifier forKey:@"persistenceIdentifier"];
  [v5 encodeBool:self->_shouldFilterExternalOriginatedDownloads forKey:@"shouldFilterExternalOriginatedDownloads"];
}

@end