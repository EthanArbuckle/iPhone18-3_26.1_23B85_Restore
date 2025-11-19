@interface _HKMedicalIDMedication
- (BOOL)isEqual:(id)a3;
- (_HKMedicalIDMedication)initWithCoder:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (void)encodeWithCoder:(id)a3;
@end

@implementation _HKMedicalIDMedication

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  v6 = [(_HKMedicalIDMedication *)self textDescription];
  v7 = [v3 stringWithFormat:@"[%@]:%@", v5, v6];

  return v7;
}

- (_HKMedicalIDMedication)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = [(_HKMedicalIDMedication *)self init];
  if (v5)
  {
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"HKMedicalIDMedicationTextDescriptionKey"];
    [(_HKMedicalIDMedication *)v5 setTextDescription:v6];
  }

  return v5;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = [[_HKMedicalIDMedication allocWithZone:?]];
  v5 = [(_HKMedicalIDMedication *)self textDescription];
  v6 = [v5 copy];
  [(_HKMedicalIDMedication *)v4 setTextDescription:v6];

  return v4;
}

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  v5 = [(_HKMedicalIDMedication *)self textDescription];
  [v4 encodeObject:v5 forKey:@"HKMedicalIDMedicationTextDescriptionKey"];
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = [(_HKMedicalIDMedication *)self textDescription];
    v6 = [v4 textDescription];
    if (v5 == v6)
    {
      v10 = 1;
    }

    else
    {
      v7 = [v4 textDescription];
      if (v7)
      {
        v8 = [(_HKMedicalIDMedication *)self textDescription];
        v9 = [v4 textDescription];
        v10 = [v8 isEqualToString:v9];
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