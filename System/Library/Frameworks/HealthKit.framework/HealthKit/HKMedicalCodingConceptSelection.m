@interface HKMedicalCodingConceptSelection
- (BOOL)isEqual:(id)a3;
- (HKMedicalCodingConceptSelection)init;
- (HKMedicalCodingConceptSelection)initWithCoder:(id)a3;
- (HKMedicalCodingConceptSelection)initWithMedicalCoding:(id)a3;
@end

@implementation HKMedicalCodingConceptSelection

- (HKMedicalCodingConceptSelection)init
{
  v3 = MEMORY[0x1E695DF30];
  v4 = *MEMORY[0x1E695D940];
  v5 = NSStringFromSelector(a2);
  [v3 raise:v4 format:{@"The -%@ method is not available on %@", v5, objc_opt_class()}];

  return 0;
}

- (HKMedicalCodingConceptSelection)initWithMedicalCoding:(id)a3
{
  v4 = a3;
  v9.receiver = self;
  v9.super_class = HKMedicalCodingConceptSelection;
  v5 = [(HKConceptSelection *)&v9 init];
  if (v5)
  {
    v6 = [v4 copy];
    coding = v5->_coding;
    v5->_coding = v6;
  }

  return v5;
}

- (HKMedicalCodingConceptSelection)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"coding"];
  if (v5)
  {
    self = [(HKMedicalCodingConceptSelection *)self initWithMedicalCoding:v5];
    v6 = self;
  }

  else
  {
    v7 = objc_alloc(MEMORY[0x1E696ABC0]);
    v8 = [v7 initWithDomain:*MEMORY[0x1E696A250] code:4865 userInfo:0];
    [v4 failWithError:v8];

    v6 = 0;
  }

  return v6;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (self == v4)
  {
    v12 = 1;
  }

  else
  {
    v6 = v4;
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) != 0 && (v14.receiver = self, v14.super_class = HKMedicalCodingConceptSelection, [(HKConceptSelection *)&v14 isEqual:v6]))
    {
      coding = self->_coding;
      v8 = [(HKMedicalCodingConceptSelection *)v6 coding];
      if (coding == v8)
      {
        v12 = 1;
      }

      else
      {
        v9 = [(HKMedicalCodingConceptSelection *)v6 coding];
        if (v9)
        {
          v10 = self->_coding;
          v11 = [(HKMedicalCodingConceptSelection *)v6 coding];
          v12 = [(HKMedicalCoding *)v10 isEqual:v11];
        }

        else
        {
          v12 = 0;
        }
      }
    }

    else
    {
      v12 = 0;
    }
  }

  return v12;
}

@end