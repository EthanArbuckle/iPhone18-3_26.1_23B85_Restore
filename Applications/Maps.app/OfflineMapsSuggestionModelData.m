@interface OfflineMapsSuggestionModelData
- (OfflineMapsSuggestionModelData)initWithTipTitle:(id)a3 tipSubtitle:(id)a4 tipActionTitle:(id)a5 tipImage:(id)a6 mapRegion:(id)a7 regionName:(id)a8 suggestionSubtitle:(id)a9 suggestionType:(int)a10;
@end

@implementation OfflineMapsSuggestionModelData

- (OfflineMapsSuggestionModelData)initWithTipTitle:(id)a3 tipSubtitle:(id)a4 tipActionTitle:(id)a5 tipImage:(id)a6 mapRegion:(id)a7 regionName:(id)a8 suggestionSubtitle:(id)a9 suggestionType:(int)a10
{
  v26 = a3;
  v25 = a4;
  v24 = a5;
  v23 = a6;
  v22 = a7;
  v17 = a8;
  v18 = a9;
  v27.receiver = self;
  v27.super_class = OfflineMapsSuggestionModelData;
  v19 = [(OfflineMapsSuggestionModelData *)&v27 init];
  v20 = v19;
  if (v19)
  {
    objc_storeStrong(&v19->_tipTitle, a3);
    objc_storeStrong(&v20->_tipSubtitle, a4);
    objc_storeStrong(&v20->_tipActionTitle, a5);
    objc_storeStrong(&v20->_tipImage, a6);
    objc_storeStrong(&v20->_mapRegion, a7);
    objc_storeStrong(&v20->_regionName, a8);
    objc_storeStrong(&v20->_suggestionSubtitle, a9);
    v20->_suggestionType = a10;
  }

  return v20;
}

@end