@interface _LSApplicationRecordsWithinDirectoryEnumerator
- (BOOL)_getObject:(id *)a3 atIndex:(unint64_t)a4 context:(LSContext *)a5;
- (BOOL)_prepareWithContext:(LSContext *)a3 error:(id *)a4;
- (_LSApplicationRecordsWithinDirectoryEnumerator)initWithContext:(LSContext *)a3 directoryURL:(id)a4 volumeURL:(id)a5 enumerationOptions:(unint64_t)a6 filteringOptions:(unint64_t)a7;
- (id).cxx_construct;
@end

@implementation _LSApplicationRecordsWithinDirectoryEnumerator

- (_LSApplicationRecordsWithinDirectoryEnumerator)initWithContext:(LSContext *)a3 directoryURL:(id)a4 volumeURL:(id)a5 enumerationOptions:(unint64_t)a6 filteringOptions:(unint64_t)a7
{
  v16.receiver = self;
  v16.super_class = _LSApplicationRecordsWithinDirectoryEnumerator;
  v11 = [(_LSDBEnumerator *)&v16 _initWithContext:a3];
  v12 = v11;
  if (v11)
  {
    v17 = a5;
    std::__variant_detail::__assignment<std::__variant_detail::__traits<unsigned int,NSURL * {__strong},NSError * {__strong}>>::__assign_alt[abi:nn200100]<1ul,NSURL * {__strong},NSURL * const {__strong}&>((v11 + 11), v11 + 11, &v17);
    v13 = [a4 copy];
    directoryURL = v12->_directoryURL;
    v12->_directoryURL = v13;

    v12->_enumerationOptions = a6;
    v12->_filteringOptions = a7;
  }

  return v12;
}

- (BOOL)_prepareWithContext:(LSContext *)a3 error:(id *)a4
{
  self->_bundleIdentifiersOrUnits.__end_ = self->_bundleIdentifiersOrUnits.__begin_;
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
    v10 = ~LODWORD(self->_enumerationOptions) & 0xD0;
    [(_LSDatabase *)a3->db store];
    v11 = [(_LSDatabase *)a3->db schema];
    if (v10)
    {
      _CSStringBindingEnumerateAllBindings();
    }

    else
    {
      v12 = *(v11 + 4);
      _CSStoreEnumerateUnits();
    }

    v13 = [[FSNode alloc] initWithURL:self->_directoryURL flags:34 error:a4];
    v14 = v13;
    if (v13)
    {
      v15 = [(FSNode *)v13 URL];
      v16 = [v15 copy];
      directoryURL = self->_directoryURL;
      self->_directoryURL = v16;
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
    v11 = ~LODWORD(self->_enumerationOptions);
    v12 = begin[a4];
    db = a5->db;
    if ((v11 & 0xD0) == 0)
    {
      v14 = _LSBundleGet(db, begin[a4]);
      if (!v14)
      {
LABEL_15:
        v17 = 0;
LABEL_21:
        v24 = *a3;
        *a3 = v17;

        return v7 > a4;
      }

      if (!self->_volumeContainerAdapter.volumeURLOrContainerOrError.__impl_.__index)
      {
        v16 = v14;
        if (LaunchServices::AppRecordEnumeration::evaluateBundleNoIOCommon(v12, v14, self->_enumerationOptions, v15) && [(_LSApplicationRecordsWithinDirectoryEnumerator *)self _preflightPathOfBundleWithContext:a5 bundleUnit:v12 bundleData:v16])
        {
          [(_LSApplicationRecordsWithinDirectoryEnumerator *)self _createPostflightedApplicationRecordWithContext:a5 bundleUnit:v12 bundleData:v16];
          if (v31 == 1)
          {
            v17 = v30;
          }

          else
          {
            _LSEnumeratorFireErrorHandler(self, v30);
            v17 = 0;
          }

          goto LABEL_21;
        }

        goto LABEL_15;
      }

LABEL_25:
      v26 = std::__throw_bad_variant_access[abi:nn200100]();

      _Unwind_Resume(v26);
    }

    [(_LSDatabase *)db store];
    v18 = _CSStringCopyCFString();
    if (v18)
    {
      v29 = 0;
      v27[4] = self;
      v28 = 0;
      v27[0] = MEMORY[0x1E69E9820];
      v27[1] = 3221225472;
      v27[2] = __77___LSApplicationRecordsWithinDirectoryEnumerator__getObject_atIndex_context___block_invoke;
      v27[3] = &unk_1E6A18FF0;
      v19 = MEMORY[0x1865D71B0](v27);
      if (self->_volumeContainerAdapter.volumeURLOrContainerOrError.__impl_.__index)
      {
        goto LABEL_25;
      }

      v20 = v19;
      enumerationOptions = self->_enumerationOptions;
      v22 = objc_opt_class();
      v23 = NSStringFromClass(v22);
      LaunchServices::AppRecordEnumeration::findAppByIdentifierForEnumerator(a5, v18, 2, enumerationOptions, v23, v20, &v29, &v28);

      v17 = 0;
      if (v29 && v28)
      {
        [_LSApplicationRecordsWithinDirectoryEnumerator _createPostflightedApplicationRecordWithContext:"_createPostflightedApplicationRecordWithContext:bundleUnit:bundleData:" bundleUnit:a5 bundleData:?];
        if (v31 == 1)
        {
          v17 = v30;
        }

        else
        {
          _LSEnumeratorFireErrorHandler(self, v30);
          v17 = 0;
        }
      }
    }

    else
    {
      v17 = 0;
    }

    goto LABEL_21;
  }

  return v7 > a4;
}

- (id).cxx_construct
{
  *(self + 11) = 0;
  *(self + 24) = 1;
  *(self + 15) = 0;
  *(self + 16) = 0;
  *(self + 14) = 0;
  return self;
}

@end