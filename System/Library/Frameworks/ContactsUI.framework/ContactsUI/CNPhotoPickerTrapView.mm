@interface CNPhotoPickerTrapView
- (CNPhotoPickerTrapView)initWithFrame:(CGRect)frame;
@end

@implementation CNPhotoPickerTrapView

- (CNPhotoPickerTrapView)initWithFrame:(CGRect)frame
{
  v46[1] = *MEMORY[0x1E69E9840];
  v41.receiver = self;
  v41.super_class = CNPhotoPickerTrapView;
  v3 = [(CNPhotoPickerTrapView *)&v41 initWithFrame:frame.origin.x, frame.origin.y, frame.size.width, frame.size.height];
  if (v3)
  {
    systemBackgroundColor = [MEMORY[0x1E69DC888] systemBackgroundColor];
    [(CNPhotoPickerTrapView *)v3 setBackgroundColor:systemBackgroundColor];

    v5 = objc_alloc(MEMORY[0x1E69DCC10]);
    v6 = [v5 initWithFrame:{*MEMORY[0x1E695F058], *(MEMORY[0x1E695F058] + 8), *(MEMORY[0x1E695F058] + 16), *(MEMORY[0x1E695F058] + 24)}];
    [(CNPhotoPickerTrapView *)v3 setLabel:v6];

    label = [(CNPhotoPickerTrapView *)v3 label];
    [label setTranslatesAutoresizingMaskIntoConstraints:0];

    secondaryLabelColor = [MEMORY[0x1E69DC888] secondaryLabelColor];
    label2 = [(CNPhotoPickerTrapView *)v3 label];
    [label2 setTextColor:secondaryLabelColor];

    v40 = [MEMORY[0x1E69DB880] preferredFontDescriptorWithTextStyle:*MEMORY[0x1E69DDD28]];
    v45 = *MEMORY[0x1E69DB8F0];
    v43 = *MEMORY[0x1E69DB918];
    v44 = &unk_1F0D4B4F0;
    v10 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v44 forKeys:&v43 count:1];
    v46[0] = v10;
    v11 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v46 forKeys:&v45 count:1];
    v39 = [v40 fontDescriptorByAddingAttributes:v11];

    v12 = [MEMORY[0x1E69DB878] fontWithDescriptor:v39 size:0.0];
    label3 = [(CNPhotoPickerTrapView *)v3 label];
    [label3 setFont:v12];

    label4 = [(CNPhotoPickerTrapView *)v3 label];
    [label4 setNumberOfLines:0];

    label5 = [(CNPhotoPickerTrapView *)v3 label];
    [label5 setTextAlignment:1];

    label6 = [(CNPhotoPickerTrapView *)v3 label];
    [(CNPhotoPickerTrapView *)v3 addSubview:label6];

    label7 = [(CNPhotoPickerTrapView *)v3 label];
    widthAnchor = [label7 widthAnchor];
    safeAreaLayoutGuide = [(CNPhotoPickerTrapView *)v3 safeAreaLayoutGuide];
    widthAnchor2 = [safeAreaLayoutGuide widthAnchor];
    v34 = [widthAnchor constraintLessThanOrEqualToAnchor:widthAnchor2 multiplier:1.0 constant:-20.0];
    v42[0] = v34;
    label8 = [(CNPhotoPickerTrapView *)v3 label];
    heightAnchor = [label8 heightAnchor];
    safeAreaLayoutGuide2 = [(CNPhotoPickerTrapView *)v3 safeAreaLayoutGuide];
    heightAnchor2 = [safeAreaLayoutGuide2 heightAnchor];
    v29 = [heightAnchor constraintLessThanOrEqualToAnchor:heightAnchor2 multiplier:1.0 constant:-20.0];
    v42[1] = v29;
    label9 = [(CNPhotoPickerTrapView *)v3 label];
    centerXAnchor = [label9 centerXAnchor];
    safeAreaLayoutGuide3 = [(CNPhotoPickerTrapView *)v3 safeAreaLayoutGuide];
    centerXAnchor2 = [safeAreaLayoutGuide3 centerXAnchor];
    v19 = [centerXAnchor constraintEqualToAnchor:centerXAnchor2];
    v42[2] = v19;
    label10 = [(CNPhotoPickerTrapView *)v3 label];
    centerYAnchor = [label10 centerYAnchor];
    safeAreaLayoutGuide4 = [(CNPhotoPickerTrapView *)v3 safeAreaLayoutGuide];
    centerYAnchor2 = [safeAreaLayoutGuide4 centerYAnchor];
    v24 = [centerYAnchor constraintEqualToAnchor:centerYAnchor2];
    v42[3] = v24;
    v25 = [MEMORY[0x1E695DEC8] arrayWithObjects:v42 count:4];

    [MEMORY[0x1E696ACD8] activateConstraints:v25];
  }

  return v3;
}

@end