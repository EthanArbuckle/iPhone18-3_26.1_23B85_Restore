@interface ASCodableCloudKitRelationship
- (BOOL)isEqual:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (id)dictionaryRepresentation;
- (unint64_t)hash;
- (void)addAddresses:(id)a3;
- (void)addEvents:(id)a3;
- (void)copyTo:(id)a3;
- (void)mergeFrom:(id)a3;
- (void)setHasEventCount:(BOOL)a3;
- (void)setHasSupportedPhoneFeatures:(BOOL)a3;
- (void)setHasSupportedWatchFeatures:(BOOL)a3;
- (void)writeTo:(id)a3;
@end

@implementation ASCodableCloudKitRelationship

- (void)addAddresses:(id)a3
{
  v4 = a3;
  addresses = self->_addresses;
  v8 = v4;
  if (!addresses)
  {
    v6 = objc_alloc_init(MEMORY[0x277CBEB18]);
    v7 = self->_addresses;
    self->_addresses = v6;

    v4 = v8;
    addresses = self->_addresses;
  }

  [(NSMutableArray *)addresses addObject:v4];
}

- (void)addEvents:(id)a3
{
  v4 = a3;
  events = self->_events;
  v8 = v4;
  if (!events)
  {
    v6 = objc_alloc_init(MEMORY[0x277CBEB18]);
    v7 = self->_events;
    self->_events = v6;

    v4 = v8;
    events = self->_events;
  }

  [(NSMutableArray *)events addObject:v4];
}

