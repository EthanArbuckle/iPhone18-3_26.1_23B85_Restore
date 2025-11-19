@interface QLTransitionContext
+ (BOOL)useImageTransitionForPreviewController:(id)a3;
+ (BOOL)useViewTransitionForPreviewController:(id)a3;
+ (BOOL)useZoomTransitionForPreviewController:(id)a3;
+ (id)firstChildNavigationControllerFromViewController:(id)a3;
- (CGPoint)sourceCenter;
- (CGRect)sourceBounds;
- (CGRect)sourceFrame;
- (CGRect)uncroppedFrame;
- (CGSize)previewItemSize;
- (QLTransitionContext)initWithCoder:(id)a3;
- (QLTransitionContext)initWithQLPreviewController:(id)a3 containerView:(id)a4 toViewController:(id)a5;
- (UIView)sourceViewSnapshot;
- (id)sourceViewSnapshotImage;
- (void)_snapshotSourceViewIfNeeded;
- (void)encodeWithCoder:(id)a3;
- (void)prepareContextToSend;
- (void)setUpTransitionSourceView;
@end

@implementation QLTransitionContext

- (void)prepareContextToSend
{
  if (!self->_contextPreparedToSend)
  {
    self->_contextPreparedToSend = 1;
    [(QLTransitionContext *)self _snapshotSourceViewIfNeeded];
  }
}

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  [(QLTransitionContext *)self prepareContextToSend];
  topNavigationOffset = self->_topNavigationOffset;
  *&topNavigationOffset = topNavigationOffset;
  [v4 encodeFloat:@"topNavigationOffset" forKey:topNavigationOffset];
  hostNavigationOffset = self->_hostNavigationOffset;
  *&hostNavigationOffset = hostNavigationOffset;
  [v4 encodeFloat:@"hostNavigationOffset" forKey:hostNavigationOffset];
  [v4 encodeCGRect:@"sourceFrame" forKey:{self->_sourceFrame.origin.x, self->_sourceFrame.origin.y, self->_sourceFrame.size.width, self->_sourceFrame.size.height}];
  [v4 encodeCGRect:@"uncroppedFrame" forKey:{self->_uncroppedFrame.origin.x, self->_uncroppedFrame.origin.y, self->_uncroppedFrame.size.width, self->_uncroppedFrame.size.height}];
  v7 = [(QLTransitionContext *)self sourceViewSnapshotImage];
  [v4 encodeObject:v7 forKey:@"sourceViewSnapshotImage"];

  [(QLTransitionContext *)self previewItemSize];
  [v4 encodeCGSize:@"previewItemSize" forKey:?];
  [v4 encodeBool:-[QLTransitionContext isSourceTransformed](self forKey:{"isSourceTransformed"), @"isSourceTransformed"}];
  [v4 encodeCGRect:@"sourceBounds" forKey:{self->_sourceBounds.origin.x, self->_sourceBounds.origin.y, self->_sourceBounds.size.width, self->_sourceBounds.size.height}];
  [v4 encodeCGPoint:@"sourceCenter" forKey:{self->_sourceCenter.x, self->_sourceCenter.y}];
  v8 = *&self->_sourceTransform.c;
  v9[0] = *&self->_sourceTransform.a;
  v9[1] = v8;
  v9[2] = *&self->_sourceTransform.tx;
  [v4 encodeCGAffineTransform:v9 forKey:@"sourceTransform"];
}

