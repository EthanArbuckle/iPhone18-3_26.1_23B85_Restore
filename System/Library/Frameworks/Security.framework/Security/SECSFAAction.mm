@interface SECSFAAction
- (BOOL)isEqual:(id)equal;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (id)dictionaryRepresentation;
- (int)StringAsAction:(id)action;
- (int)action;
- (unint64_t)hash;
- (void)clearOneofValuesForAction;
- (void)copyTo:(id)to;
- (void)mergeFrom:(id)from;
- (void)setAbc:(id)abc;
- (void)setDrop:(id)drop;
- (void)setTtr:(id)ttr;
- (void)writeTo:(id)to;
@end

@implementation SECSFAAction

- (void)mergeFrom:(id)from
{
  fromCopy = from;
  v5 = fromCopy;
  if (*(fromCopy + 48))
  {
    self->_action = *(fromCopy + 4);
    *&self->_has |= 1u;
  }

  v12 = fromCopy;
  if (*(fromCopy + 4))
  {
    [(SECSFAAction *)self setRadarnumber:?];
    v5 = v12;
  }

  ttr = self->_ttr;
  v7 = v5[5];
  if (ttr)
  {
    if (!v7)
    {
      goto LABEL_11;
    }

    [(SECSFAActionTapToRadar *)ttr mergeFrom:?];
  }

  else
  {
    if (!v7)
    {
      goto LABEL_11;
    }

    [(SECSFAAction *)self setTtr:?];
  }

  v5 = v12;
LABEL_11:
  abc = self->_abc;
  v9 = v5[1];
  if (abc)
  {
    if (!v9)
    {
      goto LABEL_17;
    }

    [(SECSFAActionAutomaticBugCapture *)abc mergeFrom:?];
  }

  else
  {
    if (!v9)
    {
      goto LABEL_17;
    }

    [(SECSFAAction *)self setAbc:?];
  }

  v5 = v12;
LABEL_17:
  drop = self->_drop;
  v11 = v5[3];
  if (drop)
  {
    if (v11)
    {
      [(SECSFAActionDropEvent *)drop mergeFrom:?];
    }
  }

  else if (v11)
  {
    [(SECSFAAction *)self setDrop:?];
  }

  MEMORY[0x1EEE66BB8]();
}

