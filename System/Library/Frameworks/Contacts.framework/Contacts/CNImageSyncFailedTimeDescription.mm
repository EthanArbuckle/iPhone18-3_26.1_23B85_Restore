@interface CNImageSyncFailedTimeDescription
- (BOOL)abPropertyID:(int *)a3;
- (void)decodeUsingCoder:(id)a3 contact:(id)a4;
@end

@implementation CNImageSyncFailedTimeDescription

- (void)decodeUsingCoder:(id)a3 contact:(id)a4
{
  v5 = a4;
  v6 = a3;
  v9 = [v6 decodeObjectOfClass:objc_opt_class() forKey:@"_imageSyncFailedTime"];

  v7 = [v9 copy];
  v8 = v5[88];
  v5[88] = v7;
}

- (BOOL)abPropertyID:(int *)a3
{
  if (a3)
  {
    *a3 = *MEMORY[0x1E698A3B0];
  }

  return a3 != 0;
}

@end