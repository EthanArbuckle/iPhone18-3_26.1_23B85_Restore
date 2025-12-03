@interface ATXPBHomeScreenWidgetIdentifiable
- (BOOL)hasAppBundleId;
- (BOOL)hasExtensionBundleId;
- (BOOL)hasIntent;
- (BOOL)hasPredictionSource;
- (BOOL)hasWidgetKind;
- (BOOL)hasWidgetUniqueId;
- (BOOL)isEqual:(id)equal;
- (double)score;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (id)dictionaryRepresentation;
- (id)sizeAsString:(void *)string;
- (uint64_t)appBundleId;
- (uint64_t)extensionBundleId;
- (uint64_t)hasOnboardingWidget;
- (uint64_t)hasScore;
- (uint64_t)hasSize;
- (uint64_t)hasSuggestedWidget;
- (uint64_t)intent;
- (uint64_t)onboardingWidget;
- (uint64_t)predictionSource;
- (uint64_t)setHasOnboardingWidget:(uint64_t)result;
- (uint64_t)setHasScore:(uint64_t)result;
- (uint64_t)setHasSize:(uint64_t)result;
- (uint64_t)setHasSuggestedWidget:(uint64_t)result;
- (uint64_t)setOnboardingWidget:(uint64_t)result;
- (uint64_t)setScore:(uint64_t)result;
- (uint64_t)setSize:(uint64_t)result;
- (uint64_t)setSuggestedWidget:(uint64_t)result;
- (uint64_t)size;
- (uint64_t)suggestedWidget;
- (uint64_t)widgetKind;
- (uint64_t)widgetUniqueId;
- (unint64_t)hash;
- (void)copyTo:(uint64_t)to;
- (void)mergeFrom:(uint64_t)from;
- (void)setAppBundleId:(uint64_t)id;
- (void)setExtensionBundleId:(uint64_t)id;
- (void)setIntent:(uint64_t)intent;
- (void)setPredictionSource:(uint64_t)source;
- (void)setWidgetKind:(uint64_t)kind;
- (void)setWidgetUniqueId:(uint64_t)id;
- (void)writeTo:(id)to;
@end

@implementation ATXPBHomeScreenWidgetIdentifiable

- (uint64_t)extensionBundleId
{
  if (result)
  {
    return *(result + 24);
  }

  return result;
}

- (uint64_t)widgetUniqueId
{
  if (result)
  {
    return *(result + 64);
  }

  return result;
}

- (uint64_t)widgetKind
{
  if (result)
  {
    return *(result + 56);
  }

  return result;
}

- (uint64_t)onboardingWidget
{
  if (self)
  {
    v1 = *(self + 72);
  }

  else
  {
    v1 = 0;
  }

  return v1 & 1;
}

- (uint64_t)predictionSource
{
  if (result)
  {
    return *(result + 40);
  }

  return result;
}

- (uint64_t)suggestedWidget
{
  if (self)
  {
    v1 = *(self + 73);
  }

  else
  {
    v1 = 0;
  }

  return v1 & 1;
}

- (uint64_t)intent
{
  if (result)
  {
    return *(result + 32);
  }

  return result;
}

- (uint64_t)appBundleId
{
  if (result)
  {
    return *(result + 16);
  }

  return result;
}

- (uint64_t)size
{
  if (result)
  {
    if ((*(result + 76) & 2) != 0)
    {
      return *(result + 48);
    }

    else
    {
      return 1;
    }
  }

  return result;
}

- (double)score
{
  if (self)
  {
    return *(self + 8);
  }

  else
  {
    return 0.0;
  }
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v8.receiver = self;
  v8.super_class = ATXPBHomeScreenWidgetIdentifiable;
  v4 = [(ATXPBHomeScreenWidgetIdentifiable *)&v8 description];
  dictionaryRepresentation = [(ATXPBHomeScreenWidgetIdentifiable *)self dictionaryRepresentation];
  v6 = [v3 stringWithFormat:@"%@ %@", v4, dictionaryRepresentation];

  return v6;
}

