@interface COSBBUserStudyDataBlob
- (BOOL)isEqual:(id)equal;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (id)dictionaryRepresentation;
- (unint64_t)hash;
- (void)addResults:(id)results;
- (void)copyTo:(id)to;
- (void)mergeFrom:(id)from;
- (void)setHasDetectedCrownOrientation:(BOOL)orientation;
- (void)setHasDetectedRightWrist:(BOOL)wrist;
- (void)setHasReportedCrownOrientation:(BOOL)orientation;
- (void)setHasReportedRightWrist:(BOOL)wrist;
- (void)setHasUserStudyVersion:(BOOL)version;
- (void)setHasVersion:(BOOL)version;
- (void)setHasWatchMaterial:(BOOL)material;
- (void)setHasWatchSizeClass:(BOOL)class;
- (void)writeTo:(id)to;
@end

@implementation COSBBUserStudyDataBlob

- (void)setHasVersion:(BOOL)version
{
  if (version)
  {
    v3 = 64;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFFBF | v3;
}

- (void)setHasReportedRightWrist:(BOOL)wrist
{
  if (wrist)
  {
    v3 = 16;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFFEF | v3;
}

- (void)setHasReportedCrownOrientation:(BOOL)orientation
{
  if (orientation)
  {
    v3 = 8;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFFF7 | v3;
}

- (void)setHasUserStudyVersion:(BOOL)version
{
  if (version)
  {
    v3 = 32;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFFDF | v3;
}

- (void)setHasWatchSizeClass:(BOOL)class
{
  if (class)
  {
    v3 = 256;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFEFF | v3;
}

- (void)setHasWatchMaterial:(BOOL)material
{
  if (material)
  {
    v3 = 128;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFF7F | v3;
}

- (void)setHasDetectedRightWrist:(BOOL)wrist
{
  if (wrist)
  {
    v3 = 4;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFFFB | v3;
}

- (void)setHasDetectedCrownOrientation:(BOOL)orientation
{
  if (orientation)
  {
    v3 = 2;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFFFD | v3;
}

- (void)addResults:(id)results
{
  resultsCopy = results;
  results = self->_results;
  v8 = resultsCopy;
  if (!results)
  {
    v6 = objc_alloc_init(NSMutableArray);
    v7 = self->_results;
    self->_results = v6;

    resultsCopy = v8;
    results = self->_results;
  }

  [(NSMutableArray *)results addObject:resultsCopy];
}

- (id)description
{
  v7.receiver = self;
  v7.super_class = COSBBUserStudyDataBlob;
  v3 = [(COSBBUserStudyDataBlob *)&v7 description];
  dictionaryRepresentation = [(COSBBUserStudyDataBlob *)self dictionaryRepresentation];
  v5 = [NSString stringWithFormat:@"%@ %@", v3, dictionaryRepresentation];

  return v5;
}

- (id)dictionaryRepresentation
{
  v3 = +[NSMutableDictionary dictionary];
  has = self->_has;
  if ((has & 0x40) != 0)
  {
    v18 = [NSNumber numberWithUnsignedInt:self->_version];
    [v3 setObject:v18 forKey:@"version"];

    has = self->_has;
    if ((has & 0x10) == 0)
    {
LABEL_3:
      if ((has & 8) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_30;
    }
  }

  else if ((has & 0x10) == 0)
  {
    goto LABEL_3;
  }

  v19 = [NSNumber numberWithUnsignedInt:self->_reportedRightWrist];
  [v3 setObject:v19 forKey:@"reportedRightWrist"];

  has = self->_has;
  if ((has & 8) == 0)
  {
LABEL_4:
    if ((has & 0x20) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_31;
  }

LABEL_30:
  v20 = [NSNumber numberWithUnsignedInt:self->_reportedCrownOrientation];
  [v3 setObject:v20 forKey:@"reportedCrownOrientation"];

  has = self->_has;
  if ((has & 0x20) == 0)
  {
LABEL_5:
    if ((has & 0x100) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_32;
  }

LABEL_31:
  v21 = [NSNumber numberWithUnsignedInt:self->_userStudyVersion];
  [v3 setObject:v21 forKey:@"userStudyVersion"];

  has = self->_has;
  if ((has & 0x100) == 0)
  {
LABEL_6:
    if ((has & 0x80) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_7;
  }

LABEL_32:
  v22 = [NSNumber numberWithUnsignedInt:self->_watchSizeClass];
  [v3 setObject:v22 forKey:@"watchSizeClass"];

  if ((*&self->_has & 0x80) != 0)
  {
LABEL_7:
    v5 = [NSNumber numberWithUnsignedInt:self->_watchMaterial];
    [v3 setObject:v5 forKey:@"watchMaterial"];
  }

LABEL_8:
  watchProductType = self->_watchProductType;
  if (watchProductType)
  {
    [v3 setObject:watchProductType forKey:@"watchProductType"];
  }

  phoneProductType = self->_phoneProductType;
  if (phoneProductType)
  {
    [v3 setObject:phoneProductType forKey:@"phoneProductType"];
  }

  v8 = self->_has;
  if ((v8 & 4) != 0)
  {
    v23 = [NSNumber numberWithUnsignedInt:self->_detectedRightWrist];
    [v3 setObject:v23 forKey:@"detectedRightWrist"];

    v8 = self->_has;
    if ((v8 & 1) == 0)
    {
LABEL_14:
      if ((v8 & 2) == 0)
      {
        goto LABEL_16;
      }

      goto LABEL_15;
    }
  }

  else if ((v8 & 1) == 0)
  {
    goto LABEL_14;
  }

  v24 = [NSNumber numberWithDouble:self->_detectedConfidence];
  [v3 setObject:v24 forKey:@"detectedConfidence"];

  if ((*&self->_has & 2) != 0)
  {
LABEL_15:
    v9 = [NSNumber numberWithUnsignedInt:self->_detectedCrownOrientation];
    [v3 setObject:v9 forKey:@"detectedCrownOrientation"];
  }

LABEL_16:
  if ([(NSMutableArray *)self->_results count])
  {
    v10 = [[NSMutableArray alloc] initWithCapacity:{-[NSMutableArray count](self->_results, "count")}];
    v25 = 0u;
    v26 = 0u;
    v27 = 0u;
    v28 = 0u;
    v11 = self->_results;
    v12 = [(NSMutableArray *)v11 countByEnumeratingWithState:&v25 objects:v29 count:16];
    if (v12)
    {
      v13 = v12;
      v14 = *v26;
      do
      {
        for (i = 0; i != v13; i = i + 1)
        {
          if (*v26 != v14)
          {
            objc_enumerationMutation(v11);
          }

          dictionaryRepresentation = [*(*(&v25 + 1) + 8 * i) dictionaryRepresentation];
          [v10 addObject:dictionaryRepresentation];
        }

        v13 = [(NSMutableArray *)v11 countByEnumeratingWithState:&v25 objects:v29 count:16];
      }

      while (v13);
    }

    [v3 setObject:v10 forKey:@"results"];
  }

  return v3;
}

- (void)writeTo:(id)to
{
  toCopy = to;
  has = self->_has;
  if ((has & 0x40) != 0)
  {
    PBDataWriterWriteUint32Field();
    has = self->_has;
    if ((has & 0x10) == 0)
    {
LABEL_3:
      if ((has & 8) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_26;
    }
  }

  else if ((has & 0x10) == 0)
  {
    goto LABEL_3;
  }

  PBDataWriterWriteUint32Field();
  has = self->_has;
  if ((has & 8) == 0)
  {
LABEL_4:
    if ((has & 0x20) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_27;
  }

LABEL_26:
  PBDataWriterWriteUint32Field();
  has = self->_has;
  if ((has & 0x20) == 0)
  {
LABEL_5:
    if ((has & 0x100) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_28;
  }

LABEL_27:
  PBDataWriterWriteUint32Field();
  has = self->_has;
  if ((has & 0x100) == 0)
  {
LABEL_6:
    if ((has & 0x80) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_7;
  }

LABEL_28:
  PBDataWriterWriteUint32Field();
  if ((*&self->_has & 0x80) != 0)
  {
LABEL_7:
    PBDataWriterWriteUint32Field();
  }

LABEL_8:
  if (self->_watchProductType)
  {
    PBDataWriterWriteStringField();
  }

  if (self->_phoneProductType)
  {
    PBDataWriterWriteStringField();
  }

  v6 = self->_has;
  if ((v6 & 4) != 0)
  {
    PBDataWriterWriteUint32Field();
    v6 = self->_has;
    if ((v6 & 1) == 0)
    {
LABEL_14:
      if ((v6 & 2) == 0)
      {
        goto LABEL_16;
      }

      goto LABEL_15;
    }
  }

  else if ((v6 & 1) == 0)
  {
    goto LABEL_14;
  }

  PBDataWriterWriteDoubleField();
  if ((*&self->_has & 2) != 0)
  {
LABEL_15:
    PBDataWriterWriteUint32Field();
  }

LABEL_16:
  v14 = 0u;
  v15 = 0u;
  v12 = 0u;
  v13 = 0u;
  v7 = self->_results;
  v8 = [(NSMutableArray *)v7 countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v13;
    do
    {
      for (i = 0; i != v9; ++i)
      {
        if (*v13 != v10)
        {
          objc_enumerationMutation(v7);
        }

        PBDataWriterWriteSubmessage();
      }

      v9 = [(NSMutableArray *)v7 countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v9);
  }
}

- (void)copyTo:(id)to
{
  toCopy = to;
  has = self->_has;
  if ((has & 0x40) != 0)
  {
    toCopy[13] = self->_version;
    *(toCopy + 38) |= 0x40u;
    has = self->_has;
    if ((has & 0x10) == 0)
    {
LABEL_3:
      if ((has & 8) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_25;
    }
  }

  else if ((has & 0x10) == 0)
  {
    goto LABEL_3;
  }

  toCopy[9] = self->_reportedRightWrist;
  *(toCopy + 38) |= 0x10u;
  has = self->_has;
  if ((has & 8) == 0)
  {
LABEL_4:
    if ((has & 0x20) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_26;
  }

LABEL_25:
  toCopy[8] = self->_reportedCrownOrientation;
  *(toCopy + 38) |= 8u;
  has = self->_has;
  if ((has & 0x20) == 0)
  {
LABEL_5:
    if ((has & 0x100) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_27;
  }

LABEL_26:
  toCopy[12] = self->_userStudyVersion;
  *(toCopy + 38) |= 0x20u;
  has = self->_has;
  if ((has & 0x100) == 0)
  {
LABEL_6:
    if ((has & 0x80) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_7;
  }

LABEL_27:
  toCopy[18] = self->_watchSizeClass;
  *(toCopy + 38) |= 0x100u;
  if ((*&self->_has & 0x80) != 0)
  {
LABEL_7:
    toCopy[14] = self->_watchMaterial;
    *(toCopy + 38) |= 0x80u;
  }

LABEL_8:
  v11 = toCopy;
  if (self->_watchProductType)
  {
    [toCopy setWatchProductType:?];
    toCopy = v11;
  }

  if (self->_phoneProductType)
  {
    [v11 setPhoneProductType:?];
    toCopy = v11;
  }

  v6 = self->_has;
  if ((v6 & 4) == 0)
  {
    if ((v6 & 1) == 0)
    {
      goto LABEL_14;
    }

LABEL_30:
    *(toCopy + 1) = *&self->_detectedConfidence;
    *(toCopy + 38) |= 1u;
    if ((*&self->_has & 2) == 0)
    {
      goto LABEL_16;
    }

    goto LABEL_15;
  }

  toCopy[5] = self->_detectedRightWrist;
  *(toCopy + 38) |= 4u;
  v6 = self->_has;
  if (v6)
  {
    goto LABEL_30;
  }

LABEL_14:
  if ((v6 & 2) != 0)
  {
LABEL_15:
    toCopy[4] = self->_detectedCrownOrientation;
    *(toCopy + 38) |= 2u;
  }

LABEL_16:
  if ([(COSBBUserStudyDataBlob *)self resultsCount])
  {
    [v11 clearResults];
    resultsCount = [(COSBBUserStudyDataBlob *)self resultsCount];
    if (resultsCount)
    {
      v8 = resultsCount;
      for (i = 0; i != v8; ++i)
      {
        v10 = [(COSBBUserStudyDataBlob *)self resultsAtIndex:i];
        [v11 addResults:v10];
      }
    }
  }
}

- (id)copyWithZone:(_NSZone *)zone
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
  v6 = v5;
  has = self->_has;
  if ((has & 0x40) != 0)
  {
    v5[13] = self->_version;
    *(v5 + 38) |= 0x40u;
    has = self->_has;
    if ((has & 0x10) == 0)
    {
LABEL_3:
      if ((has & 8) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_22;
    }
  }

  else if ((has & 0x10) == 0)
  {
    goto LABEL_3;
  }

  v5[9] = self->_reportedRightWrist;
  *(v5 + 38) |= 0x10u;
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
  v5[8] = self->_reportedCrownOrientation;
  *(v5 + 38) |= 8u;
  has = self->_has;
  if ((has & 0x20) == 0)
  {
LABEL_5:
    if ((has & 0x100) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_24;
  }

LABEL_23:
  v5[12] = self->_userStudyVersion;
  *(v5 + 38) |= 0x20u;
  has = self->_has;
  if ((has & 0x100) == 0)
  {
LABEL_6:
    if ((has & 0x80) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_7;
  }

LABEL_24:
  v5[18] = self->_watchSizeClass;
  *(v5 + 38) |= 0x100u;
  if ((*&self->_has & 0x80) != 0)
  {
LABEL_7:
    v5[14] = self->_watchMaterial;
    *(v5 + 38) |= 0x80u;
  }

LABEL_8:
  v8 = [(NSString *)self->_watchProductType copyWithZone:zone];
  v9 = v6[8];
  v6[8] = v8;

  v10 = [(NSString *)self->_phoneProductType copyWithZone:zone];
  v11 = v6[3];
  v6[3] = v10;

  v12 = self->_has;
  if ((v12 & 4) != 0)
  {
    *(v6 + 5) = self->_detectedRightWrist;
    *(v6 + 38) |= 4u;
    v12 = self->_has;
    if ((v12 & 1) == 0)
    {
LABEL_10:
      if ((v12 & 2) == 0)
      {
        goto LABEL_12;
      }

      goto LABEL_11;
    }
  }

  else if ((v12 & 1) == 0)
  {
    goto LABEL_10;
  }

  v6[1] = *&self->_detectedConfidence;
  *(v6 + 38) |= 1u;
  if ((*&self->_has & 2) != 0)
  {
LABEL_11:
    *(v6 + 4) = self->_detectedCrownOrientation;
    *(v6 + 38) |= 2u;
  }

LABEL_12:
  v22 = 0u;
  v23 = 0u;
  v20 = 0u;
  v21 = 0u;
  v13 = self->_results;
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

        v18 = [*(*(&v20 + 1) + 8 * i) copyWithZone:{zone, v20}];
        [v6 addResults:v18];
      }

      v15 = [(NSMutableArray *)v13 countByEnumeratingWithState:&v20 objects:v24 count:16];
    }

    while (v15);
  }

  return v6;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (![equalCopy isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_53;
  }

  has = self->_has;
  v6 = *(equalCopy + 38);
  if ((has & 0x40) != 0)
  {
    if ((v6 & 0x40) == 0 || self->_version != *(equalCopy + 13))
    {
      goto LABEL_53;
    }
  }

  else if ((v6 & 0x40) != 0)
  {
LABEL_53:
    v12 = 0;
    goto LABEL_54;
  }

  if ((has & 0x10) != 0)
  {
    if ((v6 & 0x10) == 0 || self->_reportedRightWrist != *(equalCopy + 9))
    {
      goto LABEL_53;
    }
  }

  else if ((v6 & 0x10) != 0)
  {
    goto LABEL_53;
  }

  if ((has & 8) != 0)
  {
    if ((v6 & 8) == 0 || self->_reportedCrownOrientation != *(equalCopy + 8))
    {
      goto LABEL_53;
    }
  }

  else if ((v6 & 8) != 0)
  {
    goto LABEL_53;
  }

  if ((has & 0x20) != 0)
  {
    if ((v6 & 0x20) == 0 || self->_userStudyVersion != *(equalCopy + 12))
    {
      goto LABEL_53;
    }
  }

  else if ((v6 & 0x20) != 0)
  {
    goto LABEL_53;
  }

  if ((*&self->_has & 0x100) != 0)
  {
    if ((*(equalCopy + 38) & 0x100) == 0 || self->_watchSizeClass != *(equalCopy + 18))
    {
      goto LABEL_53;
    }
  }

  else if ((*(equalCopy + 38) & 0x100) != 0)
  {
    goto LABEL_53;
  }

  if ((has & 0x80) != 0)
  {
    if ((v6 & 0x80) == 0 || self->_watchMaterial != *(equalCopy + 14))
    {
      goto LABEL_53;
    }
  }

  else if ((v6 & 0x80) != 0)
  {
    goto LABEL_53;
  }

  watchProductType = self->_watchProductType;
  if (watchProductType | *(equalCopy + 8) && ![(NSString *)watchProductType isEqual:?])
  {
    goto LABEL_53;
  }

  phoneProductType = self->_phoneProductType;
  if (phoneProductType | *(equalCopy + 3))
  {
    if (![(NSString *)phoneProductType isEqual:?])
    {
      goto LABEL_53;
    }
  }

  v9 = self->_has;
  v10 = *(equalCopy + 38);
  if ((v9 & 4) != 0)
  {
    if ((v10 & 4) == 0 || self->_detectedRightWrist != *(equalCopy + 5))
    {
      goto LABEL_53;
    }
  }

  else if ((v10 & 4) != 0)
  {
    goto LABEL_53;
  }

  if (v9)
  {
    if ((v10 & 1) == 0 || self->_detectedConfidence != *(equalCopy + 1))
    {
      goto LABEL_53;
    }
  }

  else if (v10)
  {
    goto LABEL_53;
  }

  if ((v9 & 2) != 0)
  {
    if ((v10 & 2) == 0 || self->_detectedCrownOrientation != *(equalCopy + 4))
    {
      goto LABEL_53;
    }
  }

  else if ((v10 & 2) != 0)
  {
    goto LABEL_53;
  }

  results = self->_results;
  if (results | *(equalCopy + 5))
  {
    v12 = [(NSMutableArray *)results isEqual:?];
  }

  else
  {
    v12 = 1;
  }

LABEL_54:

  return v12;
}

- (unint64_t)hash
{
  has = self->_has;
  if ((has & 0x40) != 0)
  {
    v4 = 2654435761 * self->_version;
    if ((has & 0x10) != 0)
    {
LABEL_3:
      v5 = 2654435761 * self->_reportedRightWrist;
      if ((has & 8) != 0)
      {
        goto LABEL_4;
      }

      goto LABEL_10;
    }
  }

  else
  {
    v4 = 0;
    if ((has & 0x10) != 0)
    {
      goto LABEL_3;
    }
  }

  v5 = 0;
  if ((has & 8) != 0)
  {
LABEL_4:
    v6 = 2654435761 * self->_reportedCrownOrientation;
    if ((has & 0x20) != 0)
    {
      goto LABEL_5;
    }

    goto LABEL_11;
  }

LABEL_10:
  v6 = 0;
  if ((has & 0x20) != 0)
  {
LABEL_5:
    v7 = 2654435761 * self->_userStudyVersion;
    if ((*&self->_has & 0x100) != 0)
    {
      goto LABEL_6;
    }

LABEL_12:
    v8 = 0;
    if ((has & 0x80) != 0)
    {
      goto LABEL_7;
    }

    goto LABEL_13;
  }

LABEL_11:
  v7 = 0;
  if ((*&self->_has & 0x100) == 0)
  {
    goto LABEL_12;
  }

LABEL_6:
  v8 = 2654435761 * self->_watchSizeClass;
  if ((has & 0x80) != 0)
  {
LABEL_7:
    v9 = 2654435761 * self->_watchMaterial;
    goto LABEL_14;
  }

LABEL_13:
  v9 = 0;
LABEL_14:
  v10 = [(NSString *)self->_watchProductType hash];
  v11 = [(NSString *)self->_phoneProductType hash];
  v14 = self->_has;
  if ((v14 & 4) != 0)
  {
    v15 = 2654435761 * self->_detectedRightWrist;
    if (v14)
    {
      goto LABEL_16;
    }

LABEL_21:
    v19 = 0;
    goto LABEL_22;
  }

  v15 = 0;
  if ((v14 & 1) == 0)
  {
    goto LABEL_21;
  }

LABEL_16:
  detectedConfidence = self->_detectedConfidence;
  if (detectedConfidence < 0.0)
  {
    detectedConfidence = -detectedConfidence;
  }

  *v12.i64 = floor(detectedConfidence + 0.5);
  v17 = (detectedConfidence - *v12.i64) * 1.84467441e19;
  *v13.i64 = *v12.i64 - trunc(*v12.i64 * 5.42101086e-20) * 1.84467441e19;
  v18.f64[0] = NAN;
  v18.f64[1] = NAN;
  v19 = 2654435761u * *vbslq_s8(vnegq_f64(v18), v13, v12).i64;
  if (v17 >= 0.0)
  {
    if (v17 > 0.0)
    {
      v19 += v17;
    }
  }

  else
  {
    v19 -= fabs(v17);
  }

LABEL_22:
  if ((v14 & 2) != 0)
  {
    v20 = 2654435761 * self->_detectedCrownOrientation;
  }

  else
  {
    v20 = 0;
  }

  return v5 ^ v4 ^ v6 ^ v7 ^ v8 ^ v9 ^ v10 ^ v11 ^ v15 ^ v19 ^ v20 ^ [(NSMutableArray *)self->_results hash];
}

- (void)mergeFrom:(id)from
{
  fromCopy = from;
  v5 = fromCopy;
  v6 = *(fromCopy + 38);
  if ((v6 & 0x40) != 0)
  {
    self->_version = fromCopy[13];
    *&self->_has |= 0x40u;
    v6 = *(fromCopy + 38);
    if ((v6 & 0x10) == 0)
    {
LABEL_3:
      if ((v6 & 8) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_26;
    }
  }

  else if ((v6 & 0x10) == 0)
  {
    goto LABEL_3;
  }

  self->_reportedRightWrist = fromCopy[9];
  *&self->_has |= 0x10u;
  v6 = *(fromCopy + 38);
  if ((v6 & 8) == 0)
  {
LABEL_4:
    if ((v6 & 0x20) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_27;
  }

LABEL_26:
  self->_reportedCrownOrientation = fromCopy[8];
  *&self->_has |= 8u;
  v6 = *(fromCopy + 38);
  if ((v6 & 0x20) == 0)
  {
LABEL_5:
    if ((v6 & 0x100) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_28;
  }

LABEL_27:
  self->_userStudyVersion = fromCopy[12];
  *&self->_has |= 0x20u;
  v6 = *(fromCopy + 38);
  if ((v6 & 0x100) == 0)
  {
LABEL_6:
    if ((v6 & 0x80) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_7;
  }

LABEL_28:
  self->_watchSizeClass = fromCopy[18];
  *&self->_has |= 0x100u;
  if ((fromCopy[19] & 0x80) != 0)
  {
LABEL_7:
    self->_watchMaterial = fromCopy[14];
    *&self->_has |= 0x80u;
  }

LABEL_8:
  if (*(fromCopy + 8))
  {
    [(COSBBUserStudyDataBlob *)self setWatchProductType:?];
  }

  if (*(v5 + 3))
  {
    [(COSBBUserStudyDataBlob *)self setPhoneProductType:?];
  }

  v7 = *(v5 + 38);
  if ((v7 & 4) != 0)
  {
    self->_detectedRightWrist = v5[5];
    *&self->_has |= 4u;
    v7 = *(v5 + 38);
    if ((v7 & 1) == 0)
    {
LABEL_14:
      if ((v7 & 2) == 0)
      {
        goto LABEL_16;
      }

      goto LABEL_15;
    }
  }

  else if ((v7 & 1) == 0)
  {
    goto LABEL_14;
  }

  self->_detectedConfidence = *(v5 + 1);
  *&self->_has |= 1u;
  if ((v5[19] & 2) != 0)
  {
LABEL_15:
    self->_detectedCrownOrientation = v5[4];
    *&self->_has |= 2u;
  }

LABEL_16:
  v15 = 0u;
  v16 = 0u;
  v13 = 0u;
  v14 = 0u;
  v8 = *(v5 + 5);
  v9 = [v8 countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v14;
    do
    {
      for (i = 0; i != v10; i = i + 1)
      {
        if (*v14 != v11)
        {
          objc_enumerationMutation(v8);
        }

        [(COSBBUserStudyDataBlob *)self addResults:*(*(&v13 + 1) + 8 * i), v13];
      }

      v10 = [v8 countByEnumeratingWithState:&v13 objects:v17 count:16];
    }

    while (v10);
  }
}

@end