@interface XDCAppMetadata
- (BOOL)isEqual:(id)equal;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (id)dictionaryRepresentation;
- (unint64_t)hash;
- (void)writeTo:(id)to;
@end

@implementation XDCAppMetadata

- (id)description
{
  v7.receiver = self;
  v7.super_class = XDCAppMetadata;
  v3 = [(XDCAppMetadata *)&v7 description];
  dictionaryRepresentation = [(XDCAppMetadata *)self dictionaryRepresentation];
  v5 = [NSString stringWithFormat:@"%@ %@", v3, dictionaryRepresentation];

  return v5;
}

- (id)dictionaryRepresentation
{
  v3 = +[NSMutableDictionary dictionary];
  if ((*&self->_has & 0x10) != 0)
  {
    v4 = [NSNumber numberWithInt:self->_type];
    [v3 setObject:v4 forKey:@"type"];
  }

  altDSID = self->_altDSID;
  if (altDSID)
  {
    [v3 setObject:altDSID forKey:@"altDSID"];
  }

  appleID = self->_appleID;
  if (appleID)
  {
    [v3 setObject:appleID forKey:@"appleID"];
  }

  bundleID = self->_bundleID;
  if (bundleID)
  {
    [v3 setObject:bundleID forKey:@"bundleID"];
  }

  if (*&self->_has)
  {
    v8 = [NSNumber numberWithUnsignedLongLong:self->_downloaderID];
    [v3 setObject:v8 forKey:@"downloaderID"];
  }

  externalIDString = self->_externalIDString;
  if (externalIDString)
  {
    [v3 setObject:externalIDString forKey:@"externalIDString"];
  }

  has = self->_has;
  if ((has & 2) != 0)
  {
    v35 = [NSNumber numberWithUnsignedLongLong:self->_externalVersionID];
    [v3 setObject:v35 forKey:@"externalVersionID"];

    has = self->_has;
    if ((has & 4) == 0)
    {
LABEL_15:
      if ((has & 8) == 0)
      {
        goto LABEL_17;
      }

      goto LABEL_16;
    }
  }

  else if ((has & 4) == 0)
  {
    goto LABEL_15;
  }

  v36 = [NSNumber numberWithUnsignedLongLong:self->_itemID];
  [v3 setObject:v36 forKey:@"itemID"];

  if ((*&self->_has & 8) != 0)
  {
LABEL_16:
    v11 = [NSNumber numberWithUnsignedLongLong:self->_purchaserID];
    [v3 setObject:v11 forKey:@"purchaserID"];
  }

LABEL_17:
  redownloadParams = self->_redownloadParams;
  if (redownloadParams)
  {
    [v3 setObject:redownloadParams forKey:@"redownloadParams"];
  }

  artworkURLString = self->_artworkURLString;
  if (artworkURLString)
  {
    [v3 setObject:artworkURLString forKey:@"artworkURLString"];
  }

  if ((*&self->_has & 0x20) != 0)
  {
    v14 = [NSNumber numberWithBool:self->_containsMessagesExtension];
    [v3 setObject:v14 forKey:@"containsMessagesExtension"];
  }

  itemName = self->_itemName;
  if (itemName)
  {
    [v3 setObject:itemName forKey:@"itemName"];
  }

  if ((*&self->_has & 0x400) != 0)
  {
    v16 = [NSNumber numberWithBool:self->_launchProhibited];
    [v3 setObject:v16 forKey:@"launchProhibited"];
  }

  messagesArtworkURLString = self->_messagesArtworkURLString;
  if (messagesArtworkURLString)
  {
    [v3 setObject:messagesArtworkURLString forKey:@"messagesArtworkURLString"];
  }

  packageDPInfo = self->_packageDPInfo;
  if (packageDPInfo)
  {
    [v3 setObject:packageDPInfo forKey:@"packageDPInfo"];
  }

  packageSINF = self->_packageSINF;
  if (packageSINF)
  {
    [v3 setObject:packageSINF forKey:@"packageSINF"];
  }

  packageURLString = self->_packageURLString;
  if (packageURLString)
  {
    [v3 setObject:packageURLString forKey:@"packageURLString"];
  }

  storeCohort = self->_storeCohort;
  if (storeCohort)
  {
    [v3 setObject:storeCohort forKey:@"storeCohort"];
  }

  storeFront = self->_storeFront;
  if (storeFront)
  {
    [v3 setObject:storeFront forKey:@"storeFront"];
  }

  vendorName = self->_vendorName;
  if (vendorName)
  {
    [v3 setObject:vendorName forKey:@"vendorName"];
  }

  provisioningProfiles = self->_provisioningProfiles;
  if (provisioningProfiles)
  {
    [v3 setObject:provisioningProfiles forKey:@"provisioningProfile"];
  }

  variantID = self->_variantID;
  if (variantID)
  {
    [v3 setObject:variantID forKey:@"variantID"];
  }

  v26 = self->_has;
  if ((v26 & 0x800) != 0)
  {
    v37 = [NSNumber numberWithBool:self->_skipIfInstalled];
    [v3 setObject:v37 forKey:@"skipIfInstalled"];

    v26 = self->_has;
    if ((v26 & 0x40) == 0)
    {
LABEL_47:
      if ((v26 & 0x100) == 0)
      {
        goto LABEL_48;
      }

      goto LABEL_66;
    }
  }

  else if ((v26 & 0x40) == 0)
  {
    goto LABEL_47;
  }

  v38 = [NSNumber numberWithBool:self->_isBeta];
  [v3 setObject:v38 forKey:@"isBeta"];

  v26 = self->_has;
  if ((v26 & 0x100) == 0)
  {
LABEL_48:
    if ((v26 & 0x80) == 0)
    {
      goto LABEL_50;
    }

    goto LABEL_49;
  }

LABEL_66:
  v39 = [NSNumber numberWithBool:self->_isSystemApp];
  [v3 setObject:v39 forKey:@"isSystemApp"];

  if ((*&self->_has & 0x80) != 0)
  {
LABEL_49:
    v27 = [NSNumber numberWithBool:self->_isStoreApp];
    [v3 setObject:v27 forKey:@"isStoreApp"];
  }

LABEL_50:
  bundleVersion = self->_bundleVersion;
  if (bundleVersion)
  {
    [v3 setObject:bundleVersion forKey:@"bundleVersion"];
  }

  manifestURLString = self->_manifestURLString;
  if (manifestURLString)
  {
    [v3 setObject:manifestURLString forKey:@"manifestURLString"];
  }

  if ((*&self->_has & 0x1000) != 0)
  {
    v30 = [NSNumber numberWithBool:self->_suppressDialogs];
    [v3 setObject:v30 forKey:@"suppressDialogs"];
  }

  betaBuildGroupID = self->_betaBuildGroupID;
  if (betaBuildGroupID)
  {
    [v3 setObject:betaBuildGroupID forKey:@"betaBuildGroupID"];
  }

  if ((*&self->_has & 0x200) != 0)
  {
    v32 = [NSNumber numberWithBool:self->_isUserInitiated];
    [v3 setObject:v32 forKey:@"isUserInitiated"];
  }

  v33 = v3;

  return v3;
}

