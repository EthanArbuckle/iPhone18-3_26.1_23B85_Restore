@interface CNPreviousFamilyNameDescription
- (BOOL)abPropertyID:(int *)d;
- (BOOL)canUnifyValue:(id)value withValue:(id)withValue;
- (BOOL)isEqualForContact:(id)contact other:(id)other;
- (void)decodeUsingCoder:(id)coder contact:(id)contact;
@end

@implementation CNPreviousFamilyNameDescription

- (BOOL)isEqualForContact:(id)contact other:(id)other
{
  contactCopy = contact;
  otherCopy = other;
  previousFamilyName = [contactCopy previousFamilyName];
  if (!previousFamilyName)
  {
    previousFamilyName2 = [otherCopy previousFamilyName];
    if (!previousFamilyName2)
    {
      v11 = 1;
LABEL_6:

      goto LABEL_7;
    }
  }

  previousFamilyName3 = [contactCopy previousFamilyName];
  previousFamilyName4 = [otherCopy previousFamilyName];
  v11 = [previousFamilyName3 isEqual:previousFamilyName4];

  if (!previousFamilyName)
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
  v9 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"_previousFamilyName"];

  v7 = [v9 copy];
  v8 = contactCopy[9];
  contactCopy[9] = v7;
}

- (BOOL)canUnifyValue:(id)value withValue:(id)withValue
{
  if (value)
  {
    valueCopy = value;
  }

  else
  {
    valueCopy = &stru_1F094DAB0;
  }

  if (withValue)
  {
    withValueCopy = withValue;
  }

  else
  {
    withValueCopy = &stru_1F094DAB0;
  }

  return [(__CFString *)valueCopy localizedCaseInsensitiveCompare:withValueCopy]== 0;
}

- (BOOL)abPropertyID:(int *)d
{
  if (d)
  {
    *d = *MEMORY[0x1E698A588];
  }

  return d != 0;
}

@end