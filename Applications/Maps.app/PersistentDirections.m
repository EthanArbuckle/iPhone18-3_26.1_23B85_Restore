@interface PersistentDirections
- (BOOL)isEqual:(id)a3;
- (BOOL)readFrom:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (id)dictionaryRepresentation;
- (unint64_t)hash;
- (void)copyTo:(id)a3;
- (void)mergeFrom:(id)a3;
- (void)writeTo:(id)a3;
@end

@implementation PersistentDirections

- (void)mergeFrom:(id)a3
{
  v16 = a3;
  if (v16[6])
  {
    [(PersistentDirections *)self setStartAddress:?];
  }

  if (v16[3])
  {
    [(PersistentDirections *)self setEndAddress:?];
  }

  userStartSearch = self->_userStartSearch;
  v5 = v16[8];
  if (userStartSearch)
  {
    if (v5)
    {
      [(SearchResultRepr *)userStartSearch mergeFrom:?];
    }
  }

  else if (v5)
  {
    [(PersistentDirections *)self setUserStartSearch:?];
  }

  userEndSearch = self->_userEndSearch;
  v7 = v16[7];
  if (userEndSearch)
  {
    if (v7)
    {
      [(SearchResultRepr *)userEndSearch mergeFrom:?];
    }
  }

  else if (v7)
  {
    [(PersistentDirections *)self setUserEndSearch:?];
  }

  addressStartSearch = self->_addressStartSearch;
  v9 = v16[2];
  if (addressStartSearch)
  {
    if (v9)
    {
      [(SearchResultRepr *)addressStartSearch mergeFrom:?];
    }
  }

  else if (v9)
  {
    [(PersistentDirections *)self setAddressStartSearch:?];
  }

  addressEndSearch = self->_addressEndSearch;
  v11 = v16[1];
  if (addressEndSearch)
  {
    if (v11)
    {
      [(SearchResultRepr *)addressEndSearch mergeFrom:?];
    }
  }

  else if (v11)
  {
    [(PersistentDirections *)self setAddressEndSearch:?];
  }

  routeStartSearch = self->_routeStartSearch;
  v13 = v16[5];
  if (routeStartSearch)
  {
    if (v13)
    {
      [(SearchResultRepr *)routeStartSearch mergeFrom:?];
    }
  }

  else if (v13)
  {
    [(PersistentDirections *)self setRouteStartSearch:?];
  }

  routeEndSearch = self->_routeEndSearch;
  v15 = v16[4];
  if (routeEndSearch)
  {
    if (v15)
    {
      [(SearchResultRepr *)routeEndSearch mergeFrom:?];
    }
  }

  else if (v15)
  {
    [(PersistentDirections *)self setRouteEndSearch:?];
  }
}

- (unint64_t)hash
{
  v3 = [(NSString *)self->_startAddress hash];
  v4 = [(NSString *)self->_endAddress hash]^ v3;
  v5 = [(SearchResult *)self->_userStartSearch hash];
  v6 = v4 ^ v5 ^ [(SearchResult *)self->_userEndSearch hash];
  v7 = [(SearchResult *)self->_addressStartSearch hash];
  v8 = v7 ^ [(SearchResult *)self->_addressEndSearch hash];
  v9 = v6 ^ v8 ^ [(SearchResult *)self->_routeStartSearch hash];
  return v9 ^ [(SearchResult *)self->_routeEndSearch hash];
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if ([v4 isMemberOfClass:objc_opt_class()] && ((startAddress = self->_startAddress, !(startAddress | v4[6])) || -[NSString isEqual:](startAddress, "isEqual:")) && ((endAddress = self->_endAddress, !(endAddress | v4[3])) || -[NSString isEqual:](endAddress, "isEqual:")) && ((userStartSearch = self->_userStartSearch, !(userStartSearch | v4[8])) || -[SearchResult isEqual:](userStartSearch, "isEqual:")) && ((userEndSearch = self->_userEndSearch, !(userEndSearch | v4[7])) || -[SearchResult isEqual:](userEndSearch, "isEqual:")) && ((addressStartSearch = self->_addressStartSearch, !(addressStartSearch | v4[2])) || -[SearchResult isEqual:](addressStartSearch, "isEqual:")) && ((addressEndSearch = self->_addressEndSearch, !(addressEndSearch | v4[1])) || -[SearchResult isEqual:](addressEndSearch, "isEqual:")) && ((routeStartSearch = self->_routeStartSearch, !(routeStartSearch | v4[5])) || -[SearchResult isEqual:](routeStartSearch, "isEqual:")))
  {
    routeEndSearch = self->_routeEndSearch;
    if (routeEndSearch | v4[4])
    {
      v13 = [(SearchResult *)routeEndSearch isEqual:?];
    }

    else
    {
      v13 = 1;
    }
  }

  else
  {
    v13 = 0;
  }

  return v13;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{a3), "init"}];
  v6 = [(NSString *)self->_startAddress copyWithZone:a3];
  v7 = v5[6];
  v5[6] = v6;

  v8 = [(NSString *)self->_endAddress copyWithZone:a3];
  v9 = v5[3];
  v5[3] = v8;

  v10 = [(SearchResult *)self->_userStartSearch copyWithZone:a3];
  v11 = v5[8];
  v5[8] = v10;

  v12 = [(SearchResult *)self->_userEndSearch copyWithZone:a3];
  v13 = v5[7];
  v5[7] = v12;

  v14 = [(SearchResult *)self->_addressStartSearch copyWithZone:a3];
  v15 = v5[2];
  v5[2] = v14;

  v16 = [(SearchResult *)self->_addressEndSearch copyWithZone:a3];
  v17 = v5[1];
  v5[1] = v16;

  v18 = [(SearchResult *)self->_routeStartSearch copyWithZone:a3];
  v19 = v5[5];
  v5[5] = v18;

  v20 = [(SearchResult *)self->_routeEndSearch copyWithZone:a3];
  v21 = v5[4];
  v5[4] = v20;

  return v5;
}

