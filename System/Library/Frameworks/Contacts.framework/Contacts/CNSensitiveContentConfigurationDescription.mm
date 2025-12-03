@interface CNSensitiveContentConfigurationDescription
- (BOOL)abPropertyID:(int *)d;
- (BOOL)isEqualForContact:(id)contact other:(id)other;
- (id)CNValueFromABBytes:(char *)bytes length:(unint64_t)length;
- (id)CNValueFromABValue:(void *)value;
- (void)ABValueFromCNValue:(id)value;
- (void)decodeUsingCoder:(id)coder contact:(id)contact;
@end

@implementation CNSensitiveContentConfigurationDescription

- (BOOL)isEqualForContact:(id)contact other:(id)other
{
  contactCopy = contact;
  otherCopy = other;
  sensitiveContentConfiguration = [contactCopy sensitiveContentConfiguration];
  if (!sensitiveContentConfiguration)
  {
    sensitiveContentConfiguration2 = [otherCopy sensitiveContentConfiguration];
    if (!sensitiveContentConfiguration2)
    {
      v11 = 1;
LABEL_6:

      goto LABEL_7;
    }
  }

  sensitiveContentConfiguration3 = [contactCopy sensitiveContentConfiguration];
  sensitiveContentConfiguration4 = [otherCopy sensitiveContentConfiguration];
  v11 = [sensitiveContentConfiguration3 isEqual:sensitiveContentConfiguration4];

  if (!sensitiveContentConfiguration)
  {
    goto LABEL_6;
  }

LABEL_7:

  return v11;
}

- (void)decodeUsingCoder:(id)coder contact:(id)contact
{
  contactCopy = contact;
  coderCopy = coder;
  v9 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"_sensitiveContentConfiguration"];

  v7 = [v9 copy];
  v8 = contactCopy[87];
  contactCopy[87] = v7;
}

- (id)CNValueFromABBytes:(char *)bytes length:(unint64_t)length
{
  v4 = [CNiOSABConversions dataFromABBytes:bytes length:length];
  v5 = [[CNSensitiveContentConfiguration alloc] initWithDataRepresentation:v4];

  return v5;
}

- (BOOL)abPropertyID:(int *)d
{
  if (d)
  {
    *d = *MEMORY[0x1E698A598];
  }

  return d != 0;
}

- (void)ABValueFromCNValue:(id)value
{
  valueCopy = value;
  objc_opt_class();
  v4 = valueCopy;
  if (objc_opt_isKindOfClass())
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  v6 = v5;

  dataRepresentation = [v6 dataRepresentation];

  return dataRepresentation;
}

- (id)CNValueFromABValue:(void *)value
{
  valueCopy = value;
  if (value)
  {
    v4 = CFGetTypeID(value);
    if (v4 == CFDataGetTypeID())
    {
      v5 = valueCopy;
      valueCopy = [[CNSensitiveContentConfiguration alloc] initWithDataRepresentation:v5];
    }

    else
    {
      valueCopy = 0;
    }
  }

  return valueCopy;
}

@end