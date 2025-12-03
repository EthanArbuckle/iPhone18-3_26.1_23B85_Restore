@interface WKInterfaceImage
- (void)setImageData:(id)data;
- (void)setImageNamed:(id)named;
- (void)setTintColor:(id)color;
- (void)startAnimatingWithImagesInRange:(_NSRange)range duration:(double)duration repeatCount:(int64_t)count;
@end

@implementation WKInterfaceImage

- (void)setImageData:(id)data
{
  v4 = [data copy];
  [(WKInterfaceObject *)self _setImageData:v4 forProperty:&stru_284DFE9D8];
}

- (void)setImageNamed:(id)named
{
  v4 = [named copy];
  [(WKInterfaceObject *)self _setImageNamed:v4 forProperty:&stru_284DFE9D8];
}

- (void)setTintColor:(id)color
{
  v4 = [SPColorWrapper wrapperForColor:color];
  [(WKInterfaceObject *)self _sendValueChanged:v4 forProperty:@"tintColor"];
}

- (void)startAnimatingWithImagesInRange:(_NSRange)range duration:(double)duration repeatCount:(int64_t)count
{
  length = range.length;
  v15[4] = *MEMORY[0x277D85DE8];
  v9 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:range.location];
  v15[0] = v9;
  v10 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:length];
  v15[1] = v10;
  v11 = [MEMORY[0x277CCABB0] numberWithDouble:duration];
  v15[2] = v11;
  v12 = [MEMORY[0x277CCABB0] numberWithInteger:count];
  v15[3] = v12;
  v13 = [MEMORY[0x277CBEA60] arrayWithObjects:v15 count:4];
  [(WKInterfaceObject *)self _sendValueChanged:v13 forProperty:@".start"];

  v14 = *MEMORY[0x277D85DE8];
}

@end