@interface RCOverlayBarLayer
+ (double)_internalSelectionBarWidth;
+ (double)_internalSelectionKnobRadius;
- (RCOverlayBarLayer)initWithColor:(id)a3 selectionExtentIncludingKnobs:(double)a4 topKnob:(BOOL)a5 bottomKnob:(BOOL)a6 widthMultiplier:(double)a7 barWidthMatchesKnobs:(BOOL)a8 selectionBarType:(int64_t)a9;
- (double)selectionBarWidth;
- (id)barComponents;
- (void)_loadWithColor:(id)a3 selectionExtentIncludingKnobs:(double)a4 topKnob:(BOOL)a5 bottomKnob:(BOOL)a6;
- (void)layoutSublayers;
- (void)setBarGlyph:(id)a3;
- (void)setColor:(id)a3;
@end

@implementation RCOverlayBarLayer

+ (double)_internalSelectionBarWidth
{
  v2 = +[UIScreen mainScreen];
  v3 = [v2 traitCollection];
  v4 = [v3 preferredContentSizeCategory];

  v5 = +[RCRecorderStyleProvider sharedStyleProvider];
  if (UIContentSizeCategoryIsAccessibilityCategory(v4))
  {
    [v5 selectionBarWidthAX];
  }

  else
  {
    [v5 selectionBarWidth];
  }

  v7 = v6;

  return v7;
}

+ (double)_internalSelectionKnobRadius
{
  v2 = +[UIScreen mainScreen];
  v3 = [v2 traitCollection];
  v4 = [v3 preferredContentSizeCategory];

  v5 = +[RCRecorderStyleProvider sharedStyleProvider];
  if (UIContentSizeCategoryIsAccessibilityCategory(v4))
  {
    [v5 selectionKnobRadiusAX];
  }

  else
  {
    [v5 selectionKnobRadius];
  }

  v7 = v6;

  return v7;
}

- (RCOverlayBarLayer)initWithColor:(id)a3 selectionExtentIncludingKnobs:(double)a4 topKnob:(BOOL)a5 bottomKnob:(BOOL)a6 widthMultiplier:(double)a7 barWidthMatchesKnobs:(BOOL)a8 selectionBarType:(int64_t)a9
{
  v12 = a6;
  v13 = a5;
  v17 = a3;
  v21.receiver = self;
  v21.super_class = RCOverlayBarLayer;
  v18 = [(RCOverlayBarLayer *)&v21 init];
  v19 = v18;
  if (v18)
  {
    objc_storeStrong(&v18->_color, a3);
    v19->_widthMultiplier = a7;
    v19->_barWidthMatchesKnobs = a8;
    v19->_barType = a9;
    [(RCOverlayBarLayer *)v19 _loadWithColor:v17 selectionExtentIncludingKnobs:v13 topKnob:v12 bottomKnob:a4];
  }

  return v19;
}

- (double)selectionBarWidth
{
  if ([(RCOverlayBarLayer *)self barWidthMatchesKnobs])
  {
    [(RCOverlayBarLayer *)self selectionKnobRadius];
    return v3 + v3;
  }

  else
  {

    +[RCOverlayBarLayer _internalSelectionBarWidth];
  }

  return result;
}

- (id)barComponents
{
  bottomKnob = self->_bottomKnob;
  v5[0] = self->_topKnob;
  v5[1] = bottomKnob;
  v5[2] = self->_bar;
  v3 = [NSArray arrayWithObjects:v5 count:3];

  return v3;
}

- (void)setColor:(id)a3
{
  v5 = a3;
  if (([v5 isEqual:self->_color] & 1) == 0)
  {
    objc_storeStrong(&self->_color, a3);
    v14 = 0u;
    v15 = 0u;
    v12 = 0u;
    v13 = 0u;
    v6 = [(RCOverlayBarLayer *)self barComponents];
    v7 = [v6 countByEnumeratingWithState:&v12 objects:v16 count:16];
    if (v7)
    {
      v8 = v7;
      v9 = *v13;
      do
      {
        v10 = 0;
        do
        {
          if (*v13 != v9)
          {
            objc_enumerationMutation(v6);
          }

          v11 = *(*(&v12 + 1) + 8 * v10);
          [v11 setBackgroundColor:{-[UIColor CGColor](self->_color, "CGColor")}];
          [v11 setOpaque:1];
          v10 = v10 + 1;
        }

        while (v8 != v10);
        v8 = [v6 countByEnumeratingWithState:&v12 objects:v16 count:16];
      }

      while (v8);
    }
  }
}

