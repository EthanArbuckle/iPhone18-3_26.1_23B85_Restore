@interface MPPPropertyPredicate
- (BOOL)isEqual:(id)equal;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (id)dictionaryRepresentation;
- (unint64_t)hash;
- (void)copyTo:(id)to;
- (void)dealloc;
- (void)writeTo:(id)to;
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

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (![equalCopy isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_10;
  }

  property = self->_property;
  if (property | *(equalCopy + 2))
  {
    if (![(NSString *)property isEqual:?])
    {
      goto LABEL_10;
    }
  }

  value = self->_value;
  if (value | *(equalCopy + 3))
  {
    if (![(MPPMediaPredicateValue *)value isEqual:?])
    {
      goto LABEL_10;
    }
  }

  v7 = (*(equalCopy + 32) & 1) == 0;
  if (*&self->_has)
  {
    if ((*(equalCopy + 32) & 1) != 0 && self->_comparisonType == *(equalCopy + 2))
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

- (id)copyWithZone:(_NSZone *)zone
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
  v6 = [(NSString *)self->_property copyWithZone:zone];
  v7 = *(v5 + 16);
  *(v5 + 16) = v6;

  v8 = [(MPPMediaPredicateValue *)self->_value copyWithZone:zone];
  v9 = *(v5 + 24);
  *(v5 + 24) = v8;

  if (*&self->_has)
  {
    *(v5 + 8) = self->_comparisonType;
    *(v5 + 32) |= 1u;
  }

  return v5;
}

- (void)copyTo:(id)to
{
  toCopy = to;
  if ([(MPPPropertyPredicate *)self hasProperty])
  {
    property = [(MPPPropertyPredicate *)self property];
    [toCopy setProperty:property];
  }

  if ([(MPPPropertyPredicate *)self hasValue])
  {
    value = [(MPPPropertyPredicate *)self value];
    [toCopy setValue:value];
  }

  if ([(MPPPropertyPredicate *)self hasComparisonType])
  {
    [toCopy setComparisonType:{-[MPPPropertyPredicate comparisonType](self, "comparisonType")}];
  }
}

- (void)writeTo:(id)to
{
  toCopy = to;
  property = self->_property;
  v8 = toCopy;
  if (property)
  {
    [toCopy writeString:property forTag:1];
  }

  if (self->_value)
  {
    v6 = objc_alloc_init(MEMORY[0x1E69C65C0]);
    [(MPPMediaPredicateValue *)self->_value writeTo:v6];
    data = [v6 data];
    [v8 writeData:data forTag:2];
  }

  if (*&self->_has)
  {
    [v8 writeInt32:self->_comparisonType forTag:3];
  }
}

- (id)dictionaryRepresentation
{
  dictionary = [MEMORY[0x1E695DF90] dictionary];
  v4 = dictionary;
  property = self->_property;
  if (property)
  {
    [dictionary setObject:property forKey:@"property"];
  }

  value = self->_value;
  if (value)
  {
    dictionaryRepresentation = [(MPPMediaPredicateValue *)value dictionaryRepresentation];
    [v4 setObject:dictionaryRepresentation forKey:@"value"];
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
  dictionaryRepresentation = [(MPPPropertyPredicate *)self dictionaryRepresentation];
  v6 = [v3 stringWithFormat:@"%@ %@", v4, dictionaryRepresentation];

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