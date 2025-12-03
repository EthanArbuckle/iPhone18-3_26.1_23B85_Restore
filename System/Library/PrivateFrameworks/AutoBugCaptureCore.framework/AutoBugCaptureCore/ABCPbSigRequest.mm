@interface ABCPbSigRequest
- (BOOL)isEqual:(id)equal;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (id)dictionaryRepresentation;
- (unint64_t)hash;
- (void)copyTo:(id)to;
- (void)mergeFrom:(id)from;
- (void)writeTo:(id)to;
@end

@implementation ABCPbSigRequest

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v8.receiver = self;
  v8.super_class = ABCPbSigRequest;
  v4 = [(ABCPbSigRequest *)&v8 description];
  dictionaryRepresentation = [(ABCPbSigRequest *)self dictionaryRepresentation];
  v6 = [v3 stringWithFormat:@"%@ %@", v4, dictionaryRepresentation];

  return v6;
}

- (id)dictionaryRepresentation
{
  dictionary = [MEMORY[0x277CBEB38] dictionary];
  v4 = dictionary;
  domain = self->_domain;
  if (domain)
  {
    [dictionary setObject:domain forKey:@"domain"];
  }

  type = self->_type;
  if (type)
  {
    [v4 setObject:type forKey:@"type"];
  }

  subtype = self->_subtype;
  if (subtype)
  {
    [v4 setObject:subtype forKey:@"subtype"];
  }

  subtypeContext = self->_subtypeContext;
  if (subtypeContext)
  {
    [v4 setObject:subtypeContext forKey:@"subtype_context"];
  }

  caseIdentifier = self->_caseIdentifier;
  if (caseIdentifier)
  {
    [v4 setObject:caseIdentifier forKey:@"case_identifier"];
  }

  process = self->_process;
  if (process)
  {
    [v4 setObject:process forKey:@"process"];
  }

  build = self->_build;
  if (build)
  {
    [v4 setObject:build forKey:@"build"];
  }

  buildVariant = self->_buildVariant;
  if (buildVariant)
  {
    [v4 setObject:buildVariant forKey:@"build_variant"];
  }

  caseGroupIdentifier = self->_caseGroupIdentifier;
  if (caseGroupIdentifier)
  {
    [v4 setObject:caseGroupIdentifier forKey:@"case_group_identifier"];
  }

  if (*&self->_has)
  {
    v14 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:self->_logSizeTotal];
    [v4 setObject:v14 forKey:@"log_size_total"];
  }

  return v4;
}

- (void)writeTo:(id)to
{
  toCopy = to;
  v6 = toCopy;
  if (self->_domain)
  {
    PBDataWriterWriteStringField();
    toCopy = v6;
  }

  if (self->_type)
  {
    PBDataWriterWriteStringField();
    toCopy = v6;
  }

  if (self->_subtype)
  {
    PBDataWriterWriteStringField();
    toCopy = v6;
  }

  if (self->_subtypeContext)
  {
    PBDataWriterWriteStringField();
    toCopy = v6;
  }

  if (self->_caseIdentifier)
  {
    PBDataWriterWriteStringField();
    toCopy = v6;
  }

  if (self->_process)
  {
    PBDataWriterWriteStringField();
    toCopy = v6;
  }

  if (self->_build)
  {
    PBDataWriterWriteStringField();
    toCopy = v6;
  }

  if (self->_buildVariant)
  {
    PBDataWriterWriteStringField();
    toCopy = v6;
  }

  if (self->_caseGroupIdentifier)
  {
    PBDataWriterWriteStringField();
    toCopy = v6;
  }

  if (*&self->_has)
  {
    logSizeTotal = self->_logSizeTotal;
    PBDataWriterWriteUint32Field();
    toCopy = v6;
  }
}

- (void)copyTo:(id)to
{
  toCopy = to;
  v5 = toCopy;
  if (self->_domain)
  {
    [toCopy setDomain:?];
    toCopy = v5;
  }

  if (self->_type)
  {
    [v5 setType:?];
    toCopy = v5;
  }

  if (self->_subtype)
  {
    [v5 setSubtype:?];
    toCopy = v5;
  }

  if (self->_subtypeContext)
  {
    [v5 setSubtypeContext:?];
    toCopy = v5;
  }

  if (self->_caseIdentifier)
  {
    [v5 setCaseIdentifier:?];
    toCopy = v5;
  }

  if (self->_process)
  {
    [v5 setProcess:?];
    toCopy = v5;
  }

  if (self->_build)
  {
    [v5 setBuild:?];
    toCopy = v5;
  }

  if (self->_buildVariant)
  {
    [v5 setBuildVariant:?];
    toCopy = v5;
  }

  if (self->_caseGroupIdentifier)
  {
    [v5 setCaseGroupIdentifier:?];
    toCopy = v5;
  }

  if (*&self->_has)
  {
    *(toCopy + 12) = self->_logSizeTotal;
    *(toCopy + 88) |= 1u;
  }
}

