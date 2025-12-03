@interface CNImageSyncFailedTimeDescription
- (BOOL)abPropertyID:(int *)d;
- (void)decodeUsingCoder:(id)coder contact:(id)contact;
@end

@implementation CNImageSyncFailedTimeDescription

- (void)decodeUsingCoder:(id)coder contact:(id)contact
{
  contactCopy = contact;
  coderCopy = coder;
  v9 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"_imageSyncFailedTime"];

  v7 = [v9 copy];
  v8 = contactCopy[88];
  contactCopy[88] = v7;
}

- (BOOL)abPropertyID:(int *)d
{
  if (d)
  {
    *d = *MEMORY[0x1E698A3B0];
  }

  return d != 0;
}

@end