@interface HKClinicalCodingCollection
- (BOOL)isEqual:(id)a3;
- (HKClinicalCodingCollection)init;
- (HKClinicalCodingCollection)initWithCoder:(id)a3;
- (HKClinicalCodingCollection)initWithText:(id)a3 codings:(id)a4;
- (void)encodeWithCoder:(id)a3;
@end

@implementation HKClinicalCodingCollection

- (HKClinicalCodingCollection)init
{
  v3 = MEMORY[0x1E695DF30];
  v4 = *MEMORY[0x1E695D940];
  v5 = NSStringFromSelector(a2);
  [v3 raise:v4 format:{@"The -%@ method is not available on %@", v5, objc_opt_class()}];

  return 0;
}

- (HKClinicalCodingCollection)initWithText:(id)a3 codings:(id)a4
{
  v6 = a3;
  v7 = a4;
  v14.receiver = self;
  v14.super_class = HKClinicalCodingCollection;
  v8 = [(HKClinicalCodingCollection *)&v14 init];
  if (v8)
  {
    v9 = [v7 copy];
    codings = v8->_codings;
    v8->_codings = v9;

    v11 = [v6 copy];
    text = v8->_text;
    v8->_text = v11;
  }

  return v8;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (self == v4)
  {
    v14 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = v4;
      v6 = [(HKClinicalCodingCollection *)v5 codings];
      v7 = [(HKClinicalCodingCollection *)self codings];
      v8 = v7;
      if (v6 == v7)
      {
      }

      else
      {
        v9 = [(HKClinicalCodingCollection *)self codings];
        if (!v9)
        {
          goto LABEL_14;
        }

        v10 = v9;
        v11 = [(HKClinicalCodingCollection *)v5 codings];
        v12 = [(HKClinicalCodingCollection *)self codings];
        v13 = [v11 isEqualToSet:v12];

        if (!v13)
        {
          goto LABEL_15;
        }
      }

      v6 = [(HKClinicalCodingCollection *)v5 text];
      v15 = [(HKClinicalCodingCollection *)self text];
      v8 = v15;
      if (v6 == v15)
      {

LABEL_17:
        v14 = 1;
        goto LABEL_18;
      }

      v16 = [(HKClinicalCodingCollection *)self text];
      if (v16)
      {
        v17 = v16;
        v18 = [(HKClinicalCodingCollection *)v5 text];
        v19 = [(HKClinicalCodingCollection *)self text];
        v20 = [v18 isEqualToString:v19];

        if (v20)
        {
          goto LABEL_17;
        }

LABEL_15:
        v14 = 0;
LABEL_18:

        goto LABEL_19;
      }

LABEL_14:

      goto LABEL_15;
    }

    v14 = 0;
  }

LABEL_19:

  return v14;
}

- (HKClinicalCodingCollection)initWithCoder:(id)a3
{
  v4 = a3;
  v15.receiver = self;
  v15.super_class = HKClinicalCodingCollection;
  v5 = [(HKClinicalCodingCollection *)&v15 init];
  if (v5)
  {
    if (([v4 containsValueForKey:@"CodingsKey"] & 1) == 0)
    {
      v12 = objc_alloc(MEMORY[0x1E696ABC0]);
      v13 = [v12 initWithDomain:*MEMORY[0x1E696A250] code:4865 userInfo:0];
      [v4 failWithError:v13];

      v11 = 0;
      goto LABEL_6;
    }

    v6 = [MEMORY[0x1E695DFD8] hk_typesForSetOf:objc_opt_class()];
    v7 = [v4 decodeObjectOfClasses:v6 forKey:@"CodingsKey"];
    codings = v5->_codings;
    v5->_codings = v7;

    v9 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"TextKey"];
    text = v5->_text;
    v5->_text = v9;
  }

  v11 = v5;
LABEL_6:

  return v11;
}

- (void)encodeWithCoder:(id)a3
{
  codings = self->_codings;
  v5 = a3;
  [v5 encodeObject:codings forKey:@"CodingsKey"];
  [v5 encodeObject:self->_text forKey:@"TextKey"];
}

@end