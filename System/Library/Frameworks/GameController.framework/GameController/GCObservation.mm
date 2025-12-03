@interface GCObservation
- (BOOL)isEqual:(id)equal;
- (GCObservation)initWithObserver:(id)observer options:(unint64_t)options context:(void *)context;
- (id)description;
- (id)observer;
- (unint64_t)hash;
@end

@implementation GCObservation

- (GCObservation)initWithObserver:(id)observer options:(unint64_t)options context:(void *)context
{
  observerCopy = observer;
  v12.receiver = self;
  v12.super_class = GCObservation;
  v9 = [(GCObservation *)&v12 init];
  v10 = v9;
  if (v9)
  {
    objc_storeWeak(&v9->_observer, observerCopy);
    v10->_options = options;
    v10->_context = context;
  }

  return v10;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = equalCopy;
    observer = [v5 observer];
    observer2 = [(GCObservation *)self observer];
    if (observer == observer2)
    {
      context = [v5 context];
      v8 = context == [(GCObservation *)self context];
    }

    else
    {
      v8 = 0;
    }
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (unint64_t)hash
{
  observer = [(GCObservation *)self observer];

  return observer;
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  options = self->_options;
  WeakRetained = objc_loadWeakRetained(&self->_observer);
  v6 = [v3 stringWithFormat:@"<GCObservation options:0x%02lx observer:%p context:%p>", options, WeakRetained, self->_context];

  return v6;
}

- (id)observer
{
  WeakRetained = objc_loadWeakRetained(&self->_observer);

  return WeakRetained;
}

@end