- (void)writeTo:(id)to
{
  toCopy = to;
  if ((*&self->_has & 0x10) != 0)
  {
    PBDataWriterWriteInt32Field();
  }

  if (self->_altDSID)
  {
    PBDataWriterWriteStringField();
  }

  if (self->_appleID)
  {
    PBDataWriterWriteStringField();
  }

  if (self->_bundleID)
  {
    PBDataWriterWriteStringField();
  }

  if (*&self->_has)
  {
    PBDataWriterWriteUint64Field();
  }

  if (self->_externalIDString)
  {
    PBDataWriterWriteStringField();
  }

  has = self->_has;
  if ((has & 2) != 0)
  {
    PBDataWriterWriteUint64Field();
    has = self->_has;
    if ((has & 4) == 0)
    {
LABEL_15:
      if ((has & 8) == 0)
      {
        goto LABEL_17;
      }

      goto LABEL_16;
    }
  }

  else if ((has & 4) == 0)
  {
    goto LABEL_15;
  }

  PBDataWriterWriteUint64Field();
  if ((*&self->_has & 8) != 0)
  {
LABEL_16:
    PBDataWriterWriteUint64Field();
  }

LABEL_17:
  if (self->_redownloadParams)
  {
    PBDataWriterWriteStringField();
  }

  if (self->_artworkURLString)
  {
    PBDataWriterWriteStringField();
  }

  if ((*&self->_has & 0x20) != 0)
  {
    PBDataWriterWriteBOOLField();
  }

  if (self->_itemName)
  {
    PBDataWriterWriteStringField();
  }

  if ((*&self->_has & 0x400) != 0)
  {
    PBDataWriterWriteBOOLField();
  }

  if (self->_messagesArtworkURLString)
  {
    PBDataWriterWriteStringField();
  }

  if (self->_packageDPInfo)
  {
    PBDataWriterWriteDataField();
  }

  if (self->_packageSINF)
  {
    PBDataWriterWriteDataField();
  }

  if (self->_packageURLString)
  {
    PBDataWriterWriteStringField();
  }

  if (self->_storeCohort)
  {
    PBDataWriterWriteStringField();
  }

  if (self->_storeFront)
  {
    PBDataWriterWriteStringField();
  }

  if (self->_vendorName)
  {
    PBDataWriterWriteStringField();
  }

  v14 = 0u;
  v15 = 0u;
  v12 = 0u;
  v13 = 0u;
  v6 = self->_provisioningProfiles;
  v7 = [(NSMutableArray *)v6 countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v13;
    do
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v13 != v9)
        {
          objc_enumerationMutation(v6);
        }

        PBDataWriterWriteDataField();
      }

      v8 = [(NSMutableArray *)v6 countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v8);
  }

  if (self->_variantID)
  {
    PBDataWriterWriteStringField();
  }

  v11 = self->_has;
  if ((v11 & 0x800) != 0)
  {
    PBDataWriterWriteBOOLField();
    v11 = self->_has;
    if ((v11 & 0x40) == 0)
    {
LABEL_52:
      if ((v11 & 0x100) == 0)
      {
        goto LABEL_53;
      }

      goto LABEL_71;
    }
  }

  else if ((v11 & 0x40) == 0)
  {
    goto LABEL_52;
  }

  PBDataWriterWriteBOOLField();
  v11 = self->_has;
  if ((v11 & 0x100) == 0)
  {
LABEL_53:
    if ((v11 & 0x80) == 0)
    {
      goto LABEL_55;
    }

    goto LABEL_54;
  }

