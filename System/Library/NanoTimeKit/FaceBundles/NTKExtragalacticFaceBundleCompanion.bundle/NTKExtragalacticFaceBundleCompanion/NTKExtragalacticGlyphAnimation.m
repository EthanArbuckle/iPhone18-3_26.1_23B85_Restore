@interface NTKExtragalacticGlyphAnimation
+ (CGPoint)_randomTranslationForCorner:(unint64_t)a3;
+ (id)randomAnimationForCorner:(unint64_t)a3 device:(id)a4;
- (CGPoint)translate;
- (NTKExtragalacticGlyphAnimation)initWithRotation:(double)a3 translate:(CGPoint)a4;
- (id)debugDescription;
@end

@implementation NTKExtragalacticGlyphAnimation

- (NTKExtragalacticGlyphAnimation)initWithRotation:(double)a3 translate:(CGPoint)a4
{
  y = a4.y;
  x = a4.x;
  v8.receiver = self;
  v8.super_class = NTKExtragalacticGlyphAnimation;
  result = [(NTKExtragalacticGlyphAnimation *)&v8 init];
  if (result)
  {
    result->_scale = 0.97;
    result->_rotation = a3;
    result->_translate.x = x;
    result->_translate.y = y;
  }

  return result;
}

+ (id)randomAnimationForCorner:(unint64_t)a3 device:(id)a4
{
  v6 = a4;
  arc4random();
  arc4random_uniform(3u);
  CLKRoundForDevice();
  CLKDegreesToRadians();
  v8 = v7;
  [a1 _randomTranslationForCorner:a3];
  CLKPointRoundForDevice();
  v10 = v9;
  v12 = v11;

  v13 = [[NTKExtragalacticGlyphAnimation alloc] initWithRotation:v8 translate:v10, v12];

  return v13;
}

+ (CGPoint)_randomTranslationForCorner:(unint64_t)a3
{
  if (a3 > 3)
  {
    v5 = *MEMORY[0x277CBF348];
    v6 = *(MEMORY[0x277CBF348] + 8);
  }

  else
  {
    v3 = dbl_23BE560A8[a3];
    v4 = dbl_23BE560C8[a3];
    v5 = arc4random() * 8.0 / 4294967300.0 + v3;
    v6 = arc4random() * 8.0 / 4294967300.0 + v4;
  }

  v7 = v5;
  result.y = v6;
  result.x = v7;
  return result;
}

- (id)debugDescription
{
  v2 = MEMORY[0x277CCACA8];
  scale = self->_scale;
  rotation = self->_rotation;
  v5 = NSStringFromCGPoint(self->_translate);
  v6 = [v2 stringWithFormat:@"scale: %f rotation: %f; translation: %@", *&scale, *&rotation, v5];;

  return v6;
}

- (CGPoint)translate
{
  x = self->_translate.x;
  y = self->_translate.y;
  result.y = y;
  result.x = x;
  return result;
}

@end