@interface CAStateControllerLayer
- (CAStateControllerLayer)initWithLayer:(id)a3;
- (void)addTransition:(id)a3;
- (void)dealloc;
- (void)invalidate;
@end

@implementation CAStateControllerLayer

- (void)dealloc
{
  v4 = *MEMORY[0x1E69E9840];
  [(CAStateControllerLayer *)self invalidate];

  [(NSTimer *)self->_nextTimer invalidate];
  v3.receiver = self;
  v3.super_class = CAStateControllerLayer;
  [(CAStateControllerLayer *)&v3 dealloc];
}

- (void)invalidate
{
  v13 = *MEMORY[0x1E69E9840];
  transitions = self->_transitions;
  self->_transitions = 0;
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v4 = [(NSMutableArray *)transitions countByEnumeratingWithState:&v9 objects:v8 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v10;
    do
    {
      v7 = 0;
      do
      {
        if (*v10 != v6)
        {
          objc_enumerationMutation(transitions);
        }

        [*(*(&v9 + 1) + 8 * v7++) invalidate];
      }

      while (v5 != v7);
      v5 = [(NSMutableArray *)transitions countByEnumeratingWithState:&v9 objects:v8 count:16];
    }

    while (v5);
  }

  self->_layer = 0;
}

- (void)addTransition:(id)a3
{
  transitions = self->_transitions;
  if (!transitions)
  {
    transitions = objc_alloc_init(MEMORY[0x1E695DF70]);
    self->_transitions = transitions;
  }

  [(NSMutableArray *)transitions addObject:a3];
}

- (CAStateControllerLayer)initWithLayer:(id)a3
{
  v7 = *MEMORY[0x1E69E9840];
  v6.receiver = self;
  v6.super_class = CAStateControllerLayer;
  v4 = [(CAStateControllerLayer *)&v6 init];
  if (v4)
  {
    v4->_layer = a3;
  }

  return v4;
}

@end