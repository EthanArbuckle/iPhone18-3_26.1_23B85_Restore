@interface ASDTControlProperty
- (ASDControl)control;
- (AudioObjectPropertyAddress)controlAddress;
- (BOOL)isSettable;
@end

@implementation ASDTControlProperty

- (BOOL)isSettable
{
  selfCopy = self;
  control = [(ASDTControlProperty *)self control];
  LOBYTE(selfCopy) = [control isPropertySettable:&selfCopy->_controlAddress];

  return selfCopy;
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