@interface SKReferencedAction
+ (id)referenceActionWithName:(id)a3 duration:(double)a4;
- (SKReferencedAction)init;
- (SKReferencedAction)initWithCoder:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)reversedAction;
- (id)subactions;
- (void)_ensureReferencedAction;
- (void)encodeWithCoder:(id)a3;
- (void)setDuration:(double)a3;
- (void)setTimingFunction:(id)a3;
- (void)setTimingMode:(int64_t)a3;
@end

@implementation SKReferencedAction

- (SKReferencedAction)init
{
  v3.receiver = self;
  v3.super_class = SKReferencedAction;
  if ([(SKAction *)&v3 init])
  {
    operator new();
  }

  return 0;
}

- (SKReferencedAction)initWithCoder:(id)a3
{
  v4 = a3;
  v7.receiver = self;
  v7.super_class = SKReferencedAction;
  if ([(SKAction *)&v7 initWithCoder:v4])
  {
    operator new();
  }

  v5 = 0;

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  v5.receiver = self;
  v5.super_class = SKReferencedAction;
  [(SKAction *)&v5 encodeWithCoder:v4];
  [v4 encodeObject:self->_referencedActionName forKey:@"_referencedActionName"];
}

+ (id)referenceActionWithName:(id)a3 duration:(double)a4
{
  v5 = a3;
  if (v5)
  {
    v6 = objc_alloc_init(SKReferencedAction);
    v7 = [v5 copy];
    referencedActionName = v6->_referencedActionName;
    v6->_referencedActionName = v7;

    v9 = a4;
    v6->_mycaction->var8 = v9;
  }

  else
  {
    [MEMORY[0x277CBEAD8] raise:@"Nil Action" format:@"Action name to be referenced must be non-nil"];
    v6 = 0;
  }

  return v6;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v12.receiver = self;
  v12.super_class = SKReferencedAction;
  v5 = [(SKAction *)&v12 copyWithZone:?];
  v6 = [(NSString *)self->_referencedActionName copyWithZone:a3];
  v7 = *(v5 + 4);
  *(v5 + 4) = v6;

  referencedAction = self->_referencedAction;
  if (referencedAction)
  {
    v9 = [(SKAction *)referencedAction copyWithZone:a3];
    v10 = *(v5 + 3);
    *(v5 + 3) = v9;

    SKCReferencedAction::setReferencedCAction(*(v5 + 2), [*(v5 + 3) caction]);
  }

  return v5;
}

- (id)subactions
{
  v5[1] = *MEMORY[0x277D85DE8];
  [(SKReferencedAction *)self _ensureReferencedAction];
  v5[0] = self->_referencedAction;
  v3 = [MEMORY[0x277CBEA60] arrayWithObjects:v5 count:1];

  return v3;
}

- (void)setTimingFunction:(id)a3
{
  v7 = a3;
  [(SKReferencedAction *)self _ensureReferencedAction];
  v4 = MEMORY[0x21CF0AB10](v7);
  mycaction = self->_mycaction;
  var3 = mycaction->var3;
  mycaction->var3 = v4;

  [(SKAction *)self->_referencedAction setTimingFunction:v7];
}

- (void)setDuration:(double)a3
{
  v5 = a3;
  self->_mycaction->var8 = v5;
  [(SKReferencedAction *)self _ensureReferencedAction];
  referencedAction = self->_referencedAction;

  [(SKAction *)referencedAction setDuration:a3];
}

- (void)setTimingMode:(int64_t)a3
{
  [(SKReferencedAction *)self _ensureReferencedAction];
  self->_mycaction->var14 = a3;
  referencedAction = self->_referencedAction;

  [(SKAction *)referencedAction setTimingMode:a3];
}

- (id)reversedAction
{
  [(SKReferencedAction *)self _ensureReferencedAction];
  referencedAction = self->_referencedAction;

  return [(SKAction *)referencedAction reversedAction];
}

- (void)_ensureReferencedAction
{
  if (!self->_referencedAction)
  {
    v3 = [SKAction actionNamed:self->_referencedActionName duration:self->_mycaction->var8];
    referencedAction = self->_referencedAction;
    self->_referencedAction = v3;

    v5 = self->_referencedAction;
    if (!v5)
    {
      v6 = [objc_opt_class() description];
      NSLog(&cfstr_ErrorLoadingAc.isa, v6, self->_referencedActionName);

      v7 = [SKAction waitForDuration:self->_mycaction->var8];
      v8 = self->_referencedAction;
      self->_referencedAction = v7;

      v5 = self->_referencedAction;
    }

    v9 = [(SKAction *)v5 caction];
    mycaction = self->_mycaction;

    SKCReferencedAction::setReferencedCAction(mycaction, v9);
  }
}

@end