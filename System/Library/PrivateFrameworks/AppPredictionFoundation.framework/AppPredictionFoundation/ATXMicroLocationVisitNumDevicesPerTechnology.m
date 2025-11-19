@interface ATXMicroLocationVisitNumDevicesPerTechnology
- (ATXMicroLocationVisitNumDevicesPerTechnology)initWithTechnology:(id)a3 numDevices:(id)a4;
- (BOOL)isEqual:(id)a3;
- (BOOL)isEqualToATXMicroLocationVisitNumDevicesPerTechnology:(id)a3;
- (unint64_t)hash;
@end

@implementation ATXMicroLocationVisitNumDevicesPerTechnology

- (ATXMicroLocationVisitNumDevicesPerTechnology)initWithTechnology:(id)a3 numDevices:(id)a4
{
  v6 = a3;
  v7 = a4;
  v12.receiver = self;
  v12.super_class = ATXMicroLocationVisitNumDevicesPerTechnology;
  v8 = [(ATXMicroLocationVisitNumDevicesPerTechnology *)&v12 init];
  if (v8)
  {
    v9 = [v6 copy];
    technology = v8->_technology;
    v8->_technology = v9;

    objc_storeStrong(&v8->_numDevices, a4);
  }

  return v8;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (v4 == self)
  {
    v6 = 1;
  }

  else
  {
    v6 = v4 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0) && [(ATXMicroLocationVisitNumDevicesPerTechnology *)self isEqualToATXMicroLocationVisitNumDevicesPerTechnology:v5];
  }

  return v6;
}

- (BOOL)isEqualToATXMicroLocationVisitNumDevicesPerTechnology:(id)a3
{
  v4 = a3;
  v5 = self->_technology;
  v6 = v5;
  if (v5 == v4[1])
  {
  }

  else
  {
    v7 = [(NSString *)v5 isEqual:?];

    if ((v7 & 1) == 0)
    {
      v8 = 0;
      goto LABEL_9;
    }
  }

  v9 = self->_numDevices;
  v10 = v9;
  if (v9 == v4[2])
  {
    v8 = 1;
  }

  else
  {
    v8 = [(NSNumber *)v9 isEqual:?];
  }

LABEL_9:
  return v8;
}

- (unint64_t)hash
{
  v3 = [(ATXMicroLocationVisitNumDevicesPerTechnology *)self technology];
  v4 = [v3 hash];

  v5 = [(ATXMicroLocationVisitNumDevicesPerTechnology *)self numDevices];
  v6 = [v5 hash] - v4 + 32 * v4;

  return v6;
}

@end