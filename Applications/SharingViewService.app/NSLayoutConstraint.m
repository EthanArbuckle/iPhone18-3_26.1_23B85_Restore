@interface NSLayoutConstraint
- (double)d22Constant;
- (double)iPhoneSEConstant;
- (void)setD22Constant:(double)a3;
- (void)setIPhoneSEConstant:(double)a3;
@end

@implementation NSLayoutConstraint

- (void)setIPhoneSEConstant:(double)a3
{
  v5 = [NSNumber numberWithDouble:?];
  objc_setAssociatedObject(self, "iPhoneSEConstant", v5, 1);

  if (SFDeviceModelCodeGet() == 2)
  {

    [(NSLayoutConstraint *)self setConstant:a3];
  }
}

- (double)iPhoneSEConstant
{
  v2 = objc_getAssociatedObject(self, "iPhoneSEConstant");
  [v2 floatValue];
  v4 = v3;

  return v4;
}

- (void)setD22Constant:(double)a3
{
  v5 = [NSNumber numberWithDouble:?];
  objc_setAssociatedObject(self, "d22Constant", v5, 1);

  if (SFDeviceModelCodeGet() == 1)
  {

    [(NSLayoutConstraint *)self setConstant:a3];
  }
}

- (double)d22Constant
{
  v2 = objc_getAssociatedObject(self, "d22Constant");
  [v2 floatValue];
  v4 = v3;

  return v4;
}

@end