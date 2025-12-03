@interface CarFocusOrderEnvironment
+ (CarFocusOrderEnvironment)environmentWithFocusEnvironment:(id)environment;
+ (CarFocusOrderEnvironment)environmentWithRepresentativeItemType:(unint64_t)type;
- (unint64_t)representativeItemType;
- (void)ifFocusEnvironment:(id)environment ifRepresentativeItem:(id)item;
@end

@implementation CarFocusOrderEnvironment

+ (CarFocusOrderEnvironment)environmentWithRepresentativeItemType:(unint64_t)type
{
  v4 = objc_alloc_init(self);
  v5 = [NSNumber numberWithUnsignedInteger:type];
  [v4 setRepresentativeItemTypeNumber:v5];

  return v4;
}

+ (CarFocusOrderEnvironment)environmentWithFocusEnvironment:(id)environment
{
  environmentCopy = environment;
  v5 = objc_alloc_init(self);
  [v5 setFocusEnvironment:environmentCopy];

  [v5 setRepresentativeItemTypeNumber:&off_1016E9A88];

  return v5;
}

- (void)ifFocusEnvironment:(id)environment ifRepresentativeItem:(id)item
{
  environmentCopy = environment;
  itemCopy = item;
  if (self->_focusEnvironment)
  {
    v7 = environmentCopy[2];
  }

  else
  {
    if (!self->_representativeItemTypeNumber)
    {
      goto LABEL_6;
    }

    [(CarFocusOrderEnvironment *)self representativeItemType];
    v7 = itemCopy[2];
  }

  v7();
LABEL_6:
}

- (unint64_t)representativeItemType
{
  representativeItemTypeNumber = [(CarFocusOrderEnvironment *)self representativeItemTypeNumber];
  unsignedIntegerValue = [representativeItemTypeNumber unsignedIntegerValue];

  return unsignedIntegerValue;
}

@end