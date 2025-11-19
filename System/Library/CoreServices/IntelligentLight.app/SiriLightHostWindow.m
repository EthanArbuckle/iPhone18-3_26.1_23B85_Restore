@interface SiriLightHostWindow
- (_TtC16IntelligentLight19SiriLightHostWindow)initWithCoder:(id)a3;
- (_TtC16IntelligentLight19SiriLightHostWindow)initWithFrame:(CGRect)a3;
- (_TtC16IntelligentLight19SiriLightHostWindow)initWithWindowScene:(id)a3;
@end

@implementation SiriLightHostWindow

- (_TtC16IntelligentLight19SiriLightHostWindow)initWithWindowScene:(id)a3
{
  v5.receiver = self;
  v5.super_class = type metadata accessor for SiriLightHostWindow();
  return [(SiriLightHostWindow *)&v5 initWithWindowScene:a3];
}

- (_TtC16IntelligentLight19SiriLightHostWindow)initWithFrame:(CGRect)a3
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  v8.receiver = self;
  v8.super_class = type metadata accessor for SiriLightHostWindow();
  return [(SiriLightHostWindow *)&v8 initWithFrame:x, y, width, height];
}

- (_TtC16IntelligentLight19SiriLightHostWindow)initWithCoder:(id)a3
{
  v7.receiver = self;
  v7.super_class = type metadata accessor for SiriLightHostWindow();
  v4 = a3;
  v5 = [(SiriLightHostWindow *)&v7 initWithCoder:v4];

  if (v5)
  {
  }

  return v5;
}

@end