@interface SCNActionPlaySound
+ (id)playAudioSource:(id)a3 waitForCompletion:(BOOL)a4;
- (SCNActionPlaySound)init;
- (SCNActionPlaySound)initWithCoder:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)parameters;
- (id)reversedAction;
- (void)_setupDuration;
- (void)encodeWithCoder:(id)a3;
@end

@implementation SCNActionPlaySound

- (SCNActionPlaySound)init
{
  v3.receiver = self;
  v3.super_class = SCNActionPlaySound;
  if ([(SCNAction *)&v3 init])
  {
    operator new();
  }

  return 0;
}

- (void)_setupDuration
{
  mycaction = self->_mycaction;
  v4 = 0.0;
  if (mycaction->var20)
  {
    [mycaction->var21 duration];
  }

  [(SCNAction *)self setDuration:v4];
}

- (SCNActionPlaySound)initWithCoder:(id)a3
{
  v4.receiver = self;
  v4.super_class = SCNActionPlaySound;
  if ([(SCNAction *)&v4 initWithCoder:?])
  {
    operator new();
  }

  return 0;
}

- (void)encodeWithCoder:(id)a3
{
  v5.receiver = self;
  v5.super_class = SCNActionPlaySound;
  [(SCNAction *)&v5 encodeWithCoder:?];
  [a3 encodeObject:self->_mycaction->var21 forKey:@"_audioSource"];
  [a3 encodeBool:self->_mycaction->var20 forKey:@"_wait"];
}

+ (id)playAudioSource:(id)a3 waitForCompletion:(BOOL)a4
{
  v6 = objc_alloc_init(SCNActionPlaySound);
  v7 = [a3 copy];
  mycaction = v6->_mycaction;
  mycaction->var21 = v7;
  mycaction->var20 = a4;
  [(SCNActionPlaySound *)v6 _setupDuration];

  return v6;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v8.receiver = self;
  v8.super_class = SCNActionPlaySound;
  v4 = [(SCNAction *)&v8 copyWithZone:a3];
  v5 = self->_mycaction->var21;
  v6 = v4[2];
  *(v6 + 152) = v5;
  *(v6 + 145) = self->_mycaction->var20;
  [v4 _setupDuration];
  return v4;
}

- (id)reversedAction
{
  v2 = [(SCNAction *)self copy];

  return v2;
}

- (id)parameters
{
  v10[2] = *MEMORY[0x277D85DE8];
  v3 = [self->_mycaction->var21 fileName];
  v4 = [MEMORY[0x277CCABB0] numberWithBool:self->_mycaction->var20];
  if (v3)
  {
    v10[0] = v4;
    v10[1] = [self->_mycaction->var21 fileName];
    v5 = MEMORY[0x277CBEA60];
    v6 = v10;
    v7 = 2;
  }

  else
  {
    v9 = v4;
    v5 = MEMORY[0x277CBEA60];
    v6 = &v9;
    v7 = 1;
  }

  return [v5 arrayWithObjects:v6 count:{v7, v9}];
}

@end