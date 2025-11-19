@interface AWDSymptomsDiagnosticIncidentReport
- (BOOL)isEqual:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (id)dictionaryRepresentation;
- (int)StringAsDampeningType:(id)a3;
- (int)StringAsHandledResult:(id)a3;
- (int)dampeningType;
- (int)handledResult;
- (unint64_t)hash;
- (unint64_t)timestampsIncidentEventsAtIndex:(unint64_t)a3;
- (void)addIncidentEvents:(id)a3;
- (void)addRelatedNames:(id)a3;
- (void)copyTo:(id)a3;
- (void)dealloc;
- (void)mergeFrom:(id)a3;
- (void)setHasDampeningType:(BOOL)a3;
- (void)setHasHandledResult:(BOOL)a3;
- (void)setHasTimestamp:(BOOL)a3;
- (void)setHasVersion:(BOOL)a3;
- (void)writeTo:(id)a3;
@end

@implementation AWDSymptomsDiagnosticIncidentReport

- (void)dealloc
{
  PBRepeatedUInt64Clear();
  v3.receiver = self;
  v3.super_class = AWDSymptomsDiagnosticIncidentReport;
  [(AWDSymptomsDiagnosticIncidentReport *)&v3 dealloc];
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

  *&self->_has = *&self->_has & 0xFD | v3;
}

- (int)handledResult
{
  if ((*&self->_has & 0x10) != 0)
  {
    return self->_handledResult;
  }

  else
  {
    return 1;
  }
}

- (void)setHasHandledResult:(BOOL)a3
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

- (int)StringAsHandledResult:(id)a3
{
  v3 = a3;
  if ([v3 isEqualToString:@"Allowed"])
  {
    v4 = 1;
  }

  else if ([v3 isEqualToString:@"NotAllowed"])
  {
    v4 = 2;
  }

  else if ([v3 isEqualToString:@"PriorityAllowed"])
  {
    v4 = 3;
  }

  else if ([v3 isEqualToString:@"TransientAllowed"])
  {
    v4 = 4;
  }

  else
  {
    v4 = 1;
  }

  return v4;
}

- (void)addRelatedNames:(id)a3
{
  v4 = a3;
  relatedNames = self->_relatedNames;
  v8 = v4;
  if (!relatedNames)
  {
    v6 = objc_alloc_init(MEMORY[0x277CBEB18]);
    v7 = self->_relatedNames;
    self->_relatedNames = v6;

    v4 = v8;
    relatedNames = self->_relatedNames;
  }

  [(NSMutableArray *)relatedNames addObject:v4];
}

- (unint64_t)timestampsIncidentEventsAtIndex:(unint64_t)a3
{
  p_timestampsIncidentEvents = &self->_timestampsIncidentEvents;
  count = self->_timestampsIncidentEvents.count;
  if (count <= a3)
  {
    v6 = MEMORY[0x277CBEAD8];
    v7 = *MEMORY[0x277CBE730];
    v8 = [MEMORY[0x277CCACA8] stringWithFormat:@"idx (%tu) is out of range (%tu)", a3, count];
    v9 = [v6 exceptionWithName:v7 reason:v8 userInfo:0];
    [v9 raise];
  }

  return p_timestampsIncidentEvents->list[a3];
}

- (void)addIncidentEvents:(id)a3
{
  v4 = a3;
  incidentEvents = self->_incidentEvents;
  v8 = v4;
  if (!incidentEvents)
  {
    v6 = objc_alloc_init(MEMORY[0x277CBEB18]);
    v7 = self->_incidentEvents;
    self->_incidentEvents = v6;

    v4 = v8;
    incidentEvents = self->_incidentEvents;
  }

  [(NSMutableArray *)incidentEvents addObject:v4];
}

- (void)setHasVersion:(BOOL)a3
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

- (int)dampeningType
{
  if ((*&self->_has & 8) != 0)
  {
    return self->_dampeningType;
  }

  else
  {
    return 1;
  }
}

