@interface MPSNDArrayStitchedReductionDescriptor
- (MPSNDArrayStitchedReductionDescriptor)initWithStateSize:(unint64_t)a3 invariantValueFn:(id)a4 mapFn:(id)a5 reduceFn:(id)a6 writeFn:(id)a7;
- (void)dealloc;
@end

@implementation MPSNDArrayStitchedReductionDescriptor

- (MPSNDArrayStitchedReductionDescriptor)initWithStateSize:(unint64_t)a3 invariantValueFn:(id)a4 mapFn:(id)a5 reduceFn:(id)a6 writeFn:(id)a7
{
  v14.receiver = self;
  v14.super_class = MPSNDArrayStitchedReductionDescriptor;
  v12 = [(MPSNDArrayStitchedReductionDescriptor *)&v14 init];
  v12->_stateSize = a3;
  v12->_invariantValueFn = [a4 copy];
  v12->_mapFn = [a5 copy];
  v12->_reduceFn = [a6 copy];
  v12->_writeFn = [a7 copy];
  return v12;
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = MPSNDArrayStitchedReductionDescriptor;
  [(MPSNDArrayStitchedReductionDescriptor *)&v3 dealloc];
}

@end