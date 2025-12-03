@interface ASDCustomProperty
- (ASDCustomProperty)init;
- (ASDCustomProperty)initWithAddress:(id)address propertyDataType:(unsigned int)type qualifierDataType:(unsigned int)dataType;
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

- (ASDCustomProperty)initWithAddress:(id)address propertyDataType:(unsigned int)type qualifierDataType:(unsigned int)dataType
{
  addressCopy = address;
  v13.receiver = self;
  v13.super_class = ASDCustomProperty;
  v9 = [(ASDCustomProperty *)&v13 init];
  if (v9)
  {
    v10 = [addressCopy copy];
    address = v9->_address;
    v9->_address = v10;

    v9->_propertyDataType = type;
    v9->_qualifierDataType = dataType;
  }

  return v9;
}

- (void)sendPropertyChangeNotification
{
  address = [(ASDCustomProperty *)self address];
  audioObjectPropertyAddress = [address audioObjectPropertyAddress];
  LODWORD(v10) = v4;

  v5 = [(ASDCustomProperty *)self owner:audioObjectPropertyAddress];
  propertyChangedDelegate = [v5 propertyChangedDelegate];
  owner = [(ASDCustomProperty *)self owner];
  [propertyChangedDelegate changedProperty:&audioObjectPropertyAddress forObject:owner];

  interested = [(ASDCustomProperty *)self interested];
  [interested propertyChangeNotification:self];
}

- (unsigned)selector
{
  address = [(ASDCustomProperty *)self address];
  selector = [address selector];

  return selector;
}

- (unsigned)scope
{
  address = [(ASDCustomProperty *)self address];
  scope = [address scope];

  return scope;
}

- (unsigned)element
{
  address = [(ASDCustomProperty *)self address];
  element = [address element];

  return element;
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