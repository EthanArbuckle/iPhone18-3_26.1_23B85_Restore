@interface ATXPBExecutableReferenceEntry
- (BOOL)hasClientModelId;
- (BOOL)isEqual:(id)a3;
- (double)date;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (id)dictionaryRepresentation;
- (uint64_t)clientModelId;
- (uint64_t)hasDate;
- (uint64_t)hasShouldClearOnEngagement;
- (uint64_t)hasShouldPurge;
- (uint64_t)hasSuggestionIsHidden;
- (uint64_t)setDate:(uint64_t)result;
- (uint64_t)setHasDate:(uint64_t)result;
- (uint64_t)setHasShouldClearOnEngagement:(uint64_t)result;
- (uint64_t)setHasShouldPurge:(uint64_t)result;
- (uint64_t)setHasSuggestionIsHidden:(uint64_t)result;
- (uint64_t)setShouldClearOnEngagement:(uint64_t)result;
- (uint64_t)setShouldPurge:(uint64_t)result;
- (uint64_t)setSuggestionIsHidden:(uint64_t)result;
- (uint64_t)shouldClearOnEngagement;
- (uint64_t)shouldPurge;
- (uint64_t)suggestionIsHidden;
- (unint64_t)hash;
- (void)copyTo:(uint64_t)a1;
- (void)mergeFrom:(uint64_t)a1;
- (void)setClientModelId:(uint64_t)a1;
- (void)writeTo:(id)a3;
@end

@implementation ATXPBExecutableReferenceEntry

- (uint64_t)clientModelId
{
  if (result)
  {
    return *(result + 16);
  }

  return result;
}

- (double)date
{
  if (a1)
  {
    return *(a1 + 8);
  }

  else
  {
    return 0.0;
  }
}

- (uint64_t)shouldPurge
{
  if (a1)
  {
    return OUTLINED_FUNCTION_7_0(*(a1 + 25));
  }

  else
  {
    return OUTLINED_FUNCTION_7_0(0);
  }
}

- (uint64_t)shouldClearOnEngagement
{
  if (a1)
  {
    return OUTLINED_FUNCTION_7_0(*(a1 + 24));
  }

  else
  {
    return OUTLINED_FUNCTION_7_0(0);
  }
}

- (uint64_t)suggestionIsHidden
{
  if (a1)
  {
    return OUTLINED_FUNCTION_7_0(*(a1 + 26));
  }

  else
  {
    return OUTLINED_FUNCTION_7_0(0);
  }
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v8.receiver = self;
  v8.super_class = ATXPBExecutableReferenceEntry;
  v4 = [(ATXPBExecutableReferenceEntry *)&v8 description];
  v5 = [(ATXPBExecutableReferenceEntry *)self dictionaryRepresentation];
  v6 = [v3 stringWithFormat:@"%@ %@", v4, v5];

  return v6;
}

- (id)dictionaryRepresentation
{
  v3 = [MEMORY[0x1E695DF90] dictionary];
  if (*&self->_has)
  {
    v4 = [MEMORY[0x1E696AD98] numberWithDouble:self->_date];
    [v3 setObject:v4 forKey:@"date"];
  }

  clientModelId = self->_clientModelId;
  if (clientModelId)
  {
    [v3 setObject:clientModelId forKey:@"clientModelId"];
  }

  has = self->_has;
  if ((has & 2) != 0)
  {
    v9 = [MEMORY[0x1E696AD98] numberWithBool:self->_shouldClearOnEngagement];
    [v3 setObject:v9 forKey:@"shouldClearOnEngagement"];

    has = self->_has;
    if ((has & 4) == 0)
    {
LABEL_7:
      if ((has & 8) == 0)
      {
        goto LABEL_9;
      }

      goto LABEL_8;
    }
  }

  else if ((*&self->_has & 4) == 0)
  {
    goto LABEL_7;
  }

  v10 = [MEMORY[0x1E696AD98] numberWithBool:self->_shouldPurge];
  [v3 setObject:v10 forKey:@"shouldPurge"];

  if ((*&self->_has & 8) != 0)
  {
LABEL_8:
    v7 = [MEMORY[0x1E696AD98] numberWithBool:self->_suggestionIsHidden];
    [v3 setObject:v7 forKey:@"suggestionIsHidden"];
  }

LABEL_9:

  return v3;
}

- (void)writeTo:(id)a3
{
  v5 = a3;
  if (*&self->_has)
  {
    PBDataWriterWriteDoubleField();
  }

  if (self->_clientModelId)
  {
    PBDataWriterWriteStringField();
  }

  has = self->_has;
  if ((has & 2) != 0)
  {
    PBDataWriterWriteBOOLField();
    has = self->_has;
    if ((has & 4) == 0)
    {
LABEL_7:
      if ((has & 8) == 0)
      {
        goto LABEL_9;
      }

      goto LABEL_8;
    }
  }

  else if ((*&self->_has & 4) == 0)
  {
    goto LABEL_7;
  }

  PBDataWriterWriteBOOLField();
  if ((*&self->_has & 8) != 0)
  {
LABEL_8:
    PBDataWriterWriteBOOLField();
  }

LABEL_9:
}