- (id)dictionaryRepresentation
{
  dictionary = [MEMORY[0x1E695DF90] dictionary];
  v4 = dictionary;
  extensionBundleId = self->_extensionBundleId;
  if (extensionBundleId)
  {
    [dictionary setObject:extensionBundleId forKey:@"extensionBundleId"];
  }

  widgetKind = self->_widgetKind;
  if (widgetKind)
  {
    [v4 setObject:widgetKind forKey:@"widgetKind"];
  }

  appBundleId = self->_appBundleId;
  if (appBundleId)
  {
    [v4 setObject:appBundleId forKey:@"appBundleId"];
  }

  intent = self->_intent;
  if (intent)
  {
    [v4 setObject:intent forKey:@"intent"];
  }

  widgetUniqueId = self->_widgetUniqueId;
  if (widgetUniqueId)
  {
    [v4 setObject:widgetUniqueId forKey:@"widgetUniqueId"];
  }

  has = self->_has;
  if ((has & 2) != 0)
  {
    v11 = self->_size - 1;
    if (v11 >= 5)
    {
      v12 = [MEMORY[0x1E696AEC0] stringWithFormat:@"(unknown: %i)", self->_size];
    }

    else
    {
      v12 = *(&off_1E80C5EC8 + v11);
    }

    [v4 setObject:v12 forKey:@"size"];

    has = self->_has;
  }

  if ((has & 8) != 0)
  {
    v16 = [MEMORY[0x1E696AD98] numberWithBool:self->_suggestedWidget];
    [v4 setObject:v16 forKey:@"suggestedWidget"];

    has = self->_has;
    if ((has & 4) == 0)
    {
LABEL_18:
      if ((has & 1) == 0)
      {
        goto LABEL_20;
      }

      goto LABEL_19;
    }
  }

  else if ((has & 4) == 0)
  {
    goto LABEL_18;
  }

  v17 = [MEMORY[0x1E696AD98] numberWithBool:self->_onboardingWidget];
  [v4 setObject:v17 forKey:@"onboardingWidget"];

  if (*&self->_has)
  {
LABEL_19:
    v13 = [MEMORY[0x1E696AD98] numberWithDouble:self->_score];
    [v4 setObject:v13 forKey:@"score"];
  }

LABEL_20:
  predictionSource = self->_predictionSource;
  if (predictionSource)
  {
    [v4 setObject:predictionSource forKey:@"predictionSource"];
  }

  return v4;
}

- (void)writeTo:(id)to
{
  toCopy = to;
  v6 = toCopy;
  if (self->_extensionBundleId)
  {
    PBDataWriterWriteStringField();
    toCopy = v6;
  }

  if (self->_widgetKind)
  {
    PBDataWriterWriteStringField();
    toCopy = v6;
  }

  if (self->_appBundleId)
  {
    PBDataWriterWriteStringField();
    toCopy = v6;
  }

  if (self->_intent)
  {
    PBDataWriterWriteDataField();
    toCopy = v6;
  }

  if (self->_widgetUniqueId)
  {
    PBDataWriterWriteStringField();
    toCopy = v6;
  }

  has = self->_has;
  if ((has & 2) != 0)
  {
    PBDataWriterWriteInt32Field();
    toCopy = v6;
    has = self->_has;
    if ((has & 8) == 0)
    {
LABEL_13:
      if ((has & 4) == 0)
      {
        goto LABEL_14;
      }

      goto LABEL_23;
    }
  }

  else if ((*&self->_has & 8) == 0)
  {
    goto LABEL_13;
  }

  PBDataWriterWriteBOOLField();
  toCopy = v6;
  has = self->_has;
  if ((has & 4) == 0)
  {
LABEL_14:
    if ((has & 1) == 0)
    {
      goto LABEL_16;
    }

    goto LABEL_15;
  }

LABEL_23:
  PBDataWriterWriteBOOLField();
  toCopy = v6;
  if (*&self->_has)
  {
LABEL_15:
    PBDataWriterWriteDoubleField();
    toCopy = v6;
  }

LABEL_16:
  if (self->_predictionSource)
  {
    PBDataWriterWriteStringField();
    toCopy = v6;
  }
}

