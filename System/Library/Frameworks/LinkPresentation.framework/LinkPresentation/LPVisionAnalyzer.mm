@interface LPVisionAnalyzer
- (CGImage)resampleAndCropWithImage:(id)a3 width:(int64_t)a4 height:(int64_t)a5;
- (LPVisionAnalyzer)init;
- (id)computeSimilarityOfFirstImage:(id)a3 with:(id)a4 error:(id *)a5;
@end

@implementation LPVisionAnalyzer

- (CGImage)resampleAndCropWithImage:(id)a3 width:(int64_t)a4 height:(int64_t)a5
{
  v8 = a3;
  v9 = self;
  v10 = sub_1AE974204(v8, a4, a5);

  return v10;
}

- (id)computeSimilarityOfFirstImage:(id)a3 with:(id)a4 error:(id *)a5
{
  v7 = a3;
  v8 = a4;
  v9 = self;
  v10 = sub_1AE972518(v7, v8);

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