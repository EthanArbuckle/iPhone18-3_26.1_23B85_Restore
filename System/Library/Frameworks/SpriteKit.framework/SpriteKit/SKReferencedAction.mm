@interface SKReferencedAction
+ (id)referenceActionWithName:(id)name duration:(double)duration;
- (SKReferencedAction)init;
- (SKReferencedAction)initWithCoder:(id)coder;
- (id)copyWithZone:(_NSZone *)zone;
- (id)reversedAction;
- (id)subactions;
- (void)_ensureReferencedAction;
- (void)encodeWithCoder:(id)coder;
- (void)setDuration:(double)duration;
- (void)setTimingFunction:(id)function;
- (void)setTimingMode:(int64_t)mode;
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

- (SKReferencedAction)initWithCoder:(id)coder
{
  coderCopy = coder;
  v7.receiver = self;
  v7.super_class = SKReferencedAction;
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
  v5.receiver = self;
  v5.super_class = SKReferencedAction;
  [(SKAction *)&v5 encodeWithCoder:coderCopy];
  [coderCopy encodeObject:self->_referencedActionName forKey:@"_referencedActionName"];
}

+ (id)referenceActionWithName:(id)name duration:(double)duration
{
  nameCopy = name;
  if (nameCopy)
  {
    v6 = objc_alloc_init(SKReferencedAction);
    v7 = [nameCopy copy];
    referencedActionName = v6->_referencedActionName;
    v6->_referencedActionName = v7;

    durationCopy = duration;
    v6->_mycaction->var8 = durationCopy;
  }

  else
  {
    [MEMORY[0x277CBEAD8] raise:@"Nil Action" format:@"Action name to be referenced must be non-nil"];
    v6 = 0;
  }

  return v6;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v12.receiver = self;
  v12.super_class = SKReferencedAction;
  v5 = [(SKAction *)&v12 copyWithZone:?];
  v6 = [(NSString *)self->_referencedActionName copyWithZone:zone];
  v7 = *(v5 + 4);
  *(v5 + 4) = v6;

  referencedAction = self->_referencedAction;
  if (referencedAction)
  {
    v9 = [(SKAction *)referencedAction copyWithZone:zone];
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

- (void)setTimingFunction:(id)function
{
  functionCopy = function;
  [(SKReferencedAction *)self _ensureReferencedAction];
  v4 = MEMORY[0x21CF0AB10](functionCopy);
  mycaction = self->_mycaction;
  var3 = mycaction->var3;
  mycaction->var3 = v4;

  [(SKAction *)self->_referencedAction setTimingFunction:functionCopy];
}

- (void)setDuration:(double)duration
{
  durationCopy = duration;
  self->_mycaction->var8 = durationCopy;
  [(SKReferencedAction *)self _ensureReferencedAction];
  referencedAction = self->_referencedAction;

  [(SKAction *)referencedAction setDuration:duration];
}

- (void)setTimingMode:(int64_t)mode
{
  [(SKReferencedAction *)self _ensureReferencedAction];
  self->_mycaction->var14 = mode;
  referencedAction = self->_referencedAction;

  [(SKAction *)referencedAction setTimingMode:mode];
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

    caction = [(SKAction *)v5 caction];
    mycaction = self->_mycaction;

    SKCReferencedAction::setReferencedCAction(mycaction, caction);
  }
}

@end