@interface UGCDislikeGlyphButtonView
- (void)animateWithBeginTime:(double)time completionDelay:(double)delay completion:(id)completion;
@end

@implementation UGCDislikeGlyphButtonView

- (void)animateWithBeginTime:(double)time completionDelay:(double)delay completion:(id)completion
{
  completionCopy = completion;
  animationLayer = [(UGCGlyphButtonView *)self animationLayer];
  [animationLayer setHidden:1];

  +[CATransaction begin];
  [(UGCGlyphButtonView *)self animationDuration];
  [CATransaction setAnimationDuration:?];
  glyph = [(UGCGlyphButtonView *)self glyph];
  layer = [glyph layer];
  [layer position];
  v12 = v11;
  v14 = v13;

  glyph2 = [(UGCGlyphButtonView *)self glyph];
  [glyph2 bounds];
  v17 = v16;
  v19 = v18;
  v21 = v20;
  v23 = v22;

  glyph3 = [(UGCGlyphButtonView *)self glyph];
  [glyph3 setHidden:1];

  v25 = +[CALayer layer];
  [(UGCGlyphButtonView *)self setAnimationLayer:v25];
  v26 = v17;
  v76 = v21;
  [v25 setBounds:{v17, v19, v21, v23}];
  [v25 setPosition:{v12, v14}];
  layer2 = [(UGCDislikeGlyphButtonView *)self layer];
  [layer2 addSublayer:v25];

  v88[0] = _NSConcreteStackBlock;
  v88[1] = 3221225472;
  v88[2] = sub_100CC85A0;
  v88[3] = &unk_101661A90;
  v88[4] = self;
  v28 = v25;
  v89 = v28;
  v79 = objc_retainBlock(v88);
  [CATransaction setCompletionBlock:?];
  if (completionCopy)
  {
    v29 = dispatch_time(0, (delay * 1000000000.0));
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_100CC8608;
    block[3] = &unk_101661760;
    v87 = completionCopy;
    dispatch_after(v29, &_dispatch_main_q, block);
  }

  v81 = completionCopy;
  v30 = +[CALayer layer];
  [v28 bounds];
  x = v90.origin.x;
  y = v90.origin.y;
  width = v90.size.width;
  height = v90.size.height;
  CGRectGetMidX(v90);
  v91.origin.x = x;
  v91.origin.y = y;
  v91.size.width = width;
  v91.size.height = height;
  MidY = CGRectGetMidY(v91);
  [v28 bounds];
  MaxX = CGRectGetMaxX(v92);
  [v30 setBounds:{v26, v19, v21, v23}];
  [v30 setPosition:{MaxX, MidY}];
  v80 = v28;
  [v28 addSublayer:v30];
  v37 = [CASpringAnimation animationWithKeyPath:@"transform.rotation.z"];
  v38 = [NSNumber numberWithDouble:-0.436332315];
  [v37 setToValue:v38];

  [v37 setMass:1.0];
  [v37 setStiffness:250.0];
  [v37 setDamping:20.0];
  LODWORD(v39) = 1.0;
  [v37 setSpeed:v39];
  [v37 setDuration:0.25];
  v84 = v19;
  [v37 setBeginTime:time];
  [v37 setFillMode:kCAFillModeBoth];
  [v30 addAnimation:v37 forKey:@"transform.rotation.z"];
  v40 = +[CALayer layer];
  [v30 bounds];
  v41 = v93.origin.x;
  v42 = v93.origin.y;
  v43 = v93.size.width;
  v44 = v93.size.height;
  MidX = CGRectGetMidX(v93);
  v94.origin.x = v41;
  v94.origin.y = v42;
  v94.size.width = v43;
  v94.size.height = v44;
  v46 = CGRectGetMidY(v94);
  [v40 setBounds:{v26, v84, v21, v23}];
  [v40 setPosition:{MidX, v46}];
  v78 = v30;
  [v30 addSublayer:v40];
  v47 = [CASpringAnimation animationWithKeyPath:@"transform.rotation.z"];
  v48 = [NSNumber numberWithDouble:0.436332315];
  [v47 setToValue:v48];

  [v47 setMass:1.0];
  [v47 setStiffness:400.0];
  [v47 setDamping:15.0];
  LODWORD(v49) = 1.0;
  [v47 setSpeed:v49];
  [v47 setDuration:0.22];
  [v47 setBeginTime:time + 0.0299999993];
  [v47 setFillMode:kCAFillModeBoth];
  [v40 addAnimation:v47 forKey:@"transform.rotation.z"];
  glyph4 = [(UGCGlyphButtonView *)self glyph];
  image = [glyph4 image];

  v52 = +[CALayer layer];
  v82 = v40;
  [v40 bounds];
  v53 = v95.origin.x;
  v54 = v95.origin.y;
  v55 = v95.size.width;
  v56 = v95.size.height;
  CGRectGetMidX(v95);
  v96.origin.x = v53;
  v96.origin.y = v54;
  v96.size.width = v55;
  v96.size.height = v56;
  v57 = CGRectGetMidY(v96);
  [v52 setBounds:{v26, v84, v76, v23}];
  [v52 setPosition:{0.0, v57}];
  if ([(UGCGlyphButtonView *)self isSelected])
  {
    glyphAppearance = [(UGCGlyphButtonView *)self glyphAppearance];
    selectedGlyphName = [glyphAppearance selectedGlyphName];
  }

  else
  {
    isMuted = [(UGCGlyphButtonView *)self isMuted];
    glyphAppearance2 = [(UGCGlyphButtonView *)self glyphAppearance];
    glyphAppearance = glyphAppearance2;
    if (isMuted)
    {
      [glyphAppearance2 mutedGlyphName];
    }

    else
    {
      [glyphAppearance2 unselectedGlyphName];
    }
    selectedGlyphName = ;
  }

  v62 = selectedGlyphName;

  if ([(UGCGlyphButtonView *)self isSelected])
  {
    glyphAppearance3 = [(UGCGlyphButtonView *)self glyphAppearance];
    selectedGlyphColor = [glyphAppearance3 selectedGlyphColor];
  }

  else
  {
    isMuted2 = [(UGCGlyphButtonView *)self isMuted];
    glyphAppearance4 = [(UGCGlyphButtonView *)self glyphAppearance];
    glyphAppearance3 = glyphAppearance4;
    if (isMuted2)
    {
      [glyphAppearance4 mutedGlyphColor];
    }

    else
    {
      [glyphAppearance4 unselectedGlyphColor];
    }
    selectedGlyphColor = ;
  }

  v85 = selectedGlyphColor;

  if (![(UGCGlyphButtonView *)self isEnabled])
  {
    v67 = [v85 colorWithAlphaComponent:0.3];

    v85 = v67;
  }

  v68 = [UIImage systemImageNamed:v62];
  v77 = v62;
  if ([(UGCGlyphButtonView *)self isInlineMode])
  {
    +[UGCFontManager inlineRatingGlyphButtonFont];
  }

  else
  {
    +[UGCFontManager ratingGlyphButtonFont];
  }
  v69 = ;
  v70 = [UIImageSymbolConfiguration configurationWithFont:v69];
  v71 = [v68 imageWithConfiguration:v70];
  v72 = [v71 _flatImageWithColor:v85];

  [v52 setContents:{objc_msgSend(v72, "CGImage")}];
  [image scale];
  [v52 setContentsScale:?];
  [v52 setContentsGravity:kCAGravityCenter];
  [(UGCGlyphButtonView *)self setContentLayer:v52];
  [v82 addSublayer:v52];
  if (sub_10000FA08(self) != 5)
  {
    v73 = [CAKeyframeAnimation animationWithKeyPath:@"transform.scale.xy"];
    [v73 setValues:&off_1016ED8C8];
    [v73 setKeyTimes:&off_1016ED8E0];
    [v73 setBeginTime:time];
    [v73 setFillMode:kCAFillModeBoth];
    [(UGCGlyphButtonView *)self animationDuration];
    [v73 setDuration:v74 * 0.5];
    layer3 = [(UGCDislikeGlyphButtonView *)self layer];
    [layer3 addAnimation:v73 forKey:@"backgroundScaleAnimation"];
  }

  +[CATransaction commit];
}

@end