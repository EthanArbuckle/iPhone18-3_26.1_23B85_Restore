@interface MKPlaceViewStyleProvider
+ (id)attributionStringWithText:(id)text image:(id)image placeholder:(id)placeholder;
+ (id)attributionStringWithTitle:(id)title displayName:(id)name logo:(id)logo isSnippetLogo:(BOOL)snippetLogo;
@end

@implementation MKPlaceViewStyleProvider

+ (id)attributionStringWithText:(id)text image:(id)image placeholder:(id)placeholder
{
  placeholderCopy = placeholder;
  imageCopy = image;
  textCopy = text;
  v10 = objc_alloc_init(_MKPlaceAttributionLabel);
  [(_MKPlaceAttributionLabel *)v10 setImage:imageCopy];

  [(_MKPlaceAttributionLabel *)v10 setImagePlaceholder:placeholderCopy];
  v11 = [(_MKPlaceAttributionLabel *)v10 attributionWithString:textCopy];

  return v11;
}

+ (id)attributionStringWithTitle:(id)title displayName:(id)name logo:(id)logo isSnippetLogo:(BOOL)snippetLogo
{
  snippetLogoCopy = snippetLogo;
  titleCopy = title;
  nameCopy = name;
  if (nameCopy | logo)
  {
    logoCopy = logo;
    v12 = objc_alloc_init(_MKPlaceAttributionLabel);
    [(_MKPlaceAttributionLabel *)v12 setImage:logoCopy];

    image = [(_MKPlaceAttributionLabel *)v12 image];
    if (image)
    {
      v14 = @"%@";
    }

    else
    {
      v14 = 0;
    }

    [(_MKPlaceAttributionLabel *)v12 setImagePlaceholder:v14];

    v15 = -3.5;
    if (snippetLogoCopy)
    {
      v15 = -12.0;
    }

    [(_MKPlaceAttributionLabel *)v12 setImageBaselineOffset:v15];
    image2 = [(_MKPlaceAttributionLabel *)v12 image];

    if (nameCopy && !image2)
    {
      v17 = [titleCopy stringByReplacingOccurrencesOfString:@"%@" withString:nameCopy];

      titleCopy = v17;
    }

    v18 = [(_MKPlaceAttributionLabel *)v12 attributionWithString:titleCopy];
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