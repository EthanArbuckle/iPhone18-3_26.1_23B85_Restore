@interface ATXPBSharedDigestEngagementTrackingMetrics
- (BOOL)isEqual:(id)equal;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (id)dictionaryRepresentation;
- (id)initFromJSON:(id)n;
- (id)jsonRepresentation;
- (unint64_t)hash;
- (void)copyTo:(id)to;
- (void)mergeFrom:(id)from;
- (void)setHasNumEngagementsAfterExpiration:(BOOL)expiration;
- (void)setHasNumEngagementsInScheduled:(BOOL)scheduled;
- (void)setHasNumEngagementsInUpcoming:(BOOL)upcoming;
- (void)setHasNumExpansions:(BOOL)expansions;
- (void)setHasSectionPosition:(BOOL)position;
- (void)setHasSectionSize:(BOOL)size;
- (void)writeTo:(id)to;
@end

@implementation ATXPBSharedDigestEngagementTrackingMetrics

- (id)initFromJSON:(id)n
{
  nCopy = n;
  v5 = [(ATXPBSharedDigestEngagementTrackingMetrics *)self init];
  if (v5)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v6 = nCopy;
      v7 = [v6 objectForKeyedSubscript:@"numEngagementsInUpcoming"];
      -[ATXPBSharedDigestEngagementTrackingMetrics setNumEngagementsInUpcoming:](v5, "setNumEngagementsInUpcoming:", [v7 unsignedIntegerValue]);

      v8 = [v6 objectForKeyedSubscript:@"numEngagementsInScheduled"];
      -[ATXPBSharedDigestEngagementTrackingMetrics setNumEngagementsInScheduled:](v5, "setNumEngagementsInScheduled:", [v8 unsignedIntegerValue]);

      v9 = [v6 objectForKeyedSubscript:@"numEngagementsAfterExpiration"];
      -[ATXPBSharedDigestEngagementTrackingMetrics setNumEngagementsAfterExpiration:](v5, "setNumEngagementsAfterExpiration:", [v9 unsignedIntegerValue]);

      v10 = [v6 objectForKeyedSubscript:@"numExpansions"];
      -[ATXPBSharedDigestEngagementTrackingMetrics setNumExpansions:](v5, "setNumExpansions:", [v10 unsignedIntegerValue]);

      v11 = [v6 objectForKeyedSubscript:@"sectionIdentifier"];
      v12 = [ATXJSONHelper unwrapObject:v11];
      [(ATXPBSharedDigestEngagementTrackingMetrics *)v5 setSectionIdentifier:v12];

      v13 = [v6 objectForKeyedSubscript:@"sectionPosition"];
      -[ATXPBSharedDigestEngagementTrackingMetrics setSectionPosition:](v5, "setSectionPosition:", [v13 unsignedIntegerValue]);

      v14 = [v6 objectForKeyedSubscript:@"sectionSize"];

      -[ATXPBSharedDigestEngagementTrackingMetrics setSectionSize:](v5, "setSectionSize:", [v14 unsignedIntegerValue]);
    }
  }

  return v5;
}

- (id)jsonRepresentation
{
  v20[7] = *MEMORY[0x1E69E9840];
  v19[0] = @"numEngagementsInUpcoming";
  v18 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:{-[ATXPBSharedDigestEngagementTrackingMetrics numEngagementsInUpcoming](self, "numEngagementsInUpcoming")}];
  v17 = [ATXJSONHelper wrapObject:v18];
  v20[0] = v17;
  v19[1] = @"numEngagementsInScheduled";
  v16 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:{-[ATXPBSharedDigestEngagementTrackingMetrics numEngagementsInScheduled](self, "numEngagementsInScheduled")}];
  v15 = [ATXJSONHelper wrapObject:v16];
  v20[1] = v15;
  v19[2] = @"numEngagementsAfterExpiration";
  v14 = [MEMORY[0x1E696AD98] numberWithBool:{-[ATXPBSharedDigestEngagementTrackingMetrics hasNumEngagementsAfterExpiration](self, "hasNumEngagementsAfterExpiration")}];
  v3 = [ATXJSONHelper wrapObject:v14];
  v20[2] = v3;
  v19[3] = @"numExpansions";
  v4 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:{-[ATXPBSharedDigestEngagementTrackingMetrics numExpansions](self, "numExpansions")}];
  v5 = [ATXJSONHelper wrapObject:v4];
  v20[3] = v5;
  v19[4] = @"sectionIdentifier";
  sectionIdentifier = [(ATXPBSharedDigestEngagementTrackingMetrics *)self sectionIdentifier];
  v7 = [ATXJSONHelper wrapObject:sectionIdentifier];
  v20[4] = v7;
  v19[5] = @"sectionPosition";
  v8 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:{-[ATXPBSharedDigestEngagementTrackingMetrics sectionPosition](self, "sectionPosition")}];
  v9 = [ATXJSONHelper wrapObject:v8];
  v20[5] = v9;
  v19[6] = @"sectionSize";
  v10 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:{-[ATXPBSharedDigestEngagementTrackingMetrics sectionSize](self, "sectionSize")}];
  v11 = [ATXJSONHelper wrapObject:v10];
  v20[6] = v11;
  v12 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v20 forKeys:v19 count:7];

  return v12;
}