- (void)setHasEventCount:(BOOL)a3
{
  if (a3)
  {
    v3 = 2;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFD | v3;
}

- (void)setHasSupportedPhoneFeatures:(BOOL)a3
{
  if (a3)
  {
    v3 = 4;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFB | v3;
}

- (void)setHasSupportedWatchFeatures:(BOOL)a3
{
  if (a3)
  {
    v3 = 8;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xF7 | v3;
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v8.receiver = self;
  v8.super_class = ASCodableCloudKitRelationship;
  v4 = [(ASCodableCloudKitRelationship *)&v8 description];
  v5 = [(ASCodableCloudKitRelationship *)self dictionaryRepresentation];
  v6 = [v3 stringWithFormat:@"%@ %@", v4, v5];

  return v6;
}

- (id)dictionaryRepresentation
{
  v34 = *MEMORY[0x277D85DE8];
  v3 = [MEMORY[0x277CBEB38] dictionary];
  v4 = v3;
  uuid = self->_uuid;
  if (uuid)
  {
    [v3 setObject:uuid forKey:@"uuid"];
  }

  incomingHandshakeToken = self->_incomingHandshakeToken;
  if (incomingHandshakeToken)
  {
    [v4 setObject:incomingHandshakeToken forKey:@"incomingHandshakeToken"];
  }

  outgoingHandshakeToken = self->_outgoingHandshakeToken;
  if (outgoingHandshakeToken)
  {
    [v4 setObject:outgoingHandshakeToken forKey:@"outgoingHandshakeToken"];
  }

  cloudKitAddress = self->_cloudKitAddress;
  if (cloudKitAddress)
  {
    [v4 setObject:cloudKitAddress forKey:@"cloudKitAddress"];
  }

  addresses = self->_addresses;
  if (addresses)
  {
    [v4 setObject:addresses forKey:@"addresses"];
  }

  preferredReachableAddress = self->_preferredReachableAddress;
  if (preferredReachableAddress)
  {
    [v4 setObject:preferredReachableAddress forKey:@"preferredReachableAddress"];
  }

  preferredReachableService = self->_preferredReachableService;
  if (preferredReachableService)
  {
    [v4 setObject:preferredReachableService forKey:@"preferredReachableService"];
  }

  if ([(NSMutableArray *)self->_events count])
  {
    v12 = [objc_alloc(MEMORY[0x277CBEB18]) initWithCapacity:{-[NSMutableArray count](self->_events, "count")}];
    v29 = 0u;
    v30 = 0u;
    v31 = 0u;
    v32 = 0u;
    v13 = self->_events;
    v14 = [(NSMutableArray *)v13 countByEnumeratingWithState:&v29 objects:v33 count:16];
    if (v14)
    {
      v15 = v14;
      v16 = *v30;
      do
      {
        for (i = 0; i != v15; ++i)
        {
          if (*v30 != v16)
          {
            objc_enumerationMutation(v13);
          }

          v18 = [*(*(&v29 + 1) + 8 * i) dictionaryRepresentation];
          [v12 addObject:v18];
        }

        v15 = [(NSMutableArray *)v13 countByEnumeratingWithState:&v29 objects:v33 count:16];
      }

      while (v15);
    }

    [v4 setObject:v12 forKey:@"events"];
  }

  has = self->_has;
  if ((has & 2) != 0)
  {
    v26 = [MEMORY[0x277CCABB0] numberWithLongLong:self->_eventCount];
    [v4 setObject:v26 forKey:@"eventCount"];

    has = self->_has;
    if ((has & 4) == 0)
    {
LABEL_26:
      if ((has & 8) == 0)
      {
        goto LABEL_27;
      }

      goto LABEL_40;
    }
  }

  else if ((*&self->_has & 4) == 0)
  {
    goto LABEL_26;
  }

  v27 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:{self->_supportedPhoneFeatures, v29}];
  [v4 setObject:v27 forKey:@"supportedPhoneFeatures"];

  has = self->_has;
  if ((has & 8) == 0)
  {
LABEL_27:
    if ((has & 1) == 0)
    {
      goto LABEL_29;
    }

    goto LABEL_28;
  }

LABEL_40:
  v28 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:{self->_supportedWatchFeatures, v29}];
  [v4 setObject:v28 forKey:@"supportedWatchFeatures"];

  if (*&self->_has)
  {
LABEL_28:
    v20 = [MEMORY[0x277CCABB0] numberWithLongLong:{self->_cloudType, v29}];
    [v4 setObject:v20 forKey:@"cloudType"];
  }

LABEL_29:
  secureCloudUpgradeToken = self->_secureCloudUpgradeToken;
  if (secureCloudUpgradeToken)
  {
    [v4 setObject:secureCloudUpgradeToken forKey:@"secureCloudUpgradeToken"];
  }

  sentInvitation = self->_sentInvitation;
  if (sentInvitation)
  {
    [v4 setObject:sentInvitation forKey:@"sentInvitation"];
  }

  receivedInvitation = self->_receivedInvitation;
  if (receivedInvitation)
  {
    [v4 setObject:receivedInvitation forKey:@"receivedInvitation"];
  }

  v24 = *MEMORY[0x277D85DE8];

  return v4;
}

- (void)writeTo:(id)a3
{
  v33 = *MEMORY[0x277D85DE8];
  v4 = a3;
  if (self->_uuid)
  {
    PBDataWriterWriteDataField();
  }

  if (self->_incomingHandshakeToken)
  {
    PBDataWriterWriteStringField();
  }

  if (self->_outgoingHandshakeToken)
  {
    PBDataWriterWriteStringField();
  }

  if (self->_cloudKitAddress)
  {
    PBDataWriterWriteStringField();
  }

  v29 = 0u;
  v30 = 0u;
  v27 = 0u;
  v28 = 0u;
  v5 = self->_addresses;
  v6 = [(NSMutableArray *)v5 countByEnumeratingWithState:&v27 objects:v32 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v28;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v28 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = *(*(&v27 + 1) + 8 * i);
        PBDataWriterWriteStringField();
      }

      v7 = [(NSMutableArray *)v5 countByEnumeratingWithState:&v27 objects:v32 count:16];
    }

    while (v7);
  }

  if (self->_preferredReachableAddress)
  {
    PBDataWriterWriteStringField();
  }

  if (self->_preferredReachableService)
  {
    PBDataWriterWriteStringField();
  }

  v25 = 0u;
  v26 = 0u;
  v23 = 0u;
  v24 = 0u;
  v11 = self->_events;
  v12 = [(NSMutableArray *)v11 countByEnumeratingWithState:&v23 objects:v31 count:16];
  if (v12)
  {
    v13 = v12;
    v14 = *v24;
    do
    {
      for (j = 0; j != v13; ++j)
      {
        if (*v24 != v14)
        {
          objc_enumerationMutation(v11);
        }

        v16 = *(*(&v23 + 1) + 8 * j);
        PBDataWriterWriteSubmessage();
      }

      v13 = [(NSMutableArray *)v11 countByEnumeratingWithState:&v23 objects:v31 count:16];
    }

    while (v13);
  }

  has = self->_has;
  if ((has & 2) != 0)
  {
    eventCount = self->_eventCount;
    PBDataWriterWriteInt64Field();
    has = self->_has;
    if ((has & 4) == 0)
    {
LABEL_29:
      if ((has & 8) == 0)
      {
        goto LABEL_30;
      }

      goto LABEL_41;
    }
  }

  else if ((*&self->_has & 4) == 0)
  {
    goto LABEL_29;
  }

  supportedPhoneFeatures = self->_supportedPhoneFeatures;
  PBDataWriterWriteUint32Field();
  has = self->_has;
  if ((has & 8) == 0)
  {
LABEL_30:
    if ((has & 1) == 0)
    {
      goto LABEL_32;
    }

    goto LABEL_31;
  }

