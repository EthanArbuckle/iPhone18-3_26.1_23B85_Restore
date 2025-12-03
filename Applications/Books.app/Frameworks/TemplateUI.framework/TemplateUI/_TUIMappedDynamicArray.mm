@interface _TUIMappedDynamicArray
- (_TUIMappedDynamicArray)initWithArray:(id)array mapper:(id)mapper;
- (id)_rootDataProvider;
- (id)newInstanceWithGeneration:(id)generation count:(unint64_t)count observer:(id)observer;
- (void)dynamicChanged:(id)changed transaction:(id)transaction;
@end

@implementation _TUIMappedDynamicArray

- (id)_rootDataProvider
{
  array = [(_TUIDynamicArrayInstance *)self->_instance array];
  _rootDataProvider = [array _rootDataProvider];

  return _rootDataProvider;
}

- (_TUIMappedDynamicArray)initWithArray:(id)array mapper:(id)mapper
{
  arrayCopy = array;
  mapperCopy = mapper;
  v16.receiver = self;
  v16.super_class = _TUIMappedDynamicArray;
  v8 = [(TUIDynamicArray *)&v16 init];
  v9 = v8;
  if (v8)
  {
    objc_storeStrong(&v8->_mapper, mapper);
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
  v10 = [(_TUIDynamicArrayInstance *)[_TUIMappedDynamicArrayInstance alloc] initWithArray:self generation:generationCopy count:count observer:observerCopy];

  [(_TUIMappedDynamicArrayInstance *)v10 setDataMapper:self->_mapper];
  return v10;
}

@end