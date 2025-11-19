@interface _TUISearchFilterHostingPalette
- (_TUISearchFilterHostingPalette)initWithContentView:(id)a3;
@end

@implementation _TUISearchFilterHostingPalette

- (_TUISearchFilterHostingPalette)initWithContentView:(id)a3
{
  v6.receiver = self;
  v6.super_class = _TUISearchFilterHostingPalette;
  v3 = [(_TUISearchFilterHostingPalette *)&v6 initWithContentView:a3];
  v4 = v3;
  if (v3)
  {
    [(_TUISearchFilterHostingPalette *)v3 _setContentViewMarginType:0];
    [(_TUISearchFilterHostingPalette *)v4 _setDisplaysWhenSearchActive:1];
  }

  return v4;
}

@end