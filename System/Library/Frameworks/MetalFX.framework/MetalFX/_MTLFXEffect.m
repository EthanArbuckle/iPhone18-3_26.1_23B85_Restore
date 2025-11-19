@interface _MTLFXEffect
- (MTLFXEffectTracingDelegate)tracingDelegate;
- (void)_didCreateBlitCommandEncoder:(id)a3 forEncode:(unint64_t)a4;
- (void)_didCreateComputeCommandEncoder:(id)a3 forEncode:(unint64_t)a4;
- (void)_didCreateRenderCommandEncoder:(id)a3 forEncode:(unint64_t)a4;
@end

@implementation _MTLFXEffect

- (void)_didCreateRenderCommandEncoder:(id)a3 forEncode:(unint64_t)a4
{
  v9 = a3;
  {
    MetalFXHUDInstanceV3(void)::v3 = WEAK_HUDServiceV3();
  }

  v6 = MetalFXHUDInstanceV3(void)::v3;
  v7 = v6;
  if (v6)
  {
    [v6 markRenderEncoder:v9 component:3];
  }

  WeakRetained = objc_loadWeakRetained(&self->_tracingDelegate);
  [WeakRetained scaler:self didCreateRenderCommandEncoder:v9 forEncode:a4];
}

- (void)_didCreateBlitCommandEncoder:(id)a3 forEncode:(unint64_t)a4
{
  v9 = a3;
  {
    MetalFXHUDInstanceV3(void)::v3 = WEAK_HUDServiceV3();
  }

  v6 = MetalFXHUDInstanceV3(void)::v3;
  v7 = v6;
  if (v6)
  {
    [v6 markBlitEncoder:v9 component:3];
  }

  WeakRetained = objc_loadWeakRetained(&self->_tracingDelegate);
  [WeakRetained scaler:self didCreateBlitCommandEncoder:v9 forEncode:a4];
}

- (void)_didCreateComputeCommandEncoder:(id)a3 forEncode:(unint64_t)a4
{
  v9 = a3;
  {
    MetalFXHUDInstanceV3(void)::v3 = WEAK_HUDServiceV3();
  }

  v6 = MetalFXHUDInstanceV3(void)::v3;
  v7 = v6;
  if (v6)
  {
    [v6 markComputeEncoder:v9 component:3];
  }

  WeakRetained = objc_loadWeakRetained(&self->_tracingDelegate);
  [WeakRetained scaler:self didCreateComputeCommandEncoder:v9 forEncode:a4];
}

- (MTLFXEffectTracingDelegate)tracingDelegate
{
  WeakRetained = objc_loadWeakRetained(&self->_tracingDelegate);

  return WeakRetained;
}

@end