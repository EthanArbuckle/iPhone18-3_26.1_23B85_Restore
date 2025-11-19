@interface StatusBarBackgroundViewStyle
+ (id)clear;
+ (id)defaultBlurredStyleWithDefaultColorProvider:(id)a3;
- (BOOL)isEqual:(id)a3;
- (StatusBarBackgroundViewStyle)initWithBlurStyle:(int64_t)a3 groupName:(id)a4 defaultColorProvider:(id)a5 disableBlur:(BOOL)a6;
- (StatusBarBackgroundViewStyle)initWithColor:(id)a3;
- (StatusBarBackgroundViewStyle)initWithGaussianBlurRadius:(double)a3 defaultColorProvider:(id)a4 disableBlur:(BOOL)a5;
- (StatusBarBackgroundViewStyle)initWithVariableBlurRadius:(double)a3 defaultColorProvider:(id)a4 disableBlur:(BOOL)a5;
- (id)description;
- (unint64_t)hash;
@end

@implementation StatusBarBackgroundViewStyle

- (unint64_t)hash
{
  v3 = [(StatusBarBackgroundViewStyle *)self type];
  v4 = [(StatusBarBackgroundViewStyle *)self color];
  v5 = [v4 hash];
  v6 = v5 ^ v3 ^ [(StatusBarBackgroundViewStyle *)self blurStyle];
  v7 = [(StatusBarBackgroundViewStyle *)self groupName];
  v8 = v6 ^ [v7 hash];
  v9 = [(StatusBarBackgroundViewStyle *)self disableBlur];

  return v8 ^ v9;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (self == v4)
  {
    LOBYTE(v19) = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = v4;
      v6 = [(StatusBarBackgroundViewStyle *)self type];
      if (v6 == [(StatusBarBackgroundViewStyle *)v5 type])
      {
        v7 = [(StatusBarBackgroundViewStyle *)self color];
        v8 = [(StatusBarBackgroundViewStyle *)v5 color];
        v9 = v7;
        v10 = v8;
        if ((!(v9 | v10) || (v11 = [v9 isEqual:v10], v10, v9, v11)) && (v12 = -[StatusBarBackgroundViewStyle blurStyle](self, "blurStyle"), v12 == -[StatusBarBackgroundViewStyle blurStyle](v5, "blurStyle")))
        {
          v13 = [(StatusBarBackgroundViewStyle *)self groupName];
          v14 = [(StatusBarBackgroundViewStyle *)v5 groupName];
          v15 = v13;
          v16 = v14;
          if (v15 | v16 && (v17 = [v15 isEqual:v16], v16, v15, !v17))
          {
            LOBYTE(v19) = 0;
          }

          else
          {
            v18 = [(StatusBarBackgroundViewStyle *)self disableBlur];
            v19 = v18 ^ [(StatusBarBackgroundViewStyle *)v5 disableBlur]^ 1;
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

- (StatusBarBackgroundViewStyle)initWithVariableBlurRadius:(double)a3 defaultColorProvider:(id)a4 disableBlur:(BOOL)a5
{
  v8 = a4;
  v14.receiver = self;
  v14.super_class = StatusBarBackgroundViewStyle;
  v9 = [(StatusBarBackgroundViewStyle *)&v14 init];
  v10 = v9;
  if (v9)
  {
    v9->_type = 4;
    v9->_blurRadius = a3;
    v11 = objc_retainBlock(v8);
    defaultColorProvider = v10->_defaultColorProvider;
    v10->_defaultColorProvider = v11;

    v10->_disableBlur = a5;
  }

  return v10;
}

- (StatusBarBackgroundViewStyle)initWithGaussianBlurRadius:(double)a3 defaultColorProvider:(id)a4 disableBlur:(BOOL)a5
{
  v8 = a4;
  v14.receiver = self;
  v14.super_class = StatusBarBackgroundViewStyle;
  v9 = [(StatusBarBackgroundViewStyle *)&v14 init];
  v10 = v9;
  if (v9)
  {
    v9->_type = 3;
    v9->_blurRadius = a3;
    v11 = objc_retainBlock(v8);
    defaultColorProvider = v10->_defaultColorProvider;
    v10->_defaultColorProvider = v11;

    v10->_disableBlur = a5;
  }

  return v10;
}

- (StatusBarBackgroundViewStyle)initWithBlurStyle:(int64_t)a3 groupName:(id)a4 defaultColorProvider:(id)a5 disableBlur:(BOOL)a6
{
  v11 = a4;
  v12 = a5;
  v18.receiver = self;
  v18.super_class = StatusBarBackgroundViewStyle;
  v13 = [(StatusBarBackgroundViewStyle *)&v18 init];
  v14 = v13;
  if (v13)
  {
    v13->_type = 2;
    v13->_blurStyle = a3;
    objc_storeStrong(&v13->_groupName, a4);
    v15 = objc_retainBlock(v12);
    defaultColorProvider = v14->_defaultColorProvider;
    v14->_defaultColorProvider = v15;

    v14->_disableBlur = a6;
  }

  return v14;
}

- (StatusBarBackgroundViewStyle)initWithColor:(id)a3
{
  v5 = a3;
  v9.receiver = self;
  v9.super_class = StatusBarBackgroundViewStyle;
  v6 = [(StatusBarBackgroundViewStyle *)&v9 init];
  v7 = v6;
  if (v6)
  {
    v6->_type = 1;
    objc_storeStrong(&v6->_color, a3);
  }

  return v7;
}

+ (id)clear
{
  v2 = objc_alloc_init(a1);
  v2[2] = 0;

  return v2;
}

+ (id)defaultBlurredStyleWithDefaultColorProvider:(id)a3
{
  v4 = a3;
  if (GEOConfigGetBOOL())
  {
    GEOConfigGetDouble();
    v6 = [[a1 alloc] initWithVariableBlurRadius:v4 defaultColorProvider:0 disableBlur:v5];
  }

  else
  {
    v6 = [[a1 alloc] initWithGaussianBlurRadius:v4 defaultColorProvider:0 disableBlur:10.0];
  }

  v7 = v6;

  return v7;
}

@end