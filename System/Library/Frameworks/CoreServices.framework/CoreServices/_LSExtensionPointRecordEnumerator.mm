@interface _LSExtensionPointRecordEnumerator
- (BOOL)_getObject:(id *)object atIndex:(unint64_t)index context:(LSContext *)context;
- (BOOL)_prepareWithContext:(LSContext *)context error:(id *)error;
- (_LSExtensionPointRecordEnumerator)initWithExtensionPointIdentifier:(id)identifier;
- (id).cxx_construct;
- (id)copyWithZone:(_NSZone *)zone;
@end

@implementation _LSExtensionPointRecordEnumerator

- (id).cxx_construct
{
  *(self + 13) = 0;
  *(self + 14) = 0;
  *(self + 12) = 0;
  return self;
}

- (_LSExtensionPointRecordEnumerator)initWithExtensionPointIdentifier:(id)identifier
{
  v8.receiver = self;
  v8.super_class = _LSExtensionPointRecordEnumerator;
  v4 = [(_LSDBEnumerator *)&v8 _initWithContext:0];
  v5 = [identifier copy];
  extensionPointID = v4->_extensionPointID;
  v4->_extensionPointID = v5;

  return v4;
}

- (BOOL)_prepareWithContext:(LSContext *)context error:(id *)error
{
  v6 = [(_LSExtensionPointRecordEnumerator *)self parentApplicationRecord:context];
  unitID = [v6 unitID];

  StringForCFString = _LSDatabaseGetStringForCFString(context->db, self->_extensionPointID, 0);
  db = context->db;
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __63___LSExtensionPointRecordEnumerator__prepareWithContext_error___block_invoke;
  v12[3] = &unk_1E6A1CD38;
  v12[4] = self;
  v13 = unitID;
  v14 = StringForCFString;
  _LSEnumerateExtensionPoints(db, v12);
  v10 = _LSEnumeratorLog;
  if (os_log_type_enabled(_LSEnumeratorLog, OS_LOG_TYPE_DEBUG))
  {
    [_LSExtensionPointRecordEnumerator _prepareWithContext:v10 error:?];
  }

  return 1;
}

- (BOOL)_getObject:(id *)object atIndex:(unint64_t)index context:(LSContext *)context
{
  begin = self->_extensionIDs.__begin_;
  v7 = self->_extensionIDs.__end_ - begin;
  if (v7 > index)
  {
    v8 = begin[index];
    if (v8)
    {
      if (_LSGetExtensionPointData(context->db, begin[index]))
      {
        v11 = [(LSRecord *)[LSExtensionPointRecord alloc] _initWithContext:context tableID:*([(_LSDatabase *)context->db schema]+ 1592) unitID:v8];
        v12 = *object;
        *object = v11;
      }
    }
  }

  return v7 > index;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v8.receiver = self;
  v8.super_class = _LSExtensionPointRecordEnumerator;
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
    std::vector<unsigned int>::__assign_with_size[abi:nn200100]<unsigned int *,unsigned int *>(&v4->_extensionIDs.__begin_, self->_extensionIDs.__begin_, self->_extensionIDs.__end_, self->_extensionIDs.__end_ - self->_extensionIDs.__begin_);
  }

  return v5;
}

- (void)_prepareWithContext:(uint64_t)a1 error:(NSObject *)a2 .cold.1(uint64_t a1, NSObject *a2)
{
  v6 = *MEMORY[0x1E69E9840];
  v2 = (*(a1 + 104) - *(a1 + 96)) >> 2;
  v4 = 134217984;
  v5 = v2;
  _os_log_debug_impl(&dword_18162D000, a2, OS_LOG_TYPE_DEBUG, "Will enumerate %llu EPs", &v4, 0xCu);
  v3 = *MEMORY[0x1E69E9840];
}

@end