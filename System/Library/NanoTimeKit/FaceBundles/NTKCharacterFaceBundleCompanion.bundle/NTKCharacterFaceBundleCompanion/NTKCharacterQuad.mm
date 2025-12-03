@interface NTKCharacterQuad
- (NTKCharacterQuad)initWithCLKDevice:(id)device;
- (void)dealloc;
- (void)renderForDisplayWithEncoder:(id)encoder;
@end

@implementation NTKCharacterQuad

- (NTKCharacterQuad)initWithCLKDevice:(id)device
{
  deviceCopy = device;
  v9.receiver = self;
  v9.super_class = NTKCharacterQuad;
  v6 = [(NTKCharacterQuad *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_clkDevice, device);
  }

  return v7;
}

- (void)dealloc
{
  v2.receiver = self;
  v2.super_class = NTKCharacterQuad;
  [(NTKCharacterQuad *)&v2 dealloc];
}

- (void)renderForDisplayWithEncoder:(id)encoder
{
  encoderCopy = encoder;
  kdebug_trace();
  [(NTKCharacterRenderer *)self->_renderer renderWithEncoder:encoderCopy];

  kdebug_trace();
}

@end