LABEL_71:
  PBDataWriterWriteBOOLField();
  if ((*&self->_has & 0x80) != 0)
  {
LABEL_54:
    PBDataWriterWriteBOOLField();
  }

LABEL_55:
  if (self->_bundleVersion)
  {
    PBDataWriterWriteStringField();
  }

  if (self->_manifestURLString)
  {
    PBDataWriterWriteStringField();
  }

  if ((*&self->_has & 0x1000) != 0)
  {
    PBDataWriterWriteBOOLField();
  }

  if (self->_betaBuildGroupID)
  {
    PBDataWriterWriteStringField();
  }

  if ((*&self->_has & 0x200) != 0)
  {
    PBDataWriterWriteBOOLField();
  }
}

- (id)copyWithZone:(_NSZone *)zone
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
  v6 = v5;
  if ((*&self->_has & 0x10) != 0)
  {
    v5[44] = self->_type;
    *(v5 + 104) |= 0x10u;
  }

  v7 = [(NSString *)self->_altDSID copyWithZone:zone];
  v8 = *(v6 + 40);
  *(v6 + 40) = v7;

  v9 = [(NSString *)self->_appleID copyWithZone:zone];
  v10 = *(v6 + 48);
  *(v6 + 48) = v9;

  v11 = [(NSString *)self->_bundleID copyWithZone:zone];
  v12 = *(v6 + 72);
  *(v6 + 72) = v11;

  if (*&self->_has)
  {
    *(v6 + 8) = self->_downloaderID;
    *(v6 + 208) |= 1u;
  }

  v13 = [(NSString *)self->_externalIDString copyWithZone:zone];
  v14 = *(v6 + 88);
  *(v6 + 88) = v13;

  has = self->_has;
  if ((has & 2) != 0)
  {
    *(v6 + 16) = self->_externalVersionID;
    *(v6 + 208) |= 2u;
    has = self->_has;
    if ((has & 4) == 0)
    {
LABEL_7:
      if ((has & 8) == 0)
      {
        goto LABEL_9;
      }

      goto LABEL_8;
    }
  }

  else if ((has & 4) == 0)
  {
    goto LABEL_7;
  }

  *(v6 + 24) = self->_itemID;
  *(v6 + 208) |= 4u;
  if ((*&self->_has & 8) != 0)
  {
LABEL_8:
    *(v6 + 32) = self->_purchaserID;
    *(v6 + 208) |= 8u;
  }