- (void)setHasDampeningType:(BOOL)a3
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

- (int)StringAsDampeningType:(id)a3
{
  v3 = a3;
  if ([v3 isEqualToString:@"None"])
  {
    v4 = 1;
  }

  else if ([v3 isEqualToString:@"TransientApproval"])
  {
    v4 = 2;
  }

  else if ([v3 isEqualToString:@"HourlyQuotaExceeded"])
  {
    v4 = 3;
  }

  else if ([v3 isEqualToString:@"DailyQuotaExceeded"])
  {
    v4 = 4;
  }

  else if ([v3 isEqualToString:@"RandomizedSuppression"])
  {
    v4 = 5;
  }

  else if ([v3 isEqualToString:@"UnsatisfiedSystemPrerequisites"])
  {
    v4 = 6;
  }

  else if ([v3 isEqualToString:@"UnsatisfiedCollectionRequirements"])
  {
    v4 = 7;
  }

  else
  {
    v4 = 1;
  }

  return v4;
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v8.receiver = self;
  v8.super_class = AWDSymptomsDiagnosticIncidentReport;
  v4 = [(AWDSymptomsDiagnosticIncidentReport *)&v8 description];
  v5 = [(AWDSymptomsDiagnosticIncidentReport *)self dictionaryRepresentation];
  v6 = [v3 stringWithFormat:@"%@ %@", v4, v5];

  return v6;
}

- (id)dictionaryRepresentation
{
  v37 = *MEMORY[0x277D85DE8];
  v3 = [MEMORY[0x277CBEB38] dictionary];
  has = self->_has;
  if ((has & 2) != 0)
  {
    v27 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:self->_timestamp];
    [v3 setObject:v27 forKey:@"timestamp"];

    has = self->_has;
    if ((has & 0x10) == 0)
    {
LABEL_3:
      if ((has & 1) == 0)
      {
        goto LABEL_5;
      }

      goto LABEL_4;
    }
  }

  else if ((*&self->_has & 0x10) == 0)
  {
    goto LABEL_3;
  }

  v28 = self->_handledResult - 1;
  if (v28 >= 4)
  {
    v29 = [MEMORY[0x277CCACA8] stringWithFormat:@"(unknown: %i)", self->_handledResult];
  }

  else
  {
    v29 = off_278CF01C0[v28];
  }

  [v3 setObject:v29 forKey:@"handledResult"];

  if (*&self->_has)
  {
LABEL_4:
    v5 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:self->_duration];
    [v3 setObject:v5 forKey:@"duration"];
  }