- (QLTransitionContext)initWithCoder:(id)a3
{
  v4 = a3;
  v35.receiver = self;
  v35.super_class = QLTransitionContext;
  v5 = [(QLTransitionContext *)&v35 init];
  if (v5)
  {
    [v4 decodeCGRectForKey:@"sourceFrame"];
    v7 = v6;
    v9 = v8;
    v11 = v10;
    v13 = v12;
    v14 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"sourceViewSnapshotImage"];
    sourceViewSnapshotImage = v5->_sourceViewSnapshotImage;
    v5->_sourceViewSnapshotImage = v14;

    [v4 decodeCGRectForKey:@"uncroppedFrame"];
    v5->_uncroppedFrame.origin.x = v16;
    v5->_uncroppedFrame.origin.y = v17;
    v5->_uncroppedFrame.size.width = v18;
    v5->_uncroppedFrame.size.height = v19;
    v5->_sourceFrame.origin.x = v7;
    v5->_sourceFrame.origin.y = v9;
    v5->_sourceFrame.size.width = v11;
    v5->_sourceFrame.size.height = v13;
    [v4 decodeFloatForKey:@"topNavigationOffset"];
    v5->_topNavigationOffset = v20;
    [v4 decodeFloatForKey:@"hostNavigationOffset"];
    v5->_hostNavigationOffset = v21;
    [v4 decodeCGSizeForKey:@"previewItemSize"];
    v5->_previewItemSize.width = v22;
    v5->_previewItemSize.height = v23;
    v5->_isSourceTransformed = [v4 decodeBoolForKey:@"isSourceTransformed"];
    [v4 decodeCGRectForKey:@"sourceBounds"];
    v5->_sourceBounds.origin.x = v24;
    v5->_sourceBounds.origin.y = v25;
    v5->_sourceBounds.size.width = v26;
    v5->_sourceBounds.size.height = v27;
    [v4 decodeCGPointForKey:@"sourceCenter"];
    v5->_sourceCenter.x = v28;
    v5->_sourceCenter.y = v29;
    if (v4)
    {
      [v4 decodeCGAffineTransformForKey:@"sourceTransform"];
    }

    else
    {
      v33 = 0u;
      v34 = 0u;
      v32 = 0u;
    }

    *&v5->_sourceTransform.a = v32;
    *&v5->_sourceTransform.c = v33;
    *&v5->_sourceTransform.tx = v34;
    v30 = v5;
  }

  return v5;
}

- (UIView)sourceViewSnapshot
{
  sourceViewSnapshot = self->_sourceViewSnapshot;
  if (!sourceViewSnapshot)
  {
    v4 = objc_alloc(MEMORY[0x277D755E8]);
    [(QLTransitionContext *)self sourceFrame];
    v5 = [v4 initWithFrame:?];
    if ([(QLTransitionContext *)self isSourceTransformed])
    {
      [(QLTransitionContext *)self sourceCenter];
      [(UIView *)v5 setCenter:?];
      [(QLTransitionContext *)self sourceBounds];
      [(UIView *)v5 setBounds:?];
      [(QLTransitionContext *)self sourceTransform];
      v9[0] = v9[3];
      v9[1] = v9[4];
      v9[2] = v9[5];
      [(UIView *)v5 setTransform:v9];
    }

    v6 = [(QLTransitionContext *)self sourceViewSnapshotImage];
    [(UIView *)v5 setImage:v6];

    [(UIView *)v5 setContentMode:1];
    v7 = self->_sourceViewSnapshot;
    self->_sourceViewSnapshot = v5;

    sourceViewSnapshot = self->_sourceViewSnapshot;
  }

  return sourceViewSnapshot;
}

- (void)_snapshotSourceViewIfNeeded
{
  if (!self->_sourceViewSnapshotImage)
  {
    v16[5] = v5;
    v16[6] = v4;
    v16[9] = v2;
    v16[10] = v3;
    v7 = [(QLTransitionContext *)self sourceView];

    if (v7)
    {
      v8 = [(QLTransitionContext *)self sourceView];
      [v8 bounds];
      v10 = v9;
      v12 = v11;

      if (v10 != 0.0 && v12 != 0.0)
      {
        v13 = [objc_alloc(MEMORY[0x277D75560]) initWithSize:{v10, v12}];
        v16[0] = MEMORY[0x277D85DD0];
        v16[1] = 3221225472;
        v16[2] = __50__QLTransitionContext__snapshotSourceViewIfNeeded__block_invoke;
        v16[3] = &unk_278B57B18;
        v16[4] = self;
        v14 = [v13 imageWithActions:v16];
        sourceViewSnapshotImage = self->_sourceViewSnapshotImage;
        self->_sourceViewSnapshotImage = v14;
      }
    }
  }
}

void __50__QLTransitionContext__snapshotSourceViewIfNeeded__block_invoke(uint64_t a1, void *a2)
{
  v3 = [a2 CGContext];
  v5 = [*(a1 + 32) sourceView];
  v4 = [v5 layer];
  [v4 renderInContext:v3];
}

- (id)sourceViewSnapshotImage
{
  [(QLTransitionContext *)self _snapshotSourceViewIfNeeded];
  sourceViewSnapshotImage = self->_sourceViewSnapshotImage;

  return sourceViewSnapshotImage;
}

