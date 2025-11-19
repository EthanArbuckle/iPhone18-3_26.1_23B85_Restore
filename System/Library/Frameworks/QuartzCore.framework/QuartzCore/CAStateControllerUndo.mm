@interface CAStateControllerUndo
- (void)addElement:(id)a3;
- (void)addTransition:(id)a3;
- (void)dealloc;
@end

@implementation CAStateControllerUndo

- (void)dealloc
{
  v4 = *MEMORY[0x1E69E9840];

  v3.receiver = self;
  v3.super_class = CAStateControllerUndo;
  [(CAStateControllerUndo *)&v3 dealloc];
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

- (void)addElement:(id)a3
{
  elements = self->_elements;
  if (!elements)
  {
    elements = objc_alloc_init(MEMORY[0x1E695DF70]);
    self->_elements = elements;
  }

  [(NSMutableArray *)elements addObject:a3];
}

@end