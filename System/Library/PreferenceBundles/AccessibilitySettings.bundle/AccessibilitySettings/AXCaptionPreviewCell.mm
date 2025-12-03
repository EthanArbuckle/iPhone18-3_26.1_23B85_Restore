@interface AXCaptionPreviewCell
+ (CGSize)previewSize;
- (AXCaptionPreviewCell)initWithStyle:(int64_t)style reuseIdentifier:(id)identifier;
- (id)hitTest:(CGPoint)test withEvent:(id)event;
- (void)dealloc;
- (void)didMoveToSuperview;
- (void)layoutSubviews;
- (void)prepareForReuse;
@end

@implementation AXCaptionPreviewCell

- (void)didMoveToSuperview
{
  superview = [(AXCaptionPreviewCell *)self superview];

  if (superview)
  {
    captionPreviewView = self->_captionPreviewView;

    [(AXCaptionPreviewView *)captionPreviewView layoutSubviews];
  }
}

+ (CGSize)previewSize
{
  v2 = +[UIDevice currentDevice];
  v3 = [v2 userInterfaceIdiom] == &dword_0 + 1;

  v4 = dbl_1DAA20[v3];
  v5 = 0.0;
  result.height = v4;
  result.width = v5;
  return result;
}

- (AXCaptionPreviewCell)initWithStyle:(int64_t)style reuseIdentifier:(id)identifier
{
  v16.receiver = self;
  v16.super_class = AXCaptionPreviewCell;
  v4 = [(AXCaptionPreviewCell *)&v16 initWithStyle:style reuseIdentifier:identifier];
  if (v4)
  {
    v5 = [AXCaptionPreviewView alloc];
    y = CGRectZero.origin.y;
    width = CGRectZero.size.width;
    height = CGRectZero.size.height;
    height = [(AXCaptionPreviewView *)v5 initWithFrame:CGRectZero.origin.x, y, width, height];
    captionPreviewView = v4->_captionPreviewView;
    v4->_captionPreviewView = height;

    v11 = +[UIColor whiteColor];
    [(AXCaptionPreviewView *)v4->_captionPreviewView setBackgroundColor:v11];

    v12 = [[UIView alloc] initWithFrame:{CGRectZero.origin.x, y, width, height}];
    [v12 addSubview:v4->_captionPreviewView];
    [v12 setUserInteractionEnabled:1];
    [(AXCaptionPreviewView *)v4->_captionPreviewView frame];
    [(AXCaptionPreviewView *)v4->_captionPreviewView setOriginalFrame:?];
    [(AXCaptionPreviewCell *)v4 setBackgroundView:v12];
    v13 = +[UIColor clearColor];
    [(AXCloudShadowView *)v4->_shadowView setBackgroundColor:v13];

    [(AXCloudShadowView *)v4->_shadowView setUserInteractionEnabled:0];
    [(AXCaptionPreviewCell *)v4 addSubview:v4->_shadowView];
    v14 = v4;
  }

  return v4;
}

- (void)prepareForReuse
{
  v5.receiver = self;
  v5.super_class = AXCaptionPreviewCell;
  [(AXCaptionPreviewCell *)&v5 prepareForReuse];
  v3 = +[UIColor whiteColor];
  [(AXCaptionPreviewView *)self->_captionPreviewView setBackgroundColor:v3];

  [(AXCaptionPreviewView *)self->_captionPreviewView frame];
  [(AXCaptionPreviewView *)self->_captionPreviewView setOriginalFrame:?];
  backgroundView = [(AXCaptionPreviewCell *)self backgroundView];
  [backgroundView setUserInteractionEnabled:1];

  [(AXCloudShadowView *)self->_shadowView setUserInteractionEnabled:0];
}

- (id)hitTest:(CGPoint)test withEvent:(id)event
{
  y = test.y;
  x = test.x;
  eventCopy = event;
  if (([(AXCaptionPreviewCell *)self isHidden]& 1) != 0)
  {
    v8 = 0;
  }

  else
  {
    [(AXCaptionPreviewCell *)self convertPoint:self->_captionPreviewView toView:x, y];
    v10 = v9;
    v12 = v11;
    if ([(AXCaptionPreviewView *)self->_captionPreviewView pointInside:eventCopy withEvent:?])
    {
      v13 = [(AXCaptionPreviewView *)self->_captionPreviewView hitTest:eventCopy withEvent:v10, v12];
    }

    else
    {
      v15.receiver = self;
      v15.super_class = AXCaptionPreviewCell;
      v13 = [(AXCaptionPreviewCell *)&v15 hitTest:eventCopy withEvent:x, y];
    }

    v8 = v13;
  }

  return v8;
}

- (void)dealloc
{
  [(AXCaptionPreviewView *)self->_captionPreviewView stopBackgroundAnimation];
  v3 = +[NSNotificationCenter defaultCenter];
  [v3 removeObserver:self];

  v4.receiver = self;
  v4.super_class = AXCaptionPreviewCell;
  [(AXCaptionPreviewCell *)&v4 dealloc];
}

- (void)layoutSubviews
{
  v16.receiver = self;
  v16.super_class = AXCaptionPreviewCell;
  [(AXCaptionPreviewCell *)&v16 layoutSubviews];
  [(AXCaptionPreviewCell *)self bounds];
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v10 = v9;
  contentView = [(AXCaptionPreviewCell *)self contentView];
  [contentView setBounds:{v4, v6, v8, v10}];

  contentView2 = [(AXCaptionPreviewCell *)self contentView];
  superview = [contentView2 superview];
  [superview setBounds:{v4, v6, v8, v10}];

  [(AXCaptionPreviewCell *)self bounds];
  [(AXCaptionPreviewView *)self->_captionPreviewView frame];
  [(AXCaptionPreviewView *)self->_captionPreviewView setFrame:?];
  v14 = AXTableViewForCell(self);
  v15 = v14;
  if (v14)
  {
    [v14 contentOffset];
  }

  [(AXCaptionPreviewView *)self->_captionPreviewView visibleFrame];
  [(AXCloudShadowView *)self->_shadowView setFrame:?];
  [(AXCloudShadowView *)self->_shadowView layoutSubviews];
}

@end