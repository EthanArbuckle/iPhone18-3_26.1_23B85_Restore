@interface AMSUIBubbleTipInlineAnchorInfo
- (AMSUIBubbleTipInlineAnchorInfo)initWithArrowDirection:(unint64_t)a3 arrowOffset:(double)a4;
- (AMSUIBubbleTipInlineAnchorInfo)initWithArrowDirection:(unint64_t)a3 relativeArrowOffset:(double)a4;
@end

@implementation AMSUIBubbleTipInlineAnchorInfo

- (AMSUIBubbleTipInlineAnchorInfo)initWithArrowDirection:(unint64_t)a3 arrowOffset:(double)a4
{
  result = [(AMSUIBubbleTipInlineAnchorInfo *)self init];
  if (result)
  {
    result->_arrowDirection = a3;
    result->_arrowOffset = a4;
    result->_relativeArrowOffset = 2.22507386e-308;
  }

  return result;
}

- (AMSUIBubbleTipInlineAnchorInfo)initWithArrowDirection:(unint64_t)a3 relativeArrowOffset:(double)a4
{
  result = [(AMSUIBubbleTipInlineAnchorInfo *)self init];
  if (result)
  {
    result->_arrowDirection = a3;
    result->_arrowOffset = 2.22507386e-308;
    result->_relativeArrowOffset = a4;
  }

  return result;
}

@end