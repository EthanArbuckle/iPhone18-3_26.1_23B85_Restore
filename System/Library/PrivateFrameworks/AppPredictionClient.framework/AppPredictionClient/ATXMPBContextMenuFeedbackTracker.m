@interface ATXMPBContextMenuFeedbackTracker
- (BOOL)isEqual:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (id)dictionaryRepresentation;
- (id)menuActionTypeAsString:(int)a3;
- (int)StringAsMenuActionType:(id)a3;
- (int)menuActionType;
- (unint64_t)hash;
- (void)copyTo:(id)a3;
- (void)mergeFrom:(id)a3;
- (void)writeTo:(id)a3;
@end

@implementation ATXMPBContextMenuFeedbackTracker

- (int)menuActionType
{
  if (*&self->_has)
  {
    return self->_menuActionType;
  }

  else
  {
    return 1;
  }
}

- (id)menuActionTypeAsString:(int)a3
{
  if (a3 == 1)
  {
    v4 = @"DismissOnce";
  }

  else if (a3 == 2)
  {
    v4 = @"NeverShowAgain";
  }

  else
  {
    v4 = [MEMORY[0x1E696AEC0] stringWithFormat:@"(unknown: %i)", *&a3];
  }

  return v4;
}

- (int)StringAsMenuActionType:(id)a3
{
  v3 = a3;
  v4 = 1;
  if (([v3 isEqualToString:@"DismissOnce"] & 1) == 0)
  {
    if ([v3 isEqualToString:@"NeverShowAgain"])
    {
      v4 = 2;
    }

    else
    {
      v4 = 1;
    }
  }

  return v4;
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v8.receiver = self;
  v8.super_class = ATXMPBContextMenuFeedbackTracker;
  v4 = [(ATXMPBContextMenuFeedbackTracker *)&v8 description];
  v5 = [(ATXMPBContextMenuFeedbackTracker *)self dictionaryRepresentation];
  v6 = [v3 stringWithFormat:@"%@ %@", v4, v5];

  return v6;
}

- (id)dictionaryRepresentation
{
  v3 = [MEMORY[0x1E695DF90] dictionary];
  if (*&self->_has)
  {
    menuActionType = self->_menuActionType;
    if (menuActionType == 1)
    {
      v5 = @"DismissOnce";
    }

    else if (menuActionType == 2)
    {
      v5 = @"NeverShowAgain";
    }

    else
    {
      v5 = [MEMORY[0x1E696AEC0] stringWithFormat:@"(unknown: %i)", self->_menuActionType];
    }

    [v3 setObject:v5 forKey:@"menuActionType"];
  }

  clientModelId = self->_clientModelId;
  if (clientModelId)
  {
    [v3 setObject:clientModelId forKey:@"clientModelId"];
  }

  executableType = self->_executableType;
  if (executableType)
  {
    [v3 setObject:executableType forKey:@"executableType"];
  }

  consumerSubType = self->_consumerSubType;
  if (consumerSubType)
  {
    [v3 setObject:consumerSubType forKey:@"consumerSubType"];
  }

  suggestion = self->_suggestion;
  if (suggestion)
  {
    [v3 setObject:suggestion forKey:@"suggestion"];
  }

  return v3;
}

- (void)writeTo:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (*&self->_has)
  {
    PBDataWriterWriteInt32Field();
    v4 = v5;
  }

  if (self->_clientModelId)
  {
    PBDataWriterWriteStringField();
    v4 = v5;
  }

  if (self->_executableType)
  {
    PBDataWriterWriteStringField();
    v4 = v5;
  }

  if (self->_consumerSubType)
  {
    PBDataWriterWriteStringField();
    v4 = v5;
  }

  if (self->_suggestion)
  {
    PBDataWriterWriteStringField();
    v4 = v5;
  }
}