LABEL_5:
  identifier = self->_identifier;
  if (identifier)
  {
    [v3 setObject:identifier forKey:@"identifier"];
  }

  domain = self->_domain;
  if (domain)
  {
    [v3 setObject:domain forKey:@"domain"];
  }

  type = self->_type;
  if (type)
  {
    [v3 setObject:type forKey:@"type"];
  }

  subtype = self->_subtype;
  if (subtype)
  {
    [v3 setObject:subtype forKey:@"subtype"];
  }

  subtypeContext = self->_subtypeContext;
  if (subtypeContext)
  {
    [v3 setObject:subtypeContext forKey:@"subtypeContext"];
  }

  detectedName = self->_detectedName;
  if (detectedName)
  {
    [v3 setObject:detectedName forKey:@"detectedName"];
  }

  effectiveName = self->_effectiveName;
  if (effectiveName)
  {
    [v3 setObject:effectiveName forKey:@"effectiveName"];
  }

  relatedNames = self->_relatedNames;
  if (relatedNames)
  {
    [v3 setObject:relatedNames forKey:@"relatedNames"];
  }

  v14 = PBRepeatedUInt64NSArray();
  [v3 setObject:v14 forKey:@"timestampsIncidentEvents"];

  if ([(NSMutableArray *)self->_incidentEvents count])
  {
    v15 = [objc_alloc(MEMORY[0x277CBEB18]) initWithCapacity:{-[NSMutableArray count](self->_incidentEvents, "count")}];
    v32 = 0u;
    v33 = 0u;
    v34 = 0u;
    v35 = 0u;
    v16 = self->_incidentEvents;
    v17 = [(NSMutableArray *)v16 countByEnumeratingWithState:&v32 objects:v36 count:16];
    if (v17)
    {
      v18 = v17;
      v19 = *v33;
      do
      {
        for (i = 0; i != v18; ++i)
        {
          if (*v33 != v19)
          {
            objc_enumerationMutation(v16);
          }

          v21 = [*(*(&v32 + 1) + 8 * i) dictionaryRepresentation];
          [v15 addObject:v21];
        }

        v18 = [(NSMutableArray *)v16 countByEnumeratingWithState:&v32 objects:v36 count:16];
      }

      while (v18);
    }

    [v3 setObject:v15 forKey:@"incidentEvents"];
  }

  groupIdentifier = self->_groupIdentifier;
  if (groupIdentifier)
  {
    [v3 setObject:groupIdentifier forKey:@"groupIdentifier"];
  }

  v23 = self->_has;
  if ((v23 & 4) != 0)
  {
    v24 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:self->_version];
    [v3 setObject:v24 forKey:@"version"];

    v23 = self->_has;
  }

  if ((v23 & 8) != 0)
  {
    v25 = self->_dampeningType - 1;
    if (v25 >= 7)
    {
      v26 = [MEMORY[0x277CCACA8] stringWithFormat:@"(unknown: %i)", self->_dampeningType];
    }

    else
    {
      v26 = off_278CF01E0[v25];
    }

    [v3 setObject:v26 forKey:@"dampeningType"];
  }

  v30 = *MEMORY[0x277D85DE8];

  return v3;
}

- (void)writeTo:(id)a3
{
  v37 = *MEMORY[0x277D85DE8];
  v4 = a3;
  has = self->_has;
  if ((has & 2) != 0)
  {
    timestamp = self->_timestamp;
    PBDataWriterWriteUint64Field();
    has = self->_has;
    if ((has & 0x10) == 0)
    {
LABEL_3:
      if ((has & 1) == 0)
      {
        goto LABEL_5;
      }

      goto LABEL_4;
    }
  }

  else if ((*&self->_has & 0x10) == 0)
  {
    goto LABEL_3;
  }

  handledResult = self->_handledResult;
  PBDataWriterWriteInt32Field();
  if (*&self->_has)
  {
LABEL_4:
    duration = self->_duration;
    PBDataWriterWriteUint64Field();
  }

LABEL_5:
  if (self->_identifier)
  {
    PBDataWriterWriteStringField();
  }

  if (self->_domain)
  {
    PBDataWriterWriteStringField();
  }

  if (self->_type)
  {
    PBDataWriterWriteStringField();
  }

  if (self->_subtype)
  {
    PBDataWriterWriteStringField();
  }

  if (self->_subtypeContext)
  {
    PBDataWriterWriteStringField();
  }

  if (self->_detectedName)
  {
    PBDataWriterWriteStringField();
  }

  if (self->_effectiveName)
  {
    PBDataWriterWriteStringField();
  }

  v33 = 0u;
  v34 = 0u;
  v31 = 0u;
  v32 = 0u;
  v7 = self->_relatedNames;
  v8 = [(NSMutableArray *)v7 countByEnumeratingWithState:&v31 objects:v36 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v32;
    do
    {
      for (i = 0; i != v9; ++i)
      {
        if (*v32 != v10)
        {
          objc_enumerationMutation(v7);
        }

        v12 = *(*(&v31 + 1) + 8 * i);
        PBDataWriterWriteStringField();
      }

      v9 = [(NSMutableArray *)v7 countByEnumeratingWithState:&v31 objects:v36 count:16];
    }

    while (v9);
  }

  if (self->_timestampsIncidentEvents.count)
  {
    v13 = 0;
    do
    {
      v14 = self->_timestampsIncidentEvents.list[v13];
      PBDataWriterWriteUint64Field();
      ++v13;
    }

    while (v13 < self->_timestampsIncidentEvents.count);
  }

  v29 = 0u;
  v30 = 0u;
  v27 = 0u;
  v28 = 0u;
  v15 = self->_incidentEvents;
  v16 = [(NSMutableArray *)v15 countByEnumeratingWithState:&v27 objects:v35 count:16];
  if (v16)
  {
    v17 = v16;
    v18 = *v28;
    do
    {
      for (j = 0; j != v17; ++j)
      {
        if (*v28 != v18)
        {
          objc_enumerationMutation(v15);
        }

        v20 = *(*(&v27 + 1) + 8 * j);
        PBDataWriterWriteSubmessage();
      }

      v17 = [(NSMutableArray *)v15 countByEnumeratingWithState:&v27 objects:v35 count:16];
    }

    while (v17);
  }

  if (self->_groupIdentifier)
  {
    PBDataWriterWriteStringField();
  }

  v21 = self->_has;
  if ((v21 & 4) != 0)
  {
    version = self->_version;
    PBDataWriterWriteUint64Field();
    v21 = self->_has;
  }

  if ((v21 & 8) != 0)
  {
    dampeningType = self->_dampeningType;
    PBDataWriterWriteInt32Field();
  }

  v24 = *MEMORY[0x277D85DE8];
}

