@interface SCNActionRepeat
+ (id)repeatAction:(id)action count:(unint64_t)count;
+ (id)repeatActionForever:(id)forever;
- (SCNActionRepeat)init;
- (SCNActionRepeat)initWithCoder:(id)coder;
- (id)copyWithZone:(_NSZone *)zone;
- (id)reversedAction;
- (void)dealloc;
- (void)encodeWithCoder:(id)coder;
@end

@implementation SCNActionRepeat

- (SCNActionRepeat)init
{
  v3.receiver = self;
  v3.super_class = SCNActionRepeat;
  if ([(SCNAction *)&v3 init])
  {
    operator new();
  }

  return 0;
}

- (SCNActionRepeat)initWithCoder:(id)coder
{
  v4.receiver = self;
  v4.super_class = SCNActionRepeat;
  if ([(SCNAction *)&v4 initWithCoder:?])
  {
    operator new();
  }

  return 0;
}

- (void)encodeWithCoder:(id)coder
{
  v5.receiver = self;
  v5.super_class = SCNActionRepeat;
  [(SCNAction *)&v5 encodeWithCoder:?];
  [coder encodeObject:objc_msgSend(MEMORY[0x277CCABB0] forKey:{"numberWithUnsignedInteger:", self->_mycaction->var21), @"_timesToRepeat"}];
  [coder encodeObject:objc_msgSend(MEMORY[0x277CCABB0] forKey:{"numberWithUnsignedInteger:", self->_mycaction->var20), @"_timesRepeated"}];
  [coder encodeObject:self->_repeatedAction forKey:@"_repeatedAction"];
  [coder encodeObject:objc_msgSend(MEMORY[0x277CCABB0] forKey:{"numberWithBool:", self->_mycaction->var23), @"_forever"}];
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = SCNActionRepeat;
  [(SCNAction *)&v3 dealloc];
}

+ (id)repeatAction:(id)action count:(unint64_t)count
{
  if (action)
  {
    v6 = objc_alloc_init(SCNActionRepeat);
    v7 = [action copy];
    v6->_repeatedAction = v7;
    v6->_mycaction->var19 = [(SCNAction *)v7 caction];
    v6->_mycaction->var21 = count;
    [action duration];
    [(SCNAction *)v6 setDuration:v8 * count];
  }

  else
  {
    v9 = scn_default_log();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      [SCNActionRepeat repeatAction:v9 count:?];
    }

    return [SCNActionRepeat repeatAction:[SCNAction waitForDuration:1.0] count:count];
  }

  return v6;
}

+ (id)repeatActionForever:(id)forever
{
  if (forever)
  {
    v4 = objc_alloc_init(SCNActionRepeat);
    v5 = [forever copy];
    v4->_repeatedAction = v5;
    v4->_mycaction->var19 = [(SCNAction *)v5 caction];
    v4->_mycaction->var23 = 1;
  }

  else
  {
    v6 = scn_default_log();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      [SCNActionRepeat repeatActionForever:v6];
    }

    return [SCNActionRepeat repeatActionForever:[SCNAction waitForDuration:1.0]];
  }

  return v4;
}

- (id)copyWithZone:(_NSZone *)zone
{
  mycaction = self->_mycaction;
  repeatedAction = self->_repeatedAction;
  if (mycaction->var23)
  {
    v6 = [SCNActionRepeat repeatActionForever:repeatedAction];
  }

  else
  {
    v6 = [SCNActionRepeat repeatAction:repeatedAction count:mycaction->var21];
  }

  v8 = v6;
  [v6 setTimingMode:{-[SCNAction timingMode](self, "timingMode")}];

  return v8;
}

- (id)reversedAction
{
  result = +[SCNActionRepeat repeatAction:count:](SCNActionRepeat, "repeatAction:count:", [self->_mycaction->var19->var3 reversedAction], self->_mycaction->var21);
  *(*(result + 2) + 176) = self->_mycaction->var23;
  return result;
}

@end