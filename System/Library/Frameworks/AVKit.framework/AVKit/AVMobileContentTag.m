@interface AVMobileContentTag
+ (id)_liveContentTagWithTintColor:(id)a3 withTextColor:(id)a4;
+ (id)adContentTag;
+ (id)adContentTagWithTintColor:(id)a3;
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

+ (id)_liveContentTagWithTintColor:(id)a3 withTextColor:(id)a4
{
  v5 = a3;
  v6 = a4;
  v7 = [[AVMobileContentTag alloc] _initInternal];
  v8 = AVLocalizedString(@"LIVE");
  v9 = v7[2];
  v7[2] = v8;

  v10 = v7[3];
  v7[3] = v5;
  v11 = v5;

  v12 = v7[4];
  v7[4] = v6;

  v7[5] = 0;
  *(v7 + 2) = 1056964608;
  *(v7 + 3) = xmmword_18B6EC400;
  *(v7 + 4) = xmmword_18B6EC400;

  return v7;
}

+ (id)liveEdgeContentTag
{
  v3 = [MEMORY[0x1E69DC888] avkit_liveContentAccessoryViewColor];
  v4 = [MEMORY[0x1E69DC888] whiteColor];
  v5 = [a1 _liveContentTagWithTintColor:v3 withTextColor:v4];

  return v5;
}

+ (id)liveContentTag
{
  v3 = [MEMORY[0x1E69DC888] colorWithRed:0.37109375 green:0.37109375 blue:0.37109375 alpha:1.0];
  v4 = [MEMORY[0x1E69DC888] lightGrayColor];
  v5 = [a1 _liveContentTagWithTintColor:v3 withTextColor:v4];

  return v5;
}

+ (id)adContentTagWithTintColor:(id)a3
{
  v3 = a3;
  v4 = [[AVMobileContentTag alloc] _initInternal];
  v5 = AVLocalizedString(@"Ad");
  v6 = v4[2];
  v4[2] = v5;

  v7 = v4[3];
  v4[3] = v3;
  v8 = v3;

  v9 = [MEMORY[0x1E69DC888] whiteColor];
  v10 = v4[4];
  v4[4] = v9;

  v4[5] = 1;
  *(v4 + 2) = 1048576000;
  *(v4 + 3) = xmmword_18B6EC410;
  *(v4 + 4) = xmmword_18B6EC410;

  return v4;
}

+ (id)adContentTag
{
  v3 = [MEMORY[0x1E69DC888] colorWithRed:0.44140625 green:0.734375 blue:0.91796875 alpha:1.0];
  v4 = [a1 adContentTagWithTintColor:v3];

  return v4;
}

@end