@interface MFPhotoPickerSectionHeaderView
- (MFPhotoPickerSectionHeaderView)initWithFrame:(CGRect)frame;
- (void)addAllPhotosTarget:(id)target action:(SEL)action;
@end

@implementation MFPhotoPickerSectionHeaderView

- (MFPhotoPickerSectionHeaderView)initWithFrame:(CGRect)frame
{
  v37[5] = *MEMORY[0x1E69E9840];
  v36.receiver = self;
  v36.super_class = MFPhotoPickerSectionHeaderView;
  v3 = [(MFPhotoPickerSectionHeaderView *)&v36 initWithFrame:frame.origin.x, frame.origin.y, frame.size.width, frame.size.height];
  if (v3)
  {
    v4 = objc_alloc(MEMORY[0x1E69DCC10]);
    v5 = [v4 initWithFrame:{*MEMORY[0x1E695F058], *(MEMORY[0x1E695F058] + 8), *(MEMORY[0x1E695F058] + 16), *(MEMORY[0x1E695F058] + 24)}];
    titleLabel = v3->_titleLabel;
    v3->_titleLabel = v5;

    [(UILabel *)v3->_titleLabel setTranslatesAutoresizingMaskIntoConstraints:0];
    secondaryLabelColor = [MEMORY[0x1E69DC888] secondaryLabelColor];
    [(UILabel *)v3->_titleLabel setTextColor:secondaryLabelColor];

    v8 = [MEMORY[0x1E69DB878] preferredFontForTextStyle:*MEMORY[0x1E69DDD40]];
    [(UILabel *)v3->_titleLabel setFont:v8];

    v9 = [MEMORY[0x1E69DC738] buttonWithType:1];
    actionButton = v3->_actionButton;
    v3->_actionButton = v9;

    [(UIButton *)v3->_actionButton setTranslatesAutoresizingMaskIntoConstraints:0];
    [(MFPhotoPickerSectionHeaderView *)v3 addSubview:v3->_titleLabel];
    [(MFPhotoPickerSectionHeaderView *)v3 addSubview:v3->_actionButton];
    v11 = MEMORY[0x1E696ACD8];
    leadingAnchor = [(UILabel *)v3->_titleLabel leadingAnchor];
    layoutMarginsGuide = [(MFPhotoPickerSectionHeaderView *)v3 layoutMarginsGuide];
    leadingAnchor2 = [layoutMarginsGuide leadingAnchor];
    v29 = [leadingAnchor constraintEqualToAnchor:8.0 constant:?];
    v37[0] = v29;
    layoutMarginsGuide2 = [(MFPhotoPickerSectionHeaderView *)v3 layoutMarginsGuide];
    trailingAnchor = [layoutMarginsGuide2 trailingAnchor];
    trailingAnchor2 = [(UIButton *)v3->_actionButton trailingAnchor];
    v26 = [trailingAnchor constraintEqualToAnchor:8.0 constant:?];
    v37[1] = v26;
    trailingAnchor3 = [(UILabel *)v3->_titleLabel trailingAnchor];
    leadingAnchor3 = [(UIButton *)v3->_actionButton leadingAnchor];
    v24 = [trailingAnchor3 constraintLessThanOrEqualToAnchor:0.0 constant:?];
    v37[2] = v24;
    centerYAnchor = [(UILabel *)v3->_titleLabel centerYAnchor];
    centerYAnchor2 = [(MFPhotoPickerSectionHeaderView *)v3 centerYAnchor];
    v13 = [centerYAnchor constraintEqualToAnchor:centerYAnchor2];
    v37[3] = v13;
    centerYAnchor3 = [(UIButton *)v3->_actionButton centerYAnchor];
    centerYAnchor4 = [(MFPhotoPickerSectionHeaderView *)v3 centerYAnchor];
    v16 = [centerYAnchor3 constraintEqualToAnchor:centerYAnchor4];
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

- (void)addAllPhotosTarget:(id)target action:(SEL)action
{
  targetCopy = target;
  actionButton = [(MFPhotoPickerSectionHeaderView *)self actionButton];
  [actionButton addTarget:targetCopy action:action forControlEvents:64];
}

@end