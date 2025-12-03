@interface PKPaletteOptionTitleCell
- (id)initWithTitle:(void *)title target:(uint64_t)target action:;
@end

@implementation PKPaletteOptionTitleCell

- (id)initWithTitle:(void *)title target:(uint64_t)target action:
{
  v35[4] = *MEMORY[0x1E69E9840];
  v7 = a2;
  titleCopy = title;
  if (self)
  {
    v34.receiver = self;
    v34.super_class = PKPaletteOptionTitleCell;
    v9 = objc_msgSendSuper2(&v34, sel_init);
    if (v9)
    {
      v10 = [MEMORY[0x1E69DC738] buttonWithType:1];
      v11 = v9[51];
      v9[51] = v10;

      v12 = [MEMORY[0x1E69DB878] preferredFontForTextStyle:*MEMORY[0x1E69DDCF8]];
      [v9[51] titleLabel];
      v13 = v32 = titleCopy;
      [v13 setFont:v12];

      [v9[51] setContentHorizontalAlignment:4];
      labelColor = [MEMORY[0x1E69DC888] labelColor];
      [v9[51] setTintColor:labelColor];

      [v9[51] setTranslatesAutoresizingMaskIntoConstraints:0];
      [v9 addSubview:v9[51]];
      v25 = MEMORY[0x1E696ACD8];
      topAnchor = [v9[51] topAnchor];
      topAnchor2 = [v9 topAnchor];
      v28 = [topAnchor constraintEqualToAnchor:topAnchor2];
      v35[0] = v28;
      bottomAnchor = [v9[51] bottomAnchor];
      bottomAnchor2 = [v9 bottomAnchor];
      [bottomAnchor constraintEqualToAnchor:bottomAnchor2];
      v15 = v33 = v7;
      v35[1] = v15;
      leadingAnchor = [v9[51] leadingAnchor];
      leadingAnchor2 = [v9 leadingAnchor];
      v18 = [leadingAnchor constraintEqualToAnchor:leadingAnchor2];
      v35[2] = v18;
      [v9[51] trailingAnchor];
      v19 = v29 = target;
      trailingAnchor = [v9 trailingAnchor];
      v21 = [v19 constraintEqualToAnchor:trailingAnchor];
      v35[3] = v21;
      v22 = [MEMORY[0x1E695DEC8] arrayWithObjects:v35 count:4];
      [v25 activateConstraints:v22];

      titleCopy = v32;
      v7 = v33;

      LODWORD(v23) = 1148846080;
      [v9[51] setContentCompressionResistancePriority:0 forAxis:v23];
      [v9[51] setContentEdgeInsets:{16.0, 16.0, 16.0, 16.0}];
      [v9[51] setTitle:v33 forState:0];
      [v9[51] addTarget:v32 action:v29 forControlEvents:64];
    }
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

@end