- (id)copyWithZone:(_NSZone *)zone
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
  v6 = [(NSString *)self->_extensionBundleId copyWithZone:zone];
  v7 = *(v5 + 24);
  *(v5 + 24) = v6;

  v8 = [(NSString *)self->_widgetKind copyWithZone:zone];
  v9 = *(v5 + 56);
  *(v5 + 56) = v8;

  v10 = [(NSString *)self->_appBundleId copyWithZone:zone];
  v11 = *(v5 + 16);
  *(v5 + 16) = v10;

  v12 = [(NSData *)self->_intent copyWithZone:zone];
  v13 = *(v5 + 32);
  *(v5 + 32) = v12;

  v14 = [(NSString *)self->_widgetUniqueId copyWithZone:zone];
  v15 = *(v5 + 64);
  *(v5 + 64) = v14;

  has = self->_has;
  if ((has & 2) != 0)
  {
    *(v5 + 48) = self->_size;
    *(v5 + 76) |= 2u;
    has = self->_has;
    if ((has & 8) == 0)
    {
LABEL_3:
      if ((has & 4) == 0)
      {
        goto LABEL_4;
      }

LABEL_9:
      *(v5 + 72) = self->_onboardingWidget;
      *(v5 + 76) |= 4u;
      if ((*&self->_has & 1) == 0)
      {
        goto LABEL_6;
      }

      goto LABEL_5;
    }
  }

  else if ((*&self->_has & 8) == 0)
  {
    goto LABEL_3;
  }

  *(v5 + 73) = self->_suggestedWidget;
  *(v5 + 76) |= 8u;
  has = self->_has;
  if ((has & 4) != 0)
  {
    goto LABEL_9;
  }

LABEL_4:
  if (has)
  {
LABEL_5:
    *(v5 + 8) = self->_score;
    *(v5 + 76) |= 1u;
  }

LABEL_6:
  v17 = [(NSString *)self->_predictionSource copyWithZone:zone];
  v18 = *(v5 + 40);
  *(v5 + 40) = v17;

  return v5;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (![equalCopy isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_39;
  }

  extensionBundleId = self->_extensionBundleId;
  if (extensionBundleId | *(equalCopy + 3))
  {
    if (![(NSString *)extensionBundleId isEqual:?])
    {
      goto LABEL_39;
    }
  }

  widgetKind = self->_widgetKind;
  if (widgetKind | *(equalCopy + 7))
  {
    if (![(NSString *)widgetKind isEqual:?])
    {
      goto LABEL_39;
    }
  }

  appBundleId = self->_appBundleId;
  if (appBundleId | *(equalCopy + 2))
  {
    if (![(NSString *)appBundleId isEqual:?])
    {
      goto LABEL_39;
    }
  }

  intent = self->_intent;
  if (intent | *(equalCopy + 4))
  {
    if (![(NSData *)intent isEqual:?])
    {
      goto LABEL_39;
    }
  }

  widgetUniqueId = self->_widgetUniqueId;
  if (widgetUniqueId | *(equalCopy + 8))
  {
    if (![(NSString *)widgetUniqueId isEqual:?])
    {
      goto LABEL_39;
    }
  }

  if ((*&self->_has & 2) != 0)
  {
    if ((*(equalCopy + 76) & 2) == 0 || self->_size != *(equalCopy + 12))
    {
      goto LABEL_39;
    }
  }

  else if ((*(equalCopy + 76) & 2) != 0)
  {
    goto LABEL_39;
  }

  if ((*&self->_has & 8) != 0)
  {
    if ((*(equalCopy + 76) & 8) == 0)
    {
      goto LABEL_39;
    }

    if (self->_suggestedWidget)
    {
      if ((*(equalCopy + 73) & 1) == 0)
      {
        goto LABEL_39;
      }
    }

    else if (*(equalCopy + 73))
    {
      goto LABEL_39;
    }
  }

  else if ((*(equalCopy + 76) & 8) != 0)
  {
    goto LABEL_39;
  }

  if ((*&self->_has & 4) == 0)
  {
    if ((*(equalCopy + 76) & 4) == 0)
    {
      goto LABEL_21;
    }

LABEL_39:
    v11 = 0;
    goto LABEL_40;
  }

  if ((*(equalCopy + 76) & 4) == 0)
  {
    goto LABEL_39;
  }

  if (self->_onboardingWidget)
  {
    if ((*(equalCopy + 72) & 1) == 0)
    {
      goto LABEL_39;
    }
  }

  else if (*(equalCopy + 72))
  {
    goto LABEL_39;
  }

LABEL_21:
  if (*&self->_has)
  {
    if ((*(equalCopy + 76) & 1) == 0 || self->_score != *(equalCopy + 1))
    {
      goto LABEL_39;
    }
  }

  else if (*(equalCopy + 76))
  {
    goto LABEL_39;
  }

  predictionSource = self->_predictionSource;
  if (predictionSource | *(equalCopy + 5))
  {
    v11 = [(NSString *)predictionSource isEqual:?];
  }

  else
  {
    v11 = 1;
  }

LABEL_40:

  return v11;
}

