@interface BCReadingStatisticsProtoBook
- (BOOL)isEqual:(id)equal;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (id)dictionaryRepresentation;
- (unint64_t)hash;
- (void)addReadCFI:(id)i;
- (void)addTocEntry:(id)entry;
- (void)copyTo:(id)to;
- (void)mergeFrom:(id)from;
- (void)writeTo:(id)to;
@end

@implementation BCReadingStatisticsProtoBook

- (void)addTocEntry:(id)entry
{
  entryCopy = entry;
  tocEntrys = self->_tocEntrys;
  v8 = entryCopy;
  if (!tocEntrys)
  {
    v6 = objc_alloc_init(NSMutableArray);
    v7 = self->_tocEntrys;
    self->_tocEntrys = v6;

    entryCopy = v8;
    tocEntrys = self->_tocEntrys;
  }

  [(NSMutableArray *)tocEntrys addObject:entryCopy];
}

- (void)addReadCFI:(id)i
{
  iCopy = i;
  readCFIs = self->_readCFIs;
  v8 = iCopy;
  if (!readCFIs)
  {
    v6 = objc_alloc_init(NSMutableArray);
    v7 = self->_readCFIs;
    self->_readCFIs = v6;

    iCopy = v8;
    readCFIs = self->_readCFIs;
  }

  [(NSMutableArray *)readCFIs addObject:iCopy];
}

- (id)description
{
  v7.receiver = self;
  v7.super_class = BCReadingStatisticsProtoBook;
  v3 = [(BCReadingStatisticsProtoBook *)&v7 description];
  dictionaryRepresentation = [(BCReadingStatisticsProtoBook *)self dictionaryRepresentation];
  v5 = [NSString stringWithFormat:@"%@ %@", v3, dictionaryRepresentation];

  return v5;
}

- (id)dictionaryRepresentation
{
  v3 = +[NSMutableDictionary dictionary];
  v4 = v3;
  assetID = self->_assetID;
  if (assetID)
  {
    [v3 setObject:assetID forKey:@"assetID"];
  }

  appVersion = self->_appVersion;
  if (appVersion)
  {
    [v4 setObject:appVersion forKey:@"appVersion"];
  }

  assetVersion = self->_assetVersion;
  if (assetVersion)
  {
    [v4 setObject:assetVersion forKey:@"assetVersion"];
  }

  if ([(NSMutableArray *)self->_tocEntrys count])
  {
    v8 = [[NSMutableArray alloc] initWithCapacity:{-[NSMutableArray count](self->_tocEntrys, "count")}];
    v17 = 0u;
    v18 = 0u;
    v19 = 0u;
    v20 = 0u;
    v9 = self->_tocEntrys;
    v10 = [(NSMutableArray *)v9 countByEnumeratingWithState:&v17 objects:v21 count:16];
    if (v10)
    {
      v11 = v10;
      v12 = *v18;
      do
      {
        for (i = 0; i != v11; i = i + 1)
        {
          if (*v18 != v12)
          {
            objc_enumerationMutation(v9);
          }

          dictionaryRepresentation = [*(*(&v17 + 1) + 8 * i) dictionaryRepresentation];
          [v8 addObject:dictionaryRepresentation];
        }

        v11 = [(NSMutableArray *)v9 countByEnumeratingWithState:&v17 objects:v21 count:16];
      }

      while (v11);
    }

    [v4 setObject:v8 forKey:@"tocEntry"];
  }

  readCFIs = self->_readCFIs;
  if (readCFIs)
  {
    [v4 setObject:readCFIs forKey:@"readCFI"];
  }

  return v4;
}

