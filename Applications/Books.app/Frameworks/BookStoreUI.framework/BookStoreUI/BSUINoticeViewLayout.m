@interface BSUINoticeViewLayout
+ (id)layoutWithAction:(BOOL)a3;
- (BSUINoticeViewLayout)initWithDefaultSize:(CGSize)a3 horizontalMargin:(double)a4 maxWidth:(double)a5 maxHeight:(double)a6 topContentInset:(double)a7 bottomContentInset:(double)a8 imageSize:(CGSize)a9 titleTopMargin:(double)a10 messageTopMargin:(double)a11 confirmLabelTopMargin:(double)a12;
- (CGSize)defaultSize;
- (CGSize)imageSize;
@end

@implementation BSUINoticeViewLayout

- (BSUINoticeViewLayout)initWithDefaultSize:(CGSize)a3 horizontalMargin:(double)a4 maxWidth:(double)a5 maxHeight:(double)a6 topContentInset:(double)a7 bottomContentInset:(double)a8 imageSize:(CGSize)a9 titleTopMargin:(double)a10 messageTopMargin:(double)a11 confirmLabelTopMargin:(double)a12
{
  height = a3.height;
  width = a3.width;
  v20.receiver = self;
  v20.super_class = BSUINoticeViewLayout;
  result = [(BSUINoticeViewLayout *)&v20 init];
  if (result)
  {
    result->_defaultSize.width = width;
    result->_defaultSize.height = height;
    result->_horizontalMargin = a4;
    result->_maxWidth = a5;
    result->_maxHeight = a6;
    result->_topContentInset = a7;
    result->_imageSize = a9;
    result->_bottomContentInset = a8;
    result->_titleTopMargin = a10;
    result->_messageTopMargin = a11;
    result->_confirmLabelTopMargin = a12;
  }

  return result;
}

+ (id)layoutWithAction:(BOOL)a3
{
  v3 = a3;
  if (_UISolariumEnabled())
  {
    v4 = [[BSUINoticeViewLayout alloc] initWithDefaultSize:250.0 horizontalMargin:250.0 maxWidth:24.0 maxHeight:359.0 topContentInset:646.0 bottomContentInset:36.0 imageSize:30.0 titleTopMargin:*&CGSizeZero.width messageTopMargin:*&CGSizeZero.height confirmLabelTopMargin:0x4040000000000000, 0x4030000000000000, 0x4038000000000000];
  }

  else
  {
    if (v3)
    {
      v5 = 24.0;
    }

    else
    {
      v5 = 20.0;
    }

    v4 = [[BSUINoticeViewLayout alloc] initWithDefaultSize:250.0 horizontalMargin:250.0 maxWidth:v5 maxHeight:359.0 topContentInset:646.0 bottomContentInset:v5 + 6.0 imageSize:v5 titleTopMargin:0x405B800000000000 messageTopMargin:0x405B800000000000 confirmLabelTopMargin:0x4043800000000000, 0x402A000000000000, 0x403A000000000000];
  }

  return v4;
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