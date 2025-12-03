@interface CarFocusOrderItem
+ (CarFocusOrderItem)itemWithFocusItem:(id)item;
+ (CarFocusOrderItem)itemWithRepresentativeItemType:(unint64_t)type;
- (BOOL)flipForRHD;
- (unint64_t)representativeItemType;
- (void)ifFocusItem:(id)item ifRepresentativeItem:(id)representativeItem;
@end

@implementation CarFocusOrderItem

+ (CarFocusOrderItem)itemWithRepresentativeItemType:(unint64_t)type
{
  v4 = objc_alloc_init(self);
  v5 = [NSNumber numberWithUnsignedInteger:type];
  [v4 setRepresentativeItemTypeNumber:v5];

  return v4;
}

+ (CarFocusOrderItem)itemWithFocusItem:(id)item
{
  itemCopy = item;
  v5 = objc_alloc_init(self);
  [v5 setFocusItem:itemCopy];

  [v5 setRepresentativeItemTypeNumber:&off_1016E9A88];

  return v5;
}

- (void)ifFocusItem:(id)item ifRepresentativeItem:(id)representativeItem
{
  itemCopy = item;
  representativeItemCopy = representativeItem;
  if (self->_focusItem)
  {
    v7 = itemCopy[2];
  }

  else
  {
    if (!self->_representativeItemTypeNumber)
    {
      goto LABEL_6;
    }

    [(CarFocusOrderItem *)self representativeItemType];
    v7 = representativeItemCopy[2];
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
  rightHandDrive = [v2 rightHandDrive];

  return rightHandDrive;
}

- (unint64_t)representativeItemType
{
  representativeItemTypeNumber = [(CarFocusOrderItem *)self representativeItemTypeNumber];
  unsignedIntegerValue = [representativeItemTypeNumber unsignedIntegerValue];

  return unsignedIntegerValue;
}

@end