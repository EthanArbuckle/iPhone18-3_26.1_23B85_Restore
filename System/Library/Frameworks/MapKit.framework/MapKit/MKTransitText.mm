@interface MKTransitText
- (MKTransitText)initWithFormattedString:(id)string;
@end

@implementation MKTransitText

- (MKTransitText)initWithFormattedString:(id)string
{
  stringCopy = string;
  v10.receiver = self;
  v10.super_class = MKTransitText;
  v6 = [(MKTransitText *)&v10 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_text, string);
    v8 = v7;
  }

  return v7;
}

@end