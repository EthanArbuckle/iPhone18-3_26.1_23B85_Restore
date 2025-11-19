@interface CNPhotoPickerTrapView
- (CNPhotoPickerTrapView)initWithFrame:(CGRect)a3;
@end

@implementation CNPhotoPickerTrapView

- (CNPhotoPickerTrapView)initWithFrame:(CGRect)a3
{
  v46[1] = *MEMORY[0x1E69E9840];
  v41.receiver = self;
  v41.super_class = CNPhotoPickerTrapView;
  v3 = [(CNPhotoPickerTrapView *)&v41 initWithFrame:a3.origin.x, a3.origin.y, a3.size.width, a3.size.height];
  if (v3)
  {
    v4 = [MEMORY[0x1E69DC888] systemBackgroundColor];
    [(CNPhotoPickerTrapView *)v3 setBackgroundColor:v4];

    v5 = objc_alloc(MEMORY[0x1E69DCC10]);
    v6 = [v5 initWithFrame:{*MEMORY[0x1E695F058], *(MEMORY[0x1E695F058] + 8), *(MEMORY[0x1E695F058] + 16), *(MEMORY[0x1E695F058] + 24)}];
    [(CNPhotoPickerTrapView *)v3 setLabel:v6];

    v7 = [(CNPhotoPickerTrapView *)v3 label];
    [v7 setTranslatesAutoresizingMaskIntoConstraints:0];

    v8 = [MEMORY[0x1E69DC888] secondaryLabelColor];
    v9 = [(CNPhotoPickerTrapView *)v3 label];
    [v9 setTextColor:v8];

    v40 = [MEMORY[0x1E69DB880] preferredFontDescriptorWithTextStyle:*MEMORY[0x1E69DDD28]];
    v45 = *MEMORY[0x1E69DB8F0];
    v43 = *MEMORY[0x1E69DB918];
    v44 = &unk_1F0D4B4F0;
    v10 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v44 forKeys:&v43 count:1];
    v46[0] = v10;
    v11 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v46 forKeys:&v45 count:1];
    v39 = [v40 fontDescriptorByAddingAttributes:v11];

    v12 = [MEMORY[0x1E69DB878] fontWithDescriptor:v39 size:0.0];
    v13 = [(CNPhotoPickerTrapView *)v3 label];
    [v13 setFont:v12];

    v14 = [(CNPhotoPickerTrapView *)v3 label];
    [v14 setNumberOfLines:0];

    v15 = [(CNPhotoPickerTrapView *)v3 label];
    [v15 setTextAlignment:1];

    v16 = [(CNPhotoPickerTrapView *)v3 label];
    [(CNPhotoPickerTrapView *)v3 addSubview:v16];

    v38 = [(CNPhotoPickerTrapView *)v3 label];
    v36 = [v38 widthAnchor];
    v37 = [(CNPhotoPickerTrapView *)v3 safeAreaLayoutGuide];
    v35 = [v37 widthAnchor];
    v34 = [v36 constraintLessThanOrEqualToAnchor:v35 multiplier:1.0 constant:-20.0];
    v42[0] = v34;
    v33 = [(CNPhotoPickerTrapView *)v3 label];
    v31 = [v33 heightAnchor];
    v32 = [(CNPhotoPickerTrapView *)v3 safeAreaLayoutGuide];
    v30 = [v32 heightAnchor];
    v29 = [v31 constraintLessThanOrEqualToAnchor:v30 multiplier:1.0 constant:-20.0];
    v42[1] = v29;
    v28 = [(CNPhotoPickerTrapView *)v3 label];
    v27 = [v28 centerXAnchor];
    v17 = [(CNPhotoPickerTrapView *)v3 safeAreaLayoutGuide];
    v18 = [v17 centerXAnchor];
    v19 = [v27 constraintEqualToAnchor:v18];
    v42[2] = v19;
    v20 = [(CNPhotoPickerTrapView *)v3 label];
    v21 = [v20 centerYAnchor];
    v22 = [(CNPhotoPickerTrapView *)v3 safeAreaLayoutGuide];
    v23 = [v22 centerYAnchor];
    v24 = [v21 constraintEqualToAnchor:v23];
    v42[3] = v24;
    v25 = [MEMORY[0x1E695DEC8] arrayWithObjects:v42 count:4];

    [MEMORY[0x1E696ACD8] activateConstraints:v25];
  }

  return v3;
}

@end