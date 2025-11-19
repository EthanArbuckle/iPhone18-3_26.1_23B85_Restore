@interface HMCharacteristicMetadata
- (BOOL)isEqual:(id)a3;
- (BOOL)mergeFromNewObject:(id)a3;
- (HMCharacteristicMetadata)init;
- (HMCharacteristicMetadata)initWithCoder:(id)a3;
- (NSArray)validValues;
- (NSNumber)maxLength;
- (NSNumber)maximumValue;
- (NSNumber)minimumValue;
- (NSNumber)stepValue;
- (NSString)description;
- (NSString)format;
- (NSString)manufacturerDescription;
- (NSString)units;
- (unint64_t)hash;
- (void)setFormat:(id)a3;
- (void)setManufacturerDescription:(id)a3;
- (void)setMaxLength:(id)a3;
- (void)setMaximumValue:(id)a3;
- (void)setMinimumValue:(id)a3;
- (void)setStepValue:(id)a3;
- (void)setUnits:(id)a3;
- (void)setValidValues:(id)a3;
@end

@implementation HMCharacteristicMetadata

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (self == v4)
  {
    v24 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = v4;
    }

    else
    {
      v5 = 0;
    }

    v6 = v5;
    v7 = v6;
    if (!v6)
    {
      goto LABEL_14;
    }

    minimumValue = self->_minimumValue;
    v9 = [(HMCharacteristicMetadata *)v6 minimumValue];
    LODWORD(minimumValue) = HMFEqualObjects();

    if (!minimumValue)
    {
      goto LABEL_14;
    }

    maximumValue = self->_maximumValue;
    v11 = [(HMCharacteristicMetadata *)v7 maximumValue];
    LODWORD(maximumValue) = HMFEqualObjects();

    if (!maximumValue)
    {
      goto LABEL_14;
    }

    stepValue = self->_stepValue;
    v13 = [(HMCharacteristicMetadata *)v7 stepValue];
    LODWORD(stepValue) = HMFEqualObjects();

    if (!stepValue)
    {
      goto LABEL_14;
    }

    maxLength = self->_maxLength;
    v15 = [(HMCharacteristicMetadata *)v7 maxLength];
    LODWORD(maxLength) = HMFEqualObjects();

    if (!maxLength)
    {
      goto LABEL_14;
    }

    format = self->_format;
    v17 = [(HMCharacteristicMetadata *)v7 format];
    LODWORD(format) = HMFEqualObjects();

    if (!format)
    {
      goto LABEL_14;
    }

    units = self->_units;
    v19 = [(HMCharacteristicMetadata *)v7 units];
    LODWORD(units) = HMFEqualObjects();

    if (!units)
    {
      goto LABEL_14;
    }

    manufacturerDescription = self->_manufacturerDescription;
    v21 = [(HMCharacteristicMetadata *)v7 manufacturerDescription];
    LODWORD(manufacturerDescription) = HMFEqualObjects();

    if (manufacturerDescription)
    {
      validValues = self->_validValues;
      v23 = [(HMCharacteristicMetadata *)v7 validValues];
      v24 = HMFEqualObjects();
    }

    else
    {
LABEL_14:
      v24 = 0;
    }
  }

  return v24;
}

- (unint64_t)hash
{
  v3 = [(HMCharacteristicMetadata *)self minimumValue];
  v4 = [v3 hash];

  v5 = [(HMCharacteristicMetadata *)self maximumValue];
  v6 = [v5 hash] ^ v4;

  v7 = [(HMCharacteristicMetadata *)self stepValue];
  v8 = [v7 hash];

  v9 = [(HMCharacteristicMetadata *)self maxLength];
  v10 = v6 ^ v8 ^ [v9 hash];

  v11 = [(HMCharacteristicMetadata *)self format];
  v12 = [v11 hash];

  v13 = [(HMCharacteristicMetadata *)self units];
  v14 = v12 ^ [v13 hash];

  v15 = [(HMCharacteristicMetadata *)self manufacturerDescription];
  v16 = v10 ^ v14 ^ [v15 hash];

  v17 = [(HMCharacteristicMetadata *)self validValues];
  v18 = [v17 hash];

  return v16 ^ v18;
}

