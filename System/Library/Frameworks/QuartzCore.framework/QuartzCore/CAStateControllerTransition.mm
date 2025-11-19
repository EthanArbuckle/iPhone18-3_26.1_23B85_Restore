@interface CAStateControllerTransition
- (CAStateControllerTransition)init;
- (void)addAnimation:(id)a3;
- (void)animationDidStop:(id)a3 finished:(BOOL)a4;
- (void)dealloc;
- (void)invalidate;
- (void)removeAnimationFromLayer:(id)a3 forKey:(id)a4;
@end

@implementation CAStateControllerTransition

- (CAStateControllerTransition)init
{
  v4 = *MEMORY[0x1E69E9840];
  v3.receiver = self;
  v3.super_class = CAStateControllerTransition;
  result = [(CAStateControllerTransition *)&v3 init];
  if (result)
  {
    result->_speed = 1.0;
  }

  return result;
}

- (void)dealloc
{
  v4 = *MEMORY[0x1E69E9840];
  [(CAStateControllerTransition *)self invalidate];

  v3.receiver = self;
  v3.super_class = CAStateControllerTransition;
  [(CAStateControllerTransition *)&v3 dealloc];
}

- (void)invalidate
{
  v16 = *MEMORY[0x1E69E9840];
  p_controller = &self->_controller;
  if (self->_controller)
  {
    if (self->_masterKey)
    {
      [(CAStateControllerTransition *)self removeAnimationFromLayer:self->_layer forKey:?];

      self->_masterKey = 0;
    }

    animations = self->_animations;
    if (animations)
    {
      v14 = 0u;
      v15 = 0u;
      v12 = 0u;
      v13 = 0u;
      v5 = [(NSMutableArray *)animations countByEnumeratingWithState:&v12 objects:v11 count:16];
      if (v5)
      {
        v6 = v5;
        v7 = *v13;
        do
        {
          v8 = 0;
          do
          {
            if (*v13 != v7)
            {
              objc_enumerationMutation(animations);
            }

            -[CAStateControllerTransition removeAnimationFromLayer:forKey:](self, "removeAnimationFromLayer:forKey:", [*(*(&v12 + 1) + 8 * v8) layer], objc_msgSend(*(*(&v12 + 1) + 8 * v8), "key"));
            ++v8;
          }

          while (v6 != v8);
          v6 = [(NSMutableArray *)animations countByEnumeratingWithState:&v12 objects:v11 count:16];
        }

        while (v6);
      }

      self->_animations = 0;
    }

    controller = self->_controller;
    layer = self->_layer;
    *p_controller = 0;
    p_controller[1] = 0;
    [(CAStateController *)controller _removeTransition:self layer:layer];
  }
}

- (void)animationDidStop:(id)a3 finished:(BOOL)a4
{
  v4 = a4;
  v6 = [(CAStateController *)self->_controller delegate];
  if (objc_opt_respondsToSelector())
  {
    [(CAStateControllerDelegate *)v6 stateController:self->_controller transitionDidStop:self->_transition completed:v4];
  }

  self->_masterKey = 0;

  [(CAStateControllerTransition *)self invalidate];
}

- (void)removeAnimationFromLayer:(id)a3 forKey:(id)a4
{
  if ([objc_msgSend(a3 animationForKey:{a4), "CAStateControllerTransition"}] == self)
  {

    [a3 removeAnimationForKey:a4];
  }
}

- (void)addAnimation:(id)a3
{
  animations = self->_animations;
  if (!animations)
  {
    animations = objc_alloc_init(MEMORY[0x1E695DF70]);
    self->_animations = animations;
  }

  [(NSMutableArray *)animations addObject:a3];
}

@end