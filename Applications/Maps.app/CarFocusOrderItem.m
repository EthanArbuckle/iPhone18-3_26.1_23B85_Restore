@interface CarFocusOrderItem
+ (CarFocusOrderItem)itemWithFocusItem:(id)a3;
+ (CarFocusOrderItem)itemWithRepresentativeItemType:(unint64_t)a3;
- (BOOL)flipForRHD;
- (unint64_t)representativeItemType;
- (void)ifFocusItem:(id)a3 ifRepresentativeItem:(id)a4;
@end

@implementation CarFocusOrderItem

+ (CarFocusOrderItem)itemWithRepresentativeItemType:(unint64_t)a3
{
  v4 = objc_alloc_init(a1);
  v5 = [NSNumber numberWithUnsignedInteger:a3];
  [v4 setRepresentativeItemTypeNumber:v5];

  return v4;
}

+ (CarFocusOrderItem)itemWithFocusItem:(id)a3
{
  v4 = a3;
  v5 = objc_alloc_init(a1);
  [v5 setFocusItem:v4];

  [v5 setRepresentativeItemTypeNumber:&off_1016E9A88];

  return v5;
}

- (void)ifFocusItem:(id)a3 ifRepresentativeItem:(id)a4
{
  v8 = a3;
  v6 = a4;
  if (self->_focusItem)
  {
    v7 = v8[2];
  }

  else
  {
    if (!self->_representativeItemTypeNumber)
    {
      goto LABEL_6;
    }

    [(CarFocusOrderItem *)self representativeItemType];
    v7 = v6[2];
  }

  v7();
LABEL_6:
}

- (BOOL)flipForRHD
{
  if (!self->_flipForRHD)
  {
    return 0;
  }

  v2 = +[MapsExternalDevice sharedInstance];
  v3 = [v2 rightHandDrive];

  return v3;
}

- (unint64_t)representativeItemType
{
  v2 = [(CarFocusOrderItem *)self representativeItemTypeNumber];
  v3 = [v2 unsignedIntegerValue];

  return v3;
}

@end