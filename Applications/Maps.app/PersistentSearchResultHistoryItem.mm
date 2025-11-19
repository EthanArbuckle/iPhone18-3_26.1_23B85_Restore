@interface PersistentSearchResultHistoryItem
- (BOOL)isEqual:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (id)dictionaryRepresentation;
- (void)copyTo:(id)a3;
- (void)mergeFrom:(id)a3;
- (void)writeTo:(id)a3;
@end

@implementation PersistentSearchResultHistoryItem

- (void)mergeFrom:(id)a3
{
  v4 = a3;
  searchResult = self->_searchResult;
  v6 = v4[1];
  if (searchResult)
  {
    if (!v6)
    {
      goto LABEL_7;
    }

    v7 = v4;
    [(SearchResultRepr *)searchResult mergeFrom:?];
  }

  else
  {
    if (!v6)
    {
      goto LABEL_7;
    }

    v7 = v4;
    [(PersistentSearchResultHistoryItem *)self setSearchResult:?];
  }

  v4 = v7;
LABEL_7:
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if ([v4 isMemberOfClass:objc_opt_class()])
  {
    searchResult = self->_searchResult;
    if (searchResult | v4[1])
    {
      v6 = [(SearchResult *)searchResult isEqual:?];
    }

    else
    {
      v6 = 1;
    }
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{a3), "init"}];
  v6 = [(SearchResult *)self->_searchResult copyWithZone:a3];
  v7 = v5[1];
  v5[1] = v6;

  return v5;
}

- (void)copyTo:(id)a3
{
  searchResult = self->_searchResult;
  if (searchResult)
  {
    [a3 setSearchResult:searchResult];
  }
}

- (void)writeTo:(id)a3
{
  if (self->_searchResult)
  {
    PBDataWriterWriteSubmessage();
  }
}

- (id)dictionaryRepresentation
{
  v3 = +[NSMutableDictionary dictionary];
  searchResult = self->_searchResult;
  if (searchResult)
  {
    v5 = [(SearchResultRepr *)searchResult dictionaryRepresentation];
    [v3 setObject:v5 forKey:@"searchResult"];
  }

  return v3;
}

- (id)description
{
  v7.receiver = self;
  v7.super_class = PersistentSearchResultHistoryItem;
  v3 = [(PersistentSearchResultHistoryItem *)&v7 description];
  v4 = [(PersistentSearchResultHistoryItem *)self dictionaryRepresentation];
  v5 = [NSString stringWithFormat:@"%@ %@", v3, v4];

  return v5;
}

@end