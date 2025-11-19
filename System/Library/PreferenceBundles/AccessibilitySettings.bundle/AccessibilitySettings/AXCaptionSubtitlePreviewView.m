@interface AXCaptionSubtitlePreviewView
- (void)dealloc;
- (void)didMoveToWindow;
- (void)update;
@end

@implementation AXCaptionSubtitlePreviewView

- (void)didMoveToWindow
{
  v4.receiver = self;
  v4.super_class = AXCaptionSubtitlePreviewView;
  [(AXCaptionSubtitlePreviewView *)&v4 didMoveToWindow];
  v3 = [(AXCaptionSubtitlePreviewView *)self image];

  if (!v3)
  {
    [(AXCaptionSubtitlePreviewView *)self update];
  }
}

- (void)dealloc
{
  renderer = self->_renderer;
  if (renderer)
  {
    CFRelease(renderer);
    self->_renderer = 0;
  }

  v4.receiver = self;
  v4.super_class = AXCaptionSubtitlePreviewView;
  [(AXCaptionSubtitlePreviewView *)&v4 dealloc];
}

- (void)update
{
  v3 = [(AXCaptionSubtitlePreviewView *)self window];

  if (v3)
  {
    v4 = +[UIScreen mainScreen];
    [v4 scale];
    v6 = v5;

    if (!self->_renderer)
    {
      FigCoreTextSubtitleRendererCreate();
    }

    v7 = +[UIGraphicsImageRendererFormat preferredFormat];
    v8 = [v7 copy];

    [v8 setScale:v6];
    v9 = [UIGraphicsImageRenderer alloc];
    [(AXCaptionSubtitlePreviewView *)self frame];
    v12 = [v9 initWithSize:v8 format:{v10, v11}];
    v14[0] = _NSConcreteStackBlock;
    v14[1] = 3221225472;
    v14[2] = __38__AXCaptionSubtitlePreviewView_update__block_invoke;
    v14[3] = &unk_258FC8;
    v14[4] = self;
    v13 = [v12 imageWithActions:v14];
    [(AXCaptionSubtitlePreviewView *)self setImage:v13];
  }
}

void __38__AXCaptionSubtitlePreviewView_update__block_invoke(uint64_t a1)
{
  UIGraphicsGetCurrentContext();
  [*(a1 + 32) bounds];
  v3 = +[NSMutableDictionary dictionary];
  [v3 setObject:&off_27B568 forKey:kCMTextMarkupAttribute_TextPositionPercentageRelativeToWritingDirection];
  v2 = [*(a1 + 32) text];
  FigSubtitleRendererDrawSubtitleTextDirect();
}

@end