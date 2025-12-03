@interface AFBluetoothHeadGestureConfiguration
+ (id)newWithBuilder:(id)builder;
- (AFBluetoothHeadGestureConfiguration)initWithBuilder:(id)builder;
- (AFBluetoothHeadGestureConfiguration)initWithCoder:(id)coder;
- (AFBluetoothHeadGestureConfiguration)initWithIsEnabled:(BOOL)enabled isSupported:(BOOL)supported acceptGesture:(int64_t)gesture rejectGesture:(int64_t)rejectGesture;
- (BOOL)isEqual:(id)equal;
- (id)_descriptionWithIndent:(unint64_t)indent;
- (id)mutatedCopyWithMutator:(id)mutator;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)coder;
@end

@implementation AFBluetoothHeadGestureConfiguration

- (void)encodeWithCoder:(id)coder
{
  v4 = MEMORY[0x1E696AD98];
  isEnabled = self->_isEnabled;
  coderCopy = coder;
  v7 = [v4 numberWithBool:isEnabled];
  [coderCopy encodeObject:v7 forKey:@"AFBluetoothHeadGestureConfiguration::isEnabled"];

  v8 = [MEMORY[0x1E696AD98] numberWithBool:self->_isSupported];
  [coderCopy encodeObject:v8 forKey:@"AFBluetoothHeadGestureConfiguration::isSupported"];

  v9 = [MEMORY[0x1E696AD98] numberWithInteger:self->_acceptGesture];
  [coderCopy encodeObject:v9 forKey:@"AFBluetoothHeadGestureConfiguration::acceptGesture"];

  v10 = [MEMORY[0x1E696AD98] numberWithInteger:self->_rejectGesture];
  [coderCopy encodeObject:v10 forKey:@"AFBluetoothHeadGestureConfiguration::rejectGesture"];
}

- (AFBluetoothHeadGestureConfiguration)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"AFBluetoothHeadGestureConfiguration::isEnabled"];
  bOOLValue = [v5 BOOLValue];

  v7 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"AFBluetoothHeadGestureConfiguration::isSupported"];
  bOOLValue2 = [v7 BOOLValue];

  v9 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"AFBluetoothHeadGestureConfiguration::acceptGesture"];
  integerValue = [v9 integerValue];

  v11 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"AFBluetoothHeadGestureConfiguration::rejectGesture"];

  integerValue2 = [v11 integerValue];

  return [(AFBluetoothHeadGestureConfiguration *)self initWithIsEnabled:bOOLValue isSupported:bOOLValue2 acceptGesture:integerValue rejectGesture:integerValue2];
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

- (id)_descriptionWithIndent:(unint64_t)indent
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

- (AFBluetoothHeadGestureConfiguration)initWithIsEnabled:(BOOL)enabled isSupported:(BOOL)supported acceptGesture:(int64_t)gesture rejectGesture:(int64_t)rejectGesture
{
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __97__AFBluetoothHeadGestureConfiguration_initWithIsEnabled_isSupported_acceptGesture_rejectGesture___block_invoke;
  v7[3] = &__block_descriptor_50_e55_v16__0___AFBluetoothHeadGestureConfigurationMutating__8l;
  enabledCopy = enabled;
  supportedCopy = supported;
  v7[4] = gesture;
  v7[5] = rejectGesture;
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

- (AFBluetoothHeadGestureConfiguration)initWithBuilder:(id)builder
{
  builderCopy = builder;
  v9.receiver = self;
  v9.super_class = AFBluetoothHeadGestureConfiguration;
  v5 = [(AFBluetoothHeadGestureConfiguration *)&v9 init];
  v6 = v5;
  if (builderCopy && v5)
  {
    v7 = [[_AFBluetoothHeadGestureConfigurationMutation alloc] initWithBase:0];
    builderCopy[2](builderCopy, v7);
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
    v5 = [[_AFBluetoothHeadGestureConfigurationMutation alloc] initWithBase:self];
    mutatorCopy[2](mutatorCopy, v5);
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