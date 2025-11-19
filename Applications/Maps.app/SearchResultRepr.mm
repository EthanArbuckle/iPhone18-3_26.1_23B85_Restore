@interface SearchResultRepr
- (BOOL)isEqual:(id)a3;
- (BOOL)readFrom:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (id)dictionaryRepresentation;
- (id)originalTypeAsString:(unsigned int)a3;
- (id)typeAsString:(unsigned int)a3;
- (unint64_t)hash;
- (unsigned)StringAsOriginalType:(id)a3;
- (unsigned)StringAsType:(id)a3;
- (void)addObsoleteAddressLine:(id)a3;
- (void)copyTo:(id)a3;
- (void)mergeFrom:(id)a3;
- (void)setHasAddressID:(BOOL)a3;
- (void)setHasAddressRecordID:(BOOL)a3;
- (void)setHasFlags:(BOOL)a3;
- (void)setHasFloorOrdinal:(BOOL)a3;
- (void)setHasHasIncompleteMetadata:(BOOL)a3;
- (void)setHasHasIncompleteNavData:(BOOL)a3;
- (void)setHasObsoleteClosedListing:(BOOL)a3;
- (void)setHasObsoleteInexactPosition:(BOOL)a3;
- (void)setHasObsoleteLatitudeE6Value:(BOOL)a3;
- (void)setHasObsoleteLongitudeE6Value:(BOOL)a3;
- (void)setHasObsoleteUnverifiedListing:(BOOL)a3;
- (void)setHasResultIndex:(BOOL)a3;
- (void)setHasTimestamp:(BOOL)a3;
- (void)setHasZoomLevel:(BOOL)a3;
- (void)writeTo:(id)a3;
@end

@implementation SearchResultRepr

- (void)mergeFrom:(id)a3
{
  v4 = a3;
  self->_unusedMapType = *(v4 + 47);
  self->_type = *(v4 + 46);
  self->_originalType = *(v4 + 38);
  if (*(v4 + 13))
  {
    [(SearchResultRepr *)self setObsoleteName:?];
  }

  if ((*(v4 + 102) & 0x10) != 0)
  {
    self->_flags = *(v4 + 8);
    *&self->_has |= 0x10u;
  }

  if (*(v4 + 11))
  {
    [(SearchResultRepr *)self setObsoleteLocality:?];
  }

  if (*(v4 + 17))
  {
    [(SearchResultRepr *)self setObsoleteRegion:?];
  }

  if (*(v4 + 15))
  {
    [(SearchResultRepr *)self setObsoletePostalCode:?];
  }

  if (*(v4 + 7))
  {
    [(SearchResultRepr *)self setObsoleteCountryCode:?];
  }

  if (*(v4 + 8))
  {
    [(SearchResultRepr *)self setObsoleteCountryName:?];
  }

  if (*(v4 + 14))
  {
    [(SearchResultRepr *)self setObsoletePhone:?];
  }

  if (*(v4 + 16))
  {
    [(SearchResultRepr *)self setObsoleteReferenceURL:?];
  }

  if (*(v4 + 5))
  {
    [(SearchResultRepr *)self setMapsURL:?];
  }

  if (*(v4 + 9))
  {
    [(SearchResultRepr *)self setObsoleteDependentLocality:?];
  }

  if (*(v4 + 18))
  {
    [(SearchResultRepr *)self setObsoleteThoroughfare:?];
  }

  v5 = *(v4 + 102);
  if ((v5 & 0x40) != 0)
  {
    self->_obsoleteLatitudeE6Value = *(v4 + 20);
    *&self->_has |= 0x40u;
    v5 = *(v4 + 102);
    if ((v5 & 0x80) == 0)
    {
LABEL_27:
      if ((v5 & 0x200) == 0)
      {
        goto LABEL_28;
      }

      goto LABEL_47;
    }
  }

  else if ((v5 & 0x80) == 0)
  {
    goto LABEL_27;
  }

  self->_obsoleteLongitudeE6Value = *(v4 + 24);
  *&self->_has |= 0x80u;
  v5 = *(v4 + 102);
  if ((v5 & 0x200) == 0)
  {
LABEL_28:
    if ((v5 & 0x2000) == 0)
    {
      goto LABEL_29;
    }

    goto LABEL_48;
  }

LABEL_47:
  self->_zoomLevel = *(v4 + 48);
  *&self->_has |= 0x200u;
  v5 = *(v4 + 102);
  if ((v5 & 0x2000) == 0)
  {
LABEL_29:
    if ((v5 & 1) == 0)
    {
      goto LABEL_31;
    }

    goto LABEL_30;
  }

LABEL_48:
  self->_obsoleteInexactPosition = *(v4 + 199);
  *&self->_has |= 0x2000u;
  if (*(v4 + 102))
  {
LABEL_30:
    self->_obsoleteCid = *(v4 + 1);
    *&self->_has |= 1u;
  }

LABEL_31:
  v18 = 0u;
  v19 = 0u;
  v16 = 0u;
  v17 = 0u;
  v6 = *(v4 + 6);
  v7 = [v6 countByEnumeratingWithState:&v16 objects:v20 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v17;
    do
    {
      for (i = 0; i != v8; i = i + 1)
      {
        if (*v17 != v9)
        {
          objc_enumerationMutation(v6);
        }

        [(SearchResultRepr *)self addObsoleteAddressLine:*(*(&v16 + 1) + 8 * i), v16];
      }

      v8 = [v6 countByEnumeratingWithState:&v16 objects:v20 count:16];
    }

    while (v8);
  }

  v11 = *(v4 + 102);
  if ((v11 & 0x4000) != 0)
  {
    self->_obsoleteUnverifiedListing = *(v4 + 200);
    *&self->_has |= 0x4000u;
    v11 = *(v4 + 102);
  }

  if ((v11 & 0x1000) != 0)
  {
    self->_obsoleteClosedListing = *(v4 + 198);
    *&self->_has |= 0x1000u;
  }

  place = self->_place;
  v13 = *(v4 + 20);
  if (place)
  {
    if (v13)
    {
      [(GEOPlace *)place mergeFrom:?];
    }
  }

  else if (v13)
  {
    [(SearchResultRepr *)self setPlace:?];
  }

  v14 = *(v4 + 102);
  if ((v14 & 0x400) != 0)
  {
    self->_hasIncompleteMetadata = *(v4 + 196);
    *&self->_has |= 0x400u;
    v14 = *(v4 + 102);
    if ((v14 & 0x800) == 0)
    {
LABEL_54:
      if ((v14 & 2) == 0)
      {
        goto LABEL_55;
      }

      goto LABEL_66;
    }
  }

  else if ((*(v4 + 102) & 0x800) == 0)
  {
    goto LABEL_54;
  }

  self->_hasIncompleteNavData = *(v4 + 197);
  *&self->_has |= 0x800u;
  v14 = *(v4 + 102);
  if ((v14 & 2) == 0)
  {
LABEL_55:
    if ((v14 & 0x100) == 0)
    {
      goto LABEL_57;
    }

    goto LABEL_56;
  }

LABEL_66:
  self->_timestamp = *(v4 + 2);
  *&self->_has |= 2u;
  if ((*(v4 + 102) & 0x100) != 0)
  {
LABEL_56:
    self->_resultIndex = *(v4 + 42);
    *&self->_has |= 0x100u;
  }

LABEL_57:
  if (*(v4 + 22))
  {
    [(SearchResultRepr *)self setSyncIdentifier:?];
  }

  v15 = *(v4 + 102);
  if ((v15 & 0x20) == 0)
  {
    if ((v15 & 8) == 0)
    {
      goto LABEL_61;
    }

LABEL_69:
    self->_addressRecordID = *(v4 + 7);
    *&self->_has |= 8u;
    if ((*(v4 + 102) & 4) == 0)
    {
      goto LABEL_63;
    }

    goto LABEL_62;
  }

  self->_floorOrdinal = *(v4 + 9);
  *&self->_has |= 0x20u;
  v15 = *(v4 + 102);
  if ((v15 & 8) != 0)
  {
    goto LABEL_69;
  }

LABEL_61:
  if ((v15 & 4) != 0)
  {
LABEL_62:
    self->_addressID = *(v4 + 6);
    *&self->_has |= 4u;
  }

LABEL_63:
}

