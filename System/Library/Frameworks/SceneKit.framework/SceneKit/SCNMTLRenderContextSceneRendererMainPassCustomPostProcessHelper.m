@interface SCNMTLRenderContextSceneRendererMainPassCustomPostProcessHelper
- (MTLTexture)destinationTexture;
- (void)drawSceneBackgroundUsingEncoder:(id)a3 commandBuffer:(id)a4 renderPassDescriptor:(id)a5;
- (void)initWithEngineContext:(void *)a1;
@end

@implementation SCNMTLRenderContextSceneRendererMainPassCustomPostProcessHelper

- (MTLTexture)destinationTexture
{
  v3 = [(SCNMTLRenderContext *)self->_renderContext clientRenderPassDescriptor];
  if (v3)
  {
    v4 = [objc_msgSend(v3 "colorAttachments")];
    result = [v4 resolveTexture];
    if (!result)
    {

      return [v4 texture];
    }
  }

  else
  {
    currentPass = self->_currentPass;

    return C3D::Pass::outputTextureAtIndex(currentPass, 0);
  }

  return result;
}

- (void)drawSceneBackgroundUsingEncoder:(id)a3 commandBuffer:(id)a4 renderPassDescriptor:(id)a5
{
  if ((self->_currentPass[2].var4.var0 & 1) == 0)
  {
    v9 = scn_default_log();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_FAULT))
    {
      [SCNMTLRenderContextSceneRendererMainPassCustomPostProcessHelper drawSceneBackgroundUsingEncoder:v9 commandBuffer:? renderPassDescriptor:?];
    }
  }

  [(SCNMTLRenderContext *)self->_renderContext _SCNSceneRendererMainPassCustomPostProcessSupportDrawSceneBackgroundUsingEncoder:a3 commandBuffer:a4 renderPassDescriptor:a5];
}

- (void)initWithEngineContext:(void *)a1
{
  if (!a1)
  {
    return 0;
  }

  v6.receiver = a1;
  v6.super_class = SCNMTLRenderContextSceneRendererMainPassCustomPostProcessHelper;
  v3 = objc_msgSendSuper2(&v6, sel_init);
  v4 = v3;
  if (v3)
  {
    v3[1] = a2;
    v3[2] = C3DEngineContextGetRenderContext(a2);
  }

  return v4;
}

- (void)drawSceneBackgroundUsingEncoder:(os_log_t)log commandBuffer:renderPassDescriptor:.cold.1(os_log_t log)
{
  v3 = *MEMORY[0x277D85DE8];
  v1 = 136315138;
  v2 = "_currentPass->mainPassUsesSpecificClearColor(NULL)";
  _os_log_fault_impl(&dword_21BEF7000, log, OS_LOG_TYPE_FAULT, "Assertion '%s' failed. Background was already rendered in the main pass", &v1, 0xCu);
}

@end