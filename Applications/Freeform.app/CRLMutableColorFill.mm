@interface CRLMutableColorFill
- (id)copyWithZone:(_NSZone *)zone;
- (void)setBrightness:(double)brightness;
- (void)setColor:(id)color;
- (void)setHue:(double)hue;
- (void)setOpacity:(double)opacity;
- (void)setSaturation:(double)saturation;
@end

@implementation CRLMutableColorFill

- (void)setColor:(id)color
{
  colorCopy = color;
  color = [(CRLColorFill *)self color];
  if (([color isEqual:colorCopy] & 1) == 0)
  {
    [(CRLColorFill *)self i_setColor:colorCopy];
  }
}

- (void)setOpacity:(double)opacity
{
  color = [(CRLColorFill *)self color];
  v5 = [color colorWithAlphaComponent:opacity];
  [(CRLMutableColorFill *)self setColor:v5];
}

- (void)setHue:(double)hue
{
  [(CRLColorFill *)self saturation];
  v6 = v5;
  [(CRLColorFill *)self brightness];
  v8 = v7;
  [(CRLColorFill *)self opacity];
  v10 = [CRLColor colorWithHue:hue saturation:v6 brightness:v8 alpha:v9];
  [(CRLMutableColorFill *)self setColor:v10];
}

- (void)setBrightness:(double)brightness
{
  [(CRLColorFill *)self hue];
  v6 = v5;
  [(CRLColorFill *)self saturation];
  v8 = v7;
  [(CRLColorFill *)self opacity];
  v10 = [CRLColor colorWithHue:v6 saturation:v8 brightness:brightness alpha:v9];
  [(CRLMutableColorFill *)self setColor:v10];
}

- (void)setSaturation:(double)saturation
{
  [(CRLColorFill *)self hue];
  v6 = v5;
  [(CRLColorFill *)self brightness];
  v8 = v7;
  [(CRLColorFill *)self opacity];
  v10 = [CRLColor colorWithHue:v6 saturation:saturation brightness:v8 alpha:v9];
  [(CRLMutableColorFill *)self setColor:v10];
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = [CRLColorFill alloc];
  color = [(CRLColorFill *)self color];
  v6 = [(CRLColorFill *)v4 initWithColor:color];

  return v6;
}

@end