- (void)setHasNumEngagementsInUpcoming:(BOOL)upcoming
{
  if (upcoming)
  {
    v3 = 8;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xF7 | v3;
}

- (void)setHasNumEngagementsInScheduled:(BOOL)scheduled
{
  if (scheduled)
  {
    v3 = 4;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFB | v3;
}

- (void)setHasNumEngagementsAfterExpiration:(BOOL)expiration
{
  if (expiration)
  {
    v3 = 2;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFD | v3;
}

- (void)setHasNumExpansions:(BOOL)expansions
{
  if (expansions)
  {
    v3 = 16;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xEF | v3;
}

- (void)setHasSectionPosition:(BOOL)position
{
  if (position)
  {
    v3 = 32;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xDF | v3;
}

- (void)setHasSectionSize:(BOOL)size
{
  if (size)
  {
    v3 = 64;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xBF | v3;
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v8.receiver = self;
  v8.super_class = ATXPBSharedDigestEngagementTrackingMetrics;
  v4 = [(ATXPBSharedDigestEngagementTrackingMetrics *)&v8 description];
  dictionaryRepresentation = [(ATXPBSharedDigestEngagementTrackingMetrics *)self dictionaryRepresentation];
  v6 = [v3 stringWithFormat:@"%@ %@", v4, dictionaryRepresentation];

  return v6;
}

- (id)dictionaryRepresentation
{
  dictionary = [MEMORY[0x1E695DF90] dictionary];
  has = self->_has;
  if ((has & 8) != 0)
  {
    v10 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:self->_numEngagementsInUpcoming];
    [dictionary setObject:v10 forKey:@"numEngagementsInUpcoming"];

    has = self->_has;
    if ((has & 4) == 0)
    {
LABEL_3:
      if ((has & 2) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_17;
    }
  }

  else if ((*&self->_has & 4) == 0)
  {
    goto LABEL_3;
  }

  v11 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:self->_numEngagementsInScheduled];
  [dictionary setObject:v11 forKey:@"numEngagementsInScheduled"];

  has = self->_has;
  if ((has & 2) == 0)
  {
LABEL_4:
    if ((has & 0x10) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_5;
  }

LABEL_17:
  v12 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:self->_numEngagementsAfterExpiration];
  [dictionary setObject:v12 forKey:@"numEngagementsAfterExpiration"];

  if ((*&self->_has & 0x10) != 0)
  {
LABEL_5:
    v5 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:self->_numExpansions];
    [dictionary setObject:v5 forKey:@"numExpansions"];
  }

LABEL_6:
  sectionIdentifier = self->_sectionIdentifier;
  if (sectionIdentifier)
  {
    [dictionary setObject:sectionIdentifier forKey:@"sectionIdentifier"];
  }

  v7 = self->_has;
  if ((v7 & 0x20) != 0)
  {
    v13 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:self->_sectionPosition];
    [dictionary setObject:v13 forKey:@"sectionPosition"];

    v7 = self->_has;
    if ((v7 & 0x40) == 0)
    {
LABEL_10:
      if ((v7 & 1) == 0)
      {
        goto LABEL_12;
      }

      goto LABEL_11;
    }
  }

  else if ((*&self->_has & 0x40) == 0)
  {
    goto LABEL_10;
  }

  v14 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:self->_sectionSize];
  [dictionary setObject:v14 forKey:@"sectionSize"];

  if (*&self->_has)
  {
LABEL_11:
    v8 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:self->_numDigestExpansions];
    [dictionary setObject:v8 forKey:@"numDigestExpansions"];
  }

LABEL_12:

  return dictionary;
}

- (void)writeTo:(id)to
{
  toCopy = to;
  has = self->_has;
  if ((has & 8) != 0)
  {
    PBDataWriterWriteUint64Field();
    has = self->_has;
    if ((has & 4) == 0)
    {
LABEL_3:
      if ((has & 0x10) == 0)
      {
        goto LABEL_5;
      }

      goto LABEL_4;
    }
  }

  else if ((*&self->_has & 4) == 0)
  {
    goto LABEL_3;
  }

  PBDataWriterWriteUint64Field();
  if ((*&self->_has & 0x10) != 0)
  {
LABEL_4:
    PBDataWriterWriteUint64Field();
  }

LABEL_5:
  if (self->_sectionIdentifier)
  {
    PBDataWriterWriteStringField();
  }

  v5 = self->_has;
  if ((v5 & 0x20) != 0)
  {
    PBDataWriterWriteUint64Field();
    v5 = self->_has;
    if ((v5 & 0x40) == 0)
    {
LABEL_9:
      if ((v5 & 2) == 0)
      {
        goto LABEL_10;
      }

      goto LABEL_20;
    }
  }

  else if ((*&self->_has & 0x40) == 0)
  {
    goto LABEL_9;
  }

  PBDataWriterWriteUint64Field();
  v5 = self->_has;
  if ((v5 & 2) == 0)
  {
LABEL_10:
    if ((v5 & 1) == 0)
    {
      goto LABEL_12;
    }

    goto LABEL_11;
  }

LABEL_20:
  PBDataWriterWriteUint64Field();
  if (*&self->_has)
  {
LABEL_11:
    PBDataWriterWriteUint64Field();
  }

LABEL_12:
}

- (void)copyTo:(id)to
{
  toCopy = to;
  has = self->_has;
  if ((has & 8) != 0)
  {
    toCopy[4] = self->_numEngagementsInUpcoming;
    *(toCopy + 72) |= 8u;
    has = self->_has;
    if ((has & 4) == 0)
    {
LABEL_3:
      if ((has & 0x10) == 0)
      {
        goto LABEL_5;
      }

      goto LABEL_4;
    }
  }

  else if ((*&self->_has & 4) == 0)
  {
    goto LABEL_3;
  }

  toCopy[3] = self->_numEngagementsInScheduled;
  *(toCopy + 72) |= 4u;
  if ((*&self->_has & 0x10) != 0)
  {
LABEL_4:
    toCopy[5] = self->_numExpansions;
    *(toCopy + 72) |= 0x10u;
  }

LABEL_5:
  if (self->_sectionIdentifier)
  {
    v7 = toCopy;
    [toCopy setSectionIdentifier:?];
    toCopy = v7;
  }

  v6 = self->_has;
  if ((v6 & 0x20) != 0)
  {
    toCopy[6] = self->_sectionPosition;
    *(toCopy + 72) |= 0x20u;
    v6 = self->_has;
    if ((v6 & 0x40) == 0)
    {
LABEL_9:
      if ((v6 & 2) == 0)
      {
        goto LABEL_10;
      }

      goto LABEL_20;
    }
  }

  else if ((*&self->_has & 0x40) == 0)
  {
    goto LABEL_9;
  }

  toCopy[7] = self->_sectionSize;
  *(toCopy + 72) |= 0x40u;
  v6 = self->_has;
  if ((v6 & 2) == 0)
  {
LABEL_10:
    if ((v6 & 1) == 0)
    {
      goto LABEL_12;
    }

    goto LABEL_11;
  }

LABEL_20:
  toCopy[2] = self->_numEngagementsAfterExpiration;
  *(toCopy + 72) |= 2u;
  if (*&self->_has)
  {
LABEL_11:
    toCopy[1] = self->_numDigestExpansions;
    *(toCopy + 72) |= 1u;
  }

LABEL_12:
}

- (id)copyWithZone:(_NSZone *)zone
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
  v6 = v5;
  has = self->_has;
  if ((has & 8) != 0)
  {
    *(v5 + 32) = self->_numEngagementsInUpcoming;
    *(v5 + 72) |= 8u;
    has = self->_has;
    if ((has & 4) == 0)
    {
LABEL_3:
      if ((has & 0x10) == 0)
      {
        goto LABEL_5;
      }

      goto LABEL_4;
    }
  }

  else if ((*&self->_has & 4) == 0)
  {
    goto LABEL_3;
  }

  *(v5 + 24) = self->_numEngagementsInScheduled;
  *(v5 + 72) |= 4u;
  if ((*&self->_has & 0x10) != 0)
  {
LABEL_4:
    *(v5 + 40) = self->_numExpansions;
    *(v5 + 72) |= 0x10u;
  }

LABEL_5:
  v8 = [(NSString *)self->_sectionIdentifier copyWithZone:zone];
  v9 = *(v6 + 64);
  *(v6 + 64) = v8;

  v10 = self->_has;
  if ((v10 & 0x20) != 0)
  {
    *(v6 + 48) = self->_sectionPosition;
    *(v6 + 72) |= 0x20u;
    v10 = self->_has;
    if ((v10 & 0x40) == 0)
    {
LABEL_7:
      if ((v10 & 2) == 0)
      {
        goto LABEL_8;
      }

LABEL_16:
      *(v6 + 16) = self->_numEngagementsAfterExpiration;
      *(v6 + 72) |= 2u;
      if ((*&self->_has & 1) == 0)
      {
        return v6;
      }

      goto LABEL_9;
    }
  }

  else if ((*&self->_has & 0x40) == 0)
  {
    goto LABEL_7;
  }

  *(v6 + 56) = self->_sectionSize;
  *(v6 + 72) |= 0x40u;
  v10 = self->_has;
  if ((v10 & 2) != 0)
  {
    goto LABEL_16;
  }

LABEL_8:
  if (v10)
  {
LABEL_9:
    *(v6 + 8) = self->_numDigestExpansions;
    *(v6 + 72) |= 1u;
  }

  return v6;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (![equalCopy isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_39;
  }

  has = self->_has;
  if ((has & 8) != 0)
  {
    if ((*(equalCopy + 72) & 8) == 0 || self->_numEngagementsInUpcoming != *(equalCopy + 4))
    {
      goto LABEL_39;
    }
  }

  else if ((*(equalCopy + 72) & 8) != 0)
  {
    goto LABEL_39;
  }

  if ((*&self->_has & 4) != 0)
  {
    if ((*(equalCopy + 72) & 4) == 0 || self->_numEngagementsInScheduled != *(equalCopy + 3))
    {
      goto LABEL_39;
    }
  }

  else if ((*(equalCopy + 72) & 4) != 0)
  {
    goto LABEL_39;
  }

  if ((*&self->_has & 0x10) != 0)
  {
    if ((*(equalCopy + 72) & 0x10) == 0 || self->_numExpansions != *(equalCopy + 5))
    {
      goto LABEL_39;
    }
  }

  else if ((*(equalCopy + 72) & 0x10) != 0)
  {
    goto LABEL_39;
  }

  sectionIdentifier = self->_sectionIdentifier;
  if (sectionIdentifier | *(equalCopy + 8))
  {
    if (![(NSString *)sectionIdentifier isEqual:?])
    {
LABEL_39:
      v7 = 0;
      goto LABEL_40;
    }

    has = self->_has;
  }

  if ((has & 0x20) != 0)
  {
    if ((*(equalCopy + 72) & 0x20) == 0 || self->_sectionPosition != *(equalCopy + 6))
    {
      goto LABEL_39;
    }
  }

  else if ((*(equalCopy + 72) & 0x20) != 0)
  {
    goto LABEL_39;
  }

  if ((has & 0x40) != 0)
  {
    if ((*(equalCopy + 72) & 0x40) == 0 || self->_sectionSize != *(equalCopy + 7))
    {
      goto LABEL_39;
    }
  }

  else if ((*(equalCopy + 72) & 0x40) != 0)
  {
    goto LABEL_39;
  }

  if ((has & 2) != 0)
  {
    if ((*(equalCopy + 72) & 2) == 0 || self->_numEngagementsAfterExpiration != *(equalCopy + 2))
    {
      goto LABEL_39;
    }
  }

  else if ((*(equalCopy + 72) & 2) != 0)
  {
    goto LABEL_39;
  }

  v7 = (*(equalCopy + 72) & 1) == 0;
  if (has)
  {
    if ((*(equalCopy + 72) & 1) == 0 || self->_numDigestExpansions != *(equalCopy + 1))
    {
      goto LABEL_39;
    }

    v7 = 1;
  }

LABEL_40:

  return v7;
}

- (unint64_t)hash
{
  if ((*&self->_has & 8) == 0)
  {
    v3 = 0;
    if ((*&self->_has & 4) != 0)
    {
      goto LABEL_3;
    }

LABEL_6:
    v4 = 0;
    if ((*&self->_has & 0x10) != 0)
    {
      goto LABEL_4;
    }

    goto LABEL_7;
  }

  v3 = 2654435761u * self->_numEngagementsInUpcoming;
  if ((*&self->_has & 4) == 0)
  {
    goto LABEL_6;
  }

LABEL_3:
  v4 = 2654435761u * self->_numEngagementsInScheduled;
  if ((*&self->_has & 0x10) != 0)
  {
LABEL_4:
    v5 = 2654435761u * self->_numExpansions;
    goto LABEL_8;
  }

LABEL_7:
  v5 = 0;
LABEL_8:
  v6 = [(NSString *)self->_sectionIdentifier hash];
  if ((*&self->_has & 0x20) != 0)
  {
    v7 = 2654435761u * self->_sectionPosition;
    if ((*&self->_has & 0x40) != 0)
    {
LABEL_10:
      v8 = 2654435761u * self->_sectionSize;
      if ((*&self->_has & 2) != 0)
      {
        goto LABEL_11;
      }

LABEL_15:
      v9 = 0;
      if (*&self->_has)
      {
        goto LABEL_12;
      }

LABEL_16:
      v10 = 0;
      return v4 ^ v3 ^ v5 ^ v7 ^ v8 ^ v9 ^ v10 ^ v6;
    }
  }

  else
  {
    v7 = 0;
    if ((*&self->_has & 0x40) != 0)
    {
      goto LABEL_10;
    }
  }

  v8 = 0;
  if ((*&self->_has & 2) == 0)
  {
    goto LABEL_15;
  }

LABEL_11:
  v9 = 2654435761u * self->_numEngagementsAfterExpiration;
  if ((*&self->_has & 1) == 0)
  {
    goto LABEL_16;
  }

LABEL_12:
  v10 = 2654435761u * self->_numDigestExpansions;
  return v4 ^ v3 ^ v5 ^ v7 ^ v8 ^ v9 ^ v10 ^ v6;
}

- (void)mergeFrom:(id)from
{
  fromCopy = from;
  v5 = *(fromCopy + 72);
  if ((v5 & 8) != 0)
  {
    self->_numEngagementsInUpcoming = *(fromCopy + 4);
    *&self->_has |= 8u;
    v5 = *(fromCopy + 72);
    if ((v5 & 4) == 0)
    {
LABEL_3:
      if ((v5 & 0x10) == 0)
      {
        goto LABEL_5;
      }

      goto LABEL_4;
    }
  }

  else if ((*(fromCopy + 72) & 4) == 0)
  {
    goto LABEL_3;
  }

  self->_numEngagementsInScheduled = *(fromCopy + 3);
  *&self->_has |= 4u;
  if ((*(fromCopy + 72) & 0x10) != 0)
  {
LABEL_4:
    self->_numExpansions = *(fromCopy + 5);
    *&self->_has |= 0x10u;
  }

LABEL_5:
  if (*(fromCopy + 8))
  {
    v7 = fromCopy;
    [(ATXPBSharedDigestEngagementTrackingMetrics *)self setSectionIdentifier:?];
    fromCopy = v7;
  }

  v6 = *(fromCopy + 72);
  if ((v6 & 0x20) != 0)
  {
    self->_sectionPosition = *(fromCopy + 6);
    *&self->_has |= 0x20u;
    v6 = *(fromCopy + 72);
    if ((v6 & 0x40) == 0)
    {
LABEL_9:
      if ((v6 & 2) == 0)
      {
        goto LABEL_10;
      }

      goto LABEL_20;
    }
  }

  else if ((*(fromCopy + 72) & 0x40) == 0)
  {
    goto LABEL_9;
  }

  self->_sectionSize = *(fromCopy + 7);
  *&self->_has |= 0x40u;
  v6 = *(fromCopy + 72);
  if ((v6 & 2) == 0)
  {
LABEL_10:
    if ((v6 & 1) == 0)
    {
      goto LABEL_12;
    }

    goto LABEL_11;
  }

LABEL_20:
  self->_numEngagementsAfterExpiration = *(fromCopy + 2);
  *&self->_has |= 2u;
  if (*(fromCopy + 72))
  {
LABEL_11:
    self->_numDigestExpansions = *(fromCopy + 1);
    *&self->_has |= 1u;
  }

LABEL_12:
}

@end