@interface CustomSearchManager
+ (id)sharedManager;
- (CustomSearchManager)init;
- (void)dealloc;
- (void)observeValueForKeyPath:(id)path ofObject:(id)object change:(id)change context:(void *)context;
- (void)setCustomSearchResult:(id)result animated:(BOOL)animated shouldSelectOnMap:(id)map context:(id)context;
@end

@implementation CustomSearchManager

- (CustomSearchManager)init
{
  v6.receiver = self;
  v6.super_class = CustomSearchManager;
  v2 = [(CustomSearchManager *)&v6 init];
  if (v2)
  {
    v3 = +[NSHashTable weakObjectsHashTable];
    observers = v2->_observers;
    v2->_observers = v3;
  }

  return v2;
}

+ (id)sharedManager
{
  if (qword_10195CBE0 != -1)
  {
    dispatch_once(&qword_10195CBE0, &stru_101623450);
  }

  v3 = qword_10195CBD8;

  return v3;
}

- (void)observeValueForKeyPath:(id)path ofObject:(id)object change:(id)change context:(void *)context
{
  pathCopy = path;
  v9 = pathCopy;
  if (self->_customSearchResult == object)
  {
    v10 = kAnnotationCoordinateKey;
    if (([pathCopy isEqualToString:kAnnotationCoordinateKey] & 1) != 0 || objc_msgSend(v9, "isEqualToString:", @"reverseGeocoded"))
    {
      v18 = 0u;
      v19 = 0u;
      v16 = 0u;
      v17 = 0u;
      allObjects = [(NSHashTable *)self->_observers allObjects];
      v12 = [allObjects countByEnumeratingWithState:&v16 objects:v20 count:16];
      if (v12)
      {
        v13 = v12;
        v14 = *v17;
        do
        {
          v15 = 0;
          do
          {
            if (*v17 != v14)
            {
              objc_enumerationMutation(allObjects);
            }

            [*(*(&v16 + 1) + 8 * v15) customSearchManager:self didModifyCustomSearchResult:self->_customSearchResult coordinateChanged:{objc_msgSend(v9, "isEqualToString:", v10)}];
            v15 = v15 + 1;
          }

          while (v13 != v15);
          v13 = [allObjects countByEnumeratingWithState:&v16 objects:v20 count:16];
        }

        while (v13);
      }
    }
  }
}

- (void)setCustomSearchResult:(id)result animated:(BOOL)animated shouldSelectOnMap:(id)map context:(id)context
{
  animatedCopy = animated;
  resultCopy = result;
  mapCopy = map;
  contextCopy = context;
  p_customSearchResult = &self->_customSearchResult;
  if (![self->_customSearchResult isEqualToSearchResult:resultCopy forPurpose:5])
  {
    if (*p_customSearchResult)
    {
      [*p_customSearchResult removeObserver:self forKeyPath:kAnnotationCoordinateKey];
      [self->_customSearchResult removeObserver:self forKeyPath:@"reverseGeocoded"];
    }

    objc_storeStrong(&self->_customSearchResult, result);
    if (*p_customSearchResult)
    {
      [*p_customSearchResult addObserver:self forKeyPath:kAnnotationCoordinateKey options:0 context:0];
      [self->_customSearchResult addObserver:self forKeyPath:@"reverseGeocoded" options:0 context:0];
    }

    v22 = 0u;
    v23 = 0u;
    v20 = 0u;
    v21 = 0u;
    allObjects = [(NSHashTable *)self->_observers allObjects];
    v16 = [allObjects countByEnumeratingWithState:&v20 objects:v24 count:16];
    if (v16)
    {
      v17 = v16;
      v18 = *v21;
      do
      {
        for (i = 0; i != v17; i = i + 1)
        {
          if (*v21 != v18)
          {
            objc_enumerationMutation(allObjects);
          }

          [*(*(&v20 + 1) + 8 * i) customSearchManager:self didReplaceCustomSearchResult:resultCopy animated:animatedCopy shouldSelectOnMap:mapCopy context:contextCopy];
        }

        v17 = [allObjects countByEnumeratingWithState:&v20 objects:v24 count:16];
      }

      while (v17);
    }
  }
}

- (void)dealloc
{
  [self->_customSearchResult removeObserver:self forKeyPath:kAnnotationCoordinateKey];
  [self->_customSearchResult removeObserver:self forKeyPath:@"reverseGeocoded"];
  v3.receiver = self;
  v3.super_class = CustomSearchManager;
  [(CustomSearchManager *)&v3 dealloc];
}

@end