- (BOOL)mergeFromNewObject:(id)a3
{
  v4 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = v4;
    v6 = [(HMCharacteristicMetadata *)self minimumValue];
    v7 = [v5 minimumValue];
    v8 = HMFEqualObjects();

    if ((v8 & 1) == 0)
    {
      v9 = [v5 minimumValue];
      [(HMCharacteristicMetadata *)self setMinimumValue:v9];
    }

    v10 = [(HMCharacteristicMetadata *)self maximumValue];
    v11 = [v5 maximumValue];
    v12 = HMFEqualObjects();

    if (v12)
    {
      v13 = v8 ^ 1;
    }

    else
    {
      v14 = [v5 maximumValue];
      [(HMCharacteristicMetadata *)self setMaximumValue:v14];

      v13 = 1;
    }

    v15 = [(HMCharacteristicMetadata *)self stepValue];
    v16 = [v5 stepValue];
    v17 = HMFEqualObjects();

    if ((v17 & 1) == 0)
    {
      v18 = [v5 stepValue];
      [(HMCharacteristicMetadata *)self setStepValue:v18];

      v13 = 1;
    }

    v19 = [(HMCharacteristicMetadata *)self maxLength];
    v20 = [v5 maxLength];
    v21 = HMFEqualObjects();

    if ((v21 & 1) == 0)
    {
      v22 = [v5 maxLength];
      [(HMCharacteristicMetadata *)self setMaxLength:v22];

      v13 = 1;
    }

    v23 = [(HMCharacteristicMetadata *)self format];
    v24 = [v5 format];
    v25 = HMFEqualObjects();

    if ((v25 & 1) == 0)
    {
      v26 = [v5 format];
      [(HMCharacteristicMetadata *)self setFormat:v26];

      v13 = 1;
    }

    v27 = [(HMCharacteristicMetadata *)self units];
    v28 = [v5 units];
    v29 = HMFEqualObjects();

    if ((v29 & 1) == 0)
    {
      v30 = [v5 units];
      [(HMCharacteristicMetadata *)self setUnits:v30];

      v13 = 1;
    }

    v31 = [(HMCharacteristicMetadata *)self manufacturerDescription];
    v32 = [v5 manufacturerDescription];
    v33 = HMFEqualObjects();

    if ((v33 & 1) == 0)
    {
      v34 = [v5 manufacturerDescription];
      [(HMCharacteristicMetadata *)self setManufacturerDescription:v34];

      v13 = 1;
    }

    v35 = [(HMCharacteristicMetadata *)self validValues];
    v36 = [v5 validValues];
    v37 = HMFEqualObjects();

    if ((v37 & 1) == 0)
    {
      v38 = [v5 validValues];
      [(HMCharacteristicMetadata *)self setValidValues:v38];

      v13 = 1;
    }
  }

  else
  {
    v13 = 0;
  }

  return v13;
}

