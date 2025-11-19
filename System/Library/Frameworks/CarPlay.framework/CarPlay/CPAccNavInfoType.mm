@interface CPAccNavInfoType
+ (id)stringForUpdateClass:(Class)a3 infoType:(unsigned __int16)a4;
@end

@implementation CPAccNavInfoType

+ (id)stringForUpdateClass:(Class)a3 infoType:(unsigned __int16)a4
{
  v4 = a4;
  if (objc_opt_class() == a3)
  {
    if ((v4 - 1) >= 3)
    {
      v6 = @"DisplayComponentID";
      goto LABEL_15;
    }

    v7 = (v4 - 1);
    v8 = off_278A10DB8;
    goto LABEL_10;
  }

  if (objc_opt_class() == a3)
  {
    if ((v4 - 1) >= 3)
    {
      v6 = @"Index";
      goto LABEL_15;
    }

    v7 = (v4 - 1);
    v8 = off_278A10DD0;
LABEL_10:
    v6 = v8[v7];
    goto LABEL_15;
  }

  if (objc_opt_class() == a3)
  {
    v6 = NSStringFromAccNavManeuverInfoUpdateInfoType(v4);
  }

  else if (objc_opt_class() == a3)
  {
    v6 = NSStringFromAccNavRouteGuidanceUpdateInfoType(v4);
  }

  else
  {
    v6 = @"<ERROR>";
  }

LABEL_15:

  return v6;
}

@end