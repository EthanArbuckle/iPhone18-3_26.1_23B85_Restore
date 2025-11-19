@interface TunerState
- (BOOL)isEqual:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (id)dictionaryRepresentation;
- (int)StringAsRat:(id)a3;
- (int)StringAsScenarioDecision:(id)a3;
- (int)rat;
- (int)scenarioDecision;
- (unint64_t)hash;
- (void)copyTo:(id)a3;
- (void)mergeFrom:(id)a3;
- (void)setHasDeembedVswrMag:(BOOL)a3;
- (void)setHasDeembedVswrPhase:(BOOL)a3;
- (void)setHasPortBodypositionFs:(BOOL)a3;
- (void)setHasRat:(BOOL)a3;
- (void)setHasScenarioDecision:(BOOL)a3;
- (void)setHasTxBand:(BOOL)a3;
- (void)writeTo:(id)a3;
@end

@implementation TunerState

- (int)rat
{
  if ((*&self->_has & 0x10) != 0)
  {
    return self->_rat;
  }

  else
  {
    return 0;
  }
}

- (void)setHasRat:(BOOL)a3
{
  if (a3)
  {
    v3 = 16;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xEF | v3;
}

- (int)StringAsRat:(id)a3
{
  v3 = a3;
  if ([v3 isEqualToString:@"SYS_MODE_NO_SRV"])
  {
    v4 = 0;
  }

  else if ([v3 isEqualToString:@"SYS_MODE_LTE_V2"])
  {
    v4 = 1;
  }

  else if ([v3 isEqualToString:@"SYS_MODE_CDMA"])
  {
    v4 = 2;
  }

  else if ([v3 isEqualToString:@"SYS_MODE_GSM"])
  {
    v4 = 3;
  }

  else if ([v3 isEqualToString:@"SYS_MODE_HDR"])
  {
    v4 = 4;
  }

  else if ([v3 isEqualToString:@"SYS_MODE_WCDMA"])
  {
    v4 = 5;
  }

  else if ([v3 isEqualToString:@"SYS_MODE_EHRPD"])
  {
    v4 = 6;
  }

  else if ([v3 isEqualToString:@"SYS_MODE_GW"])
  {
    v4 = 7;
  }

  else if ([v3 isEqualToString:@"SYS_MODE_WLAN"])
  {
    v4 = 8;
  }

  else if ([v3 isEqualToString:@"SYS_MODE_LTE"])
  {
    v4 = 9;
  }

  else if ([v3 isEqualToString:@"SYS_MODE_GWL"])
  {
    v4 = 10;
  }

  else if ([v3 isEqualToString:@"SYS_MODE_UMTS"])
  {
    v4 = 11;
  }

  else if ([v3 isEqualToString:@"SYS_MODE_NR5G"])
  {
    v4 = 12;
  }

  else if ([v3 isEqualToString:@"SYS_MODE_CDMA_HDR"])
  {
    v4 = 15;
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (void)setHasTxBand:(BOOL)a3
{
  if (a3)
  {
    v3 = 64;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xBF | v3;
}

- (void)setHasPortBodypositionFs:(BOOL)a3
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

- (int)scenarioDecision
{
  if ((*&self->_has & 0x20) != 0)
  {
    return self->_scenarioDecision;
  }

  else
  {
    return 0;
  }
}

- (void)setHasScenarioDecision:(BOOL)a3
{
  if (a3)
  {
    v3 = 32;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xDF | v3;
}

- (int)StringAsScenarioDecision:(id)a3
{
  v3 = a3;
  if ([v3 isEqualToString:@"FREE_SPACE_SCENARIO"])
  {
    v4 = 0;
  }

  else if ([v3 isEqualToString:@"LATG_UATF_SCENARIO"])
  {
    v4 = 1;
  }

  else if ([v3 isEqualToString:@"LATA_UATF_SCENARIO"])
  {
    v4 = 2;
  }

  else if ([v3 isEqualToString:@"LATGA_UATF_SCENARIO"])
  {
    v4 = 3;
  }

  else if ([v3 isEqualToString:@"LATF_UATH_SCENARIO"])
  {
    v4 = 4;
  }

  else if ([v3 isEqualToString:@"LATG_UATH_SCENARIO"])
  {
    v4 = 5;
  }

  else if ([v3 isEqualToString:@"LATA_UATH_SCENARIO"])
  {
    v4 = 6;
  }

  else if ([v3 isEqualToString:@"LATGA_UATH_SCENARIO"])
  {
    v4 = 7;
  }

  else if ([v3 isEqualToString:@"RHH_SCENARIO"])
  {
    v4 = 8;
  }

  else if ([v3 isEqualToString:@"LHH_SCENARIO"])
  {
    v4 = 9;
  }

  else if ([v3 isEqualToString:@"UHH_SCENARIO"])
  {
    v4 = 10;
  }

  else if ([v3 isEqualToString:@"E_SCENARIO"])
  {
    v4 = 11;
  }

  else if ([v3 isEqualToString:@"B_SCENARIO"])
  {
    v4 = 12;
  }

  else if ([v3 isEqualToString:@"R_SCENARIO"])
  {
    v4 = 13;
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (void)setHasDeembedVswrMag:(BOOL)a3
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

- (void)setHasDeembedVswrPhase:(BOOL)a3
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

- (id)description
{
  v7.receiver = self;
  v7.super_class = TunerState;
  v3 = [(TunerState *)&v7 description];
  v4 = [(TunerState *)self dictionaryRepresentation];
  v5 = [NSString stringWithFormat:@"%@ %@", v3, v4];

  return v5;
}

- (id)dictionaryRepresentation
{
  v3 = +[NSMutableDictionary dictionary];
  has = self->_has;
  if ((has & 0x10) != 0)
  {
    rat = self->_rat;
    if (rat < 0x10 && ((0x9FFFu >> rat) & 1) != 0)
    {
      v6 = off_100317138[rat];
    }

    else
    {
      v6 = [NSString stringWithFormat:@"(unknown: %i)", self->_rat];
    }

    [v3 setObject:v6 forKey:@"rat"];

    has = self->_has;
  }

  if ((has & 0x40) != 0)
  {
    v9 = [NSNumber numberWithUnsignedInt:self->_txBand];
    [v3 setObject:v9 forKey:@"tx_band"];

    has = self->_has;
    if ((has & 8) == 0)
    {
LABEL_9:
      if ((has & 0x20) == 0)
      {
        goto LABEL_10;
      }

      goto LABEL_19;
    }
  }

  else if ((has & 8) == 0)
  {
    goto LABEL_9;
  }

  v10 = [NSNumber numberWithUnsignedInt:self->_portBodypositionFs];
  [v3 setObject:v10 forKey:@"port_bodyposition_fs"];

  has = self->_has;
  if ((has & 0x20) == 0)
  {
LABEL_10:
    if ((has & 2) == 0)
    {
      goto LABEL_11;
    }

    goto LABEL_23;
  }

LABEL_19:
  scenarioDecision = self->_scenarioDecision;
  if (scenarioDecision >= 0xE)
  {
    v12 = [NSString stringWithFormat:@"(unknown: %i)", self->_scenarioDecision];
  }

  else
  {
    v12 = off_1003171B8[scenarioDecision];
  }

  [v3 setObject:v12 forKey:@"scenario_decision"];

  has = self->_has;
  if ((has & 2) == 0)
  {
LABEL_11:
    if ((has & 4) == 0)
    {
      goto LABEL_12;
    }

    goto LABEL_24;
  }

LABEL_23:
  v13 = [NSNumber numberWithUnsignedInt:self->_deembedVswrMag];
  [v3 setObject:v13 forKey:@"deembed_vswr_mag"];

  has = self->_has;
  if ((has & 4) == 0)
  {
LABEL_12:
    if ((has & 1) == 0)
    {
      goto LABEL_14;
    }

    goto LABEL_13;
  }

LABEL_24:
  v14 = [NSNumber numberWithUnsignedInt:self->_deembedVswrPhase];
  [v3 setObject:v14 forKey:@"deembed_vswr_phase"];

  if (*&self->_has)
  {
LABEL_13:
    v7 = [NSNumber numberWithUnsignedInt:self->_accessory];
    [v3 setObject:v7 forKey:@"accessory"];
  }

LABEL_14:

  return v3;
}

- (void)writeTo:(id)a3
{
  v12 = a3;
  has = self->_has;
  if ((has & 0x10) != 0)
  {
    rat = self->_rat;
    PBDataWriterWriteInt32Field();
    has = self->_has;
    if ((has & 0x40) == 0)
    {
LABEL_3:
      if ((has & 8) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_14;
    }
  }

  else if ((*&self->_has & 0x40) == 0)
  {
    goto LABEL_3;
  }

  txBand = self->_txBand;
  PBDataWriterWriteUint32Field();
  has = self->_has;
  if ((has & 8) == 0)
  {
LABEL_4:
    if ((has & 0x20) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_15;
  }

LABEL_14:
  portBodypositionFs = self->_portBodypositionFs;
  PBDataWriterWriteUint32Field();
  has = self->_has;
  if ((has & 0x20) == 0)
  {
LABEL_5:
    if ((has & 2) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_16;
  }

LABEL_15:
  scenarioDecision = self->_scenarioDecision;
  PBDataWriterWriteInt32Field();
  has = self->_has;
  if ((has & 2) == 0)
  {
LABEL_6:
    if ((has & 4) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_17;
  }

LABEL_16:
  deembedVswrMag = self->_deembedVswrMag;
  PBDataWriterWriteUint32Field();
  has = self->_has;
  if ((has & 4) == 0)
  {
LABEL_7:
    if ((has & 1) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_8;
  }

LABEL_17:
  deembedVswrPhase = self->_deembedVswrPhase;
  PBDataWriterWriteUint32Field();
  if (*&self->_has)
  {
LABEL_8:
    accessory = self->_accessory;
    PBDataWriterWriteUint32Field();
  }

LABEL_9:
}

- (void)copyTo:(id)a3
{
  v4 = a3;
  has = self->_has;
  if ((has & 0x10) != 0)
  {
    v4[6] = self->_rat;
    *(v4 + 36) |= 0x10u;
    has = self->_has;
    if ((has & 0x40) == 0)
    {
LABEL_3:
      if ((has & 8) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_14;
    }
  }

  else if ((*&self->_has & 0x40) == 0)
  {
    goto LABEL_3;
  }

  v4[8] = self->_txBand;
  *(v4 + 36) |= 0x40u;
  has = self->_has;
  if ((has & 8) == 0)
  {
LABEL_4:
    if ((has & 0x20) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_15;
  }

LABEL_14:
  v4[5] = self->_portBodypositionFs;
  *(v4 + 36) |= 8u;
  has = self->_has;
  if ((has & 0x20) == 0)
  {
LABEL_5:
    if ((has & 2) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_16;
  }

LABEL_15:
  v4[7] = self->_scenarioDecision;
  *(v4 + 36) |= 0x20u;
  has = self->_has;
  if ((has & 2) == 0)
  {
LABEL_6:
    if ((has & 4) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_17;
  }

LABEL_16:
  v4[3] = self->_deembedVswrMag;
  *(v4 + 36) |= 2u;
  has = self->_has;
  if ((has & 4) == 0)
  {
LABEL_7:
    if ((has & 1) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_8;
  }

LABEL_17:
  v4[4] = self->_deembedVswrPhase;
  *(v4 + 36) |= 4u;
  if (*&self->_has)
  {
LABEL_8:
    v4[2] = self->_accessory;
    *(v4 + 36) |= 1u;
  }

LABEL_9:
}

- (id)copyWithZone:(_NSZone *)a3
{
  result = [objc_msgSend(objc_opt_class() allocWithZone:{a3), "init"}];
  has = self->_has;
  if ((has & 0x10) != 0)
  {
    *(result + 6) = self->_rat;
    *(result + 36) |= 0x10u;
    has = self->_has;
    if ((has & 0x40) == 0)
    {
LABEL_3:
      if ((has & 8) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_12;
    }
  }

  else if ((*&self->_has & 0x40) == 0)
  {
    goto LABEL_3;
  }

  *(result + 8) = self->_txBand;
  *(result + 36) |= 0x40u;
  has = self->_has;
  if ((has & 8) == 0)
  {
LABEL_4:
    if ((has & 0x20) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_13;
  }

LABEL_12:
  *(result + 5) = self->_portBodypositionFs;
  *(result + 36) |= 8u;
  has = self->_has;
  if ((has & 0x20) == 0)
  {
LABEL_5:
    if ((has & 2) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_14;
  }

LABEL_13:
  *(result + 7) = self->_scenarioDecision;
  *(result + 36) |= 0x20u;
  has = self->_has;
  if ((has & 2) == 0)
  {
LABEL_6:
    if ((has & 4) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_15;
  }

LABEL_14:
  *(result + 3) = self->_deembedVswrMag;
  *(result + 36) |= 2u;
  has = self->_has;
  if ((has & 4) == 0)
  {
LABEL_7:
    if ((has & 1) == 0)
    {
      return result;
    }

    goto LABEL_8;
  }

LABEL_15:
  *(result + 4) = self->_deembedVswrPhase;
  *(result + 36) |= 4u;
  if ((*&self->_has & 1) == 0)
  {
    return result;
  }

LABEL_8:
  *(result + 2) = self->_accessory;
  *(result + 36) |= 1u;
  return result;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (![v4 isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_36;
  }

  if ((*&self->_has & 0x10) != 0)
  {
    if ((*(v4 + 36) & 0x10) == 0 || self->_rat != *(v4 + 6))
    {
      goto LABEL_36;
    }
  }

  else if ((*(v4 + 36) & 0x10) != 0)
  {
LABEL_36:
    v5 = 0;
    goto LABEL_37;
  }

  if ((*&self->_has & 0x40) != 0)
  {
    if ((*(v4 + 36) & 0x40) == 0 || self->_txBand != *(v4 + 8))
    {
      goto LABEL_36;
    }
  }

  else if ((*(v4 + 36) & 0x40) != 0)
  {
    goto LABEL_36;
  }

  if ((*&self->_has & 8) != 0)
  {
    if ((*(v4 + 36) & 8) == 0 || self->_portBodypositionFs != *(v4 + 5))
    {
      goto LABEL_36;
    }
  }

  else if ((*(v4 + 36) & 8) != 0)
  {
    goto LABEL_36;
  }

  if ((*&self->_has & 0x20) != 0)
  {
    if ((*(v4 + 36) & 0x20) == 0 || self->_scenarioDecision != *(v4 + 7))
    {
      goto LABEL_36;
    }
  }

  else if ((*(v4 + 36) & 0x20) != 0)
  {
    goto LABEL_36;
  }

  if ((*&self->_has & 2) != 0)
  {
    if ((*(v4 + 36) & 2) == 0 || self->_deembedVswrMag != *(v4 + 3))
    {
      goto LABEL_36;
    }
  }

  else if ((*(v4 + 36) & 2) != 0)
  {
    goto LABEL_36;
  }

  if ((*&self->_has & 4) != 0)
  {
    if ((*(v4 + 36) & 4) == 0 || self->_deembedVswrPhase != *(v4 + 4))
    {
      goto LABEL_36;
    }
  }

  else if ((*(v4 + 36) & 4) != 0)
  {
    goto LABEL_36;
  }

  v5 = (*(v4 + 36) & 1) == 0;
  if (*&self->_has)
  {
    if ((*(v4 + 36) & 1) == 0 || self->_accessory != *(v4 + 2))
    {
      goto LABEL_36;
    }

    v5 = 1;
  }

LABEL_37:

  return v5;
}

- (unint64_t)hash
{
  if ((*&self->_has & 0x10) != 0)
  {
    v2 = 2654435761 * self->_rat;
    if ((*&self->_has & 0x40) != 0)
    {
LABEL_3:
      v3 = 2654435761 * self->_txBand;
      if ((*&self->_has & 8) != 0)
      {
        goto LABEL_4;
      }

      goto LABEL_11;
    }
  }

  else
  {
    v2 = 0;
    if ((*&self->_has & 0x40) != 0)
    {
      goto LABEL_3;
    }
  }

  v3 = 0;
  if ((*&self->_has & 8) != 0)
  {
LABEL_4:
    v4 = 2654435761 * self->_portBodypositionFs;
    if ((*&self->_has & 0x20) != 0)
    {
      goto LABEL_5;
    }

    goto LABEL_12;
  }

LABEL_11:
  v4 = 0;
  if ((*&self->_has & 0x20) != 0)
  {
LABEL_5:
    v5 = 2654435761 * self->_scenarioDecision;
    if ((*&self->_has & 2) != 0)
    {
      goto LABEL_6;
    }

    goto LABEL_13;
  }

LABEL_12:
  v5 = 0;
  if ((*&self->_has & 2) != 0)
  {
LABEL_6:
    v6 = 2654435761 * self->_deembedVswrMag;
    if ((*&self->_has & 4) != 0)
    {
      goto LABEL_7;
    }

LABEL_14:
    v7 = 0;
    if (*&self->_has)
    {
      goto LABEL_8;
    }

LABEL_15:
    v8 = 0;
    return v3 ^ v2 ^ v4 ^ v5 ^ v6 ^ v7 ^ v8;
  }

LABEL_13:
  v6 = 0;
  if ((*&self->_has & 4) == 0)
  {
    goto LABEL_14;
  }

LABEL_7:
  v7 = 2654435761 * self->_deembedVswrPhase;
  if ((*&self->_has & 1) == 0)
  {
    goto LABEL_15;
  }

LABEL_8:
  v8 = 2654435761 * self->_accessory;
  return v3 ^ v2 ^ v4 ^ v5 ^ v6 ^ v7 ^ v8;
}

- (void)mergeFrom:(id)a3
{
  v4 = a3;
  v5 = *(v4 + 36);
  if ((v5 & 0x10) != 0)
  {
    self->_rat = *(v4 + 6);
    *&self->_has |= 0x10u;
    v5 = *(v4 + 36);
    if ((v5 & 0x40) == 0)
    {
LABEL_3:
      if ((v5 & 8) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_14;
    }
  }

  else if ((*(v4 + 36) & 0x40) == 0)
  {
    goto LABEL_3;
  }

  self->_txBand = *(v4 + 8);
  *&self->_has |= 0x40u;
  v5 = *(v4 + 36);
  if ((v5 & 8) == 0)
  {
LABEL_4:
    if ((v5 & 0x20) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_15;
  }

LABEL_14:
  self->_portBodypositionFs = *(v4 + 5);
  *&self->_has |= 8u;
  v5 = *(v4 + 36);
  if ((v5 & 0x20) == 0)
  {
LABEL_5:
    if ((v5 & 2) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_16;
  }

LABEL_15:
  self->_scenarioDecision = *(v4 + 7);
  *&self->_has |= 0x20u;
  v5 = *(v4 + 36);
  if ((v5 & 2) == 0)
  {
LABEL_6:
    if ((v5 & 4) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_17;
  }

LABEL_16:
  self->_deembedVswrMag = *(v4 + 3);
  *&self->_has |= 2u;
  v5 = *(v4 + 36);
  if ((v5 & 4) == 0)
  {
LABEL_7:
    if ((v5 & 1) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_8;
  }

LABEL_17:
  self->_deembedVswrPhase = *(v4 + 4);
  *&self->_has |= 4u;
  if (*(v4 + 36))
  {
LABEL_8:
    self->_accessory = *(v4 + 2);
    *&self->_has |= 1u;
  }

LABEL_9:
}

@end