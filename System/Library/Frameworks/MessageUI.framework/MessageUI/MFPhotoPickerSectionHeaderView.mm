@interface MFPhotoPickerSectionHeaderView
- (MFPhotoPickerSectionHeaderView)initWithFrame:(CGRect)a3;
- (void)addAllPhotosTarget:(id)a3 action:(SEL)a4;
@end

@implementation MFPhotoPickerSectionHeaderView

- (MFPhotoPickerSectionHeaderView)initWithFrame:(CGRect)a3
{
  v37[5] = *MEMORY[0x1E69E9840];
  v36.receiver = self;
  v36.super_class = MFPhotoPickerSectionHeaderView;
  v3 = [(MFPhotoPickerSectionHeaderView *)&v36 initWithFrame:a3.origin.x, a3.origin.y, a3.size.width, a3.size.height];
  if (v3)
  {
    v4 = objc_alloc(MEMORY[0x1E69DCC10]);
    v5 = [v4 initWithFrame:{*MEMORY[0x1E695F058], *(MEMORY[0x1E695F058] + 8), *(MEMORY[0x1E695F058] + 16), *(MEMORY[0x1E695F058] + 24)}];
    titleLabel = v3->_titleLabel;
    v3->_titleLabel = v5;

    [(UILabel *)v3->_titleLabel setTranslatesAutoresizingMaskIntoConstraints:0];
    v7 = [MEMORY[0x1E69DC888] secondaryLabelColor];
    [(UILabel *)v3->_titleLabel setTextColor:v7];

    v8 = [MEMORY[0x1E69DB878] preferredFontForTextStyle:*MEMORY[0x1E69DDD40]];
    [(UILabel *)v3->_titleLabel setFont:v8];

    v9 = [MEMORY[0x1E69DC738] buttonWithType:1];
    actionButton = v3->_actionButton;
    v3->_actionButton = v9;

    [(UIButton *)v3->_actionButton setTranslatesAutoresizingMaskIntoConstraints:0];
    [(MFPhotoPickerSectionHeaderView *)v3 addSubview:v3->_titleLabel];
    [(MFPhotoPickerSectionHeaderView *)v3 addSubview:v3->_actionButton];
    v11 = MEMORY[0x1E696ACD8];
    v35 = [(UILabel *)v3->_titleLabel leadingAnchor];
    v31 = [(MFPhotoPickerSectionHeaderView *)v3 layoutMarginsGuide];
    v30 = [v31 leadingAnchor];
    v29 = [v35 constraintEqualToAnchor:8.0 constant:?];
    v37[0] = v29;
    v28 = [(MFPhotoPickerSectionHeaderView *)v3 layoutMarginsGuide];
    v34 = [v28 trailingAnchor];
    v27 = [(UIButton *)v3->_actionButton trailingAnchor];
    v26 = [v34 constraintEqualToAnchor:8.0 constant:?];
    v37[1] = v26;
    v33 = [(UILabel *)v3->_titleLabel trailingAnchor];
    v25 = [(UIButton *)v3->_actionButton leadingAnchor];
    v24 = [v33 constraintLessThanOrEqualToAnchor:0.0 constant:?];
    v37[2] = v24;
    v32 = [(UILabel *)v3->_titleLabel centerYAnchor];
    v12 = [(MFPhotoPickerSectionHeaderView *)v3 centerYAnchor];
    v13 = [v32 constraintEqualToAnchor:v12];
    v37[3] = v13;
    v14 = [(UIButton *)v3->_actionButton centerYAnchor];
    v15 = [(MFPhotoPickerSectionHeaderView *)v3 centerYAnchor];
    v16 = [v14 constraintEqualToAnchor:v15];
    v37[4] = v16;
    v17 = [MEMORY[0x1E695DEC8] arrayWithObjects:v37 count:5];
    [v11 activateConstraints:v17];

    v18 = [MEMORY[0x1E696AAE8] bundleForClass:objc_opt_class()];
    v19 = [v18 localizedStringForKey:@"PHOTO_PICKER_RECENT_PHOTOS" value:&stru_1F3CF3758 table:@"Main"];
    [(UILabel *)v3->_titleLabel setText:v19];

    v20 = v3->_actionButton;
    v21 = [MEMORY[0x1E696AAE8] bundleForClass:objc_opt_class()];
    v22 = [v21 localizedStringForKey:@"PHOTO_PICKER_ALL_PHOTOS" value:&stru_1F3CF3758 table:@"Main"];
    [(UIButton *)v20 setTitle:v22 forState:0];
  }

  return v3;
}

- (void)addAllPhotosTarget:(id)a3 action:(SEL)a4
{
  v7 = a3;
  v6 = [(MFPhotoPickerSectionHeaderView *)self actionButton];
  [v6 addTarget:v7 action:a4 forControlEvents:64];
}

@end