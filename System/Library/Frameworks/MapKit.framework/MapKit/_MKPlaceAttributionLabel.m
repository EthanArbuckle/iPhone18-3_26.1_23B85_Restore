@interface _MKPlaceAttributionLabel
- (id)attributionWithString:(id)a3;
@end

@implementation _MKPlaceAttributionLabel

- (id)attributionWithString:(id)a3
{
  v4 = a3;
  v5 = [(_MKPlaceAttributionLabel *)self image];

  if (v5)
  {
    v5 = objc_alloc_init(MEMORY[0x1E69DB7F0]);
    v6 = [(_MKPlaceAttributionLabel *)self image];
    [v5 setImage:v6];

    v7 = *MEMORY[0x1E695EFF8];
    v8 = *(MEMORY[0x1E695EFF8] + 8);
    v9 = [(_MKPlaceAttributionLabel *)self image];
    [v9 size];
    [v5 setBounds:{v7, v8, v10, v11}];
  }

  v12 = v4;
  v13 = [(_MKPlaceAttributionLabel *)self imagePlaceholder];

  if (v13)
  {
    v14 = [(_MKPlaceAttributionLabel *)self imagePlaceholder];
    v15 = [v12 componentsSeparatedByString:v14];

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

  v20 = [(_MKPlaceAttributionLabel *)self image];

  if (v20)
  {
    v21 = [MEMORY[0x1E696AAB0] attributedStringWithAttachment:v5];
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