- (void)copyTo:(id)a3
{
  v4 = a3;
  if (*&self->_has)
  {
    v4[8] = self->_menuActionType;
    *(v4 + 48) |= 1u;
  }

  v5 = v4;
  if (self->_clientModelId)
  {
    [v4 setClientModelId:?];
    v4 = v5;
  }

  if (self->_executableType)
  {
    [v5 setExecutableType:?];
    v4 = v5;
  }

  if (self->_consumerSubType)
  {
    [v5 setConsumerSubType:?];
    v4 = v5;
  }

  if (self->_suggestion)
  {
    [v5 setSuggestion:?];
    v4 = v5;
  }
}

- (id)copyWithZone:(_NSZone *)a3
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{a3), "init"}];
  v6 = v5;
  if (*&self->_has)
  {
    *(v5 + 32) = self->_menuActionType;
    *(v5 + 48) |= 1u;
  }

  v7 = [(NSString *)self->_clientModelId copyWithZone:a3];
  v8 = v6[1];
  v6[1] = v7;

  v9 = [(NSString *)self->_executableType copyWithZone:a3];
  v10 = v6[3];
  v6[3] = v9;

  v11 = [(NSString *)self->_consumerSubType copyWithZone:a3];
  v12 = v6[2];
  v6[2] = v11;

  v13 = [(NSString *)self->_suggestion copyWithZone:a3];
  v14 = v6[5];
  v6[5] = v13;

  return v6;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (![v4 isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_15;
  }

  if (*&self->_has)
  {
    if ((*(v4 + 48) & 1) == 0 || self->_menuActionType != *(v4 + 8))
    {
      goto LABEL_15;
    }
  }

  else if (*(v4 + 48))
  {
LABEL_15:
    v9 = 0;
    goto LABEL_16;
  }

  clientModelId = self->_clientModelId;
  if (clientModelId | *(v4 + 1) && ![(NSString *)clientModelId isEqual:?])
  {
    goto LABEL_15;
  }

  executableType = self->_executableType;
  if (executableType | *(v4 + 3))
  {
    if (![(NSString *)executableType isEqual:?])
    {
      goto LABEL_15;
    }
  }

  consumerSubType = self->_consumerSubType;
  if (consumerSubType | *(v4 + 2))
  {
    if (![(NSString *)consumerSubType isEqual:?])
    {
      goto LABEL_15;
    }
  }

  suggestion = self->_suggestion;
  if (suggestion | *(v4 + 5))
  {
    v9 = [(NSString *)suggestion isEqual:?];
  }

  else
  {
    v9 = 1;
  }

LABEL_16:

  return v9;
}

- (unint64_t)hash
{
  if (*&self->_has)
  {
    v3 = 2654435761 * self->_menuActionType;
  }

  else
  {
    v3 = 0;
  }

  v4 = [(NSString *)self->_clientModelId hash]^ v3;
  v5 = [(NSString *)self->_executableType hash];
  v6 = v4 ^ v5 ^ [(NSString *)self->_consumerSubType hash];
  return v6 ^ [(NSString *)self->_suggestion hash];
}

- (void)mergeFrom:(id)a3
{
  v4 = a3;
  if (v4[12])
  {
    self->_menuActionType = v4[8];
    *&self->_has |= 1u;
  }

  v5 = v4;
  if (*(v4 + 1))
  {
    [(ATXMPBContextMenuFeedbackTracker *)self setClientModelId:?];
    v4 = v5;
  }

  if (*(v4 + 3))
  {
    [(ATXMPBContextMenuFeedbackTracker *)self setExecutableType:?];
    v4 = v5;
  }

  if (*(v4 + 2))
  {
    [(ATXMPBContextMenuFeedbackTracker *)self setConsumerSubType:?];
    v4 = v5;
  }

  if (*(v4 + 5))
  {
    [(ATXMPBContextMenuFeedbackTracker *)self setSuggestion:?];
    v4 = v5;
  }
}

@end