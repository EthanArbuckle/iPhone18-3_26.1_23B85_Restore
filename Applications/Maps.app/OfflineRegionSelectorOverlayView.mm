@interface OfflineRegionSelectorOverlayView
- (CGRect)_clampedRectFromRect:(CGRect)rect;
- (CGRect)_selectedRectFromHandle:(id)handle withTranslation:(CGPoint)translation;
- (CGRect)selectedRectFrame;
- (OfflineRegionSelectorActionCoordination)regionSelectorDelegate;
- (OfflineRegionSelectorOverlayView)init;
- (OfflineRegionSelectorOverlayView)initWithCoder:(id)coder;
- (OfflineRegionSelectorOverlayView)initWithFrame:(CGRect)frame;
- (id)offlineRegionSelectorCropHandleToString:(unint64_t)string;
- (void)_commonInit;
- (void)_handlePanGesture:(id)gesture;
- (void)_setSelectedRect:(CGRect)rect animated:(BOOL)animated;
- (void)animateForDownloadWithCompletion:(id)completion;
- (void)layoutSubviews;
- (void)setBounds:(CGRect)bounds;
- (void)setInitialSelectedRect:(CGRect)rect animated:(BOOL)animated;
@end

@implementation OfflineRegionSelectorOverlayView

- (OfflineRegionSelectorActionCoordination)regionSelectorDelegate
{
  WeakRetained = objc_loadWeakRetained(&self->_regionSelectorDelegate);

  return WeakRetained;
}

- (void)_handlePanGesture:(id)gesture
{
  gestureCopy = gesture;
  view = [gestureCopy view];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = view;
  }

  else
  {
    v5 = 0;
  }

  v6 = v5;

  [gestureCopy translationInView:self];
  [(OfflineRegionSelectorOverlayView *)self _selectedRectFromHandle:v6 withTranslation:?];
  v8 = v7;
  v10 = v9;
  v12 = v11;
  v14 = v13;

  [(OfflineRegionSelectorOverlayView *)self _setSelectedRect:v8, v10, v12, v14];
  [gestureCopy setTranslation:self inView:{CGPointZero.x, CGPointZero.y}];
  if ([gestureCopy state] == 1)
  {
    [(UIImpactFeedbackGenerator *)self->_hapticGenerator impactOccurred];
    regionSelectorDelegate = [(OfflineRegionSelectorOverlayView *)self regionSelectorDelegate];
    [regionSelectorDelegate willAdjustSelectedRegion];
LABEL_9:

    goto LABEL_10;
  }

  if ([gestureCopy state] == 3 || objc_msgSend(gestureCopy, "state") == 4)
  {
    regionSelectorDelegate2 = [(OfflineRegionSelectorOverlayView *)self regionSelectorDelegate];
    [regionSelectorDelegate2 didAdjustSelectedRegion];

    regionSelectorDelegate = [(OfflineRegionSelectorOverlayView *)self regionSelectorDelegate];
    [regionSelectorDelegate didAdjustSelectorCropHandle];
    goto LABEL_9;
  }

LABEL_10:
}

- (CGRect)_selectedRectFromHandle:(id)handle withTranslation:(CGPoint)translation
{
  y = translation.y;
  x = translation.x;
  handleCopy = handle;
  [(UIView *)self->_outlineView frame];
  v9 = v8;
  v11 = v10;
  v13 = v12;
  v15 = v14;
  handle = [handleCopy handle];
  if (handle <= 5 && ((1 << handle) & 0x31) != 0)
  {
    v17 = v15 - y;
    if (v15 - y >= 78.0)
    {
      v11 = v11 + y;
      v15 = v15 - y;
    }
  }

  handle2 = [handleCopy handle];
  if (handle2 <= 6 && ((0x52u >> handle2) & 1) != 0)
  {
    v19 = v13 - x;
    if (v13 - x >= 78.0)
    {
      v9 = v9 + x;
      v13 = v13 - x;
    }
  }

  handle3 = [handleCopy handle];
  if (((handle3 < 8) & (0xA8u >> handle3)) != 0)
  {
    v21 = v13 + x;
  }

  else
  {
    v21 = v13;
  }

  handle4 = [handleCopy handle];
  if ((handle4 & 0xFFFFFFFFFFFFFFFBLL) == 2 || handle4 == 7)
  {
    v24 = v15 + y;
  }

  else
  {
    v24 = v15;
  }

  v25 = v9;
  v26 = v11;
  v27 = v21;
  v28 = v24;
  result.size.height = v28;
  result.size.width = v27;
  result.origin.y = v26;
  result.origin.x = v25;
  return result;
}

