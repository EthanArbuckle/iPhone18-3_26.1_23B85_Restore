@interface AudiogramGraphDetectorModel
- (_TtC18AudiogramIngestion27AudiogramGraphDetectorModel)initWithModelUrl:(id)a3 modelInputSize:(CGSize)a4 confidenceThreshold:(float)a5;
- (id)getGraphDetectorResult:(CGImage *)a3 orientation:(unsigned int)a4;
@end

@implementation AudiogramGraphDetectorModel

- (id)getGraphDetectorResult:(CGImage *)a3 orientation:(unsigned int)a4
{
  v4 = *&a4;
  v6 = a3;
  v7 = self;
  v8 = sub_2417D76E0(v6, v4);

  if (v8)
  {
    type metadata accessor for AudiogramGraphDetectorResult();
    v9 = sub_2417E422C();
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

- (_TtC18AudiogramIngestion27AudiogramGraphDetectorModel)initWithModelUrl:(id)a3 modelInputSize:(CGSize)a4 confidenceThreshold:(float)a5
{
  height = a4.height;
  width = a4.width;
  v8 = sub_2417E407C();
  v9 = *(v8 - 8);
  v10 = MEMORY[0x28223BE20](v8);
  v12 = &v17 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v14 = &v17 - v13;
  sub_2417E406C();
  (*(v9 + 16))(v12, v14, v8);
  v15 = AudiogramDetectorModel.init(modelUrl:modelInputSize:confidenceThreshold:)(v12, width, height, a5);
  (*(v9 + 8))(v14, v8);
  return v15;
}

@end