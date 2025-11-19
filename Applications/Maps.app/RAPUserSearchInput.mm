@interface RAPUserSearchInput
- (BOOL)isEqual:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (id)dictionaryRepresentation;
- (id)originAsString:(int)a3;
- (int)StringAsOrigin:(id)a3;
- (unint64_t)hash;
- (void)copyTo:(id)a3;
- (void)mergeFrom:(id)a3;
- (void)writeTo:(id)a3;
@end

@implementation RAPUserSearchInput

- (void)mergeFrom:(id)a3
{
  v4 = a3;
  v11 = v4;
  if (*(v4 + 6))
  {
    [(RAPUserSearchInput *)self setSearchString:?];
    v4 = v11;
  }

  if (*(v4 + 7))
  {
    [(RAPUserSearchInput *)self setSingleLineAddressString:?];
    v4 = v11;
  }

  placeMapItemStorage = self->_placeMapItemStorage;
  v6 = *(v4 + 5);
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

  v4 = v11;
LABEL_11:
  completionStorage = self->_completionStorage;
  v8 = *(v4 + 1);
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

  v4 = v11;
LABEL_17:
  coordinate = self->_coordinate;
  v10 = *(v4 + 2);
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

  v4 = v11;
LABEL_23:
  if (v4[16])
  {
    self->_origin = v4[8];
    *&self->_has |= 1u;
  }

  if (*(v4 + 3))
  {
    [(RAPUserSearchInput *)self setFindMyHandleID:?];
    v4 = v11;
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

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (![v4 isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_19;
  }

  searchString = self->_searchString;
  if (searchString | *(v4 + 6))
  {
    if (![(NSString *)searchString isEqual:?])
    {
      goto LABEL_19;
    }
  }

  singleLineAddressString = self->_singleLineAddressString;
  if (singleLineAddressString | *(v4 + 7))
  {
    if (![(NSString *)singleLineAddressString isEqual:?])
    {
      goto LABEL_19;
    }
  }

  placeMapItemStorage = self->_placeMapItemStorage;
  if (placeMapItemStorage | *(v4 + 5))
  {
    if (![(GEOMapItemStorage *)placeMapItemStorage isEqual:?])
    {
      goto LABEL_19;
    }
  }

  completionStorage = self->_completionStorage;
  if (completionStorage | *(v4 + 1))
  {
    if (![(GEOStorageCompletion *)completionStorage isEqual:?])
    {
      goto LABEL_19;
    }
  }

  coordinate = self->_coordinate;
  if (coordinate | *(v4 + 2))
  {
    if (![(GEOLatLng *)coordinate isEqual:?])
    {
      goto LABEL_19;
    }
  }

  if (*&self->_has)
  {
    if ((*(v4 + 64) & 1) == 0 || self->_origin != *(v4 + 8))
    {
      goto LABEL_19;
    }
  }

  else if (*(v4 + 64))
  {
LABEL_19:
    v11 = 0;
    goto LABEL_20;
  }

  findMyHandleID = self->_findMyHandleID;
  if (findMyHandleID | *(v4 + 3))
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

- (id)copyWithZone:(_NSZone *)a3
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{a3), "init"}];
  v6 = [(NSString *)self->_searchString copyWithZone:a3];
  v7 = v5[6];
  v5[6] = v6;

  v8 = [(NSString *)self->_singleLineAddressString copyWithZone:a3];
  v9 = v5[7];
  v5[7] = v8;

  v10 = [(GEOMapItemStorage *)self->_placeMapItemStorage copyWithZone:a3];
  v11 = v5[5];
  v5[5] = v10;

  v12 = [(GEOStorageCompletion *)self->_completionStorage copyWithZone:a3];
  v13 = v5[1];
  v5[1] = v12;

  v14 = [(GEOLatLng *)self->_coordinate copyWithZone:a3];
  v15 = v5[2];
  v5[2] = v14;

  if (*&self->_has)
  {
    *(v5 + 8) = self->_origin;
    *(v5 + 64) |= 1u;
  }

  v16 = [(NSString *)self->_findMyHandleID copyWithZone:a3];
  v17 = v5[3];
  v5[3] = v16;

  return v5;
}

- (void)copyTo:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (self->_searchString)
  {
    [v4 setSearchString:?];
    v4 = v5;
  }

  if (self->_singleLineAddressString)
  {
    [v5 setSingleLineAddressString:?];
    v4 = v5;
  }

  if (self->_placeMapItemStorage)
  {
    [v5 setPlaceMapItemStorage:?];
    v4 = v5;
  }

  if (self->_completionStorage)
  {
    [v5 setCompletionStorage:?];
    v4 = v5;
  }

  if (self->_coordinate)
  {
    [v5 setCoordinate:?];
    v4 = v5;
  }

  if (*&self->_has)
  {
    *(v4 + 8) = self->_origin;
    *(v4 + 64) |= 1u;
  }

  if (self->_findMyHandleID)
  {
    [v5 setFindMyHandleID:?];
    v4 = v5;
  }
}

- (void)writeTo:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (self->_searchString)
  {
    PBDataWriterWriteStringField();
    v4 = v5;
  }

  if (self->_singleLineAddressString)
  {
    PBDataWriterWriteStringField();
    v4 = v5;
  }

  if (self->_placeMapItemStorage)
  {
    PBDataWriterWriteSubmessage();
    v4 = v5;
  }

  if (self->_completionStorage)
  {
    PBDataWriterWriteSubmessage();
    v4 = v5;
  }

  if (self->_coordinate)
  {
    PBDataWriterWriteSubmessage();
    v4 = v5;
  }

  if (*&self->_has)
  {
    PBDataWriterWriteInt32Field();
    v4 = v5;
  }

  if (self->_findMyHandleID)
  {
    PBDataWriterWriteStringField();
    v4 = v5;
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
    v8 = [(GEOMapItemStorage *)placeMapItemStorage dictionaryRepresentation];
    [v4 setObject:v8 forKey:@"placeMapItemStorage"];
  }

  completionStorage = self->_completionStorage;
  if (completionStorage)
  {
    v10 = [(GEOStorageCompletion *)completionStorage dictionaryRepresentation];
    [v4 setObject:v10 forKey:@"completionStorage"];
  }

  coordinate = self->_coordinate;
  if (coordinate)
  {
    v12 = [(GEOLatLng *)coordinate dictionaryRepresentation];
    [v4 setObject:v12 forKey:@"coordinate"];
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
  v4 = [(RAPUserSearchInput *)self dictionaryRepresentation];
  v5 = [NSString stringWithFormat:@"%@ %@", v3, v4];

  return v5;
}

- (int)StringAsOrigin:(id)a3
{
  v3 = a3;
  if ([v3 isEqualToString:@"OTHER"])
  {
    v4 = 0;
  }

  else if ([v3 isEqualToString:@"CONTACT"])
  {
    v4 = 1;
  }

  else if ([v3 isEqualToString:@"CURRENT_LOCATION"])
  {
    v4 = 2;
  }

  else if ([v3 isEqualToString:@"DROPPED_PIN"])
  {
    v4 = 3;
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (id)originAsString:(int)a3
{
  if (a3 >= 4)
  {
    v4 = [NSString stringWithFormat:@"(unknown: %i)", *&a3];
  }

  else
  {
    v4 = off_101632E20[a3];
  }

  return v4;
}

@end