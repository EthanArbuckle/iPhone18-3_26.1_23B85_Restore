@interface THWViewportInfo
- (CGSize)canvasSize;
- (CGSize)frameViewSize;
- (THWViewportInfo)initWithContext:(id)a3 geometry:(id)a4;
- (UIEdgeInsets)frameCanvasContentInsets;
- (void)dealloc;
- (void)setBackgroundShape:(id)a3;
- (void)setStroke:(id)a3;
- (void)updateBackgroundColor:(id)a3;
@end

@implementation THWViewportInfo

- (THWViewportInfo)initWithContext:(id)a3 geometry:(id)a4
{
  v7.receiver = self;
  v7.super_class = THWViewportInfo;
  v4 = [(THWViewportInfo *)&v7 initWithContext:a3 geometry:a4];
  if (v4)
  {
    v5 = objc_alloc_init(TSWPopoverTheme);
    v4->_popoverTheme = v5;
    [(TSWPopoverTheme *)v5 setPopoverHasGradientBackground:1];
    [(TSWPopoverTheme *)v4->_popoverTheme setPopoverContentInsets:0.0, 0.0, 0.0, 0.0];
    [(TSWPopoverTheme *)v4->_popoverTheme setPopoverFadeInsets:8.0, 0.0, 8.0, 0.0];
  }

  return v4;
}

- (void)dealloc
{
  self->_backgroundShape = 0;

  self->_canvasInfos = 0;
  self->_stroke = 0;

  self->_popoverTheme = 0;
  self->_progressKitID = 0;

  self->_progressKitSectionID = 0;
  v3.receiver = self;
  v3.super_class = THWViewportInfo;
  [(THWViewportInfo *)&v3 dealloc];
}

- (void)setBackgroundShape:(id)a3
{
  v5 = a3;

  self->_backgroundShape = a3;
  if (a3)
  {
    objc_opt_class();
    [-[TSDShapeInfo style](self->_backgroundShape "style")];
    v6 = TSUDynamicCast();
    if (!v6)
    {
      [+[TSUAssertionHandler currentHandler](TSUAssertionHandler "currentHandler")];
    }

    v7 = [v6 color];
    popoverTheme = self->_popoverTheme;

    [(TSWPopoverTheme *)popoverTheme setPopoverBackgroundColor:v7];
  }
}

- (void)setStroke:(id)a3
{
  v5 = a3;

  self->_stroke = a3;
  popoverTheme = self->_popoverTheme;

  [(TSWPopoverTheme *)popoverTheme setPopoverStroke:a3];
}

- (void)updateBackgroundColor:(id)a3
{
  if (a3)
  {
LABEL_2:
    popoverTheme = self->_popoverTheme;

    [(TSWPopoverTheme *)popoverTheme setPopoverBackgroundColor:?];
    return;
  }

  if (!self->_backgroundShape)
  {
    +[TSUColor lightGrayColor];
    goto LABEL_2;
  }

  [(THWViewportInfo *)self setBackgroundShape:?];
}

- (UIEdgeInsets)frameCanvasContentInsets
{
  [(THWViewportInfo *)self contentPadding];
  v4 = v3;
  [(THWViewportInfo *)self contentPadding];
  v6 = v5;
  [(THWViewportInfo *)self contentPadding];
  v8 = v7;
  [(THWViewportInfo *)self contentPadding];
  v10 = v9;
  v11 = v4;
  v12 = v6;
  v13 = v8;
  result.right = v10;
  result.bottom = v13;
  result.left = v12;
  result.top = v11;
  return result;
}

- (CGSize)frameViewSize
{
  v2 = [(TSDShapeInfo *)[(THWViewportInfo *)self backgroundShape] geometry];

  [v2 size];
  result.height = v4;
  result.width = v3;
  return result;
}

- (CGSize)canvasSize
{
  width = self->canvasSize.width;
  height = self->canvasSize.height;
  result.height = height;
  result.width = width;
  return result;
}

@end