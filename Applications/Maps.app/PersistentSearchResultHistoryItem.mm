@interface PersistentSearchResultHistoryItem
- (BOOL)isEqual:(id)equal;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (id)dictionaryRepresentation;
- (void)copyTo:(id)to;
- (void)mergeFrom:(id)from;
- (void)writeTo:(id)to;
@end

@implementation PersistentSearchResultHistoryItem

- (void)mergeFrom:(id)from
{
  fromCopy = from;
  searchResult = self->_searchResult;
  v6 = fromCopy[1];
  if (searchResult)
  {
    if (!v6)
    {
      goto LABEL_7;
    }

    v7 = fromCopy;
    [(SearchResultRepr *)searchResult mergeFrom:?];
  }

  else
  {
    if (!v6)
    {
      goto LABEL_7;
    }

    v7 = fromCopy;
    [(PersistentSearchResultHistoryItem *)self setSearchResult:?];
  }

  fromCopy = v7;
LABEL_7:
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if ([equalCopy isMemberOfClass:objc_opt_class()])
  {
    searchResult = self->_searchResult;
    if (searchResult | equalCopy[1])
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

- (id)copyWithZone:(_NSZone *)zone
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
  v6 = [(SearchResult *)self->_searchResult copyWithZone:zone];
  v7 = v5[1];
  v5[1] = v6;

  return v5;
}

- (void)copyTo:(id)to
{
  searchResult = self->_searchResult;
  if (searchResult)
  {
    [to setSearchResult:searchResult];
  }
}

- (void)writeTo:(id)to
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
    dictionaryRepresentation = [(SearchResultRepr *)searchResult dictionaryRepresentation];
    [v3 setObject:dictionaryRepresentation forKey:@"searchResult"];
  }

  return v3;
}

- (id)description
{
  v7.receiver = self;
  v7.super_class = PersistentSearchResultHistoryItem;
  v3 = [(PersistentSearchResultHistoryItem *)&v7 description];
  dictionaryRepresentation = [(PersistentSearchResultHistoryItem *)self dictionaryRepresentation];
  v5 = [NSString stringWithFormat:@"%@ %@", v3, dictionaryRepresentation];

  return v5;
}

@end