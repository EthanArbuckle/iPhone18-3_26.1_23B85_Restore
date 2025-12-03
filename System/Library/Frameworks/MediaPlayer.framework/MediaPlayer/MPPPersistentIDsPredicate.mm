@interface MPPPersistentIDsPredicate
- (BOOL)isEqual:(id)equal;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (id)dictionaryRepresentation;
- (int64_t)persistentIDsAtIndex:(unint64_t)index;
- (unint64_t)hash;
- (void)copyTo:(id)to;
- (void)dealloc;
- (void)writeTo:(id)to;
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

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (![equalCopy isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_8;
  }

  if (*&self->_has)
  {
    if ((equalCopy[36] & 1) == 0 || self->_shouldContain != equalCopy[32])
    {
      goto LABEL_8;
    }
  }

  else if (equalCopy[36])
  {
LABEL_8:
    IsEqual = 0;
    goto LABEL_9;
  }

  IsEqual = PBRepeatedInt64IsEqual();
LABEL_9:

  return IsEqual;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
  v5 = v4;
  if (*&self->_has)
  {
    *(v4 + 32) = self->_shouldContain;
    *(v4 + 36) |= 1u;
  }

  PBRepeatedInt64Copy();
  return v5;
}

- (void)copyTo:(id)to
{
  toCopy = to;
  if ([(MPPPersistentIDsPredicate *)self hasShouldContain])
  {
    [toCopy setShouldContain:{-[MPPPersistentIDsPredicate shouldContain](self, "shouldContain")}];
  }

  if ([(MPPPersistentIDsPredicate *)self persistentIDsCount])
  {
    [toCopy clearPersistentIDs];
    persistentIDsCount = [(MPPPersistentIDsPredicate *)self persistentIDsCount];
    if (persistentIDsCount)
    {
      v5 = persistentIDsCount;
      for (i = 0; i != v5; ++i)
      {
        [toCopy addPersistentIDs:{-[MPPPersistentIDsPredicate persistentIDsAtIndex:](self, "persistentIDsAtIndex:", i)}];
      }
    }
  }
}

- (void)writeTo:(id)to
{
  toCopy = to;
  v7 = toCopy;
  if (*&self->_has)
  {
    [toCopy writeBOOL:self->_shouldContain forTag:1];
    toCopy = v7;
  }

  p_persistentIDs = &self->_persistentIDs;
  if (p_persistentIDs->count)
  {
    v6 = 0;
    do
    {
      [v7 writeInt64:p_persistentIDs->list[v6] forTag:2];
      toCopy = v7;
      ++v6;
    }

    while (v6 < p_persistentIDs->count);
  }
}

- (id)dictionaryRepresentation
{
  dictionary = [MEMORY[0x1E695DF90] dictionary];
  if (*&self->_has)
  {
    v4 = [MEMORY[0x1E696AD98] numberWithBool:self->_shouldContain];
    [dictionary setObject:v4 forKey:@"shouldContain"];
  }

  v5 = PBRepeatedInt64NSArray();
  [dictionary setObject:v5 forKey:@"persistentIDs"];

  return dictionary;
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v8.receiver = self;
  v8.super_class = MPPPersistentIDsPredicate;
  v4 = [(MPPPersistentIDsPredicate *)&v8 description];
  dictionaryRepresentation = [(MPPPersistentIDsPredicate *)self dictionaryRepresentation];
  v6 = [v3 stringWithFormat:@"%@ %@", v4, dictionaryRepresentation];

  return v6;
}

- (int64_t)persistentIDsAtIndex:(unint64_t)index
{
  p_persistentIDs = &self->_persistentIDs;
  count = self->_persistentIDs.count;
  if (count <= index)
  {
    v6 = MEMORY[0x1E695DF30];
    v7 = *MEMORY[0x1E695DA20];
    v8 = [MEMORY[0x1E696AEC0] stringWithFormat:@"idx (%ld) is out of range (%ld)", index, count];
    v9 = [v6 exceptionWithName:v7 reason:v8 userInfo:0];
    [v9 raise];
  }

  return p_persistentIDs->list[index];
}

- (void)dealloc
{
  PBRepeatedInt64Clear();
  v3.receiver = self;
  v3.super_class = MPPPersistentIDsPredicate;
  [(MPPPersistentIDsPredicate *)&v3 dealloc];
}

@end