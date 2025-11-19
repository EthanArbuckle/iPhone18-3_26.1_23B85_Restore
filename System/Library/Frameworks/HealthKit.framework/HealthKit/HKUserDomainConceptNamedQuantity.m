@interface HKUserDomainConceptNamedQuantity
+ (id)nullPropertyWithType:(int64_t)a3;
- (BOOL)isEqual:(id)a3;
- (HKQuantity)quantity;
- (HKUserDomainConceptNamedQuantity)init;
- (HKUserDomainConceptNamedQuantity)initWithCoder:(id)a3;
- (HKUserDomainConceptNamedQuantity)initWithName:(id)a3 quantity:(id)a4 type:(int64_t)a5;
- (HKUserDomainConceptNamedQuantity)initWithType:(int64_t)a3 version:(int64_t)a4 timestamp:(double)a5 deleted:(BOOL)a6;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)a3;
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

- (HKUserDomainConceptNamedQuantity)initWithType:(int64_t)a3 version:(int64_t)a4 timestamp:(double)a5 deleted:(BOOL)a6
{
  v7 = MEMORY[0x1E695DF30];
  v8 = *MEMORY[0x1E695D940];
  v9 = NSStringFromSelector(a2);
  [v7 raise:v8 format:{@"The -%@ method is not available on %@", v9, objc_opt_class()}];

  return 0;
}

- (HKUserDomainConceptNamedQuantity)initWithName:(id)a3 quantity:(id)a4 type:(int64_t)a5
{
  v8 = a4;
  v9 = a3;
  [v8 _value];
  v11 = v10;
  v12 = [v8 _unit];

  v13 = [v12 unitString];
  v14 = [(HKUserDomainConceptNamedQuantity *)self initWithName:v9 value:v13 unitString:a5 type:1 version:0 timestamp:v11 deleted:CFAbsoluteTimeGetCurrent()];

  return v14;
}

+ (id)nullPropertyWithType:(int64_t)a3
{
  v5 = +[HKUnit _nullUnit];
  v6 = [a1 alloc];
  v7 = [v5 unitString];
  v8 = [v6 initWithName:0 value:v7 unitString:a3 type:1 version:1 timestamp:0.0 deleted:CFAbsoluteTimeGetCurrent()];

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

- (BOOL)isEqual:(id)a3
{
  v5 = a3;
  if (self == v5)
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
      if ([(HKUserDomainConceptProperty *)&v23 isEqual:v5])
      {
        v6 = v5;
        v7 = 56;
        name = self->_name;
        v9 = [(HKUserDomainConceptNamedQuantity *)v6 name];
        if (name != v9)
        {
          v10 = [(HKUserDomainConceptNamedQuantity *)v6 name];
          if (!v10)
          {
            v12 = 0;
            goto LABEL_20;
          }

          v3 = v10;
          v11 = self->_name;
          v7 = [(HKUserDomainConceptNamedQuantity *)v6 name];
          if (![(NSString *)v11 isEqual:v7])
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
          v16 = [(HKUserDomainConceptNamedQuantity *)v6 unitString];
          v17 = v16;
          if (unitString == v16)
          {

            v12 = 1;
            goto LABEL_18;
          }

          v18 = [(HKUserDomainConceptNamedQuantity *)v6 unitString];
          if (v18)
          {
            v19 = v18;
            v20 = self->_unitString;
            v21 = [(HKUserDomainConceptNamedQuantity *)v6 unitString];
            v12 = [(NSString *)v20 isEqual:v21];

            goto LABEL_18;
          }
        }

        v12 = 0;
LABEL_18:
        if (name != v9)
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

- (void)encodeWithCoder:(id)a3
{
  v5.receiver = self;
  v5.super_class = HKUserDomainConceptNamedQuantity;
  v4 = a3;
  [(HKUserDomainConceptProperty *)&v5 encodeWithCoder:v4];
  [v4 encodeObject:self->_name forKey:{@"name", v5.receiver, v5.super_class}];
  [v4 encodeDouble:@"value" forKey:self->_value];
  [v4 encodeObject:self->_unitString forKey:@"unit"];
}

- (HKUserDomainConceptNamedQuantity)initWithCoder:(id)a3
{
  v4 = a3;
  v12.receiver = self;
  v12.super_class = HKUserDomainConceptNamedQuantity;
  v5 = [(HKUserDomainConceptProperty *)&v12 initWithCoder:v4];
  if (v5)
  {
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"name"];
    name = v5->_name;
    v5->_name = v6;

    [v4 decodeDoubleForKey:@"value"];
    v5->_value = v8;
    v9 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"unit"];
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
  *(buf + 4) = a1;
  *(buf + 6) = 2112;
  *(buf + 14) = v4;
  _os_log_error_impl(&dword_19197B000, log, OS_LOG_TYPE_ERROR, "<%@>: Tried to instantiate an HKUnit with an unknown unit string: %@", buf, 0x16u);
}

@end