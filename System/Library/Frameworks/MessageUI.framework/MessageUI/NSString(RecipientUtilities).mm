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
  selfCopy = self;
  emailAddressValue = [selfCopy emailAddressValue];
  displayName = [emailAddressValue displayName];
  v4 = displayName;
  if (displayName)
  {
    stringValue = displayName;
  }

  else
  {
    stringValue = [selfCopy stringValue];
  }

  v6 = stringValue;

  ec_personNameComponents = [v6 ec_personNameComponents];

  if (ec_personNameComponents)
  {
    [ec_personNameComponents setNamePrefix:0];
    [ec_personNameComponents setNameSuffix:0];
    v8 = objc_alloc_init(MEMORY[0x1E696ADF8]);
    [v8 setStyle:3];
    v9 = [v8 stringFromPersonNameComponents:ec_personNameComponents];
  }

  else
  {
    v10 = selfCopy;
    emailAddressValue2 = [v10 emailAddressValue];
    displayName2 = [emailAddressValue2 displayName];
    v13 = displayName2;
    if (displayName2)
    {
      stringValue2 = displayName2;
    }

    else
    {
      stringValue2 = [v10 stringValue];
    }

    v8 = stringValue2;

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