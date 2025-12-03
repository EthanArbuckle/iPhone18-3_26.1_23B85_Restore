@interface ARUIPipelineFactory
- (ARUIPipelineFactory)initWithDevice:(id)device library:(id)library;
- (ARUIPipelineFactory)initWithDeviceSPI:(id)i librarySPI:(id)pI;
@end

@implementation ARUIPipelineFactory

- (ARUIPipelineFactory)initWithDevice:(id)device library:(id)library
{
  v5.receiver = self;
  v5.super_class = ARUIPipelineFactory;
  return [(ARUIPipelineFactory *)&v5 init:device];
}

- (ARUIPipelineFactory)initWithDeviceSPI:(id)i librarySPI:(id)pI
{
  v5.receiver = self;
  v5.super_class = ARUIPipelineFactory;
  return [(ARUIPipelineFactory *)&v5 init:i];
}

@end