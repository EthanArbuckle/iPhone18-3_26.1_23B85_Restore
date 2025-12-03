@interface RapUserProfileRecord
- (BOOL)isEqual:(id)equal;
- (BOOL)readFrom:(id)from;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (id)dictionaryRepresentation;
- (unint64_t)hash;
- (void)copyTo:(id)to;
- (void)mergeFrom:(id)from;
- (void)writeTo:(id)to;
@end

@implementation RapUserProfileRecord

- (void)mergeFrom:(id)from
{
  fromCopy = from;
  mapItemStorage = self->_mapItemStorage;
  v11 = fromCopy;
  v6 = fromCopy[4];
  if (mapItemStorage)
  {
    if (v6)
    {
      [(GEOMapItemStorage *)mapItemStorage mergeFrom:?];
    }
  }

  else if (v6)
  {
    [(RapUserProfileRecord *)self setMapItemStorage:?];
  }

  directions = self->_directions;
  v8 = v11[3];
  if (directions)
  {
    if (v8)
    {
      [(RAPDirectionsRecording *)directions mergeFrom:?];
    }
  }

  else if (v8)
  {
    [(RapUserProfileRecord *)self setDirections:?];
  }

  if (v11[1])
  {
    [(RapUserProfileRecord *)self setCuratedCollectionIdentifier:?];
  }

  if (v11[2])
  {
    [(RapUserProfileRecord *)self setCuratedCollectionProviderIdentifier:?];
  }

  muninViewState = self->_muninViewState;
  v10 = v11[5];
  if (muninViewState)
  {
    if (v10)
    {
      [(GEOMuninViewState *)muninViewState mergeFrom:?];
    }
  }

  else if (v10)
  {
    [(RapUserProfileRecord *)self setMuninViewState:?];
  }

  if (v11[7])
  {
    [(RapUserProfileRecord *)self setTitle:?];
  }

  if (v11[6])
  {
    [(RapUserProfileRecord *)self setSubtitle:?];
  }
}

- (unint64_t)hash
{
  v3 = [(GEOMapItemStorage *)self->_mapItemStorage hash];
  v4 = [(RAPDirectionsRecording *)self->_directions hash]^ v3;
  v5 = [(NSString *)self->_curatedCollectionIdentifier hash];
  v6 = v4 ^ v5 ^ [(NSString *)self->_curatedCollectionProviderIdentifier hash];
  v7 = [(GEOMuninViewState *)self->_muninViewState hash];
  v8 = v7 ^ [(NSString *)self->_title hash];
  return v6 ^ v8 ^ [(NSString *)self->_subtitle hash];
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if ([equalCopy isMemberOfClass:objc_opt_class()] && ((mapItemStorage = self->_mapItemStorage, !(mapItemStorage | equalCopy[4])) || -[GEOMapItemStorage isEqual:](mapItemStorage, "isEqual:")) && ((directions = self->_directions, !(directions | equalCopy[3])) || -[RAPDirectionsRecording isEqual:](directions, "isEqual:")) && ((curatedCollectionIdentifier = self->_curatedCollectionIdentifier, !(curatedCollectionIdentifier | equalCopy[1])) || -[NSString isEqual:](curatedCollectionIdentifier, "isEqual:")) && ((curatedCollectionProviderIdentifier = self->_curatedCollectionProviderIdentifier, !(curatedCollectionProviderIdentifier | equalCopy[2])) || -[NSString isEqual:](curatedCollectionProviderIdentifier, "isEqual:")) && ((muninViewState = self->_muninViewState, !(muninViewState | equalCopy[5])) || -[GEOMuninViewState isEqual:](muninViewState, "isEqual:")) && ((title = self->_title, !(title | equalCopy[7])) || -[NSString isEqual:](title, "isEqual:")))
  {
    subtitle = self->_subtitle;
    if (subtitle | equalCopy[6])
    {
      v12 = [(NSString *)subtitle isEqual:?];
    }

    else
    {
      v12 = 1;
    }
  }

  else
  {
    v12 = 0;
  }

  return v12;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
  v6 = [(GEOMapItemStorage *)self->_mapItemStorage copyWithZone:zone];
  v7 = v5[4];
  v5[4] = v6;

  v8 = [(RAPDirectionsRecording *)self->_directions copyWithZone:zone];
  v9 = v5[3];
  v5[3] = v8;

  v10 = [(NSString *)self->_curatedCollectionIdentifier copyWithZone:zone];
  v11 = v5[1];
  v5[1] = v10;

  v12 = [(NSString *)self->_curatedCollectionProviderIdentifier copyWithZone:zone];
  v13 = v5[2];
  v5[2] = v12;

  v14 = [(GEOMuninViewState *)self->_muninViewState copyWithZone:zone];
  v15 = v5[5];
  v5[5] = v14;

  v16 = [(NSString *)self->_title copyWithZone:zone];
  v17 = v5[7];
  v5[7] = v16;

  v18 = [(NSString *)self->_subtitle copyWithZone:zone];
  v19 = v5[6];
  v5[6] = v18;

  return v5;
}

