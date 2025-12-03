@interface LPVisionAnalyzer
- (CGImage)resampleAndCropWithImage:(id)image width:(int64_t)width height:(int64_t)height;
- (LPVisionAnalyzer)init;
- (id)computeSimilarityOfFirstImage:(id)image with:(id)with error:(id *)error;
@end

@implementation LPVisionAnalyzer

- (CGImage)resampleAndCropWithImage:(id)image width:(int64_t)width height:(int64_t)height
{
  imageCopy = image;
  selfCopy = self;
  v10 = sub_1AE974204(imageCopy, width, height);

  return v10;
}

- (id)computeSimilarityOfFirstImage:(id)image with:(id)with error:(id *)error
{
  imageCopy = image;
  withCopy = with;
  selfCopy = self;
  v10 = sub_1AE972518(imageCopy, withCopy);

  return v10;
}

- (LPVisionAnalyzer)init
{
  v3 = OBJC_IVAR___LPVisionAnalyzer__sessionBox;
  _s12VNSessionBoxCMa();
  v4 = swift_allocObject();
  v5 = [objc_allocWithZone(MEMORY[0x1E6984688]) init];
  *(&self->super.isa + v3) = v4;
  *(v4 + 2) = v5;
  v7.receiver = self;
  v7.super_class = LPVisionAnalyzer;
  return [(LPVisionAnalyzer *)&v7 init];
}

@end