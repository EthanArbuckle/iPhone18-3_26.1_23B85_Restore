@interface AudiogramSymbolDetectorModel
- (_TtC18AudiogramIngestion28AudiogramSymbolDetectorModel)initWithModelUrl:(id)a3 modelInputSize:(CGSize)a4 confidenceThreshold:(float)a5;
- (_TtC18AudiogramIngestion28AudiogramSymbolDetectorModel)initWithModelUrl:(id)a3 modelInputSize:(CGSize)a4 confidenceThreshold:(float)a5 classNames:(id)a6 collisionMitigationClassNames:(id)a7;
- (id)getSymbolDetectorResult:(CGImage *)a3 orientation:(unsigned int)a4 in:(id)a5;
@end

@implementation AudiogramSymbolDetectorModel

- (_TtC18AudiogramIngestion28AudiogramSymbolDetectorModel)initWithModelUrl:(id)a3 modelInputSize:(CGSize)a4 confidenceThreshold:(float)a5 classNames:(id)a6 collisionMitigationClassNames:(id)a7
{
  height = a4.height;
  width = a4.width;
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
  v20 = AudiogramDetectorModel.init(modelUrl:modelInputSize:confidenceThreshold:)(v15, width, height, a5);
  (*(v12 + 8))(v17, v11);
  return v20;
}

- (id)getSymbolDetectorResult:(CGImage *)a3 orientation:(unsigned int)a4 in:(id)a5
{
  v6 = *&a4;
  v8 = a3;
  v9 = a5;
  v10 = self;
  v11 = sub_2417D67D8(v8, v6, v9);

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

- (_TtC18AudiogramIngestion28AudiogramSymbolDetectorModel)initWithModelUrl:(id)a3 modelInputSize:(CGSize)a4 confidenceThreshold:(float)a5
{
  v5 = sub_2417E407C();
  MEMORY[0x28223BE20](v5 - 8);
  sub_2417E406C();
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end