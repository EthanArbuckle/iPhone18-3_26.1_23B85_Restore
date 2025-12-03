@interface RAPUserSearchInput
- (BOOL)isEqual:(id)equal;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (id)dictionaryRepresentation;
- (id)originAsString:(int)string;
- (int)StringAsOrigin:(id)origin;
- (unint64_t)hash;
- (void)copyTo:(id)to;
- (void)mergeFrom:(id)from;
- (void)writeTo:(id)to;
@end

@implementation RAPUserSearchInput

- (void)mergeFrom:(id)from
{
  fromCopy = from;
  v11 = fromCopy;
  if (*(fromCopy + 6))
  {
    [(RAPUserSearchInput *)self setSearchString:?];
    fromCopy = v11;
  }

  if (*(fromCopy + 7))
  {
    [(RAPUserSearchInput *)self setSingleLineAddressString:?];
    fromCopy = v11;
  }

  placeMapItemStorage = self->_placeMapItemStorage;
  v6 = *(fromCopy + 5);
  if (placeMapItemStorage)
  {
    if (!v6)
    {
      goto LABEL_11;
    }

    [(GEOMapItemStorage *)placeMapItemStorage mergeFrom:?];
  }

  else
  {
    if (!v6)
    {
      goto LABEL_11;
    }

    [(RAPUserSearchInput *)self setPlaceMapItemStorage:?];
  }

  fromCopy = v11;
LABEL_11:
  completionStorage = self->_completionStorage;
  v8 = *(fromCopy + 1);
  if (completionStorage)
  {
    if (!v8)
    {
      goto LABEL_17;
    }

    [(GEOStorageCompletion *)completionStorage mergeFrom:?];
  }

  else
  {
    if (!v8)
    {
      goto LABEL_17;
    }

    [(RAPUserSearchInput *)self setCompletionStorage:?];
  }

  fromCopy = v11;
LABEL_17:
  coordinate = self->_coordinate;
  v10 = *(fromCopy + 2);
  if (coordinate)
  {
    if (!v10)
    {
      goto LABEL_23;
    }

    [(GEOLatLng *)coordinate mergeFrom:?];
  }

  else
  {
    if (!v10)
    {
      goto LABEL_23;
    }

    [(RAPUserSearchInput *)self setCoordinate:?];
  }

  fromCopy = v11;
LABEL_23:
  if (fromCopy[16])
  {
    self->_origin = fromCopy[8];
    *&self->_has |= 1u;
  }

  if (*(fromCopy + 3))
  {
    [(RAPUserSearchInput *)self setFindMyHandleID:?];
    fromCopy = v11;
  }
}