- (CGRect)_clampedRectFromRect:(CGRect)rect
{
  height = rect.size.height;
  width = rect.size.width;
  y = rect.origin.y;
  x = rect.origin.x;
  viewportLayoutGuide = [(OfflineRegionSelectorOverlayView *)self viewportLayoutGuide];
  [viewportLayoutGuide layoutFrame];
  v9 = v8;
  v11 = v10;
  v13 = v12;
  v15 = v14;

  v38.origin.x = x;
  v35 = y;
  v37 = height;
  v38.origin.y = y;
  v38.size.width = width;
  v38.size.height = height;
  MinX = CGRectGetMinX(v38);
  v39.origin.x = v9;
  v39.origin.y = v11;
  rect = v13;
  v39.size.width = v13;
  v39.size.height = v15;
  if (MinX - CGRectGetMinX(v39) < 35.0)
  {
    v40.origin.x = x;
    v40.origin.y = v35;
    v40.size.height = height;
    v40.size.width = width;
    v17 = CGRectGetMinX(v40);
    v41.origin.x = v9;
    v41.origin.y = v11;
    v41.size.width = v13;
    v41.size.height = v15;
    width = width + v17 + -35.0 - CGRectGetMinX(v41);
    v42.origin.x = v9;
    v42.origin.y = v11;
    v42.size.width = v13;
    v42.size.height = v15;
    x = CGRectGetMinX(v42) + 35.0;
  }

  v18 = v11;
  v32 = width;
  v43.origin.x = x;
  v19 = v35;
  v43.size.height = height;
  v43.origin.y = v35;
  v43.size.width = width;
  MinY = CGRectGetMinY(v43);
  v44.origin.x = v9;
  v44.origin.y = v18;
  v44.size.width = rect;
  v44.size.height = v15;
  v21 = v9;
  if (MinY - CGRectGetMinY(v44) >= 35.0)
  {
    rectCopy2 = rect;
  }

  else
  {
    v45.origin.x = x;
    v45.origin.y = v35;
    v45.size.width = v32;
    v45.size.height = height;
    v22 = CGRectGetMinY(v45);
    v46.origin.x = v9;
    v46.origin.y = v18;
    rectCopy2 = rect;
    v46.size.width = rect;
    v46.size.height = v15;
    v37 = height + v22 + -35.0 - CGRectGetMinY(v46);
    v47.origin.x = v21;
    v47.origin.y = v18;
    v47.size.width = rect;
    v47.size.height = v15;
    v19 = CGRectGetMinY(v47) + 35.0;
  }

  v48.origin.x = v21;
  v48.origin.y = v18;
  v48.size.width = rectCopy2;
  v48.size.height = v15;
  MaxX = CGRectGetMaxX(v48);
  v49.origin.x = x;
  v36 = v19;
  v49.origin.y = v19;
  v25 = v32;
  v49.size.width = v32;
  v49.size.height = v37;
  if (MaxX - CGRectGetMaxX(v49) < 35.0)
  {
    v50.origin.x = v21;
    v50.origin.y = v18;
    v50.size.width = rectCopy2;
    v50.size.height = v15;
    v25 = -35.0 - x + CGRectGetMaxX(v50);
  }

  v51.origin.x = v21;
  v51.origin.y = v18;
  v51.size.width = rectCopy2;
  v51.size.height = v15;
  MaxY = CGRectGetMaxY(v51);
  recta = x;
  v52.origin.x = x;
  v52.size.width = v25;
  v27 = v37;
  v52.origin.y = v36;
  v52.size.height = v37;
  if (MaxY - CGRectGetMaxY(v52) < 35.0)
  {
    v53.origin.x = v21;
    v53.origin.y = v18;
    v53.size.width = rectCopy2;
    v53.size.height = v15;
    v27 = -35.0 - v36 + CGRectGetMaxY(v53);
  }

  v28 = fmax(v25, 78.0);
  v29 = fmax(v27, 78.0);
  v30 = recta;
  v31 = v36;
  result.size.height = v29;
  result.size.width = v28;
  result.origin.y = v31;
  result.origin.x = v30;
  return result;
}

