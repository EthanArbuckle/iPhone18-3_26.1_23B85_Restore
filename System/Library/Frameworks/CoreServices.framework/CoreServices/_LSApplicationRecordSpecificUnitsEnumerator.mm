@interface _LSApplicationRecordSpecificUnitsEnumerator
- (BOOL)_getObject:(id *)object atIndex:(unint64_t)index context:(LSContext *)context;
- (_LSApplicationRecordSpecificUnitsEnumerator)initWithContext:(LSContext *)context options:(unint64_t)options unitIDs:(const unsigned int *)ds unitCount:(unint64_t)count;
- (id).cxx_construct;
@end

@implementation _LSApplicationRecordSpecificUnitsEnumerator

- (_LSApplicationRecordSpecificUnitsEnumerator)initWithContext:(LSContext *)context options:(unint64_t)options unitIDs:(const unsigned int *)ds unitCount:(unint64_t)count
{
  v12.receiver = self;
  v12.super_class = _LSApplicationRecordSpecificUnitsEnumerator;
  v9 = [(_LSDBEnumerator *)&v12 _initWithContext:context];
  if (v9)
  {
    if (count)
    {
      v10 = 4 * count;
      do
      {
        std::vector<unsigned int>::push_back[abi:nn200100](&v9->_unitIDs.__begin_, ds++);
        v10 -= 4;
      }

      while (v10);
    }

    v9->_options = options;
  }

  return v9;
}

- (BOOL)_getObject:(id *)object atIndex:(unint64_t)index context:(LSContext *)context
{
  begin = self->_unitIDs.__begin_;
  v7 = self->_unitIDs.__end_ - begin;
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

@end