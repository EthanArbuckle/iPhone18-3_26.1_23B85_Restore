@interface NIRegionPredicate
- (BOOL)isEqual:(id)a3;
- (NIRegionPredicate)initWithCoder:(id)a3;
- (NIRegionPredicate)initWithName:(id)a3 devicePresencePreset:(int64_t)a4;
- (NIRegionPredicate)initWithName:(id)a3 radius:(float)a4;
- (NIRegionPredicate)initWithName:(id)a3 radius:(float)a4 preferredUpdateRate:(int64_t)a5;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (id)descriptionInternal;
- (void)encodeWithCoder:(id)a3;
@end

@implementation NIRegionPredicate

- (NIRegionPredicate)initWithName:(id)a3 radius:(float)a4 preferredUpdateRate:(int64_t)a5
{
  v10 = a3;
  if (!v10)
  {
    v14 = [MEMORY[0x1E696AAA8] currentHandler];
    [v14 handleFailureInMethod:a2 object:self file:@"NIRegionPredicate.mm" lineNumber:22 description:{@"Invalid parameter not satisfying: %@", @"name"}];
  }

  if (a4 <= 0.0)
  {
    v15 = [MEMORY[0x1E696AAA8] currentHandler];
    [v15 handleFailureInMethod:a2 object:self file:@"NIRegionPredicate.mm" lineNumber:23 description:@"radius must be larger than 0"];
  }

  v16.receiver = self;
  v16.super_class = NIRegionPredicate;
  v11 = [(NIRegionPredicate *)&v16 init];
  v12 = v11;
  if (v11)
  {
    objc_storeStrong(&v11->_name, a3);
    v12->_radius = a4;
    v12->_regionSizeCategory = 0;
    v12->_preferredUpdateRate = a5;
    *&v12->_requiresUserIntent = 0;
    v12->_devicePresencePreset = 0;
  }

  return v12;
}

- (NIRegionPredicate)initWithName:(id)a3 radius:(float)a4
{
  v6 = a3;
  v7 = objc_alloc(objc_opt_class());
  *&v8 = a4;
  v9 = [v7 initWithName:v6 radius:0 preferredUpdateRate:v8];

  return v9;
}

- (NIRegionPredicate)initWithName:(id)a3 devicePresencePreset:(int64_t)a4
{
  v7 = a3;
  if (v7)
  {
    if (a4)
    {
      goto LABEL_3;
    }
  }

  else
  {
    v11 = [MEMORY[0x1E696AAA8] currentHandler];
    [v11 handleFailureInMethod:a2 object:self file:@"NIRegionPredicate.mm" lineNumber:42 description:{@"Invalid parameter not satisfying: %@", @"name"}];

    if (a4)
    {
      goto LABEL_3;
    }
  }

  v12 = [MEMORY[0x1E696AAA8] currentHandler];
  [v12 handleFailureInMethod:a2 object:self file:@"NIRegionPredicate.mm" lineNumber:43 description:@"device presence preset cannot be unspecified"];

LABEL_3:
  v8 = objc_alloc(objc_opt_class());
  [NIDevicePresenceConfiguration _radiusFromDevicePresencePreset:a4];
  v9 = [v8 initWithName:v7 radius:?];

  if (v9)
  {
    v9->_devicePresencePreset = a4;
  }

  return v9;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = [objc_opt_class() allocWithZone:a3];
  name = self->_name;
  regionSizeCategory = self->_regionSizeCategory;
  *&v7 = self->_radius;
  preferredUpdateRate = self->_preferredUpdateRate;
  requiresUserIntent = self->_requiresUserIntent;
  coarseEstimation = self->_coarseEstimation;
  devicePresencePreset = self->_devicePresencePreset;

  return [v4 initWithName:name regionSizeCategory:regionSizeCategory radius:preferredUpdateRate preferredUpdateRate:requiresUserIntent requiresUserIntent:coarseEstimation coarseEstimation:devicePresencePreset devicePresencePreset:v7];
}