- (void)setBounds:(CGRect)bounds
{
  height = bounds.size.height;
  width = bounds.size.width;
  y = bounds.origin.y;
  x = bounds.origin.x;
  [(OfflineRegionSelectorOverlayView *)self bounds];
  v33.origin.x = v8;
  v33.origin.y = v9;
  v33.size.width = v10;
  v33.size.height = v11;
  v25.origin.x = x;
  v25.origin.y = y;
  v25.size.width = width;
  v25.size.height = height;
  if (!CGRectEqualToRect(v25, v33))
  {
    [(UIView *)self->_outlineView frame];
    MidX = CGRectGetMidX(v26);
    [(OfflineRegionSelectorOverlayView *)self bounds];
    v13 = CGRectGetMidX(v27);
    [(UIView *)self->_outlineView frame];
    MidY = CGRectGetMidY(v28);
    [(OfflineRegionSelectorOverlayView *)self bounds];
    v15 = CGRectGetMidY(v29);
    v24.receiver = self;
    v24.super_class = OfflineRegionSelectorOverlayView;
    [(OfflineRegionSelectorOverlayView *)&v24 setBounds:x, y, width, height];
    [(UIView *)self->_outlineView frame];
    v17 = v16;
    v19 = v18;
    [(OfflineRegionSelectorOverlayView *)self bounds];
    v20 = MidX - v13 + CGRectGetMidX(v30) + v17 * -0.5;
    [(OfflineRegionSelectorOverlayView *)self bounds];
    v21 = MidY - v15 + v19 * -0.5 + CGRectGetMidY(v31);
    v32.origin.x = v20;
    v32.origin.y = v21;
    v32.size.width = v17;
    v32.size.height = v19;
    if (!CGRectIsEmpty(v32))
    {
      regionSelectorDelegate = [(OfflineRegionSelectorOverlayView *)self regionSelectorDelegate];
      [regionSelectorDelegate willAdjustSelectedRegion];

      [(OfflineRegionSelectorOverlayView *)self _setSelectedRect:v20, v21, v17, v19];
      regionSelectorDelegate2 = [(OfflineRegionSelectorOverlayView *)self regionSelectorDelegate];
      [regionSelectorDelegate2 didAdjustSelectedRegion];
    }
  }
}

- (void)_setSelectedRect:(CGRect)rect animated:(BOOL)animated
{
  animatedCopy = animated;
  [(OfflineRegionSelectorOverlayView *)self _clampedRectFromRect:rect.origin.x, rect.origin.y, rect.size.width, rect.size.height];
  v12[0] = _NSConcreteStackBlock;
  v12[1] = 3221225472;
  v12[2] = sub_100693224;
  v12[3] = &unk_10164E3F8;
  v12[4] = self;
  v12[5] = v6;
  v12[6] = v7;
  v12[7] = v8;
  v12[8] = v9;
  v10 = objc_retainBlock(v12);
  v11 = v10;
  if (animatedCopy)
  {
    [(OfflineRegionSelectorOverlayView *)self frame];
    [(UIView *)self->_outlineView setFrame:?];
    [(OfflineRegionSelectorOverlayView *)self frame];
    [(UIView *)self->_checkerboardKnockoutMask setFrame:?];
    [(OfflineRegionSelectorOverlayView *)self frame];
    [(UIView *)self->_downloadCameraSnapshotKnockoutMask setFrame:?];
    [(OfflineRegionSelectorOverlayView *)self layoutIfNeeded];
    [UIView animateWithDuration:0 delay:v11 usingSpringWithDamping:0 initialSpringVelocity:0.3 options:0.0 animations:0.666666687 completion:0.0];
  }

  else
  {
    (v10[2])(v10);
  }
}

