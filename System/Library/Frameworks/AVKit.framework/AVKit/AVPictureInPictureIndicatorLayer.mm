@interface AVPictureInPictureIndicatorLayer
- (AVPictureInPictureIndicatorLayer)init;
- (AVPictureInPictureIndicatorLayer)initWithDisplayScale:(double)scale placeholderImage:(CGImage *)image opaque:(BOOL)opaque videoRectWhenPIPBegan:(CGRect)began;
- (CGRect)videoRectWhenPIPBegan;
- (NSString)customText;
- (void)layoutSublayers;
- (void)setCustomText:(id)text;
@end

@implementation AVPictureInPictureIndicatorLayer

- (CGRect)videoRectWhenPIPBegan
{
  x = self->_videoRectWhenPIPBegan.origin.x;
  y = self->_videoRectWhenPIPBegan.origin.y;
  width = self->_videoRectWhenPIPBegan.size.width;
  height = self->_videoRectWhenPIPBegan.size.height;
  result.size.height = height;
  result.size.width = width;
  result.origin.y = y;
  result.origin.x = x;
  return result;
}

- (NSString)customText
{
  contentLayer = [(AVPictureInPictureIndicatorLayer *)self contentLayer];
  customText = [contentLayer customText];

  return customText;
}

- (void)setCustomText:(id)text
{
  textCopy = text;
  contentLayer = [(AVPictureInPictureIndicatorLayer *)self contentLayer];
  [contentLayer setCustomText:textCopy];
}

- (AVPictureInPictureIndicatorLayer)init
{
  v3 = MEMORY[0x1E695DF30];
  v4 = *MEMORY[0x1E695D920];
  v5 = _AVMethodProem(self);
  v6 = objc_opt_class();
  v7 = NSStringFromClass(v6);
  [v3 raise:v4 format:{@"%@ is not a valid initializer. You must call -[%@ initWithTraitCollection:opaque:].", v5, v7}];

  v8 = *MEMORY[0x1E695F058];
  v9 = *(MEMORY[0x1E695F058] + 8);
  v10 = *(MEMORY[0x1E695F058] + 16);
  v11 = *(MEMORY[0x1E695F058] + 24);

  return [(AVPictureInPictureIndicatorLayer *)self initWithDisplayScale:0 placeholderImage:0 opaque:1.0 videoRectWhenPIPBegan:v8, v9, v10, v11];
}

- (void)layoutSublayers
{
  v25.receiver = self;
  v25.super_class = AVPictureInPictureIndicatorLayer;
  [(AVPictureInPictureIndicatorLayer *)&v25 layoutSublayers];
  [MEMORY[0x1E6979518] begin];
  [MEMORY[0x1E6979518] setDisableActions:1];
  [(AVPictureInPictureIndicatorLayer *)self videoRectWhenPIPBegan];
  v4 = 16.0;
  v5 = 9.0;
  v7 = v6;
  if (v6 > 0.0)
  {
    v8 = v3;
    if (v3 > 0.0)
    {
      [(AVPictureInPictureIndicatorLayer *)self videoRectWhenPIPBegan];
      IsNull = CGRectIsNull(v27);
      if (IsNull)
      {
        v5 = 9.0;
      }

      else
      {
        v5 = v7;
      }

      if (IsNull)
      {
        v4 = 16.0;
      }

      else
      {
        v4 = v8;
      }
    }
  }

  [(AVPictureInPictureIndicatorLayer *)self bounds];
  v11 = v10;
  v13 = v12;
  v15 = v14;
  v17 = v16;
  v26.width = v4;
  v26.height = v5;
  v31.origin.x = v11;
  v31.origin.y = v13;
  v31.size.width = v15;
  v31.size.height = v17;
  v28 = AVMakeRectWithAspectRatioInsideRect(v26, v31);
  v18 = round(v28.origin.x);
  v19 = round(v28.origin.y);
  v20 = round(v28.size.width);
  v21 = round(v28.size.height);
  contentLayer = [(AVPictureInPictureIndicatorLayer *)self contentLayer];
  [contentLayer setBounds:{v18, v19, v20, v21}];

  contentLayer2 = [(AVPictureInPictureIndicatorLayer *)self contentLayer];
  [(AVPictureInPictureIndicatorLayer *)self bounds];
  MidX = CGRectGetMidX(v29);
  [(AVPictureInPictureIndicatorLayer *)self bounds];
  [contentLayer2 setPosition:{MidX, CGRectGetMidY(v30)}];

  [MEMORY[0x1E6979518] commit];
}

- (AVPictureInPictureIndicatorLayer)initWithDisplayScale:(double)scale placeholderImage:(CGImage *)image opaque:(BOOL)opaque videoRectWhenPIPBegan:(CGRect)began
{
  height = began.size.height;
  width = began.size.width;
  y = began.origin.y;
  x = began.origin.x;
  opaqueCopy = opaque;
  v18.receiver = self;
  v18.super_class = AVPictureInPictureIndicatorLayer;
  v13 = [(AVPictureInPictureIndicatorLayer *)&v18 init];
  v14 = v13;
  if (v13)
  {
    v13->_videoRectWhenPIPBegan.origin.x = x;
    v13->_videoRectWhenPIPBegan.origin.y = y;
    v13->_videoRectWhenPIPBegan.size.width = width;
    v13->_videoRectWhenPIPBegan.size.height = height;
    v15 = [[AVPictureInPictureIndicatorSublayer alloc] initWithDisplayScale:image placeholderImage:opaqueCopy opaque:scale];
    contentLayer = v14->_contentLayer;
    v14->_contentLayer = v15;

    [(AVPictureInPictureIndicatorLayer *)v14 addSublayer:v14->_contentLayer];
  }

  return v14;
}

@end