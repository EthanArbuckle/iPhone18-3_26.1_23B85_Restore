@interface ShortcutsRowCellModel
- (GEOObserverHashTable)observers;
- (void)addObserver:(id)a3;
- (void)removeObserver:(id)a3;
@end

@implementation ShortcutsRowCellModel

- (GEOObserverHashTable)observers
{
  observers = self->_observers;
  if (!observers)
  {
    v4 = [[GEOObserverHashTable alloc] initWithProtocol:&OBJC_PROTOCOL___ShortcutsRowCellModelObserver queue:0];
    v5 = self->_observers;
    self->_observers = v4;

    observers = self->_observers;
  }

  return observers;
}

- (void)removeObserver:(id)a3
{
  v4 = a3;
  v5 = [(ShortcutsRowCellModel *)self observers];
  [v5 unregisterObserver:v4];
}

- (void)addObserver:(id)a3
{
  v4 = a3;
  v5 = [(ShortcutsRowCellModel *)self observers];
  [v5 registerObserver:v4];
}

@end