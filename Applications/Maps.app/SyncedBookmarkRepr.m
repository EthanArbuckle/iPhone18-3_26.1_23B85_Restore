@interface SyncedBookmarkRepr
- (BOOL)isEqual:(id)a3;
- (GEOMapRegion)mapRegion;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (id)dictionaryRepresentation;
- (id)directionsModeAsString:(int)a3;
- (id)richMapsActivity;
- (id)typeAsString:(int)a3;
- (int)StringAsDirectionsMode:(id)a3;
- (int)StringAsType:(id)a3;
- (int)directionsMode;
- (unint64_t)hash;
- (void)addPlaces:(id)a3;
- (void)copyTo:(id)a3;
- (void)mergeFrom:(id)a3;
- (void)setHasDirectionsMode:(BOOL)a3;
- (void)setHasLatitude:(BOOL)a3;
- (void)setHasLongitude:(BOOL)a3;
- (void)setHasProviderID:(BOOL)a3;
- (void)setHasRegionLatitude:(BOOL)a3;
- (void)setHasRegionLatitudeDelta:(BOOL)a3;
- (void)setHasRegionLongitude:(BOOL)a3;
- (void)setHasRegionLongitudeDelta:(BOOL)a3;
- (void)writeTo:(id)a3;
@end

@implementation SyncedBookmarkRepr

- (id)richMapsActivity
{
  v3 = [(SyncedBookmarkRepr *)self type];
  if (v3 == 4)
  {
    if ([(SyncedBookmarkRepr *)self placesCount]< 2)
    {
LABEL_39:
      v11 = 0;
      goto LABEL_40;
    }

    v13 = [(SyncedBookmarkRepr *)self placesAtIndex:0];
    v18 = [(SyncedBookmarkRepr *)self places];
    v16 = [v18 lastObject];

    v17 = [[SearchResult alloc] initWithBookmarkRepresentation:v13];
    v19 = [[SearchResult alloc] initWithBookmarkRepresentation:v16];
    v20 = [(SearchResult *)v17 composedWaypoint];
    v21 = [(SearchResult *)v19 composedWaypoint];
    v22 = v21;
    v14 = 0;
    if (v20 && v21)
    {
      v23 = [(SyncedBookmarkRepr *)self directionsMode]- 2;
      if (v23 > 2)
      {
        v24 = 0;
      }

      else
      {
        v24 = qword_101215CC8[v23] - 1;
      }

      v33 = objc_alloc_init(DirectionsPlan);
      v34 = objc_alloc_init(GEOStorageRouteRequestStorage);
      [(DirectionsPlan *)v33 setRouteRequestStorage:v34];

      v35 = [v13 title];
      [(DirectionsPlan *)v33 setOriginString:v35];

      v36 = [v16 title];
      [(DirectionsPlan *)v33 setDestinationString:v36];

      if (v24 > 7)
      {
        v37 = 0;
      }

      else
      {
        v37 = dword_101215CE0[v24];
      }

      v38 = [(DirectionsPlan *)v33 routeRequestStorage];
      [v38 setTransportType:v37];

      v45[0] = v20;
      v45[1] = v22;
      v39 = [NSArray arrayWithObjects:v45 count:2];
      v40 = [v39 mutableCopy];
      v41 = [(DirectionsPlan *)v33 routeRequestStorage];
      [v41 setWaypoints:v40];

      [(DirectionsPlan *)v33 setDisplayMethod:1];
      v14 = objc_alloc_init(MapsActivity);
      [(MapsActivity *)v14 setDirectionsPlan:v33];
    }

    goto LABEL_35;
  }

  if (v3 != 3)
  {
    if ([(SyncedBookmarkRepr *)self type]== 2 && (![(SyncedBookmarkRepr *)self hasLatitude]|| ![(SyncedBookmarkRepr *)self hasLongitude]))
    {
      [(SyncedBookmarkRepr *)self regionLatitude];
      [(SyncedBookmarkRepr *)self setLatitude:?];
      [(SyncedBookmarkRepr *)self regionLongitude];
      [(SyncedBookmarkRepr *)self setLongitude:?];
    }

    v25 = [[SearchResult alloc] initWithBookmarkRepresentation:self];
    v13 = v25;
    if (!v25)
    {
      goto LABEL_26;
    }

    [(SearchResult *)v25 coordinate];
    v14 = 0;
    if (fabs(v27) > 180.0 || v26 < -90.0 || v26 > 90.0)
    {
LABEL_37:

      if (v14)
      {
        v42 = objc_alloc_init(NotificationRestorationAction);
        v11 = [[RichMapsActivity alloc] initWithMapsActivity:v14 mapsAction:v42];

        goto LABEL_40;
      }

      goto LABEL_39;
    }

    [v13 coordinate];
    if (fabs(v29) < 0.00000000999999994 && fabs(v28) < 0.00000000999999994)
    {
LABEL_26:
      v14 = 0;
      goto LABEL_37;
    }

    v30 = [v13 mapItem];
    v16 = [v30 _geoMapItemStorageForPersistence];

    if (v16)
    {
      v14 = objc_alloc_init(MapsActivity);
      v44 = v16;
      v31 = [NSArray arrayWithObjects:&v44 count:1];
      v32 = [v31 mutableCopy];
      [(MapsActivity *)v14 setSearchPlaces:v32];

      [(MapsActivity *)v14 setSelectedPlaceIndex:0];
    }

    else
    {
      v14 = 0;
    }

LABEL_36:

    goto LABEL_37;
  }

  [(SyncedBookmarkRepr *)self regionLatitude];
  v5 = v4;
  [(SyncedBookmarkRepr *)self regionLongitude];
  v7 = CLLocationCoordinate2DMake(v5, v6);
  [(SyncedBookmarkRepr *)self regionLatitudeDelta];
  v9 = v8;
  [(SyncedBookmarkRepr *)self regionLongitudeDelta];
  v11 = 0;
  if (fabs(v7.longitude) <= 180.0 && v7.latitude >= -90.0 && v7.latitude <= 90.0)
  {
    v11 = 0;
    if (v9 >= 0.0 && v9 <= 180.0 && v10 >= 0.0 && v10 <= 360.0)
    {
      v12 = +[UIScreen mainScreen];
      [v12 bounds];

      MKMapRectForCoordinateRegion();
      v13 = [MKMapCamera _cameraLookingAtMapRect:"_cameraLookingAtMapRect:forViewSize:" forViewSize:?];
      v14 = objc_alloc_init(MapsActivity);
      v15 = objc_alloc_init(GEOURLOptions);
      [(MapsActivity *)v14 setDisplayOptions:v15];

      v16 = [v13 geoCamera];
      v17 = [(MapsActivity *)v14 displayOptions];
      [(SearchResult *)v17 setCamera:v16];
LABEL_35:

      goto LABEL_36;
    }
  }

LABEL_40:

  return v11;
}

