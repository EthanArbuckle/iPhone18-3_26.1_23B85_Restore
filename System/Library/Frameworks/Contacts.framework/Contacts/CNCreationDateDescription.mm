@interface CNCreationDateDescription
- (BOOL)abPropertyID:(int *)d;
- (void)decodeUsingCoder:(id)coder contact:(id)contact;
@end

@implementation CNCreationDateDescription

- (void)decodeUsingCoder:(id)coder contact:(id)contact
{
  contactCopy = contact;
  coderCopy = coder;
  v9 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"_creationDate"];

  v7 = [v9 copy];
  v8 = contactCopy[29];
  contactCopy[29] = v7;
}

- (BOOL)abPropertyID:(int *)d
{
  if (d)
  {
    *d = *MEMORY[0x1E698A2F8];
  }

  return d != 0;
}

@end