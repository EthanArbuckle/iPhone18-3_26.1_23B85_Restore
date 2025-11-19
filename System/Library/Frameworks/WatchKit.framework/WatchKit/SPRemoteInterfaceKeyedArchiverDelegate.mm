@interface SPRemoteInterfaceKeyedArchiverDelegate
- (id)archiver:(id)a3 willEncodeObject:(id)a4;
- (void)archiver:(id)a3 didEncodeObject:(id)a4;
@end

@implementation SPRemoteInterfaceKeyedArchiverDelegate

- (id)archiver:(id)a3 willEncodeObject:(id)a4
{
  v5 = a4;
  getUIImageClass();
  if (objc_opt_isKindOfClass())
  {
    v6 = v5;
    self->_imageIsNamed = [v6 _isNamed];
    [v6 _setNamed:0];
  }

  return v5;
}

- (void)archiver:(id)a3 didEncodeObject:(id)a4
{
  v5 = a4;
  getUIImageClass();
  if (objc_opt_isKindOfClass())
  {
    [v5 _setNamed:self->_imageIsNamed];
  }
}

@end