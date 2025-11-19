@interface ABCPbSummarySignatureRequest
- (BOOL)isEqual:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (id)dictionaryRepresentation;
- (unint64_t)hash;
- (void)addAttachments:(id)a3;
- (void)copyTo:(id)a3;
- (void)mergeFrom:(id)a3;
- (void)setHasCaseStartTime:(BOOL)a3;
- (void)setHasLogSizeTotal:(BOOL)a3;
- (void)setHasRemoteTrigger:(BOOL)a3;
- (void)writeTo:(id)a3;
@end

@implementation ABCPbSummarySignatureRequest

- (void)setHasLogSizeTotal:(BOOL)a3
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

- (void)setHasCaseStartTime:(BOOL)a3
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

- (void)setHasRemoteTrigger:(BOOL)a3
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

- (void)addAttachments:(id)a3
{
  v4 = a3;
  attachments = self->_attachments;
  v8 = v4;
  if (!attachments)
  {
    v6 = objc_alloc_init(MEMORY[0x277CBEB18]);
    v7 = self->_attachments;
    self->_attachments = v6;

    v4 = v8;
    attachments = self->_attachments;
  }

  [(NSMutableArray *)attachments addObject:v4];
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v8.receiver = self;
  v8.super_class = ABCPbSummarySignatureRequest;
  v4 = [(ABCPbSummarySignatureRequest *)&v8 description];
  v5 = [(ABCPbSummarySignatureRequest *)self dictionaryRepresentation];
  v6 = [v3 stringWithFormat:@"%@ %@", v4, v5];

  return v6;
}

- (id)dictionaryRepresentation
{
  v39 = *MEMORY[0x277D85DE8];
  v3 = [MEMORY[0x277CBEB38] dictionary];
  v4 = v3;
  domain = self->_domain;
  if (domain)
  {
    [v3 setObject:domain forKey:@"domain"];
  }

  type = self->_type;
  if (type)
  {
    [v4 setObject:type forKey:@"type"];
  }

  subtype = self->_subtype;
  if (subtype)
  {
    [v4 setObject:subtype forKey:@"subtype"];
  }

  subtypeContext = self->_subtypeContext;
  if (subtypeContext)
  {
    [v4 setObject:subtypeContext forKey:@"subtype_context"];
  }

  caseIdentifier = self->_caseIdentifier;
  if (caseIdentifier)
  {
    [v4 setObject:caseIdentifier forKey:@"case_identifier"];
  }

  process = self->_process;
  if (process)
  {
    [v4 setObject:process forKey:@"process"];
  }

  build = self->_build;
  if (build)
  {
    [v4 setObject:build forKey:@"build"];
  }

  buildVariant = self->_buildVariant;
  if (buildVariant)
  {
    [v4 setObject:buildVariant forKey:@"build_variant"];
  }

  caseGroupIdentifier = self->_caseGroupIdentifier;
  if (caseGroupIdentifier)
  {
    [v4 setObject:caseGroupIdentifier forKey:@"case_group_identifier"];
  }

  has = self->_has;
  if ((has & 4) != 0)
  {
    v15 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:self->_logSizeTotal];
    [v4 setObject:v15 forKey:@"log_size_total"];

    has = self->_has;
  }

  if (has)
  {
    v16 = [MEMORY[0x277CCABB0] numberWithDouble:self->_caseClosedTime];
    [v4 setObject:v16 forKey:@"case_closed_time"];
  }

  caseClosureType = self->_caseClosureType;
  if (caseClosureType)
  {
    [v4 setObject:caseClosureType forKey:@"case_closure_type"];
  }

  if ((*&self->_has & 2) != 0)
  {
    v18 = [MEMORY[0x277CCABB0] numberWithDouble:self->_caseStartTime];
    [v4 setObject:v18 forKey:@"case_start_time"];
  }

  caseContext = self->_caseContext;
  if (caseContext)
  {
    [v4 setObject:caseContext forKey:@"case_context"];
  }

  caseDampeningType = self->_caseDampeningType;
  if (caseDampeningType)
  {
    [v4 setObject:caseDampeningType forKey:@"case_dampening_type"];
  }

  caseEffectiveProcess = self->_caseEffectiveProcess;
  if (caseEffectiveProcess)
  {
    [v4 setObject:caseEffectiveProcess forKey:@"case_effective_process"];
  }

  caseRelatedProcesses = self->_caseRelatedProcesses;
  if (caseRelatedProcesses)
  {
    [v4 setObject:caseRelatedProcesses forKey:@"case_related_processes"];
  }

  caseThresholdValues = self->_caseThresholdValues;
  if (caseThresholdValues)
  {
    [v4 setObject:caseThresholdValues forKey:@"case_threshold_values"];
  }

  if ((*&self->_has & 8) != 0)
  {
    v24 = [MEMORY[0x277CCABB0] numberWithBool:self->_remoteTrigger];
    [v4 setObject:v24 forKey:@"remote_trigger"];
  }

  if ([(NSMutableArray *)self->_attachments count])
  {
    v25 = [objc_alloc(MEMORY[0x277CBEB18]) initWithCapacity:{-[NSMutableArray count](self->_attachments, "count")}];
    v34 = 0u;
    v35 = 0u;
    v36 = 0u;
    v37 = 0u;
    v26 = self->_attachments;
    v27 = [(NSMutableArray *)v26 countByEnumeratingWithState:&v34 objects:v38 count:16];
    if (v27)
    {
      v28 = v27;
      v29 = *v35;
      do
      {
        for (i = 0; i != v28; ++i)
        {
          if (*v35 != v29)
          {
            objc_enumerationMutation(v26);
          }

          v31 = [*(*(&v34 + 1) + 8 * i) dictionaryRepresentation];
          [v25 addObject:v31];
        }

        v28 = [(NSMutableArray *)v26 countByEnumeratingWithState:&v34 objects:v38 count:16];
      }

      while (v28);
    }

    [v4 setObject:v25 forKey:@"attachments"];
  }

  v32 = *MEMORY[0x277D85DE8];

  return v4;
}

