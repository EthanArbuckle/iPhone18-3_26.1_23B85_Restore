@interface SCNActionRunAction
+ (id)runAction:(id)action afterActionWithKey:(id)key;
+ (id)runAction:(id)action onFirstChildWithName:(id)name;
- (SCNActionRunAction)init;
- (id)copyWithZone:(_NSZone *)zone;
- (id)reversedAction;
- (void)dealloc;
- (void)updateWithTarget:(id)target forTime:(double)time;
- (void)willStartWithTarget:(id)target atTime:(double)time;
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

+ (id)runAction:(id)action onFirstChildWithName:(id)name
{
  v6 = objc_alloc_init(SCNActionRunAction);
  v6->_action = [action copy];
  v6->_subSpriteKey = [name copy];
  v6->_runOnSubSprite = 1;
  return v6;
}

+ (id)runAction:(id)action afterActionWithKey:(id)key
{
  v6 = objc_alloc_init(SCNActionRunAction);
  v6->_action = [action copy];
  v6->_actionKey = [key copy];
  v6->_waitForKeyedAction = 1;
  return v6;
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = SCNActionRunAction;
  [(SCNAction *)&v3 dealloc];
}

- (void)willStartWithTarget:(id)target atTime:(double)time
{
  v5.receiver = self;
  v5.super_class = SCNActionRunAction;
  [(SCNAction *)&v5 willStartWithTarget:target atTime:time];
  self->_fired = 0;
}

- (void)updateWithTarget:(id)target forTime:(double)time
{
  if (!self->_fired)
  {
    if (self->_runOnSubSprite)
    {
      v6 = [target childNodeWithName:self->_subSpriteKey recursively:{1, time}];
      if (v6)
      {
        [v6 runAction:self->_action];
      }

      self->_fired = 1;

      [(SCNAction *)self setFinished:1];
    }

    else if (self->_waitForKeyedAction && ![target actionForKey:{self->_actionKey, time}])
    {
      [target runAction:self->_action];
      self->_fired = 1;
    }
  }
}

- (id)copyWithZone:(_NSZone *)zone
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