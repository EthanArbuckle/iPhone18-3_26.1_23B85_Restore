@interface CAStateControllerAnimation
- (CAStateControllerAnimation)initWithLayer:(id)a3 key:(id)a4;
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

- (CAStateControllerAnimation)initWithLayer:(id)a3 key:(id)a4
{
  v9 = *MEMORY[0x1E69E9840];
  v8.receiver = self;
  v8.super_class = CAStateControllerAnimation;
  v6 = [(CAStateControllerAnimation *)&v8 init];
  if (v6)
  {
    v6->_layer = a3;
    v6->_key = [a4 copy];
  }

  return v6;
}

@end