- (GEOMapRegion)mapRegion
{
  [(SyncedBookmarkRepr *)self regionLatitude];
  v4 = v3;
  [(SyncedBookmarkRepr *)self regionLongitude];
  v6 = v5;
  [(SyncedBookmarkRepr *)self regionLatitudeDelta];
  v8 = v7;
  [(SyncedBookmarkRepr *)self regionLongitudeDelta];

  return [GEOMapRegion _mapkit_mapRegionForLatitude:v4 longitude:v6 latSpan:v8 longSpan:v9];
}

- (void)mergeFrom:(id)a3
{
  v4 = a3;
  self->_type = *(v4 + 28);
  if (*(v4 + 13))
  {
    [(SyncedBookmarkRepr *)self setTitle:?];
  }

  if (*(v4 + 12))
  {
    [(SyncedBookmarkRepr *)self setSingleLineAddress:?];
  }

  v5 = *(v4 + 58);
  if ((v5 & 2) != 0)
  {
    self->_latitude = *(v4 + 2);
    *&self->_has |= 2u;
    v5 = *(v4 + 58);
    if ((v5 & 4) == 0)
    {
LABEL_7:
      if ((v5 & 8) == 0)
      {
        goto LABEL_8;
      }

      goto LABEL_28;
    }
  }

  else if ((v5 & 4) == 0)
  {
    goto LABEL_7;
  }

  self->_longitude = *(v4 + 3);
  *&self->_has |= 4u;
  v5 = *(v4 + 58);
  if ((v5 & 8) == 0)
  {
LABEL_8:
    if ((v5 & 0x20) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_29;
  }

LABEL_28:
  self->_regionLatitude = *(v4 + 4);
  *&self->_has |= 8u;
  v5 = *(v4 + 58);
  if ((v5 & 0x20) == 0)
  {
LABEL_9:
    if ((v5 & 0x10) == 0)
    {
      goto LABEL_10;
    }

    goto LABEL_30;
  }

LABEL_29:
  self->_regionLongitude = *(v4 + 6);
  *&self->_has |= 0x20u;
  v5 = *(v4 + 58);
  if ((v5 & 0x10) == 0)
  {
LABEL_10:
    if ((v5 & 0x40) == 0)
    {
      goto LABEL_11;
    }

    goto LABEL_31;
  }

LABEL_30:
  self->_regionLatitudeDelta = *(v4 + 5);
  *&self->_has |= 0x10u;
  v5 = *(v4 + 58);
  if ((v5 & 0x40) == 0)
  {
LABEL_11:
    if ((v5 & 0x100) == 0)
    {
      goto LABEL_12;
    }

    goto LABEL_32;
  }

LABEL_31:
  self->_regionLongitudeDelta = *(v4 + 7);
  *&self->_has |= 0x40u;
  v5 = *(v4 + 58);
  if ((v5 & 0x100) == 0)
  {
LABEL_12:
    if ((v5 & 1) == 0)
    {
      goto LABEL_14;
    }

    goto LABEL_13;
  }

LABEL_32:
  self->_providerID = *(v4 + 22);
  *&self->_has |= 0x100u;
  if (*(v4 + 58))
  {
LABEL_13:
    self->_businessID = *(v4 + 1);
    *&self->_has |= 1u;
  }

LABEL_14:
  if (*(v4 + 8))
  {
    [(SyncedBookmarkRepr *)self setContactIdentifier:?];
  }

  if ((*(v4 + 58) & 0x80) != 0)
  {
    self->_directionsMode = *(v4 + 18);
    *&self->_has |= 0x80u;
  }

  v13 = 0u;
  v14 = 0u;
  v11 = 0u;
  v12 = 0u;
  v6 = *(v4 + 10);
  v7 = [v6 countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v12;
    do
    {
      for (i = 0; i != v8; i = i + 1)
      {
        if (*v12 != v9)
        {
          objc_enumerationMutation(v6);
        }

        [(SyncedBookmarkRepr *)self addPlaces:*(*(&v11 + 1) + 8 * i), v11];
      }

      v8 = [v6 countByEnumeratingWithState:&v11 objects:v15 count:16];
    }

    while (v8);
  }
}

- (unint64_t)hash
{
  type = self->_type;
  v34 = [(NSString *)self->_title hash];
  v33 = [(NSString *)self->_singleLineAddress hash];
  has = self->_has;
  if ((has & 2) != 0)
  {
    v5 = fabs(self->_latitude);
    v6 = floor(v5 + 0.5);
    v7 = (v5 - v6) * 1.84467441e19;
    v4 = 2654435761u * (v6 - trunc(v6 * 5.42101086e-20) * 1.84467441e19);
    if (v7 >= 0.0)
    {
      if (v7 > 0.0)
      {
        v4 += v7;
      }
    }

    else
    {
      v4 -= fabs(v7);
    }
  }

  else
  {
    v4 = 0;
  }

  if ((has & 4) != 0)
  {
    v9 = fabs(self->_longitude);
    v10 = floor(v9 + 0.5);
    v11 = (v9 - v10) * 1.84467441e19;
    v8 = 2654435761u * (v10 - trunc(v10 * 5.42101086e-20) * 1.84467441e19);
    if (v11 >= 0.0)
    {
      if (v11 > 0.0)
      {
        v8 += v11;
      }
    }

    else
    {
      v8 -= fabs(v11);
    }
  }

  else
  {
    v8 = 0;
  }

  if ((has & 8) != 0)
  {
    v13 = fabs(self->_regionLatitude);
    v14 = floor(v13 + 0.5);
    v15 = (v13 - v14) * 1.84467441e19;
    v12 = 2654435761u * (v14 - trunc(v14 * 5.42101086e-20) * 1.84467441e19);
    if (v15 >= 0.0)
    {
      if (v15 > 0.0)
      {
        v12 += v15;
      }
    }

    else
    {
      v12 -= fabs(v15);
    }
  }

  else
  {
    v12 = 0;
  }

  if ((has & 0x20) != 0)
  {
    v17 = fabs(self->_regionLongitude);
    v18 = floor(v17 + 0.5);
    v19 = (v17 - v18) * 1.84467441e19;
    v16 = 2654435761u * (v18 - trunc(v18 * 5.42101086e-20) * 1.84467441e19);
    if (v19 >= 0.0)
    {
      if (v19 > 0.0)
      {
        v16 += v19;
      }
    }

    else
    {
      v16 -= fabs(v19);
    }
  }

  else
  {
    v16 = 0;
  }

  if ((has & 0x10) != 0)
  {
    v21 = fabs(self->_regionLatitudeDelta);
    v22 = floor(v21 + 0.5);
    v23 = (v21 - v22) * 1.84467441e19;
    v20 = 2654435761u * (v22 - trunc(v22 * 5.42101086e-20) * 1.84467441e19);
    if (v23 >= 0.0)
    {
      if (v23 > 0.0)
      {
        v20 += v23;
      }
    }

    else
    {
      v20 -= fabs(v23);
    }
  }

  else
  {
    v20 = 0;
  }

  if ((has & 0x40) != 0)
  {
    v25 = fabs(self->_regionLongitudeDelta);
    v26 = floor(v25 + 0.5);
    v27 = (v25 - v26) * 1.84467441e19;
    v24 = 2654435761u * (v26 - trunc(v26 * 5.42101086e-20) * 1.84467441e19);
    if (v27 >= 0.0)
    {
      if (v27 > 0.0)
      {
        v24 += v27;
      }
    }

    else
    {
      v24 -= fabs(v27);
    }
  }

  else
  {
    v24 = 0;
  }

  if ((*&self->_has & 0x100) != 0)
  {
    v28 = 2654435761 * self->_providerID;
    if (has)
    {
      goto LABEL_39;
    }
  }

  else
  {
    v28 = 0;
    if (has)
    {
LABEL_39:
      v29 = 2654435761u * self->_businessID;
      goto LABEL_42;
    }
  }

  v29 = 0;
LABEL_42:
  v30 = [(NSString *)self->_contactIdentifier hash];
  if ((*&self->_has & 0x80) != 0)
  {
    v31 = 2654435761 * self->_directionsMode;
  }

  else
  {
    v31 = 0;
  }

  return v34 ^ v33 ^ v4 ^ v8 ^ v12 ^ (2654435761 * type) ^ v16 ^ v20 ^ v24 ^ v28 ^ v29 ^ v30 ^ v31 ^ [(NSMutableArray *)self->_places hash];
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (![v4 isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_57;
  }

  if (self->_type != *(v4 + 28))
  {
    goto LABEL_57;
  }

  title = self->_title;
  if (title | *(v4 + 13))
  {
    if (![(NSString *)title isEqual:?])
    {
      goto LABEL_57;
    }
  }

  singleLineAddress = self->_singleLineAddress;
  if (singleLineAddress | *(v4 + 12))
  {
    if (![(NSString *)singleLineAddress isEqual:?])
    {
      goto LABEL_57;
    }
  }

  has = self->_has;
  v8 = *(v4 + 58);
  if ((has & 2) != 0)
  {
    if ((v8 & 2) == 0 || self->_latitude != *(v4 + 2))
    {
      goto LABEL_57;
    }
  }

  else if ((v8 & 2) != 0)
  {
    goto LABEL_57;
  }

  if ((has & 4) != 0)
  {
    if ((v8 & 4) == 0 || self->_longitude != *(v4 + 3))
    {
      goto LABEL_57;
    }
  }

  else if ((v8 & 4) != 0)
  {
    goto LABEL_57;
  }

  if ((has & 8) != 0)
  {
    if ((v8 & 8) == 0 || self->_regionLatitude != *(v4 + 4))
    {
      goto LABEL_57;
    }
  }

  else if ((v8 & 8) != 0)
  {
    goto LABEL_57;
  }

  if ((has & 0x20) != 0)
  {
    if ((v8 & 0x20) == 0 || self->_regionLongitude != *(v4 + 6))
    {
      goto LABEL_57;
    }
  }

  else if ((v8 & 0x20) != 0)
  {
    goto LABEL_57;
  }

  if ((has & 0x10) != 0)
  {
    if ((v8 & 0x10) == 0 || self->_regionLatitudeDelta != *(v4 + 5))
    {
      goto LABEL_57;
    }
  }

  else if ((v8 & 0x10) != 0)
  {
    goto LABEL_57;
  }

  if ((has & 0x40) != 0)
  {
    if ((v8 & 0x40) == 0 || self->_regionLongitudeDelta != *(v4 + 7))
    {
      goto LABEL_57;
    }
  }

  else if ((v8 & 0x40) != 0)
  {
    goto LABEL_57;
  }

  if ((*&self->_has & 0x100) != 0)
  {
    if ((*(v4 + 58) & 0x100) == 0 || self->_providerID != *(v4 + 22))
    {
      goto LABEL_57;
    }
  }

  else if ((*(v4 + 58) & 0x100) != 0)
  {
    goto LABEL_57;
  }

  if (has)
  {
    if ((v8 & 1) == 0 || self->_businessID != *(v4 + 1))
    {
      goto LABEL_57;
    }
  }

  else if (v8)
  {
    goto LABEL_57;
  }

  contactIdentifier = self->_contactIdentifier;
  if (contactIdentifier | *(v4 + 8))
  {
    if (![(NSString *)contactIdentifier isEqual:?])
    {
LABEL_57:
      v11 = 0;
      goto LABEL_58;
    }

    has = self->_has;
    v8 = *(v4 + 58);
  }

  if ((has & 0x80) != 0)
  {
    if ((v8 & 0x80) == 0 || self->_directionsMode != *(v4 + 18))
    {
      goto LABEL_57;
    }
  }

  else if ((v8 & 0x80) != 0)
  {
    goto LABEL_57;
  }

  places = self->_places;
  if (places | *(v4 + 10))
  {
    v11 = [(NSMutableArray *)places isEqual:?];
  }

  else
  {
    v11 = 1;
  }

LABEL_58:

  return v11;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{a3), "init"}];
  v5[28] = self->_type;
  v6 = [(NSString *)self->_title copyWithZone:a3];
  v7 = *(v5 + 13);
  *(v5 + 13) = v6;

  v8 = [(NSString *)self->_singleLineAddress copyWithZone:a3];
  v9 = *(v5 + 12);
  *(v5 + 12) = v8;

  has = self->_has;
  if ((has & 2) != 0)
  {
    *(v5 + 2) = *&self->_latitude;
    *(v5 + 58) |= 2u;
    has = self->_has;
    if ((has & 4) == 0)
    {
LABEL_3:
      if ((has & 8) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_22;
    }
  }

  else if ((has & 4) == 0)
  {
    goto LABEL_3;
  }

  *(v5 + 3) = *&self->_longitude;
  *(v5 + 58) |= 4u;
  has = self->_has;
  if ((has & 8) == 0)
  {
LABEL_4:
    if ((has & 0x20) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_23;
  }

LABEL_22:
  *(v5 + 4) = *&self->_regionLatitude;
  *(v5 + 58) |= 8u;
  has = self->_has;
  if ((has & 0x20) == 0)
  {
LABEL_5:
    if ((has & 0x10) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_24;
  }

LABEL_23:
  *(v5 + 6) = *&self->_regionLongitude;
  *(v5 + 58) |= 0x20u;
  has = self->_has;
  if ((has & 0x10) == 0)
  {
LABEL_6:
    if ((has & 0x40) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_25;
  }

LABEL_24:
  *(v5 + 5) = *&self->_regionLatitudeDelta;
  *(v5 + 58) |= 0x10u;
  has = self->_has;
  if ((has & 0x40) == 0)
  {
LABEL_7:
    if ((has & 0x100) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_26;
  }

LABEL_25:
  *(v5 + 7) = *&self->_regionLongitudeDelta;
  *(v5 + 58) |= 0x40u;
  has = self->_has;
  if ((has & 0x100) == 0)
  {
LABEL_8:
    if ((has & 1) == 0)
    {
      goto LABEL_10;
    }

    goto LABEL_9;
  }

LABEL_26:
  v5[22] = self->_providerID;
  *(v5 + 58) |= 0x100u;
  if (*&self->_has)
  {
LABEL_9:
    *(v5 + 1) = self->_businessID;
    *(v5 + 58) |= 1u;
  }

LABEL_10:
  v11 = [(NSString *)self->_contactIdentifier copyWithZone:a3];
  v12 = *(v5 + 8);
  *(v5 + 8) = v11;

  if ((*&self->_has & 0x80) != 0)
  {
    v5[18] = self->_directionsMode;
    *(v5 + 58) |= 0x80u;
  }

  v22 = 0u;
  v23 = 0u;
  v20 = 0u;
  v21 = 0u;
  v13 = self->_places;
  v14 = [(NSMutableArray *)v13 countByEnumeratingWithState:&v20 objects:v24 count:16];
  if (v14)
  {
    v15 = v14;
    v16 = *v21;
    do
    {
      for (i = 0; i != v15; i = i + 1)
      {
        if (*v21 != v16)
        {
          objc_enumerationMutation(v13);
        }

        v18 = [*(*(&v20 + 1) + 8 * i) copyWithZone:{a3, v20}];
        [v5 addPlaces:v18];
      }

      v15 = [(NSMutableArray *)v13 countByEnumeratingWithState:&v20 objects:v24 count:16];
    }

    while (v15);
  }

  return v5;
}

- (void)copyTo:(id)a3
{
  v4 = a3;
  v4[28] = self->_type;
  v10 = v4;
  if (self->_title)
  {
    [v4 setTitle:?];
    v4 = v10;
  }

  if (self->_singleLineAddress)
  {
    [v10 setSingleLineAddress:?];
    v4 = v10;
  }

  has = self->_has;
  if ((has & 2) != 0)
  {
    *(v4 + 2) = *&self->_latitude;
    *(v4 + 58) |= 2u;
    has = self->_has;
    if ((has & 4) == 0)
    {
LABEL_7:
      if ((has & 8) == 0)
      {
        goto LABEL_8;
      }

      goto LABEL_27;
    }
  }

  else if ((has & 4) == 0)
  {
    goto LABEL_7;
  }

  *(v4 + 3) = *&self->_longitude;
  *(v4 + 58) |= 4u;
  has = self->_has;
  if ((has & 8) == 0)
  {
LABEL_8:
    if ((has & 0x20) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_28;
  }

LABEL_27:
  *(v4 + 4) = *&self->_regionLatitude;
  *(v4 + 58) |= 8u;
  has = self->_has;
  if ((has & 0x20) == 0)
  {
LABEL_9:
    if ((has & 0x10) == 0)
    {
      goto LABEL_10;
    }

    goto LABEL_29;
  }

LABEL_28:
  *(v4 + 6) = *&self->_regionLongitude;
  *(v4 + 58) |= 0x20u;
  has = self->_has;
  if ((has & 0x10) == 0)
  {
LABEL_10:
    if ((has & 0x40) == 0)
    {
      goto LABEL_11;
    }

    goto LABEL_30;
  }

LABEL_29:
  *(v4 + 5) = *&self->_regionLatitudeDelta;
  *(v4 + 58) |= 0x10u;
  has = self->_has;
  if ((has & 0x40) == 0)
  {
LABEL_11:
    if ((has & 0x100) == 0)
    {
      goto LABEL_12;
    }

    goto LABEL_31;
  }

LABEL_30:
  *(v4 + 7) = *&self->_regionLongitudeDelta;
  *(v4 + 58) |= 0x40u;
  has = self->_has;
  if ((has & 0x100) == 0)
  {
LABEL_12:
    if ((has & 1) == 0)
    {
      goto LABEL_14;
    }

    goto LABEL_13;
  }

LABEL_31:
  v4[22] = self->_providerID;
  *(v4 + 58) |= 0x100u;
  if (*&self->_has)
  {
LABEL_13:
    *(v4 + 1) = self->_businessID;
    *(v4 + 58) |= 1u;
  }

LABEL_14:
  if (self->_contactIdentifier)
  {
    [v10 setContactIdentifier:?];
    v4 = v10;
  }

  if ((*&self->_has & 0x80) != 0)
  {
    v4[18] = self->_directionsMode;
    *(v4 + 58) |= 0x80u;
  }

  if ([(SyncedBookmarkRepr *)self placesCount])
  {
    [v10 clearPlaces];
    v6 = [(SyncedBookmarkRepr *)self placesCount];
    if (v6)
    {
      v7 = v6;
      for (i = 0; i != v7; ++i)
      {
        v9 = [(SyncedBookmarkRepr *)self placesAtIndex:i];
        [v10 addPlaces:v9];
      }
    }
  }
}

- (void)writeTo:(id)a3
{
  v4 = a3;
  PBDataWriterWriteInt32Field();
  if (self->_title)
  {
    PBDataWriterWriteStringField();
  }

  if (self->_singleLineAddress)
  {
    PBDataWriterWriteStringField();
  }

  has = self->_has;
  if ((has & 2) != 0)
  {
    PBDataWriterWriteDoubleField();
    has = self->_has;
    if ((has & 4) == 0)
    {
LABEL_7:
      if ((has & 8) == 0)
      {
        goto LABEL_8;
      }

      goto LABEL_28;
    }
  }

  else if ((has & 4) == 0)
  {
    goto LABEL_7;
  }

  PBDataWriterWriteDoubleField();
  has = self->_has;
  if ((has & 8) == 0)
  {
LABEL_8:
    if ((has & 0x20) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_29;
  }

LABEL_28:
  PBDataWriterWriteDoubleField();
  has = self->_has;
  if ((has & 0x20) == 0)
  {
LABEL_9:
    if ((has & 0x10) == 0)
    {
      goto LABEL_10;
    }

    goto LABEL_30;
  }

LABEL_29:
  PBDataWriterWriteDoubleField();
  has = self->_has;
  if ((has & 0x10) == 0)
  {
LABEL_10:
    if ((has & 0x40) == 0)
    {
      goto LABEL_11;
    }

    goto LABEL_31;
  }

LABEL_30:
  PBDataWriterWriteDoubleField();
  has = self->_has;
  if ((has & 0x40) == 0)
  {
LABEL_11:
    if ((has & 0x100) == 0)
    {
      goto LABEL_12;
    }

    goto LABEL_32;
  }

LABEL_31:
  PBDataWriterWriteDoubleField();
  has = self->_has;
  if ((has & 0x100) == 0)
  {
LABEL_12:
    if ((has & 1) == 0)
    {
      goto LABEL_14;
    }

    goto LABEL_13;
  }

LABEL_32:
  PBDataWriterWriteUint32Field();
  if (*&self->_has)
  {
LABEL_13:
    PBDataWriterWriteUint64Field();
  }

LABEL_14:
  if (self->_contactIdentifier)
  {
    PBDataWriterWriteStringField();
  }

  if ((*&self->_has & 0x80) != 0)
  {
    PBDataWriterWriteInt32Field();
  }

  v13 = 0u;
  v14 = 0u;
  v11 = 0u;
  v12 = 0u;
  v6 = self->_places;
  v7 = [(NSMutableArray *)v6 countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v12;
    do
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v12 != v9)
        {
          objc_enumerationMutation(v6);
        }

        PBDataWriterWriteSubmessage();
      }

      v8 = [(NSMutableArray *)v6 countByEnumeratingWithState:&v11 objects:v15 count:16];
    }

    while (v8);
  }
}

- (id)dictionaryRepresentation
{
  v3 = +[NSMutableDictionary dictionary];
  type = self->_type;
  if (type >= 6)
  {
    v5 = [NSString stringWithFormat:@"(unknown: %i)", self->_type];
  }

  else
  {
    v5 = off_1016614E8[type];
  }

  [v3 setObject:v5 forKey:@"type"];

  title = self->_title;
  if (title)
  {
    [v3 setObject:title forKey:@"title"];
  }

  singleLineAddress = self->_singleLineAddress;
  if (singleLineAddress)
  {
    [v3 setObject:singleLineAddress forKey:@"singleLineAddress"];
  }

  has = self->_has;
  if ((has & 2) != 0)
  {
    v13 = [NSNumber numberWithDouble:self->_latitude];
    [v3 setObject:v13 forKey:@"latitude"];

    has = self->_has;
    if ((has & 4) == 0)
    {
LABEL_10:
      if ((has & 8) == 0)
      {
        goto LABEL_11;
      }

      goto LABEL_24;
    }
  }

  else if ((has & 4) == 0)
  {
    goto LABEL_10;
  }

  v14 = [NSNumber numberWithDouble:self->_longitude];
  [v3 setObject:v14 forKey:@"longitude"];

  has = self->_has;
  if ((has & 8) == 0)
  {
LABEL_11:
    if ((has & 0x20) == 0)
    {
      goto LABEL_12;
    }

    goto LABEL_25;
  }

LABEL_24:
  v15 = [NSNumber numberWithDouble:self->_regionLatitude];
  [v3 setObject:v15 forKey:@"regionLatitude"];

  has = self->_has;
  if ((has & 0x20) == 0)
  {
LABEL_12:
    if ((has & 0x10) == 0)
    {
      goto LABEL_13;
    }

    goto LABEL_26;
  }

LABEL_25:
  v16 = [NSNumber numberWithDouble:self->_regionLongitude];
  [v3 setObject:v16 forKey:@"regionLongitude"];

  has = self->_has;
  if ((has & 0x10) == 0)
  {
LABEL_13:
    if ((has & 0x40) == 0)
    {
      goto LABEL_14;
    }

    goto LABEL_27;
  }

LABEL_26:
  v17 = [NSNumber numberWithDouble:self->_regionLatitudeDelta];
  [v3 setObject:v17 forKey:@"regionLatitudeDelta"];

  has = self->_has;
  if ((has & 0x40) == 0)
  {
LABEL_14:
    if ((has & 0x100) == 0)
    {
      goto LABEL_15;
    }

    goto LABEL_28;
  }

LABEL_27:
  v18 = [NSNumber numberWithDouble:self->_regionLongitudeDelta];
  [v3 setObject:v18 forKey:@"regionLongitudeDelta"];

  has = self->_has;
  if ((has & 0x100) == 0)
  {
LABEL_15:
    if ((has & 1) == 0)
    {
      goto LABEL_17;
    }

    goto LABEL_16;
  }

LABEL_28:
  v19 = [NSNumber numberWithUnsignedInt:self->_providerID];
  [v3 setObject:v19 forKey:@"providerID"];

  if (*&self->_has)
  {
LABEL_16:
    v9 = [NSNumber numberWithUnsignedLongLong:self->_businessID];
    [v3 setObject:v9 forKey:@"businessID"];
  }

LABEL_17:
  contactIdentifier = self->_contactIdentifier;
  if (contactIdentifier)
  {
    [v3 setObject:contactIdentifier forKey:@"contactIdentifier"];
  }

  if ((*&self->_has & 0x80) != 0)
  {
    directionsMode = self->_directionsMode;
    if (directionsMode >= 5)
    {
      v12 = [NSString stringWithFormat:@"(unknown: %i)", self->_directionsMode];
    }

    else
    {
      v12 = off_101661518[directionsMode];
    }

    [v3 setObject:v12 forKey:@"directionsMode"];
  }

  if ([(NSMutableArray *)self->_places count])
  {
    v20 = [[NSMutableArray alloc] initWithCapacity:{-[NSMutableArray count](self->_places, "count")}];
    v28 = 0u;
    v29 = 0u;
    v30 = 0u;
    v31 = 0u;
    v21 = self->_places;
    v22 = [(NSMutableArray *)v21 countByEnumeratingWithState:&v28 objects:v32 count:16];
    if (v22)
    {
      v23 = v22;
      v24 = *v29;
      do
      {
        for (i = 0; i != v23; i = i + 1)
        {
          if (*v29 != v24)
          {
            objc_enumerationMutation(v21);
          }

          v26 = [*(*(&v28 + 1) + 8 * i) dictionaryRepresentation];
          [v20 addObject:v26];
        }

        v23 = [(NSMutableArray *)v21 countByEnumeratingWithState:&v28 objects:v32 count:16];
      }

      while (v23);
    }

    [v3 setObject:v20 forKey:@"places"];
  }

  return v3;
}

- (id)description
{
  v7.receiver = self;
  v7.super_class = SyncedBookmarkRepr;
  v3 = [(SyncedBookmarkRepr *)&v7 description];
  v4 = [(SyncedBookmarkRepr *)self dictionaryRepresentation];
  v5 = [NSString stringWithFormat:@"%@ %@", v3, v4];

  return v5;
}

- (void)addPlaces:(id)a3
{
  v4 = a3;
  places = self->_places;
  v8 = v4;
  if (!places)
  {
    v6 = objc_alloc_init(NSMutableArray);
    v7 = self->_places;
    self->_places = v6;

    v4 = v8;
    places = self->_places;
  }

  [(NSMutableArray *)places addObject:v4];
}

- (int)StringAsDirectionsMode:(id)a3
{
  v3 = a3;
  if ([v3 isEqualToString:@"NONE"])
  {
    v4 = 0;
  }

  else if ([v3 isEqualToString:@"DRIVING"])
  {
    v4 = 1;
  }

  else if ([v3 isEqualToString:@"TRANSIT"])
  {
    v4 = 2;
  }

  else if ([v3 isEqualToString:@"WALKING"])
  {
    v4 = 3;
  }

  else if ([v3 isEqualToString:@"CYCLING"])
  {
    v4 = 4;
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (id)directionsModeAsString:(int)a3
{
  if (a3 >= 5)
  {
    v4 = [NSString stringWithFormat:@"(unknown: %i)", *&a3];
  }

  else
  {
    v4 = off_101661518[a3];
  }

  return v4;
}

- (void)setHasDirectionsMode:(BOOL)a3
{
  if (a3)
  {
    v3 = 128;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFF7F | v3;
}

- (int)directionsMode
{
  if ((*&self->_has & 0x80) != 0)
  {
    return self->_directionsMode;
  }

  else
  {
    return 0;
  }
}

- (void)setHasProviderID:(BOOL)a3
{
  if (a3)
  {
    v3 = 256;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFEFF | v3;
}

- (void)setHasRegionLongitudeDelta:(BOOL)a3
{
  if (a3)
  {
    v3 = 64;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFFBF | v3;
}

- (void)setHasRegionLatitudeDelta:(BOOL)a3
{
  if (a3)
  {
    v3 = 16;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFFEF | v3;
}

- (void)setHasRegionLongitude:(BOOL)a3
{
  if (a3)
  {
    v3 = 32;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFFDF | v3;
}

- (void)setHasRegionLatitude:(BOOL)a3
{
  if (a3)
  {
    v3 = 8;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFFF7 | v3;
}

- (void)setHasLongitude:(BOOL)a3
{
  if (a3)
  {
    v3 = 4;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFFFB | v3;
}

- (void)setHasLatitude:(BOOL)a3
{
  if (a3)
  {
    v3 = 2;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFFFD | v3;
}

- (int)StringAsType:(id)a3
{
  v3 = a3;
  if ([v3 isEqualToString:@"PLACE"])
  {
    v4 = 0;
  }

  else if ([v3 isEqualToString:@"CONTACT"])
  {
    v4 = 1;
  }

  else if ([v3 isEqualToString:@"USER_LOCATION"])
  {
    v4 = 2;
  }

  else if ([v3 isEqualToString:@"REGION"])
  {
    v4 = 3;
  }

  else if ([v3 isEqualToString:@"TRIP"])
  {
    v4 = 4;
  }

  else if ([v3 isEqualToString:@"SEARCH"])
  {
    v4 = 5;
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (id)typeAsString:(int)a3
{
  if (a3 >= 6)
  {
    v4 = [NSString stringWithFormat:@"(unknown: %i)", *&a3];
  }

  else
  {
    v4 = off_1016614E8[a3];
  }

  return v4;
}

@end