@interface LIQueryTask
- (void)cancel;
@end

@implementation LIQueryTask

- (void)cancel
{
  if (self->_searchToken)
  {
    [(VolumeScan *)self->_volumeScan cancelWithToken:?];
  }
}

@end