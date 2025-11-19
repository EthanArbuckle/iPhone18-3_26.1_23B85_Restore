@interface ASDPassthroughProperty
- (ASDObject)underlyingObject;
- (ASDPassthroughProperty)initWithUnderlyingObject:(id)a3 andAddress:(id)a4;
- (ASDPassthroughProperty)initWithUnderlyingObject:(id)a3 andPropertyAddress:(AudioObjectPropertyAddress)a4;
- (AudioObjectPropertyAddress)propertyAddress;
- (BOOL)isSettable;
@end

@implementation ASDPassthroughProperty

- (ASDPassthroughProperty)initWithUnderlyingObject:(id)a3 andAddress:(id)a4
{
  v6 = a3;
  v7 = a4;
  v13 = [v7 audioObjectPropertyAddress];
  v14 = v8;
  v9 = [v6 customPropertyWithAddress:&v13];
  v10 = v9;
  if (v9)
  {
    self = -[ASDPassthroughProperty initWithUnderlyingObject:address:propertyDataType:andQualifierDataType:](self, "initWithUnderlyingObject:address:propertyDataType:andQualifierDataType:", v6, v7, [v9 propertyDataType], objc_msgSend(v9, "qualifierDataType"));
    v11 = self;
  }

  else
  {
    v11 = 0;
  }

  return v11;
}

- (ASDPassthroughProperty)initWithUnderlyingObject:(id)a3 andPropertyAddress:(AudioObjectPropertyAddress)a4
{
  mElement = a4.mElement;
  v5 = *&a4.mSelector;
  v7 = a3;
  v8 = [[ASDPropertyAddress alloc] initWithAddress:v5, mElement];
  v9 = [(ASDPassthroughProperty *)self initWithUnderlyingObject:v7 andAddress:v8];

  return v9;
}

- (BOOL)isSettable
{
  v2 = self;
  v3 = [(ASDPassthroughProperty *)self underlyingObject];
  LOBYTE(v2) = [v3 isPropertySettable:&v2->_propertyAddress];

  return v2;
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