@interface _HKMedicalIDMedication
- (BOOL)isEqual:(id)equal;
- (_HKMedicalIDMedication)initWithCoder:(id)coder;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (void)encodeWithCoder:(id)coder;
@end

@implementation _HKMedicalIDMedication

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  textDescription = [(_HKMedicalIDMedication *)self textDescription];
  v7 = [v3 stringWithFormat:@"[%@]:%@", v5, textDescription];

  return v7;
}

- (_HKMedicalIDMedication)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = [(_HKMedicalIDMedication *)self init];
  if (v5)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"HKMedicalIDMedicationTextDescriptionKey"];
    [(_HKMedicalIDMedication *)v5 setTextDescription:v6];
  }

  return v5;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = [[_HKMedicalIDMedication allocWithZone:?]];
  textDescription = [(_HKMedicalIDMedication *)self textDescription];
  v6 = [textDescription copy];
  [(_HKMedicalIDMedication *)v4 setTextDescription:v6];

  return v4;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  textDescription = [(_HKMedicalIDMedication *)self textDescription];
  [coderCopy encodeObject:textDescription forKey:@"HKMedicalIDMedicationTextDescriptionKey"];
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    textDescription = [(_HKMedicalIDMedication *)self textDescription];
    textDescription2 = [equalCopy textDescription];
    if (textDescription == textDescription2)
    {
      v10 = 1;
    }

    else
    {
      textDescription3 = [equalCopy textDescription];
      if (textDescription3)
      {
        textDescription4 = [(_HKMedicalIDMedication *)self textDescription];
        textDescription5 = [equalCopy textDescription];
        v10 = [textDescription4 isEqualToString:textDescription5];
      }

      else
      {
        v10 = 0;
      }
    }
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

@end