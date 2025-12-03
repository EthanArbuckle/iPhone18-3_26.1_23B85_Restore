@interface _TUIRenderModelIdentifierMap
- (_NSRange)allocateNewRangeWithLength:(unint64_t)length;
- (_TUIRenderModelIdentifierMap)init;
- (id).cxx_construct;
- (id)mapRenderModels:(id)models;
- (unint64_t)allocateNewIndex;
- (unint64_t)indexForIdentifier:(id)identifier;
- (unint64_t)largestIndexInUse;
- (void)_appendInterests:(id)interests;
- (void)_releaseIndexes:(const void *)indexes;
- (void)_retainIndexes:(const void *)indexes;
@end

@implementation _TUIRenderModelIdentifierMap

- (_TUIRenderModelIdentifierMap)init
{
  v10.receiver = self;
  v10.super_class = _TUIRenderModelIdentifierMap;
  v2 = [(_TUIRenderModelIdentifierMap *)&v10 init];
  if (v2)
  {
    v3 = objc_opt_new();
    available = v2->_available;
    v2->_available = v3;

    v2->_nextUnassigned = 0;
    v5 = objc_opt_new();
    identifierToIndex = v2->_identifierToIndex;
    v2->_identifierToIndex = v5;

    v7 = objc_opt_new();
    indexToIdentifier = v2->_indexToIdentifier;
    v2->_indexToIdentifier = v7;
  }

  return v2;
}

- (void)_retainIndexes:(const void *)indexes
{
  v3 = indexes + 8;
  v4 = *indexes;
  if (*indexes != indexes + 8)
  {
    p_end_node = &self->_indexToReferenceCount.__tree_.__end_node_;
    do
    {
      v7 = *(v4 + 4);
      v16[0] = v7;
      left = p_end_node->__left_;
      if (!p_end_node->__left_)
      {
        goto LABEL_11;
      }

      v9 = p_end_node;
      do
      {
        v10 = *(left + 4);
        v11 = v10 >= v7;
        v12 = v10 < v7;
        if (v11)
        {
          v9 = left;
        }

        left = *(left + v12);
      }

      while (left);
      if (v9 != p_end_node && v7 >= v9[4].__left_)
      {
        ++v9[5].__left_;
      }

      else
      {
LABEL_11:
        v16[2] = v16;
        sub_DA530(&self->_indexToReferenceCount, v16)[5] = 1;
      }

      v13 = *(v4 + 1);
      if (v13)
      {
        do
        {
          v14 = v13;
          v13 = *v13;
        }

        while (v13);
      }

      else
      {
        do
        {
          v14 = *(v4 + 2);
          v15 = *v14 == v4;
          v4 = v14;
        }

        while (!v15);
      }

      v4 = v14;
    }

    while (v14 != v3);
  }
}

- (void)_releaseIndexes:(const void *)indexes
{
  v3 = indexes + 8;
  v4 = *indexes;
  if (*indexes != indexes + 8)
  {
    p_end_node = &self->_indexToReferenceCount.__tree_.__end_node_;
    do
    {
      left = p_end_node->__left_;
      if (p_end_node->__left_)
      {
        v8 = *(v4 + 4);
        v9 = p_end_node;
        do
        {
          v10 = left[4];
          v11 = v10 >= v8;
          v12 = v10 < v8;
          if (v11)
          {
            v9 = left;
          }

          left = left[v12];
        }

        while (left);
        if (v9 != p_end_node && v8 >= v9[4])
        {
          v13 = v9[5] - 1;
          v9[5] = v13;
          if (!v13)
          {
            sub_9F9DC(&self->_indexToReferenceCount, v9);
            operator delete(v9);
            [(NSMutableIndexSet *)self->_available addIndex:v8];
            indexToIdentifier = self->_indexToIdentifier;
            v15 = [NSNumber numberWithUnsignedInteger:v8];
            v16 = [(NSMutableDictionary *)indexToIdentifier objectForKeyedSubscript:v15];

            v17 = self->_indexToIdentifier;
            v18 = [NSNumber numberWithUnsignedInteger:v8];
            [(NSMutableDictionary *)v17 setObject:0 forKeyedSubscript:v18];

            if (v16)
            {
              [(NSMutableDictionary *)self->_identifierToIndex setObject:0 forKeyedSubscript:v16];
            }
          }
        }
      }

      v19 = *(v4 + 1);
      if (v19)
      {
        do
        {
          v20 = v19;
          v19 = *v19;
        }

        while (v19);
      }

      else
      {
        do
        {
          v20 = *(v4 + 2);
          v21 = *v20 == v4;
          v4 = v20;
        }

        while (!v21);
      }

      v4 = v20;
    }

    while (v20 != v3);
  }
}

