@interface MPSNDArrayStitchedReductionDescriptor
- (MPSNDArrayStitchedReductionDescriptor)initWithStateSize:(unint64_t)size invariantValueFn:(id)fn mapFn:(id)mapFn reduceFn:(id)reduceFn writeFn:(id)writeFn;
- (void)dealloc;
@end

@implementation MPSNDArrayStitchedReductionDescriptor

- (MPSNDArrayStitchedReductionDescriptor)initWithStateSize:(unint64_t)size invariantValueFn:(id)fn mapFn:(id)mapFn reduceFn:(id)reduceFn writeFn:(id)writeFn
{
  v14.receiver = self;
  v14.super_class = MPSNDArrayStitchedReductionDescriptor;
  v12 = [(MPSNDArrayStitchedReductionDescriptor *)&v14 init];
  v12->_stateSize = size;
  v12->_invariantValueFn = [fn copy];
  v12->_mapFn = [mapFn copy];
  v12->_reduceFn = [reduceFn copy];
  v12->_writeFn = [writeFn copy];
  return v12;
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = MPSNDArrayStitchedReductionDescriptor;
  [(MPSNDArrayStitchedReductionDescriptor *)&v3 dealloc];
}

@end