LABEL_9:
  v16 = [(NSString *)self->_redownloadParams copyWithZone:zone];
  v17 = *(v6 + 152);
  *(v6 + 152) = v16;

  v18 = [(NSString *)self->_artworkURLString copyWithZone:zone];
  v19 = *(v6 + 56);
  *(v6 + 56) = v18;

  if ((*&self->_has & 0x20) != 0)
  {
    *(v6 + 200) = self->_containsMessagesExtension;
    *(v6 + 208) |= 0x20u;
  }

  v20 = [(NSString *)self->_itemName copyWithZone:zone];
  v21 = *(v6 + 96);
  *(v6 + 96) = v20;

  if ((*&self->_has & 0x400) != 0)
  {
    *(v6 + 205) = self->_launchProhibited;
    *(v6 + 208) |= 0x400u;
  }

  v22 = [(NSString *)self->_messagesArtworkURLString copyWithZone:zone];
  v23 = *(v6 + 112);
  *(v6 + 112) = v22;

  v24 = [(NSData *)self->_packageDPInfo copyWithZone:zone];
  v25 = *(v6 + 120);
  *(v6 + 120) = v24;

  v26 = [(NSData *)self->_packageSINF copyWithZone:zone];
  v27 = *(v6 + 128);
  *(v6 + 128) = v26;

  v28 = [(NSString *)self->_packageURLString copyWithZone:zone];
  v29 = *(v6 + 136);
  *(v6 + 136) = v28;

  v30 = [(NSString *)self->_storeCohort copyWithZone:zone];
  v31 = *(v6 + 160);
  *(v6 + 160) = v30;

  v32 = [(NSString *)self->_storeFront copyWithZone:zone];
  v33 = *(v6 + 168);
  *(v6 + 168) = v32;

  v34 = [(NSString *)self->_vendorName copyWithZone:zone];
  v35 = *(v6 + 192);
  *(v6 + 192) = v34;

  v54 = 0u;
  v55 = 0u;
  v52 = 0u;
  v53 = 0u;
  v36 = self->_provisioningProfiles;
  v37 = [(NSMutableArray *)v36 countByEnumeratingWithState:&v52 objects:v56 count:16];
  if (v37)
  {
    v38 = v37;
    v39 = *v53;
    do
    {
      for (i = 0; i != v38; i = i + 1)
      {
        if (*v53 != v39)
        {
          objc_enumerationMutation(v36);
        }

        v41 = [*(*(&v52 + 1) + 8 * i) copyWithZone:{zone, v52}];
        sub_1002FAD58(v6, v41);
      }

      v38 = [(NSMutableArray *)v36 countByEnumeratingWithState:&v52 objects:v56 count:16];
    }

    while (v38);
  }

  v42 = [(NSString *)self->_variantID copyWithZone:zone];
  v43 = *(v6 + 184);
  *(v6 + 184) = v42;

  v44 = self->_has;
  if ((v44 & 0x800) != 0)
  {
    *(v6 + 206) = self->_skipIfInstalled;
    *(v6 + 208) |= 0x800u;
    v44 = self->_has;
    if ((v44 & 0x40) == 0)
    {
LABEL_22:
      if ((v44 & 0x100) == 0)
      {
        goto LABEL_23;
      }

      goto LABEL_35;
    }
  }

  else if ((v44 & 0x40) == 0)
  {
    goto LABEL_22;
  }

  *(v6 + 201) = self->_isBeta;
  *(v6 + 208) |= 0x40u;
  v44 = self->_has;
  if ((v44 & 0x100) == 0)
  {
LABEL_23:
    if ((v44 & 0x80) == 0)
    {
      goto LABEL_25;
    }

    goto LABEL_24;
  }