- (void)layoutSubviews
{
  v3.receiver = self;
  v3.super_class = OfflineRegionSelectorOverlayView;
  [(OfflineRegionSelectorOverlayView *)&v3 layoutSubviews];
  if (self->_needsInitialLayout && !CGRectIsEmpty(self->_initialSelectedRect))
  {
    [(OfflineRegionSelectorOverlayView *)self setInitialSelectedRect:1 animated:self->_initialSelectedRect.origin.x, self->_initialSelectedRect.origin.y, self->_initialSelectedRect.size.width, self->_initialSelectedRect.size.height];
  }
}

- (void)setInitialSelectedRect:(CGRect)rect animated:(BOOL)animated
{
  animatedCopy = animated;
  p_initialSelectedRect = &self->_initialSelectedRect;
  self->_initialSelectedRect = rect;
  [(OfflineRegionSelectorOverlayView *)self bounds];
  if (CGRectIsEmpty(v12))
  {
    self->_needsInitialLayout = 1;
  }

  else
  {
    self->_needsInitialLayout = 0;
    [(OfflineRegionSelectorOverlayView *)self _clampedRectFromRect:p_initialSelectedRect->origin.x, p_initialSelectedRect->origin.y, p_initialSelectedRect->size.width, p_initialSelectedRect->size.height];
    x = v13.origin.x;
    y = v13.origin.y;
    width = v13.size.width;
    height = v13.size.height;
    if (!CGRectEqualToRect(v13, *p_initialSelectedRect))
    {
      x = CGRectGetMidX(*p_initialSelectedRect) - width * 0.5;
      y = CGRectGetMidY(*p_initialSelectedRect) - height * 0.5;
    }

    [(OfflineRegionSelectorOverlayView *)self _setSelectedRect:animatedCopy animated:x, y, width, height];
  }
}

- (CGRect)selectedRectFrame
{
  [(UIView *)self->_outlineView frame];
  result.size.height = v5;
  result.size.width = v4;
  result.origin.y = v3;
  result.origin.x = v2;
  return result;
}

- (void)animateForDownloadWithCompletion:(id)completion
{
  completionCopy = completion;
  [(UIView *)self->_downloadCameraSnapshotView setAlpha:0.0];
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_10069355C;
  v8[3] = &unk_101661B18;
  v8[4] = self;
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_100693574;
  v6[3] = &unk_101655D58;
  v6[4] = self;
  v7 = completionCopy;
  v5 = completionCopy;
  [UIView animateWithDuration:v8 animations:v6 completion:0.3];
}

