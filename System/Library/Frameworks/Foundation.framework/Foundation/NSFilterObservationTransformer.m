@interface NSFilterObservationTransformer
+ (id)filterWithBlock:(id)a3;
- (NSFilterObservationTransformer)initWithBlock:(id)a3;
- (void)_receiveBox:(id)a3;
- (void)dealloc;
@end

@implementation NSFilterObservationTransformer

+ (id)filterWithBlock:(id)a3
{
  v3 = [[a1 alloc] initWithBlock:a3];

  return v3;
}

- (void)_receiveBox:(id)a3
{
  v6 = *MEMORY[0x1E69E9840];
  if (*(a3 + 6) != 1 || (*(self->_predicate + 2))())
  {
    v5.receiver = self;
    v5.super_class = NSFilterObservationTransformer;
    [(NSFilterObservationTransformer *)&v5 _receiveBox:a3];
  }
}

- (NSFilterObservationTransformer)initWithBlock:(id)a3
{
  v7 = *MEMORY[0x1E69E9840];
  v6.receiver = self;
  v6.super_class = NSFilterObservationTransformer;
  v4 = [(NSFilterObservationTransformer *)&v6 init];
  if (v4)
  {
    v4->_predicate = [a3 copy];
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