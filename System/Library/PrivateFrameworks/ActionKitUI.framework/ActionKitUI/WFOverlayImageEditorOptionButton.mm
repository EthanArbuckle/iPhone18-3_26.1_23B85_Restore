@interface WFOverlayImageEditorOptionButton
- (CGRect)titleRectForContentRect:(CGRect)rect;
- (CGSize)intrinsicContentSize;
- (WFOverlayImageEditorOptionButton)initWithFrame:(CGRect)frame;
@end

@implementation WFOverlayImageEditorOptionButton

- (CGSize)intrinsicContentSize
{
  v21[1] = *MEMORY[0x277D85DE8];
  currentImage = [(WFOverlayImageEditorOptionButton *)self currentImage];
  [currentImage size];
  v5 = v4;
  v7 = v6;

  currentTitle = [(WFOverlayImageEditorOptionButton *)self currentTitle];
  v20 = *MEMORY[0x277D740A8];
  titleLabel = [(WFOverlayImageEditorOptionButton *)self titleLabel];
  font = [titleLabel font];
  v21[0] = font;
  v11 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v21 forKeys:&v20 count:1];
  [currentTitle sizeWithAttributes:v11];
  v13 = v12;
  v15 = v14;

  if (v5 >= v13)
  {
    v16 = v5;
  }

  else
  {
    v16 = v13;
  }

  v17 = *MEMORY[0x277D85DE8];
  v18 = ceil(v16);
  v19 = ceil(v7 + v15);
  result.height = v19;
  result.width = v18;
  return result;
}

- (CGRect)titleRectForContentRect:(CGRect)rect
{
  height = rect.size.height;
  width = rect.size.width;
  y = rect.origin.y;
  x = rect.origin.x;
  v17[1] = *MEMORY[0x277D85DE8];
  remainder = rect;
  currentTitle = [(WFOverlayImageEditorOptionButton *)self currentTitle];
  v16 = *MEMORY[0x277D740A8];
  customFont = [(WFOverlayImageEditorOptionButton *)self customFont];
  v17[0] = customFont;
  v10 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v17 forKeys:&v16 count:1];
  [currentTitle sizeWithAttributes:v10];
  v12 = v11;

  memset(&v14, 0, sizeof(v14));
  v18.origin.x = x;
  v18.origin.y = y;
  v18.size.width = width;
  v18.size.height = height;
  CGRectDivide(v18, &v14, &remainder, v12, CGRectMaxYEdge);
  result = CGRectIntegral(v14);
  v13 = *MEMORY[0x277D85DE8];
  return result;
}

- (WFOverlayImageEditorOptionButton)initWithFrame:(CGRect)frame
{
  v13.receiver = self;
  v13.super_class = WFOverlayImageEditorOptionButton;
  v3 = [(WFOverlayImageEditorOptionButton *)&v13 initWithFrame:frame.origin.x, frame.origin.y, frame.size.width, frame.size.height];
  v4 = v3;
  if (v3)
  {
    titleLabel = [(WFOverlayImageEditorOptionButton *)v3 titleLabel];
    customFont = [(WFOverlayImageEditorOptionButton *)v4 customFont];
    [titleLabel setFont:customFont];

    [titleLabel setTextAlignment:1];
    imageView = [(WFOverlayImageEditorOptionButton *)v4 imageView];
    [imageView setContentMode:5];

    v8 = [MEMORY[0x277D75348] colorWithRed:1.0 green:0.756862745 blue:0.0274509804 alpha:1.0];
    v9 = [MEMORY[0x277D75348] colorWithWhite:1.0 alpha:0.699999988];
    [(WFOverlayImageEditorOptionButton *)v4 setTitleColor:v8 forState:4];
    [(WFOverlayImageEditorOptionButton *)v4 setTitleColor:v9 forState:0];
    v10 = [v9 colorWithAlphaComponent:0.400000006];
    [(WFOverlayImageEditorOptionButton *)v4 setTitleColor:v10 forState:1];

    v11 = v4;
  }

  return v4;
}

@end