@interface HKMedicalCodingConceptSelection
- (BOOL)isEqual:(id)equal;
- (HKMedicalCodingConceptSelection)init;
- (HKMedicalCodingConceptSelection)initWithCoder:(id)coder;
- (HKMedicalCodingConceptSelection)initWithMedicalCoding:(id)coding;
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

- (HKMedicalCodingConceptSelection)initWithMedicalCoding:(id)coding
{
  codingCopy = coding;
  v9.receiver = self;
  v9.super_class = HKMedicalCodingConceptSelection;
  v5 = [(HKConceptSelection *)&v9 init];
  if (v5)
  {
    v6 = [codingCopy copy];
    coding = v5->_coding;
    v5->_coding = v6;
  }

  return v5;
}

- (HKMedicalCodingConceptSelection)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"coding"];
  if (v5)
  {
    self = [(HKMedicalCodingConceptSelection *)self initWithMedicalCoding:v5];
    selfCopy = self;
  }

  else
  {
    v7 = objc_alloc(MEMORY[0x1E696ABC0]);
    v8 = [v7 initWithDomain:*MEMORY[0x1E696A250] code:4865 userInfo:0];
    [coderCopy failWithError:v8];

    selfCopy = 0;
  }

  return selfCopy;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  v5 = equalCopy;
  if (self == equalCopy)
  {
    v12 = 1;
  }

  else
  {
    v6 = equalCopy;
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) != 0 && (v14.receiver = self, v14.super_class = HKMedicalCodingConceptSelection, [(HKConceptSelection *)&v14 isEqual:v6]))
    {
      coding = self->_coding;
      coding = [(HKMedicalCodingConceptSelection *)v6 coding];
      if (coding == coding)
      {
        v12 = 1;
      }

      else
      {
        coding2 = [(HKMedicalCodingConceptSelection *)v6 coding];
        if (coding2)
        {
          v10 = self->_coding;
          coding3 = [(HKMedicalCodingConceptSelection *)v6 coding];
          v12 = [(HKMedicalCoding *)v10 isEqual:coding3];
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