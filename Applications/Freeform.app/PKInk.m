@interface PKInk
+ (BOOL)crl_isSixChannelBlendingUsedByInkType:(id)a3;
@end

@implementation PKInk

+ (BOOL)crl_isSixChannelBlendingUsedByInkType:(id)a3
{
  v3 = a3;
  if ([v3 isEqualToString:PKInkTypeMarker] & 1) != 0 || (objc_msgSend(v3, "isEqualToString:", PKInkTypeWatercolor))
  {
    v4 = 1;
  }

  else
  {
    v5 = +[_TtC8Freeform20PKInkTypeSwiftHelper reedInkType];
    v4 = [v3 isEqualToString:v5];
  }

  return v4;
}

@end