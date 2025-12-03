@interface CNImageDataAvailableDescription
- (BOOL)abPropertyID:(int *)d;
- (id)CNValueForContact:(id)contact;
- (void)ABValueForABPerson:(void *)person;
- (void)decodeUsingCoder:(id)coder contact:(id)contact;
- (void)setCNValue:(id)value onContact:(id)contact;
@end

@implementation CNImageDataAvailableDescription

- (void)decodeUsingCoder:(id)coder contact:(id)contact
{
  contactCopy = contact;
  v5 = [coder decodeBoolForKey:@"_imageDataAvailable"];
  contactCopy[320] = v5;

  MEMORY[0x1EEE66BB8](v5, contactCopy);
}

- (id)CNValueForContact:(id)contact
{
  v3 = MEMORY[0x1E696AD98];
  imageDataAvailable = [contact imageDataAvailable];

  return [v3 numberWithBool:imageDataAvailable];
}

- (void)setCNValue:(id)value onContact:(id)contact
{
  contactCopy = contact;
  [contactCopy setImageDataAvailable:{objc_msgSend(value, "BOOLValue")}];
}

- (BOOL)abPropertyID:(int *)d
{
  if (d)
  {
    *d = *MEMORY[0x1E698A160];
  }

  return d != 0;
}

- (void)ABValueForABPerson:(void *)person
{
  HasImageData = ABPersonHasImageData(person);
  v4 = MEMORY[0x1E695E4D0];
  if (!HasImageData)
  {
    v4 = MEMORY[0x1E695E4C0];
  }

  return *v4;
}

@end