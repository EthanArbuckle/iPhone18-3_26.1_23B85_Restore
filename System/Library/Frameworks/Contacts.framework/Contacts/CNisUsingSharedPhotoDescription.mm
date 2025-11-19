@interface CNisUsingSharedPhotoDescription
- (id)CNValueForContact:(id)a3;
- (void)decodeUsingCoder:(id)a3 contact:(id)a4;
- (void)setCNValue:(id)a3 onContact:(id)a4;
@end

@implementation CNisUsingSharedPhotoDescription

- (void)decodeUsingCoder:(id)a3 contact:(id)a4
{
  v6 = a4;
  v5 = [a3 decodeBoolForKey:@"_isUsingSharedPhoto"];
  v6[376] = v5;

  MEMORY[0x1EEE66BB8](v5, v6);
}

- (id)CNValueForContact:(id)a3
{
  v3 = MEMORY[0x1E696AD98];
  v4 = [a3 isUsingSharedPhoto];

  return [v3 numberWithBool:v4];
}

- (void)setCNValue:(id)a3 onContact:(id)a4
{
  v5 = a4;
  [v5 setIsUsingSharedPhoto:{objc_msgSend(a3, "BOOLValue")}];
}

@end