@interface AMSUIMessageMarkdownConfiguration
- (AMSUIMessageMarkdownConfiguration)initWithColor:(id)color font:(id)font;
@end

@implementation AMSUIMessageMarkdownConfiguration

- (AMSUIMessageMarkdownConfiguration)initWithColor:(id)color font:(id)font
{
  colorCopy = color;
  fontCopy = font;
  v14.receiver = self;
  v14.super_class = AMSUIMessageMarkdownConfiguration;
  v9 = [(AMSUIMessageMarkdownConfiguration *)&v14 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_color, color);
    objc_storeStrong(&v10->_font, font);
    v11 = objc_alloc_init(MEMORY[0x1E69DB7D0]);
    paragraphStyle = v10->_paragraphStyle;
    v10->_paragraphStyle = v11;
  }

  return v10;
}

@end