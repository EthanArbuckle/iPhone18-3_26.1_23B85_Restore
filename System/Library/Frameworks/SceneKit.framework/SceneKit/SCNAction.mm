@interface SCNAction
+ (id)actionNamed:(id)named;
- (SCNAction)init;
- (SCNAction)initWithCoder:(id)coder;
- (SCNAction)reversedAction;
- (id)copy;
- (id)copyWithZone:(_NSZone *)zone;
- (void)dealloc;
- (void)encodeWithCoder:(id)coder;
- (void)setCppAction:(void *)action;
- (void)setTimingFunction:(SCNActionTimingFunction)timingFunction;
- (void)updateWithTarget:(id)target forTime:(double)time;
- (void)wasAddedToTarget:(id)target atTime:(double)time;
- (void)willStartWithTarget:(id)target atTime:(double)time;
@end

@implementation SCNAction

- (void)setTimingFunction:(SCNActionTimingFunction)timingFunction
{
  var2 = self->_caction->var2;
  if (var2 != timingFunction)
  {
    if (var2)
    {
      _Block_release(var2);
      self->_caction->var2 = 0;
    }

    if (timingFunction)
    {
      self->_caction->var2 = _Block_copy(timingFunction);
    }
  }
}

- (SCNAction)init
{
  v3.receiver = self;
  v3.super_class = SCNAction;
  if ([(SCNAction *)&v3 init])
  {
    operator new();
  }

  return 0;
}

- (SCNAction)initWithCoder:(id)coder
{
  v4.receiver = self;
  v4.super_class = SCNAction;
  if ([(SCNAction *)&v4 init])
  {
    operator new();
  }

  return 0;
}

- (void)encodeWithCoder:(id)coder
{
  [coder encodeObject:objc_msgSend(MEMORY[0x277CCABB0] forKey:{"numberWithDouble:", self->_caction->var7), @"_duration"}];
  [coder encodeObject:objc_msgSend(MEMORY[0x277CCABB0] forKey:{"numberWithInteger:", self->_caction->var14), @"_timingMode"}];
  [coder encodeObject:objc_msgSend(MEMORY[0x277CCABB0] forKey:{"numberWithDouble:", self->_caction->var5), @"_beginTime"}];
  [coder encodeObject:objc_msgSend(MEMORY[0x277CCABB0] forKey:{"numberWithDouble:", self->_caction->var6), @"_pausedTime"}];
  [coder encodeObject:objc_msgSend(MEMORY[0x277CCABB0] forKey:{"numberWithBool:", self->_caction->var11), @"_isRunning"}];
  [coder encodeObject:objc_msgSend(MEMORY[0x277CCABB0] forKey:{"numberWithBool:", self->_caction->var10), @"_finished"}];
  var13 = self->_caction->var13;
  objc_opt_class();

  SCNEncodeNamedObject(coder, var13);
}

- (id)copy
{
  v3 = MEMORY[0x21CF072F0](self, a2);

  return [(SCNAction *)self copyWithZone:v3];
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = objc_alloc_init(objc_opt_class());
  caction = [v4 caction];
  caction = self->_caction;
  *(caction + 104) = caction->var14;
  *(caction + 120) = *&caction->var16;
  *(caction + 136) = caction->var18;
  *(caction + 80) = 0;
  *(caction + 56) = *&caction->var7;
  var2 = caction->var2;
  if (var2)
  {
    *(caction + 16) = _Block_copy(var2);
  }

  return v4;
}

- (SCNAction)reversedAction
{
  v2 = [(SCNAction *)self copy];

  return v2;
}

- (void)dealloc
{
  caction = self->_caction;
  if (caction)
  {
    caction->var3 = 0;
    (*(caction->var0 + 1))(caction, a2);
    self->_caction = 0;
  }

  v4.receiver = self;
  v4.super_class = SCNAction;
  [(SCNAction *)&v4 dealloc];
}

+ (id)actionNamed:(id)named
{
  v4 = objc_opt_class();

  return [SCNAssetCatalog objectWithName:named class:v4];
}

- (void)setCppAction:(void *)action
{
  caction = self->_caction;
  if (caction)
  {
    (*(caction->var0 + 1))(caction, a2);
  }

  self->_caction = action;
  *(action + 3) = self;
}

- (void)wasAddedToTarget:(id)target atTime:(double)time
{
  caction = self->_caction;
  caction->var10 = 0;
  var7 = caction->var7;
  var8 = caction->var8;
  v7 = var8;
  if ((LODWORD(v7) & 0x60000000) != 0)
  {
    v9 = var7 - var8 * 0.5 + rand() / 2147483650.0 * (var8 + var7 - (var7 - var8));
    if (v9 < 0.0)
    {
      v9 = 0.0;
    }

    self->_caction->var1 = v9;
  }

  else
  {
    caction->var1 = var7;
  }
}

- (void)willStartWithTarget:(id)target atTime:(double)time
{
  caction = self->_caction;
  caction->var5 = time;
  caction->var15 = 0.0;
  caction->var11 = 1;
}

- (void)updateWithTarget:(id)target forTime:(double)time
{
  SCNCAction::ratioForTime(self->_caction, time);
  if (v7.n128_f64[0] >= 1.0)
  {
    caction = self->_caction;
    v7.n128_f64[0] = time;

    SCNCAction::didFinishWithTargetAtTime(caction, target, v7);
  }
}

@end