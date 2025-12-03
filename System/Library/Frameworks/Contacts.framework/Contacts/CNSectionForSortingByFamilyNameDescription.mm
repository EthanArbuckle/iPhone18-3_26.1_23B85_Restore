@interface CNSectionForSortingByFamilyNameDescription
- (BOOL)abPropertyID:(int *)d;
- (BOOL)isEqualForContact:(id)contact other:(id)other;
- (void)decodeUsingCoder:(id)coder contact:(id)contact;
@end

@implementation CNSectionForSortingByFamilyNameDescription

- (BOOL)isEqualForContact:(id)contact other:(id)other
{
  contactCopy = contact;
  otherCopy = other;
  sectionForSortingByFamilyName = [contactCopy sectionForSortingByFamilyName];
  if (!sectionForSortingByFamilyName)
  {
    sectionForSortingByFamilyName2 = [otherCopy sectionForSortingByFamilyName];
    if (!sectionForSortingByFamilyName2)
    {
      v11 = 1;
LABEL_6:

      goto LABEL_7;
    }
  }

  sectionForSortingByFamilyName3 = [contactCopy sectionForSortingByFamilyName];
  sectionForSortingByFamilyName4 = [otherCopy sectionForSortingByFamilyName];
  v11 = [sectionForSortingByFamilyName3 isEqual:sectionForSortingByFamilyName4];

  if (!sectionForSortingByFamilyName)
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
  v9 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"_sectionForSortingByFamilyName"];

  v7 = [v9 copy];
  v8 = contactCopy[23];
  contactCopy[23] = v7;
}

- (BOOL)abPropertyID:(int *)d
{
  if (d)
  {
    *d = *MEMORY[0x1E698A480];
  }

  return d != 0;
}

@end