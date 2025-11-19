@interface AVPictureInPictureSampleBufferDisplayLayerHostView
- (AVPictureInPictureSampleBufferDisplayLayerHostView)initWithFrame:(CGRect)a3;
- (CGRect)lastKnownBounds;
- (CGRect)lastKnownFrame;
- (CGSize)contentDimensions;
- (CGSize)imageQueueSize;
- (double)beginTime;
- (unsigned)contextId;
- (void)_updateGeometryIfNeeded;
- (void)layoutSubviews;
- (void)setBeginTime:(double)a3;
- (void)setContextId:(unsigned int)a3;
- (void)setFrame:(CGRect)a3 contentDimensions:(CGSize)a4 imageQueueSize:(CGSize)a5;
@end

@implementation AVPictureInPictureSampleBufferDisplayLayerHostView

- (CGRect)lastKnownBounds
{
  x = self->_lastKnownBounds.origin.x;
  y = self->_lastKnownBounds.origin.y;
  width = self->_lastKnownBounds.size.width;
  height = self->_lastKnownBounds.size.height;
  result.size.height = height;
  result.size.width = width;
  result.origin.y = y;
  result.origin.x = x;
  return result;
}

- (CGRect)lastKnownFrame
{
  x = self->_lastKnownFrame.origin.x;
  y = self->_lastKnownFrame.origin.y;
  width = self->_lastKnownFrame.size.width;
  height = self->_lastKnownFrame.size.height;
  result.size.height = height;
  result.size.width = width;
  result.origin.y = y;
  result.origin.x = x;
  return result;
}

- (CGSize)contentDimensions
{
  width = self->_contentDimensions.width;
  height = self->_contentDimensions.height;
  result.height = height;
  result.width = width;
  return result;
}

- (CGSize)imageQueueSize
{
  width = self->_imageQueueSize.width;
  height = self->_imageQueueSize.height;
  result.height = height;
  result.width = width;
  return result;
}

