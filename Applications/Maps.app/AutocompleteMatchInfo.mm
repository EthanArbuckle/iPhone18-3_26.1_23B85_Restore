@interface AutocompleteMatchInfo
+ (AutocompleteMatchInfo)matchInfoWithType:(unint64_t)type;
- (AutocompleteMatchInfo)initWithType:(unint64_t)type;
- (id)copyWithZone:(_NSZone *)zone;
- (void)notifyObserversOfChange;
- (void)setAgeInSeconds:(int)seconds;
- (void)setClientRankingDebug:(double)debug;
- (void)setFirstPrefixToken:(id)token;
- (void)setFractionOfMatch:(double)match;
- (void)setPeopleSuggesterRank:(double)rank;
- (void)setPrefixLastTokenMatchCover:(id)cover;
- (void)setPrefixMatchCover:(id)cover;
- (void)setPrefixMatchPosition:(id)position;
- (void)setPrefixMatchesWordBoundary:(BOOL)boundary;
- (void)setSecondPrefixToken:(id)token;
- (void)setShownToUser:(BOOL)user;
- (void)setSortPriorityDebug:(int64_t)debug;
@end

@implementation AutocompleteMatchInfo

- (void)notifyObserversOfChange
{
  v3 = [(NSHashTable *)self->_observers copy];
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v4 = v3;
  v5 = [v4 countByEnumeratingWithState:&v9 objects:v13 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v10;
    do
    {
      v8 = 0;
      do
      {
        if (*v10 != v7)
        {
          objc_enumerationMutation(v4);
        }

        [*(*(&v9 + 1) + 8 * v8) autocompleteMatchInfoDidUpdate:{self, v9}];
        v8 = v8 + 1;
      }

      while (v6 != v8);
      v6 = [v4 countByEnumeratingWithState:&v9 objects:v13 count:16];
    }

    while (v6);
  }
}

- (void)setSecondPrefixToken:(id)token
{
  tokenCopy = token;
  if (self->_secondPrefixToken != tokenCopy)
  {
    v6 = tokenCopy;
    objc_storeStrong(&self->_secondPrefixToken, token);
    [(AutocompleteMatchInfo *)self notifyObserversOfChange];
    tokenCopy = v6;
  }
}

- (void)setFirstPrefixToken:(id)token
{
  tokenCopy = token;
  if (self->_firstPrefixToken != tokenCopy)
  {
    v6 = tokenCopy;
    objc_storeStrong(&self->_firstPrefixToken, token);
    [(AutocompleteMatchInfo *)self notifyObserversOfChange];
    tokenCopy = v6;
  }
}

- (void)setPrefixMatchesWordBoundary:(BOOL)boundary
{
  if (self->_prefixMatchesWordBoundary != boundary)
  {
    self->_prefixMatchesWordBoundary = boundary;
    [(AutocompleteMatchInfo *)self notifyObserversOfChange];
  }
}

- (void)setPrefixMatchPosition:(id)position
{
  positionCopy = position;
  if (![(NSNumber *)self->_prefixMatchPosition isEqualToNumber:?])
  {
    objc_storeStrong(&self->_prefixMatchPosition, position);
    [(AutocompleteMatchInfo *)self notifyObserversOfChange];
  }
}

- (void)setPrefixMatchCover:(id)cover
{
  coverCopy = cover;
  if (![(NSNumber *)self->_prefixMatchCover isEqualToNumber:?])
  {
    objc_storeStrong(&self->_prefixMatchCover, cover);
    [(AutocompleteMatchInfo *)self notifyObserversOfChange];
  }
}

- (void)setPrefixLastTokenMatchCover:(id)cover
{
  coverCopy = cover;
  if (![(NSNumber *)self->_prefixLastTokenMatchCover isEqualToNumber:?])
  {
    objc_storeStrong(&self->_prefixLastTokenMatchCover, cover);
    [(AutocompleteMatchInfo *)self notifyObserversOfChange];
  }
}

- (void)setSortPriorityDebug:(int64_t)debug
{
  if (!self->_hasSortPriorityDebug || self->_sortPriorityDebug != debug)
  {
    self->_hasSortPriorityDebug = 1;
    self->_sortPriorityDebug = debug;
    [(AutocompleteMatchInfo *)self notifyObserversOfChange];
  }
}

