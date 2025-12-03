@interface _AXMVisionEngineAnalysisTask
+ (id)itemWithSource:(id)source context:(id)context;
- (_AXMVisionEngineAnalysisTask)initWithSource:(id)source context:(id)context;
@end

@implementation _AXMVisionEngineAnalysisTask

+ (id)itemWithSource:(id)source context:(id)context
{
  contextCopy = context;
  sourceCopy = source;
  v7 = [[_AXMVisionEngineAnalysisTask alloc] initWithSource:sourceCopy context:contextCopy];

  return v7;
}

- (_AXMVisionEngineAnalysisTask)initWithSource:(id)source context:(id)context
{
  sourceCopy = source;
  contextCopy = context;
  v12.receiver = self;
  v12.super_class = _AXMVisionEngineAnalysisTask;
  v8 = [(_AXMVisionEngineAnalysisTask *)&v12 init];
  v9 = v8;
  if (v8)
  {
    [(_AXMVisionEngineAnalysisTask *)v8 setSource:sourceCopy];
    [(_AXMVisionEngineAnalysisTask *)v9 setContext:contextCopy];
    uUID = [MEMORY[0x1E696AFB0] UUID];
    [(_AXMVisionEngineAnalysisTask *)v9 setIdentifier:uUID];
  }

  return v9;
}

@end