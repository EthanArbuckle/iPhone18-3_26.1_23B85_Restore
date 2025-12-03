@interface CKHappyBirthdayEffectBalloonLayer
- (CKHappyBirthdayEffectBalloonLayer)init;
- (id)assetWithName:(id)name;
- (void)setupAttachmentLayerWithStringColorIndex:(unint64_t)index;
- (void)setupBaloonLayerWithColorIndex:(unint64_t)index;
- (void)setupStringLayerWithStringColorIndex:(unint64_t)index;
@end

@implementation CKHappyBirthdayEffectBalloonLayer

- (CKHappyBirthdayEffectBalloonLayer)init
{
  v10.receiver = self;
  v10.super_class = CKHappyBirthdayEffectBalloonLayer;
  v2 = [(CKHappyBirthdayEffectBalloonLayer *)&v10 init];
  if (v2)
  {
    v3 = arc4random() % 7;
    v4 = qword_C970++;
    [(CKHappyBirthdayEffectBalloonLayer *)v2 setupBaloonLayerWithColorIndex:v4 % 5];
    [(CKHappyBirthdayEffectBalloonLayer *)v2 setupStringLayerWithStringColorIndex:v3];
    [(CKHappyBirthdayEffectBalloonLayer *)v2 setupAttachmentLayerWithStringColorIndex:v3];
    balloonLayer = [(CKHappyBirthdayEffectBalloonLayer *)v2 balloonLayer];
    [balloonLayer bounds];
    [(CKHappyBirthdayEffectBalloonLayer *)v2 setBounds:?];

    balloonLayer2 = [(CKHappyBirthdayEffectBalloonLayer *)v2 balloonLayer];
    [(CKHappyBirthdayEffectBalloonLayer *)v2 addSublayer:balloonLayer2];

    stringLayer = [(CKHappyBirthdayEffectBalloonLayer *)v2 stringLayer];
    [(CKHappyBirthdayEffectBalloonLayer *)v2 addSublayer:stringLayer];

    attachmentLayer = [(CKHappyBirthdayEffectBalloonLayer *)v2 attachmentLayer];
    [(CKHappyBirthdayEffectBalloonLayer *)v2 addSublayer:attachmentLayer];
  }

  return v2;
}

- (id)assetWithName:(id)name
{
  nameCopy = name;
  v4 = [NSBundle bundleForClass:objc_opt_class()];
  v5 = [UIImage imageNamed:nameCopy inBundle:v4 compatibleWithTraitCollection:0];

  return v5;
}

- (void)setupBaloonLayerWithColorIndex:(unint64_t)index
{
  v4 = (&unk_3630 + 24 * index);
  v5 = [UIColor colorWithRed:dbl_35B8[3 * index] green:dbl_35B8[3 * index + 1] blue:dbl_35B8[3 * index + 2] alpha:1.0];
  cGColor = [v5 CGColor];

  v7 = [UIColor colorWithRed:*v4 green:v4[1] blue:v4[2] alpha:1.0];
  cGColor2 = [v7 CGColor];

  v12 = +[CALayer layer];
  v9 = [(CKHappyBirthdayEffectBalloonLayer *)self assetWithName:@"balloonBase"];
  [v12 setContents:{objc_msgSend(v9, "CGImage")}];

  [v12 setContentsMultiplyColor:cGColor];
  [v12 setFrame:{0.0, 0.0, 303.0, 402.0}];
  [v12 setAllowsGroupBlending:0];
  v10 = +[CALayer layer];
  v11 = [(CKHappyBirthdayEffectBalloonLayer *)self assetWithName:@"balloonHighlights"];
  [v10 setContents:{objc_msgSend(v11, "CGImage")}];

  [v10 setContentsMultiplyColor:cGColor2];
  [v10 setFrame:{0.0, 0.0, 303.0, 402.0}];
  [v10 setCompositingFilter:kCAFilterPlusL];
  [v12 addSublayer:v10];
  [(CKHappyBirthdayEffectBalloonLayer *)self setBalloonLayer:v12];
}

