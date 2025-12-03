@interface CAStateControllerUndo
- (void)addElement:(id)element;
- (void)addTransition:(id)transition;
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

- (void)addTransition:(id)transition
{
  transitions = self->_transitions;
  if (!transitions)
  {
    transitions = objc_alloc_init(MEMORY[0x1E695DF70]);
    self->_transitions = transitions;
  }

  [(NSMutableArray *)transitions addObject:transition];
}

- (void)addElement:(id)element
{
  elements = self->_elements;
  if (!elements)
  {
    elements = objc_alloc_init(MEMORY[0x1E695DF70]);
    self->_elements = elements;
  }

  [(NSMutableArray *)elements addObject:element];
}

@end