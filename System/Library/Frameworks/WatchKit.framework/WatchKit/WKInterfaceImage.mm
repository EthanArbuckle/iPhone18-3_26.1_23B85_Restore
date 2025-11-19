@interface WKInterfaceImage
- (void)setImageData:(id)a3;
- (void)setImageNamed:(id)a3;
- (void)setTintColor:(id)a3;
- (void)startAnimatingWithImagesInRange:(_NSRange)a3 duration:(double)a4 repeatCount:(int64_t)a5;
@end

@implementation WKInterfaceImage

- (void)setImageData:(id)a3
{
  v4 = [a3 copy];
  [(WKInterfaceObject *)self _setImageData:v4 forProperty:&stru_284DFE9D8];
}

- (void)setImageNamed:(id)a3
{
  v4 = [a3 copy];
  [(WKInterfaceObject *)self _setImageNamed:v4 forProperty:&stru_284DFE9D8];
}

- (void)setTintColor:(id)a3
{
  v4 = [SPColorWrapper wrapperForColor:a3];
  [(WKInterfaceObject *)self _sendValueChanged:v4 forProperty:@"tintColor"];
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