- (void)setupStringLayerWithStringColorIndex:(unint64_t)index
{
  v4 = +[NSMutableArray array];
  v5 = +[NSMutableArray array];
  v6 = &unk_36E0 + 8 * index;
  v7 = 7;
  v8 = &unk_36A8 + 8 * index;
  do
  {
    v9 = [NSNumber numberWithDouble:*&v8[-56 * (index / 7)]];
    [v4 addObject:v9];

    v10 = [UIColor colorWithWhite:*&v6[-56 * (index / 7)] alpha:1.0];
    [v5 addObject:{objc_msgSend(v10, "CGColor")}];

    v6 += 8;
    ++index;
    v8 += 8;
    --v7;
  }

  while (v7);
  v11 = [CAEmitterBehavior behaviorWithType:kCAEmitterBehaviorValueOverLife];
  [v11 setValue:@"scale" forKey:@"keyPath"];
  [v11 setValue:v4 forKey:@"values"];
  v12 = [CAEmitterBehavior behaviorWithType:kCAEmitterBehaviorColorOverLife];
  [v12 setValue:v5 forKey:@"colors"];
  v13 = +[CAEmitterCell emitterCell];
  LODWORD(v14) = 1130102784;
  [v13 setBirthRate:v14];
  v15 = drand48() * 0.4 + 0.8;
  *&v15 = v15;
  [v13 setLifetime:v15];
  v16 = [UIColor colorWithWhite:0.75 alpha:1.0];
  [v13 setColor:{objc_msgSend(v16, "CGColor")}];

  [v13 setEmissionLongitude:1.57079633];
  [v13 setName:@"string"];
  [v13 setScale:0.2];
  [v13 setVelocity:500.0];
  v17 = [(CKHappyBirthdayEffectBalloonLayer *)self assetWithName:@"balloonString"];
  [v13 setContents:{objc_msgSend(v17, "CGImage")}];

  v30[0] = v11;
  v30[1] = v12;
  v18 = [NSArray arrayWithObjects:v30 count:2];
  [v13 setEmitterBehaviors:v18];

  [v13 setParticleType:kCAEmitterCellPoint];
  v19 = +[CAEmitterLayer layer];
  [v19 setUpdateInterval:0.0166666667];
  [v19 setBeginTime:CACurrentMediaTime() + -60.0];
  [v19 setPosition:{157.0, 384.0}];
  v29 = v13;
  v20 = [NSArray arrayWithObjects:&v29 count:1];
  [v19 setEmitterCells:v20];

  v21 = [CABasicAnimation animationWithKeyPath:@"emitterCells.string.xAcceleration"];
  [v21 setFrameInterval:0.0166666667];
  v22 = [NSNumber numberWithDouble:-80.0 - drand48() * 40.0];
  [v21 setFromValue:v22];

  v23 = [NSNumber numberWithDouble:drand48() * 40.0 + 80.0];
  [v21 setToValue:v23];

  [v21 setAutoreverses:1];
  LODWORD(v24) = 2139095040;
  [v21 setRepeatCount:v24];
  [v21 setDuration:1.1];
  v25 = drand48();
  [v21 duration];
  [v21 setTimeOffset:v25 * v26];
  v27 = [CAMediaTimingFunction functionWithName:kCAMediaTimingFunctionEaseInEaseOut];
  [v21 setTimingFunction:v27];

  [v19 addAnimation:v21 forKey:@"wiggle"];
  [(CKHappyBirthdayEffectBalloonLayer *)self setStringLayer:v19];
}

- (void)setupAttachmentLayerWithStringColorIndex:(unint64_t)index
{
  v7 = +[CALayer layer];
  [v7 setBounds:{0.0, 0.0, 10.0, 7.0}];
  [v7 setPosition:{156.0, 384.0}];
  [v7 setContentsRect:{0.25, 0.2, 0.5, 0.6}];
  v5 = [(CKHappyBirthdayEffectBalloonLayer *)self assetWithName:@"balloonString"];
  [v7 setContents:{objc_msgSend(v5, "CGImage")}];

  v6 = [UIColor colorWithWhite:dbl_36E0[index] * 0.6 alpha:1.0];
  [v7 setContentsMultiplyColor:{objc_msgSend(v6, "CGColor")}];

  [(CKHappyBirthdayEffectBalloonLayer *)self setAttachmentLayer:v7];
}

@end