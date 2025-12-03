@interface HMCharacteristicMetadata
- (BOOL)isEqual:(id)equal;
- (BOOL)mergeFromNewObject:(id)object;
- (HMCharacteristicMetadata)init;
- (HMCharacteristicMetadata)initWithCoder:(id)coder;
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
- (void)setFormat:(id)format;
- (void)setManufacturerDescription:(id)description;
- (void)setMaxLength:(id)length;
- (void)setMaximumValue:(id)value;
- (void)setMinimumValue:(id)value;
- (void)setStepValue:(id)value;
- (void)setUnits:(id)units;
- (void)setValidValues:(id)values;
@end

@implementation HMCharacteristicMetadata

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (self == equalCopy)
  {
    v24 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = equalCopy;
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
    minimumValue = [(HMCharacteristicMetadata *)v6 minimumValue];
    LODWORD(minimumValue) = HMFEqualObjects();

    if (!minimumValue)
    {
      goto LABEL_14;
    }

    maximumValue = self->_maximumValue;
    maximumValue = [(HMCharacteristicMetadata *)v7 maximumValue];
    LODWORD(maximumValue) = HMFEqualObjects();

    if (!maximumValue)
    {
      goto LABEL_14;
    }

    stepValue = self->_stepValue;
    stepValue = [(HMCharacteristicMetadata *)v7 stepValue];
    LODWORD(stepValue) = HMFEqualObjects();

    if (!stepValue)
    {
      goto LABEL_14;
    }

    maxLength = self->_maxLength;
    maxLength = [(HMCharacteristicMetadata *)v7 maxLength];
    LODWORD(maxLength) = HMFEqualObjects();

    if (!maxLength)
    {
      goto LABEL_14;
    }

    format = self->_format;
    format = [(HMCharacteristicMetadata *)v7 format];
    LODWORD(format) = HMFEqualObjects();

    if (!format)
    {
      goto LABEL_14;
    }

    units = self->_units;
    units = [(HMCharacteristicMetadata *)v7 units];
    LODWORD(units) = HMFEqualObjects();

    if (!units)
    {
      goto LABEL_14;
    }

    manufacturerDescription = self->_manufacturerDescription;
    manufacturerDescription = [(HMCharacteristicMetadata *)v7 manufacturerDescription];
    LODWORD(manufacturerDescription) = HMFEqualObjects();

    if (manufacturerDescription)
    {
      validValues = self->_validValues;
      validValues = [(HMCharacteristicMetadata *)v7 validValues];
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
  minimumValue = [(HMCharacteristicMetadata *)self minimumValue];
  v4 = [minimumValue hash];

  maximumValue = [(HMCharacteristicMetadata *)self maximumValue];
  v6 = [maximumValue hash] ^ v4;

  stepValue = [(HMCharacteristicMetadata *)self stepValue];
  v8 = [stepValue hash];

  maxLength = [(HMCharacteristicMetadata *)self maxLength];
  v10 = v6 ^ v8 ^ [maxLength hash];

  format = [(HMCharacteristicMetadata *)self format];
  v12 = [format hash];

  units = [(HMCharacteristicMetadata *)self units];
  v14 = v12 ^ [units hash];

  manufacturerDescription = [(HMCharacteristicMetadata *)self manufacturerDescription];
  v16 = v10 ^ v14 ^ [manufacturerDescription hash];

  validValues = [(HMCharacteristicMetadata *)self validValues];
  v18 = [validValues hash];

  return v16 ^ v18;
}

- (BOOL)mergeFromNewObject:(id)object
{
  objectCopy = object;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = objectCopy;
    minimumValue = [(HMCharacteristicMetadata *)self minimumValue];
    minimumValue2 = [v5 minimumValue];
    v8 = HMFEqualObjects();

    if ((v8 & 1) == 0)
    {
      minimumValue3 = [v5 minimumValue];
      [(HMCharacteristicMetadata *)self setMinimumValue:minimumValue3];
    }

    maximumValue = [(HMCharacteristicMetadata *)self maximumValue];
    maximumValue2 = [v5 maximumValue];
    v12 = HMFEqualObjects();

    if (v12)
    {
      v13 = v8 ^ 1;
    }

    else
    {
      maximumValue3 = [v5 maximumValue];
      [(HMCharacteristicMetadata *)self setMaximumValue:maximumValue3];

      v13 = 1;
    }

    stepValue = [(HMCharacteristicMetadata *)self stepValue];
    stepValue2 = [v5 stepValue];
    v17 = HMFEqualObjects();

    if ((v17 & 1) == 0)
    {
      stepValue3 = [v5 stepValue];
      [(HMCharacteristicMetadata *)self setStepValue:stepValue3];

      v13 = 1;
    }

    maxLength = [(HMCharacteristicMetadata *)self maxLength];
    maxLength2 = [v5 maxLength];
    v21 = HMFEqualObjects();

    if ((v21 & 1) == 0)
    {
      maxLength3 = [v5 maxLength];
      [(HMCharacteristicMetadata *)self setMaxLength:maxLength3];

      v13 = 1;
    }

    format = [(HMCharacteristicMetadata *)self format];
    format2 = [v5 format];
    v25 = HMFEqualObjects();

    if ((v25 & 1) == 0)
    {
      format3 = [v5 format];
      [(HMCharacteristicMetadata *)self setFormat:format3];

      v13 = 1;
    }

    units = [(HMCharacteristicMetadata *)self units];
    units2 = [v5 units];
    v29 = HMFEqualObjects();

    if ((v29 & 1) == 0)
    {
      units3 = [v5 units];
      [(HMCharacteristicMetadata *)self setUnits:units3];

      v13 = 1;
    }

    manufacturerDescription = [(HMCharacteristicMetadata *)self manufacturerDescription];
    manufacturerDescription2 = [v5 manufacturerDescription];
    v33 = HMFEqualObjects();

    if ((v33 & 1) == 0)
    {
      manufacturerDescription3 = [v5 manufacturerDescription];
      [(HMCharacteristicMetadata *)self setManufacturerDescription:manufacturerDescription3];

      v13 = 1;
    }

    validValues = [(HMCharacteristicMetadata *)self validValues];
    validValues2 = [v5 validValues];
    v37 = HMFEqualObjects();

    if ((v37 & 1) == 0)
    {
      validValues3 = [v5 validValues];
      [(HMCharacteristicMetadata *)self setValidValues:validValues3];

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
  format = [(HMCharacteristicMetadata *)self format];

  if (format)
  {
    format2 = [(HMCharacteristicMetadata *)self format];
    [v3 appendFormat:@"%@%@%@", @" ", @"Format: ", format2];

    v6 = 1;
  }

  else
  {
    v6 = 0;
  }

  units = [(HMCharacteristicMetadata *)self units];

  if (units)
  {
    ++v6;
    if (format)
    {
      v8 = @", ";
    }

    else
    {
      v8 = @" ";
    }

    units2 = [(HMCharacteristicMetadata *)self units];
    [v3 appendFormat:@"%@%@%@", v8, @"Units: ", units2];
  }

  minimumValue = [(HMCharacteristicMetadata *)self minimumValue];

  if (minimumValue)
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

    minimumValue2 = [(HMCharacteristicMetadata *)self minimumValue];
    [minimumValue2 doubleValue];
    [v3 appendFormat:@"%@%@%.2f", v12, @"Min: ", v14];

    v6 = v11;
  }

  maximumValue = [(HMCharacteristicMetadata *)self maximumValue];

  if (maximumValue)
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

    maximumValue2 = [(HMCharacteristicMetadata *)self maximumValue];
    [maximumValue2 doubleValue];
    [v3 appendFormat:@"%@%@%.2f", v17, @"Max: ", v19];

    v6 = v16;
  }

  stepValue = [(HMCharacteristicMetadata *)self stepValue];

  if (stepValue)
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

    stepValue2 = [(HMCharacteristicMetadata *)self stepValue];
    [stepValue2 doubleValue];
    [v3 appendFormat:@"%@%@%.2f", v22, @"Step: ", v24];

    v6 = v21;
  }

  maxLength = [(HMCharacteristicMetadata *)self maxLength];

  if (maxLength)
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

    maxLength2 = [(HMCharacteristicMetadata *)self maxLength];
    [v3 appendFormat:@"%@%@%u", v27, @"Max length: ", objc_msgSend(maxLength2, "unsignedIntValue")];

    v6 = v26;
  }

  manufacturerDescription = [(HMCharacteristicMetadata *)self manufacturerDescription];

  if (manufacturerDescription)
  {
    if (v6)
    {
      v30 = @", ";
    }

    else
    {
      v30 = @" ";
    }

    manufacturerDescription2 = [(HMCharacteristicMetadata *)self manufacturerDescription];
    [v3 appendFormat:@"%@%@%@", v30, @"Manufacturer Description: ", manufacturerDescription2];

    v6 = 1;
  }

  validValues = [(HMCharacteristicMetadata *)self validValues];
  v33 = [validValues count];

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
    validValues2 = [(HMCharacteristicMetadata *)self validValues];
    v36 = [validValues2 countByEnumeratingWithState:&v42 objects:v46 count:16];
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
            objc_enumerationMutation(validValues2);
          }

          [v3 appendFormat:@"%@, ", *(*(&v42 + 1) + 8 * i)];
        }

        v37 = [validValues2 countByEnumeratingWithState:&v42 objects:v46 count:16];
      }

      while (v37);
    }
  }

  [v3 appendString:@" ]"];
  v40 = *MEMORY[0x1E69E9840];

  return v3;
}

