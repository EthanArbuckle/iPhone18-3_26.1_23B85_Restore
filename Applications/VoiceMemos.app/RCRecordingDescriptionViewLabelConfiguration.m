@interface RCRecordingDescriptionViewLabelConfiguration
+ (id)emptyConfiguration;
+ (id)recordingCollectionViewCellConfiguration;
+ (id)recordingViewConfiguration;
+ (id)selectedRecordingCollectionViewCellConfiguration;
- (RCRecordingDescriptionViewLabelConfiguration)initWithRecordingTitleTextColor:(id)a3 recordingTitleEditingTintColor:(id)a4 subtitleTextColor:(id)a5;
- (id)_initWithStyle:(unint64_t)a3;
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

- (RCRecordingDescriptionViewLabelConfiguration)initWithRecordingTitleTextColor:(id)a3 recordingTitleEditingTintColor:(id)a4 subtitleTextColor:(id)a5
{
  v9 = a3;
  v10 = a4;
  v11 = a5;
  v15.receiver = self;
  v15.super_class = RCRecordingDescriptionViewLabelConfiguration;
  v12 = [(RCRecordingDescriptionViewLabelConfiguration *)&v15 init];
  v13 = v12;
  if (v12)
  {
    objc_storeStrong(&v12->_recordingTitleTextColor, a3);
    objc_storeStrong(&v13->_recordingTitleEditingTintColor, a4);
    objc_storeStrong(&v13->_subtitleTextColor, a5);
  }

  return v13;
}

- (id)_initWithStyle:(unint64_t)a3
{
  v22.receiver = self;
  v22.super_class = RCRecordingDescriptionViewLabelConfiguration;
  v4 = [(RCRecordingDescriptionViewLabelConfiguration *)&v22 init];
  if (v4)
  {
    v5 = +[RCRecorderStyleProvider sharedStyleProvider];
    v6 = v5;
    switch(a3)
    {
      case 3uLL:
        v16 = [v5 recordingCardPrimaryLabelFontColor];
        recordingTitleTextColor = v4->_recordingTitleTextColor;
        v4->_recordingTitleTextColor = v16;

        v11 = [v6 recordingCardPrimaryLabelFontColor];
        break;
      case 2uLL:
        v12 = [v5 recordingCollectionViewSelectedCellTextColor];
        v13 = v4->_recordingTitleTextColor;
        v4->_recordingTitleTextColor = v12;

        v14 = [v6 recordingCollectionViewSelectedCellTextColor];
        recordingTitleEditingTintColor = v4->_recordingTitleEditingTintColor;
        v4->_recordingTitleEditingTintColor = v14;

        v11 = [v6 recordingCollectionViewSelectedCellTextColor];
        break;
      case 1uLL:
        v7 = [v5 recordingCollectionViewCellTextColor];
        v8 = v4->_recordingTitleTextColor;
        v4->_recordingTitleTextColor = v7;

        v9 = [v6 recordingCollectionViewCellTextColor];
        v10 = v4->_recordingTitleEditingTintColor;
        v4->_recordingTitleEditingTintColor = v9;

        v11 = [v6 recordingCollectionViewCellTextColor];
        break;
      default:
LABEL_9:

        return v4;
    }

    v18 = v11;
    [v6 descriptionViewSecondaryLabelAlpha];
    v19 = [v18 colorWithAlphaComponent:?];
    subtitleTextColor = v4->_subtitleTextColor;
    v4->_subtitleTextColor = v19;

    goto LABEL_9;
  }

  return v4;
}

@end