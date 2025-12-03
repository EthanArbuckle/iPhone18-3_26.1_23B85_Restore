@interface _TUISubDynamicArray
- (_TUISubDynamicArray)initWithArray:(id)array start:(int64_t)start end:(int64_t)end;
- (id)_rootDataProvider;
- (id)newInstanceWithGeneration:(id)generation count:(unint64_t)count observer:(id)observer;
- (unint64_t)_countForGeneration:(id)generation;
- (void)dynamicChanged:(id)changed transaction:(id)transaction;
@end

@implementation _TUISubDynamicArray

- (id)_rootDataProvider
{
  array = [(_TUIDynamicArrayInstance *)self->_instance array];
  _rootDataProvider = [array _rootDataProvider];

  return _rootDataProvider;
}

- (_TUISubDynamicArray)initWithArray:(id)array start:(int64_t)start end:(int64_t)end
{
  arrayCopy = array;
  v16.receiver = self;
  v16.super_class = _TUISubDynamicArray;
  v9 = [(TUIDynamicArray *)&v16 init];
  if (v9)
  {
    v10 = [arrayCopy instanceForObserver:v9];
    instance = v9->_instance;
    v9->_instance = v10;

    v9->_start = start;
    v9->_end = end;
    v12 = TUIIndexMapperComputeCount([(_TUIDynamicArrayInstance *)v9->_instance count], v9->_start, v9->_end);
    v13 = v9->_instance;
    generation = [(_TUIDynamicArrayInstance *)v13 generation];
    [(TUIDynamicArray *)v9 _updateProvider:v13 count:v12 generation:generation];
  }

  return v9;
}

- (unint64_t)_countForGeneration:(id)generation
{
  v6.receiver = self;
  v6.super_class = _TUISubDynamicArray;
  v4 = [(TUIDynamicArray *)&v6 _countForGeneration:generation];
  return TUIIndexMapperComputeCount(v4, self->_start, self->_end);
}

- (void)dynamicChanged:(id)changed transaction:(id)transaction
{
  v5 = [(_TUIDynamicArrayInstance *)self->_instance _dequeueUpdateGroup:changed];
  v7 = [v5 trimWithStart:self->_start end:self->_end];

  v6 = v7;
  if (v7)
  {
    [(TUIDynamicArray *)self _enqueueUpdate:v7];
    v6 = v7;
  }
}

- (id)newInstanceWithGeneration:(id)generation count:(unint64_t)count observer:(id)observer
{
  observerCopy = observer;
  generationCopy = generation;
  v10 = [(_TUIDynamicArrayInstance *)[_TUISubDynamicArrayInstance alloc] initWithArray:self generation:generationCopy count:count observer:observerCopy];

  [(_TUISubDynamicArrayInstance *)v10 setStart:self->_start];
  [(_TUISubDynamicArrayInstance *)v10 setEnd:self->_end];
  return v10;
}

@end