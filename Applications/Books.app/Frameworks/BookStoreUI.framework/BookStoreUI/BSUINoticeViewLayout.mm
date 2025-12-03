@interface BSUINoticeViewLayout
+ (id)layoutWithAction:(BOOL)action;
- (BSUINoticeViewLayout)initWithDefaultSize:(CGSize)size horizontalMargin:(double)margin maxWidth:(double)width maxHeight:(double)height topContentInset:(double)inset bottomContentInset:(double)contentInset imageSize:(CGSize)imageSize titleTopMargin:(double)self0 messageTopMargin:(double)self1 confirmLabelTopMargin:(double)self2;
- (CGSize)defaultSize;
- (CGSize)imageSize;
@end

@implementation BSUINoticeViewLayout

- (BSUINoticeViewLayout)initWithDefaultSize:(CGSize)size horizontalMargin:(double)margin maxWidth:(double)width maxHeight:(double)height topContentInset:(double)inset bottomContentInset:(double)contentInset imageSize:(CGSize)imageSize titleTopMargin:(double)self0 messageTopMargin:(double)self1 confirmLabelTopMargin:(double)self2
{
  height = size.height;
  width = size.width;
  v20.receiver = self;
  v20.super_class = BSUINoticeViewLayout;
  result = [(BSUINoticeViewLayout *)&v20 init];
  if (result)
  {
    result->_defaultSize.width = width;
    result->_defaultSize.height = height;
    result->_horizontalMargin = margin;
    result->_maxWidth = width;
    result->_maxHeight = height;
    result->_topContentInset = inset;
    result->_imageSize = imageSize;
    result->_bottomContentInset = contentInset;
    result->_titleTopMargin = topMargin;
    result->_messageTopMargin = messageTopMargin;
    result->_confirmLabelTopMargin = labelTopMargin;
  }

  return result;
}

+ (id)layoutWithAction:(BOOL)action
{
  actionCopy = action;
  if (_UISolariumEnabled())
  {
    0x4038000000000000 = [[BSUINoticeViewLayout alloc] initWithDefaultSize:250.0 horizontalMargin:250.0 maxWidth:24.0 maxHeight:359.0 topContentInset:646.0 bottomContentInset:36.0 imageSize:30.0 titleTopMargin:*&CGSizeZero.width messageTopMargin:*&CGSizeZero.height confirmLabelTopMargin:0x4040000000000000, 0x4030000000000000, 0x4038000000000000];
  }

  else
  {
    if (actionCopy)
    {
      v5 = 24.0;
    }

    else
    {
      v5 = 20.0;
    }

    0x4038000000000000 = [[BSUINoticeViewLayout alloc] initWithDefaultSize:250.0 horizontalMargin:250.0 maxWidth:v5 maxHeight:359.0 topContentInset:646.0 bottomContentInset:v5 + 6.0 imageSize:v5 titleTopMargin:0x405B800000000000 messageTopMargin:0x405B800000000000 confirmLabelTopMargin:0x4043800000000000, 0x402A000000000000, 0x403A000000000000];
  }

  return 0x4038000000000000;
}

- (CGSize)defaultSize
{
  width = self->_defaultSize.width;
  height = self->_defaultSize.height;
  result.height = height;
  result.width = width;
  return result;
}

- (CGSize)imageSize
{
  width = self->_imageSize.width;
  height = self->_imageSize.height;
  result.height = height;
  result.width = width;
  return result;
}

@end