@interface UILabel
+ (double)_maps_maximumHeightWithFont:(id)a3 numberOfLines:(int64_t)a4 displayScale:(double)a5;
+ (id)newStandardTextLabelWithFont:(id)a3;
- (BOOL)isTextTruncatedIgnoringLeading:(BOOL)a3;
- (CGRect)_boundingRectWithSize:(CGSize)a3 ignoringLeading:(BOOL)a4;
@end

@implementation UILabel

- (CGRect)_boundingRectWithSize:(CGSize)a3 ignoringLeading:(BOOL)a4
{
  v4 = a4;
  height = a3.height;
  width = a3.width;
  v8 = [(UILabel *)self text];
  if (v4)
  {
    v9 = 33;
  }

  else
  {
    v9 = 35;
  }

  v24 = NSFontAttributeName;
  v10 = [(UILabel *)self font];
  v25 = v10;
  v11 = [NSDictionary dictionaryWithObjects:&v25 forKeys:&v24 count:1];
  [v8 boundingRectWithSize:v9 options:v11 attributes:0 context:{width, height}];
  v13 = v12;
  v15 = v14;
  v17 = v16;
  v19 = v18;

  v20 = v13;
  v21 = v15;
  v22 = v17;
  v23 = v19;
  result.size.height = v23;
  result.size.width = v22;
  result.origin.y = v21;
  result.origin.x = v20;
  return result;
}

- (BOOL)isTextTruncatedIgnoringLeading:(BOOL)a3
{
  v3 = a3;
  v5 = [(UILabel *)self text];
  if (v5)
  {
    v6 = v5;
    v7 = [(UILabel *)self text];
    v8 = [v7 length];

    if (v8)
    {
      v9 = 1.79769313e308;
      [(UILabel *)self _boundingRectWithSize:v3 ignoringLeading:1.79769313e308, 1.79769313e308];
      v11 = v10;
      [(UILabel *)self bounds];
      Width = CGRectGetWidth(v15);
      if ([(UILabel *)self numberOfLines]>= 1)
      {
        v9 = v11 * [(UILabel *)self numberOfLines];
      }

      [(UILabel *)self _boundingRectWithSize:v3 ignoringLeading:Width, 1.79769313e308];
      LOBYTE(v5) = vabdd_f64(v13, v9) > 2.22044605e-16 && v13 > v9;
    }

    else
    {
      LOBYTE(v5) = 0;
    }
  }

  return v5;
}

+ (double)_maps_maximumHeightWithFont:(id)a3 numberOfLines:(int64_t)a4 displayScale:(double)a5
{
  v6 = a3;
  v7 = v6;
  if (a4 < 1)
  {
    v17 = 1.79769313e308;
  }

  else
  {
    [v6 lineHeight];
    [v7 leading];
    v8 = +[UIDevice currentDevice];
    v9 = [v8 userInterfaceIdiom];

    if (v9 == 5)
    {
      v10 = [v7 fontDescriptor];
      v11 = [v10 fontAttributes];
      v12 = [v11 objectForKeyedSubscript:UIFontDescriptorTextStyleAttribute];

      if (v12)
      {
        v22 = 0u;
        v23 = 0u;
        v20 = 0u;
        v21 = 0u;
        v13 = [&off_1016EC7E8 countByEnumeratingWithState:&v20 objects:v24 count:16];
        if (v13)
        {
          v14 = v13;
          v15 = *v21;
LABEL_6:
          v16 = 0;
          while (1)
          {
            if (*v21 != v15)
            {
              objc_enumerationMutation(&off_1016EC7E8);
            }

            if ([v12 containsString:*(*(&v20 + 1) + 8 * v16)])
            {
              break;
            }

            if (v14 == ++v16)
            {
              v14 = [&off_1016EC7E8 countByEnumeratingWithState:&v20 objects:v24 count:16];
              if (v14)
              {
                goto LABEL_6;
              }

              break;
            }
          }
        }
      }
    }

    UICeilToScale();
    v17 = v18;
  }

  return v17;
}

+ (id)newStandardTextLabelWithFont:(id)a3
{
  v3 = a3;
  v4 = objc_alloc_init(UILabel);
  [v4 setFont:v3];

  v5 = +[UIColor clearColor];
  [v4 setBackgroundColor:v5];

  return v4;
}

@end