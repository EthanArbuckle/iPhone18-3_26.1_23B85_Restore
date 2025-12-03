@interface ARUISprite
+ (id)randomSprite;
- (ARUISprite)initWithFrameCount:(ARUISprite *)self frameColumns:(SEL)columns firstFrameOrigin:(unint64_t)origin frameSize:(unint64_t)size;
- (ARUISprite)initWithSprite:(id)sprite;
- (BOOL)isEqual:(id)equal;
- (float32x2_t)textureRect;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (unint64_t)hash;
@end

@implementation ARUISprite

- (unint64_t)hash
{
  v3 = +[ARUIHashBuilder builder];
  [v3 appendUnsignedInt:self->_frameCount];
  [v3 appendUnsignedInt:self->_frameColumns];
  [v3 appendUnsignedInt:self->_currentFrameIndex];
  [v3 appendFloat2:*self->_firstFrameOrigin];
  [v3 appendFloat2:*self->_frameSize];
  p_size = &self->_size;
  *&v5 = vld1_dup_f32(p_size);
  [v3 appendFloat2:v5];
  [v3 appendFloat2:*self->_translation];
  *&v6 = self->_opacity;
  [v3 appendFloat:v6];
  v7 = [v3 hash];

  return v7;
}

- (float32x2_t)textureRect
{
  v1 = self[4];
  v2 = self[7];
  v3.i64[0] = *&v1 % *&v2;
  v3.i64[1] = *&v1 / *&v2;
  return vmla_f32(self[5], self[6], vcvt_f32_f64(vcvtq_f64_u64(v3)));
}

- (ARUISprite)initWithFrameCount:(ARUISprite *)self frameColumns:(SEL)columns firstFrameOrigin:(unint64_t)origin frameSize:(unint64_t)size
{
  v6 = v5;
  v7 = v4;
  v11.receiver = self;
  v11.super_class = ARUISprite;
  result = [(ARUISprite *)&v11 init];
  if (result)
  {
    result->_frameColumns = size;
    *result->_firstFrameOrigin = v7;
    *result->_frameSize = v6;
    *result->_translation = 0;
    result->_frameCount = origin;
    result->_currentFrameIndex = 0;
    *&result->_size = 0x3F80000043960000;
  }

  return result;
}

- (ARUISprite)initWithSprite:(id)sprite
{
  spriteCopy = sprite;
  frameCount = [spriteCopy frameCount];
  frameColumns = [spriteCopy frameColumns];
  [spriteCopy firstFrameOrigin];
  v8 = v7;
  [spriteCopy frameSize];
  v10 = [(ARUISprite *)self initWithFrameCount:frameCount frameColumns:frameColumns firstFrameOrigin:v8 frameSize:v9];
  if (v10)
  {
    v10->_currentFrameIndex = [spriteCopy currentFrameIndex];
    [spriteCopy size];
    v10->_size = v11;
    [spriteCopy translation];
    *v10->_translation = v12;
    [spriteCopy opacity];
    v10->_opacity = v13;
  }

  return v10;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = equalCopy;
    frameCount = self->_frameCount;
    if (frameCount == [v5 frameCount] && (frameColumns = self->_frameColumns, frameColumns == objc_msgSend(v5, "frameColumns")) && (currentFrameIndex = self->_currentFrameIndex, currentFrameIndex == objc_msgSend(v5, "currentFrameIndex")) && (v9 = *self->_firstFrameOrigin, objc_msgSend(v5, "firstFrameOrigin"), ARUIFloat2Equal(v9, v10)) && (v11 = *self->_frameSize, objc_msgSend(v5, "frameSize"), ARUIFloat2Equal(v11, v12)) && (p_size = &self->_size, v14 = vld1_dup_f32(p_size), objc_msgSend(v5, "size"), ARUIFloat2Equal(v14, vdup_lane_s32(v15, 0))) && (v16 = *self->_translation, objc_msgSend(v5, "translation"), ARUIFloat2Equal(v16, v17)))
    {
      opacity = self->_opacity;
      [v5 opacity];
      v20 = ARUIFloatEqual(opacity, v19);
    }

    else
    {
      v20 = 0;
    }
  }

  else
  {
    v20 = 0;
  }

  return v20;
}

- (id)description
{
  v7.receiver = self;
  v7.super_class = ARUISprite;
  v3 = [(ARUISprite *)&v7 description];
  v4 = [v3 substringWithRange:{0, objc_msgSend(v3, "length") - 1}];
  v5 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@, frame %lu/%lu>", v4, self->_currentFrameIndex, self->_frameCount];

  return v5;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = [ARUISprite allocWithZone:zone];

  return [(ARUISprite *)v4 initWithSprite:self];
}

+ (id)randomSprite
{
  v2 = ARUIRandomInt(0, 1000);
  v3 = [ARUISprite alloc];
  v4 = ARUIRandomInt(0, 1000);
  v5 = COERCE_DOUBLE(ARUIRandomFloat2(0.0, 1000.0));
  v6 = [(ARUISprite *)v3 initWithFrameCount:v2 frameColumns:v4 firstFrameOrigin:v5 frameSize:COERCE_DOUBLE(ARUIRandomFloat2(0.0, 1000.0))];
  *&v7 = ARUIRandomFloat(0.0, 1000.0);
  [(ARUISprite *)v6 setSize:v7];
  [(ARUISprite *)v6 setTranslation:COERCE_DOUBLE(ARUIRandomFloat2(0.0, 1000.0))];
  [(ARUISprite *)v6 setCurrentFrameIndex:ARUIRandomNSUInt(0, v2)];
  *&v8 = ARUIRandomFloat(0.0, 1.0);
  [(ARUISprite *)v6 setOpacity:v8];

  return v6;
}

@end