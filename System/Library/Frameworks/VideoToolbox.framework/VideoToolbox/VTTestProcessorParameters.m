@interface VTTestProcessorParameters
- (VTTestProcessorParameters)initWithSourceFrame:(id)a3 nextFrame:(id)a4 previousFrame:(id)a5 destinationFrame:(id)a6;
- (void)dealloc;
@end

@implementation VTTestProcessorParameters

- (VTTestProcessorParameters)initWithSourceFrame:(id)a3 nextFrame:(id)a4 previousFrame:(id)a5 destinationFrame:(id)a6
{
  v12.receiver = self;
  v12.super_class = VTTestProcessorParameters;
  v10 = [(VTTestProcessorParameters *)&v12 init];
  if (v10)
  {
    v10->_sourceFrame = a3;
    v10->_nextFrame = a4;
    v10->_previousFrame = a5;
    v10->_destinationFrame = a6;
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