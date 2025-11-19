@interface CRLGradientFillStop
+ (id)gradientStopWithColor:(id)a3 fraction:(double)a4;
+ (id)gradientStopWithColor:(id)a3 fraction:(double)a4 inflection:(double)a5;
- (BOOL)isEqual:(id)a3;
- (CRLGradientFillStop)initWithColor:(id)a3 fraction:(double)a4 inflection:(double)a5;
- (CRLGradientFillStop)initWithGradientStop:(id)a3;
- (id)gradientStopWithColor:(id)a3;
- (id)gradientStopWithInflection:(double)a3;
- (id)mutableCopyWithZone:(_NSZone *)a3;
@end

@implementation CRLGradientFillStop

- (CRLGradientFillStop)initWithColor:(id)a3 fraction:(double)a4 inflection:(double)a5
{
  v8 = a3;
  v12.receiver = self;
  v12.super_class = CRLGradientFillStop;
  v9 = [(CRLGradientFillStop *)&v12 init];
  v10 = v9;
  if (v9)
  {
    [(CRLGradientFillStop *)v9 p_setColor:v8];
    [(CRLGradientFillStop *)v10 p_setFraction:a4];
    [(CRLGradientFillStop *)v10 p_setInflection:a5];
  }

  return v10;
}

- (CRLGradientFillStop)initWithGradientStop:(id)a3
{
  if (self)
  {
    v3 = self;
    v4 = a3;
    v5 = [v4 color];
    [v4 fraction];
    v7 = v6;
    [v4 inflection];
    v9 = v8;

    v10 = [(CRLGradientFillStop *)v3 initWithColor:v5 fraction:v7 inflection:v9];
    return v10;
  }

  return self;
}

+ (id)gradientStopWithColor:(id)a3 fraction:(double)a4
{
  v6 = a3;
  v7 = [[a1 alloc] initWithColor:v6 fraction:a4 inflection:0.5];

  return v7;
}

+ (id)gradientStopWithColor:(id)a3 fraction:(double)a4 inflection:(double)a5
{
  v8 = a3;
  v9 = [[a1 alloc] initWithColor:v8 fraction:a4 inflection:a5];

  return v9;
}

- (BOOL)isEqual:(id)a3
{
  if (a3 == self)
  {
    return 1;
  }

  v4 = a3;
  v5 = objc_opt_class();
  v6 = sub_100014370(v5, v4);

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

- (id)mutableCopyWithZone:(_NSZone *)a3
{
  v4 = [CRLMutableGradientFillStop allocWithZone:a3];
  v5 = [(CRLGradientFillStop *)self color];
  [(CRLGradientFillStop *)self fraction];
  v7 = v6;
  [(CRLGradientFillStop *)self inflection];
  v9 = [(CRLGradientFillStop *)v4 initWithColor:v5 fraction:v7 inflection:v8];

  return v9;
}

- (id)gradientStopWithColor:(id)a3
{
  v4 = a3;
  v5 = objc_opt_class();
  [(CRLGradientFillStop *)self fraction];
  v7 = v6;
  [(CRLGradientFillStop *)self inflection];
  v9 = [v5 gradientStopWithColor:v4 fraction:v7 inflection:v8];

  return v9;
}

- (id)gradientStopWithInflection:(double)a3
{
  v4 = [(CRLGradientFillStop *)self color];
  [(CRLGradientFillStop *)self fraction];
  v5 = [CRLGradientFillStop gradientStopWithColor:"gradientStopWithColor:fraction:inflection:" fraction:v4 inflection:?];

  return v5;
}

@end