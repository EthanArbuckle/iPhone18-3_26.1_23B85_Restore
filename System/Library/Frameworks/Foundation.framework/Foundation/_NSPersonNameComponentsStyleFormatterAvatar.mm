@interface _NSPersonNameComponentsStyleFormatterAvatar
- (id)fallbackStyleFormatter;
@end

@implementation _NSPersonNameComponentsStyleFormatterAvatar

- (id)fallbackStyleFormatter
{
  ordering = [(_NSPersonNameComponentsStyleFormatter *)self ordering];
  v4 = off_1E69EED60;
  if (ordering != 1)
  {
    v4 = off_1E69EED70;
  }

  v5 = [objc_alloc(*v4) initWithMasterFormatter:{-[_NSPersonNameComponentsStyleFormatter masterFormatter](self, "masterFormatter")}];

  return v5;
}

@end