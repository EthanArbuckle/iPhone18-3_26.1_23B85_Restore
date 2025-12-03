@interface RCRecordingDescriptionViewLabelConfiguration
+ (id)emptyConfiguration;
+ (id)recordingCollectionViewCellConfiguration;
+ (id)recordingViewConfiguration;
+ (id)selectedRecordingCollectionViewCellConfiguration;
- (RCRecordingDescriptionViewLabelConfiguration)initWithRecordingTitleTextColor:(id)color recordingTitleEditingTintColor:(id)tintColor subtitleTextColor:(id)textColor;
- (id)_initWithStyle:(unint64_t)style;
@end

@implementation RCRecordingDescriptionViewLabelConfiguration

+ (id)recordingViewConfiguration
{
  v2 = [[RCRecordingDescriptionViewLabelConfiguration alloc] _initWithStyle:3];

  return v2;
}

+ (id)recordingCollectionViewCellConfiguration
{
  v2 = [[RCRecordingDescriptionViewLabelConfiguration alloc] _initWithStyle:1];

  return v2;
}

+ (id)emptyConfiguration
{
  v2 = [[RCRecordingDescriptionViewLabelConfiguration alloc] _initWithStyle:0];

  return v2;
}

+ (id)selectedRecordingCollectionViewCellConfiguration
{
  v2 = [[RCRecordingDescriptionViewLabelConfiguration alloc] _initWithStyle:2];

  return v2;
}

- (RCRecordingDescriptionViewLabelConfiguration)initWithRecordingTitleTextColor:(id)color recordingTitleEditingTintColor:(id)tintColor subtitleTextColor:(id)textColor
{
  colorCopy = color;
  tintColorCopy = tintColor;
  textColorCopy = textColor;
  v15.receiver = self;
  v15.super_class = RCRecordingDescriptionViewLabelConfiguration;
  v12 = [(RCRecordingDescriptionViewLabelConfiguration *)&v15 init];
  v13 = v12;
  if (v12)
  {
    objc_storeStrong(&v12->_recordingTitleTextColor, color);
    objc_storeStrong(&v13->_recordingTitleEditingTintColor, tintColor);
    objc_storeStrong(&v13->_subtitleTextColor, textColor);
  }

  return v13;
}

- (id)_initWithStyle:(unint64_t)style
{
  v22.receiver = self;
  v22.super_class = RCRecordingDescriptionViewLabelConfiguration;
  v4 = [(RCRecordingDescriptionViewLabelConfiguration *)&v22 init];
  if (v4)
  {
    v5 = +[RCRecorderStyleProvider sharedStyleProvider];
    v6 = v5;
    switch(style)
    {
      case 3uLL:
        recordingCardPrimaryLabelFontColor = [v5 recordingCardPrimaryLabelFontColor];
        recordingTitleTextColor = v4->_recordingTitleTextColor;
        v4->_recordingTitleTextColor = recordingCardPrimaryLabelFontColor;

        recordingCardPrimaryLabelFontColor2 = [v6 recordingCardPrimaryLabelFontColor];
        break;
      case 2uLL:
        recordingCollectionViewSelectedCellTextColor = [v5 recordingCollectionViewSelectedCellTextColor];
        v13 = v4->_recordingTitleTextColor;
        v4->_recordingTitleTextColor = recordingCollectionViewSelectedCellTextColor;

        recordingCollectionViewSelectedCellTextColor2 = [v6 recordingCollectionViewSelectedCellTextColor];
        recordingTitleEditingTintColor = v4->_recordingTitleEditingTintColor;
        v4->_recordingTitleEditingTintColor = recordingCollectionViewSelectedCellTextColor2;

        recordingCardPrimaryLabelFontColor2 = [v6 recordingCollectionViewSelectedCellTextColor];
        break;
      case 1uLL:
        recordingCollectionViewCellTextColor = [v5 recordingCollectionViewCellTextColor];
        v8 = v4->_recordingTitleTextColor;
        v4->_recordingTitleTextColor = recordingCollectionViewCellTextColor;

        recordingCollectionViewCellTextColor2 = [v6 recordingCollectionViewCellTextColor];
        v10 = v4->_recordingTitleEditingTintColor;
        v4->_recordingTitleEditingTintColor = recordingCollectionViewCellTextColor2;

        recordingCardPrimaryLabelFontColor2 = [v6 recordingCollectionViewCellTextColor];
        break;
      default:
LABEL_9:

        return v4;
    }

    v18 = recordingCardPrimaryLabelFontColor2;
    [v6 descriptionViewSecondaryLabelAlpha];
    v19 = [v18 colorWithAlphaComponent:?];
    subtitleTextColor = v4->_subtitleTextColor;
    v4->_subtitleTextColor = v19;

    goto LABEL_9;
  }

  return v4;
}

@end