@interface PKPaletteOptionTitleCell
- (id)initWithTitle:(void *)a3 target:(uint64_t)a4 action:;
@end

@implementation PKPaletteOptionTitleCell

- (id)initWithTitle:(void *)a3 target:(uint64_t)a4 action:
{
  v35[4] = *MEMORY[0x1E69E9840];
  v7 = a2;
  v8 = a3;
  if (a1)
  {
    v34.receiver = a1;
    v34.super_class = PKPaletteOptionTitleCell;
    v9 = objc_msgSendSuper2(&v34, sel_init);
    if (v9)
    {
      v10 = [MEMORY[0x1E69DC738] buttonWithType:1];
      v11 = v9[51];
      v9[51] = v10;

      v12 = [MEMORY[0x1E69DB878] preferredFontForTextStyle:*MEMORY[0x1E69DDCF8]];
      [v9[51] titleLabel];
      v13 = v32 = v8;
      [v13 setFont:v12];

      [v9[51] setContentHorizontalAlignment:4];
      v14 = [MEMORY[0x1E69DC888] labelColor];
      [v9[51] setTintColor:v14];

      [v9[51] setTranslatesAutoresizingMaskIntoConstraints:0];
      [v9 addSubview:v9[51]];
      v25 = MEMORY[0x1E696ACD8];
      v31 = [v9[51] topAnchor];
      v30 = [v9 topAnchor];
      v28 = [v31 constraintEqualToAnchor:v30];
      v35[0] = v28;
      v27 = [v9[51] bottomAnchor];
      v26 = [v9 bottomAnchor];
      [v27 constraintEqualToAnchor:v26];
      v15 = v33 = v7;
      v35[1] = v15;
      v16 = [v9[51] leadingAnchor];
      v17 = [v9 leadingAnchor];
      v18 = [v16 constraintEqualToAnchor:v17];
      v35[2] = v18;
      [v9[51] trailingAnchor];
      v19 = v29 = a4;
      v20 = [v9 trailingAnchor];
      v21 = [v19 constraintEqualToAnchor:v20];
      v35[3] = v21;
      v22 = [MEMORY[0x1E695DEC8] arrayWithObjects:v35 count:4];
      [v25 activateConstraints:v22];

      v8 = v32;
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