@interface THWViewportInfo
- (CGSize)canvasSize;
- (CGSize)frameViewSize;
- (THWViewportInfo)initWithContext:(id)context geometry:(id)geometry;
- (UIEdgeInsets)frameCanvasContentInsets;
- (void)dealloc;
- (void)setBackgroundShape:(id)shape;
- (void)setStroke:(id)stroke;
- (void)updateBackgroundColor:(id)color;
@end

@implementation THWViewportInfo

- (THWViewportInfo)initWithContext:(id)context geometry:(id)geometry
{
  v7.receiver = self;
  v7.super_class = THWViewportInfo;
  v4 = [(THWViewportInfo *)&v7 initWithContext:context geometry:geometry];
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

- (void)setBackgroundShape:(id)shape
{
  shapeCopy = shape;

  self->_backgroundShape = shape;
  if (shape)
  {
    objc_opt_class();
    [-[TSDShapeInfo style](self->_backgroundShape "style")];
    v6 = TSUDynamicCast();
    if (!v6)
    {
      [+[TSUAssertionHandler currentHandler](TSUAssertionHandler "currentHandler")];
    }

    color = [v6 color];
    popoverTheme = self->_popoverTheme;

    [(TSWPopoverTheme *)popoverTheme setPopoverBackgroundColor:color];
  }
}

- (void)setStroke:(id)stroke
{
  strokeCopy = stroke;

  self->_stroke = stroke;
  popoverTheme = self->_popoverTheme;

  [(TSWPopoverTheme *)popoverTheme setPopoverStroke:stroke];
}

- (void)updateBackgroundColor:(id)color
{
  if (color)
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
  geometry = [(TSDShapeInfo *)[(THWViewportInfo *)self backgroundShape] geometry];

  [geometry size];
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