- (unint64_t)hash
{
  if (*&self->_has)
  {
    v3 = 2654435761 * self->_action;
  }

  else
  {
    v3 = 0;
  }

  v4 = [(NSString *)self->_radarnumber hash]^ v3;
  v5 = [(SECSFAActionTapToRadar *)self->_ttr hash];
  v6 = v4 ^ v5 ^ [(SECSFAActionAutomaticBugCapture *)self->_abc hash];
  return v6 ^ [(SECSFAActionDropEvent *)self->_drop hash];
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (![equalCopy isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_15;
  }

  v5 = *(equalCopy + 48);
  if (*&self->_has)
  {
    if ((*(equalCopy + 48) & 1) == 0 || self->_action != *(equalCopy + 4))
    {
      goto LABEL_15;
    }
  }

  else if (*(equalCopy + 48))
  {
LABEL_15:
    v10 = 0;
    goto LABEL_16;
  }

  radarnumber = self->_radarnumber;
  if (radarnumber | *(equalCopy + 4) && ![(NSString *)radarnumber isEqual:?])
  {
    goto LABEL_15;
  }

  ttr = self->_ttr;
  if (ttr | *(equalCopy + 5))
  {
    if (![(SECSFAActionTapToRadar *)ttr isEqual:?])
    {
      goto LABEL_15;
    }
  }

  abc = self->_abc;
  if (abc | *(equalCopy + 1))
  {
    if (![(SECSFAActionAutomaticBugCapture *)abc isEqual:?])
    {
      goto LABEL_15;
    }
  }

  drop = self->_drop;
  if (drop | *(equalCopy + 3))
  {
    v10 = [(SECSFAActionDropEvent *)drop isEqual:?];
  }

  else
  {
    v10 = 1;
  }

LABEL_16:

  return v10;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
  v6 = v5;
  if (*&self->_has)
  {
    *(v5 + 16) = self->_action;
    *(v5 + 48) |= 1u;
  }

  v7 = [(NSString *)self->_radarnumber copyWithZone:zone];
  v8 = v6[4];
  v6[4] = v7;

  v9 = [(SECSFAActionTapToRadar *)self->_ttr copyWithZone:zone];
  v10 = v6[5];
  v6[5] = v9;

  v11 = [(SECSFAActionAutomaticBugCapture *)self->_abc copyWithZone:zone];
  v12 = v6[1];
  v6[1] = v11;

  v13 = [(SECSFAActionDropEvent *)self->_drop copyWithZone:zone];
  v14 = v6[3];
  v6[3] = v13;

  return v6;
}

- (void)copyTo:(id)to
{
  toCopy = to;
  if (*&self->_has)
  {
    toCopy[4] = self->_action;
    *(toCopy + 48) |= 1u;
  }

  v5 = toCopy;
  if (self->_radarnumber)
  {
    [toCopy setRadarnumber:?];
    toCopy = v5;
  }

  if (self->_ttr)
  {
    [v5 setTtr:?];
    toCopy = v5;
  }

  if (self->_abc)
  {
    [v5 setAbc:?];
    toCopy = v5;
  }

  if (self->_drop)
  {
    [v5 setDrop:?];
    toCopy = v5;
  }
}

- (void)writeTo:(id)to
{
  toCopy = to;
  v5 = toCopy;
  if (self->_radarnumber)
  {
    PBDataWriterWriteStringField();
    toCopy = v5;
  }

  if (self->_ttr)
  {
    PBDataWriterWriteSubmessage();
    toCopy = v5;
  }

  if (self->_abc)
  {
    PBDataWriterWriteSubmessage();
    toCopy = v5;
  }

  if (self->_drop)
  {
    PBDataWriterWriteSubmessage();
    toCopy = v5;
  }
}

- (id)dictionaryRepresentation
{
  dictionary = [MEMORY[0x1E695DF90] dictionary];
  v4 = dictionary;
  radarnumber = self->_radarnumber;
  if (radarnumber)
  {
    [dictionary setObject:radarnumber forKey:@"radarnumber"];
  }

  ttr = self->_ttr;
  if (ttr)
  {
    dictionaryRepresentation = [(SECSFAActionTapToRadar *)ttr dictionaryRepresentation];
    [v4 setObject:dictionaryRepresentation forKey:@"ttr"];
  }

  abc = self->_abc;
  if (abc)
  {
    dictionaryRepresentation2 = [(SECSFAActionAutomaticBugCapture *)abc dictionaryRepresentation];
    [v4 setObject:dictionaryRepresentation2 forKey:@"abc"];
  }

  drop = self->_drop;
  if (drop)
  {
    dictionaryRepresentation3 = [(SECSFAActionDropEvent *)drop dictionaryRepresentation];
    [v4 setObject:dictionaryRepresentation3 forKey:@"drop"];
  }

  if (*&self->_has)
  {
    action = self->_action;
    if (action >= 4)
    {
      v13 = [MEMORY[0x1E696AEC0] stringWithFormat:@"(unknown: %i)", self->_action];
    }

    else
    {
      v13 = off_1E70D4C78[action];
    }

    [v4 setObject:v13 forKey:@"Action"];
  }

  return v4;
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v8.receiver = self;
  v8.super_class = SECSFAAction;
  v4 = [(SECSFAAction *)&v8 description];
  dictionaryRepresentation = [(SECSFAAction *)self dictionaryRepresentation];
  v6 = [v3 stringWithFormat:@"%@ %@", v4, dictionaryRepresentation];

  return v6;
}

- (void)clearOneofValuesForAction
{
  *&self->_has &= ~1u;
  self->_action = 0;
  ttr = self->_ttr;
  self->_ttr = 0;

  abc = self->_abc;
  self->_abc = 0;

  drop = self->_drop;
  self->_drop = 0;
}

- (int)StringAsAction:(id)action
{
  actionCopy = action;
  if ([actionCopy isEqualToString:@"PBUNSET"])
  {
    v4 = 0;
  }

  else if ([actionCopy isEqualToString:@"ttr"])
  {
    v4 = 1;
  }

  else if ([actionCopy isEqualToString:@"abc"])
  {
    v4 = 2;
  }

  else if ([actionCopy isEqualToString:@"drop"])
  {
    v4 = 3;
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (int)action
{
  if (*&self->_has)
  {
    return self->_action;
  }

  else
  {
    return 0;
  }
}

- (void)setDrop:(id)drop
{
  dropCopy = drop;
  [(SECSFAAction *)self clearOneofValuesForAction];
  *&self->_has |= 1u;
  self->_action = 3;
  drop = self->_drop;
  self->_drop = dropCopy;
}

- (void)setAbc:(id)abc
{
  abcCopy = abc;
  [(SECSFAAction *)self clearOneofValuesForAction];
  *&self->_has |= 1u;
  self->_action = 2;
  abc = self->_abc;
  self->_abc = abcCopy;
}

- (void)setTtr:(id)ttr
{
  ttrCopy = ttr;
  [(SECSFAAction *)self clearOneofValuesForAction];
  *&self->_has |= 1u;
  self->_action = 1;
  ttr = self->_ttr;
  self->_ttr = ttrCopy;
}

@end