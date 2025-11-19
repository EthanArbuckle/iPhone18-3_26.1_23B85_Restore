@interface _AXMVisionEngineAnalysisTask
+ (id)itemWithSource:(id)a3 context:(id)a4;
- (_AXMVisionEngineAnalysisTask)initWithSource:(id)a3 context:(id)a4;
@end

@implementation _AXMVisionEngineAnalysisTask

+ (id)itemWithSource:(id)a3 context:(id)a4
{
  v5 = a4;
  v6 = a3;
  v7 = [[_AXMVisionEngineAnalysisTask alloc] initWithSource:v6 context:v5];

  return v7;
}

- (_AXMVisionEngineAnalysisTask)initWithSource:(id)a3 context:(id)a4
{
  v6 = a3;
  v7 = a4;
  v12.receiver = self;
  v12.super_class = _AXMVisionEngineAnalysisTask;
  v8 = [(_AXMVisionEngineAnalysisTask *)&v12 init];
  v9 = v8;
  if (v8)
  {
    [(_AXMVisionEngineAnalysisTask *)v8 setSource:v6];
    [(_AXMVisionEngineAnalysisTask *)v9 setContext:v7];
    v10 = [MEMORY[0x1E696AFB0] UUID];
    [(_AXMVisionEngineAnalysisTask *)v9 setIdentifier:v10];
  }

  return v9;
}

@end