- (void)copyTo:(id)a3
{
  v4 = a3;
  has = self->_has;
  if ((has & 2) != 0)
  {
    v4[5] = self->_timestamp;
    *(v4 + 152) |= 2u;
    has = self->_has;
    if ((has & 0x10) == 0)
    {
LABEL_3:
      if ((has & 1) == 0)
      {
        goto LABEL_5;
      }

      goto LABEL_4;
    }
  }

  else if ((*&self->_has & 0x10) == 0)
  {
    goto LABEL_3;
  }

  *(v4 + 24) = self->_handledResult;
  *(v4 + 152) |= 0x10u;
  if (*&self->_has)
  {
LABEL_4:
    v4[4] = self->_duration;
    *(v4 + 152) |= 1u;
  }

LABEL_5:
  v18 = v4;
  if (self->_identifier)
  {
    [v4 setIdentifier:?];
  }

  if (self->_domain)
  {
    [v18 setDomain:?];
  }

  if (self->_type)
  {
    [v18 setType:?];
  }

  if (self->_subtype)
  {
    [v18 setSubtype:?];
  }

  if (self->_subtypeContext)
  {
    [v18 setSubtypeContext:?];
  }

  if (self->_detectedName)
  {
    [v18 setDetectedName:?];
  }

  if (self->_effectiveName)
  {
    [v18 setEffectiveName:?];
  }

  if ([(AWDSymptomsDiagnosticIncidentReport *)self relatedNamesCount])
  {
    [v18 clearRelatedNames];
    v6 = [(AWDSymptomsDiagnosticIncidentReport *)self relatedNamesCount];
    if (v6)
    {
      v7 = v6;
      for (i = 0; i != v7; ++i)
      {
        v9 = [(AWDSymptomsDiagnosticIncidentReport *)self relatedNamesAtIndex:i];
        [v18 addRelatedNames:v9];
      }
    }
  }

  if ([(AWDSymptomsDiagnosticIncidentReport *)self timestampsIncidentEventsCount])
  {
    [v18 clearTimestampsIncidentEvents];
    v10 = [(AWDSymptomsDiagnosticIncidentReport *)self timestampsIncidentEventsCount];
    if (v10)
    {
      v11 = v10;
      for (j = 0; j != v11; ++j)
      {
        [v18 addTimestampsIncidentEvents:{-[AWDSymptomsDiagnosticIncidentReport timestampsIncidentEventsAtIndex:](self, "timestampsIncidentEventsAtIndex:", j)}];
      }
    }
  }

  if ([(AWDSymptomsDiagnosticIncidentReport *)self incidentEventsCount])
  {
    [v18 clearIncidentEvents];
    v13 = [(AWDSymptomsDiagnosticIncidentReport *)self incidentEventsCount];
    if (v13)
    {
      v14 = v13;
      for (k = 0; k != v14; ++k)
      {
        v16 = [(AWDSymptomsDiagnosticIncidentReport *)self incidentEventsAtIndex:k];
        [v18 addIncidentEvents:v16];
      }
    }
  }

  if (self->_groupIdentifier)
  {
    [v18 setGroupIdentifier:?];
  }

  v17 = self->_has;
  if ((v17 & 4) != 0)
  {
    *(v18 + 6) = self->_version;
    *(v18 + 152) |= 4u;
    v17 = self->_has;
  }

  if ((v17 & 8) != 0)
  {
    *(v18 + 14) = self->_dampeningType;
    *(v18 + 152) |= 8u;
  }
}