- (void)writeTo:(id)to
{
  toCopy = to;
  PBDataWriterWriteStringField();
  PBDataWriterWriteStringField();
  if (self->_assetVersion)
  {
    PBDataWriterWriteStringField();
  }

  v21 = 0u;
  v22 = 0u;
  v19 = 0u;
  v20 = 0u;
  v5 = self->_tocEntrys;
  v6 = [(NSMutableArray *)v5 countByEnumeratingWithState:&v19 objects:v24 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v20;
    do
    {
      v9 = 0;
      do
      {
        if (*v20 != v8)
        {
          objc_enumerationMutation(v5);
        }

        PBDataWriterWriteSubmessage();
        ++v9;
      }

      while (v7 != v9);
      v7 = [(NSMutableArray *)v5 countByEnumeratingWithState:&v19 objects:v24 count:16];
    }

    while (v7);
  }

  v17 = 0u;
  v18 = 0u;
  v15 = 0u;
  v16 = 0u;
  v10 = self->_readCFIs;
  v11 = [(NSMutableArray *)v10 countByEnumeratingWithState:&v15 objects:v23 count:16];
  if (v11)
  {
    v12 = v11;
    v13 = *v16;
    do
    {
      v14 = 0;
      do
      {
        if (*v16 != v13)
        {
          objc_enumerationMutation(v10);
        }

        PBDataWriterWriteStringField();
        ++v14;
      }

      while (v12 != v14);
      v12 = [(NSMutableArray *)v10 countByEnumeratingWithState:&v15 objects:v23 count:16];
    }

    while (v12);
  }
}

- (void)copyTo:(id)to
{
  toCopy = to;
  [toCopy setAssetID:self->_assetID];
  [toCopy setAppVersion:self->_appVersion];
  if (self->_assetVersion)
  {
    [toCopy setAssetVersion:?];
  }

  if ([(BCReadingStatisticsProtoBook *)self tocEntrysCount])
  {
    [toCopy clearTocEntrys];
    tocEntrysCount = [(BCReadingStatisticsProtoBook *)self tocEntrysCount];
    if (tocEntrysCount)
    {
      v5 = tocEntrysCount;
      for (i = 0; i != v5; ++i)
      {
        v7 = [(BCReadingStatisticsProtoBook *)self tocEntryAtIndex:i];
        [toCopy addTocEntry:v7];
      }
    }
  }

  if ([(BCReadingStatisticsProtoBook *)self readCFIsCount])
  {
    [toCopy clearReadCFIs];
    readCFIsCount = [(BCReadingStatisticsProtoBook *)self readCFIsCount];
    if (readCFIsCount)
    {
      v9 = readCFIsCount;
      for (j = 0; j != v9; ++j)
      {
        v11 = [(BCReadingStatisticsProtoBook *)self readCFIAtIndex:j];
        [toCopy addReadCFI:v11];
      }
    }
  }
}

