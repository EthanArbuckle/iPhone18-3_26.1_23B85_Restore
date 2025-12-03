@interface FaceCoreLandmark
+ (id)landmarkWithType:(id)type pointCount:(unint64_t)count points:(CGPoint *)points;
- (FaceCoreLandmark)initWithType:(id)type pointCount:(unint64_t)count points:(CGPoint *)points;
- (void)dealloc;
@end

@implementation FaceCoreLandmark

+ (id)landmarkWithType:(id)type pointCount:(unint64_t)count points:(CGPoint *)points
{
  typeCopy = type;
  v8 = [[FaceCoreLandmark alloc] initWithType:typeCopy pointCount:count points:points];

  return v8;
}

- (FaceCoreLandmark)initWithType:(id)type pointCount:(unint64_t)count points:(CGPoint *)points
{
  typeCopy = type;
  v15.receiver = self;
  v15.super_class = FaceCoreLandmark;
  v9 = [(FaceCoreLandmark *)&v15 init];
  if (v9)
  {
    v10 = [typeCopy copy];
    type = v9->type;
    v9->type = v10;

    v9->pointCount = count;
    if (count)
    {
      v12 = malloc_type_malloc(16 * count, 0x1000040451B5BE8uLL);
      v9->points = v12;
      memcpy(v12, points, 16 * v9->pointCount);
    }

    v13 = v9;
  }

  return v9;
}

- (void)dealloc
{
  if (self->pointCount)
  {
    free(self->points);
  }

  v3.receiver = self;
  v3.super_class = FaceCoreLandmark;
  [(FaceCoreLandmark *)&v3 dealloc];
}

@end