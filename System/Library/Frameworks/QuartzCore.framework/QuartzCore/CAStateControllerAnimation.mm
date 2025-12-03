@interface CAStateControllerAnimation
- (CAStateControllerAnimation)initWithLayer:(id)layer key:(id)key;
- (void)dealloc;
@end

@implementation CAStateControllerAnimation

- (void)dealloc
{
  v4 = *MEMORY[0x1E69E9840];

  v3.receiver = self;
  v3.super_class = CAStateControllerAnimation;
  [(CAStateControllerAnimation *)&v3 dealloc];
}

- (CAStateControllerAnimation)initWithLayer:(id)layer key:(id)key
{
  v9 = *MEMORY[0x1E69E9840];
  v8.receiver = self;
  v8.super_class = CAStateControllerAnimation;
  v6 = [(CAStateControllerAnimation *)&v8 init];
  if (v6)
  {
    v6->_layer = layer;
    v6->_key = [key copy];
  }

  return v6;
}

@end