@interface SCNNode
- (BOOL)hasContinuousRotationAnimation;
- (void)addContinuousRotationWithEaseIn;
- (void)addContinuousRotationWithInitialRotation:(SCNVector4)a3;
- (void)animationDidStop:(id)a3 finished:(BOOL)a4;
- (void)p_removeAnimationForKey:(id)a3 shouldPreserveTransform:(BOOL)a4;
- (void)removeContinuousRotationAnimations;
@end

@implementation SCNNode

- (void)p_removeAnimationForKey:(id)a3 shouldPreserveTransform:(BOOL)a4
{
  if (a4)
  {
    v10 = 0u;
    v11 = 0u;
    v8 = 0u;
    v9 = 0u;
    v6 = [(SCNNode *)self presentationNode];
    if (v6)
    {
      [(SCNNode *)v6 transform];
    }

    else
    {
      v10 = 0u;
      v11 = 0u;
      v8 = 0u;
      v9 = 0u;
    }

    [(SCNNode *)self removeAnimationForKey:a3];
    +[SCNTransaction begin];
    [SCNTransaction setDisableActions:1];
    v7[0] = v8;
    v7[1] = v9;
    v7[2] = v10;
    v7[3] = v11;
    [(SCNNode *)self setTransform:v7];
    +[SCNTransaction commit];
  }

  else
  {

    [(SCNNode *)self removeAnimationForKey:?];
  }
}

- (void)addContinuousRotationWithEaseIn
{
  +[SCNTransaction begin];
  v3 = [CABasicAnimation animationWithKeyPath:@"rotation"];
  [(CABasicAnimation *)v3 setDelegate:self];
  [(CABasicAnimation *)v3 setDuration:7.5];
  [(CABasicAnimation *)v3 setTimingFunction:[CAMediaTimingFunction functionWithName:kCAMediaTimingFunctionEaseIn]];
  [(CABasicAnimation *)v3 setRemovedOnCompletion:0];
  [(CABasicAnimation *)v3 setFillMode:kCAFillModeBoth];
  LODWORD(v4) = 1070141403;
  LODWORD(v5) = 1.0;
  [(CABasicAnimation *)v3 setToValue:[NSValue valueWithSCNVector4:0.0, v5, 0.0, v4]];
  [(CABasicAnimation *)v3 setValue:@"THEaseInRotation" forKey:@"THAnimationIdentifier"];
  [(SCNNode *)self addAnimation:v3 forKey:@"THEaseInRotation"];

  +[SCNTransaction commit];
}

- (void)addContinuousRotationWithInitialRotation:(SCNVector4)a3
{
  w = a3.w;
  z = a3.z;
  y = a3.y;
  x = a3.x;
  +[SCNTransaction begin];
  v8 = [CABasicAnimation animationWithKeyPath:@"rotation"];
  [(CABasicAnimation *)v8 setDuration:15.0];
  [(CABasicAnimation *)v8 setTimingFunction:[CAMediaTimingFunction functionWithName:kCAMediaTimingFunctionLinear]];
  LODWORD(v9) = 2139095040;
  [(CABasicAnimation *)v8 setRepeatCount:v9];
  v10 = w + 0.013962634;
  v11 = v10;
  *&v10 = x;
  *&v12 = z;
  *&v13 = v11;
  [(CABasicAnimation *)v8 setFromValue:[NSValue valueWithSCNVector4:v10, COERCE_DOUBLE(LODWORD(y) | 0x3F8C987100000000), v12, v13]];
  v14 = v11 + 6.28318531;
  *&v15 = v14;
  *&v14 = x;
  *&v16 = z;
  [(CABasicAnimation *)v8 setToValue:[NSValue valueWithSCNVector4:v14, COERCE_DOUBLE(LODWORD(y) | 0x401921FB00000000), v16, v15]];
  [(CABasicAnimation *)v8 setValue:@"THContinuousRotation" forKey:@"THAnimationIdentifier"];
  [(SCNNode *)self addAnimation:v8 forKey:@"THContinuousRotation"];

  +[SCNTransaction commit];
}

- (BOOL)hasContinuousRotationAnimation
{
  v5 = 0;
  v6 = &v5;
  v7 = 0x2020000000;
  v8 = 0;
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_609E4;
  v4[3] = &unk_45BCF8;
  v4[4] = &v5;
  [-[SCNNode animationKeys](self "animationKeys")];
  v2 = *(v6 + 24);
  _Block_object_dispose(&v5, 8);
  return v2;
}

- (void)removeContinuousRotationAnimations
{
  v3 = @"THContinuousRotation";
  if ([(SCNNode *)self animationForKey:@"THContinuousRotation"]|| (v3 = @"THEaseInRotation", [(SCNNode *)self animationForKey:@"THEaseInRotation"]))
  {

    [(SCNNode *)self p_removeAnimationForKey:v3 shouldPreserveTransform:1];
  }
}

- (void)animationDidStop:(id)a3 finished:(BOOL)a4
{
  v4 = a4;
  v7 = [a3 valueForKey:@"THAnimationIdentifier"];
  if (v4 && [v7 isEqualToString:@"THEaseInRotation"])
  {
    [[(SCNNode *)self presentationNode] rotation];
    v9 = v8;
    v11 = v10;
    v13 = v12;
    v15 = v14;
    [(SCNNode *)self removeAnimationForKey:@"THEaseInRotation"];
    LODWORD(v16) = v9;
    LODWORD(v17) = v11;
    LODWORD(v18) = v13;
    LODWORD(v19) = v15;
    [(SCNNode *)self addContinuousRotationWithInitialRotation:v16, v17, v18, v19];

    [a3 setDelegate:0];
  }
}

@end