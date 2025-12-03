@interface SiriLightHostWindow
- (_TtC16IntelligentLight19SiriLightHostWindow)initWithCoder:(id)coder;
- (_TtC16IntelligentLight19SiriLightHostWindow)initWithFrame:(CGRect)frame;
- (_TtC16IntelligentLight19SiriLightHostWindow)initWithWindowScene:(id)scene;
@end

@implementation SiriLightHostWindow

- (_TtC16IntelligentLight19SiriLightHostWindow)initWithWindowScene:(id)scene
{
  v5.receiver = self;
  v5.super_class = type metadata accessor for SiriLightHostWindow();
  return [(SiriLightHostWindow *)&v5 initWithWindowScene:scene];
}

- (_TtC16IntelligentLight19SiriLightHostWindow)initWithFrame:(CGRect)frame
{
  height = frame.size.height;
  width = frame.size.width;
  y = frame.origin.y;
  x = frame.origin.x;
  v8.receiver = self;
  v8.super_class = type metadata accessor for SiriLightHostWindow();
  return [(SiriLightHostWindow *)&v8 initWithFrame:x, y, width, height];
}

- (_TtC16IntelligentLight19SiriLightHostWindow)initWithCoder:(id)coder
{
  v7.receiver = self;
  v7.super_class = type metadata accessor for SiriLightHostWindow();
  coderCopy = coder;
  v5 = [(SiriLightHostWindow *)&v7 initWithCoder:coderCopy];

  if (v5)
  {
  }

  return v5;
}

@end