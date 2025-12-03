@interface SCNActionFade
+ (id)fadeInWithDuration:(double)duration;
+ (id)fadeOpacityBy:(double)by duration:(double)duration;
+ (id)fadeOpacityTo:(double)to duration:(double)duration;
+ (id)fadeOutWithDuration:(double)duration;
- (SCNActionFade)init;
- (SCNActionFade)initWithCoder:(id)coder;
- (id)copyWithZone:(_NSZone *)zone;
- (id)parameters;
- (id)reversedAction;
- (void)encodeWithCoder:(id)coder;
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

- (SCNActionFade)initWithCoder:(id)coder
{
  v4.receiver = self;
  v4.super_class = SCNActionFade;
  if ([(SCNAction *)&v4 initWithCoder:?])
  {
    operator new();
  }

  return 0;
}

- (void)encodeWithCoder:(id)coder
{
  v6.receiver = self;
  v6.super_class = SCNActionFade;
  [(SCNAction *)&v6 encodeWithCoder:?];
  [coder encodeObject:objc_msgSend(MEMORY[0x277CCABB0] forKey:{"numberWithDouble:", self->_mycaction->var19), @"_opacityTarget"}];
  [coder encodeObject:objc_msgSend(MEMORY[0x277CCABB0] forKey:{"numberWithDouble:", self->_mycaction->var20), @"_opacityTargetReversed"}];
  [coder encodeObject:objc_msgSend(MEMORY[0x277CCABB0] forKey:{"numberWithDouble:", self->_mycaction->var21), @"_lastOpacity"}];
  LOBYTE(v5) = self->_mycaction->var22;
  [coder encodeObject:objc_msgSend(MEMORY[0x277CCABB0] forKey:{"numberWithDouble:", v5), @"_isRelative"}];
}

- (id)parameters
{
  v4[1] = *MEMORY[0x277D85DE8];
  *&v2 = self->_mycaction->var19;
  v4[0] = [MEMORY[0x277CCABB0] numberWithFloat:v2];
  return [MEMORY[0x277CBEA60] arrayWithObjects:v4 count:1];
}

+ (id)fadeOpacityBy:(double)by duration:(double)duration
{
  v6 = objc_alloc_init(SCNActionFade);
  v7 = v6;
  byCopy = by;
  mycaction = v6->_mycaction;
  mycaction->var19 = byCopy;
  v10 = -byCopy;
  v11 = (LODWORD(byCopy) & 0x60000000) == 0;
  v12 = 0.0;
  if (!v11)
  {
    v12 = v10;
  }

  mycaction->var20 = v12;
  mycaction->var22 = 1;
  [(SCNAction *)v6 setDuration:duration];
  return v7;
}

+ (id)fadeOpacityTo:(double)to duration:(double)duration
{
  v6 = objc_alloc_init(SCNActionFade);
  mycaction = v6->_mycaction;
  toCopy = to;
  mycaction->var19 = toCopy;
  mycaction->var20 = toCopy;
  mycaction->var22 = 0;
  [(SCNAction *)v6 setDuration:duration];
  return v6;
}

+ (id)fadeInWithDuration:(double)duration
{
  v4 = objc_alloc_init(SCNActionFade);
  mycaction = v4->_mycaction;
  *&mycaction->var19 = 1065353216;
  mycaction->var22 = 0;
  [(SCNAction *)v4 setDuration:duration];
  return v4;
}

+ (id)fadeOutWithDuration:(double)duration
{
  v4 = objc_alloc_init(SCNActionFade);
  mycaction = v4->_mycaction;
  *&mycaction->var19 = 0x3F80000000000000;
  mycaction->var22 = 0;
  [(SCNAction *)v4 setDuration:duration];
  return v4;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v8.receiver = self;
  v8.super_class = SCNActionFade;
  v4 = [(SCNAction *)&v8 copyWithZone:zone];
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