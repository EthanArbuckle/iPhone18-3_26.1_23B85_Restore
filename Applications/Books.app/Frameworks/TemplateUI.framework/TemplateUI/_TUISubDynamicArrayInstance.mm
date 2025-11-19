@interface _TUISubDynamicArrayInstance
- (unint64_t)countForGeneration:(id)a3;
- (void)fetchDataForIndexes:(id)a3 generation:(id)a4 block:(id)a5;
- (void)fetchDataForRange:(_NSRange)a3 generation:(id)a4 block:(id)a5;
@end

@implementation _TUISubDynamicArrayInstance

- (unint64_t)countForGeneration:(id)a3
{
  v6.receiver = self;
  v6.super_class = _TUISubDynamicArrayInstance;
  v4 = [(_TUIDynamicArrayInstance *)&v6 countForGeneration:a3];
  return TUIIndexMapperComputeCount(v4, self->_start, self->_end);
}

- (void)fetchDataForRange:(_NSRange)a3 generation:(id)a4 block:(id)a5
{
  length = a3.length;
  location = a3.location;
  v9 = a4;
  v10 = a5;
  start = self->_start;
  if (start < 0)
  {
    v14.receiver = self;
    v14.super_class = _TUISubDynamicArrayInstance;
    start += [(_TUIDynamicArrayInstance *)&v14 countForGeneration:v9];
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
  [(_TUIDynamicArrayInstance *)&v13 fetchDataForRange:v12 generation:length block:v9, v10];
}

- (void)fetchDataForIndexes:(id)a3 generation:(id)a4 block:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  start = self->_start;
  if (start < 0)
  {
    v14.receiver = self;
    v14.super_class = _TUISubDynamicArrayInstance;
    start += [(_TUIDynamicArrayInstance *)&v14 countForGeneration:v9];
  }

  v12 = [v8 mutableCopy];
  [v12 shiftIndexesStartingAtIndex:0 by:start];
  v13.receiver = self;
  v13.super_class = _TUISubDynamicArrayInstance;
  [(_TUIDynamicArrayInstance *)&v13 fetchDataForIndexes:v12 generation:v9 block:v10];
}

@end