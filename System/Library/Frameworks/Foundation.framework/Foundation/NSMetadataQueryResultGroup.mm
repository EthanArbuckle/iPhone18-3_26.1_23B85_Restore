@interface NSMetadataQueryResultGroup
- (NSArray)results;
- (id)_init:(id)_init attributes:(id)attributes index:(unint64_t)index value:(id)value;
- (id)resultAtIndex:(NSUInteger)idx;
- (id)value;
- (void)_addResult:(unint64_t)result;
- (void)dealloc;
@end

@implementation NSMetadataQueryResultGroup

- (id)_init:(id)_init attributes:(id)attributes index:(unint64_t)index value:(id)value
{
  v13 = *MEMORY[0x1E69E9840];
  v12.receiver = self;
  v12.super_class = NSMetadataQueryResultGroup;
  v10 = [(NSMetadataQueryResultGroup *)&v12 init];
  v10->_private[0] = _init;
  v10->_private[1] = attributes;
  v10->_private2[0] = index;
  v10->_private[2] = value;
  v10->_private[3] = 0;
  v10->_private[4] = objc_alloc_init(NSMutableIndexSet);
  v10->_private[5] = 0;
  return v10;
}

- (void)dealloc
{
  v4 = *MEMORY[0x1E69E9840];

  self->_private[5] = 0;
  v3.receiver = self;
  v3.super_class = NSMetadataQueryResultGroup;
  [(NSMetadataQueryResultGroup *)&v3 dealloc];
}

- (void)_addResult:(unint64_t)result
{
  [self->_private[4] addIndex:?];
  v5 = self->_private2[0] + 1;
  if (v5 < [self->_private[1] count])
  {
    null = [self->_private[0] valueOfAttribute:objc_msgSend(self->_private[1] forResultAtIndex:{"objectAtIndex:", self->_private2[0] + 1), result}];
    if (!null)
    {
      null = [MEMORY[0x1E695DFB0] null];
    }

    v7 = [self->_private[3] objectForKey:null];
    if (!v7)
    {
      v7 = [[NSMetadataQueryResultGroup alloc] _init:self->_private[0] attributes:self->_private[1] index:self->_private2[0] + 1 value:null];
      v8 = self->_private[3];
      if (!v8)
      {
        v8 = objc_alloc_init(MEMORY[0x1E695DF90]);
        self->_private[3] = v8;
      }

      [v8 setObject:v7 forKey:null];
    }

    [v7 _addResult:result];
  }
}

- (id)value
{
  v2 = self->_private[2];

  return v2;
}

- (id)resultAtIndex:(NSUInteger)idx
{
  if ([self->_private[4] count] <= idx)
  {
    v9 = [MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695D940] reason:+[NSString stringWithFormat:](NSString userInfo:{"stringWithFormat:", @"%@: index (%ld) out of bounds (%ld)", _NSMethodExceptionProem(self, a2), idx, -[NSMetadataQueryResultGroup resultCount](self, "resultCount")), 0}];
    objc_exception_throw(v9);
  }

  v6 = self->_private[0];
  v7 = [self->_private[4] _indexAtIndex:idx];

  return [v6 resultAtIndex:v7];
}

- (NSArray)results
{
  result = self->_private[5];
  if (!result)
  {
    [self->_private[0] disableUpdates];
    v4 = [_NSMetadataQueryResultGroupArray alloc];
    if (v4)
    {
      v4->_group = self;
    }

    result = v4;
    self->_private[5] = result;
  }

  return result;
}

@end