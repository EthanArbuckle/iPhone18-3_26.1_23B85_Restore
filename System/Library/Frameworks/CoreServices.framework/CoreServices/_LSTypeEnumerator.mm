@interface _LSTypeEnumerator
- (BOOL)_getObject:(id *)object atIndex:(unint64_t)index context:(LSContext *)context;
- (BOOL)_prepareWithContext:(LSContext *)context error:(id *)error;
- (id).cxx_construct;
- (id)copyWithZone:(_NSZone *)zone;
@end

@implementation _LSTypeEnumerator

- (BOOL)_prepareWithContext:(LSContext *)context error:(id *)error
{
  v6 = objc_autoreleasePoolPush();
  db = context->db;
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __47___LSTypeEnumerator__prepareWithContext_error___block_invoke;
  v9[3] = &unk_1E6A1E550;
  v9[4] = self;
  _UTEnumerateActiveTypes(db, v9);
  objc_autoreleasePoolPop(v6);
  return 1;
}

- (BOOL)_getObject:(id *)object atIndex:(unint64_t)index context:(LSContext *)context
{
  begin = self->_typeIDs.__begin_;
  v7 = self->_typeIDs.__end_ - begin;
  if (v7 > index)
  {
    v10 = begin[index];
    if (_UTTypeGet(context->db))
    {
      v11 = [(LSRecord *)[_UTDeclaredTypeRecord alloc] _initWithContext:context tableID:*([(_LSDatabase *)context->db schema]+ 16) unitID:v10];
      v12 = *object;
      *object = v11;
    }
  }

  return v7 > index;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v8.receiver = self;
  v8.super_class = _LSTypeEnumerator;
  v4 = [(_LSDBEnumerator *)&v8 copyWithZone:zone];
  v5 = v4;
  if (v4)
  {
    v6 = v4 == self;
  }

  else
  {
    v6 = 1;
  }

  if (!v6)
  {
    std::vector<unsigned int>::__assign_with_size[abi:nn200100]<unsigned int *,unsigned int *>(&v4->_typeIDs.__begin_, self->_typeIDs.__begin_, self->_typeIDs.__end_, self->_typeIDs.__end_ - self->_typeIDs.__begin_);
  }

  return v5;
}

- (id).cxx_construct
{
  *(self + 12) = 0;
  *(self + 13) = 0;
  *(self + 11) = 0;
  return self;
}

@end