- (unint64_t)hash
{
  v3 = [(NSString *)self->_extensionBundleId hash];
  v4 = [(NSString *)self->_widgetKind hash];
  v5 = [(NSString *)self->_appBundleId hash];
  v6 = [(NSData *)self->_intent hash];
  v7 = [(NSString *)self->_widgetUniqueId hash];
  if ((*&self->_has & 2) != 0)
  {
    v10 = 2654435761 * self->_size;
    if ((*&self->_has & 8) != 0)
    {
LABEL_3:
      v11 = 2654435761 * self->_suggestedWidget;
      if ((*&self->_has & 4) != 0)
      {
        goto LABEL_4;
      }

LABEL_11:
      v12 = 0;
      if (*&self->_has)
      {
        goto LABEL_5;
      }

LABEL_12:
      v16 = 0;
      return v4 ^ v3 ^ v5 ^ v6 ^ v7 ^ v10 ^ v11 ^ v12 ^ v16 ^ [(NSString *)self->_predictionSource hash];
    }
  }

  else
  {
    v10 = 0;
    if ((*&self->_has & 8) != 0)
    {
      goto LABEL_3;
    }
  }

  v11 = 0;
  if ((*&self->_has & 4) == 0)
  {
    goto LABEL_11;
  }

LABEL_4:
  v12 = 2654435761 * self->_onboardingWidget;
  if ((*&self->_has & 1) == 0)
  {
    goto LABEL_12;
  }

LABEL_5:
  score = self->_score;
  if (score < 0.0)
  {
    score = -score;
  }

  *v8.i64 = floor(score + 0.5);
  v14 = (score - *v8.i64) * 1.84467441e19;
  *v9.i64 = *v8.i64 - trunc(*v8.i64 * 5.42101086e-20) * 1.84467441e19;
  v15.f64[0] = NAN;
  v15.f64[1] = NAN;
  v16 = 2654435761u * *vbslq_s8(vnegq_f64(v15), v9, v8).i64;
  if (v14 >= 0.0)
  {
    if (v14 > 0.0)
    {
      v16 += v14;
    }
  }

  else
  {
    v16 -= fabs(v14);
  }

  return v4 ^ v3 ^ v5 ^ v6 ^ v7 ^ v10 ^ v11 ^ v12 ^ v16 ^ [(NSString *)self->_predictionSource hash];
}

- (BOOL)hasExtensionBundleId
{
  if (result)
  {
    return *(result + 24) != 0;
  }

  return result;
}

- (BOOL)hasWidgetKind
{
  if (result)
  {
    return *(result + 56) != 0;
  }

  return result;
}

- (BOOL)hasAppBundleId
{
  if (result)
  {
    return *(result + 16) != 0;
  }

  return result;
}

- (BOOL)hasIntent
{
  if (result)
  {
    return *(result + 32) != 0;
  }

  return result;
}

- (BOOL)hasWidgetUniqueId
{
  if (result)
  {
    return *(result + 64) != 0;
  }

  return result;
}

- (uint64_t)setSize:(uint64_t)result
{
  if (result)
  {
    *(result + 76) |= 2u;
    *(result + 48) = a2;
  }

  return result;
}

