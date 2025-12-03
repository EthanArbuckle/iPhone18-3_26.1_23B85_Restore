@interface _TUIAugmentedDynamicArray
- (_TUIAugmentedDynamicArray)initWithArray:(id)array augmenter:(id)augmenter;
- (id)_rootDataProvider;
- (id)newInstanceWithGeneration:(id)generation count:(unint64_t)count observer:(id)observer;
- (void)dynamicChanged:(id)changed transaction:(id)transaction;
@end

@implementation _TUIAugmentedDynamicArray

- (id)_rootDataProvider
{
  array = [(_TUIDynamicArrayInstance *)self->_instance array];
  _rootDataProvider = [array _rootDataProvider];

  return _rootDataProvider;
}

- (_TUIAugmentedDynamicArray)initWithArray:(id)array augmenter:(id)augmenter
{
  arrayCopy = array;
  augmenterCopy = augmenter;
  v16.receiver = self;
  v16.super_class = _TUIAugmentedDynamicArray;
  v8 = [(TUIDynamicArray *)&v16 init];
  v9 = v8;
  if (v8)
  {
    objc_storeStrong(&v8->_augmenter, augmenter);
    v10 = [arrayCopy instanceForObserver:v9];
    instance = v9->_instance;
    v9->_instance = v10;

    v12 = v9->_instance;
    v13 = [(_TUIDynamicArrayInstance *)v12 count];
    generation = [(_TUIDynamicArrayInstance *)v9->_instance generation];
    [(TUIDynamicArray *)v9 _updateProvider:v12 count:v13 generation:generation];
  }

  return v9;
}

- (void)dynamicChanged:(id)changed transaction:(id)transaction
{
  v5 = [(_TUIDynamicArrayInstance *)self->_instance _dequeueUpdateGroup:changed];
  [(TUIDynamicArray *)self _enqueueUpdate:v5];
}

- (id)newInstanceWithGeneration:(id)generation count:(unint64_t)count observer:(id)observer
{
  observerCopy = observer;
  generationCopy = generation;
  v10 = [(_TUIDynamicArrayInstance *)[_TUIAugmentedDynamicArrayInstance alloc] initWithArray:self generation:generationCopy count:count observer:observerCopy];

  [(_TUIAugmentedDynamicArrayInstance *)v10 setDataAugmenter:self->_augmenter];
  return v10;
}

@end