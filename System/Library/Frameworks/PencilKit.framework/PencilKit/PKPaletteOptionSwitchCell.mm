@interface PKPaletteOptionSwitchCell
- (id)initWithTitle:(void *)title subtitle:(void *)subtitle target:(uint64_t)target action:;
@end

@implementation PKPaletteOptionSwitchCell

- (id)initWithTitle:(void *)title subtitle:(void *)subtitle target:(uint64_t)target action:
{
  v69[12] = *MEMORY[0x1E69E9840];
  v9 = a2;
  titleCopy = title;
  subtitleCopy = subtitle;
  if (self)
  {
    v68.receiver = self;
    v68.super_class = PKPaletteOptionSwitchCell;
    v12 = objc_msgSendSuper2(&v68, sel_init);
    if (v12)
    {
      v13 = objc_alloc_init(MEMORY[0x1E69DCF90]);
      [v13 setSpacing:16.0];
      [v13 setAxis:0];
      [v13 setAlignment:3];
      [v13 setDistribution:0];
      [v13 setTranslatesAutoresizingMaskIntoConstraints:0];
      [v12 addSubview:v13];
      v14 = objc_alloc_init(MEMORY[0x1E69DCF90]);
      [v14 setSpacing:4.0];
      [v14 setAxis:1];
      [v14 setAlignment:1];
      [v14 setDistribution:0];
      targetCopy = target;
      v15 = v14;
      [v14 setTranslatesAutoresizingMaskIntoConstraints:0];
      v16 = objc_alloc_init(MEMORY[0x1E69DCC10]);
      v17 = v12[51];
      v12[51] = v16;

      v18 = [MEMORY[0x1E69DB878] preferredFontForTextStyle:*MEMORY[0x1E69DDCF8]];
      [v12[51] setFont:v18];

      [v12[51] setNumberOfLines:0];
      [v12[51] setLineBreakMode:0];
      [v12[51] setText:v9];
      [v15 addArrangedSubview:v12[51]];
      v19 = objc_alloc_init(MEMORY[0x1E69DCC10]);
      v20 = v12[53];
      v12[53] = v19;

      v21 = [MEMORY[0x1E69DB878] preferredFontForTextStyle:*MEMORY[0x1E69DDD28]];
      [v12[53] setFont:v21];

      [v12[53] setNumberOfLines:0];
      [v12[53] setLineBreakMode:0];
      [v12[53] setText:titleCopy];
      [v12[53] setHidden:titleCopy == 0];
      [v15 addArrangedSubview:v12[53]];
      v22 = objc_alloc_init(MEMORY[0x1E69DCFD0]);
      v23 = v12[52];
      v12[52] = v22;

      [v12[52] addTarget:subtitleCopy action:targetCopy forControlEvents:4096];
      [v13 addArrangedSubview:v15];
      [v13 addArrangedSubview:v12[52]];
      v47 = MEMORY[0x1E696ACD8];
      topAnchor = [v13 topAnchor];
      topAnchor2 = [v12 topAnchor];
      v61 = [topAnchor constraintEqualToAnchor:topAnchor2];
      v69[0] = v61;
      leadingAnchor = [v13 leadingAnchor];
      leadingAnchor2 = [v12 leadingAnchor];
      v58 = [leadingAnchor constraintEqualToAnchor:leadingAnchor2 constant:16.0];
      v69[1] = v58;
      trailingAnchor = [v13 trailingAnchor];
      trailingAnchor2 = [v12 trailingAnchor];
      v55 = [trailingAnchor constraintEqualToAnchor:trailingAnchor2 constant:-16.0];
      v69[2] = v55;
      bottomAnchor = [v13 bottomAnchor];
      bottomAnchor2 = [v12 bottomAnchor];
      v52 = [bottomAnchor constraintEqualToAnchor:bottomAnchor2];
      v69[3] = v52;
      leadingAnchor3 = [v15 leadingAnchor];
      leadingAnchor4 = [v13 leadingAnchor];
      v48 = [leadingAnchor3 constraintEqualToAnchor:leadingAnchor4];
      v69[4] = v48;
      v51 = v15;
      trailingAnchor3 = [v15 trailingAnchor];
      leadingAnchor5 = [v12[52] leadingAnchor];
      v44 = [trailingAnchor3 constraintLessThanOrEqualToAnchor:leadingAnchor5 constant:-16.0];
      v69[5] = v44;
      topAnchor3 = [v15 topAnchor];
      topAnchor4 = [v13 topAnchor];
      v41 = [topAnchor3 constraintEqualToAnchor:topAnchor4];
      v69[6] = v41;
      bottomAnchor3 = [v15 bottomAnchor];
      bottomAnchor4 = [v13 bottomAnchor];
      v38 = [bottomAnchor3 constraintEqualToAnchor:bottomAnchor4];
      v69[7] = v38;
      topAnchor5 = [v12[51] topAnchor];
      topAnchor6 = [v12 topAnchor];
      v35 = [topAnchor5 constraintGreaterThanOrEqualToAnchor:topAnchor6 constant:16.0];
      v69[8] = v35;
      bottomAnchor5 = [v12[51] bottomAnchor];
      bottomAnchor6 = [v12 bottomAnchor];
      [bottomAnchor5 constraintLessThanOrEqualToAnchor:bottomAnchor6 constant:-16.0];
      v24 = v67 = v9;
      v69[9] = v24;
      [v12[53] topAnchor];
      v25 = v65 = titleCopy;
      [v12 topAnchor];
      v26 = v64 = subtitleCopy;
      v27 = [v25 constraintGreaterThanOrEqualToAnchor:v26 constant:16.0];
      v69[10] = v27;
      bottomAnchor7 = [v12[53] bottomAnchor];
      bottomAnchor8 = [v12 bottomAnchor];
      v30 = [bottomAnchor7 constraintLessThanOrEqualToAnchor:bottomAnchor8 constant:-16.0];
      v69[11] = v30;
      v31 = [MEMORY[0x1E695DEC8] arrayWithObjects:v69 count:12];
      [v47 activateConstraints:v31];

      subtitleCopy = v64;
      titleCopy = v65;

      v9 = v67;
    }
  }

  else
  {
    v12 = 0;
  }

  return v12;
}

@end