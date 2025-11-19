@interface ASStorageUtils
+ (id)duetStoreForCommand:(id)a3;
+ (id)privateDuetStore;
+ (id)publicDuetStore;
@end

@implementation ASStorageUtils

+ (id)publicDuetStore
{
  if (qword_12AC0 != -1)
  {
    sub_76F8();
  }

  v3 = qword_12AB8;

  return v3;
}

+ (id)privateDuetStore
{
  if (qword_12AD0 != -1)
  {
    sub_770C();
  }

  v3 = qword_12AC8;

  return v3;
}

+ (id)duetStoreForCommand:(id)a3
{
  v4 = a3;
  v5 = [a1 privateDuetStore];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v6 = [v4 activity];
    v7 = [v6 visibility];
    v8 = [v7 isEqualToString:SAAceActivityVisibilityTypePublicValue];

    if (v8)
    {
      v9 = [a1 publicDuetStore];

      v5 = v9;
    }
  }

  else
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        objc_opt_class();
        if ((objc_opt_isKindOfClass() & 1) == 0)
        {
          goto LABEL_10;
        }
      }

      v10 = [v4 visibility];
      v11 = [v10 isEqualToString:SAAceActivityVisibilityTypePublicValue];

      if (!v11)
      {
        goto LABEL_10;
      }
    }

    [a1 publicDuetStore];
    v5 = v6 = v5;
  }

LABEL_10:

  return v5;
}

@end