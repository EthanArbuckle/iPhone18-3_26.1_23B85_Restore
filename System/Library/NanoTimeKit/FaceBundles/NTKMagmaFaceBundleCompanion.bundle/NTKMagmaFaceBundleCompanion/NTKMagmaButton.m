@interface NTKMagmaButton
- (NTKMagmaButtonDelegate)delegate;
@end

@implementation NTKMagmaButton

- (NTKMagmaButtonDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end