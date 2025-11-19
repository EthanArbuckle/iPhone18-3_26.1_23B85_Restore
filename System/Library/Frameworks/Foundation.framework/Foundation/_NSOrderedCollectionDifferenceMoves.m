@interface _NSOrderedCollectionDifferenceMoves
- (BOOL)isEqual:(id)a3;
- (unint64_t)hash;
- (void)dealloc;
@end

@implementation _NSOrderedCollectionDifferenceMoves

- (unint64_t)hash
{
  result = [(NSMutableDictionary *)self->_removeDict count];
  if (result)
  {
    v4 = [(NSMutableDictionary *)self->_removeDict objectForKeyedSubscript:[NSNumber numberWithUnsignedInteger:self->_firstRemove]];

    return [v4 hash];
  }

  return result;
}

- (BOOL)isEqual:(id)a3
{
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    return 0;
  }

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0 || ![(NSMutableDictionary *)self->_removeDict isEqual:*(a3 + 1)])
  {
    return 0;
  }

  insertDict = self->_insertDict;
  v6 = *(a3 + 2);

  return [(NSMutableDictionary *)insertDict isEqual:v6];
}

- (void)dealloc
{
  v4 = *MEMORY[0x1E69E9840];

  v3.receiver = self;
  v3.super_class = _NSOrderedCollectionDifferenceMoves;
  [(_NSOrderedCollectionDifferenceMoves *)&v3 dealloc];
}

@end