LABEL_41:
  supportedWatchFeatures = self->_supportedWatchFeatures;
  PBDataWriterWriteUint32Field();
  if (*&self->_has)
  {
LABEL_31:
    cloudType = self->_cloudType;
    PBDataWriterWriteInt64Field();
  }

LABEL_32:
  if (self->_secureCloudUpgradeToken)
  {
    PBDataWriterWriteStringField();
  }

  if (self->_sentInvitation)
  {
    PBDataWriterWriteDataField();
  }

  if (self->_receivedInvitation)
  {
    PBDataWriterWriteDataField();
  }

  v19 = *MEMORY[0x277D85DE8];
}

- (void)copyTo:(id)a3
{
  v14 = a3;
  if (self->_uuid)
  {
    [v14 setUuid:?];
  }

  if (self->_incomingHandshakeToken)
  {
    [v14 setIncomingHandshakeToken:?];
  }

  if (self->_outgoingHandshakeToken)
  {
    [v14 setOutgoingHandshakeToken:?];
  }

  if (self->_cloudKitAddress)
  {
    [v14 setCloudKitAddress:?];
  }

  if ([(ASCodableCloudKitRelationship *)self addressesCount])
  {
    [v14 clearAddresses];
    v4 = [(ASCodableCloudKitRelationship *)self addressesCount];
    if (v4)
    {
      v5 = v4;
      for (i = 0; i != v5; ++i)
      {
        v7 = [(ASCodableCloudKitRelationship *)self addressesAtIndex:i];
        [v14 addAddresses:v7];
      }
    }
  }

  if (self->_preferredReachableAddress)
  {
    [v14 setPreferredReachableAddress:?];
  }

  if (self->_preferredReachableService)
  {
    [v14 setPreferredReachableService:?];
  }

  if ([(ASCodableCloudKitRelationship *)self eventsCount])
  {
    [v14 clearEvents];
    v8 = [(ASCodableCloudKitRelationship *)self eventsCount];
    if (v8)
    {
      v9 = v8;
      for (j = 0; j != v9; ++j)
      {
        v11 = [(ASCodableCloudKitRelationship *)self eventsAtIndex:j];
        [v14 addEvents:v11];
      }
    }
  }

  has = self->_has;
  v13 = v14;
  if ((has & 2) != 0)
  {
    *(v14 + 2) = self->_eventCount;
    *(v14 + 120) |= 2u;
    has = self->_has;
    if ((has & 4) == 0)
    {
LABEL_23:
      if ((has & 8) == 0)
      {
        goto LABEL_24;
      }

      goto LABEL_37;
    }
  }

  else if ((*&self->_has & 4) == 0)
  {
    goto LABEL_23;
  }

  *(v14 + 26) = self->_supportedPhoneFeatures;
  *(v14 + 120) |= 4u;
  has = self->_has;
  if ((has & 8) == 0)
  {
LABEL_24:
    if ((has & 1) == 0)
    {
      goto LABEL_26;
    }

    goto LABEL_25;
  }

LABEL_37:
  *(v14 + 27) = self->_supportedWatchFeatures;
  *(v14 + 120) |= 8u;
  if (*&self->_has)
  {
LABEL_25:
    *(v14 + 1) = self->_cloudType;
    *(v14 + 120) |= 1u;
  }

LABEL_26:
  if (self->_secureCloudUpgradeToken)
  {
    [v14 setSecureCloudUpgradeToken:?];
    v13 = v14;
  }

  if (self->_sentInvitation)
  {
    [v14 setSentInvitation:?];
    v13 = v14;
  }

  if (self->_receivedInvitation)
  {
    [v14 setReceivedInvitation:?];
    v13 = v14;
  }
}