- (uint64_t)setHasSize:(uint64_t)result
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

    *(result + 76) = *(result + 76) & 0xFD | v2;
  }

  return result;
}

- (uint64_t)hasSize
{
  if (result)
  {
    return (*(result + 76) >> 1) & 1;
  }

  return result;
}

- (id)sizeAsString:(void *)string
{
  if (!string)
  {
LABEL_4:

    return string;
  }

  if ((a2 - 1) < 5)
  {
    string = *(&off_1E80C5EC8 + (a2 - 1));
    goto LABEL_4;
  }

  string = [MEMORY[0x1E696AEC0] stringWithFormat:@"(unknown: %i)", a2];

  return string;
}

- (uint64_t)setSuggestedWidget:(uint64_t)result
{
  if (result)
  {
    *(result + 76) |= 8u;
    *(result + 73) = a2;
  }

  return result;
}

- (uint64_t)setHasSuggestedWidget:(uint64_t)result
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

    *(result + 76) = *(result + 76) & 0xF7 | v2;
  }

  return result;
}

- (uint64_t)hasSuggestedWidget
{
  if (result)
  {
    return (*(result + 76) >> 3) & 1;
  }

  return result;
}

- (uint64_t)setOnboardingWidget:(uint64_t)result
{
  if (result)
  {
    *(result + 76) |= 4u;
    *(result + 72) = a2;
  }

  return result;
}

- (uint64_t)setHasOnboardingWidget:(uint64_t)result
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

    *(result + 76) = *(result + 76) & 0xFB | v2;
  }

  return result;
}

- (uint64_t)hasOnboardingWidget
{
  if (result)
  {
    return (*(result + 76) >> 2) & 1;
  }

  return result;
}

- (uint64_t)setScore:(uint64_t)result
{
  if (result)
  {
    *(result + 76) |= 1u;
    *(result + 8) = a2;
  }

  return result;
}

- (uint64_t)setHasScore:(uint64_t)result
{
  if (result)
  {
    *(result + 76) = *(result + 76) & 0xFE | a2;
  }

  return result;
}

- (uint64_t)hasScore
{
  if (result)
  {
    return *(result + 76) & 1;
  }

  return result;
}

- (BOOL)hasPredictionSource
{
  if (result)
  {
    return *(result + 40) != 0;
  }

  return result;
}

- (void)copyTo:(uint64_t)to
{
  v3 = a2;
  if (!to)
  {
    goto LABEL_19;
  }

  v4 = *(to + 24);
  if (v4)
  {
    v22 = v3;
    [(ATXPBHomeScreenWidgetIdentifiable *)v3 setExtensionBundleId:v4];
    v3 = v22;
  }

  v5 = *(to + 56);
  if (v5)
  {
    v23 = v3;
    [(ATXPBHomeScreenWidgetIdentifiable *)v3 setWidgetKind:v5];
    v3 = v23;
  }

  v6 = *(to + 16);
  if (v6)
  {
    v24 = v3;
    [(ATXPBHomeScreenWidgetIdentifiable *)v3 setAppBundleId:v6];
    v3 = v24;
  }

  v7 = *(to + 32);
  if (v7)
  {
    v25 = v3;
    [(ATXPBHomeScreenWidgetIdentifiable *)v3 setIntent:v7];
    v3 = v25;
  }

  v8 = *(to + 64);
  if (v8)
  {
    [(ATXPBHomeScreenWidgetIdentifiable *)v3 setWidgetUniqueId:v8];
  }

  OUTLINED_FUNCTION_2_13();
  if ((v10 & 2) != 0)
  {
    v3[12] = *(to + 48);
    OUTLINED_FUNCTION_1_22();
    *(v13 + v14) = v12 | 2;
    OUTLINED_FUNCTION_2_13();
    if ((v10 & 8) == 0)
    {
LABEL_14:
      if ((v10 & 4) == 0)
      {
        goto LABEL_15;
      }

      goto LABEL_24;
    }
  }

  else if ((v10 & 8) == 0)
  {
    goto LABEL_14;
  }

  *(v3 + 73) = *(to + 73);
  OUTLINED_FUNCTION_1_22();
  *(v16 + v17) = v15 | 8;
  OUTLINED_FUNCTION_2_13();
  if ((v10 & 4) == 0)
  {
LABEL_15:
    if ((v10 & 1) == 0)
    {
      goto LABEL_17;
    }

    goto LABEL_16;
  }

LABEL_24:
  *(v3 + 72) = *(to + 72);
  OUTLINED_FUNCTION_1_22();
  *(v19 + v20) = v18 | 4;
  OUTLINED_FUNCTION_2_13();
  if (v21)
  {
LABEL_16:
    *(v3 + 1) = *(to + 8);
    *(v3 + v9) |= 1u;
  }

LABEL_17:
  v11 = *(to + 40);
  if (v11)
  {
    v26 = v3;
    [(ATXPBHomeScreenWidgetIdentifiable *)v3 setPredictionSource:v11];
    v3 = v26;
  }

LABEL_19:
}

