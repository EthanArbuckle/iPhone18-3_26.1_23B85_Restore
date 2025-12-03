@interface AudiogramDetectorModel
- (CGSize)modelInputSize;
- (NSURL)url;
- (_TtC18AudiogramIngestion22AudiogramDetectorModel)init;
- (_TtC18AudiogramIngestion22AudiogramDetectorModel)initWithModelUrl:(id)url modelInputSize:(CGSize)size confidenceThreshold:(float)threshold;
- (void)setModel:(id)model;
@end

@implementation AudiogramDetectorModel

- (void)setModel:(id)model
{
  v4 = *(self + OBJC_IVAR____TtC18AudiogramIngestion22AudiogramDetectorModel_model);
  *(self + OBJC_IVAR____TtC18AudiogramIngestion22AudiogramDetectorModel_model) = model;
  modelCopy = model;
}

- (NSURL)url
{
  v3 = sub_2417E407C();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v9 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v4 + 16))(v6, self + OBJC_IVAR____TtC18AudiogramIngestion22AudiogramDetectorModel_url, v3);
  v7 = sub_2417E405C();
  (*(v4 + 8))(v6, v3);

  return v7;
}

- (CGSize)modelInputSize
{
  v2 = *(self + OBJC_IVAR____TtC18AudiogramIngestion22AudiogramDetectorModel_modelInputSize);
  v3 = *(self + OBJC_IVAR____TtC18AudiogramIngestion22AudiogramDetectorModel_modelInputSize + 8);
  result.height = v3;
  result.width = v2;
  return result;
}

- (_TtC18AudiogramIngestion22AudiogramDetectorModel)initWithModelUrl:(id)url modelInputSize:(CGSize)size confidenceThreshold:(float)threshold
{
  height = size.height;
  width = size.width;
  v8 = sub_2417E407C();
  MEMORY[0x28223BE20](v8 - 8);
  v10 = &v12 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2417E406C();
  return AudiogramDetectorModel.init(modelUrl:modelInputSize:confidenceThreshold:)(v10, width, height, threshold);
}

- (_TtC18AudiogramIngestion22AudiogramDetectorModel)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end