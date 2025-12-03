@interface LPCaptionBarAccessoryView
- (CGSize)size;
- (LPCaptionBarAccessoryView)initWithHost:(id)host type:(int64_t)type side:(int64_t)side;
- (id)_createImageViewWithImage:(id)image;
- (id)ensureAccessoryView;
- (void)layoutComponentView;
@end

@implementation LPCaptionBarAccessoryView

- (LPCaptionBarAccessoryView)initWithHost:(id)host type:(int64_t)type side:(int64_t)side
{
  hostCopy = host;
  v14.receiver = self;
  v14.super_class = LPCaptionBarAccessoryView;
  v8 = [(LPComponentView *)&v14 initWithHost:hostCopy];
  v9 = v8;
  v10 = 0;
  if (type && v8)
  {
    v8->_type = type;
    secondaryLabelColor = [MEMORY[0x1E69DC888] secondaryLabelColor];
    color = v9->_color;
    v9->_color = secondaryLabelColor;

    v10 = v9;
  }

  return v10;
}

- (id)ensureAccessoryView
{
  accessoryView = self->_accessoryView;
  if (accessoryView)
  {
    v3 = accessoryView;
  }

  else
  {
    if (self->_type == 1)
    {
      v5 = +[LPResources chevron];
      if (v5)
      {
        v6 = [(LPCaptionBarAccessoryView *)self _createImageViewWithImage:v5];
        v7 = self->_accessoryView;
        self->_accessoryView = v6;

        [(LPCaptionBarAccessoryView *)self addSubview:self->_accessoryView];
      }
    }

    else
    {
      v5 = 0;
    }

    v3 = self->_accessoryView;
  }

  return v3;
}

- (void)layoutComponentView
{
  ensureAccessoryView = [(LPCaptionBarAccessoryView *)self ensureAccessoryView];
  [(LPCaptionBarAccessoryView *)self bounds];
  accessoryView = self->_accessoryView;

  [(UIImageView *)accessoryView setFrame:?];
}

- (CGSize)size
{
  ensureAccessoryView = [(LPCaptionBarAccessoryView *)self ensureAccessoryView];
  [ensureAccessoryView intrinsicContentSize];
  v4 = v3;
  v6 = v5;

  v7 = v4;
  v8 = v6;
  result.height = v8;
  result.width = v7;
  return result;
}

- (id)_createImageViewWithImage:(id)image
{
  imageCopy = image;
  v5 = objc_alloc(MEMORY[0x1E69DCAE0]);
  platformImage = [imageCopy platformImage];
  v7 = [v5 initWithImage:platformImage];

  [v7 setTintColor:self->_color];
  [v7 setContentMode:4];
  v8 = [MEMORY[0x1E69DCAD8] configurationWithScale:1];
  [v7 setPreferredSymbolConfiguration:v8];

  return v7;
}

@end