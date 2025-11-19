@interface _MTL4FXEffect
- (MTL4FXEffectTracingDelegate)tracingDelegate;
- (_MTL4FXEffect)init;
- (void)_didCreateComputeCommandEncoder:(id)a3 forEncode:(unint64_t)a4;
- (void)_didCreateRenderCommandEncoder:(id)a3 forEncode:(unint64_t)a4;
@end

@implementation _MTL4FXEffect

- (_MTL4FXEffect)init
{
  v7.receiver = self;
  v7.super_class = _MTL4FXEffect;
  v2 = [(_MTLFXEffectBase *)&v7 init];
  if (v2)
  {
    v3 = dispatch_semaphore_create(16);
    maxFramesInFlightSemaphore = v2->_maxFramesInFlightSemaphore;
    v2->_maxFramesInFlightSemaphore = v3;

    v5 = v2;
  }

  return v2;
}

- (void)_didCreateRenderCommandEncoder:(id)a3 forEncode:(unint64_t)a4
{
  v6 = a3;
  WeakRetained = objc_loadWeakRetained(&self->_tracingDelegate);
  [WeakRetained scaler:self didCreateRenderCommandEncoder:v6 forEncode:a4];
}

- (void)_didCreateComputeCommandEncoder:(id)a3 forEncode:(unint64_t)a4
{
  v6 = a3;
  WeakRetained = objc_loadWeakRetained(&self->_tracingDelegate);
  [WeakRetained scaler:self didCreateComputeCommandEncoder:v6 forEncode:a4];
}

- (MTL4FXEffectTracingDelegate)tracingDelegate
{
  WeakRetained = objc_loadWeakRetained(&self->_tracingDelegate);

  return WeakRetained;
}

@end