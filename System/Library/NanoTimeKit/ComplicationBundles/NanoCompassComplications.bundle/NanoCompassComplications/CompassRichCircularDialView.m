@interface CompassRichCircularDialView
- (id)_needleNorthImageName;
- (id)_needleSouthImageName;
- (id)_ticksImageName;
@end

@implementation CompassRichCircularDialView

- (id)_ticksImageName
{
  if (objc_msgSend_supportsGossamer(self, a2, v2, v3))
  {
    return @"Compass/Circular/Ticks";
  }

  else
  {
    return @"Compass/Legacy/Circular/Ticks";
  }
}

- (id)_needleNorthImageName
{
  if (objc_msgSend_supportsGossamer(self, a2, v2, v3))
  {
    return @"Compass/Circular/Needle North";
  }

  else
  {
    return @"Compass/Legacy/Circular/Needle North";
  }
}

- (id)_needleSouthImageName
{
  if (objc_msgSend_supportsGossamer(self, a2, v2, v3))
  {
    return 0;
  }

  else
  {
    return @"Compass/Legacy/Circular/Needle South";
  }
}

@end