LABEL_35:
  *(v6 + 203) = self->_isSystemApp;
  *(v6 + 208) |= 0x100u;
  if ((*&self->_has & 0x80) != 0)
  {
LABEL_24:
    *(v6 + 202) = self->_isStoreApp;
    *(v6 + 208) |= 0x80u;
  }

LABEL_25:
  v45 = [(NSString *)self->_bundleVersion copyWithZone:zone, v52];
  v46 = *(v6 + 80);
  *(v6 + 80) = v45;

  v47 = [(NSString *)self->_manifestURLString copyWithZone:zone];
  v48 = *(v6 + 104);
  *(v6 + 104) = v47;

  if ((*&self->_has & 0x1000) != 0)
  {
    *(v6 + 207) = self->_suppressDialogs;
    *(v6 + 208) |= 0x1000u;
  }

  v49 = [(NSString *)self->_betaBuildGroupID copyWithZone:zone];
  v50 = *(v6 + 64);
  *(v6 + 64) = v49;

  if ((*&self->_has & 0x200) != 0)
  {
    *(v6 + 204) = self->_isUserInitiated;
    *(v6 + 208) |= 0x200u;
  }

  return v6;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (![equalCopy isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_91;
  }

  v5 = *(equalCopy + 104);
  if ((*&self->_has & 0x10) != 0)
  {
    if ((v5 & 0x10) == 0 || self->_type != *(equalCopy + 44))
    {
      goto LABEL_91;
    }
  }

  else if ((v5 & 0x10) != 0)
  {
    goto LABEL_91;
  }

  altDSID = self->_altDSID;
  if (altDSID | *(equalCopy + 5) && ![(NSString *)altDSID isEqual:?])
  {
    goto LABEL_91;
  }

  appleID = self->_appleID;
  if (appleID | *(equalCopy + 6))
  {
    if (![(NSString *)appleID isEqual:?])
    {
      goto LABEL_91;
    }
  }

  bundleID = self->_bundleID;
  if (bundleID | *(equalCopy + 9))
  {
    if (![(NSString *)bundleID isEqual:?])
    {
      goto LABEL_91;
    }
  }

  has = self->_has;
  v10 = *(equalCopy + 104);
  if (has)
  {
    if ((v10 & 1) == 0 || self->_downloaderID != *(equalCopy + 1))
    {
      goto LABEL_91;
    }
  }

  else if (v10)
  {
    goto LABEL_91;
  }

  externalIDString = self->_externalIDString;
  if (externalIDString | *(equalCopy + 11))
  {
    if (![(NSString *)externalIDString isEqual:?])
    {
      goto LABEL_91;
    }

    has = self->_has;
    v10 = *(equalCopy + 104);
  }

  if ((has & 2) != 0)
  {
    if ((v10 & 2) == 0 || self->_externalVersionID != *(equalCopy + 2))
    {
      goto LABEL_91;
    }
  }

  else if ((v10 & 2) != 0)
  {
    goto LABEL_91;
  }

  if ((has & 4) != 0)
  {
    if ((v10 & 4) == 0 || self->_itemID != *(equalCopy + 3))
    {
      goto LABEL_91;
    }
  }

  else if ((v10 & 4) != 0)
  {
    goto LABEL_91;
  }

  if ((has & 8) != 0)
  {
    if ((v10 & 8) == 0 || self->_purchaserID != *(equalCopy + 4))
    {
      goto LABEL_91;
    }
  }

  else if ((v10 & 8) != 0)
  {
    goto LABEL_91;
  }

  redownloadParams = self->_redownloadParams;
  if (redownloadParams | *(equalCopy + 19) && ![(NSString *)redownloadParams isEqual:?])
  {
    goto LABEL_91;
  }

  artworkURLString = self->_artworkURLString;
  if (artworkURLString | *(equalCopy + 7))
  {
    if (![(NSString *)artworkURLString isEqual:?])
    {
      goto LABEL_91;
    }
  }

  v14 = self->_has;
  v15 = *(equalCopy + 104);
  if ((v14 & 0x20) != 0)
  {
    if ((v15 & 0x20) == 0)
    {
      goto LABEL_91;
    }

    if (self->_containsMessagesExtension)
    {
      if ((*(equalCopy + 200) & 1) == 0)
      {
        goto LABEL_91;
      }
    }

    else if (*(equalCopy + 200))
    {
      goto LABEL_91;
    }
  }

  else if ((v15 & 0x20) != 0)
  {
    goto LABEL_91;
  }

  itemName = self->_itemName;
  if (itemName | *(equalCopy + 12))
  {
    if (![(NSString *)itemName isEqual:?])
    {
      goto LABEL_91;
    }

    v14 = self->_has;
    v15 = *(equalCopy + 104);
  }

  if ((v14 & 0x400) != 0)
  {
    if ((v15 & 0x400) == 0)
    {
      goto LABEL_91;
    }

    if (self->_launchProhibited)
    {
      if ((*(equalCopy + 205) & 1) == 0)
      {
        goto LABEL_91;
      }
    }

    else if (*(equalCopy + 205))
    {
      goto LABEL_91;
    }
  }

  else if ((v15 & 0x400) != 0)
  {
    goto LABEL_91;
  }

  messagesArtworkURLString = self->_messagesArtworkURLString;
  if (messagesArtworkURLString | *(equalCopy + 14) && ![(NSString *)messagesArtworkURLString isEqual:?])
  {
    goto LABEL_91;
  }

  packageDPInfo = self->_packageDPInfo;
  if (packageDPInfo | *(equalCopy + 15))
  {
    if (![(NSData *)packageDPInfo isEqual:?])
    {
      goto LABEL_91;
    }
  }

  packageSINF = self->_packageSINF;
  if (packageSINF | *(equalCopy + 16))
  {
    if (![(NSData *)packageSINF isEqual:?])
    {
      goto LABEL_91;
    }
  }

  packageURLString = self->_packageURLString;
  if (packageURLString | *(equalCopy + 17))
  {
    if (![(NSString *)packageURLString isEqual:?])
    {
      goto LABEL_91;
    }
  }

  storeCohort = self->_storeCohort;
  if (storeCohort | *(equalCopy + 20))
  {
    if (![(NSString *)storeCohort isEqual:?])
    {
      goto LABEL_91;
    }
  }

  storeFront = self->_storeFront;
  if (storeFront | *(equalCopy + 21))
  {
    if (![(NSString *)storeFront isEqual:?])
    {
      goto LABEL_91;
    }
  }

  vendorName = self->_vendorName;
  if (vendorName | *(equalCopy + 24))
  {
    if (![(NSString *)vendorName isEqual:?])
    {
      goto LABEL_91;
    }
  }

  provisioningProfiles = self->_provisioningProfiles;
  if (provisioningProfiles | *(equalCopy + 18))
  {
    if (![(NSMutableArray *)provisioningProfiles isEqual:?])
    {
      goto LABEL_91;
    }
  }

  variantID = self->_variantID;
  if (variantID | *(equalCopy + 23))
  {
    if (![(NSString *)variantID isEqual:?])
    {
      goto LABEL_91;
    }
  }

  v26 = self->_has;
  v27 = *(equalCopy + 104);
  if ((v26 & 0x800) != 0)
  {
    if ((*(equalCopy + 104) & 0x800) == 0)
    {
      goto LABEL_91;
    }

    if (self->_skipIfInstalled)
    {
      if ((*(equalCopy + 206) & 1) == 0)
      {
        goto LABEL_91;
      }
    }

    else if (*(equalCopy + 206))
    {
      goto LABEL_91;
    }
  }

  else if ((*(equalCopy + 104) & 0x800) != 0)
  {
    goto LABEL_91;
  }

  if ((v26 & 0x40) != 0)
  {
    if ((v27 & 0x40) == 0)
    {
      goto LABEL_91;
    }

    if (self->_isBeta)
    {
      if ((*(equalCopy + 201) & 1) == 0)
      {
        goto LABEL_91;
      }
    }

    else if (*(equalCopy + 201))
    {
      goto LABEL_91;
    }
  }

  else if ((v27 & 0x40) != 0)
  {
    goto LABEL_91;
  }

  if ((*&self->_has & 0x100) != 0)
  {
    if ((*(equalCopy + 104) & 0x100) == 0)
    {
      goto LABEL_91;
    }

    if (self->_isSystemApp)
    {
      if ((*(equalCopy + 203) & 1) == 0)
      {
        goto LABEL_91;
      }
    }

    else if (*(equalCopy + 203))
    {
      goto LABEL_91;
    }
  }

  else if ((*(equalCopy + 104) & 0x100) != 0)
  {
    goto LABEL_91;
  }

  if ((v26 & 0x80) != 0)
  {
    if ((v27 & 0x80) == 0)
    {
      goto LABEL_91;
    }

    if (self->_isStoreApp)
    {
      if ((*(equalCopy + 202) & 1) == 0)
      {
        goto LABEL_91;
      }
    }

    else if (*(equalCopy + 202))
    {
      goto LABEL_91;
    }
  }

  else if ((v27 & 0x80) != 0)
  {
    goto LABEL_91;
  }

  bundleVersion = self->_bundleVersion;
  if (bundleVersion | *(equalCopy + 10) && ![(NSString *)bundleVersion isEqual:?])
  {
    goto LABEL_91;
  }

  manifestURLString = self->_manifestURLString;
  if (manifestURLString | *(equalCopy + 13))
  {
    if (![(NSString *)manifestURLString isEqual:?])
    {
      goto LABEL_91;
    }
  }

  v30 = self->_has;
  v31 = *(equalCopy + 104);
  if ((v30 & 0x1000) != 0)
  {
    if ((*(equalCopy + 104) & 0x1000) == 0)
    {
      goto LABEL_91;
    }

    if (self->_suppressDialogs)
    {
      if ((*(equalCopy + 207) & 1) == 0)
      {
        goto LABEL_91;
      }
    }

    else if (*(equalCopy + 207))
    {
      goto LABEL_91;
    }
  }

  else if ((*(equalCopy + 104) & 0x1000) != 0)
  {
    goto LABEL_91;
  }

  betaBuildGroupID = self->_betaBuildGroupID;
  if (betaBuildGroupID | *(equalCopy + 8))
  {
    if (![(NSString *)betaBuildGroupID isEqual:?])
    {
      goto LABEL_91;
    }

    v30 = self->_has;
    v31 = *(equalCopy + 104);
  }

  if ((v30 & 0x200) == 0)
  {
    v32 = (v31 & 0x200) == 0;
    goto LABEL_92;
  }

  if ((v31 & 0x200) != 0)
  {
    if (self->_isUserInitiated)
    {
      if (*(equalCopy + 204))
      {
        goto LABEL_132;
      }
    }

    else if (!*(equalCopy + 204))
    {
LABEL_132:
      v32 = 1;
      goto LABEL_92;
    }
  }

LABEL_91:
  v32 = 0;
LABEL_92:

  return v32;
}

