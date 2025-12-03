@interface CNDepartmentDescription
- (BOOL)abPropertyID:(int *)d;
- (BOOL)isEqualForContact:(id)contact other:(id)other;
- (void)decodeUsingCoder:(id)coder contact:(id)contact;
@end

@implementation CNDepartmentDescription

- (BOOL)isEqualForContact:(id)contact other:(id)other
{
  contactCopy = contact;
  otherCopy = other;
  departmentName = [contactCopy departmentName];
  if (!departmentName)
  {
    departmentName2 = [otherCopy departmentName];
    if (!departmentName2)
    {
      v11 = 1;
LABEL_6:

      goto LABEL_7;
    }
  }

  departmentName3 = [contactCopy departmentName];
  departmentName4 = [otherCopy departmentName];
  v11 = [departmentName3 isEqual:departmentName4];

  if (!departmentName)
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
  v9 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"_departmentName"];

  v7 = [v9 copy];
  v8 = contactCopy[25];
  contactCopy[25] = v7;
}

- (BOOL)abPropertyID:(int *)d
{
  if (d)
  {
    *d = *MEMORY[0x1E698A310];
  }

  return d != 0;
}

@end