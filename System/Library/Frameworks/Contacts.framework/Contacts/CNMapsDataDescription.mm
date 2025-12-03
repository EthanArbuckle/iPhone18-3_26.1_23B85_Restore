@interface CNMapsDataDescription
- (BOOL)abPropertyID:(int *)d;
- (BOOL)isEqualForContact:(id)contact other:(id)other;
- (void)decodeUsingCoder:(id)coder contact:(id)contact;
@end

@implementation CNMapsDataDescription

- (BOOL)isEqualForContact:(id)contact other:(id)other
{
  contactCopy = contact;
  otherCopy = other;
  mapsData = [contactCopy mapsData];
  if (!mapsData)
  {
    mapsData2 = [otherCopy mapsData];
    if (!mapsData2)
    {
      v11 = 1;
LABEL_6:

      goto LABEL_7;
    }
  }

  mapsData3 = [contactCopy mapsData];
  mapsData4 = [otherCopy mapsData];
  v11 = [mapsData3 isEqual:mapsData4];

  if (!mapsData)
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
  v9 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"_mapsData"];

  v7 = [v9 copy];
  v8 = contactCopy[71];
  contactCopy[71] = v7;
}

- (BOOL)abPropertyID:(int *)d
{
  if (d)
  {
    *d = *MEMORY[0x1E698A498];
  }

  return d != 0;
}

@end