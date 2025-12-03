@interface UILabel
+ (double)_maps_maximumHeightWithFont:(id)font numberOfLines:(int64_t)lines displayScale:(double)scale;
+ (id)newStandardTextLabelWithFont:(id)font;
- (BOOL)isTextTruncatedIgnoringLeading:(BOOL)leading;
- (CGRect)_boundingRectWithSize:(CGSize)size ignoringLeading:(BOOL)leading;
@end

@implementation UILabel

+ (id)newStandardTextLabelWithFont:(id)font
{
  fontCopy = font;
  v4 = objc_alloc_init(UILabel);
  [v4 setFont:fontCopy];

  v5 = +[UIColor clearColor];
  [v4 setBackgroundColor:v5];

  return v4;
}

+ (double)_maps_maximumHeightWithFont:(id)font numberOfLines:(int64_t)lines displayScale:(double)scale
{
  fontCopy = font;
  v7 = fontCopy;
  if (lines < 1)
  {
    v17 = 1.79769313e308;
  }

  else
  {
    [fontCopy lineHeight];
    [v7 leading];
    v8 = +[UIDevice currentDevice];
    userInterfaceIdiom = [v8 userInterfaceIdiom];

    if (userInterfaceIdiom == &dword_4 + 1)
    {
      fontDescriptor = [v7 fontDescriptor];
      fontAttributes = [fontDescriptor fontAttributes];
      v12 = [fontAttributes objectForKeyedSubscript:UIFontDescriptorTextStyleAttribute];

      if (v12)
      {
        v22 = 0u;
        v23 = 0u;
        v20 = 0u;
        v21 = 0u;
        v13 = [&off_8ACF0 countByEnumeratingWithState:&v20 objects:v24 count:16];
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
              objc_enumerationMutation(&off_8ACF0);
            }

            if ([v12 containsString:*(*(&v20 + 1) + 8 * v16)])
            {
              break;
            }

            if (v14 == ++v16)
            {
              v14 = [&off_8ACF0 countByEnumeratingWithState:&v20 objects:v24 count:16];
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

- (BOOL)isTextTruncatedIgnoringLeading:(BOOL)leading
{
  leadingCopy = leading;
  text = [(UILabel *)self text];
  if (text)
  {
    v6 = text;
    text2 = [(UILabel *)self text];
    v8 = [text2 length];

    if (v8)
    {
      v9 = 1.79769313e308;
      [(UILabel *)self _boundingRectWithSize:leadingCopy ignoringLeading:1.79769313e308, 1.79769313e308];
      v11 = v10;
      [(UILabel *)self bounds];
      Width = CGRectGetWidth(v16);
      if ([(UILabel *)self numberOfLines]>= 1)
      {
        v9 = v11 * [(UILabel *)self numberOfLines];
      }

      [(UILabel *)self _boundingRectWithSize:leadingCopy ignoringLeading:Width, 1.79769313e308];
      v14 = vabdd_f64(v13, v9) > 2.22044605e-16;
      LOBYTE(text) = v13 > v9 && v14;
    }

    else
    {
      LOBYTE(text) = 0;
    }
  }

  return text;
}

- (CGRect)_boundingRectWithSize:(CGSize)size ignoringLeading:(BOOL)leading
{
  leadingCopy = leading;
  height = size.height;
  width = size.width;
  text = [(UILabel *)self text];
  if (leadingCopy)
  {
    v9 = 33;
  }

  else
  {
    v9 = 35;
  }

  v24 = NSFontAttributeName;
  font = [(UILabel *)self font];
  v25 = font;
  v11 = [NSDictionary dictionaryWithObjects:&v25 forKeys:&v24 count:1];
  [text boundingRectWithSize:v9 options:v11 attributes:0 context:{width, height}];
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

@end