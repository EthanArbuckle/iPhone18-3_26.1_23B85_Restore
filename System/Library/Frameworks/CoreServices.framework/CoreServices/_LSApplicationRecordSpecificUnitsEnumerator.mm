@interface _LSApplicationRecordSpecificUnitsEnumerator
- (BOOL)_getObject:(id *)a3 atIndex:(unint64_t)a4 context:(LSContext *)a5;
- (_LSApplicationRecordSpecificUnitsEnumerator)initWithContext:(LSContext *)a3 options:(unint64_t)a4 unitIDs:(const unsigned int *)a5 unitCount:(unint64_t)a6;
- (id).cxx_construct;
@end

@implementation _LSApplicationRecordSpecificUnitsEnumerator

- (_LSApplicationRecordSpecificUnitsEnumerator)initWithContext:(LSContext *)a3 options:(unint64_t)a4 unitIDs:(const unsigned int *)a5 unitCount:(unint64_t)a6
{
  v12.receiver = self;
  v12.super_class = _LSApplicationRecordSpecificUnitsEnumerator;
  v9 = [(_LSDBEnumerator *)&v12 _initWithContext:a3];
  if (v9)
  {
    if (a6)
    {
      v10 = 4 * a6;
      do
      {
        std::vector<unsigned int>::push_back[abi:nn200100](&v9->_unitIDs.__begin_, a5++);
        v10 -= 4;
      }

      while (v10);
    }

    v9->_options = a4;
  }

  return v9;
}

- (BOOL)_getObject:(id *)a3 atIndex:(unint64_t)a4 context:(LSContext *)a5
{
  begin = self->_unitIDs.__begin_;
  v7 = self->_unitIDs.__end_ - begin;
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

@end