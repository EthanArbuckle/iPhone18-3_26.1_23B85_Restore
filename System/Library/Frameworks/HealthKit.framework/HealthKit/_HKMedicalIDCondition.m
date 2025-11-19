@interface _HKMedicalIDCondition
- (BOOL)isEqual:(id)a3;
- (_HKMedicalIDCondition)initWithCoder:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (void)encodeWithCoder:(id)a3;
@end

@implementation _HKMedicalIDCondition

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  v6 = [(_HKMedicalIDCondition *)self textDescription];
  v7 = [v3 stringWithFormat:@"[%@]:%@", v5, v6];

  return v7;
}

- (_HKMedicalIDCondition)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = [(_HKMedicalIDCondition *)self init];
  if (v5)
  {
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"HKMedicalIDConditionTextDescriptionKey"];
    [(_HKMedicalIDCondition *)v5 setTextDescription:v6];
  }

  return v5;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = [[_HKMedicalIDCondition allocWithZone:?]];
  v5 = [(_HKMedicalIDCondition *)self textDescription];
  v6 = [v5 copy];
  [(_HKMedicalIDCondition *)v4 setTextDescription:v6];

  return v4;
}

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  v5 = [(_HKMedicalIDCondition *)self textDescription];
  [v4 encodeObject:v5 forKey:@"HKMedicalIDConditionTextDescriptionKey"];
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = [(_HKMedicalIDCondition *)self textDescription];
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
        v8 = [(_HKMedicalIDCondition *)self textDescription];
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