- (HMCharacteristicMetadata)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = [(HMCharacteristicMetadata *)self init];
  if (v5)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"metadataMinimumValue"];
    minimumValue = v5->_minimumValue;
    v5->_minimumValue = v6;

    v8 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"metadataMaximumValue"];
    maximumValue = v5->_maximumValue;
    v5->_maximumValue = v8;

    v10 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"metadataStepValue"];
    stepValue = v5->_stepValue;
    v5->_stepValue = v10;

    v12 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"metadataMaxLength"];
    maxLength = v5->_maxLength;
    v5->_maxLength = v12;

    v14 = [coderCopy hm_decodeAndCacheStringForKey:@"metadataFormat"];
    format = v5->_format;
    v5->_format = v14;

    v16 = [coderCopy hm_decodeAndCacheStringForKey:@"metadataUnits"];
    units = v5->_units;
    v5->_units = v16;

    v18 = [coderCopy hm_decodeAndCacheStringForKey:@"metadataUserDescription"];
    manufacturerDescription = v5->_manufacturerDescription;
    v5->_manufacturerDescription = v18;

    v20 = [coderCopy decodeArrayOfObjectsOfClass:objc_opt_class() forKey:@"metadataValidValues"];
    validValues = v5->_validValues;
    v5->_validValues = v20;
  }

  return v5;
}

