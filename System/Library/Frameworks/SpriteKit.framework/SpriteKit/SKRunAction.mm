@interface SKRunAction
+ (id)runAction:(id)action afterActionWithKey:(id)key;
+ (id)runAction:(id)action onFirstChildWithName:(id)name;
- (SKRunAction)init;
- (SKRunAction)initWithCoder:(id)coder;
- (id)copyWithZone:(_NSZone *)zone;
- (id)reversedAction;
- (void)encodeWithCoder:(id)coder;
- (void)updateWithTarget:(id)target forTime:(double)time;
- (void)willStartWithTarget:(id)target atTime:(double)time;
@end

@implementation SKRunAction

- (SKRunAction)init
{
  v8.receiver = self;
  v8.super_class = SKRunAction;
  v2 = [(SKAction *)&v8 init];
  v3 = v2;
  if (v2)
  {
    action = v2->_action;
    v2->_action = 0;

    subSpriteKey = v3->_subSpriteKey;
    v3->_subSpriteKey = 0;

    actionKey = v3->_actionKey;
    v3->_actionKey = 0;

    v3->_waitForKeyedAction = 0;
    v3->_runOnSubSprite = 0;
    v3->_fired = 0;
  }

  return v3;
}

- (SKRunAction)initWithCoder:(id)coder
{
  coderCopy = coder;
  v15.receiver = self;
  v15.super_class = SKRunAction;
  v5 = [(SKAction *)&v15 initWithCoder:coderCopy];
  if (v5)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"_action"];
    action = v5->_action;
    v5->_action = v6;

    v8 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"_subSpriteKey"];
    subSpriteKey = v5->_subSpriteKey;
    v5->_subSpriteKey = v8;

    v10 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"_actionKey"];
    actionKey = v5->_actionKey;
    v5->_actionKey = v10;

    v12 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"_waitForKeyedAction"];
    v5->_waitForKeyedAction = [v12 BOOLValue];

    v13 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"_runOnSubSprite"];
    v5->_runOnSubSprite = [v13 BOOLValue];

    v5->_fired = 0;
  }

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  v7.receiver = self;
  v7.super_class = SKRunAction;
  [(SKAction *)&v7 encodeWithCoder:coderCopy];
  [coderCopy encodeObject:self->_action forKey:@"_action"];
  [coderCopy encodeObject:self->_subSpriteKey forKey:@"_subSpriteKey"];
  [coderCopy encodeObject:self->_actionKey forKey:@"_actionKey"];
  v5 = [MEMORY[0x277CCABB0] numberWithBool:self->_waitForKeyedAction];
  [coderCopy encodeObject:v5 forKey:@"_waitForKeyedAction"];

  v6 = [MEMORY[0x277CCABB0] numberWithBool:self->_runOnSubSprite];
  [coderCopy encodeObject:v6 forKey:@"_runOnSubSprite"];
}

+ (id)runAction:(id)action onFirstChildWithName:(id)name
{
  actionCopy = action;
  nameCopy = name;
  v7 = objc_alloc_init(SKRunAction);
  v8 = [actionCopy copy];
  action = v7->_action;
  v7->_action = v8;

  subSpriteKey = v7->_subSpriteKey;
  v7->_subSpriteKey = nameCopy;

  v7->_runOnSubSprite = 1;

  return v7;
}

+ (id)runAction:(id)action afterActionWithKey:(id)key
{
  actionCopy = action;
  keyCopy = key;
  v7 = objc_alloc_init(SKRunAction);
  v8 = [actionCopy copy];
  action = v7->_action;
  v7->_action = v8;

  actionKey = v7->_actionKey;
  v7->_actionKey = keyCopy;

  v7->_waitForKeyedAction = 1;

  return v7;
}

- (void)willStartWithTarget:(id)target atTime:(double)time
{
  v5.receiver = self;
  v5.super_class = SKRunAction;
  [(SKAction *)&v5 willStartWithTarget:target atTime:time];
  self->_fired = 0;
}

- (void)updateWithTarget:(id)target forTime:(double)time
{
  targetCopy = target;
  if (!self->_fired)
  {
    if (self->_runOnSubSprite)
    {
      v9 = targetCopy;
      v6 = [targetCopy childNodeWithName:self->_subSpriteKey];
      v7 = v6;
      if (v6)
      {
        [v6 runAction:self->_action];
      }

      self->_fired = 1;
      [(SKAction *)self setFinished:1];

      goto LABEL_6;
    }

    if (self->_waitForKeyedAction)
    {
      v9 = targetCopy;
      v8 = [targetCopy actionForKey:self->_actionKey];

      targetCopy = v9;
      if (!v8)
      {
        [v9 runAction:self->_action];
        self->_fired = 1;
LABEL_6:
        targetCopy = v9;
      }
    }
  }
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = objc_alloc_init(SKRunAction);
  v5 = [(SKAction *)self->_action copy];
  action = v4->_action;
  v4->_action = v5;

  objc_storeStrong(&v4->_actionKey, self->_actionKey);
  objc_storeStrong(&v4->_subSpriteKey, self->_subSpriteKey);
  v4->_waitForKeyedAction = self->_waitForKeyedAction;
  v4->_runOnSubSprite = self->_runOnSubSprite;
  return v4;
}

- (id)reversedAction
{
  v3 = objc_alloc_init(SKRunAction);
  reversedAction = [(SKAction *)self->_action reversedAction];
  action = v3->_action;
  v3->_action = reversedAction;

  objc_storeStrong(&v3->_actionKey, self->_actionKey);
  objc_storeStrong(&v3->_subSpriteKey, self->_subSpriteKey);
  v3->_waitForKeyedAction = self->_waitForKeyedAction;
  v3->_runOnSubSprite = self->_runOnSubSprite;

  return v3;
}

@end