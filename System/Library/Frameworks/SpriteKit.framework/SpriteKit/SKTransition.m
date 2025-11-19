@interface SKTransition
+ (SKTransition)crossFadeWithDuration:(NSTimeInterval)sec;
+ (SKTransition)doorsCloseHorizontalWithDuration:(NSTimeInterval)sec;
+ (SKTransition)doorsCloseVerticalWithDuration:(NSTimeInterval)sec;
+ (SKTransition)doorsOpenHorizontalWithDuration:(NSTimeInterval)sec;
+ (SKTransition)doorsOpenVerticalWithDuration:(NSTimeInterval)sec;
+ (SKTransition)doorwayWithDuration:(NSTimeInterval)sec;
+ (SKTransition)fadeWithColor:(UIColor *)color duration:(NSTimeInterval)sec;
+ (SKTransition)fadeWithDuration:(NSTimeInterval)sec;
+ (SKTransition)flipHorizontalWithDuration:(NSTimeInterval)sec;
+ (SKTransition)flipVerticalWithDuration:(NSTimeInterval)sec;
+ (SKTransition)moveInWithDirection:(SKTransitionDirection)direction duration:(NSTimeInterval)sec;
+ (SKTransition)pushWithDirection:(SKTransitionDirection)direction duration:(NSTimeInterval)sec;
+ (SKTransition)revealWithDirection:(SKTransitionDirection)direction duration:(NSTimeInterval)sec;
+ (SKTransition)transitionWithCIFilter:(CIFilter *)filter duration:(NSTimeInterval)sec;
+ (id)moveInDownWithDuration:(double)a3;
+ (id)moveInLeftWithDuration:(double)a3;
+ (id)moveInRightWithDuration:(double)a3;
+ (id)moveInUpWithDuration:(double)a3;
+ (id)pushDownWithDuration:(double)a3;
+ (id)pushLeftWithDuration:(double)a3;
+ (id)pushRightWithDuration:(double)a3;
+ (id)pushUpWithDuration:(double)a3;
+ (id)revealDownWithDuration:(double)a3;
+ (id)revealLeftWithDuration:(double)a3;
+ (id)revealRightWithDuration:(double)a3;
+ (id)revealUpWithDuration:(double)a3;
- (SKTransition)init;
- (double)_duration;
- (id)copyWithZone:(_NSZone *)a3;
- (void)dealloc;
@end

@implementation SKTransition

- (SKTransition)init
{
  v3.receiver = self;
  v3.super_class = SKTransition;
  if ([(SKTransition *)&v3 init])
  {
    operator new();
  }

  return 0;
}

+ (SKTransition)revealWithDirection:(SKTransitionDirection)direction duration:(NSTimeInterval)sec
{
  v5 = 0;
  if (direction > SKTransitionDirectionDown)
  {
    if (direction == SKTransitionDirectionRight)
    {
      v5 = [a1 revealRightWithDuration:sec];
    }

    else if (direction == SKTransitionDirectionLeft)
    {
      v5 = [a1 revealLeftWithDuration:sec];
    }
  }

  else if (direction)
  {
    if (direction == SKTransitionDirectionDown)
    {
      v5 = [a1 revealDownWithDuration:sec];
    }
  }

  else
  {
    v5 = [a1 revealUpWithDuration:sec];
  }

  return v5;
}

+ (SKTransition)moveInWithDirection:(SKTransitionDirection)direction duration:(NSTimeInterval)sec
{
  v5 = 0;
  if (direction > SKTransitionDirectionDown)
  {
    if (direction == SKTransitionDirectionRight)
    {
      v5 = [a1 moveInRightWithDuration:sec];
    }

    else if (direction == SKTransitionDirectionLeft)
    {
      v5 = [a1 moveInLeftWithDuration:sec];
    }
  }

  else if (direction)
  {
    if (direction == SKTransitionDirectionDown)
    {
      v5 = [a1 moveInDownWithDuration:sec];
    }
  }

  else
  {
    v5 = [a1 moveInUpWithDuration:sec];
  }

  return v5;
}

+ (SKTransition)pushWithDirection:(SKTransitionDirection)direction duration:(NSTimeInterval)sec
{
  v5 = 0;
  if (direction > SKTransitionDirectionDown)
  {
    if (direction == SKTransitionDirectionRight)
    {
      v5 = [a1 pushRightWithDuration:sec];
    }

    else if (direction == SKTransitionDirectionLeft)
    {
      v5 = [a1 pushLeftWithDuration:sec];
    }
  }

  else if (direction)
  {
    if (direction == SKTransitionDirectionDown)
    {
      v5 = [a1 pushDownWithDuration:sec];
    }
  }

  else
  {
    v5 = [a1 pushUpWithDuration:sec];
  }

  return v5;
}

