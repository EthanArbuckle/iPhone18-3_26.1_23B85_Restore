@interface SKHide
+ (id)hide;
+ (id)unhide;
- (SKHide)init;
- (SKHide)initWithCoder:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)reversedAction;
- (void)encodeWithCoder:(id)a3;
@end

@implementation SKHide

- (SKHide)init
{
  v3.receiver = self;
  v3.super_class = SKHide;
  if ([(SKAction *)&v3 init])
  {
    operator new();
  }

  return 0;
}

- (SKHide)initWithCoder:(id)a3
{
  v4 = a3;
  v6.receiver = self;
  v6.super_class = SKHide;
  if ([(SKAction *)&v6 initWithCoder:v4])
  {
    operator new();
  }

  return 0;
}

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  v5.receiver = self;
  v5.super_class = SKHide;
  [(SKAction *)&v5 encodeWithCoder:v4];
  [v4 encodeBool:self->_mycaction->var19 forKey:@"_hiddenValue"];
}

+ (id)hide
{
  v2 = objc_alloc_init(SKHide);
  v2->_mycaction->var19 = 1;
  [(SKAction *)v2 setDuration:0.0];

  return v2;
}

+ (id)unhide
{
  v2 = objc_alloc_init(SKHide);
  v2->_mycaction->var19 = 0;
  [(SKAction *)v2 setDuration:0.0];

  return v2;
}

- (id)reversedAction
{
  if (self->_mycaction->var19)
  {
    +[SKHide unhide];
  }

  else
  {
    +[SKHide hide];
  }
  v2 = ;

  return v2;
}

- (id)copyWithZone:(_NSZone *)a3
{
  if (self->_mycaction->var19)
  {
    +[SKHide hide];
  }

  else
  {
    +[SKHide unhide];
  }

  return objc_claimAutoreleasedReturnValue();
}

@end