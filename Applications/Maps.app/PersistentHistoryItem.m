@interface PersistentHistoryItem
- (BOOL)isEqual:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (id)dictionaryRepresentation;
- (unint64_t)hash;
- (void)copyTo:(id)a3;
- (void)mergeFrom:(id)a3;
- (void)writeTo:(id)a3;
@end

@implementation PersistentHistoryItem

- (void)mergeFrom:(id)a3
{
  v4 = a3;
  searchRequestHistoryItem = self->_searchRequestHistoryItem;
  v13 = v4;
  v6 = v4[3];
  if (searchRequestHistoryItem)
  {
    if (v6)
    {
      [(PersistentSearchRequestHistoryItem *)searchRequestHistoryItem mergeFrom:?];
    }
  }

  else if (v6)
  {
    [(PersistentHistoryItem *)self setSearchRequestHistoryItem:?];
  }

  searchResultHistoryItem = self->_searchResultHistoryItem;
  v8 = v13[4];
  if (searchResultHistoryItem)
  {
    if (v8)
    {
      [(PersistentSearchResultHistoryItem *)searchResultHistoryItem mergeFrom:?];
    }
  }

  else if (v8)
  {
    [(PersistentHistoryItem *)self setSearchResultHistoryItem:?];
  }

  directionsHistoryItem = self->_directionsHistoryItem;
  v10 = v13[2];
  if (directionsHistoryItem)
  {
    if (v10)
    {
      [(PersistentDirectionsHistoryItem *)directionsHistoryItem mergeFrom:?];
    }
  }

  else if (v10)
  {
    [(PersistentHistoryItem *)self setDirectionsHistoryItem:?];
  }

  addressBookItem = self->_addressBookItem;
  v12 = v13[1];
  if (addressBookItem)
  {
    if (v12)
    {
      [(PersistentAddressBookAddress *)addressBookItem mergeFrom:?];
    }
  }

  else if (v12)
  {
    [(PersistentHistoryItem *)self setAddressBookItem:?];
  }
}

- (unint64_t)hash
{
  v3 = [(PersistentSearchRequestHistoryItem *)self->_searchRequestHistoryItem hash];
  v4 = [(PersistentSearchResultHistoryItem *)self->_searchResultHistoryItem hash]^ v3;
  v5 = [(PersistentDirectionsHistoryItem *)self->_directionsHistoryItem hash];
  return v4 ^ v5 ^ [(PersistentAddressBookAddress *)self->_addressBookItem hash];
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if ([v4 isMemberOfClass:objc_opt_class()] && ((searchRequestHistoryItem = self->_searchRequestHistoryItem, !(searchRequestHistoryItem | v4[3])) || -[PersistentSearchRequestHistoryItem isEqual:](searchRequestHistoryItem, "isEqual:")) && ((searchResultHistoryItem = self->_searchResultHistoryItem, !(searchResultHistoryItem | v4[4])) || -[PersistentSearchResultHistoryItem isEqual:](searchResultHistoryItem, "isEqual:")) && ((directionsHistoryItem = self->_directionsHistoryItem, !(directionsHistoryItem | v4[2])) || -[PersistentDirectionsHistoryItem isEqual:](directionsHistoryItem, "isEqual:")))
  {
    addressBookItem = self->_addressBookItem;
    if (addressBookItem | v4[1])
    {
      v9 = [(PersistentAddressBookAddress *)addressBookItem isEqual:?];
    }

    else
    {
      v9 = 1;
    }
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{a3), "init"}];
  v6 = [(PersistentSearchRequestHistoryItem *)self->_searchRequestHistoryItem copyWithZone:a3];
  v7 = v5[3];
  v5[3] = v6;

  v8 = [(PersistentSearchResultHistoryItem *)self->_searchResultHistoryItem copyWithZone:a3];
  v9 = v5[4];
  v5[4] = v8;

  v10 = [(PersistentDirectionsHistoryItem *)self->_directionsHistoryItem copyWithZone:a3];
  v11 = v5[2];
  v5[2] = v10;

  v12 = [(PersistentAddressBookAddress *)self->_addressBookItem copyWithZone:a3];
  v13 = v5[1];
  v5[1] = v12;

  return v5;
}

- (void)copyTo:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (self->_searchRequestHistoryItem)
  {
    [v4 setSearchRequestHistoryItem:?];
    v4 = v5;
  }

  if (self->_searchResultHistoryItem)
  {
    [v5 setSearchResultHistoryItem:?];
    v4 = v5;
  }

  if (self->_directionsHistoryItem)
  {
    [v5 setDirectionsHistoryItem:?];
    v4 = v5;
  }

  if (self->_addressBookItem)
  {
    [v5 setAddressBookItem:?];
    v4 = v5;
  }
}

- (void)writeTo:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (self->_searchRequestHistoryItem)
  {
    PBDataWriterWriteSubmessage();
    v4 = v5;
  }

  if (self->_searchResultHistoryItem)
  {
    PBDataWriterWriteSubmessage();
    v4 = v5;
  }

  if (self->_directionsHistoryItem)
  {
    PBDataWriterWriteSubmessage();
    v4 = v5;
  }

  if (self->_addressBookItem)
  {
    PBDataWriterWriteSubmessage();
    v4 = v5;
  }
}

- (id)dictionaryRepresentation
{
  v3 = +[NSMutableDictionary dictionary];
  addressBookItem = self->_addressBookItem;
  if (addressBookItem)
  {
    v5 = [(PersistentAddressBookAddress *)addressBookItem dictionaryRepresentation];
    [v3 setObject:v5 forKey:@"addressBookItem"];
  }

  searchRequestHistoryItem = self->_searchRequestHistoryItem;
  if (searchRequestHistoryItem)
  {
    v7 = [(PersistentSearchRequestHistoryItem *)searchRequestHistoryItem dictionaryRepresentation];
    [v3 setObject:v7 forKey:@"searchRequestHistoryItem"];
  }

  searchResultHistoryItem = self->_searchResultHistoryItem;
  if (searchResultHistoryItem)
  {
    v9 = [(PersistentSearchResultHistoryItem *)searchResultHistoryItem dictionaryRepresentation];
    [v3 setObject:v9 forKey:@"searchResultHistoryItem"];
  }

  directionsHistoryItem = self->_directionsHistoryItem;
  if (directionsHistoryItem)
  {
    v11 = [(PersistentDirectionsHistoryItem *)directionsHistoryItem dictionaryRepresentation];
    [v3 setObject:v11 forKey:@"directionsHistoryItem"];
  }

  return v3;
}

- (id)description
{
  v7.receiver = self;
  v7.super_class = PersistentHistoryItem;
  v3 = [(PersistentHistoryItem *)&v7 description];
  v4 = [(PersistentHistoryItem *)self dictionaryRepresentation];
  v5 = [NSString stringWithFormat:@"%@ %@", v3, v4];

  return v5;
}

@end