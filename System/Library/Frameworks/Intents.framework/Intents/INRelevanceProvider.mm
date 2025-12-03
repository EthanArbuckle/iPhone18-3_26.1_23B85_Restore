@interface INRelevanceProvider
- (INRelevanceProvider)init;
- (INRelevanceProvider)initWithCoder:(id)coder;
- (id)_init;
@end

@implementation INRelevanceProvider

- (INRelevanceProvider)initWithCoder:(id)coder
{
  v4.receiver = self;
  v4.super_class = INRelevanceProvider;
  return [(INRelevanceProvider *)&v4 init];
}

- (id)_init
{
  v3.receiver = self;
  v3.super_class = INRelevanceProvider;
  return [(INRelevanceProvider *)&v3 init];
}

- (INRelevanceProvider)init
{
  v3 = [(INRelevanceProvider *)self isMemberOfClass:objc_opt_class()];
  v4 = MEMORY[0x1E695DF30];
  v5 = *MEMORY[0x1E695D940];
  if (v3)
  {
    [MEMORY[0x1E695DF30] raise:*MEMORY[0x1E695D940] format:{@"INRelevanceProvider cannot be initialized directly with -init, initialize a subclass instead."}];
  }

  else
  {
    v6 = objc_opt_class();
    v7 = NSStringFromClass(v6);
    [v4 raise:v5 format:{@"%@ cannot be initialized directly with -init, use the designated initializer instead.", v7}];
  }

  return [(INRelevanceProvider *)self _init];
}

@end