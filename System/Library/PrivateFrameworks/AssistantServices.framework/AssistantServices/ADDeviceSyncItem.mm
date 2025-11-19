@interface ADDeviceSyncItem
+ (id)newWithBuilder:(id)a3;
- (ADDeviceSyncItem)initWithBuilder:(id)a3;
- (ADDeviceSyncItem)initWithCoder:(id)a3;
- (ADDeviceSyncItem)initWithUUID:(id)a3 properties:(id)a4;
- (BOOL)isEqual:(id)a3;
- (id)_descriptionWithIndent:(unint64_t)a3;
- (id)mutatedCopyWithMutator:(id)a3;
- (void)encodeWithCoder:(id)a3;
@end

@implementation ADDeviceSyncItem

- (void)encodeWithCoder:(id)a3
{
  UUID = self->_UUID;
  v5 = a3;
  [v5 encodeObject:UUID forKey:@"ADDeviceSyncItem::UUID"];
  [v5 encodeObject:self->_properties forKey:@"ADDeviceSyncItem::properties"];
}

- (ADDeviceSyncItem)initWithCoder:(id)a3
{
  v3 = a3;
  v18 = [v3 decodeObjectOfClass:objc_opt_class() forKey:@"ADDeviceSyncItem::UUID"];
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
  v14 = [v3 decodeObjectOfClasses:v13 forKey:@"ADDeviceSyncItem::properties"];

  v15 = [(ADDeviceSyncItem *)self initWithUUID:v18 properties:v14];
  return v15;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (self == v4)
  {
    v10 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = v4;
      v6 = [(ADDeviceSyncItem *)v5 UUID];
      UUID = self->_UUID;
      if (UUID == v6 || [(NSUUID *)UUID isEqual:v6])
      {
        v8 = [(ADDeviceSyncItem *)v5 properties];
        properties = self->_properties;
        v10 = properties == v8 || [(NSDictionary *)properties isEqual:v8];
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

- (id)_descriptionWithIndent:(unint64_t)a3
{
  v4 = [NSString alloc];
  v8.receiver = self;
  v8.super_class = ADDeviceSyncItem;
  v5 = [(ADDeviceSyncItem *)&v8 description];
  v6 = [v4 initWithFormat:@"%@ {UUID = %@, properties = %@}", v5, self->_UUID, self->_properties];

  return v6;
}

- (ADDeviceSyncItem)initWithUUID:(id)a3 properties:(id)a4
{
  v10[0] = _NSConcreteStackBlock;
  v10[1] = 3221225472;
  v10[2] = sub_100313D60;
  v10[3] = &unk_10051BB08;
  v11 = a3;
  v12 = a4;
  v6 = v12;
  v7 = v11;
  v8 = [(ADDeviceSyncItem *)self initWithBuilder:v10];

  return v8;
}

- (ADDeviceSyncItem)initWithBuilder:(id)a3
{
  v4 = a3;
  v15.receiver = self;
  v15.super_class = ADDeviceSyncItem;
  v5 = [(ADDeviceSyncItem *)&v15 init];
  v6 = v5;
  if (v4 && v5)
  {
    v7 = [[_ADDeviceSyncItemMutation alloc] initWithBase:0];
    v4[2](v4, v7);
    if ([(_ADDeviceSyncItemMutation *)v7 isDirty])
    {
      v8 = [(_ADDeviceSyncItemMutation *)v7 getUUID];
      v9 = [v8 copy];
      UUID = v6->_UUID;
      v6->_UUID = v9;

      v11 = [(_ADDeviceSyncItemMutation *)v7 getProperties];
      v12 = [v11 copy];
      properties = v6->_properties;
      v6->_properties = v12;
    }
  }

  return v6;
}

+ (id)newWithBuilder:(id)a3
{
  v3 = a3;
  v4 = [objc_alloc(objc_opt_class()) initWithBuilder:v3];

  return v4;
}

- (id)mutatedCopyWithMutator:(id)a3
{
  v4 = a3;
  if (v4)
  {
    v5 = [[_ADDeviceSyncItemMutation alloc] initWithBase:self];
    v4[2](v4, v5);
    if ([(_ADDeviceSyncItemMutation *)v5 isDirty])
    {
      v6 = objc_alloc_init(ADDeviceSyncItem);
      v7 = [(_ADDeviceSyncItemMutation *)v5 getUUID];
      v8 = [v7 copy];
      UUID = v6->_UUID;
      v6->_UUID = v8;

      v10 = [(_ADDeviceSyncItemMutation *)v5 getProperties];
      v11 = [v10 copy];
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