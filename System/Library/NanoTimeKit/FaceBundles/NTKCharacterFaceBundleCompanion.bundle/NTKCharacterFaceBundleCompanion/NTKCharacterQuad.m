@interface NTKCharacterQuad
- (NTKCharacterQuad)initWithCLKDevice:(id)a3;
- (void)dealloc;
- (void)renderForDisplayWithEncoder:(id)a3;
@end

@implementation NTKCharacterQuad

- (NTKCharacterQuad)initWithCLKDevice:(id)a3
{
  v5 = a3;
  v9.receiver = self;
  v9.super_class = NTKCharacterQuad;
  v6 = [(NTKCharacterQuad *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_clkDevice, a3);
  }

  return v7;
}

- (void)dealloc
{
  v2.receiver = self;
  v2.super_class = NTKCharacterQuad;
  [(NTKCharacterQuad *)&v2 dealloc];
}

- (void)renderForDisplayWithEncoder:(id)a3
{
  v4 = a3;
  kdebug_trace();
  [(NTKCharacterRenderer *)self->_renderer renderWithEncoder:v4];

  kdebug_trace();
}

@end