- (void)_updateGeometryIfNeeded
{
  if ([(AVPictureInPictureSampleBufferDisplayLayerHostView *)self needsGeometryUpdate]&& ![(AVPictureInPictureSampleBufferDisplayLayerHostView *)self isDeferringGeometryUpdates])
  {
    [(AVPictureInPictureSampleBufferDisplayLayerHostView *)self setNeedsGeometryUpdate:0];
    v3 = [MEMORY[0x1E69DC888] blackColor];
    v4 = [(AVPictureInPictureSampleBufferDisplayLayerHostView *)self hostView];
    [v4 setBackgroundColor:v3];

    [(AVPictureInPictureSampleBufferDisplayLayerHostView *)self bounds];
    x = v61.origin.x;
    y = v61.origin.y;
    width = v61.size.width;
    height = v61.size.height;
    if (CGRectIsInfinite(v61) || (v62.origin.x = x, v62.origin.y = y, v62.size.width = width, v62.size.height = height, CGRectIsNull(v62)) || (([(AVPictureInPictureSampleBufferDisplayLayerHostView *)self bounds], ((v21 & 0x7FFFFFFFFFFFFFFFuLL) - 0x10000000000000) >> 53 < 0x3FF) ? (v22 = v21 < 0) : (v22 = 1), v22 ? (v23 = (v21 - 1) >= 0xFFFFFFFFFFFFFLL) : (v23 = 0), v23 ? (v24 = 0) : (v24 = 1), v20 >= 0 ? (v25 = ((v20 & 0x7FFFFFFFFFFFFFFFuLL) - 0x10000000000000) >> 53 > 0x3FE) : (v25 = 1), v25 ? (v26 = (v20 - 1) > 0xFFFFFFFFFFFFELL) : (v26 = 0), v26 || !v24 || (([(AVPictureInPictureSampleBufferDisplayLayerHostView *)self contentDimensions], ((v28 & 0x7FFFFFFFFFFFFFFFuLL) - 0x10000000000000) >> 53 < 0x3FF) ? (v29 = v28 < 0) : (v29 = 1), v29 ? (v30 = (v28 - 1) >= 0xFFFFFFFFFFFFFLL) : (v30 = 0), v30 ? (v31 = 0) : (v31 = 1), v27 >= 0 ? (v32 = ((v27 & 0x7FFFFFFFFFFFFFFFuLL) - 0x10000000000000) >> 53 > 0x3FE) : (v32 = 1), v32 ? (v33 = (v27 - 1) > 0xFFFFFFFFFFFFELL) : (v33 = 0), v33 || !v31 || (([(AVPictureInPictureSampleBufferDisplayLayerHostView *)self imageQueueSize], ((v35 & 0x7FFFFFFFFFFFFFFFuLL) - 0x10000000000000) >> 53 < 0x3FF) ? (v36 = v35 < 0) : (v36 = 1), v36 ? (v37 = (v35 - 1) >= 0xFFFFFFFFFFFFFLL) : (v37 = 0), v37 ? (v38 = 0) : (v38 = 1), v34 >= 0 ? (v39 = ((v34 & 0x7FFFFFFFFFFFFFFFuLL) - 0x10000000000000) >> 53 > 0x3FE) : (v39 = 1), v39 ? (v40 = (v34 - 1) > 0xFFFFFFFFFFFFELL) : (v40 = 0), v40 || !v38))))
    {
      [(AVPictureInPictureSampleBufferDisplayLayerHostView *)self bounds];
      v10 = v9;
      v12 = v11;
      v14 = v13;
      v16 = v15;
      v17 = [(AVPictureInPictureSampleBufferDisplayLayerHostView *)self hostView];
      [v17 setFrame:{v10, v12, v14, v16}];

      v18 = [(AVPictureInPictureSampleBufferDisplayLayerHostView *)self hostView];
      v19 = *(MEMORY[0x1E695EFD0] + 16);
      *&v59.a = *MEMORY[0x1E695EFD0];
      *&v59.c = v19;
      *&v59.tx = *(MEMORY[0x1E695EFD0] + 32);
      [v18 setTransform:&v59];
    }

    else
    {
      v41 = [(AVPictureInPictureSampleBufferDisplayLayerHostView *)self hostView];
      v42 = *(MEMORY[0x1E695EFD0] + 16);
      *&v59.a = *MEMORY[0x1E695EFD0];
      *&v59.c = v42;
      *&v59.tx = *(MEMORY[0x1E695EFD0] + 32);
      [v41 setTransform:&v59];

      [(AVPictureInPictureSampleBufferDisplayLayerHostView *)self contentDimensions];
      v68.size.width = 1600.0;
      v68.origin.x = 0.0;
      v68.origin.y = 0.0;
      v68.size.height = 1600.0;
      v63 = AVMakeRectWithAspectRatioInsideRect(v60, v68);
      v43 = v63.origin.x;
      v44 = v63.origin.y;
      v45 = v63.size.width;
      v46 = v63.size.height;
      [(AVPictureInPictureSampleBufferDisplayLayerHostView *)self bounds];
      v47 = CGRectGetWidth(v64);
      v65.origin.x = v43;
      v65.origin.y = v44;
      v65.size.width = v45;
      v65.size.height = v46;
      v48 = v47 / CGRectGetWidth(v65);
      [(AVPictureInPictureSampleBufferDisplayLayerHostView *)self bounds];
      v49 = CGRectGetHeight(v66);
      v67.origin.x = v43;
      v67.origin.y = v44;
      v67.size.width = v45;
      v67.size.height = v46;
      v50 = v49 / CGRectGetHeight(v67);
      memset(&v59.c, 0, 32);
      if (v48 >= v50)
      {
        v50 = v48;
      }

      *&v59.a = 0uLL;
      CGAffineTransformMakeScale(&v59, v50, v50);
      v51 = [(AVPictureInPictureSampleBufferDisplayLayerHostView *)self hostView];
      [v51 setFrame:{v43, v44, v45, v46}];

      v58 = v59;
      v52 = [(AVPictureInPictureSampleBufferDisplayLayerHostView *)self hostView];
      v57 = v58;
      [v52 setTransform:&v57];

      [(AVPictureInPictureSampleBufferDisplayLayerHostView *)self bounds];
      UIRectGetCenter();
      v54 = v53;
      v56 = v55;
      v18 = [(AVPictureInPictureSampleBufferDisplayLayerHostView *)self hostView];
      [v18 setCenter:{v54, v56}];
    }
  }
}

- (void)layoutSubviews
{
  v27.receiver = self;
  v27.super_class = AVPictureInPictureSampleBufferDisplayLayerHostView;
  [(AVPictureInPictureSampleBufferDisplayLayerHostView *)&v27 layoutSubviews];
  [(AVPictureInPictureSampleBufferDisplayLayerHostView *)self lastKnownBounds];
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v10 = v9;
  [(AVPictureInPictureSampleBufferDisplayLayerHostView *)self bounds];
  v30.origin.x = v11;
  v30.origin.y = v12;
  v30.size.width = v13;
  v30.size.height = v14;
  v28.origin.x = v4;
  v28.origin.y = v6;
  v28.size.width = v8;
  v28.size.height = v10;
  if (!CGRectEqualToRect(v28, v30) || ([(AVPictureInPictureSampleBufferDisplayLayerHostView *)self lastKnownFrame], v16 = v15, v18 = v17, v20 = v19, v22 = v21, [(AVPictureInPictureSampleBufferDisplayLayerHostView *)self frame], v31.origin.x = v23, v31.origin.y = v24, v31.size.width = v25, v31.size.height = v26, v29.origin.x = v16, v29.origin.y = v18, v29.size.width = v20, v29.size.height = v22, !CGRectEqualToRect(v29, v31)))
  {
    [(AVPictureInPictureSampleBufferDisplayLayerHostView *)self setNeedsGeometryUpdate:1];
    [(AVPictureInPictureSampleBufferDisplayLayerHostView *)self frame];
    [(AVPictureInPictureSampleBufferDisplayLayerHostView *)self setLastKnownFrame:?];
    [(AVPictureInPictureSampleBufferDisplayLayerHostView *)self bounds];
    [(AVPictureInPictureSampleBufferDisplayLayerHostView *)self setLastKnownBounds:?];
    [(AVPictureInPictureSampleBufferDisplayLayerHostView *)self _updateGeometryIfNeeded];
  }
}

