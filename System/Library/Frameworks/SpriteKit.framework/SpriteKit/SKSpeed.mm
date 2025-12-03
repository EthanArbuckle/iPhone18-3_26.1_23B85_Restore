@interface SKSpeed
+ (id)speedBy:(double)by duration:(double)duration;
+ (id)speedTo:(double)to duration:(double)duration;
- (SKSpeed)init;
- (SKSpeed)initWithCoder:(id)coder;
- (id)copyWithZone:(_NSZone *)zone;
- (id)reversedAction;
- (void)encodeWithCoder:(id)coder;
@end

@implementation SKSpeed

- (SKSpeed)init
{
  v3.receiver = self;
  v3.super_class = SKSpeed;
  if ([(SKAction *)&v3 init])
  {
    operator new();
  }

  return 0;
}

- (SKSpeed)initWithCoder:(id)coder
{
  coderCopy = coder;
  v6.receiver = self;
  v6.super_class = SKSpeed;
  if ([(SKAction *)&v6 initWithCoder:coderCopy])
  {
    operator new();
  }

  return 0;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  v13.receiver = self;
  v13.super_class = SKSpeed;
  [(SKAction *)&v13 encodeWithCoder:coderCopy];
  v5 = [MEMORY[0x277CCABB0] numberWithDouble:self->_mycaction->var19];
  [coderCopy encodeObject:v5 forKey:@"_speedTarget"];

  v6 = [MEMORY[0x277CCABB0] numberWithDouble:self->_mycaction->var20];
  [coderCopy encodeObject:v6 forKey:@"_speedTargetReversed"];

  v7 = [MEMORY[0x277CCABB0] numberWithDouble:self->_mycaction->var23];
  [coderCopy encodeObject:v7 forKey:@"_deltaSpeed"];

  v8 = [MEMORY[0x277CCABB0] numberWithDouble:self->_mycaction->var21];
  [coderCopy encodeObject:v8 forKey:@"_lastRatio"];

  LOBYTE(v9) = self->_mycaction->var24;
  v10 = [MEMORY[0x277CCABB0] numberWithDouble:v9];
  [coderCopy encodeObject:v10 forKey:@"_isReversed"];

  LOBYTE(v11) = self->_mycaction->var25;
  v12 = [MEMORY[0x277CCABB0] numberWithDouble:v11];
  [coderCopy encodeObject:v12 forKey:@"_isRelative"];
}

+ (id)speedBy:(double)by duration:(double)duration
{
  v6 = objc_alloc_init(SKSpeed);
  v7 = v6;
  byCopy = by;
  mycaction = v6->_mycaction;
  mycaction->var19 = byCopy;
  if ((LODWORD(byCopy) & 0x60000000) != 0)
  {
    v10 = 1.0 / by;
  }

  else
  {
    v10 = 0.0;
  }

  mycaction->var20 = v10;
  mycaction->var25 = 1;
  [(SKAction *)v6 setDuration:duration];

  return v7;
}

+ (id)speedTo:(double)to duration:(double)duration
{
  v6 = objc_alloc_init(SKSpeed);
  mycaction = v6->_mycaction;
  toCopy = to;
  mycaction->var19 = toCopy;
  mycaction->var20 = toCopy;
  mycaction->var25 = 0;
  [(SKAction *)v6 setDuration:duration];

  return v6;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v7.receiver = self;
  v7.super_class = SKSpeed;
  result = [(SKAction *)&v7 copyWithZone:zone];
  mycaction = self->_mycaction;
  v6 = *(result + 2);
  *(v6 + 120) = mycaction->var21;
  *(v6 + 128) = mycaction->var23;
  *(v6 + 112) = *&mycaction->var19;
  *(v6 + 132) = *&mycaction->var24;
  return result;
}

- (id)reversedAction
{
  v3 = objc_alloc_init(SKSpeed);
  mycaction = self->_mycaction;
  v5 = v3->_mycaction;
  v5->var24 = !mycaction->var24;
  v5->var25 = mycaction->var25;
  var21 = mycaction->var21;
  v5->var19 = mycaction->var20;
  v5->var20 = mycaction->var19;
  v5->var21 = var21;
  v5->var9 = mycaction->var9;

  return v3;
}

@end