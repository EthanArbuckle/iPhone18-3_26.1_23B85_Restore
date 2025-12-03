@interface HKClinicalCodingCollection
- (BOOL)isEqual:(id)equal;
- (HKClinicalCodingCollection)init;
- (HKClinicalCodingCollection)initWithCoder:(id)coder;
- (HKClinicalCodingCollection)initWithText:(id)text codings:(id)codings;
- (void)encodeWithCoder:(id)coder;
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

- (HKClinicalCodingCollection)initWithText:(id)text codings:(id)codings
{
  textCopy = text;
  codingsCopy = codings;
  v14.receiver = self;
  v14.super_class = HKClinicalCodingCollection;
  v8 = [(HKClinicalCodingCollection *)&v14 init];
  if (v8)
  {
    v9 = [codingsCopy copy];
    codings = v8->_codings;
    v8->_codings = v9;

    v11 = [textCopy copy];
    text = v8->_text;
    v8->_text = v11;
  }

  return v8;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (self == equalCopy)
  {
    v14 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = equalCopy;
      codings = [(HKClinicalCodingCollection *)v5 codings];
      codings2 = [(HKClinicalCodingCollection *)self codings];
      v8 = codings2;
      if (codings == codings2)
      {
      }

      else
      {
        codings3 = [(HKClinicalCodingCollection *)self codings];
        if (!codings3)
        {
          goto LABEL_14;
        }

        v10 = codings3;
        codings4 = [(HKClinicalCodingCollection *)v5 codings];
        codings5 = [(HKClinicalCodingCollection *)self codings];
        v13 = [codings4 isEqualToSet:codings5];

        if (!v13)
        {
          goto LABEL_15;
        }
      }

      codings = [(HKClinicalCodingCollection *)v5 text];
      text = [(HKClinicalCodingCollection *)self text];
      v8 = text;
      if (codings == text)
      {

LABEL_17:
        v14 = 1;
        goto LABEL_18;
      }

      text2 = [(HKClinicalCodingCollection *)self text];
      if (text2)
      {
        v17 = text2;
        text3 = [(HKClinicalCodingCollection *)v5 text];
        text4 = [(HKClinicalCodingCollection *)self text];
        v20 = [text3 isEqualToString:text4];

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

- (HKClinicalCodingCollection)initWithCoder:(id)coder
{
  coderCopy = coder;
  v15.receiver = self;
  v15.super_class = HKClinicalCodingCollection;
  v5 = [(HKClinicalCodingCollection *)&v15 init];
  if (v5)
  {
    if (([coderCopy containsValueForKey:@"CodingsKey"] & 1) == 0)
    {
      v12 = objc_alloc(MEMORY[0x1E696ABC0]);
      v13 = [v12 initWithDomain:*MEMORY[0x1E696A250] code:4865 userInfo:0];
      [coderCopy failWithError:v13];

      v11 = 0;
      goto LABEL_6;
    }

    v6 = [MEMORY[0x1E695DFD8] hk_typesForSetOf:objc_opt_class()];
    v7 = [coderCopy decodeObjectOfClasses:v6 forKey:@"CodingsKey"];
    codings = v5->_codings;
    v5->_codings = v7;

    v9 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"TextKey"];
    text = v5->_text;
    v5->_text = v9;
  }

  v11 = v5;
LABEL_6:

  return v11;
}

- (void)encodeWithCoder:(id)coder
{
  codings = self->_codings;
  coderCopy = coder;
  [coderCopy encodeObject:codings forKey:@"CodingsKey"];
  [coderCopy encodeObject:self->_text forKey:@"TextKey"];
}

@end