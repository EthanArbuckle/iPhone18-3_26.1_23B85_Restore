@interface _ADPBProxyTCPInfoMetrics
- (BOOL)isEqual:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (id)dictionaryRepresentation;
- (unint64_t)hash;
- (void)copyTo:(id)a3;
- (void)mergeFrom:(id)a3;
- (void)setHasRttBest:(BOOL)a3;
- (void)setHasRttCurrent:(BOOL)a3;
- (void)setHasRttSmoothed:(BOOL)a3;
- (void)setHasRttVariance:(BOOL)a3;
- (void)setHasRxDuplicateBytes:(BOOL)a3;
- (void)setHasRxOooBytes:(BOOL)a3;
- (void)setHasRxPackets:(BOOL)a3;
- (void)setHasSndBandwidth:(BOOL)a3;
- (void)setHasSynRetransmits:(BOOL)a3;
- (void)setHasTfoSynDataAcked:(BOOL)a3;
- (void)setHasTxBytes:(BOOL)a3;
- (void)setHasTxPackets:(BOOL)a3;
- (void)setHasTxRetransmitBytes:(BOOL)a3;
- (void)setHasTxUnacked:(BOOL)a3;
- (void)writeTo:(id)a3;
@end

@implementation _ADPBProxyTCPInfoMetrics

