@interface ADDeviceSyncItem
+ (id)newWithBuilder:(id)builder;
- (ADDeviceSyncItem)initWithBuilder:(id)builder;
- (ADDeviceSyncItem)initWithCoder:(id)coder;
- (ADDeviceSyncItem)initWithUUID:(id)d properties:(id)properties;
- (BOOL)isEqual:(id)equal;
- (id)_descriptionWithIndent:(unint64_t)indent;
- (id)mutatedCopyWithMutator:(id)mutator;
- (void)encodeWithCoder:(id)coder;
@end

@implementation ADDeviceSyncItem

- (void)encodeWithCoder:(id)coder
{
  UUID = self->_UUID;
  coderCopy = coder;
  [coderCopy encodeObject:UUID forKey:@"ADDeviceSyncItem::UUID"];
  [coderCopy encodeObject:self->_properties forKey:@"ADDeviceSyncItem::properties"];
}

- (ADDeviceSyncItem)initWithCoder:(id)coder
{
  coderCopy = coder;
  v18 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"ADDeviceSyncItem::UUID"];
  v17 = objc_opt_class();
  v4 = objc_opt_class();
  v5 = objc_opt_class();
  v6 = objc_opt_class();
  v7 = objc_opt_class();
  v8 = objc_opt_class();
  v9 = objc_opt_class();
  v10 = objc_opt_class();
  v11 = objc_opt_class();
  v12 = objc_opt_class();
  v13 = [NSSet setWithObjects:v17, v4, v5, v6, v7, v8, v9, v10, v11, v12, objc_opt_class(), 0];
  v14 = [coderCopy decodeObjectOfClasses:v13 forKey:@"ADDeviceSyncItem::properties"];

  v15 = [(ADDeviceSyncItem *)self initWithUUID:v18 properties:v14];
  return v15;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (self == equalCopy)
  {
    v10 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = equalCopy;
      uUID = [(ADDeviceSyncItem *)v5 UUID];
      UUID = self->_UUID;
      if (UUID == uUID || [(NSUUID *)UUID isEqual:uUID])
      {
        properties = [(ADDeviceSyncItem *)v5 properties];
        properties = self->_properties;
        v10 = properties == properties || [(NSDictionary *)properties isEqual:properties];
      }

      else
      {
        v10 = 0;
      }
    }

    else
    {
      v10 = 0;
    }
  }

  return v10;
}

- (id)_descriptionWithIndent:(unint64_t)indent
{
  v4 = [NSString alloc];
  v8.receiver = self;
  v8.super_class = ADDeviceSyncItem;
  v5 = [(ADDeviceSyncItem *)&v8 description];
  v6 = [v4 initWithFormat:@"%@ {UUID = %@, properties = %@}", v5, self->_UUID, self->_properties];

  return v6;
}

- (ADDeviceSyncItem)initWithUUID:(id)d properties:(id)properties
{
  v10[0] = _NSConcreteStackBlock;
  v10[1] = 3221225472;
  v10[2] = sub_100313D60;
  v10[3] = &unk_10051BB08;
  dCopy = d;
  propertiesCopy = properties;
  v6 = propertiesCopy;
  v7 = dCopy;
  v8 = [(ADDeviceSyncItem *)self initWithBuilder:v10];

  return v8;
}

- (ADDeviceSyncItem)initWithBuilder:(id)builder
{
  builderCopy = builder;
  v15.receiver = self;
  v15.super_class = ADDeviceSyncItem;
  v5 = [(ADDeviceSyncItem *)&v15 init];
  v6 = v5;
  if (builderCopy && v5)
  {
    v7 = [[_ADDeviceSyncItemMutation alloc] initWithBase:0];
    builderCopy[2](builderCopy, v7);
    if ([(_ADDeviceSyncItemMutation *)v7 isDirty])
    {
      getUUID = [(_ADDeviceSyncItemMutation *)v7 getUUID];
      v9 = [getUUID copy];
      UUID = v6->_UUID;
      v6->_UUID = v9;

      getProperties = [(_ADDeviceSyncItemMutation *)v7 getProperties];
      v12 = [getProperties copy];
      properties = v6->_properties;
      v6->_properties = v12;
    }
  }

  return v6;
}

+ (id)newWithBuilder:(id)builder
{
  builderCopy = builder;
  v4 = [objc_alloc(objc_opt_class()) initWithBuilder:builderCopy];

  return v4;
}

- (id)mutatedCopyWithMutator:(id)mutator
{
  mutatorCopy = mutator;
  if (mutatorCopy)
  {
    v5 = [[_ADDeviceSyncItemMutation alloc] initWithBase:self];
    mutatorCopy[2](mutatorCopy, v5);
    if ([(_ADDeviceSyncItemMutation *)v5 isDirty])
    {
      v6 = objc_alloc_init(ADDeviceSyncItem);
      getUUID = [(_ADDeviceSyncItemMutation *)v5 getUUID];
      v8 = [getUUID copy];
      UUID = v6->_UUID;
      v6->_UUID = v8;

      getProperties = [(_ADDeviceSyncItemMutation *)v5 getProperties];
      v11 = [getProperties copy];
      properties = v6->_properties;
      v6->_properties = v11;
    }

    else
    {
      v6 = [(ADDeviceSyncItem *)self copy];
    }
  }

  else
  {
    v6 = [(ADDeviceSyncItem *)self copy];
  }

  return v6;
}

@end