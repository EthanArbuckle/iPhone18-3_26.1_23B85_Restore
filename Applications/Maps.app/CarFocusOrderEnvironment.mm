@interface CarFocusOrderEnvironment
+ (CarFocusOrderEnvironment)environmentWithFocusEnvironment:(id)a3;
+ (CarFocusOrderEnvironment)environmentWithRepresentativeItemType:(unint64_t)a3;
- (unint64_t)representativeItemType;
- (void)ifFocusEnvironment:(id)a3 ifRepresentativeItem:(id)a4;
@end

@implementation CarFocusOrderEnvironment

+ (CarFocusOrderEnvironment)environmentWithRepresentativeItemType:(unint64_t)a3
{
  v4 = objc_alloc_init(a1);
  v5 = [NSNumber numberWithUnsignedInteger:a3];
  [v4 setRepresentativeItemTypeNumber:v5];

  return v4;
}

+ (CarFocusOrderEnvironment)environmentWithFocusEnvironment:(id)a3
{
  v4 = a3;
  v5 = objc_alloc_init(a1);
  [v5 setFocusEnvironment:v4];

  [v5 setRepresentativeItemTypeNumber:&off_1016E9A88];

  return v5;
}

- (void)ifFocusEnvironment:(id)a3 ifRepresentativeItem:(id)a4
{
  v8 = a3;
  v6 = a4;
  if (self->_focusEnvironment)
  {
    v7 = v8[2];
  }

  else
  {
    if (!self->_representativeItemTypeNumber)
    {
      goto LABEL_6;
    }

    [(CarFocusOrderEnvironment *)self representativeItemType];
    v7 = v6[2];
  }

  v7();
LABEL_6:
}

- (unint64_t)representativeItemType
{
  v2 = [(CarFocusOrderEnvironment *)self representativeItemTypeNumber];
  v3 = [v2 unsignedIntegerValue];

  return v3;
}

@end