- (id)copyWithZone:(_NSZone *)a3
{
  v49 = *MEMORY[0x277D85DE8];
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{a3), "init"}];
  v6 = [(NSData *)self->_uuid copyWithZone:a3];
  v7 = *(v5 + 112);
  *(v5 + 112) = v6;

  v8 = [(NSString *)self->_incomingHandshakeToken copyWithZone:a3];
  v9 = *(v5 + 48);
  *(v5 + 48) = v8;

  v10 = [(NSString *)self->_outgoingHandshakeToken copyWithZone:a3];
  v11 = *(v5 + 56);
  *(v5 + 56) = v10;

  v12 = [(NSString *)self->_cloudKitAddress copyWithZone:a3];
  v13 = *(v5 + 32);
  *(v5 + 32) = v12;

  v45 = 0u;
  v46 = 0u;
  v43 = 0u;
  v44 = 0u;
  v14 = self->_addresses;
  v15 = [(NSMutableArray *)v14 countByEnumeratingWithState:&v43 objects:v48 count:16];
  if (v15)
  {
    v16 = v15;
    v17 = *v44;
    do
    {
      for (i = 0; i != v16; ++i)
      {
        if (*v44 != v17)
        {
          objc_enumerationMutation(v14);
        }

        v19 = [*(*(&v43 + 1) + 8 * i) copyWithZone:a3];
        [v5 addAddresses:v19];
      }

      v16 = [(NSMutableArray *)v14 countByEnumeratingWithState:&v43 objects:v48 count:16];
    }

    while (v16);
  }

  v20 = [(NSString *)self->_preferredReachableAddress copyWithZone:a3];
  v21 = *(v5 + 64);
  *(v5 + 64) = v20;

  v22 = [(NSString *)self->_preferredReachableService copyWithZone:a3];
  v23 = *(v5 + 72);
  *(v5 + 72) = v22;

  v41 = 0u;
  v42 = 0u;
  v39 = 0u;
  v40 = 0u;
  v24 = self->_events;
  v25 = [(NSMutableArray *)v24 countByEnumeratingWithState:&v39 objects:v47 count:16];
  if (v25)
  {
    v26 = v25;
    v27 = *v40;
    do
    {
      for (j = 0; j != v26; ++j)
      {
        if (*v40 != v27)
        {
          objc_enumerationMutation(v24);
        }

        v29 = [*(*(&v39 + 1) + 8 * j) copyWithZone:{a3, v39}];
        [v5 addEvents:v29];
      }

      v26 = [(NSMutableArray *)v24 countByEnumeratingWithState:&v39 objects:v47 count:16];
    }

    while (v26);
  }

  has = self->_has;
  if ((has & 2) != 0)
  {
    *(v5 + 16) = self->_eventCount;
    *(v5 + 120) |= 2u;
    has = self->_has;
    if ((has & 4) == 0)
    {
LABEL_17:
      if ((has & 8) == 0)
      {
        goto LABEL_18;
      }

LABEL_23:
      *(v5 + 108) = self->_supportedWatchFeatures;
      *(v5 + 120) |= 8u;
      if ((*&self->_has & 1) == 0)
      {
        goto LABEL_20;
      }

      goto LABEL_19;
    }
  }

  else if ((*&self->_has & 4) == 0)
  {
    goto LABEL_17;
  }

  *(v5 + 104) = self->_supportedPhoneFeatures;
  *(v5 + 120) |= 4u;
  has = self->_has;
  if ((has & 8) != 0)
  {
    goto LABEL_23;
  }

