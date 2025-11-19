@interface MPPPersistentIDsPredicate
- (BOOL)isEqual:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (id)dictionaryRepresentation;
- (int64_t)persistentIDsAtIndex:(unint64_t)a3;
- (unint64_t)hash;
- (void)copyTo:(id)a3;
- (void)dealloc;
- (void)writeTo:(id)a3;
@end

@implementation MPPPersistentIDsPredicate

- (unint64_t)hash
{
  if (*&self->_has)
  {
    v2 = 2654435761 * self->_shouldContain;
  }

  else
  {
    v2 = 0;
  }

  return PBRepeatedInt64Hash() ^ v2;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (![v4 isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_8;
  }

  if (*&self->_has)
  {
    if ((v4[36] & 1) == 0 || self->_shouldContain != v4[32])
    {
      goto LABEL_8;
    }
  }

  else if (v4[36])
  {
LABEL_8:
    IsEqual = 0;
    goto LABEL_9;
  }

  IsEqual = PBRepeatedInt64IsEqual();
LABEL_9:

  return IsEqual;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = [objc_msgSend(objc_opt_class() allocWithZone:{a3), "init"}];
  v5 = v4;
  if (*&self->_has)
  {
    *(v4 + 32) = self->_shouldContain;
    *(v4 + 36) |= 1u;
  }

  PBRepeatedInt64Copy();
  return v5;
}

- (void)copyTo:(id)a3
{
  v7 = a3;
  if ([(MPPPersistentIDsPredicate *)self hasShouldContain])
  {
    [v7 setShouldContain:{-[MPPPersistentIDsPredicate shouldContain](self, "shouldContain")}];
  }

  if ([(MPPPersistentIDsPredicate *)self persistentIDsCount])
  {
    [v7 clearPersistentIDs];
    v4 = [(MPPPersistentIDsPredicate *)self persistentIDsCount];
    if (v4)
    {
      v5 = v4;
      for (i = 0; i != v5; ++i)
      {
        [v7 addPersistentIDs:{-[MPPPersistentIDsPredicate persistentIDsAtIndex:](self, "persistentIDsAtIndex:", i)}];
      }
    }
  }
}

- (void)writeTo:(id)a3
{
  v4 = a3;
  v7 = v4;
  if (*&self->_has)
  {
    [v4 writeBOOL:self->_shouldContain forTag:1];
    v4 = v7;
  }

  p_persistentIDs = &self->_persistentIDs;
  if (p_persistentIDs->count)
  {
    v6 = 0;
    do
    {
      [v7 writeInt64:p_persistentIDs->list[v6] forTag:2];
      v4 = v7;
      ++v6;
    }

    while (v6 < p_persistentIDs->count);
  }
}

- (id)dictionaryRepresentation
{
  v3 = [MEMORY[0x1E695DF90] dictionary];
  if (*&self->_has)
  {
    v4 = [MEMORY[0x1E696AD98] numberWithBool:self->_shouldContain];
    [v3 setObject:v4 forKey:@"shouldContain"];
  }

  v5 = PBRepeatedInt64NSArray();
  [v3 setObject:v5 forKey:@"persistentIDs"];

  return v3;
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v8.receiver = self;
  v8.super_class = MPPPersistentIDsPredicate;
  v4 = [(MPPPersistentIDsPredicate *)&v8 description];
  v5 = [(MPPPersistentIDsPredicate *)self dictionaryRepresentation];
  v6 = [v3 stringWithFormat:@"%@ %@", v4, v5];

  return v6;
}

- (int64_t)persistentIDsAtIndex:(unint64_t)a3
{
  p_persistentIDs = &self->_persistentIDs;
  count = self->_persistentIDs.count;
  if (count <= a3)
  {
    v6 = MEMORY[0x1E695DF30];
    v7 = *MEMORY[0x1E695DA20];
    v8 = [MEMORY[0x1E696AEC0] stringWithFormat:@"idx (%ld) is out of range (%ld)", a3, count];
    v9 = [v6 exceptionWithName:v7 reason:v8 userInfo:0];
    [v9 raise];
  }

  return p_persistentIDs->list[a3];
}

- (void)dealloc
{
  PBRepeatedInt64Clear();
  v3.receiver = self;
  v3.super_class = MPPPersistentIDsPredicate;
  [(MPPPersistentIDsPredicate *)&v3 dealloc];
}

@end