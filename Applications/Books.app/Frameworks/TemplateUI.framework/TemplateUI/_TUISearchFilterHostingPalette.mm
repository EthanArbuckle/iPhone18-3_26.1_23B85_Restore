@interface _TUISearchFilterHostingPalette
- (_TUISearchFilterHostingPalette)initWithContentView:(id)view;
@end

@implementation _TUISearchFilterHostingPalette

- (_TUISearchFilterHostingPalette)initWithContentView:(id)view
{
  v6.receiver = self;
  v6.super_class = _TUISearchFilterHostingPalette;
  v3 = [(_TUISearchFilterHostingPalette *)&v6 initWithContentView:view];
  v4 = v3;
  if (v3)
  {
    [(_TUISearchFilterHostingPalette *)v3 _setContentViewMarginType:0];
    [(_TUISearchFilterHostingPalette *)v4 _setDisplaysWhenSearchActive:1];
  }

  return v4;
}

@end