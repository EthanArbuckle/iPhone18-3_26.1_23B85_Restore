@interface WKInterfaceGroup
- (void)setBackgroundColor:(id)a3;
- (void)setBackgroundImageData:(id)a3;
- (void)setBackgroundImageNamed:(id)a3;
- (void)setContentInset:(UIEdgeInsets)a3;
- (void)setCornerRadius:(double)a3;
- (void)startAnimatingWithImagesInRange:(_NSRange)a3 duration:(double)a4 repeatCount:(int64_t)a5;
@end

@implementation WKInterfaceGroup

- (void)setCornerRadius:(double)a3
{
  v4 = [MEMORY[0x277CCABB0] numberWithDouble:a3];
  [(WKInterfaceObject *)self _sendValueChanged:v4 forProperty:@"radius"];
}

- (void)setContentInset:(UIEdgeInsets)a3
{
  right = a3.right;
  bottom = a3.bottom;
  left = a3.left;
  v14[4] = *MEMORY[0x277D85DE8];
  v13[0] = @"top";
  v7 = [MEMORY[0x277CCABB0] numberWithDouble:a3.top];
  v14[0] = v7;
  v13[1] = @"left";
  v8 = [MEMORY[0x277CCABB0] numberWithDouble:left];
  v14[1] = v8;
  v13[2] = @"bottom";
  v9 = [MEMORY[0x277CCABB0] numberWithDouble:bottom];
  v14[2] = v9;
  v13[3] = @"right";
  v10 = [MEMORY[0x277CCABB0] numberWithDouble:right];
  v14[3] = v10;
  v11 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v14 forKeys:v13 count:4];
  [(WKInterfaceObject *)self _sendValueChanged:v11 forProperty:@"contentInset"];

  v12 = *MEMORY[0x277D85DE8];
}

- (void)setBackgroundColor:(id)a3
{
  v4 = [SPColorWrapper wrapperForColor:a3];
  [(WKInterfaceObject *)self _sendValueChanged:v4 forProperty:@"color"];
}

- (void)setBackgroundImageData:(id)a3
{
  v4 = [a3 copy];
  [(WKInterfaceObject *)self _setImageData:v4 forProperty:&stru_284DFE9D8];
}

- (void)setBackgroundImageNamed:(id)a3
{
  v4 = [a3 copy];
  [(WKInterfaceObject *)self _setImageNamed:v4 forProperty:&stru_284DFE9D8];
}

- (void)startAnimatingWithImagesInRange:(_NSRange)a3 duration:(double)a4 repeatCount:(int64_t)a5
{
  length = a3.length;
  v15[4] = *MEMORY[0x277D85DE8];
  v9 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:a3.location];
  v15[0] = v9;
  v10 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:length];
  v15[1] = v10;
  v11 = [MEMORY[0x277CCABB0] numberWithDouble:a4];
  v15[2] = v11;
  v12 = [MEMORY[0x277CCABB0] numberWithInteger:a5];
  v15[3] = v12;
  v13 = [MEMORY[0x277CBEA60] arrayWithObjects:v15 count:4];
  [(WKInterfaceObject *)self _sendValueChanged:v13 forProperty:@".start"];

  v14 = *MEMORY[0x277D85DE8];
}

@end