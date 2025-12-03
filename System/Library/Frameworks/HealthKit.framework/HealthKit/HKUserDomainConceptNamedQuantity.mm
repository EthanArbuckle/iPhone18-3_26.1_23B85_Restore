@interface HKUserDomainConceptNamedQuantity
+ (id)nullPropertyWithType:(int64_t)type;
- (BOOL)isEqual:(id)equal;
- (HKQuantity)quantity;
- (HKUserDomainConceptNamedQuantity)init;
- (HKUserDomainConceptNamedQuantity)initWithCoder:(id)coder;
- (HKUserDomainConceptNamedQuantity)initWithName:(id)name quantity:(id)quantity type:(int64_t)type;
- (HKUserDomainConceptNamedQuantity)initWithType:(int64_t)type version:(int64_t)version timestamp:(double)timestamp deleted:(BOOL)deleted;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)coder;
- (void)quantity;
@end

@implementation HKUserDomainConceptNamedQuantity

- (HKUserDomainConceptNamedQuantity)init
{
  v3 = MEMORY[0x1E695DF30];
  v4 = *MEMORY[0x1E695D940];
  v5 = NSStringFromSelector(a2);
  [v3 raise:v4 format:{@"The -%@ method is not available on %@", v5, objc_opt_class()}];

  return 0;
}

- (HKUserDomainConceptNamedQuantity)initWithType:(int64_t)type version:(int64_t)version timestamp:(double)timestamp deleted:(BOOL)deleted
{
  v7 = MEMORY[0x1E695DF30];
  v8 = *MEMORY[0x1E695D940];
  v9 = NSStringFromSelector(a2);
  [v7 raise:v8 format:{@"The -%@ method is not available on %@", v9, objc_opt_class()}];

  return 0;
}

- (HKUserDomainConceptNamedQuantity)initWithName:(id)name quantity:(id)quantity type:(int64_t)type
{
  quantityCopy = quantity;
  nameCopy = name;
  [quantityCopy _value];
  v11 = v10;
  _unit = [quantityCopy _unit];

  unitString = [_unit unitString];
  v14 = [(HKUserDomainConceptNamedQuantity *)self initWithName:nameCopy value:unitString unitString:type type:1 version:0 timestamp:v11 deleted:CFAbsoluteTimeGetCurrent()];

  return v14;
}

+ (id)nullPropertyWithType:(int64_t)type
{
  v5 = +[HKUnit _nullUnit];
  v6 = [self alloc];
  unitString = [v5 unitString];
  v8 = [v6 initWithName:0 value:unitString unitString:type type:1 version:1 timestamp:0.0 deleted:CFAbsoluteTimeGetCurrent()];

  return v8;
}

- (HKQuantity)quantity
{
  v10 = *MEMORY[0x1E69E9840];
  os_unfair_lock_lock(&self->_lock);
  lock_quantity = self->_lock_quantity;
  if (!lock_quantity)
  {
    v4 = [HKUnit unitFromString:self->_unitString];
    if (v4)
    {
      v5 = [HKQuantity quantityWithUnit:v4 doubleValue:self->_value];
      v6 = self->_lock_quantity;
      self->_lock_quantity = v5;
    }

    lock_quantity = self->_lock_quantity;
  }

  v7 = lock_quantity;
  os_unfair_lock_unlock(&self->_lock);
  v8 = *MEMORY[0x1E69E9840];

  return v7;
}

- (unint64_t)hash
{
  v7.receiver = self;
  v7.super_class = HKUserDomainConceptNamedQuantity;
  v3 = [(HKUserDomainConceptProperty *)&v7 hash];
  v4 = [(NSString *)self->_name hash]^ v3;
  value = self->_value;
  return v4 ^ [(NSString *)self->_unitString hash]^ value;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (self == equalCopy)
  {
    v12 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v23.receiver = self;
      v23.super_class = HKUserDomainConceptNamedQuantity;
      if ([(HKUserDomainConceptProperty *)&v23 isEqual:equalCopy])
      {
        v6 = equalCopy;
        name3 = 56;
        name = self->_name;
        name = [(HKUserDomainConceptNamedQuantity *)v6 name];
        if (name != name)
        {
          name2 = [(HKUserDomainConceptNamedQuantity *)v6 name];
          if (!name2)
          {
            v12 = 0;
            goto LABEL_20;
          }

          v3 = name2;
          v11 = self->_name;
          name3 = [(HKUserDomainConceptNamedQuantity *)v6 name];
          if (![(NSString *)v11 isEqual:name3])
          {
            v12 = 0;
LABEL_19:

            goto LABEL_20;
          }
        }

        value = self->_value;
        [(HKUserDomainConceptNamedQuantity *)v6 value];
        if (value == v14)
        {
          unitString = self->_unitString;
          unitString = [(HKUserDomainConceptNamedQuantity *)v6 unitString];
          v17 = unitString;
          if (unitString == unitString)
          {

            v12 = 1;
            goto LABEL_18;
          }

          unitString2 = [(HKUserDomainConceptNamedQuantity *)v6 unitString];
          if (unitString2)
          {
            v19 = unitString2;
            v20 = self->_unitString;
            unitString3 = [(HKUserDomainConceptNamedQuantity *)v6 unitString];
            v12 = [(NSString *)v20 isEqual:unitString3];

            goto LABEL_18;
          }
        }

        v12 = 0;
LABEL_18:
        if (name != name)
        {
          goto LABEL_19;
        }

LABEL_20:

        goto LABEL_21;
      }
    }

    v12 = 0;
  }

LABEL_21:

  return v12;
}

- (void)encodeWithCoder:(id)coder
{
  v5.receiver = self;
  v5.super_class = HKUserDomainConceptNamedQuantity;
  coderCopy = coder;
  [(HKUserDomainConceptProperty *)&v5 encodeWithCoder:coderCopy];
  [coderCopy encodeObject:self->_name forKey:{@"name", v5.receiver, v5.super_class}];
  [coderCopy encodeDouble:@"value" forKey:self->_value];
  [coderCopy encodeObject:self->_unitString forKey:@"unit"];
}

- (HKUserDomainConceptNamedQuantity)initWithCoder:(id)coder
{
  coderCopy = coder;
  v12.receiver = self;
  v12.super_class = HKUserDomainConceptNamedQuantity;
  v5 = [(HKUserDomainConceptProperty *)&v12 initWithCoder:coderCopy];
  if (v5)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"name"];
    name = v5->_name;
    v5->_name = v6;

    [coderCopy decodeDoubleForKey:@"value"];
    v5->_value = v8;
    v9 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"unit"];
    unitString = v5->_unitString;
    v5->_unitString = v9;

    v5->_lock._os_unfair_lock_opaque = 0;
  }

  return v5;
}

- (void)initWithName:(uint64_t)a1 value:(uint64_t)a2 unitString:type:version:timestamp:deleted:.cold.1(uint64_t a1, uint64_t a2)
{
  v4 = [MEMORY[0x1E696AAA8] currentHandler];
  [v4 handleFailureInMethod:a1 object:a2 file:@"HKUserDomainConceptNamedQuantity.m" lineNumber:57 description:{@"Invalid parameter not satisfying: %@", @"unitString && unitString.length > 0"}];
}

- (void)quantity
{
  v4 = *a2;
  *buf = 138412546;
  *(buf + 4) = self;
  *(buf + 6) = 2112;
  *(buf + 14) = v4;
  _os_log_error_impl(&dword_19197B000, log, OS_LOG_TYPE_ERROR, "<%@>: Tried to instantiate an HKUnit with an unknown unit string: %@", buf, 0x16u);
}

@end