- (void)_commonInit
{
  v3 = [UIImage imageNamed:@"OfflineRegionSelectorCheckerboard"];
  left = UIEdgeInsetsZero.left;
  bottom = UIEdgeInsetsZero.bottom;
  right = UIEdgeInsetsZero.right;
  v7 = [v3 resizableImageWithCapInsets:0 resizingMode:{UIEdgeInsetsZero.top, left, bottom, right}];

  v8 = [[UIImageView alloc] initWithImage:v7];
  checkerboardImageView = self->_checkerboardImageView;
  self->_checkerboardImageView = v8;

  [(UIImageView *)self->_checkerboardImageView setTranslatesAutoresizingMaskIntoConstraints:0];
  [(UIImageView *)self->_checkerboardImageView setAccessibilityIdentifier:@"Checkerboard"];
  [(OfflineRegionSelectorOverlayView *)self addSubview:self->_checkerboardImageView];
  LODWORD(v10) = 1148846080;
  v11 = [(UIImageView *)self->_checkerboardImageView _maps_constraintsEqualToEdgesOfView:self insets:UIEdgeInsetsZero.top priority:left, bottom, right, v10];
  allConstraints = [v11 allConstraints];
  [NSLayoutConstraint activateConstraints:allConstraints];

  v13 = [UIView alloc];
  y = CGRectZero.origin.y;
  width = CGRectZero.size.width;
  obja = CGRectZero.size.height;
  v16 = [v13 initWithFrame:{CGRectZero.origin.x, y, width}];
  downloadCameraSnapshotView = self->_downloadCameraSnapshotView;
  self->_downloadCameraSnapshotView = v16;

  [(UIView *)self->_downloadCameraSnapshotView setTranslatesAutoresizingMaskIntoConstraints:0];
  [(UIView *)self->_downloadCameraSnapshotView setUserInteractionEnabled:0];
  v18 = [UIColor colorWithWhite:0.0 alpha:0.300000012];
  [(UIView *)self->_downloadCameraSnapshotView setBackgroundColor:v18];

  [(UIView *)self->_downloadCameraSnapshotView setAlpha:0.0];
  [(OfflineRegionSelectorOverlayView *)self addSubview:self->_downloadCameraSnapshotView];
  LODWORD(v19) = 1148846080;
  v20 = [(UIView *)self->_downloadCameraSnapshotView _maps_constraintsEqualToEdgesOfView:self insets:UIEdgeInsetsZero.top priority:left, bottom, right, v19];
  allConstraints2 = [v20 allConstraints];
  [NSLayoutConstraint activateConstraints:allConstraints2];

  v22 = [[UIView alloc] initWithFrame:{CGRectZero.origin.x, y, width, obja}];
  outlineView = self->_outlineView;
  self->_outlineView = v22;

  [(UIView *)self->_outlineView setUserInteractionEnabled:0];
  layer = [(UIView *)self->_outlineView layer];
  [layer setCornerRadius:16.0];

  v25 = +[UIColor blackColor];
  cGColor = [v25 CGColor];
  layer2 = [(UIView *)self->_outlineView layer];
  [layer2 setShadowColor:cGColor];

  layer3 = [(UIView *)self->_outlineView layer];
  [layer3 setShadowRadius:6.0];

  layer4 = [(UIView *)self->_outlineView layer];
  LODWORD(v30) = 1051931443;
  [layer4 setShadowOpacity:v30];

  height = CGSizeZero.height;
  layer5 = [(UIView *)self->_outlineView layer];
  [layer5 setShadowOffset:{CGSizeZero.width, height}];

  v33 = +[UIColor whiteColor];
  cGColor2 = [v33 CGColor];
  layer6 = [(UIView *)self->_outlineView layer];
  [layer6 setBorderColor:cGColor2];

  layer7 = [(UIView *)self->_outlineView layer];
  [layer7 setBorderWidth:3.0];

  [(UIView *)self->_outlineView setAccessibilityIdentifier:@"OfflineRegionOutline"];
  [(OfflineRegionSelectorOverlayView *)self addSubview:self->_outlineView];
  v37 = [[UIView alloc] initWithFrame:{CGRectZero.origin.x, y, width, obja}];
  checkerboardKnockoutMask = self->_checkerboardKnockoutMask;
  self->_checkerboardKnockoutMask = v37;

  layer8 = [(UIView *)self->_checkerboardKnockoutMask layer];
  [layer8 setCornerRadius:16.0];

  v40 = +[UIColor blackColor];
  [(UIView *)self->_checkerboardKnockoutMask setBackgroundColor:v40];

  layer9 = [(UIView *)self->_checkerboardKnockoutMask layer];
  layer10 = [(UIImageView *)self->_checkerboardImageView layer];
  [layer10 setMask:layer9];

  layer11 = [(UIImageView *)self->_checkerboardImageView layer];
  [layer11 setInvertsMask:1];

  v44 = [[UIView alloc] initWithFrame:{CGRectZero.origin.x, y, width, obja}];
  downloadCameraSnapshotKnockoutMask = self->_downloadCameraSnapshotKnockoutMask;
  self->_downloadCameraSnapshotKnockoutMask = v44;

  layer12 = [(UIView *)self->_downloadCameraSnapshotKnockoutMask layer];
  [layer12 setCornerRadius:16.0];

  v47 = +[UIColor blackColor];
  [(UIView *)self->_downloadCameraSnapshotKnockoutMask setBackgroundColor:v47];

  layer13 = [(UIView *)self->_downloadCameraSnapshotKnockoutMask layer];
  layer14 = [(UIView *)self->_downloadCameraSnapshotView layer];
  [layer14 setMask:layer13];

  layer15 = [(UIView *)self->_downloadCameraSnapshotView layer];
  [layer15 setInvertsMask:1];

  v51 = objc_alloc_init(NSMutableDictionary);
  handleViews = self->_handleViews;
  self->_handleViews = v51;

  v70 = 0u;
  v71 = 0u;
  v68 = 0u;
  v69 = 0u;
  obj = +[OfflineRegionSelectorCropHandleView allHandles];
  v53 = [obj countByEnumeratingWithState:&v68 objects:v72 count:16];
  if (v53)
  {
    v54 = v53;
    v55 = *v69;
    do
    {
      for (i = 0; i != v54; i = i + 1)
      {
        if (*v69 != v55)
        {
          objc_enumerationMutation(obj);
        }

        unsignedIntValue = [*(*(&v68 + 1) + 8 * i) unsignedIntValue];
        v58 = [[OfflineRegionSelectorCropHandleView alloc] initWithHandle:unsignedIntValue];
        [(OfflineRegionSelectorCropHandleView *)v58 setTranslatesAutoresizingMaskIntoConstraints:0];
        [(OfflineRegionSelectorCropHandleView *)v58 setAccessibilityIdentifier:@"OfflineRegionSelectorCropHandle"];
        v59 = [(OfflineRegionSelectorOverlayView *)self offlineRegionSelectorCropHandleToString:unsignedIntValue];
        [(OfflineRegionSelectorCropHandleView *)v58 setAccessibilityLabel:v59];

        v60 = [[UIPanGestureRecognizer alloc] initWithTarget:self action:"_handlePanGesture:"];
        [(OfflineRegionSelectorCropHandleView *)v58 addGestureRecognizer:v60];

        [(OfflineRegionSelectorOverlayView *)self addSubview:v58];
        v61 = [(OfflineRegionSelectorCropHandleView *)v58 constraintsForHandlePinnedToView:self->_outlineView];
        [NSLayoutConstraint activateConstraints:v61];

        v62 = self->_handleViews;
        v63 = [NSNumber numberWithUnsignedInteger:unsignedIntValue];
        [(NSMutableDictionary *)v62 setObject:v58 forKeyedSubscript:v63];
      }

      v54 = [obj countByEnumeratingWithState:&v68 objects:v72 count:16];
    }

    while (v54);
  }

  v64 = [[UIImpactFeedbackGenerator alloc] initWithStyle:3];
  hapticGenerator = self->_hapticGenerator;
  self->_hapticGenerator = v64;
}