- (void)copyTo:(id)to
{
  toCopy = to;
  v5 = toCopy;
  if (self->_mapItemStorage)
  {
    [toCopy setMapItemStorage:?];
    toCopy = v5;
  }

  if (self->_directions)
  {
    [v5 setDirections:?];
    toCopy = v5;
  }

  if (self->_curatedCollectionIdentifier)
  {
    [v5 setCuratedCollectionIdentifier:?];
    toCopy = v5;
  }

  if (self->_curatedCollectionProviderIdentifier)
  {
    [v5 setCuratedCollectionProviderIdentifier:?];
    toCopy = v5;
  }

  if (self->_muninViewState)
  {
    [v5 setMuninViewState:?];
    toCopy = v5;
  }

  if (self->_title)
  {
    [v5 setTitle:?];
    toCopy = v5;
  }

  if (self->_subtitle)
  {
    [v5 setSubtitle:?];
    toCopy = v5;
  }
}

- (void)writeTo:(id)to
{
  toCopy = to;
  v5 = toCopy;
  if (self->_mapItemStorage)
  {
    PBDataWriterWriteSubmessage();
    toCopy = v5;
  }

  if (self->_directions)
  {
    PBDataWriterWriteSubmessage();
    toCopy = v5;
  }

  if (self->_curatedCollectionIdentifier)
  {
    PBDataWriterWriteStringField();
    toCopy = v5;
  }

  if (self->_curatedCollectionProviderIdentifier)
  {
    PBDataWriterWriteStringField();
    toCopy = v5;
  }

  if (self->_muninViewState)
  {
    PBDataWriterWriteSubmessage();
    toCopy = v5;
  }

  if (self->_title)
  {
    PBDataWriterWriteStringField();
    toCopy = v5;
  }

  if (self->_subtitle)
  {
    PBDataWriterWriteStringField();
    toCopy = v5;
  }
}

