@interface NSPersonNameComponentsFormatter(CNContactFormatterAdditions)
+ (id)formatterWithCNContactStyle:()CNContactFormatterAdditions;
+ (id)localizedStringFromContact:()CNContactFormatterAdditions contactStyle:options:;
+ (uint64_t)contactsNameOrderFromContact:()CNContactFormatterAdditions;
+ (uint64_t)contactsNameOrderFromPersonNameComponents:()CNContactFormatterAdditions;
- (id)stringFromContact:()CNContactFormatterAdditions;
@end

@implementation NSPersonNameComponentsFormatter(CNContactFormatterAdditions)

+ (id)formatterWithCNContactStyle:()CNContactFormatterAdditions
{
  v4 = objc_alloc_init(MEMORY[0x1E696ADF8]);
  v5 = v4;
  if (a3 > 999)
  {
    if (a3 == 1000)
    {
      v6 = 1;
    }

    else
    {
      if (a3 != 1001)
      {
        if (a3 == 1002)
        {
          [v4 setStyle:4];
          [v5 set_ignoresFallbacks:1];
        }

        goto LABEL_13;
      }

      v6 = 31;
    }

LABEL_12:
    [v4 setStyle:v6];
    goto LABEL_13;
  }

  if (!a3)
  {
    v6 = 3;
    goto LABEL_12;
  }

  if (a3 == 1)
  {
    [v4 setStyle:3];
    [v5 setPhonetic:1];
  }

LABEL_13:

  return v5;
}

+ (uint64_t)contactsNameOrderFromPersonNameComponents:()CNContactFormatterAdditions
{
  v4 = [MEMORY[0x1E696ADF8] _nameOrderWithOverridesForComponents:a3 options:0];

  return [a1 contactsNameOrderFromFoundationNameOrder:v4];
}

+ (uint64_t)contactsNameOrderFromContact:()CNContactFormatterAdditions
{
  v4 = a3;
  v5 = [v4 givenName];
  if (v5)
  {

LABEL_4:
    v6 = objc_alloc_init(MEMORY[0x1E696ADF0]);
    v7 = [v4 givenName];
    [v6 setGivenName:v7];

    v8 = [v4 familyName];
    [v6 setFamilyName:v8];

    goto LABEL_5;
  }

  v6 = [v4 familyName];

  if (v6)
  {
    goto LABEL_4;
  }

LABEL_5:
  v9 = [a1 contactsNameOrderFromPersonNameComponents:v6];

  return v9;
}

+ (id)localizedStringFromContact:()CNContactFormatterAdditions contactStyle:options:
{
  v6 = a3;
  v7 = [a1 formatterWithCNContactStyle:a4];
  v8 = [v7 stringFromContact:v6];

  return v8;
}

- (id)stringFromContact:()CNContactFormatterAdditions
{
  v2 = [MEMORY[0x1E696ADF0] componentsForContact:?];
  v3 = [a1 stringFromPersonNameComponents:v2];

  return v3;
}

@end