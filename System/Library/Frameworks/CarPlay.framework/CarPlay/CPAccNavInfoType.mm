@interface CPAccNavInfoType
+ (id)stringForUpdateClass:(Class)class infoType:(unsigned __int16)type;
@end

@implementation CPAccNavInfoType

+ (id)stringForUpdateClass:(Class)class infoType:(unsigned __int16)type
{
  typeCopy = type;
  if (objc_opt_class() == class)
  {
    if ((typeCopy - 1) >= 3)
    {
      v6 = @"DisplayComponentID";
      goto LABEL_15;
    }

    v7 = (typeCopy - 1);
    v8 = off_278A10DB8;
    goto LABEL_10;
  }

  if (objc_opt_class() == class)
  {
    if ((typeCopy - 1) >= 3)
    {
      v6 = @"Index";
      goto LABEL_15;
    }

    v7 = (typeCopy - 1);
    v8 = off_278A10DD0;
LABEL_10:
    v6 = v8[v7];
    goto LABEL_15;
  }

  if (objc_opt_class() == class)
  {
    v6 = NSStringFromAccNavManeuverInfoUpdateInfoType(typeCopy);
  }

  else if (objc_opt_class() == class)
  {
    v6 = NSStringFromAccNavRouteGuidanceUpdateInfoType(typeCopy);
  }

  else
  {
    v6 = @"<ERROR>";
  }

LABEL_15:

  return v6;
}

@end