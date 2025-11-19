@interface SCNActionFade
+ (id)fadeInWithDuration:(double)a3;
+ (id)fadeOpacityBy:(double)a3 duration:(double)a4;
+ (id)fadeOpacityTo:(double)a3 duration:(double)a4;
+ (id)fadeOutWithDuration:(double)a3;
- (SCNActionFade)init;
- (SCNActionFade)initWithCoder:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)parameters;
- (id)reversedAction;
- (void)encodeWithCoder:(id)a3;
@end

@implementation SCNActionFade

- (SCNActionFade)init
{
  v3.receiver = self;
  v3.super_class = SCNActionFade;
  if ([(SCNAction *)&v3 init])
  {
    operator new();
  }

  return 0;
}

- (SCNActionFade)initWithCoder:(id)a3
{
  v4.receiver = self;
  v4.super_class = SCNActionFade;
  if ([(SCNAction *)&v4 initWithCoder:?])
  {
    operator new();
  }

  return 0;
}

- (void)encodeWithCoder:(id)a3
{
  v6.receiver = self;
  v6.super_class = SCNActionFade;
  [(SCNAction *)&v6 encodeWithCoder:?];
  [a3 encodeObject:objc_msgSend(MEMORY[0x277CCABB0] forKey:{"numberWithDouble:", self->_mycaction->var19), @"_opacityTarget"}];
  [a3 encodeObject:objc_msgSend(MEMORY[0x277CCABB0] forKey:{"numberWithDouble:", self->_mycaction->var20), @"_opacityTargetReversed"}];
  [a3 encodeObject:objc_msgSend(MEMORY[0x277CCABB0] forKey:{"numberWithDouble:", self->_mycaction->var21), @"_lastOpacity"}];
  LOBYTE(v5) = self->_mycaction->var22;
  [a3 encodeObject:objc_msgSend(MEMORY[0x277CCABB0] forKey:{"numberWithDouble:", v5), @"_isRelative"}];
}

- (id)parameters
{
  v4[1] = *MEMORY[0x277D85DE8];
  *&v2 = self->_mycaction->var19;
  v4[0] = [MEMORY[0x277CCABB0] numberWithFloat:v2];
  return [MEMORY[0x277CBEA60] arrayWithObjects:v4 count:1];
}

+ (id)fadeOpacityBy:(double)a3 duration:(double)a4
{
  v6 = objc_alloc_init(SCNActionFade);
  v7 = v6;
  v8 = a3;
  mycaction = v6->_mycaction;
  mycaction->var19 = v8;
  v10 = -v8;
  v11 = (LODWORD(v8) & 0x60000000) == 0;
  v12 = 0.0;
  if (!v11)
  {
    v12 = v10;
  }

  mycaction->var20 = v12;
  mycaction->var22 = 1;
  [(SCNAction *)v6 setDuration:a4];
  return v7;
}

+ (id)fadeOpacityTo:(double)a3 duration:(double)a4
{
  v6 = objc_alloc_init(SCNActionFade);
  mycaction = v6->_mycaction;
  v8 = a3;
  mycaction->var19 = v8;
  mycaction->var20 = v8;
  mycaction->var22 = 0;
  [(SCNAction *)v6 setDuration:a4];
  return v6;
}

+ (id)fadeInWithDuration:(double)a3
{
  v4 = objc_alloc_init(SCNActionFade);
  mycaction = v4->_mycaction;
  *&mycaction->var19 = 1065353216;
  mycaction->var22 = 0;
  [(SCNAction *)v4 setDuration:a3];
  return v4;
}

+ (id)fadeOutWithDuration:(double)a3
{
  v4 = objc_alloc_init(SCNActionFade);
  mycaction = v4->_mycaction;
  *&mycaction->var19 = 0x3F80000000000000;
  mycaction->var22 = 0;
  [(SCNAction *)v4 setDuration:a3];
  return v4;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v8.receiver = self;
  v8.super_class = SCNActionFade;
  v4 = [(SCNAction *)&v8 copyWithZone:a3];
  [(SCNAction *)self duration];
  [v4 setDuration:?];
  mycaction = self->_mycaction;
  v6 = v4[2];
  *(v6 + 144) = *&mycaction->var19;
  *(v6 + 156) = mycaction->var22;
  return v4;
}

- (id)reversedAction
{
  result = objc_alloc_init(SCNActionFade);
  mycaction = self->_mycaction;
  v5 = *(result + 2);
  *(v5 + 156) = mycaction->var22;
  *(v5 + 144) = mycaction->var20;
  *(v5 + 148) = mycaction->var19;
  *(v5 + 64) = mycaction->var8;
  return result;
}

@end