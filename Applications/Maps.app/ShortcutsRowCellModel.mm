@interface ShortcutsRowCellModel
- (GEOObserverHashTable)observers;
- (void)addObserver:(id)observer;
- (void)removeObserver:(id)observer;
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

- (void)removeObserver:(id)observer
{
  observerCopy = observer;
  observers = [(ShortcutsRowCellModel *)self observers];
  [observers unregisterObserver:observerCopy];
}

- (void)addObserver:(id)observer
{
  observerCopy = observer;
  observers = [(ShortcutsRowCellModel *)self observers];
  [observers registerObserver:observerCopy];
}

@end