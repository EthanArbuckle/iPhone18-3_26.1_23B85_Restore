@interface CNDatesDescription
- (BOOL)abPropertyID:(int *)d;
- (BOOL)canUnifyValue:(id)value withValue:(id)withValue;
- (BOOL)isEqualForContact:(id)contact other:(id)other;
- (BOOL)isValue:(id)value preferredToUnifiedValue:(id)unifiedValue;
- (id)CNLabeledValueValueFromABMultiValueValueBytes:(char *)bytes length:(unint64_t)length;
- (id)standardLabels;
- (void)ABMultiValueValueFromCNLabeledValueValue:(id)value;
- (void)decodeUsingCoder:(id)coder contact:(id)contact;
@end

@implementation CNDatesDescription

- (BOOL)isEqualForContact:(id)contact other:(id)other
{
  contactCopy = contact;
  otherCopy = other;
  dates = [contactCopy dates];
  if (!dates)
  {
    dates2 = [otherCopy dates];
    if (!dates2)
    {
      v11 = 1;
LABEL_6:

      goto LABEL_7;
    }
  }

  dates3 = [contactCopy dates];
  dates4 = [otherCopy dates];
  v11 = [dates3 isEqual:dates4];

  if (!dates)
  {
    goto LABEL_6;
  }

LABEL_7:

  return v11;
}

- (void)decodeUsingCoder:(id)coder contact:(id)contact
{
  v15 = *MEMORY[0x1E69E9840];
  coderCopy = coder;
  contactCopy = contact;
  v12 = objc_opt_class();
  v13 = objc_opt_class();
  v14 = objc_opt_class();
  v7 = [MEMORY[0x1E695DFD8] setWithObjects:&v12 count:3];
  for (i = 16; i != -8; i -= 8)
  {
  }

  v9 = [coderCopy decodeObjectOfClasses:v7 forKey:{@"_dates", v12, v13}];
  v10 = [v9 copy];
  v11 = contactCopy[51];
  contactCopy[51] = v10;
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

- (id)standardLabels
{
  if (standardLabels_cn_once_token_6 != -1)
  {
    [CNDatesDescription standardLabels];
  }

  v3 = standardLabels_cn_once_object_6;

  return v3;
}

uint64_t __36__CNDatesDescription_standardLabels__block_invoke()
{
  v0 = [objc_alloc(MEMORY[0x1E695DEC8]) initWithObjects:{@"_$!<Anniversary>!$_", @"_$!<Other>!$_", 0}];
  v1 = standardLabels_cn_once_object_6;
  standardLabels_cn_once_object_6 = v0;

  return MEMORY[0x1EEE66BB8](v0, v1);
}

- (id)CNLabeledValueValueFromABMultiValueValueBytes:(char *)bytes length:(unint64_t)length
{
  if (length == 8)
  {
    v5 = [MEMORY[0x1E695DF00] dateWithTimeIntervalSinceReferenceDate:*bytes];
    v6 = [(CNDatesDescription *)self CNLabeledValueValueFromABMultiValueValue:v5];
  }

  else
  {
    [MEMORY[0x1E695DF30] raise:*MEMORY[0x1E695D930] format:@"Date parameter was unexpectedly large during contact buffer decode."];
    v6 = 0;
  }

  return v6;
}

- (BOOL)abPropertyID:(int *)d
{
  if (d)
  {
    *d = *MEMORY[0x1E698A300];
  }

  return d != 0;
}

- (void)ABMultiValueValueFromCNLabeledValueValue:(id)value
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