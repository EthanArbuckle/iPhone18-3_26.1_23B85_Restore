@interface MKPlaceViewStyleProvider
+ (id)attributionStringWithText:(id)a3 image:(id)a4 placeholder:(id)a5;
+ (id)attributionStringWithTitle:(id)a3 displayName:(id)a4 logo:(id)a5 isSnippetLogo:(BOOL)a6;
@end

@implementation MKPlaceViewStyleProvider

+ (id)attributionStringWithText:(id)a3 image:(id)a4 placeholder:(id)a5
{
  v7 = a5;
  v8 = a4;
  v9 = a3;
  v10 = objc_alloc_init(_MKPlaceAttributionLabel);
  [(_MKPlaceAttributionLabel *)v10 setImage:v8];

  [(_MKPlaceAttributionLabel *)v10 setImagePlaceholder:v7];
  v11 = [(_MKPlaceAttributionLabel *)v10 attributionWithString:v9];

  return v11;
}

+ (id)attributionStringWithTitle:(id)a3 displayName:(id)a4 logo:(id)a5 isSnippetLogo:(BOOL)a6
{
  v6 = a6;
  v9 = a3;
  v10 = a4;
  if (v10 | a5)
  {
    v11 = a5;
    v12 = objc_alloc_init(_MKPlaceAttributionLabel);
    [(_MKPlaceAttributionLabel *)v12 setImage:v11];

    v13 = [(_MKPlaceAttributionLabel *)v12 image];
    if (v13)
    {
      v14 = @"%@";
    }

    else
    {
      v14 = 0;
    }

    [(_MKPlaceAttributionLabel *)v12 setImagePlaceholder:v14];

    v15 = -3.5;
    if (v6)
    {
      v15 = -12.0;
    }

    [(_MKPlaceAttributionLabel *)v12 setImageBaselineOffset:v15];
    v16 = [(_MKPlaceAttributionLabel *)v12 image];

    if (v10 && !v16)
    {
      v17 = [v9 stringByReplacingOccurrencesOfString:@"%@" withString:v10];

      v9 = v17;
    }

    v18 = [(_MKPlaceAttributionLabel *)v12 attributionWithString:v9];
  }

  else
  {
    v18 = 0;
  }

  v19 = [v18 length];
  v20 = *MEMORY[0x1E69DB648];
  v21 = [MEMORY[0x1E69DB878] systemFontOfSize:13.0];
  [v18 addAttribute:v20 value:v21 range:{0, v19}];

  return v18;
}

@end