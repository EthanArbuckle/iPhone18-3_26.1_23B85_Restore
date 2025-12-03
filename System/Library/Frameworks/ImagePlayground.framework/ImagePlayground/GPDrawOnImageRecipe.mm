@interface GPDrawOnImageRecipe
- (BOOL)generateCaptionFromImage;
- (GPDrawOnImageRecipe)init;
- (GPDrawOnImageRecipe)initWithBaseImage:(__CVBuffer *)image sketchImage:(__CVBuffer *)sketchImage sketchMask:(__CVBuffer *)mask baseImageRatio:(double)ratio sketchComplexityMeasure:(double)measure drawOnImageAssignmentOptions:(int64_t)options;
- (GPDrawOnImageRecipe)initWithBaseImage:(__CVBuffer *)image sketchImage:(__CVBuffer *)sketchImage sketchMask:(__CVBuffer *)mask baseImageRatio:(double)ratio sketchComplexityMeasure:(double)measure generateCaptionFromImage:(BOOL)fromImage drawOnImageAssignmentOptions:(int64_t)options;
- (GPDrawOnImageRecipe)initWithBaseImage:(__CVBuffer *)image sketchImage:(__CVBuffer *)sketchImage sketchMask:(__CVBuffer *)mask baseImageRatio:(double)ratio sketchComplexityMeasure:(double)measure generateCaptionFromImage:(BOOL)fromImage sanitizationCategory:(int64_t)category drawOnImageAssignmentOptions:(int64_t)self0;
- (GPDrawOnImageRecipe)initWithBaseImage:(__CVBuffer *)image sketchImage:(__CVBuffer *)sketchImage sketchMask:(__CVBuffer *)mask sketchComplexityMeasure:(double)measure drawOnImageAssignmentOptions:(int64_t)options;
- (__CVBuffer)baseImage;
- (__CVBuffer)sketchImage;
- (__CVBuffer)sketchMask;
- (double)baseImageRatio;
- (double)sketchComplexityMeasure;
- (int64_t)drawOnImageAssignmentOptions;
- (int64_t)sanitizationCategory;
- (void)setBaseImageRatio:(double)ratio;
- (void)setDrawOnImageAssignmentOptions:(int64_t)options;
- (void)setGenerateCaptionFromImage:(BOOL)image;
- (void)setSanitizationCategory:(int64_t)category;
- (void)setSketchComplexityMeasure:(double)measure;
@end

@implementation GPDrawOnImageRecipe

- (__CVBuffer)baseImage
{
  selfCopy = self;
  v3 = GPDrawOnImageRecipe.baseImage.getter();

  return v3;
}

- (__CVBuffer)sketchImage
{
  selfCopy = self;
  v3 = GPDrawOnImageRecipe.sketchImage.getter();

  return v3;
}

- (__CVBuffer)sketchMask
{
  selfCopy = self;
  v3 = GPDrawOnImageRecipe.sketchMask.getter();

  return v3;
}

- (double)baseImageRatio
{
  v3 = OBJC_IVAR___GPDrawOnImageRecipe_baseImageRatio;
  swift_beginAccess();
  return *(&self->super.isa + v3);
}

- (void)setBaseImageRatio:(double)ratio
{
  v5 = OBJC_IVAR___GPDrawOnImageRecipe_baseImageRatio;
  swift_beginAccess();
  *(&self->super.isa + v5) = ratio;
}

- (double)sketchComplexityMeasure
{
  v3 = OBJC_IVAR___GPDrawOnImageRecipe_sketchComplexityMeasure;
  swift_beginAccess();
  return *(&self->super.isa + v3);
}

- (void)setSketchComplexityMeasure:(double)measure
{
  v5 = OBJC_IVAR___GPDrawOnImageRecipe_sketchComplexityMeasure;
  swift_beginAccess();
  *(&self->super.isa + v5) = measure;
}

- (BOOL)generateCaptionFromImage
{
  v3 = OBJC_IVAR___GPDrawOnImageRecipe_generateCaptionFromImage;
  swift_beginAccess();
  return *(&self->super.isa + v3);
}

