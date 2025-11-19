@interface HKHealthService
+ (id)localizedHealthServiceType:(int64_t)a3;
- (BOOL)isEqual:(id)a3;
- (HKHealthService)init;
- (HKHealthService)initWithCoder:(id)a3;
- (HKHealthService)initWithType:(int64_t)a3 identifier:(id)a4 name:(id)a5;
- (id)_initWithType:(int64_t)a3 identifier:(id)a4 name:(id)a5 serviceId:(id)a6;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (void)encodeWithCoder:(id)a3;
@end

@implementation HKHealthService

- (id)copyWithZone:(_NSZone *)a3
{
  v5 = objc_alloc(objc_opt_class());
  v6 = [(HKHealthService *)self type];
  v7 = [(HKHealthService *)self identifier];
  v8 = [v5 initWithType:v6 identifier:v7 name:0];

  if (v8)
  {
    [(HKHealthService *)self lastConnection];
    v8[4] = v9;
    v10 = [(HKHealthService *)self name];
    v11 = [v10 copyWithZone:a3];
    v12 = v8[3];
    v8[3] = v11;

    v13 = [(HKHealthService *)self identifier];
    v14 = [v13 copyWithZone:a3];
    v15 = v8[2];
    v8[2] = v14;

    v16 = [(HKHealthService *)self serviceId];
    v17 = [v16 copyWithZone:a3];
    v18 = v8[5];
    v8[5] = v17;
  }

  return v8;
}

- (HKHealthService)init
{
  v3 = [MEMORY[0x1E696AFB0] UUID];
  v4 = [(HKHealthService *)self initWithType:-1 identifier:v3 name:@"HealthService"];

  return v4;
}

- (HKHealthService)initWithType:(int64_t)a3 identifier:(id)a4 name:(id)a5
{
  v8 = a4;
  v9 = a5;
  if (a3 >= 4)
  {
    v10 = MEMORY[0x1E695DF30];
    v11 = *MEMORY[0x1E695D940];
    v12 = [MEMORY[0x1E696AD98] numberWithInteger:a3];
    [v10 raise:v11 format:{@"Invalid HKHealthServiceType %@", v12}];
  }

  v13 = [(HKHealthService *)self _initWithType:a3 identifier:v8 name:v9 serviceId:0];

  return v13;
}

- (id)_initWithType:(int64_t)a3 identifier:(id)a4 name:(id)a5 serviceId:(id)a6
{
  v11 = a4;
  v12 = a5;
  v13 = a6;
  if (!v11)
  {
    [MEMORY[0x1E695DF30] raise:*MEMORY[0x1E695D940] format:@"Invalid nil identifier."];
  }

  v20.receiver = self;
  v20.super_class = HKHealthService;
  v14 = [(HKHealthService *)&v20 init];
  v15 = v14;
  if (v14)
  {
    v14->_type = a3;
    objc_storeStrong(&v14->_identifier, a4);
    if (v12)
    {
      v16 = v12;
    }

    else
    {
      v16 = &stru_1F05FF230;
    }

    objc_storeStrong(&v15->_name, v16);
    v15->_lastConnection = 0.0;
    v17 = [v13 copy];
    serviceId = v15->_serviceId;
    v15->_serviceId = v17;
  }

  return v15;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (self == v4)
  {
    v9 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = v4;
      type = self->_type;
      v7 = v5->_type;
      v8 = [(NSUUID *)self->_identifier isEqual:v5->_identifier];
      if (type == v7)
      {
        v9 = v8;
      }

      else
      {
        v9 = 0;
      }

      serviceId = self->_serviceId;
      if (serviceId)
      {
        v11 = v5->_serviceId;
        if (v11)
        {
          if (serviceId == v11)
          {
            v12 = 1;
          }

          else
          {
            v12 = [(NSString *)serviceId isEqualToString:?];
          }

          v9 &= v12;
        }
      }
    }

    else
    {
      v9 = 0;
    }
  }

  return v9;
}

- (HKHealthService)initWithCoder:(id)a3
{
  v4 = a3;
  v14.receiver = self;
  v14.super_class = HKHealthService;
  v5 = [(HKHealthService *)&v14 init];
  if (v5)
  {
    v5->_type = [v4 decodeIntegerForKey:@"HealthServiceType"];
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"HealthDeviceName"];
    name = v5->_name;
    v5->_name = v6;

    v8 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"HealthDeviceIdentifier"];
    identifier = v5->_identifier;
    v5->_identifier = v8;

    [v4 decodeDoubleForKey:@"HealthDeviceLastConnection"];
    v5->_lastConnection = v10;
    v11 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"HealthServiceId"];
    serviceId = v5->_serviceId;
    v5->_serviceId = v11;
  }

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  type = self->_type;
  v5 = a3;
  [v5 encodeInteger:type forKey:@"HealthServiceType"];
  [v5 encodeObject:self->_name forKey:@"HealthDeviceName"];
  [v5 encodeObject:self->_identifier forKey:@"HealthDeviceIdentifier"];
  [v5 encodeDouble:@"HealthDeviceLastConnection" forKey:self->_lastConnection];
  [v5 encodeObject:self->_serviceId forKey:@"HealthServiceId"];
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  v6 = [(NSUUID *)self->_identifier UUIDString];
  v7 = [HKHealthService localizedHealthServiceType:self->_type];
  v8 = [v3 stringWithFormat:@"%@ %@: %@ (%@)", v5, v6, v7, self->_name];

  if (self->_serviceId)
  {
    v9 = [v8 stringByAppendingFormat:@" %@", self->_serviceId];

    v8 = v9;
  }

  return v8;
}

+ (id)localizedHealthServiceType:(int64_t)a3
{
  if (a3 <= 100)
  {
    switch(a3)
    {
      case 0:
        return @"Heart Rate Monitor";
      case 1:
        return @"Fitness Machine";
      case 2:
        return @"Eurotas";
    }

    return @"Unknown";
  }

  if (a3 > 102)
  {
    if (a3 == 103)
    {
      return @"Glucose Monitor";
    }

    if (a3 == 104)
    {
      return @"Health Thermometer";
    }

    return @"Unknown";
  }

  if (a3 == 101)
  {
    return @"Blood Pressure Monitor";
  }

  else
  {
    return @"Cycling Speed and Cadence";
  }
}

@end