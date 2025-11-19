@interface ASDCustomProperty
- (ASDCustomProperty)init;
- (ASDCustomProperty)initWithAddress:(id)a3 propertyDataType:(unsigned int)a4 qualifierDataType:(unsigned int)a5;
- (ASDCustomPropertyInterest)interested;
- (ASDObject)owner;
- (id)value;
- (unsigned)element;
- (unsigned)scope;
- (unsigned)selector;
- (void)sendPropertyChangeNotification;
@end

@implementation ASDCustomProperty

- (ASDCustomProperty)init
{
  v3 = MEMORY[0x277CBEAD8];
  v4 = *MEMORY[0x277CBE660];
  v5 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[ASDCustomProperty init]"];
  [v3 raise:v4 format:{@"Do not call %@", v5}];

  return 0;
}

- (ASDCustomProperty)initWithAddress:(id)a3 propertyDataType:(unsigned int)a4 qualifierDataType:(unsigned int)a5
{
  v8 = a3;
  v13.receiver = self;
  v13.super_class = ASDCustomProperty;
  v9 = [(ASDCustomProperty *)&v13 init];
  if (v9)
  {
    v10 = [v8 copy];
    address = v9->_address;
    v9->_address = v10;

    v9->_propertyDataType = a4;
    v9->_qualifierDataType = a5;
  }

  return v9;
}

- (void)sendPropertyChangeNotification
{
  v3 = [(ASDCustomProperty *)self address];
  v9 = [v3 audioObjectPropertyAddress];
  LODWORD(v10) = v4;

  v5 = [(ASDCustomProperty *)self owner:v9];
  v6 = [v5 propertyChangedDelegate];
  v7 = [(ASDCustomProperty *)self owner];
  [v6 changedProperty:&v9 forObject:v7];

  v8 = [(ASDCustomProperty *)self interested];
  [v8 propertyChangeNotification:self];
}

- (unsigned)selector
{
  v2 = [(ASDCustomProperty *)self address];
  v3 = [v2 selector];

  return v3;
}

- (unsigned)scope
{
  v2 = [(ASDCustomProperty *)self address];
  v3 = [v2 scope];

  return v3;
}

- (unsigned)element
{
  v2 = [(ASDCustomProperty *)self address];
  v3 = [v2 element];

  return v3;
}

- (id)value
{
  if ([(ASDCustomProperty *)self propertyDataType]== 1667658612 || [(ASDCustomProperty *)self propertyDataType]== 1886155636)
  {
    v6 = 0;
    v5 = 8;
    if ([(ASDCustomProperty *)self getPropertyWithQualifierSize:0 qualifierData:0 dataSize:&v5 andData:&v6 forClient:0])
    {
      v3 = v6;
    }

    else
    {
      v3 = 0;
    }
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (ASDCustomPropertyInterest)interested
{
  WeakRetained = objc_loadWeakRetained(&self->_interested);

  return WeakRetained;
}

- (ASDObject)owner
{
  WeakRetained = objc_loadWeakRetained(&self->_owner);

  return WeakRetained;
}

@end