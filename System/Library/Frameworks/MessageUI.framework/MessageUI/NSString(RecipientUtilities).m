@interface NSString(RecipientUtilities)
+ (id)mf_commaSeparatedRecipientListWithRecipientCount:()RecipientUtilities prefixForRecipientAtIndex:stringForRecipientAtIndex:lengthValidationBlock:;
- (id)mf_copyDisplayableAddressComment;
@end

@implementation NSString(RecipientUtilities)

+ (id)mf_commaSeparatedRecipientListWithRecipientCount:()RecipientUtilities prefixForRecipientAtIndex:stringForRecipientAtIndex:lengthValidationBlock:
{
  v9 = a4;
  v10 = a5;
  v11 = a6;
  v12 = +[MFAddressConcatenator defaultRecipientListConcatenator];
  v13 = [v12 commaSeparatedAddressListWithAddressCount:a3 prefixForAddressAtIndex:v9 stringForAddressAtIndex:v10 lengthValidationBlock:v11];

  return v13;
}

- (id)mf_copyDisplayableAddressComment
{
  v1 = a1;
  v2 = [v1 emailAddressValue];
  v3 = [v2 displayName];
  v4 = v3;
  if (v3)
  {
    v5 = v3;
  }

  else
  {
    v5 = [v1 stringValue];
  }

  v6 = v5;

  v7 = [v6 ec_personNameComponents];

  if (v7)
  {
    [v7 setNamePrefix:0];
    [v7 setNameSuffix:0];
    v8 = objc_alloc_init(MEMORY[0x1E696ADF8]);
    [v8 setStyle:3];
    v9 = [v8 stringFromPersonNameComponents:v7];
  }

  else
  {
    v10 = v1;
    v11 = [v10 emailAddressValue];
    v12 = [v11 displayName];
    v13 = v12;
    if (v12)
    {
      v14 = v12;
    }

    else
    {
      v14 = [v10 stringValue];
    }

    v8 = v14;

    if (![v8 length])
    {
      v15 = 0;
      goto LABEL_12;
    }

    v9 = v8;
    v8 = v9;
  }

  v15 = v9;
LABEL_12:

  return v15;
}

@end