LABEL_18:
  if (has)
  {
LABEL_19:
    *(v5 + 8) = self->_cloudType;
    *(v5 + 120) |= 1u;
  }

LABEL_20:
  v31 = [(NSString *)self->_secureCloudUpgradeToken copyWithZone:a3, v39];
  v32 = *(v5 + 88);
  *(v5 + 88) = v31;

  v33 = [(NSData *)self->_sentInvitation copyWithZone:a3];
  v34 = *(v5 + 96);
  *(v5 + 96) = v33;

  v35 = [(NSData *)self->_receivedInvitation copyWithZone:a3];
  v36 = *(v5 + 80);
  *(v5 + 80) = v35;

  v37 = *MEMORY[0x277D85DE8];
  return v5;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (![v4 isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_44;
  }

  uuid = self->_uuid;
  if (uuid | *(v4 + 14))
  {
    if (![(NSData *)uuid isEqual:?])
    {
      goto LABEL_44;
    }
  }

  incomingHandshakeToken = self->_incomingHandshakeToken;
  if (incomingHandshakeToken | *(v4 + 6))
  {
    if (![(NSString *)incomingHandshakeToken isEqual:?])
    {
      goto LABEL_44;
    }
  }

  outgoingHandshakeToken = self->_outgoingHandshakeToken;
  if (outgoingHandshakeToken | *(v4 + 7))
  {
    if (![(NSString *)outgoingHandshakeToken isEqual:?])
    {
      goto LABEL_44;
    }
  }

  cloudKitAddress = self->_cloudKitAddress;
  if (cloudKitAddress | *(v4 + 4))
  {
    if (![(NSString *)cloudKitAddress isEqual:?])
    {
      goto LABEL_44;
    }
  }

  addresses = self->_addresses;
  if (addresses | *(v4 + 3))
  {
    if (![(NSMutableArray *)addresses isEqual:?])
    {
      goto LABEL_44;
    }
  }

  preferredReachableAddress = self->_preferredReachableAddress;
  if (preferredReachableAddress | *(v4 + 8))
  {
    if (![(NSString *)preferredReachableAddress isEqual:?])
    {
      goto LABEL_44;
    }
  }

  preferredReachableService = self->_preferredReachableService;
  if (preferredReachableService | *(v4 + 9))
  {
    if (![(NSString *)preferredReachableService isEqual:?])
    {
      goto LABEL_44;
    }
  }

  events = self->_events;
  if (events | *(v4 + 5))
  {
    if (![(NSMutableArray *)events isEqual:?])
    {
      goto LABEL_44;
    }
  }

  v13 = *(v4 + 120);
  if ((*&self->_has & 2) != 0)
  {
    if ((*(v4 + 120) & 2) == 0 || self->_eventCount != *(v4 + 2))
    {
      goto LABEL_44;
    }
  }

  else if ((*(v4 + 120) & 2) != 0)
  {
LABEL_44:
    v17 = 0;
    goto LABEL_45;
  }

  if ((*&self->_has & 4) != 0)
  {
    if ((*(v4 + 120) & 4) == 0 || self->_supportedPhoneFeatures != *(v4 + 26))
    {
      goto LABEL_44;
    }
  }

  else if ((*(v4 + 120) & 4) != 0)
  {
    goto LABEL_44;
  }

  if ((*&self->_has & 8) != 0)
  {
    if ((*(v4 + 120) & 8) == 0 || self->_supportedWatchFeatures != *(v4 + 27))
    {
      goto LABEL_44;
    }
  }

  else if ((*(v4 + 120) & 8) != 0)
  {
    goto LABEL_44;
  }

  if (*&self->_has)
  {
    if ((*(v4 + 120) & 1) == 0 || self->_cloudType != *(v4 + 1))
    {
      goto LABEL_44;
    }
  }

  else if (*(v4 + 120))
  {
    goto LABEL_44;
  }

  secureCloudUpgradeToken = self->_secureCloudUpgradeToken;
  if (secureCloudUpgradeToken | *(v4 + 11) && ![(NSString *)secureCloudUpgradeToken isEqual:?])
  {
    goto LABEL_44;
  }

  sentInvitation = self->_sentInvitation;
  if (sentInvitation | *(v4 + 12))
  {
    if (![(NSData *)sentInvitation isEqual:?])
    {
      goto LABEL_44;
    }
  }

  receivedInvitation = self->_receivedInvitation;
  if (receivedInvitation | *(v4 + 10))
  {
    v17 = [(NSData *)receivedInvitation isEqual:?];
  }

  else
  {
    v17 = 1;
  }

LABEL_45:

  return v17;
}

