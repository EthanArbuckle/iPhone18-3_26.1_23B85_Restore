@interface CRLGradientFillStop
+ (id)gradientStopWithColor:(id)color fraction:(double)fraction;
+ (id)gradientStopWithColor:(id)color fraction:(double)fraction inflection:(double)inflection;
- (BOOL)isEqual:(id)equal;
- (CRLGradientFillStop)initWithColor:(id)color fraction:(double)fraction inflection:(double)inflection;
- (CRLGradientFillStop)initWithGradientStop:(id)stop;
- (id)gradientStopWithColor:(id)color;
- (id)gradientStopWithInflection:(double)inflection;
- (id)mutableCopyWithZone:(_NSZone *)zone;
@end

@implementation CRLGradientFillStop

- (CRLGradientFillStop)initWithColor:(id)color fraction:(double)fraction inflection:(double)inflection
{
  colorCopy = color;
  v12.receiver = self;
  v12.super_class = CRLGradientFillStop;
  v9 = [(CRLGradientFillStop *)&v12 init];
  v10 = v9;
  if (v9)
  {
    [(CRLGradientFillStop *)v9 p_setColor:colorCopy];
    [(CRLGradientFillStop *)v10 p_setFraction:fraction];
    [(CRLGradientFillStop *)v10 p_setInflection:inflection];
  }

  return v10;
}

- (CRLGradientFillStop)initWithGradientStop:(id)stop
{
  if (self)
  {
    selfCopy = self;
    stopCopy = stop;
    color = [stopCopy color];
    [stopCopy fraction];
    v7 = v6;
    [stopCopy inflection];
    v9 = v8;

    v10 = [(CRLGradientFillStop *)selfCopy initWithColor:color fraction:v7 inflection:v9];
    return v10;
  }

  return self;
}

+ (id)gradientStopWithColor:(id)color fraction:(double)fraction
{
  colorCopy = color;
  v7 = [[self alloc] initWithColor:colorCopy fraction:fraction inflection:0.5];

  return v7;
}

+ (id)gradientStopWithColor:(id)color fraction:(double)fraction inflection:(double)inflection
{
  colorCopy = color;
  v9 = [[self alloc] initWithColor:colorCopy fraction:fraction inflection:inflection];

  return v9;
}

- (BOOL)isEqual:(id)equal
{
  if (equal == self)
  {
    return 1;
  }

  equalCopy = equal;
  v5 = objc_opt_class();
  v6 = sub_100014370(v5, equalCopy);

  if (v6 && ((mFraction = self->mFraction, [v6 fraction], mFraction == v8) || vabdd_f64(mFraction, v8) < fabs(v8 * 0.000000999999997)) && (mColor = self->mColor, objc_msgSend(v6, "color"), v10 = objc_claimAutoreleasedReturnValue(), LODWORD(mColor) = -[CRLColor isEqual:](mColor, "isEqual:", v10), v10, mColor))
  {
    [v6 inflection];
    *&v11 = v11;
    mInflection = self->mInflection;
    v13 = *&v11 == mInflection;
  }

  else
  {
    v13 = 0;
  }

  return v13;
}

- (id)mutableCopyWithZone:(_NSZone *)zone
{
  v4 = [CRLMutableGradientFillStop allocWithZone:zone];
  color = [(CRLGradientFillStop *)self color];
  [(CRLGradientFillStop *)self fraction];
  v7 = v6;
  [(CRLGradientFillStop *)self inflection];
  v9 = [(CRLGradientFillStop *)v4 initWithColor:color fraction:v7 inflection:v8];

  return v9;
}

- (id)gradientStopWithColor:(id)color
{
  colorCopy = color;
  v5 = objc_opt_class();
  [(CRLGradientFillStop *)self fraction];
  v7 = v6;
  [(CRLGradientFillStop *)self inflection];
  v9 = [v5 gradientStopWithColor:colorCopy fraction:v7 inflection:v8];

  return v9;
}

- (id)gradientStopWithInflection:(double)inflection
{
  color = [(CRLGradientFillStop *)self color];
  [(CRLGradientFillStop *)self fraction];
  v5 = [CRLGradientFillStop gradientStopWithColor:"gradientStopWithColor:fraction:inflection:" fraction:color inflection:?];

  return v5;
}

@end