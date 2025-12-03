@interface MPPMediaPredicate
- (BOOL)isEqual:(id)equal;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (id)dictionaryRepresentation;
- (unint64_t)hash;
- (void)copyTo:(id)to;
- (void)dealloc;
- (void)writeTo:(id)to;
@end

@implementation MPPMediaPredicate

- (unint64_t)hash
{
  if (*&self->_has)
  {
    v3 = 2654435761 * self->_type;
  }

  else
  {
    v3 = 0;
  }

  v4 = [(MPPPropertyPredicate *)self->_propertyPredicate hash]^ v3;
  v5 = [(MPPCompoundPredicate *)self->_compoundPredicate hash];
  v6 = v4 ^ v5 ^ [(MPPConditionalPredicate *)self->_conditionalPredicate hash];
  v7 = [(MPPPersistentIDsPredicate *)self->_persistentIDsPredicate hash];
  return v6 ^ v7 ^ [(MPPSearchStringPredicate *)self->_searchStringPredicate hash];
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (![equalCopy isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_17;
  }

  if (*&self->_has)
  {
    if ((*(equalCopy + 52) & 1) == 0 || self->_type != *(equalCopy + 12))
    {
      goto LABEL_17;
    }
  }

  else if (*(equalCopy + 52))
  {
LABEL_17:
    v10 = 0;
    goto LABEL_18;
  }

  propertyPredicate = self->_propertyPredicate;
  if (propertyPredicate | *(equalCopy + 4) && ![(MPPPropertyPredicate *)propertyPredicate isEqual:?])
  {
    goto LABEL_17;
  }

  compoundPredicate = self->_compoundPredicate;
  if (compoundPredicate | *(equalCopy + 1))
  {
    if (![(MPPCompoundPredicate *)compoundPredicate isEqual:?])
    {
      goto LABEL_17;
    }
  }

  conditionalPredicate = self->_conditionalPredicate;
  if (conditionalPredicate | *(equalCopy + 2))
  {
    if (![(MPPConditionalPredicate *)conditionalPredicate isEqual:?])
    {
      goto LABEL_17;
    }
  }

  persistentIDsPredicate = self->_persistentIDsPredicate;
  if (persistentIDsPredicate | *(equalCopy + 3))
  {
    if (![(MPPPersistentIDsPredicate *)persistentIDsPredicate isEqual:?])
    {
      goto LABEL_17;
    }
  }

  searchStringPredicate = self->_searchStringPredicate;
  if (searchStringPredicate | *(equalCopy + 5))
  {
    v10 = [(MPPSearchStringPredicate *)searchStringPredicate isEqual:?];
  }

  else
  {
    v10 = 1;
  }

LABEL_18:

  return v10;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
  v6 = v5;
  if (*&self->_has)
  {
    *(v5 + 48) = self->_type;
    *(v5 + 52) |= 1u;
  }

  v7 = [(MPPPropertyPredicate *)self->_propertyPredicate copyWithZone:zone];
  v8 = v6[4];
  v6[4] = v7;

  v9 = [(MPPCompoundPredicate *)self->_compoundPredicate copyWithZone:zone];
  v10 = v6[1];
  v6[1] = v9;

  v11 = [(MPPConditionalPredicate *)self->_conditionalPredicate copyWithZone:zone];
  v12 = v6[2];
  v6[2] = v11;

  v13 = [(MPPPersistentIDsPredicate *)self->_persistentIDsPredicate copyWithZone:zone];
  v14 = v6[3];
  v6[3] = v13;

  v15 = [(MPPSearchStringPredicate *)self->_searchStringPredicate copyWithZone:zone];
  v16 = v6[5];
  v6[5] = v15;

  return v6;
}

- (void)copyTo:(id)to
{
  toCopy = to;
  if ([(MPPMediaPredicate *)self hasType])
  {
    [toCopy setType:{-[MPPMediaPredicate type](self, "type")}];
  }

  if ([(MPPMediaPredicate *)self hasPropertyPredicate])
  {
    propertyPredicate = [(MPPMediaPredicate *)self propertyPredicate];
    [toCopy setPropertyPredicate:propertyPredicate];
  }

  if ([(MPPMediaPredicate *)self hasCompoundPredicate])
  {
    compoundPredicate = [(MPPMediaPredicate *)self compoundPredicate];
    [toCopy setCompoundPredicate:compoundPredicate];
  }

  if ([(MPPMediaPredicate *)self hasConditionalPredicate])
  {
    conditionalPredicate = [(MPPMediaPredicate *)self conditionalPredicate];
    [toCopy setConditionalPredicate:conditionalPredicate];
  }

  if ([(MPPMediaPredicate *)self hasPersistentIDsPredicate])
  {
    persistentIDsPredicate = [(MPPMediaPredicate *)self persistentIDsPredicate];
    [toCopy setPersistentIDsPredicate:persistentIDsPredicate];
  }

  if ([(MPPMediaPredicate *)self hasSearchStringPredicate])
  {
    searchStringPredicate = [(MPPMediaPredicate *)self searchStringPredicate];
    [toCopy setSearchStringPredicate:searchStringPredicate];
  }
}

- (void)writeTo:(id)to
{
  toCopy = to;
  if (*&self->_has)
  {
    [toCopy writeInt32:self->_type forTag:1];
  }

  if (self->_propertyPredicate)
  {
    v4 = objc_alloc_init(MEMORY[0x1E69C65C0]);
    [(MPPPropertyPredicate *)self->_propertyPredicate writeTo:v4];
    data = [v4 data];
    [toCopy writeData:data forTag:2];
  }

  if (self->_compoundPredicate)
  {
    v6 = objc_alloc_init(MEMORY[0x1E69C65C0]);
    [(MPPCompoundPredicate *)self->_compoundPredicate writeTo:v6];
    data2 = [v6 data];
    [toCopy writeData:data2 forTag:3];
  }

  if (self->_conditionalPredicate)
  {
    v8 = objc_alloc_init(MEMORY[0x1E69C65C0]);
    [(MPPConditionalPredicate *)self->_conditionalPredicate writeTo:v8];
    data3 = [v8 data];
    [toCopy writeData:data3 forTag:4];
  }

  if (self->_persistentIDsPredicate)
  {
    v10 = objc_alloc_init(MEMORY[0x1E69C65C0]);
    [(MPPPersistentIDsPredicate *)self->_persistentIDsPredicate writeTo:v10];
    data4 = [v10 data];
    [toCopy writeData:data4 forTag:5];
  }

  v12 = toCopy;
  if (self->_searchStringPredicate)
  {
    v13 = objc_alloc_init(MEMORY[0x1E69C65C0]);
    [(MPPSearchStringPredicate *)self->_searchStringPredicate writeTo:v13];
    data5 = [v13 data];
    [toCopy writeData:data5 forTag:6];

    v12 = toCopy;
  }
}

- (id)dictionaryRepresentation
{
  dictionary = [MEMORY[0x1E695DF90] dictionary];
  if (*&self->_has)
  {
    v4 = [MEMORY[0x1E696AD98] numberWithInt:self->_type];
    [dictionary setObject:v4 forKey:@"type"];
  }

  propertyPredicate = self->_propertyPredicate;
  if (propertyPredicate)
  {
    dictionaryRepresentation = [(MPPPropertyPredicate *)propertyPredicate dictionaryRepresentation];
    [dictionary setObject:dictionaryRepresentation forKey:@"propertyPredicate"];
  }

  compoundPredicate = self->_compoundPredicate;
  if (compoundPredicate)
  {
    dictionaryRepresentation2 = [(MPPCompoundPredicate *)compoundPredicate dictionaryRepresentation];
    [dictionary setObject:dictionaryRepresentation2 forKey:@"compoundPredicate"];
  }

  conditionalPredicate = self->_conditionalPredicate;
  if (conditionalPredicate)
  {
    dictionaryRepresentation3 = [(MPPConditionalPredicate *)conditionalPredicate dictionaryRepresentation];
    [dictionary setObject:dictionaryRepresentation3 forKey:@"conditionalPredicate"];
  }

  persistentIDsPredicate = self->_persistentIDsPredicate;
  if (persistentIDsPredicate)
  {
    dictionaryRepresentation4 = [(MPPPersistentIDsPredicate *)persistentIDsPredicate dictionaryRepresentation];
    [dictionary setObject:dictionaryRepresentation4 forKey:@"persistentIDsPredicate"];
  }

  searchStringPredicate = self->_searchStringPredicate;
  if (searchStringPredicate)
  {
    dictionaryRepresentation5 = [(MPPSearchStringPredicate *)searchStringPredicate dictionaryRepresentation];
    [dictionary setObject:dictionaryRepresentation5 forKey:@"searchStringPredicate"];
  }

  return dictionary;
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v8.receiver = self;
  v8.super_class = MPPMediaPredicate;
  v4 = [(MPPMediaPredicate *)&v8 description];
  dictionaryRepresentation = [(MPPMediaPredicate *)self dictionaryRepresentation];
  v6 = [v3 stringWithFormat:@"%@ %@", v4, dictionaryRepresentation];

  return v6;
}

- (void)dealloc
{
  [(MPPMediaPredicate *)self setPropertyPredicate:0];
  [(MPPMediaPredicate *)self setCompoundPredicate:0];
  [(MPPMediaPredicate *)self setConditionalPredicate:0];
  [(MPPMediaPredicate *)self setPersistentIDsPredicate:0];
  [(MPPMediaPredicate *)self setSearchStringPredicate:0];
  v3.receiver = self;
  v3.super_class = MPPMediaPredicate;
  [(MPPMediaPredicate *)&v3 dealloc];
}

@end