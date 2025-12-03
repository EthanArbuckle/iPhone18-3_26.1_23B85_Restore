@interface CNJobTitleDescription
- (BOOL)abPropertyID:(int *)d;
- (BOOL)isEqualForContact:(id)contact other:(id)other;
- (void)decodeUsingCoder:(id)coder contact:(id)contact;
@end

@implementation CNJobTitleDescription

- (BOOL)isEqualForContact:(id)contact other:(id)other
{
  contactCopy = contact;
  otherCopy = other;
  jobTitle = [contactCopy jobTitle];
  if (!jobTitle)
  {
    jobTitle2 = [otherCopy jobTitle];
    if (!jobTitle2)
    {
      v11 = 1;
LABEL_6:

      goto LABEL_7;
    }
  }

  jobTitle3 = [contactCopy jobTitle];
  jobTitle4 = [otherCopy jobTitle];
  v11 = [jobTitle3 isEqual:jobTitle4];

  if (!jobTitle)
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
  v9 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"_jobTitle"];

  v7 = [v9 copy];
  v8 = contactCopy[26];
  contactCopy[26] = v7;
}

- (BOOL)abPropertyID:(int *)d
{
  if (d)
  {
    *d = *MEMORY[0x1E698A448];
  }

  return d != 0;
}

@end