- (id)copyWithZone:(_NSZone *)a3
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{a3), "init"}];
  v6 = v5;
  if (*&self->_has)
  {
    *(v5 + 8) = self->_date;
    *(v5 + 28) |= 1u;
  }

  v7 = [(NSString *)self->_clientModelId copyWithZone:a3];
  v8 = *(v6 + 16);
  *(v6 + 16) = v7;

  has = self->_has;
  if ((has & 2) == 0)
  {
    if ((*&self->_has & 4) == 0)
    {
      goto LABEL_5;
    }

LABEL_9:
    *(v6 + 25) = self->_shouldPurge;
    *(v6 + 28) |= 4u;
    if ((*&self->_has & 8) == 0)
    {
      return v6;
    }

    goto LABEL_6;
  }

  *(v6 + 24) = self->_shouldClearOnEngagement;
  *(v6 + 28) |= 2u;
  has = self->_has;
  if ((has & 4) != 0)
  {
    goto LABEL_9;
  }

LABEL_5:
  if ((has & 8) != 0)
  {
LABEL_6:
    *(v6 + 26) = self->_suggestionIsHidden;
    *(v6 + 28) |= 8u;
  }

  return v6;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (![v4 isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_32;
  }

  has = self->_has;
  if (has)
  {
    if ((*(v4 + 28) & 1) == 0 || self->_date != *(v4 + 1))
    {
      goto LABEL_32;
    }
  }

  else if (*(v4 + 28))
  {
    goto LABEL_32;
  }

  clientModelId = self->_clientModelId;
  if (clientModelId | *(v4 + 2))
  {
    if (![(NSString *)clientModelId isEqual:?])
    {
      goto LABEL_32;
    }

    has = self->_has;
  }

  if ((has & 2) != 0)
  {
    if ((*(v4 + 28) & 2) == 0)
    {
      goto LABEL_32;
    }

    if (self->_shouldClearOnEngagement)
    {
      if ((*(v4 + 24) & 1) == 0)
      {
        goto LABEL_32;
      }
    }

    else if (*(v4 + 24))
    {
      goto LABEL_32;
    }
  }

  else if ((*(v4 + 28) & 2) != 0)
  {
    goto LABEL_32;
  }

  if ((has & 4) != 0)
  {
    if ((*(v4 + 28) & 4) == 0)
    {
      goto LABEL_32;
    }

    if (self->_shouldPurge)
    {
      if ((*(v4 + 25) & 1) == 0)
      {
        goto LABEL_32;
      }
    }

    else if (*(v4 + 25))
    {
      goto LABEL_32;
    }
  }

  else if ((*(v4 + 28) & 4) != 0)
  {
    goto LABEL_32;
  }

  v7 = (*(v4 + 28) & 8) == 0;
  if ((has & 8) != 0)
  {
    if ((*(v4 + 28) & 8) != 0)
    {
      if (self->_suggestionIsHidden)
      {
        if (*(v4 + 26))
        {
          goto LABEL_34;
        }
      }

      else if (!*(v4 + 26))
      {
LABEL_34:
        v7 = 1;
        goto LABEL_33;
      }
    }

LABEL_32:
    v7 = 0;
  }

LABEL_33:

  return v7;
}

