@interface PersonalizedItemSource
+ (id)clientFeatureIDFromAdornment:(id)adornment mapItem:(id)item;
- (PersonalizedItemSource)initWithSourceType:(int64_t)type sourceSubtype:(int64_t)subtype;
- (id)_observers;
- (void)_notifyObserversItemsDidChange;
- (void)addObserver:(id)observer;
- (void)removeObserver:(id)observer;
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

- (void)removeObserver:(id)observer
{
  observerCopy = observer;
  _observers = [(PersonalizedItemSource *)self _observers];
  [_observers removeObject:observerCopy];
}

- (void)addObserver:(id)observer
{
  observerCopy = observer;
  _observers = [(PersonalizedItemSource *)self _observers];
  [_observers addObject:observerCopy];
}

- (PersonalizedItemSource)initWithSourceType:(int64_t)type sourceSubtype:(int64_t)subtype
{
  v7.receiver = self;
  v7.super_class = PersonalizedItemSource;
  result = [(PersonalizedItemSource *)&v7 init];
  if (result)
  {
    result->_sourceType = type;
    result->_sourceSubtype = subtype;
  }

  return result;
}

+ (id)clientFeatureIDFromAdornment:(id)adornment mapItem:(id)item
{
  itemCopy = item;
  styleAttributes = [adornment styleAttributes];
  poiType = [styleAttributes poiType];
  [itemCopy _coordinate];
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

  v16 = v15 ^ poiType;
  [itemCopy _coordinate];
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

  _geoMapItem = [itemCopy _geoMapItem];
  name = [_geoMapItem name];

  if (name)
  {
    _geoMapItem2 = [itemCopy _geoMapItem];
    name2 = [_geoMapItem2 name];
    v25 ^= [name2 hash];
  }

  v30 = [PersonalizedItemClientFeatureIDAdornment adornmentWithClientFeatureID:v25];

  return v30;
}

@end