- (BOOL)readFrom:(id)from
{
  position = [from position];
  if (position < [from length])
  {
    do
    {
      if ([from hasError])
      {
        return [from hasError] ^ 1;
      }

      v6 = 0;
      v7 = 0;
      v8 = 0;
      while (1)
      {
        LOBYTE(v21[0]) = 0;
        v9 = [from position] + 1;
        if (v9 >= [from position] && (v10 = objc_msgSend(from, "position") + 1, v10 <= objc_msgSend(from, "length")))
        {
          data = [from data];
          [data getBytes:v21 range:{objc_msgSend(from, "position"), 1}];

          [from setPosition:{objc_msgSend(from, "position") + 1}];
        }

        else
        {
          [from _setError];
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

      v13 = [from hasError] ? 0 : v8;
LABEL_15:
      if (([from hasError] & 1) != 0 || (v13 & 7) == 4)
      {
        return [from hasError] ^ 1;
      }

      v14 = v13 >> 3;
      if ((v13 >> 3) <= 3)
      {
        switch(v14)
        {
          case 1:
            v15 = objc_alloc_init(GEOMapItemStorage);
            v16 = 32;
            goto LABEL_36;
          case 2:
            v15 = objc_alloc_init(RAPDirectionsRecording);
            v16 = 24;
            goto LABEL_36;
          case 3:
            v17 = PBReaderReadString();
            v18 = 8;
            goto LABEL_34;
        }
      }

      else if (v14 > 5)
      {
        if (v14 == 6)
        {
          v17 = PBReaderReadString();
          v18 = 56;
LABEL_34:
          v15 = *&self->PBCodable_opaque[v18];
          *&self->PBCodable_opaque[v18] = v17;
          goto LABEL_39;
        }

        if (v14 == 7)
        {
          v17 = PBReaderReadString();
          v18 = 48;
          goto LABEL_34;
        }
      }

      else
      {
        if (v14 == 4)
        {
          v17 = PBReaderReadString();
          v18 = 16;
          goto LABEL_34;
        }

        if (v14 == 5)
        {
          v15 = objc_alloc_init(GEOMuninViewState);
          v16 = 40;
LABEL_36:
          objc_storeStrong(&self->PBCodable_opaque[v16], v15);
          v21[0] = 0;
          v21[1] = 0;
          if (!PBReaderPlaceMark() || ![(RAPDirectionsRecording *)v15 readFrom:from])
          {

            return 0;
          }

          PBReaderRecallMark();
LABEL_39:

          goto LABEL_40;
        }
      }

      if ((PBReaderSkipValueWithTag() & 1) == 0)
      {
        return 0;
      }

LABEL_40:
      position2 = [from position];
    }

    while (position2 < [from length]);
  }

  return [from hasError] ^ 1;
}

- (id)dictionaryRepresentation
{
  v3 = +[NSMutableDictionary dictionary];
  mapItemStorage = self->_mapItemStorage;
  if (mapItemStorage)
  {
    dictionaryRepresentation = [(GEOMapItemStorage *)mapItemStorage dictionaryRepresentation];
    [v3 setObject:dictionaryRepresentation forKey:@"mapItemStorage"];
  }

  directions = self->_directions;
  if (directions)
  {
    dictionaryRepresentation2 = [(RAPDirectionsRecording *)directions dictionaryRepresentation];
    [v3 setObject:dictionaryRepresentation2 forKey:@"directions"];
  }

  curatedCollectionIdentifier = self->_curatedCollectionIdentifier;
  if (curatedCollectionIdentifier)
  {
    [v3 setObject:curatedCollectionIdentifier forKey:@"curatedCollectionIdentifier"];
  }

  curatedCollectionProviderIdentifier = self->_curatedCollectionProviderIdentifier;
  if (curatedCollectionProviderIdentifier)
  {
    [v3 setObject:curatedCollectionProviderIdentifier forKey:@"curatedCollectionProviderIdentifier"];
  }

  muninViewState = self->_muninViewState;
  if (muninViewState)
  {
    dictionaryRepresentation3 = [(GEOMuninViewState *)muninViewState dictionaryRepresentation];
    [v3 setObject:dictionaryRepresentation3 forKey:@"muninViewState"];
  }

  title = self->_title;
  if (title)
  {
    [v3 setObject:title forKey:@"title"];
  }

  subtitle = self->_subtitle;
  if (subtitle)
  {
    [v3 setObject:subtitle forKey:@"subtitle"];
  }

  return v3;
}

- (id)description
{
  v7.receiver = self;
  v7.super_class = RapUserProfileRecord;
  v3 = [(RapUserProfileRecord *)&v7 description];
  dictionaryRepresentation = [(RapUserProfileRecord *)self dictionaryRepresentation];
  v5 = [NSString stringWithFormat:@"%@ %@", v3, dictionaryRepresentation];

  return v5;
}

@end