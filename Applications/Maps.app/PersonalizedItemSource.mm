@interface PersonalizedItemSource
+ (id)clientFeatureIDFromAdornment:(id)a3 mapItem:(id)a4;
- (PersonalizedItemSource)initWithSourceType:(int64_t)a3 sourceSubtype:(int64_t)a4;
- (id)_observers;
- (void)_notifyObserversItemsDidChange;
- (void)addObserver:(id)a3;
- (void)removeObserver:(id)a3;
@end

@implementation PersonalizedItemSource

- (void)_notifyObserversItemsDidChange
{
  v8 = 0u;
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v3 = [(NSHashTable *)self->_observers copy];
  v4 = [v3 countByEnumeratingWithState:&v8 objects:v12 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v9;
    do
    {
      v7 = 0;
      do
      {
        if (*v9 != v6)
        {
          objc_enumerationMutation(v3);
        }

        [*(*(&v8 + 1) + 8 * v7) personalizedItemSourceDidChangeItems:self];
        v7 = v7 + 1;
      }

      while (v5 != v7);
      v5 = [v3 countByEnumeratingWithState:&v8 objects:v12 count:16];
    }

    while (v5);
  }
}

- (id)_observers
{
  observers = self->_observers;
  if (!observers)
  {
    v4 = +[NSHashTable weakObjectsHashTable];
    v5 = self->_observers;
    self->_observers = v4;

    observers = self->_observers;
  }

  return observers;
}

- (void)removeObserver:(id)a3
{
  v4 = a3;
  v5 = [(PersonalizedItemSource *)self _observers];
  [v5 removeObject:v4];
}

- (void)addObserver:(id)a3
{
  v4 = a3;
  v5 = [(PersonalizedItemSource *)self _observers];
  [v5 addObject:v4];
}

- (PersonalizedItemSource)initWithSourceType:(int64_t)a3 sourceSubtype:(int64_t)a4
{
  v7.receiver = self;
  v7.super_class = PersonalizedItemSource;
  result = [(PersonalizedItemSource *)&v7 init];
  if (result)
  {
    result->_sourceType = a3;
    result->_sourceSubtype = a4;
  }

  return result;
}

+ (id)clientFeatureIDFromAdornment:(id)a3 mapItem:(id)a4
{
  v5 = a4;
  v6 = [a3 styleAttributes];
  v7 = [v6 poiType];
  [v5 _coordinate];
  v9 = fabs(v8);
  v10 = floor(v9 + 0.5);
  v11 = (v9 - v10) * 1.84467441e19;
  v12 = v10 - trunc(v10 * 5.42101086e-20) * 1.84467441e19;
  v13 = 2654435761u * v12;
  v14 = v13 + v11;
  if (v11 <= 0.0)
  {
    v14 = 2654435761u * v12;
  }

  v15 = v13 - fabs(v11);
  if (v11 >= 0.0)
  {
    v15 = v14;
  }

  v16 = v15 ^ v7;
  [v5 _coordinate];
  v18 = fabs(v17);
  v19 = floor(v18 + 0.5);
  v20 = (v18 - v19) * 1.84467441e19;
  v21 = v19 - trunc(v19 * 5.42101086e-20) * 1.84467441e19;
  v22 = 2654435761u * v21;
  v23 = v22 + v20;
  if (v20 <= 0.0)
  {
    v23 = 2654435761u * v21;
  }

  v24 = v22 - fabs(v20);
  if (v20 >= 0.0)
  {
    v24 = v23;
  }

  v25 = v16 ^ v24;

  v26 = [v5 _geoMapItem];
  v27 = [v26 name];

  if (v27)
  {
    v28 = [v5 _geoMapItem];
    v29 = [v28 name];
    v25 ^= [v29 hash];
  }

  v30 = [PersonalizedItemClientFeatureIDAdornment adornmentWithClientFeatureID:v25];

  return v30;
}

@end