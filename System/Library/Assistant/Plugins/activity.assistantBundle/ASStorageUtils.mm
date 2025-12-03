@interface ASStorageUtils
+ (id)duetStoreForCommand:(id)command;
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

+ (id)duetStoreForCommand:(id)command
{
  commandCopy = command;
  privateDuetStore = [self privateDuetStore];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    activity = [commandCopy activity];
    visibility = [activity visibility];
    v8 = [visibility isEqualToString:SAAceActivityVisibilityTypePublicValue];

    if (v8)
    {
      publicDuetStore = [self publicDuetStore];

      privateDuetStore = publicDuetStore;
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

      visibility2 = [commandCopy visibility];
      v11 = [visibility2 isEqualToString:SAAceActivityVisibilityTypePublicValue];

      if (!v11)
      {
        goto LABEL_10;
      }
    }

    [self publicDuetStore];
    privateDuetStore = activity = privateDuetStore;
  }

LABEL_10:

  return privateDuetStore;
}

@end