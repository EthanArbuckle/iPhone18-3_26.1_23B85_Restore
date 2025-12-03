@interface SCATSweepAnimation
+ (id)sweepAnimationWithDirection:(BOOL)direction scatLayer:(id)layer animationKey:(id)key;
- (SCATSweepAnimation)initWithCoder:(id)coder;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (id)reversedAnimation;
- (void)_updateAnimationKeyWithPrefix:(id)prefix direction:(BOOL)direction;
- (void)encodeWithCoder:(id)coder;
@end

@implementation SCATSweepAnimation

+ (id)sweepAnimationWithDirection:(BOOL)direction scatLayer:(id)layer animationKey:(id)key
{
  directionCopy = direction;
  keyCopy = key;
  layerCopy = layer;
  v9 = [SCATSweepAnimation animationWithKeyPath:@"position"];
  [v9 setForwardDirection:directionCopy];
  [v9 setScatLayer:layerCopy];

  [v9 _updateAnimationKeyWithPrefix:keyCopy direction:directionCopy];

  return v9;
}

- (void)_updateAnimationKeyWithPrefix:(id)prefix direction:(BOOL)direction
{
  directionCopy = direction;
  prefixCopy = prefix;
  v7 = [prefixCopy rangeOfString:@"-forward"];
  if (v7 != 0x7FFFFFFFFFFFFFFFLL)
  {
    v8 = [prefixCopy substringToIndex:v7];

    prefixCopy = v8;
  }

  v9 = [prefixCopy rangeOfString:@"-reversed"];
  if (v9 != 0x7FFFFFFFFFFFFFFFLL)
  {
    v10 = [prefixCopy substringToIndex:v9];

    prefixCopy = v10;
  }

  v11 = [prefixCopy stringByReplacingOccurrencesOfString:@"-forward" withString:&stru_1001DB590];
  v17 = [v11 stringByReplacingOccurrencesOfString:@"-reversed" withString:&stru_1001DB590];

  v12 = +[NSUUID UUID];
  uUIDString = [v12 UUIDString];
  v14 = uUIDString;
  if (directionCopy)
  {
    v15 = @"%@-forward-%@";
  }

  else
  {
    v15 = @"%@-reversed-%@";
  }

  v16 = [NSString stringWithFormat:v15, v17, uUIDString];
  [(SCATSweepAnimation *)self setAnimationKey:v16];
}

- (id)description
{
  v3 = [NSNumber numberWithBool:[(SCATSweepAnimation *)self forwardDirection]];
  scatLayer = [(SCATSweepAnimation *)self scatLayer];
  delegate = [(SCATSweepAnimation *)self delegate];
  animationKey = [(SCATSweepAnimation *)self animationKey];
  fromValue = [(SCATSweepAnimation *)self fromValue];
  toValue = [(SCATSweepAnimation *)self toValue];
  [(SCATSweepAnimation *)self duration];
  v9 = [NSNumber numberWithDouble:?];
  fillMode = [(SCATSweepAnimation *)self fillMode];
  v11 = [NSNumber numberWithBool:[(SCATSweepAnimation *)self isRemovedOnCompletion]];
  v12 = [NSString stringWithFormat:@"SCATSweepAnimation<%p>. forward:%@ scatLayer:%p delegate:%p animateKey:%@ from:%@ to:%@ duration:%@ fill:%@ rmOnComplete:%@", self, v3, scatLayer, delegate, animationKey, fromValue, toValue, v9, fillMode, v11];

  return v12;
}

- (id)reversedAnimation
{
  forwardDirection = [(SCATSweepAnimation *)self forwardDirection];
  scatLayer = [(SCATSweepAnimation *)self scatLayer];
  animationKey = [(SCATSweepAnimation *)self animationKey];
  v6 = [SCATSweepAnimation sweepAnimationWithDirection:forwardDirection ^ 1 scatLayer:scatLayer animationKey:animationKey];

  delegate = [(SCATSweepAnimation *)self delegate];
  [v6 setDelegate:delegate];

  fromValue = [(SCATSweepAnimation *)self fromValue];
  [v6 setToValue:fromValue];

  toValue = [(SCATSweepAnimation *)self toValue];
  [v6 setFromValue:toValue];

  [(SCATSweepAnimation *)self duration];
  [v6 setDuration:?];
  [v6 setRemovedOnCompletion:{-[SCATSweepAnimation isRemovedOnCompletion](self, "isRemovedOnCompletion")}];
  fillMode = [(SCATSweepAnimation *)self fillMode];
  [v6 setFillMode:fillMode];

  return v6;
}

- (void)encodeWithCoder:(id)coder
{
  v7.receiver = self;
  v7.super_class = SCATSweepAnimation;
  coderCopy = coder;
  [(SCATSweepAnimation *)&v7 encodeWithCoder:coderCopy];
  v5 = [(SCATSweepAnimation *)self scatLayer:v7.receiver];
  [coderCopy encodeObject:v5 forKey:@"scatLayer"];

  [coderCopy encodeBool:-[SCATSweepAnimation forwardDirection](self forKey:{"forwardDirection"), @"forwardDirection"}];
  animationKey = [(SCATSweepAnimation *)self animationKey];
  [coderCopy encodeObject:animationKey forKey:@"animationKey"];
}

- (SCATSweepAnimation)initWithCoder:(id)coder
{
  coderCopy = coder;
  v9.receiver = self;
  v9.super_class = SCATSweepAnimation;
  v5 = [(SCATSweepAnimation *)&v9 initWithCoder:coderCopy];
  if (v5)
  {
    v6 = [coderCopy decodeObjectForKey:@"scatLayer"];
    [(SCATSweepAnimation *)v5 setScatLayer:v6];

    -[SCATSweepAnimation setForwardDirection:](v5, "setForwardDirection:", [coderCopy decodeBoolForKey:@"forwardDirection"]);
    v7 = [coderCopy decodeObjectForKey:@"animationKey"];
    [(SCATSweepAnimation *)v5 setAnimationKey:v7];
  }

  return v5;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v9.receiver = self;
  v9.super_class = SCATSweepAnimation;
  v4 = [(SCATSweepAnimation *)&v9 copyWithZone:zone];
  delegate = [(SCATSweepAnimation *)self delegate];
  [v4 setDelegate:delegate];

  scatLayer = [(SCATSweepAnimation *)self scatLayer];
  [v4 setScatLayer:scatLayer];

  [v4 setForwardDirection:{-[SCATSweepAnimation forwardDirection](self, "forwardDirection")}];
  animationKey = [(SCATSweepAnimation *)self animationKey];
  [v4 setAnimationKey:animationKey];

  return v4;
}

@end