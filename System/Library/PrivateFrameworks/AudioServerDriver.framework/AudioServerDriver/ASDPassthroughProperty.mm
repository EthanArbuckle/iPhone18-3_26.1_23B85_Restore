@interface ASDPassthroughProperty
- (ASDObject)underlyingObject;
- (ASDPassthroughProperty)initWithUnderlyingObject:(id)object andAddress:(id)address;
- (ASDPassthroughProperty)initWithUnderlyingObject:(id)object andPropertyAddress:(AudioObjectPropertyAddress)address;
- (AudioObjectPropertyAddress)propertyAddress;
- (BOOL)isSettable;
@end

@implementation ASDPassthroughProperty

- (ASDPassthroughProperty)initWithUnderlyingObject:(id)object andAddress:(id)address
{
  objectCopy = object;
  addressCopy = address;
  audioObjectPropertyAddress = [addressCopy audioObjectPropertyAddress];
  v14 = v8;
  v9 = [objectCopy customPropertyWithAddress:&audioObjectPropertyAddress];
  v10 = v9;
  if (v9)
  {
    self = -[ASDPassthroughProperty initWithUnderlyingObject:address:propertyDataType:andQualifierDataType:](self, "initWithUnderlyingObject:address:propertyDataType:andQualifierDataType:", objectCopy, addressCopy, [v9 propertyDataType], objc_msgSend(v9, "qualifierDataType"));
    selfCopy = self;
  }

  else
  {
    selfCopy = 0;
  }

  return selfCopy;
}

- (ASDPassthroughProperty)initWithUnderlyingObject:(id)object andPropertyAddress:(AudioObjectPropertyAddress)address
{
  mElement = address.mElement;
  v5 = *&address.mSelector;
  objectCopy = object;
  mElement = [[ASDPropertyAddress alloc] initWithAddress:v5, mElement];
  v9 = [(ASDPassthroughProperty *)self initWithUnderlyingObject:objectCopy andAddress:mElement];

  return v9;
}

- (BOOL)isSettable
{
  selfCopy = self;
  underlyingObject = [(ASDPassthroughProperty *)self underlyingObject];
  LOBYTE(selfCopy) = [underlyingObject isPropertySettable:&selfCopy->_propertyAddress];

  return selfCopy;
}

- (ASDObject)underlyingObject
{
  WeakRetained = objc_loadWeakRetained(&self->_underlyingObject);

  return WeakRetained;
}

- (AudioObjectPropertyAddress)propertyAddress
{
  p_propertyAddress = &self->_propertyAddress;
  v3 = *&self->_propertyAddress.mSelector;
  mElement = p_propertyAddress->mElement;
  result.mSelector = v3;
  result.mScope = HIDWORD(v3);
  result.mElement = mElement;
  return result;
}

@end