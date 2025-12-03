@interface AudiogramGraphDetectorModel
- (_TtC18AudiogramIngestion27AudiogramGraphDetectorModel)initWithModelUrl:(id)url modelInputSize:(CGSize)size confidenceThreshold:(float)threshold;
- (id)getGraphDetectorResult:(CGImage *)result orientation:(unsigned int)orientation;
@end

@implementation AudiogramGraphDetectorModel

- (id)getGraphDetectorResult:(CGImage *)result orientation:(unsigned int)orientation
{
  v4 = *&orientation;
  resultCopy = result;
  selfCopy = self;
  v8 = sub_2417D76E0(resultCopy, v4);

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

- (_TtC18AudiogramIngestion27AudiogramGraphDetectorModel)initWithModelUrl:(id)url modelInputSize:(CGSize)size confidenceThreshold:(float)threshold
{
  height = size.height;
  width = size.width;
  v8 = sub_2417E407C();
  v9 = *(v8 - 8);
  v10 = MEMORY[0x28223BE20](v8);
  v12 = &v17 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v14 = &v17 - v13;
  sub_2417E406C();
  (*(v9 + 16))(v12, v14, v8);
  v15 = AudiogramDetectorModel.init(modelUrl:modelInputSize:confidenceThreshold:)(v12, width, height, threshold);
  (*(v9 + 8))(v14, v8);
  return v15;
}

@end