- (id)copyWithZone:(_NSZone *)a3
{
  v49 = *MEMORY[0x277D85DE8];
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{a3), "init"}];
  v6 = v5;
  has = self->_has;
  if ((has & 2) != 0)
  {
    *(v5 + 40) = self->_timestamp;
    *(v5 + 152) |= 2u;
    has = self->_has;
    if ((has & 0x10) == 0)
    {
LABEL_3:
      if ((has & 1) == 0)
      {
        goto LABEL_5;
      }

      goto LABEL_4;
    }
  }

  else if ((*&self->_has & 0x10) == 0)
  {
    goto LABEL_3;
  }

  *(v5 + 96) = self->_handledResult;
  *(v5 + 152) |= 0x10u;
  if (*&self->_has)
  {
LABEL_4:
    *(v5 + 32) = self->_duration;
    *(v5 + 152) |= 1u;
  }

LABEL_5:
  v8 = [(NSString *)self->_identifier copyWithZone:a3];
  v9 = *(v6 + 104);
  *(v6 + 104) = v8;

  v10 = [(NSString *)self->_domain copyWithZone:a3];
  v11 = *(v6 + 72);
  *(v6 + 72) = v10;

  v12 = [(NSString *)self->_type copyWithZone:a3];
  v13 = *(v6 + 144);
  *(v6 + 144) = v12;

  v14 = [(NSString *)self->_subtype copyWithZone:a3];
  v15 = *(v6 + 128);
  *(v6 + 128) = v14;

  v16 = [(NSString *)self->_subtypeContext copyWithZone:a3];
  v17 = *(v6 + 136);
  *(v6 + 136) = v16;

  v18 = [(NSString *)self->_detectedName copyWithZone:a3];
  v19 = *(v6 + 64);
  *(v6 + 64) = v18;

  v20 = [(NSString *)self->_effectiveName copyWithZone:a3];
  v21 = *(v6 + 80);
  *(v6 + 80) = v20;

  v45 = 0u;
  v46 = 0u;
  v43 = 0u;
  v44 = 0u;
  v22 = self->_relatedNames;
  v23 = [(NSMutableArray *)v22 countByEnumeratingWithState:&v43 objects:v48 count:16];
  if (v23)
  {
    v24 = v23;
    v25 = *v44;
    do
    {
      for (i = 0; i != v24; ++i)
      {
        if (*v44 != v25)
        {
          objc_enumerationMutation(v22);
        }

        v27 = [*(*(&v43 + 1) + 8 * i) copyWithZone:a3];
        [v6 addRelatedNames:v27];
      }

      v24 = [(NSMutableArray *)v22 countByEnumeratingWithState:&v43 objects:v48 count:16];
    }

    while (v24);
  }

  PBRepeatedUInt64Copy();
  v41 = 0u;
  v42 = 0u;
  v39 = 0u;
  v40 = 0u;
  v28 = self->_incidentEvents;
  v29 = [(NSMutableArray *)v28 countByEnumeratingWithState:&v39 objects:v47 count:16];
  if (v29)
  {
    v30 = v29;
    v31 = *v40;
    do
    {
      for (j = 0; j != v30; ++j)
      {
        if (*v40 != v31)
        {
          objc_enumerationMutation(v28);
        }

        v33 = [*(*(&v39 + 1) + 8 * j) copyWithZone:{a3, v39}];
        [v6 addIncidentEvents:v33];
      }

      v30 = [(NSMutableArray *)v28 countByEnumeratingWithState:&v39 objects:v47 count:16];
    }

    while (v30);
  }

  v34 = [(NSString *)self->_groupIdentifier copyWithZone:a3];
  v35 = *(v6 + 88);
  *(v6 + 88) = v34;

  v36 = self->_has;
  if ((v36 & 4) != 0)
  {
    *(v6 + 48) = self->_version;
    *(v6 + 152) |= 4u;
    v36 = self->_has;
  }

  if ((v36 & 8) != 0)
  {
    *(v6 + 56) = self->_dampeningType;
    *(v6 + 152) |= 8u;
  }

  v37 = *MEMORY[0x277D85DE8];
  return v6;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (![v4 isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_47;
  }

  v5 = *(v4 + 152);
  if ((*&self->_has & 2) != 0)
  {
    if ((*(v4 + 152) & 2) == 0 || self->_timestamp != *(v4 + 5))
    {
      goto LABEL_47;
    }
  }

  else if ((*(v4 + 152) & 2) != 0)
  {
LABEL_47:
    v16 = 0;
    goto LABEL_48;
  }

  if ((*&self->_has & 0x10) != 0)
  {
    if ((*(v4 + 152) & 0x10) == 0 || self->_handledResult != *(v4 + 24))
    {
      goto LABEL_47;
    }
  }

  else if ((*(v4 + 152) & 0x10) != 0)
  {
    goto LABEL_47;
  }

  if (*&self->_has)
  {
    if ((*(v4 + 152) & 1) == 0 || self->_duration != *(v4 + 4))
    {
      goto LABEL_47;
    }
  }

  else if (*(v4 + 152))
  {
    goto LABEL_47;
  }

  identifier = self->_identifier;
  if (identifier | *(v4 + 13) && ![(NSString *)identifier isEqual:?])
  {
    goto LABEL_47;
  }

  domain = self->_domain;
  if (domain | *(v4 + 9))
  {
    if (![(NSString *)domain isEqual:?])
    {
      goto LABEL_47;
    }
  }

  type = self->_type;
  if (type | *(v4 + 18))
  {
    if (![(NSString *)type isEqual:?])
    {
      goto LABEL_47;
    }
  }

  subtype = self->_subtype;
  if (subtype | *(v4 + 16))
  {
    if (![(NSString *)subtype isEqual:?])
    {
      goto LABEL_47;
    }
  }

  subtypeContext = self->_subtypeContext;
  if (subtypeContext | *(v4 + 17))
  {
    if (![(NSString *)subtypeContext isEqual:?])
    {
      goto LABEL_47;
    }
  }

  detectedName = self->_detectedName;
  if (detectedName | *(v4 + 8))
  {
    if (![(NSString *)detectedName isEqual:?])
    {
      goto LABEL_47;
    }
  }

  effectiveName = self->_effectiveName;
  if (effectiveName | *(v4 + 10))
  {
    if (![(NSString *)effectiveName isEqual:?])
    {
      goto LABEL_47;
    }
  }

  relatedNames = self->_relatedNames;
  if (relatedNames | *(v4 + 15))
  {
    if (![(NSMutableArray *)relatedNames isEqual:?])
    {
      goto LABEL_47;
    }
  }

  if (!PBRepeatedUInt64IsEqual())
  {
    goto LABEL_47;
  }

  incidentEvents = self->_incidentEvents;
  if (incidentEvents | *(v4 + 14))
  {
    if (![(NSMutableArray *)incidentEvents isEqual:?])
    {
      goto LABEL_47;
    }
  }

  groupIdentifier = self->_groupIdentifier;
  if (groupIdentifier | *(v4 + 11))
  {
    if (![(NSString *)groupIdentifier isEqual:?])
    {
      goto LABEL_47;
    }
  }

  if ((*&self->_has & 4) != 0)
  {
    if ((*(v4 + 152) & 4) == 0 || self->_version != *(v4 + 6))
    {
      goto LABEL_47;
    }
  }

  else if ((*(v4 + 152) & 4) != 0)
  {
    goto LABEL_47;
  }

  v16 = (*(v4 + 152) & 8) == 0;
  if ((*&self->_has & 8) != 0)
  {
    if ((*(v4 + 152) & 8) == 0 || self->_dampeningType != *(v4 + 14))
    {
      goto LABEL_47;
    }

    v16 = 1;
  }

LABEL_48:

  return v16;
}

