@interface CarSearchItemCellModel
+ (id)modelWithUpdateBlock:(id)a3;
- (BOOL)shouldShowChargerlabel;
- (id)evChargerLabelText;
- (void)dealloc;
- (void)markAsUpdated;
- (void)observeObject:(id)a3 forKeyPaths:(id)a4;
- (void)observeValueForKeyPath:(id)a3 ofObject:(id)a4 change:(id)a5 context:(void *)a6;
@end

@implementation CarSearchItemCellModel

- (id)evChargerLabelText
{
  if (MapsFeature_IsEnabled_RealTimeEVCharger() && (-[CarSearchItemCellModel mapItem](self, "mapItem"), v3 = objc_claimAutoreleasedReturnValue(), [v3 _geoMapItem], v4 = objc_claimAutoreleasedReturnValue(), v5 = objc_msgSend(v4, "_hasEVCharger"), v4, v3, v5))
  {
    v6 = [(CarSearchItemCellModel *)self mapItem];
    v7 = [v6 _realTimeAvailableEVCharger];

    v8 = [_TtC4Maps16EVChargerUtility realTimeEVChargerDisplayStringWithEvCharger:v7 mapDisplay:0];
  }

  else
  {
    v8 = &stru_1016631F0;
  }

  return v8;
}

- (BOOL)shouldShowChargerlabel
{
  v3 = [(CarSearchItemCellModel *)self mapItem];
  v4 = [v3 _geoMapItem];
  if ([v4 _hasEVCharger])
  {
    v5 = 1;
  }

  else
  {
    v6 = [(CarSearchItemCellModel *)self chargerNumberString];
    v5 = [v6 length] != 0;
  }

  return v5;
}

- (void)markAsUpdated
{
  v3 = [(CarSearchItemCellModel *)self updateBlock];
  if (v3)
  {
    markedAsUpdatedOperation = self->_markedAsUpdatedOperation;

    if (!markedAsUpdatedOperation)
    {
      objc_initWeak(&location, self);
      v8 = _NSConcreteStackBlock;
      v9 = 3221225472;
      v10 = sub_1007FDD38;
      v11 = &unk_101661B98;
      objc_copyWeak(&v12, &location);
      v5 = [NSBlockOperation blockOperationWithBlock:&v8];
      v6 = self->_markedAsUpdatedOperation;
      self->_markedAsUpdatedOperation = v5;

      v7 = [NSOperationQueue mainQueue:v8];
      [v7 addOperation:self->_markedAsUpdatedOperation];

      objc_destroyWeak(&v12);
      objc_destroyWeak(&location);
    }
  }
}

- (void)observeValueForKeyPath:(id)a3 ofObject:(id)a4 change:(id)a5 context:(void *)a6
{
  v7 = a3;
  v8 = [(CarSearchItemCellModel *)self observedKeyPaths];
  v9 = [v8 containsObject:v7];

  if (v9)
  {

    [(CarSearchItemCellModel *)self markAsUpdated];
  }
}

- (void)observeObject:(id)a3 forKeyPaths:(id)a4
{
  v7 = a3;
  v8 = a4;
  if (self->_observedObject)
  {
    v29 = 0u;
    v30 = 0u;
    v27 = 0u;
    v28 = 0u;
    v9 = self->_observedKeyPaths;
    v10 = [(NSSet *)v9 countByEnumeratingWithState:&v27 objects:v32 count:16];
    if (v10)
    {
      v11 = v10;
      v12 = *v28;
      do
      {
        v13 = 0;
        do
        {
          if (*v28 != v12)
          {
            objc_enumerationMutation(v9);
          }

          [self->_observedObject removeObserver:self forKeyPath:*(*(&v27 + 1) + 8 * v13)];
          v13 = v13 + 1;
        }

        while (v11 != v13);
        v11 = [(NSSet *)v9 countByEnumeratingWithState:&v27 objects:v32 count:16];
      }

      while (v11);
    }

    observedObject = self->_observedObject;
    self->_observedObject = 0;

    observedKeyPaths = self->_observedKeyPaths;
    self->_observedKeyPaths = 0;
  }

  if (v7 && [v8 count])
  {
    objc_storeStrong(&self->_observedObject, a3);
    v16 = [v8 copy];
    v17 = self->_observedKeyPaths;
    self->_observedKeyPaths = v16;

    v25 = 0u;
    v26 = 0u;
    v23 = 0u;
    v24 = 0u;
    v18 = v8;
    v19 = [v18 countByEnumeratingWithState:&v23 objects:v31 count:16];
    if (v19)
    {
      v20 = v19;
      v21 = *v24;
      do
      {
        v22 = 0;
        do
        {
          if (*v24 != v21)
          {
            objc_enumerationMutation(v18);
          }

          [v7 addObserver:self forKeyPath:*(*(&v23 + 1) + 8 * v22) options:0 context:{0, v23}];
          v22 = v22 + 1;
        }

        while (v20 != v22);
        v20 = [v18 countByEnumeratingWithState:&v23 objects:v31 count:16];
      }

      while (v20);
    }
  }
}

- (void)dealloc
{
  [(CarSearchItemCellModel *)self observeObject:0 forKeyPaths:0];
  v3.receiver = self;
  v3.super_class = CarSearchItemCellModel;
  [(CarSearchItemCellModel *)&v3 dealloc];
}

+ (id)modelWithUpdateBlock:(id)a3
{
  v4 = a3;
  v5 = objc_alloc_init(a1);
  [v5 setUpdateBlock:v4];

  return v5;
}

@end