- (unint64_t)hash
{
  if ((*&self->_has & 0x10) != 0)
  {
    v38 = 2654435761 * self->_type;
  }

  else
  {
    v38 = 0;
  }

  v37 = [(NSString *)self->_altDSID hash];
  v36 = [(NSString *)self->_appleID hash];
  v35 = [(NSString *)self->_bundleID hash];
  if (*&self->_has)
  {
    v34 = 2654435761u * self->_downloaderID;
  }

  else
  {
    v34 = 0;
  }

  v33 = [(NSString *)self->_externalIDString hash];
  has = self->_has;
  if ((has & 2) == 0)
  {
    v32 = 0;
    if ((has & 4) != 0)
    {
      goto LABEL_9;
    }

LABEL_12:
    v31 = 0;
    if ((has & 8) != 0)
    {
      goto LABEL_10;
    }

    goto LABEL_13;
  }

  v32 = 2654435761u * self->_externalVersionID;
  if ((has & 4) == 0)
  {
    goto LABEL_12;
  }

LABEL_9:
  v31 = 2654435761u * self->_itemID;
  if ((has & 8) != 0)
  {
LABEL_10:
    v30 = 2654435761u * self->_purchaserID;
    goto LABEL_14;
  }

LABEL_13:
  v30 = 0;
LABEL_14:
  v29 = [(NSString *)self->_redownloadParams hash];
  v28 = [(NSString *)self->_artworkURLString hash];
  if ((*&self->_has & 0x20) != 0)
  {
    v27 = 2654435761 * self->_containsMessagesExtension;
  }

  else
  {
    v27 = 0;
  }

  v26 = [(NSString *)self->_itemName hash];
  if ((*&self->_has & 0x400) != 0)
  {
    v25 = 2654435761 * self->_launchProhibited;
  }

  else
  {
    v25 = 0;
  }

  v24 = [(NSString *)self->_messagesArtworkURLString hash];
  v23 = [(NSData *)self->_packageDPInfo hash];
  v22 = [(NSData *)self->_packageSINF hash];
  v21 = [(NSString *)self->_packageURLString hash];
  v20 = [(NSString *)self->_storeCohort hash];
  v19 = [(NSString *)self->_storeFront hash];
  v18 = [(NSString *)self->_vendorName hash];
  v17 = [(NSMutableArray *)self->_provisioningProfiles hash];
  v15 = [(NSString *)self->_variantID hash];
  v4 = self->_has;
  if ((v4 & 0x800) != 0)
  {
    v5 = 2654435761 * self->_skipIfInstalled;
    if ((v4 & 0x40) != 0)
    {
LABEL_22:
      v6 = 2654435761 * self->_isBeta;
      if ((*&self->_has & 0x100) != 0)
      {
        goto LABEL_23;
      }

LABEL_27:
      v7 = 0;
      if ((v4 & 0x80) != 0)
      {
        goto LABEL_24;
      }

      goto LABEL_28;
    }
  }

  else
  {
    v5 = 0;
    if ((v4 & 0x40) != 0)
    {
      goto LABEL_22;
    }
  }

  v6 = 0;
  if ((*&self->_has & 0x100) == 0)
  {
    goto LABEL_27;
  }

LABEL_23:
  v7 = 2654435761 * self->_isSystemApp;
  if ((v4 & 0x80) != 0)
  {
LABEL_24:
    v8 = 2654435761 * self->_isStoreApp;
    goto LABEL_29;
  }

LABEL_28:
  v8 = 0;
LABEL_29:
  v9 = [(NSString *)self->_bundleVersion hash];
  v10 = [(NSString *)self->_manifestURLString hash];
  if ((*&self->_has & 0x1000) != 0)
  {
    v11 = 2654435761 * self->_suppressDialogs;
  }

  else
  {
    v11 = 0;
  }

  v12 = [(NSString *)self->_betaBuildGroupID hash];
  if ((*&self->_has & 0x200) != 0)
  {
    v13 = 2654435761 * self->_isUserInitiated;
  }

  else
  {
    v13 = 0;
  }

  return v37 ^ v38 ^ v36 ^ v35 ^ v34 ^ v33 ^ v32 ^ v31 ^ v30 ^ v29 ^ v28 ^ v27 ^ v26 ^ v25 ^ v24 ^ v23 ^ v22 ^ v21 ^ v20 ^ v19 ^ v18 ^ v17 ^ v16 ^ v5 ^ v6 ^ v7 ^ v8 ^ v9 ^ v10 ^ v11 ^ v12 ^ v13;
}

@end