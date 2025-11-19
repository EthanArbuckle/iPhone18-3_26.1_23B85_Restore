@interface SECSFAAction
- (BOOL)isEqual:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (id)dictionaryRepresentation;
- (int)StringAsAction:(id)a3;
- (int)action;
- (unint64_t)hash;
- (void)clearOneofValuesForAction;
- (void)copyTo:(id)a3;
- (void)mergeFrom:(id)a3;
- (void)setAbc:(id)a3;
- (void)setDrop:(id)a3;
- (void)setTtr:(id)a3;
- (void)writeTo:(id)a3;
@end

@implementation SECSFAAction

- (void)mergeFrom:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (*(v4 + 48))
  {
    self->_action = *(v4 + 4);
    *&self->_has |= 1u;
  }

  v12 = v4;
  if (*(v4 + 4))
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

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (![v4 isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_15;
  }

  v5 = *(v4 + 48);
  if (*&self->_has)
  {
    if ((*(v4 + 48) & 1) == 0 || self->_action != *(v4 + 4))
    {
      goto LABEL_15;
    }
  }

  else if (*(v4 + 48))
  {
LABEL_15:
    v10 = 0;
    goto LABEL_16;
  }

  radarnumber = self->_radarnumber;
  if (radarnumber | *(v4 + 4) && ![(NSString *)radarnumber isEqual:?])
  {
    goto LABEL_15;
  }

  ttr = self->_ttr;
  if (ttr | *(v4 + 5))
  {
    if (![(SECSFAActionTapToRadar *)ttr isEqual:?])
    {
      goto LABEL_15;
    }
  }

  abc = self->_abc;
  if (abc | *(v4 + 1))
  {
    if (![(SECSFAActionAutomaticBugCapture *)abc isEqual:?])
    {
      goto LABEL_15;
    }
  }

  drop = self->_drop;
  if (drop | *(v4 + 3))
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

- (id)copyWithZone:(_NSZone *)a3
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{a3), "init"}];
  v6 = v5;
  if (*&self->_has)
  {
    *(v5 + 16) = self->_action;
    *(v5 + 48) |= 1u;
  }

  v7 = [(NSString *)self->_radarnumber copyWithZone:a3];
  v8 = v6[4];
  v6[4] = v7;

  v9 = [(SECSFAActionTapToRadar *)self->_ttr copyWithZone:a3];
  v10 = v6[5];
  v6[5] = v9;

  v11 = [(SECSFAActionAutomaticBugCapture *)self->_abc copyWithZone:a3];
  v12 = v6[1];
  v6[1] = v11;

  v13 = [(SECSFAActionDropEvent *)self->_drop copyWithZone:a3];
  v14 = v6[3];
  v6[3] = v13;

  return v6;
}

- (void)copyTo:(id)a3
{
  v4 = a3;
  if (*&self->_has)
  {
    v4[4] = self->_action;
    *(v4 + 48) |= 1u;
  }

  v5 = v4;
  if (self->_radarnumber)
  {
    [v4 setRadarnumber:?];
    v4 = v5;
  }

  if (self->_ttr)
  {
    [v5 setTtr:?];
    v4 = v5;
  }

  if (self->_abc)
  {
    [v5 setAbc:?];
    v4 = v5;
  }

  if (self->_drop)
  {
    [v5 setDrop:?];
    v4 = v5;
  }
}

- (void)writeTo:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (self->_radarnumber)
  {
    PBDataWriterWriteStringField();
    v4 = v5;
  }

  if (self->_ttr)
  {
    PBDataWriterWriteSubmessage();
    v4 = v5;
  }

  if (self->_abc)
  {
    PBDataWriterWriteSubmessage();
    v4 = v5;
  }

  if (self->_drop)
  {
    PBDataWriterWriteSubmessage();
    v4 = v5;
  }
}

- (id)dictionaryRepresentation
{
  v3 = [MEMORY[0x1E695DF90] dictionary];
  v4 = v3;
  radarnumber = self->_radarnumber;
  if (radarnumber)
  {
    [v3 setObject:radarnumber forKey:@"radarnumber"];
  }

  ttr = self->_ttr;
  if (ttr)
  {
    v7 = [(SECSFAActionTapToRadar *)ttr dictionaryRepresentation];
    [v4 setObject:v7 forKey:@"ttr"];
  }

  abc = self->_abc;
  if (abc)
  {
    v9 = [(SECSFAActionAutomaticBugCapture *)abc dictionaryRepresentation];
    [v4 setObject:v9 forKey:@"abc"];
  }

  drop = self->_drop;
  if (drop)
  {
    v11 = [(SECSFAActionDropEvent *)drop dictionaryRepresentation];
    [v4 setObject:v11 forKey:@"drop"];
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
  v5 = [(SECSFAAction *)self dictionaryRepresentation];
  v6 = [v3 stringWithFormat:@"%@ %@", v4, v5];

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

- (int)StringAsAction:(id)a3
{
  v3 = a3;
  if ([v3 isEqualToString:@"PBUNSET"])
  {
    v4 = 0;
  }

  else if ([v3 isEqualToString:@"ttr"])
  {
    v4 = 1;
  }

  else if ([v3 isEqualToString:@"abc"])
  {
    v4 = 2;
  }

  else if ([v3 isEqualToString:@"drop"])
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

- (void)setDrop:(id)a3
{
  v4 = a3;
  [(SECSFAAction *)self clearOneofValuesForAction];
  *&self->_has |= 1u;
  self->_action = 3;
  drop = self->_drop;
  self->_drop = v4;
}

- (void)setAbc:(id)a3
{
  v4 = a3;
  [(SECSFAAction *)self clearOneofValuesForAction];
  *&self->_has |= 1u;
  self->_action = 2;
  abc = self->_abc;
  self->_abc = v4;
}

- (void)setTtr:(id)a3
{
  v4 = a3;
  [(SECSFAAction *)self clearOneofValuesForAction];
  *&self->_has |= 1u;
  self->_action = 1;
  ttr = self->_ttr;
  self->_ttr = v4;
}

@end