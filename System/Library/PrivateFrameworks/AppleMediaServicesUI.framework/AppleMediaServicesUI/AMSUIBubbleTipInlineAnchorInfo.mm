@interface AMSUIBubbleTipInlineAnchorInfo
- (AMSUIBubbleTipInlineAnchorInfo)initWithArrowDirection:(unint64_t)direction arrowOffset:(double)offset;
- (AMSUIBubbleTipInlineAnchorInfo)initWithArrowDirection:(unint64_t)direction relativeArrowOffset:(double)offset;
@end

@implementation AMSUIBubbleTipInlineAnchorInfo

- (AMSUIBubbleTipInlineAnchorInfo)initWithArrowDirection:(unint64_t)direction arrowOffset:(double)offset
{
  result = [(AMSUIBubbleTipInlineAnchorInfo *)self init];
  if (result)
  {
    result->_arrowDirection = direction;
    result->_arrowOffset = offset;
    result->_relativeArrowOffset = 2.22507386e-308;
  }

  return result;
}

- (AMSUIBubbleTipInlineAnchorInfo)initWithArrowDirection:(unint64_t)direction relativeArrowOffset:(double)offset
{
  result = [(AMSUIBubbleTipInlineAnchorInfo *)self init];
  if (result)
  {
    result->_arrowDirection = direction;
    result->_arrowOffset = 2.22507386e-308;
    result->_relativeArrowOffset = offset;
  }

  return result;
}

@end