@interface ASDTControlProperty
- (ASDControl)control;
- (AudioObjectPropertyAddress)controlAddress;
- (BOOL)isSettable;
@end

@implementation ASDTControlProperty

- (BOOL)isSettable
{
  v2 = self;
  v3 = [(ASDTControlProperty *)self control];
  LOBYTE(v2) = [v3 isPropertySettable:&v2->_controlAddress];

  return v2;
}

- (ASDControl)control
{
  WeakRetained = objc_loadWeakRetained(&self->_control);

  return WeakRetained;
}

- (AudioObjectPropertyAddress)controlAddress
{
  p_controlAddress = &self->_controlAddress;
  v3 = *&self->_controlAddress.mSelector;
  mElement = p_controlAddress->mElement;
  result.mSelector = v3;
  result.mScope = HIDWORD(v3);
  result.mElement = mElement;
  return result;
}

@end