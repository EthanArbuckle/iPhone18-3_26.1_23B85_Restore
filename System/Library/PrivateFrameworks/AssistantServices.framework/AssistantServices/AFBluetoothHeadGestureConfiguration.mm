@interface AFBluetoothHeadGestureConfiguration
+ (id)newWithBuilder:(id)a3;
- (AFBluetoothHeadGestureConfiguration)initWithBuilder:(id)a3;
- (AFBluetoothHeadGestureConfiguration)initWithCoder:(id)a3;
- (AFBluetoothHeadGestureConfiguration)initWithIsEnabled:(BOOL)a3 isSupported:(BOOL)a4 acceptGesture:(int64_t)a5 rejectGesture:(int64_t)a6;
- (BOOL)isEqual:(id)a3;
- (id)_descriptionWithIndent:(unint64_t)a3;
- (id)mutatedCopyWithMutator:(id)a3;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)a3;
@end

@implementation AFBluetoothHeadGestureConfiguration

- (void)encodeWithCoder:(id)a3
{
  v4 = MEMORY[0x1E696AD98];
  isEnabled = self->_isEnabled;
  v6 = a3;
  v7 = [v4 numberWithBool:isEnabled];
  [v6 encodeObject:v7 forKey:@"AFBluetoothHeadGestureConfiguration::isEnabled"];

  v8 = [MEMORY[0x1E696AD98] numberWithBool:self->_isSupported];
  [v6 encodeObject:v8 forKey:@"AFBluetoothHeadGestureConfiguration::isSupported"];

  v9 = [MEMORY[0x1E696AD98] numberWithInteger:self->_acceptGesture];
  [v6 encodeObject:v9 forKey:@"AFBluetoothHeadGestureConfiguration::acceptGesture"];

  v10 = [MEMORY[0x1E696AD98] numberWithInteger:self->_rejectGesture];
  [v6 encodeObject:v10 forKey:@"AFBluetoothHeadGestureConfiguration::rejectGesture"];
}