- (unint64_t)hash
{
  v3 = [(NSData *)self->_uuid hash];
  v4 = [(NSString *)self->_incomingHandshakeToken hash];
  v5 = [(NSString *)self->_outgoingHandshakeToken hash];
  v6 = [(NSString *)self->_cloudKitAddress hash];
  v7 = [(NSMutableArray *)self->_addresses hash];
  v8 = [(NSString *)self->_preferredReachableAddress hash];
  v9 = [(NSString *)self->_preferredReachableService hash];
  v10 = [(NSMutableArray *)self->_events hash];
  if ((*&self->_has & 2) != 0)
  {
    v11 = 2654435761 * self->_eventCount;
    if ((*&self->_has & 4) != 0)
    {
LABEL_3:
      v12 = 2654435761 * self->_supportedPhoneFeatures;
      if ((*&self->_has & 8) != 0)
      {
        goto LABEL_4;
      }

LABEL_8:
      v13 = 0;
      if (*&self->_has)
      {
        goto LABEL_5;
      }

LABEL_9:
      v14 = 0;
      goto LABEL_10;
    }
  }

  else
  {
    v11 = 0;
    if ((*&self->_has & 4) != 0)
    {
      goto LABEL_3;
    }
  }

  v12 = 0;
  if ((*&self->_has & 8) == 0)
  {
    goto LABEL_8;
  }

LABEL_4:
  v13 = 2654435761 * self->_supportedWatchFeatures;
  if ((*&self->_has & 1) == 0)
  {
    goto LABEL_9;
  }

LABEL_5:
  v14 = 2654435761 * self->_cloudType;
LABEL_10:
  v15 = v4 ^ v3 ^ v5 ^ v6 ^ v7 ^ v8 ^ v9 ^ v10 ^ v11 ^ v12 ^ v13;
  v16 = v14 ^ [(NSString *)self->_secureCloudUpgradeToken hash];
  v17 = v16 ^ [(NSData *)self->_sentInvitation hash];
  return v15 ^ v17 ^ [(NSData *)self->_receivedInvitation hash];
}

