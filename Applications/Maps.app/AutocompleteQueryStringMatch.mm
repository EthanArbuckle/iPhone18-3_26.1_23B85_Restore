@interface AutocompleteQueryStringMatch
- (AutocompleteQueryStringMatch)init;
- (AutocompleteQueryStringMatch)initWithQueryTerms:(id)terms stringTerms:(id)stringTerms matchingTerms:(id)matchingTerms totalMatchLength:(unint64_t)length fractionOfMatch:(double)match prefixLastTokenMatchCover:(id)cover prefixMatchCover:(id)matchCover prefixMatchPosition:(id)self0 prefixMatchesWordBoundary:(BOOL)self1 firstPrefixToken:(id)self2 secondPrefixToken:(id)self3;
@end

@implementation AutocompleteQueryStringMatch

- (AutocompleteQueryStringMatch)initWithQueryTerms:(id)terms stringTerms:(id)stringTerms matchingTerms:(id)matchingTerms totalMatchLength:(unint64_t)length fractionOfMatch:(double)match prefixLastTokenMatchCover:(id)cover prefixMatchCover:(id)matchCover prefixMatchPosition:(id)self0 prefixMatchesWordBoundary:(BOOL)self1 firstPrefixToken:(id)self2 secondPrefixToken:(id)self3
{
  termsCopy = terms;
  stringTermsCopy = stringTerms;
  matchingTermsCopy = matchingTerms;
  coverCopy = cover;
  matchCoverCopy = matchCover;
  positionCopy = position;
  tokenCopy = token;
  prefixTokenCopy = prefixToken;
  v36.receiver = self;
  v36.super_class = AutocompleteQueryStringMatch;
  v23 = [(AutocompleteQueryStringMatch *)&v36 init];
  if (v23)
  {
    v24 = [termsCopy copy];
    queryTerms = v23->_queryTerms;
    v23->_queryTerms = v24;

    v26 = [stringTermsCopy copy];
    stringTerms = v23->_stringTerms;
    v23->_stringTerms = v26;

    v28 = [matchingTermsCopy copy];
    matchingTerms = v23->_matchingTerms;
    v23->_matchingTerms = v28;

    v23->_totalMatchLength = length;
    v23->_fractionOfMatch = match;
    objc_storeStrong(&v23->_prefixLastTokenMatchCover, cover);
    objc_storeStrong(&v23->_prefixMatchCover, matchCover);
    objc_storeStrong(&v23->_prefixMatchPosition, position);
    v23->_prefixMatchesWordBoundary = boundary;
    objc_storeStrong(&v23->_firstPrefixToken, token);
    objc_storeStrong(&v23->_secondPrefixToken, prefixToken);
  }

  return v23;
}

- (AutocompleteQueryStringMatch)init
{
  [(AutocompleteQueryStringMatch *)self doesNotRecognizeSelector:a2];

  return 0;
}

@end