- (QLTransitionContext)initWithQLPreviewController:(id)a3 containerView:(id)a4 toViewController:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  if (!v8)
  {
    goto LABEL_14;
  }

  v43.receiver = self;
  v43.super_class = QLTransitionContext;
  v11 = [(QLTransitionContext *)&v43 init];
  self = v11;
  if (!v11)
  {
    goto LABEL_14;
  }

  objc_storeWeak(&v11->_previewController, v8);
  if (![QLTransitionContext useZoomTransitionForPreviewController:v8])
  {
    goto LABEL_14;
  }

  if (_os_feature_enabled_impl())
  {
    v12 = [v10 view];
    [v12 layoutIfNeeded];
  }

  [(QLTransitionContext *)self setUpTransitionSourceView];
  v13 = [(QLTransitionContext *)self sourceView];
  if (!v13)
  {
    if (self->_sourceViewSnapshotImage)
    {
      goto LABEL_9;
    }

LABEL_14:
    v41 = 0;
    goto LABEL_15;
  }

LABEL_9:
  v14 = [QLTransitionContext firstChildNavigationControllerFromViewController:v10];
  if (v14)
  {
    [(QLTransitionContext *)self setTopNavigationOffset:0.0];
    v15 = [v10 view];
    v16 = [v15 window];
    v17 = [v16 windowScene];
    v18 = [v17 statusBarManager];
    [v18 statusBarFrame];
    v20 = v19;
    [(QLTransitionContext *)self topNavigationOffset];
    [(QLTransitionContext *)self setTopNavigationOffset:v21 + v20];

    v22 = [v14 navigationBar];
    [v22 frame];
    v24 = v23;
    [(QLTransitionContext *)self topNavigationOffset];
    [(QLTransitionContext *)self setTopNavigationOffset:v25 + v24];
  }

  WeakRetained = objc_loadWeakRetained(&self->_previewController);
  v27 = [WeakRetained internalNavigationController];
  v28 = [v27 navigationBar];
  [v28 frame];
  [(QLTransitionContext *)self setHostNavigationOffset:v29];

  [(QLTransitionContext *)self hostNavigationOffset];
  if (v30 > 0.0)
  {
    v31 = [v10 view];
    v32 = [v31 window];
    v33 = [v32 windowScene];
    v34 = [v33 statusBarManager];
    [v34 statusBarFrame];
    v36 = v35;
    [(QLTransitionContext *)self hostNavigationOffset];
    [(QLTransitionContext *)self setHostNavigationOffset:v37 + v36];
  }

  v38 = [v8 internalCurrentPreviewItem];
  [v9 bounds];
  [v38 previewSizeForItemViewControllerSize:{v39, v40}];
  [(QLTransitionContext *)self setPreviewItemSize:?];

  self = self;
  v41 = self;
LABEL_15:

  return v41;
}

