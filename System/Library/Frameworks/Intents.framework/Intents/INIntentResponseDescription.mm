@interface INIntentResponseDescription
- (BOOL)isEqual:(id)equal;
- (INIntentResponseDescription)initWithName:(id)name facadeClass:(Class)class dataClass:(Class)dataClass type:(id)type isPrivate:(BOOL)private slotsByName:(id)byName;
- (unint64_t)hash;
@end

@implementation INIntentResponseDescription

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = equalCopy;
    name = self->_name;
    v7 = 0;
    if ((name == v5[2] || [(NSString *)name isEqualToString:?]) && self->_facadeClass == v5[3] && self->_dataClass == v5[4])
    {
      type = self->_type;
      if ((type == v5[5] || [(NSString *)type isEqualToString:?]) && self->_isPrivate == *(v5 + 8))
      {
        slotsByName = self->_slotsByName;
        if (slotsByName == v5[6] || [(NSDictionary *)slotsByName isEqualToDictionary:?])
        {
          v7 = 1;
        }
      }
    }
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (unint64_t)hash
{
  v3 = [(NSString *)self->_name hash];
  v4 = NSStringFromClass(self->_facadeClass);
  v5 = [v4 hash] ^ v3;
  v6 = NSStringFromClass(self->_dataClass);
  v7 = [v6 hash];
  v8 = v5 ^ v7 ^ [(NSString *)self->_type hash];
  isPrivate = self->_isPrivate;
  v10 = isPrivate ^ [(NSDictionary *)self->_slotsByName hash];

  return v8 ^ v10;
}

- (INIntentResponseDescription)initWithName:(id)name facadeClass:(Class)class dataClass:(Class)dataClass type:(id)type isPrivate:(BOOL)private slotsByName:(id)byName
{
  nameCopy = name;
  typeCopy = type;
  byNameCopy = byName;
  v25.receiver = self;
  v25.super_class = INIntentResponseDescription;
  v17 = [(INIntentResponseDescription *)&v25 init];
  if (v17)
  {
    v18 = [nameCopy copy];
    name = v17->_name;
    v17->_name = v18;

    v17->_facadeClass = class;
    v17->_dataClass = dataClass;
    v20 = [typeCopy copy];
    type = v17->_type;
    v17->_type = v20;

    v17->_isPrivate = private;
    v22 = [byNameCopy copy];
    slotsByName = v17->_slotsByName;
    v17->_slotsByName = v22;
  }

  return v17;
}

@end