- (void)setBarGlyph:(id)a3
{
  v6 = a3;
  if (([v6 isEqual:self->_barGlyph] & 1) == 0)
  {
    objc_storeStrong(&self->_barGlyph, a3);
    [v6 scale];
    [(CALayer *)self->_bar setContentsScale:?];
    [(CALayer *)self->_bar setContentsGravity:kCAGravityCenter];
    v5 = v6;
    -[CALayer setContents:](self->_bar, "setContents:", [v6 CGImage]);
  }
}

- (void)_loadWithColor:(id)a3 selectionExtentIncludingKnobs:(double)a4 topKnob:(BOOL)a5 bottomKnob:(BOOL)a6
{
  v6 = a6;
  v7 = a5;
  v10 = a3;
  [(RCOverlayBarLayer *)self selectionKnobRadius];
  v12 = v11;
  [(RCOverlayBarLayer *)self selectionBarWidth];
  v14 = v13;
  v52[0] = _NSConcreteStackBlock;
  v52[1] = 3221225472;
  v52[2] = sub_1000503C0;
  v52[3] = &unk_10028AD68;
  v54 = a4;
  v55 = v12;
  v56 = v13;
  v15 = v10;
  v53 = v15;
  v16 = objc_retainBlock(v52);
  v46 = _NSConcreteStackBlock;
  v47 = 3221225472;
  v48 = sub_100050444;
  v49 = &unk_10028AD90;
  v51 = v12;
  v17 = v15;
  v50 = v17;
  v18 = objc_retainBlock(&v46);
  v22 = (v18[2])(v18, v19, v20, v21);
  topKnob = self->_topKnob;
  self->_topKnob = v22;

  if (!v7)
  {
    [(CALayer *)self->_topKnob bounds:v46];
    [(CALayer *)self->_topKnob setBounds:?];
  }

  v24 = (v18[2])(v18);
  bottomKnob = self->_bottomKnob;
  self->_bottomKnob = v24;

  if (!v6)
  {
    [(CALayer *)self->_bottomKnob bounds];
    [(CALayer *)self->_bottomKnob setBounds:?];
  }

  v26 = (v16[2])(v16);
  bar = self->_bar;
  self->_bar = v26;

  v28 = RCRoundCoord(v12 + v14 * -0.5);
  [(CALayer *)self->_topKnob bounds];
  Height = CGRectGetHeight(v57);
  v30 = RCRoundCoord(Height);
  [(CALayer *)self->_bar frame];
  v32 = RCRoundCoord(v31);
  [(CALayer *)self->_bar frame];
  [(CALayer *)self->_bar setFrame:v28, v30, v32, RCRoundCoord(v33)];
  [(CALayer *)self->_bar frame];
  MaxY = CGRectGetMaxY(v58);
  if ([(RCOverlayBarLayer *)self barWidthMatchesKnobs])
  {
    v35 = v12;
  }

  else
  {
    v35 = 0.0;
  }

  v36 = RCRoundCoord(MaxY - v35);
  [(CALayer *)self->_bottomKnob frame];
  v38 = RCRoundCoord(v37);
  [(CALayer *)self->_bottomKnob frame];
  [(CALayer *)self->_bottomKnob setFrame:0.0, v36, v38, RCRoundCoord(v39)];
  if ([(RCOverlayBarLayer *)self barWidthMatchesKnobs])
  {
    v40 = v12;
  }

  else
  {
    v40 = 0.0;
  }

  v41 = RCRoundCoord(v40);
  [(CALayer *)self->_topKnob frame];
  v43 = RCRoundCoord(v42);
  [(CALayer *)self->_topKnob frame];
  [(CALayer *)self->_topKnob setFrame:0.0, v41, v43, RCRoundCoord(v44)];
  [(CALayer *)self->_bottomKnob frame];
  Width = CGRectGetWidth(v59);
  [(CALayer *)self->_bottomKnob frame];
  [(RCOverlayBarLayer *)self setBounds:0.0, 0.0, Width, CGRectGetMaxY(v60)];
  [(RCOverlayBarLayer *)self setAnchorPoint:CGPointZero.x, CGPointZero.y];
  [(RCOverlayBarLayer *)self addSublayer:self->_bar];
  if (v7)
  {
    [(RCOverlayBarLayer *)self addSublayer:self->_topKnob];
  }

  if (v6)
  {
    [(RCOverlayBarLayer *)self addSublayer:self->_bottomKnob];
  }
}