- (void)writeTo:(id)a3
{
  v22 = *MEMORY[0x277D85DE8];
  v4 = a3;
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

  if (self->_caseIdentifier)
  {
    PBDataWriterWriteStringField();
  }

  if (self->_process)
  {
    PBDataWriterWriteStringField();
  }

  if (self->_build)
  {
    PBDataWriterWriteStringField();
  }

  if (self->_buildVariant)
  {
    PBDataWriterWriteStringField();
  }

  if (self->_caseGroupIdentifier)
  {
    PBDataWriterWriteStringField();
  }

  has = self->_has;
  if ((has & 4) != 0)
  {
    logSizeTotal = self->_logSizeTotal;
    PBDataWriterWriteUint32Field();
    has = self->_has;
  }

  if (has)
  {
    caseClosedTime = self->_caseClosedTime;
    PBDataWriterWriteDoubleField();
  }

  if (self->_caseClosureType)
  {
    PBDataWriterWriteStringField();
  }

  if ((*&self->_has & 2) != 0)
  {
    caseStartTime = self->_caseStartTime;
    PBDataWriterWriteDoubleField();
  }

  if (self->_caseContext)
  {
    PBDataWriterWriteStringField();
  }

  if (self->_caseDampeningType)
  {
    PBDataWriterWriteStringField();
  }

  if (self->_caseEffectiveProcess)
  {
    PBDataWriterWriteStringField();
  }

  if (self->_caseRelatedProcesses)
  {
    PBDataWriterWriteStringField();
  }

  if (self->_caseThresholdValues)
  {
    PBDataWriterWriteStringField();
  }

  if ((*&self->_has & 8) != 0)
  {
    remoteTrigger = self->_remoteTrigger;
    PBDataWriterWriteBOOLField();
  }

  v19 = 0u;
  v20 = 0u;
  v17 = 0u;
  v18 = 0u;
  v10 = self->_attachments;
  v11 = [(NSMutableArray *)v10 countByEnumeratingWithState:&v17 objects:v21 count:16];
  if (v11)
  {
    v12 = v11;
    v13 = *v18;
    do
    {
      for (i = 0; i != v12; ++i)
      {
        if (*v18 != v13)
        {
          objc_enumerationMutation(v10);
        }

        v15 = *(*(&v17 + 1) + 8 * i);
        PBDataWriterWriteSubmessage();
      }

      v12 = [(NSMutableArray *)v10 countByEnumeratingWithState:&v17 objects:v21 count:16];
    }

    while (v12);
  }

  v16 = *MEMORY[0x277D85DE8];
}

