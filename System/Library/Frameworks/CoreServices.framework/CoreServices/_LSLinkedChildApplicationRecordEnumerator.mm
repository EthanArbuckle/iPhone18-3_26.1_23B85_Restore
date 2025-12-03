@interface _LSLinkedChildApplicationRecordEnumerator
- (BOOL)_getObject:(id *)object atIndex:(unint64_t)index context:(LSContext *)context;
- (BOOL)_prepareWithContext:(LSContext *)context error:(id *)error;
- (_LSLinkedChildApplicationRecordEnumerator)initWithContext:(LSContext *)context parentBundleID:(id)d options:(unint64_t)options;
- (id).cxx_construct;
- (id)copyWithZone:(_NSZone *)zone;
@end

@implementation _LSLinkedChildApplicationRecordEnumerator

- (_LSLinkedChildApplicationRecordEnumerator)initWithContext:(LSContext *)context parentBundleID:(id)d options:(unint64_t)options
{
  v11.receiver = self;
  v11.super_class = _LSLinkedChildApplicationRecordEnumerator;
  v7 = [(_LSDBEnumerator *)&v11 _initWithContext:context];
  if (v7)
  {
    v8 = [d copy];
    parentBundleID = v7->_parentBundleID;
    v7->_parentBundleID = v8;

    v7->_options = options;
  }

  return v7;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v10.receiver = self;
  v10.super_class = _LSLinkedChildApplicationRecordEnumerator;
  v5 = [(_LSDBEnumerator *)&v10 copyWithZone:?];
  v6 = v5;
  if (v5 != self)
  {
    std::vector<unsigned int>::__assign_with_size[abi:nn200100]<unsigned int *,unsigned int *>(&v5->_units.__begin_, self->_units.__begin_, self->_units.__end_, self->_units.__end_ - self->_units.__begin_);
  }

  v7 = [(NSString *)self->_parentBundleID copyWithZone:zone];
  parentBundleID = v6->_parentBundleID;
  v6->_parentBundleID = v7;

  v6->_options = self->_options;
  return v6;
}

- (BOOL)_prepareWithContext:(LSContext *)context error:(id *)error
{
  self->_units.__end_ = self->_units.__begin_;
  if (_LSDatabaseGetStringForCFString(context->db, self->_parentBundleID, 0))
  {
    _LSDatabaseEnumeratingBindingMap(context->db);
  }

  return 1;
}

- (BOOL)_getObject:(id *)object atIndex:(unint64_t)index context:(LSContext *)context
{
  begin = self->_units.__begin_;
  v7 = self->_units.__end_ - begin;
  if (v7 > index)
  {
    v11 = begin[index];
    v12 = _LSBundleGet(context->db, begin[index]);
    if (v12 && (v14 = v12, LaunchServices::AppRecordEnumeration::evaluateBundleNoIOCommon(v11, v12, self->_options, v13)))
    {
      v21 = 0;
      v15 = [[LSApplicationRecord alloc] _initWithContext:context bundleID:v11 bundleData:v14 error:&v21];
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

      v18 = *object;
      *object = v15;
    }

    else
    {
      v19 = *object;
      *object = 0;
    }
  }

  return v7 > index;
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