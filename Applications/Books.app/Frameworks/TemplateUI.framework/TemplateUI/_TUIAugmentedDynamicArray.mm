@interface _TUIAugmentedDynamicArray
- (_TUIAugmentedDynamicArray)initWithArray:(id)a3 augmenter:(id)a4;
- (id)_rootDataProvider;
- (id)newInstanceWithGeneration:(id)a3 count:(unint64_t)a4 observer:(id)a5;
- (void)dynamicChanged:(id)a3 transaction:(id)a4;
@end

@implementation _TUIAugmentedDynamicArray

- (id)_rootDataProvider
{
  v2 = [(_TUIDynamicArrayInstance *)self->_instance array];
  v3 = [v2 _rootDataProvider];

  return v3;
}

- (_TUIAugmentedDynamicArray)initWithArray:(id)a3 augmenter:(id)a4
{
  v6 = a3;
  v7 = a4;
  v16.receiver = self;
  v16.super_class = _TUIAugmentedDynamicArray;
  v8 = [(TUIDynamicArray *)&v16 init];
  v9 = v8;
  if (v8)
  {
    objc_storeStrong(&v8->_augmenter, a4);
    v10 = [v6 instanceForObserver:v9];
    instance = v9->_instance;
    v9->_instance = v10;

    v12 = v9->_instance;
    v13 = [(_TUIDynamicArrayInstance *)v12 count];
    v14 = [(_TUIDynamicArrayInstance *)v9->_instance generation];
    [(TUIDynamicArray *)v9 _updateProvider:v12 count:v13 generation:v14];
  }

  return v9;
}

- (void)dynamicChanged:(id)a3 transaction:(id)a4
{
  v5 = [(_TUIDynamicArrayInstance *)self->_instance _dequeueUpdateGroup:a3];
  [(TUIDynamicArray *)self _enqueueUpdate:v5];
}

- (id)newInstanceWithGeneration:(id)a3 count:(unint64_t)a4 observer:(id)a5
{
  v8 = a5;
  v9 = a3;
  v10 = [(_TUIDynamicArrayInstance *)[_TUIAugmentedDynamicArrayInstance alloc] initWithArray:self generation:v9 count:a4 observer:v8];

  [(_TUIAugmentedDynamicArrayInstance *)v10 setDataAugmenter:self->_augmenter];
  return v10;
}

@end