- (void)setUpTransitionSourceView
{
  WeakRetained = objc_loadWeakRetained(&self->_previewController);
  v4 = [QLTransitionContext useViewTransitionForPreviewController:WeakRetained];

  v5 = objc_loadWeakRetained(&self->_previewController);
  v6 = [v5 delegate];
  if (v4)
  {
    v7 = objc_opt_respondsToSelector();

    if (v7)
    {
      v8 = *(MEMORY[0x277CBF3A0] + 16);
      *&t1.a = *MEMORY[0x277CBF3A0];
      *&t1.c = v8;
      t2.a = 0.0;
      t2.b = 0.0;
      v9 = objc_loadWeakRetained(&self->_previewController);
      v10 = [v9 delegate];
      v11 = objc_loadWeakRetained(&self->_previewController);
      v12 = [v11 currentPreviewItem];
      v13 = [v10 previewController:v11 transitionViewForPreviewItem:v12 uncroppedSourceFrame:&t1 realSize:&t2];

      [(QLTransitionContext *)self setSourceView:v13];
      c = t1.c;
      d = t1.d;
      if (t1.c != *MEMORY[0x277CBF3A8] || t1.d != *(MEMORY[0x277CBF3A8] + 8))
      {
        a = t1.a;
        b = t1.b;
LABEL_11:
        [(QLTransitionContext *)self setUncroppedFrame:a, b, c, d];
        goto LABEL_14;
      }
    }

    else
    {
      v43 = objc_loadWeakRetained(&self->_previewController);
      v44 = [v43 delegate];
      v45 = objc_opt_respondsToSelector();

      if (v45)
      {
        memset(&t1, 0, 32);
        v46 = objc_loadWeakRetained(&self->_previewController);
        v47 = [v46 delegate];
        v48 = objc_loadWeakRetained(&self->_previewController);
        v49 = [v48 currentPreviewItem];
        v50 = [v47 previewController:v48 transitionViewForPreviewItem:v49 uncroppedSourceFrame:&t1];

        [(QLTransitionContext *)self setSourceView:v50];
        a = t1.a;
        b = t1.b;
        c = t1.c;
        d = t1.d;
        goto LABEL_11;
      }

      v51 = objc_loadWeakRetained(&self->_previewController);
      v52 = [v51 delegate];
      v53 = objc_loadWeakRetained(&self->_previewController);
      v54 = [v53 currentPreviewItem];
      v55 = [v52 previewController:v53 transitionViewForPreviewItem:v54];

      [(QLTransitionContext *)self setSourceView:v55];
    }

    v56 = [(QLTransitionContext *)self sourceView];
    [v56 bounds];
    [(QLTransitionContext *)self setUncroppedFrame:?];

LABEL_14:
    v57 = [(QLTransitionContext *)self sourceView];

    if (v57)
    {
      [(QLTransitionContext *)self setUsingViewForZoomTransition:1];
      v58 = [(QLTransitionContext *)self sourceView];
      v59 = [v58 snapshotViewAfterScreenUpdates:0];
      [(QLTransitionContext *)self setSourceViewSnapshot:v59];

      v60 = [(QLTransitionContext *)self sourceView];
      v61 = [(QLTransitionContext *)self sourceView];
      [v61 bounds];
      [v60 convertRect:0 toView:?];
      [(QLTransitionContext *)self setSourceFrame:?];

      v62 = [(QLTransitionContext *)self sourceView];
      [v62 bounds];
      [(QLTransitionContext *)self setSourceBounds:?];

      v63 = [(QLTransitionContext *)self sourceView];
      v64 = [v63 superview];
      v65 = [(QLTransitionContext *)self sourceView];
      [v65 center];
      [v64 convertPoint:0 toView:?];
      [(QLTransitionContext *)self setSourceCenter:?];

      v66 = [(QLTransitionContext *)self sourceView];
      v67 = v66;
      if (v66)
      {
        [v66 transform];
      }

      else
      {
        memset(&v74, 0, sizeof(v74));
      }

      t1 = v74;
      [(QLTransitionContext *)self setSourceTransform:&t1];

      [(QLTransitionContext *)self sourceTransform];
      v68 = *(MEMORY[0x277CBF2C0] + 16);
      *&t2.a = *MEMORY[0x277CBF2C0];
      *&t2.c = v68;
      *&t2.tx = *(MEMORY[0x277CBF2C0] + 32);
      if (CGAffineTransformEqualToTransform(&t1, &t2))
      {
        v69 = self;
        v70 = 0;
      }

      else
      {
        v69 = self;
        v70 = 1;
      }

      [(QLTransitionContext *)v69 setIsSourceTransformed:v70];
    }

    return;
  }

  v18 = objc_loadWeakRetained(&self->_previewController);
  v19 = [v18 currentPreviewItem];
  v71 = 0;
  [v6 previewController:v18 frameForPreviewItem:v19 inSourceView:&v71];
  v21 = v20;
  v23 = v22;
  v25 = v24;
  v27 = v26;

  v28 = v71;
  if (v28)
  {
    [v28 convertRect:0 toView:{v21, v23, v25, v27}];
    v30 = v29;
    v32 = v31;
    memset(&t1, 0, 32);
    v33 = objc_loadWeakRetained(&self->_previewController);
    v34 = [v33 delegate];
    v35 = objc_loadWeakRetained(&self->_previewController);
    v36 = [v35 currentPreviewItem];
    v37 = [v34 previewController:v35 transitionImageForPreviewItem:v36 contentRect:&t1];

    sourceViewSnapshotImage = self->_sourceViewSnapshotImage;
    self->_sourceViewSnapshotImage = v37;

    v39 = v30 + t1.a;
    v40 = v32 + t1.b;
    v41 = t1.c;
    v42 = t1.d;
    [(QLTransitionContext *)self setUncroppedFrame:*MEMORY[0x277CBF348], *(MEMORY[0x277CBF348] + 8), t1.c, t1.d];
    [(QLTransitionContext *)self setSourceFrame:v39, v40, v41, v42];
    [(QLTransitionContext *)self setUsingViewForZoomTransition:0];
  }
}

