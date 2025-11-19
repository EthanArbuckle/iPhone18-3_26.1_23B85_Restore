@interface CNCreationDateDescription
- (BOOL)abPropertyID:(int *)a3;
- (void)decodeUsingCoder:(id)a3 contact:(id)a4;
@end

@implementation CNCreationDateDescription

- (void)decodeUsingCoder:(id)a3 contact:(id)a4
{
  v5 = a4;
  v6 = a3;
  v9 = [v6 decodeObjectOfClass:objc_opt_class() forKey:@"_creationDate"];

  v7 = [v9 copy];
  v8 = v5[29];
  v5[29] = v7;
}

- (BOOL)abPropertyID:(int *)a3
{
  if (a3)
  {
    *a3 = *MEMORY[0x1E698A2F8];
  }

  return a3 != 0;
}

@end