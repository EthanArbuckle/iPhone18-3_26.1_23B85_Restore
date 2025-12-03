@interface CNisUsingSharedPhotoDescription
- (id)CNValueForContact:(id)contact;
- (void)decodeUsingCoder:(id)coder contact:(id)contact;
- (void)setCNValue:(id)value onContact:(id)contact;
@end

@implementation CNisUsingSharedPhotoDescription

- (void)decodeUsingCoder:(id)coder contact:(id)contact
{
  contactCopy = contact;
  v5 = [coder decodeBoolForKey:@"_isUsingSharedPhoto"];
  contactCopy[376] = v5;

  MEMORY[0x1EEE66BB8](v5, contactCopy);
}

- (id)CNValueForContact:(id)contact
{
  v3 = MEMORY[0x1E696AD98];
  isUsingSharedPhoto = [contact isUsingSharedPhoto];

  return [v3 numberWithBool:isUsingSharedPhoto];
}

- (void)setCNValue:(id)value onContact:(id)contact
{
  contactCopy = contact;
  [contactCopy setIsUsingSharedPhoto:{objc_msgSend(value, "BOOLValue")}];
}

@end