- (NSString)description
{
  v47 = *MEMORY[0x1E69E9840];
  v3 = [objc_alloc(MEMORY[0x1E696AD60]) initWithString:@"[%@"];
  v4 = [(HMCharacteristicMetadata *)self format];

  if (v4)
  {
    v5 = [(HMCharacteristicMetadata *)self format];
    [v3 appendFormat:@"%@%@%@", @" ", @"Format: ", v5];

    v6 = 1;
  }

  else
  {
    v6 = 0;
  }

  v7 = [(HMCharacteristicMetadata *)self units];

  if (v7)
  {
    ++v6;
    if (v4)
    {
      v8 = @", ";
    }

    else
    {
      v8 = @" ";
    }

    v9 = [(HMCharacteristicMetadata *)self units];
    [v3 appendFormat:@"%@%@%@", v8, @"Units: ", v9];
  }

  v10 = [(HMCharacteristicMetadata *)self minimumValue];

  if (v10)
  {
    v11 = v6 + 1;
    if (v6)
    {
      v12 = @", ";
    }

    else
    {
      v12 = @" ";
    }

    v13 = [(HMCharacteristicMetadata *)self minimumValue];
    [v13 doubleValue];
    [v3 appendFormat:@"%@%@%.2f", v12, @"Min: ", v14];

    v6 = v11;
  }

  v15 = [(HMCharacteristicMetadata *)self maximumValue];

  if (v15)
  {
    v16 = v6 + 1;
    if (v6)
    {
      v17 = @", ";
    }

    else
    {
      v17 = @" ";
    }

    v18 = [(HMCharacteristicMetadata *)self maximumValue];
    [v18 doubleValue];
    [v3 appendFormat:@"%@%@%.2f", v17, @"Max: ", v19];

    v6 = v16;
  }

  v20 = [(HMCharacteristicMetadata *)self stepValue];

  if (v20)
  {
    v21 = v6 + 1;
    if (v6)
    {
      v22 = @", ";
    }

    else
    {
      v22 = @" ";
    }

    v23 = [(HMCharacteristicMetadata *)self stepValue];
    [v23 doubleValue];
    [v3 appendFormat:@"%@%@%.2f", v22, @"Step: ", v24];

    v6 = v21;
  }

  v25 = [(HMCharacteristicMetadata *)self maxLength];

  if (v25)
  {
    v26 = v6 + 1;
    if (v6)
    {
      v27 = @", ";
    }

    else
    {
      v27 = @" ";
    }

    v28 = [(HMCharacteristicMetadata *)self maxLength];
    [v3 appendFormat:@"%@%@%u", v27, @"Max length: ", objc_msgSend(v28, "unsignedIntValue")];

    v6 = v26;
  }

  v29 = [(HMCharacteristicMetadata *)self manufacturerDescription];

  if (v29)
  {
    if (v6)
    {
      v30 = @", ";
    }

    else
    {
      v30 = @" ";
    }

    v31 = [(HMCharacteristicMetadata *)self manufacturerDescription];
    [v3 appendFormat:@"%@%@%@", v30, @"Manufacturer Description: ", v31];

    v6 = 1;
  }

  v32 = [(HMCharacteristicMetadata *)self validValues];
  v33 = [v32 count];

  if (v33)
  {
    if (v6)
    {
      v34 = @", ";
    }

    else
    {
      v34 = @" ";
    }

    [v3 appendFormat:@"%@%@", v34, @"Valid Values: "];
    v44 = 0u;
    v45 = 0u;
    v42 = 0u;
    v43 = 0u;
    v35 = [(HMCharacteristicMetadata *)self validValues];
    v36 = [v35 countByEnumeratingWithState:&v42 objects:v46 count:16];
    if (v36)
    {
      v37 = v36;
      v38 = *v43;
      do
      {
        for (i = 0; i != v37; ++i)
        {
          if (*v43 != v38)
          {
            objc_enumerationMutation(v35);
          }

          [v3 appendFormat:@"%@, ", *(*(&v42 + 1) + 8 * i)];
        }

        v37 = [v35 countByEnumeratingWithState:&v42 objects:v46 count:16];
      }

      while (v37);
    }
  }

  [v3 appendString:@" ]"];
  v40 = *MEMORY[0x1E69E9840];

  return v3;
}

- (HMCharacteristicMetadata)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = [(HMCharacteristicMetadata *)self init];
  if (v5)
  {
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"metadataMinimumValue"];
    minimumValue = v5->_minimumValue;
    v5->_minimumValue = v6;

    v8 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"metadataMaximumValue"];
    maximumValue = v5->_maximumValue;
    v5->_maximumValue = v8;

    v10 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"metadataStepValue"];
    stepValue = v5->_stepValue;
    v5->_stepValue = v10;

    v12 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"metadataMaxLength"];
    maxLength = v5->_maxLength;
    v5->_maxLength = v12;

    v14 = [v4 hm_decodeAndCacheStringForKey:@"metadataFormat"];
    format = v5->_format;
    v5->_format = v14;

    v16 = [v4 hm_decodeAndCacheStringForKey:@"metadataUnits"];
    units = v5->_units;
    v5->_units = v16;

    v18 = [v4 hm_decodeAndCacheStringForKey:@"metadataUserDescription"];
    manufacturerDescription = v5->_manufacturerDescription;
    v5->_manufacturerDescription = v18;

    v20 = [v4 decodeArrayOfObjectsOfClass:objc_opt_class() forKey:@"metadataValidValues"];
    validValues = v5->_validValues;
    v5->_validValues = v20;
  }

  return v5;
}

