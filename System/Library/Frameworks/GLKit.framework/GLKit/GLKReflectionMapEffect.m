@interface GLKReflectionMapEffect
- (GLKMatrix3)matrix;
- (GLKReflectionMapEffect)init;
- (id)description;
- (void)dealloc;
- (void)prepareToDraw;
- (void)setMatrix:(GLKMatrix3 *)matrix;
@end

@implementation GLKReflectionMapEffect

- (GLKReflectionMapEffect)init
{
  v6.receiver = self;
  v6.super_class = GLKReflectionMapEffect;
  v2 = [(GLKBaseEffect *)&v6 init];
  v3 = v2;
  if (v2)
  {
    *(v2 + 56) = -1;
    *(v2 + 184) = *&GLKMatrix4Identity.m00;
    *(v2 + 200) = 0x3F800000uLL;
    *(v2 + 54) = 1065353216;
    v4 = objc_alloc_init(GLKEffectPropertyTexture);
    v3->_textureCubeMap = v4;
    [(GLKEffectPropertyTexture *)v4 setTarget:34067];
    [(GLKEffectPropertyTexGen *)[(GLKEffectPropertyTexture *)v3->_textureCubeMap texGenS] setMode:3];
    [(GLKEffectPropertyTexGen *)[(GLKEffectPropertyTexture *)v3->_textureCubeMap texGenT] setMode:3];
    [(GLKEffectPropertyTexGen *)[(GLKEffectPropertyTexture *)v3->_textureCubeMap texGenR] setMode:3];
    [(NSMutableArray *)[(GLKBaseEffect *)v3 propertyArray] addObject:v3->_textureCubeMap];
    v3->_dirtyUniforms = 1;
  }

  return v3;
}

- (void)setMatrix:(GLKMatrix3 *)matrix
{
  m22 = matrix->m22;
  v4 = *&matrix->m[4];
  *&self->_matrix.m00 = *&matrix->m00;
  *&self->_matrix.m[4] = v4;
  self->_matrix.m22 = m22;
  self->_dirtyUniforms = 1;
}

- (void)prepareToDraw
{
  v5.receiver = self;
  v5.super_class = GLKReflectionMapEffect;
  [(GLKBaseEffect *)&v5 prepareToDraw];
  if (self->_dirtyUniforms)
  {
    if ([(GLKEffectPropertyTexture *)self->_textureCubeMap enabled])
    {
      params = 0;
      glGetIntegerv(0x8B8Du, &params);
      UniformLocation = glGetUniformLocation(params, "reflectionMapMatrix");
      self->_matrixLoc = UniformLocation;
      glUniformMatrix3fv(UniformLocation, 1, 0, &self->_matrix.m00);
      self->_dirtyUniforms = 0;
    }
  }
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = GLKReflectionMapEffect;
  [(GLKBaseEffect *)&v3 dealloc];
}

- (id)description
{
  v3 = objc_alloc_init(MEMORY[0x277CCAB68]);
  [v3 appendFormat:@"self = %p\n{\n", self];
  [v3 appendFormat:@"textureCubeMap = %p\n", -[GLKReflectionMapEffect textureCubeMap](self, "textureCubeMap")];
  [v3 appendFormat:@"%@\n", -[GLKEffectPropertyTexture description](-[GLKReflectionMapEffect textureCubeMap](self, "textureCubeMap"), "description")];
  [v3 appendString:@"matrix\n{\n"];
  v4 = *&self->_matrix.m[4];
  *&matrix.m00 = *&self->_matrix.m00;
  *&matrix.m[4] = v4;
  matrix.m22 = self->_matrix.m22;
  [v3 appendFormat:@"%@\n", NSStringFromGLKMatrix3(&matrix)];
  [v3 appendString:@"}\n"];
  v6.receiver = self;
  v6.super_class = GLKReflectionMapEffect;
  [v3 appendString:{-[GLKBaseEffect description](&v6, sel_description)}];
  [v3 appendString:@"}"];
  return v3;
}

- (GLKMatrix3)matrix
{
  v3 = *&self[5].m[5];
  *&retstr->m00 = *&self[5].m[1];
  *&retstr->m[4] = v3;
  retstr->m22 = self[6].m00;
  return self;
}

@end