- (void)_appendInterests:(id)interests
{
  interestsCopy = interests;
  if (self->_collectedIndexes.__tree_.__size_)
  {
    v4 = [[_TUIRenderModelIdentifierInterest alloc] initWithIndexes:&self->_collectedIndexes map:self];
    if (v4)
    {
      [interestsCopy addObject:v4];
    }
  }

  else
  {
    v4 = 0;
  }
}

- (unint64_t)largestIndexInUse
{
  nextUnassigned = self->_nextUnassigned;
  if (nextUnassigned)
  {
    return nextUnassigned - 1;
  }

  else
  {
    return 0x7FFFFFFFFFFFFFFFLL;
  }
}

- (id)mapRenderModels:(id)models
{
  modelsCopy = models;
  v4 = [[NSMutableArray alloc] initWithCapacity:{objc_msgSend(modelsCopy, "count")}];
  v18 = 0u;
  v19 = 0u;
  v16 = 0u;
  v17 = 0u;
  v5 = modelsCopy;
  v6 = [v5 countByEnumeratingWithState:&v16 objects:v20 count:16];
  if (v6)
  {
    v7 = *v17;
    do
    {
      for (i = 0; i != v6; i = i + 1)
      {
        if (*v17 != v7)
        {
          objc_enumerationMutation(v5);
        }

        v9 = *(*(&v16 + 1) + 8 * i);
        identifier = [v9 identifier];
        v11 = [(_TUIRenderModelIdentifierMap *)self indexForIdentifier:identifier];

        if (v11 != 0x7FFFFFFFFFFFFFFFLL)
        {
          v12 = [v9 copyWithItemIndex:v11];
          [v4 addObject:v12];
        }
      }

      v6 = [v5 countByEnumeratingWithState:&v16 objects:v20 count:16];
    }

    while (v6);
  }

  v13 = [v4 copy];

  return v13;
}

- (unint64_t)indexForIdentifier:(id)identifier
{
  identifierCopy = identifier;
  if (identifierCopy)
  {
    v5 = [(NSMutableDictionary *)self->_identifierToIndex objectForKeyedSubscript:identifierCopy];
    v6 = v5;
    if (v5)
    {
      unsignedIntegerValue = [v5 unsignedIntegerValue];

      v8 = 0x7FFFFFFFFFFFFFFFLL;
      if (unsignedIntegerValue == 0x7FFFFFFFFFFFFFFFLL)
      {
        goto LABEL_12;
      }
    }

    else
    {
      unsignedIntegerValue = [(NSMutableIndexSet *)self->_available firstIndex];
      if (unsignedIntegerValue == 0x7FFFFFFFFFFFFFFFLL)
      {
        unsignedIntegerValue = [(_TUIRenderModelIdentifierMap *)self allocateNewIndex];
        v8 = 0x7FFFFFFFFFFFFFFFLL;
        if (unsignedIntegerValue == 0x7FFFFFFFFFFFFFFFLL)
        {
          goto LABEL_12;
        }
      }

      else
      {
        [(NSMutableIndexSet *)self->_available removeIndex:unsignedIntegerValue];
      }

      v9 = [NSNumber numberWithUnsignedInteger:unsignedIntegerValue];
      [(NSMutableDictionary *)self->_identifierToIndex setObject:v9 forKeyedSubscript:identifierCopy];

      indexToIdentifier = self->_indexToIdentifier;
      v11 = [NSNumber numberWithUnsignedInteger:unsignedIntegerValue];
      [(NSMutableDictionary *)indexToIdentifier setObject:identifierCopy forKeyedSubscript:v11];
    }

    [(_TUIRenderModelIdentifierMap *)self _collectIndex:unsignedIntegerValue];
    v8 = unsignedIntegerValue;
  }

  else
  {
    v8 = 0x7FFFFFFFFFFFFFFFLL;
  }

LABEL_12:

  return v8;
}

- (unint64_t)allocateNewIndex
{
  result = self->_nextUnassigned;
  if (result > 0x7FFFFFFFFFFFFFFELL)
  {
    return 0x7FFFFFFFFFFFFFFFLL;
  }

  self->_nextUnassigned = result + 1;
  return result;
}

- (_NSRange)allocateNewRangeWithLength:(unint64_t)length
{
  nextUnassigned = self->_nextUnassigned;
  if ((nextUnassigned + length) < 0)
  {
    lengthCopy = 0;
    nextUnassigned = 0x7FFFFFFFFFFFFFFFLL;
  }

  else
  {
    lengthCopy = length;
    self->_nextUnassigned = nextUnassigned + length;
  }

  result.length = lengthCopy;
  result.location = nextUnassigned;
  return result;
}

- (id).cxx_construct
{
  *(self + 4) = 0;
  *(self + 3) = self + 32;
  *(self + 8) = 0;
  *(self + 7) = 0;
  *(self + 5) = 0;
  *(self + 6) = self + 56;
  return self;
}

@end