@interface HKHealthService
+ (id)localizedHealthServiceType:(int64_t)type;
- (BOOL)isEqual:(id)equal;
- (HKHealthService)init;
- (HKHealthService)initWithCoder:(id)coder;
- (HKHealthService)initWithType:(int64_t)type identifier:(id)identifier name:(id)name;
- (id)_initWithType:(int64_t)type identifier:(id)identifier name:(id)name serviceId:(id)id;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (void)encodeWithCoder:(id)coder;
@end

@implementation HKHealthService

- (id)copyWithZone:(_NSZone *)zone
{
  v5 = objc_alloc(objc_opt_class());
  type = [(HKHealthService *)self type];
  identifier = [(HKHealthService *)self identifier];
  v8 = [v5 initWithType:type identifier:identifier name:0];

  if (v8)
  {
    [(HKHealthService *)self lastConnection];
    v8[4] = v9;
    name = [(HKHealthService *)self name];
    v11 = [name copyWithZone:zone];
    v12 = v8[3];
    v8[3] = v11;

    identifier2 = [(HKHealthService *)self identifier];
    v14 = [identifier2 copyWithZone:zone];
    v15 = v8[2];
    v8[2] = v14;

    serviceId = [(HKHealthService *)self serviceId];
    v17 = [serviceId copyWithZone:zone];
    v18 = v8[5];
    v8[5] = v17;
  }

  return v8;
}

- (HKHealthService)init
{
  uUID = [MEMORY[0x1E696AFB0] UUID];
  v4 = [(HKHealthService *)self initWithType:-1 identifier:uUID name:@"HealthService"];

  return v4;
}

- (HKHealthService)initWithType:(int64_t)type identifier:(id)identifier name:(id)name
{
  identifierCopy = identifier;
  nameCopy = name;
  if (type >= 4)
  {
    v10 = MEMORY[0x1E695DF30];
    v11 = *MEMORY[0x1E695D940];
    v12 = [MEMORY[0x1E696AD98] numberWithInteger:type];
    [v10 raise:v11 format:{@"Invalid HKHealthServiceType %@", v12}];
  }

  v13 = [(HKHealthService *)self _initWithType:type identifier:identifierCopy name:nameCopy serviceId:0];

  return v13;
}

- (id)_initWithType:(int64_t)type identifier:(id)identifier name:(id)name serviceId:(id)id
{
  identifierCopy = identifier;
  nameCopy = name;
  idCopy = id;
  if (!identifierCopy)
  {
    [MEMORY[0x1E695DF30] raise:*MEMORY[0x1E695D940] format:@"Invalid nil identifier."];
  }

  v20.receiver = self;
  v20.super_class = HKHealthService;
  v14 = [(HKHealthService *)&v20 init];
  v15 = v14;
  if (v14)
  {
    v14->_type = type;
    objc_storeStrong(&v14->_identifier, identifier);
    if (nameCopy)
    {
      v16 = nameCopy;
    }

    else
    {
      v16 = &stru_1F05FF230;
    }

    objc_storeStrong(&v15->_name, v16);
    v15->_lastConnection = 0.0;
    v17 = [idCopy copy];
    serviceId = v15->_serviceId;
    v15->_serviceId = v17;
  }

  return v15;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (self == equalCopy)
  {
    v9 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = equalCopy;
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

- (HKHealthService)initWithCoder:(id)coder
{
  coderCopy = coder;
  v14.receiver = self;
  v14.super_class = HKHealthService;
  v5 = [(HKHealthService *)&v14 init];
  if (v5)
  {
    v5->_type = [coderCopy decodeIntegerForKey:@"HealthServiceType"];
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"HealthDeviceName"];
    name = v5->_name;
    v5->_name = v6;

    v8 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"HealthDeviceIdentifier"];
    identifier = v5->_identifier;
    v5->_identifier = v8;

    [coderCopy decodeDoubleForKey:@"HealthDeviceLastConnection"];
    v5->_lastConnection = v10;
    v11 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"HealthServiceId"];
    serviceId = v5->_serviceId;
    v5->_serviceId = v11;
  }

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  type = self->_type;
  coderCopy = coder;
  [coderCopy encodeInteger:type forKey:@"HealthServiceType"];
  [coderCopy encodeObject:self->_name forKey:@"HealthDeviceName"];
  [coderCopy encodeObject:self->_identifier forKey:@"HealthDeviceIdentifier"];
  [coderCopy encodeDouble:@"HealthDeviceLastConnection" forKey:self->_lastConnection];
  [coderCopy encodeObject:self->_serviceId forKey:@"HealthServiceId"];
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  uUIDString = [(NSUUID *)self->_identifier UUIDString];
  v7 = [HKHealthService localizedHealthServiceType:self->_type];
  v8 = [v3 stringWithFormat:@"%@ %@: %@ (%@)", v5, uUIDString, v7, self->_name];

  if (self->_serviceId)
  {
    v9 = [v8 stringByAppendingFormat:@" %@", self->_serviceId];

    v8 = v9;
  }

  return v8;
}

+ (id)localizedHealthServiceType:(int64_t)type
{
  if (type <= 100)
  {
    switch(type)
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

  if (type > 102)
  {
    if (type == 103)
    {
      return @"Glucose Monitor";
    }

    if (type == 104)
    {
      return @"Health Thermometer";
    }

    return @"Unknown";
  }

  if (type == 101)
  {
    return @"Blood Pressure Monitor";
  }

  else
  {
    return @"Cycling Speed and Cadence";
  }
}

@end