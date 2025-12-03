@interface SKCustomAction
+ (id)customActionWithDuration:(double)duration actionBlock:(id)block;
- (SKCustomAction)init;
- (SKCustomAction)initWithCoder:(id)coder;
- (id)copyWithZone:(_NSZone *)zone;
- (id)reversedAction;
- (void)encodeWithCoder:(id)coder;
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

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  v5.receiver = self;
  v5.super_class = SKCustomAction;
  [(SKAction *)&v5 encodeWithCoder:coderCopy];
  NSLog(&cfstr_SkactionCustom.isa);
}

- (SKCustomAction)initWithCoder:(id)coder
{
  coderCopy = coder;
  v6.receiver = self;
  v6.super_class = SKCustomAction;
  if ([(SKAction *)&v6 initWithCoder:coderCopy])
  {
    operator new();
  }

  NSLog(&cfstr_SkactionCustom_0.isa);

  return 0;
}

+ (id)customActionWithDuration:(double)duration actionBlock:(id)block
{
  blockCopy = block;
  v6 = objc_alloc_init(SKCustomAction);
  v7 = MEMORY[0x21CF0AB10](blockCopy);
  mycaction = v6->_mycaction;
  var19 = mycaction->var19;
  mycaction->var19 = v7;

  [(SKAction *)v6 setDuration:duration];

  return v6;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v9.receiver = self;
  v9.super_class = SKCustomAction;
  v4 = [(SKAction *)&v9 copyWithZone:zone];
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