- (void)mergeFrom:(id)a3
{
  v4 = a3;
  if (*(v4 + 10))
  {
    v6 = v4;
    [(_ADPBProxyTCPInfoMetrics *)self setInterfaceName:?];
    v4 = v6;
  }

  v5 = *(v4 + 56);
  if ((v5 & 0x400) != 0)
  {
    self->_rttCurrent = *(v4 + 23);
    *&self->_has |= 0x400u;
    v5 = *(v4 + 56);
    if ((v5 & 0x800) == 0)
    {
LABEL_5:
      if ((v5 & 0x1000) == 0)
      {
        goto LABEL_6;
      }

      goto LABEL_24;
    }
  }

  else if ((*(v4 + 56) & 0x800) == 0)
  {
    goto LABEL_5;
  }

  self->_rttSmoothed = *(v4 + 24);
  *&self->_has |= 0x800u;
  v5 = *(v4 + 56);
  if ((v5 & 0x1000) == 0)
  {
LABEL_6:
    if ((v5 & 0x200) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_25;
  }

LABEL_24:
  self->_rttVariance = *(v4 + 25);
  *&self->_has |= 0x1000u;
  v5 = *(v4 + 56);
  if ((v5 & 0x200) == 0)
  {
LABEL_7:
    if ((v5 & 0x40) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_26;
  }

LABEL_25:
  self->_rttBest = *(v4 + 22);
  *&self->_has |= 0x200u;
  v5 = *(v4 + 56);
  if ((v5 & 0x40) == 0)
  {
LABEL_8:
    if ((v5 & 0x20) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_27;
  }

LABEL_26:
  self->_txPackets = *(v4 + 7);
  *&self->_has |= 0x40u;
  v5 = *(v4 + 56);
  if ((v5 & 0x20) == 0)
  {
LABEL_9:
    if ((v5 & 0x80) == 0)
    {
      goto LABEL_10;
    }

    goto LABEL_28;
  }

LABEL_27:
  self->_txBytes = *(v4 + 6);
  *&self->_has |= 0x20u;
  v5 = *(v4 + 56);
  if ((v5 & 0x80) == 0)
  {
LABEL_10:
    if ((v5 & 0x100) == 0)
    {
      goto LABEL_11;
    }

    goto LABEL_29;
  }

LABEL_28:
  self->_txRetransmitBytes = *(v4 + 8);
  *&self->_has |= 0x80u;
  v5 = *(v4 + 56);
  if ((v5 & 0x100) == 0)
  {
LABEL_11:
    if ((v5 & 8) == 0)
    {
      goto LABEL_12;
    }

    goto LABEL_30;
  }

LABEL_29:
  self->_txUnacked = *(v4 + 9);
  *&self->_has |= 0x100u;
  v5 = *(v4 + 56);
  if ((v5 & 8) == 0)
  {
LABEL_12:
    if ((v5 & 1) == 0)
    {
      goto LABEL_13;
    }

    goto LABEL_31;
  }

LABEL_30:
  self->_rxPackets = *(v4 + 4);
  *&self->_has |= 8u;
  v5 = *(v4 + 56);
  if ((v5 & 1) == 0)
  {
LABEL_13:
    if ((v5 & 2) == 0)
    {
      goto LABEL_14;
    }

    goto LABEL_32;
  }

LABEL_31:
  self->_rxBytes = *(v4 + 1);
  *&self->_has |= 1u;
  v5 = *(v4 + 56);
  if ((v5 & 2) == 0)
  {
LABEL_14:
    if ((v5 & 4) == 0)
    {
      goto LABEL_15;
    }

    goto LABEL_33;
  }

LABEL_32:
  self->_rxDuplicateBytes = *(v4 + 2);
  *&self->_has |= 2u;
  v5 = *(v4 + 56);
  if ((v5 & 4) == 0)
  {
LABEL_15:
    if ((v5 & 0x10) == 0)
    {
      goto LABEL_16;
    }

    goto LABEL_34;
  }

LABEL_33:
  self->_rxOooBytes = *(v4 + 3);
  *&self->_has |= 4u;
  v5 = *(v4 + 56);
  if ((v5 & 0x10) == 0)
  {
LABEL_16:
    if ((v5 & 0x2000) == 0)
    {
      goto LABEL_17;
    }

    goto LABEL_35;
  }

LABEL_34:
  self->_sndBandwidth = *(v4 + 5);
  *&self->_has |= 0x10u;
  v5 = *(v4 + 56);
  if ((v5 & 0x2000) == 0)
  {
LABEL_17:
    if ((v5 & 0x4000) == 0)
    {
      goto LABEL_19;
    }

    goto LABEL_18;
  }

LABEL_35:
  self->_synRetransmits = *(v4 + 26);
  *&self->_has |= 0x2000u;
  if ((*(v4 + 56) & 0x4000) != 0)
  {
LABEL_18:
    self->_tfoSynDataAcked = *(v4 + 27);
    *&self->_has |= 0x4000u;
  }

LABEL_19:
}

- (unint64_t)hash
{
  v3 = [(NSString *)self->_interfaceName hash];
  has = self->_has;
  if ((has & 0x400) != 0)
  {
    v5 = 2654435761 * self->_rttCurrent;
    if ((*&self->_has & 0x800) != 0)
    {
LABEL_3:
      v6 = 2654435761 * self->_rttSmoothed;
      if ((*&self->_has & 0x1000) != 0)
      {
        goto LABEL_4;
      }

      goto LABEL_19;
    }
  }

  else
  {
    v5 = 0;
    if ((*&self->_has & 0x800) != 0)
    {
      goto LABEL_3;
    }
  }

  v6 = 0;
  if ((*&self->_has & 0x1000) != 0)
  {
LABEL_4:
    v7 = 2654435761 * self->_rttVariance;
    if ((*&self->_has & 0x200) != 0)
    {
      goto LABEL_5;
    }

    goto LABEL_20;
  }

LABEL_19:
  v7 = 0;
  if ((*&self->_has & 0x200) != 0)
  {
LABEL_5:
    v8 = 2654435761 * self->_rttBest;
    if ((has & 0x40) != 0)
    {
      goto LABEL_6;
    }

    goto LABEL_21;
  }

LABEL_20:
  v8 = 0;
  if ((has & 0x40) != 0)
  {
LABEL_6:
    v9 = 2654435761u * self->_txPackets;
    if ((has & 0x20) != 0)
    {
      goto LABEL_7;
    }

    goto LABEL_22;
  }

LABEL_21:
  v9 = 0;
  if ((has & 0x20) != 0)
  {
LABEL_7:
    v10 = 2654435761u * self->_txBytes;
    if ((has & 0x80) != 0)
    {
      goto LABEL_8;
    }

    goto LABEL_23;
  }

LABEL_22:
  v10 = 0;
  if ((has & 0x80) != 0)
  {
LABEL_8:
    v11 = 2654435761u * self->_txRetransmitBytes;
    if ((*&self->_has & 0x100) != 0)
    {
      goto LABEL_9;
    }

    goto LABEL_24;
  }

LABEL_23:
  v11 = 0;
  if ((*&self->_has & 0x100) != 0)
  {
LABEL_9:
    v12 = 2654435761u * self->_txUnacked;
    if ((has & 8) != 0)
    {
      goto LABEL_10;
    }

    goto LABEL_25;
  }

LABEL_24:
  v12 = 0;
  if ((has & 8) != 0)
  {
LABEL_10:
    v13 = 2654435761u * self->_rxPackets;
    if (has)
    {
      goto LABEL_11;
    }

    goto LABEL_26;
  }

LABEL_25:
  v13 = 0;
  if (has)
  {
LABEL_11:
    v14 = 2654435761u * self->_rxBytes;
    if ((has & 2) != 0)
    {
      goto LABEL_12;
    }

    goto LABEL_27;
  }

LABEL_26:
  v14 = 0;
  if ((has & 2) != 0)
  {
LABEL_12:
    v15 = 2654435761u * self->_rxDuplicateBytes;
    if ((has & 4) != 0)
    {
      goto LABEL_13;
    }

    goto LABEL_28;
  }

LABEL_27:
  v15 = 0;
  if ((has & 4) != 0)
  {
LABEL_13:
    v16 = 2654435761u * self->_rxOooBytes;
    if ((has & 0x10) != 0)
    {
      goto LABEL_14;
    }

    goto LABEL_29;
  }

LABEL_28:
  v16 = 0;
  if ((has & 0x10) != 0)
  {
LABEL_14:
    v17 = 2654435761u * self->_sndBandwidth;
    if ((*&self->_has & 0x2000) != 0)
    {
      goto LABEL_15;
    }

LABEL_30:
    v18 = 0;
    if ((*&self->_has & 0x4000) != 0)
    {
      goto LABEL_16;
    }

LABEL_31:
    v19 = 0;
    return v5 ^ v3 ^ v6 ^ v7 ^ v8 ^ v9 ^ v10 ^ v11 ^ v12 ^ v13 ^ v14 ^ v15 ^ v16 ^ v17 ^ v18 ^ v19;
  }

LABEL_29:
  v17 = 0;
  if ((*&self->_has & 0x2000) == 0)
  {
    goto LABEL_30;
  }

LABEL_15:
  v18 = 2654435761 * self->_synRetransmits;
  if ((*&self->_has & 0x4000) == 0)
  {
    goto LABEL_31;
  }

LABEL_16:
  v19 = 2654435761 * self->_tfoSynDataAcked;
  return v5 ^ v3 ^ v6 ^ v7 ^ v8 ^ v9 ^ v10 ^ v11 ^ v12 ^ v13 ^ v14 ^ v15 ^ v16 ^ v17 ^ v18 ^ v19;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (![v4 isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_79;
  }

  interfaceName = self->_interfaceName;
  if (interfaceName | *(v4 + 10))
  {
    if (![(NSString *)interfaceName isEqual:?])
    {
      goto LABEL_79;
    }
  }

  has = self->_has;
  v7 = *(v4 + 56);
  if ((has & 0x400) != 0)
  {
    if ((*(v4 + 56) & 0x400) == 0 || self->_rttCurrent != *(v4 + 23))
    {
      goto LABEL_79;
    }
  }

  else if ((*(v4 + 56) & 0x400) != 0)
  {
LABEL_79:
    v8 = 0;
    goto LABEL_80;
  }

  if ((*&self->_has & 0x800) != 0)
  {
    if ((*(v4 + 56) & 0x800) == 0 || self->_rttSmoothed != *(v4 + 24))
    {
      goto LABEL_79;
    }
  }

  else if ((*(v4 + 56) & 0x800) != 0)
  {
    goto LABEL_79;
  }

  if ((*&self->_has & 0x1000) != 0)
  {
    if ((*(v4 + 56) & 0x1000) == 0 || self->_rttVariance != *(v4 + 25))
    {
      goto LABEL_79;
    }
  }

  else if ((*(v4 + 56) & 0x1000) != 0)
  {
    goto LABEL_79;
  }

  if ((*&self->_has & 0x200) != 0)
  {
    if ((*(v4 + 56) & 0x200) == 0 || self->_rttBest != *(v4 + 22))
    {
      goto LABEL_79;
    }
  }

  else if ((*(v4 + 56) & 0x200) != 0)
  {
    goto LABEL_79;
  }

  if ((has & 0x40) != 0)
  {
    if ((v7 & 0x40) == 0 || self->_txPackets != *(v4 + 7))
    {
      goto LABEL_79;
    }
  }

  else if ((v7 & 0x40) != 0)
  {
    goto LABEL_79;
  }

  if ((has & 0x20) != 0)
  {
    if ((v7 & 0x20) == 0 || self->_txBytes != *(v4 + 6))
    {
      goto LABEL_79;
    }
  }

  else if ((v7 & 0x20) != 0)
  {
    goto LABEL_79;
  }

  if ((has & 0x80) != 0)
  {
    if ((v7 & 0x80) == 0 || self->_txRetransmitBytes != *(v4 + 8))
    {
      goto LABEL_79;
    }
  }

  else if ((v7 & 0x80) != 0)
  {
    goto LABEL_79;
  }

  if ((*&self->_has & 0x100) != 0)
  {
    if ((*(v4 + 56) & 0x100) == 0 || self->_txUnacked != *(v4 + 9))
    {
      goto LABEL_79;
    }
  }

  else if ((*(v4 + 56) & 0x100) != 0)
  {
    goto LABEL_79;
  }

  if ((has & 8) != 0)
  {
    if ((v7 & 8) == 0 || self->_rxPackets != *(v4 + 4))
    {
      goto LABEL_79;
    }
  }

  else if ((v7 & 8) != 0)
  {
    goto LABEL_79;
  }

  if (has)
  {
    if ((v7 & 1) == 0 || self->_rxBytes != *(v4 + 1))
    {
      goto LABEL_79;
    }
  }

  else if (v7)
  {
    goto LABEL_79;
  }

  if ((has & 2) != 0)
  {
    if ((v7 & 2) == 0 || self->_rxDuplicateBytes != *(v4 + 2))
    {
      goto LABEL_79;
    }
  }

  else if ((v7 & 2) != 0)
  {
    goto LABEL_79;
  }

  if ((has & 4) != 0)
  {
    if ((v7 & 4) == 0 || self->_rxOooBytes != *(v4 + 3))
    {
      goto LABEL_79;
    }
  }

  else if ((v7 & 4) != 0)
  {
    goto LABEL_79;
  }

  if ((has & 0x10) != 0)
  {
    if ((v7 & 0x10) == 0 || self->_sndBandwidth != *(v4 + 5))
    {
      goto LABEL_79;
    }
  }

  else if ((v7 & 0x10) != 0)
  {
    goto LABEL_79;
  }

  if ((*&self->_has & 0x2000) != 0)
  {
    if ((*(v4 + 56) & 0x2000) == 0 || self->_synRetransmits != *(v4 + 26))
    {
      goto LABEL_79;
    }
  }

  else if ((*(v4 + 56) & 0x2000) != 0)
  {
    goto LABEL_79;
  }

  if ((*&self->_has & 0x4000) != 0)
  {
    if ((*(v4 + 56) & 0x4000) == 0 || self->_tfoSynDataAcked != *(v4 + 27))
    {
      goto LABEL_79;
    }

    v8 = 1;
  }

  else
  {
    v8 = (v7 & 0x4000) == 0;
  }

LABEL_80:

  return v8;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{a3), "init"}];
  v6 = [(NSString *)self->_interfaceName copyWithZone:a3];
  v7 = v5[10];
  v5[10] = v6;

  has = self->_has;
  if ((has & 0x400) != 0)
  {
    *(v5 + 23) = self->_rttCurrent;
    *(v5 + 56) |= 0x400u;
    has = self->_has;
    if ((has & 0x800) == 0)
    {
LABEL_3:
      if ((has & 0x1000) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_20;
    }
  }

  else if ((*&self->_has & 0x800) == 0)
  {
    goto LABEL_3;
  }

  *(v5 + 24) = self->_rttSmoothed;
  *(v5 + 56) |= 0x800u;
  has = self->_has;
  if ((has & 0x1000) == 0)
  {
LABEL_4:
    if ((has & 0x200) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_21;
  }

LABEL_20:
  *(v5 + 25) = self->_rttVariance;
  *(v5 + 56) |= 0x1000u;
  has = self->_has;
  if ((has & 0x200) == 0)
  {
LABEL_5:
    if ((has & 0x40) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_22;
  }

LABEL_21:
  *(v5 + 22) = self->_rttBest;
  *(v5 + 56) |= 0x200u;
  has = self->_has;
  if ((has & 0x40) == 0)
  {
LABEL_6:
    if ((has & 0x20) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_23;
  }

LABEL_22:
  v5[7] = self->_txPackets;
  *(v5 + 56) |= 0x40u;
  has = self->_has;
  if ((has & 0x20) == 0)
  {
LABEL_7:
    if ((has & 0x80) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_24;
  }

LABEL_23:
  v5[6] = self->_txBytes;
  *(v5 + 56) |= 0x20u;
  has = self->_has;
  if ((has & 0x80) == 0)
  {
LABEL_8:
    if ((has & 0x100) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_25;
  }

LABEL_24:
  v5[8] = self->_txRetransmitBytes;
  *(v5 + 56) |= 0x80u;
  has = self->_has;
  if ((has & 0x100) == 0)
  {
LABEL_9:
    if ((has & 8) == 0)
    {
      goto LABEL_10;
    }

    goto LABEL_26;
  }

LABEL_25:
  v5[9] = self->_txUnacked;
  *(v5 + 56) |= 0x100u;
  has = self->_has;
  if ((has & 8) == 0)
  {
LABEL_10:
    if ((has & 1) == 0)
    {
      goto LABEL_11;
    }

    goto LABEL_27;
  }

LABEL_26:
  v5[4] = self->_rxPackets;
  *(v5 + 56) |= 8u;
  has = self->_has;
  if ((has & 1) == 0)
  {
LABEL_11:
    if ((has & 2) == 0)
    {
      goto LABEL_12;
    }

    goto LABEL_28;
  }

LABEL_27:
  v5[1] = self->_rxBytes;
  *(v5 + 56) |= 1u;
  has = self->_has;
  if ((has & 2) == 0)
  {
LABEL_12:
    if ((has & 4) == 0)
    {
      goto LABEL_13;
    }

    goto LABEL_29;
  }

LABEL_28:
  v5[2] = self->_rxDuplicateBytes;
  *(v5 + 56) |= 2u;
  has = self->_has;
  if ((has & 4) == 0)
  {
LABEL_13:
    if ((has & 0x10) == 0)
    {
      goto LABEL_14;
    }

    goto LABEL_30;
  }

LABEL_29:
  v5[3] = self->_rxOooBytes;
  *(v5 + 56) |= 4u;
  has = self->_has;
  if ((has & 0x10) == 0)
  {
LABEL_14:
    if ((has & 0x2000) == 0)
    {
      goto LABEL_15;
    }

LABEL_31:
    *(v5 + 26) = self->_synRetransmits;
    *(v5 + 56) |= 0x2000u;
    if ((*&self->_has & 0x4000) == 0)
    {
      return v5;
    }

    goto LABEL_16;
  }

LABEL_30:
  v5[5] = self->_sndBandwidth;
  *(v5 + 56) |= 0x10u;
  has = self->_has;
  if ((has & 0x2000) != 0)
  {
    goto LABEL_31;
  }

LABEL_15:
  if ((has & 0x4000) != 0)
  {
LABEL_16:
    *(v5 + 27) = self->_tfoSynDataAcked;
    *(v5 + 56) |= 0x4000u;
  }

  return v5;
}

- (void)copyTo:(id)a3
{
  v4 = a3;
  if (self->_interfaceName)
  {
    v6 = v4;
    [v4 setInterfaceName:?];
    v4 = v6;
  }

  has = self->_has;
  if ((has & 0x400) != 0)
  {
    *(v4 + 23) = self->_rttCurrent;
    *(v4 + 56) |= 0x400u;
    has = self->_has;
    if ((has & 0x800) == 0)
    {
LABEL_5:
      if ((has & 0x1000) == 0)
      {
        goto LABEL_6;
      }

      goto LABEL_24;
    }
  }

  else if ((*&self->_has & 0x800) == 0)
  {
    goto LABEL_5;
  }

  *(v4 + 24) = self->_rttSmoothed;
  *(v4 + 56) |= 0x800u;
  has = self->_has;
  if ((has & 0x1000) == 0)
  {
LABEL_6:
    if ((has & 0x200) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_25;
  }

LABEL_24:
  *(v4 + 25) = self->_rttVariance;
  *(v4 + 56) |= 0x1000u;
  has = self->_has;
  if ((has & 0x200) == 0)
  {
LABEL_7:
    if ((has & 0x40) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_26;
  }

LABEL_25:
  *(v4 + 22) = self->_rttBest;
  *(v4 + 56) |= 0x200u;
  has = self->_has;
  if ((has & 0x40) == 0)
  {
LABEL_8:
    if ((has & 0x20) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_27;
  }

LABEL_26:
  *(v4 + 7) = self->_txPackets;
  *(v4 + 56) |= 0x40u;
  has = self->_has;
  if ((has & 0x20) == 0)
  {
LABEL_9:
    if ((has & 0x80) == 0)
    {
      goto LABEL_10;
    }

    goto LABEL_28;
  }

LABEL_27:
  *(v4 + 6) = self->_txBytes;
  *(v4 + 56) |= 0x20u;
  has = self->_has;
  if ((has & 0x80) == 0)
  {
LABEL_10:
    if ((has & 0x100) == 0)
    {
      goto LABEL_11;
    }

    goto LABEL_29;
  }

LABEL_28:
  *(v4 + 8) = self->_txRetransmitBytes;
  *(v4 + 56) |= 0x80u;
  has = self->_has;
  if ((has & 0x100) == 0)
  {
LABEL_11:
    if ((has & 8) == 0)
    {
      goto LABEL_12;
    }

    goto LABEL_30;
  }

LABEL_29:
  *(v4 + 9) = self->_txUnacked;
  *(v4 + 56) |= 0x100u;
  has = self->_has;
  if ((has & 8) == 0)
  {
LABEL_12:
    if ((has & 1) == 0)
    {
      goto LABEL_13;
    }

    goto LABEL_31;
  }

LABEL_30:
  *(v4 + 4) = self->_rxPackets;
  *(v4 + 56) |= 8u;
  has = self->_has;
  if ((has & 1) == 0)
  {
LABEL_13:
    if ((has & 2) == 0)
    {
      goto LABEL_14;
    }

    goto LABEL_32;
  }

LABEL_31:
  *(v4 + 1) = self->_rxBytes;
  *(v4 + 56) |= 1u;
  has = self->_has;
  if ((has & 2) == 0)
  {
LABEL_14:
    if ((has & 4) == 0)
    {
      goto LABEL_15;
    }

    goto LABEL_33;
  }

LABEL_32:
  *(v4 + 2) = self->_rxDuplicateBytes;
  *(v4 + 56) |= 2u;
  has = self->_has;
  if ((has & 4) == 0)
  {
LABEL_15:
    if ((has & 0x10) == 0)
    {
      goto LABEL_16;
    }

    goto LABEL_34;
  }

LABEL_33:
  *(v4 + 3) = self->_rxOooBytes;
  *(v4 + 56) |= 4u;
  has = self->_has;
  if ((has & 0x10) == 0)
  {
LABEL_16:
    if ((has & 0x2000) == 0)
    {
      goto LABEL_17;
    }

    goto LABEL_35;
  }

LABEL_34:
  *(v4 + 5) = self->_sndBandwidth;
  *(v4 + 56) |= 0x10u;
  has = self->_has;
  if ((has & 0x2000) == 0)
  {
LABEL_17:
    if ((has & 0x4000) == 0)
    {
      goto LABEL_19;
    }

    goto LABEL_18;
  }

LABEL_35:
  *(v4 + 26) = self->_synRetransmits;
  *(v4 + 56) |= 0x2000u;
  if ((*&self->_has & 0x4000) != 0)
  {
LABEL_18:
    *(v4 + 27) = self->_tfoSynDataAcked;
    *(v4 + 56) |= 0x4000u;
  }

LABEL_19:
}

- (void)writeTo:(id)a3
{
  v4 = a3;
  v6 = v4;
  if (self->_interfaceName)
  {
    PBDataWriterWriteStringField();
    v4 = v6;
  }

  has = self->_has;
  if ((has & 0x400) != 0)
  {
    PBDataWriterWriteUint32Field();
    v4 = v6;
    has = self->_has;
    if ((has & 0x800) == 0)
    {
LABEL_5:
      if ((has & 0x1000) == 0)
      {
        goto LABEL_6;
      }

      goto LABEL_24;
    }
  }

  else if ((*&self->_has & 0x800) == 0)
  {
    goto LABEL_5;
  }

  PBDataWriterWriteUint32Field();
  v4 = v6;
  has = self->_has;
  if ((has & 0x1000) == 0)
  {
LABEL_6:
    if ((has & 0x200) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_25;
  }

LABEL_24:
  PBDataWriterWriteUint32Field();
  v4 = v6;
  has = self->_has;
  if ((has & 0x200) == 0)
  {
LABEL_7:
    if ((has & 0x40) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_26;
  }

LABEL_25:
  PBDataWriterWriteUint32Field();
  v4 = v6;
  has = self->_has;
  if ((has & 0x40) == 0)
  {
LABEL_8:
    if ((has & 0x20) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_27;
  }

LABEL_26:
  PBDataWriterWriteUint64Field();
  v4 = v6;
  has = self->_has;
  if ((has & 0x20) == 0)
  {
LABEL_9:
    if ((has & 0x80) == 0)
    {
      goto LABEL_10;
    }

    goto LABEL_28;
  }

LABEL_27:
  PBDataWriterWriteUint64Field();
  v4 = v6;
  has = self->_has;
  if ((has & 0x80) == 0)
  {
LABEL_10:
    if ((has & 0x100) == 0)
    {
      goto LABEL_11;
    }

    goto LABEL_29;
  }

LABEL_28:
  PBDataWriterWriteUint64Field();
  v4 = v6;
  has = self->_has;
  if ((has & 0x100) == 0)
  {
LABEL_11:
    if ((has & 8) == 0)
    {
      goto LABEL_12;
    }

    goto LABEL_30;
  }

LABEL_29:
  PBDataWriterWriteUint64Field();
  v4 = v6;
  has = self->_has;
  if ((has & 8) == 0)
  {
LABEL_12:
    if ((has & 1) == 0)
    {
      goto LABEL_13;
    }

    goto LABEL_31;
  }

LABEL_30:
  PBDataWriterWriteUint64Field();
  v4 = v6;
  has = self->_has;
  if ((has & 1) == 0)
  {
LABEL_13:
    if ((has & 2) == 0)
    {
      goto LABEL_14;
    }

    goto LABEL_32;
  }

LABEL_31:
  PBDataWriterWriteUint64Field();
  v4 = v6;
  has = self->_has;
  if ((has & 2) == 0)
  {
LABEL_14:
    if ((has & 4) == 0)
    {
      goto LABEL_15;
    }

    goto LABEL_33;
  }

LABEL_32:
  PBDataWriterWriteUint64Field();
  v4 = v6;
  has = self->_has;
  if ((has & 4) == 0)
  {
LABEL_15:
    if ((has & 0x10) == 0)
    {
      goto LABEL_16;
    }

    goto LABEL_34;
  }

LABEL_33:
  PBDataWriterWriteUint64Field();
  v4 = v6;
  has = self->_has;
  if ((has & 0x10) == 0)
  {
LABEL_16:
    if ((has & 0x2000) == 0)
    {
      goto LABEL_17;
    }

    goto LABEL_35;
  }

LABEL_34:
  PBDataWriterWriteUint64Field();
  v4 = v6;
  has = self->_has;
  if ((has & 0x2000) == 0)
  {
LABEL_17:
    if ((has & 0x4000) == 0)
    {
      goto LABEL_19;
    }

    goto LABEL_18;
  }

LABEL_35:
  PBDataWriterWriteUint32Field();
  v4 = v6;
  if ((*&self->_has & 0x4000) != 0)
  {
LABEL_18:
    PBDataWriterWriteUint32Field();
    v4 = v6;
  }

LABEL_19:
}

- (id)dictionaryRepresentation
{
  v3 = +[NSMutableDictionary dictionary];
  v4 = v3;
  interfaceName = self->_interfaceName;
  if (interfaceName)
  {
    [v3 setObject:interfaceName forKey:@"interface_name"];
  }

  has = self->_has;
  if ((has & 0x400) != 0)
  {
    v9 = [NSNumber numberWithUnsignedInt:self->_rttCurrent];
    [v4 setObject:v9 forKey:@"rtt_current"];

    has = self->_has;
    if ((has & 0x800) == 0)
    {
LABEL_5:
      if ((has & 0x1000) == 0)
      {
        goto LABEL_6;
      }

      goto LABEL_24;
    }
  }

  else if ((*&self->_has & 0x800) == 0)
  {
    goto LABEL_5;
  }

  v10 = [NSNumber numberWithUnsignedInt:self->_rttSmoothed];
  [v4 setObject:v10 forKey:@"rtt_smoothed"];

  has = self->_has;
  if ((has & 0x1000) == 0)
  {
LABEL_6:
    if ((has & 0x200) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_25;
  }

LABEL_24:
  v11 = [NSNumber numberWithUnsignedInt:self->_rttVariance];
  [v4 setObject:v11 forKey:@"rtt_variance"];

  has = self->_has;
  if ((has & 0x200) == 0)
  {
LABEL_7:
    if ((has & 0x40) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_26;
  }

LABEL_25:
  v12 = [NSNumber numberWithUnsignedInt:self->_rttBest];
  [v4 setObject:v12 forKey:@"rtt_best"];

  has = self->_has;
  if ((has & 0x40) == 0)
  {
LABEL_8:
    if ((has & 0x20) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_27;
  }

LABEL_26:
  v13 = [NSNumber numberWithUnsignedLongLong:self->_txPackets];
  [v4 setObject:v13 forKey:@"tx_packets"];

  has = self->_has;
  if ((has & 0x20) == 0)
  {
LABEL_9:
    if ((has & 0x80) == 0)
    {
      goto LABEL_10;
    }

    goto LABEL_28;
  }

LABEL_27:
  v14 = [NSNumber numberWithUnsignedLongLong:self->_txBytes];
  [v4 setObject:v14 forKey:@"tx_bytes"];

  has = self->_has;
  if ((has & 0x80) == 0)
  {
LABEL_10:
    if ((has & 0x100) == 0)
    {
      goto LABEL_11;
    }

    goto LABEL_29;
  }

LABEL_28:
  v15 = [NSNumber numberWithUnsignedLongLong:self->_txRetransmitBytes];
  [v4 setObject:v15 forKey:@"tx_retransmit_bytes"];

  has = self->_has;
  if ((has & 0x100) == 0)
  {
LABEL_11:
    if ((has & 8) == 0)
    {
      goto LABEL_12;
    }

    goto LABEL_30;
  }

LABEL_29:
  v16 = [NSNumber numberWithUnsignedLongLong:self->_txUnacked];
  [v4 setObject:v16 forKey:@"tx_unacked"];

  has = self->_has;
  if ((has & 8) == 0)
  {
LABEL_12:
    if ((has & 1) == 0)
    {
      goto LABEL_13;
    }

    goto LABEL_31;
  }

LABEL_30:
  v17 = [NSNumber numberWithUnsignedLongLong:self->_rxPackets];
  [v4 setObject:v17 forKey:@"rx_packets"];

  has = self->_has;
  if ((has & 1) == 0)
  {
LABEL_13:
    if ((has & 2) == 0)
    {
      goto LABEL_14;
    }

    goto LABEL_32;
  }

LABEL_31:
  v18 = [NSNumber numberWithUnsignedLongLong:self->_rxBytes];
  [v4 setObject:v18 forKey:@"rx_bytes"];

  has = self->_has;
  if ((has & 2) == 0)
  {
LABEL_14:
    if ((has & 4) == 0)
    {
      goto LABEL_15;
    }

    goto LABEL_33;
  }

LABEL_32:
  v19 = [NSNumber numberWithUnsignedLongLong:self->_rxDuplicateBytes];
  [v4 setObject:v19 forKey:@"rx_duplicate_bytes"];

  has = self->_has;
  if ((has & 4) == 0)
  {
LABEL_15:
    if ((has & 0x10) == 0)
    {
      goto LABEL_16;
    }

    goto LABEL_34;
  }

LABEL_33:
  v20 = [NSNumber numberWithUnsignedLongLong:self->_rxOooBytes];
  [v4 setObject:v20 forKey:@"rx_ooo_bytes"];

  has = self->_has;
  if ((has & 0x10) == 0)
  {
LABEL_16:
    if ((has & 0x2000) == 0)
    {
      goto LABEL_17;
    }

    goto LABEL_35;
  }

LABEL_34:
  v21 = [NSNumber numberWithUnsignedLongLong:self->_sndBandwidth];
  [v4 setObject:v21 forKey:@"snd_bandwidth"];

  has = self->_has;
  if ((has & 0x2000) == 0)
  {
LABEL_17:
    if ((has & 0x4000) == 0)
    {
      goto LABEL_19;
    }

    goto LABEL_18;
  }

LABEL_35:
  v22 = [NSNumber numberWithUnsignedInt:self->_synRetransmits];
  [v4 setObject:v22 forKey:@"syn_retransmits"];

  if ((*&self->_has & 0x4000) != 0)
  {
LABEL_18:
    v7 = [NSNumber numberWithUnsignedInt:self->_tfoSynDataAcked];
    [v4 setObject:v7 forKey:@"tfo_syn_data_acked"];
  }

LABEL_19:

  return v4;
}

- (id)description
{
  v7.receiver = self;
  v7.super_class = _ADPBProxyTCPInfoMetrics;
  v3 = [(_ADPBProxyTCPInfoMetrics *)&v7 description];
  v4 = [(_ADPBProxyTCPInfoMetrics *)self dictionaryRepresentation];
  v5 = [NSString stringWithFormat:@"%@ %@", v3, v4];

  return v5;
}

- (void)setHasTfoSynDataAcked:(BOOL)a3
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

- (void)setHasSynRetransmits:(BOOL)a3
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

- (void)setHasSndBandwidth:(BOOL)a3
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

- (void)setHasRxOooBytes:(BOOL)a3
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

- (void)setHasRxDuplicateBytes:(BOOL)a3
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

- (void)setHasRxPackets:(BOOL)a3
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

- (void)setHasTxUnacked:(BOOL)a3
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

- (void)setHasTxRetransmitBytes:(BOOL)a3
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

- (void)setHasTxBytes:(BOOL)a3
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

- (void)setHasTxPackets:(BOOL)a3
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

- (void)setHasRttBest:(BOOL)a3
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

- (void)setHasRttVariance:(BOOL)a3
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

- (void)setHasRttSmoothed:(BOOL)a3
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

- (void)setHasRttCurrent:(BOOL)a3
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

@end