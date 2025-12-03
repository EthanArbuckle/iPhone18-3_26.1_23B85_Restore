@interface _TUISubDynamicArrayInstance
- (unint64_t)countForGeneration:(id)generation;
- (void)fetchDataForIndexes:(id)indexes generation:(id)generation block:(id)block;
- (void)fetchDataForRange:(_NSRange)range generation:(id)generation block:(id)block;
@end

@implementation _TUISubDynamicArrayInstance

- (unint64_t)countForGeneration:(id)generation
{
  v6.receiver = self;
  v6.super_class = _TUISubDynamicArrayInstance;
  v4 = [(_TUIDynamicArrayInstance *)&v6 countForGeneration:generation];
  return TUIIndexMapperComputeCount(v4, self->_start, self->_end);
}

- (void)fetchDataForRange:(_NSRange)range generation:(id)generation block:(id)block
{
  length = range.length;
  location = range.location;
  generationCopy = generation;
  blockCopy = block;
  start = self->_start;
  if (start < 0)
  {
    v14.receiver = self;
    v14.super_class = _TUISubDynamicArrayInstance;
    start += [(_TUIDynamicArrayInstance *)&v14 countForGeneration:generationCopy];
  }

  if (location == 0x7FFFFFFFFFFFFFFFLL)
  {
    v12 = 0x7FFFFFFFFFFFFFFFLL;
  }

  else
  {
    v12 = start + location;
  }

  v13.receiver = self;
  v13.super_class = _TUISubDynamicArrayInstance;
  [(_TUIDynamicArrayInstance *)&v13 fetchDataForRange:v12 generation:length block:generationCopy, blockCopy];
}

- (void)fetchDataForIndexes:(id)indexes generation:(id)generation block:(id)block
{
  indexesCopy = indexes;
  generationCopy = generation;
  blockCopy = block;
  start = self->_start;
  if (start < 0)
  {
    v14.receiver = self;
    v14.super_class = _TUISubDynamicArrayInstance;
    start += [(_TUIDynamicArrayInstance *)&v14 countForGeneration:generationCopy];
  }

  v12 = [indexesCopy mutableCopy];
  [v12 shiftIndexesStartingAtIndex:0 by:start];
  v13.receiver = self;
  v13.super_class = _TUISubDynamicArrayInstance;
  [(_TUIDynamicArrayInstance *)&v13 fetchDataForIndexes:v12 generation:generationCopy block:blockCopy];
}

@end