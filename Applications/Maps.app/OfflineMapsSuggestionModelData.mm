@interface OfflineMapsSuggestionModelData
- (OfflineMapsSuggestionModelData)initWithTipTitle:(id)title tipSubtitle:(id)subtitle tipActionTitle:(id)actionTitle tipImage:(id)image mapRegion:(id)region regionName:(id)name suggestionSubtitle:(id)suggestionSubtitle suggestionType:(int)self0;
@end

@implementation OfflineMapsSuggestionModelData

- (OfflineMapsSuggestionModelData)initWithTipTitle:(id)title tipSubtitle:(id)subtitle tipActionTitle:(id)actionTitle tipImage:(id)image mapRegion:(id)region regionName:(id)name suggestionSubtitle:(id)suggestionSubtitle suggestionType:(int)self0
{
  titleCopy = title;
  subtitleCopy = subtitle;
  actionTitleCopy = actionTitle;
  imageCopy = image;
  regionCopy = region;
  nameCopy = name;
  suggestionSubtitleCopy = suggestionSubtitle;
  v27.receiver = self;
  v27.super_class = OfflineMapsSuggestionModelData;
  v19 = [(OfflineMapsSuggestionModelData *)&v27 init];
  v20 = v19;
  if (v19)
  {
    objc_storeStrong(&v19->_tipTitle, title);
    objc_storeStrong(&v20->_tipSubtitle, subtitle);
    objc_storeStrong(&v20->_tipActionTitle, actionTitle);
    objc_storeStrong(&v20->_tipImage, image);
    objc_storeStrong(&v20->_mapRegion, region);
    objc_storeStrong(&v20->_regionName, name);
    objc_storeStrong(&v20->_suggestionSubtitle, suggestionSubtitle);
    v20->_suggestionType = type;
  }

  return v20;
}

@end