- (AFBluetoothHeadGestureConfiguration)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"AFBluetoothHeadGestureConfiguration::isEnabled"];
  v6 = [v5 BOOLValue];

  v7 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"AFBluetoothHeadGestureConfiguration::isSupported"];
  v8 = [v7 BOOLValue];

  v9 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"AFBluetoothHeadGestureConfiguration::acceptGesture"];
  v10 = [v9 integerValue];

  v11 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"AFBluetoothHeadGestureConfiguration::rejectGesture"];

  v12 = [v11 integerValue];

  return [(AFBluetoothHeadGestureConfiguration *)self initWithIsEnabled:v6 isSupported:v8 acceptGesture:v10 rejectGesture:v12];
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
      isEnabled = self->_isEnabled;
      if (isEnabled == [(AFBluetoothHeadGestureConfiguration *)v5 isEnabled]&& (isSupported = self->_isSupported, isSupported == [(AFBluetoothHeadGestureConfiguration *)v5 isSupported]) && (acceptGesture = self->_acceptGesture, acceptGesture == [(AFBluetoothHeadGestureConfiguration *)v5 acceptGesture]))
      {
        rejectGesture = self->_rejectGesture;
        v10 = rejectGesture == [(AFBluetoothHeadGestureConfiguration *)v5 rejectGesture];
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

- (unint64_t)hash
{
  v3 = [MEMORY[0x1E696AD98] numberWithBool:self->_isEnabled];
  v4 = [v3 hash];
  v5 = [MEMORY[0x1E696AD98] numberWithBool:self->_isSupported];
  v6 = [v5 hash] ^ v4;
  v7 = [MEMORY[0x1E696AD98] numberWithInteger:self->_acceptGesture];
  v8 = [v7 hash];
  v9 = [MEMORY[0x1E696AD98] numberWithInteger:self->_rejectGesture];
  v10 = v8 ^ [v9 hash];

  return v6 ^ v10;
}

- (id)_descriptionWithIndent:(unint64_t)a3
{
  v4 = objc_alloc(MEMORY[0x1E696AEC0]);
  v18.receiver = self;
  v18.super_class = AFBluetoothHeadGestureConfiguration;
  v5 = [(AFBluetoothHeadGestureConfiguration *)&v18 description];
  acceptGesture = self->_acceptGesture;
  if (acceptGesture > 2)
  {
    v7 = @"(unknown)";
  }

  else
  {
    v7 = *(&off_1E73445B8 + acceptGesture);
  }

  isEnabled = self->_isEnabled;
  isSupported = self->_isSupported;
  v10 = v7;
  rejectGesture = self->_rejectGesture;
  if (rejectGesture > 2)
  {
    v12 = @"(unknown)";
  }

  else
  {
    v12 = *(&off_1E73445B8 + rejectGesture);
  }

  if (isSupported)
  {
    v13 = @"YES";
  }

  else
  {
    v13 = @"NO";
  }

  if (isEnabled)
  {
    v14 = @"YES";
  }

  else
  {
    v14 = @"NO";
  }

  v15 = v12;
  v16 = [v4 initWithFormat:@"%@ {isEnabled = %@, isSupported = %@, acceptGesture = %@, rejectGesture = %@}", v5, v14, v13, v10, v15];

  return v16;
}

- (AFBluetoothHeadGestureConfiguration)initWithIsEnabled:(BOOL)a3 isSupported:(BOOL)a4 acceptGesture:(int64_t)a5 rejectGesture:(int64_t)a6
{
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __97__AFBluetoothHeadGestureConfiguration_initWithIsEnabled_isSupported_acceptGesture_rejectGesture___block_invoke;
  v7[3] = &__block_descriptor_50_e55_v16__0___AFBluetoothHeadGestureConfigurationMutating__8l;
  v8 = a3;
  v9 = a4;
  v7[4] = a5;
  v7[5] = a6;
  return [(AFBluetoothHeadGestureConfiguration *)self initWithBuilder:v7];
}

void __97__AFBluetoothHeadGestureConfiguration_initWithIsEnabled_isSupported_acceptGesture_rejectGesture___block_invoke(uint64_t a1, void *a2)
{
  v3 = *(a1 + 48);
  v4 = a2;
  [v4 setIsEnabled:v3];
  [v4 setIsSupported:*(a1 + 49)];
  [v4 setAcceptGesture:*(a1 + 32)];
  [v4 setRejectGesture:*(a1 + 40)];
}

- (AFBluetoothHeadGestureConfiguration)initWithBuilder:(id)a3
{
  v4 = a3;
  v9.receiver = self;
  v9.super_class = AFBluetoothHeadGestureConfiguration;
  v5 = [(AFBluetoothHeadGestureConfiguration *)&v9 init];
  v6 = v5;
  if (v4 && v5)
  {
    v7 = [[_AFBluetoothHeadGestureConfigurationMutation alloc] initWithBase:0];
    v4[2](v4, v7);
    if ([(_AFBluetoothHeadGestureConfigurationMutation *)v7 isDirty])
    {
      v6->_isEnabled = [(_AFBluetoothHeadGestureConfigurationMutation *)v7 getIsEnabled];
      v6->_isSupported = [(_AFBluetoothHeadGestureConfigurationMutation *)v7 getIsSupported];
      v6->_acceptGesture = [(_AFBluetoothHeadGestureConfigurationMutation *)v7 getAcceptGesture];
      v6->_rejectGesture = [(_AFBluetoothHeadGestureConfigurationMutation *)v7 getRejectGesture];
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
    v5 = [[_AFBluetoothHeadGestureConfigurationMutation alloc] initWithBase:self];
    v4[2](v4, v5);
    if ([(_AFBluetoothHeadGestureConfigurationMutation *)v5 isDirty])
    {
      v6 = objc_alloc_init(AFBluetoothHeadGestureConfiguration);
      v6->_isEnabled = [(_AFBluetoothHeadGestureConfigurationMutation *)v5 getIsEnabled];
      v6->_isSupported = [(_AFBluetoothHeadGestureConfigurationMutation *)v5 getIsSupported];
      v6->_acceptGesture = [(_AFBluetoothHeadGestureConfigurationMutation *)v5 getAcceptGesture];
      v6->_rejectGesture = [(_AFBluetoothHeadGestureConfigurationMutation *)v5 getRejectGesture];
    }

    else
    {
      v6 = [(AFBluetoothHeadGestureConfiguration *)self copy];
    }
  }

  else
  {
    v6 = [(AFBluetoothHeadGestureConfiguration *)self copy];
  }

  return v6;
}

@end