@interface VTTestProcessorParameters
- (VTTestProcessorParameters)initWithSourceFrame:(id)frame nextFrame:(id)nextFrame previousFrame:(id)previousFrame destinationFrame:(id)destinationFrame;
- (void)dealloc;
@end

@implementation VTTestProcessorParameters

- (VTTestProcessorParameters)initWithSourceFrame:(id)frame nextFrame:(id)nextFrame previousFrame:(id)previousFrame destinationFrame:(id)destinationFrame
{
  v12.receiver = self;
  v12.super_class = VTTestProcessorParameters;
  v10 = [(VTTestProcessorParameters *)&v12 init];
  if (v10)
  {
    v10->_sourceFrame = frame;
    v10->_nextFrame = nextFrame;
    v10->_previousFrame = previousFrame;
    v10->_destinationFrame = destinationFrame;
  }

  else
  {
    NSLog(&cfstr_FailToInitiali.isa);
  }

  return v10;
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = VTTestProcessorParameters;
  [(VTTestProcessorParameters *)&v3 dealloc];
}

@end