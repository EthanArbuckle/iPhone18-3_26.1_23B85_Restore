@interface SCNActionHide
+ (id)hide;
+ (id)unhide;
- (SCNActionHide)init;
- (SCNActionHide)initWithCoder:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)parameters;
- (id)reversedAction;
- (void)encodeWithCoder:(id)a3;
@end

@implementation SCNActionHide

- (SCNActionHide)init
{
  v3.receiver = self;
  v3.super_class = SCNActionHide;
  if ([(SCNAction *)&v3 init])
  {
    operator new();
  }

  return 0;
}

- (SCNActionHide)initWithCoder:(id)a3
{
  v4.receiver = self;
  v4.super_class = SCNActionHide;
  if ([(SCNAction *)&v4 initWithCoder:?])
  {
    operator new();
  }

  return 0;
}

- (void)encodeWithCoder:(id)a3
{
  v5.receiver = self;
  v5.super_class = SCNActionHide;
  [(SCNAction *)&v5 encodeWithCoder:?];
  [a3 encodeBool:self->_mycaction->var19 forKey:@"_hide"];
}

+ (id)hide
{
  v2 = objc_alloc_init(SCNActionHide);
  v2->_mycaction->var19 = 1;
  [(SCNAction *)v2 setDuration:0.0];

  return v2;
}

+ (id)unhide
{
  v2 = objc_alloc_init(SCNActionHide);
  v2->_mycaction->var19 = 0;
  [(SCNAction *)v2 setDuration:0.0];

  return v2;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v6.receiver = self;
  v6.super_class = SCNActionHide;
  v4 = [(SCNAction *)&v6 copyWithZone:a3];
  [(SCNAction *)self duration];
  [v4 setDuration:?];
  *(v4[2] + 144) = self->_mycaction->var19;
  return v4;
}

- (id)reversedAction
{
  result = objc_alloc_init(SCNActionHide);
  mycaction = self->_mycaction;
  v5 = *(result + 2);
  *(v5 + 144) = !mycaction->var19;
  *(v5 + 64) = mycaction->var8;
  return result;
}

- (id)parameters
{
  v3[1] = *MEMORY[0x277D85DE8];
  v3[0] = [MEMORY[0x277CCABB0] numberWithInt:self->_mycaction->var19];
  return [MEMORY[0x277CBEA60] arrayWithObjects:v3 count:1];
}

@end