- (void)setValidValues:(id)values
{
  valuesCopy = values;
  os_unfair_lock_lock_with_options();
  v4 = [valuesCopy copy];
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

- (void)setManufacturerDescription:(id)description
{
  descriptionCopy = description;
  os_unfair_lock_lock_with_options();
  v4 = [MEMORY[0x1E69A2A20] hmf_cachedInstanceForString:descriptionCopy];
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

- (void)setUnits:(id)units
{
  unitsCopy = units;
  os_unfair_lock_lock_with_options();
  v4 = [MEMORY[0x1E69A2A20] hmf_cachedInstanceForString:unitsCopy];
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

- (void)setFormat:(id)format
{
  formatCopy = format;
  os_unfair_lock_lock_with_options();
  v4 = [MEMORY[0x1E69A2A20] hmf_cachedInstanceForString:formatCopy];
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

- (void)setMaxLength:(id)length
{
  lengthCopy = length;
  os_unfair_lock_lock_with_options();
  maxLength = self->_maxLength;
  self->_maxLength = lengthCopy;

  os_unfair_lock_unlock(&self->_lock);
}

- (NSNumber)maxLength
{
  os_unfair_lock_lock_with_options();
  v3 = self->_maxLength;
  os_unfair_lock_unlock(&self->_lock);

  return v3;
}

- (void)setStepValue:(id)value
{
  valueCopy = value;
  os_unfair_lock_lock_with_options();
  stepValue = self->_stepValue;
  self->_stepValue = valueCopy;

  os_unfair_lock_unlock(&self->_lock);
}

- (NSNumber)stepValue
{
  os_unfair_lock_lock_with_options();
  v3 = self->_stepValue;
  os_unfair_lock_unlock(&self->_lock);

  return v3;
}

- (void)setMaximumValue:(id)value
{
  valueCopy = value;
  os_unfair_lock_lock_with_options();
  maximumValue = self->_maximumValue;
  self->_maximumValue = valueCopy;

  os_unfair_lock_unlock(&self->_lock);
}

- (NSNumber)maximumValue
{
  os_unfair_lock_lock_with_options();
  v3 = self->_maximumValue;
  os_unfair_lock_unlock(&self->_lock);

  return v3;
}

- (void)setMinimumValue:(id)value
{
  valueCopy = value;
  os_unfair_lock_lock_with_options();
  minimumValue = self->_minimumValue;
  self->_minimumValue = valueCopy;

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