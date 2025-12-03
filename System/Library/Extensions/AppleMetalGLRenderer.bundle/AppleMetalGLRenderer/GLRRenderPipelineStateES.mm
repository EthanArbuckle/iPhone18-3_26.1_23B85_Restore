@interface GLRRenderPipelineStateES
- (GLRRenderPipelineStateES)initWithPipelineState:(id)state reflection:(id)reflection;
- (void)dealloc;
@end

@implementation GLRRenderPipelineStateES

- (GLRRenderPipelineStateES)initWithPipelineState:(id)state reflection:(id)reflection
{
  v8.receiver = self;
  v8.super_class = GLRRenderPipelineStateES;
  v6 = [(GLRRenderPipelineStateES *)&v8 init];
  v6->_internal.renderPipelineState = state;
  *&v6->_internal.usageFlags = [reflection usageFlags];
  return v6;
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = GLRRenderPipelineStateES;
  [(GLRRenderPipelineStateES *)&v3 dealloc];
}

@end