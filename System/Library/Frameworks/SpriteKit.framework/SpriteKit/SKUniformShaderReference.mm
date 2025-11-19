@interface SKUniformShaderReference
- (SKShader)targetShader;
@end

@implementation SKUniformShaderReference

- (SKShader)targetShader
{
  WeakRetained = objc_loadWeakRetained(&self->_targetShader);

  return WeakRetained;
}

@end