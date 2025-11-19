@interface GPDrawOnImageRecipe
- (BOOL)generateCaptionFromImage;
- (GPDrawOnImageRecipe)init;
- (GPDrawOnImageRecipe)initWithBaseImage:(__CVBuffer *)a3 sketchImage:(__CVBuffer *)a4 sketchMask:(__CVBuffer *)a5 baseImageRatio:(double)a6 sketchComplexityMeasure:(double)a7 drawOnImageAssignmentOptions:(int64_t)a8;
- (GPDrawOnImageRecipe)initWithBaseImage:(__CVBuffer *)a3 sketchImage:(__CVBuffer *)a4 sketchMask:(__CVBuffer *)a5 baseImageRatio:(double)a6 sketchComplexityMeasure:(double)a7 generateCaptionFromImage:(BOOL)a8 drawOnImageAssignmentOptions:(int64_t)a9;
- (GPDrawOnImageRecipe)initWithBaseImage:(__CVBuffer *)a3 sketchImage:(__CVBuffer *)a4 sketchMask:(__CVBuffer *)a5 baseImageRatio:(double)a6 sketchComplexityMeasure:(double)a7 generateCaptionFromImage:(BOOL)a8 sanitizationCategory:(int64_t)a9 drawOnImageAssignmentOptions:(int64_t)a10;
- (GPDrawOnImageRecipe)initWithBaseImage:(__CVBuffer *)a3 sketchImage:(__CVBuffer *)a4 sketchMask:(__CVBuffer *)a5 sketchComplexityMeasure:(double)a6 drawOnImageAssignmentOptions:(int64_t)a7;
- (__CVBuffer)baseImage;
- (__CVBuffer)sketchImage;
- (__CVBuffer)sketchMask;
- (double)baseImageRatio;
- (double)sketchComplexityMeasure;
- (int64_t)drawOnImageAssignmentOptions;
- (int64_t)sanitizationCategory;
- (void)setBaseImageRatio:(double)a3;
- (void)setDrawOnImageAssignmentOptions:(int64_t)a3;
- (void)setGenerateCaptionFromImage:(BOOL)a3;
- (void)setSanitizationCategory:(int64_t)a3;
- (void)setSketchComplexityMeasure:(double)a3;
@end

@implementation GPDrawOnImageRecipe

- (__CVBuffer)baseImage
{
  v2 = self;
  v3 = GPDrawOnImageRecipe.baseImage.getter();

  return v3;
}

- (__CVBuffer)sketchImage
{
  v2 = self;
  v3 = GPDrawOnImageRecipe.sketchImage.getter();

  return v3;
}

- (__CVBuffer)sketchMask
{
  v2 = self;
  v3 = GPDrawOnImageRecipe.sketchMask.getter();

  return v3;
}

- (double)baseImageRatio
{
  v3 = OBJC_IVAR___GPDrawOnImageRecipe_baseImageRatio;
  swift_beginAccess();
  return *(&self->super.isa + v3);
}

- (void)setBaseImageRatio:(double)a3
{
  v5 = OBJC_IVAR___GPDrawOnImageRecipe_baseImageRatio;
  swift_beginAccess();
  *(&self->super.isa + v5) = a3;
}

- (double)sketchComplexityMeasure
{
  v3 = OBJC_IVAR___GPDrawOnImageRecipe_sketchComplexityMeasure;
  swift_beginAccess();
  return *(&self->super.isa + v3);
}

- (void)setSketchComplexityMeasure:(double)a3
{
  v5 = OBJC_IVAR___GPDrawOnImageRecipe_sketchComplexityMeasure;
  swift_beginAccess();
  *(&self->super.isa + v5) = a3;
}

- (BOOL)generateCaptionFromImage
{
  v3 = OBJC_IVAR___GPDrawOnImageRecipe_generateCaptionFromImage;
  swift_beginAccess();
  return *(&self->super.isa + v3);
}