+ (BOOL)useZoomTransitionForPreviewController:(id)a3
{
  v3 = a3;
  if (UIAccessibilityIsReduceMotionEnabled() || ([v3 parentIsNavigationController] & 1) != 0)
  {
    v4 = 0;
  }

  else
  {
    v4 = [QLTransitionContext useImageTransitionForPreviewController:v3]|| [QLTransitionContext useViewTransitionForPreviewController:v3];
  }

  return v4;
}

+ (BOOL)useImageTransitionForPreviewController:(id)a3
{
  v3 = a3;
  v4 = [v3 delegate];
  if (objc_opt_respondsToSelector())
  {
    v5 = [v3 delegate];
    v6 = objc_opt_respondsToSelector();
  }

  else
  {
    v6 = 0;
  }

  return v6 & 1;
}

+ (BOOL)useViewTransitionForPreviewController:(id)a3
{
  v3 = a3;
  v4 = [v3 delegate];
  if (objc_opt_respondsToSelector())
  {
    v5 = 1;
  }

  else
  {
    v6 = [v3 delegate];
    if (objc_opt_respondsToSelector())
    {
      v5 = 1;
    }

    else
    {
      v7 = [v3 delegate];
      v5 = objc_opt_respondsToSelector();
    }
  }

  return v5 & 1;
}

+ (id)firstChildNavigationControllerFromViewController:(id)a3
{
  v18 = *MEMORY[0x277D85DE8];
  v3 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v4 = v3;
  }

  else
  {
    v15 = 0u;
    v16 = 0u;
    v13 = 0u;
    v14 = 0u;
    v5 = [v3 childViewControllers];
    v6 = [v5 countByEnumeratingWithState:&v13 objects:v17 count:16];
    if (v6)
    {
      v7 = v6;
      v8 = *v14;
      while (2)
      {
        for (i = 0; i != v7; ++i)
        {
          if (*v14 != v8)
          {
            objc_enumerationMutation(v5);
          }

          v10 = *(*(&v13 + 1) + 8 * i);
          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            v4 = v10;

            goto LABEL_13;
          }
        }

        v7 = [v5 countByEnumeratingWithState:&v13 objects:v17 count:16];
        if (v7)
        {
          continue;
        }

        break;
      }
    }

    v4 = 0;
  }

LABEL_13:

  v11 = *MEMORY[0x277D85DE8];

  return v4;
}

- (CGRect)sourceFrame
{
  objc_copyStruct(v6, &self->_sourceFrame, 32, 1, 0);
  v2 = *v6;
  v3 = *&v6[1];
  v4 = *&v6[2];
  v5 = *&v6[3];
  result.size.height = v5;
  result.size.width = v4;
  result.origin.y = v3;
  result.origin.x = v2;
  return result;
}

- (CGRect)sourceBounds
{
  objc_copyStruct(v6, &self->_sourceBounds, 32, 1, 0);
  v2 = *v6;
  v3 = *&v6[1];
  v4 = *&v6[2];
  v5 = *&v6[3];
  result.size.height = v5;
  result.size.width = v4;
  result.origin.y = v3;
  result.origin.x = v2;
  return result;
}

- (CGPoint)sourceCenter
{
  objc_copyStruct(v4, &self->_sourceCenter, 16, 1, 0);
  v2 = *v4;
  v3 = *&v4[1];
  result.y = v3;
  result.x = v2;
  return result;
}

- (CGRect)uncroppedFrame
{
  objc_copyStruct(v6, &self->_uncroppedFrame, 32, 1, 0);
  v2 = *v6;
  v3 = *&v6[1];
  v4 = *&v6[2];
  v5 = *&v6[3];
  result.size.height = v5;
  result.size.width = v4;
  result.origin.y = v3;
  result.origin.x = v2;
  return result;
}

- (CGSize)previewItemSize
{
  objc_copyStruct(v4, &self->_previewItemSize, 16, 1, 0);
  v2 = *v4;
  v3 = *&v4[1];
  result.height = v3;
  result.width = v2;
  return result;
}

@end