- (void)layoutSublayers
{
  v47.receiver = self;
  v47.super_class = RCOverlayBarLayer;
  [(RCOverlayBarLayer *)&v47 layoutSublayers];
  [(RCOverlayBarLayer *)self bounds];
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v10 = v9;
  [(CALayer *)self->_bottomKnob frame];
  v12 = v11;
  v14 = v13;
  v48.origin.x = v4;
  v48.origin.y = v6;
  v48.size.width = v8;
  v48.size.height = v10;
  MidX = CGRectGetMidX(v48);
  [(CALayer *)self->_bottomKnob bounds];
  v16 = CGRectGetMidX(v49);
  v17 = RCRoundCoord(MidX - v16);
  v50.origin.x = v4;
  v50.origin.y = v6;
  v50.size.width = v8;
  v50.size.height = v10;
  Height = CGRectGetHeight(v50);
  [(CALayer *)self->_bottomKnob frame];
  v19 = CGRectGetHeight(v51);
  [(CALayer *)self->_bottomKnob setFrame:v17, RCRoundCoord(Height - v19), v12, v14];
  [(CALayer *)self->_topKnob frame];
  v21 = v20;
  v23 = v22;
  v52.origin.x = v4;
  v52.origin.y = v6;
  v52.size.width = v8;
  v52.size.height = v10;
  v24 = CGRectGetMidX(v52);
  [(CALayer *)self->_topKnob bounds];
  v25 = CGRectGetMidX(v53);
  [(CALayer *)self->_topKnob setFrame:RCRoundCoord(v24 - v25), 0.0, v21, v23];
  [(CALayer *)self->_bar frame];
  v27 = v26;
  v29 = v28;
  v54.origin.x = v4;
  v54.origin.y = v6;
  v54.size.width = v8;
  v54.size.height = v10;
  v30 = CGRectGetMidX(v54);
  [(RCOverlayBarLayer *)self selectionBarWidth];
  v32 = RCRoundCoord(v30 + v31 * -0.5);
  v33 = [(RCOverlayBarLayer *)self barWidthMatchesKnobs];
  topKnob = self->_topKnob;
  if (v33)
  {
    [(CALayer *)topKnob frame];
    MidY = CGRectGetMidY(v55);
  }

  else
  {
    [(CALayer *)topKnob bounds];
    MidY = CGRectGetMaxY(v56);
  }

  v36 = MidY;
  v37 = [(RCOverlayBarLayer *)self barWidthMatchesKnobs];
  [(CALayer *)self->_bottomKnob frame];
  if (v37)
  {
    MinY = CGRectGetMidY(*&v38);
  }

  else
  {
    MinY = CGRectGetMinY(*&v38);
  }

  v43 = MinY;
  v57.origin.x = v32;
  v57.origin.y = v36;
  v57.size.width = v27;
  v57.size.height = v29;
  [(CALayer *)self->_bar setFrame:v32, v36, v27, v43 - CGRectGetMinY(v57)];
  if (self->_barType != 2)
  {
    v44 = +[RCRecorderStyleProvider sharedStyleProvider];
    [v44 trimHandleCornerRadius];
    [(CALayer *)self->_bar setCornerRadius:?];

    barType = self->_barType;
    if (barType)
    {
      if (barType != 1)
      {
        return;
      }

      v46 = 10;
    }

    else
    {
      v46 = 5;
    }

    [(CALayer *)self->_bar setMaskedCorners:v46];
  }
}

@end