- (unint64_t)hash
{
  if ((*&self->_has & 2) == 0)
  {
    v19 = 0;
    if ((*&self->_has & 0x10) != 0)
    {
      goto LABEL_3;
    }

LABEL_6:
    v18 = 0;
    if (*&self->_has)
    {
      goto LABEL_4;
    }

    goto LABEL_7;
  }

  v19 = 2654435761u * self->_timestamp;
  if ((*&self->_has & 0x10) == 0)
  {
    goto LABEL_6;
  }

LABEL_3:
  v18 = 2654435761 * self->_handledResult;
  if (*&self->_has)
  {
LABEL_4:
    v17 = 2654435761u * self->_duration;
    goto LABEL_8;
  }

LABEL_7:
  v17 = 0;
LABEL_8:
  v16 = [(NSString *)self->_identifier hash];
  v15 = [(NSString *)self->_domain hash];
  v3 = [(NSString *)self->_type hash];
  v4 = [(NSString *)self->_subtype hash];
  v5 = [(NSString *)self->_subtypeContext hash];
  v6 = [(NSString *)self->_detectedName hash];
  v7 = [(NSString *)self->_effectiveName hash];
  v8 = [(NSMutableArray *)self->_relatedNames hash];
  v9 = PBRepeatedUInt64Hash();
  v10 = [(NSMutableArray *)self->_incidentEvents hash];
  v11 = [(NSString *)self->_groupIdentifier hash];
  if ((*&self->_has & 4) != 0)
  {
    v12 = 2654435761u * self->_version;
    if ((*&self->_has & 8) != 0)
    {
      goto LABEL_10;
    }

LABEL_12:
    v13 = 0;
    return v18 ^ v19 ^ v17 ^ v16 ^ v15 ^ v3 ^ v4 ^ v5 ^ v6 ^ v7 ^ v8 ^ v9 ^ v10 ^ v11 ^ v12 ^ v13;
  }

  v12 = 0;
  if ((*&self->_has & 8) == 0)
  {
    goto LABEL_12;
  }

LABEL_10:
  v13 = 2654435761 * self->_dampeningType;
  return v18 ^ v19 ^ v17 ^ v16 ^ v15 ^ v3 ^ v4 ^ v5 ^ v6 ^ v7 ^ v8 ^ v9 ^ v10 ^ v11 ^ v12 ^ v13;
}

