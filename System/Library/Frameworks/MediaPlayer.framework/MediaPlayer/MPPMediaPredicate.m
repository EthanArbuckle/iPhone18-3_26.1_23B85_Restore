@interface MPPMediaPredicate
- (BOOL)isEqual:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (id)dictionaryRepresentation;
- (unint64_t)hash;
- (void)copyTo:(id)a3;
- (void)dealloc;
- (void)writeTo:(id)a3;
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

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (![v4 isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_17;
  }

  if (*&self->_has)
  {
    if ((*(v4 + 52) & 1) == 0 || self->_type != *(v4 + 12))
    {
      goto LABEL_17;
    }
  }

  else if (*(v4 + 52))
  {
LABEL_17:
    v10 = 0;
    goto LABEL_18;
  }

  propertyPredicate = self->_propertyPredicate;
  if (propertyPredicate | *(v4 + 4) && ![(MPPPropertyPredicate *)propertyPredicate isEqual:?])
  {
    goto LABEL_17;
  }

  compoundPredicate = self->_compoundPredicate;
  if (compoundPredicate | *(v4 + 1))
  {
    if (![(MPPCompoundPredicate *)compoundPredicate isEqual:?])
    {
      goto LABEL_17;
    }
  }

  conditionalPredicate = self->_conditionalPredicate;
  if (conditionalPredicate | *(v4 + 2))
  {
    if (![(MPPConditionalPredicate *)conditionalPredicate isEqual:?])
    {
      goto LABEL_17;
    }
  }

  persistentIDsPredicate = self->_persistentIDsPredicate;
  if (persistentIDsPredicate | *(v4 + 3))
  {
    if (![(MPPPersistentIDsPredicate *)persistentIDsPredicate isEqual:?])
    {
      goto LABEL_17;
    }
  }

  searchStringPredicate = self->_searchStringPredicate;
  if (searchStringPredicate | *(v4 + 5))
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

- (id)copyWithZone:(_NSZone *)a3
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{a3), "init"}];
  v6 = v5;
  if (*&self->_has)
  {
    *(v5 + 48) = self->_type;
    *(v5 + 52) |= 1u;
  }

  v7 = [(MPPPropertyPredicate *)self->_propertyPredicate copyWithZone:a3];
  v8 = v6[4];
  v6[4] = v7;

  v9 = [(MPPCompoundPredicate *)self->_compoundPredicate copyWithZone:a3];
  v10 = v6[1];
  v6[1] = v9;

  v11 = [(MPPConditionalPredicate *)self->_conditionalPredicate copyWithZone:a3];
  v12 = v6[2];
  v6[2] = v11;

  v13 = [(MPPPersistentIDsPredicate *)self->_persistentIDsPredicate copyWithZone:a3];
  v14 = v6[3];
  v6[3] = v13;

  v15 = [(MPPSearchStringPredicate *)self->_searchStringPredicate copyWithZone:a3];
  v16 = v6[5];
  v6[5] = v15;

  return v6;
}

- (void)copyTo:(id)a3
{
  v9 = a3;
  if ([(MPPMediaPredicate *)self hasType])
  {
    [v9 setType:{-[MPPMediaPredicate type](self, "type")}];
  }

  if ([(MPPMediaPredicate *)self hasPropertyPredicate])
  {
    v4 = [(MPPMediaPredicate *)self propertyPredicate];
    [v9 setPropertyPredicate:v4];
  }

  if ([(MPPMediaPredicate *)self hasCompoundPredicate])
  {
    v5 = [(MPPMediaPredicate *)self compoundPredicate];
    [v9 setCompoundPredicate:v5];
  }

  if ([(MPPMediaPredicate *)self hasConditionalPredicate])
  {
    v6 = [(MPPMediaPredicate *)self conditionalPredicate];
    [v9 setConditionalPredicate:v6];
  }

  if ([(MPPMediaPredicate *)self hasPersistentIDsPredicate])
  {
    v7 = [(MPPMediaPredicate *)self persistentIDsPredicate];
    [v9 setPersistentIDsPredicate:v7];
  }

  if ([(MPPMediaPredicate *)self hasSearchStringPredicate])
  {
    v8 = [(MPPMediaPredicate *)self searchStringPredicate];
    [v9 setSearchStringPredicate:v8];
  }
}

