@interface FaceCoreLandmark
+ (id)landmarkWithType:(id)a3 pointCount:(unint64_t)a4 points:(CGPoint *)a5;
- (FaceCoreLandmark)initWithType:(id)a3 pointCount:(unint64_t)a4 points:(CGPoint *)a5;
- (void)dealloc;
@end

@implementation FaceCoreLandmark

+ (id)landmarkWithType:(id)a3 pointCount:(unint64_t)a4 points:(CGPoint *)a5
{
  v7 = a3;
  v8 = [[FaceCoreLandmark alloc] initWithType:v7 pointCount:a4 points:a5];

  return v8;
}

- (FaceCoreLandmark)initWithType:(id)a3 pointCount:(unint64_t)a4 points:(CGPoint *)a5
{
  v8 = a3;
  v15.receiver = self;
  v15.super_class = FaceCoreLandmark;
  v9 = [(FaceCoreLandmark *)&v15 init];
  if (v9)
  {
    v10 = [v8 copy];
    type = v9->type;
    v9->type = v10;

    v9->pointCount = a4;
    if (a4)
    {
      v12 = malloc_type_malloc(16 * a4, 0x1000040451B5BE8uLL);
      v9->points = v12;
      memcpy(v12, a5, 16 * v9->pointCount);
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