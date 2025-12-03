@interface MKTransitShield
- (MKTransitShield)initWithShieldType:(int64_t)type text:(id)text color:(id)color;
@end

@implementation MKTransitShield

- (MKTransitShield)initWithShieldType:(int64_t)type text:(id)text color:(id)color
{
  textCopy = text;
  colorCopy = color;
  v18.receiver = self;
  v18.super_class = MKTransitShield;
  v10 = [(MKTransitShield *)&v18 init];
  v11 = v10;
  if (v10)
  {
    v10->_shieldType = type;
    v12 = [textCopy copy];
    shieldText = v11->_shieldText;
    v11->_shieldText = v12;

    v14 = [colorCopy copy];
    shieldColorString = v11->_shieldColorString;
    v11->_shieldColorString = v14;

    v16 = v11;
  }

  return v11;
}

@end