- (void)writeTo:(id)a3
{
  v15 = a3;
  if (*&self->_has)
  {
    [v15 writeInt32:self->_type forTag:1];
  }

  if (self->_propertyPredicate)
  {
    v4 = objc_alloc_init(MEMORY[0x1E69C65C0]);
    [(MPPPropertyPredicate *)self->_propertyPredicate writeTo:v4];
    v5 = [v4 data];
    [v15 writeData:v5 forTag:2];
  }

  if (self->_compoundPredicate)
  {
    v6 = objc_alloc_init(MEMORY[0x1E69C65C0]);
    [(MPPCompoundPredicate *)self->_compoundPredicate writeTo:v6];
    v7 = [v6 data];
    [v15 writeData:v7 forTag:3];
  }

  if (self->_conditionalPredicate)
  {
    v8 = objc_alloc_init(MEMORY[0x1E69C65C0]);
    [(MPPConditionalPredicate *)self->_conditionalPredicate writeTo:v8];
    v9 = [v8 data];
    [v15 writeData:v9 forTag:4];
  }

  if (self->_persistentIDsPredicate)
  {
    v10 = objc_alloc_init(MEMORY[0x1E69C65C0]);
    [(MPPPersistentIDsPredicate *)self->_persistentIDsPredicate writeTo:v10];
    v11 = [v10 data];
    [v15 writeData:v11 forTag:5];
  }

  v12 = v15;
  if (self->_searchStringPredicate)
  {
    v13 = objc_alloc_init(MEMORY[0x1E69C65C0]);
    [(MPPSearchStringPredicate *)self->_searchStringPredicate writeTo:v13];
    v14 = [v13 data];
    [v15 writeData:v14 forTag:6];

    v12 = v15;
  }
}

- (id)dictionaryRepresentation
{
  v3 = [MEMORY[0x1E695DF90] dictionary];
  if (*&self->_has)
  {
    v4 = [MEMORY[0x1E696AD98] numberWithInt:self->_type];
    [v3 setObject:v4 forKey:@"type"];
  }

  propertyPredicate = self->_propertyPredicate;
  if (propertyPredicate)
  {
    v6 = [(MPPPropertyPredicate *)propertyPredicate dictionaryRepresentation];
    [v3 setObject:v6 forKey:@"propertyPredicate"];
  }

  compoundPredicate = self->_compoundPredicate;
  if (compoundPredicate)
  {
    v8 = [(MPPCompoundPredicate *)compoundPredicate dictionaryRepresentation];
    [v3 setObject:v8 forKey:@"compoundPredicate"];
  }

  conditionalPredicate = self->_conditionalPredicate;
  if (conditionalPredicate)
  {
    v10 = [(MPPConditionalPredicate *)conditionalPredicate dictionaryRepresentation];
    [v3 setObject:v10 forKey:@"conditionalPredicate"];
  }

  persistentIDsPredicate = self->_persistentIDsPredicate;
  if (persistentIDsPredicate)
  {
    v12 = [(MPPPersistentIDsPredicate *)persistentIDsPredicate dictionaryRepresentation];
    [v3 setObject:v12 forKey:@"persistentIDsPredicate"];
  }

  searchStringPredicate = self->_searchStringPredicate;
  if (searchStringPredicate)
  {
    v14 = [(MPPSearchStringPredicate *)searchStringPredicate dictionaryRepresentation];
    [v3 setObject:v14 forKey:@"searchStringPredicate"];
  }

  return v3;
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v8.receiver = self;
  v8.super_class = MPPMediaPredicate;
  v4 = [(MPPMediaPredicate *)&v8 description];
  v5 = [(MPPMediaPredicate *)self dictionaryRepresentation];
  v6 = [v3 stringWithFormat:@"%@ %@", v4, v5];

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