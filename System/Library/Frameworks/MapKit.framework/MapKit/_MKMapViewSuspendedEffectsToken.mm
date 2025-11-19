@interface _MKMapViewSuspendedEffectsToken
- (_MKMapViewSuspendedEffectsToken)initWithOwner:(id)a3;
- (void)dealloc;
- (void)invalidate;
@end

@implementation _MKMapViewSuspendedEffectsToken

- (void)dealloc
{
  [(_MKMapViewSuspendedEffectsToken *)self invalidate];
  v3.receiver = self;
  v3.super_class = _MKMapViewSuspendedEffectsToken;
  [(_MKMapViewSuspendedEffectsToken *)&v3 dealloc];
}

- (void)invalidate
{
  if (!self->_invalidated)
  {
    WeakRetained = objc_loadWeakRetained(&self->_owner);
    [WeakRetained _startEffects];

    self->_invalidated = 1;
  }
}

- (_MKMapViewSuspendedEffectsToken)initWithOwner:(id)a3
{
  v4 = a3;
  v8.receiver = self;
  v8.super_class = _MKMapViewSuspendedEffectsToken;
  v5 = [(_MKMapViewSuspendedEffectsToken *)&v8 init];
  v6 = v5;
  if (v5)
  {
    objc_storeWeak(&v5->_owner, v4);
  }

  return v6;
}

@end