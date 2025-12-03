@interface _NSMetadataQueryResultArray
- (id)objectAtIndex:(unint64_t)index;
- (void)dealloc;
- (void)release;
@end

@implementation _NSMetadataQueryResultArray

- (void)dealloc
{
  v4 = *MEMORY[0x1E69E9840];

  v3.receiver = self;
  v3.super_class = _NSMetadataQueryResultArray;
  [(_NSMetadataQueryResultArray *)&v3 dealloc];
}

- (void)release
{
  query = self->_query;
  objc_sync_enter(query);
  if (atomic_fetch_add_explicit(&self->_rc, 0xFFFFFFFF, memory_order_relaxed) <= 0)
  {
    [self->_query _zapResultArrayIfIdenticalTo:self];
    objc_sync_exit(query);

    [(_NSMetadataQueryResultArray *)self dealloc];
  }

  else
  {

    objc_sync_exit(query);
  }
}

- (id)objectAtIndex:(unint64_t)index
{
  if ([self->_query resultCount] <= index)
  {
    v8 = [MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695D940] reason:+[NSString stringWithFormat:](NSString userInfo:{"stringWithFormat:", @"%@: index (%ld) out of bounds (%ld)", _NSMethodExceptionProem(self, a2), index, objc_msgSend(self->_query, "resultCount")), 0}];
    objc_exception_throw(v8);
  }

  query = self->_query;

  return [query resultAtIndex:index];
}

@end