- (void)copyTo:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (self->_startAddress)
  {
    [v4 setStartAddress:?];
    v4 = v5;
  }

  if (self->_endAddress)
  {
    [v5 setEndAddress:?];
    v4 = v5;
  }

  if (self->_userStartSearch)
  {
    [v5 setUserStartSearch:?];
    v4 = v5;
  }

  if (self->_userEndSearch)
  {
    [v5 setUserEndSearch:?];
    v4 = v5;
  }

  if (self->_addressStartSearch)
  {
    [v5 setAddressStartSearch:?];
    v4 = v5;
  }

  if (self->_addressEndSearch)
  {
    [v5 setAddressEndSearch:?];
    v4 = v5;
  }

  if (self->_routeStartSearch)
  {
    [v5 setRouteStartSearch:?];
    v4 = v5;
  }

  if (self->_routeEndSearch)
  {
    [v5 setRouteEndSearch:?];
    v4 = v5;
  }
}

- (void)writeTo:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (self->_startAddress)
  {
    PBDataWriterWriteStringField();
    v4 = v5;
  }

  if (self->_endAddress)
  {
    PBDataWriterWriteStringField();
    v4 = v5;
  }

  if (self->_userStartSearch)
  {
    PBDataWriterWriteSubmessage();
    v4 = v5;
  }

  if (self->_userEndSearch)
  {
    PBDataWriterWriteSubmessage();
    v4 = v5;
  }

  if (self->_addressStartSearch)
  {
    PBDataWriterWriteSubmessage();
    v4 = v5;
  }

  if (self->_addressEndSearch)
  {
    PBDataWriterWriteSubmessage();
    v4 = v5;
  }

  if (self->_routeStartSearch)
  {
    PBDataWriterWriteSubmessage();
    v4 = v5;
  }

  if (self->_routeEndSearch)
  {
    PBDataWriterWriteSubmessage();
    v4 = v5;
  }
}

