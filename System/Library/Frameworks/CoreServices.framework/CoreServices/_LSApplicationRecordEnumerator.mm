@interface _LSApplicationRecordEnumerator
- (BOOL)_getObject:(id *)a3 atIndex:(unint64_t)a4 context:(LSContext *)a5;
- (BOOL)_prepareWithContext:(LSContext *)a3 error:(id *)a4;
- (_LSApplicationRecordEnumerator)initWithContext:(LSContext *)a3 volumeURL:(id)a4 options:(unint64_t)a5;
- (id).cxx_construct;
- (id)copyWithZone:(_NSZone *)a3;
@end

@implementation _LSApplicationRecordEnumerator

- (id).cxx_construct
{
  *(self + 11) = 0;
  *(self + 24) = 1;
  *(self + 15) = 0;
  *(self + 16) = 0;
  *(self + 14) = 0;
  return self;
}

- (_LSApplicationRecordEnumerator)initWithContext:(LSContext *)a3 volumeURL:(id)a4 options:(unint64_t)a5
{
  v10.receiver = self;
  v10.super_class = _LSApplicationRecordEnumerator;
  v7 = [(_LSDBEnumerator *)&v10 _initWithContext:a3];
  v8 = v7;
  if (v7)
  {
    v7->_options = a5;
    v11 = a4;
    std::__variant_detail::__assignment<std::__variant_detail::__traits<unsigned int,NSURL * {__strong},NSError * {__strong}>>::__assign_alt[abi:nn200100]<1ul,NSURL * {__strong},NSURL * const {__strong}&>(&v7->_volumeContainerAdapter, &v7->_volumeContainerAdapter, &v11);
    v8->_bundleClass = 2;
  }

  return v8;
}

- (BOOL)_prepareWithContext:(LSContext *)a3 error:(id *)a4
{
  v7 = LaunchServices::AppRecordEnumeration::VolumeContainerResolutionAdapter::resolve(&self->_volumeContainerAdapter, a3);
  v8 = v7;
  if (v7)
  {
    if (a4)
    {
      v9 = v7;
      *a4 = v8;
    }
  }

  else
  {
    v10 = [(_LSApplicationRecordEnumerator *)self _enumerateAllBundles];
    [(_LSDatabase *)a3->db store];
    v11 = [(_LSDatabase *)a3->db schema];
    if (v10)
    {
      v12 = *(v11 + 4);
      _CSStoreEnumerateUnits();
    }

    else
    {
      _CSStringBindingEnumerateAllBindings();
    }

    v13 = _LSEnumeratorLog;
    if (os_log_type_enabled(_LSEnumeratorLog, OS_LOG_TYPE_DEBUG))
    {
      [(_LSApplicationRecordEnumerator *)self _prepareWithContext:v13 error:v14, v15, v16, v17, v18, v19];
    }
  }

  return v8 == 0;
}

- (BOOL)_getObject:(id *)a3 atIndex:(unint64_t)a4 context:(LSContext *)a5
{
  begin = self->_bundleIdentifiersOrUnits.__begin_;
  v7 = self->_bundleIdentifiersOrUnits.__end_ - begin;
  if (v7 > a4)
  {
    v9 = [(_LSApplicationRecordEnumerator *)self _applicationRecordWithContext:a5 bundleIdentifierOrUnit:begin[a4]];
    v10 = *a3;
    *a3 = v9;
  }

  return v7 > a4;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v7.receiver = self;
  v7.super_class = _LSApplicationRecordEnumerator;
  v4 = [(_LSDBEnumerator *)&v7 copyWithZone:a3];
  v5 = v4;
  if (v4)
  {
    std::__variant_detail::__assignment<std::__variant_detail::__traits<unsigned int,NSURL * {__strong},NSError * {__strong}>>::__generic_assign[abi:nn200100]<std::__variant_detail::__copy_assignment<std::__variant_detail::__traits<unsigned int,NSURL * {__strong},NSError * {__strong}>,(std::__variant_detail::_Trait)1> const&>(&v4->_volumeContainerAdapter, &self->_volumeContainerAdapter);
    v5->_options = self->_options;
    if (v5 != self)
    {
      std::vector<unsigned int>::__assign_with_size[abi:nn200100]<unsigned int *,unsigned int *>(&v5->_bundleIdentifiersOrUnits.__begin_, self->_bundleIdentifiersOrUnits.__begin_, self->_bundleIdentifiersOrUnits.__end_, self->_bundleIdentifiersOrUnits.__end_ - self->_bundleIdentifiersOrUnits.__begin_);
    }

    v5->_bundleClass = self->_bundleClass;
  }

  return v5;
}

- (void)_prepareWithContext:(uint64_t)a3 error:(uint64_t)a4 .cold.1(uint64_t a1, NSObject *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v10 = *MEMORY[0x1E69E9840];
  v9 = ((*(a1 + 120) - *(a1 + 112)) >> 2) >> 32;
  OUTLINED_FUNCTION_1(&dword_18162D000, a2, a3, "Will enumerate %llu candidate bundle identifiers/units", a5, a6, a7, a8, 0);
  v8 = *MEMORY[0x1E69E9840];
}

@end