- (void)setFrame:(CGRect)a3 contentDimensions:(CGSize)a4 imageQueueSize:(CGSize)a5
{
  height = a5.height;
  width = a5.width;
  v7 = a4.height;
  v8 = a4.width;
  v9 = a3.size.height;
  v10 = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  [(AVPictureInPictureSampleBufferDisplayLayerHostView *)self imageQueueSize];
  v16 = height == v15 && width == v14;
  [(AVPictureInPictureSampleBufferDisplayLayerHostView *)self setDeferringGeometryUpdates:1];
  [(AVPictureInPictureSampleBufferDisplayLayerHostView *)self contentDimensions];
  v19 = v18 == v8 && v17 == v7;
  if (!v19 || ([(AVPictureInPictureSampleBufferDisplayLayerHostView *)self imageQueueSize], v21 != width) || v20 != height)
  {
    [(AVPictureInPictureSampleBufferDisplayLayerHostView *)self setNeedsGeometryUpdate:1];
  }

  [(AVPictureInPictureSampleBufferDisplayLayerHostView *)self setContentDimensions:v8, v7];
  [(AVPictureInPictureSampleBufferDisplayLayerHostView *)self setImageQueueSize:width, height];
  [(AVPictureInPictureSampleBufferDisplayLayerHostView *)self setFrame:x, y, v10, v9];
  [(AVPictureInPictureSampleBufferDisplayLayerHostView *)self setDeferringGeometryUpdates:0];
  if (v16)
  {

    [(AVPictureInPictureSampleBufferDisplayLayerHostView *)self _updateGeometryIfNeeded];
  }

  else
  {
    v22[0] = MEMORY[0x1E69E9820];
    v22[1] = 3221225472;
    v22[2] = __96__AVPictureInPictureSampleBufferDisplayLayerHostView_setFrame_contentDimensions_imageQueueSize___block_invoke;
    v22[3] = &unk_1E720A090;
    v22[4] = self;
    [MEMORY[0x1E69DD250] performWithoutAnimation:v22];
  }
}

- (void)setBeginTime:(double)a3
{
  v5 = [(AVPictureInPictureSampleBufferDisplayLayerHostView *)self hostView];
  v4 = [v5 layer];
  [v4 setBeginTime:a3];
}

- (double)beginTime
{
  v2 = [(AVPictureInPictureSampleBufferDisplayLayerHostView *)self hostView];
  v3 = [v2 layer];
  [v3 beginTime];
  v5 = v4;

  return v5;
}

- (void)setContextId:(unsigned int)a3
{
  v3 = *&a3;
  v5 = [(AVPictureInPictureSampleBufferDisplayLayerHostView *)self hostView];
  v4 = [v5 layer];
  [v4 setContextId:v3];
}

- (unsigned)contextId
{
  v2 = [(AVPictureInPictureSampleBufferDisplayLayerHostView *)self hostView];
  v3 = [v2 layer];
  v4 = [v3 contextId];

  return v4;
}

- (AVPictureInPictureSampleBufferDisplayLayerHostView)initWithFrame:(CGRect)a3
{
  v8.receiver = self;
  v8.super_class = AVPictureInPictureSampleBufferDisplayLayerHostView;
  v3 = [(AVPictureInPictureSampleBufferDisplayLayerHostView *)&v8 initWithFrame:a3.origin.x, a3.origin.y, a3.size.width, a3.size.height];
  if (v3)
  {
    v4 = [AVPictureInPictureCALayerHostView alloc];
    [(AVPictureInPictureSampleBufferDisplayLayerHostView *)v3 bounds];
    v5 = [(AVPictureInPictureCALayerHostView *)v4 initWithFrame:?];
    hostView = v3->_hostView;
    v3->_hostView = v5;

    [(AVPictureInPictureCALayerHostView *)v3->_hostView setTranslatesAutoresizingMaskIntoConstraints:1];
    [(AVPictureInPictureCALayerHostView *)v3->_hostView setAutoresizingMask:0];
    [(AVPictureInPictureSampleBufferDisplayLayerHostView *)v3 addSubview:v3->_hostView];
  }

  return v3;
}

@end