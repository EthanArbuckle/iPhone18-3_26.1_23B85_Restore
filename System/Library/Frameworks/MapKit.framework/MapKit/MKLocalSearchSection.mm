@interface MKLocalSearchSection
- (MKLocalSearchSection)initWithResults:(id)results title:(id)title shouldInterleaveClientResults:(BOOL)clientResults enforceServerResultsOrder:(BOOL)order enableMapsSuggestServerReranking:(BOOL)reranking isSectionForClientOnlyResults:(BOOL)onlyResults includedClientResultTypes:(id)types excludedClientResultTypes:(id)self0;
@end

@implementation MKLocalSearchSection

- (MKLocalSearchSection)initWithResults:(id)results title:(id)title shouldInterleaveClientResults:(BOOL)clientResults enforceServerResultsOrder:(BOOL)order enableMapsSuggestServerReranking:(BOOL)reranking isSectionForClientOnlyResults:(BOOL)onlyResults includedClientResultTypes:(id)types excludedClientResultTypes:(id)self0
{
  resultsCopy = results;
  titleCopy = title;
  typesCopy = types;
  resultTypesCopy = resultTypes;
  v26.receiver = self;
  v26.super_class = MKLocalSearchSection;
  v19 = [(MKLocalSearchSection *)&v26 init];
  if (v19)
  {
    v20 = [resultsCopy copy];
    results = v19->_results;
    v19->_results = v20;

    v22 = [titleCopy copy];
    title = v19->_title;
    v19->_title = v22;

    v19->_shouldInterleaveClientResults = clientResults;
    v19->_enforceServerResultsOrder = order;
    v19->_enableMapsSuggestServerReranking = reranking;
    v19->_isSectionForClientOnlyResults = onlyResults;
    objc_storeStrong(&v19->_includedClientResultTypes, types);
    objc_storeStrong(&v19->_excludedClientResultTypes, resultTypes);
  }

  return v19;
}

@end