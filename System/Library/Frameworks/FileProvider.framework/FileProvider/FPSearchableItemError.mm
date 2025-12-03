@interface FPSearchableItemError
+ (id)errorFromString:(id)string;
+ (id)stringFromError:(id)error;
- (BOOL)isEqual:(id)equal;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (id)dictionaryRepresentation;
- (int)StringAsDomain:(id)domain;
- (void)copyTo:(id)to;
- (void)mergeFrom:(id)from;
- (void)writeTo:(id)to;
@end

@implementation FPSearchableItemError

+ (id)stringFromError:(id)error
{
  errorCopy = error;
  if (!errorCopy)
  {
    v9 = 0;
    goto LABEL_10;
  }

  v4 = objc_alloc_init(FPSearchableItemError);
  domain = [errorCopy domain];
  v6 = [domain isEqualToString:@"NSFileProviderErrorDomain"];

  if (v6)
  {
    v7 = v4;
    v8 = 1;
  }

  else
  {
    domain2 = [errorCopy domain];
    v11 = [domain2 isEqualToString:*MEMORY[0x1E696A250]];

    v7 = v4;
    if (!v11)
    {
      [(FPSearchableItemError *)v4 setDomain:0];
      domain3 = [errorCopy domain];
      [(FPSearchableItemError *)v4 setCustomDomain:domain3];

      goto LABEL_9;
    }

    v8 = 2;
  }

  [(FPSearchableItemError *)v7 setDomain:v8];
LABEL_9:
  -[FPSearchableItemError setCode:](v4, "setCode:", [errorCopy code]);
  data = [(FPSearchableItemError *)v4 data];
  v9 = [data base64EncodedStringWithOptions:0];

LABEL_10:

  return v9;
}

+ (id)errorFromString:(id)string
{
  v3 = MEMORY[0x1E695DEF0];
  stringCopy = string;
  v5 = [[v3 alloc] initWithBase64EncodedString:stringCopy options:0];

  v6 = [[FPSearchableItemError alloc] initWithData:v5];
  customDomain = [(FPSearchableItemError *)v6 customDomain];
  if ([(FPSearchableItemError *)v6 domain]== 1)
  {
    v8 = &NSFileProviderErrorDomain;
  }

  else
  {
    if ([(FPSearchableItemError *)v6 domain]!= 2)
    {
      goto LABEL_6;
    }

    v8 = MEMORY[0x1E696A250];
  }

  v9 = *v8;

  customDomain = v9;
LABEL_6:
  if (customDomain)
  {
    v10 = MEMORY[0x1E696ABC0];
    code = [(FPSearchableItemError *)v6 code];
    v12 = [v10 errorWithDomain:customDomain code:code userInfo:MEMORY[0x1E695E0F8]];
  }

  else
  {
    v12 = 0;
  }

  return v12;
}

- (int)StringAsDomain:(id)domain
{
  domainCopy = domain;
  if ([domainCopy isEqualToString:@"Custom"])
  {
    v4 = 0;
  }

  else if ([domainCopy isEqualToString:@"FileProvider"])
  {
    v4 = 1;
  }

  else if ([domainCopy isEqualToString:@"Cocoa"])
  {
    v4 = 2;
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v8.receiver = self;
  v8.super_class = FPSearchableItemError;
  v4 = [(FPSearchableItemError *)&v8 description];
  dictionaryRepresentation = [(FPSearchableItemError *)self dictionaryRepresentation];
  v6 = [v3 stringWithFormat:@"%@ %@", v4, dictionaryRepresentation];

  return v6;
}

- (id)dictionaryRepresentation
{
  dictionary = [MEMORY[0x1E695DF90] dictionary];
  domain = self->_domain;
  if (domain >= 3)
  {
    v5 = [MEMORY[0x1E696AEC0] stringWithFormat:@"(unknown: %i)", self->_domain];
  }

  else
  {
    v5 = off_1E793F010[domain];
  }

  [dictionary setObject:v5 forKey:@"domain"];

  v6 = [MEMORY[0x1E696AD98] numberWithLongLong:self->_code];
  [dictionary setObject:v6 forKey:@"code"];

  customDomain = self->_customDomain;
  if (customDomain)
  {
    [dictionary setObject:customDomain forKey:@"customDomain"];
  }

  return dictionary;
}

- (void)writeTo:(id)to
{
  toCopy = to;
  domain = self->_domain;
  PBDataWriterWriteInt32Field();
  code = self->_code;
  PBDataWriterWriteSint64Field();
  if (self->_customDomain)
  {
    PBDataWriterWriteStringField();
  }
}

- (void)copyTo:(id)to
{
  *(to + 6) = self->_domain;
  *(to + 1) = self->_code;
  customDomain = self->_customDomain;
  if (customDomain)
  {
    [to setCustomDomain:customDomain];
  }
}

- (id)copyWithZone:(_NSZone *)zone
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
  *(v5 + 24) = self->_domain;
  *(v5 + 8) = self->_code;
  v6 = [(NSString *)self->_customDomain copyWithZone:zone];
  v7 = *(v5 + 16);
  *(v5 + 16) = v6;

  return v5;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if ([equalCopy isMemberOfClass:objc_opt_class()] && self->_domain == *(equalCopy + 6) && self->_code == equalCopy[1])
  {
    customDomain = self->_customDomain;
    if (customDomain | equalCopy[2])
    {
      v6 = [(NSString *)customDomain isEqual:?];
    }

    else
    {
      v6 = 1;
    }
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (void)mergeFrom:(id)from
{
  self->_domain = *(from + 6);
  self->_code = *(from + 1);
  if (*(from + 2))
  {
    [(FPSearchableItemError *)self setCustomDomain:?];
  }
}

@end