- (void)mergeFrom:(id)a3
{
  v32 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = v4;
  v6 = *(v4 + 152);
  if ((v6 & 2) != 0)
  {
    self->_timestamp = *(v4 + 5);
    *&self->_has |= 2u;
    v6 = *(v4 + 152);
    if ((v6 & 0x10) == 0)
    {
LABEL_3:
      if ((v6 & 1) == 0)
      {
        goto LABEL_5;
      }

      goto LABEL_4;
    }
  }

  else if ((*(v4 + 152) & 0x10) == 0)
  {
    goto LABEL_3;
  }

  self->_handledResult = *(v4 + 24);
  *&self->_has |= 0x10u;
  if (*(v4 + 152))
  {
LABEL_4:
    self->_duration = *(v4 + 4);
    *&self->_has |= 1u;
  }

LABEL_5:
  if (*(v4 + 13))
  {
    [(AWDSymptomsDiagnosticIncidentReport *)self setIdentifier:?];
  }

  if (*(v5 + 9))
  {
    [(AWDSymptomsDiagnosticIncidentReport *)self setDomain:?];
  }

  if (*(v5 + 18))
  {
    [(AWDSymptomsDiagnosticIncidentReport *)self setType:?];
  }

  if (*(v5 + 16))
  {
    [(AWDSymptomsDiagnosticIncidentReport *)self setSubtype:?];
  }

  if (*(v5 + 17))
  {
    [(AWDSymptomsDiagnosticIncidentReport *)self setSubtypeContext:?];
  }

  if (*(v5 + 8))
  {
    [(AWDSymptomsDiagnosticIncidentReport *)self setDetectedName:?];
  }

  if (*(v5 + 10))
  {
    [(AWDSymptomsDiagnosticIncidentReport *)self setEffectiveName:?];
  }

  v28 = 0u;
  v29 = 0u;
  v26 = 0u;
  v27 = 0u;
  v7 = *(v5 + 15);
  v8 = [v7 countByEnumeratingWithState:&v26 objects:v31 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v27;
    do
    {
      for (i = 0; i != v9; ++i)
      {
        if (*v27 != v10)
        {
          objc_enumerationMutation(v7);
        }

        [(AWDSymptomsDiagnosticIncidentReport *)self addRelatedNames:*(*(&v26 + 1) + 8 * i)];
      }

      v9 = [v7 countByEnumeratingWithState:&v26 objects:v31 count:16];
    }

    while (v9);
  }

  v12 = [v5 timestampsIncidentEventsCount];
  if (v12)
  {
    v13 = v12;
    for (j = 0; j != v13; ++j)
    {
      -[AWDSymptomsDiagnosticIncidentReport addTimestampsIncidentEvents:](self, "addTimestampsIncidentEvents:", [v5 timestampsIncidentEventsAtIndex:j]);
    }
  }

  v24 = 0u;
  v25 = 0u;
  v22 = 0u;
  v23 = 0u;
  v15 = *(v5 + 14);
  v16 = [v15 countByEnumeratingWithState:&v22 objects:v30 count:16];
  if (v16)
  {
    v17 = v16;
    v18 = *v23;
    do
    {
      for (k = 0; k != v17; ++k)
      {
        if (*v23 != v18)
        {
          objc_enumerationMutation(v15);
        }

        [(AWDSymptomsDiagnosticIncidentReport *)self addIncidentEvents:*(*(&v22 + 1) + 8 * k), v22];
      }

      v17 = [v15 countByEnumeratingWithState:&v22 objects:v30 count:16];
    }

    while (v17);
  }

  if (*(v5 + 11))
  {
    [(AWDSymptomsDiagnosticIncidentReport *)self setGroupIdentifier:?];
  }

  v20 = *(v5 + 152);
  if ((v20 & 4) != 0)
  {
    self->_version = *(v5 + 6);
    *&self->_has |= 4u;
    v20 = *(v5 + 152);
  }

  if ((v20 & 8) != 0)
  {
    self->_dampeningType = *(v5 + 14);
    *&self->_has |= 8u;
  }

  v21 = *MEMORY[0x277D85DE8];
}

@end