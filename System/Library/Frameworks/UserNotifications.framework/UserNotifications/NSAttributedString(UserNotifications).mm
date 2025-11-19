@interface NSAttributedString(UserNotifications)
+ (id)_un_attributedStringWithRTFDData:()UserNotifications;
- (id)_un_RTFDData;
- (id)_un_attributedStringByKeepingOnlyAttachmentAttributes;
- (id)_un_truncatedAttributedStringToMaxLength:()UserNotifications;
@end

@implementation NSAttributedString(UserNotifications)

+ (id)_un_attributedStringWithRTFDData:()UserNotifications
{
  v15[2] = *MEMORY[0x1E69E9840];
  if (a3)
  {
    v14[0] = @"DocumentType";
    v14[1] = @"DefaultAttributes";
    v15[0] = @"NSRTFD";
    v15[1] = MEMORY[0x1E695E0F8];
    v3 = MEMORY[0x1E695DF20];
    v4 = a3;
    v5 = [v3 dictionaryWithObjects:v15 forKeys:v14 count:2];
    v13 = 0;
    v6 = [objc_alloc(MEMORY[0x1E696AD40]) initWithData:v4 options:v5 documentAttributes:0 error:&v13];

    v7 = v13;
    if (v7)
    {
      v8 = UNLogUtilities;
      if (os_log_type_enabled(UNLogUtilities, OS_LOG_TYPE_ERROR))
      {
        [NSAttributedString(UserNotifications) _un_attributedStringWithRTFDData:v8];
      }
    }

    v9 = [v6 length];
    [v6 removeAttribute:@"NSFont" range:{0, v9}];
    [v6 removeAttribute:@"NSParagraphStyle" range:{0, v9}];
    v10 = [v6 copy];
  }

  else
  {
    v10 = 0;
  }

  v11 = *MEMORY[0x1E69E9840];

  return v10;
}

- (id)_un_RTFDData
{
  v11[1] = *MEMORY[0x1E69E9840];
  v2 = [a1 length];
  v10 = @"DocumentType";
  v11[0] = @"NSRTFD";
  v3 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v11 forKeys:&v10 count:1];
  v9 = 0;
  v4 = [a1 dataFromRange:0 documentAttributes:v2 error:{v3, &v9}];
  v5 = v9;
  if (v5)
  {
    v6 = UNLogUtilities;
    if (os_log_type_enabled(UNLogUtilities, OS_LOG_TYPE_ERROR))
    {
      [(NSAttributedString(UserNotifications) *)v6 _un_RTFDData];
    }
  }

  v7 = *MEMORY[0x1E69E9840];

  return v4;
}

- (id)_un_truncatedAttributedStringToMaxLength:()UserNotifications
{
  if ([a1 length] <= a3)
  {
    v5 = a1;
  }

  else
  {
    v5 = [a1 attributedSubstringFromRange:{0, a3}];
  }

  return v5;
}

- (id)_un_attributedStringByKeepingOnlyAttachmentAttributes
{
  v2 = [a1 mutableCopy];
  v3 = [a1 length];
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __94__NSAttributedString_UserNotifications___un_attributedStringByKeepingOnlyAttachmentAttributes__block_invoke;
  v6[3] = &unk_1E7CFFAB8;
  v4 = v2;
  v7 = v4;
  [a1 enumerateAttributesInRange:0 options:v3 usingBlock:{0, v6}];

  return v4;
}

@end