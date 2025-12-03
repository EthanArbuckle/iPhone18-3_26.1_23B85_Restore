@interface KCellularMmCommonInfo
- (BOOL)isEqual:(id)equal;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (id)dictionaryRepresentation;
- (unint64_t)hash;
- (void)addEplmnList:(id)list;
- (void)addRegProvFlaiList:(id)list;
- (void)addRegProvFtaiList:(id)list;
- (void)addRoamingFlaiList:(id)list;
- (void)addRoamingFtaiList:(id)list;
- (void)copyTo:(id)to;
- (void)mergeFrom:(id)from;
- (void)setHasSubsId:(BOOL)id;
- (void)writeTo:(id)to;
@end

@implementation KCellularMmCommonInfo

- (void)addEplmnList:(id)list
{
  listCopy = list;
  eplmnLists = self->_eplmnLists;
  v8 = listCopy;
  if (!eplmnLists)
  {
    v6 = objc_alloc_init(NSMutableArray);
    v7 = self->_eplmnLists;
    self->_eplmnLists = v6;

    listCopy = v8;
    eplmnLists = self->_eplmnLists;
  }

  [(NSMutableArray *)eplmnLists addObject:listCopy];
}

- (void)addRoamingFlaiList:(id)list
{
  listCopy = list;
  roamingFlaiLists = self->_roamingFlaiLists;
  v8 = listCopy;
  if (!roamingFlaiLists)
  {
    v6 = objc_alloc_init(NSMutableArray);
    v7 = self->_roamingFlaiLists;
    self->_roamingFlaiLists = v6;

    listCopy = v8;
    roamingFlaiLists = self->_roamingFlaiLists;
  }

  [(NSMutableArray *)roamingFlaiLists addObject:listCopy];
}

- (void)addRegProvFlaiList:(id)list
{
  listCopy = list;
  regProvFlaiLists = self->_regProvFlaiLists;
  v8 = listCopy;
  if (!regProvFlaiLists)
  {
    v6 = objc_alloc_init(NSMutableArray);
    v7 = self->_regProvFlaiLists;
    self->_regProvFlaiLists = v6;

    listCopy = v8;
    regProvFlaiLists = self->_regProvFlaiLists;
  }

  [(NSMutableArray *)regProvFlaiLists addObject:listCopy];
}

- (void)addRoamingFtaiList:(id)list
{
  listCopy = list;
  roamingFtaiLists = self->_roamingFtaiLists;
  v8 = listCopy;
  if (!roamingFtaiLists)
  {
    v6 = objc_alloc_init(NSMutableArray);
    v7 = self->_roamingFtaiLists;
    self->_roamingFtaiLists = v6;

    listCopy = v8;
    roamingFtaiLists = self->_roamingFtaiLists;
  }

  [(NSMutableArray *)roamingFtaiLists addObject:listCopy];
}

- (void)addRegProvFtaiList:(id)list
{
  listCopy = list;
  regProvFtaiLists = self->_regProvFtaiLists;
  v8 = listCopy;
  if (!regProvFtaiLists)
  {
    v6 = objc_alloc_init(NSMutableArray);
    v7 = self->_regProvFtaiLists;
    self->_regProvFtaiLists = v6;

    listCopy = v8;
    regProvFtaiLists = self->_regProvFtaiLists;
  }

  [(NSMutableArray *)regProvFtaiLists addObject:listCopy];
}

