@interface ASDJobManagerOptions
- (ASDJobManagerOptions)initWithCoder:(id)coder;
- (id)copyWithZone:(_NSZone *)zone;
- (void)encodeWithCoder:(id)coder;
@end

@implementation ASDJobManagerOptions

- (id)copyWithZone:(_NSZone *)zone
{
  v5 = [+[ASDJobManagerOptions allocWithZone:](ASDJobManagerOptions init];
  v6 = [(NSString *)self->_persistenceIdentifier copyWithZone:zone];
  persistenceIdentifier = v5->_persistenceIdentifier;
  v5->_persistenceIdentifier = v6;

  v5->_shouldFilterExternalOriginatedDownloads = self->_shouldFilterExternalOriginatedDownloads;
  return v5;
}

- (ASDJobManagerOptions)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = [(ASDJobManagerOptions *)self init];
  if (v5)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"persistenceIdentifier"];
    persistenceIdentifier = v5->_persistenceIdentifier;
    v5->_persistenceIdentifier = v6;

    v5->_shouldFilterExternalOriginatedDownloads = [coderCopy decodeBoolForKey:@"shouldFilterExternalOriginatedDownloads"];
  }

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  persistenceIdentifier = self->_persistenceIdentifier;
  coderCopy = coder;
  [coderCopy encodeObject:persistenceIdentifier forKey:@"persistenceIdentifier"];
  [coderCopy encodeBool:self->_shouldFilterExternalOriginatedDownloads forKey:@"shouldFilterExternalOriginatedDownloads"];
}

@end