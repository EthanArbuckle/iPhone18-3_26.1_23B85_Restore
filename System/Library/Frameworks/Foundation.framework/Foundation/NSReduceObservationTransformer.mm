@interface NSReduceObservationTransformer
+ (id)reduceValue:(id)value withReducer:(id)reducer;
- (NSReduceObservationTransformer)initWithBlock:(id)block initialValue:(id)value;
- (void)_receiveBox:(id)box;
- (void)dealloc;
- (void)finishObserving;
@end

@implementation NSReduceObservationTransformer

+ (id)reduceValue:(id)value withReducer:(id)reducer
{
  v4 = [[self alloc] initWithBlock:reducer initialValue:value];

  return v4;
}

- (void)finishObserving
{
  v14[1] = *MEMORY[0x1E69E9840];
  accumulator = self->_accumulator;
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v11 = __49__NSReduceObservationTransformer_finishObserving__block_invoke;
  v12 = &unk_1E69F30D8;
  selfCopy = self;
  v14[0] = 0;
  StackObservedValueClassAndBoxSize = getStackObservedValueClassAndBoxSize(v14);
  MEMORY[0x1EEE9AC00](StackObservedValueClassAndBoxSize);
  v7 = objc_constructInstance(v6, &v8 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  v7[6] = 1;
  *(v7 + 1) = accumulator;
  *(v7 + 2) = self;
  v11(v10, v7);
  v9.receiver = self;
  v9.super_class = NSReduceObservationTransformer;
  [(NSReduceObservationTransformer *)&v9 finishObserving];
}

id __49__NSReduceObservationTransformer_finishObserving__block_invoke(uint64_t a1, uint64_t a2)
{
  v4 = *MEMORY[0x1E69E9840];
  v3.receiver = *(a1 + 32);
  v3.super_class = NSReduceObservationTransformer;
  return objc_msgSendSuper2(&v3, sel__receiveBox_, a2);
}

- (void)_receiveBox:(id)box
{
  v6 = *MEMORY[0x1E69E9840];
  v3 = *(box + 6);
  if (v3 == 1)
  {
    accumulator = self->_accumulator;
    self->_accumulator = (*(self->_reducer + 2))();
  }

  else if (v3 == 3)
  {

    [(NSReduceObservationTransformer *)self finishObserving];
  }

  else
  {
    v5.receiver = self;
    v5.super_class = NSReduceObservationTransformer;
    [(NSReduceObservationTransformer *)&v5 _receiveBox:?];
  }
}

- (NSReduceObservationTransformer)initWithBlock:(id)block initialValue:(id)value
{
  v9 = *MEMORY[0x1E69E9840];
  v8.receiver = self;
  v8.super_class = NSReduceObservationTransformer;
  v6 = [(NSReduceObservationTransformer *)&v8 init];
  if (v6)
  {
    v6->_reducer = [block copy];
    v6->_accumulator = value;
  }

  return v6;
}

- (void)dealloc
{
  v4 = *MEMORY[0x1E69E9840];

  v3.receiver = self;
  v3.super_class = NSReduceObservationTransformer;
  [(NSObservationSource *)&v3 dealloc];
}

@end