- (void)copyTo:(id)a3
{
  v4 = a3;
  v10 = v4;
  if (self->_domain)
  {
    [v4 setDomain:?];
    v4 = v10;
  }

  if (self->_type)
  {
    [v10 setType:?];
    v4 = v10;
  }

  if (self->_subtype)
  {
    [v10 setSubtype:?];
    v4 = v10;
  }

  if (self->_subtypeContext)
  {
    [v10 setSubtypeContext:?];
    v4 = v10;
  }

  if (self->_caseIdentifier)
  {
    [v10 setCaseIdentifier:?];
    v4 = v10;
  }

  if (self->_process)
  {
    [v10 setProcess:?];
    v4 = v10;
  }

  if (self->_build)
  {
    [v10 setBuild:?];
    v4 = v10;
  }

  if (self->_buildVariant)
  {
    [v10 setBuildVariant:?];
    v4 = v10;
  }

  if (self->_caseGroupIdentifier)
  {
    [v10 setCaseGroupIdentifier:?];
    v4 = v10;
  }

  has = self->_has;
  if ((has & 4) != 0)
  {
    *(v4 + 30) = self->_logSizeTotal;
    *(v4 + 164) |= 4u;
    has = self->_has;
  }

  if (has)
  {
    *(v4 + 1) = *&self->_caseClosedTime;
    *(v4 + 164) |= 1u;
  }

  if (self->_caseClosureType)
  {
    [v10 setCaseClosureType:?];
    v4 = v10;
  }

  if ((*&self->_has & 2) != 0)
  {
    *(v4 + 2) = *&self->_caseStartTime;
    *(v4 + 164) |= 2u;
  }

  if (self->_caseContext)
  {
    [v10 setCaseContext:?];
    v4 = v10;
  }

  if (self->_caseDampeningType)
  {
    [v10 setCaseDampeningType:?];
    v4 = v10;
  }

  if (self->_caseEffectiveProcess)
  {
    [v10 setCaseEffectiveProcess:?];
    v4 = v10;
  }

  if (self->_caseRelatedProcesses)
  {
    [v10 setCaseRelatedProcesses:?];
    v4 = v10;
  }

  if (self->_caseThresholdValues)
  {
    [v10 setCaseThresholdValues:?];
    v4 = v10;
  }

  if ((*&self->_has & 8) != 0)
  {
    *(v4 + 160) = self->_remoteTrigger;
    *(v4 + 164) |= 8u;
  }

  if ([(ABCPbSummarySignatureRequest *)self attachmentsCount])
  {
    [v10 clearAttachments];
    v6 = [(ABCPbSummarySignatureRequest *)self attachmentsCount];
    if (v6)
    {
      v7 = v6;
      for (i = 0; i != v7; ++i)
      {
        v9 = [(ABCPbSummarySignatureRequest *)self attachmentsAtIndex:i];
        [v10 addAttachments:v9];
      }
    }
  }
}