- (unint64_t)hash
{
  unusedMapType = self->_unusedMapType;
  type = self->_type;
  originalType = self->_originalType;
  v39 = [(NSString *)self->_obsoleteName hash];
  if ((*&self->_has & 0x10) != 0)
  {
    v38 = 2654435761 * self->_flags;
  }

  else
  {
    v38 = 0;
  }

  v37 = [(NSString *)self->_obsoleteLocality hash];
  v35 = [(NSString *)self->_obsoleteRegion hash];
  v36 = [(NSString *)self->_obsoletePostalCode hash];
  v34 = [(NSString *)self->_obsoleteCountryCode hash];
  v33 = [(NSString *)self->_obsoleteCountryName hash];
  v32 = [(NSString *)self->_obsoletePhone hash];
  v31 = [(NSString *)self->_obsoleteReferenceURL hash];
  v30 = [(NSString *)self->_mapsURL hash];
  v29 = [(NSString *)self->_obsoleteDependentLocality hash];
  v28 = [(NSString *)self->_obsoleteThoroughfare hash];
  has = self->_has;
  if ((has & 0x40) != 0)
  {
    v27 = 2654435761 * self->_obsoleteLatitudeE6Value;
    if ((has & 0x80) != 0)
    {
LABEL_6:
      v26 = 2654435761 * self->_obsoleteLongitudeE6Value;
      if ((*&self->_has & 0x200) != 0)
      {
        goto LABEL_7;
      }

      goto LABEL_12;
    }
  }

  else
  {
    v27 = 0;
    if ((has & 0x80) != 0)
    {
      goto LABEL_6;
    }
  }

  v26 = 0;
  if ((*&self->_has & 0x200) != 0)
  {
LABEL_7:
    v25 = 2654435761 * self->_zoomLevel;
    if ((*&self->_has & 0x2000) != 0)
    {
      goto LABEL_8;
    }

LABEL_13:
    v24 = 0;
    if (has)
    {
      goto LABEL_9;
    }

    goto LABEL_14;
  }

LABEL_12:
  v25 = 0;
  if ((*&self->_has & 0x2000) == 0)
  {
    goto LABEL_13;
  }

LABEL_8:
  v24 = 2654435761 * self->_obsoleteInexactPosition;
  if (has)
  {
LABEL_9:
    v23 = 2654435761 * self->_obsoleteCid;
    goto LABEL_15;
  }

LABEL_14:
  v23 = 0;
LABEL_15:
  v21 = [(NSMutableArray *)self->_obsoleteAddressLines hash];
  if ((*&self->_has & 0x4000) != 0)
  {
    v4 = 2654435761 * self->_obsoleteUnverifiedListing;
    if ((*&self->_has & 0x1000) != 0)
    {
      goto LABEL_17;
    }
  }

  else
  {
    v4 = 0;
    if ((*&self->_has & 0x1000) != 0)
    {
LABEL_17:
      v5 = 2654435761 * self->_obsoleteClosedListing;
      goto LABEL_20;
    }
  }

  v5 = 0;
LABEL_20:
  v6 = [(GEOPlace *)self->_place hash];
  v7 = self->_has;
  if ((v7 & 0x400) != 0)
  {
    v8 = 2654435761 * self->_hasIncompleteMetadata;
    if ((*&self->_has & 0x800) != 0)
    {
LABEL_22:
      v9 = 2654435761 * self->_hasIncompleteNavData;
      if ((v7 & 2) != 0)
      {
        goto LABEL_23;
      }

LABEL_27:
      v13 = 0;
      goto LABEL_28;
    }
  }

  else
  {
    v8 = 0;
    if ((*&self->_has & 0x800) != 0)
    {
      goto LABEL_22;
    }
  }

  v9 = 0;
  if ((v7 & 2) == 0)
  {
    goto LABEL_27;
  }

LABEL_23:
  v10 = fabs(self->_timestamp);
  v11 = floor(v10 + 0.5);
  v12 = (v10 - v11) * 1.84467441e19;
  v13 = 2654435761u * (v11 - trunc(v11 * 5.42101086e-20) * 1.84467441e19);
  if (v12 >= 0.0)
  {
    if (v12 > 0.0)
    {
      v13 += v12;
    }
  }

  else
  {
    v13 -= fabs(v12);
  }

LABEL_28:
  if ((*&self->_has & 0x100) != 0)
  {
    v14 = 2654435761 * self->_resultIndex;
  }

  else
  {
    v14 = 0;
  }

  v15 = [(NSString *)self->_syncIdentifier hash];
  v16 = self->_has;
  if ((v16 & 0x20) == 0)
  {
    v17 = 0;
    if ((v16 & 8) != 0)
    {
      goto LABEL_33;
    }

LABEL_36:
    v18 = 0;
    if ((v16 & 4) != 0)
    {
      goto LABEL_34;
    }

LABEL_37:
    v19 = 0;
    return (2654435761 * type) ^ (2654435761 * unusedMapType) ^ (2654435761 * originalType) ^ v39 ^ v38 ^ v37 ^ v35 ^ v36 ^ v34 ^ v33 ^ v32 ^ v31 ^ v30 ^ v29 ^ v28 ^ v27 ^ v26 ^ v25 ^ v24 ^ v23 ^ v22 ^ v4 ^ v5 ^ v6 ^ v8 ^ v9 ^ v13 ^ v14 ^ v15 ^ v17 ^ v18 ^ v19;
  }

  v17 = 2654435761 * self->_floorOrdinal;
  if ((v16 & 8) == 0)
  {
    goto LABEL_36;
  }

LABEL_33:
  v18 = 2654435761 * self->_addressRecordID;
  if ((v16 & 4) == 0)
  {
    goto LABEL_37;
  }

LABEL_34:
  v19 = 2654435761 * self->_addressID;
  return (2654435761 * type) ^ (2654435761 * unusedMapType) ^ (2654435761 * originalType) ^ v39 ^ v38 ^ v37 ^ v35 ^ v36 ^ v34 ^ v33 ^ v32 ^ v31 ^ v30 ^ v29 ^ v28 ^ v27 ^ v26 ^ v25 ^ v24 ^ v23 ^ v22 ^ v4 ^ v5 ^ v6 ^ v8 ^ v9 ^ v13 ^ v14 ^ v15 ^ v17 ^ v18 ^ v19;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (![v4 isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_126;
  }

  if (self->_unusedMapType != *(v4 + 47))
  {
    goto LABEL_126;
  }

  if (self->_type != *(v4 + 46))
  {
    goto LABEL_126;
  }

  if (self->_originalType != *(v4 + 38))
  {
    goto LABEL_126;
  }

  obsoleteName = self->_obsoleteName;
  if (obsoleteName | *(v4 + 13))
  {
    if (![(NSString *)obsoleteName isEqual:?])
    {
      goto LABEL_126;
    }
  }

  v6 = *(v4 + 102);
  if ((*&self->_has & 0x10) != 0)
  {
    if ((v6 & 0x10) == 0 || self->_flags != *(v4 + 8))
    {
      goto LABEL_126;
    }
  }

  else if ((v6 & 0x10) != 0)
  {
    goto LABEL_126;
  }

  obsoleteLocality = self->_obsoleteLocality;
  if (obsoleteLocality | *(v4 + 11) && ![(NSString *)obsoleteLocality isEqual:?])
  {
    goto LABEL_126;
  }

  obsoleteRegion = self->_obsoleteRegion;
  if (obsoleteRegion | *(v4 + 17))
  {
    if (![(NSString *)obsoleteRegion isEqual:?])
    {
      goto LABEL_126;
    }
  }

  obsoletePostalCode = self->_obsoletePostalCode;
  if (obsoletePostalCode | *(v4 + 15))
  {
    if (![(NSString *)obsoletePostalCode isEqual:?])
    {
      goto LABEL_126;
    }
  }

  obsoleteCountryCode = self->_obsoleteCountryCode;
  if (obsoleteCountryCode | *(v4 + 7))
  {
    if (![(NSString *)obsoleteCountryCode isEqual:?])
    {
      goto LABEL_126;
    }
  }

  obsoleteCountryName = self->_obsoleteCountryName;
  if (obsoleteCountryName | *(v4 + 8))
  {
    if (![(NSString *)obsoleteCountryName isEqual:?])
    {
      goto LABEL_126;
    }
  }

  obsoletePhone = self->_obsoletePhone;
  if (obsoletePhone | *(v4 + 14))
  {
    if (![(NSString *)obsoletePhone isEqual:?])
    {
      goto LABEL_126;
    }
  }

  obsoleteReferenceURL = self->_obsoleteReferenceURL;
  if (obsoleteReferenceURL | *(v4 + 16))
  {
    if (![(NSString *)obsoleteReferenceURL isEqual:?])
    {
      goto LABEL_126;
    }
  }

  mapsURL = self->_mapsURL;
  if (mapsURL | *(v4 + 5))
  {
    if (![(NSString *)mapsURL isEqual:?])
    {
      goto LABEL_126;
    }
  }

  obsoleteDependentLocality = self->_obsoleteDependentLocality;
  if (obsoleteDependentLocality | *(v4 + 9))
  {
    if (![(NSString *)obsoleteDependentLocality isEqual:?])
    {
      goto LABEL_126;
    }
  }

  obsoleteThoroughfare = self->_obsoleteThoroughfare;
  if (obsoleteThoroughfare | *(v4 + 18))
  {
    if (![(NSString *)obsoleteThoroughfare isEqual:?])
    {
      goto LABEL_126;
    }
  }

  has = self->_has;
  v18 = *(v4 + 102);
  if ((has & 0x40) != 0)
  {
    if ((v18 & 0x40) == 0 || self->_obsoleteLatitudeE6Value != *(v4 + 20))
    {
      goto LABEL_126;
    }
  }

  else if ((v18 & 0x40) != 0)
  {
    goto LABEL_126;
  }

  if ((has & 0x80) != 0)
  {
    if ((v18 & 0x80) == 0 || self->_obsoleteLongitudeE6Value != *(v4 + 24))
    {
      goto LABEL_126;
    }
  }

  else if ((v18 & 0x80) != 0)
  {
    goto LABEL_126;
  }

  if ((*&self->_has & 0x200) != 0)
  {
    if ((*(v4 + 102) & 0x200) == 0 || self->_zoomLevel != *(v4 + 48))
    {
      goto LABEL_126;
    }
  }

  else if ((*(v4 + 102) & 0x200) != 0)
  {
    goto LABEL_126;
  }

  if ((*&self->_has & 0x2000) != 0)
  {
    if ((*(v4 + 102) & 0x2000) == 0)
    {
      goto LABEL_126;
    }

    if (self->_obsoleteInexactPosition)
    {
      if ((*(v4 + 199) & 1) == 0)
      {
        goto LABEL_126;
      }
    }

    else if (*(v4 + 199))
    {
      goto LABEL_126;
    }
  }

  else if ((*(v4 + 102) & 0x2000) != 0)
  {
    goto LABEL_126;
  }

  if (has)
  {
    if ((v18 & 1) == 0 || self->_obsoleteCid != *(v4 + 1))
    {
      goto LABEL_126;
    }
  }

  else if (v18)
  {
    goto LABEL_126;
  }

  obsoleteAddressLines = self->_obsoleteAddressLines;
  if (obsoleteAddressLines | *(v4 + 6))
  {
    if (![(NSMutableArray *)obsoleteAddressLines isEqual:?])
    {
      goto LABEL_126;
    }

    has = self->_has;
    v18 = *(v4 + 102);
  }

  if ((has & 0x4000) != 0)
  {
    if ((v18 & 0x4000) == 0)
    {
      goto LABEL_126;
    }

    if (self->_obsoleteUnverifiedListing)
    {
      if ((*(v4 + 200) & 1) == 0)
      {
        goto LABEL_126;
      }
    }

    else if (*(v4 + 200))
    {
      goto LABEL_126;
    }
  }

  else if ((v18 & 0x4000) != 0)
  {
    goto LABEL_126;
  }

  if ((has & 0x1000) != 0)
  {
    if ((v18 & 0x1000) == 0)
    {
      goto LABEL_126;
    }

    if (self->_obsoleteClosedListing)
    {
      if ((*(v4 + 198) & 1) == 0)
      {
        goto LABEL_126;
      }
    }

    else if (*(v4 + 198))
    {
      goto LABEL_126;
    }
  }

  else if ((v18 & 0x1000) != 0)
  {
    goto LABEL_126;
  }

  place = self->_place;
  if (place | *(v4 + 20))
  {
    if (![(GEOPlace *)place isEqual:?])
    {
      goto LABEL_126;
    }

    has = self->_has;
    v18 = *(v4 + 102);
  }

  if ((has & 0x400) != 0)
  {
    if ((v18 & 0x400) == 0)
    {
      goto LABEL_126;
    }

    if (self->_hasIncompleteMetadata)
    {
      if ((*(v4 + 196) & 1) == 0)
      {
        goto LABEL_126;
      }
    }

    else if (*(v4 + 196))
    {
      goto LABEL_126;
    }
  }

  else if ((v18 & 0x400) != 0)
  {
    goto LABEL_126;
  }

  if ((has & 0x800) != 0)
  {
    if ((v18 & 0x800) == 0)
    {
      goto LABEL_126;
    }

    if (self->_hasIncompleteNavData)
    {
      if ((*(v4 + 197) & 1) == 0)
      {
        goto LABEL_126;
      }
    }

    else if (*(v4 + 197))
    {
      goto LABEL_126;
    }
  }

  else if ((v18 & 0x800) != 0)
  {
    goto LABEL_126;
  }

  if ((has & 2) != 0)
  {
    if ((v18 & 2) == 0 || self->_timestamp != *(v4 + 2))
    {
      goto LABEL_126;
    }
  }

  else if ((v18 & 2) != 0)
  {
    goto LABEL_126;
  }

  if ((has & 0x100) != 0)
  {
    if ((v18 & 0x100) == 0 || self->_resultIndex != *(v4 + 42))
    {
      goto LABEL_126;
    }
  }

  else if ((v18 & 0x100) != 0)
  {
    goto LABEL_126;
  }

  syncIdentifier = self->_syncIdentifier;
  if (syncIdentifier | *(v4 + 22))
  {
    if ([(NSString *)syncIdentifier isEqual:?])
    {
      has = self->_has;
      v18 = *(v4 + 102);
      goto LABEL_111;
    }

LABEL_126:
    v22 = 0;
    goto LABEL_127;
  }

LABEL_111:
  if ((has & 0x20) != 0)
  {
    if ((v18 & 0x20) == 0 || self->_floorOrdinal != *(v4 + 9))
    {
      goto LABEL_126;
    }
  }

  else if ((v18 & 0x20) != 0)
  {
    goto LABEL_126;
  }

  if ((has & 8) != 0)
  {
    if ((v18 & 8) == 0 || self->_addressRecordID != *(v4 + 7))
    {
      goto LABEL_126;
    }
  }

  else if ((v18 & 8) != 0)
  {
    goto LABEL_126;
  }

  if ((has & 4) != 0)
  {
    if ((v18 & 4) == 0 || self->_addressID != *(v4 + 6))
    {
      goto LABEL_126;
    }

    v22 = 1;
  }

  else
  {
    v22 = (v18 & 4) == 0;
  }

LABEL_127:

  return v22;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{a3), "init"}];
  v5[47] = self->_unusedMapType;
  v5[46] = self->_type;
  v5[38] = self->_originalType;
  v6 = [(NSString *)self->_obsoleteName copyWithZone:a3];
  v7 = *(v5 + 13);
  *(v5 + 13) = v6;

  if ((*&self->_has & 0x10) != 0)
  {
    v5[8] = self->_flags;
    *(v5 + 102) |= 0x10u;
  }

  v8 = [(NSString *)self->_obsoleteLocality copyWithZone:a3];
  v9 = *(v5 + 11);
  *(v5 + 11) = v8;

  v10 = [(NSString *)self->_obsoleteRegion copyWithZone:a3];
  v11 = *(v5 + 17);
  *(v5 + 17) = v10;

  v12 = [(NSString *)self->_obsoletePostalCode copyWithZone:a3];
  v13 = *(v5 + 15);
  *(v5 + 15) = v12;

  v14 = [(NSString *)self->_obsoleteCountryCode copyWithZone:a3];
  v15 = *(v5 + 7);
  *(v5 + 7) = v14;

  v16 = [(NSString *)self->_obsoleteCountryName copyWithZone:a3];
  v17 = *(v5 + 8);
  *(v5 + 8) = v16;

  v18 = [(NSString *)self->_obsoletePhone copyWithZone:a3];
  v19 = *(v5 + 14);
  *(v5 + 14) = v18;

  v20 = [(NSString *)self->_obsoleteReferenceURL copyWithZone:a3];
  v21 = *(v5 + 16);
  *(v5 + 16) = v20;

  v22 = [(NSString *)self->_mapsURL copyWithZone:a3];
  v23 = *(v5 + 5);
  *(v5 + 5) = v22;

  v24 = [(NSString *)self->_obsoleteDependentLocality copyWithZone:a3];
  v25 = *(v5 + 9);
  *(v5 + 9) = v24;

  v26 = [(NSString *)self->_obsoleteThoroughfare copyWithZone:a3];
  v27 = *(v5 + 18);
  *(v5 + 18) = v26;

  has = self->_has;
  if ((has & 0x40) != 0)
  {
    v5[20] = self->_obsoleteLatitudeE6Value;
    *(v5 + 102) |= 0x40u;
    has = self->_has;
    if ((has & 0x80) == 0)
    {
LABEL_5:
      if ((has & 0x200) == 0)
      {
        goto LABEL_6;
      }

      goto LABEL_32;
    }
  }

  else if ((has & 0x80) == 0)
  {
    goto LABEL_5;
  }

  v5[24] = self->_obsoleteLongitudeE6Value;
  *(v5 + 102) |= 0x80u;
  has = self->_has;
  if ((has & 0x200) == 0)
  {
LABEL_6:
    if ((has & 0x2000) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_33;
  }

LABEL_32:
  v5[48] = self->_zoomLevel;
  *(v5 + 102) |= 0x200u;
  has = self->_has;
  if ((has & 0x2000) == 0)
  {
LABEL_7:
    if ((has & 1) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_8;
  }

LABEL_33:
  *(v5 + 199) = self->_obsoleteInexactPosition;
  *(v5 + 102) |= 0x2000u;
  if (*&self->_has)
  {
LABEL_8:
    *(v5 + 1) = self->_obsoleteCid;
    *(v5 + 102) |= 1u;
  }

LABEL_9:
  v45 = 0u;
  v46 = 0u;
  v43 = 0u;
  v44 = 0u;
  v29 = self->_obsoleteAddressLines;
  v30 = [(NSMutableArray *)v29 countByEnumeratingWithState:&v43 objects:v47 count:16];
  if (v30)
  {
    v31 = v30;
    v32 = *v44;
    do
    {
      for (i = 0; i != v31; i = i + 1)
      {
        if (*v44 != v32)
        {
          objc_enumerationMutation(v29);
        }

        v34 = [*(*(&v43 + 1) + 8 * i) copyWithZone:{a3, v43}];
        [v5 addObsoleteAddressLine:v34];
      }

      v31 = [(NSMutableArray *)v29 countByEnumeratingWithState:&v43 objects:v47 count:16];
    }

    while (v31);
  }

  v35 = self->_has;
  if ((v35 & 0x4000) != 0)
  {
    *(v5 + 200) = self->_obsoleteUnverifiedListing;
    *(v5 + 102) |= 0x4000u;
    v35 = self->_has;
  }

  if ((v35 & 0x1000) != 0)
  {
    *(v5 + 198) = self->_obsoleteClosedListing;
    *(v5 + 102) |= 0x1000u;
  }

  v36 = [(GEOPlace *)self->_place copyWithZone:a3, v43];
  v37 = *(v5 + 20);
  *(v5 + 20) = v36;

  v38 = self->_has;
  if ((v38 & 0x400) != 0)
  {
    *(v5 + 196) = self->_hasIncompleteMetadata;
    *(v5 + 102) |= 0x400u;
    v38 = self->_has;
    if ((v38 & 0x800) == 0)
    {
LABEL_22:
      if ((v38 & 2) == 0)
      {
        goto LABEL_23;
      }

      goto LABEL_37;
    }
  }

  else if ((*&self->_has & 0x800) == 0)
  {
    goto LABEL_22;
  }

  *(v5 + 197) = self->_hasIncompleteNavData;
  *(v5 + 102) |= 0x800u;
  v38 = self->_has;
  if ((v38 & 2) == 0)
  {
LABEL_23:
    if ((v38 & 0x100) == 0)
    {
      goto LABEL_25;
    }

    goto LABEL_24;
  }

LABEL_37:
  *(v5 + 2) = *&self->_timestamp;
  *(v5 + 102) |= 2u;
  if ((*&self->_has & 0x100) != 0)
  {
LABEL_24:
    v5[42] = self->_resultIndex;
    *(v5 + 102) |= 0x100u;
  }

LABEL_25:
  v39 = [(NSString *)self->_syncIdentifier copyWithZone:a3];
  v40 = *(v5 + 22);
  *(v5 + 22) = v39;

  v41 = self->_has;
  if ((v41 & 0x20) == 0)
  {
    if ((v41 & 8) == 0)
    {
      goto LABEL_27;
    }

LABEL_40:
    v5[7] = self->_addressRecordID;
    *(v5 + 102) |= 8u;
    if ((*&self->_has & 4) == 0)
    {
      return v5;
    }

    goto LABEL_28;
  }

  v5[9] = self->_floorOrdinal;
  *(v5 + 102) |= 0x20u;
  v41 = self->_has;
  if ((v41 & 8) != 0)
  {
    goto LABEL_40;
  }

LABEL_27:
  if ((v41 & 4) != 0)
  {
LABEL_28:
    v5[6] = self->_addressID;
    *(v5 + 102) |= 4u;
  }

  return v5;
}

- (void)copyTo:(id)a3
{
  v4 = a3;
  v4[47] = self->_unusedMapType;
  v4[46] = self->_type;
  v4[38] = self->_originalType;
  v14 = v4;
  if (self->_obsoleteName)
  {
    [v4 setObsoleteName:?];
    v4 = v14;
  }

  if ((*&self->_has & 0x10) != 0)
  {
    v4[8] = self->_flags;
    *(v4 + 102) |= 0x10u;
  }

  if (self->_obsoleteLocality)
  {
    [v14 setObsoleteLocality:?];
    v4 = v14;
  }

  if (self->_obsoleteRegion)
  {
    [v14 setObsoleteRegion:?];
    v4 = v14;
  }

  if (self->_obsoletePostalCode)
  {
    [v14 setObsoletePostalCode:?];
    v4 = v14;
  }

  if (self->_obsoleteCountryCode)
  {
    [v14 setObsoleteCountryCode:?];
    v4 = v14;
  }

  if (self->_obsoleteCountryName)
  {
    [v14 setObsoleteCountryName:?];
    v4 = v14;
  }

  if (self->_obsoletePhone)
  {
    [v14 setObsoletePhone:?];
    v4 = v14;
  }

  if (self->_obsoleteReferenceURL)
  {
    [v14 setObsoleteReferenceURL:?];
    v4 = v14;
  }

  if (self->_mapsURL)
  {
    [v14 setMapsURL:?];
    v4 = v14;
  }

  if (self->_obsoleteDependentLocality)
  {
    [v14 setObsoleteDependentLocality:?];
    v4 = v14;
  }

  if (self->_obsoleteThoroughfare)
  {
    [v14 setObsoleteThoroughfare:?];
    v4 = v14;
  }

  has = self->_has;
  if ((has & 0x40) != 0)
  {
    v4[20] = self->_obsoleteLatitudeE6Value;
    *(v4 + 102) |= 0x40u;
    has = self->_has;
    if ((has & 0x80) == 0)
    {
LABEL_27:
      if ((has & 0x200) == 0)
      {
        goto LABEL_28;
      }

      goto LABEL_57;
    }
  }

  else if ((has & 0x80) == 0)
  {
    goto LABEL_27;
  }

  v4[24] = self->_obsoleteLongitudeE6Value;
  *(v4 + 102) |= 0x80u;
  has = self->_has;
  if ((has & 0x200) == 0)
  {
LABEL_28:
    if ((has & 0x2000) == 0)
    {
      goto LABEL_29;
    }

LABEL_58:
    *(v4 + 199) = self->_obsoleteInexactPosition;
    *(v4 + 102) |= 0x2000u;
    if ((*&self->_has & 1) == 0)
    {
      goto LABEL_31;
    }

    goto LABEL_30;
  }

LABEL_57:
  v4[48] = self->_zoomLevel;
  *(v4 + 102) |= 0x200u;
  has = self->_has;
  if ((has & 0x2000) != 0)
  {
    goto LABEL_58;
  }

LABEL_29:
  if (has)
  {
LABEL_30:
    *(v4 + 1) = self->_obsoleteCid;
    *(v4 + 102) |= 1u;
  }

LABEL_31:
  if ([(SearchResultRepr *)self obsoleteAddressLinesCount])
  {
    [v14 clearObsoleteAddressLines];
    v6 = [(SearchResultRepr *)self obsoleteAddressLinesCount];
    if (v6)
    {
      v7 = v6;
      for (i = 0; i != v7; ++i)
      {
        v9 = [(SearchResultRepr *)self obsoleteAddressLineAtIndex:i];
        [v14 addObsoleteAddressLine:v9];
      }
    }
  }

  v10 = self->_has;
  v11 = v14;
  if ((v10 & 0x4000) != 0)
  {
    *(v14 + 200) = self->_obsoleteUnverifiedListing;
    *(v14 + 102) |= 0x4000u;
    v10 = self->_has;
  }

  if ((v10 & 0x1000) != 0)
  {
    *(v14 + 198) = self->_obsoleteClosedListing;
    *(v14 + 102) |= 0x1000u;
  }

  if (self->_place)
  {
    [v14 setPlace:?];
    v11 = v14;
  }

  v12 = self->_has;
  if ((v12 & 0x400) != 0)
  {
    v11[196] = self->_hasIncompleteMetadata;
    *(v11 + 102) |= 0x400u;
    v12 = self->_has;
    if ((v12 & 0x800) == 0)
    {
LABEL_43:
      if ((v12 & 2) == 0)
      {
        goto LABEL_44;
      }

      goto LABEL_62;
    }
  }

  else if ((*&self->_has & 0x800) == 0)
  {
    goto LABEL_43;
  }

  v11[197] = self->_hasIncompleteNavData;
  *(v11 + 102) |= 0x800u;
  v12 = self->_has;
  if ((v12 & 2) == 0)
  {
LABEL_44:
    if ((v12 & 0x100) == 0)
    {
      goto LABEL_46;
    }

    goto LABEL_45;
  }

LABEL_62:
  *(v11 + 2) = *&self->_timestamp;
  *(v11 + 102) |= 2u;
  if ((*&self->_has & 0x100) != 0)
  {
LABEL_45:
    *(v11 + 42) = self->_resultIndex;
    *(v11 + 102) |= 0x100u;
  }

LABEL_46:
  if (self->_syncIdentifier)
  {
    [v14 setSyncIdentifier:?];
    v11 = v14;
  }

  v13 = self->_has;
  if ((v13 & 0x20) != 0)
  {
    *(v11 + 9) = self->_floorOrdinal;
    *(v11 + 102) |= 0x20u;
    v13 = self->_has;
    if ((v13 & 8) == 0)
    {
LABEL_50:
      if ((v13 & 4) == 0)
      {
        goto LABEL_52;
      }

      goto LABEL_51;
    }
  }

  else if ((v13 & 8) == 0)
  {
    goto LABEL_50;
  }

  *(v11 + 7) = self->_addressRecordID;
  *(v11 + 102) |= 8u;
  if ((*&self->_has & 4) != 0)
  {
LABEL_51:
    *(v11 + 6) = self->_addressID;
    *(v11 + 102) |= 4u;
  }

LABEL_52:
}

- (void)writeTo:(id)a3
{
  v4 = a3;
  PBDataWriterWriteUint32Field();
  PBDataWriterWriteUint32Field();
  PBDataWriterWriteUint32Field();
  if (self->_obsoleteName)
  {
    PBDataWriterWriteStringField();
  }

  if ((*&self->_has & 0x10) != 0)
  {
    PBDataWriterWriteFixed32Field();
  }

  if (self->_obsoleteLocality)
  {
    PBDataWriterWriteStringField();
  }

  if (self->_obsoleteRegion)
  {
    PBDataWriterWriteStringField();
  }

  if (self->_obsoletePostalCode)
  {
    PBDataWriterWriteStringField();
  }

  if (self->_obsoleteCountryCode)
  {
    PBDataWriterWriteStringField();
  }

  if (self->_obsoleteCountryName)
  {
    PBDataWriterWriteStringField();
  }

  if (self->_obsoletePhone)
  {
    PBDataWriterWriteStringField();
  }

  if (self->_obsoleteReferenceURL)
  {
    PBDataWriterWriteStringField();
  }

  if (self->_mapsURL)
  {
    PBDataWriterWriteStringField();
  }

  if (self->_obsoleteDependentLocality)
  {
    PBDataWriterWriteStringField();
  }

  if (self->_obsoleteThoroughfare)
  {
    PBDataWriterWriteStringField();
  }

  has = self->_has;
  if ((has & 0x40) != 0)
  {
    PBDataWriterWriteInt32Field();
    has = self->_has;
    if ((has & 0x80) == 0)
    {
LABEL_27:
      if ((has & 0x200) == 0)
      {
        goto LABEL_28;
      }

      goto LABEL_58;
    }
  }

  else if ((has & 0x80) == 0)
  {
    goto LABEL_27;
  }

  PBDataWriterWriteInt32Field();
  has = self->_has;
  if ((has & 0x200) == 0)
  {
LABEL_28:
    if ((has & 0x2000) == 0)
    {
      goto LABEL_29;
    }

    goto LABEL_59;
  }

LABEL_58:
  PBDataWriterWriteUint32Field();
  has = self->_has;
  if ((has & 0x2000) == 0)
  {
LABEL_29:
    if ((has & 1) == 0)
    {
      goto LABEL_31;
    }

    goto LABEL_30;
  }

LABEL_59:
  PBDataWriterWriteBOOLField();
  if (*&self->_has)
  {
LABEL_30:
    PBDataWriterWriteInt64Field();
  }

LABEL_31:
  v16 = 0u;
  v17 = 0u;
  v14 = 0u;
  v15 = 0u;
  v6 = self->_obsoleteAddressLines;
  v7 = [(NSMutableArray *)v6 countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v15;
    do
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v15 != v9)
        {
          objc_enumerationMutation(v6);
        }

        PBDataWriterWriteStringField();
      }

      v8 = [(NSMutableArray *)v6 countByEnumeratingWithState:&v14 objects:v18 count:16];
    }

    while (v8);
  }

  v11 = self->_has;
  if ((v11 & 0x4000) != 0)
  {
    PBDataWriterWriteBOOLField();
    v11 = self->_has;
  }

  if ((v11 & 0x1000) != 0)
  {
    PBDataWriterWriteBOOLField();
  }

  if (self->_place)
  {
    PBDataWriterWriteSubmessage();
  }

  v12 = self->_has;
  if ((v12 & 0x400) != 0)
  {
    PBDataWriterWriteBOOLField();
    v12 = self->_has;
    if ((v12 & 0x800) == 0)
    {
LABEL_46:
      if ((v12 & 2) == 0)
      {
        goto LABEL_47;
      }

      goto LABEL_63;
    }
  }

  else if ((*&self->_has & 0x800) == 0)
  {
    goto LABEL_46;
  }

  PBDataWriterWriteBOOLField();
  v12 = self->_has;
  if ((v12 & 2) == 0)
  {
LABEL_47:
    if ((v12 & 0x100) == 0)
    {
      goto LABEL_49;
    }

    goto LABEL_48;
  }

