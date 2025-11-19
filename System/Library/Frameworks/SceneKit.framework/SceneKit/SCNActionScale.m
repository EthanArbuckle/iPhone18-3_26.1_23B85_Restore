@interface SCNActionScale
+ (id)scaleBy:(double)a3 duration:(double)a4;
+ (id)scaleTo:(double)a3 duration:(double)a4;
- (SCNActionScale)init;
- (SCNActionScale)initWithCoder:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)parameters;
- (id)reversedAction;
- (void)encodeWithCoder:(id)a3;
@end

@implementation SCNActionScale

- (SCNActionScale)init
{
  v3.receiver = self;
  v3.super_class = SCNActionScale;
  if ([(SCNAction *)&v3 init])
  {
    operator new();
  }

  return 0;
}

- (SCNActionScale)initWithCoder:(id)a3
{
  v4.receiver = self;
  v4.super_class = SCNActionScale;
  if ([(SCNAction *)&v4 initWithCoder:?])
  {
    operator new();
  }

  return 0;
}

- (void)encodeWithCoder:(id)a3
{
  v5.receiver = self;
  v5.super_class = SCNActionScale;
  [(SCNAction *)&v5 encodeWithCoder:?];
  [a3 encodeObject:objc_msgSend(MEMORY[0x277CCABB0] forKey:{"numberWithDouble:", self->_mycaction->var21), @"_lastRatio"}];
  [a3 encodeObject:objc_msgSend(MEMORY[0x277CCABB0] forKey:{"numberWithDouble:", self->_mycaction->var19), @"_scaleTarget"}];
  [a3 encodeObject:objc_msgSend(MEMORY[0x277CCABB0] forKey:{"numberWithDouble:", self->_mycaction->var20), @"_scaleTargetReversed"}];
  [a3 encodeObject:objc_msgSend(MEMORY[0x277CCABB0] forKey:{"numberWithDouble:", self->_mycaction->var23), @"_deltaScale"}];
  [a3 encodeObject:objc_msgSend(MEMORY[0x277CCABB0] forKey:{"numberWithBool:", self->_mycaction->var24), @"_isReversed"}];
  [a3 encodeObject:objc_msgSend(MEMORY[0x277CCABB0] forKey:{"numberWithBool:", self->_mycaction->var25), @"_isRelative"}];
}

+ (id)scaleBy:(double)a3 duration:(double)a4
{
  v6 = objc_alloc_init(SCNActionScale);
  v7 = v6;
  v8 = a3;
  mycaction = v6->_mycaction;
  mycaction->var19 = v8;
  if ((LODWORD(v8) & 0x60000000) != 0)
  {
    v10 = 1.0 / a3;
  }

  else
  {
    v10 = 0.0;
  }

  mycaction->var20 = v10;
  mycaction->var25 = 1;
  [(SCNAction *)v6 setDuration:a4];
  return v7;
}

+ (id)scaleTo:(double)a3 duration:(double)a4
{
  v6 = objc_alloc_init(SCNActionScale);
  mycaction = v6->_mycaction;
  v8 = a3;
  mycaction->var19 = v8;
  mycaction->var20 = v8;
  mycaction->var25 = 0;
  [(SCNAction *)v6 setDuration:a4];
  return v6;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v7.receiver = self;
  v7.super_class = SCNActionScale;
  result = [(SCNAction *)&v7 copyWithZone:a3];
  mycaction = self->_mycaction;
  v6 = *(result + 2);
  *(v6 + 152) = mycaction->var21;
  *(v6 + 144) = *&mycaction->var19;
  *(v6 + 160) = mycaction->var23;
  *(v6 + 164) = *&mycaction->var24;
  return result;
}

- (id)reversedAction
{
  v3 = MEMORY[0x21CF072F0](self, a2);
  v9.receiver = self;
  v9.super_class = SCNActionScale;
  v4 = [(SCNAction *)&v9 copyWithZone:v3];
  mycaction = self->_mycaction;
  v6 = v4[2];
  var21 = mycaction->var21;
  *(v6 + 144) = mycaction->var20;
  *(v6 + 148) = mycaction->var19;
  *(v6 + 152) = var21;
  *(v6 + 160) = mycaction->var23;
  *(v6 + 164) = !mycaction->var24;
  *(v6 + 165) = mycaction->var25;
  return v4;
}

- (id)parameters
{
  v4[1] = *MEMORY[0x277D85DE8];
  *&v2 = self->_mycaction->var19;
  v4[0] = [MEMORY[0x277CCABB0] numberWithFloat:v2];
  return [MEMORY[0x277CBEA60] arrayWithObjects:v4 count:1];
}

@end