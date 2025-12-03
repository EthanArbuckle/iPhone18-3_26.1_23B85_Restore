@interface NTKExtragalacticGlyphAnimation
+ (CGPoint)_randomTranslationForCorner:(unint64_t)corner;
+ (id)randomAnimationForCorner:(unint64_t)corner device:(id)device;
- (CGPoint)translate;
- (NTKExtragalacticGlyphAnimation)initWithRotation:(double)rotation translate:(CGPoint)translate;
- (id)debugDescription;
@end

@implementation NTKExtragalacticGlyphAnimation

- (NTKExtragalacticGlyphAnimation)initWithRotation:(double)rotation translate:(CGPoint)translate
{
  y = translate.y;
  x = translate.x;
  v8.receiver = self;
  v8.super_class = NTKExtragalacticGlyphAnimation;
  result = [(NTKExtragalacticGlyphAnimation *)&v8 init];
  if (result)
  {
    result->_scale = 0.97;
    result->_rotation = rotation;
    result->_translate.x = x;
    result->_translate.y = y;
  }

  return result;
}

+ (id)randomAnimationForCorner:(unint64_t)corner device:(id)device
{
  deviceCopy = device;
  arc4random();
  arc4random_uniform(3u);
  CLKRoundForDevice();
  CLKDegreesToRadians();
  v8 = v7;
  [self _randomTranslationForCorner:corner];
  CLKPointRoundForDevice();
  v10 = v9;
  v12 = v11;

  v13 = [[NTKExtragalacticGlyphAnimation alloc] initWithRotation:v8 translate:v10, v12];

  return v13;
}

+ (CGPoint)_randomTranslationForCorner:(unint64_t)corner
{
  if (corner > 3)
  {
    v5 = *MEMORY[0x277CBF348];
    v6 = *(MEMORY[0x277CBF348] + 8);
  }

  else
  {
    v3 = dbl_23BE560A8[corner];
    v4 = dbl_23BE560C8[corner];
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