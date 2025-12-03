@interface SKRepeat
+ (id)repeatAction:(id)action count:(unint64_t)count;
+ (id)repeatActionForever:(id)forever;
- (SKRepeat)init;
- (SKRepeat)initWithCoder:(id)coder;
- (id)copyWithZone:(_NSZone *)zone;
- (id)reversedAction;
- (id)subactions;
- (void)encodeWithCoder:(id)coder;
@end

@implementation SKRepeat

- (SKRepeat)init
{
  v3.receiver = self;
  v3.super_class = SKRepeat;
  if ([(SKAction *)&v3 init])
  {
    operator new();
  }

  return 0;
}

- (SKRepeat)initWithCoder:(id)coder
{
  coderCopy = coder;
  v7.receiver = self;
  v7.super_class = SKRepeat;
  if ([(SKAction *)&v7 initWithCoder:coderCopy])
  {
    operator new();
  }

  v5 = 0;

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  v8.receiver = self;
  v8.super_class = SKRepeat;
  [(SKAction *)&v8 encodeWithCoder:coderCopy];
  v5 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:self->_mycaction->var21];
  [coderCopy encodeObject:v5 forKey:@"_timesToRepeat"];

  v6 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:self->_mycaction->var20];
  [coderCopy encodeObject:v6 forKey:@"_timesRepeated"];

  [coderCopy encodeObject:self->_repeatedAction forKey:@"_repeatedAction"];
  v7 = [MEMORY[0x277CCABB0] numberWithBool:self->_mycaction->var22];
  [coderCopy encodeObject:v7 forKey:@"_forever"];
}

+ (id)repeatAction:(id)action count:(unint64_t)count
{
  actionCopy = action;
  if (actionCopy)
  {
    v6 = objc_alloc_init(SKRepeat);
    v7 = [actionCopy copy];
    repeatedAction = v6->_repeatedAction;
    v6->_repeatedAction = v7;

    SKCReferencedAction::setReferencedCAction(v6->_mycaction, [(SKAction *)v6->_repeatedAction caction]);
    v6->_mycaction->var21 = count;
    [actionCopy duration];
    [(SKAction *)v6 setDuration:v9 * count];
  }

  else
  {
    [MEMORY[0x277CBEAD8] raise:@"Nil Action" format:@"Action to be repeated must be non-nil"];
    v6 = 0;
  }

  return v6;
}

+ (id)repeatActionForever:(id)forever
{
  foreverCopy = forever;
  if (foreverCopy)
  {
    v4 = objc_alloc_init(SKRepeat);
    v5 = [foreverCopy copy];
    repeatedAction = v4->_repeatedAction;
    v4->_repeatedAction = v5;

    SKCReferencedAction::setReferencedCAction(v4->_mycaction, [(SKAction *)v4->_repeatedAction caction]);
    v4->_mycaction->var22 = 1;
  }

  else
  {
    [MEMORY[0x277CBEAD8] raise:@"Nil Action" format:@"Action to be repeated must be non-nil"];
    v4 = 0;
  }

  return v4;
}

- (id)subactions
{
  v4[1] = *MEMORY[0x277D85DE8];
  v4[0] = self->_repeatedAction;
  v2 = [MEMORY[0x277CBEA60] arrayWithObjects:v4 count:1];

  return v2;
}

- (id)copyWithZone:(_NSZone *)zone
{
  mycaction = self->_mycaction;
  repeatedAction = self->_repeatedAction;
  if (mycaction->var22)
  {
    [SKRepeat repeatActionForever:repeatedAction];
  }

  else
  {
    [SKRepeat repeatAction:repeatedAction count:mycaction->var21];
  }
  v6 = ;
  [v6 setTimingMode:{-[SKAction timingMode](self, "timingMode")}];
  return v6;
}

- (id)reversedAction
{
  reversedAction = [(SKAction *)self->_repeatedAction reversedAction];
  v4 = [SKRepeat repeatAction:reversedAction count:self->_mycaction->var21];

  *(v4[2] + 136) = self->_mycaction->var22;

  return v4;
}

@end