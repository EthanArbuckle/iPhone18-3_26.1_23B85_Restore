@interface AutocompleteQueryStringMatch
- (AutocompleteQueryStringMatch)init;
- (AutocompleteQueryStringMatch)initWithQueryTerms:(id)a3 stringTerms:(id)a4 matchingTerms:(id)a5 totalMatchLength:(unint64_t)a6 fractionOfMatch:(double)a7 prefixLastTokenMatchCover:(id)a8 prefixMatchCover:(id)a9 prefixMatchPosition:(id)a10 prefixMatchesWordBoundary:(BOOL)a11 firstPrefixToken:(id)a12 secondPrefixToken:(id)a13;
@end

@implementation AutocompleteQueryStringMatch

- (AutocompleteQueryStringMatch)initWithQueryTerms:(id)a3 stringTerms:(id)a4 matchingTerms:(id)a5 totalMatchLength:(unint64_t)a6 fractionOfMatch:(double)a7 prefixLastTokenMatchCover:(id)a8 prefixMatchCover:(id)a9 prefixMatchPosition:(id)a10 prefixMatchesWordBoundary:(BOOL)a11 firstPrefixToken:(id)a12 secondPrefixToken:(id)a13
{
  v35 = a3;
  v19 = a4;
  v20 = a5;
  v34 = a8;
  v33 = a9;
  v32 = a10;
  v21 = a12;
  v22 = a13;
  v36.receiver = self;
  v36.super_class = AutocompleteQueryStringMatch;
  v23 = [(AutocompleteQueryStringMatch *)&v36 init];
  if (v23)
  {
    v24 = [v35 copy];
    queryTerms = v23->_queryTerms;
    v23->_queryTerms = v24;

    v26 = [v19 copy];
    stringTerms = v23->_stringTerms;
    v23->_stringTerms = v26;

    v28 = [v20 copy];
    matchingTerms = v23->_matchingTerms;
    v23->_matchingTerms = v28;

    v23->_totalMatchLength = a6;
    v23->_fractionOfMatch = a7;
    objc_storeStrong(&v23->_prefixLastTokenMatchCover, a8);
    objc_storeStrong(&v23->_prefixMatchCover, a9);
    objc_storeStrong(&v23->_prefixMatchPosition, a10);
    v23->_prefixMatchesWordBoundary = a11;
    objc_storeStrong(&v23->_firstPrefixToken, a12);
    objc_storeStrong(&v23->_secondPrefixToken, a13);
  }

  return v23;
}

- (AutocompleteQueryStringMatch)init
{
  [(AutocompleteQueryStringMatch *)self doesNotRecognizeSelector:a2];

  return 0;
}

@end