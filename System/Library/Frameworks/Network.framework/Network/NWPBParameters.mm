@interface NWPBParameters
- (BOOL)isEqual:(id)equal;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (id)dictionaryRepresentation;
- (unint64_t)hash;
- (void)dealloc;
- (void)writeTo:(id)to;
@end

@implementation NWPBParameters

- (unint64_t)hash
{
  v3 = [(NSString *)self->_account hash];
  v4 = [(NSString *)self->_effectiveBundleID hash];
  v5 = [(NSString *)self->_effectiveProcessUUID hash];
  v6 = [(NSString *)self->_realProcessUUID hash];
  v7 = [(NSString *)self->_url hash];
  has = self->_has;
  if ((has & 4) != 0)
  {
    v9 = 2654435761 * self->_ipProtocol;
    if (has)
    {
LABEL_3:
      v10 = 2654435761 * self->_addressFamily;
      if ((has & 0x20) != 0)
      {
        goto LABEL_4;
      }

      goto LABEL_19;
    }
  }

  else
  {
    v9 = 0;
    if (has)
    {
      goto LABEL_3;
    }
  }

  v10 = 0;
  if ((has & 0x20) != 0)
  {
LABEL_4:
    v11 = 2654435761 * self->_trafficClass;
    if ((has & 2) != 0)
    {
      goto LABEL_5;
    }

    goto LABEL_20;
  }

LABEL_19:
  v11 = 0;
  if ((has & 2) != 0)
  {
LABEL_5:
    v12 = 2654435761 * self->_dataMode;
    if ((has & 0x10) != 0)
    {
      goto LABEL_6;
    }

    goto LABEL_21;
  }

LABEL_20:
  v12 = 0;
  if ((has & 0x10) != 0)
  {
LABEL_6:
    v13 = 2654435761 * self->_requiredInterfaceType;
    if ((*&self->_has & 0x400) != 0)
    {
      goto LABEL_7;
    }

    goto LABEL_22;
  }

LABEL_21:
  v13 = 0;
  if ((*&self->_has & 0x400) != 0)
  {
LABEL_7:
    v14 = 2654435761 * self->_prohibitExpensive;
    if ((has & 0x40) != 0)
    {
      goto LABEL_8;
    }

    goto LABEL_23;
  }

LABEL_22:
  v14 = 0;
  if ((has & 0x40) != 0)
  {
LABEL_8:
    v15 = 2654435761 * self->_fastOpen;
    if ((*&self->_has & 0x800) != 0)
    {
      goto LABEL_9;
    }

    goto LABEL_24;
  }

LABEL_23:
  v15 = 0;
  if ((*&self->_has & 0x800) != 0)
  {
LABEL_9:
    v16 = 2654435761 * self->_reduceBuffering;
    if ((*&self->_has & 0x100) != 0)
    {
      goto LABEL_10;
    }

    goto LABEL_25;
  }

LABEL_24:
  v16 = 0;
  if ((*&self->_has & 0x100) != 0)
  {
LABEL_10:
    v17 = 2654435761 * self->_longOutstandingQueries;
    if ((*&self->_has & 0x2000) != 0)
    {
      goto LABEL_11;
    }

    goto LABEL_26;
  }

LABEL_25:
  v17 = 0;
  if ((*&self->_has & 0x2000) != 0)
  {
LABEL_11:
    v18 = 2654435761 * self->_useAWDL;
    if ((*&self->_has & 0x4000) != 0)
    {
      goto LABEL_12;
    }

    goto LABEL_27;
  }

LABEL_26:
  v18 = 0;
  if ((*&self->_has & 0x4000) != 0)
  {
LABEL_12:
    v19 = 2654435761 * self->_useP2P;
    if ((*&self->_has & 0x1000) != 0)
    {
      goto LABEL_13;
    }

    goto LABEL_28;
  }

LABEL_27:
  v19 = 0;
  if ((*&self->_has & 0x1000) != 0)
  {
LABEL_13:
    v20 = 2654435761 * self->_reuseLocalAddress;
    if ((*&self->_has & 0x200) != 0)
    {
      goto LABEL_14;
    }

    goto LABEL_29;
  }

LABEL_28:
  v20 = 0;
  if ((*&self->_has & 0x200) != 0)
  {
LABEL_14:
    v21 = 2654435761 * self->_noFallback;
    if ((has & 8) != 0)
    {
      goto LABEL_15;
    }

LABEL_30:
    v22 = 0;
    if ((has & 0x80) != 0)
    {
      goto LABEL_16;
    }

LABEL_31:
    v23 = 0;
    goto LABEL_32;
  }

LABEL_29:
  v21 = 0;
  if ((has & 8) == 0)
  {
    goto LABEL_30;
  }

LABEL_15:
  v22 = 2654435761 * self->_multipathService;
  if ((has & 0x80) == 0)
  {
    goto LABEL_31;
  }

LABEL_16:
  v23 = 2654435761 * self->_keepalive;
LABEL_32:
  v24 = v4 ^ v3 ^ v5 ^ v6 ^ v7 ^ v9 ^ v10;
  v25 = v11 ^ v12 ^ v13 ^ v14 ^ v15 ^ v16 ^ v17 ^ v18 ^ v19 ^ v20 ^ v21 ^ v22 ^ v23 ^ [(NWPBEndpoint *)self->_localEndpoint hash];
  v26 = v24 ^ v25 ^ [(NWPBInterface *)self->_requiredInterface hash];
  v27 = PBRepeatedInt32Hash();
  v28 = v27 ^ PBRepeatedInt32Hash();
  v29 = v28 ^ [(NSMutableArray *)self->_prohibitedInterfaces hash];
  v30 = v29 ^ [(NSMutableArray *)self->_prohibitedAgents hash];
  v31 = v30 ^ [(NSMutableArray *)self->_requiredAgents hash];
  v32 = v26 ^ v31 ^ [(NSMutableArray *)self->_preferredAgents hash];
  return v32 ^ [(NSData *)self->_metadata hash];
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (![equalCopy isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_130;
  }

  account = self->_account;
  if (account | *(equalCopy + 7))
  {
    if (![(NSString *)account isEqual:?])
    {
      goto LABEL_130;
    }
  }

  effectiveBundleID = self->_effectiveBundleID;
  if (effectiveBundleID | *(equalCopy + 9))
  {
    if (![(NSString *)effectiveBundleID isEqual:?])
    {
      goto LABEL_130;
    }
  }

  effectiveProcessUUID = self->_effectiveProcessUUID;
  if (effectiveProcessUUID | *(equalCopy + 10))
  {
    if (![(NSString *)effectiveProcessUUID isEqual:?])
    {
      goto LABEL_130;
    }
  }

  realProcessUUID = self->_realProcessUUID;
  if (realProcessUUID | *(equalCopy + 18))
  {
    if (![(NSString *)realProcessUUID isEqual:?])
    {
      goto LABEL_130;
    }
  }

  url = self->_url;
  if (url | *(equalCopy + 22))
  {
    if (![(NSString *)url isEqual:?])
    {
      goto LABEL_130;
    }
  }

  has = self->_has;
  v11 = *(equalCopy + 98);
  if ((has & 4) != 0)
  {
    if ((v11 & 4) == 0 || self->_ipProtocol != *(equalCopy + 22))
    {
      goto LABEL_130;
    }
  }

  else if ((v11 & 4) != 0)
  {
    goto LABEL_130;
  }

  if (has)
  {
    if ((v11 & 1) == 0 || self->_addressFamily != *(equalCopy + 16))
    {
      goto LABEL_130;
    }
  }

  else if (v11)
  {
    goto LABEL_130;
  }

  if ((has & 0x20) != 0)
  {
    if ((v11 & 0x20) == 0 || self->_trafficClass != *(equalCopy + 43))
    {
      goto LABEL_130;
    }
  }

  else if ((v11 & 0x20) != 0)
  {
    goto LABEL_130;
  }

  if ((has & 2) != 0)
  {
    if ((v11 & 2) == 0 || self->_dataMode != *(equalCopy + 17))
    {
      goto LABEL_130;
    }
  }

  else if ((v11 & 2) != 0)
  {
    goto LABEL_130;
  }

  if ((has & 0x10) != 0)
  {
    if ((v11 & 0x10) == 0 || self->_requiredInterfaceType != *(equalCopy + 42))
    {
      goto LABEL_130;
    }
  }

  else if ((v11 & 0x10) != 0)
  {
    goto LABEL_130;
  }

  if ((*&self->_has & 0x400) != 0)
  {
    if ((*(equalCopy + 98) & 0x400) == 0)
    {
      goto LABEL_130;
    }

    if (self->_prohibitExpensive)
    {
      if ((*(equalCopy + 188) & 1) == 0)
      {
        goto LABEL_130;
      }
    }

    else if (*(equalCopy + 188))
    {
      goto LABEL_130;
    }
  }

  else if ((*(equalCopy + 98) & 0x400) != 0)
  {
    goto LABEL_130;
  }

  if ((has & 0x40) != 0)
  {
    if ((v11 & 0x40) == 0)
    {
      goto LABEL_130;
    }

    if (self->_fastOpen)
    {
      if ((*(equalCopy + 184) & 1) == 0)
      {
        goto LABEL_130;
      }
    }

    else if (*(equalCopy + 184))
    {
      goto LABEL_130;
    }
  }

  else if ((v11 & 0x40) != 0)
  {
    goto LABEL_130;
  }

  if ((*&self->_has & 0x800) != 0)
  {
    if ((*(equalCopy + 98) & 0x800) == 0)
    {
      goto LABEL_130;
    }

    if (self->_reduceBuffering)
    {
      if ((*(equalCopy + 189) & 1) == 0)
      {
        goto LABEL_130;
      }
    }

    else if (*(equalCopy + 189))
    {
      goto LABEL_130;
    }
  }

  else if ((*(equalCopy + 98) & 0x800) != 0)
  {
    goto LABEL_130;
  }

  if ((*&self->_has & 0x100) != 0)
  {
    if ((*(equalCopy + 98) & 0x100) == 0)
    {
      goto LABEL_130;
    }

    if (self->_longOutstandingQueries)
    {
      if ((*(equalCopy + 186) & 1) == 0)
      {
        goto LABEL_130;
      }
    }

    else if (*(equalCopy + 186))
    {
      goto LABEL_130;
    }
  }

  else if ((*(equalCopy + 98) & 0x100) != 0)
  {
    goto LABEL_130;
  }

  if ((*&self->_has & 0x2000) != 0)
  {
    if ((*(equalCopy + 98) & 0x2000) == 0)
    {
      goto LABEL_130;
    }

    if (self->_useAWDL)
    {
      if ((*(equalCopy + 191) & 1) == 0)
      {
        goto LABEL_130;
      }
    }

    else if (*(equalCopy + 191))
    {
      goto LABEL_130;
    }
  }

  else if ((*(equalCopy + 98) & 0x2000) != 0)
  {
    goto LABEL_130;
  }

  if ((*&self->_has & 0x4000) != 0)
  {
    if ((*(equalCopy + 98) & 0x4000) == 0)
    {
      goto LABEL_130;
    }

    if (self->_useP2P)
    {
      if ((*(equalCopy + 192) & 1) == 0)
      {
        goto LABEL_130;
      }
    }

    else if (*(equalCopy + 192))
    {
      goto LABEL_130;
    }
  }

  else if ((*(equalCopy + 98) & 0x4000) != 0)
  {
    goto LABEL_130;
  }

  if ((*&self->_has & 0x1000) != 0)
  {
    if ((*(equalCopy + 98) & 0x1000) == 0)
    {
      goto LABEL_130;
    }

    if (self->_reuseLocalAddress)
    {
      if ((*(equalCopy + 190) & 1) == 0)
      {
        goto LABEL_130;
      }
    }

    else if (*(equalCopy + 190))
    {
      goto LABEL_130;
    }
  }

  else if ((*(equalCopy + 98) & 0x1000) != 0)
  {
    goto LABEL_130;
  }

  if ((*&self->_has & 0x200) != 0)
  {
    if ((*(equalCopy + 98) & 0x200) == 0)
    {
      goto LABEL_130;
    }

    if (self->_noFallback)
    {
      if ((*(equalCopy + 187) & 1) == 0)
      {
        goto LABEL_130;
      }
    }

    else if (*(equalCopy + 187))
    {
      goto LABEL_130;
    }
  }

  else if ((*(equalCopy + 98) & 0x200) != 0)
  {
    goto LABEL_130;
  }

  if ((has & 8) != 0)
  {
    if ((v11 & 8) == 0 || self->_multipathService != *(equalCopy + 28))
    {
      goto LABEL_130;
    }
  }

  else if ((v11 & 8) != 0)
  {
    goto LABEL_130;
  }

  if ((has & 0x80) == 0)
  {
    if ((v11 & 0x80) == 0)
    {
      goto LABEL_114;
    }

LABEL_130:
    v19 = 0;
    goto LABEL_131;
  }

  if ((v11 & 0x80) == 0)
  {
    goto LABEL_130;
  }

  if (!self->_keepalive)
  {
    if ((*(equalCopy + 185) & 1) == 0)
    {
      goto LABEL_114;
    }

    goto LABEL_130;
  }

  if ((*(equalCopy + 185) & 1) == 0)
  {
    goto LABEL_130;
  }

LABEL_114:
  localEndpoint = self->_localEndpoint;
  if (localEndpoint | *(equalCopy + 12) && ![(NWPBEndpoint *)localEndpoint isEqual:?])
  {
    goto LABEL_130;
  }

  requiredInterface = self->_requiredInterface;
  if (requiredInterface | *(equalCopy + 20))
  {
    if (![(NWPBInterface *)requiredInterface isEqual:?])
    {
      goto LABEL_130;
    }
  }

  if (!PBRepeatedInt32IsEqual())
  {
    goto LABEL_130;
  }

  if (!PBRepeatedInt32IsEqual())
  {
    goto LABEL_130;
  }

  prohibitedInterfaces = self->_prohibitedInterfaces;
  if (prohibitedInterfaces | *(equalCopy + 17))
  {
    if (![(NSMutableArray *)prohibitedInterfaces isEqual:?])
    {
      goto LABEL_130;
    }
  }

  prohibitedAgents = self->_prohibitedAgents;
  if (prohibitedAgents | *(equalCopy + 16))
  {
    if (![(NSMutableArray *)prohibitedAgents isEqual:?])
    {
      goto LABEL_130;
    }
  }

  requiredAgents = self->_requiredAgents;
  if (requiredAgents | *(equalCopy + 19))
  {
    if (![(NSMutableArray *)requiredAgents isEqual:?])
    {
      goto LABEL_130;
    }
  }

  preferredAgents = self->_preferredAgents;
  if (preferredAgents | *(equalCopy + 15))
  {
    if (![(NSMutableArray *)preferredAgents isEqual:?])
    {
      goto LABEL_130;
    }
  }

  metadata = self->_metadata;
  if (metadata | *(equalCopy + 13))
  {
    v19 = [(NSData *)metadata isEqual:?];
  }

  else
  {
    v19 = 1;
  }

LABEL_131:

  return v19;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v80 = *MEMORY[0x1E69E9840];
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
  v6 = [(NSString *)self->_account copyWithZone:zone];
  v7 = *(v5 + 56);
  *(v5 + 56) = v6;

  v8 = [(NSString *)self->_effectiveBundleID copyWithZone:zone];
  v9 = *(v5 + 72);
  *(v5 + 72) = v8;

  v10 = [(NSString *)self->_effectiveProcessUUID copyWithZone:zone];
  v11 = *(v5 + 80);
  *(v5 + 80) = v10;

  v12 = [(NSString *)self->_realProcessUUID copyWithZone:zone];
  v13 = *(v5 + 144);
  *(v5 + 144) = v12;

  v14 = [(NSString *)self->_url copyWithZone:zone];
  v15 = *(v5 + 176);
  *(v5 + 176) = v14;

  has = self->_has;
  if ((has & 4) != 0)
  {
    *(v5 + 88) = self->_ipProtocol;
    *(v5 + 196) |= 4u;
    has = self->_has;
    if ((has & 1) == 0)
    {
LABEL_3:
      if ((has & 0x20) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_56;
    }
  }

  else if ((has & 1) == 0)
  {
    goto LABEL_3;
  }

  *(v5 + 64) = self->_addressFamily;
  *(v5 + 196) |= 1u;
  has = self->_has;
  if ((has & 0x20) == 0)
  {
LABEL_4:
    if ((has & 2) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_57;
  }

LABEL_56:
  *(v5 + 172) = self->_trafficClass;
  *(v5 + 196) |= 0x20u;
  has = self->_has;
  if ((has & 2) == 0)
  {
LABEL_5:
    if ((has & 0x10) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_58;
  }

LABEL_57:
  *(v5 + 68) = self->_dataMode;
  *(v5 + 196) |= 2u;
  has = self->_has;
  if ((has & 0x10) == 0)
  {
LABEL_6:
    if ((has & 0x400) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_59;
  }

LABEL_58:
  *(v5 + 168) = self->_requiredInterfaceType;
  *(v5 + 196) |= 0x10u;
  has = self->_has;
  if ((has & 0x400) == 0)
  {
LABEL_7:
    if ((has & 0x40) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_60;
  }

LABEL_59:
  *(v5 + 188) = self->_prohibitExpensive;
  *(v5 + 196) |= 0x400u;
  has = self->_has;
  if ((has & 0x40) == 0)
  {
LABEL_8:
    if ((has & 0x800) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_61;
  }

LABEL_60:
  *(v5 + 184) = self->_fastOpen;
  *(v5 + 196) |= 0x40u;
  has = self->_has;
  if ((has & 0x800) == 0)
  {
LABEL_9:
    if ((has & 0x100) == 0)
    {
      goto LABEL_10;
    }

    goto LABEL_62;
  }

LABEL_61:
  *(v5 + 189) = self->_reduceBuffering;
  *(v5 + 196) |= 0x800u;
  has = self->_has;
  if ((has & 0x100) == 0)
  {
LABEL_10:
    if ((has & 0x2000) == 0)
    {
      goto LABEL_11;
    }

    goto LABEL_63;
  }

LABEL_62:
  *(v5 + 186) = self->_longOutstandingQueries;
  *(v5 + 196) |= 0x100u;
  has = self->_has;
  if ((has & 0x2000) == 0)
  {
LABEL_11:
    if ((has & 0x4000) == 0)
    {
      goto LABEL_12;
    }

    goto LABEL_64;
  }

LABEL_63:
  *(v5 + 191) = self->_useAWDL;
  *(v5 + 196) |= 0x2000u;
  has = self->_has;
  if ((has & 0x4000) == 0)
  {
LABEL_12:
    if ((has & 0x1000) == 0)
    {
      goto LABEL_13;
    }

    goto LABEL_65;
  }

LABEL_64:
  *(v5 + 192) = self->_useP2P;
  *(v5 + 196) |= 0x4000u;
  has = self->_has;
  if ((has & 0x1000) == 0)
  {
LABEL_13:
    if ((has & 0x200) == 0)
    {
      goto LABEL_14;
    }

    goto LABEL_66;
  }

LABEL_65:
  *(v5 + 190) = self->_reuseLocalAddress;
  *(v5 + 196) |= 0x1000u;
  has = self->_has;
  if ((has & 0x200) == 0)
  {
LABEL_14:
    if ((has & 8) == 0)
    {
      goto LABEL_15;
    }

    goto LABEL_67;
  }

LABEL_66:
  *(v5 + 187) = self->_noFallback;
  *(v5 + 196) |= 0x200u;
  has = self->_has;
  if ((has & 8) == 0)
  {
LABEL_15:
    if ((has & 0x80) == 0)
    {
      goto LABEL_17;
    }

    goto LABEL_16;
  }

LABEL_67:
  *(v5 + 112) = self->_multipathService;
  *(v5 + 196) |= 8u;
  if ((*&self->_has & 0x80) != 0)
  {
LABEL_16:
    *(v5 + 185) = self->_keepalive;
    *(v5 + 196) |= 0x80u;
  }

LABEL_17:
  v17 = [(NWPBEndpoint *)self->_localEndpoint copyWithZone:zone];
  v18 = *(v5 + 96);
  *(v5 + 96) = v17;

  v19 = [(NWPBInterface *)self->_requiredInterface copyWithZone:zone];
  v20 = *(v5 + 160);
  *(v5 + 160) = v19;

  PBRepeatedInt32Copy();
  PBRepeatedInt32Copy();
  v74 = 0u;
  v75 = 0u;
  v72 = 0u;
  v73 = 0u;
  v21 = self->_prohibitedInterfaces;
  v22 = [(NSMutableArray *)v21 countByEnumeratingWithState:&v72 objects:v79 count:16];
  if (v22)
  {
    v23 = v22;
    v24 = *v73;
    do
    {
      for (i = 0; i != v23; ++i)
      {
        if (*v73 != v24)
        {
          objc_enumerationMutation(v21);
        }

        v26 = [*(*(&v72 + 1) + 8 * i) copyWithZone:zone];
        v27 = *(v5 + 136);
        if (!v27)
        {
          v28 = objc_alloc_init(MEMORY[0x1E695DF70]);
          v29 = *(v5 + 136);
          *(v5 + 136) = v28;

          v27 = *(v5 + 136);
        }

        [v27 addObject:v26];
      }

      v23 = [(NSMutableArray *)v21 countByEnumeratingWithState:&v72 objects:v79 count:16];
    }

    while (v23);
  }

  v70 = 0u;
  v71 = 0u;
  v68 = 0u;
  v69 = 0u;
  v30 = self->_prohibitedAgents;
  v31 = [(NSMutableArray *)v30 countByEnumeratingWithState:&v68 objects:v78 count:16];
  if (v31)
  {
    v32 = v31;
    v33 = *v69;
    do
    {
      for (j = 0; j != v32; ++j)
      {
        if (*v69 != v33)
        {
          objc_enumerationMutation(v30);
        }

        v35 = [*(*(&v68 + 1) + 8 * j) copyWithZone:zone];
        v36 = *(v5 + 128);
        if (!v36)
        {
          v37 = objc_alloc_init(MEMORY[0x1E695DF70]);
          v38 = *(v5 + 128);
          *(v5 + 128) = v37;

          v36 = *(v5 + 128);
        }

        [v36 addObject:v35];
      }

      v32 = [(NSMutableArray *)v30 countByEnumeratingWithState:&v68 objects:v78 count:16];
    }

    while (v32);
  }

  v66 = 0u;
  v67 = 0u;
  v64 = 0u;
  v65 = 0u;
  v39 = self->_requiredAgents;
  v40 = [(NSMutableArray *)v39 countByEnumeratingWithState:&v64 objects:v77 count:16];
  if (v40)
  {
    v41 = v40;
    v42 = *v65;
    do
    {
      for (k = 0; k != v41; ++k)
      {
        if (*v65 != v42)
        {
          objc_enumerationMutation(v39);
        }

        v44 = [*(*(&v64 + 1) + 8 * k) copyWithZone:zone];
        v45 = *(v5 + 152);
        if (!v45)
        {
          v46 = objc_alloc_init(MEMORY[0x1E695DF70]);
          v47 = *(v5 + 152);
          *(v5 + 152) = v46;

          v45 = *(v5 + 152);
        }

        [v45 addObject:v44];
      }

      v41 = [(NSMutableArray *)v39 countByEnumeratingWithState:&v64 objects:v77 count:16];
    }

    while (v41);
  }

  v62 = 0u;
  v63 = 0u;
  v60 = 0u;
  v61 = 0u;
  v48 = self->_preferredAgents;
  v49 = [(NSMutableArray *)v48 countByEnumeratingWithState:&v60 objects:v76 count:16];
  if (v49)
  {
    v50 = v49;
    v51 = *v61;
    do
    {
      for (m = 0; m != v50; ++m)
      {
        if (*v61 != v51)
        {
          objc_enumerationMutation(v48);
        }

        v53 = [*(*(&v60 + 1) + 8 * m) copyWithZone:{zone, v60}];
        v54 = *(v5 + 120);
        if (!v54)
        {
          v55 = objc_alloc_init(MEMORY[0x1E695DF70]);
          v56 = *(v5 + 120);
          *(v5 + 120) = v55;

          v54 = *(v5 + 120);
        }

        [v54 addObject:v53];
      }

      v50 = [(NSMutableArray *)v48 countByEnumeratingWithState:&v60 objects:v76 count:16];
    }

    while (v50);
  }

  v57 = [(NSData *)self->_metadata copyWithZone:zone];
  v58 = *(v5 + 104);
  *(v5 + 104) = v57;

  return v5;
}

- (void)writeTo:(id)to
{
  v48 = *MEMORY[0x1E69E9840];
  toCopy = to;
  if (self->_account)
  {
    PBDataWriterWriteStringField();
  }

  if (self->_effectiveBundleID)
  {
    PBDataWriterWriteStringField();
  }

  if (self->_effectiveProcessUUID)
  {
    PBDataWriterWriteStringField();
  }

  if (self->_realProcessUUID)
  {
    PBDataWriterWriteStringField();
  }

  if (self->_url)
  {
    PBDataWriterWriteStringField();
  }

  has = self->_has;
  if ((has & 4) != 0)
  {
    PBDataWriterWriteUint32Field();
    has = self->_has;
    if ((has & 1) == 0)
    {
LABEL_13:
      if ((has & 0x20) == 0)
      {
        goto LABEL_14;
      }

      goto LABEL_70;
    }
  }

  else if ((has & 1) == 0)
  {
    goto LABEL_13;
  }

  PBDataWriterWriteUint32Field();
  has = self->_has;
  if ((has & 0x20) == 0)
  {
LABEL_14:
    if ((has & 2) == 0)
    {
      goto LABEL_15;
    }

    goto LABEL_71;
  }

LABEL_70:
  PBDataWriterWriteUint32Field();
  has = self->_has;
  if ((has & 2) == 0)
  {
LABEL_15:
    if ((has & 0x10) == 0)
    {
      goto LABEL_16;
    }

    goto LABEL_72;
  }

LABEL_71:
  PBDataWriterWriteInt32Field();
  has = self->_has;
  if ((has & 0x10) == 0)
  {
LABEL_16:
    if ((has & 0x400) == 0)
    {
      goto LABEL_17;
    }

    goto LABEL_73;
  }

LABEL_72:
  PBDataWriterWriteInt32Field();
  has = self->_has;
  if ((has & 0x400) == 0)
  {
LABEL_17:
    if ((has & 0x40) == 0)
    {
      goto LABEL_18;
    }

    goto LABEL_74;
  }

LABEL_73:
  PBDataWriterWriteBOOLField();
  has = self->_has;
  if ((has & 0x40) == 0)
  {
LABEL_18:
    if ((has & 0x800) == 0)
    {
      goto LABEL_19;
    }

    goto LABEL_75;
  }

LABEL_74:
  PBDataWriterWriteBOOLField();
  has = self->_has;
  if ((has & 0x800) == 0)
  {
LABEL_19:
    if ((has & 0x100) == 0)
    {
      goto LABEL_20;
    }

    goto LABEL_76;
  }

LABEL_75:
  PBDataWriterWriteBOOLField();
  has = self->_has;
  if ((has & 0x100) == 0)
  {
LABEL_20:
    if ((has & 0x2000) == 0)
    {
      goto LABEL_21;
    }

    goto LABEL_77;
  }

LABEL_76:
  PBDataWriterWriteBOOLField();
  has = self->_has;
  if ((has & 0x2000) == 0)
  {
LABEL_21:
    if ((has & 0x4000) == 0)
    {
      goto LABEL_22;
    }

    goto LABEL_78;
  }

LABEL_77:
  PBDataWriterWriteBOOLField();
  has = self->_has;
  if ((has & 0x4000) == 0)
  {
LABEL_22:
    if ((has & 0x1000) == 0)
    {
      goto LABEL_23;
    }

    goto LABEL_79;
  }

LABEL_78:
  PBDataWriterWriteBOOLField();
  has = self->_has;
  if ((has & 0x1000) == 0)
  {
LABEL_23:
    if ((has & 0x200) == 0)
    {
      goto LABEL_24;
    }

    goto LABEL_80;
  }

LABEL_79:
  PBDataWriterWriteBOOLField();
  has = self->_has;
  if ((has & 0x200) == 0)
  {
LABEL_24:
    if ((has & 8) == 0)
    {
      goto LABEL_25;
    }

    goto LABEL_81;
  }

LABEL_80:
  PBDataWriterWriteBOOLField();
  has = self->_has;
  if ((has & 8) == 0)
  {
LABEL_25:
    if ((has & 0x80) == 0)
    {
      goto LABEL_27;
    }

    goto LABEL_26;
  }

LABEL_81:
  PBDataWriterWriteUint32Field();
  if ((*&self->_has & 0x80) != 0)
  {
LABEL_26:
    PBDataWriterWriteBOOLField();
  }

LABEL_27:
  if (self->_localEndpoint)
  {
    PBDataWriterWriteSubmessage();
  }

  if (self->_requiredInterface)
  {
    PBDataWriterWriteSubmessage();
  }

  if (self->_prohibitedInterfaceTypes.count)
  {
    v6 = 0;
    do
    {
      PBDataWriterWriteInt32Field();
      ++v6;
    }

    while (v6 < self->_prohibitedInterfaceTypes.count);
  }

  if (self->_prohibitedInterfaceSubTypes.count)
  {
    v7 = 0;
    do
    {
      PBDataWriterWriteInt32Field();
      ++v7;
    }

    while (v7 < self->_prohibitedInterfaceSubTypes.count);
  }

  v42 = 0u;
  v43 = 0u;
  v40 = 0u;
  v41 = 0u;
  v8 = self->_prohibitedInterfaces;
  v9 = [(NSMutableArray *)v8 countByEnumeratingWithState:&v40 objects:v47 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v41;
    do
    {
      for (i = 0; i != v10; ++i)
      {
        if (*v41 != v11)
        {
          objc_enumerationMutation(v8);
        }

        PBDataWriterWriteSubmessage();
      }

      v10 = [(NSMutableArray *)v8 countByEnumeratingWithState:&v40 objects:v47 count:16];
    }

    while (v10);
  }

  v38 = 0u;
  v39 = 0u;
  v36 = 0u;
  v37 = 0u;
  v13 = self->_prohibitedAgents;
  v14 = [(NSMutableArray *)v13 countByEnumeratingWithState:&v36 objects:v46 count:16];
  if (v14)
  {
    v15 = v14;
    v16 = *v37;
    do
    {
      for (j = 0; j != v15; ++j)
      {
        if (*v37 != v16)
        {
          objc_enumerationMutation(v13);
        }

        PBDataWriterWriteSubmessage();
      }

      v15 = [(NSMutableArray *)v13 countByEnumeratingWithState:&v36 objects:v46 count:16];
    }

    while (v15);
  }

  v34 = 0u;
  v35 = 0u;
  v32 = 0u;
  v33 = 0u;
  v18 = self->_requiredAgents;
  v19 = [(NSMutableArray *)v18 countByEnumeratingWithState:&v32 objects:v45 count:16];
  if (v19)
  {
    v20 = v19;
    v21 = *v33;
    do
    {
      for (k = 0; k != v20; ++k)
      {
        if (*v33 != v21)
        {
          objc_enumerationMutation(v18);
        }

        PBDataWriterWriteSubmessage();
      }

      v20 = [(NSMutableArray *)v18 countByEnumeratingWithState:&v32 objects:v45 count:16];
    }

    while (v20);
  }

  v30 = 0u;
  v31 = 0u;
  v28 = 0u;
  v29 = 0u;
  v23 = self->_preferredAgents;
  v24 = [(NSMutableArray *)v23 countByEnumeratingWithState:&v28 objects:v44 count:16];
  if (v24)
  {
    v25 = v24;
    v26 = *v29;
    do
    {
      for (m = 0; m != v25; ++m)
      {
        if (*v29 != v26)
        {
          objc_enumerationMutation(v23);
        }

        PBDataWriterWriteSubmessage();
      }

      v25 = [(NSMutableArray *)v23 countByEnumeratingWithState:&v28 objects:v44 count:16];
    }

    while (v25);
  }

  if (self->_metadata)
  {
    PBDataWriterWriteDataField();
  }
}

- (id)dictionaryRepresentation
{
  v93 = *MEMORY[0x1E69E9840];
  dictionary = [MEMORY[0x1E695DF90] dictionary];
  v4 = dictionary;
  account = self->_account;
  if (account)
  {
    [dictionary setObject:account forKey:@"account"];
  }

  effectiveBundleID = self->_effectiveBundleID;
  if (effectiveBundleID)
  {
    [v4 setObject:effectiveBundleID forKey:@"effectiveBundleID"];
  }

  effectiveProcessUUID = self->_effectiveProcessUUID;
  if (effectiveProcessUUID)
  {
    [v4 setObject:effectiveProcessUUID forKey:@"effectiveProcessUUID"];
  }

  realProcessUUID = self->_realProcessUUID;
  if (realProcessUUID)
  {
    [v4 setObject:realProcessUUID forKey:@"realProcessUUID"];
  }

  url = self->_url;
  if (url)
  {
    [v4 setObject:url forKey:@"url"];
  }

  has = self->_has;
  if ((has & 4) != 0)
  {
    v57 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:self->_ipProtocol];
    [v4 setObject:v57 forKey:@"ipProtocol"];

    has = self->_has;
    if ((has & 1) == 0)
    {
LABEL_13:
      if ((has & 0x20) == 0)
      {
        goto LABEL_14;
      }

      goto LABEL_88;
    }
  }

  else if ((has & 1) == 0)
  {
    goto LABEL_13;
  }

  v58 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:self->_addressFamily];
  [v4 setObject:v58 forKey:@"addressFamily"];

  has = self->_has;
  if ((has & 0x20) == 0)
  {
LABEL_14:
    if ((has & 2) == 0)
    {
      goto LABEL_15;
    }

    goto LABEL_89;
  }

LABEL_88:
  v59 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:self->_trafficClass];
  [v4 setObject:v59 forKey:@"trafficClass"];

  has = self->_has;
  if ((has & 2) == 0)
  {
LABEL_15:
    if ((has & 0x10) == 0)
    {
      goto LABEL_16;
    }

    goto LABEL_93;
  }

LABEL_89:
  dataMode = self->_dataMode;
  if (dataMode >= 3)
  {
    v61 = [MEMORY[0x1E696AEC0] stringWithFormat:@"(unknown: %i)", self->_dataMode];
  }

  else
  {
    v61 = off_1E6A31F38[dataMode];
  }

  [v4 setObject:v61 forKey:@"dataMode"];

  has = self->_has;
  if ((has & 0x10) == 0)
  {
LABEL_16:
    if ((has & 0x400) == 0)
    {
      goto LABEL_17;
    }

    goto LABEL_97;
  }

LABEL_93:
  requiredInterfaceType = self->_requiredInterfaceType;
  if (requiredInterfaceType >= 5)
  {
    v63 = [MEMORY[0x1E696AEC0] stringWithFormat:@"(unknown: %i)", self->_requiredInterfaceType];
  }

  else
  {
    v63 = off_1E6A31F50[requiredInterfaceType];
  }

  [v4 setObject:v63 forKey:@"requiredInterfaceType"];

  has = self->_has;
  if ((has & 0x400) == 0)
  {
LABEL_17:
    if ((has & 0x40) == 0)
    {
      goto LABEL_18;
    }

    goto LABEL_98;
  }

LABEL_97:
  v64 = [MEMORY[0x1E696AD98] numberWithBool:self->_prohibitExpensive];
  [v4 setObject:v64 forKey:@"prohibitExpensive"];

  has = self->_has;
  if ((has & 0x40) == 0)
  {
LABEL_18:
    if ((has & 0x800) == 0)
    {
      goto LABEL_19;
    }

    goto LABEL_99;
  }

LABEL_98:
  v65 = [MEMORY[0x1E696AD98] numberWithBool:self->_fastOpen];
  [v4 setObject:v65 forKey:@"fastOpen"];

  has = self->_has;
  if ((has & 0x800) == 0)
  {
LABEL_19:
    if ((has & 0x100) == 0)
    {
      goto LABEL_20;
    }

    goto LABEL_100;
  }

LABEL_99:
  v66 = [MEMORY[0x1E696AD98] numberWithBool:self->_reduceBuffering];
  [v4 setObject:v66 forKey:@"reduceBuffering"];

  has = self->_has;
  if ((has & 0x100) == 0)
  {
LABEL_20:
    if ((has & 0x2000) == 0)
    {
      goto LABEL_21;
    }

    goto LABEL_101;
  }

LABEL_100:
  v67 = [MEMORY[0x1E696AD98] numberWithBool:self->_longOutstandingQueries];
  [v4 setObject:v67 forKey:@"longOutstandingQueries"];

  has = self->_has;
  if ((has & 0x2000) == 0)
  {
LABEL_21:
    if ((has & 0x4000) == 0)
    {
      goto LABEL_22;
    }

    goto LABEL_102;
  }

LABEL_101:
  v68 = [MEMORY[0x1E696AD98] numberWithBool:self->_useAWDL];
  [v4 setObject:v68 forKey:@"useAWDL"];

  has = self->_has;
  if ((has & 0x4000) == 0)
  {
LABEL_22:
    if ((has & 0x1000) == 0)
    {
      goto LABEL_23;
    }

    goto LABEL_103;
  }

LABEL_102:
  v69 = [MEMORY[0x1E696AD98] numberWithBool:self->_useP2P];
  [v4 setObject:v69 forKey:@"useP2P"];

  has = self->_has;
  if ((has & 0x1000) == 0)
  {
LABEL_23:
    if ((has & 0x200) == 0)
    {
      goto LABEL_24;
    }

    goto LABEL_104;
  }

LABEL_103:
  v70 = [MEMORY[0x1E696AD98] numberWithBool:self->_reuseLocalAddress];
  [v4 setObject:v70 forKey:@"reuseLocalAddress"];

  has = self->_has;
  if ((has & 0x200) == 0)
  {
LABEL_24:
    if ((has & 8) == 0)
    {
      goto LABEL_25;
    }

    goto LABEL_105;
  }

LABEL_104:
  v71 = [MEMORY[0x1E696AD98] numberWithBool:self->_noFallback];
  [v4 setObject:v71 forKey:@"noFallback"];

  has = self->_has;
  if ((has & 8) == 0)
  {
LABEL_25:
    if ((has & 0x80) == 0)
    {
      goto LABEL_27;
    }

    goto LABEL_26;
  }

LABEL_105:
  v72 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:self->_multipathService];
  [v4 setObject:v72 forKey:@"multipathService"];

  if ((*&self->_has & 0x80) != 0)
  {
LABEL_26:
    v11 = [MEMORY[0x1E696AD98] numberWithBool:self->_keepalive];
    [v4 setObject:v11 forKey:@"keepalive"];
  }

LABEL_27:
  localEndpoint = self->_localEndpoint;
  if (localEndpoint)
  {
    dictionaryRepresentation = [(NWPBEndpoint *)localEndpoint dictionaryRepresentation];
    [v4 setObject:dictionaryRepresentation forKey:@"localEndpoint"];
  }

  requiredInterface = self->_requiredInterface;
  if (requiredInterface)
  {
    dictionaryRepresentation2 = [(NWPBInterface *)requiredInterface dictionaryRepresentation];
    [v4 setObject:dictionaryRepresentation2 forKey:@"requiredInterface"];
  }

  p_prohibitedInterfaceTypes = &self->_prohibitedInterfaceTypes;
  if (self->_prohibitedInterfaceTypes.count)
  {
    v17 = [MEMORY[0x1E695DF70] arrayWithCapacity:?];
    if (self->_prohibitedInterfaceTypes.count)
    {
      v18 = 0;
      do
      {
        v20 = p_prohibitedInterfaceTypes->list[v18];
        if (v20 < 5)
        {
          v19 = off_1E6A31F50[v20];
        }

        else
        {
          v19 = [MEMORY[0x1E696AEC0] stringWithFormat:@"(unknown: %i)", p_prohibitedInterfaceTypes->list[v18]];
        }

        [v17 addObject:v19];

        ++v18;
      }

      while (v18 < self->_prohibitedInterfaceTypes.count);
    }

    [v4 setObject:v17 forKey:@"prohibitedInterfaceTypes"];
  }

  p_prohibitedInterfaceSubTypes = &self->_prohibitedInterfaceSubTypes;
  if (self->_prohibitedInterfaceSubTypes.count)
  {
    v22 = [MEMORY[0x1E695DF70] arrayWithCapacity:?];
    if (self->_prohibitedInterfaceSubTypes.count)
    {
      v23 = 0;
      do
      {
        v25 = p_prohibitedInterfaceSubTypes->list[v23];
        if (v25 < 3)
        {
          v24 = off_1E6A31F78[v25];
        }

        else
        {
          v24 = [MEMORY[0x1E696AEC0] stringWithFormat:@"(unknown: %i)", p_prohibitedInterfaceSubTypes->list[v23]];
        }

        [v22 addObject:v24];

        ++v23;
      }

      while (v23 < self->_prohibitedInterfaceSubTypes.count);
    }

    [v4 setObject:v22 forKey:@"prohibitedInterfaceSubTypes"];
  }

  if ([(NSMutableArray *)self->_prohibitedInterfaces count])
  {
    v26 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:{-[NSMutableArray count](self->_prohibitedInterfaces, "count")}];
    v85 = 0u;
    v86 = 0u;
    v87 = 0u;
    v88 = 0u;
    v27 = self->_prohibitedInterfaces;
    v28 = [(NSMutableArray *)v27 countByEnumeratingWithState:&v85 objects:v92 count:16];
    if (v28)
    {
      v29 = v28;
      v30 = *v86;
      do
      {
        for (i = 0; i != v29; ++i)
        {
          if (*v86 != v30)
          {
            objc_enumerationMutation(v27);
          }

          dictionaryRepresentation3 = [*(*(&v85 + 1) + 8 * i) dictionaryRepresentation];
          [v26 addObject:dictionaryRepresentation3];
        }

        v29 = [(NSMutableArray *)v27 countByEnumeratingWithState:&v85 objects:v92 count:16];
      }

      while (v29);
    }

    [v4 setObject:v26 forKey:@"prohibitedInterfaces"];
  }

  if ([(NSMutableArray *)self->_prohibitedAgents count])
  {
    v33 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:{-[NSMutableArray count](self->_prohibitedAgents, "count")}];
    v81 = 0u;
    v82 = 0u;
    v83 = 0u;
    v84 = 0u;
    v34 = self->_prohibitedAgents;
    v35 = [(NSMutableArray *)v34 countByEnumeratingWithState:&v81 objects:v91 count:16];
    if (v35)
    {
      v36 = v35;
      v37 = *v82;
      do
      {
        for (j = 0; j != v36; ++j)
        {
          if (*v82 != v37)
          {
            objc_enumerationMutation(v34);
          }

          dictionaryRepresentation4 = [*(*(&v81 + 1) + 8 * j) dictionaryRepresentation];
          [v33 addObject:dictionaryRepresentation4];
        }

        v36 = [(NSMutableArray *)v34 countByEnumeratingWithState:&v81 objects:v91 count:16];
      }

      while (v36);
    }

    [v4 setObject:v33 forKey:@"prohibitedAgents"];
  }

  if ([(NSMutableArray *)self->_requiredAgents count])
  {
    v40 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:{-[NSMutableArray count](self->_requiredAgents, "count")}];
    v77 = 0u;
    v78 = 0u;
    v79 = 0u;
    v80 = 0u;
    v41 = self->_requiredAgents;
    v42 = [(NSMutableArray *)v41 countByEnumeratingWithState:&v77 objects:v90 count:16];
    if (v42)
    {
      v43 = v42;
      v44 = *v78;
      do
      {
        for (k = 0; k != v43; ++k)
        {
          if (*v78 != v44)
          {
            objc_enumerationMutation(v41);
          }

          dictionaryRepresentation5 = [*(*(&v77 + 1) + 8 * k) dictionaryRepresentation];
          [v40 addObject:dictionaryRepresentation5];
        }

        v43 = [(NSMutableArray *)v41 countByEnumeratingWithState:&v77 objects:v90 count:16];
      }

      while (v43);
    }

    [v4 setObject:v40 forKey:@"requiredAgents"];
  }

  if ([(NSMutableArray *)self->_preferredAgents count])
  {
    v47 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:{-[NSMutableArray count](self->_preferredAgents, "count")}];
    v73 = 0u;
    v74 = 0u;
    v75 = 0u;
    v76 = 0u;
    v48 = self->_preferredAgents;
    v49 = [(NSMutableArray *)v48 countByEnumeratingWithState:&v73 objects:v89 count:16];
    if (v49)
    {
      v50 = v49;
      v51 = *v74;
      do
      {
        for (m = 0; m != v50; ++m)
        {
          if (*v74 != v51)
          {
            objc_enumerationMutation(v48);
          }

          dictionaryRepresentation6 = [*(*(&v73 + 1) + 8 * m) dictionaryRepresentation];
          [v47 addObject:dictionaryRepresentation6];
        }

        v50 = [(NSMutableArray *)v48 countByEnumeratingWithState:&v73 objects:v89 count:16];
      }

      while (v50);
    }

    [v4 setObject:v47 forKey:@"preferredAgents"];
  }

  metadata = self->_metadata;
  if (metadata)
  {
    [v4 setObject:metadata forKey:@"metadata"];
  }

  v55 = v4;

  return v4;
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v8.receiver = self;
  v8.super_class = NWPBParameters;
  v4 = [(NWPBParameters *)&v8 description];
  dictionaryRepresentation = [(NWPBParameters *)self dictionaryRepresentation];
  v6 = [v3 stringWithFormat:@"%@ %@", v4, dictionaryRepresentation];

  return v6;
}

- (void)dealloc
{
  PBRepeatedInt32Clear();
  PBRepeatedInt32Clear();
  v3.receiver = self;
  v3.super_class = NWPBParameters;
  [(NWPBParameters *)&v3 dealloc];
}

@end