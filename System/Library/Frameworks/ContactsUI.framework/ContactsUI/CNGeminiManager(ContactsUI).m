@interface CNGeminiManager(ContactsUI)
+ (id)badgeForSenderIdentity:()ContactsUI;
+ (id)badgeForSubscription:()ContactsUI;
@end

@implementation CNGeminiManager(ContactsUI)

+ (id)badgeForSenderIdentity:()ContactsUI
{
  v3 = a3;
  v4 = [v3 localizedShortName];
  v5 = *MEMORY[0x1E6996568];
  if ((*(*MEMORY[0x1E6996568] + 16))(*MEMORY[0x1E6996568], v4))
  {
    v6 = [v3 localizedName];
    if ((*(v5 + 16))(v5, v6))
    {
      v7 = @"?";
    }

    else
    {
      v7 = [v6 _cn_take:1];
    }

    v4 = v7;
  }

  v8 = [CNGeminiBadge geminiBadgeWithText:v4];

  return v8;
}

+ (id)badgeForSubscription:()ContactsUI
{
  v3 = MEMORY[0x1E695CEB0];
  v4 = a3;
  v5 = objc_alloc_init(v3);
  v6 = [v5 badgeLabelForSubscription:v4 error:0];

  v7 = @"?";
  if (v6)
  {
    v7 = v6;
  }

  v8 = v7;

  v9 = [CNGeminiBadge geminiBadgeWithText:v8];

  return v9;
}

@end