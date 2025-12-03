@interface CNBirthdayDescription
- (BOOL)abPropertyID:(int *)d;
- (BOOL)canUnifyValue:(id)value withValue:(id)withValue;
- (BOOL)isEqualForContact:(id)contact other:(id)other;
- (BOOL)isValidValue:(id)value error:(id *)error;
- (BOOL)isValue:(id)value preferredToUnifiedValue:(id)unifiedValue;
- (id)CNValueFromABBytes:(char *)bytes length:(unint64_t)length;
- (void)ABValueFromCNValue:(id)value;
- (void)decodeUsingCoder:(id)coder contact:(id)contact;
@end

@implementation CNBirthdayDescription

- (BOOL)isEqualForContact:(id)contact other:(id)other
{
  contactCopy = contact;
  otherCopy = other;
  birthday = [contactCopy birthday];
  if (!birthday)
  {
    birthday2 = [otherCopy birthday];
    if (!birthday2)
    {
      v11 = 1;
LABEL_6:

      goto LABEL_7;
    }
  }

  birthday3 = [contactCopy birthday];
  birthday4 = [otherCopy birthday];
  v11 = [birthday3 isEqual:birthday4];

  if (!birthday)
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
  v9 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"_birthday"];

  v7 = [v9 copy];
  v8 = contactCopy[27];
  contactCopy[27] = v7;
}

- (BOOL)canUnifyValue:(id)value withValue:(id)withValue
{
  valueCopy = value;
  withValueCopy = withValue;
  v8 = [valueCopy day];
  v9 = [withValueCopy day];
  month = [valueCopy month];
  month2 = [withValueCopy month];
  calendar = [valueCopy calendar];
  if (!calendar)
  {
    calendar2 = [withValueCopy calendar];
    if (!calendar2)
    {
      v14 = 1;
LABEL_6:

      goto LABEL_7;
    }
  }

  calendar3 = [valueCopy calendar];
  calendar4 = [withValueCopy calendar];
  v14 = [calendar3 isEqual:calendar4];

  if (!calendar)
  {
    goto LABEL_6;
  }

LABEL_7:

  year = [valueCopy year];
  year2 = [withValueCopy year];
  year3 = [valueCopy year];
  year4 = [withValueCopy year];
  v19 = 0;
  if (v8 == v9 && month == month2)
  {
    v20 = (year == 0x7FFFFFFFFFFFFFFFLL) ^ (year2 == 0x7FFFFFFFFFFFFFFFLL);
    if (year3 == year4)
    {
      v20 = 1;
    }

    v19 = v14 & v20;
  }

  return v19;
}

- (BOOL)isValue:(id)value preferredToUnifiedValue:(id)unifiedValue
{
  unifiedValueCopy = unifiedValue;
  year = [value year];
  year2 = [unifiedValueCopy year];

  return year != 0x7FFFFFFFFFFFFFFFLL && year2 == 0x7FFFFFFFFFFFFFFFLL;
}

- (BOOL)isValidValue:(id)value error:(id *)error
{
  valueCopy = value;
  v13.receiver = self;
  v13.super_class = CNBirthdayDescription;
  v7 = [(CNPropertyDescription *)&v13 isValidValue:valueCopy error:error];
  v8 = v7;
  if (valueCopy && v7)
  {
    v12 = 0;
    v8 = [CN areValidGregorianDayComponents:valueCopy error:&v12];
    v9 = v12;
    if (error && !v8)
    {
      v10 = [(CNPropertyDescription *)self key];
      *error = [CNErrorFactory errorByPrependingKeyPath:v10 toKeyPathsInError:v9];
    }
  }

  return v8;
}

- (id)CNValueFromABBytes:(char *)bytes length:(unint64_t)length
{
  v5 = [CNiOSABConversions dateFromABBytes:bytes length:length];

  return [(CNBirthdayDescription *)self CNValueFromABValue:v5];
}

- (BOOL)abPropertyID:(int *)d
{
  if (d)
  {
    *d = *MEMORY[0x1E698A2E0];
  }

  return d != 0;
}

- (void)ABValueFromCNValue:(id)value
{
  v3 = [MEMORY[0x1E6996698] dateFromDayComponents:value];
  v4 = v3;
  if (v3 && (v5 = CFRetain(v3)) != 0)
  {
    v6 = CFAutorelease(v5);
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

@end