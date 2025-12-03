@interface TUIWPStorage
- (id)fontMetricsAtCharacterIndex:(unint64_t)index;
@end

@implementation TUIWPStorage

- (id)fontMetricsAtCharacterIndex:(unint64_t)index
{
  v5 = objc_opt_new();
  v6 = [(TUIWPStorage *)self characterStyleAtCharIndex:index effectiveRange:0];
  v7 = [(TUIWPStorage *)self paragraphStyleAtParIndex:[(TUIWPStorage *)self paragraphIndexAtCharIndex:index] effectiveRange:0];
  FontForStyle = TSWPFastCreateFontForStyle();
  [v5 setPointSize:CTFontGetSize(FontForStyle)];
  [v5 setCapHeight:CTFontGetCapHeight(FontForStyle)];
  [v5 setAscent:CTFontGetAscent(FontForStyle)];
  [v5 setDescent:CTFontGetDescent(FontForStyle)];
  CFRelease(FontForStyle);

  return v5;
}

@end