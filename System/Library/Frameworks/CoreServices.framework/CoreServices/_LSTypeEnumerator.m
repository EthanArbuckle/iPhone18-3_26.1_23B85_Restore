@interface _LSTypeEnumerator
- (BOOL)_getObject:(id *)a3 atIndex:(unint64_t)a4 context:(LSContext *)a5;
- (BOOL)_prepareWithContext:(LSContext *)a3 error:(id *)a4;
- (id).cxx_construct;
- (id)copyWithZone:(_NSZone *)a3;
@end

@implementation _LSTypeEnumerator

- (BOOL)_prepareWithContext:(LSContext *)a3 error:(id *)a4
{
  v6 = objc_autoreleasePoolPush();
  db = a3->db;
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __47___LSTypeEnumerator__prepareWithContext_error___block_invoke;
  v9[3] = &unk_1E6A1E550;
  v9[4] = self;
  _UTEnumerateActiveTypes(db, v9);
  objc_autoreleasePoolPop(v6);
  return 1;
}

- (BOOL)_getObject:(id *)a3 atIndex:(unint64_t)a4 context:(LSContext *)a5
{
  begin = self->_typeIDs.__begin_;
  v7 = self->_typeIDs.__end_ - begin;
  if (v7 > a4)
  {
    v10 = begin[a4];
    if (_UTTypeGet(a5->db))
    {
      v11 = [(LSRecord *)[_UTDeclaredTypeRecord alloc] _initWithContext:a5 tableID:*([(_LSDatabase *)a5->db schema]+ 16) unitID:v10];
      v12 = *a3;
      *a3 = v11;
    }
  }

  return v7 > a4;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v8.receiver = self;
  v8.super_class = _LSTypeEnumerator;
  v4 = [(_LSDBEnumerator *)&v8 copyWithZone:a3];
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