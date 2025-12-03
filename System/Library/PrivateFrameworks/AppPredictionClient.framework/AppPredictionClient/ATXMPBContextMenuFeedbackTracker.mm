@interface ATXMPBContextMenuFeedbackTracker
- (BOOL)isEqual:(id)equal;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (id)dictionaryRepresentation;
- (id)menuActionTypeAsString:(int)string;
- (int)StringAsMenuActionType:(id)type;
- (int)menuActionType;
- (unint64_t)hash;
- (void)copyTo:(id)to;
- (void)mergeFrom:(id)from;
- (void)writeTo:(id)to;
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

- (id)menuActionTypeAsString:(int)string
{
  if (string == 1)
  {
    v4 = @"DismissOnce";
  }

  else if (string == 2)
  {
    v4 = @"NeverShowAgain";
  }

  else
  {
    v4 = [MEMORY[0x1E696AEC0] stringWithFormat:@"(unknown: %i)", *&string];
  }

  return v4;
}

- (int)StringAsMenuActionType:(id)type
{
  typeCopy = type;
  v4 = 1;
  if (([typeCopy isEqualToString:@"DismissOnce"] & 1) == 0)
  {
    if ([typeCopy isEqualToString:@"NeverShowAgain"])
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
  dictionaryRepresentation = [(ATXMPBContextMenuFeedbackTracker *)self dictionaryRepresentation];
  v6 = [v3 stringWithFormat:@"%@ %@", v4, dictionaryRepresentation];

  return v6;
}

- (id)dictionaryRepresentation
{
  dictionary = [MEMORY[0x1E695DF90] dictionary];
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

    [dictionary setObject:v5 forKey:@"menuActionType"];
  }

  clientModelId = self->_clientModelId;
  if (clientModelId)
  {
    [dictionary setObject:clientModelId forKey:@"clientModelId"];
  }

  executableType = self->_executableType;
  if (executableType)
  {
    [dictionary setObject:executableType forKey:@"executableType"];
  }

  consumerSubType = self->_consumerSubType;
  if (consumerSubType)
  {
    [dictionary setObject:consumerSubType forKey:@"consumerSubType"];
  }

  suggestion = self->_suggestion;
  if (suggestion)
  {
    [dictionary setObject:suggestion forKey:@"suggestion"];
  }

  return dictionary;
}

- (void)writeTo:(id)to
{
  toCopy = to;
  v5 = toCopy;
  if (*&self->_has)
  {
    PBDataWriterWriteInt32Field();
    toCopy = v5;
  }

  if (self->_clientModelId)
  {
    PBDataWriterWriteStringField();
    toCopy = v5;
  }

  if (self->_executableType)
  {
    PBDataWriterWriteStringField();
    toCopy = v5;
  }

  if (self->_consumerSubType)
  {
    PBDataWriterWriteStringField();
    toCopy = v5;
  }

  if (self->_suggestion)
  {
    PBDataWriterWriteStringField();
    toCopy = v5;
  }
}

- (void)copyTo:(id)to
{
  toCopy = to;
  if (*&self->_has)
  {
    toCopy[8] = self->_menuActionType;
    *(toCopy + 48) |= 1u;
  }

  v5 = toCopy;
  if (self->_clientModelId)
  {
    [toCopy setClientModelId:?];
    toCopy = v5;
  }

  if (self->_executableType)
  {
    [v5 setExecutableType:?];
    toCopy = v5;
  }

  if (self->_consumerSubType)
  {
    [v5 setConsumerSubType:?];
    toCopy = v5;
  }

  if (self->_suggestion)
  {
    [v5 setSuggestion:?];
    toCopy = v5;
  }
}

- (id)copyWithZone:(_NSZone *)zone
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
  v6 = v5;
  if (*&self->_has)
  {
    *(v5 + 32) = self->_menuActionType;
    *(v5 + 48) |= 1u;
  }

  v7 = [(NSString *)self->_clientModelId copyWithZone:zone];
  v8 = v6[1];
  v6[1] = v7;

  v9 = [(NSString *)self->_executableType copyWithZone:zone];
  v10 = v6[3];
  v6[3] = v9;

  v11 = [(NSString *)self->_consumerSubType copyWithZone:zone];
  v12 = v6[2];
  v6[2] = v11;

  v13 = [(NSString *)self->_suggestion copyWithZone:zone];
  v14 = v6[5];
  v6[5] = v13;

  return v6;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (![equalCopy isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_15;
  }

  if (*&self->_has)
  {
    if ((*(equalCopy + 48) & 1) == 0 || self->_menuActionType != *(equalCopy + 8))
    {
      goto LABEL_15;
    }
  }

  else if (*(equalCopy + 48))
  {
LABEL_15:
    v9 = 0;
    goto LABEL_16;
  }

  clientModelId = self->_clientModelId;
  if (clientModelId | *(equalCopy + 1) && ![(NSString *)clientModelId isEqual:?])
  {
    goto LABEL_15;
  }

  executableType = self->_executableType;
  if (executableType | *(equalCopy + 3))
  {
    if (![(NSString *)executableType isEqual:?])
    {
      goto LABEL_15;
    }
  }

  consumerSubType = self->_consumerSubType;
  if (consumerSubType | *(equalCopy + 2))
  {
    if (![(NSString *)consumerSubType isEqual:?])
    {
      goto LABEL_15;
    }
  }

  suggestion = self->_suggestion;
  if (suggestion | *(equalCopy + 5))
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

- (void)mergeFrom:(id)from
{
  fromCopy = from;
  if (fromCopy[12])
  {
    self->_menuActionType = fromCopy[8];
    *&self->_has |= 1u;
  }

  v5 = fromCopy;
  if (*(fromCopy + 1))
  {
    [(ATXMPBContextMenuFeedbackTracker *)self setClientModelId:?];
    fromCopy = v5;
  }

  if (*(fromCopy + 3))
  {
    [(ATXMPBContextMenuFeedbackTracker *)self setExecutableType:?];
    fromCopy = v5;
  }

  if (*(fromCopy + 2))
  {
    [(ATXMPBContextMenuFeedbackTracker *)self setConsumerSubType:?];
    fromCopy = v5;
  }

  if (*(fromCopy + 5))
  {
    [(ATXMPBContextMenuFeedbackTracker *)self setSuggestion:?];
    fromCopy = v5;
  }
}

@end