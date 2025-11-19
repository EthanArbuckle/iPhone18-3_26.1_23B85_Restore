@interface _NSMetadataQueryResultGroupArray
- (id)objectAtIndex:(unint64_t)a3;
- (void)dealloc;
@end

@implementation _NSMetadataQueryResultGroupArray

- (void)dealloc
{
  v4 = *MEMORY[0x1E69E9840];
  [self->_group _zapResultArray];

  v3.receiver = self;
  v3.super_class = _NSMetadataQueryResultGroupArray;
  [(_NSMetadataQueryResultGroupArray *)&v3 dealloc];
}

- (id)objectAtIndex:(unint64_t)a3
{
  if ([self->_group resultCount] <= a3)
  {
    v8 = [MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695D940] reason:+[NSString stringWithFormat:](NSString userInfo:{"stringWithFormat:", @"%@: index (%ld) out of bounds (%ld)", _NSMethodExceptionProem(self, a2), a3, objc_msgSend(self->_group, "resultCount")), 0}];
    objc_exception_throw(v8);
  }

  group = self->_group;

  return [group resultAtIndex:a3];
}

@end