- (void)mergeFrom:(id)a3
{
  v27 = *MEMORY[0x277D85DE8];
  v4 = a3;
  if (*(v4 + 14))
  {
    [(ASCodableCloudKitRelationship *)self setUuid:?];
  }

  if (*(v4 + 6))
  {
    [(ASCodableCloudKitRelationship *)self setIncomingHandshakeToken:?];
  }

  if (*(v4 + 7))
  {
    [(ASCodableCloudKitRelationship *)self setOutgoingHandshakeToken:?];
  }

  if (*(v4 + 4))
  {
    [(ASCodableCloudKitRelationship *)self setCloudKitAddress:?];
  }

  v23 = 0u;
  v24 = 0u;
  v21 = 0u;
  v22 = 0u;
  v5 = *(v4 + 3);
  v6 = [v5 countByEnumeratingWithState:&v21 objects:v26 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v22;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v22 != v8)
        {
          objc_enumerationMutation(v5);
        }

        [(ASCodableCloudKitRelationship *)self addAddresses:*(*(&v21 + 1) + 8 * i)];
      }

      v7 = [v5 countByEnumeratingWithState:&v21 objects:v26 count:16];
    }

    while (v7);
  }

  if (*(v4 + 8))
  {
    [(ASCodableCloudKitRelationship *)self setPreferredReachableAddress:?];
  }

  if (*(v4 + 9))
  {
    [(ASCodableCloudKitRelationship *)self setPreferredReachableService:?];
  }

  v19 = 0u;
  v20 = 0u;
  v17 = 0u;
  v18 = 0u;
  v10 = *(v4 + 5);
  v11 = [v10 countByEnumeratingWithState:&v17 objects:v25 count:16];
  if (v11)
  {
    v12 = v11;
    v13 = *v18;
    do
    {
      for (j = 0; j != v12; ++j)
      {
        if (*v18 != v13)
        {
          objc_enumerationMutation(v10);
        }

        [(ASCodableCloudKitRelationship *)self addEvents:*(*(&v17 + 1) + 8 * j), v17];
      }

      v12 = [v10 countByEnumeratingWithState:&v17 objects:v25 count:16];
    }

    while (v12);
  }

  v15 = *(v4 + 120);
  if ((v15 & 2) != 0)
  {
    self->_eventCount = *(v4 + 2);
    *&self->_has |= 2u;
    v15 = *(v4 + 120);
    if ((v15 & 4) == 0)
    {
LABEL_29:
      if ((v15 & 8) == 0)
      {
        goto LABEL_30;
      }

      goto LABEL_41;
    }
  }

  else if ((*(v4 + 120) & 4) == 0)
  {
    goto LABEL_29;
  }

  self->_supportedPhoneFeatures = *(v4 + 26);
  *&self->_has |= 4u;
  v15 = *(v4 + 120);
  if ((v15 & 8) == 0)
  {
LABEL_30:
    if ((v15 & 1) == 0)
    {
      goto LABEL_32;
    }

    goto LABEL_31;
  }

LABEL_41:
  self->_supportedWatchFeatures = *(v4 + 27);
  *&self->_has |= 8u;
  if (*(v4 + 120))
  {
LABEL_31:
    self->_cloudType = *(v4 + 1);
    *&self->_has |= 1u;
  }

LABEL_32:
  if (*(v4 + 11))
  {
    [(ASCodableCloudKitRelationship *)self setSecureCloudUpgradeToken:?];
  }

  if (*(v4 + 12))
  {
    [(ASCodableCloudKitRelationship *)self setSentInvitation:?];
  }

  if (*(v4 + 10))
  {
    [(ASCodableCloudKitRelationship *)self setReceivedInvitation:?];
  }

  v16 = *MEMORY[0x277D85DE8];
}

@end