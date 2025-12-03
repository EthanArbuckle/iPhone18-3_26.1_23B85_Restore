@interface NSFilterObservationTransformer
+ (id)filterWithBlock:(id)block;
- (NSFilterObservationTransformer)initWithBlock:(id)block;
- (void)_receiveBox:(id)box;
- (void)dealloc;
@end

@implementation NSFilterObservationTransformer

+ (id)filterWithBlock:(id)block
{
  v3 = [[self alloc] initWithBlock:block];

  return v3;
}

- (void)_receiveBox:(id)box
{
  v6 = *MEMORY[0x1E69E9840];
  if (*(box + 6) != 1 || (*(self->_predicate + 2))())
  {
    v5.receiver = self;
    v5.super_class = NSFilterObservationTransformer;
    [(NSFilterObservationTransformer *)&v5 _receiveBox:box];
  }
}

- (NSFilterObservationTransformer)initWithBlock:(id)block
{
  v7 = *MEMORY[0x1E69E9840];
  v6.receiver = self;
  v6.super_class = NSFilterObservationTransformer;
  v4 = [(NSFilterObservationTransformer *)&v6 init];
  if (v4)
  {
    v4->_predicate = [block copy];
  }

  return v4;
}

- (void)dealloc
{
  v4 = *MEMORY[0x1E69E9840];

  v3.receiver = self;
  v3.super_class = NSFilterObservationTransformer;
  [(NSObservationSource *)&v3 dealloc];
}

@end