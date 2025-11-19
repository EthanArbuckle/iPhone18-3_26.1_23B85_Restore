@interface MPPPropertyPredicate
- (BOOL)isEqual:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (id)dictionaryRepresentation;
- (unint64_t)hash;
- (void)copyTo:(id)a3;
- (void)dealloc;
- (void)writeTo:(id)a3;
@end

@implementation MPPPropertyPredicate

- (unint64_t)hash
{
  v3 = [(NSString *)self->_property hash];
  v4 = [(MPPMediaPredicateValue *)self->_value hash];
  if (*&self->_has)
  {
    v5 = 2654435761 * self->_comparisonType;
  }

  else
  {
    v5 = 0;
  }

  return v4 ^ v3 ^ v5;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (![v4 isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_10;
  }

  property = self->_property;
  if (property | *(v4 + 2))
  {
    if (![(NSString *)property isEqual:?])
    {
      goto LABEL_10;
    }
  }

  value = self->_value;
  if (value | *(v4 + 3))
  {
    if (![(MPPMediaPredicateValue *)value isEqual:?])
    {
      goto LABEL_10;
    }
  }

  v7 = (*(v4 + 32) & 1) == 0;
  if (*&self->_has)
  {
    if ((*(v4 + 32) & 1) != 0 && self->_comparisonType == *(v4 + 2))
    {
      v7 = 1;
      goto LABEL_11;
    }

LABEL_10:
    v7 = 0;
  }

LABEL_11:

  return v7;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{a3), "init"}];
  v6 = [(NSString *)self->_property copyWithZone:a3];
  v7 = *(v5 + 16);
  *(v5 + 16) = v6;

  v8 = [(MPPMediaPredicateValue *)self->_value copyWithZone:a3];
  v9 = *(v5 + 24);
  *(v5 + 24) = v8;

  if (*&self->_has)
  {
    *(v5 + 8) = self->_comparisonType;
    *(v5 + 32) |= 1u;
  }

  return v5;
}

- (void)copyTo:(id)a3
{
  v6 = a3;
  if ([(MPPPropertyPredicate *)self hasProperty])
  {
    v4 = [(MPPPropertyPredicate *)self property];
    [v6 setProperty:v4];
  }

  if ([(MPPPropertyPredicate *)self hasValue])
  {
    v5 = [(MPPPropertyPredicate *)self value];
    [v6 setValue:v5];
  }

  if ([(MPPPropertyPredicate *)self hasComparisonType])
  {
    [v6 setComparisonType:{-[MPPPropertyPredicate comparisonType](self, "comparisonType")}];
  }
}

- (void)writeTo:(id)a3
{
  v4 = a3;
  property = self->_property;
  v8 = v4;
  if (property)
  {
    [v4 writeString:property forTag:1];
  }

  if (self->_value)
  {
    v6 = objc_alloc_init(MEMORY[0x1E69C65C0]);
    [(MPPMediaPredicateValue *)self->_value writeTo:v6];
    v7 = [v6 data];
    [v8 writeData:v7 forTag:2];
  }

  if (*&self->_has)
  {
    [v8 writeInt32:self->_comparisonType forTag:3];
  }
}

- (id)dictionaryRepresentation
{
  v3 = [MEMORY[0x1E695DF90] dictionary];
  v4 = v3;
  property = self->_property;
  if (property)
  {
    [v3 setObject:property forKey:@"property"];
  }

  value = self->_value;
  if (value)
  {
    v7 = [(MPPMediaPredicateValue *)value dictionaryRepresentation];
    [v4 setObject:v7 forKey:@"value"];
  }

  if (*&self->_has)
  {
    v8 = [MEMORY[0x1E696AD98] numberWithInt:self->_comparisonType];
    [v4 setObject:v8 forKey:@"comparisonType"];
  }

  return v4;
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v8.receiver = self;
  v8.super_class = MPPPropertyPredicate;
  v4 = [(MPPPropertyPredicate *)&v8 description];
  v5 = [(MPPPropertyPredicate *)self dictionaryRepresentation];
  v6 = [v3 stringWithFormat:@"%@ %@", v4, v5];

  return v6;
}

- (void)dealloc
{
  [(MPPPropertyPredicate *)self setProperty:0];
  [(MPPPropertyPredicate *)self setValue:0];
  v3.receiver = self;
  v3.super_class = MPPPropertyPredicate;
  [(MPPPropertyPredicate *)&v3 dealloc];
}

@end