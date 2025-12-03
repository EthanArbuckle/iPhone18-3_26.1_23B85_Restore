@interface MPPConditionalPredicate
- (BOOL)isEqual:(id)equal;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (id)dictionaryRepresentation;
- (unint64_t)hash;
- (void)copyTo:(id)to;
- (void)dealloc;
- (void)writeTo:(id)to;
@end

@implementation MPPConditionalPredicate

- (unint64_t)hash
{
  v3 = [(MPPMediaPredicate *)self->_conditionalPredicate hash];
  v4 = [(MPPMediaPredicate *)self->_thenPredicate hash]^ v3;
  return v4 ^ [(MPPMediaPredicate *)self->_elsePredicate hash];
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if ([equalCopy isMemberOfClass:objc_opt_class()] && ((conditionalPredicate = self->_conditionalPredicate, !(conditionalPredicate | equalCopy[1])) || -[MPPMediaPredicate isEqual:](conditionalPredicate, "isEqual:")) && ((thenPredicate = self->_thenPredicate, !(thenPredicate | equalCopy[3])) || -[MPPMediaPredicate isEqual:](thenPredicate, "isEqual:")))
  {
    elsePredicate = self->_elsePredicate;
    if (elsePredicate | equalCopy[2])
    {
      v8 = [(MPPMediaPredicate *)elsePredicate isEqual:?];
    }

    else
    {
      v8 = 1;
    }
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
  v6 = [(MPPMediaPredicate *)self->_conditionalPredicate copyWithZone:zone];
  v7 = v5[1];
  v5[1] = v6;

  v8 = [(MPPMediaPredicate *)self->_thenPredicate copyWithZone:zone];
  v9 = v5[3];
  v5[3] = v8;

  v10 = [(MPPMediaPredicate *)self->_elsePredicate copyWithZone:zone];
  v11 = v5[2];
  v5[2] = v10;

  return v5;
}

- (void)copyTo:(id)to
{
  toCopy = to;
  if ([(MPPConditionalPredicate *)self hasConditionalPredicate])
  {
    conditionalPredicate = [(MPPConditionalPredicate *)self conditionalPredicate];
    [toCopy setConditionalPredicate:conditionalPredicate];
  }

  if ([(MPPConditionalPredicate *)self hasThenPredicate])
  {
    thenPredicate = [(MPPConditionalPredicate *)self thenPredicate];
    [toCopy setThenPredicate:thenPredicate];
  }

  if ([(MPPConditionalPredicate *)self hasElsePredicate])
  {
    elsePredicate = [(MPPConditionalPredicate *)self elsePredicate];
    [toCopy setElsePredicate:elsePredicate];
  }
}

- (void)writeTo:(id)to
{
  toCopy = to;
  if (self->_conditionalPredicate)
  {
    v4 = objc_alloc_init(MEMORY[0x1E69C65C0]);
    [(MPPMediaPredicate *)self->_conditionalPredicate writeTo:v4];
    data = [v4 data];
    [toCopy writeData:data forTag:1];
  }

  if (self->_thenPredicate)
  {
    v6 = objc_alloc_init(MEMORY[0x1E69C65C0]);
    [(MPPMediaPredicate *)self->_thenPredicate writeTo:v6];
    data2 = [v6 data];
    [toCopy writeData:data2 forTag:2];
  }

  v8 = toCopy;
  if (self->_elsePredicate)
  {
    v9 = objc_alloc_init(MEMORY[0x1E69C65C0]);
    [(MPPMediaPredicate *)self->_elsePredicate writeTo:v9];
    data3 = [v9 data];
    [toCopy writeData:data3 forTag:3];

    v8 = toCopy;
  }
}

- (id)dictionaryRepresentation
{
  dictionary = [MEMORY[0x1E695DF90] dictionary];
  conditionalPredicate = self->_conditionalPredicate;
  if (conditionalPredicate)
  {
    dictionaryRepresentation = [(MPPMediaPredicate *)conditionalPredicate dictionaryRepresentation];
    [dictionary setObject:dictionaryRepresentation forKey:@"conditionalPredicate"];
  }

  thenPredicate = self->_thenPredicate;
  if (thenPredicate)
  {
    dictionaryRepresentation2 = [(MPPMediaPredicate *)thenPredicate dictionaryRepresentation];
    [dictionary setObject:dictionaryRepresentation2 forKey:@"thenPredicate"];
  }

  elsePredicate = self->_elsePredicate;
  if (elsePredicate)
  {
    dictionaryRepresentation3 = [(MPPMediaPredicate *)elsePredicate dictionaryRepresentation];
    [dictionary setObject:dictionaryRepresentation3 forKey:@"elsePredicate"];
  }

  return dictionary;
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v8.receiver = self;
  v8.super_class = MPPConditionalPredicate;
  v4 = [(MPPConditionalPredicate *)&v8 description];
  dictionaryRepresentation = [(MPPConditionalPredicate *)self dictionaryRepresentation];
  v6 = [v3 stringWithFormat:@"%@ %@", v4, dictionaryRepresentation];

  return v6;
}

- (void)dealloc
{
  [(MPPConditionalPredicate *)self setConditionalPredicate:0];
  [(MPPConditionalPredicate *)self setThenPredicate:0];
  [(MPPConditionalPredicate *)self setElsePredicate:0];
  v3.receiver = self;
  v3.super_class = MPPConditionalPredicate;
  [(MPPConditionalPredicate *)&v3 dealloc];
}

@end