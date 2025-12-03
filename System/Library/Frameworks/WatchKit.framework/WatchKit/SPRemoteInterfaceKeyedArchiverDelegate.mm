@interface SPRemoteInterfaceKeyedArchiverDelegate
- (id)archiver:(id)archiver willEncodeObject:(id)object;
- (void)archiver:(id)archiver didEncodeObject:(id)object;
@end

@implementation SPRemoteInterfaceKeyedArchiverDelegate

- (id)archiver:(id)archiver willEncodeObject:(id)object
{
  objectCopy = object;
  getUIImageClass();
  if (objc_opt_isKindOfClass())
  {
    v6 = objectCopy;
    self->_imageIsNamed = [v6 _isNamed];
    [v6 _setNamed:0];
  }

  return objectCopy;
}

- (void)archiver:(id)archiver didEncodeObject:(id)object
{
  objectCopy = object;
  getUIImageClass();
  if (objc_opt_isKindOfClass())
  {
    [objectCopy _setNamed:self->_imageIsNamed];
  }
}

@end