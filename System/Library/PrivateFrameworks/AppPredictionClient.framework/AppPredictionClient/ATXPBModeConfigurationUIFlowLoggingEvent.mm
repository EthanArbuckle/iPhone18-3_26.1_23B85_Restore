@interface ATXPBModeConfigurationUIFlowLoggingEvent
- (BOOL)isEqual:(id)equal;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (id)dictionaryRepresentation;
- (id)initFromJSON:(id)n;
- (id)jsonRepresentation;
- (id)modeConfigurationEntityTypeAsString:(int)string;
- (id)modeConfigurationTypeAsString:(int)string;
- (id)modeConfigurationUIAsString:(int)string;
- (int)StringAsModeConfigurationEntityType:(id)type;
- (int)StringAsModeConfigurationType:(id)type;
- (int)StringAsModeConfigurationUI:(id)i;
- (int)modeConfigurationEntityType;
- (int)modeConfigurationType;
- (int)modeConfigurationUI;
- (unint64_t)hash;
- (void)addCandidateEntityIdentifiers:(id)identifiers;
- (void)addCurrentEntityIdentifiers:(id)identifiers;
- (void)addPreviousEntityIdentifiers:(id)identifiers;
- (void)addSuggestedEntityIdentifiers:(id)identifiers;
- (void)copyTo:(id)to;
- (void)mergeFrom:(id)from;
- (void)setHasModeConfigurationEntityType:(BOOL)type;
- (void)setHasModeConfigurationType:(BOOL)type;
- (void)setHasModeConfigurationUI:(BOOL)i;
- (void)writeTo:(id)to;
@end

@implementation ATXPBModeConfigurationUIFlowLoggingEvent

- (int)modeConfigurationUI
{
  if ((*&self->_has & 8) != 0)
  {
    return self->_modeConfigurationUI;
  }

  else
  {
    return 0;
  }
}

