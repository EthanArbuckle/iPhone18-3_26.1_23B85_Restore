@interface SCNActionRunAction
+ (id)runAction:(id)a3 afterActionWithKey:(id)a4;
+ (id)runAction:(id)a3 onFirstChildWithName:(id)a4;
- (SCNActionRunAction)init;
- (id)copyWithZone:(_NSZone *)a3;
- (id)reversedAction;
- (void)dealloc;
- (void)updateWithTarget:(id)a3 forTime:(double)a4;
- (void)willStartWithTarget:(id)a3 atTime:(double)a4;
@end

@implementation SCNActionRunAction

- (SCNActionRunAction)init
{
  v3.receiver = self;
  v3.super_class = SCNActionRunAction;
  result = [(SCNAction *)&v3 init];
  if (result)
  {
    result->_action = 0;
    result->_subSpriteKey = 0;
    result->_actionKey = 0;
    result->_waitForKeyedAction = 0;
    result->_runOnSubSprite = 0;
    result->_fired = 0;
  }

  return result;
}

+ (id)runAction:(id)a3 onFirstChildWithName:(id)a4
{
  v6 = objc_alloc_init(SCNActionRunAction);
  v6->_action = [a3 copy];
  v6->_subSpriteKey = [a4 copy];
  v6->_runOnSubSprite = 1;
  return v6;
}

+ (id)runAction:(id)a3 afterActionWithKey:(id)a4
{
  v6 = objc_alloc_init(SCNActionRunAction);
  v6->_action = [a3 copy];
  v6->_actionKey = [a4 copy];
  v6->_waitForKeyedAction = 1;
  return v6;
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = SCNActionRunAction;
  [(SCNAction *)&v3 dealloc];
}

- (void)willStartWithTarget:(id)a3 atTime:(double)a4
{
  v5.receiver = self;
  v5.super_class = SCNActionRunAction;
  [(SCNAction *)&v5 willStartWithTarget:a3 atTime:a4];
  self->_fired = 0;
}

- (void)updateWithTarget:(id)a3 forTime:(double)a4
{
  if (!self->_fired)
  {
    if (self->_runOnSubSprite)
    {
      v6 = [a3 childNodeWithName:self->_subSpriteKey recursively:{1, a4}];
      if (v6)
      {
        [v6 runAction:self->_action];
      }

      self->_fired = 1;

      [(SCNAction *)self setFinished:1];
    }

    else if (self->_waitForKeyedAction && ![a3 actionForKey:{self->_actionKey, a4}])
    {
      [a3 runAction:self->_action];
      self->_fired = 1;
    }
  }
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = objc_alloc_init(SCNActionRunAction);
  v4->_action = [(SCNAction *)self->_action copy];
  v4->_actionKey = [(NSString *)self->_actionKey copy];
  v4->_subSpriteKey = [(NSString *)self->_subSpriteKey copy];
  v4->_waitForKeyedAction = self->_waitForKeyedAction;
  v4->_runOnSubSprite = self->_runOnSubSprite;
  return v4;
}

- (id)reversedAction
{
  v3 = objc_alloc_init(SCNActionRunAction);
  v3->_action = [(SCNAction *)self->_action reversedAction];
  v3->_actionKey = [(NSString *)self->_actionKey copy];
  v3->_subSpriteKey = [(NSString *)self->_subSpriteKey copy];
  v3->_waitForKeyedAction = self->_waitForKeyedAction;
  v3->_runOnSubSprite = self->_runOnSubSprite;

  return v3;
}

@end