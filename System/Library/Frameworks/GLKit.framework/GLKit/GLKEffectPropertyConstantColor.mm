@interface GLKEffectPropertyConstantColor
- (GLKEffectPropertyConstantColor)init;
- (_GLKVector4)color;
- (id)description;
- (void)bind;
- (void)dealloc;
- (void)setColor:(_GLKVector4)a3;
- (void)setShaderBindings;
@end

@implementation GLKEffectPropertyConstantColor

- (GLKEffectPropertyConstantColor)init
{
  v10.receiver = self;
  v10.super_class = GLKEffectPropertyConstantColor;
  v2 = [(GLKEffectProperty *)&v10 init];
  v3 = v2;
  if (v2)
  {
    __asm { FMOV            V0.4S, #1.0 }

    v2->_color = _Q0;
    [(GLKEffectProperty *)v2 setNameString:"a_color"];
    v3->_enabled = 1;
  }

  return v3;
}

- (void)setShaderBindings
{
  if (self->_enabled)
  {
    params = 0;
    glGetIntegerv(0x8B8Du, &params);
    [(GLKEffectProperty *)self setLocation:glGetAttribLocation(params, [(GLKEffectProperty *)self nameString])];
  }
}

- (void)bind
{
  if (self->_enabled)
  {
    v3 = [(GLKEffectProperty *)self location];

    glVertexAttrib4fv(v3, &self->_color.x);
  }
}

- (id)description
{
  v3 = objc_alloc_init(MEMORY[0x277CCAB68]);
  [v3 appendFormat:@"%@ = %p\n{\n", objc_msgSend(objc_opt_class(), "description"), self];
  [v3 appendFormat:@"\t{%7.3f, %7.3f, %7.3f, %7.3f}\n", self->_color.x, self->_color.y, self->_color.z, self->_color.w];
  [v3 appendFormat:@"}"];
  return v3;
}

- (void)dealloc
{
  v2.receiver = self;
  v2.super_class = GLKEffectPropertyConstantColor;
  [(GLKEffectProperty *)&v2 dealloc];
}

- (_GLKVector4)color
{
  x = self->_color.x;
  y = self->_color.y;
  z = self->_color.z;
  w = self->_color.w;
  *&result.v[2] = a2;
  *&result.x = self;
  return result;
}

- (void)setColor:(_GLKVector4)a3
{
  self->_color.x = v3;
  self->_color.y = v4;
  self->_color.z = v5;
  self->_color.w = v6;
}

@end