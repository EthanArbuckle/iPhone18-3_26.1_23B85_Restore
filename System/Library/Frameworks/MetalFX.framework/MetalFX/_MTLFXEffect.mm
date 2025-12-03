@interface _MTLFXEffect
- (MTLFXEffectTracingDelegate)tracingDelegate;
- (void)_didCreateBlitCommandEncoder:(id)encoder forEncode:(unint64_t)encode;
- (void)_didCreateComputeCommandEncoder:(id)encoder forEncode:(unint64_t)encode;
- (void)_didCreateRenderCommandEncoder:(id)encoder forEncode:(unint64_t)encode;
@end

@implementation _MTLFXEffect

- (void)_didCreateRenderCommandEncoder:(id)encoder forEncode:(unint64_t)encode
{
  encoderCopy = encoder;
  {
    MetalFXHUDInstanceV3(void)::v3 = WEAK_HUDServiceV3();
  }

  v6 = MetalFXHUDInstanceV3(void)::v3;
  v7 = v6;
  if (v6)
  {
    [v6 markRenderEncoder:encoderCopy component:3];
  }

  WeakRetained = objc_loadWeakRetained(&self->_tracingDelegate);
  [WeakRetained scaler:self didCreateRenderCommandEncoder:encoderCopy forEncode:encode];
}

- (void)_didCreateBlitCommandEncoder:(id)encoder forEncode:(unint64_t)encode
{
  encoderCopy = encoder;
  {
    MetalFXHUDInstanceV3(void)::v3 = WEAK_HUDServiceV3();
  }

  v6 = MetalFXHUDInstanceV3(void)::v3;
  v7 = v6;
  if (v6)
  {
    [v6 markBlitEncoder:encoderCopy component:3];
  }

  WeakRetained = objc_loadWeakRetained(&self->_tracingDelegate);
  [WeakRetained scaler:self didCreateBlitCommandEncoder:encoderCopy forEncode:encode];
}

- (void)_didCreateComputeCommandEncoder:(id)encoder forEncode:(unint64_t)encode
{
  encoderCopy = encoder;
  {
    MetalFXHUDInstanceV3(void)::v3 = WEAK_HUDServiceV3();
  }

  v6 = MetalFXHUDInstanceV3(void)::v3;
  v7 = v6;
  if (v6)
  {
    [v6 markComputeEncoder:encoderCopy component:3];
  }

  WeakRetained = objc_loadWeakRetained(&self->_tracingDelegate);
  [WeakRetained scaler:self didCreateComputeCommandEncoder:encoderCopy forEncode:encode];
}

- (MTLFXEffectTracingDelegate)tracingDelegate
{
  WeakRetained = objc_loadWeakRetained(&self->_tracingDelegate);

  return WeakRetained;
}

@end