@interface SCATSweepAnimation
+ (id)sweepAnimationWithDirection:(BOOL)a3 scatLayer:(id)a4 animationKey:(id)a5;
- (SCATSweepAnimation)initWithCoder:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (id)reversedAnimation;
- (void)_updateAnimationKeyWithPrefix:(id)a3 direction:(BOOL)a4;
- (void)encodeWithCoder:(id)a3;
@end

@implementation SCATSweepAnimation

+ (id)sweepAnimationWithDirection:(BOOL)a3 scatLayer:(id)a4 animationKey:(id)a5
{
  v6 = a3;
  v7 = a5;
  v8 = a4;
  v9 = [SCATSweepAnimation animationWithKeyPath:@"position"];
  [v9 setForwardDirection:v6];
  [v9 setScatLayer:v8];

  [v9 _updateAnimationKeyWithPrefix:v7 direction:v6];

  return v9;
}

- (void)_updateAnimationKeyWithPrefix:(id)a3 direction:(BOOL)a4
{
  v4 = a4;
  v6 = a3;
  v7 = [v6 rangeOfString:@"-forward"];
  if (v7 != 0x7FFFFFFFFFFFFFFFLL)
  {
    v8 = [v6 substringToIndex:v7];

    v6 = v8;
  }

  v9 = [v6 rangeOfString:@"-reversed"];
  if (v9 != 0x7FFFFFFFFFFFFFFFLL)
  {
    v10 = [v6 substringToIndex:v9];

    v6 = v10;
  }

  v11 = [v6 stringByReplacingOccurrencesOfString:@"-forward" withString:&stru_1001DB590];
  v17 = [v11 stringByReplacingOccurrencesOfString:@"-reversed" withString:&stru_1001DB590];

  v12 = +[NSUUID UUID];
  v13 = [v12 UUIDString];
  v14 = v13;
  if (v4)
  {
    v15 = @"%@-forward-%@";
  }

  else
  {
    v15 = @"%@-reversed-%@";
  }

  v16 = [NSString stringWithFormat:v15, v17, v13];
  [(SCATSweepAnimation *)self setAnimationKey:v16];
}

- (id)description
{
  v3 = [NSNumber numberWithBool:[(SCATSweepAnimation *)self forwardDirection]];
  v4 = [(SCATSweepAnimation *)self scatLayer];
  v5 = [(SCATSweepAnimation *)self delegate];
  v6 = [(SCATSweepAnimation *)self animationKey];
  v7 = [(SCATSweepAnimation *)self fromValue];
  v8 = [(SCATSweepAnimation *)self toValue];
  [(SCATSweepAnimation *)self duration];
  v9 = [NSNumber numberWithDouble:?];
  v10 = [(SCATSweepAnimation *)self fillMode];
  v11 = [NSNumber numberWithBool:[(SCATSweepAnimation *)self isRemovedOnCompletion]];
  v12 = [NSString stringWithFormat:@"SCATSweepAnimation<%p>. forward:%@ scatLayer:%p delegate:%p animateKey:%@ from:%@ to:%@ duration:%@ fill:%@ rmOnComplete:%@", self, v3, v4, v5, v6, v7, v8, v9, v10, v11];

  return v12;
}

- (id)reversedAnimation
{
  v3 = [(SCATSweepAnimation *)self forwardDirection];
  v4 = [(SCATSweepAnimation *)self scatLayer];
  v5 = [(SCATSweepAnimation *)self animationKey];
  v6 = [SCATSweepAnimation sweepAnimationWithDirection:v3 ^ 1 scatLayer:v4 animationKey:v5];

  v7 = [(SCATSweepAnimation *)self delegate];
  [v6 setDelegate:v7];

  v8 = [(SCATSweepAnimation *)self fromValue];
  [v6 setToValue:v8];

  v9 = [(SCATSweepAnimation *)self toValue];
  [v6 setFromValue:v9];

  [(SCATSweepAnimation *)self duration];
  [v6 setDuration:?];
  [v6 setRemovedOnCompletion:{-[SCATSweepAnimation isRemovedOnCompletion](self, "isRemovedOnCompletion")}];
  v10 = [(SCATSweepAnimation *)self fillMode];
  [v6 setFillMode:v10];

  return v6;
}

- (void)encodeWithCoder:(id)a3
{
  v7.receiver = self;
  v7.super_class = SCATSweepAnimation;
  v4 = a3;
  [(SCATSweepAnimation *)&v7 encodeWithCoder:v4];
  v5 = [(SCATSweepAnimation *)self scatLayer:v7.receiver];
  [v4 encodeObject:v5 forKey:@"scatLayer"];

  [v4 encodeBool:-[SCATSweepAnimation forwardDirection](self forKey:{"forwardDirection"), @"forwardDirection"}];
  v6 = [(SCATSweepAnimation *)self animationKey];
  [v4 encodeObject:v6 forKey:@"animationKey"];
}

- (SCATSweepAnimation)initWithCoder:(id)a3
{
  v4 = a3;
  v9.receiver = self;
  v9.super_class = SCATSweepAnimation;
  v5 = [(SCATSweepAnimation *)&v9 initWithCoder:v4];
  if (v5)
  {
    v6 = [v4 decodeObjectForKey:@"scatLayer"];
    [(SCATSweepAnimation *)v5 setScatLayer:v6];

    -[SCATSweepAnimation setForwardDirection:](v5, "setForwardDirection:", [v4 decodeBoolForKey:@"forwardDirection"]);
    v7 = [v4 decodeObjectForKey:@"animationKey"];
    [(SCATSweepAnimation *)v5 setAnimationKey:v7];
  }

  return v5;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v9.receiver = self;
  v9.super_class = SCATSweepAnimation;
  v4 = [(SCATSweepAnimation *)&v9 copyWithZone:a3];
  v5 = [(SCATSweepAnimation *)self delegate];
  [v4 setDelegate:v5];

  v6 = [(SCATSweepAnimation *)self scatLayer];
  [v4 setScatLayer:v6];

  [v4 setForwardDirection:{-[SCATSweepAnimation forwardDirection](self, "forwardDirection")}];
  v7 = [(SCATSweepAnimation *)self animationKey];
  [v4 setAnimationKey:v7];

  return v4;
}

@end