- (void)setExtensionBundleId:(uint64_t)id
{
  if (id)
  {
    OUTLINED_FUNCTION_2(id, a2, 24);
  }
}

- (void)setWidgetKind:(uint64_t)kind
{
  if (kind)
  {
    OUTLINED_FUNCTION_2(kind, a2, 56);
  }
}

- (void)setAppBundleId:(uint64_t)id
{
  if (id)
  {
    OUTLINED_FUNCTION_2(id, a2, 16);
  }
}

- (void)setIntent:(uint64_t)intent
{
  if (intent)
  {
    OUTLINED_FUNCTION_2(intent, a2, 32);
  }
}

- (void)setWidgetUniqueId:(uint64_t)id
{
  if (id)
  {
    OUTLINED_FUNCTION_2(id, a2, 64);
  }
}

- (void)setPredictionSource:(uint64_t)source
{
  if (source)
  {
    OUTLINED_FUNCTION_2(source, a2, 40);
  }
}

- (void)mergeFrom:(uint64_t)from
{
  v3 = a2;
  if (!from)
  {
    goto LABEL_19;
  }

  v4 = v3[3];
  v19 = v3;
  if (v4)
  {
    objc_storeStrong((from + 24), v4);
    v3 = v19;
  }

  v5 = v3[7];
  if (v5)
  {
    objc_storeStrong((from + 56), v5);
    v3 = v19;
  }

  v6 = v3[2];
  if (v6)
  {
    objc_storeStrong((from + 16), v6);
    v3 = v19;
  }

  v7 = v3[4];
  if (v7)
  {
    objc_storeStrong((from + 32), v7);
    v3 = v19;
  }

  v8 = v3[8];
  if (v8)
  {
    objc_storeStrong((from + 64), v8);
  }

  OUTLINED_FUNCTION_1_22();
  if ((v10 & 2) != 0)
  {
    *(from + 48) = *(v3 + 12);
    OUTLINED_FUNCTION_2_13();
    *(from + v13) = v12 | 2;
    OUTLINED_FUNCTION_1_22();
    if ((v10 & 8) == 0)
    {
LABEL_14:
      if ((v10 & 4) == 0)
      {
        goto LABEL_15;
      }

      goto LABEL_24;
    }
  }

  else if ((v10 & 8) == 0)
  {
    goto LABEL_14;
  }

  *(from + 73) = *(v3 + 73);
  OUTLINED_FUNCTION_2_13();
  *(from + v15) = v14 | 8;
  OUTLINED_FUNCTION_1_22();
  if ((v10 & 4) == 0)
  {
LABEL_15:
    if ((v10 & 1) == 0)
    {
      goto LABEL_17;
    }

    goto LABEL_16;
  }

LABEL_24:
  *(from + 72) = *(v3 + 72);
  OUTLINED_FUNCTION_2_13();
  *(from + v17) = v16 | 4;
  OUTLINED_FUNCTION_1_22();
  if (v18)
  {
LABEL_16:
    *(from + 8) = v3[1];
    *(from + v9) |= 1u;
  }

LABEL_17:
  v11 = v3[5];
  if (v11)
  {
    objc_storeStrong((from + 40), v11);
    v3 = v19;
  }

LABEL_19:
}

@end