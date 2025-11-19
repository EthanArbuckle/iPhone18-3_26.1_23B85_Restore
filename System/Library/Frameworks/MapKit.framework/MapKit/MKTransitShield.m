@interface MKTransitShield
- (MKTransitShield)initWithShieldType:(int64_t)a3 text:(id)a4 color:(id)a5;
@end

@implementation MKTransitShield

- (MKTransitShield)initWithShieldType:(int64_t)a3 text:(id)a4 color:(id)a5
{
  v8 = a4;
  v9 = a5;
  v18.receiver = self;
  v18.super_class = MKTransitShield;
  v10 = [(MKTransitShield *)&v18 init];
  v11 = v10;
  if (v10)
  {
    v10->_shieldType = a3;
    v12 = [v8 copy];
    shieldText = v11->_shieldText;
    v11->_shieldText = v12;

    v14 = [v9 copy];
    shieldColorString = v11->_shieldColorString;
    v11->_shieldColorString = v14;

    v16 = v11;
  }

  return v11;
}

@end