LABEL_63:
  PBDataWriterWriteDoubleField();
  if ((*&self->_has & 0x100) != 0)
  {
LABEL_48:
    PBDataWriterWriteInt32Field();
  }

LABEL_49:
  if (self->_syncIdentifier)
  {
    PBDataWriterWriteStringField();
  }

  v13 = self->_has;
  if ((v13 & 0x20) == 0)
  {
    if ((v13 & 8) == 0)
    {
      goto LABEL_53;
    }

LABEL_66:
    PBDataWriterWriteInt32Field();
    if ((*&self->_has & 4) == 0)
    {
      goto LABEL_55;
    }

    goto LABEL_54;
  }

  PBDataWriterWriteInt32Field();
  v13 = self->_has;
  if ((v13 & 8) != 0)
  {
    goto LABEL_66;
  }

LABEL_53:
  if ((v13 & 4) != 0)
  {
LABEL_54:
    PBDataWriterWriteInt32Field();
  }

LABEL_55:
}

- (BOOL)readFrom:(id)a3
{
  v5 = [a3 position];
  if (v5 >= [a3 length])
  {
    return [a3 hasError] ^ 1;
  }

  while (2)
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
      LOBYTE(v128[0]) = 0;
      v9 = [a3 position] + 1;
      if (v9 >= [a3 position] && (v10 = objc_msgSend(a3, "position") + 1, v10 <= objc_msgSend(a3, "length")))
      {
        v11 = [a3 data];
        [v11 getBytes:v128 range:{objc_msgSend(a3, "position"), 1}];

        [a3 setPosition:{objc_msgSend(a3, "position") + 1}];
      }

      else
      {
        [a3 _setError];
      }

      v8 |= (v128[0] & 0x7F) << v6;
      if ((v128[0] & 0x80) == 0)
      {
        break;
      }

      v6 += 7;
      v12 = v7++ >= 9;
      if (v12)
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
    switch((v13 >> 3))
    {
      case 1u:
        v15 = 0;
        v16 = 0;
        v17 = 0;
        while (1)
        {
          LOBYTE(v128[0]) = 0;
          v18 = [a3 position] + 1;
          if (v18 >= [a3 position] && (v19 = objc_msgSend(a3, "position") + 1, v19 <= objc_msgSend(a3, "length")))
          {
            v20 = [a3 data];
            [v20 getBytes:v128 range:{objc_msgSend(a3, "position"), 1}];

            [a3 setPosition:{objc_msgSend(a3, "position") + 1}];
          }

          else
          {
            [a3 _setError];
          }

          v17 |= (v128[0] & 0x7F) << v15;
          if ((v128[0] & 0x80) == 0)
          {
            break;
          }

          v15 += 7;
          v12 = v16++ >= 9;
          if (v12)
          {
            v21 = 0;
LABEL_216:
            v123 = 188;
            goto LABEL_248;
          }
        }

        if ([a3 hasError])
        {
          v21 = 0;
        }

        else
        {
          v21 = v17;
        }

        goto LABEL_216;
      case 2u:
        v64 = 0;
        v65 = 0;
        v66 = 0;
        while (1)
        {
          LOBYTE(v128[0]) = 0;
          v67 = [a3 position] + 1;
          if (v67 >= [a3 position] && (v68 = objc_msgSend(a3, "position") + 1, v68 <= objc_msgSend(a3, "length")))
          {
            v69 = [a3 data];
            [v69 getBytes:v128 range:{objc_msgSend(a3, "position"), 1}];

            [a3 setPosition:{objc_msgSend(a3, "position") + 1}];
          }

          else
          {
            [a3 _setError];
          }

          v66 |= (v128[0] & 0x7F) << v64;
          if ((v128[0] & 0x80) == 0)
          {
            break;
          }

          v64 += 7;
          v12 = v65++ >= 9;
          if (v12)
          {
            v21 = 0;
            goto LABEL_208;
          }
        }

        if ([a3 hasError])
        {
          v21 = 0;
        }

        else
        {
          v21 = v66;
        }

LABEL_208:
        v123 = 184;
        goto LABEL_248;
      case 3u:
        v76 = 0;
        v77 = 0;
        v78 = 0;
        while (1)
        {
          LOBYTE(v128[0]) = 0;
          v79 = [a3 position] + 1;
          if (v79 >= [a3 position] && (v80 = objc_msgSend(a3, "position") + 1, v80 <= objc_msgSend(a3, "length")))
          {
            v81 = [a3 data];
            [v81 getBytes:v128 range:{objc_msgSend(a3, "position"), 1}];

            [a3 setPosition:{objc_msgSend(a3, "position") + 1}];
          }

          else
          {
            [a3 _setError];
          }

          v78 |= (v128[0] & 0x7F) << v76;
          if ((v128[0] & 0x80) == 0)
          {
            break;
          }

          v76 += 7;
          v12 = v77++ >= 9;
          if (v12)
          {
            v21 = 0;
            goto LABEL_220;
          }
        }

        if ([a3 hasError])
        {
          v21 = 0;
        }

        else
        {
          v21 = v78;
        }

LABEL_220:
        v123 = 152;
        goto LABEL_248;
      case 4u:
      case 7u:
      case 0xFu:
      case 0x10u:
      case 0x14u:
      case 0x1Au:
      case 0x1Cu:
      case 0x20u:
      case 0x21u:
      case 0x24u:
      case 0x25u:
      case 0x26u:
        goto LABEL_38;
      case 5u:
        v48 = PBReaderReadString();
        v49 = 104;
        goto LABEL_181;
      case 6u:
        *&self->_has |= 0x10u;
        LODWORD(v128[0]) = 0;
        v62 = [a3 position] + 4;
        if (v62 >= [a3 position] && (v63 = objc_msgSend(a3, "position") + 4, v63 <= objc_msgSend(a3, "length")))
        {
          v124 = [a3 data];
          [v124 getBytes:v128 range:{objc_msgSend(a3, "position"), 4}];

          [a3 setPosition:{objc_msgSend(a3, "position") + 4}];
        }

        else
        {
          [a3 _setError];
        }

        v21 = v128[0];
        v123 = 32;
        goto LABEL_248;
      case 8u:
        v48 = PBReaderReadString();
        v49 = 88;
        goto LABEL_181;
      case 9u:
        v48 = PBReaderReadString();
        v49 = 136;
        goto LABEL_181;
      case 0xAu:
        v48 = PBReaderReadString();
        v49 = 120;
        goto LABEL_181;
      case 0xBu:
        v48 = PBReaderReadString();
        v49 = 56;
        goto LABEL_181;
      case 0xCu:
        v48 = PBReaderReadString();
        v49 = 64;
        goto LABEL_181;
      case 0xDu:
        v48 = PBReaderReadString();
        v49 = 112;
        goto LABEL_181;
      case 0xEu:
        v48 = PBReaderReadString();
        v49 = 128;
        goto LABEL_181;
      case 0x11u:
        v48 = PBReaderReadString();
        v49 = 40;
        goto LABEL_181;
      case 0x12u:
        v48 = PBReaderReadString();
        v49 = 72;
        goto LABEL_181;
      case 0x13u:
        v48 = PBReaderReadString();
        v49 = 144;
        goto LABEL_181;
      case 0x15u:
        v103 = 0;
        v104 = 0;
        v105 = 0;
        *&self->_has |= 0x40u;
        while (1)
        {
          LOBYTE(v128[0]) = 0;
          v106 = [a3 position] + 1;
          if (v106 >= [a3 position] && (v107 = objc_msgSend(a3, "position") + 1, v107 <= objc_msgSend(a3, "length")))
          {
            v108 = [a3 data];
            [v108 getBytes:v128 range:{objc_msgSend(a3, "position"), 1}];

            [a3 setPosition:{objc_msgSend(a3, "position") + 1}];
          }

          else
          {
            [a3 _setError];
          }

          v105 |= (v128[0] & 0x7F) << v103;
          if ((v128[0] & 0x80) == 0)
          {
            break;
          }

          v103 += 7;
          v12 = v104++ >= 9;
          if (v12)
          {
            v21 = 0;
            goto LABEL_234;
          }
        }

        if ([a3 hasError])
        {
          v21 = 0;
        }

        else
        {
          v21 = v105;
        }

LABEL_234:
        v123 = 80;
        goto LABEL_248;
      case 0x16u:
        v42 = 0;
        v43 = 0;
        v44 = 0;
        *&self->_has |= 0x80u;
        while (1)
        {
          LOBYTE(v128[0]) = 0;
          v45 = [a3 position] + 1;
          if (v45 >= [a3 position] && (v46 = objc_msgSend(a3, "position") + 1, v46 <= objc_msgSend(a3, "length")))
          {
            v47 = [a3 data];
            [v47 getBytes:v128 range:{objc_msgSend(a3, "position"), 1}];

            [a3 setPosition:{objc_msgSend(a3, "position") + 1}];
          }

          else
          {
            [a3 _setError];
          }

          v44 |= (v128[0] & 0x7F) << v42;
          if ((v128[0] & 0x80) == 0)
          {
            break;
          }

          v42 += 7;
          v12 = v43++ >= 9;
          if (v12)
          {
            v21 = 0;
            goto LABEL_198;
          }
        }

        if ([a3 hasError])
        {
          v21 = 0;
        }

        else
        {
          v21 = v44;
        }

LABEL_198:
        v123 = 96;
        goto LABEL_248;
      case 0x17u:
        v50 = 0;
        v51 = 0;
        v52 = 0;
        *&self->_has |= 0x200u;
        while (1)
        {
          LOBYTE(v128[0]) = 0;
          v53 = [a3 position] + 1;
          if (v53 >= [a3 position] && (v54 = objc_msgSend(a3, "position") + 1, v54 <= objc_msgSend(a3, "length")))
          {
            v55 = [a3 data];
            [v55 getBytes:v128 range:{objc_msgSend(a3, "position"), 1}];

            [a3 setPosition:{objc_msgSend(a3, "position") + 1}];
          }

          else
          {
            [a3 _setError];
          }

          v52 |= (v128[0] & 0x7F) << v50;
          if ((v128[0] & 0x80) == 0)
          {
            break;
          }

          v50 += 7;
          v12 = v51++ >= 9;
          if (v12)
          {
            v21 = 0;
            goto LABEL_202;
          }
        }

        if ([a3 hasError])
        {
          v21 = 0;
        }

        else
        {
          v21 = v52;
        }

LABEL_202:
        v123 = 192;
        goto LABEL_248;
      case 0x18u:
        v82 = 0;
        v83 = 0;
        v84 = 0;
        *&self->_has |= 0x2000u;
        while (1)
        {
          LOBYTE(v128[0]) = 0;
          v85 = [a3 position] + 1;
          if (v85 >= [a3 position] && (v86 = objc_msgSend(a3, "position") + 1, v86 <= objc_msgSend(a3, "length")))
          {
            v87 = [a3 data];
            [v87 getBytes:v128 range:{objc_msgSend(a3, "position"), 1}];

            [a3 setPosition:{objc_msgSend(a3, "position") + 1}];
          }

          else
          {
            [a3 _setError];
          }

          v84 |= (v128[0] & 0x7F) << v82;
          if ((v128[0] & 0x80) == 0)
          {
            break;
          }

          v82 += 7;
          v12 = v83++ >= 9;
          if (v12)
          {
            LOBYTE(v35) = 0;
            goto LABEL_222;
          }
        }

        v35 = (v84 != 0) & ~[a3 hasError];
LABEL_222:
        v122 = 199;
        goto LABEL_237;
      case 0x19u:
        v88 = 0;
        v89 = 0;
        v90 = 0;
        *&self->_has |= 1u;
        while (1)
        {
          LOBYTE(v128[0]) = 0;
          v91 = [a3 position] + 1;
          if (v91 >= [a3 position] && (v92 = objc_msgSend(a3, "position") + 1, v92 <= objc_msgSend(a3, "length")))
          {
            v93 = [a3 data];
            [v93 getBytes:v128 range:{objc_msgSend(a3, "position"), 1}];

            [a3 setPosition:{objc_msgSend(a3, "position") + 1}];
          }

          else
          {
            [a3 _setError];
          }

          v90 |= (v128[0] & 0x7F) << v88;
          if ((v128[0] & 0x80) == 0)
          {
            break;
          }

          v88 += 7;
          v12 = v89++ >= 9;
          if (v12)
          {
            v94 = 0;
            goto LABEL_226;
          }
        }

        if ([a3 hasError])
        {
          v94 = 0;
        }

        else
        {
          v94 = v90;
        }

LABEL_226:
        self->_obsoleteCid = v94;
        goto LABEL_249;
      case 0x1Bu:
        v28 = PBReaderReadString();
        if (v28)
        {
          [(SearchResultRepr *)self addObsoleteAddressLine:v28];
        }

        goto LABEL_179;
      case 0x1Du:
        v56 = 0;
        v57 = 0;
        v58 = 0;
        *&self->_has |= 0x4000u;
        while (1)
        {
          LOBYTE(v128[0]) = 0;
          v59 = [a3 position] + 1;
          if (v59 >= [a3 position] && (v60 = objc_msgSend(a3, "position") + 1, v60 <= objc_msgSend(a3, "length")))
          {
            v61 = [a3 data];
            [v61 getBytes:v128 range:{objc_msgSend(a3, "position"), 1}];

            [a3 setPosition:{objc_msgSend(a3, "position") + 1}];
          }

          else
          {
            [a3 _setError];
          }

          v58 |= (v128[0] & 0x7F) << v56;
          if ((v128[0] & 0x80) == 0)
          {
            break;
          }

          v56 += 7;
          v12 = v57++ >= 9;
          if (v12)
          {
            LOBYTE(v35) = 0;
            goto LABEL_204;
          }
        }

        v35 = (v58 != 0) & ~[a3 hasError];
LABEL_204:
        v122 = 200;
        goto LABEL_237;
      case 0x1Eu:
        v36 = 0;
        v37 = 0;
        v38 = 0;
        *&self->_has |= 0x1000u;
        while (1)
        {
          LOBYTE(v128[0]) = 0;
          v39 = [a3 position] + 1;
          if (v39 >= [a3 position] && (v40 = objc_msgSend(a3, "position") + 1, v40 <= objc_msgSend(a3, "length")))
          {
            v41 = [a3 data];
            [v41 getBytes:v128 range:{objc_msgSend(a3, "position"), 1}];

            [a3 setPosition:{objc_msgSend(a3, "position") + 1}];
          }

          else
          {
            [a3 _setError];
          }

          v38 |= (v128[0] & 0x7F) << v36;
          if ((v128[0] & 0x80) == 0)
          {
            break;
          }

          v36 += 7;
          v12 = v37++ >= 9;
          if (v12)
          {
            LOBYTE(v35) = 0;
            goto LABEL_194;
          }
        }

        v35 = (v38 != 0) & ~[a3 hasError];
LABEL_194:
        v122 = 198;
        goto LABEL_237;
      case 0x1Fu:
        v28 = objc_alloc_init(GEOPlace);
        objc_storeStrong(&self->_place, v28);
        v128[0] = 0;
        v128[1] = 0;
        if (PBReaderPlaceMark() && [v28 readFrom:a3])
        {
          PBReaderRecallMark();
LABEL_179:

LABEL_249:
          v125 = [a3 position];
          if (v125 >= [a3 length])
          {
            return [a3 hasError] ^ 1;
          }

          continue;
        }

        return 0;
      case 0x22u:
        v109 = 0;
        v110 = 0;
        v111 = 0;
        *&self->_has |= 0x400u;
        while (1)
        {
          LOBYTE(v128[0]) = 0;
          v112 = [a3 position] + 1;
          if (v112 >= [a3 position] && (v113 = objc_msgSend(a3, "position") + 1, v113 <= objc_msgSend(a3, "length")))
          {
            v114 = [a3 data];
            [v114 getBytes:v128 range:{objc_msgSend(a3, "position"), 1}];

            [a3 setPosition:{objc_msgSend(a3, "position") + 1}];
          }

          else
          {
            [a3 _setError];
          }

          v111 |= (v128[0] & 0x7F) << v109;
          if ((v128[0] & 0x80) == 0)
          {
            break;
          }

          v109 += 7;
          v12 = v110++ >= 9;
          if (v12)
          {
            LOBYTE(v35) = 0;
            goto LABEL_236;
          }
        }

        v35 = (v111 != 0) & ~[a3 hasError];
LABEL_236:
        v122 = 196;
        goto LABEL_237;
      case 0x23u:
        v29 = 0;
        v30 = 0;
        v31 = 0;
        *&self->_has |= 0x800u;
        while (1)
        {
          LOBYTE(v128[0]) = 0;
          v32 = [a3 position] + 1;
          if (v32 >= [a3 position] && (v33 = objc_msgSend(a3, "position") + 1, v33 <= objc_msgSend(a3, "length")))
          {
            v34 = [a3 data];
            [v34 getBytes:v128 range:{objc_msgSend(a3, "position"), 1}];

            [a3 setPosition:{objc_msgSend(a3, "position") + 1}];
          }

          else
          {
            [a3 _setError];
          }

          v31 |= (v128[0] & 0x7F) << v29;
          if ((v128[0] & 0x80) == 0)
          {
            break;
          }

          v29 += 7;
          v12 = v30++ >= 9;
          if (v12)
          {
            LOBYTE(v35) = 0;
            goto LABEL_192;
          }
        }

        v35 = (v31 != 0) & ~[a3 hasError];
LABEL_192:
        v122 = 197;
LABEL_237:
        self->PBCodable_opaque[v122] = v35;
        goto LABEL_249;
      case 0x27u:
        *&self->_has |= 2u;
        v128[0] = 0;
        v101 = [a3 position] + 8;
        if (v101 >= [a3 position] && (v102 = objc_msgSend(a3, "position") + 8, v102 <= objc_msgSend(a3, "length")))
        {
          v126 = [a3 data];
          [v126 getBytes:v128 range:{objc_msgSend(a3, "position"), 8}];

          [a3 setPosition:{objc_msgSend(a3, "position") + 8}];
        }

        else
        {
          [a3 _setError];
        }

        *&self->_timestamp = v128[0];
        goto LABEL_249;
      case 0x28u:
        v70 = 0;
        v71 = 0;
        v72 = 0;
        *&self->_has |= 0x100u;
        while (1)
        {
          LOBYTE(v128[0]) = 0;
          v73 = [a3 position] + 1;
          if (v73 >= [a3 position] && (v74 = objc_msgSend(a3, "position") + 1, v74 <= objc_msgSend(a3, "length")))
          {
            v75 = [a3 data];
            [v75 getBytes:v128 range:{objc_msgSend(a3, "position"), 1}];

            [a3 setPosition:{objc_msgSend(a3, "position") + 1}];
          }

          else
          {
            [a3 _setError];
          }

          v72 |= (v128[0] & 0x7F) << v70;
          if ((v128[0] & 0x80) == 0)
          {
            break;
          }

          v70 += 7;
          v12 = v71++ >= 9;
          if (v12)
          {
            v21 = 0;
            goto LABEL_212;
          }
        }

        if ([a3 hasError])
        {
          v21 = 0;
        }

        else
        {
          v21 = v72;
        }

LABEL_212:
        v123 = 168;
        goto LABEL_248;
      case 0x29u:
        v48 = PBReaderReadString();
        v49 = 176;
LABEL_181:
        v115 = *&self->PBCodable_opaque[v49];
        *&self->PBCodable_opaque[v49] = v48;

        goto LABEL_249;
      case 0x2Au:
        v95 = 0;
        v96 = 0;
        v97 = 0;
        *&self->_has |= 0x20u;
        while (1)
        {
          LOBYTE(v128[0]) = 0;
          v98 = [a3 position] + 1;
          if (v98 >= [a3 position] && (v99 = objc_msgSend(a3, "position") + 1, v99 <= objc_msgSend(a3, "length")))
          {
            v100 = [a3 data];
            [v100 getBytes:v128 range:{objc_msgSend(a3, "position"), 1}];

            [a3 setPosition:{objc_msgSend(a3, "position") + 1}];
          }

          else
          {
            [a3 _setError];
          }

          v97 |= (v128[0] & 0x7F) << v95;
          if ((v128[0] & 0x80) == 0)
          {
            break;
          }

          v95 += 7;
          v12 = v96++ >= 9;
          if (v12)
          {
            v21 = 0;
            goto LABEL_230;
          }
        }

        if ([a3 hasError])
        {
          v21 = 0;
        }

        else
        {
          v21 = v97;
        }

LABEL_230:
        v123 = 36;
        goto LABEL_248;
      default:
        if (v14 == 101)
        {
          v116 = 0;
          v117 = 0;
          v118 = 0;
          *&self->_has |= 8u;
          while (1)
          {
            LOBYTE(v128[0]) = 0;
            v119 = [a3 position] + 1;
            if (v119 >= [a3 position] && (v120 = objc_msgSend(a3, "position") + 1, v120 <= objc_msgSend(a3, "length")))
            {
              v121 = [a3 data];
              [v121 getBytes:v128 range:{objc_msgSend(a3, "position"), 1}];

              [a3 setPosition:{objc_msgSend(a3, "position") + 1}];
            }

            else
            {
              [a3 _setError];
            }

            v118 |= (v128[0] & 0x7F) << v116;
            if ((v128[0] & 0x80) == 0)
            {
              break;
            }

            v116 += 7;
            v12 = v117++ >= 9;
            if (v12)
            {
              v21 = 0;
              goto LABEL_241;
            }
          }

          if ([a3 hasError])
          {
            v21 = 0;
          }

          else
          {
            v21 = v118;
          }

LABEL_241:
          v123 = 28;
        }

        else
        {
          if (v14 != 102)
          {
LABEL_38:
            if ((PBReaderSkipValueWithTag() & 1) == 0)
            {
              return 0;
            }

            goto LABEL_249;
          }

          v22 = 0;
          v23 = 0;
          v24 = 0;
          *&self->_has |= 4u;
          while (1)
          {
            LOBYTE(v128[0]) = 0;
            v25 = [a3 position] + 1;
            if (v25 >= [a3 position] && (v26 = objc_msgSend(a3, "position") + 1, v26 <= objc_msgSend(a3, "length")))
            {
              v27 = [a3 data];
              [v27 getBytes:v128 range:{objc_msgSend(a3, "position"), 1}];

              [a3 setPosition:{objc_msgSend(a3, "position") + 1}];
            }

            else
            {
              [a3 _setError];
            }

            v24 |= (v128[0] & 0x7F) << v22;
            if ((v128[0] & 0x80) == 0)
            {
              break;
            }

            v22 += 7;
            v12 = v23++ >= 9;
            if (v12)
            {
              v21 = 0;
              goto LABEL_245;
            }
          }

          if ([a3 hasError])
          {
            v21 = 0;
          }

          else
          {
            v21 = v24;
          }

LABEL_245:
          v123 = 24;
        }

LABEL_248:
        *&self->PBCodable_opaque[v123] = v21;
        goto LABEL_249;
    }
  }
}

