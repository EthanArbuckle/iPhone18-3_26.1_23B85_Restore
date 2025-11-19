@interface AAUISuggestedContactCell
- (AAUISuggestedContactCell)initWithStyle:(int64_t)a3 reuseIdentifier:(id)a4;
- (CGSize)systemLayoutSizeFittingSize:(CGSize)a3 withHorizontalFittingPriority:(float)a4 verticalFittingPriority:(float)a5;
- (void)setSelected:(BOOL)a3 animated:(BOOL)a4;
- (void)updateWithContact:(id)a3 pictureStore:(id)a4;
@end

@implementation AAUISuggestedContactCell

- (AAUISuggestedContactCell)initWithStyle:(int64_t)a3 reuseIdentifier:(id)a4
{
  v12.receiver = self;
  v12.super_class = AAUISuggestedContactCell;
  v4 = [(AAUISuggestedContactCell *)&v12 initWithStyle:a3 reuseIdentifier:a4];
  if (v4)
  {
    v5 = [objc_alloc(MEMORY[0x1E69DCAE0]) initWithFrame:{0.0, 0.0, 24.0, 24.0}];
    accessoryImageView = v4->_accessoryImageView;
    v4->_accessoryImageView = v5;

    v7 = [MEMORY[0x1E69DCAB8] systemImageNamed:@"circle"];
    [(UIImageView *)v4->_accessoryImageView setImage:v7];

    v8 = [MEMORY[0x1E69DC888] systemGray3Color];
    [(UIImageView *)v4->_accessoryImageView setTintColor:v8];

    [(UIImageView *)v4->_accessoryImageView setContentMode:1];
    [(AAUISuggestedContactCell *)v4 setAccessoryView:v4->_accessoryImageView];
    [(AAUISuggestedContactCell *)v4 setSelectionStyle:0];
    v9 = [(AAUISuggestedContactCell *)v4 imageView];
    [v9 setContentMode:4];

    v10 = [MEMORY[0x1E69DC888] secondarySystemBackgroundColor];
    [(AAUISuggestedContactCell *)v4 setBackgroundColor:v10];
  }

  return v4;
}

- (CGSize)systemLayoutSizeFittingSize:(CGSize)a3 withHorizontalFittingPriority:(float)a4 verticalFittingPriority:(float)a5
{
  v7.receiver = self;
  v7.super_class = AAUISuggestedContactCell;
  [(AAUISuggestedContactCell *)&v7 systemLayoutSizeFittingSize:a3.width withHorizontalFittingPriority:a3.height verticalFittingPriority:?];
  if (v6 < 58.0)
  {
    v6 = 58.0;
  }

  result.height = v6;
  result.width = v5;
  return result;
}

- (void)updateWithContact:(id)a3 pictureStore:(id)a4
{
  v29[1] = *MEMORY[0x1E69E9840];
  v5 = a3;
  v6 = a4;
  v7 = [MEMORY[0x1E69DCC28] subtitleCellConfiguration];
  v8 = [MEMORY[0x1E69DB878] _preferredFontForTextStyle:*MEMORY[0x1E69DDCF8] weight:*MEMORY[0x1E69DB980]];
  v9 = objc_alloc(MEMORY[0x1E696AAB0]);
  v10 = [v5 displayName];
  v11 = *MEMORY[0x1E69DB648];
  v28 = *MEMORY[0x1E69DB648];
  v29[0] = v8;
  v12 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v29 forKeys:&v28 count:1];
  v13 = [v9 initWithString:v10 attributes:v12];

  [v7 setAttributedText:v13];
  v14 = [v5 detailsText];
  v15 = [v14 length];

  if (v15)
  {
    v16 = [MEMORY[0x1E69DB878] preferredFontForTextStyle:*MEMORY[0x1E69DDD28]];
    v26[0] = *MEMORY[0x1E69DB650];
    v17 = [MEMORY[0x1E69DC888] secondaryLabelColor];
    v26[1] = v11;
    v27[0] = v17;
    v27[1] = v16;
    v18 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v27 forKeys:v26 count:2];

    v19 = objc_alloc(MEMORY[0x1E696AAB0]);
    v20 = [v5 detailsText];
    v21 = [v19 initWithString:v20 attributes:v18];

    [v7 setSecondaryAttributedText:v21];
  }

  v22 = [v6 profilePictureForLocalContact:{v5, self}];
  v23 = [v22 imageByPreparingThumbnailOfSize:{40.0, 40.0}];
  [v7 setImage:v23];

  [v25 setContentConfiguration:v7];
}

- (void)setSelected:(BOOL)a3 animated:(BOOL)a4
{
  v4 = a3;
  v10.receiver = self;
  v10.super_class = AAUISuggestedContactCell;
  [(AAUISuggestedContactCell *)&v10 setSelected:a3 animated:a4];
  if (v4)
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