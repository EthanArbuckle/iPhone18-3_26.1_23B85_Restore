@interface CNModificationDateDescription
- (BOOL)abPropertyID:(int *)d;
- (void)decodeUsingCoder:(id)coder contact:(id)contact;
@end

@implementation CNModificationDateDescription

- (void)decodeUsingCoder:(id)coder contact:(id)contact
{
  contactCopy = contact;
  coderCopy = coder;
  v9 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"_modificationDate"];

  v7 = [v9 copy];
  v8 = contactCopy[30];
  contactCopy[30] = v7;
}

- (BOOL)abPropertyID:(int *)d
{
  if (d)
  {
    *d = *MEMORY[0x1E698A4B8];
  }

  return d != 0;
}

@end