- (id)dictionaryRepresentation
{
  v3 = +[NSMutableDictionary dictionary];
  v4 = [NSNumber numberWithUnsignedInt:self->_unusedMapType];
  [v3 setObject:v4 forKey:@"unusedMapType"];

  v5 = self->_type - 3;
  if (v5 > 0xA)
  {
    v6 = @"Default";
  }

  else
  {
    v6 = *(&off_101654E80 + v5);
  }

  [v3 setObject:v6 forKey:@"type"];
  v7 = self->_originalType - 3;
  if (v7 > 0xA)
  {
    v8 = @"Default";
  }

  else
  {
    v8 = *(&off_101654E80 + v7);
  }

  [v3 setObject:v8 forKey:@"originalType"];
  obsoleteName = self->_obsoleteName;
  if (obsoleteName)
  {
    [v3 setObject:obsoleteName forKey:@"obsoleteName"];
  }

  if ((*&self->_has & 0x10) != 0)
  {
    v10 = [NSNumber numberWithUnsignedInt:self->_flags];
    [v3 setObject:v10 forKey:@"flags"];
  }

  obsoleteLocality = self->_obsoleteLocality;
  if (obsoleteLocality)
  {
    [v3 setObject:obsoleteLocality forKey:@"obsoleteLocality"];
  }

  obsoleteRegion = self->_obsoleteRegion;
  if (obsoleteRegion)
  {
    [v3 setObject:obsoleteRegion forKey:@"obsoleteRegion"];
  }

  obsoletePostalCode = self->_obsoletePostalCode;
  if (obsoletePostalCode)
  {
    [v3 setObject:obsoletePostalCode forKey:@"obsoletePostalCode"];
  }

  obsoleteCountryCode = self->_obsoleteCountryCode;
  if (obsoleteCountryCode)
  {
    [v3 setObject:obsoleteCountryCode forKey:@"obsoleteCountryCode"];
  }

  obsoleteCountryName = self->_obsoleteCountryName;
  if (obsoleteCountryName)
  {
    [v3 setObject:obsoleteCountryName forKey:@"obsoleteCountryName"];
  }

  obsoletePhone = self->_obsoletePhone;
  if (obsoletePhone)
  {
    [v3 setObject:obsoletePhone forKey:@"obsoletePhone"];
  }

  obsoleteReferenceURL = self->_obsoleteReferenceURL;
  if (obsoleteReferenceURL)
  {
    [v3 setObject:obsoleteReferenceURL forKey:@"obsoleteReferenceURL"];
  }

  mapsURL = self->_mapsURL;
  if (mapsURL)
  {
    [v3 setObject:mapsURL forKey:@"mapsURL"];
  }

  obsoleteDependentLocality = self->_obsoleteDependentLocality;
  if (obsoleteDependentLocality)
  {
    [v3 setObject:obsoleteDependentLocality forKey:@"obsoleteDependentLocality"];
  }

  obsoleteThoroughfare = self->_obsoleteThoroughfare;
  if (obsoleteThoroughfare)
  {
    [v3 setObject:obsoleteThoroughfare forKey:@"obsoleteThoroughfare"];
  }

  has = self->_has;
  if ((has & 0x40) != 0)
  {
    v36 = [NSNumber numberWithInt:self->_obsoleteLatitudeE6Value];
    [v3 setObject:v36 forKey:@"obsoleteLatitudeE6Value"];

    has = self->_has;
    if ((has & 0x80) == 0)
    {
LABEL_33:
      if ((has & 0x200) == 0)
      {
        goto LABEL_34;
      }

      goto LABEL_59;
    }
  }

  else if ((has & 0x80) == 0)
  {
    goto LABEL_33;
  }

  v37 = [NSNumber numberWithInt:self->_obsoleteLongitudeE6Value];
  [v3 setObject:v37 forKey:@"obsoleteLongitudeE6Value"];

  has = self->_has;
  if ((has & 0x200) == 0)
  {
LABEL_34:
    if ((has & 0x2000) == 0)
    {
      goto LABEL_35;
    }

    goto LABEL_60;
  }

LABEL_59:
  v38 = [NSNumber numberWithUnsignedInt:self->_zoomLevel];
  [v3 setObject:v38 forKey:@"zoomLevel"];

  has = self->_has;
  if ((has & 0x2000) == 0)
  {
LABEL_35:
    if ((has & 1) == 0)
    {
      goto LABEL_37;
    }

    goto LABEL_36;
  }

LABEL_60:
  v39 = [NSNumber numberWithBool:self->_obsoleteInexactPosition];
  [v3 setObject:v39 forKey:@"obsoleteInexactPosition"];

  if (*&self->_has)
  {
LABEL_36:
    v22 = [NSNumber numberWithLongLong:self->_obsoleteCid];
    [v3 setObject:v22 forKey:@"obsoleteCid"];
  }

LABEL_37:
  obsoleteAddressLines = self->_obsoleteAddressLines;
  if (obsoleteAddressLines)
  {
    [v3 setObject:obsoleteAddressLines forKey:@"obsoleteAddressLine"];
  }

  v24 = self->_has;
  if ((v24 & 0x4000) != 0)
  {
    v25 = [NSNumber numberWithBool:self->_obsoleteUnverifiedListing];
    [v3 setObject:v25 forKey:@"obsoleteUnverifiedListing"];

    v24 = self->_has;
  }

  if ((v24 & 0x1000) != 0)
  {
    v26 = [NSNumber numberWithBool:self->_obsoleteClosedListing];
    [v3 setObject:v26 forKey:@"obsoleteClosedListing"];
  }

  place = self->_place;
  if (place)
  {
    v28 = [(GEOPlace *)place dictionaryRepresentation];
    [v3 setObject:v28 forKey:@"place"];
  }

  v29 = self->_has;
  if ((v29 & 0x400) != 0)
  {
    v40 = [NSNumber numberWithBool:self->_hasIncompleteMetadata];
    [v3 setObject:v40 forKey:@"hasIncompleteMetadata"];

    v29 = self->_has;
    if ((v29 & 0x800) == 0)
    {
LABEL_47:
      if ((v29 & 2) == 0)
      {
        goto LABEL_48;
      }

      goto LABEL_64;
    }
  }

  else if ((*&self->_has & 0x800) == 0)
  {
    goto LABEL_47;
  }

  v41 = [NSNumber numberWithBool:self->_hasIncompleteNavData];
  [v3 setObject:v41 forKey:@"hasIncompleteNavData"];

  v29 = self->_has;
  if ((v29 & 2) == 0)
  {
LABEL_48:
    if ((v29 & 0x100) == 0)
    {
      goto LABEL_50;
    }

    goto LABEL_49;
  }

LABEL_64:
  v42 = [NSNumber numberWithDouble:self->_timestamp];
  [v3 setObject:v42 forKey:@"timestamp"];

  if ((*&self->_has & 0x100) != 0)
  {
LABEL_49:
    v30 = [NSNumber numberWithInt:self->_resultIndex];
    [v3 setObject:v30 forKey:@"resultIndex"];
  }

LABEL_50:
  syncIdentifier = self->_syncIdentifier;
  if (syncIdentifier)
  {
    [v3 setObject:syncIdentifier forKey:@"syncIdentifier"];
  }

  v32 = self->_has;
  if ((v32 & 0x20) == 0)
  {
    if ((v32 & 8) == 0)
    {
      goto LABEL_54;
    }

LABEL_67:
    v44 = [NSNumber numberWithInt:self->_addressRecordID];
    [v3 setObject:v44 forKey:@"addressRecordID"];

    if ((*&self->_has & 4) == 0)
    {
      goto LABEL_56;
    }

    goto LABEL_55;
  }

  v43 = [NSNumber numberWithInt:self->_floorOrdinal];
  [v3 setObject:v43 forKey:@"floorOrdinal"];

  v32 = self->_has;
  if ((v32 & 8) != 0)
  {
    goto LABEL_67;
  }

LABEL_54:
  if ((v32 & 4) != 0)
  {
LABEL_55:
    v33 = [NSNumber numberWithInt:self->_addressID];
    [v3 setObject:v33 forKey:@"addressID"];
  }

LABEL_56:
  v34 = v3;

  return v3;
}