- (void)setHasSubsId:(BOOL)id
{
  if (id)
  {
    v3 = 2;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFD | v3;
}

- (id)description
{
  v7.receiver = self;
  v7.super_class = KCellularMmCommonInfo;
  v3 = [(KCellularMmCommonInfo *)&v7 description];
  dictionaryRepresentation = [(KCellularMmCommonInfo *)self dictionaryRepresentation];
  v5 = [NSString stringWithFormat:@"%@ %@", v3, dictionaryRepresentation];

  return v5;
}

- (id)dictionaryRepresentation
{
  v3 = +[NSMutableDictionary dictionary];
  if (*&self->_has)
  {
    v4 = [NSNumber numberWithUnsignedLongLong:self->_timestamp];
    [v3 setObject:v4 forKey:@"timestamp"];
  }

  imsi = self->_imsi;
  if (imsi)
  {
    [v3 setObject:imsi forKey:@"imsi"];
  }

  if ([(NSMutableArray *)self->_eplmnLists count])
  {
    v6 = [[NSMutableArray alloc] initWithCapacity:{-[NSMutableArray count](self->_eplmnLists, "count")}];
    v59 = 0u;
    v60 = 0u;
    v61 = 0u;
    v62 = 0u;
    v7 = self->_eplmnLists;
    v8 = [(NSMutableArray *)v7 countByEnumeratingWithState:&v59 objects:v67 count:16];
    if (v8)
    {
      v9 = v8;
      v10 = *v60;
      do
      {
        for (i = 0; i != v9; i = i + 1)
        {
          if (*v60 != v10)
          {
            objc_enumerationMutation(v7);
          }

          dictionaryRepresentation = [*(*(&v59 + 1) + 8 * i) dictionaryRepresentation];
          [v6 addObject:dictionaryRepresentation];
        }

        v9 = [(NSMutableArray *)v7 countByEnumeratingWithState:&v59 objects:v67 count:16];
      }

      while (v9);
    }

    [v3 setObject:v6 forKey:@"eplmn_list"];
  }

  if ([(NSMutableArray *)self->_roamingFlaiLists count])
  {
    v13 = [[NSMutableArray alloc] initWithCapacity:{-[NSMutableArray count](self->_roamingFlaiLists, "count")}];
    v55 = 0u;
    v56 = 0u;
    v57 = 0u;
    v58 = 0u;
    v14 = self->_roamingFlaiLists;
    v15 = [(NSMutableArray *)v14 countByEnumeratingWithState:&v55 objects:v66 count:16];
    if (v15)
    {
      v16 = v15;
      v17 = *v56;
      do
      {
        for (j = 0; j != v16; j = j + 1)
        {
          if (*v56 != v17)
          {
            objc_enumerationMutation(v14);
          }

          dictionaryRepresentation2 = [*(*(&v55 + 1) + 8 * j) dictionaryRepresentation];
          [v13 addObject:dictionaryRepresentation2];
        }

        v16 = [(NSMutableArray *)v14 countByEnumeratingWithState:&v55 objects:v66 count:16];
      }

      while (v16);
    }

    [v3 setObject:v13 forKey:@"roaming_flai_list"];
  }

  if ([(NSMutableArray *)self->_regProvFlaiLists count])
  {
    v20 = [[NSMutableArray alloc] initWithCapacity:{-[NSMutableArray count](self->_regProvFlaiLists, "count")}];
    v51 = 0u;
    v52 = 0u;
    v53 = 0u;
    v54 = 0u;
    v21 = self->_regProvFlaiLists;
    v22 = [(NSMutableArray *)v21 countByEnumeratingWithState:&v51 objects:v65 count:16];
    if (v22)
    {
      v23 = v22;
      v24 = *v52;
      do
      {
        for (k = 0; k != v23; k = k + 1)
        {
          if (*v52 != v24)
          {
            objc_enumerationMutation(v21);
          }

          dictionaryRepresentation3 = [*(*(&v51 + 1) + 8 * k) dictionaryRepresentation];
          [v20 addObject:dictionaryRepresentation3];
        }

        v23 = [(NSMutableArray *)v21 countByEnumeratingWithState:&v51 objects:v65 count:16];
      }

      while (v23);
    }

    [v3 setObject:v20 forKey:@"reg_prov_flai_list"];
  }

  if ([(NSMutableArray *)self->_roamingFtaiLists count])
  {
    v27 = [[NSMutableArray alloc] initWithCapacity:{-[NSMutableArray count](self->_roamingFtaiLists, "count")}];
    v47 = 0u;
    v48 = 0u;
    v49 = 0u;
    v50 = 0u;
    v28 = self->_roamingFtaiLists;
    v29 = [(NSMutableArray *)v28 countByEnumeratingWithState:&v47 objects:v64 count:16];
    if (v29)
    {
      v30 = v29;
      v31 = *v48;
      do
      {
        for (m = 0; m != v30; m = m + 1)
        {
          if (*v48 != v31)
          {
            objc_enumerationMutation(v28);
          }

          dictionaryRepresentation4 = [*(*(&v47 + 1) + 8 * m) dictionaryRepresentation];
          [v27 addObject:dictionaryRepresentation4];
        }

        v30 = [(NSMutableArray *)v28 countByEnumeratingWithState:&v47 objects:v64 count:16];
      }

      while (v30);
    }

    [v3 setObject:v27 forKey:@"roaming_ftai_list"];
  }

  if ([(NSMutableArray *)self->_regProvFtaiLists count])
  {
    v34 = [[NSMutableArray alloc] initWithCapacity:{-[NSMutableArray count](self->_regProvFtaiLists, "count")}];
    v43 = 0u;
    v44 = 0u;
    v45 = 0u;
    v46 = 0u;
    v35 = self->_regProvFtaiLists;
    v36 = [(NSMutableArray *)v35 countByEnumeratingWithState:&v43 objects:v63 count:16];
    if (v36)
    {
      v37 = v36;
      v38 = *v44;
      do
      {
        for (n = 0; n != v37; n = n + 1)
        {
          if (*v44 != v38)
          {
            objc_enumerationMutation(v35);
          }

          dictionaryRepresentation5 = [*(*(&v43 + 1) + 8 * n) dictionaryRepresentation];
          [v34 addObject:dictionaryRepresentation5];
        }

        v37 = [(NSMutableArray *)v35 countByEnumeratingWithState:&v43 objects:v63 count:16];
      }

      while (v37);
    }

    [v3 setObject:v34 forKey:@"reg_prov_ftai_list"];
  }

  if ((*&self->_has & 2) != 0)
  {
    v41 = [NSNumber numberWithUnsignedInt:self->_subsId];
    [v3 setObject:v41 forKey:@"subs_id"];
  }

  return v3;
}

- (void)writeTo:(id)to
{
  toCopy = to;
  if (*&self->_has)
  {
    timestamp = self->_timestamp;
    PBDataWriterWriteUint64Field();
  }

  if (self->_imsi)
  {
    PBDataWriterWriteDataField();
  }

  v55 = 0u;
  v56 = 0u;
  v53 = 0u;
  v54 = 0u;
  v6 = self->_eplmnLists;
  v7 = [(NSMutableArray *)v6 countByEnumeratingWithState:&v53 objects:v61 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v54;
    do
    {
      v10 = 0;
      do
      {
        if (*v54 != v9)
        {
          objc_enumerationMutation(v6);
        }

        v11 = *(*(&v53 + 1) + 8 * v10);
        PBDataWriterWriteSubmessage();
        v10 = v10 + 1;
      }

      while (v8 != v10);
      v8 = [(NSMutableArray *)v6 countByEnumeratingWithState:&v53 objects:v61 count:16];
    }

    while (v8);
  }

  v51 = 0u;
  v52 = 0u;
  v49 = 0u;
  v50 = 0u;
  v12 = self->_roamingFlaiLists;
  v13 = [(NSMutableArray *)v12 countByEnumeratingWithState:&v49 objects:v60 count:16];
  if (v13)
  {
    v14 = v13;
    v15 = *v50;
    do
    {
      v16 = 0;
      do
      {
        if (*v50 != v15)
        {
          objc_enumerationMutation(v12);
        }

        v17 = *(*(&v49 + 1) + 8 * v16);
        PBDataWriterWriteSubmessage();
        v16 = v16 + 1;
      }

      while (v14 != v16);
      v14 = [(NSMutableArray *)v12 countByEnumeratingWithState:&v49 objects:v60 count:16];
    }

    while (v14);
  }

  v47 = 0u;
  v48 = 0u;
  v45 = 0u;
  v46 = 0u;
  v18 = self->_regProvFlaiLists;
  v19 = [(NSMutableArray *)v18 countByEnumeratingWithState:&v45 objects:v59 count:16];
  if (v19)
  {
    v20 = v19;
    v21 = *v46;
    do
    {
      v22 = 0;
      do
      {
        if (*v46 != v21)
        {
          objc_enumerationMutation(v18);
        }

        v23 = *(*(&v45 + 1) + 8 * v22);
        PBDataWriterWriteSubmessage();
        v22 = v22 + 1;
      }

      while (v20 != v22);
      v20 = [(NSMutableArray *)v18 countByEnumeratingWithState:&v45 objects:v59 count:16];
    }

    while (v20);
  }

  v43 = 0u;
  v44 = 0u;
  v41 = 0u;
  v42 = 0u;
  v24 = self->_roamingFtaiLists;
  v25 = [(NSMutableArray *)v24 countByEnumeratingWithState:&v41 objects:v58 count:16];
  if (v25)
  {
    v26 = v25;
    v27 = *v42;
    do
    {
      v28 = 0;
      do
      {
        if (*v42 != v27)
        {
          objc_enumerationMutation(v24);
        }

        v29 = *(*(&v41 + 1) + 8 * v28);
        PBDataWriterWriteSubmessage();
        v28 = v28 + 1;
      }

      while (v26 != v28);
      v26 = [(NSMutableArray *)v24 countByEnumeratingWithState:&v41 objects:v58 count:16];
    }

    while (v26);
  }

  v39 = 0u;
  v40 = 0u;
  v37 = 0u;
  v38 = 0u;
  v30 = self->_regProvFtaiLists;
  v31 = [(NSMutableArray *)v30 countByEnumeratingWithState:&v37 objects:v57 count:16];
  if (v31)
  {
    v32 = v31;
    v33 = *v38;
    do
    {
      v34 = 0;
      do
      {
        if (*v38 != v33)
        {
          objc_enumerationMutation(v30);
        }

        v35 = *(*(&v37 + 1) + 8 * v34);
        PBDataWriterWriteSubmessage();
        v34 = v34 + 1;
      }

      while (v32 != v34);
      v32 = [(NSMutableArray *)v30 countByEnumeratingWithState:&v37 objects:v57 count:16];
    }

    while (v32);
  }

  if ((*&self->_has & 2) != 0)
  {
    subsId = self->_subsId;
    PBDataWriterWriteUint32Field();
  }
}

- (void)copyTo:(id)to
{
  toCopy = to;
  if (*&self->_has)
  {
    toCopy[1] = self->_timestamp;
    *(toCopy + 68) |= 1u;
  }

  v25 = toCopy;
  if (self->_imsi)
  {
    [toCopy setImsi:?];
  }

  if ([(KCellularMmCommonInfo *)self eplmnListsCount])
  {
    [v25 clearEplmnLists];
    eplmnListsCount = [(KCellularMmCommonInfo *)self eplmnListsCount];
    if (eplmnListsCount)
    {
      v6 = eplmnListsCount;
      for (i = 0; i != v6; ++i)
      {
        v8 = [(KCellularMmCommonInfo *)self eplmnListAtIndex:i];
        [v25 addEplmnList:v8];
      }
    }
  }

  if ([(KCellularMmCommonInfo *)self roamingFlaiListsCount])
  {
    [v25 clearRoamingFlaiLists];
    roamingFlaiListsCount = [(KCellularMmCommonInfo *)self roamingFlaiListsCount];
    if (roamingFlaiListsCount)
    {
      v10 = roamingFlaiListsCount;
      for (j = 0; j != v10; ++j)
      {
        v12 = [(KCellularMmCommonInfo *)self roamingFlaiListAtIndex:j];
        [v25 addRoamingFlaiList:v12];
      }
    }
  }

  if ([(KCellularMmCommonInfo *)self regProvFlaiListsCount])
  {
    [v25 clearRegProvFlaiLists];
    regProvFlaiListsCount = [(KCellularMmCommonInfo *)self regProvFlaiListsCount];
    if (regProvFlaiListsCount)
    {
      v14 = regProvFlaiListsCount;
      for (k = 0; k != v14; ++k)
      {
        v16 = [(KCellularMmCommonInfo *)self regProvFlaiListAtIndex:k];
        [v25 addRegProvFlaiList:v16];
      }
    }
  }

  if ([(KCellularMmCommonInfo *)self roamingFtaiListsCount])
  {
    [v25 clearRoamingFtaiLists];
    roamingFtaiListsCount = [(KCellularMmCommonInfo *)self roamingFtaiListsCount];
    if (roamingFtaiListsCount)
    {
      v18 = roamingFtaiListsCount;
      for (m = 0; m != v18; ++m)
      {
        v20 = [(KCellularMmCommonInfo *)self roamingFtaiListAtIndex:m];
        [v25 addRoamingFtaiList:v20];
      }
    }
  }

  if ([(KCellularMmCommonInfo *)self regProvFtaiListsCount])
  {
    [v25 clearRegProvFtaiLists];
    regProvFtaiListsCount = [(KCellularMmCommonInfo *)self regProvFtaiListsCount];
    if (regProvFtaiListsCount)
    {
      v22 = regProvFtaiListsCount;
      for (n = 0; n != v22; ++n)
      {
        v24 = [(KCellularMmCommonInfo *)self regProvFtaiListAtIndex:n];
        [v25 addRegProvFtaiList:v24];
      }
    }
  }

  if ((*&self->_has & 2) != 0)
  {
    *(v25 + 16) = self->_subsId;
    *(v25 + 68) |= 2u;
  }
}

- (id)copyWithZone:(_NSZone *)zone
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
  v6 = v5;
  if (*&self->_has)
  {
    v5[1] = self->_timestamp;
    *(v5 + 68) |= 1u;
  }

  v7 = [(NSData *)self->_imsi copyWithZone:zone];
  v8 = v6[3];
  v6[3] = v7;

  v58 = 0u;
  v59 = 0u;
  v56 = 0u;
  v57 = 0u;
  v9 = self->_eplmnLists;
  v10 = [(NSMutableArray *)v9 countByEnumeratingWithState:&v56 objects:v64 count:16];
  if (v10)
  {
    v11 = v10;
    v12 = *v57;
    do
    {
      v13 = 0;
      do
      {
        if (*v57 != v12)
        {
          objc_enumerationMutation(v9);
        }

        v14 = [*(*(&v56 + 1) + 8 * v13) copyWithZone:zone];
        [v6 addEplmnList:v14];

        v13 = v13 + 1;
      }

      while (v11 != v13);
      v11 = [(NSMutableArray *)v9 countByEnumeratingWithState:&v56 objects:v64 count:16];
    }

    while (v11);
  }

  v54 = 0u;
  v55 = 0u;
  v52 = 0u;
  v53 = 0u;
  v15 = self->_roamingFlaiLists;
  v16 = [(NSMutableArray *)v15 countByEnumeratingWithState:&v52 objects:v63 count:16];
  if (v16)
  {
    v17 = v16;
    v18 = *v53;
    do
    {
      v19 = 0;
      do
      {
        if (*v53 != v18)
        {
          objc_enumerationMutation(v15);
        }

        v20 = [*(*(&v52 + 1) + 8 * v19) copyWithZone:zone];
        [v6 addRoamingFlaiList:v20];

        v19 = v19 + 1;
      }

      while (v17 != v19);
      v17 = [(NSMutableArray *)v15 countByEnumeratingWithState:&v52 objects:v63 count:16];
    }

    while (v17);
  }

  v50 = 0u;
  v51 = 0u;
  v48 = 0u;
  v49 = 0u;
  v21 = self->_regProvFlaiLists;
  v22 = [(NSMutableArray *)v21 countByEnumeratingWithState:&v48 objects:v62 count:16];
  if (v22)
  {
    v23 = v22;
    v24 = *v49;
    do
    {
      v25 = 0;
      do
      {
        if (*v49 != v24)
        {
          objc_enumerationMutation(v21);
        }

        v26 = [*(*(&v48 + 1) + 8 * v25) copyWithZone:zone];
        [v6 addRegProvFlaiList:v26];

        v25 = v25 + 1;
      }

      while (v23 != v25);
      v23 = [(NSMutableArray *)v21 countByEnumeratingWithState:&v48 objects:v62 count:16];
    }

    while (v23);
  }

  v46 = 0u;
  v47 = 0u;
  v44 = 0u;
  v45 = 0u;
  v27 = self->_roamingFtaiLists;
  v28 = [(NSMutableArray *)v27 countByEnumeratingWithState:&v44 objects:v61 count:16];
  if (v28)
  {
    v29 = v28;
    v30 = *v45;
    do
    {
      v31 = 0;
      do
      {
        if (*v45 != v30)
        {
          objc_enumerationMutation(v27);
        }

        v32 = [*(*(&v44 + 1) + 8 * v31) copyWithZone:zone];
        [v6 addRoamingFtaiList:v32];

        v31 = v31 + 1;
      }

      while (v29 != v31);
      v29 = [(NSMutableArray *)v27 countByEnumeratingWithState:&v44 objects:v61 count:16];
    }

    while (v29);
  }

  v42 = 0u;
  v43 = 0u;
  v40 = 0u;
  v41 = 0u;
  v33 = self->_regProvFtaiLists;
  v34 = [(NSMutableArray *)v33 countByEnumeratingWithState:&v40 objects:v60 count:16];
  if (v34)
  {
    v35 = v34;
    v36 = *v41;
    do
    {
      v37 = 0;
      do
      {
        if (*v41 != v36)
        {
          objc_enumerationMutation(v33);
        }

        v38 = [*(*(&v40 + 1) + 8 * v37) copyWithZone:{zone, v40}];
        [v6 addRegProvFtaiList:v38];

        v37 = v37 + 1;
      }

      while (v35 != v37);
      v35 = [(NSMutableArray *)v33 countByEnumeratingWithState:&v40 objects:v60 count:16];
    }

    while (v35);
  }

  if ((*&self->_has & 2) != 0)
  {
    *(v6 + 16) = self->_subsId;
    *(v6 + 68) |= 2u;
  }

  return v6;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (![equalCopy isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_23;
  }

  v5 = *(equalCopy + 68);
  if (*&self->_has)
  {
    if ((*(equalCopy + 68) & 1) == 0 || self->_timestamp != *(equalCopy + 1))
    {
      goto LABEL_23;
    }
  }

  else if (*(equalCopy + 68))
  {
LABEL_23:
    v12 = 0;
    goto LABEL_24;
  }

  imsi = self->_imsi;
  if (imsi | *(equalCopy + 3) && ![(NSData *)imsi isEqual:?])
  {
    goto LABEL_23;
  }

  eplmnLists = self->_eplmnLists;
  if (eplmnLists | *(equalCopy + 2))
  {
    if (![(NSMutableArray *)eplmnLists isEqual:?])
    {
      goto LABEL_23;
    }
  }

  roamingFlaiLists = self->_roamingFlaiLists;
  if (roamingFlaiLists | *(equalCopy + 6))
  {
    if (![(NSMutableArray *)roamingFlaiLists isEqual:?])
    {
      goto LABEL_23;
    }
  }

  regProvFlaiLists = self->_regProvFlaiLists;
  if (regProvFlaiLists | *(equalCopy + 4))
  {
    if (![(NSMutableArray *)regProvFlaiLists isEqual:?])
    {
      goto LABEL_23;
    }
  }

  roamingFtaiLists = self->_roamingFtaiLists;
  if (roamingFtaiLists | *(equalCopy + 7))
  {
    if (![(NSMutableArray *)roamingFtaiLists isEqual:?])
    {
      goto LABEL_23;
    }
  }

  regProvFtaiLists = self->_regProvFtaiLists;
  if (regProvFtaiLists | *(equalCopy + 5))
  {
    if (![(NSMutableArray *)regProvFtaiLists isEqual:?])
    {
      goto LABEL_23;
    }
  }

  v12 = (*(equalCopy + 68) & 2) == 0;
  if ((*&self->_has & 2) != 0)
  {
    if ((*(equalCopy + 68) & 2) == 0 || self->_subsId != *(equalCopy + 16))
    {
      goto LABEL_23;
    }

    v12 = 1;
  }

LABEL_24:

  return v12;
}

- (unint64_t)hash
{
  if (*&self->_has)
  {
    v3 = 2654435761u * self->_timestamp;
  }

  else
  {
    v3 = 0;
  }

  v4 = [(NSData *)self->_imsi hash];
  v5 = [(NSMutableArray *)self->_eplmnLists hash];
  v6 = [(NSMutableArray *)self->_roamingFlaiLists hash];
  v7 = [(NSMutableArray *)self->_regProvFlaiLists hash];
  v8 = [(NSMutableArray *)self->_roamingFtaiLists hash];
  v9 = [(NSMutableArray *)self->_regProvFtaiLists hash];
  if ((*&self->_has & 2) != 0)
  {
    v10 = 2654435761 * self->_subsId;
  }

  else
  {
    v10 = 0;
  }

  return v4 ^ v3 ^ v5 ^ v6 ^ v7 ^ v8 ^ v9 ^ v10;
}

- (void)mergeFrom:(id)from
{
  fromCopy = from;
  v5 = fromCopy;
  if (*(fromCopy + 68))
  {
    self->_timestamp = fromCopy[1];
    *&self->_has |= 1u;
  }

  if (fromCopy[3])
  {
    [(KCellularMmCommonInfo *)self setImsi:?];
  }

  v49 = 0u;
  v50 = 0u;
  v47 = 0u;
  v48 = 0u;
  v6 = *(v5 + 2);
  v7 = [v6 countByEnumeratingWithState:&v47 objects:v55 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v48;
    do
    {
      for (i = 0; i != v8; i = i + 1)
      {
        if (*v48 != v9)
        {
          objc_enumerationMutation(v6);
        }

        [(KCellularMmCommonInfo *)self addEplmnList:*(*(&v47 + 1) + 8 * i)];
      }

      v8 = [v6 countByEnumeratingWithState:&v47 objects:v55 count:16];
    }

    while (v8);
  }

  v45 = 0u;
  v46 = 0u;
  v43 = 0u;
  v44 = 0u;
  v11 = *(v5 + 6);
  v12 = [v11 countByEnumeratingWithState:&v43 objects:v54 count:16];
  if (v12)
  {
    v13 = v12;
    v14 = *v44;
    do
    {
      for (j = 0; j != v13; j = j + 1)
      {
        if (*v44 != v14)
        {
          objc_enumerationMutation(v11);
        }

        [(KCellularMmCommonInfo *)self addRoamingFlaiList:*(*(&v43 + 1) + 8 * j)];
      }

      v13 = [v11 countByEnumeratingWithState:&v43 objects:v54 count:16];
    }

    while (v13);
  }

  v41 = 0u;
  v42 = 0u;
  v39 = 0u;
  v40 = 0u;
  v16 = *(v5 + 4);
  v17 = [v16 countByEnumeratingWithState:&v39 objects:v53 count:16];
  if (v17)
  {
    v18 = v17;
    v19 = *v40;
    do
    {
      for (k = 0; k != v18; k = k + 1)
      {
        if (*v40 != v19)
        {
          objc_enumerationMutation(v16);
        }

        [(KCellularMmCommonInfo *)self addRegProvFlaiList:*(*(&v39 + 1) + 8 * k)];
      }

      v18 = [v16 countByEnumeratingWithState:&v39 objects:v53 count:16];
    }

    while (v18);
  }

  v37 = 0u;
  v38 = 0u;
  v35 = 0u;
  v36 = 0u;
  v21 = *(v5 + 7);
  v22 = [v21 countByEnumeratingWithState:&v35 objects:v52 count:16];
  if (v22)
  {
    v23 = v22;
    v24 = *v36;
    do
    {
      for (m = 0; m != v23; m = m + 1)
      {
        if (*v36 != v24)
        {
          objc_enumerationMutation(v21);
        }

        [(KCellularMmCommonInfo *)self addRoamingFtaiList:*(*(&v35 + 1) + 8 * m)];
      }

      v23 = [v21 countByEnumeratingWithState:&v35 objects:v52 count:16];
    }

    while (v23);
  }

  v33 = 0u;
  v34 = 0u;
  v31 = 0u;
  v32 = 0u;
  v26 = *(v5 + 5);
  v27 = [v26 countByEnumeratingWithState:&v31 objects:v51 count:16];
  if (v27)
  {
    v28 = v27;
    v29 = *v32;
    do
    {
      for (n = 0; n != v28; n = n + 1)
      {
        if (*v32 != v29)
        {
          objc_enumerationMutation(v26);
        }

        [(KCellularMmCommonInfo *)self addRegProvFtaiList:*(*(&v31 + 1) + 8 * n), v31];
      }

      v28 = [v26 countByEnumeratingWithState:&v31 objects:v51 count:16];
    }

    while (v28);
  }

  if ((*(v5 + 68) & 2) != 0)
  {
    self->_subsId = *(v5 + 16);
    *&self->_has |= 2u;
  }
}

@end