- (unint64_t)hash
{
  v3 = [(NSString *)self->_searchString hash];
  v4 = [(NSString *)self->_singleLineAddressString hash];
  v5 = [(GEOMapItemStorage *)self->_placeMapItemStorage hash];
  v6 = [(GEOStorageCompletion *)self->_completionStorage hash];
  v7 = [(GEOLatLng *)self->_coordinate hash];
  if (*&self->_has)
  {
    v8 = 2654435761 * self->_origin;
  }

  else
  {
    v8 = 0;
  }

  return v4 ^ v3 ^ v5 ^ v6 ^ v7 ^ v8 ^ [(NSString *)self->_findMyHandleID hash];
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (![equalCopy isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_19;
  }

  searchString = self->_searchString;
  if (searchString | *(equalCopy + 6))
  {
    if (![(NSString *)searchString isEqual:?])
    {
      goto LABEL_19;
    }
  }

  singleLineAddressString = self->_singleLineAddressString;
  if (singleLineAddressString | *(equalCopy + 7))
  {
    if (![(NSString *)singleLineAddressString isEqual:?])
    {
      goto LABEL_19;
    }
  }

  placeMapItemStorage = self->_placeMapItemStorage;
  if (placeMapItemStorage | *(equalCopy + 5))
  {
    if (![(GEOMapItemStorage *)placeMapItemStorage isEqual:?])
    {
      goto LABEL_19;
    }
  }

  completionStorage = self->_completionStorage;
  if (completionStorage | *(equalCopy + 1))
  {
    if (![(GEOStorageCompletion *)completionStorage isEqual:?])
    {
      goto LABEL_19;
    }
  }

  coordinate = self->_coordinate;
  if (coordinate | *(equalCopy + 2))
  {
    if (![(GEOLatLng *)coordinate isEqual:?])
    {
      goto LABEL_19;
    }
  }

  if (*&self->_has)
  {
    if ((*(equalCopy + 64) & 1) == 0 || self->_origin != *(equalCopy + 8))
    {
      goto LABEL_19;
    }
  }

  else if (*(equalCopy + 64))
  {
LABEL_19:
    v11 = 0;
    goto LABEL_20;
  }

  findMyHandleID = self->_findMyHandleID;
  if (findMyHandleID | *(equalCopy + 3))
  {
    v11 = [(NSString *)findMyHandleID isEqual:?];
  }

  else
  {
    v11 = 1;
  }

LABEL_20:

  return v11;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
  v6 = [(NSString *)self->_searchString copyWithZone:zone];
  v7 = v5[6];
  v5[6] = v6;

  v8 = [(NSString *)self->_singleLineAddressString copyWithZone:zone];
  v9 = v5[7];
  v5[7] = v8;

  v10 = [(GEOMapItemStorage *)self->_placeMapItemStorage copyWithZone:zone];
  v11 = v5[5];
  v5[5] = v10;

  v12 = [(GEOStorageCompletion *)self->_completionStorage copyWithZone:zone];
  v13 = v5[1];
  v5[1] = v12;

  v14 = [(GEOLatLng *)self->_coordinate copyWithZone:zone];
  v15 = v5[2];
  v5[2] = v14;

  if (*&self->_has)
  {
    *(v5 + 8) = self->_origin;
    *(v5 + 64) |= 1u;
  }

  v16 = [(NSString *)self->_findMyHandleID copyWithZone:zone];
  v17 = v5[3];
  v5[3] = v16;

  return v5;
}

- (void)copyTo:(id)to
{
  toCopy = to;
  v5 = toCopy;
  if (self->_searchString)
  {
    [toCopy setSearchString:?];
    toCopy = v5;
  }

  if (self->_singleLineAddressString)
  {
    [v5 setSingleLineAddressString:?];
    toCopy = v5;
  }

  if (self->_placeMapItemStorage)
  {
    [v5 setPlaceMapItemStorage:?];
    toCopy = v5;
  }

  if (self->_completionStorage)
  {
    [v5 setCompletionStorage:?];
    toCopy = v5;
  }

  if (self->_coordinate)
  {
    [v5 setCoordinate:?];
    toCopy = v5;
  }

  if (*&self->_has)
  {
    *(toCopy + 8) = self->_origin;
    *(toCopy + 64) |= 1u;
  }

  if (self->_findMyHandleID)
  {
    [v5 setFindMyHandleID:?];
    toCopy = v5;
  }
}

- (void)writeTo:(id)to
{
  toCopy = to;
  v5 = toCopy;
  if (self->_searchString)
  {
    PBDataWriterWriteStringField();
    toCopy = v5;
  }

  if (self->_singleLineAddressString)
  {
    PBDataWriterWriteStringField();
    toCopy = v5;
  }

  if (self->_placeMapItemStorage)
  {
    PBDataWriterWriteSubmessage();
    toCopy = v5;
  }

  if (self->_completionStorage)
  {
    PBDataWriterWriteSubmessage();
    toCopy = v5;
  }

  if (self->_coordinate)
  {
    PBDataWriterWriteSubmessage();
    toCopy = v5;
  }

  if (*&self->_has)
  {
    PBDataWriterWriteInt32Field();
    toCopy = v5;
  }

  if (self->_findMyHandleID)
  {
    PBDataWriterWriteStringField();
    toCopy = v5;
  }
}

- (id)dictionaryRepresentation
{
  v3 = +[NSMutableDictionary dictionary];
  v4 = v3;
  searchString = self->_searchString;
  if (searchString)
  {
    [v3 setObject:searchString forKey:@"searchString"];
  }

  singleLineAddressString = self->_singleLineAddressString;
  if (singleLineAddressString)
  {
    [v4 setObject:singleLineAddressString forKey:@"singleLineAddressString"];
  }

  placeMapItemStorage = self->_placeMapItemStorage;
  if (placeMapItemStorage)
  {
    dictionaryRepresentation = [(GEOMapItemStorage *)placeMapItemStorage dictionaryRepresentation];
    [v4 setObject:dictionaryRepresentation forKey:@"placeMapItemStorage"];
  }

  completionStorage = self->_completionStorage;
  if (completionStorage)
  {
    dictionaryRepresentation2 = [(GEOStorageCompletion *)completionStorage dictionaryRepresentation];
    [v4 setObject:dictionaryRepresentation2 forKey:@"completionStorage"];
  }

  coordinate = self->_coordinate;
  if (coordinate)
  {
    dictionaryRepresentation3 = [(GEOLatLng *)coordinate dictionaryRepresentation];
    [v4 setObject:dictionaryRepresentation3 forKey:@"coordinate"];
  }

  if (*&self->_has)
  {
    origin = self->_origin;
    if (origin >= 4)
    {
      v14 = [NSString stringWithFormat:@"(unknown: %i)", self->_origin];
    }

    else
    {
      v14 = off_101632E20[origin];
    }

    [v4 setObject:v14 forKey:@"origin"];
  }

  findMyHandleID = self->_findMyHandleID;
  if (findMyHandleID)
  {
    [v4 setObject:findMyHandleID forKey:@"findMyHandleID"];
  }

  return v4;
}

- (id)description
{
  v7.receiver = self;
  v7.super_class = RAPUserSearchInput;
  v3 = [(RAPUserSearchInput *)&v7 description];
  dictionaryRepresentation = [(RAPUserSearchInput *)self dictionaryRepresentation];
  v5 = [NSString stringWithFormat:@"%@ %@", v3, dictionaryRepresentation];

  return v5;
}

- (int)StringAsOrigin:(id)origin
{
  originCopy = origin;
  if ([originCopy isEqualToString:@"OTHER"])
  {
    v4 = 0;
  }

  else if ([originCopy isEqualToString:@"CONTACT"])
  {
    v4 = 1;
  }

  else if ([originCopy isEqualToString:@"CURRENT_LOCATION"])
  {
    v4 = 2;
  }

  else if ([originCopy isEqualToString:@"DROPPED_PIN"])
  {
    v4 = 3;
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (id)originAsString:(int)string
{
  if (string >= 4)
  {
    v4 = [NSString stringWithFormat:@"(unknown: %i)", *&string];
  }

  else
  {
    v4 = off_101632E20[string];
  }

  return v4;
}

@end