@interface AudiogramSymbolDetectorModel
- (_TtC18AudiogramIngestion28AudiogramSymbolDetectorModel)initWithModelUrl:(id)url modelInputSize:(CGSize)size confidenceThreshold:(float)threshold;
- (_TtC18AudiogramIngestion28AudiogramSymbolDetectorModel)initWithModelUrl:(id)url modelInputSize:(CGSize)size confidenceThreshold:(float)threshold classNames:(id)names collisionMitigationClassNames:(id)classNames;
- (id)getSymbolDetectorResult:(CGImage *)result orientation:(unsigned int)orientation in:(id)in;
@end

@implementation AudiogramSymbolDetectorModel

- (_TtC18AudiogramIngestion28AudiogramSymbolDetectorModel)initWithModelUrl:(id)url modelInputSize:(CGSize)size confidenceThreshold:(float)threshold classNames:(id)names collisionMitigationClassNames:(id)classNames
{
  height = size.height;
  width = size.width;
  v11 = sub_2417E407C();
  v12 = *(v11 - 8);
  v13 = MEMORY[0x28223BE20](v11);
  v15 = &v22 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v17 = &v22 - v16;
  sub_2417E406C();
  v18 = sub_2417E424C();
  v19 = sub_2417E424C();
  *&self->_TtC18AudiogramIngestion22AudiogramDetectorModel_opaque[OBJC_IVAR____TtC18AudiogramIngestion28AudiogramSymbolDetectorModel_classNames] = v18;
  *&self->_TtC18AudiogramIngestion22AudiogramDetectorModel_opaque[OBJC_IVAR____TtC18AudiogramIngestion28AudiogramSymbolDetectorModel_collisionMitigationClassNames] = v19;
  (*(v12 + 16))(v15, v17, v11);
  v20 = AudiogramDetectorModel.init(modelUrl:modelInputSize:confidenceThreshold:)(v15, width, height, threshold);
  (*(v12 + 8))(v17, v11);
  return v20;
}

- (id)getSymbolDetectorResult:(CGImage *)result orientation:(unsigned int)orientation in:(id)in
{
  v6 = *&orientation;
  resultCopy = result;
  inCopy = in;
  selfCopy = self;
  v11 = sub_2417D67D8(resultCopy, v6, inCopy);

  if (v11)
  {
    type metadata accessor for AudiogramSymbolDetectorResult();
    v12 = sub_2417E422C();
  }

  else
  {
    v12 = 0;
  }

  return v12;
}

- (_TtC18AudiogramIngestion28AudiogramSymbolDetectorModel)initWithModelUrl:(id)url modelInputSize:(CGSize)size confidenceThreshold:(float)threshold
{
  v5 = sub_2417E407C();
  MEMORY[0x28223BE20](v5 - 8);
  sub_2417E406C();
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end