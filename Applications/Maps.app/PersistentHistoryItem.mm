@interface PersistentHistoryItem
- (BOOL)isEqual:(id)equal;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (id)dictionaryRepresentation;
- (unint64_t)hash;
- (void)copyTo:(id)to;
- (void)mergeFrom:(id)from;
- (void)writeTo:(id)to;
@end

@implementation PersistentHistoryItem

- (void)mergeFrom:(id)from
{
  fromCopy = from;
  searchRequestHistoryItem = self->_searchRequestHistoryItem;
  v13 = fromCopy;
  v6 = fromCopy[3];
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

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if ([equalCopy isMemberOfClass:objc_opt_class()] && ((searchRequestHistoryItem = self->_searchRequestHistoryItem, !(searchRequestHistoryItem | equalCopy[3])) || -[PersistentSearchRequestHistoryItem isEqual:](searchRequestHistoryItem, "isEqual:")) && ((searchResultHistoryItem = self->_searchResultHistoryItem, !(searchResultHistoryItem | equalCopy[4])) || -[PersistentSearchResultHistoryItem isEqual:](searchResultHistoryItem, "isEqual:")) && ((directionsHistoryItem = self->_directionsHistoryItem, !(directionsHistoryItem | equalCopy[2])) || -[PersistentDirectionsHistoryItem isEqual:](directionsHistoryItem, "isEqual:")))
  {
    addressBookItem = self->_addressBookItem;
    if (addressBookItem | equalCopy[1])
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

- (id)copyWithZone:(_NSZone *)zone
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
  v6 = [(PersistentSearchRequestHistoryItem *)self->_searchRequestHistoryItem copyWithZone:zone];
  v7 = v5[3];
  v5[3] = v6;

  v8 = [(PersistentSearchResultHistoryItem *)self->_searchResultHistoryItem copyWithZone:zone];
  v9 = v5[4];
  v5[4] = v8;

  v10 = [(PersistentDirectionsHistoryItem *)self->_directionsHistoryItem copyWithZone:zone];
  v11 = v5[2];
  v5[2] = v10;

  v12 = [(PersistentAddressBookAddress *)self->_addressBookItem copyWithZone:zone];
  v13 = v5[1];
  v5[1] = v12;

  return v5;
}

- (void)copyTo:(id)to
{
  toCopy = to;
  v5 = toCopy;
  if (self->_searchRequestHistoryItem)
  {
    [toCopy setSearchRequestHistoryItem:?];
    toCopy = v5;
  }

  if (self->_searchResultHistoryItem)
  {
    [v5 setSearchResultHistoryItem:?];
    toCopy = v5;
  }

  if (self->_directionsHistoryItem)
  {
    [v5 setDirectionsHistoryItem:?];
    toCopy = v5;
  }

  if (self->_addressBookItem)
  {
    [v5 setAddressBookItem:?];
    toCopy = v5;
  }
}

- (void)writeTo:(id)to
{
  toCopy = to;
  v5 = toCopy;
  if (self->_searchRequestHistoryItem)
  {
    PBDataWriterWriteSubmessage();
    toCopy = v5;
  }

  if (self->_searchResultHistoryItem)
  {
    PBDataWriterWriteSubmessage();
    toCopy = v5;
  }

  if (self->_directionsHistoryItem)
  {
    PBDataWriterWriteSubmessage();
    toCopy = v5;
  }

  if (self->_addressBookItem)
  {
    PBDataWriterWriteSubmessage();
    toCopy = v5;
  }
}

- (id)dictionaryRepresentation
{
  v3 = +[NSMutableDictionary dictionary];
  addressBookItem = self->_addressBookItem;
  if (addressBookItem)
  {
    dictionaryRepresentation = [(PersistentAddressBookAddress *)addressBookItem dictionaryRepresentation];
    [v3 setObject:dictionaryRepresentation forKey:@"addressBookItem"];
  }

  searchRequestHistoryItem = self->_searchRequestHistoryItem;
  if (searchRequestHistoryItem)
  {
    dictionaryRepresentation2 = [(PersistentSearchRequestHistoryItem *)searchRequestHistoryItem dictionaryRepresentation];
    [v3 setObject:dictionaryRepresentation2 forKey:@"searchRequestHistoryItem"];
  }

  searchResultHistoryItem = self->_searchResultHistoryItem;
  if (searchResultHistoryItem)
  {
    dictionaryRepresentation3 = [(PersistentSearchResultHistoryItem *)searchResultHistoryItem dictionaryRepresentation];
    [v3 setObject:dictionaryRepresentation3 forKey:@"searchResultHistoryItem"];
  }

  directionsHistoryItem = self->_directionsHistoryItem;
  if (directionsHistoryItem)
  {
    dictionaryRepresentation4 = [(PersistentDirectionsHistoryItem *)directionsHistoryItem dictionaryRepresentation];
    [v3 setObject:dictionaryRepresentation4 forKey:@"directionsHistoryItem"];
  }

  return v3;
}

- (id)description
{
  v7.receiver = self;
  v7.super_class = PersistentHistoryItem;
  v3 = [(PersistentHistoryItem *)&v7 description];
  dictionaryRepresentation = [(PersistentHistoryItem *)self dictionaryRepresentation];
  v5 = [NSString stringWithFormat:@"%@ %@", v3, dictionaryRepresentation];

  return v5;
}

@end