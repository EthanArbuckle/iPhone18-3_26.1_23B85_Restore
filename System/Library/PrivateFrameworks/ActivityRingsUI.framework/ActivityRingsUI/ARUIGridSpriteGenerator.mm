@interface ARUIGridSpriteGenerator
+ (id)generatorWithSpriteCount:(unint64_t)count framesPerSprite:(unint64_t)sprite rowsPerSprite:(unint64_t)perSprite columnsPerSprite:(unint64_t)columnsPerSprite;
- (ARUIGridSpriteGenerator)initWithSpriteCount:(unint64_t)count framesPerSprite:(unint64_t)sprite rowsPerSprite:(unint64_t)perSprite columnsPerSprite:(unint64_t)columnsPerSprite;
- (__n64)originForSpriteAtIndex:(unint64_t)index;
- (float32x2_t)frameSize;
- (id)generateSprites;
- (id)spriteAtIndex:(unint64_t)index;
@end

@implementation ARUIGridSpriteGenerator

+ (id)generatorWithSpriteCount:(unint64_t)count framesPerSprite:(unint64_t)sprite rowsPerSprite:(unint64_t)perSprite columnsPerSprite:(unint64_t)columnsPerSprite
{
  v6 = [[ARUIGridSpriteGenerator alloc] initWithSpriteCount:count framesPerSprite:sprite rowsPerSprite:perSprite columnsPerSprite:columnsPerSprite];

  return v6;
}

- (ARUIGridSpriteGenerator)initWithSpriteCount:(unint64_t)count framesPerSprite:(unint64_t)sprite rowsPerSprite:(unint64_t)perSprite columnsPerSprite:(unint64_t)columnsPerSprite
{
  v11.receiver = self;
  v11.super_class = ARUIGridSpriteGenerator;
  result = [(ARUIGridSpriteGenerator *)&v11 init];
  if (result)
  {
    result->_spriteCount = count;
    result->_framesPerSprite = sprite;
    result->_columnsPerSprite = columnsPerSprite;
    result->_rowsPerSprite = perSprite;
  }

  return result;
}

- (float32x2_t)frameSize
{
  v1.i64[0] = self[3];
  v1.i64[1] = self[4] * self[1];
  __asm { FMOV            V1.2D, #1.0 }

  return vcvt_f32_f64(vdivq_f64(_Q1, vcvtq_f64_u64(v1)));
}

- (__n64)originForSpriteAtIndex:(unint64_t)index
{
  result.n64_u32[0] = 0;
  result.n64_f32[1] = index / *(self + 8);
  return result;
}

- (id)spriteAtIndex:(unint64_t)index
{
  v5 = [ARUISprite alloc];
  framesPerSprite = self->_framesPerSprite;
  columnsPerSprite = self->_columnsPerSprite;
  [(ARUIGridSpriteGenerator *)self originForSpriteAtIndex:index];
  v9 = v8;
  [(ARUIGridSpriteGenerator *)self frameSize];
  v11 = [(ARUISprite *)v5 initWithFrameCount:framesPerSprite frameColumns:columnsPerSprite firstFrameOrigin:v9 frameSize:v10];

  return v11;
}

- (id)generateSprites
{
  v3 = [MEMORY[0x1E695DF70] arrayWithCapacity:self->_spriteCount];
  if (self->_spriteCount)
  {
    v4 = 0;
    do
    {
      v5 = [(ARUIGridSpriteGenerator *)self spriteAtIndex:v4];
      [v3 addObject:v5];

      ++v4;
    }

    while (v4 < self->_spriteCount);
  }

  return v3;
}

@end