@interface _MKPlaceAttributionLabel
- (id)attributionWithString:(id)string;
@end

@implementation _MKPlaceAttributionLabel

- (id)attributionWithString:(id)string
{
  stringCopy = string;
  image = [(_MKPlaceAttributionLabel *)self image];

  if (image)
  {
    image = objc_alloc_init(MEMORY[0x1E69DB7F0]);
    image2 = [(_MKPlaceAttributionLabel *)self image];
    [image setImage:image2];

    v7 = *MEMORY[0x1E695EFF8];
    v8 = *(MEMORY[0x1E695EFF8] + 8);
    image3 = [(_MKPlaceAttributionLabel *)self image];
    [image3 size];
    [image setBounds:{v7, v8, v10, v11}];
  }

  v12 = stringCopy;
  imagePlaceholder = [(_MKPlaceAttributionLabel *)self imagePlaceholder];

  if (imagePlaceholder)
  {
    imagePlaceholder2 = [(_MKPlaceAttributionLabel *)self imagePlaceholder];
    v15 = [v12 componentsSeparatedByString:imagePlaceholder2];

    v16 = v12;
    if ([v15 count])
    {
      v16 = [v15 objectAtIndex:0];
    }

    if ([v15 count] < 2)
    {
      v17 = 0;
    }

    else
    {
      v17 = [v15 objectAtIndex:1];
    }
  }

  else
  {
    v17 = 0;
    v16 = v12;
  }

  v18 = objc_alloc_init(MEMORY[0x1E696AD40]);
  if ([v16 length])
  {
    v19 = [objc_alloc(MEMORY[0x1E696AD40]) initWithString:v16];
    [v18 appendAttributedString:v19];
  }

  image4 = [(_MKPlaceAttributionLabel *)self image];

  if (image4)
  {
    v21 = [MEMORY[0x1E696AAB0] attributedStringWithAttachment:image];
    [v18 appendAttributedString:v21];

    v22 = *MEMORY[0x1E69DB610];
    v23 = MEMORY[0x1E696AD98];
    [(_MKPlaceAttributionLabel *)self imageBaselineOffset];
    v24 = [v23 numberWithDouble:?];
    [v18 addAttribute:v22 value:v24 range:{objc_msgSend(v18, "length") - 1, 1}];
  }

  if ([v17 length])
  {
    v25 = [objc_alloc(MEMORY[0x1E696AD40]) initWithString:v17];
    [v18 appendAttributedString:v25];
  }

  return v18;
}

@end