- (void)setHasModeConfigurationUI:(BOOL)i
{
  if (i)
  {
    v3 = 8;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xF7 | v3;
}

- (id)modeConfigurationUIAsString:(int)string
{
  if (string >= 4)
  {
    v4 = [MEMORY[0x1E696AEC0] stringWithFormat:@"(unknown: %i)", *&string];
  }

  else
  {
    v4 = off_1E80C23A0[string];
  }

  return v4;
}

- (int)StringAsModeConfigurationUI:(id)i
{
  iCopy = i;
  if ([iCopy isEqualToString:@"Setup"])
  {
    v4 = 0;
  }

  else if ([iCopy isEqualToString:@"Settings"])
  {
    v4 = 1;
  }

  else if ([iCopy isEqualToString:@"OnBoarding"])
  {
    v4 = 2;
  }

  else if ([iCopy isEqualToString:@"Total"])
  {
    v4 = 3;
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (int)modeConfigurationEntityType
{
  if ((*&self->_has & 2) != 0)
  {
    return self->_modeConfigurationEntityType;
  }

  else
  {
    return 0;
  }
}

- (void)setHasModeConfigurationEntityType:(BOOL)type
{
  if (type)
  {
    v3 = 2;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFD | v3;
}

- (id)modeConfigurationEntityTypeAsString:(int)string
{
  if (string >= 3)
  {
    v4 = [MEMORY[0x1E696AEC0] stringWithFormat:@"(unknown: %i)", *&string];
  }

  else
  {
    v4 = off_1E80C23C0[string];
  }

  return v4;
}

- (int)StringAsModeConfigurationEntityType:(id)type
{
  typeCopy = type;
  if ([typeCopy isEqualToString:@"Apps"])
  {
    v4 = 0;
  }

  else if ([typeCopy isEqualToString:@"Contacts"])
  {
    v4 = 1;
  }

  else if ([typeCopy isEqualToString:@"Total"])
  {
    v4 = 2;
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (void)addPreviousEntityIdentifiers:(id)identifiers
{
  identifiersCopy = identifiers;
  previousEntityIdentifiers = self->_previousEntityIdentifiers;
  v8 = identifiersCopy;
  if (!previousEntityIdentifiers)
  {
    v6 = objc_alloc_init(MEMORY[0x1E695DF70]);
    v7 = self->_previousEntityIdentifiers;
    self->_previousEntityIdentifiers = v6;

    identifiersCopy = v8;
    previousEntityIdentifiers = self->_previousEntityIdentifiers;
  }

  [(NSMutableArray *)previousEntityIdentifiers addObject:identifiersCopy];
}

- (void)addSuggestedEntityIdentifiers:(id)identifiers
{
  identifiersCopy = identifiers;
  suggestedEntityIdentifiers = self->_suggestedEntityIdentifiers;
  v8 = identifiersCopy;
  if (!suggestedEntityIdentifiers)
  {
    v6 = objc_alloc_init(MEMORY[0x1E695DF70]);
    v7 = self->_suggestedEntityIdentifiers;
    self->_suggestedEntityIdentifiers = v6;

    identifiersCopy = v8;
    suggestedEntityIdentifiers = self->_suggestedEntityIdentifiers;
  }

  [(NSMutableArray *)suggestedEntityIdentifiers addObject:identifiersCopy];
}

- (void)addCurrentEntityIdentifiers:(id)identifiers
{
  identifiersCopy = identifiers;
  currentEntityIdentifiers = self->_currentEntityIdentifiers;
  v8 = identifiersCopy;
  if (!currentEntityIdentifiers)
  {
    v6 = objc_alloc_init(MEMORY[0x1E695DF70]);
    v7 = self->_currentEntityIdentifiers;
    self->_currentEntityIdentifiers = v6;

    identifiersCopy = v8;
    currentEntityIdentifiers = self->_currentEntityIdentifiers;
  }

  [(NSMutableArray *)currentEntityIdentifiers addObject:identifiersCopy];
}

- (int)modeConfigurationType
{
  if ((*&self->_has & 4) != 0)
  {
    return self->_modeConfigurationType;
  }

  else
  {
    return 0;
  }
}

- (void)setHasModeConfigurationType:(BOOL)type
{
  if (type)
  {
    v3 = 4;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFB | v3;
}

- (id)modeConfigurationTypeAsString:(int)string
{
  if (string >= 3)
  {
    v4 = [MEMORY[0x1E696AEC0] stringWithFormat:@"(unknown: %i)", *&string];
  }

  else
  {
    v4 = off_1E80C23D8[string];
  }

  return v4;
}

- (int)StringAsModeConfigurationType:(id)type
{
  typeCopy = type;
  if ([typeCopy isEqualToString:@"Allow"])
  {
    v4 = 0;
  }

  else if ([typeCopy isEqualToString:@"Deny"])
  {
    v4 = 1;
  }

  else if ([typeCopy isEqualToString:@"Total"])
  {
    v4 = 2;
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (void)addCandidateEntityIdentifiers:(id)identifiers
{
  identifiersCopy = identifiers;
  candidateEntityIdentifiers = self->_candidateEntityIdentifiers;
  v8 = identifiersCopy;
  if (!candidateEntityIdentifiers)
  {
    v6 = objc_alloc_init(MEMORY[0x1E695DF70]);
    v7 = self->_candidateEntityIdentifiers;
    self->_candidateEntityIdentifiers = v6;

    identifiersCopy = v8;
    candidateEntityIdentifiers = self->_candidateEntityIdentifiers;
  }

  [(NSMutableArray *)candidateEntityIdentifiers addObject:identifiersCopy];
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v8.receiver = self;
  v8.super_class = ATXPBModeConfigurationUIFlowLoggingEvent;
  v4 = [(ATXPBModeConfigurationUIFlowLoggingEvent *)&v8 description];
  dictionaryRepresentation = [(ATXPBModeConfigurationUIFlowLoggingEvent *)self dictionaryRepresentation];
  v6 = [v3 stringWithFormat:@"%@ %@", v4, dictionaryRepresentation];

  return v6;
}

- (id)dictionaryRepresentation
{
  dictionary = [MEMORY[0x1E695DF90] dictionary];
  if (*&self->_has)
  {
    v4 = [MEMORY[0x1E696AD98] numberWithDouble:self->_secondsSinceReferenceDate];
    [dictionary setObject:v4 forKey:@"secondsSinceReferenceDate"];
  }

  dndModeUUID = self->_dndModeUUID;
  if (dndModeUUID)
  {
    [dictionary setObject:dndModeUUID forKey:@"dndModeUUID"];
  }

  has = self->_has;
  if ((has & 8) != 0)
  {
    modeConfigurationUI = self->_modeConfigurationUI;
    if (modeConfigurationUI >= 4)
    {
      v8 = [MEMORY[0x1E696AEC0] stringWithFormat:@"(unknown: %i)", self->_modeConfigurationUI];
    }

    else
    {
      v8 = off_1E80C23A0[modeConfigurationUI];
    }

    [dictionary setObject:v8 forKey:@"modeConfigurationUI"];

    has = self->_has;
  }

  if ((has & 2) != 0)
  {
    modeConfigurationEntityType = self->_modeConfigurationEntityType;
    if (modeConfigurationEntityType >= 3)
    {
      v10 = [MEMORY[0x1E696AEC0] stringWithFormat:@"(unknown: %i)", self->_modeConfigurationEntityType];
    }

    else
    {
      v10 = off_1E80C23C0[modeConfigurationEntityType];
    }

    [dictionary setObject:v10 forKey:@"modeConfigurationEntityType"];
  }

  previousEntityIdentifiers = self->_previousEntityIdentifiers;
  if (previousEntityIdentifiers)
  {
    [dictionary setObject:previousEntityIdentifiers forKey:@"previousEntityIdentifiers"];
  }

  suggestedEntityIdentifiers = self->_suggestedEntityIdentifiers;
  if (suggestedEntityIdentifiers)
  {
    [dictionary setObject:suggestedEntityIdentifiers forKey:@"suggestedEntityIdentifiers"];
  }

  currentEntityIdentifiers = self->_currentEntityIdentifiers;
  if (currentEntityIdentifiers)
  {
    [dictionary setObject:currentEntityIdentifiers forKey:@"currentEntityIdentifiers"];
  }

  if ((*&self->_has & 4) != 0)
  {
    modeConfigurationType = self->_modeConfigurationType;
    if (modeConfigurationType >= 3)
    {
      v15 = [MEMORY[0x1E696AEC0] stringWithFormat:@"(unknown: %i)", self->_modeConfigurationType];
    }

    else
    {
      v15 = off_1E80C23D8[modeConfigurationType];
    }

    [dictionary setObject:v15 forKey:@"modeConfigurationType"];
  }

  candidateEntityIdentifiers = self->_candidateEntityIdentifiers;
  if (candidateEntityIdentifiers)
  {
    [dictionary setObject:candidateEntityIdentifiers forKey:@"candidateEntityIdentifiers"];
  }

  return dictionary;
}

- (void)writeTo:(id)to
{
  v46 = *MEMORY[0x1E69E9840];
  toCopy = to;
  if (*&self->_has)
  {
    PBDataWriterWriteDoubleField();
  }

  if (self->_dndModeUUID)
  {
    PBDataWriterWriteStringField();
  }

  has = self->_has;
  if ((has & 8) != 0)
  {
    PBDataWriterWriteInt32Field();
    has = self->_has;
  }

  if ((has & 2) != 0)
  {
    PBDataWriterWriteInt32Field();
  }

  v40 = 0u;
  v41 = 0u;
  v38 = 0u;
  v39 = 0u;
  v6 = self->_previousEntityIdentifiers;
  v7 = [(NSMutableArray *)v6 countByEnumeratingWithState:&v38 objects:v45 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v39;
    do
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v39 != v9)
        {
          objc_enumerationMutation(v6);
        }

        PBDataWriterWriteStringField();
      }

      v8 = [(NSMutableArray *)v6 countByEnumeratingWithState:&v38 objects:v45 count:16];
    }

    while (v8);
  }

  v36 = 0u;
  v37 = 0u;
  v34 = 0u;
  v35 = 0u;
  v11 = self->_suggestedEntityIdentifiers;
  v12 = [(NSMutableArray *)v11 countByEnumeratingWithState:&v34 objects:v44 count:16];
  if (v12)
  {
    v13 = v12;
    v14 = *v35;
    do
    {
      for (j = 0; j != v13; ++j)
      {
        if (*v35 != v14)
        {
          objc_enumerationMutation(v11);
        }

        PBDataWriterWriteStringField();
      }

      v13 = [(NSMutableArray *)v11 countByEnumeratingWithState:&v34 objects:v44 count:16];
    }

    while (v13);
  }

  v32 = 0u;
  v33 = 0u;
  v30 = 0u;
  v31 = 0u;
  v16 = self->_currentEntityIdentifiers;
  v17 = [(NSMutableArray *)v16 countByEnumeratingWithState:&v30 objects:v43 count:16];
  if (v17)
  {
    v18 = v17;
    v19 = *v31;
    do
    {
      for (k = 0; k != v18; ++k)
      {
        if (*v31 != v19)
        {
          objc_enumerationMutation(v16);
        }

        PBDataWriterWriteStringField();
      }

      v18 = [(NSMutableArray *)v16 countByEnumeratingWithState:&v30 objects:v43 count:16];
    }

    while (v18);
  }

  if ((*&self->_has & 4) != 0)
  {
    PBDataWriterWriteInt32Field();
  }

  v28 = 0u;
  v29 = 0u;
  v26 = 0u;
  v27 = 0u;
  v21 = self->_candidateEntityIdentifiers;
  v22 = [(NSMutableArray *)v21 countByEnumeratingWithState:&v26 objects:v42 count:16];
  if (v22)
  {
    v23 = v22;
    v24 = *v27;
    do
    {
      for (m = 0; m != v23; ++m)
      {
        if (*v27 != v24)
        {
          objc_enumerationMutation(v21);
        }

        PBDataWriterWriteStringField();
      }

      v23 = [(NSMutableArray *)v21 countByEnumeratingWithState:&v26 objects:v42 count:16];
    }

    while (v23);
  }
}

- (void)copyTo:(id)to
{
  toCopy = to;
  if (*&self->_has)
  {
    toCopy[1] = *&self->_secondsSinceReferenceDate;
    *(toCopy + 72) |= 1u;
  }

  v22 = toCopy;
  if (self->_dndModeUUID)
  {
    [toCopy setDndModeUUID:?];
    toCopy = v22;
  }

  has = self->_has;
  if ((has & 8) != 0)
  {
    *(toCopy + 12) = self->_modeConfigurationUI;
    *(toCopy + 72) |= 8u;
    has = self->_has;
  }

  if ((has & 2) != 0)
  {
    *(toCopy + 10) = self->_modeConfigurationEntityType;
    *(toCopy + 72) |= 2u;
  }

  if ([(ATXPBModeConfigurationUIFlowLoggingEvent *)self previousEntityIdentifiersCount])
  {
    [v22 clearPreviousEntityIdentifiers];
    previousEntityIdentifiersCount = [(ATXPBModeConfigurationUIFlowLoggingEvent *)self previousEntityIdentifiersCount];
    if (previousEntityIdentifiersCount)
    {
      v7 = previousEntityIdentifiersCount;
      for (i = 0; i != v7; ++i)
      {
        v9 = [(ATXPBModeConfigurationUIFlowLoggingEvent *)self previousEntityIdentifiersAtIndex:i];
        [v22 addPreviousEntityIdentifiers:v9];
      }
    }
  }

  if ([(ATXPBModeConfigurationUIFlowLoggingEvent *)self suggestedEntityIdentifiersCount])
  {
    [v22 clearSuggestedEntityIdentifiers];
    suggestedEntityIdentifiersCount = [(ATXPBModeConfigurationUIFlowLoggingEvent *)self suggestedEntityIdentifiersCount];
    if (suggestedEntityIdentifiersCount)
    {
      v11 = suggestedEntityIdentifiersCount;
      for (j = 0; j != v11; ++j)
      {
        v13 = [(ATXPBModeConfigurationUIFlowLoggingEvent *)self suggestedEntityIdentifiersAtIndex:j];
        [v22 addSuggestedEntityIdentifiers:v13];
      }
    }
  }

  if ([(ATXPBModeConfigurationUIFlowLoggingEvent *)self currentEntityIdentifiersCount])
  {
    [v22 clearCurrentEntityIdentifiers];
    currentEntityIdentifiersCount = [(ATXPBModeConfigurationUIFlowLoggingEvent *)self currentEntityIdentifiersCount];
    if (currentEntityIdentifiersCount)
    {
      v15 = currentEntityIdentifiersCount;
      for (k = 0; k != v15; ++k)
      {
        v17 = [(ATXPBModeConfigurationUIFlowLoggingEvent *)self currentEntityIdentifiersAtIndex:k];
        [v22 addCurrentEntityIdentifiers:v17];
      }
    }
  }

  if ((*&self->_has & 4) != 0)
  {
    *(v22 + 11) = self->_modeConfigurationType;
    *(v22 + 72) |= 4u;
  }

  if ([(ATXPBModeConfigurationUIFlowLoggingEvent *)self candidateEntityIdentifiersCount])
  {
    [v22 clearCandidateEntityIdentifiers];
    candidateEntityIdentifiersCount = [(ATXPBModeConfigurationUIFlowLoggingEvent *)self candidateEntityIdentifiersCount];
    if (candidateEntityIdentifiersCount)
    {
      v19 = candidateEntityIdentifiersCount;
      for (m = 0; m != v19; ++m)
      {
        v21 = [(ATXPBModeConfigurationUIFlowLoggingEvent *)self candidateEntityIdentifiersAtIndex:m];
        [v22 addCandidateEntityIdentifiers:v21];
      }
    }
  }
}

- (id)copyWithZone:(_NSZone *)zone
{
  v55 = *MEMORY[0x1E69E9840];
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
  v6 = v5;
  if (*&self->_has)
  {
    *(v5 + 8) = self->_secondsSinceReferenceDate;
    *(v5 + 72) |= 1u;
  }

  v7 = [(NSString *)self->_dndModeUUID copyWithZone:zone];
  v8 = *(v6 + 32);
  *(v6 + 32) = v7;

  has = self->_has;
  if ((has & 8) != 0)
  {
    *(v6 + 48) = self->_modeConfigurationUI;
    *(v6 + 72) |= 8u;
    has = self->_has;
  }

  if ((has & 2) != 0)
  {
    *(v6 + 40) = self->_modeConfigurationEntityType;
    *(v6 + 72) |= 2u;
  }

  v49 = 0u;
  v50 = 0u;
  v47 = 0u;
  v48 = 0u;
  v10 = self->_previousEntityIdentifiers;
  v11 = [(NSMutableArray *)v10 countByEnumeratingWithState:&v47 objects:v54 count:16];
  if (v11)
  {
    v12 = v11;
    v13 = *v48;
    do
    {
      for (i = 0; i != v12; ++i)
      {
        if (*v48 != v13)
        {
          objc_enumerationMutation(v10);
        }

        v15 = [*(*(&v47 + 1) + 8 * i) copyWithZone:zone];
        [v6 addPreviousEntityIdentifiers:v15];
      }

      v12 = [(NSMutableArray *)v10 countByEnumeratingWithState:&v47 objects:v54 count:16];
    }

    while (v12);
  }

  v45 = 0u;
  v46 = 0u;
  v43 = 0u;
  v44 = 0u;
  v16 = self->_suggestedEntityIdentifiers;
  v17 = [(NSMutableArray *)v16 countByEnumeratingWithState:&v43 objects:v53 count:16];
  if (v17)
  {
    v18 = v17;
    v19 = *v44;
    do
    {
      for (j = 0; j != v18; ++j)
      {
        if (*v44 != v19)
        {
          objc_enumerationMutation(v16);
        }

        v21 = [*(*(&v43 + 1) + 8 * j) copyWithZone:zone];
        [v6 addSuggestedEntityIdentifiers:v21];
      }

      v18 = [(NSMutableArray *)v16 countByEnumeratingWithState:&v43 objects:v53 count:16];
    }

    while (v18);
  }

  v41 = 0u;
  v42 = 0u;
  v39 = 0u;
  v40 = 0u;
  v22 = self->_currentEntityIdentifiers;
  v23 = [(NSMutableArray *)v22 countByEnumeratingWithState:&v39 objects:v52 count:16];
  if (v23)
  {
    v24 = v23;
    v25 = *v40;
    do
    {
      for (k = 0; k != v24; ++k)
      {
        if (*v40 != v25)
        {
          objc_enumerationMutation(v22);
        }

        v27 = [*(*(&v39 + 1) + 8 * k) copyWithZone:zone];
        [v6 addCurrentEntityIdentifiers:v27];
      }

      v24 = [(NSMutableArray *)v22 countByEnumeratingWithState:&v39 objects:v52 count:16];
    }

    while (v24);
  }

  if ((*&self->_has & 4) != 0)
  {
    *(v6 + 44) = self->_modeConfigurationType;
    *(v6 + 72) |= 4u;
  }

  v37 = 0u;
  v38 = 0u;
  v35 = 0u;
  v36 = 0u;
  v28 = self->_candidateEntityIdentifiers;
  v29 = [(NSMutableArray *)v28 countByEnumeratingWithState:&v35 objects:v51 count:16];
  if (v29)
  {
    v30 = v29;
    v31 = *v36;
    do
    {
      for (m = 0; m != v30; ++m)
      {
        if (*v36 != v31)
        {
          objc_enumerationMutation(v28);
        }

        v33 = [*(*(&v35 + 1) + 8 * m) copyWithZone:{zone, v35}];
        [v6 addCandidateEntityIdentifiers:v33];
      }

      v30 = [(NSMutableArray *)v28 countByEnumeratingWithState:&v35 objects:v51 count:16];
    }

    while (v30);
  }

  return v6;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (![equalCopy isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_33;
  }

  has = self->_has;
  if (has)
  {
    if ((*(equalCopy + 72) & 1) == 0 || self->_secondsSinceReferenceDate != *(equalCopy + 1))
    {
      goto LABEL_33;
    }
  }

  else if (*(equalCopy + 72))
  {
    goto LABEL_33;
  }

  dndModeUUID = self->_dndModeUUID;
  if (dndModeUUID | *(equalCopy + 4))
  {
    if (![(NSString *)dndModeUUID isEqual:?])
    {
LABEL_33:
      v11 = 0;
      goto LABEL_34;
    }

    has = self->_has;
  }

  if ((has & 8) != 0)
  {
    if ((*(equalCopy + 72) & 8) == 0 || self->_modeConfigurationUI != *(equalCopy + 12))
    {
      goto LABEL_33;
    }
  }

  else if ((*(equalCopy + 72) & 8) != 0)
  {
    goto LABEL_33;
  }

  if ((has & 2) != 0)
  {
    if ((*(equalCopy + 72) & 2) == 0 || self->_modeConfigurationEntityType != *(equalCopy + 10))
    {
      goto LABEL_33;
    }
  }

  else if ((*(equalCopy + 72) & 2) != 0)
  {
    goto LABEL_33;
  }

  previousEntityIdentifiers = self->_previousEntityIdentifiers;
  if (previousEntityIdentifiers | *(equalCopy + 7) && ![(NSMutableArray *)previousEntityIdentifiers isEqual:?])
  {
    goto LABEL_33;
  }

  suggestedEntityIdentifiers = self->_suggestedEntityIdentifiers;
  if (suggestedEntityIdentifiers | *(equalCopy + 8))
  {
    if (![(NSMutableArray *)suggestedEntityIdentifiers isEqual:?])
    {
      goto LABEL_33;
    }
  }

  currentEntityIdentifiers = self->_currentEntityIdentifiers;
  if (currentEntityIdentifiers | *(equalCopy + 3))
  {
    if (![(NSMutableArray *)currentEntityIdentifiers isEqual:?])
    {
      goto LABEL_33;
    }
  }

  if ((*&self->_has & 4) != 0)
  {
    if ((*(equalCopy + 72) & 4) == 0 || self->_modeConfigurationType != *(equalCopy + 11))
    {
      goto LABEL_33;
    }
  }

  else if ((*(equalCopy + 72) & 4) != 0)
  {
    goto LABEL_33;
  }

  candidateEntityIdentifiers = self->_candidateEntityIdentifiers;
  if (candidateEntityIdentifiers | *(equalCopy + 2))
  {
    v11 = [(NSMutableArray *)candidateEntityIdentifiers isEqual:?];
  }

  else
  {
    v11 = 1;
  }

LABEL_34:

  return v11;
}

- (unint64_t)hash
{
  if (*&self->_has)
  {
    secondsSinceReferenceDate = self->_secondsSinceReferenceDate;
    if (secondsSinceReferenceDate < 0.0)
    {
      secondsSinceReferenceDate = -secondsSinceReferenceDate;
    }

    *v2.i64 = floor(secondsSinceReferenceDate + 0.5);
    v7 = (secondsSinceReferenceDate - *v2.i64) * 1.84467441e19;
    *v3.i64 = *v2.i64 - trunc(*v2.i64 * 5.42101086e-20) * 1.84467441e19;
    v8.f64[0] = NAN;
    v8.f64[1] = NAN;
    v5 = 2654435761u * *vbslq_s8(vnegq_f64(v8), v3, v2).i64;
    if (v7 >= 0.0)
    {
      if (v7 > 0.0)
      {
        v5 += v7;
      }
    }

    else
    {
      v5 -= fabs(v7);
    }
  }

  else
  {
    v5 = 0;
  }

  v9 = [(NSString *)self->_dndModeUUID hash];
  if ((*&self->_has & 8) != 0)
  {
    v10 = 2654435761 * self->_modeConfigurationUI;
    if ((*&self->_has & 2) != 0)
    {
      goto LABEL_11;
    }
  }

  else
  {
    v10 = 0;
    if ((*&self->_has & 2) != 0)
    {
LABEL_11:
      v11 = 2654435761 * self->_modeConfigurationEntityType;
      goto LABEL_14;
    }
  }

  v11 = 0;
LABEL_14:
  v12 = [(NSMutableArray *)self->_previousEntityIdentifiers hash];
  v13 = [(NSMutableArray *)self->_suggestedEntityIdentifiers hash];
  v14 = [(NSMutableArray *)self->_currentEntityIdentifiers hash];
  if ((*&self->_has & 4) != 0)
  {
    v15 = 2654435761 * self->_modeConfigurationType;
  }

  else
  {
    v15 = 0;
  }

  return v9 ^ v5 ^ v10 ^ v11 ^ v12 ^ v13 ^ v14 ^ v15 ^ [(NSMutableArray *)self->_candidateEntityIdentifiers hash];
}

- (void)mergeFrom:(id)from
{
  v47 = *MEMORY[0x1E69E9840];
  fromCopy = from;
  v5 = fromCopy;
  if (fromCopy[9])
  {
    self->_secondsSinceReferenceDate = fromCopy[1];
    *&self->_has |= 1u;
  }

  if (*(fromCopy + 4))
  {
    [(ATXPBModeConfigurationUIFlowLoggingEvent *)self setDndModeUUID:?];
  }

  v6 = *(v5 + 72);
  if ((v6 & 8) != 0)
  {
    self->_modeConfigurationUI = *(v5 + 12);
    *&self->_has |= 8u;
    v6 = *(v5 + 72);
  }

  if ((v6 & 2) != 0)
  {
    self->_modeConfigurationEntityType = *(v5 + 10);
    *&self->_has |= 2u;
  }

  v41 = 0u;
  v42 = 0u;
  v39 = 0u;
  v40 = 0u;
  v7 = *(v5 + 7);
  v8 = [v7 countByEnumeratingWithState:&v39 objects:v46 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v40;
    do
    {
      for (i = 0; i != v9; ++i)
      {
        if (*v40 != v10)
        {
          objc_enumerationMutation(v7);
        }

        [(ATXPBModeConfigurationUIFlowLoggingEvent *)self addPreviousEntityIdentifiers:*(*(&v39 + 1) + 8 * i)];
      }

      v9 = [v7 countByEnumeratingWithState:&v39 objects:v46 count:16];
    }

    while (v9);
  }

  v37 = 0u;
  v38 = 0u;
  v35 = 0u;
  v36 = 0u;
  v12 = *(v5 + 8);
  v13 = [v12 countByEnumeratingWithState:&v35 objects:v45 count:16];
  if (v13)
  {
    v14 = v13;
    v15 = *v36;
    do
    {
      for (j = 0; j != v14; ++j)
      {
        if (*v36 != v15)
        {
          objc_enumerationMutation(v12);
        }

        [(ATXPBModeConfigurationUIFlowLoggingEvent *)self addSuggestedEntityIdentifiers:*(*(&v35 + 1) + 8 * j)];
      }

      v14 = [v12 countByEnumeratingWithState:&v35 objects:v45 count:16];
    }

    while (v14);
  }

  v33 = 0u;
  v34 = 0u;
  v31 = 0u;
  v32 = 0u;
  v17 = *(v5 + 3);
  v18 = [v17 countByEnumeratingWithState:&v31 objects:v44 count:16];
  if (v18)
  {
    v19 = v18;
    v20 = *v32;
    do
    {
      for (k = 0; k != v19; ++k)
      {
        if (*v32 != v20)
        {
          objc_enumerationMutation(v17);
        }

        [(ATXPBModeConfigurationUIFlowLoggingEvent *)self addCurrentEntityIdentifiers:*(*(&v31 + 1) + 8 * k)];
      }

      v19 = [v17 countByEnumeratingWithState:&v31 objects:v44 count:16];
    }

    while (v19);
  }

  if ((v5[9] & 4) != 0)
  {
    self->_modeConfigurationType = *(v5 + 11);
    *&self->_has |= 4u;
  }

  v29 = 0u;
  v30 = 0u;
  v27 = 0u;
  v28 = 0u;
  v22 = *(v5 + 2);
  v23 = [v22 countByEnumeratingWithState:&v27 objects:v43 count:16];
  if (v23)
  {
    v24 = v23;
    v25 = *v28;
    do
    {
      for (m = 0; m != v24; ++m)
      {
        if (*v28 != v25)
        {
          objc_enumerationMutation(v22);
        }

        [(ATXPBModeConfigurationUIFlowLoggingEvent *)self addCandidateEntityIdentifiers:*(*(&v27 + 1) + 8 * m), v27];
      }

      v24 = [v22 countByEnumeratingWithState:&v27 objects:v43 count:16];
    }

    while (v24);
  }
}

- (id)initFromJSON:(id)n
{
  nCopy = n;
  v5 = [(ATXPBModeConfigurationUIFlowLoggingEvent *)self init];
  if (v5)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v6 = nCopy;
      v7 = [v6 objectForKeyedSubscript:@"dndModeUUID"];
      [(ATXPBModeConfigurationUIFlowLoggingEvent *)v5 setDndModeUUID:v7];

      v8 = [v6 objectForKeyedSubscript:@"modeConfigurationUI"];
      if ([v8 isEqualToString:@"Setup"])
      {
        v9 = 0;
      }

      else if ([v8 isEqualToString:@"Settings"])
      {
        v9 = 1;
      }

      else if ([v8 isEqualToString:@"OnBoarding"])
      {
        v9 = 2;
      }

      else if ([v8 isEqualToString:@"Total"])
      {
        v9 = 3;
      }

      else
      {
        v9 = 0;
      }

      [(ATXPBModeConfigurationUIFlowLoggingEvent *)v5 setModeConfigurationUI:v9];
      v10 = [v6 objectForKeyedSubscript:@"modeConfigurationEntityType"];
      if ([v10 isEqualToString:@"Apps"])
      {
        v11 = 0;
      }

      else if ([v10 isEqualToString:@"Contacts"])
      {
        v11 = 1;
      }

      else if ([v10 isEqualToString:@"Total"])
      {
        v11 = 2;
      }

      else
      {
        v11 = 0;
      }

      [(ATXPBModeConfigurationUIFlowLoggingEvent *)v5 setModeConfigurationEntityType:v11];
      v12 = [v6 objectForKeyedSubscript:@"modeConfigurationType"];
      if ([v12 isEqualToString:@"Allow"])
      {
        v13 = 0;
      }

      else if ([v12 isEqualToString:@"Deny"])
      {
        v13 = 1;
      }

      else if ([v12 isEqualToString:@"Total"])
      {
        v13 = 2;
      }

      else
      {
        v13 = 0;
      }

      [(ATXPBModeConfigurationUIFlowLoggingEvent *)v5 setModeConfigurationType:v13];
      v14 = [v6 objectForKeyedSubscript:@"suggestedEntityIdentifiers"];
      [(ATXPBModeConfigurationUIFlowLoggingEvent *)v5 setSuggestedEntityIdentifiers:v14];

      v15 = [v6 objectForKeyedSubscript:@"candidateEntityIdentifiers"];
      [(ATXPBModeConfigurationUIFlowLoggingEvent *)v5 setCandidateEntityIdentifiers:v15];

      v16 = [v6 objectForKeyedSubscript:@"previousEntityIdentifiers"];
      [(ATXPBModeConfigurationUIFlowLoggingEvent *)v5 setPreviousEntityIdentifiers:v16];

      v17 = [v6 objectForKeyedSubscript:@"currentEntityIdentifiers"];
      [(ATXPBModeConfigurationUIFlowLoggingEvent *)v5 setCurrentEntityIdentifiers:v17];

      v18 = [v6 objectForKeyedSubscript:@"eventDate"];
      [v18 timeIntervalSinceReferenceDate];
      [(ATXPBModeConfigurationUIFlowLoggingEvent *)v5 setSecondsSinceReferenceDate:?];
    }
  }

  return v5;
}

- (id)jsonRepresentation
{
  v24[9] = *MEMORY[0x1E69E9840];
  v23[0] = @"dndModeUUID";
  v22 = [ATXJSONHelper wrapObject:self->_dndModeUUID];
  v24[0] = v22;
  v23[1] = @"modeConfigurationUI";
  modeConfigurationUI = self->_modeConfigurationUI;
  if (modeConfigurationUI >= 4)
  {
    v4 = [MEMORY[0x1E696AEC0] stringWithFormat:@"(unknown: %i)", self->_modeConfigurationUI];
  }

  else
  {
    v4 = off_1E80C44E8[modeConfigurationUI];
  }

  v21 = v4;
  v20 = [ATXJSONHelper wrapObject:v4];
  v24[1] = v20;
  v23[2] = @"entityType";
  modeConfigurationEntityType = self->_modeConfigurationEntityType;
  if (modeConfigurationEntityType >= 3)
  {
    v6 = [MEMORY[0x1E696AEC0] stringWithFormat:@"(unknown: %i)", self->_modeConfigurationEntityType];
  }

  else
  {
    v6 = off_1E80C4508[modeConfigurationEntityType];
  }

  v19 = v6;
  v7 = [ATXJSONHelper wrapObject:v6];
  v24[2] = v7;
  v23[3] = @"modeConfigurationType";
  modeConfigurationType = self->_modeConfigurationType;
  if (modeConfigurationType >= 3)
  {
    v9 = [MEMORY[0x1E696AEC0] stringWithFormat:@"(unknown: %i)", self->_modeConfigurationType];
  }

  else
  {
    v9 = off_1E80C4520[modeConfigurationType];
  }

  v10 = [ATXJSONHelper wrapObject:v9];
  v24[3] = v10;
  v23[4] = @"suggestedEntityIdentifiers";
  v11 = [ATXJSONHelper wrapObject:self->_suggestedEntityIdentifiers];
  v24[4] = v11;
  v23[5] = @"candidateEntityIdentifiers";
  v12 = [ATXJSONHelper wrapObject:self->_candidateEntityIdentifiers];
  v24[5] = v12;
  v23[6] = @"previousEntityIdentifiers";
  v13 = [ATXJSONHelper wrapObject:self->_previousEntityIdentifiers];
  v24[6] = v13;
  v23[7] = @"currentEntityIdentifiers";
  v14 = [ATXJSONHelper wrapObject:self->_currentEntityIdentifiers];
  v24[7] = v14;
  v23[8] = @"eventDate";
  v15 = [MEMORY[0x1E695DF00] dateWithTimeIntervalSinceReferenceDate:self->_secondsSinceReferenceDate];
  v16 = [ATXJSONHelper wrapObject:v15];
  v24[8] = v16;
  v17 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v24 forKeys:v23 count:9];

  return v17;
}

@end