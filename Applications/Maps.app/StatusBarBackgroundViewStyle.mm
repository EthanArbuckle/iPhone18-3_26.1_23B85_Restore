@interface StatusBarBackgroundViewStyle
+ (id)clear;
+ (id)defaultBlurredStyleWithDefaultColorProvider:(id)provider;
- (BOOL)isEqual:(id)equal;
- (StatusBarBackgroundViewStyle)initWithBlurStyle:(int64_t)style groupName:(id)name defaultColorProvider:(id)provider disableBlur:(BOOL)blur;
- (StatusBarBackgroundViewStyle)initWithColor:(id)color;
- (StatusBarBackgroundViewStyle)initWithGaussianBlurRadius:(double)radius defaultColorProvider:(id)provider disableBlur:(BOOL)blur;
- (StatusBarBackgroundViewStyle)initWithVariableBlurRadius:(double)radius defaultColorProvider:(id)provider disableBlur:(BOOL)blur;
- (id)description;
- (unint64_t)hash;
@end

@implementation StatusBarBackgroundViewStyle

- (unint64_t)hash
{
  type = [(StatusBarBackgroundViewStyle *)self type];
  color = [(StatusBarBackgroundViewStyle *)self color];
  v5 = [color hash];
  v6 = v5 ^ type ^ [(StatusBarBackgroundViewStyle *)self blurStyle];
  groupName = [(StatusBarBackgroundViewStyle *)self groupName];
  v8 = v6 ^ [groupName hash];
  disableBlur = [(StatusBarBackgroundViewStyle *)self disableBlur];

  return v8 ^ disableBlur;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (self == equalCopy)
  {
    LOBYTE(v19) = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = equalCopy;
      type = [(StatusBarBackgroundViewStyle *)self type];
      if (type == [(StatusBarBackgroundViewStyle *)v5 type])
      {
        color = [(StatusBarBackgroundViewStyle *)self color];
        color2 = [(StatusBarBackgroundViewStyle *)v5 color];
        v9 = color;
        v10 = color2;
        if ((!(v9 | v10) || (v11 = [v9 isEqual:v10], v10, v9, v11)) && (v12 = -[StatusBarBackgroundViewStyle blurStyle](self, "blurStyle"), v12 == -[StatusBarBackgroundViewStyle blurStyle](v5, "blurStyle")))
        {
          groupName = [(StatusBarBackgroundViewStyle *)self groupName];
          groupName2 = [(StatusBarBackgroundViewStyle *)v5 groupName];
          v15 = groupName;
          v16 = groupName2;
          if (v15 | v16 && (v17 = [v15 isEqual:v16], v16, v15, !v17))
          {
            LOBYTE(v19) = 0;
          }

          else
          {
            disableBlur = [(StatusBarBackgroundViewStyle *)self disableBlur];
            v19 = disableBlur ^ [(StatusBarBackgroundViewStyle *)v5 disableBlur]^ 1;
          }
        }

        else
        {
          LOBYTE(v19) = 0;
        }
      }

      else
      {
        LOBYTE(v19) = 0;
      }
    }

    else
    {
      LOBYTE(v19) = 0;
    }
  }

  return v19;
}

- (id)description
{
  v11.receiver = self;
  v11.super_class = StatusBarBackgroundViewStyle;
  v3 = [(StatusBarBackgroundViewStyle *)&v11 description];
  blurStyle = self->_blurStyle;
  groupName = self->_groupName;
  type = self->_type;
  color = self->_color;
  v8 = objc_retainBlock(self->_defaultColorProvider);
  v9 = [NSString stringWithFormat:@"%@ (type: %lu, blurStyle: %lu, groupName: %@, color: %@, defaultColorProvider: %@ disableBlur: %d)", v3, type, blurStyle, groupName, color, v8, self->_disableBlur];

  return v9;
}

- (StatusBarBackgroundViewStyle)initWithVariableBlurRadius:(double)radius defaultColorProvider:(id)provider disableBlur:(BOOL)blur
{
  providerCopy = provider;
  v14.receiver = self;
  v14.super_class = StatusBarBackgroundViewStyle;
  v9 = [(StatusBarBackgroundViewStyle *)&v14 init];
  v10 = v9;
  if (v9)
  {
    v9->_type = 4;
    v9->_blurRadius = radius;
    v11 = objc_retainBlock(providerCopy);
    defaultColorProvider = v10->_defaultColorProvider;
    v10->_defaultColorProvider = v11;

    v10->_disableBlur = blur;
  }

  return v10;
}

- (StatusBarBackgroundViewStyle)initWithGaussianBlurRadius:(double)radius defaultColorProvider:(id)provider disableBlur:(BOOL)blur
{
  providerCopy = provider;
  v14.receiver = self;
  v14.super_class = StatusBarBackgroundViewStyle;
  v9 = [(StatusBarBackgroundViewStyle *)&v14 init];
  v10 = v9;
  if (v9)
  {
    v9->_type = 3;
    v9->_blurRadius = radius;
    v11 = objc_retainBlock(providerCopy);
    defaultColorProvider = v10->_defaultColorProvider;
    v10->_defaultColorProvider = v11;

    v10->_disableBlur = blur;
  }

  return v10;
}

- (StatusBarBackgroundViewStyle)initWithBlurStyle:(int64_t)style groupName:(id)name defaultColorProvider:(id)provider disableBlur:(BOOL)blur
{
  nameCopy = name;
  providerCopy = provider;
  v18.receiver = self;
  v18.super_class = StatusBarBackgroundViewStyle;
  v13 = [(StatusBarBackgroundViewStyle *)&v18 init];
  v14 = v13;
  if (v13)
  {
    v13->_type = 2;
    v13->_blurStyle = style;
    objc_storeStrong(&v13->_groupName, name);
    v15 = objc_retainBlock(providerCopy);
    defaultColorProvider = v14->_defaultColorProvider;
    v14->_defaultColorProvider = v15;

    v14->_disableBlur = blur;
  }

  return v14;
}

- (StatusBarBackgroundViewStyle)initWithColor:(id)color
{
  colorCopy = color;
  v9.receiver = self;
  v9.super_class = StatusBarBackgroundViewStyle;
  v6 = [(StatusBarBackgroundViewStyle *)&v9 init];
  v7 = v6;
  if (v6)
  {
    v6->_type = 1;
    objc_storeStrong(&v6->_color, color);
  }

  return v7;
}

+ (id)clear
{
  v2 = objc_alloc_init(self);
  v2[2] = 0;

  return v2;
}

+ (id)defaultBlurredStyleWithDefaultColorProvider:(id)provider
{
  providerCopy = provider;
  if (GEOConfigGetBOOL())
  {
    GEOConfigGetDouble();
    v6 = [[self alloc] initWithVariableBlurRadius:providerCopy defaultColorProvider:0 disableBlur:v5];
  }

  else
  {
    v6 = [[self alloc] initWithGaussianBlurRadius:providerCopy defaultColorProvider:0 disableBlur:10.0];
  }

  v7 = v6;

  return v7;
}

@end