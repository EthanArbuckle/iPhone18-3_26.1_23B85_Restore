@interface MPPConditionalPredicate
- (BOOL)isEqual:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (id)dictionaryRepresentation;
- (unint64_t)hash;
- (void)copyTo:(id)a3;
- (void)dealloc;
- (void)writeTo:(id)a3;
@end

@implementation MPPConditionalPredicate

- (unint64_t)hash
{
  v3 = [(MPPMediaPredicate *)self->_conditionalPredicate hash];
  v4 = [(MPPMediaPredicate *)self->_thenPredicate hash]^ v3;
  return v4 ^ [(MPPMediaPredicate *)self->_elsePredicate hash];
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if ([v4 isMemberOfClass:objc_opt_class()] && ((conditionalPredicate = self->_conditionalPredicate, !(conditionalPredicate | v4[1])) || -[MPPMediaPredicate isEqual:](conditionalPredicate, "isEqual:")) && ((thenPredicate = self->_thenPredicate, !(thenPredicate | v4[3])) || -[MPPMediaPredicate isEqual:](thenPredicate, "isEqual:")))
  {
    elsePredicate = self->_elsePredicate;
    if (elsePredicate | v4[2])
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

- (id)copyWithZone:(_NSZone *)a3
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{a3), "init"}];
  v6 = [(MPPMediaPredicate *)self->_conditionalPredicate copyWithZone:a3];
  v7 = v5[1];
  v5[1] = v6;

  v8 = [(MPPMediaPredicate *)self->_thenPredicate copyWithZone:a3];
  v9 = v5[3];
  v5[3] = v8;

  v10 = [(MPPMediaPredicate *)self->_elsePredicate copyWithZone:a3];
  v11 = v5[2];
  v5[2] = v10;

  return v5;
}

- (void)copyTo:(id)a3
{
  v7 = a3;
  if ([(MPPConditionalPredicate *)self hasConditionalPredicate])
  {
    v4 = [(MPPConditionalPredicate *)self conditionalPredicate];
    [v7 setConditionalPredicate:v4];
  }

  if ([(MPPConditionalPredicate *)self hasThenPredicate])
  {
    v5 = [(MPPConditionalPredicate *)self thenPredicate];
    [v7 setThenPredicate:v5];
  }

  if ([(MPPConditionalPredicate *)self hasElsePredicate])
  {
    v6 = [(MPPConditionalPredicate *)self elsePredicate];
    [v7 setElsePredicate:v6];
  }
}

- (void)writeTo:(id)a3
{
  v11 = a3;
  if (self->_conditionalPredicate)
  {
    v4 = objc_alloc_init(MEMORY[0x1E69C65C0]);
    [(MPPMediaPredicate *)self->_conditionalPredicate writeTo:v4];
    v5 = [v4 data];
    [v11 writeData:v5 forTag:1];
  }

  if (self->_thenPredicate)
  {
    v6 = objc_alloc_init(MEMORY[0x1E69C65C0]);
    [(MPPMediaPredicate *)self->_thenPredicate writeTo:v6];
    v7 = [v6 data];
    [v11 writeData:v7 forTag:2];
  }

  v8 = v11;
  if (self->_elsePredicate)
  {
    v9 = objc_alloc_init(MEMORY[0x1E69C65C0]);
    [(MPPMediaPredicate *)self->_elsePredicate writeTo:v9];
    v10 = [v9 data];
    [v11 writeData:v10 forTag:3];

    v8 = v11;
  }
}

- (id)dictionaryRepresentation
{
  v3 = [MEMORY[0x1E695DF90] dictionary];
  conditionalPredicate = self->_conditionalPredicate;
  if (conditionalPredicate)
  {
    v5 = [(MPPMediaPredicate *)conditionalPredicate dictionaryRepresentation];
    [v3 setObject:v5 forKey:@"conditionalPredicate"];
  }

  thenPredicate = self->_thenPredicate;
  if (thenPredicate)
  {
    v7 = [(MPPMediaPredicate *)thenPredicate dictionaryRepresentation];
    [v3 setObject:v7 forKey:@"thenPredicate"];
  }

  elsePredicate = self->_elsePredicate;
  if (elsePredicate)
  {
    v9 = [(MPPMediaPredicate *)elsePredicate dictionaryRepresentation];
    [v3 setObject:v9 forKey:@"elsePredicate"];
  }

  return v3;
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v8.receiver = self;
  v8.super_class = MPPConditionalPredicate;
  v4 = [(MPPConditionalPredicate *)&v8 description];
  v5 = [(MPPConditionalPredicate *)self dictionaryRepresentation];
  v6 = [v3 stringWithFormat:@"%@ %@", v4, v5];

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