- (id)copyWithZone:(_NSZone *)zone
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
  v6 = [(NSString *)self->_domain copyWithZone:zone];
  v7 = *(v5 + 40);
  *(v5 + 40) = v6;

  v8 = [(NSString *)self->_type copyWithZone:zone];
  v9 = *(v5 + 80);
  *(v5 + 80) = v8;

  v10 = [(NSString *)self->_subtype copyWithZone:zone];
  v11 = *(v5 + 64);
  *(v5 + 64) = v10;

  v12 = [(NSString *)self->_subtypeContext copyWithZone:zone];
  v13 = *(v5 + 72);
  *(v5 + 72) = v12;

  v14 = [(NSString *)self->_caseIdentifier copyWithZone:zone];
  v15 = *(v5 + 32);
  *(v5 + 32) = v14;

  v16 = [(NSString *)self->_process copyWithZone:zone];
  v17 = *(v5 + 56);
  *(v5 + 56) = v16;

  v18 = [(NSString *)self->_build copyWithZone:zone];
  v19 = *(v5 + 8);
  *(v5 + 8) = v18;

  v20 = [(NSString *)self->_buildVariant copyWithZone:zone];
  v21 = *(v5 + 16);
  *(v5 + 16) = v20;

  v22 = [(NSString *)self->_caseGroupIdentifier copyWithZone:zone];
  v23 = *(v5 + 24);
  *(v5 + 24) = v22;

  if (*&self->_has)
  {
    *(v5 + 48) = self->_logSizeTotal;
    *(v5 + 88) |= 1u;
  }

  return v5;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (![equalCopy isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_24;
  }

  domain = self->_domain;
  if (domain | *(equalCopy + 5))
  {
    if (![(NSString *)domain isEqual:?])
    {
      goto LABEL_24;
    }
  }

  type = self->_type;
  if (type | *(equalCopy + 10))
  {
    if (![(NSString *)type isEqual:?])
    {
      goto LABEL_24;
    }
  }

  subtype = self->_subtype;
  if (subtype | *(equalCopy + 8))
  {
    if (![(NSString *)subtype isEqual:?])
    {
      goto LABEL_24;
    }
  }

  subtypeContext = self->_subtypeContext;
  if (subtypeContext | *(equalCopy + 9))
  {
    if (![(NSString *)subtypeContext isEqual:?])
    {
      goto LABEL_24;
    }
  }

  caseIdentifier = self->_caseIdentifier;
  if (caseIdentifier | *(equalCopy + 4))
  {
    if (![(NSString *)caseIdentifier isEqual:?])
    {
      goto LABEL_24;
    }
  }

  process = self->_process;
  if (process | *(equalCopy + 7))
  {
    if (![(NSString *)process isEqual:?])
    {
      goto LABEL_24;
    }
  }

  build = self->_build;
  if (build | *(equalCopy + 1))
  {
    if (![(NSString *)build isEqual:?])
    {
      goto LABEL_24;
    }
  }

  buildVariant = self->_buildVariant;
  if (buildVariant | *(equalCopy + 2))
  {
    if (![(NSString *)buildVariant isEqual:?])
    {
      goto LABEL_24;
    }
  }

  caseGroupIdentifier = self->_caseGroupIdentifier;
  if (caseGroupIdentifier | *(equalCopy + 3))
  {
    if (![(NSString *)caseGroupIdentifier isEqual:?])
    {
      goto LABEL_24;
    }
  }

  v14 = (*(equalCopy + 88) & 1) == 0;
  if (*&self->_has)
  {
    if ((*(equalCopy + 88) & 1) != 0 && self->_logSizeTotal == *(equalCopy + 12))
    {
      v14 = 1;
      goto LABEL_25;
    }

LABEL_24:
    v14 = 0;
  }

LABEL_25:

  return v14;
}

- (unint64_t)hash
{
  v3 = [(NSString *)self->_domain hash];
  v4 = [(NSString *)self->_type hash];
  v5 = [(NSString *)self->_subtype hash];
  v6 = [(NSString *)self->_subtypeContext hash];
  v7 = [(NSString *)self->_caseIdentifier hash];
  v8 = [(NSString *)self->_process hash];
  v9 = [(NSString *)self->_build hash];
  v10 = [(NSString *)self->_buildVariant hash];
  v11 = [(NSString *)self->_caseGroupIdentifier hash];
  if (*&self->_has)
  {
    v12 = 2654435761 * self->_logSizeTotal;
  }

  else
  {
    v12 = 0;
  }

  return v4 ^ v3 ^ v5 ^ v6 ^ v7 ^ v8 ^ v9 ^ v10 ^ v11 ^ v12;
}

- (void)mergeFrom:(id)from
{
  fromCopy = from;
  v5 = fromCopy;
  if (*(fromCopy + 5))
  {
    [(ABCPbSigRequest *)self setDomain:?];
    fromCopy = v5;
  }

  if (*(fromCopy + 10))
  {
    [(ABCPbSigRequest *)self setType:?];
    fromCopy = v5;
  }

  if (*(fromCopy + 8))
  {
    [(ABCPbSigRequest *)self setSubtype:?];
    fromCopy = v5;
  }

  if (*(fromCopy + 9))
  {
    [(ABCPbSigRequest *)self setSubtypeContext:?];
    fromCopy = v5;
  }

  if (*(fromCopy + 4))
  {
    [(ABCPbSigRequest *)self setCaseIdentifier:?];
    fromCopy = v5;
  }

  if (*(fromCopy + 7))
  {
    [(ABCPbSigRequest *)self setProcess:?];
    fromCopy = v5;
  }

  if (*(fromCopy + 1))
  {
    [(ABCPbSigRequest *)self setBuild:?];
    fromCopy = v5;
  }

  if (*(fromCopy + 2))
  {
    [(ABCPbSigRequest *)self setBuildVariant:?];
    fromCopy = v5;
  }

  if (*(fromCopy + 3))
  {
    [(ABCPbSigRequest *)self setCaseGroupIdentifier:?];
    fromCopy = v5;
  }

  if (fromCopy[22])
  {
    self->_logSizeTotal = fromCopy[12];
    *&self->_has |= 1u;
  }
}

@end