- (void)setClientRankingDebug:(double)debug
{
  if (!self->_hasClientRankingDebug || self->_clientRankingDebug != debug)
  {
    self->_hasClientRankingDebug = 1;
    self->_clientRankingDebug = debug;
    [(AutocompleteMatchInfo *)self notifyObserversOfChange];
  }
}

- (void)setFractionOfMatch:(double)match
{
  if (self->_fractionOfMatch != match)
  {
    self->_fractionOfMatch = match;
    [(AutocompleteMatchInfo *)self notifyObserversOfChange];
  }
}

- (void)setShownToUser:(BOOL)user
{
  if (self->_shownToUser != user)
  {
    self->_shownToUser = user;
    [(AutocompleteMatchInfo *)self notifyObserversOfChange];
  }
}

- (void)setAgeInSeconds:(int)seconds
{
  if (self->_ageInSeconds != seconds)
  {
    self->_ageInSeconds = seconds;
    [(AutocompleteMatchInfo *)self notifyObserversOfChange];
  }
}

- (void)setPeopleSuggesterRank:(double)rank
{
  if (self->_peopleSuggesterRank != rank)
  {
    self->_peopleSuggesterRank = rank;
    [(AutocompleteMatchInfo *)self notifyObserversOfChange];
  }
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = [[AutocompleteMatchInfo alloc] initWithType:[(AutocompleteMatchInfo *)self matchType]];
  [(AutocompleteMatchInfo *)self peopleSuggesterRank];
  [(AutocompleteMatchInfo *)v4 setPeopleSuggesterRank:?];
  [(AutocompleteMatchInfo *)v4 setAgeInSeconds:[(AutocompleteMatchInfo *)self ageInSeconds]];
  [(AutocompleteMatchInfo *)self fractionOfMatch];
  [(AutocompleteMatchInfo *)v4 setFractionOfMatch:?];
  [(AutocompleteMatchInfo *)v4 setShownToUser:[(AutocompleteMatchInfo *)self shownToUser]];
  if ([(AutocompleteMatchInfo *)self hasClientRankingDebug])
  {
    [(AutocompleteMatchInfo *)self clientRankingDebug];
    [(AutocompleteMatchInfo *)v4 setClientRankingDebug:?];
  }

  if ([(AutocompleteMatchInfo *)self hasSortPriorityDebug])
  {
    [(AutocompleteMatchInfo *)v4 setSortPriorityDebug:[(AutocompleteMatchInfo *)self sortPriorityDebug]];
  }

  prefixLastTokenMatchCover = [(AutocompleteMatchInfo *)self prefixLastTokenMatchCover];
  [(AutocompleteMatchInfo *)v4 setPrefixLastTokenMatchCover:prefixLastTokenMatchCover];

  prefixMatchCover = [(AutocompleteMatchInfo *)self prefixMatchCover];
  [(AutocompleteMatchInfo *)v4 setPrefixMatchCover:prefixMatchCover];

  prefixMatchPosition = [(AutocompleteMatchInfo *)self prefixMatchPosition];
  [(AutocompleteMatchInfo *)v4 setPrefixMatchPosition:prefixMatchPosition];

  [(AutocompleteMatchInfo *)v4 setPrefixMatchesWordBoundary:[(AutocompleteMatchInfo *)self prefixMatchesWordBoundary]];
  firstPrefixToken = [(AutocompleteMatchInfo *)self firstPrefixToken];
  [(AutocompleteMatchInfo *)v4 setFirstPrefixToken:firstPrefixToken];

  secondPrefixToken = [(AutocompleteMatchInfo *)self secondPrefixToken];
  [(AutocompleteMatchInfo *)v4 setSecondPrefixToken:secondPrefixToken];

  return v4;
}

- (AutocompleteMatchInfo)initWithType:(unint64_t)type
{
  v9.receiver = self;
  v9.super_class = AutocompleteMatchInfo;
  v4 = [(AutocompleteMatchInfo *)&v9 init];
  v5 = v4;
  if (v4)
  {
    v4->_ageInSeconds = -1;
    v4->_peopleSuggesterRank = 0.0;
    v4->_fractionOfMatch = 0.0;
    v4->_matchType = type;
    v6 = [[NSHashTable alloc] initWithOptions:517 capacity:5];
    observers = v5->_observers;
    v5->_observers = v6;
  }

  return v5;
}

+ (AutocompleteMatchInfo)matchInfoWithType:(unint64_t)type
{
  v3 = [[self alloc] initWithType:type];

  return v3;
}

@end