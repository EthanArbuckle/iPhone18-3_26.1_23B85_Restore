@interface ATXPBPredictionAmbientLightContext
- (BOOL)isEqual:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (id)dictionaryRepresentation;
- (int)StringAsAmbientLightType:(id)a3;
- (unint64_t)hash;
- (void)copyTo:(id)a3;
- (void)mergeFrom:(id)a3;
- (void)writeTo:(id)a3;
@end

@implementation ATXPBPredictionAmbientLightContext

- (int)StringAsAmbientLightType:(id)a3
{
  v3 = a3;
  if ([v3 isEqualToString:@"ProactiveAppPredictionAmbientLightTypeDark"])
  {
    v4 = 0;
  }

  else if ([v3 isEqualToString:@"ProactiveAppPredictionAmbientLightTypeIndoorDark"])
  {
    v4 = 1;
  }

  else if ([v3 isEqualToString:@"ProactiveAppPredictionAmbientLightTypeOutdoorDark"])
  {
    v4 = 2;
  }

  else if ([v3 isEqualToString:@"ProactiveAppPredictionAmbientLightTypeIndoorArtificialLight"])
  {
    v4 = 3;
  }

  else if ([v3 isEqualToString:@"ProactiveAppPredictionAmbientLightTypeIndoorBrightArtificialLight"])
  {
    v4 = 4;
  }

  else if ([v3 isEqualToString:@"ProactiveAppPredictionAmbientLightTypeOutdoor"])
  {
    v4 = 5;
  }

  else if ([v3 isEqualToString:@"ProactiveAppPredictionAmbientLightTypeOutdoorDirectSun"])
  {
    v4 = 6;
  }

  else if ([v3 isEqualToString:@"ProactiveAppPredictionAmbientLightTypeUnknown"])
  {
    v4 = 7;
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v8.receiver = self;
  v8.super_class = ATXPBPredictionAmbientLightContext;
  v4 = [(ATXPBPredictionAmbientLightContext *)&v8 description];
  v5 = [(ATXPBPredictionAmbientLightContext *)self dictionaryRepresentation];
  v6 = [v3 stringWithFormat:@"%@ %@", v4, v5];

  return v6;
}

- (id)dictionaryRepresentation
{
  v3 = [MEMORY[0x277CBEB38] dictionary];
  if (*&self->_has)
  {
    ambientLightType = self->_ambientLightType;
    if (ambientLightType >= 8)
    {
      v5 = [MEMORY[0x277CCACA8] stringWithFormat:@"(unknown: %i)", self->_ambientLightType];
    }

    else
    {
      v5 = off_2785991F8[ambientLightType];
    }

    [v3 setObject:v5 forKey:@"ambientLightType"];
  }

  return v3;
}

- (void)writeTo:(id)a3
{
  if (*&self->_has)
  {
    ambientLightType = self->_ambientLightType;
    PBDataWriterWriteInt32Field();
  }
}

- (void)copyTo:(id)a3
{
  if (*&self->_has)
  {
    *(a3 + 2) = self->_ambientLightType;
    *(a3 + 12) |= 1u;
  }
}

- (id)copyWithZone:(_NSZone *)a3
{
  result = [objc_msgSend(objc_opt_class() allocWithZone:{a3), "init"}];
  if (*&self->_has)
  {
    *(result + 2) = self->_ambientLightType;
    *(result + 12) |= 1u;
  }

  return result;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (![v4 isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_6;
  }

  v5 = (*(v4 + 12) & 1) == 0;
  if (*&self->_has)
  {
    if ((*(v4 + 12) & 1) != 0 && self->_ambientLightType == *(v4 + 2))
    {
      v5 = 1;
      goto LABEL_7;
    }

LABEL_6:
    v5 = 0;
  }

LABEL_7:

  return v5;
}

- (unint64_t)hash
{
  if (*&self->_has)
  {
    return 2654435761 * self->_ambientLightType;
  }

  else
  {
    return 0;
  }
}

- (void)mergeFrom:(id)a3
{
  if (*(a3 + 12))
  {
    self->_ambientLightType = *(a3 + 2);
    *&self->_has |= 1u;
  }
}

@end