@interface CAStateControllerTransition
- (CAStateControllerTransition)init;
- (void)addAnimation:(id)animation;
- (void)animationDidStop:(id)stop finished:(BOOL)finished;
- (void)dealloc;
- (void)invalidate;
- (void)removeAnimationFromLayer:(id)layer forKey:(id)key;
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

- (void)animationDidStop:(id)stop finished:(BOOL)finished
{
  finishedCopy = finished;
  delegate = [(CAStateController *)self->_controller delegate];
  if (objc_opt_respondsToSelector())
  {
    [(CAStateControllerDelegate *)delegate stateController:self->_controller transitionDidStop:self->_transition completed:finishedCopy];
  }

  self->_masterKey = 0;

  [(CAStateControllerTransition *)self invalidate];
}

- (void)removeAnimationFromLayer:(id)layer forKey:(id)key
{
  if ([objc_msgSend(layer animationForKey:{key), "CAStateControllerTransition"}] == self)
  {

    [layer removeAnimationForKey:key];
  }
}

- (void)addAnimation:(id)animation
{
  animations = self->_animations;
  if (!animations)
  {
    animations = objc_alloc_init(MEMORY[0x1E695DF70]);
    self->_animations = animations;
  }

  [(NSMutableArray *)animations addObject:animation];
}

@end