+ (SKTransition)fadeWithDuration:(NSTimeInterval)sec
{
  v4 = objc_alloc_init(SKTransition);
  skcTransitionNode = v4->_skcTransitionNode;
  *(skcTransitionNode + 140) = 1;
  v6 = sec;
  skcTransitionNode[145] = v6;
  v8 = xmmword_21C4B84C0;
  (*(*skcTransitionNode + 184))(skcTransitionNode, &v8);

  return v4;
}

+ (SKTransition)fadeWithColor:(UIColor *)color duration:(NSTimeInterval)sec
{
  v5 = color;
  v6 = objc_alloc_init(SKTransition);
  skcTransitionNode = v6->_skcTransitionNode;
  *(skcTransitionNode + 140) = 1;
  v8 = sec;
  skcTransitionNode[145] = v8;
  [(UIColor *)v5 vectorRGBA];
  v11 = v9;
  (*(*skcTransitionNode + 184))(skcTransitionNode, &v11);

  return v6;
}

+ (SKTransition)crossFadeWithDuration:(NSTimeInterval)sec
{
  v4 = objc_alloc_init(SKTransition);
  skcTransitionNode = v4->_skcTransitionNode;
  skcTransitionNode[140] = 0.0;
  v6 = sec;
  skcTransitionNode[145] = v6;

  return v4;
}

+ (SKTransition)flipHorizontalWithDuration:(NSTimeInterval)sec
{
  v4 = objc_alloc_init(SKTransition);
  skcTransitionNode = v4->_skcTransitionNode;
  *(skcTransitionNode + 140) = 3;
  v6 = sec;
  skcTransitionNode[145] = v6;

  return v4;
}

+ (SKTransition)flipVerticalWithDuration:(NSTimeInterval)sec
{
  v4 = objc_alloc_init(SKTransition);
  skcTransitionNode = v4->_skcTransitionNode;
  *(skcTransitionNode + 140) = 2;
  v6 = sec;
  skcTransitionNode[145] = v6;

  return v4;
}

+ (id)revealUpWithDuration:(double)a3
{
  v4 = objc_alloc_init(SKTransition);
  skcTransitionNode = v4->_skcTransitionNode;
  *(skcTransitionNode + 140) = 4;
  v6 = a3;
  skcTransitionNode[145] = v6;

  return v4;
}

+ (id)revealDownWithDuration:(double)a3
{
  v4 = objc_alloc_init(SKTransition);
  skcTransitionNode = v4->_skcTransitionNode;
  *(skcTransitionNode + 140) = 5;
  v6 = a3;
  skcTransitionNode[145] = v6;

  return v4;
}

+ (id)revealLeftWithDuration:(double)a3
{
  v4 = objc_alloc_init(SKTransition);
  skcTransitionNode = v4->_skcTransitionNode;
  *(skcTransitionNode + 140) = 7;
  v6 = a3;
  skcTransitionNode[145] = v6;

  return v4;
}

+ (id)revealRightWithDuration:(double)a3
{
  v4 = objc_alloc_init(SKTransition);
  skcTransitionNode = v4->_skcTransitionNode;
  *(skcTransitionNode + 140) = 6;
  v6 = a3;
  skcTransitionNode[145] = v6;

  return v4;
}

+ (id)moveInUpWithDuration:(double)a3
{
  v4 = objc_alloc_init(SKTransition);
  skcTransitionNode = v4->_skcTransitionNode;
  *(skcTransitionNode + 140) = 8;
  v6 = a3;
  skcTransitionNode[145] = v6;

  return v4;
}

+ (id)moveInDownWithDuration:(double)a3
{
  v4 = objc_alloc_init(SKTransition);
  skcTransitionNode = v4->_skcTransitionNode;
  *(skcTransitionNode + 140) = 9;
  v6 = a3;
  skcTransitionNode[145] = v6;

  return v4;
}

+ (id)moveInLeftWithDuration:(double)a3
{
  v4 = objc_alloc_init(SKTransition);
  skcTransitionNode = v4->_skcTransitionNode;
  *(skcTransitionNode + 140) = 11;
  v6 = a3;
  skcTransitionNode[145] = v6;

  return v4;
}

+ (id)moveInRightWithDuration:(double)a3
{
  v4 = objc_alloc_init(SKTransition);
  skcTransitionNode = v4->_skcTransitionNode;
  *(skcTransitionNode + 140) = 10;
  v6 = a3;
  skcTransitionNode[145] = v6;

  return v4;
}

