@interface SCNActionRepeat
+ (id)repeatAction:(id)a3 count:(unint64_t)a4;
+ (id)repeatActionForever:(id)a3;
- (SCNActionRepeat)init;
- (SCNActionRepeat)initWithCoder:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)reversedAction;
- (void)dealloc;
- (void)encodeWithCoder:(id)a3;
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

- (SCNActionRepeat)initWithCoder:(id)a3
{
  v4.receiver = self;
  v4.super_class = SCNActionRepeat;
  if ([(SCNAction *)&v4 initWithCoder:?])
  {
    operator new();
  }

  return 0;
}

- (void)encodeWithCoder:(id)a3
{
  v5.receiver = self;
  v5.super_class = SCNActionRepeat;
  [(SCNAction *)&v5 encodeWithCoder:?];
  [a3 encodeObject:objc_msgSend(MEMORY[0x277CCABB0] forKey:{"numberWithUnsignedInteger:", self->_mycaction->var21), @"_timesToRepeat"}];
  [a3 encodeObject:objc_msgSend(MEMORY[0x277CCABB0] forKey:{"numberWithUnsignedInteger:", self->_mycaction->var20), @"_timesRepeated"}];
  [a3 encodeObject:self->_repeatedAction forKey:@"_repeatedAction"];
  [a3 encodeObject:objc_msgSend(MEMORY[0x277CCABB0] forKey:{"numberWithBool:", self->_mycaction->var23), @"_forever"}];
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = SCNActionRepeat;
  [(SCNAction *)&v3 dealloc];
}

+ (id)repeatAction:(id)a3 count:(unint64_t)a4
{
  if (a3)
  {
    v6 = objc_alloc_init(SCNActionRepeat);
    v7 = [a3 copy];
    v6->_repeatedAction = v7;
    v6->_mycaction->var19 = [(SCNAction *)v7 caction];
    v6->_mycaction->var21 = a4;
    [a3 duration];
    [(SCNAction *)v6 setDuration:v8 * a4];
  }

  else
  {
    v9 = scn_default_log();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      [SCNActionRepeat repeatAction:v9 count:?];
    }

    return [SCNActionRepeat repeatAction:[SCNAction waitForDuration:1.0] count:a4];
  }

  return v6;
}

+ (id)repeatActionForever:(id)a3
{
  if (a3)
  {
    v4 = objc_alloc_init(SCNActionRepeat);
    v5 = [a3 copy];
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

- (id)copyWithZone:(_NSZone *)a3
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