- (id)copyWithZone:(_NSZone *)a3
{
  v50 = *MEMORY[0x277D85DE8];
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{a3), "init"}];
  v6 = [(NSString *)self->_domain copyWithZone:a3];
  v7 = *(v5 + 112);
  *(v5 + 112) = v6;

  v8 = [(NSString *)self->_type copyWithZone:a3];
  v9 = *(v5 + 152);
  *(v5 + 152) = v8;

  v10 = [(NSString *)self->_subtype copyWithZone:a3];
  v11 = *(v5 + 136);
  *(v5 + 136) = v10;

  v12 = [(NSString *)self->_subtypeContext copyWithZone:a3];
  v13 = *(v5 + 144);
  *(v5 + 144) = v12;

  v14 = [(NSString *)self->_caseIdentifier copyWithZone:a3];
  v15 = *(v5 + 88);
  *(v5 + 88) = v14;

  v16 = [(NSString *)self->_process copyWithZone:a3];
  v17 = *(v5 + 128);
  *(v5 + 128) = v16;

  v18 = [(NSString *)self->_build copyWithZone:a3];
  v19 = *(v5 + 32);
  *(v5 + 32) = v18;

  v20 = [(NSString *)self->_buildVariant copyWithZone:a3];
  v21 = *(v5 + 40);
  *(v5 + 40) = v20;

  v22 = [(NSString *)self->_caseGroupIdentifier copyWithZone:a3];
  v23 = *(v5 + 80);
  *(v5 + 80) = v22;

  has = self->_has;
  if ((has & 4) != 0)
  {
    *(v5 + 120) = self->_logSizeTotal;
    *(v5 + 164) |= 4u;
    has = self->_has;
  }

  if (has)
  {
    *(v5 + 8) = self->_caseClosedTime;
    *(v5 + 164) |= 1u;
  }

  v25 = [(NSString *)self->_caseClosureType copyWithZone:a3];
  v26 = *(v5 + 48);
  *(v5 + 48) = v25;

  if ((*&self->_has & 2) != 0)
  {
    *(v5 + 16) = self->_caseStartTime;
    *(v5 + 164) |= 2u;
  }

  v27 = [(NSString *)self->_caseContext copyWithZone:a3];
  v28 = *(v5 + 56);
  *(v5 + 56) = v27;

  v29 = [(NSString *)self->_caseDampeningType copyWithZone:a3];
  v30 = *(v5 + 64);
  *(v5 + 64) = v29;

  v31 = [(NSString *)self->_caseEffectiveProcess copyWithZone:a3];
  v32 = *(v5 + 72);
  *(v5 + 72) = v31;

  v33 = [(NSString *)self->_caseRelatedProcesses copyWithZone:a3];
  v34 = *(v5 + 96);
  *(v5 + 96) = v33;

  v35 = [(NSString *)self->_caseThresholdValues copyWithZone:a3];
  v36 = *(v5 + 104);
  *(v5 + 104) = v35;

  if ((*&self->_has & 8) != 0)
  {
    *(v5 + 160) = self->_remoteTrigger;
    *(v5 + 164) |= 8u;
  }

  v47 = 0u;
  v48 = 0u;
  v45 = 0u;
  v46 = 0u;
  v37 = self->_attachments;
  v38 = [(NSMutableArray *)v37 countByEnumeratingWithState:&v45 objects:v49 count:16];
  if (v38)
  {
    v39 = v38;
    v40 = *v46;
    do
    {
      for (i = 0; i != v39; ++i)
      {
        if (*v46 != v40)
        {
          objc_enumerationMutation(v37);
        }

        v42 = [*(*(&v45 + 1) + 8 * i) copyWithZone:{a3, v45}];
        [v5 addAttachments:v42];
      }

      v39 = [(NSMutableArray *)v37 countByEnumeratingWithState:&v45 objects:v49 count:16];
    }

    while (v39);
  }

  v43 = *MEMORY[0x277D85DE8];
  return v5;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (![v4 isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_53;
  }

  domain = self->_domain;
  if (domain | *(v4 + 14))
  {
    if (![(NSString *)domain isEqual:?])
    {
      goto LABEL_53;
    }
  }

  type = self->_type;
  if (type | *(v4 + 19))
  {
    if (![(NSString *)type isEqual:?])
    {
      goto LABEL_53;
    }
  }

  subtype = self->_subtype;
  if (subtype | *(v4 + 17))
  {
    if (![(NSString *)subtype isEqual:?])
    {
      goto LABEL_53;
    }
  }

  subtypeContext = self->_subtypeContext;
  if (subtypeContext | *(v4 + 18))
  {
    if (![(NSString *)subtypeContext isEqual:?])
    {
      goto LABEL_53;
    }
  }

  caseIdentifier = self->_caseIdentifier;
  if (caseIdentifier | *(v4 + 11))
  {
    if (![(NSString *)caseIdentifier isEqual:?])
    {
      goto LABEL_53;
    }
  }

  process = self->_process;
  if (process | *(v4 + 16))
  {
    if (![(NSString *)process isEqual:?])
    {
      goto LABEL_53;
    }
  }

  build = self->_build;
  if (build | *(v4 + 4))
  {
    if (![(NSString *)build isEqual:?])
    {
      goto LABEL_53;
    }
  }

  buildVariant = self->_buildVariant;
  if (buildVariant | *(v4 + 5))
  {
    if (![(NSString *)buildVariant isEqual:?])
    {
      goto LABEL_53;
    }
  }

  caseGroupIdentifier = self->_caseGroupIdentifier;
  if (caseGroupIdentifier | *(v4 + 10))
  {
    if (![(NSString *)caseGroupIdentifier isEqual:?])
    {
      goto LABEL_53;
    }
  }

  has = self->_has;
  v15 = *(v4 + 164);
  if ((has & 4) != 0)
  {
    if ((*(v4 + 164) & 4) == 0 || self->_logSizeTotal != *(v4 + 30))
    {
      goto LABEL_53;
    }
  }

  else if ((*(v4 + 164) & 4) != 0)
  {
    goto LABEL_53;
  }

  if (*&self->_has)
  {
    if ((*(v4 + 164) & 1) == 0 || self->_caseClosedTime != *(v4 + 1))
    {
      goto LABEL_53;
    }
  }

  else if (*(v4 + 164))
  {
    goto LABEL_53;
  }

  caseClosureType = self->_caseClosureType;
  if (caseClosureType | *(v4 + 6))
  {
    if (![(NSString *)caseClosureType isEqual:?])
    {
      goto LABEL_53;
    }

    has = self->_has;
  }

  v17 = *(v4 + 164);
  if ((has & 2) != 0)
  {
    if ((*(v4 + 164) & 2) == 0 || self->_caseStartTime != *(v4 + 2))
    {
      goto LABEL_53;
    }
  }

  else if ((*(v4 + 164) & 2) != 0)
  {
    goto LABEL_53;
  }

  caseContext = self->_caseContext;
  if (caseContext | *(v4 + 7) && ![(NSString *)caseContext isEqual:?])
  {
    goto LABEL_53;
  }

  caseDampeningType = self->_caseDampeningType;
  if (caseDampeningType | *(v4 + 8))
  {
    if (![(NSString *)caseDampeningType isEqual:?])
    {
      goto LABEL_53;
    }
  }

  caseEffectiveProcess = self->_caseEffectiveProcess;
  if (caseEffectiveProcess | *(v4 + 9))
  {
    if (![(NSString *)caseEffectiveProcess isEqual:?])
    {
      goto LABEL_53;
    }
  }

  caseRelatedProcesses = self->_caseRelatedProcesses;
  if (caseRelatedProcesses | *(v4 + 12))
  {
    if (![(NSString *)caseRelatedProcesses isEqual:?])
    {
      goto LABEL_53;
    }
  }

  caseThresholdValues = self->_caseThresholdValues;
  if (caseThresholdValues | *(v4 + 13))
  {
    if (![(NSString *)caseThresholdValues isEqual:?])
    {
      goto LABEL_53;
    }
  }

  v23 = *(v4 + 164);
  if ((*&self->_has & 8) == 0)
  {
    if ((*(v4 + 164) & 8) == 0)
    {
      goto LABEL_50;
    }

LABEL_53:
    v25 = 0;
    goto LABEL_54;
  }

  if ((*(v4 + 164) & 8) == 0)
  {
    goto LABEL_53;
  }

  v27 = *(v4 + 160);
  if (self->_remoteTrigger)
  {
    if ((*(v4 + 160) & 1) == 0)
    {
      goto LABEL_53;
    }
  }

  else if (*(v4 + 160))
  {
    goto LABEL_53;
  }

LABEL_50:
  attachments = self->_attachments;
  if (attachments | *(v4 + 3))
  {
    v25 = [(NSMutableArray *)attachments isEqual:?];
  }

  else
  {
    v25 = 1;
  }

LABEL_54:

  return v25;
}