- (void)setGenerateCaptionFromImage:(BOOL)a3
{
  v5 = OBJC_IVAR___GPDrawOnImageRecipe_generateCaptionFromImage;
  swift_beginAccess();
  *(&self->super.isa + v5) = a3;
}

- (int64_t)sanitizationCategory
{
  v3 = OBJC_IVAR___GPDrawOnImageRecipe_sanitizationCategory;
  swift_beginAccess();
  return *(&self->super.isa + v3);
}

- (void)setSanitizationCategory:(int64_t)a3
{
  v5 = OBJC_IVAR___GPDrawOnImageRecipe_sanitizationCategory;
  swift_beginAccess();
  *(&self->super.isa + v5) = a3;
}

- (int64_t)drawOnImageAssignmentOptions
{
  v3 = OBJC_IVAR___GPDrawOnImageRecipe_drawOnImageAssignmentOptions;
  swift_beginAccess();
  return *(&self->super.isa + v3);
}

- (void)setDrawOnImageAssignmentOptions:(int64_t)a3
{
  v5 = OBJC_IVAR___GPDrawOnImageRecipe_drawOnImageAssignmentOptions;
  swift_beginAccess();
  *(&self->super.isa + v5) = a3;
}

- (GPDrawOnImageRecipe)initWithBaseImage:(__CVBuffer *)a3 sketchImage:(__CVBuffer *)a4 sketchMask:(__CVBuffer *)a5 baseImageRatio:(double)a6 sketchComplexityMeasure:(double)a7 generateCaptionFromImage:(BOOL)a8 sanitizationCategory:(int64_t)a9 drawOnImageAssignmentOptions:(int64_t)a10
{
  v18 = a3;
  v19 = a4;
  v20 = a5;
  return GPDrawOnImageRecipe.init(baseImage:sketchImage:sketchMask:baseImageRatio:sketchComplexityMeasure:generateCaptionFromImage:sanitizationCategory:drawOnImageAssignmentOptions:)(a3, a4, a5, a8, a9, a10, a6, a7);
}

- (GPDrawOnImageRecipe)initWithBaseImage:(__CVBuffer *)a3 sketchImage:(__CVBuffer *)a4 sketchMask:(__CVBuffer *)a5 baseImageRatio:(double)a6 sketchComplexityMeasure:(double)a7 generateCaptionFromImage:(BOOL)a8 drawOnImageAssignmentOptions:(int64_t)a9
{
  v16 = a3;
  v17 = a4;
  v18 = a5;
  return GPDrawOnImageRecipe.init(baseImage:sketchImage:sketchMask:baseImageRatio:sketchComplexityMeasure:generateCaptionFromImage:drawOnImageAssignmentOptions:)(a3, a4, a5, a8, a9, a6, a7);
}

- (GPDrawOnImageRecipe)initWithBaseImage:(__CVBuffer *)a3 sketchImage:(__CVBuffer *)a4 sketchMask:(__CVBuffer *)a5 baseImageRatio:(double)a6 sketchComplexityMeasure:(double)a7 drawOnImageAssignmentOptions:(int64_t)a8
{
  v14 = a3;
  v15 = a4;
  v16 = a5;
  return GPDrawOnImageRecipe.init(baseImage:sketchImage:sketchMask:baseImageRatio:sketchComplexityMeasure:drawOnImageAssignmentOptions:)(a3, a4, a5, a8, a6, a7);
}

- (GPDrawOnImageRecipe)initWithBaseImage:(__CVBuffer *)a3 sketchImage:(__CVBuffer *)a4 sketchMask:(__CVBuffer *)a5 sketchComplexityMeasure:(double)a6 drawOnImageAssignmentOptions:(int64_t)a7
{
  v12 = a3;
  v13 = a4;
  v14 = a5;
  return GPDrawOnImageRecipe.init(baseImage:sketchImage:sketchMask:sketchComplexityMeasure:drawOnImageAssignmentOptions:)(a3, a4, a5, a7, a6);
}

- (GPDrawOnImageRecipe)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end