- (BOOL)readFrom:(id)a3
{
  v5 = [a3 position];
  if (v5 < [a3 length])
  {
    do
    {
      if ([a3 hasError])
      {
        return [a3 hasError] ^ 1;
      }

      v6 = 0;
      v7 = 0;
      v8 = 0;
      while (1)
      {
        LOBYTE(v21[0]) = 0;
        v9 = [a3 position] + 1;
        if (v9 >= [a3 position] && (v10 = objc_msgSend(a3, "position") + 1, v10 <= objc_msgSend(a3, "length")))
        {
          v11 = [a3 data];
          [v11 getBytes:v21 range:{objc_msgSend(a3, "position"), 1}];

          [a3 setPosition:{objc_msgSend(a3, "position") + 1}];
        }

        else
        {
          [a3 _setError];
        }

        v8 |= (v21[0] & 0x7F) << v6;
        if ((v21[0] & 0x80) == 0)
        {
          break;
        }

        v6 += 7;
        if (v7++ >= 9)
        {
          v13 = 0;
          goto LABEL_15;
        }
      }

      v13 = [a3 hasError] ? 0 : v8;
LABEL_15:
      if (([a3 hasError] & 1) != 0 || (v13 & 7) == 4)
      {
        return [a3 hasError] ^ 1;
      }

      v14 = v13 >> 3;
      if ((v13 >> 3) > 16)
      {
        if (v14 > 19)
        {
          if (v14 == 20)
          {
            v17 = objc_alloc_init(SearchResult);
            v18 = 40;
            goto LABEL_37;
          }

          if (v14 == 21)
          {
            v17 = objc_alloc_init(SearchResult);
            v18 = 32;
            goto LABEL_37;
          }
        }

        else
        {
          if (v14 == 17)
          {
            v17 = objc_alloc_init(SearchResult);
            v18 = 16;
            goto LABEL_37;
          }

          if (v14 == 18)
          {
            v17 = objc_alloc_init(SearchResult);
            v18 = 8;
LABEL_37:
            objc_storeStrong(&self->PBCodable_opaque[v18], v17);
            v21[0] = 0;
            v21[1] = 0;
            if (!PBReaderPlaceMark() || ![(SearchResult *)v17 readFrom:a3])
            {

              return 0;
            }

            PBReaderRecallMark();
LABEL_40:

            goto LABEL_41;
          }
        }
      }

      else if (v14 > 9)
      {
        if (v14 == 10)
        {
          v17 = objc_alloc_init(SearchResult);
          v18 = 64;
          goto LABEL_37;
        }

        if (v14 == 11)
        {
          v17 = objc_alloc_init(SearchResult);
          v18 = 56;
          goto LABEL_37;
        }
      }

      else
      {
        if (v14 == 1)
        {
          v15 = PBReaderReadString();
          v16 = 48;
          goto LABEL_33;
        }

        if (v14 == 2)
        {
          v15 = PBReaderReadString();
          v16 = 24;
LABEL_33:
          v17 = *&self->PBCodable_opaque[v16];
          *&self->PBCodable_opaque[v16] = v15;
          goto LABEL_40;
        }
      }

      if ((PBReaderSkipValueWithTag() & 1) == 0)
      {
        return 0;
      }

LABEL_41:
      v19 = [a3 position];
    }

    while (v19 < [a3 length]);
  }

  return [a3 hasError] ^ 1;
}

- (id)dictionaryRepresentation
{
  v3 = +[NSMutableDictionary dictionary];
  v4 = v3;
  startAddress = self->_startAddress;
  if (startAddress)
  {
    [v3 setObject:startAddress forKey:@"StartAddress"];
  }

  endAddress = self->_endAddress;
  if (endAddress)
  {
    [v4 setObject:endAddress forKey:@"EndAddress"];
  }

  userStartSearch = self->_userStartSearch;
  if (userStartSearch)
  {
    v8 = [(SearchResultRepr *)userStartSearch dictionaryRepresentation];
    [v4 setObject:v8 forKey:@"UserStartSearch"];
  }

  userEndSearch = self->_userEndSearch;
  if (userEndSearch)
  {
    v10 = [(SearchResultRepr *)userEndSearch dictionaryRepresentation];
    [v4 setObject:v10 forKey:@"UserEndSearch"];
  }

  addressStartSearch = self->_addressStartSearch;
  if (addressStartSearch)
  {
    v12 = [(SearchResultRepr *)addressStartSearch dictionaryRepresentation];
    [v4 setObject:v12 forKey:@"AddressStartSearch"];
  }

  addressEndSearch = self->_addressEndSearch;
  if (addressEndSearch)
  {
    v14 = [(SearchResultRepr *)addressEndSearch dictionaryRepresentation];
    [v4 setObject:v14 forKey:@"AddressEndSearch"];
  }

  routeStartSearch = self->_routeStartSearch;
  if (routeStartSearch)
  {
    v16 = [(SearchResultRepr *)routeStartSearch dictionaryRepresentation];
    [v4 setObject:v16 forKey:@"RouteStartSearch"];
  }

  routeEndSearch = self->_routeEndSearch;
  if (routeEndSearch)
  {
    v18 = [(SearchResultRepr *)routeEndSearch dictionaryRepresentation];
    [v4 setObject:v18 forKey:@"RouteEndSearch"];
  }

  return v4;
}

- (id)description
{
  v7.receiver = self;
  v7.super_class = PersistentDirections;
  v3 = [(PersistentDirections *)&v7 description];
  v4 = [(PersistentDirections *)self dictionaryRepresentation];
  v5 = [NSString stringWithFormat:@"%@ %@", v3, v4];

  return v5;
}

@end