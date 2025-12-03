@interface PKPaletteOptionInfoCell
- (id)initWithTitle:(void *)title detailText:;
@end

@implementation PKPaletteOptionInfoCell

- (id)initWithTitle:(void *)title detailText:
{
  v37[5] = *MEMORY[0x1E69E9840];
  v5 = a2;
  titleCopy = title;
  if (self)
  {
    v36.receiver = self;
    v36.super_class = PKPaletteOptionInfoCell;
    v7 = objc_msgSendSuper2(&v36, sel_init);
    if (v7)
    {
      v8 = objc_alloc_init(MEMORY[0x1E69DCF90]);
      [v8 setSpacing:4.0];
      [v8 setAxis:1];
      [v8 setAlignment:1];
      [v8 setDistribution:0];
      [v8 setTranslatesAutoresizingMaskIntoConstraints:0];
      [v7 addSubview:v8];
      trailingAnchor = [v8 trailingAnchor];
      [v7 trailingAnchor];
      v10 = v34 = titleCopy;
      v11 = [trailingAnchor constraintEqualToAnchor:v10 constant:-16.0];

      LODWORD(v12) = 1144750080;
      v33 = v11;
      [v11 setPriority:v12];
      v28 = MEMORY[0x1E696ACD8];
      topAnchor = [v8 topAnchor];
      topAnchor2 = [v7 topAnchor];
      v30 = [topAnchor constraintEqualToAnchor:topAnchor2 constant:16.0];
      v37[0] = v30;
      leadingAnchor = [v8 leadingAnchor];
      leadingAnchor2 = [v7 leadingAnchor];
      v14 = [leadingAnchor constraintEqualToAnchor:leadingAnchor2 constant:16.0];
      v37[1] = v14;
      v37[2] = v11;
      [v8 bottomAnchor];
      v15 = v35 = v5;
      bottomAnchor = [v7 bottomAnchor];
      v17 = [v15 constraintEqualToAnchor:bottomAnchor constant:-16.0];
      v37[3] = v17;
      widthAnchor = [v8 widthAnchor];
      v19 = [widthAnchor constraintLessThanOrEqualToConstant:280.0];
      v37[4] = v19;
      v20 = [MEMORY[0x1E695DEC8] arrayWithObjects:v37 count:5];
      [v28 activateConstraints:v20];

      v21 = objc_alloc_init(MEMORY[0x1E69DCC10]);
      v22 = v7[51];
      v7[51] = v21;

      v23 = [MEMORY[0x1E69DB878] preferredFontForTextStyle:*MEMORY[0x1E69DDCF8]];
      [v7[51] setFont:v23];

      [v7[51] setNumberOfLines:0];
      [v7[51] setLineBreakMode:0];
      [v8 addArrangedSubview:v7[51]];
      v5 = v35;
      v24 = objc_alloc_init(MEMORY[0x1E69DCC10]);
      v25 = v7[52];
      v7[52] = v24;

      v26 = [MEMORY[0x1E69DB878] preferredFontForTextStyle:*MEMORY[0x1E69DDD28]];
      [v7[52] setFont:v26];

      [v7[52] setNumberOfLines:0];
      [v7[52] setLineBreakMode:0];
      [v8 addArrangedSubview:v7[52]];
      [v7[51] setText:v35];
      titleCopy = v34;
      [v7[52] setText:v34];
    }
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

@end