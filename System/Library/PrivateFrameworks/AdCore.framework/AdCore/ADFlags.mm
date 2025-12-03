@interface ADFlags
+ (id)initWithFlags:(unint64_t)flags;
- (ADFlags)init;
- (id)copyWithZone:(_NSZone *)zone;
@end

@implementation ADFlags

+ (id)initWithFlags:(unint64_t)flags
{
  v4 = objc_alloc_init(ADFlags);
  [(ADFlags *)v4 set:flags];

  return v4;
}

- (ADFlags)init
{
  v5.receiver = self;
  v5.super_class = ADFlags;
  v2 = [(ADFlags *)&v5 init];
  v3 = v2;
  if (v2)
  {
    [(ADFlags *)v2 reset];
  }

  return v3;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
  v5 = v4;
  if (v4)
  {
    [v4 set:self->_flags];
  }

  return v5;
}

@end