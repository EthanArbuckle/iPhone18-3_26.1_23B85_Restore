@interface AAUITrustedContactCell
- (AAUITrustedContactCell)initWithStyle:(int64_t)style reuseIdentifier:(id)identifier;
- (CGSize)systemLayoutSizeFittingSize:(CGSize)size withHorizontalFittingPriority:(float)priority verticalFittingPriority:(float)fittingPriority;
- (void)updateWithContact:(id)contact pictureStore:(id)store;
@end

@implementation AAUITrustedContactCell

- (AAUITrustedContactCell)initWithStyle:(int64_t)style reuseIdentifier:(id)identifier
{
  v9.receiver = self;
  v9.super_class = AAUITrustedContactCell;
  v4 = [(AAUITrustedContactCell *)&v9 initWithStyle:style reuseIdentifier:identifier];
  v5 = v4;
  if (v4)
  {
    [(AAUITrustedContactCell *)v4 setSelectionStyle:0];
    imageView = [(AAUITrustedContactCell *)v5 imageView];
    [imageView setContentMode:4];

    secondarySystemBackgroundColor = [MEMORY[0x1E69DC888] secondarySystemBackgroundColor];
    [(AAUITrustedContactCell *)v5 setBackgroundColor:secondarySystemBackgroundColor];
  }

  return v5;
}

- (CGSize)systemLayoutSizeFittingSize:(CGSize)size withHorizontalFittingPriority:(float)priority verticalFittingPriority:(float)fittingPriority
{
  v7.receiver = self;
  v7.super_class = AAUITrustedContactCell;
  [(AAUITrustedContactCell *)&v7 systemLayoutSizeFittingSize:size.width withHorizontalFittingPriority:size.height verticalFittingPriority:?];
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
  v31[1] = *MEMORY[0x1E69E9840];
  contactCopy = contact;
  storeCopy = store;
  subtitleCellConfiguration = [MEMORY[0x1E69DCC28] subtitleCellConfiguration];
  v8 = [MEMORY[0x1E69DB878] _preferredFontForTextStyle:*MEMORY[0x1E69DDCF8] weight:*MEMORY[0x1E69DB980]];
  v9 = objc_alloc(MEMORY[0x1E696AAB0]);
  displayName = [contactCopy displayName];
  v11 = *MEMORY[0x1E69DB648];
  v30 = *MEMORY[0x1E69DB648];
  v31[0] = v8;
  v12 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v31 forKeys:&v30 count:1];
  v13 = [v9 initWithString:displayName attributes:v12];

  [subtitleCellConfiguration setAttributedText:v13];
  detailsText = [contactCopy detailsText];
  v15 = [detailsText length];

  if (v15)
  {
    detailsText2 = [contactCopy detailsText];
  }

  else
  {
    displayName2 = [contactCopy displayName];
    handle = [contactCopy handle];
    v19 = [displayName2 isEqualToString:handle];

    if (v19)
    {
      detailsText2 = 0;
    }

    else
    {
      detailsText2 = [contactCopy handle];
    }
  }

  if ([detailsText2 length])
  {
    v20 = [MEMORY[0x1E69DB878] preferredFontForTextStyle:*MEMORY[0x1E69DDD28]];
    v28[0] = *MEMORY[0x1E69DB650];
    secondaryLabelColor = [MEMORY[0x1E69DC888] secondaryLabelColor];
    v28[1] = v11;
    v29[0] = secondaryLabelColor;
    v29[1] = v20;
    v22 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v29 forKeys:v28 count:2];

    v23 = [objc_alloc(MEMORY[0x1E696AAB0]) initWithString:detailsText2 attributes:v22];
    [subtitleCellConfiguration setSecondaryAttributedText:v23];
  }

  v24 = [storeCopy profilePictureForLocalContact:contactCopy];
  v25 = [v24 imageByPreparingThumbnailOfSize:{40.0, 40.0}];
  [subtitleCellConfiguration setImage:v25];

  [v27 setContentConfiguration:subtitleCellConfiguration];
}

@end