@interface PKInk
+ (BOOL)crl_isSixChannelBlendingUsedByInkType:(id)type;
@end

@implementation PKInk

+ (BOOL)crl_isSixChannelBlendingUsedByInkType:(id)type
{
  typeCopy = type;
  if ([typeCopy isEqualToString:PKInkTypeMarker] & 1) != 0 || (objc_msgSend(typeCopy, "isEqualToString:", PKInkTypeWatercolor))
  {
    v4 = 1;
  }

  else
  {
    v5 = +[_TtC8Freeform20PKInkTypeSwiftHelper reedInkType];
    v4 = [typeCopy isEqualToString:v5];
  }

  return v4;
}

@end