- (unint64_t)hash
{
  v33 = [(NSString *)self->_domain hash];
  v32 = [(NSString *)self->_type hash];
  v31 = [(NSString *)self->_subtype hash];
  v30 = [(NSString *)self->_subtypeContext hash];
  v29 = [(NSString *)self->_caseIdentifier hash];
  v28 = [(NSString *)self->_process hash];
  v27 = [(NSString *)self->_build hash];
  v26 = [(NSString *)self->_buildVariant hash];
  v25 = [(NSString *)self->_caseGroupIdentifier hash];
  if ((*&self->_has & 4) != 0)
  {
    v23 = 2654435761 * self->_logSizeTotal;
    if (*&self->_has)
    {
      goto LABEL_3;
    }

LABEL_8:
    v8 = 0;
    goto LABEL_9;
  }

  v23 = 0;
  if ((*&self->_has & 1) == 0)
  {
    goto LABEL_8;
  }

LABEL_3:
  caseClosedTime = self->_caseClosedTime;
  if (caseClosedTime < 0.0)
  {
    caseClosedTime = -caseClosedTime;
  }

  *v3.i64 = floor(caseClosedTime + 0.5);
  v6 = (caseClosedTime - *v3.i64) * 1.84467441e19;
  *v4.i64 = *v3.i64 - trunc(*v3.i64 * 5.42101086e-20) * 1.84467441e19;
  v7.f64[0] = NAN;
  v7.f64[1] = NAN;
  v8 = 2654435761u * *vbslq_s8(vnegq_f64(v7), v4, v3).i64;
  if (v6 >= 0.0)
  {
    if (v6 > 0.0)
    {
      v8 += v6;
    }
  }

  else
  {
    v8 -= fabs(v6);
  }

LABEL_9:
  v9 = [(NSString *)self->_caseClosureType hash];
  if ((*&self->_has & 2) != 0)
  {
    caseStartTime = self->_caseStartTime;
    if (caseStartTime < 0.0)
    {
      caseStartTime = -caseStartTime;
    }

    *v10.i64 = floor(caseStartTime + 0.5);
    v14 = (caseStartTime - *v10.i64) * 1.84467441e19;
    *v11.i64 = *v10.i64 - trunc(*v10.i64 * 5.42101086e-20) * 1.84467441e19;
    v15.f64[0] = NAN;
    v15.f64[1] = NAN;
    v12 = 2654435761u * *vbslq_s8(vnegq_f64(v15), v11, v10).i64;
    if (v14 >= 0.0)
    {
      if (v14 > 0.0)
      {
        v12 += v14;
      }
    }

    else
    {
      v12 -= fabs(v14);
    }
  }

  else
  {
    v12 = 0;
  }

  v16 = [(NSString *)self->_caseContext hash];
  v17 = [(NSString *)self->_caseDampeningType hash];
  v18 = [(NSString *)self->_caseEffectiveProcess hash];
  v19 = [(NSString *)self->_caseRelatedProcesses hash];
  v20 = [(NSString *)self->_caseThresholdValues hash];
  if ((*&self->_has & 8) != 0)
  {
    v21 = 2654435761 * self->_remoteTrigger;
  }

  else
  {
    v21 = 0;
  }

  return v32 ^ v33 ^ v31 ^ v30 ^ v29 ^ v28 ^ v27 ^ v26 ^ v25 ^ v24 ^ v8 ^ v9 ^ v12 ^ v16 ^ v17 ^ v18 ^ v19 ^ v20 ^ v21 ^ [(NSMutableArray *)self->_attachments hash];
}

