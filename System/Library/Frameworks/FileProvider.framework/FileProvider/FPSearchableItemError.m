@interface FPSearchableItemError
+ (id)errorFromString:(id)a3;
+ (id)stringFromError:(id)a3;
- (BOOL)isEqual:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (id)dictionaryRepresentation;
- (int)StringAsDomain:(id)a3;
- (void)copyTo:(id)a3;
- (void)mergeFrom:(id)a3;
- (void)writeTo:(id)a3;
@end

@implementation FPSearchableItemError

+ (id)stringFromError:(id)a3
{
  v3 = a3;
  if (!v3)
  {
    v9 = 0;
    goto LABEL_10;
  }

  v4 = objc_alloc_init(FPSearchableItemError);
  v5 = [v3 domain];
  v6 = [v5 isEqualToString:@"NSFileProviderErrorDomain"];

  if (v6)
  {
    v7 = v4;
    v8 = 1;
  }

  else
  {
    v10 = [v3 domain];
    v11 = [v10 isEqualToString:*MEMORY[0x1E696A250]];

    v7 = v4;
    if (!v11)
    {
      [(FPSearchableItemError *)v4 setDomain:0];
      v12 = [v3 domain];
      [(FPSearchableItemError *)v4 setCustomDomain:v12];

      goto LABEL_9;
    }

    v8 = 2;
  }

  [(FPSearchableItemError *)v7 setDomain:v8];
LABEL_9:
  -[FPSearchableItemError setCode:](v4, "setCode:", [v3 code]);
  v13 = [(FPSearchableItemError *)v4 data];
  v9 = [v13 base64EncodedStringWithOptions:0];

LABEL_10:

  return v9;
}

+ (id)errorFromString:(id)a3
{
  v3 = MEMORY[0x1E695DEF0];
  v4 = a3;
  v5 = [[v3 alloc] initWithBase64EncodedString:v4 options:0];

  v6 = [[FPSearchableItemError alloc] initWithData:v5];
  v7 = [(FPSearchableItemError *)v6 customDomain];
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

  v7 = v9;
LABEL_6:
  if (v7)
  {
    v10 = MEMORY[0x1E696ABC0];
    v11 = [(FPSearchableItemError *)v6 code];
    v12 = [v10 errorWithDomain:v7 code:v11 userInfo:MEMORY[0x1E695E0F8]];
  }

  else
  {
    v12 = 0;
  }

  return v12;
}

- (int)StringAsDomain:(id)a3
{
  v3 = a3;
  if ([v3 isEqualToString:@"Custom"])
  {
    v4 = 0;
  }

  else if ([v3 isEqualToString:@"FileProvider"])
  {
    v4 = 1;
  }

  else if ([v3 isEqualToString:@"Cocoa"])
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
  v5 = [(FPSearchableItemError *)self dictionaryRepresentation];
  v6 = [v3 stringWithFormat:@"%@ %@", v4, v5];

  return v6;
}

- (id)dictionaryRepresentation
{
  v3 = [MEMORY[0x1E695DF90] dictionary];
  domain = self->_domain;
  if (domain >= 3)
  {
    v5 = [MEMORY[0x1E696AEC0] stringWithFormat:@"(unknown: %i)", self->_domain];
  }

  else
  {
    v5 = off_1E793F010[domain];
  }

  [v3 setObject:v5 forKey:@"domain"];

  v6 = [MEMORY[0x1E696AD98] numberWithLongLong:self->_code];
  [v3 setObject:v6 forKey:@"code"];

  customDomain = self->_customDomain;
  if (customDomain)
  {
    [v3 setObject:customDomain forKey:@"customDomain"];
  }

  return v3;
}

- (void)writeTo:(id)a3
{
  v6 = a3;
  domain = self->_domain;
  PBDataWriterWriteInt32Field();
  code = self->_code;
  PBDataWriterWriteSint64Field();
  if (self->_customDomain)
  {
    PBDataWriterWriteStringField();
  }
}

- (void)copyTo:(id)a3
{
  *(a3 + 6) = self->_domain;
  *(a3 + 1) = self->_code;
  customDomain = self->_customDomain;
  if (customDomain)
  {
    [a3 setCustomDomain:customDomain];
  }
}

- (id)copyWithZone:(_NSZone *)a3
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{a3), "init"}];
  *(v5 + 24) = self->_domain;
  *(v5 + 8) = self->_code;
  v6 = [(NSString *)self->_customDomain copyWithZone:a3];
  v7 = *(v5 + 16);
  *(v5 + 16) = v6;

  return v5;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if ([v4 isMemberOfClass:objc_opt_class()] && self->_domain == *(v4 + 6) && self->_code == v4[1])
  {
    customDomain = self->_customDomain;
    if (customDomain | v4[2])
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

- (void)mergeFrom:(id)a3
{
  self->_domain = *(a3 + 6);
  self->_code = *(a3 + 1);
  if (*(a3 + 2))
  {
    [(FPSearchableItemError *)self setCustomDomain:?];
  }
}

@end