- (void)setGenerateCaptionFromImage:(BOOL)image
{
  v5 = OBJC_IVAR___GPDrawOnImageRecipe_generateCaptionFromImage;
  swift_beginAccess();
  *(&self->super.isa + v5) = image;
}

- (int64_t)sanitizationCategory
{
  v3 = OBJC_IVAR___GPDrawOnImageRecipe_sanitizationCategory;
  swift_beginAccess();
  return *(&self->super.isa + v3);
}

- (void)setSanitizationCategory:(int64_t)category
{
  v5 = OBJC_IVAR___GPDrawOnImageRecipe_sanitizationCategory;
  swift_beginAccess();
  *(&self->super.isa + v5) = category;
}

- (int64_t)drawOnImageAssignmentOptions
{
  v3 = OBJC_IVAR___GPDrawOnImageRecipe_drawOnImageAssignmentOptions;
  swift_beginAccess();
  return *(&self->super.isa + v3);
}

- (void)setDrawOnImageAssignmentOptions:(int64_t)options
{
  v5 = OBJC_IVAR___GPDrawOnImageRecipe_drawOnImageAssignmentOptions;
  swift_beginAccess();
  *(&self->super.isa + v5) = options;
}

- (GPDrawOnImageRecipe)initWithBaseImage:(__CVBuffer *)image sketchImage:(__CVBuffer *)sketchImage sketchMask:(__CVBuffer *)mask baseImageRatio:(double)ratio sketchComplexityMeasure:(double)measure generateCaptionFromImage:(BOOL)fromImage sanitizationCategory:(int64_t)category drawOnImageAssignmentOptions:(int64_t)self0
{
  imageCopy = image;
  sketchImageCopy = sketchImage;
  maskCopy = mask;
  return GPDrawOnImageRecipe.init(baseImage:sketchImage:sketchMask:baseImageRatio:sketchComplexityMeasure:generateCaptionFromImage:sanitizationCategory:drawOnImageAssignmentOptions:)(image, sketchImage, mask, fromImage, category, options, ratio, measure);
}

- (GPDrawOnImageRecipe)initWithBaseImage:(__CVBuffer *)image sketchImage:(__CVBuffer *)sketchImage sketchMask:(__CVBuffer *)mask baseImageRatio:(double)ratio sketchComplexityMeasure:(double)measure generateCaptionFromImage:(BOOL)fromImage drawOnImageAssignmentOptions:(int64_t)options
{
  imageCopy = image;
  sketchImageCopy = sketchImage;
  maskCopy = mask;
  return GPDrawOnImageRecipe.init(baseImage:sketchImage:sketchMask:baseImageRatio:sketchComplexityMeasure:generateCaptionFromImage:drawOnImageAssignmentOptions:)(image, sketchImage, mask, fromImage, options, ratio, measure);
}

- (GPDrawOnImageRecipe)initWithBaseImage:(__CVBuffer *)image sketchImage:(__CVBuffer *)sketchImage sketchMask:(__CVBuffer *)mask baseImageRatio:(double)ratio sketchComplexityMeasure:(double)measure drawOnImageAssignmentOptions:(int64_t)options
{
  imageCopy = image;
  sketchImageCopy = sketchImage;
  maskCopy = mask;
  return GPDrawOnImageRecipe.init(baseImage:sketchImage:sketchMask:baseImageRatio:sketchComplexityMeasure:drawOnImageAssignmentOptions:)(image, sketchImage, mask, options, ratio, measure);
}

- (GPDrawOnImageRecipe)initWithBaseImage:(__CVBuffer *)image sketchImage:(__CVBuffer *)sketchImage sketchMask:(__CVBuffer *)mask sketchComplexityMeasure:(double)measure drawOnImageAssignmentOptions:(int64_t)options
{
  imageCopy = image;
  sketchImageCopy = sketchImage;
  maskCopy = mask;
  return GPDrawOnImageRecipe.init(baseImage:sketchImage:sketchMask:sketchComplexityMeasure:drawOnImageAssignmentOptions:)(image, sketchImage, mask, options, measure);
}

- (GPDrawOnImageRecipe)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end