- (id)description
{
  v7.receiver = self;
  v7.super_class = SearchResultRepr;
  v3 = [(SearchResultRepr *)&v7 description];
  v4 = [(SearchResultRepr *)self dictionaryRepresentation];
  v5 = [NSString stringWithFormat:@"%@ %@", v3, v4];

  return v5;
}

- (void)setHasAddressID:(BOOL)a3
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

- (void)setHasAddressRecordID:(BOOL)a3
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

- (void)setHasFloorOrdinal:(BOOL)a3
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

- (void)setHasResultIndex:(BOOL)a3
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

- (void)setHasTimestamp:(BOOL)a3
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

- (void)setHasHasIncompleteNavData:(BOOL)a3
{
  if (a3)
  {
    v3 = 2048;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xF7FF | v3;
}

- (void)setHasHasIncompleteMetadata:(BOOL)a3
{
  if (a3)
  {
    v3 = 1024;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFBFF | v3;
}

- (void)setHasObsoleteClosedListing:(BOOL)a3
{
  if (a3)
  {
    v3 = 4096;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xEFFF | v3;
}

- (void)setHasObsoleteUnverifiedListing:(BOOL)a3
{
  if (a3)
  {
    v3 = 0x4000;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xBFFF | v3;
}

- (void)addObsoleteAddressLine:(id)a3
{
  v4 = a3;
  obsoleteAddressLines = self->_obsoleteAddressLines;
  v8 = v4;
  if (!obsoleteAddressLines)
  {
    v6 = objc_alloc_init(NSMutableArray);
    v7 = self->_obsoleteAddressLines;
    self->_obsoleteAddressLines = v6;

    v4 = v8;
    obsoleteAddressLines = self->_obsoleteAddressLines;
  }

  [(NSMutableArray *)obsoleteAddressLines addObject:v4];
}

- (void)setHasObsoleteInexactPosition:(BOOL)a3
{
  if (a3)
  {
    v3 = 0x2000;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xDFFF | v3;
}

- (void)setHasZoomLevel:(BOOL)a3
{
  if (a3)
  {
    v3 = 512;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFDFF | v3;
}

- (void)setHasObsoleteLongitudeE6Value:(BOOL)a3
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

- (void)setHasObsoleteLatitudeE6Value:(BOOL)a3
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

- (void)setHasFlags:(BOOL)a3
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

- (unsigned)StringAsOriginalType:(id)a3
{
  v3 = a3;
  if ([v3 isEqualToString:@"DroppedPin"])
  {
    v4 = 3;
  }

  else if ([v3 isEqualToString:@"CurrentLocation"])
  {
    v4 = 4;
  }

  else if ([v3 isEqualToString:@"RefinementEntry"])
  {
    v4 = 5;
  }

  else if ([v3 isEqualToString:@"POI"])
  {
    v4 = 9;
  }

  else if ([v3 isEqualToString:@"Section"])
  {
    v4 = 11;
  }

  else if ([v3 isEqualToString:@"ParkedCar"])
  {
    v4 = 12;
  }

  else if ([v3 isEqualToString:@"CustomPin"])
  {
    v4 = 13;
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (id)originalTypeAsString:(unsigned int)a3
{
  if (a3 - 3 > 0xA)
  {
    return @"Default";
  }

  else
  {
    return *(&off_101654E80 + a3 - 3);
  }
}

- (unsigned)StringAsType:(id)a3
{
  v3 = a3;
  if ([v3 isEqualToString:@"DroppedPin"])
  {
    v4 = 3;
  }

  else if ([v3 isEqualToString:@"CurrentLocation"])
  {
    v4 = 4;
  }

  else if ([v3 isEqualToString:@"RefinementEntry"])
  {
    v4 = 5;
  }

  else if ([v3 isEqualToString:@"POI"])
  {
    v4 = 9;
  }

  else if ([v3 isEqualToString:@"Section"])
  {
    v4 = 11;
  }

  else if ([v3 isEqualToString:@"ParkedCar"])
  {
    v4 = 12;
  }

  else if ([v3 isEqualToString:@"CustomPin"])
  {
    v4 = 13;
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (id)typeAsString:(unsigned int)a3
{
  if (a3 - 3 > 0xA)
  {
    return @"Default";
  }

  else
  {
    return *(&off_101654E80 + a3 - 3);
  }
}

@end