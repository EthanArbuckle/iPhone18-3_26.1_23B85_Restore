@interface AAUITrustedContactCell
- (AAUITrustedContactCell)initWithStyle:(int64_t)a3 reuseIdentifier:(id)a4;
- (CGSize)systemLayoutSizeFittingSize:(CGSize)a3 withHorizontalFittingPriority:(float)a4 verticalFittingPriority:(float)a5;
- (void)updateWithContact:(id)a3 pictureStore:(id)a4;
@end

@implementation AAUITrustedContactCell

- (AAUITrustedContactCell)initWithStyle:(int64_t)a3 reuseIdentifier:(id)a4
{
  v9.receiver = self;
  v9.super_class = AAUITrustedContactCell;
  v4 = [(AAUITrustedContactCell *)&v9 initWithStyle:a3 reuseIdentifier:a4];
  v5 = v4;
  if (v4)
  {
    [(AAUITrustedContactCell *)v4 setSelectionStyle:0];
    v6 = [(AAUITrustedContactCell *)v5 imageView];
    [v6 setContentMode:4];

    v7 = [MEMORY[0x1E69DC888] secondarySystemBackgroundColor];
    [(AAUITrustedContactCell *)v5 setBackgroundColor:v7];
  }

  return v5;
}

- (CGSize)systemLayoutSizeFittingSize:(CGSize)a3 withHorizontalFittingPriority:(float)a4 verticalFittingPriority:(float)a5
{
  v7.receiver = self;
  v7.super_class = AAUITrustedContactCell;
  [(AAUITrustedContactCell *)&v7 systemLayoutSizeFittingSize:a3.width withHorizontalFittingPriority:a3.height verticalFittingPriority:?];
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
  v31[1] = *MEMORY[0x1E69E9840];
  v5 = a3;
  v6 = a4;
  v7 = [MEMORY[0x1E69DCC28] subtitleCellConfiguration];
  v8 = [MEMORY[0x1E69DB878] _preferredFontForTextStyle:*MEMORY[0x1E69DDCF8] weight:*MEMORY[0x1E69DB980]];
  v9 = objc_alloc(MEMORY[0x1E696AAB0]);
  v10 = [v5 displayName];
  v11 = *MEMORY[0x1E69DB648];
  v30 = *MEMORY[0x1E69DB648];
  v31[0] = v8;
  v12 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v31 forKeys:&v30 count:1];
  v13 = [v9 initWithString:v10 attributes:v12];

  [v7 setAttributedText:v13];
  v14 = [v5 detailsText];
  v15 = [v14 length];

  if (v15)
  {
    v16 = [v5 detailsText];
  }

  else
  {
    v17 = [v5 displayName];
    v18 = [v5 handle];
    v19 = [v17 isEqualToString:v18];

    if (v19)
    {
      v16 = 0;
    }

    else
    {
      v16 = [v5 handle];
    }
  }

  if ([v16 length])
  {
    v20 = [MEMORY[0x1E69DB878] preferredFontForTextStyle:*MEMORY[0x1E69DDD28]];
    v28[0] = *MEMORY[0x1E69DB650];
    v21 = [MEMORY[0x1E69DC888] secondaryLabelColor];
    v28[1] = v11;
    v29[0] = v21;
    v29[1] = v20;
    v22 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v29 forKeys:v28 count:2];

    v23 = [objc_alloc(MEMORY[0x1E696AAB0]) initWithString:v16 attributes:v22];
    [v7 setSecondaryAttributedText:v23];
  }

  v24 = [v6 profilePictureForLocalContact:v5];
  v25 = [v24 imageByPreparingThumbnailOfSize:{40.0, 40.0}];
  [v7 setImage:v25];

  [v27 setContentConfiguration:v7];
}

@end