- (id)copyWithZone:(_NSZone *)zone
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
  v6 = [(NSString *)self->_assetID copyWithZone:zone];
  v7 = v5[2];
  v5[2] = v6;

  v8 = [(NSString *)self->_appVersion copyWithZone:zone];
  v9 = v5[1];
  v5[1] = v8;

  v10 = [(NSString *)self->_assetVersion copyWithZone:zone];
  v11 = v5[3];
  v5[3] = v10;

  v31 = 0u;
  v32 = 0u;
  v29 = 0u;
  v30 = 0u;
  v12 = self->_tocEntrys;
  v13 = [(NSMutableArray *)v12 countByEnumeratingWithState:&v29 objects:v34 count:16];
  if (v13)
  {
    v14 = v13;
    v15 = *v30;
    do
    {
      v16 = 0;
      do
      {
        if (*v30 != v15)
        {
          objc_enumerationMutation(v12);
        }

        v17 = [*(*(&v29 + 1) + 8 * v16) copyWithZone:zone];
        [v5 addTocEntry:v17];

        v16 = v16 + 1;
      }

      while (v14 != v16);
      v14 = [(NSMutableArray *)v12 countByEnumeratingWithState:&v29 objects:v34 count:16];
    }

    while (v14);
  }

  v27 = 0u;
  v28 = 0u;
  v25 = 0u;
  v26 = 0u;
  v18 = self->_readCFIs;
  v19 = [(NSMutableArray *)v18 countByEnumeratingWithState:&v25 objects:v33 count:16];
  if (v19)
  {
    v20 = v19;
    v21 = *v26;
    do
    {
      v22 = 0;
      do
      {
        if (*v26 != v21)
        {
          objc_enumerationMutation(v18);
        }

        v23 = [*(*(&v25 + 1) + 8 * v22) copyWithZone:{zone, v25}];
        [v5 addReadCFI:v23];

        v22 = v22 + 1;
      }

      while (v20 != v22);
      v20 = [(NSMutableArray *)v18 countByEnumeratingWithState:&v25 objects:v33 count:16];
    }

    while (v20);
  }

  return v5;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if ([equalCopy isMemberOfClass:objc_opt_class()] && ((assetID = self->_assetID, !(assetID | equalCopy[2])) || -[NSString isEqual:](assetID, "isEqual:")) && ((appVersion = self->_appVersion, !(appVersion | equalCopy[1])) || -[NSString isEqual:](appVersion, "isEqual:")) && ((assetVersion = self->_assetVersion, !(assetVersion | equalCopy[3])) || -[NSString isEqual:](assetVersion, "isEqual:")) && ((tocEntrys = self->_tocEntrys, !(tocEntrys | equalCopy[5])) || -[NSMutableArray isEqual:](tocEntrys, "isEqual:")))
  {
    readCFIs = self->_readCFIs;
    if (readCFIs | equalCopy[4])
    {
      v10 = [(NSMutableArray *)readCFIs isEqual:?];
    }

    else
    {
      v10 = 1;
    }
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

- (unint64_t)hash
{
  v3 = [(NSString *)self->_assetID hash];
  v4 = [(NSString *)self->_appVersion hash]^ v3;
  v5 = [(NSString *)self->_assetVersion hash];
  v6 = v4 ^ v5 ^ [(NSMutableArray *)self->_tocEntrys hash];
  return v6 ^ [(NSMutableArray *)self->_readCFIs hash];
}

- (void)mergeFrom:(id)from
{
  fromCopy = from;
  if (*(fromCopy + 2))
  {
    [(BCReadingStatisticsProtoBook *)self setAssetID:?];
  }

  if (*(fromCopy + 1))
  {
    [(BCReadingStatisticsProtoBook *)self setAppVersion:?];
  }

  if (*(fromCopy + 3))
  {
    [(BCReadingStatisticsProtoBook *)self setAssetVersion:?];
  }

  v21 = 0u;
  v22 = 0u;
  v19 = 0u;
  v20 = 0u;
  v5 = *(fromCopy + 5);
  v6 = [v5 countByEnumeratingWithState:&v19 objects:v24 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v20;
    do
    {
      for (i = 0; i != v7; i = i + 1)
      {
        if (*v20 != v8)
        {
          objc_enumerationMutation(v5);
        }

        [(BCReadingStatisticsProtoBook *)self addTocEntry:*(*(&v19 + 1) + 8 * i)];
      }

      v7 = [v5 countByEnumeratingWithState:&v19 objects:v24 count:16];
    }

    while (v7);
  }

  v17 = 0u;
  v18 = 0u;
  v15 = 0u;
  v16 = 0u;
  v10 = *(fromCopy + 4);
  v11 = [v10 countByEnumeratingWithState:&v15 objects:v23 count:16];
  if (v11)
  {
    v12 = v11;
    v13 = *v16;
    do
    {
      for (j = 0; j != v12; j = j + 1)
      {
        if (*v16 != v13)
        {
          objc_enumerationMutation(v10);
        }

        [(BCReadingStatisticsProtoBook *)self addReadCFI:*(*(&v15 + 1) + 8 * j), v15];
      }

      v12 = [v10 countByEnumeratingWithState:&v15 objects:v23 count:16];
    }

    while (v12);
  }
}

@end