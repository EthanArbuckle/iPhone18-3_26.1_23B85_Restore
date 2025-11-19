@interface SKCustomAction
+ (id)customActionWithDuration:(double)a3 actionBlock:(id)a4;
- (SKCustomAction)init;
- (SKCustomAction)initWithCoder:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)reversedAction;
- (void)encodeWithCoder:(id)a3;
@end

@implementation SKCustomAction

- (SKCustomAction)init
{
  v3.receiver = self;
  v3.super_class = SKCustomAction;
  if ([(SKAction *)&v3 init])
  {
    operator new();
  }

  return 0;
}

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  v5.receiver = self;
  v5.super_class = SKCustomAction;
  [(SKAction *)&v5 encodeWithCoder:v4];
  NSLog(&cfstr_SkactionCustom.isa);
}

- (SKCustomAction)initWithCoder:(id)a3
{
  v4 = a3;
  v6.receiver = self;
  v6.super_class = SKCustomAction;
  if ([(SKAction *)&v6 initWithCoder:v4])
  {
    operator new();
  }

  NSLog(&cfstr_SkactionCustom_0.isa);

  return 0;
}

+ (id)customActionWithDuration:(double)a3 actionBlock:(id)a4
{
  v5 = a4;
  v6 = objc_alloc_init(SKCustomAction);
  v7 = MEMORY[0x21CF0AB10](v5);
  mycaction = v6->_mycaction;
  var19 = mycaction->var19;
  mycaction->var19 = v7;

  [(SKAction *)v6 setDuration:a3];

  return v6;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v9.receiver = self;
  v9.super_class = SKCustomAction;
  v4 = [(SKAction *)&v9 copyWithZone:a3];
  v5 = MEMORY[0x21CF0AB10](self->_mycaction->var19);
  v6 = v4[2];
  v7 = *(v6 + 112);
  *(v6 + 112) = v5;

  [(SKAction *)self duration];
  [v4 setDuration:?];
  return v4;
}

- (id)reversedAction
{
  v2 = [(SKAction *)self copy];

  return v2;
}

@end