@interface AAUISuggestedContactCell
- (AAUISuggestedContactCell)initWithStyle:(int64_t)style reuseIdentifier:(id)identifier;
- (CGSize)systemLayoutSizeFittingSize:(CGSize)size withHorizontalFittingPriority:(float)priority verticalFittingPriority:(float)fittingPriority;
- (void)setSelected:(BOOL)selected animated:(BOOL)animated;
- (void)updateWithContact:(id)contact pictureStore:(id)store;
@end

@implementation AAUISuggestedContactCell

- (AAUISuggestedContactCell)initWithStyle:(int64_t)style reuseIdentifier:(id)identifier
{
  v12.receiver = self;
  v12.super_class = AAUISuggestedContactCell;
  v4 = [(AAUISuggestedContactCell *)&v12 initWithStyle:style reuseIdentifier:identifier];
  if (v4)
  {
    v5 = [objc_alloc(MEMORY[0x1E69DCAE0]) initWithFrame:{0.0, 0.0, 24.0, 24.0}];
    accessoryImageView = v4->_accessoryImageView;
    v4->_accessoryImageView = v5;

    v7 = [MEMORY[0x1E69DCAB8] systemImageNamed:@"circle"];
    [(UIImageView *)v4->_accessoryImageView setImage:v7];

    systemGray3Color = [MEMORY[0x1E69DC888] systemGray3Color];
    [(UIImageView *)v4->_accessoryImageView setTintColor:systemGray3Color];

    [(UIImageView *)v4->_accessoryImageView setContentMode:1];
    [(AAUISuggestedContactCell *)v4 setAccessoryView:v4->_accessoryImageView];
    [(AAUISuggestedContactCell *)v4 setSelectionStyle:0];
    imageView = [(AAUISuggestedContactCell *)v4 imageView];
    [imageView setContentMode:4];

    secondarySystemBackgroundColor = [MEMORY[0x1E69DC888] secondarySystemBackgroundColor];
    [(AAUISuggestedContactCell *)v4 setBackgroundColor:secondarySystemBackgroundColor];
  }

  return v4;
}

- (CGSize)systemLayoutSizeFittingSize:(CGSize)size withHorizontalFittingPriority:(float)priority verticalFittingPriority:(float)fittingPriority
{
  v7.receiver = self;
  v7.super_class = AAUISuggestedContactCell;
  [(AAUISuggestedContactCell *)&v7 systemLayoutSizeFittingSize:size.width withHorizontalFittingPriority:size.height verticalFittingPriority:?];
  if (v6 < 58.0)
  {
    v6 = 58.0;
  }

  result.height = v6;
  result.width = v5;
  return result;
}

- (void)updateWithContact:(id)contact pictureStore:(id)store
{
  v29[1] = *MEMORY[0x1E69E9840];
  contactCopy = contact;
  storeCopy = store;
  subtitleCellConfiguration = [MEMORY[0x1E69DCC28] subtitleCellConfiguration];
  v8 = [MEMORY[0x1E69DB878] _preferredFontForTextStyle:*MEMORY[0x1E69DDCF8] weight:*MEMORY[0x1E69DB980]];
  v9 = objc_alloc(MEMORY[0x1E696AAB0]);
  displayName = [contactCopy displayName];
  v11 = *MEMORY[0x1E69DB648];
  v28 = *MEMORY[0x1E69DB648];
  v29[0] = v8;
  v12 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v29 forKeys:&v28 count:1];
  v13 = [v9 initWithString:displayName attributes:v12];

  [subtitleCellConfiguration setAttributedText:v13];
  detailsText = [contactCopy detailsText];
  v15 = [detailsText length];

  if (v15)
  {
    v16 = [MEMORY[0x1E69DB878] preferredFontForTextStyle:*MEMORY[0x1E69DDD28]];
    v26[0] = *MEMORY[0x1E69DB650];
    secondaryLabelColor = [MEMORY[0x1E69DC888] secondaryLabelColor];
    v26[1] = v11;
    v27[0] = secondaryLabelColor;
    v27[1] = v16;
    v18 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v27 forKeys:v26 count:2];

    v19 = objc_alloc(MEMORY[0x1E696AAB0]);
    detailsText2 = [contactCopy detailsText];
    v21 = [v19 initWithString:detailsText2 attributes:v18];

    [subtitleCellConfiguration setSecondaryAttributedText:v21];
  }

  v22 = [storeCopy profilePictureForLocalContact:{contactCopy, self}];
  v23 = [v22 imageByPreparingThumbnailOfSize:{40.0, 40.0}];
  [subtitleCellConfiguration setImage:v23];

  [v25 setContentConfiguration:subtitleCellConfiguration];
}

- (void)setSelected:(BOOL)selected animated:(BOOL)animated
{
  selectedCopy = selected;
  v10.receiver = self;
  v10.super_class = AAUISuggestedContactCell;
  [(AAUISuggestedContactCell *)&v10 setSelected:selected animated:animated];
  if (selectedCopy)
  {
    v6 = [MEMORY[0x1E69DCAB8] systemImageNamed:@"checkmark.circle.fill"];
    p_accessoryImageView = &self->_accessoryImageView;
    [(UIImageView *)self->_accessoryImageView setImage:v6];

    [MEMORY[0x1E69DC888] linkColor];
  }

  else
  {
    v8 = [MEMORY[0x1E69DCAB8] systemImageNamed:@"circle"];
    p_accessoryImageView = &self->_accessoryImageView;
    [(UIImageView *)self->_accessoryImageView setImage:v8];

    [MEMORY[0x1E69DC888] systemGray4Color];
  }
  v9 = ;
  [(UIImageView *)*p_accessoryImageView setTintColor:v9];
}

@end