+ (id)pushUpWithDuration:(double)a3
{
  v4 = objc_alloc_init(SKTransition);
  skcTransitionNode = v4->_skcTransitionNode;
  *(skcTransitionNode + 140) = 12;
  v6 = a3;
  skcTransitionNode[145] = v6;

  return v4;
}

+ (id)pushDownWithDuration:(double)a3
{
  v4 = objc_alloc_init(SKTransition);
  skcTransitionNode = v4->_skcTransitionNode;
  *(skcTransitionNode + 140) = 13;
  v6 = a3;
  skcTransitionNode[145] = v6;

  return v4;
}

+ (id)pushLeftWithDuration:(double)a3
{
  v4 = objc_alloc_init(SKTransition);
  skcTransitionNode = v4->_skcTransitionNode;
  *(skcTransitionNode + 140) = 15;
  v6 = a3;
  skcTransitionNode[145] = v6;

  return v4;
}

+ (id)pushRightWithDuration:(double)a3
{
  v4 = objc_alloc_init(SKTransition);
  skcTransitionNode = v4->_skcTransitionNode;
  *(skcTransitionNode + 140) = 14;
  v6 = a3;
  skcTransitionNode[145] = v6;

  return v4;
}

+ (SKTransition)doorsOpenHorizontalWithDuration:(NSTimeInterval)sec
{
  v4 = objc_alloc_init(SKTransition);
  skcTransitionNode = v4->_skcTransitionNode;
  *(skcTransitionNode + 140) = 17;
  v6 = sec;
  skcTransitionNode[145] = v6;

  return v4;
}

+ (SKTransition)doorsOpenVerticalWithDuration:(NSTimeInterval)sec
{
  v4 = objc_alloc_init(SKTransition);
  skcTransitionNode = v4->_skcTransitionNode;
  *(skcTransitionNode + 140) = 16;
  v6 = sec;
  skcTransitionNode[145] = v6;

  return v4;
}

+ (SKTransition)doorsCloseHorizontalWithDuration:(NSTimeInterval)sec
{
  v4 = objc_alloc_init(SKTransition);
  skcTransitionNode = v4->_skcTransitionNode;
  *(skcTransitionNode + 140) = 19;
  v6 = sec;
  skcTransitionNode[145] = v6;

  return v4;
}

+ (SKTransition)doorsCloseVerticalWithDuration:(NSTimeInterval)sec
{
  v4 = objc_alloc_init(SKTransition);
  skcTransitionNode = v4->_skcTransitionNode;
  *(skcTransitionNode + 140) = 18;
  v6 = sec;
  skcTransitionNode[145] = v6;

  return v4;
}

+ (SKTransition)doorwayWithDuration:(NSTimeInterval)sec
{
  v4 = objc_alloc_init(SKTransition);
  skcTransitionNode = v4->_skcTransitionNode;
  *(skcTransitionNode + 140) = 20;
  v6 = sec;
  skcTransitionNode[145] = v6;

  return v4;
}

+ (SKTransition)transitionWithCIFilter:(CIFilter *)filter duration:(NSTimeInterval)sec
{
  v5 = filter;
  v6 = objc_alloc_init(SKTransition);
  skcTransitionNode = v6->_skcTransitionNode;
  *(skcTransitionNode + 140) = 21;
  v8 = sec;
  skcTransitionNode[145] = v8;
  v9 = [(CIFilter *)v5 copy];
  v10 = v6->_skcTransitionNode;
  v11 = v10[71];
  v10[71] = v9;

  return v6;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = objc_alloc_init(SKTransition);
  skcTransitionNode = self->_skcTransitionNode;
  v6 = v4->_skcTransitionNode;
  *(v6 + 140) = *(skcTransitionNode + 140);
  *(v6 + 145) = *(skcTransitionNode + 145);
  objc_storeStrong(v6 + 71, *(skcTransitionNode + 71));
  v7 = v4->_skcTransitionNode;
  v9 = *(self->_skcTransitionNode + 19);
  (*(*v7 + 184))(v7, &v9);
  *(v4->_skcTransitionNode + 288) = *(self->_skcTransitionNode + 288);
  return v4;
}

- (double)_duration
{
  skcTransitionNode = self->_skcTransitionNode;
  if (skcTransitionNode)
  {
    return skcTransitionNode[145];
  }

  else
  {
    return 0.0;
  }
}

- (void)dealloc
{
  skcTransitionNode = self->_skcTransitionNode;
  if (skcTransitionNode)
  {
    (*(*skcTransitionNode + 88))(skcTransitionNode, a2);
    self->_skcTransitionNode = 0;
  }

  v4.receiver = self;
  v4.super_class = SKTransition;
  [(SKTransition *)&v4 dealloc];
}

@end