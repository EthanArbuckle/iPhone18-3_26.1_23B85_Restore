@interface AutocompleteMatchInfo
+ (AutocompleteMatchInfo)matchInfoWithType:(unint64_t)a3;
- (AutocompleteMatchInfo)initWithType:(unint64_t)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (void)notifyObserversOfChange;
- (void)setAgeInSeconds:(int)a3;
- (void)setClientRankingDebug:(double)a3;
- (void)setFirstPrefixToken:(id)a3;
- (void)setFractionOfMatch:(double)a3;
- (void)setPeopleSuggesterRank:(double)a3;
- (void)setPrefixLastTokenMatchCover:(id)a3;
- (void)setPrefixMatchCover:(id)a3;
- (void)setPrefixMatchPosition:(id)a3;
- (void)setPrefixMatchesWordBoundary:(BOOL)a3;
- (void)setSecondPrefixToken:(id)a3;
- (void)setShownToUser:(BOOL)a3;
- (void)setSortPriorityDebug:(int64_t)a3;
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

- (void)setSecondPrefixToken:(id)a3
{
  v5 = a3;
  if (self->_secondPrefixToken != v5)
  {
    v6 = v5;
    objc_storeStrong(&self->_secondPrefixToken, a3);
    [(AutocompleteMatchInfo *)self notifyObserversOfChange];
    v5 = v6;
  }
}

- (void)setFirstPrefixToken:(id)a3
{
  v5 = a3;
  if (self->_firstPrefixToken != v5)
  {
    v6 = v5;
    objc_storeStrong(&self->_firstPrefixToken, a3);
    [(AutocompleteMatchInfo *)self notifyObserversOfChange];
    v5 = v6;
  }
}

- (void)setPrefixMatchesWordBoundary:(BOOL)a3
{
  if (self->_prefixMatchesWordBoundary != a3)
  {
    self->_prefixMatchesWordBoundary = a3;
    [(AutocompleteMatchInfo *)self notifyObserversOfChange];
  }
}

- (void)setPrefixMatchPosition:(id)a3
{
  v5 = a3;
  if (![(NSNumber *)self->_prefixMatchPosition isEqualToNumber:?])
  {
    objc_storeStrong(&self->_prefixMatchPosition, a3);
    [(AutocompleteMatchInfo *)self notifyObserversOfChange];
  }
}

- (void)setPrefixMatchCover:(id)a3
{
  v5 = a3;
  if (![(NSNumber *)self->_prefixMatchCover isEqualToNumber:?])
  {
    objc_storeStrong(&self->_prefixMatchCover, a3);
    [(AutocompleteMatchInfo *)self notifyObserversOfChange];
  }
}

- (void)setPrefixLastTokenMatchCover:(id)a3
{
  v5 = a3;
  if (![(NSNumber *)self->_prefixLastTokenMatchCover isEqualToNumber:?])
  {
    objc_storeStrong(&self->_prefixLastTokenMatchCover, a3);
    [(AutocompleteMatchInfo *)self notifyObserversOfChange];
  }
}

- (void)setSortPriorityDebug:(int64_t)a3
{
  if (!self->_hasSortPriorityDebug || self->_sortPriorityDebug != a3)
  {
    self->_hasSortPriorityDebug = 1;
    self->_sortPriorityDebug = a3;
    [(AutocompleteMatchInfo *)self notifyObserversOfChange];
  }
}

- (void)setClientRankingDebug:(double)a3
{
  if (!self->_hasClientRankingDebug || self->_clientRankingDebug != a3)
  {
    self->_hasClientRankingDebug = 1;
    self->_clientRankingDebug = a3;
    [(AutocompleteMatchInfo *)self notifyObserversOfChange];
  }
}

- (void)setFractionOfMatch:(double)a3
{
  if (self->_fractionOfMatch != a3)
  {
    self->_fractionOfMatch = a3;
    [(AutocompleteMatchInfo *)self notifyObserversOfChange];
  }
}

- (void)setShownToUser:(BOOL)a3
{
  if (self->_shownToUser != a3)
  {
    self->_shownToUser = a3;
    [(AutocompleteMatchInfo *)self notifyObserversOfChange];
  }
}

- (void)setAgeInSeconds:(int)a3
{
  if (self->_ageInSeconds != a3)
  {
    self->_ageInSeconds = a3;
    [(AutocompleteMatchInfo *)self notifyObserversOfChange];
  }
}

- (void)setPeopleSuggesterRank:(double)a3
{
  if (self->_peopleSuggesterRank != a3)
  {
    self->_peopleSuggesterRank = a3;
    [(AutocompleteMatchInfo *)self notifyObserversOfChange];
  }
}

- (id)copyWithZone:(_NSZone *)a3
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

  v5 = [(AutocompleteMatchInfo *)self prefixLastTokenMatchCover];
  [(AutocompleteMatchInfo *)v4 setPrefixLastTokenMatchCover:v5];

  v6 = [(AutocompleteMatchInfo *)self prefixMatchCover];
  [(AutocompleteMatchInfo *)v4 setPrefixMatchCover:v6];

  v7 = [(AutocompleteMatchInfo *)self prefixMatchPosition];
  [(AutocompleteMatchInfo *)v4 setPrefixMatchPosition:v7];

  [(AutocompleteMatchInfo *)v4 setPrefixMatchesWordBoundary:[(AutocompleteMatchInfo *)self prefixMatchesWordBoundary]];
  v8 = [(AutocompleteMatchInfo *)self firstPrefixToken];
  [(AutocompleteMatchInfo *)v4 setFirstPrefixToken:v8];

  v9 = [(AutocompleteMatchInfo *)self secondPrefixToken];
  [(AutocompleteMatchInfo *)v4 setSecondPrefixToken:v9];

  return v4;
}

- (AutocompleteMatchInfo)initWithType:(unint64_t)a3
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
    v4->_matchType = a3;
    v6 = [[NSHashTable alloc] initWithOptions:517 capacity:5];
    observers = v5->_observers;
    v5->_observers = v6;
  }

  return v5;
}

+ (AutocompleteMatchInfo)matchInfoWithType:(unint64_t)a3
{
  v3 = [[a1 alloc] initWithType:a3];

  return v3;
}

@end