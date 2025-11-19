@interface _LSLinkedChildApplicationRecordEnumerator
- (BOOL)_getObject:(id *)a3 atIndex:(unint64_t)a4 context:(LSContext *)a5;
- (BOOL)_prepareWithContext:(LSContext *)a3 error:(id *)a4;
- (_LSLinkedChildApplicationRecordEnumerator)initWithContext:(LSContext *)a3 parentBundleID:(id)a4 options:(unint64_t)a5;
- (id).cxx_construct;
- (id)copyWithZone:(_NSZone *)a3;
@end

@implementation _LSLinkedChildApplicationRecordEnumerator

- (_LSLinkedChildApplicationRecordEnumerator)initWithContext:(LSContext *)a3 parentBundleID:(id)a4 options:(unint64_t)a5
{
  v11.receiver = self;
  v11.super_class = _LSLinkedChildApplicationRecordEnumerator;
  v7 = [(_LSDBEnumerator *)&v11 _initWithContext:a3];
  if (v7)
  {
    v8 = [a4 copy];
    parentBundleID = v7->_parentBundleID;
    v7->_parentBundleID = v8;

    v7->_options = a5;
  }

  return v7;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v10.receiver = self;
  v10.super_class = _LSLinkedChildApplicationRecordEnumerator;
  v5 = [(_LSDBEnumerator *)&v10 copyWithZone:?];
  v6 = v5;
  if (v5 != self)
  {
    std::vector<unsigned int>::__assign_with_size[abi:nn200100]<unsigned int *,unsigned int *>(&v5->_units.__begin_, self->_units.__begin_, self->_units.__end_, self->_units.__end_ - self->_units.__begin_);
  }

  v7 = [(NSString *)self->_parentBundleID copyWithZone:a3];
  parentBundleID = v6->_parentBundleID;
  v6->_parentBundleID = v7;

  v6->_options = self->_options;
  return v6;
}

- (BOOL)_prepareWithContext:(LSContext *)a3 error:(id *)a4
{
  self->_units.__end_ = self->_units.__begin_;
  if (_LSDatabaseGetStringForCFString(a3->db, self->_parentBundleID, 0))
  {
    _LSDatabaseEnumeratingBindingMap(a3->db);
  }

  return 1;
}

- (BOOL)_getObject:(id *)a3 atIndex:(unint64_t)a4 context:(LSContext *)a5
{
  begin = self->_units.__begin_;
  v7 = self->_units.__end_ - begin;
  if (v7 > a4)
  {
    v11 = begin[a4];
    v12 = _LSBundleGet(a5->db, begin[a4]);
    if (v12 && (v14 = v12, LaunchServices::AppRecordEnumeration::evaluateBundleNoIOCommon(v11, v12, self->_options, v13)))
    {
      v21 = 0;
      v15 = [[LSApplicationRecord alloc] _initWithContext:a5 bundleID:v11 bundleData:v14 error:&v21];
      v16 = v21;
      if (!v15)
      {
        v17 = _LSDefaultLog();
        if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
        {
          [_LSLinkedChildApplicationRecordEnumerator _getObject:atIndex:context:];
        }

        _LSEnumeratorFireErrorHandler(self, v16);
      }

      v18 = *a3;
      *a3 = v15;
    }

    else
    {
      v19 = *a3;
      *a3 = 0;
    }
  }

  return v7 > a4;
}

- (id).cxx_construct
{
  *(self + 12) = 0;
  *(self + 13) = 0;
  *(self + 11) = 0;
  return self;
}

- (void)_getObject:atIndex:context:.cold.1()
{
  v3 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_0_2();
  OUTLINED_FUNCTION_1_0(&dword_18162D000, v0, v1, "could not create child record for unit %llx: %@");
  v2 = *MEMORY[0x1E69E9840];
}

@end