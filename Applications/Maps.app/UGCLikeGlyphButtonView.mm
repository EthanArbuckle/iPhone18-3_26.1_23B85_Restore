@interface UGCLikeGlyphButtonView
- (void)animateWithBeginTime:(double)time completionDelay:(double)delay completion:(id)completion;
@end

@implementation UGCLikeGlyphButtonView

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
  [v25 setBounds:{v17, v19, v21, v23}];
  [v25 setPosition:{v12, v14}];
  layer2 = [(UGCLikeGlyphButtonView *)self layer];
  [layer2 addSublayer:v25];

  v88[0] = _NSConcreteStackBlock;
  v88[1] = 3221225472;
  v88[2] = sub_100CC71B0;
  v88[3] = &unk_101661A90;
  v88[4] = self;
  v27 = v25;
  v89 = v27;
  v81 = objc_retainBlock(v88);
  [CATransaction setCompletionBlock:?];
  if (completionCopy)
  {
    v28 = dispatch_time(0, (delay * 1000000000.0));
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_100CC7218;
    block[3] = &unk_101661760;
    v87 = completionCopy;
    dispatch_after(v28, &_dispatch_main_q, block);
  }

  v83 = completionCopy;
  v29 = +[CALayer layer];
  [v27 bounds];
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
  [v29 setBounds:{v17, v19, v21, v23}];
  [v29 setPosition:{0.0, MidY}];
  v82 = v27;
  [v27 addSublayer:v29];
  v35 = [CASpringAnimation animationWithKeyPath:@"transform.rotation.z"];
  v36 = [NSNumber numberWithDouble:0.436332315];
  [v35 setToValue:v36];

  [v35 setMass:1.0];
  [v35 setStiffness:250.0];
  [v35 setDamping:20.0];
  LODWORD(v37) = 1.0;
  [v35 setSpeed:v37];
  [v35 setDuration:0.25];
  v76 = v19;
  [v35 setBeginTime:time];
  [v35 setFillMode:kCAFillModeBoth];
  [v29 addAnimation:v35 forKey:@"transform.rotation.z"];
  v38 = +[CALayer layer];
  [v29 bounds];
  v39 = v92.origin.x;
  v40 = v92.origin.y;
  v41 = v92.size.width;
  v42 = v92.size.height;
  v77 = v17;
  MidX = CGRectGetMidX(v92);
  v93.origin.x = v39;
  v93.origin.y = v40;
  v93.size.width = v41;
  v93.size.height = v42;
  v44 = CGRectGetMidY(v93);
  [v38 setBounds:{v17, v76, v21, v23}];
  [v38 setPosition:{MidX, v44}];
  v80 = v29;
  [v29 addSublayer:v38];
  v45 = [CASpringAnimation animationWithKeyPath:@"transform.rotation.z"];
  v46 = [NSNumber numberWithDouble:-0.436332315];
  [v45 setToValue:v46];

  [v45 setMass:1.0];
  [v45 setStiffness:400.0];
  [v45 setDamping:15.0];
  LODWORD(v47) = 1.0;
  [v45 setSpeed:v47];
  [v45 setDuration:0.22];
  [v45 setBeginTime:time + 0.0299999993];
  [v45 setFillMode:kCAFillModeBoth];
  [v38 addAnimation:v45 forKey:@"transform.rotation.z"];
  glyph4 = [(UGCGlyphButtonView *)self glyph];
  image = [glyph4 image];

  v50 = +[CALayer layer];
  v84 = v38;
  [v38 bounds];
  v51 = v94.origin.x;
  v52 = v94.origin.y;
  v53 = v94.size.width;
  v54 = v94.size.height;
  CGRectGetMidX(v94);
  v95.origin.x = v51;
  v95.origin.y = v52;
  v95.size.width = v53;
  v95.size.height = v54;
  v55 = CGRectGetMidY(v95);
  v96.origin.x = v77;
  v96.origin.y = v76;
  v96.size.width = v21;
  v96.size.height = v23;
  MaxX = CGRectGetMaxX(v96);
  [v50 setBounds:{v77, v76, v21, v23}];
  [v50 setPosition:{MaxX, v55}];
  v79 = image;
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

  v61 = selectedGlyphName;

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

  v66 = selectedGlyphColor;

  if (![(UGCGlyphButtonView *)self isEnabled])
  {
    v67 = [v66 colorWithAlphaComponent:0.3];

    v66 = v67;
  }

  v68 = [UIImage systemImageNamed:v61];
  v78 = v61;
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
  v72 = [v71 _flatImageWithColor:v66];

  [v50 setContents:{objc_msgSend(v72, "CGImage")}];
  [v79 scale];
  [v50 setContentsScale:?];
  [v50 setContentsGravity:kCAGravityCenter];
  [(UGCGlyphButtonView *)self setContentLayer:v50];
  [v84 addSublayer:v50];
  if (sub_10000FA08(self) != 5)
  {
    v73 = [CAKeyframeAnimation animationWithKeyPath:@"transform.scale.xy"];
    [v73 setValues:&off_1016ED898];
    [v73 setKeyTimes:&off_1016ED8B0];
    [v73 setBeginTime:time];
    [v73 setFillMode:kCAFillModeBoth];
    [(UGCGlyphButtonView *)self animationDuration];
    [v73 setDuration:v74 * 0.5];
    layer3 = [(UGCLikeGlyphButtonView *)self layer];
    [layer3 addAnimation:v73 forKey:@"backgroundScaleAnimation"];
  }

  +[CATransaction commit];
}

@end