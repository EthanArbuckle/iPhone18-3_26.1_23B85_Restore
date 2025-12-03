@interface AVMobileContentTag
+ (id)_liveContentTagWithTintColor:(id)color withTextColor:(id)textColor;
+ (id)adContentTag;
+ (id)adContentTagWithTintColor:(id)color;
+ (id)liveContentTag;
+ (id)liveEdgeContentTag;
- (UIEdgeInsets)layoutMargins;
- (id)_initInternal;
@end

@implementation AVMobileContentTag

- (UIEdgeInsets)layoutMargins
{
  top = self->_layoutMargins.top;
  left = self->_layoutMargins.left;
  bottom = self->_layoutMargins.bottom;
  right = self->_layoutMargins.right;
  result.right = right;
  result.bottom = bottom;
  result.left = left;
  result.top = top;
  return result;
}

- (id)_initInternal
{
  v3.receiver = self;
  v3.super_class = AVMobileContentTag;
  return [(AVMobileContentTag *)&v3 init];
}

+ (id)_liveContentTagWithTintColor:(id)color withTextColor:(id)textColor
{
  colorCopy = color;
  textColorCopy = textColor;
  _initInternal = [[AVMobileContentTag alloc] _initInternal];
  v8 = AVLocalizedString(@"LIVE");
  v9 = _initInternal[2];
  _initInternal[2] = v8;

  v10 = _initInternal[3];
  _initInternal[3] = colorCopy;
  v11 = colorCopy;

  v12 = _initInternal[4];
  _initInternal[4] = textColorCopy;

  _initInternal[5] = 0;
  *(_initInternal + 2) = 1056964608;
  *(_initInternal + 3) = xmmword_18B6EC400;
  *(_initInternal + 4) = xmmword_18B6EC400;

  return _initInternal;
}

+ (id)liveEdgeContentTag
{
  avkit_liveContentAccessoryViewColor = [MEMORY[0x1E69DC888] avkit_liveContentAccessoryViewColor];
  whiteColor = [MEMORY[0x1E69DC888] whiteColor];
  v5 = [self _liveContentTagWithTintColor:avkit_liveContentAccessoryViewColor withTextColor:whiteColor];

  return v5;
}

+ (id)liveContentTag
{
  v3 = [MEMORY[0x1E69DC888] colorWithRed:0.37109375 green:0.37109375 blue:0.37109375 alpha:1.0];
  lightGrayColor = [MEMORY[0x1E69DC888] lightGrayColor];
  v5 = [self _liveContentTagWithTintColor:v3 withTextColor:lightGrayColor];

  return v5;
}

+ (id)adContentTagWithTintColor:(id)color
{
  colorCopy = color;
  _initInternal = [[AVMobileContentTag alloc] _initInternal];
  v5 = AVLocalizedString(@"Ad");
  v6 = _initInternal[2];
  _initInternal[2] = v5;

  v7 = _initInternal[3];
  _initInternal[3] = colorCopy;
  v8 = colorCopy;

  whiteColor = [MEMORY[0x1E69DC888] whiteColor];
  v10 = _initInternal[4];
  _initInternal[4] = whiteColor;

  _initInternal[5] = 1;
  *(_initInternal + 2) = 1048576000;
  *(_initInternal + 3) = xmmword_18B6EC410;
  *(_initInternal + 4) = xmmword_18B6EC410;

  return _initInternal;
}

+ (id)adContentTag
{
  v3 = [MEMORY[0x1E69DC888] colorWithRed:0.44140625 green:0.734375 blue:0.91796875 alpha:1.0];
  v4 = [self adContentTagWithTintColor:v3];

  return v4;
}

@end