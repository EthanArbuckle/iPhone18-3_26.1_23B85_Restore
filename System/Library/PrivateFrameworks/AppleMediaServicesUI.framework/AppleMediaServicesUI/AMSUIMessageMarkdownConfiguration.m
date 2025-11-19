@interface AMSUIMessageMarkdownConfiguration
- (AMSUIMessageMarkdownConfiguration)initWithColor:(id)a3 font:(id)a4;
@end

@implementation AMSUIMessageMarkdownConfiguration

- (AMSUIMessageMarkdownConfiguration)initWithColor:(id)a3 font:(id)a4
{
  v7 = a3;
  v8 = a4;
  v14.receiver = self;
  v14.super_class = AMSUIMessageMarkdownConfiguration;
  v9 = [(AMSUIMessageMarkdownConfiguration *)&v14 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_color, a3);
    objc_storeStrong(&v10->_font, a4);
    v11 = objc_alloc_init(MEMORY[0x1E69DB7D0]);
    paragraphStyle = v10->_paragraphStyle;
    v10->_paragraphStyle = v11;
  }

  return v10;
}

@end