- (unint64_t)hash
{
  if (*&self->_has)
  {
    date = self->_date;
    if (date < 0.0)
    {
      date = -date;
    }

    *v2.i64 = floor(date + 0.5);
    v7 = (date - *v2.i64) * 1.84467441e19;
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

  v9 = [(NSString *)self->_clientModelId hash];
  if ((*&self->_has & 2) == 0)
  {
    v10 = 0;
    if ((*&self->_has & 4) != 0)
    {
      goto LABEL_11;
    }

LABEL_14:
    v11 = 0;
    if ((*&self->_has & 8) != 0)
    {
      goto LABEL_12;
    }

LABEL_15:
    v12 = 0;
    return v9 ^ v5 ^ v10 ^ v11 ^ v12;
  }

  v10 = 2654435761 * self->_shouldClearOnEngagement;
  if ((*&self->_has & 4) == 0)
  {
    goto LABEL_14;
  }

LABEL_11:
  v11 = 2654435761 * self->_shouldPurge;
  if ((*&self->_has & 8) == 0)
  {
    goto LABEL_15;
  }

LABEL_12:
  v12 = 2654435761 * self->_suggestionIsHidden;
  return v9 ^ v5 ^ v10 ^ v11 ^ v12;
}

- (uint64_t)setDate:(uint64_t)result
{
  if (result)
  {
    *(result + 28) |= 1u;
    *(result + 8) = a2;
  }

  return result;
}

- (uint64_t)setHasDate:(uint64_t)result
{
  if (result)
  {
    *(result + 28) = *(result + 28) & 0xFE | a2;
  }

  return result;
}

- (uint64_t)hasDate
{
  if (result)
  {
    return *(result + 28) & 1;
  }

  return result;
}

- (BOOL)hasClientModelId
{
  if (result)
  {
    return *(result + 16) != 0;
  }

  return result;
}

- (uint64_t)setShouldClearOnEngagement:(uint64_t)result
{
  if (result)
  {
    *(result + 28) |= 2u;
    *(result + 24) = a2;
  }

  return result;
}

- (uint64_t)setHasShouldClearOnEngagement:(uint64_t)result
{
  if (result)
  {
    if (a2)
    {
      v2 = 2;
    }

    else
    {
      v2 = 0;
    }

    *(result + 28) = *(result + 28) & 0xFD | v2;
  }

  return result;
}

- (uint64_t)hasShouldClearOnEngagement
{
  if (result)
  {
    return (*(result + 28) >> 1) & 1;
  }

  return result;
}

- (uint64_t)setShouldPurge:(uint64_t)result
{
  if (result)
  {
    *(result + 28) |= 4u;
    *(result + 25) = a2;
  }

  return result;
}

- (uint64_t)setHasShouldPurge:(uint64_t)result
{
  if (result)
  {
    if (a2)
    {
      v2 = 4;
    }

    else
    {
      v2 = 0;
    }

    *(result + 28) = *(result + 28) & 0xFB | v2;
  }

  return result;
}

- (uint64_t)hasShouldPurge
{
  if (result)
  {
    return (*(result + 28) >> 2) & 1;
  }

  return result;
}

- (uint64_t)setSuggestionIsHidden:(uint64_t)result
{
  if (result)
  {
    *(result + 28) |= 8u;
    *(result + 26) = a2;
  }

  return result;
}

- (uint64_t)setHasSuggestionIsHidden:(uint64_t)result
{
  if (result)
  {
    if (a2)
    {
      v2 = 8;
    }

    else
    {
      v2 = 0;
    }

    *(result + 28) = *(result + 28) & 0xF7 | v2;
  }

  return result;
}

- (uint64_t)hasSuggestionIsHidden
{
  if (result)
  {
    return (*(result + 28) >> 3) & 1;
  }

  return result;
}

- (void)copyTo:(uint64_t)a1
{
  v3 = a2;
  if (a1)
  {
    if (*(a1 + 28))
    {
      v3[1] = *(a1 + 8);
      *(v3 + 28) |= 1u;
    }

    v4 = *(a1 + 16);
    if (v4)
    {
      v12 = v3;
      [(ATXPBExecutableReferenceEntry *)v3 setClientModelId:v4];
      v3 = v12;
    }

    v5 = *(a1 + 28);
    if ((v5 & 2) != 0)
    {
      v3 = OUTLINED_FUNCTION_0_24(v3, 24);
      *(v3 + v9) = v8 | 2;
      v5 = *(a1 + 28);
      if ((v5 & 4) == 0)
      {
LABEL_8:
        if ((v5 & 8) == 0)
        {
          goto LABEL_10;
        }

        goto LABEL_9;
      }
    }

    else if ((*(a1 + 28) & 4) == 0)
    {
      goto LABEL_8;
    }

    v3 = OUTLINED_FUNCTION_0_24(v3, 25);
    *(v3 + v11) = v10 | 4;
    if ((*(a1 + 28) & 8) != 0)
    {
LABEL_9:
      v3 = OUTLINED_FUNCTION_0_24(v3, 26);
      *(v3 + v7) = v6 | 8;
    }
  }

LABEL_10:
}

- (void)setClientModelId:(uint64_t)a1
{
  if (a1)
  {
    objc_storeStrong((a1 + 16), a2);
  }
}

- (void)mergeFrom:(uint64_t)a1
{
  v3 = a2;
  if (a1)
  {
    if (*(v3 + 28))
    {
      *(a1 + 8) = v3[1];
      *(a1 + 28) |= 1u;
    }

    v4 = v3[2];
    if (v4)
    {
      v12 = v3;
      objc_storeStrong((a1 + 16), v4);
      v3 = v12;
    }

    v5 = *(v3 + 28);
    if ((v5 & 2) != 0)
    {
      v3 = OUTLINED_FUNCTION_1_21(v3, 24);
      *(a1 + v9) = v8 | 2;
      v5 = *(v3 + 28);
      if ((v5 & 4) == 0)
      {
LABEL_8:
        if ((v5 & 8) == 0)
        {
          goto LABEL_10;
        }

        goto LABEL_9;
      }
    }

    else if ((*(v3 + 28) & 4) == 0)
    {
      goto LABEL_8;
    }

    v3 = OUTLINED_FUNCTION_1_21(v3, 25);
    *(a1 + v11) = v10 | 4;
    if ((*(v3 + 28) & 8) != 0)
    {
LABEL_9:
      v3 = OUTLINED_FUNCTION_1_21(v3, 26);
      *(a1 + v7) = v6 | 8;
    }
  }

LABEL_10:
}

@end