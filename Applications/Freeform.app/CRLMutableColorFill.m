@interface CRLMutableColorFill
- (id)copyWithZone:(_NSZone *)a3;
- (void)setBrightness:(double)a3;
- (void)setColor:(id)a3;
- (void)setHue:(double)a3;
- (void)setOpacity:(double)a3;
- (void)setSaturation:(double)a3;
@end

@implementation CRLMutableColorFill

- (void)setColor:(id)a3
{
  v5 = a3;
  v4 = [(CRLColorFill *)self color];
  if (([v4 isEqual:v5] & 1) == 0)
  {
    [(CRLColorFill *)self i_setColor:v5];
  }
}

- (void)setOpacity:(double)a3
{
  v6 = [(CRLColorFill *)self color];
  v5 = [v6 colorWithAlphaComponent:a3];
  [(CRLMutableColorFill *)self setColor:v5];
}

- (void)setHue:(double)a3
{
  [(CRLColorFill *)self saturation];
  v6 = v5;
  [(CRLColorFill *)self brightness];
  v8 = v7;
  [(CRLColorFill *)self opacity];
  v10 = [CRLColor colorWithHue:a3 saturation:v6 brightness:v8 alpha:v9];
  [(CRLMutableColorFill *)self setColor:v10];
}

- (void)setBrightness:(double)a3
{
  [(CRLColorFill *)self hue];
  v6 = v5;
  [(CRLColorFill *)self saturation];
  v8 = v7;
  [(CRLColorFill *)self opacity];
  v10 = [CRLColor colorWithHue:v6 saturation:v8 brightness:a3 alpha:v9];
  [(CRLMutableColorFill *)self setColor:v10];
}

- (void)setSaturation:(double)a3
{
  [(CRLColorFill *)self hue];
  v6 = v5;
  [(CRLColorFill *)self brightness];
  v8 = v7;
  [(CRLColorFill *)self opacity];
  v10 = [CRLColor colorWithHue:v6 saturation:a3 brightness:v8 alpha:v9];
  [(CRLMutableColorFill *)self setColor:v10];
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = [CRLColorFill alloc];
  v5 = [(CRLColorFill *)self color];
  v6 = [(CRLColorFill *)v4 initWithColor:v5];

  return v6;
}

@end