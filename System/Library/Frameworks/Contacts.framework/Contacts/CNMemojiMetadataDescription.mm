@interface CNMemojiMetadataDescription
- (BOOL)abPropertyID:(int *)d;
- (BOOL)isEqualForContact:(id)contact other:(id)other;
- (void)decodeUsingCoder:(id)coder contact:(id)contact;
@end

@implementation CNMemojiMetadataDescription

- (BOOL)isEqualForContact:(id)contact other:(id)other
{
  contactCopy = contact;
  otherCopy = other;
  memojiMetadata = [contactCopy memojiMetadata];
  if (!memojiMetadata)
  {
    memojiMetadata2 = [otherCopy memojiMetadata];
    if (!memojiMetadata2)
    {
      v11 = 1;
LABEL_6:

      goto LABEL_7;
    }
  }

  memojiMetadata3 = [contactCopy memojiMetadata];
  memojiMetadata4 = [otherCopy memojiMetadata];
  v11 = [memojiMetadata3 isEqual:memojiMetadata4];

  if (!memojiMetadata)
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
  v9 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"_memojiMetadata"];

  v7 = [v9 copy];
  v8 = contactCopy[80];
  contactCopy[80] = v7;
}

- (BOOL)abPropertyID:(int *)d
{
  if (d)
  {
    *d = *MEMORY[0x1E698A4A0];
  }

  return d != 0;
}

@end