- (void)encodeWithCoder:(id)a3
{
  v5 = a3;
  [v5 encodeObject:self->_name forKey:@"name"];
  [v5 encodeInteger:self->_regionSizeCategory forKey:@"regionSizeCategory"];
  *&v4 = self->_radius;
  [v5 encodeFloat:@"radius" forKey:v4];
  [v5 encodeInteger:self->_preferredUpdateRate forKey:@"preferredUpdateRate"];
  [v5 encodeBool:self->_requiresUserIntent forKey:@"requiresUserIntent"];
  [v5 encodeInteger:self->_devicePresencePreset forKey:@"devicePresencePreset"];
  [v5 encodeBool:self->_coarseEstimation forKey:@"coarseEstimation"];
}

- (NIRegionPredicate)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"name"];
  v6 = [v4 decodeIntegerForKey:@"regionSizeCategory"];
  [v4 decodeFloatForKey:@"radius"];
  v8 = v7;
  v9 = [v4 decodeIntegerForKey:@"preferredUpdateRate"];
  v10 = [v4 decodeIntegerForKey:@"devicePresencePreset"];
  if (v5 && ((v11 = v10, v8 >= 0.0) || v10))
  {
    v13 = [v4 decodeBoolForKey:@"requiresUserIntent"];
    v14 = [v4 decodeBoolForKey:@"coarseEstimation"];
    v18.receiver = self;
    v18.super_class = NIRegionPredicate;
    v15 = [(NIRegionPredicate *)&v18 init];
    v16 = v15;
    if (v15)
    {
      objc_storeStrong(&v15->_name, v5);
      v16->_radius = v8;
      v16->_regionSizeCategory = v6;
      v16->_preferredUpdateRate = v9;
      v16->_requiresUserIntent = v13;
      v16->_devicePresencePreset = v11;
      v16->_coarseEstimation = v14;
    }

    self = v16;
    v12 = self;
  }

  else
  {
    v12 = 0;
  }

  return v12;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = v4;
    v6 = v5;
    if (v5 == self)
    {
      v9 = 1;
    }

    else
    {
      v7 = [(NIRegionPredicate *)v5 name];
      v9 = [v7 isEqualToString:self->_name] && -[NIRegionPredicate regionSizeCategory](v6, "regionSizeCategory") == self->_regionSizeCategory && (-[NIRegionPredicate radius](v6, "radius"), v8 == self->_radius) && -[NIRegionPredicate preferredUpdateRate](v6, "preferredUpdateRate") == self->_preferredUpdateRate && self->_requiresUserIntent == -[NIRegionPredicate requiresUserIntent](v6, "requiresUserIntent") && self->_coarseEstimation == -[NIRegionPredicate coarseEstimation](v6, "coarseEstimation");
    }
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

- (id)description
{
  v3 = objc_alloc(MEMORY[0x1E696AD60]);
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  v6 = [(NIRegionPredicate *)self descriptionInternal];
  v7 = [v3 initWithFormat:@"<%@: %@>", v5, v6];

  return v7;
}

- (id)descriptionInternal
{
  v3 = MEMORY[0x1E696AEC0];
  name = self->_name;
  regionSizeCategory = self->_regionSizeCategory;
  if (regionSizeCategory)
  {
    if (regionSizeCategory != 10)
    {
      [NIRegionPredicate descriptionInternal];
    }

    v6 = @"Large";
  }

  else
  {
    v6 = @"Default";
  }

  radius = self->_radius;
  v8 = [NIInternalUtils NINearbyObjectUpdateRateToString:self->_preferredUpdateRate];
  devicePresencePreset = self->_devicePresencePreset;
  if (devicePresencePreset >= 9)
  {
    [NIRegionPredicate descriptionInternal];
  }

  v10 = [v3 stringWithFormat:@"name: %@, cat: %@, radius: %0.2f m, rate: %s, intent: %d, coarse: %d, presencePreset: %s", name, v6, radius, v8, self->_requiresUserIntent, self->_coarseEstimation, off_1E7F14330[devicePresencePreset]];

  return v10;
}

@end