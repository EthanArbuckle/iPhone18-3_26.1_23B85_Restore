@interface MKLocalSearchSection
- (MKLocalSearchSection)initWithResults:(id)a3 title:(id)a4 shouldInterleaveClientResults:(BOOL)a5 enforceServerResultsOrder:(BOOL)a6 enableMapsSuggestServerReranking:(BOOL)a7 isSectionForClientOnlyResults:(BOOL)a8 includedClientResultTypes:(id)a9 excludedClientResultTypes:(id)a10;
@end

@implementation MKLocalSearchSection

- (MKLocalSearchSection)initWithResults:(id)a3 title:(id)a4 shouldInterleaveClientResults:(BOOL)a5 enforceServerResultsOrder:(BOOL)a6 enableMapsSuggestServerReranking:(BOOL)a7 isSectionForClientOnlyResults:(BOOL)a8 includedClientResultTypes:(id)a9 excludedClientResultTypes:(id)a10
{
  v15 = a3;
  v16 = a4;
  v17 = a9;
  v18 = a10;
  v26.receiver = self;
  v26.super_class = MKLocalSearchSection;
  v19 = [(MKLocalSearchSection *)&v26 init];
  if (v19)
  {
    v20 = [v15 copy];
    results = v19->_results;
    v19->_results = v20;

    v22 = [v16 copy];
    title = v19->_title;
    v19->_title = v22;

    v19->_shouldInterleaveClientResults = a5;
    v19->_enforceServerResultsOrder = a6;
    v19->_enableMapsSuggestServerReranking = a7;
    v19->_isSectionForClientOnlyResults = a8;
    objc_storeStrong(&v19->_includedClientResultTypes, a9);
    objc_storeStrong(&v19->_excludedClientResultTypes, a10);
  }

  return v19;
}

@end