- (void)mergeFrom:(id)a3
{
  v17 = *MEMORY[0x277D85DE8];
  v4 = a3;
  if (*(v4 + 14))
  {
    [(ABCPbSummarySignatureRequest *)self setDomain:?];
  }

  if (*(v4 + 19))
  {
    [(ABCPbSummarySignatureRequest *)self setType:?];
  }

  if (*(v4 + 17))
  {
    [(ABCPbSummarySignatureRequest *)self setSubtype:?];
  }

  if (*(v4 + 18))
  {
    [(ABCPbSummarySignatureRequest *)self setSubtypeContext:?];
  }

  if (*(v4 + 11))
  {
    [(ABCPbSummarySignatureRequest *)self setCaseIdentifier:?];
  }

  if (*(v4 + 16))
  {
    [(ABCPbSummarySignatureRequest *)self setProcess:?];
  }

  if (*(v4 + 4))
  {
    [(ABCPbSummarySignatureRequest *)self setBuild:?];
  }

  if (*(v4 + 5))
  {
    [(ABCPbSummarySignatureRequest *)self setBuildVariant:?];
  }

  if (*(v4 + 10))
  {
    [(ABCPbSummarySignatureRequest *)self setCaseGroupIdentifier:?];
  }

  v5 = *(v4 + 164);
  if ((v5 & 4) != 0)
  {
    self->_logSizeTotal = *(v4 + 30);
    *&self->_has |= 4u;
    v5 = *(v4 + 164);
  }

  if (v5)
  {
    self->_caseClosedTime = *(v4 + 1);
    *&self->_has |= 1u;
  }

  if (*(v4 + 6))
  {
    [(ABCPbSummarySignatureRequest *)self setCaseClosureType:?];
  }

  if ((*(v4 + 164) & 2) != 0)
  {
    self->_caseStartTime = *(v4 + 2);
    *&self->_has |= 2u;
  }

  if (*(v4 + 7))
  {
    [(ABCPbSummarySignatureRequest *)self setCaseContext:?];
  }

  if (*(v4 + 8))
  {
    [(ABCPbSummarySignatureRequest *)self setCaseDampeningType:?];
  }

  if (*(v4 + 9))
  {
    [(ABCPbSummarySignatureRequest *)self setCaseEffectiveProcess:?];
  }

  if (*(v4 + 12))
  {
    [(ABCPbSummarySignatureRequest *)self setCaseRelatedProcesses:?];
  }

  if (*(v4 + 13))
  {
    [(ABCPbSummarySignatureRequest *)self setCaseThresholdValues:?];
  }

  if ((*(v4 + 164) & 8) != 0)
  {
    self->_remoteTrigger = *(v4 + 160);
    *&self->_has |= 8u;
  }

  v14 = 0u;
  v15 = 0u;
  v12 = 0u;
  v13 = 0u;
  v6 = *(v4 + 3);
  v7 = [v6 countByEnumeratingWithState:&v12 objects:v16 count:16];
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

        [(ABCPbSummarySignatureRequest *)self addAttachments:*(*(&v12 + 1) + 8 * i), v12];
      }

      v8 = [v6 countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v8);
  }

  v11 = *MEMORY[0x277D85DE8];
}

@end