- (void)setValidValues:(id)a3
{
  v6 = a3;
  os_unfair_lock_lock_with_options();
  v4 = [v6 copy];
  validValues = self->_validValues;
  self->_validValues = v4;

  os_unfair_lock_unlock(&self->_lock);
}

- (NSArray)validValues
{
  os_unfair_lock_lock_with_options();
  v3 = self->_validValues;
  os_unfair_lock_unlock(&self->_lock);

  return v3;
}

- (void)setManufacturerDescription:(id)a3
{
  v6 = a3;
  os_unfair_lock_lock_with_options();
  v4 = [MEMORY[0x1E69A2A20] hmf_cachedInstanceForString:v6];
  manufacturerDescription = self->_manufacturerDescription;
  self->_manufacturerDescription = v4;

  os_unfair_lock_unlock(&self->_lock);
}

- (NSString)manufacturerDescription
{
  os_unfair_lock_lock_with_options();
  v3 = self->_manufacturerDescription;
  os_unfair_lock_unlock(&self->_lock);

  return v3;
}

- (void)setUnits:(id)a3
{
  v6 = a3;
  os_unfair_lock_lock_with_options();
  v4 = [MEMORY[0x1E69A2A20] hmf_cachedInstanceForString:v6];
  units = self->_units;
  self->_units = v4;

  os_unfair_lock_unlock(&self->_lock);
}

- (NSString)units
{
  os_unfair_lock_lock_with_options();
  v3 = self->_units;
  os_unfair_lock_unlock(&self->_lock);

  return v3;
}

- (void)setFormat:(id)a3
{
  v6 = a3;
  os_unfair_lock_lock_with_options();
  v4 = [MEMORY[0x1E69A2A20] hmf_cachedInstanceForString:v6];
  format = self->_format;
  self->_format = v4;

  os_unfair_lock_unlock(&self->_lock);
}

- (NSString)format
{
  os_unfair_lock_lock_with_options();
  v3 = self->_format;
  os_unfair_lock_unlock(&self->_lock);

  return v3;
}

- (void)setMaxLength:(id)a3
{
  v4 = a3;
  os_unfair_lock_lock_with_options();
  maxLength = self->_maxLength;
  self->_maxLength = v4;

  os_unfair_lock_unlock(&self->_lock);
}

- (NSNumber)maxLength
{
  os_unfair_lock_lock_with_options();
  v3 = self->_maxLength;
  os_unfair_lock_unlock(&self->_lock);

  return v3;
}

- (void)setStepValue:(id)a3
{
  v4 = a3;
  os_unfair_lock_lock_with_options();
  stepValue = self->_stepValue;
  self->_stepValue = v4;

  os_unfair_lock_unlock(&self->_lock);
}

- (NSNumber)stepValue
{
  os_unfair_lock_lock_with_options();
  v3 = self->_stepValue;
  os_unfair_lock_unlock(&self->_lock);

  return v3;
}

- (void)setMaximumValue:(id)a3
{
  v4 = a3;
  os_unfair_lock_lock_with_options();
  maximumValue = self->_maximumValue;
  self->_maximumValue = v4;

  os_unfair_lock_unlock(&self->_lock);
}

- (NSNumber)maximumValue
{
  os_unfair_lock_lock_with_options();
  v3 = self->_maximumValue;
  os_unfair_lock_unlock(&self->_lock);

  return v3;
}

- (void)setMinimumValue:(id)a3
{
  v4 = a3;
  os_unfair_lock_lock_with_options();
  minimumValue = self->_minimumValue;
  self->_minimumValue = v4;

  os_unfair_lock_unlock(&self->_lock);
}

- (NSNumber)minimumValue
{
  os_unfair_lock_lock_with_options();
  v3 = self->_minimumValue;
  os_unfair_lock_unlock(&self->_lock);

  return v3;
}

- (HMCharacteristicMetadata)init
{
  v3.receiver = self;
  v3.super_class = HMCharacteristicMetadata;
  return [(HMCharacteristicMetadata *)&v3 init];
}

@end