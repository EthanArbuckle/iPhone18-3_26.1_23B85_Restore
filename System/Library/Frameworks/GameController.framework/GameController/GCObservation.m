@interface GCObservation
- (BOOL)isEqual:(id)a3;
- (GCObservation)initWithObserver:(id)a3 options:(unint64_t)a4 context:(void *)a5;
- (id)description;
- (id)observer;
- (unint64_t)hash;
@end

@implementation GCObservation

- (GCObservation)initWithObserver:(id)a3 options:(unint64_t)a4 context:(void *)a5
{
  v8 = a3;
  v12.receiver = self;
  v12.super_class = GCObservation;
  v9 = [(GCObservation *)&v12 init];
  v10 = v9;
  if (v9)
  {
    objc_storeWeak(&v9->_observer, v8);
    v10->_options = a4;
    v10->_context = a5;
  }

  return v10;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = v4;
    v6 = [v5 observer];
    v7 = [(GCObservation *)self observer];
    if (v6 == v7)
    {
      v9 = [v5 context];
      v8 = v9 == [(GCObservation *)self context];
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
  v2 = [(GCObservation *)self observer];

  return v2;
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