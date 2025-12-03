@interface ATXPBPredictionAmbientLightContext
- (BOOL)isEqual:(id)equal;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (id)dictionaryRepresentation;
- (int)StringAsAmbientLightType:(id)type;
- (unint64_t)hash;
- (void)copyTo:(id)to;
- (void)mergeFrom:(id)from;
- (void)writeTo:(id)to;
@end

@implementation ATXPBPredictionAmbientLightContext

- (int)StringAsAmbientLightType:(id)type
{
  typeCopy = type;
  if ([typeCopy isEqualToString:@"ProactiveAppPredictionAmbientLightTypeDark"])
  {
    v4 = 0;
  }

  else if ([typeCopy isEqualToString:@"ProactiveAppPredictionAmbientLightTypeIndoorDark"])
  {
    v4 = 1;
  }

  else if ([typeCopy isEqualToString:@"ProactiveAppPredictionAmbientLightTypeOutdoorDark"])
  {
    v4 = 2;
  }

  else if ([typeCopy isEqualToString:@"ProactiveAppPredictionAmbientLightTypeIndoorArtificialLight"])
  {
    v4 = 3;
  }

  else if ([typeCopy isEqualToString:@"ProactiveAppPredictionAmbientLightTypeIndoorBrightArtificialLight"])
  {
    v4 = 4;
  }

  else if ([typeCopy isEqualToString:@"ProactiveAppPredictionAmbientLightTypeOutdoor"])
  {
    v4 = 5;
  }

  else if ([typeCopy isEqualToString:@"ProactiveAppPredictionAmbientLightTypeOutdoorDirectSun"])
  {
    v4 = 6;
  }

  else if ([typeCopy isEqualToString:@"ProactiveAppPredictionAmbientLightTypeUnknown"])
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
  dictionaryRepresentation = [(ATXPBPredictionAmbientLightContext *)self dictionaryRepresentation];
  v6 = [v3 stringWithFormat:@"%@ %@", v4, dictionaryRepresentation];

  return v6;
}

- (id)dictionaryRepresentation
{
  dictionary = [MEMORY[0x277CBEB38] dictionary];
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

    [dictionary setObject:v5 forKey:@"ambientLightType"];
  }

  return dictionary;
}

- (void)writeTo:(id)to
{
  if (*&self->_has)
  {
    ambientLightType = self->_ambientLightType;
    PBDataWriterWriteInt32Field();
  }
}

- (void)copyTo:(id)to
{
  if (*&self->_has)
  {
    *(to + 2) = self->_ambientLightType;
    *(to + 12) |= 1u;
  }
}

- (id)copyWithZone:(_NSZone *)zone
{
  result = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
  if (*&self->_has)
  {
    *(result + 2) = self->_ambientLightType;
    *(result + 12) |= 1u;
  }

  return result;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (![equalCopy isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_6;
  }

  v5 = (*(equalCopy + 12) & 1) == 0;
  if (*&self->_has)
  {
    if ((*(equalCopy + 12) & 1) != 0 && self->_ambientLightType == *(equalCopy + 2))
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

- (void)mergeFrom:(id)from
{
  if (*(from + 12))
  {
    self->_ambientLightType = *(from + 2);
    *&self->_has |= 1u;
  }
}

@end