- (id)offlineRegionSelectorCropHandleToString:(unint64_t)string
{
  if (string > 7)
  {
    return @"Unknown";
  }

  else
  {
    return *(&off_101625C80 + string);
  }
}

- (OfflineRegionSelectorOverlayView)initWithCoder:(id)coder
{
  v6.receiver = self;
  v6.super_class = OfflineRegionSelectorOverlayView;
  v3 = [(OfflineRegionSelectorOverlayView *)&v6 initWithCoder:coder];
  v4 = v3;
  if (v3)
  {
    [(OfflineRegionSelectorOverlayView *)v3 _commonInit];
  }

  return v4;
}

- (OfflineRegionSelectorOverlayView)initWithFrame:(CGRect)frame
{
  v6.receiver = self;
  v6.super_class = OfflineRegionSelectorOverlayView;
  v3 = [(OfflineRegionSelectorOverlayView *)&v6 initWithFrame:frame.origin.x, frame.origin.y, frame.size.width, frame.size.height];
  v4 = v3;
  if (v3)
  {
    [(OfflineRegionSelectorOverlayView *)v3 _commonInit];
  }

  return v4;
}

- (OfflineRegionSelectorOverlayView)init
{
  v5.receiver = self;
  v5.super_class = OfflineRegionSelectorOverlayView;
  v2 = [(OfflineRegionSelectorOverlayView *)&v5 init];
  v3 = v2;
  if (v2)
  {
    [(OfflineRegionSelectorOverlayView *)v2 _commonInit];
  }

  return v3;
}

@end