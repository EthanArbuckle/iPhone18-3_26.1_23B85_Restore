@interface _MTLBinaryArchive
+ (BOOL)deserializeBinaryArchiveDescriptorMachO:(DeserializedBinaryArchiveLayout *)a3 fileData:(id)a4;
+ (BOOL)deserializeBinaryArchiveHeader:(DeserializedBinaryArchiveLayout *)a3 fileData:(id)a4 device:(id)a5;
+ (id)descriptorDataForArchive:(id)a3;
+ (unsigned)archiveTypeAtURL:(id)a3 device:(id)a4 error:(id *)a5;
+ (unsigned)archiveVersionCompatible:(MachOToolsVersion *)a3 isMatchingSlice:(BOOL)a4 device:(id)a5;
+ (void)deserializeBinaryArchiveHeader:(void *)a1 fileData:(unint64_t *)a2 device:;
- ($2772B1D07D29A72E8557B2574C0AE5C1)reflectionHashWithFunctionId:(SEL)a3 binaryPos:(const void *)a4;
- (BOOL)addComputePipelineFunctionsWithDescriptor:(id)a3 error:(id *)a4;
- (BOOL)addComputePipelineFunctionsWithDescriptor:(id)a3 options:(unint64_t)a4 error:(id *)a5;
- (BOOL)addFunctionWithDescriptor:(id)a3 library:(id)a4 error:(id *)a5;
- (BOOL)addLibraryWithDescriptor:(id)a3 error:(id *)a4;
- (BOOL)addMeshRenderPipelineFunctionsWithDescriptor:(id)a3 error:(id *)a4;
- (BOOL)addMeshRenderPipelineFunctionsWithDescriptor:(id)a3 options:(unint64_t)a4 error:(id *)a5;
- (BOOL)addRenderPipelineFunctionsWithDescriptor:(id)a3 error:(id *)a4;
- (BOOL)addRenderPipelineFunctionsWithDescriptor:(id)a3 options:(unint64_t)a4 error:(id *)a5;
- (BOOL)addTileRenderPipelineFunctionsWithDescriptor:(id)a3 error:(id *)a4;
- (BOOL)addTileRenderPipelineFunctionsWithDescriptor:(id)a3 options:(unint64_t)a4 error:(id *)a5;
- (BOOL)airntSerializeToURL:(id)a3 options:(unint64_t)a4 error:(id *)a5;
- (BOOL)archiveSkipsAIRValidation;
- (BOOL)enumerateArchivesFromBackingFileFromSlice:(const MTLLoaderSliceIdentifier *)a3 version:(unint64_t)a4 verifyKey:(id *)a5 offset:(unint64_t)a6 bytes:(unint64_t)a7 enumerator:(id)a8;
- (BOOL)enumerateArchivesFromPipelineCollection:(id)a3;
- (BOOL)getScriptsWithAIRNTObject:(void *)a3;
- (BOOL)getSpecializedFunctionArchivesToSerialize:(void *)a3;
- (BOOL)legacySerializeToURL:(id)a3 options:(unint64_t)a4 error:(id *)a5;
- (BOOL)loadAirSliceAtOffset:(unint64_t)a3 sliceLength:(unint64_t)a4;
- (BOOL)loadAirntBlocksForSlice:(const MTLLoaderSliceIdentifier *)a3 sliceOffset:(unint64_t)a4 skipAIRValidation:(BOOL)a5;
- (BOOL)loadFileIndex:(void *)a3 expectedSliceId:(const MTLLoaderSliceIdentifier *)a4 expectedVersion:(unint64_t)a5 sliceOffset:(unint64_t)a6;
- (BOOL)loadFromURL:(id)a3 error:(id *)a4;
- (BOOL)recompilePipelinesToArchive:(id)a3 error:(id *)a4;
- (BOOL)recompileStatelessToArchive:(id)a3 error:(id *)a4;
- (BOOL)recompileToArchive:(id)a3 error:(id *)a4;
- (BOOL)recompileToArchiveWithURL:(id)a3 error:(id *)a4;
- (BOOL)remoteInsertionBegin;
- (BOOL)serializeToURL:(id)a3 options:(unint64_t)a4 error:(id *)a5;
- (BOOL)storeComputePipelineDescriptor:(id)a3;
- (BOOL)storeMeshRenderPipelineDescriptor:(id)a3;
- (BOOL)storeRenderPipelineDescriptor:(id)a3;
- (BOOL)storeTileRenderPipelineDescriptor:(id)a3;
- (BOOL)updateReflectionForEntry:(id)a3 binaryKey:(id)a4 requiredReflection:(char)a5;
- (NSArray)keys;
- (_MTLBinaryArchive)initWithDevice:(id)a3 descriptor:(id)a4 error:(id *)a5;
- (_MTLBinaryArchive)initWithOptions:(unint64_t)a3 device:(id)a4 url:(id)a5 error:(id *)a6;
- (id).cxx_construct;
- (id)archiveFunctionIds;
- (id)flatBufferFromJSON:(id)a3 schema:(const char *)a4 schemaSize:(unint64_t)a5;
- (id)formattedDescription:(unint64_t)a3;
- (id)getArchiveIDWithErrorInternal:(id *)a3;
- (id)getBinaryDataForKey:(id)a3 reflectionType:(char)a4;
- (id)getFunctionNameFromAirDescriptor:(const stitchedAirDescriptor *)a3;
- (id)getLibraryDescriptorWithAirScrpt:(const StitchingScript *)a3;
- (id)localStitchedFunctionLookupWithDescriptor:(const stitchedAirDescriptor *)a3;
- (id)materializeAIRNTBlockForKey:(id)a3 reflectionType:(char)a4;
- (id)materializeAirScript:(void *)a3;
- (id)materializeEntryForKey:(id *)a3 fileIndex:(void *)a4 containsEntry:(id)a5 addEntry:(id)a6;
- (id)materializeFromFileOffset:(unint64_t)a3 hash:(id *)a4;
- (id)materializeFromHash:(id *)a3 fileIndex:(void *)a4;
- (id)materializeReflectionBlock:(void *)a3;
- (id)newArchiveDataForKeyInternal:(id *)a3;
- (id)newArchiverIdWithBinaryKey:(id)a3 entry:(id)a4 srcArchiverId:(id)a5 functionType:(unint64_t)a6;
- (id)newComputePipelineDescriptorWithScript:(const PipelineScript *)a3 obj:(void *)a4 destinationArchive:(id)a5 error:(id *)a6;
- (id)newFunctionDescriptorWithAirScript:(const ConstantsSpecializationScript *)a3;
- (id)newLibraryInArchiveAtPos:(void *)a3 atIndex:(unsigned int)a4 error:(id *)a5;
- (id)newLibraryInArchiveWithRange:(_NSRange)a3 error:(id *)a4;
- (id)newMeshRenderPipelineDescriptorWithScript:(const PipelineScript *)a3 obj:(void *)a4 destinationArchive:(id)a5 error:(id *)a6;
- (id)newRecompiledFunctionWithAIRNTObject:(void *)a3 index:(unint64_t)a4 destinationArchive:(id)a5 error:(id *)a6;
- (id)newRenderPipelineDescriptorWithScript:(const PipelineScript *)a3 obj:(void *)a4 destinationArchive:(id)a5 error:(id *)a6;
- (id)newSpecializedFunctionWithHash:(id *)a3 libraryPath:(id)a4;
- (id)newStitchedLibraryWithKey:(id *)a3 descriptors:(const void *)a4;
- (id)newTileRenderPipelineDescriptorWithScript:(const PipelineScript *)a3 obj:(void *)a4 destinationArchive:(id)a5 error:(id *)a6;
- (id)recompileFunction:(id)a3 inLibrary:(id)a4 toArchive:(id)a5 toBinary:(BOOL)a6 error:(id *)a7;
- (void)addArchiveEntryInternal:(id)a3 forKey:(id *)a4;
- (void)addBinaryEntryImpl:(id)a3 forKey:(id)a4;
- (void)addBinaryEntryInternal:(id)a3 forKey:(id)a4;
- (void)addStitchedLibraryWithKey:(id *)a3 descriptors:(const void *)a4 inputFunctions:(id)a5 library:(id)a6;
- (void)addStitchingInputsFunction:(id)a3 toEntry:(id)a4;
- (void)clearLibCache;
- (void)dealloc;
- (void)deallocContainers;
- (void)findProgramObjectForFunction:(id *)a3;
- (void)initMetalScriptWithArchive:(id)a3;
- (void)materializeAirNTAllForSlice:(const MTLLoaderSliceIdentifier *)a3 entryList:(shared_ptr<std::vector<machOEntry>>)a4;
- (void)materializeAirNTFromOnlineForSlice:(const MTLLoaderSliceIdentifier *)a3 entryList:(shared_ptr<std::vector<machOEntry>>)a4;
- (void)materializeAirNTSpecializedFunctions:(shared_ptr<std::vector<machOEntry>>)a3;
- (void)materializeAirNTStitchedFunctions:(shared_ptr<std::vector<machOEntry>>)a3;
- (void)materializeAll;
- (void)materializeAllAIRNTLegacy;
- (void)materializeLinkedBitcodes:(void *)a3 hashList:(void *)a4;
- (void)preloadLibrariesInAirntObject:(void *)a3 error:(id *)a4;
- (void)programObjectForFunction:(id *)a3;
- (void)setMTLLinkedFunctions:(id)a3 LFS:(const LinkedFunctions *)a4 obj:(void *)a5 destinationArchive:(id)a6 error:(id *)a7;
- (void)setRecompilationTarget:(BOOL)a3;
- (void)updatePipelineWithPipelineArchiverId:(id)a3 key:(id)a4 functionType:(unint64_t)a5;
@end

@implementation _MTLBinaryArchive

- (id).cxx_construct
{
  *(self + 6) = 0u;
  *(self + 7) = 0u;
  *(self + 32) = 1065353216;
  *(self + 136) = 0u;
  *(self + 152) = 0u;
  *(self + 42) = 1065353216;
  *(self + 11) = 0u;
  *(self + 12) = 0u;
  *(self + 52) = 1065353216;
  *(self + 28) = 0;
  *(self + 29) = 0;
  *(self + 27) = 0;
  *(self + 31) = 0;
  *(self + 32) = 0;
  *(self + 30) = 0;
  *(self + 34) = 0;
  *(self + 35) = 0;
  *(self + 33) = 0;
  *(self + 38) = 0;
  *(self + 37) = 0;
  *(self + 36) = self + 296;
  *(self + 40) = 0;
  *(self + 41) = 0;
  *(self + 39) = 0;
  *(self + 21) = 0u;
  *(self + 22) = 0u;
  *(self + 92) = 1065353216;
  *(self + 25) = 0u;
  *(self + 26) = 0u;
  *(self + 108) = 1065353216;
  *(self + 440) = 0u;
  *(self + 456) = 0u;
  *(self + 118) = 1065353216;
  *(self + 30) = 0u;
  *(self + 31) = 0u;
  *(self + 128) = 1065353216;
  *(self + 520) = 0u;
  *(self + 536) = 0u;
  *(self + 138) = 1065353216;
  *(self + 35) = 0u;
  *(self + 36) = 0u;
  *(self + 148) = 1065353216;
  *(self + 600) = 0u;
  *(self + 616) = 0u;
  *(self + 158) = 1065353216;
  *(self + 648) = 0u;
  *(self + 664) = 0u;
  *(self + 170) = 1065353216;
  *(self + 86) = 0;
  *(self + 87) = 0;
  *(self + 88) = 0;
  *(self + 89) = 0;
  *(self + 728) = 0u;
  *(self + 744) = 0u;
  *(self + 190) = 1065353216;
  *(self + 98) = 0;
  *(self + 97) = 0;
  *(self + 96) = self + 776;
  *(self + 103) = 0;
  *(self + 102) = 0;
  *(self + 101) = self + 816;
  *(self + 53) = 0u;
  *(self + 54) = 0u;
  *(self + 220) = 1065353216;
  return self;
}

- (BOOL)archiveSkipsAIRValidation
{
  if ((self->_options & 0x20) != 0)
  {
    LOBYTE(MainBundle) = 1;
  }

  else
  {
    MainBundle = CFBundleGetMainBundle();
    if (MainBundle)
    {
      MainBundle = CFBundleGetIdentifier(MainBundle);
      if (MainBundle)
      {
        LOBYTE(MainBundle) = CFStringHasPrefix(MainBundle, @"com.apple.") == 1;
      }
    }
  }

  return MainBundle;
}

- (void)dealloc
{
  queue = self->_queue;
  if (queue)
  {
    dispatch_release(queue);
  }

  serializeQueue = self->_serializeQueue;
  if (serializeQueue)
  {
    dispatch_release(serializeQueue);
  }

  [(_MTLBinaryArchive *)self deallocContainers];
  metalScript = self->_metalScript;
  if (metalScript)
  {
    dispatch_release(metalScript);
  }

  self->_metalScript = 0;
  for (i = self->_variantMap.__table_.__first_node_.__next_; i; i = *i)
  {
    v7 = i[6];
    if (v7)
    {
      MTLProgramObject::~MTLProgramObject(v7);
      MEMORY[0x1865FF210]();
    }
  }

  std::__hash_table<std::__hash_value_type<unsigned long,MTLStructTypeInternal *>,std::__unordered_map_hasher<unsigned long,std::__hash_value_type<unsigned long,MTLStructTypeInternal *>,std::hash<unsigned long>,std::equal_to<unsigned long>,true>,std::__unordered_map_equal<unsigned long,std::__hash_value_type<unsigned long,MTLStructTypeInternal *>,std::equal_to<unsigned long>,std::hash<unsigned long>,true>,std::allocator<std::__hash_value_type<unsigned long,MTLStructTypeInternal *>>>::clear(&self->_variantMap.__table_.__bucket_list_.__ptr_);

  v8.receiver = self;
  v8.super_class = _MTLBinaryArchive;
  [(_MTLObjectWithLabel *)&v8 dealloc];
}

- (void)deallocContainers
{
  std::__hash_table<std::__hash_value_type<MTLHashKey,std::tuple<unsigned long long,unsigned long long,unsigned long long,unsigned long long>>,std::__unordered_map_hasher<MTLHashKey,std::__hash_value_type<MTLHashKey,std::tuple<unsigned long long,unsigned long long,unsigned long long,unsigned long long>>,CompareFunctionIdHash,CompareFunctionIdHash,true>,std::__unordered_map_equal<MTLHashKey,std::__hash_value_type<MTLHashKey,std::tuple<unsigned long long,unsigned long long,unsigned long long,unsigned long long>>,CompareFunctionIdHash,CompareFunctionIdHash,true>,std::allocator<std::__hash_value_type<MTLHashKey,std::tuple<unsigned long long,unsigned long long,unsigned long long,unsigned long long>>>>::clear(&self->_executableFileIndex);
  for (i = self->_legacySpecializedFunctions.__table_.__first_node_.__next_; i; i = *i)
  {
    v4 = i[6];
    if (v4)
    {
      dispatch_release(v4);
    }
  }

  std::__hash_table<std::__hash_value_type<unsigned long,MTLStructTypeInternal *>,std::__unordered_map_hasher<unsigned long,std::__hash_value_type<unsigned long,MTLStructTypeInternal *>,std::hash<unsigned long>,std::equal_to<unsigned long>,true>,std::__unordered_map_equal<unsigned long,std::__hash_value_type<unsigned long,MTLStructTypeInternal *>,std::equal_to<unsigned long>,std::hash<unsigned long>,true>,std::allocator<std::__hash_value_type<unsigned long,MTLStructTypeInternal *>>>::clear(&self->_legacySpecializedFunctions.__table_.__bucket_list_.__ptr_);
  std::__tree<flatbuffers::Offset<flatbuffers::String>,flatbuffers::FlatBufferBuilder::StringOffsetCompare,std::allocator<flatbuffers::Offset<flatbuffers::String>>>::destroy(&self->_legacyPipelineFileIndex, self->_legacyPipelineFileIndex.__tree_.__end_node_.__left_);
  self->_legacyPipelineFileIndex.__tree_.__begin_node_ = &self->_legacyPipelineFileIndex.__tree_.__end_node_;
  self->_legacyPipelineFileIndex.__tree_.__size_ = 0;
  self->_legacyPipelineFileIndex.__tree_.__end_node_.__left_ = 0;
  fileMapping = self->_fileMapping;
  if (fileMapping)
  {
    [(MTLLoader *)*(self->_device + 61) releaseLoadedFile:?];
  }

  self->_fileMapping = 0;

  self->_fileData = 0;
  entries = self->_entries;
  if (entries)
  {
  }

  asynEntries = self->_asynEntries;
  if (asynEntries)
  {
  }

  self->_entries = 0;
  self->_asynEntries = 0;
  begin = self->_airntObjectList.__begin_;
  end = self->_airntObjectList.__end_;
  if (end != begin)
  {
    v10 = 0;
    do
    {
      v11 = begin[v10];
      if (v11)
      {
        MTLAirNTObject::~MTLAirNTObject(v11);
        MEMORY[0x1865FF210]();
        begin = self->_airntObjectList.__begin_;
        end = self->_airntObjectList.__end_;
      }

      ++v10;
    }

    while (v10 < end - begin);
  }

  v13 = self->_airntExtraBinaryEntries.__begin_;
  v12 = self->_airntExtraBinaryEntries.__end_;
  if (v12 != v13)
  {
    v14 = 0;
    v15 = 0;
    do
    {
      v16 = *(v13 + v14);
      if (v16)
      {
        MTLHashKey::~MTLHashKey(v16);
        MEMORY[0x1865FF210]();
        v13 = self->_airntExtraBinaryEntries.__begin_;
        v12 = self->_airntExtraBinaryEntries.__end_;
      }

      ++v15;
      v14 += 16;
    }

    while (v15 < (v12 - v13) >> 4);
  }

  for (j = self->_stitchedFunctionByHash.__table_.__first_node_.__next_; j; j = *j)
  {
  }

  std::__hash_table<std::__hash_value_type<unsigned long,MTLStructTypeInternal *>,std::__unordered_map_hasher<unsigned long,std::__hash_value_type<unsigned long,MTLStructTypeInternal *>,std::hash<unsigned long>,std::equal_to<unsigned long>,true>,std::__unordered_map_equal<unsigned long,std::__hash_value_type<unsigned long,MTLStructTypeInternal *>,std::equal_to<unsigned long>,std::hash<unsigned long>,true>,std::allocator<std::__hash_value_type<unsigned long,MTLStructTypeInternal *>>>::clear(&self->_stitchedFunctionByHash.__table_.__bucket_list_.__ptr_);
  self->_airntExtraBinaryEntries.__end_ = self->_airntExtraBinaryEntries.__begin_;
  self->_airntObjectList.__end_ = self->_airntObjectList.__begin_;
  self->_airntFromDescriptorFunctionList.__end_ = self->_airntFromDescriptorFunctionList.__begin_;
  v18 = self->_airntPipelineList.__begin_;
  v19 = self->_airntPipelineList.__end_;
  if (v19 != v18)
  {
    v20 = 0;
    do
    {
      v21 = v18[v20];
      if (v21)
      {
        if (*(v21 + 63) < 0)
        {
          operator delete(*(v21 + 5));
        }

        MEMORY[0x1865FF210](v21, 0x1032C40B82182A8);
        v18 = self->_airntPipelineList.__begin_;
        v19 = self->_airntPipelineList.__end_;
      }

      ++v20;
    }

    while (v20 < v19 - v18);
  }

  self->_airntPipelineList.__end_ = v18;
  archiveIDInt = self->_archiveIDInt;
  if (archiveIDInt)
  {
    free(archiveIDInt);
  }

  ptr = self->_uniqueBitcodeList.__ptr_;
  if (ptr)
  {
    v24 = ptr[2];
    if (v24)
    {
      do
      {

        v24 = *v24;
      }

      while (v24);
      ptr = self->_uniqueBitcodeList.__ptr_;
    }

    std::__hash_table<std::__hash_value_type<unsigned long,MTLStructTypeInternal *>,std::__unordered_map_hasher<unsigned long,std::__hash_value_type<unsigned long,MTLStructTypeInternal *>,std::hash<unsigned long>,std::equal_to<unsigned long>,true>,std::__unordered_map_equal<unsigned long,std::__hash_value_type<unsigned long,MTLStructTypeInternal *>,std::equal_to<unsigned long>,std::hash<unsigned long>,true>,std::allocator<std::__hash_value_type<unsigned long,MTLStructTypeInternal *>>>::clear(ptr);
  }

  [(_MTLBinaryArchive *)self clearLibCache];
}

- (void)clearLibCache
{
  p_libCache = &self->_libCache;
  for (i = self->_libCache.__table_.__first_node_.__next_; i; i = *i)
  {
  }

  std::__hash_table<std::__hash_value_type<unsigned long,MTLStructTypeInternal *>,std::__unordered_map_hasher<unsigned long,std::__hash_value_type<unsigned long,MTLStructTypeInternal *>,std::hash<unsigned long>,std::equal_to<unsigned long>,true>,std::__unordered_map_equal<unsigned long,std::__hash_value_type<unsigned long,MTLStructTypeInternal *>,std::equal_to<unsigned long>,std::hash<unsigned long>,true>,std::allocator<std::__hash_value_type<unsigned long,MTLStructTypeInternal *>>>::clear(p_libCache);
  for (j = self->_extLibCache.__table_.__first_node_.__next_; j; j = *j)
  {
    if (j[39] < 0)
    {
      std::string::__init_copy_ctor_external(&__p, *(j + 2), *(j + 3));
    }

    else
    {
      __p = *(j + 16);
    }

    v7 = *(j + 5);

    if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__p.__r_.__value_.__l.__data_);
    }
  }

  std::__hash_table<std::__hash_value_type<std::string,flatbuffers::Offset<Mtl4::Library>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,flatbuffers::Offset<Mtl4::Library>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,flatbuffers::Offset<Mtl4::Library>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,flatbuffers::Offset<Mtl4::Library>>>>::clear(&self->_extLibCache);
  std::__hash_table<std::__hash_value_type<unsigned long,MTLStructTypeInternal *>,std::__unordered_map_hasher<unsigned long,std::__hash_value_type<unsigned long,MTLStructTypeInternal *>,std::hash<unsigned long>,std::equal_to<unsigned long>,true>,std::__unordered_map_equal<unsigned long,std::__hash_value_type<unsigned long,MTLStructTypeInternal *>,std::equal_to<unsigned long>,std::hash<unsigned long>,true>,std::allocator<std::__hash_value_type<unsigned long,MTLStructTypeInternal *>>>::clear(&self->_specializedLibraryCache.__table_.__bucket_list_.__ptr_);
  std::__hash_table<std::__hash_value_type<unsigned long,MTLStructTypeInternal *>,std::__unordered_map_hasher<unsigned long,std::__hash_value_type<unsigned long,MTLStructTypeInternal *>,std::hash<unsigned long>,std::equal_to<unsigned long>,true>,std::__unordered_map_equal<unsigned long,std::__hash_value_type<unsigned long,MTLStructTypeInternal *>,std::equal_to<unsigned long>,std::hash<unsigned long>,true>,std::allocator<std::__hash_value_type<unsigned long,MTLStructTypeInternal *>>>::clear(&self->_stitchedLibraryCache.__table_.__bucket_list_.__ptr_);
}

- (_MTLBinaryArchive)initWithDevice:(id)a3 descriptor:(id)a4 error:(id *)a5
{
  if (a4)
  {
    v9 = [a4 options];
    v10 = [a4 url];

    return [(_MTLBinaryArchive *)self initWithOptions:v9 device:a3 url:v10 error:a5];
  }

  else
  {
    if (a5)
    {
      *a5 = newErrorWithMessage(&cfstr_Mtlbinaryarchi_0.isa, MTLBinaryArchiveErrorUnexpectedElement);
    }

    return 0;
  }
}

- (_MTLBinaryArchive)initWithOptions:(unint64_t)a3 device:(id)a4 url:(id)a5 error:(id *)a6
{
  v11.receiver = self;
  v11.super_class = _MTLBinaryArchive;
  v9 = [(_MTLObjectWithLabel *)&v11 init];
  if (v9)
  {
    if (a6)
    {
      *a6 = 0;
      if (!a3)
      {
        *a6 = newErrorWithMessage(&cfstr_AtLeastOneOpti.isa, MTLBinaryArchiveErrorUnexpectedElement);
LABEL_7:

        return 0;
      }
    }

    else if (!a3)
    {
      goto LABEL_7;
    }

    v9->_device = a4;
    v9->_options = a3;
    v9->_internalArchiverId = 0;
    v9->_newBinary = 0;
    atomic_store(0, &v9->_serializing);
    v9->_archiveIDInt = 0;
    v9->_absoluteOpenPath = 0;
    v9->_metalScript = 0;
    v9->_alwaysReturnDriverReflection = [objc_msgSend(a4 "targetDeviceArchitecture")] == 16777235;
    v9->_hasBuiltins = 0;
    operator new();
  }

  return v9;
}

+ (BOOL)deserializeBinaryArchiveHeader:(DeserializedBinaryArchiveLayout *)a3 fileData:(id)a4 device:(id)a5
{
  if (a5)
  {
    v8 = [MTLLoader sliceIDForDevice:a5 andDriverVersion:0];
    v9 = v8;
    v10 = HIDWORD(v8);
    v11 = +[MTLLoader sliceIDForDescriptors];
    v12 = [_MTLBinaryArchive sliceIDForSpecializedFunctionsForLLVMVersion:_MTLGetMTLCompilerLLVMVersionForDevice(a5)];
    var0 = v12.var0;
    v14 = HIDWORD(*&v12);
  }

  else
  {
    v11 = +[MTLLoader sliceIDForDescriptors];
    v9 = 0;
    LODWORD(v10) = 0;
    LODWORD(v14) = 0;
    var0 = 0;
  }

  v48[0] = MEMORY[0x1E69E9820];
  v48[1] = 3221225472;
  v48[2] = __68___MTLBinaryArchive_deserializeBinaryArchiveHeader_fileData_device___block_invoke;
  v48[3] = &unk_1E6EEA990;
  v48[4] = a4;
  v42 = 0;
  v43 = &v42;
  v44 = 0x3052000000;
  v45 = __Block_byref_object_copy_;
  v46 = __Block_byref_object_dispose_;
  v47 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v34 = 0;
  v35 = &v34;
  v36 = 0x5812000000;
  v37 = __Block_byref_object_copy__148;
  v38 = __Block_byref_object_dispose__149;
  v39 = &unk_185DF1D43;
  memset(v40, 0, sizeof(v40));
  v41 = 1065353216;
  v32[0] = 0;
  v32[1] = v32;
  v32[2] = 0x2020000000;
  v33 = 0;
  *v31 = 0;
  if (a5)
  {
    MaxSupportedLLVMVersion = _MTLGetMTLCompilerLLVMVersionForDevice(a5);
  }

  else
  {
    MaxSupportedLLVMVersion = getMaxSupportedLLVMVersion(0);
  }

  _MTLGetMaxAIRAndLanguageVersions(MaxSupportedLLVMVersion, &v31[1], v31);
  v24[0] = MEMORY[0x1E69E9820];
  v24[1] = 3221225472;
  v24[2] = __68___MTLBinaryArchive_deserializeBinaryArchiveHeader_fileData_device___block_invoke_151;
  v24[3] = &unk_1E6EEA9E0;
  v25 = v9;
  v26 = v10;
  v27 = v11;
  v28 = var0;
  v29 = v14;
  v30 = v31[1];
  v24[4] = a4;
  v24[5] = v32;
  v24[6] = &v42;
  v24[7] = &v34;
  v24[8] = a3;
  v16 = +[MTLLoader deserializeUniversalBinaryHeaderWithHandler:reader:bytes:](MTLLoader, v24, v48, [a4 length]);
  v23[0] = MEMORY[0x1E69E9820];
  v23[1] = 3221225472;
  v23[2] = __68___MTLBinaryArchive_deserializeBinaryArchiveHeader_fileData_device___block_invoke_3;
  v23[3] = &unk_1E6EEA9B8;
  v23[4] = a4;
  v23[5] = a3;
  a3->var12 = [MTLLoader machOConformsToAIRNTFormat:v23 type:0];
  if (a3->var1)
  {
    if (a3->var0)
    {
      a3->var13.var0 = v9;
      a3->var13.var1 = v10;
    }

    else
    {
      v17 = [a5 getMostCompatibleArchitecture:v43[5]];
      if ([v17 cpuType])
      {
        a3->var13.var0 = [v17 cpuType];
        a3->var13.var1 = [v17 cpuSubtype];
        v18 = v35;
        v19 = [v17 cpuType];
        v22 = [v17 cpuSubtype] | (v19 << 32);
        *&a3->var2 = *std::unordered_map<unsigned long long,+[_MTLBinaryArchive deserializeBinaryArchiveHeader:fileData:device:]::archSliceId>::operator[](v18 + 6, &v22);
      }
    }
  }

  v20 = objc_alloc(MEMORY[0x1E695DEC8]);
  a3->var14 = [v20 initWithArray:v43[5]];
  [v43[5] removeAllObjects];

  _Block_object_dispose(v32, 8);
  _Block_object_dispose(&v34, 8);
  std::__hash_table<std::__hash_value_type<unsigned long,MTLStructTypeInternal *>,std::__unordered_map_hasher<unsigned long,std::__hash_value_type<unsigned long,MTLStructTypeInternal *>,std::hash<unsigned long>,std::equal_to<unsigned long>,true>,std::__unordered_map_equal<unsigned long,std::__hash_value_type<unsigned long,MTLStructTypeInternal *>,std::equal_to<unsigned long>,std::hash<unsigned long>,true>,std::allocator<std::__hash_value_type<unsigned long,MTLStructTypeInternal *>>>::~__hash_table(v40);
  _Block_object_dispose(&v42, 8);
  return v16;
}

+ (void)deserializeBinaryArchiveHeader:(void *)a1 fileData:(unint64_t *)a2 device:
{
  v2 = *a2;
  v3 = a1[1];
  if (!*&v3)
  {
    goto LABEL_18;
  }

  v4 = vcnt_s8(v3);
  v4.i16[0] = vaddlv_u8(v4);
  if (v4.u32[0] > 1uLL)
  {
    v5 = *a2;
    if (v2 >= *&v3)
    {
      v5 = v2 % *&v3;
    }
  }

  else
  {
    v5 = (*&v3 - 1) & v2;
  }

  v6 = *(*a1 + 8 * v5);
  if (!v6 || (v7 = *v6) == 0)
  {
LABEL_18:
    operator new();
  }

  while (1)
  {
    v8 = v7[1];
    if (v8 == v2)
    {
      break;
    }

    if (v4.u32[0] > 1uLL)
    {
      if (v8 >= *&v3)
      {
        v8 %= *&v3;
      }
    }

    else
    {
      v8 &= *&v3 - 1;
    }

    if (v8 != v5)
    {
      goto LABEL_18;
    }

LABEL_17:
    v7 = *v7;
    if (!v7)
    {
      goto LABEL_18;
    }
  }

  if (v7[2] != v2)
  {
    goto LABEL_17;
  }

  return v7 + 3;
}

+ (BOOL)deserializeBinaryArchiveDescriptorMachO:(DeserializedBinaryArchiveLayout *)a3 fileData:(id)a4
{
  a3->var7 = 0;
  a3->var8 = 0;
  if (!a3->var4)
  {
    return 0;
  }

  v11[11] = v4;
  v11[12] = v5;
  v8 = +[MTLLoader sliceIDForDescriptors];
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __70___MTLBinaryArchive_deserializeBinaryArchiveDescriptorMachO_fileData___block_invoke;
  v11[3] = &unk_1E6EEAA58;
  v11[5] = a3;
  v11[6] = v8;
  v11[4] = a4;
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __70___MTLBinaryArchive_deserializeBinaryArchiveDescriptorMachO_fileData___block_invoke_4;
  v10[3] = &unk_1E6EEA9B8;
  v10[4] = a4;
  v10[5] = a3;
  return [MTLLoader deserializeMachOContainerWithHandler:v11 reader:v10];
}

+ (unsigned)archiveVersionCompatible:(MachOToolsVersion *)a3 isMatchingSlice:(BOOL)a4 device:(id)a5
{
  v6 = a4;
  active_platform = dyld_get_active_platform();
  v9 = [MEMORY[0x1E696AE30] processInfo];
  if (v9)
  {
    [v9 operatingSystemVersion];
  }

  if (active_platform != a3->var1)
  {
    return 5;
  }

  if (a3->var0)
  {
    return 6;
  }

  var2 = a3->var2;
  var4 = a3->var4;
  if (([a5 isVendorSliceCompatibleWithDeploymentTarget:? platform:? sdkVersion:? compilerPluginVersion:?] & v6) != 0)
  {
    return 2;
  }

  else
  {
    return 3;
  }
}

+ (unsigned)archiveTypeAtURL:(id)a3 device:(id)a4 error:(id *)a5
{
  if (a5)
  {
    *a5 = 0;
  }

  v8 = objc_autoreleasePoolPush();
  v9 = objc_opt_new();
  v10 = [(MTLLoader *)v9 loadFileWithURL:a3 error:a5 errorDomain:&cfstr_Mtlbinaryarchi.isa invalidFileErrorCode:1];
  if (v9)
  {
    v11 = v10 == 0;
  }

  else
  {
    v11 = 1;
  }

  if (!v11)
  {
    v13 = v10;
    v14 = [[MTLLoadedFileContentsWrapper alloc] initWithData:[(MTLLoadedFile *)v10 contents]];
    *&v27.var0 = 0;
    v27.var14 = 0;
    v27.var13.var0 = 0;
    v27.var13.var1 = 0;
    memset(&v27.var2, 0, 17);
    memset(&v27.var5, 0, 33);
    memset(&v27.var10, 0, 17);
    if ([_MTLBinaryArchive deserializeBinaryArchiveHeader:&v27 fileData:v14 device:a4])
    {
      v26 = 0;
      v25 = 0;
      v24 = [MTLLoader sliceIDForDevice:a4 legacyDriverVersion:&v26 airntDriverVersion:&v25];
      if (!v27.var12)
      {
        v12 = !v27.var12;
        goto LABEL_20;
      }

      if (!v27.var0 && !v27.var13.var0)
      {
        v12 = 4;
LABEL_20:

        [(MTLLoader *)v9 releaseLoadedFile:v13];
        DeserializedBinaryArchiveLayout::~DeserializedBinaryArchiveLayout(&v27);
        goto LABEL_21;
      }

      v22 = 0uLL;
      v23 = 0;
      v21[0] = MEMORY[0x1E69E9820];
      v21[1] = 3221225472;
      v21[2] = __51___MTLBinaryArchive_archiveTypeAtURL_device_error___block_invoke;
      v21[3] = &unk_1E6EEA9B8;
      v21[4] = v14;
      v21[5] = v27.var2;
      v16 = [MTLLoader deserializeAIRNTToolsVersionForSlice:v27.var2 sliceOffset:&v22 version:v21 reader:?];

      if (v16)
      {
        v19 = v22;
        v20 = v23;
        v12 = [_MTLBinaryArchive archiveVersionCompatible:&v19 isMatchingSlice:v27.var0 device:a4];
        goto LABEL_20;
      }

      if (a5)
      {
        v12 = 0;
        *a5 = newErrorWithMessage([MEMORY[0x1E696AEC0] stringWithFormat:@"The file %@ has an invalid format.", a3], MTLBinaryArchiveErrorInvalidFile);
        goto LABEL_20;
      }
    }

    v12 = 0;
    goto LABEL_20;
  }

  v12 = 0;
LABEL_21:

  if (a5 && *a5)
  {
    v17 = *a5;
  }

  objc_autoreleasePoolPop(v8);
  return v12;
}

- (BOOL)loadAirSliceAtOffset:(unint64_t)a3 sliceLength:(unint64_t)a4
{
  v44[16] = *MEMORY[0x1E69E9840];
  v37 = a3;
  subrange = dispatch_data_create_subrange([(MTLLoadedFileContentsWrapper *)self->_fileData dispatchData], a3, a4);
  v12 = MTLLibraryBuilder::newLibraryWithData(*(self->_device + 55), self->_device, subrange, 0, v8, v9, v10, v11);
  v13 = v12;
  if (v12)
  {
    v14 = [(NSArray *)[(_MTLLibrary *)v12 specializedFunctionHashes] count];
    v15 = [(NSArray *)[(_MTLLibrary *)v13 stitchingFunctionHashes] count];
    v16 = [(NSArray *)[(_MTLLibrary *)v13 functionHashes] count];
    if ((self->_options & 0x10) != 0 || (!v15 ? (v17 = v14 == 1) : (v17 = 0), !v17 ? (v18 = v15 == 1) : (v18 = 1), !v18 ? (v19 = v16 >= 0xA) : (v19 = 0), v19))
    {
      v20 = v13;
      v44[0] = &v37;
      std::__hash_table<std::__hash_value_type<unsigned long long,objc_object  {objcproto13MTLLibrarySPI}*>,std::__unordered_map_hasher<unsigned long long,objc_object  {objcproto13MTLLibrarySPI}*,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,objc_object  {objcproto13MTLLibrarySPI}*,std::equal_to,std::hash,true>,std::allocator<objc_object  {objcproto13MTLLibrarySPI}*>>::__emplace_unique_key_args<unsigned long long,std::piecewise_construct_t const&,std::tuple<unsigned long long const&>,std::piecewise_construct_t const&<>>(&self->_libCache.__table_.__bucket_list_.__ptr_, &v37)[3] = v20;
    }

    v36 = v13;
    v21 = [(_MTLLibrary *)v13 specializedFunctionHashes];
    v38 = 0u;
    v39 = 0u;
    v40 = 0u;
    v41 = 0u;
    v22 = [(NSArray *)v21 countByEnumeratingWithState:&v38 objects:v44 count:16];
    if (v22)
    {
      v23 = v22;
      v24 = *v39;
      do
      {
        for (i = 0; i != v23; ++i)
        {
          if (*v39 != v24)
          {
            objc_enumerationMutation(v21);
          }

          [*(*(&v38 + 1) + 8 * i) getValue:v43];
          v42 = v43;
          v26 = std::__hash_table<std::__hash_value_type<MTLUINT256_t,_NSRange>,std::__unordered_map_hasher<MTLUINT256_t,std::__hash_value_type<MTLUINT256_t,_NSRange>,UnorderedContainerHash,UnorderedContainerHash,true>,std::__unordered_map_equal<MTLUINT256_t,std::__hash_value_type<MTLUINT256_t,_NSRange>,UnorderedContainerHash,UnorderedContainerHash,true>,std::allocator<std::__hash_value_type<MTLUINT256_t,_NSRange>>>::__emplace_unique_key_args<MTLUINT256_t,std::piecewise_construct_t const&,std::tuple<MTLUINT256_t const&>,std::tuple<>>(&self->_specializedLibraryCache.__table_.__bucket_list_.__ptr_, v43);
          v26[6] = a3;
          v26[7] = a4;
        }

        v23 = [(NSArray *)v21 countByEnumeratingWithState:&v38 objects:v44 count:16];
      }

      while (v23);
    }

    v27 = [(_MTLLibrary *)v36 stitchingFunctionHashes];
    v38 = 0u;
    v39 = 0u;
    v40 = 0u;
    v41 = 0u;
    v28 = [(NSArray *)v27 countByEnumeratingWithState:&v38 objects:v44 count:16];
    if (v28)
    {
      v29 = v28;
      v30 = *v39;
      do
      {
        for (j = 0; j != v29; ++j)
        {
          if (*v39 != v30)
          {
            objc_enumerationMutation(v27);
          }

          [*(*(&v38 + 1) + 8 * j) getValue:v43];
          v42 = v43;
          v32 = std::__hash_table<std::__hash_value_type<MTLUINT256_t,_NSRange>,std::__unordered_map_hasher<MTLUINT256_t,std::__hash_value_type<MTLUINT256_t,_NSRange>,UnorderedContainerHash,UnorderedContainerHash,true>,std::__unordered_map_equal<MTLUINT256_t,std::__hash_value_type<MTLUINT256_t,_NSRange>,UnorderedContainerHash,UnorderedContainerHash,true>,std::allocator<std::__hash_value_type<MTLUINT256_t,_NSRange>>>::__emplace_unique_key_args<MTLUINT256_t,std::piecewise_construct_t const&,std::tuple<MTLUINT256_t const&>,std::tuple<>>(&self->_stitchedLibraryCache.__table_.__bucket_list_.__ptr_, v43);
          v32[6] = a3;
          v32[7] = a4;
        }

        v29 = [(NSArray *)v27 countByEnumeratingWithState:&v38 objects:v44 count:16];
      }

      while (v29);
    }

    v13 = v36;

    v33 = subrange;
  }

  else
  {
    v33 = subrange;
  }

  dispatch_release(v33);
  result = v13 != 0;
  v35 = *MEMORY[0x1E69E9840];
  return result;
}

- (BOOL)loadFromURL:(id)a3 error:(id *)a4
{
  v68 = *MEMORY[0x1E69E9840];
  v7 = objc_autoreleasePoolPush();
  if (!a3 || ![a3 isFileURL] || (objc_msgSend(a3, "checkResourceIsReachableAndReturnError:", a4) & 1) == 0)
  {
    if (a4)
    {
      v11 = 1;
      v12 = newErrorWithMessage(&cfstr_InvalidUrl.isa, MTLBinaryArchiveErrorInvalidFile);
      *a4 = v12;
      v13 = v12;
      LOBYTE(v14) = 0;
    }

    else
    {
      LOBYTE(v14) = 0;
      v11 = 1;
    }

    goto LABEL_10;
  }

  if ([(_MTLBinaryArchive *)self archiveSkipsAIRValidation]|| (v8 = [(MTLDevice *)self->_device lookupRecompiledBinaryArchive:a3]) == 0)
  {
    v10 = 0;
  }

  else
  {
    v9 = v8;
    [(MTLDevice *)self->_device recordBinaryArchiveUsage:a3];
    a3 = v9;
    v10 = 1;
  }

  v17 = [(MTLLoader *)*(self->_device + 61) loadFileWithURL:a3 error:a4 errorDomain:&cfstr_Mtlbinaryarchi.isa invalidFileErrorCode:1];
  self->_fileMapping = v17;
  if (v17)
  {
    v18 = [[MTLLoadedFileContentsWrapper alloc] initWithData:[(MTLLoadedFile *)self->_fileMapping contents]];
    self->_fileData = v18;
    self->_internalArchiverId = 0;
    if (v18)
    {
      v50 = a4;
      v51 = v7;
      v64 = 0;
      v63 = 0;
      *&v62.var0 = 0;
      v62.var14 = 0;
      v62.var13.var1 = 0;
      v62.var13.var0 = 0;
      memset(&v62.var2, 0, 17);
      memset(&v62.var5, 0, 33);
      memset(&v62.var10, 0, 17);
      LOBYTE(v14) = [_MTLBinaryArchive deserializeBinaryArchiveHeader:&v62 fileData:self->_fileData device:self->_device];
      v61 = 0;
      v61 = [MTLLoader sliceIDForDevice:&v64 legacyDriverVersion:&v63 airntDriverVersion:?];
      v19 = ~v62.var12;
      self->_isLegacy = !v62.var12;
      if (v19)
      {
        options = self->_options;
        LOBYTE(v23) = options & 0xCF;
        self->_options = options & 0xFFFFFFFFFFFFFFCFLL;
        if (!v62.var1 && !v62.var4)
        {
          LOBYTE(v14) = v62.var9 & v14;
        }

        if ((options & 2) != 0 && v62.var0)
        {
          if (v14)
          {
            LOBYTE(v14) = [(_MTLBinaryArchive *)self loadFileIndex:&self->_legacyPipelineFileIndex expectedSliceId:&v61 expectedVersion:v64 sliceOffset:v62.var2];
            v23 = self->_options;
          }

          else
          {
            LOBYTE(v14) = 0;
          }

          v62.var0 = v14;
        }

        if (v23)
        {
          if (v62.var4)
          {
            v31 = (v14 & 1) != 0 && [_MTLBinaryArchive deserializeBinaryArchiveDescriptorMachO:&v62 fileData:self->_fileData];
            v62.var4 = v31;
          }

          if (v62.var7)
          {
            [(MTLLoadedFileContentsWrapper *)self->_fileData bytes];
          }
        }

        if ((self->_options & 4) != 0 && v62.var9)
        {
          var11 = v62.var11;
          self->_specializedFunctionArchiveOffset = v62.var10;
          self->_specializedFunctionArchiveBytes = var11;
          if (v14)
          {
            v65.__r_.__value_.__r.__words[0] = [_MTLBinaryArchive sliceIDForSpecializedFunctionsForLLVMVersion:_MTLGetMTLCompilerLLVMVersionForDevice(self->_device)];
            LOBYTE(v14) = [(_MTLBinaryArchive *)self loadFileIndex:&self->_legacySpecializedFunctionArchiveFileIndex expectedSliceId:&v65 expectedVersion:1 sliceOffset:self->_specializedFunctionArchiveOffset];
          }

          else
          {
            LOBYTE(v14) = 0;
          }
        }

        goto LABEL_102;
      }

      v20 = [(_MTLBinaryArchive *)self archiveSkipsAIRValidation];
      if (!v62.var0 && !v62.var13.var0)
      {
        v21 = 1;
        LOBYTE(v14) = 1;
LABEL_68:
        if (v21 && (v14 & 1) != 0)
        {
          memset(__p, 0, sizeof(__p));
          v55 = 0u;
          v56 = 0u;
          v57 = 0u;
          v58 = 0u;
          var14 = v62.var14;
          v35 = [v62.var14 countByEnumeratingWithState:&v55 objects:v67 count:16];
          if (v35)
          {
            v36 = *v56;
            do
            {
              for (i = 0; i != v35; ++i)
              {
                if (*v56 != v36)
                {
                  objc_enumerationMutation(var14);
                }

                std::string::basic_string[abi:ne200100]<0>(&v54, [objc_msgSend(*(*(&v55 + 1) + 8 * i) "name")]);
                if (SHIBYTE(__p[2]) >= 0)
                {
                  v38 = __p;
                }

                else
                {
                  v38 = __p[0];
                }

                if (SHIBYTE(__p[2]) >= 0)
                {
                  v39 = HIBYTE(__p[2]);
                }

                else
                {
                  v39 = __p[1];
                }

                v40 = std::string::insert(&v54, 0, v38, v39);
                v41 = *&v40->__r_.__value_.__l.__data_;
                v65.__r_.__value_.__r.__words[2] = v40->__r_.__value_.__r.__words[2];
                *&v65.__r_.__value_.__l.__data_ = v41;
                v40->__r_.__value_.__l.__size_ = 0;
                v40->__r_.__value_.__r.__words[2] = 0;
                v40->__r_.__value_.__r.__words[0] = 0;
                std::string::basic_string[abi:ne200100]<0>(v52, ", ");
                if ((v53 & 0x80u) == 0)
                {
                  v42 = v52;
                }

                else
                {
                  v42 = v52[0];
                }

                if ((v53 & 0x80u) == 0)
                {
                  v43 = v53;
                }

                else
                {
                  v43 = v52[1];
                }

                v44 = std::string::append(&v65, v42, v43);
                v45 = v44->__r_.__value_.__r.__words[0];
                v66[0] = v44->__r_.__value_.__l.__size_;
                *(v66 + 7) = *(&v44->__r_.__value_.__r.__words[1] + 7);
                v46 = HIBYTE(v44->__r_.__value_.__r.__words[2]);
                v44->__r_.__value_.__l.__size_ = 0;
                v44->__r_.__value_.__r.__words[2] = 0;
                v44->__r_.__value_.__r.__words[0] = 0;
                if (SHIBYTE(__p[2]) < 0)
                {
                  operator delete(__p[0]);
                }

                __p[0] = v45;
                __p[1] = v66[0];
                *(&__p[1] + 7) = *(v66 + 7);
                HIBYTE(__p[2]) = v46;
                if (v53 < 0)
                {
                  operator delete(v52[0]);
                }

                if (SHIBYTE(v65.__r_.__value_.__r.__words[2]) < 0)
                {
                  operator delete(v65.__r_.__value_.__l.__data_);
                }

                if (SHIBYTE(v54.__r_.__value_.__r.__words[2]) < 0)
                {
                  operator delete(v54.__r_.__value_.__l.__data_);
                }
              }

              v35 = [var14 countByEnumeratingWithState:&v55 objects:v67 count:16];
            }

            while (v35);
          }

          a4 = v50;
          v7 = v51;
          if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
          {
            public_arch_name_from_id = air_macho_get_public_arch_name_from_id(v61, SHIDWORD(v61));
            -[_MTLBinaryArchive loadFromURL:error:].cold.1([objc_msgSend(a3 "absoluteString")], __p, &v65, public_arch_name_from_id);
          }

          if (SHIBYTE(__p[2]) < 0)
          {
            operator delete(__p[0]);
          }

          LOBYTE(v14) = 1;
        }

LABEL_102:
        DeserializedBinaryArchiveLayout::~DeserializedBinaryArchiveLayout(&v62);
        goto LABEL_103;
      }

      memset(&v65, 0, 20);
      v60[0] = MEMORY[0x1E69E9820];
      v60[1] = 3221225472;
      v60[2] = __39___MTLBinaryArchive_loadFromURL_error___block_invoke;
      v60[3] = &unk_1E6EEA9B8;
      v60[4] = self;
      v60[5] = v62.var2;
      v24 = [MTLLoader deserializeAIRNTToolsVersionForSlice:v62.var2 sliceOffset:&v65 version:v60 reader:?];

      if (v24)
      {
        *__p = *&v65.__r_.__value_.__l.__data_;
        LODWORD(__p[2]) = v65.__r_.__value_.__r.__words[2];
        v25 = [_MTLBinaryArchive archiveVersionCompatible:__p isMatchingSlice:v62.var0 device:self->_device];
        if (v25 == 2)
        {
          p_var13 = &v61;
          v27 = v20;
          goto LABEL_43;
        }
      }

      else
      {
        v25 = 0;
      }

      v29 = (self->_options & 0x10) == 0 || v62.var13.var0 == 0 || v25 == 0;
      v21 = v29;
      if (v29)
      {
        v30 = v21;
LABEL_61:
        v33 = !v62.var9;
        v14 = v33 && v30;
        if (!v33 && v30)
        {
          v14 = [(_MTLBinaryArchive *)self loadAirSliceAtOffset:v62.var10 sliceLength:v62.var11];
        }

        if (!(v10 | v20) && !self->_hasBuiltins && ((v14 ^ 1) & 1) == 0)
        {
          [(MTLDevice *)self->_device recordBinaryArchiveUsage:a3];
        }

        goto LABEL_68;
      }

      v30 = v21;
      if ((v24 ^ 1))
      {
        goto LABEL_61;
      }

      v27 = 0;
      p_var13 = &v62.var13;
LABEL_43:
      v30 = [(_MTLBinaryArchive *)self loadAirntBlocksForSlice:p_var13 sliceOffset:v62.var2 skipAIRValidation:v27];
      v21 = 0;
      goto LABEL_61;
    }

    LOBYTE(v14) = 0;
  }

  else
  {
    LOBYTE(v14) = 0;
    self->_fileData = 0;
    self->_internalArchiverId = 0;
  }

LABEL_103:
  v11 = v14;
  if (a4 && (v14 & 1) == 0)
  {
    v48 = newErrorWithMessage([MEMORY[0x1E696AEC0] stringWithFormat:@"The file %@ has an invalid format.", a3], MTLBinaryArchiveErrorInvalidFile);
    *a4 = v48;
    v49 = v48;
    LOBYTE(v14) = 0;
    v11 = 0;
  }

LABEL_10:
  objc_autoreleasePoolPop(v7);
  v15 = *MEMORY[0x1E69E9840];
  return v14 & v11 & 1;
}

- (id)materializeFromFileOffset:(unint64_t)a3 hash:(id *)a4
{
  v29 = 0;
  v30 = &v29;
  v31 = 0x2020000000;
  v32 = 0;
  v25 = 0;
  v26 = &v25;
  v27 = 0x2020000000;
  v28 = 0;
  v19 = 0;
  v20 = &v19;
  v21 = 0x3052000000;
  v22 = __Block_byref_object_copy_;
  v23 = __Block_byref_object_dispose_;
  v24 = 0;
  v13 = 0;
  v14 = &v13;
  v15 = 0x3052000000;
  v16 = __Block_byref_object_copy_;
  v17 = __Block_byref_object_dispose_;
  v18 = 0;
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __52___MTLBinaryArchive_materializeFromFileOffset_hash___block_invoke;
  v12[3] = &unk_1E6EEAA80;
  v12[4] = &v29;
  v12[5] = &v25;
  v12[8] = a3;
  v12[9] = a4;
  v12[6] = &v19;
  v12[7] = &v13;
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __52___MTLBinaryArchive_materializeFromFileOffset_hash___block_invoke_2;
  v11[3] = &unk_1E6EEA9B8;
  v11[4] = self;
  v11[5] = a3;
  if ([MTLLoader deserializeMachOWrapperWithType:v12 payloadHandler:v11 reader:?]&& (v5 = v26[3]) != 0 && (subrange = dispatch_data_create_subrange([(MTLLoadedFileContentsWrapper *)self->_fileData dispatchData], v30[3], v5)) != 0)
  {
    v7 = subrange;
    v8 = [MTLBinaryEntry alloc];
    v9 = [(MTLBinaryEntry *)v8 initWithData:v7 importedSymbols:v14[5] importedLibraries:v20[5]];
    dispatch_release(v7);
  }

  else
  {
    v9 = 0;
  }

  _Block_object_dispose(&v13, 8);
  _Block_object_dispose(&v19, 8);
  _Block_object_dispose(&v25, 8);
  _Block_object_dispose(&v29, 8);
  return v9;
}

- (void)materializeAllAIRNTLegacy
{
  v10 = *MEMORY[0x1E69E9840];
  for (i = self->_executableFileIndex.__table_.__first_node_.__next_; i; i = *i)
  {
    MTLHashKey::MTLHashKey(&v7, (i + 16));
    v4 = *(i + 7);
    v8 = *(i + 6);
    v9 = v4;
    v5 = [[MTLBinaryKey alloc] initWithHash:&v7];
    if (![(NSMutableDictionary *)self->_entries objectForKey:v5])
    {
      [(_MTLBinaryArchive *)self materializeAIRNTBlockForKey:v5 reflectionType:0];
    }

    MTLHashKey::~MTLHashKey(&v7);
  }

  v6 = *MEMORY[0x1E69E9840];
}

- (void)materializeAll
{
  v14 = *MEMORY[0x1E69E9840];
  p_legacyPipelineFileIndex = &self->_legacyPipelineFileIndex;
  p_end_node = &self->_legacyPipelineFileIndex.__tree_.__end_node_;
  begin_node = self->_legacyPipelineFileIndex.__tree_.__begin_node_;
  if (begin_node != &self->_legacyPipelineFileIndex.__tree_.__end_node_)
  {
    do
    {
      v6 = [(_MTLBinaryArchive *)self materializeFromFileOffset:begin_node[9].__left_ hash:v13];
      if (v6)
      {
        MTLHashKey::MTLHashKey(&v12, v13);
        v7 = [[MTLBinaryKey alloc] initWithHash:&v12];
        if (![(NSMutableDictionary *)self->_entries objectForKey:v7])
        {
          [(NSMutableDictionary *)self->_entries setObject:v6 forKey:v7];
        }

        MTLHashKey::~MTLHashKey(&v12);
      }

      left = begin_node[1].__left_;
      if (left)
      {
        do
        {
          v9 = left;
          left = left->__left_;
        }

        while (left);
      }

      else
      {
        do
        {
          v9 = begin_node[2].__left_;
          v10 = v9->__left_ == begin_node;
          begin_node = v9;
        }

        while (!v10);
      }

      begin_node = v9;
    }

    while (v9 != p_end_node);
  }

  std::__tree<flatbuffers::Offset<flatbuffers::String>,flatbuffers::FlatBufferBuilder::StringOffsetCompare,std::allocator<flatbuffers::Offset<flatbuffers::String>>>::destroy(p_legacyPipelineFileIndex, p_legacyPipelineFileIndex->__tree_.__end_node_.__left_);
  p_legacyPipelineFileIndex->__tree_.__end_node_.__left_ = 0;
  p_legacyPipelineFileIndex->__tree_.__size_ = 0;
  p_legacyPipelineFileIndex->__tree_.__begin_node_ = p_end_node;
  v11 = *MEMORY[0x1E69E9840];
}

- (id)materializeFromHash:(id *)a3 fileIndex:(void *)a4
{
  v7 = std::__tree<std::__value_type<MTLUINT256_t,std::pair<unsigned int,unsigned long long>>,std::__map_value_compare<MTLUINT256_t,std::__value_type<MTLUINT256_t,std::pair<unsigned int,unsigned long long>>,CompareHash,true>,std::allocator<std::__value_type<MTLUINT256_t,std::pair<unsigned int,unsigned long long>>>>::lower_bound[abi:ne200100]<MTLUINT256_t>(a4, a3->var0);
  if (a4 + 8 == v7)
  {
    return 0;
  }

  v8 = v7;
  if (memcmp(v7 + 8, a3, v7[16]))
  {
    return 0;
  }

  v10 = [(_MTLBinaryArchive *)self materializeFromFileOffset:v8[9] hash:a3];
  std::__tree<std::__value_type<MTLUINT256_t,std::pair<unsigned int,unsigned long long>>,std::__map_value_compare<MTLUINT256_t,std::__value_type<MTLUINT256_t,std::pair<unsigned int,unsigned long long>>,CompareHash,true>,std::allocator<std::__value_type<MTLUINT256_t,std::pair<unsigned int,unsigned long long>>>>::__remove_node_pointer(a4, v8);
  operator delete(v8);
  return v10;
}

- (id)formattedDescription:(unint64_t)a3
{
  v7 = 0;
  v8 = &v7;
  v9 = 0x3052000000;
  v10 = __Block_byref_object_copy_;
  v11 = __Block_byref_object_dispose_;
  v12 = 0;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __42___MTLBinaryArchive_formattedDescription___block_invoke;
  block[3] = &unk_1E6EEAAA8;
  block[5] = &v7;
  block[6] = a3;
  block[4] = self;
  queue = self->_queue;
  if (queue)
  {
    dispatch_sync(queue, block);
  }

  else
  {
    __42___MTLBinaryArchive_formattedDescription___block_invoke(block);
  }

  v4 = v8[5];
  _Block_object_dispose(&v7, 8);
  return v4;
}

- (BOOL)storeComputePipelineDescriptor:(id)a3
{
  v18 = *MEMORY[0x1E69E9840];
  if (self->_isLegacy || a3 && (self->_options & 0xC0) == 0 && (MTLMetalScriptBuilder::addComputePipelineWithDescriptor(self->_mtlScriptBuilder.__ptr_, a3), self->_isLegacy))
  {
    if (self->_options)
    {
      v15 = 0u;
      v16 = 0u;
      v13 = 0u;
      v14 = 0u;
      v5 = [a3 preloadedLibraries];
      v6 = [v5 countByEnumeratingWithState:&v13 objects:v17 count:16];
      if (v6)
      {
        v7 = v6;
        v8 = *v14;
        do
        {
          v9 = 0;
          do
          {
            if (*v14 != v8)
            {
              objc_enumerationMutation(v5);
            }

            MTLPipelineCollection::addDynamicLibraryData(self->_pipelineCollection.__ptr_, self->_collectArchives, !self->_collectArchives, *(*(&v13 + 1) + 8 * v9++));
          }

          while (v7 != v9);
          v7 = [v5 countByEnumeratingWithState:&v13 objects:v17 count:16];
        }

        while (v7);
      }

      v10 = [objc_msgSend(a3 "computeFunction")];
      MTLPipelineCollection::addLibraryData(self->_pipelineCollection.__ptr_, self->_collectArchives, !self->_collectArchives, v10);
      MTLPipelineCollection::addFunction(self->_pipelineCollection.__ptr_, [a3 computeFunction], v10, 0);
      MTLPipelineCollection::addComputePipeline(self->_pipelineCollection.__ptr_, a3);
    }
  }

  v11 = *MEMORY[0x1E69E9840];
  return 1;
}

- (BOOL)storeRenderPipelineDescriptor:(id)a3
{
  v51 = *MEMORY[0x1E69E9840];
  if (self->_isLegacy || a3 && (self->_options & 0xC0) == 0 && (MTLMetalScriptBuilder::addRenderPipelineWithDescriptor(self->_mtlScriptBuilder.__ptr_, a3), self->_isLegacy))
  {
    if (self->_options)
    {
      v45 = 0u;
      v46 = 0u;
      v43 = 0u;
      v44 = 0u;
      v5 = [a3 vertexPreloadedLibraries];
      v6 = [v5 countByEnumeratingWithState:&v43 objects:v50 count:16];
      if (v6)
      {
        v7 = v6;
        v8 = *v44;
        do
        {
          v9 = 0;
          do
          {
            if (*v44 != v8)
            {
              objc_enumerationMutation(v5);
            }

            MTLPipelineCollection::addDynamicLibraryData(self->_pipelineCollection.__ptr_, self->_collectArchives, !self->_collectArchives, *(*(&v43 + 1) + 8 * v9++));
          }

          while (v7 != v9);
          v7 = [v5 countByEnumeratingWithState:&v43 objects:v50 count:16];
        }

        while (v7);
      }

      v41 = 0u;
      v42 = 0u;
      v39 = 0u;
      v40 = 0u;
      v10 = [a3 fragmentPreloadedLibraries];
      v11 = [v10 countByEnumeratingWithState:&v39 objects:v49 count:16];
      if (v11)
      {
        v12 = v11;
        v13 = *v40;
        do
        {
          v14 = 0;
          do
          {
            if (*v40 != v13)
            {
              objc_enumerationMutation(v10);
            }

            MTLPipelineCollection::addDynamicLibraryData(self->_pipelineCollection.__ptr_, self->_collectArchives, !self->_collectArchives, *(*(&v39 + 1) + 8 * v14++));
          }

          while (v12 != v14);
          v12 = [v10 countByEnumeratingWithState:&v39 objects:v49 count:16];
        }

        while (v12);
      }

      v37 = 0u;
      v38 = 0u;
      v35 = 0u;
      v36 = 0u;
      v15 = [a3 objectPreloadedLibraries];
      v16 = [v15 countByEnumeratingWithState:&v35 objects:v48 count:16];
      if (v16)
      {
        v17 = v16;
        v18 = *v36;
        do
        {
          v19 = 0;
          do
          {
            if (*v36 != v18)
            {
              objc_enumerationMutation(v15);
            }

            MTLPipelineCollection::addDynamicLibraryData(self->_pipelineCollection.__ptr_, self->_collectArchives, !self->_collectArchives, *(*(&v35 + 1) + 8 * v19++));
          }

          while (v17 != v19);
          v17 = [v15 countByEnumeratingWithState:&v35 objects:v48 count:16];
        }

        while (v17);
      }

      v33 = 0u;
      v34 = 0u;
      v31 = 0u;
      v32 = 0u;
      v20 = [a3 meshPreloadedLibraries];
      v21 = [v20 countByEnumeratingWithState:&v31 objects:v47 count:16];
      if (v21)
      {
        v22 = v21;
        v23 = *v32;
        do
        {
          v24 = 0;
          do
          {
            if (*v32 != v23)
            {
              objc_enumerationMutation(v20);
            }

            MTLPipelineCollection::addDynamicLibraryData(self->_pipelineCollection.__ptr_, self->_collectArchives, !self->_collectArchives, *(*(&v31 + 1) + 8 * v24++));
          }

          while (v22 != v24);
          v22 = [v20 countByEnumeratingWithState:&v31 objects:v47 count:16];
        }

        while (v22);
      }

      v25 = [objc_msgSend(a3 "vertexFunction")];
      v26 = [objc_msgSend(a3 "fragmentFunction")];
      MTLPipelineCollection::addLibraryData(self->_pipelineCollection.__ptr_, self->_collectArchives, !self->_collectArchives, v25);
      MTLPipelineCollection::addLibraryData(self->_pipelineCollection.__ptr_, self->_collectArchives, !self->_collectArchives, v26);
      MTLPipelineCollection::addFunction(self->_pipelineCollection.__ptr_, [a3 vertexFunction], v25, 0);
      MTLPipelineCollection::addFunction(self->_pipelineCollection.__ptr_, [a3 fragmentFunction], v26, 0);
      v27 = [objc_msgSend(a3 "objectFunction")];
      v28 = [objc_msgSend(a3 "meshFunction")];
      MTLPipelineCollection::addLibraryData(self->_pipelineCollection.__ptr_, self->_collectArchives, !self->_collectArchives, v27);
      MTLPipelineCollection::addLibraryData(self->_pipelineCollection.__ptr_, self->_collectArchives, !self->_collectArchives, v28);
      MTLPipelineCollection::addFunction(self->_pipelineCollection.__ptr_, [a3 objectFunction], v27, 0);
      MTLPipelineCollection::addFunction(self->_pipelineCollection.__ptr_, [a3 meshFunction], v28, 0);
      MTLPipelineCollection::addRenderPipeline(self->_pipelineCollection.__ptr_, a3);
    }
  }

  v29 = *MEMORY[0x1E69E9840];
  return 1;
}

- (BOOL)storeTileRenderPipelineDescriptor:(id)a3
{
  v18 = *MEMORY[0x1E69E9840];
  if (self->_isLegacy || a3 && (self->_options & 0xC0) == 0 && (MTLMetalScriptBuilder::addTileRenderPipelineWithDescriptor(self->_mtlScriptBuilder.__ptr_, a3), self->_isLegacy))
  {
    if (self->_options)
    {
      v15 = 0u;
      v16 = 0u;
      v13 = 0u;
      v14 = 0u;
      v5 = [a3 preloadedLibraries];
      v6 = [v5 countByEnumeratingWithState:&v13 objects:v17 count:16];
      if (v6)
      {
        v7 = v6;
        v8 = *v14;
        do
        {
          v9 = 0;
          do
          {
            if (*v14 != v8)
            {
              objc_enumerationMutation(v5);
            }

            MTLPipelineCollection::addDynamicLibraryData(self->_pipelineCollection.__ptr_, self->_collectArchives, !self->_collectArchives, *(*(&v13 + 1) + 8 * v9++));
          }

          while (v7 != v9);
          v7 = [v5 countByEnumeratingWithState:&v13 objects:v17 count:16];
        }

        while (v7);
      }

      v10 = [objc_msgSend(a3 "tileFunction")];
      MTLPipelineCollection::addLibraryData(self->_pipelineCollection.__ptr_, self->_collectArchives, !self->_collectArchives, v10);
      MTLPipelineCollection::addFunction(self->_pipelineCollection.__ptr_, [a3 tileFunction], v10, 0);
      MTLPipelineCollection::addTileRenderPipeline(self->_pipelineCollection.__ptr_, a3);
    }
  }

  v11 = *MEMORY[0x1E69E9840];
  return 1;
}

- (BOOL)storeMeshRenderPipelineDescriptor:(id)a3
{
  v40 = *MEMORY[0x1E69E9840];
  if (self->_isLegacy || a3 && (self->_options & 0xC0) == 0 && (MTLMetalScriptBuilder::addMeshRenderPipelineWithDescriptor(self->_mtlScriptBuilder.__ptr_, a3), self->_isLegacy))
  {
    if (self->_options)
    {
      v35 = 0u;
      v36 = 0u;
      v33 = 0u;
      v34 = 0u;
      v5 = [a3 objectPreloadedLibraries];
      v6 = [v5 countByEnumeratingWithState:&v33 objects:v39 count:16];
      if (v6)
      {
        v7 = v6;
        v8 = *v34;
        do
        {
          v9 = 0;
          do
          {
            if (*v34 != v8)
            {
              objc_enumerationMutation(v5);
            }

            MTLPipelineCollection::addDynamicLibraryData(self->_pipelineCollection.__ptr_, self->_collectArchives, !self->_collectArchives, *(*(&v33 + 1) + 8 * v9++));
          }

          while (v7 != v9);
          v7 = [v5 countByEnumeratingWithState:&v33 objects:v39 count:16];
        }

        while (v7);
      }

      v31 = 0u;
      v32 = 0u;
      v29 = 0u;
      v30 = 0u;
      v10 = [a3 meshPreloadedLibraries];
      v11 = [v10 countByEnumeratingWithState:&v29 objects:v38 count:16];
      if (v11)
      {
        v12 = v11;
        v13 = *v30;
        do
        {
          v14 = 0;
          do
          {
            if (*v30 != v13)
            {
              objc_enumerationMutation(v10);
            }

            MTLPipelineCollection::addDynamicLibraryData(self->_pipelineCollection.__ptr_, self->_collectArchives, !self->_collectArchives, *(*(&v29 + 1) + 8 * v14++));
          }

          while (v12 != v14);
          v12 = [v10 countByEnumeratingWithState:&v29 objects:v38 count:16];
        }

        while (v12);
      }

      v27 = 0u;
      v28 = 0u;
      v25 = 0u;
      v26 = 0u;
      v15 = [a3 fragmentPreloadedLibraries];
      v16 = [v15 countByEnumeratingWithState:&v25 objects:v37 count:16];
      if (v16)
      {
        v17 = v16;
        v18 = *v26;
        do
        {
          v19 = 0;
          do
          {
            if (*v26 != v18)
            {
              objc_enumerationMutation(v15);
            }

            MTLPipelineCollection::addDynamicLibraryData(self->_pipelineCollection.__ptr_, self->_collectArchives, !self->_collectArchives, *(*(&v25 + 1) + 8 * v19++));
          }

          while (v17 != v19);
          v17 = [v15 countByEnumeratingWithState:&v25 objects:v37 count:16];
        }

        while (v17);
      }

      v20 = [objc_msgSend(a3 "objectFunction")];
      v21 = [objc_msgSend(a3 "meshFunction")];
      v22 = [objc_msgSend(a3 "fragmentFunction")];
      MTLPipelineCollection::addLibraryData(self->_pipelineCollection.__ptr_, self->_collectArchives, !self->_collectArchives, v20);
      MTLPipelineCollection::addLibraryData(self->_pipelineCollection.__ptr_, self->_collectArchives, !self->_collectArchives, v21);
      MTLPipelineCollection::addLibraryData(self->_pipelineCollection.__ptr_, self->_collectArchives, !self->_collectArchives, v22);
      MTLPipelineCollection::addFunction(self->_pipelineCollection.__ptr_, [a3 objectFunction], v20, 0);
      MTLPipelineCollection::addFunction(self->_pipelineCollection.__ptr_, [a3 meshFunction], v21, 0);
      MTLPipelineCollection::addFunction(self->_pipelineCollection.__ptr_, [a3 fragmentFunction], v22, 0);
      MTLPipelineCollection::addMeshRenderPipeline(self->_pipelineCollection.__ptr_, a3);
    }
  }

  v23 = *MEMORY[0x1E69E9840];
  return 1;
}

- (BOOL)addComputePipelineFunctionsWithDescriptor:(id)a3 error:(id *)a4
{
  if (a3)
  {

    return [_MTLBinaryArchive addComputePipelineFunctionsWithDescriptor:"addComputePipelineFunctionsWithDescriptor:options:error:" options:? error:?];
  }

  else
  {
    if (a4)
    {
      *a4 = newErrorWithMessage(&cfstr_ComputePipelin.isa, MTLBinaryArchiveErrorUnexpectedElement);
    }

    return 0;
  }
}

- (BOOL)addComputePipelineFunctionsWithDescriptor:(id)a3 options:(unint64_t)a4 error:(id *)a5
{
  [(_MTLBinaryArchive *)self storeComputePipelineDescriptor:?];
  if ((self->_options & 2) == 0)
  {
    return 1;
  }

  v10 = [(MTLDevice *)self->_device compiler];

  return [v10 addComputePipelineStateWithDescriptor:a3 destinationBinaryArchive:self options:a4 error:a5];
}

- (BOOL)addRenderPipelineFunctionsWithDescriptor:(id)a3 error:(id *)a4
{
  if (a3)
  {

    return [_MTLBinaryArchive addRenderPipelineFunctionsWithDescriptor:"addRenderPipelineFunctionsWithDescriptor:options:error:" options:? error:?];
  }

  else
  {
    if (a4)
    {
      *a4 = newErrorWithMessage(&cfstr_RenderPipeline.isa, MTLBinaryArchiveErrorUnexpectedElement);
    }

    return 0;
  }
}

- (BOOL)addRenderPipelineFunctionsWithDescriptor:(id)a3 options:(unint64_t)a4 error:(id *)a5
{
  [(_MTLBinaryArchive *)self storeRenderPipelineDescriptor:?];
  if ((self->_options & 2) == 0)
  {
    return 1;
  }

  v10 = [(MTLDevice *)self->_device compiler];

  return [v10 addRenderPipelineStateWithDescriptor:a3 destinationBinaryArchive:self options:a4 error:a5];
}

- (BOOL)addTileRenderPipelineFunctionsWithDescriptor:(id)a3 error:(id *)a4
{
  if (a3)
  {

    return [_MTLBinaryArchive addTileRenderPipelineFunctionsWithDescriptor:"addTileRenderPipelineFunctionsWithDescriptor:options:error:" options:? error:?];
  }

  else
  {
    if (a4)
    {
      *a4 = newErrorWithMessage(&cfstr_TilePipelineDe.isa, MTLBinaryArchiveErrorUnexpectedElement);
    }

    return 0;
  }
}

- (BOOL)addTileRenderPipelineFunctionsWithDescriptor:(id)a3 options:(unint64_t)a4 error:(id *)a5
{
  [(_MTLBinaryArchive *)self storeTileRenderPipelineDescriptor:?];
  if ((self->_options & 2) == 0)
  {
    return 1;
  }

  v10 = [(MTLDevice *)self->_device compiler];

  return [v10 addTileRenderPipelineStateWithDescriptor:a3 destinationBinaryArchive:self options:a4 error:a5];
}

- (BOOL)addMeshRenderPipelineFunctionsWithDescriptor:(id)a3 error:(id *)a4
{
  if (a3)
  {

    return [_MTLBinaryArchive addMeshRenderPipelineFunctionsWithDescriptor:"addMeshRenderPipelineFunctionsWithDescriptor:options:error:" options:? error:?];
  }

  else
  {
    if (a4)
    {
      *a4 = newErrorWithMessage(&cfstr_MeshPipelineDe.isa, MTLBinaryArchiveErrorUnexpectedElement);
    }

    return 0;
  }
}

- (BOOL)addMeshRenderPipelineFunctionsWithDescriptor:(id)a3 options:(unint64_t)a4 error:(id *)a5
{
  [(_MTLBinaryArchive *)self storeMeshRenderPipelineDescriptor:?];
  if ((self->_options & 2) == 0)
  {
    return 1;
  }

  v10 = [(MTLDevice *)self->_device compiler];

  return [v10 addMeshRenderPipelineStateWithDescriptor:a3 destinationBinaryArchive:self options:a4 error:a5];
}

- (BOOL)addFunctionWithDescriptor:(id)a3 library:(id)a4 error:(id *)a5
{
  if (self->_isLegacy && (options = self->_options, (options & 6) == 0))
  {
    if ((options & 1) == 0)
    {
      return 1;
    }

    v10 = [a4 newFunctionWithDescriptor:a3 error:a5];
  }

  else
  {
    v10 = [a4 newFunctionWithDescriptor:a3 destinationArchive:self error:a5];
  }

  v11 = v10;
  if (!v10)
  {
    return 0;
  }

  if (self->_isLegacy || (v14 = 1, a3) && (self->_options & 0xC0) == 0 && (MTLMetalScriptBuilder::addFunctionWithDescriptor(self->_mtlScriptBuilder.__ptr_, v10, a4, a3), self->_isLegacy))
  {
    if (self->_options)
    {
      v12 = [a4 newFunctionWithName:{objc_msgSend(a3, "name")}];
      if (!v12)
      {
        v14 = 0;
        if (a5)
        {
          *a5 = newErrorWithMessage([MEMORY[0x1E696AEC0] stringWithFormat:@"library does not contain base function '%@'", objc_msgSend(a3, "name")], MTLBinaryArchiveErrorUnexpectedElement);
        }

        goto LABEL_10;
      }

      v13 = v12;
      MTLPipelineCollection::addLibraryData(self->_pipelineCollection.__ptr_, self->_collectArchives, !self->_collectArchives, [v12 libraryData]);
      MTLPipelineCollection::addSpecializedFunction(self->_pipelineCollection.__ptr_, v13, v11, a4, a3);
    }

    v14 = 1;
  }

LABEL_10:

  return v14;
}

- (BOOL)addLibraryWithDescriptor:(id)a3 error:(id *)a4
{
  if (!self->_isLegacy || (self->_options & 4) != 0)
  {
    v6 = [(MTLDevice *)self->_device newLibraryWithStitchedDescriptor:a3 destinationBinaryArchive:self error:a4];
    if (v6)
    {
      v7 = v6;
      if (!self->_isLegacy && a3 && (self->_options & 0xC0) == 0)
      {
        MTLMetalScriptBuilder::addLibraryWithDescriptor(self->_mtlScriptBuilder.__ptr_, v6, a3);
      }

      LOBYTE(v6) = 1;
    }
  }

  else
  {
    LOBYTE(v6) = 0;
  }

  return v6;
}

- (BOOL)getSpecializedFunctionArchivesToSerialize:(void *)a3
{
  v15 = *MEMORY[0x1E69E9840];
  next = self->_legacySpecializedFunctions.__table_.__first_node_.__next_;
  if (!next)
  {
    goto LABEL_9;
  }

  v6 = 1;
  do
  {
    v7 = *(next + 2);
    v13[0] = *(next + 1);
    v13[1] = v7;
    object = *(next + 6);
    if (object)
    {
      std::__hash_table<std::__hash_value_type<MTLUINT256_t,NSObject  {objcproto16OS_dispatch_data}*>,std::__unordered_map_hasher<MTLUINT256_t,std::__hash_value_type<MTLUINT256_t,NSObject  {objcproto16OS_dispatch_data}*>,UnorderedContainerHash,UnorderedContainerHash,true>,std::__unordered_map_equal<MTLUINT256_t,std::__hash_value_type<MTLUINT256_t,NSObject  {objcproto16OS_dispatch_data}*>,UnorderedContainerHash,UnorderedContainerHash,true>,std::allocator<std::__hash_value_type<MTLUINT256_t,NSObject  {objcproto16OS_dispatch_data}*>>>::__emplace_unique_key_args<MTLUINT256_t,std::pair<MTLUINT256_t const,NSObject  {objcproto16OS_dispatch_data}*> const&>(a3, v13);
      v9 = v8;
      if (v8)
      {
        dispatch_retain(object);
      }

      v6 &= v9;
    }

    next = *next;
  }

  while (next);
  if ((v6 & 1) == 0)
  {
    result = 0;
  }

  else
  {
LABEL_9:
    v12[0] = MEMORY[0x1E69E9820];
    v12[1] = 3221225472;
    v12[2] = __63___MTLBinaryArchive_getSpecializedFunctionArchivesToSerialize___block_invoke;
    v12[3] = &__block_descriptor_40_e49_B24__0r_____32C__8__NSObject_OS_dispatch_data__16l;
    v12[4] = a3;
    result = [(_MTLBinaryArchive *)self enumerateSpecializedFunctionArchivesFromBackingFile:v12];
  }

  v11 = *MEMORY[0x1E69E9840];
  return result;
}

- (id)flatBufferFromJSON:(id)a3 schema:(const char *)a4 schemaSize:(unint64_t)a5
{
  size_ptr = 0;
  buffer_ptr = 0;
  v5 = dispatch_data_create_map(a3, &buffer_ptr, &size_ptr);
  if (size_ptr)
  {
    flatbuffers::IDLOptions::IDLOptions(&v7);
    flatbuffers::Parser::Parser(v8, &v7);
  }

  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    [_MTLBinaryArchive flatBufferFromJSON:schema:schemaSize:];
    if (!v5)
    {
      return 0;
    }

    goto LABEL_5;
  }

  if (v5)
  {
LABEL_5:
    dispatch_release(v5);
  }

  return 0;
}

- (id)materializeAirScript:(void *)a3
{
  v5 = *(a3 + 4);
  if (!v5)
  {
    v10 = mapFileToMemory(*(a3 + 11), 1);
    if (!v10)
    {
      return 0;
    }

    v11 = v10;
    v12 = *(a3 + 11);
    if (hasFileExtension(v12, ".airp-json"))
    {
      v13 = &Air::PipelineScriptBinarySchema::data(void)::bfbsData;
      v14 = self;
      v15 = v11;
      v16 = 37264;
    }

    else if (hasFileExtension(v12, ".aird-json"))
    {
      v13 = &Air::DylibScriptBinarySchema::data(void)::bfbsData;
      v14 = self;
      v15 = v11;
      v16 = 712;
    }

    else
    {
      if (!hasFileExtension(v12, ".airf-json"))
      {
        v17 = 0;
        goto LABEL_14;
      }

      v13 = &Air::ConstantsSpecializationScriptBinarySchema::data(void)::bfbsData;
      v14 = self;
      v15 = v11;
      v16 = 12584;
    }

    v17 = [(_MTLBinaryArchive *)v14 flatBufferFromJSON:v15 schema:v13 schemaSize:v16];
LABEL_14:
    dispatch_release(v11);
    return v17;
  }

  v6 = *(a3 + 3);
  v7 = *(a3 + 7);
  v8 = [(MTLLoadedFileContentsWrapper *)self->_fileData dispatchData];

  return dispatch_data_create_subrange(v8, v7 + v6, v5);
}

- (id)newLibraryInArchiveWithRange:(_NSRange)a3 error:(id *)a4
{
  length = a3.length;
  location = a3.location;
  v16 = a3.location;
  v8 = std::__hash_table<std::__hash_value_type<unsigned long,MTLStructTypeInternal *>,std::__unordered_map_hasher<unsigned long,std::__hash_value_type<unsigned long,MTLStructTypeInternal *>,std::hash<unsigned long>,std::equal_to<unsigned long>,true>,std::__unordered_map_equal<unsigned long,std::__hash_value_type<unsigned long,MTLStructTypeInternal *>,std::equal_to<unsigned long>,std::hash<unsigned long>,true>,std::allocator<std::__hash_value_type<unsigned long,MTLStructTypeInternal *>>>::find<unsigned long>(&self->_libCache.__table_.__bucket_list_.__ptr_, &v16);
  if (v8)
  {
    return v8[3];
  }

  subrange = dispatch_data_create_subrange([(MTLLoadedFileContentsWrapper *)self->_fileData dispatchData], location, length);
  v9 = MTLLibraryBuilder::newLibraryWithData(*(self->_device + 55), self->_device, subrange, a4, v11, v12, v13, v14);
  dispatch_release(subrange);
  return v9;
}

- (id)newLibraryInArchiveAtPos:(void *)a3 atIndex:(unsigned int)a4 error:(id *)a5
{
  v56 = *MEMORY[0x1E69E9840];
  v9 = *(*a3 + 8 * a4);
  if (!*(v9 + 8))
  {
    std::string::basic_string[abi:ne200100]<0>(__p, *(v9 + 16));
    v11 = std::__hash_table<std::__hash_value_type<std::string,DataBlock>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,DataBlock>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,DataBlock>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,DataBlock>>>::find<std::string>(&self->_extLibCache.__table_.__bucket_list_.__ptr_, __p);
    if (v11)
    {
      v46 = v11[5];
    }

    else
    {
      v40 = mapFileToMemory(*(*(*a3 + 8 * a4) + 16), (self->_options & 0x20) == 0);
      if (!v40)
      {
        if (!a5 || (self->_options & 0x20) != 0)
        {
          v42 = 0;
          v46 = 0;
        }

        else
        {
          v42 = 0;
          v46 = 0;
          *a5 = newErrorWithMessage([MEMORY[0x1E696AEC0] stringWithFormat:@"Failed to map library at path: %s", *(*(*a3 + 8 * a4) + 16)], MTLBinaryArchiveErrorInvalidFile);
        }

LABEL_41:
        if (v55 < 0)
        {
          operator delete(__p[0]);
          if (v42)
          {
            goto LABEL_44;
          }
        }

        else if (v42)
        {
          goto LABEL_44;
        }

        v46 = 0;
        goto LABEL_44;
      }

      v46 = MTLLibraryBuilder::newLibraryWithData(*(self->_device + 55), self->_device, v40, a5, v36, v37, v38, v39);
      if ([(_MTLLibrary *)v46 isStub])
      {
        self->_bitcodeStripped = 1;
      }

      v41 = v46;
      *&v48 = __p;
      std::__hash_table<std::__hash_value_type<std::string,objc_object  {objcproto13MTLLibrarySPI}*>,std::__unordered_map_hasher<std::string,objc_object  {objcproto13MTLLibrarySPI}*,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,objc_object  {objcproto13MTLLibrarySPI}*,std::equal_to,std::hash,true>,std::allocator<objc_object  {objcproto13MTLLibrarySPI}*>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string const&>,std::piecewise_construct_t const&<>>(&self->_extLibCache.__table_.__bucket_list_.__ptr_, __p)[5] = v41;
      dispatch_release(v40);
    }

    v42 = 1;
    goto LABEL_41;
  }

  v47 = *(a3 + 7) + *v9;
  v10 = std::__hash_table<std::__hash_value_type<unsigned long,MTLStructTypeInternal *>,std::__unordered_map_hasher<unsigned long,std::__hash_value_type<unsigned long,MTLStructTypeInternal *>,std::hash<unsigned long>,std::equal_to<unsigned long>,true>,std::__unordered_map_equal<unsigned long,std::__hash_value_type<unsigned long,MTLStructTypeInternal *>,std::equal_to<unsigned long>,std::hash<unsigned long>,true>,std::allocator<std::__hash_value_type<unsigned long,MTLStructTypeInternal *>>>::find<unsigned long>(&self->_libCache.__table_.__bucket_list_.__ptr_, &v47);
  if (v10)
  {
    v46 = v10[3];
  }

  else
  {
    v12 = *(*a3 + 8 * a4);
    v13 = v47;
    v14 = *(v12 + 8);
    object = dispatch_data_create_subrange([(MTLLoadedFileContentsWrapper *)self->_fileData dispatchData], v47, v14);
    v46 = MTLLibraryBuilder::newLibraryWithData(*(self->_device + 55), self->_device, object, a5, v15, v16, v17, v18);
    if ([(_MTLLibrary *)v46 isStub])
    {
      self->_bitcodeStripped = 1;
    }

    v19 = [(NSArray *)[(_MTLLibrary *)v46 specializedFunctionHashes] count];
    v20 = [(NSArray *)[(_MTLLibrary *)v46 stitchingFunctionHashes] count];
    v21 = [(NSArray *)[(_MTLLibrary *)v46 functionHashes] count];
    if ((self->_options & 0x10) != 0 || (!v20 ? (v22 = v19 == 1) : (v22 = 0), !v22 ? (v23 = v20 == 1) : (v23 = 1), !v23 ? (v24 = v21 >= 0xA) : (v24 = 0), v24))
    {
      v25 = v46;
      __p[0] = &v47;
      std::__hash_table<std::__hash_value_type<unsigned long long,objc_object  {objcproto13MTLLibrarySPI}*>,std::__unordered_map_hasher<unsigned long long,objc_object  {objcproto13MTLLibrarySPI}*,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,objc_object  {objcproto13MTLLibrarySPI}*,std::equal_to,std::hash,true>,std::allocator<objc_object  {objcproto13MTLLibrarySPI}*>>::__emplace_unique_key_args<unsigned long long,std::piecewise_construct_t const&,std::tuple<unsigned long long const&>,std::piecewise_construct_t const&<>>(&self->_libCache.__table_.__bucket_list_.__ptr_, &v47)[3] = v25;
    }

    v26 = [(_MTLLibrary *)v46 specializedFunctionHashes];
    v48 = 0u;
    v49 = 0u;
    v50 = 0u;
    v51 = 0u;
    v27 = [(NSArray *)v26 countByEnumeratingWithState:&v48 objects:__p count:16];
    if (v27)
    {
      v28 = *v49;
      do
      {
        for (i = 0; i != v27; ++i)
        {
          if (*v49 != v28)
          {
            objc_enumerationMutation(v26);
          }

          [*(*(&v48 + 1) + 8 * i) getValue:v53];
          v52 = v53;
          v30 = std::__hash_table<std::__hash_value_type<MTLUINT256_t,_NSRange>,std::__unordered_map_hasher<MTLUINT256_t,std::__hash_value_type<MTLUINT256_t,_NSRange>,UnorderedContainerHash,UnorderedContainerHash,true>,std::__unordered_map_equal<MTLUINT256_t,std::__hash_value_type<MTLUINT256_t,_NSRange>,UnorderedContainerHash,UnorderedContainerHash,true>,std::allocator<std::__hash_value_type<MTLUINT256_t,_NSRange>>>::__emplace_unique_key_args<MTLUINT256_t,std::piecewise_construct_t const&,std::tuple<MTLUINT256_t const&>,std::tuple<>>(&self->_specializedLibraryCache.__table_.__bucket_list_.__ptr_, v53);
          v30[6] = v13;
          v30[7] = v14;
        }

        v27 = [(NSArray *)v26 countByEnumeratingWithState:&v48 objects:__p count:16];
      }

      while (v27);
    }

    v31 = [(_MTLLibrary *)v46 stitchingFunctionHashes];
    v48 = 0u;
    v49 = 0u;
    v50 = 0u;
    v51 = 0u;
    v32 = [(NSArray *)v31 countByEnumeratingWithState:&v48 objects:__p count:16];
    if (v32)
    {
      v33 = *v49;
      do
      {
        for (j = 0; j != v32; ++j)
        {
          if (*v49 != v33)
          {
            objc_enumerationMutation(v31);
          }

          [*(*(&v48 + 1) + 8 * j) getValue:v53];
          v52 = v53;
          v35 = std::__hash_table<std::__hash_value_type<MTLUINT256_t,_NSRange>,std::__unordered_map_hasher<MTLUINT256_t,std::__hash_value_type<MTLUINT256_t,_NSRange>,UnorderedContainerHash,UnorderedContainerHash,true>,std::__unordered_map_equal<MTLUINT256_t,std::__hash_value_type<MTLUINT256_t,_NSRange>,UnorderedContainerHash,UnorderedContainerHash,true>,std::allocator<std::__hash_value_type<MTLUINT256_t,_NSRange>>>::__emplace_unique_key_args<MTLUINT256_t,std::piecewise_construct_t const&,std::tuple<MTLUINT256_t const&>,std::tuple<>>(&self->_stitchedLibraryCache.__table_.__bucket_list_.__ptr_, v53);
          v35[6] = v13;
          v35[7] = v14;
        }

        v32 = [(NSArray *)v31 countByEnumeratingWithState:&v48 objects:__p count:16];
      }

      while (v32);
    }

    dispatch_release(object);
  }

LABEL_44:
  v43 = *MEMORY[0x1E69E9840];
  return v46;
}

- (void)preloadLibrariesInAirntObject:(void *)a3 error:(id *)a4
{
  if (*(a3 + 1) != *a3)
  {
    v14 = v7;
    v15 = v6;
    v16 = v5;
    v17 = v4;
    v18 = v8;
    v19 = v9;
    v13 = 0;
    do
    {

      if (a4 && *a4)
      {
        break;
      }

      v13 = (v13 + 1);
    }

    while (v13 < (*(a3 + 1) - *a3) >> 3);
  }
}

- (id)materializeReflectionBlock:(void *)a3
{
  if ((*(a3 + 80) & 0x20) != 0)
  {

    return MTLNewReflectionBlock(0, 0, 0);
  }

  else
  {
    v6 = *(a3 + 12);
    if (v6)
    {
      subrange = mapFileToMemory(v6, 1);
    }

    else
    {
      subrange = dispatch_data_create_subrange([(MTLLoadedFileContentsWrapper *)self->_fileData dispatchData], *(a3 + 7) + *(a3 + 16), *(a3 + 17));
    }

    v9 = subrange;
    v10 = *(a3 + 13);
    if (v10)
    {
      v11 = mapFileToMemory(v10, 1);
    }

    else
    {
      v11 = dispatch_data_create_subrange([(MTLLoadedFileContentsWrapper *)self->_fileData dispatchData], *(a3 + 7) + *(a3 + 18), *(a3 + 19));
    }

    v12 = v11;
    v13 = MTLNewReflectionBlock(0, v9, v11);

    return v13;
  }
}

- (void)materializeAirNTFromOnlineForSlice:(const MTLLoaderSliceIdentifier *)a3 entryList:(shared_ptr<std::vector<machOEntry>>)a4
{
  var0 = a4.var0;
  v90 = *MEMORY[0x1E69E9840];
  p_airntExtraBinaryEntries = &self->_airntExtraBinaryEntries;
  v85 = 0;
  v86 = 0;
  v84 = 0;
  std::vector<functionIdExtended>::__init_with_size[abi:ne200100]<functionIdExtended*,functionIdExtended*>(&v84, self->_airntExtraBinaryEntries.__begin_, self->_airntExtraBinaryEntries.__end_, (self->_airntExtraBinaryEntries.__end_ - self->_airntExtraBinaryEntries.__begin_) >> 4);
  std::unordered_map<MTLUINT256_t,MTLAirEntry *,UnorderedContainerHash,UnorderedContainerHash,std::allocator<std::pair<MTLUINT256_t const,MTLAirEntry *>>>::unordered_map(v82, &self->_specializedFunctionByHash);
  std::unordered_map<MTLUINT256_t,MTLAirEntry *,UnorderedContainerHash,UnorderedContainerHash,std::allocator<std::pair<MTLUINT256_t const,MTLAirEntry *>>>::unordered_map(v80, &self->_stitchedFunctionByHash);
  p_airntExtraBinaryEntries->__end_ = p_airntExtraBinaryEntries->__begin_;
  std::__hash_table<std::__hash_value_type<unsigned long,MTLStructTypeInternal *>,std::__unordered_map_hasher<unsigned long,std::__hash_value_type<unsigned long,MTLStructTypeInternal *>,std::hash<unsigned long>,std::equal_to<unsigned long>,true>,std::__unordered_map_equal<unsigned long,std::__hash_value_type<unsigned long,MTLStructTypeInternal *>,std::equal_to<unsigned long>,std::hash<unsigned long>,true>,std::allocator<std::__hash_value_type<unsigned long,MTLStructTypeInternal *>>>::clear(&self->_specializedFunctionByHash.__table_.__bucket_list_.__ptr_);
  std::__hash_table<std::__hash_value_type<unsigned long,MTLStructTypeInternal *>,std::__unordered_map_hasher<unsigned long,std::__hash_value_type<unsigned long,MTLStructTypeInternal *>,std::hash<unsigned long>,std::equal_to<unsigned long>,true>,std::__unordered_map_equal<unsigned long,std::__hash_value_type<unsigned long,MTLStructTypeInternal *>,std::equal_to<unsigned long>,std::hash<unsigned long>,true>,std::allocator<std::__hash_value_type<unsigned long,MTLStructTypeInternal *>>>::clear(&self->_stitchedFunctionByHash.__table_.__bucket_list_.__ptr_);
  v71 = self;
  if (v85 != v84)
  {
    v6 = 0;
    v7 = 0;
    do
    {
      v8 = [MTLBinaryKey alloc];
      v9 = [(MTLBinaryKey *)v8 initWithHash:*(v84 + 2 * v6)];
      v10 = [(NSMutableDictionary *)self->_entries objectForKey:v9];
      if (v10)
      {
        v11 = *var0;
        v12 = *(*var0 + 8);
        if (v12 >= *(*var0 + 16))
        {
          v13 = std::vector<machOEntry>::__emplace_back_slow_path<>(*var0);
        }

        else
        {
          *(v12 + 64) = 0;
          *(v12 + 32) = 0u;
          *(v12 + 48) = 0u;
          v13 = v12 + 72;
          *v12 = 0u;
          *(v12 + 16) = 0u;
        }

        *(v11 + 8) = v13;
        *(v13 - 72) = a3->var1 | (a3->var0 << 32);
        v14 = [v10 data];
        *(v13 - 40) = v14;
        dispatch_retain(v14);
        operator new();
      }

      v6 = ++v7;
    }

    while (v7 < ((v85 - v84) >> 4));
  }

  for (i = v83; i; i = *i)
  {
    v16 = *(i + 1);
    v17 = *(i + 2);
    v89 = i[6];
    v88[0] = v16;
    v88[1] = v17;
    v18 = *var0;
    v19 = *(*var0 + 8);
    if (v19 >= *(*var0 + 16))
    {
      v20 = std::vector<machOEntry>::__emplace_back_slow_path<>(*var0);
    }

    else
    {
      *(v19 + 64) = 0;
      *(v19 + 32) = 0u;
      *(v19 + 48) = 0u;
      v20 = v19 + 72;
      *v19 = 0u;
      *(v19 + 16) = 0u;
    }

    *(v18 + 8) = v20;
    *(v20 - 72) = a3->var1 | (a3->var0 << 32);
    v21 = v89;
    device = v71->_device;
    libraryBuilder = device->_libraryBuilder;
    v24 = [v89 data];
    v29 = MTLLibraryBuilder::newLibraryWithData(libraryBuilder, device, v24, 0, v25, v26, v27, v28);
    v30 = [(_MTLLibrary *)v29 newSpecializedFunctionWithHash:v88];
    if (!v30)
    {
      v30 = [(_MTLLibrary *)v29 newFunctionWithName:[(NSArray *)[(_MTLLibrary *)v29 functionNames] objectAtIndex:0]];
    }

    *(v20 - 48) = [v21 bitcode];
    *(v20 - 40) = [v30 bitcodeDataInternal];
    v31 = [v21 airScript];
    *(v20 - 56) = v31;
    dispatch_retain(v31);
    dispatch_retain(*(v20 - 48));
  }

  for (j = v81; j; j = *j)
  {
    v33 = *var0;
    v34 = *(*var0 + 8);
    if (v34 >= *(*var0 + 16))
    {
      v35 = std::vector<machOEntry>::__emplace_back_slow_path<>(*var0);
    }

    else
    {
      *(v34 + 64) = 0;
      *(v34 + 32) = 0u;
      *(v34 + 48) = 0u;
      v35 = v34 + 72;
      *v34 = 0u;
      *(v34 + 16) = 0u;
    }

    *(v33 + 8) = v35;
    *(v35 - 72) = 0;
    v36 = j[6];
    v37 = [v36 airScript];
    *(v35 - 56) = v37;
    dispatch_retain(v37);
    v38 = v71->_device;
    v39 = v38->_libraryBuilder;
    v40 = [v36 data];
    v45 = MTLLibraryBuilder::newLibraryWithData(v39, v38, v40, 0, v41, v42, v43, v44);
    size_ptr = 0;
    buffer_ptr = 0;
    v46 = dispatch_data_create_map([v36 airScript], &buffer_ptr, &size_ptr);
    v47 = (buffer_ptr + *buffer_ptr);
    v48 = (v47 - *v47);
    if (*v48 >= 9u && (v49 = v48[4]) != 0)
    {
      v50 = (v47 + v49 + *(v47 + v49));
    }

    else
    {
      v50 = 0;
    }

    v51 = (v50 - *v50);
    if (*v51 >= 7u && (v52 = v51[3]) != 0)
    {
      v53 = (v50 + v52 + *(v50 + v52));
    }

    else
    {
      v53 = 0;
    }

    v54 = (v53 - *v53);
    if (*v54 >= 5u && (v55 = v54[2]) != 0)
    {
      v56 = (v53 + v55 + *(v53 + v55));
    }

    else
    {
      v56 = 0;
    }

    flatbuffers::String::str(v56, __p);
    v57 = objc_alloc(MEMORY[0x1E696AEC0]);
    if (v77 >= 0)
    {
      v58 = __p;
    }

    else
    {
      v58 = __p[0];
    }

    v59 = [v57 initWithUTF8String:v58];
    v60 = v45;
    v61 = [(_MTLLibrary *)v45 newFunctionWithName:v59];
    *(v35 - 40) = [v61 bitcodeDataInternal];
    dispatch_release(v46);
    v74 = 0u;
    v75 = 0u;
    v72 = 0u;
    v73 = 0u;
    v62 = [v36 linkedBitcodes];
    v63 = [v62 countByEnumeratingWithState:&v72 objects:v87 count:16];
    if (v63)
    {
      v64 = *v73;
      v65 = v35 - 24;
      do
      {
        for (k = 0; k != v63; ++k)
        {
          if (*v73 != v64)
          {
            objc_enumerationMutation(v62);
          }

          [*(*(&v72 + 1) + 8 * k) getValue:v88];
          std::vector<MTLUINT256_t>::push_back[abi:ne200100](v65, v88);
        }

        v63 = [v62 countByEnumeratingWithState:&v72 objects:v87 count:16];
      }

      while (v63);
    }

    if (v77 < 0)
    {
      operator delete(__p[0]);
    }
  }

  std::__hash_table<std::__hash_value_type<unsigned long,MTLStructTypeInternal *>,std::__unordered_map_hasher<unsigned long,std::__hash_value_type<unsigned long,MTLStructTypeInternal *>,std::hash<unsigned long>,std::equal_to<unsigned long>,true>,std::__unordered_map_equal<unsigned long,std::__hash_value_type<unsigned long,MTLStructTypeInternal *>,std::equal_to<unsigned long>,std::hash<unsigned long>,true>,std::allocator<std::__hash_value_type<unsigned long,MTLStructTypeInternal *>>>::~__hash_table(v80);
  std::__hash_table<std::__hash_value_type<unsigned long,MTLStructTypeInternal *>,std::__unordered_map_hasher<unsigned long,std::__hash_value_type<unsigned long,MTLStructTypeInternal *>,std::hash<unsigned long>,std::equal_to<unsigned long>,true>,std::__unordered_map_equal<unsigned long,std::__hash_value_type<unsigned long,MTLStructTypeInternal *>,std::equal_to<unsigned long>,std::hash<unsigned long>,true>,std::allocator<std::__hash_value_type<unsigned long,MTLStructTypeInternal *>>>::~__hash_table(v82);
  if (v84)
  {
    v85 = v84;
    operator delete(v84);
  }

  v67 = *MEMORY[0x1E69E9840];
}

- (void)materializeAirNTStitchedFunctions:(shared_ptr<std::vector<machOEntry>>)a3
{
  var0 = a3.var0;
  v26 = *MEMORY[0x1E69E9840];
  for (i = self->_stitchedLibraryCache.__table_.__first_node_.__next_; i; i = *i)
  {
    v5 = i[1];
    v6 = i[3];
    v24[1] = i[2];
    v25 = v6;
    v24[0] = v5;
    v7 = *var0;
    v8 = *(*var0 + 8);
    if (v8 >= *(*var0 + 16))
    {
      v9 = std::vector<machOEntry>::__emplace_back_slow_path<>(*var0);
    }

    else
    {
      *(v8 + 64) = 0;
      *(v8 + 32) = 0u;
      *(v8 + 48) = 0u;
      v9 = v8 + 72;
      *v8 = 0u;
      *(v8 + 16) = 0u;
    }

    *(v7 + 8) = v9;
    *(v9 - 72) = 0;
    v10 = [(_MTLBinaryArchive *)self newLibraryInArchiveWithRange:v25 error:0, var0];
    v11 = [v10 newStitchedFunctionWithHash:v24];
    *(v9 - 40) = [v11 bitcodeDataInternal];
    (*(*[v11 libraryData] + 320))(&__p);
    *(v9 - 56) = [v11 stitchingAirScript];
    if ((v9 - 24) != &__p)
    {
      std::vector<MTLUINT256_t>::__assign_with_size[abi:ne200100]<MTLUINT256_t*,MTLUINT256_t*>((v9 - 24), __p, v21, (v21 - __p) >> 5);
    }

    v13 = __p;
    v12 = v21;
    if (__p != v21)
    {
      do
      {
        v14 = *(v13 + 1);
        v23[0] = *v13;
        v23[1] = v14;
        if (!std::__hash_table<std::__hash_value_type<MTLUINT256_t,NSObject  {objcproto16OS_dispatch_data}*>,std::__unordered_map_hasher<MTLUINT256_t,std::__hash_value_type<MTLUINT256_t,NSObject  {objcproto16OS_dispatch_data}*>,UnorderedContainerHash,UnorderedContainerHash,true>,std::__unordered_map_equal<MTLUINT256_t,std::__hash_value_type<MTLUINT256_t,NSObject  {objcproto16OS_dispatch_data}*>,UnorderedContainerHash,UnorderedContainerHash,true>,std::allocator<std::__hash_value_type<MTLUINT256_t,NSObject  {objcproto16OS_dispatch_data}*>>>::find<MTLUINT256_t>(self->_uniqueBitcodeList.__ptr_, v23))
        {
          v15 = [v10 newFunctionWithHash:v23];
          v16 = [v15 bitcodeDataInternal];
          ptr = self->_uniqueBitcodeList.__ptr_;
          v22 = v23;
          std::__hash_table<std::__hash_value_type<MTLUINT256_t,NSObject  {objcproto16OS_dispatch_data}*>,std::__unordered_map_hasher<MTLUINT256_t,std::__hash_value_type<MTLUINT256_t,NSObject  {objcproto16OS_dispatch_data}*>,UnorderedContainerHash,UnorderedContainerHash,true>,std::__unordered_map_equal<MTLUINT256_t,std::__hash_value_type<MTLUINT256_t,NSObject  {objcproto16OS_dispatch_data}*>,UnorderedContainerHash,UnorderedContainerHash,true>,std::allocator<std::__hash_value_type<MTLUINT256_t,NSObject  {objcproto16OS_dispatch_data}*>>>::__emplace_unique_key_args<MTLUINT256_t,std::piecewise_construct_t const&,std::tuple<MTLUINT256_t const&>,std::tuple<>>(ptr, v23)[6] = v16;
        }

        v13 += 32;
      }

      while (v13 != v12);
    }

    if (__p)
    {
      v21 = __p;
      operator delete(__p);
    }
  }

  v18 = *MEMORY[0x1E69E9840];
}

- (void)materializeAirNTSpecializedFunctions:(shared_ptr<std::vector<machOEntry>>)a3
{
  v22 = *MEMORY[0x1E69E9840];
  next = self->_specializedLibraryCache.__table_.__first_node_.__next_;
  if (next)
  {
    var0 = a3.var0;
    do
    {
      v6 = next[1];
      v7 = next[3];
      v20 = next[2];
      v21 = v7;
      v19 = v6;
      v8 = *var0;
      v9 = *(*var0 + 8);
      if (v9 >= *(*var0 + 16))
      {
        v10 = std::vector<machOEntry>::__emplace_back_slow_path<>(*var0);
      }

      else
      {
        *(v9 + 64) = 0;
        *(v9 + 32) = 0u;
        *(v9 + 48) = 0u;
        v10 = v9 + 72;
        *v9 = 0u;
        *(v9 + 16) = 0u;
      }

      *(v8 + 8) = v10;
      *(v10 - 72) = 0;
      v11 = [(_MTLBinaryArchive *)self newLibraryInArchiveWithRange:v21 error:0, v17, v18];
      v12 = [v11 newSpecializedFunctionWithHash:&v19];
      v13 = v12;
      v17 = 0u;
      v18 = 0u;
      if (v12)
      {
        [v12 baseFunctionHash];
      }

      v14 = [v11 newFunctionWithHash:&v17];
      *(v10 - 48) = [v14 bitcodeDataInternal];
      *(v10 - 40) = [v13 bitcodeDataInternal];
      v15 = [v13 specializationAirScript];
      *(v10 - 56) = v15;
      dispatch_retain(v15);

      next = *next;
    }

    while (next);
  }

  v16 = *MEMORY[0x1E69E9840];
}

- (void)materializeLinkedBitcodes:(void *)a3 hashList:(void *)a4
{
  v4 = *a3;
  if (*(a3 + 1) - *a3 >= 9uLL)
  {
    v8 = 1;
    do
    {
      v9 = *(v4 + 8 * v8);
      if (*(v9 + 32))
      {
        break;
      }

      v10 = *(v9 + 24);
      std::vector<MTLUINT256_t>::push_back[abi:ne200100](a4, v10);
      if (!std::__hash_table<std::__hash_value_type<MTLUINT256_t,NSObject  {objcproto16OS_dispatch_data}*>,std::__unordered_map_hasher<MTLUINT256_t,std::__hash_value_type<MTLUINT256_t,NSObject  {objcproto16OS_dispatch_data}*>,UnorderedContainerHash,UnorderedContainerHash,true>,std::__unordered_map_equal<MTLUINT256_t,std::__hash_value_type<MTLUINT256_t,NSObject  {objcproto16OS_dispatch_data}*>,UnorderedContainerHash,UnorderedContainerHash,true>,std::allocator<std::__hash_value_type<MTLUINT256_t,NSObject  {objcproto16OS_dispatch_data}*>>>::find<MTLUINT256_t>(self->_uniqueBitcodeList.__ptr_, v10))
      {
        v11 = [(_MTLBinaryArchive *)self materializeBitCode:a3 atIndex:v8];
        std::__hash_table<std::__hash_value_type<MTLUINT256_t,NSObject  {objcproto16OS_dispatch_data}*>,std::__unordered_map_hasher<MTLUINT256_t,std::__hash_value_type<MTLUINT256_t,NSObject  {objcproto16OS_dispatch_data}*>,UnorderedContainerHash,UnorderedContainerHash,true>,std::__unordered_map_equal<MTLUINT256_t,std::__hash_value_type<MTLUINT256_t,NSObject  {objcproto16OS_dispatch_data}*>,UnorderedContainerHash,UnorderedContainerHash,true>,std::allocator<std::__hash_value_type<MTLUINT256_t,NSObject  {objcproto16OS_dispatch_data}*>>>::__emplace_unique_key_args<MTLUINT256_t,std::piecewise_construct_t const&,std::tuple<MTLUINT256_t const&>,std::tuple<>>(self->_uniqueBitcodeList.__ptr_, v10)[6] = v11;
      }

      v8 = (v8 + 1);
      v4 = *a3;
    }

    while (v8 < (*(a3 + 1) - *a3) >> 3);
  }
}

- (void)materializeAirNTAllForSlice:(const MTLLoaderSliceIdentifier *)a3 entryList:(shared_ptr<std::vector<machOEntry>>)a4
{
  v43 = *MEMORY[0x1E69E9840];
  v6 = *(a4.var0 + 1);
  v40 = *a4.var0;
  v41 = v6;
  if (v6)
  {
    atomic_fetch_add_explicit(&v6->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  [(_MTLBinaryArchive *)self materializeAirNTSpecializedFunctions:&v40, a4.var0];
  if (v41)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v41);
  }

  v7 = v31[1];
  v38 = *v31;
  v39 = v7;
  if (v7)
  {
    atomic_fetch_add_explicit(&v7->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  [(_MTLBinaryArchive *)self materializeAirNTStitchedFunctions:&v38];
  if (v39)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v39);
  }

  p_airntObjectList = &self->_airntObjectList;
  begin = self->_airntObjectList.__begin_;
  if (self->_airntObjectList.__end_ != begin)
  {
    v10 = 0;
    do
    {
      v11 = *v31;
      v12 = *(*v31 + 8);
      if (v12 >= *(*v31 + 16))
      {
        v13 = std::vector<machOEntry>::__emplace_back_slow_path<>(*v31);
      }

      else
      {
        *(v12 + 64) = 0;
        *(v12 + 32) = 0u;
        *(v12 + 48) = 0u;
        v13 = v12 + 72;
        *v12 = 0u;
        *(v12 + 16) = 0u;
      }

      *(v11 + 8) = v13;
      *(v13 - 72) = a3->var1 | (a3->var0 << 32);
      *(v13 - 56) = [(_MTLBinaryArchive *)self materializeAirScript:p_airntObjectList->__begin_[v10]];
      *(v13 - 48) = [(_MTLBinaryArchive *)self materializeBitCode:p_airntObjectList->__begin_[v10] atIndex:0];
      [(_MTLBinaryArchive *)self materializeLinkedBitcodes:p_airntObjectList->__begin_[v10] hashList:v13 - 24];
      *(v13 - 32) = [(_MTLBinaryArchive *)self materializeReflectionBlock:p_airntObjectList->__begin_[v10]];
      v14 = p_airntObjectList->__begin_[v10];
      *(v13 - 40) = dispatch_data_create_subrange([(MTLLoadedFileContentsWrapper *)self->_fileData dispatchData], *(v14 + 7) + *(v14 + 5), *(v14 + 6));
      v42.var0.var0 = *(p_airntObjectList->__begin_[v10] + 7) + *(p_airntObjectList->__begin_[v10] + 5);
      v15 = std::__hash_table<std::__hash_value_type<unsigned long,MTLStructTypeInternal *>,std::__unordered_map_hasher<unsigned long,std::__hash_value_type<unsigned long,MTLStructTypeInternal *>,std::hash<unsigned long>,std::equal_to<unsigned long>,true>,std::__unordered_map_equal<unsigned long,std::__hash_value_type<unsigned long,MTLStructTypeInternal *>,std::equal_to<unsigned long>,std::hash<unsigned long>,true>,std::allocator<std::__hash_value_type<unsigned long,MTLStructTypeInternal *>>>::find<unsigned long>(&self->_airntBinaryList.__table_.__bucket_list_.__ptr_, &v42.var0.var0);
      v16 = v15;
      if (v15)
      {
        v17 = v15[3];
        v18 = v15[4] - v17;
        if (v18)
        {
          v19 = 0x2E8BA2E8BA2E8BA3 * (v18 >> 3);
          for (i = v19 - 1; ; --i)
          {
            if (v19 <= i)
            {
              std::vector<std::pair<MTLHashKey,unsigned int>>::__throw_out_of_range[abi:ne200100]();
            }

            MTLHashKey::MTLHashKey(&v42, (v17 + 88 * i));
            v35 = 0;
            v36 = 0;
            v37 = 0;
            v21 = *p_airntObjectList->__begin_[v10];
            if ((*(p_airntObjectList->__begin_[v10] + 1) - v21) < 9)
            {
              v26 = 0;
              v25 = 0;
            }

            else
            {
              v22 = 2;
              v23 = 1;
              do
              {
                v24 = *(v21 + 8 * v23);
                if (*(v24 + 32))
                {
                  break;
                }

                std::vector<MTLUINT256_t>::push_back[abi:ne200100](&v35, *(v24 + 24));
                v23 = v22;
                v21 = *p_airntObjectList->__begin_[v10];
                ++v22;
              }

              while (v23 < (*(p_airntObjectList->__begin_[v10] + 1) - v21) >> 3);
              v25 = v35;
              v26 = v36;
            }

            v27 = *(*v21 + 24);
            v33 = 0;
            v34 = 0;
            __p = 0;
            std::vector<MTLUINT256_t>::__init_with_size[abi:ne200100]<MTLUINT256_t*,MTLUINT256_t*>(&__p, v25, v26, (v26 - v25) >> 5);
            v28 = MTLHashKey::areBitcodesEqual(&v42, v27, &__p);
            if (__p)
            {
              v33 = __p;
              operator delete(__p);
            }

            if (v28)
            {
              operator new();
            }

            if (v35)
            {
              v36 = v35;
              operator delete(v35);
            }

            MTLHashKey::~MTLHashKey(&v42);
            if (!i)
            {
              break;
            }

            v17 = v16[3];
            v19 = 0x2E8BA2E8BA2E8BA3 * ((v16[4] - v17) >> 3);
          }
        }
      }

      begin = p_airntObjectList->__begin_;
      v29 = p_airntObjectList->__begin_[v10];
      if (v29)
      {
        MTLAirNTObject::~MTLAirNTObject(v29);
        MEMORY[0x1865FF210]();
        begin = p_airntObjectList->__begin_;
      }

      ++v10;
    }

    while (v10 < self->_airntObjectList.__end_ - begin);
  }

  self->_airntObjectList.__end_ = begin;
  self->_airntFromDescriptorFunctionList.__end_ = self->_airntFromDescriptorFunctionList.__begin_;
  v30 = *MEMORY[0x1E69E9840];
}

- (BOOL)airntSerializeToURL:(id)a3 options:(unint64_t)a4 error:(id *)a5
{
  v6 = a3;
  v24 = 0;
  v25 = &v24;
  v26 = 0x2020000000;
  v27 = 0;
  if (a5)
  {
    *a5 = 0;
  }

  v18 = 0;
  v19 = &v18;
  v20 = 0x3052000000;
  v21 = __Block_byref_object_copy_;
  v22 = __Block_byref_object_dispose_;
  v23 = 0;
  v17[0] = 0;
  v17[1] = v17;
  v17[2] = 0x3052000000;
  v17[3] = __Block_byref_object_copy_;
  v17[4] = __Block_byref_object_dispose_;
  v17[5] = 0;
  if (![a3 path] || !objc_msgSend(v6, "filePathURL"))
  {
    if (a5)
    {
      v12 = newErrorWithMessage(&cfstr_InvalidUrl.isa, MTLBinaryArchiveErrorInvalidFile);
LABEL_14:
      LOBYTE(v6) = 0;
      *a5 = v12;
      goto LABEL_24;
    }

LABEL_17:
    LOBYTE(v6) = 0;
    goto LABEL_24;
  }

  if (stat([objc_msgSend(objc_msgSend(v6 "URLByDeletingLastPathComponent")], &v16) == -1)
  {
    if (a5)
    {
      v12 = newErrorWithMessage(&cfstr_InvalidUrl.isa, MTLBinaryArchiveErrorInvalidFile);
      goto LABEL_14;
    }

    goto LABEL_17;
  }

  v8 = objc_autoreleasePoolPush();
  atomic_store(1u, &self->_serializing);
  serializeQueue = self->_serializeQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __55___MTLBinaryArchive_airntSerializeToURL_options_error___block_invoke;
  block[3] = &unk_1E6EEAB18;
  block[4] = self;
  block[5] = v6;
  block[6] = v17;
  block[7] = &v24;
  block[8] = &v18;
  dispatch_sync(serializeQueue, block);
  atomic_store(0, &self->_serializing);
  v10 = v19[5];
  if (v10)
  {
    if (a5)
    {
      *a5 = v10;
    }

    if ((v25[3] & 1) == 0 && *a5)
    {
      v11 = *a5;
    }
  }

  else
  {
    LOBYTE(v6) = *(v25 + 24);
  }

  objc_autoreleasePoolPop(v8);
  if (v10)
  {
    if (a5 && *a5)
    {
      v13 = *a5;
    }

    LOBYTE(v6) = *(v25 + 24);
  }

LABEL_24:
  _Block_object_dispose(v17, 8);
  _Block_object_dispose(&v18, 8);
  _Block_object_dispose(&v24, 8);
  return v6 & 1;
}

- (BOOL)serializeToURL:(id)a3 options:(unint64_t)a4 error:(id *)a5
{
  if (self->_isLegacy)
  {
    return [(_MTLBinaryArchive *)self legacySerializeToURL:a3 options:a4 error:a5];
  }

  else
  {
    return [(_MTLBinaryArchive *)self airntSerializeToURL:a3 options:a4 error:a5];
  }
}

- (void)setMTLLinkedFunctions:(id)a3 LFS:(const LinkedFunctions *)a4 obj:(void *)a5 destinationArchive:(id)a6 error:(id *)a7
{
  if (a4)
  {
    memset(v105, 0, sizeof(v105));
    v106 = 1065353216;
    memset(v103, 0, sizeof(v103));
    v104 = 1065353216;
    memset(v101, 0, sizeof(v101));
    v102 = 1065353216;
    v7 = *a4->var0;
    v8 = -v7;
    v9 = &a4[-v7];
    if (*v9->var0 >= 5u)
    {
      v10 = *v9[4].var0;
      if (v10)
      {
        v11 = &a4[v10 + *a4[v10].var0];
        v12 = *v11->var0;
        if (v12)
        {
          v91 = a4;
          v95 = &v11[4 * v12];
          do
          {
            v13 = *v11[4].var0;
            v11 += 4;
            flatbuffers::String::str(v11[v13].var0, &__p);
            v14 = v100;
            v15 = __p;
            if (v100 >= 0)
            {
              p_p = &__p;
            }

            else
            {
              p_p = __p;
            }

            if (v100 >= 0)
            {
              v17 = v100;
            }

            else
            {
              v17 = v99;
            }

            if (v17 >= 18)
            {
              v18 = &p_p[v17];
              v19 = v17;
              v20 = p_p;
              do
              {
                v21 = memchr(v20, 95, v19 - 17);
                if (!v21)
                {
                  break;
                }

                if (*v21 == 0x65725F7269615F5FLL && *(v21 + 1) == 0x5F5F6465766C6F73 && *(v21 + 8) == 14906)
                {
                  if (v21 == p_p)
                  {
                    v24 = 0;
                    v25 = p_p - 1;
                    while (v17 != v24)
                    {
                      v26 = v25[v17];
                      ++v24;
                      --v25;
                      if (v26 == 95)
                      {
                        v27 = v17 - v24 - 18;
                        v28 = &__p;
                        if (v14 < 0)
                        {
                          v28 = v15;
                        }

                        v29 = v28 + 18;
                        if (v17 - 18 < v27)
                        {
                          v27 = v17 - 18;
                        }

                        if (v17 + 1 != v24)
                        {
                          p_p = v29;
                          v17 = v27;
                        }

                        break;
                      }
                    }

                    MEMORY[0x1865FEFD0](&__p, p_p, v17);
                  }

                  break;
                }

                v20 = v21 + 1;
                v19 = v18 - v20;
              }

              while (v18 - v20 >= 18);
            }

            std::__hash_table<std::string,std::hash<std::string>,std::equal_to<std::string>,std::allocator<std::string>>::__emplace_unique_key_args<std::string,std::string const&>(v105, &__p);
            if (v100 < 0)
            {
              operator delete(__p);
            }
          }

          while (v11 != v95);
          a4 = v91;
          v8 = -*v91->var0;
        }
      }
    }

    if (*a4[v8].var0 >= 7u)
    {
      if (*a4[v8 + 6].var0)
      {
        v30 = &a4[*a4[v8 + 6].var0];
        v31 = &v30[*v30->var0];
        v32 = *v31->var0;
        if (v32)
        {
          v92 = a4;
          var0 = v31[4 * v32].var0;
          do
          {
            v33 = *v31[4].var0;
            v31 += 4;
            flatbuffers::String::str(v31[v33].var0, &__p);
            v34 = v100;
            v35 = __p;
            if (v100 >= 0)
            {
              v36 = &__p;
            }

            else
            {
              v36 = __p;
            }

            if (v100 >= 0)
            {
              v37 = v100;
            }

            else
            {
              v37 = v99;
            }

            if (v37 >= 18)
            {
              v38 = &v36[v37];
              v39 = v37;
              v40 = v36;
              do
              {
                v41 = memchr(v40, 95, v39 - 17);
                if (!v41)
                {
                  break;
                }

                if (*v41 == 0x65725F7269615F5FLL && *(v41 + 1) == 0x5F5F6465766C6F73 && *(v41 + 8) == 14906)
                {
                  if (v41 == v36)
                  {
                    v44 = 0;
                    v45 = v36 - 1;
                    while (v37 != v44)
                    {
                      v46 = v45[v37];
                      ++v44;
                      --v45;
                      if (v46 == 95)
                      {
                        v47 = v37 - v44 - 18;
                        v48 = &__p;
                        if (v34 < 0)
                        {
                          v48 = v35;
                        }

                        v49 = v48 + 18;
                        if (v37 - 18 < v47)
                        {
                          v47 = v37 - 18;
                        }

                        if (v37 + 1 != v44)
                        {
                          v36 = v49;
                          v37 = v47;
                        }

                        break;
                      }
                    }

                    MEMORY[0x1865FEFD0](&__p, v36, v37);
                  }

                  break;
                }

                v40 = v41 + 1;
                v39 = v38 - v40;
              }

              while (v38 - v40 >= 18);
            }

            std::__hash_table<std::string,std::hash<std::string>,std::equal_to<std::string>,std::allocator<std::string>>::__emplace_unique_key_args<std::string,std::string const&>(v103, &__p);
            if (v100 < 0)
            {
              operator delete(__p);
            }
          }

          while (v31 != var0);
          a4 = v92;
          v8 = -*v92->var0;
        }
      }
    }

    v50 = &a4[v8];
    if (*v50->var0 >= 9u)
    {
      v51 = *v50[8].var0;
      if (v51)
      {
        v52 = &a4[v51 + *a4[v51].var0];
        v53 = *v52->var0;
        if (v53)
        {
          v87 = &v52[4 * v53];
          do
          {
            v93 = v52 + 4;
            v54 = &v52[*v52[4].var0 + 4];
            v55 = &v54[-*v54->var0];
            v56 = *v55->var0;
            v97 = *v54[*v55[4].var0 + *v54[*v55[4].var0].var0].var0;
            if (v56 >= 7)
            {
              v57 = *v55[6].var0;
              if (v57)
              {
                v58 = &v54[v57 + *v54[v57].var0];
                if (*v58->var0)
                {
                  flatbuffers::String::str(v58[*v58[4].var0 + 4].var0, &__p);
                  v59 = v100;
                  v60 = __p;
                  if (v100 >= 0)
                  {
                    v61 = &__p;
                  }

                  else
                  {
                    v61 = __p;
                  }

                  if (v100 >= 0)
                  {
                    v62 = v100;
                  }

                  else
                  {
                    v62 = v99;
                  }

                  if (v62 >= 18)
                  {
                    v63 = &v61[v62];
                    v64 = v62;
                    v65 = v61;
                    while (1)
                    {
                      v66 = memchr(v65, 95, v64 - 17);
                      if (!v66)
                      {
                        goto LABEL_112;
                      }

                      v67 = *v66 == 0x65725F7269615F5FLL && *(v66 + 1) == 0x5F5F6465766C6F73;
                      if (v67 && *(v66 + 8) == 14906)
                      {
                        break;
                      }

                      v65 = v66 + 1;
                      v64 = v63 - v65;
                      if (v63 - v65 < 18)
                      {
                        goto LABEL_112;
                      }
                    }

                    if (v66 == v61)
                    {
                      v69 = 0;
                      v70 = v61 - 1;
                      do
                      {
                        if (v62 == v69)
                        {
                          goto LABEL_111;
                        }

                        v71 = v70[v62];
                        ++v69;
                        --v70;
                      }

                      while (v71 != 95);
                      v72 = v62 - v69 - 18;
                      v73 = &__p;
                      if (v59 < 0)
                      {
                        v73 = v60;
                      }

                      v74 = v73 + 18;
                      if (v62 - 18 < v72)
                      {
                        v72 = v62 - 18;
                      }

                      if (v62 + 1 != v69)
                      {
                        v61 = v74;
                        v62 = v72;
                      }

LABEL_111:
                      MEMORY[0x1865FEFD0](&__p, v61, v62);
                    }
                  }

LABEL_112:
                  std::__hash_table<std::__hash_value_type<std::string,std::string_view>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::string_view>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::string_view>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::string_view>>>::__emplace_multi<std::string&,std::string_view&>();
                }
              }
            }

            v52 = v93;
          }

          while (v93 != v87);
        }
      }
    }

    v75 = objc_alloc_init(MEMORY[0x1E695DF70]);
    v76 = objc_alloc_init(MEMORY[0x1E695DF70]);
    v77 = objc_alloc_init(MEMORY[0x1E695DF90]);
    v78 = *a5;
    if (*(a5 + 1) - *a5 >= 9uLL)
    {
      v79 = 1;
      do
      {
        if (*(*(v78 + 8 * v79) + 32))
        {
          break;
        }

        v80 = [(_MTLBinaryArchive *)self newRecompiledFunctionWithAIRNTObject:a5 index:v79 destinationArchive:a6 error:a7];
        std::string::basic_string[abi:ne200100]<0>(&__p, [objc_msgSend(v80 "name")]);
        if (std::__hash_table<std::string,std::hash<std::string>,std::equal_to<std::string>,std::allocator<std::string>>::find<std::string>(v105, &__p))
        {
          [v75 addObject:v80];
        }

        if (std::__hash_table<std::string,std::hash<std::string>,std::equal_to<std::string>,std::allocator<std::string>>::find<std::string>(v103, &__p))
        {
          [v76 addObject:v80];
        }

        v81 = std::__hash_table<std::__hash_value_type<std::string,std::string_view>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::string_view>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::string_view>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::string_view>>>::__equal_range_multi<std::string>(v101, &__p);
        v83 = v82;
        while (v81 != v83)
        {
          v84 = v81 + 2;
          if (*(v81 + 39) < 0)
          {
            v84 = *v84;
          }

          v85 = [MEMORY[0x1E696AEC0] stringWithCString:v84 encoding:4];
          if (![v77 objectForKeyedSubscript:v85])
          {
            [v77 setObject:objc_alloc_init(MEMORY[0x1E695DF70]) forKeyedSubscript:v85];
          }

          [objc_msgSend(v77 objectForKeyedSubscript:{v85), "addObject:", v80}];
          v81 = *v81;
        }

        if (v100 < 0)
        {
          operator delete(__p);
        }

        ++v79;
        v78 = *a5;
      }

      while (v79 < (*(a5 + 1) - *a5) >> 3);
    }

    [a3 setFunctions:v75];
    [a3 setPrivateFunctions:v76];
    [a3 setGroups:v77];
    std::__hash_table<std::__hash_value_type<std::tuple<std::string,unsigned int,unsigned int>,unsigned int>,std::__unordered_map_hasher<std::tuple<std::string,unsigned int,unsigned int>,std::__hash_value_type<std::tuple<std::string,unsigned int,unsigned int>,unsigned int>,key_hash,std::equal_to<std::tuple<std::string,unsigned int,unsigned int>>,true>,std::__unordered_map_equal<std::tuple<std::string,unsigned int,unsigned int>,std::__hash_value_type<std::tuple<std::string,unsigned int,unsigned int>,unsigned int>,std::equal_to<std::tuple<std::string,unsigned int,unsigned int>>,key_hash,true>,std::allocator<std::__hash_value_type<std::tuple<std::string,unsigned int,unsigned int>,unsigned int>>>::~__hash_table(v101);
    std::__hash_table<std::__hash_value_type<std::tuple<std::string,unsigned int,unsigned int>,unsigned int>,std::__unordered_map_hasher<std::tuple<std::string,unsigned int,unsigned int>,std::__hash_value_type<std::tuple<std::string,unsigned int,unsigned int>,unsigned int>,key_hash,std::equal_to<std::tuple<std::string,unsigned int,unsigned int>>,true>,std::__unordered_map_equal<std::tuple<std::string,unsigned int,unsigned int>,std::__hash_value_type<std::tuple<std::string,unsigned int,unsigned int>,unsigned int>,std::equal_to<std::tuple<std::string,unsigned int,unsigned int>>,key_hash,true>,std::allocator<std::__hash_value_type<std::tuple<std::string,unsigned int,unsigned int>,unsigned int>>>::~__hash_table(v103);
    std::__hash_table<std::__hash_value_type<std::tuple<std::string,unsigned int,unsigned int>,unsigned int>,std::__unordered_map_hasher<std::tuple<std::string,unsigned int,unsigned int>,std::__hash_value_type<std::tuple<std::string,unsigned int,unsigned int>,unsigned int>,key_hash,std::equal_to<std::tuple<std::string,unsigned int,unsigned int>>,true>,std::__unordered_map_equal<std::tuple<std::string,unsigned int,unsigned int>,std::__hash_value_type<std::tuple<std::string,unsigned int,unsigned int>,unsigned int>,std::equal_to<std::tuple<std::string,unsigned int,unsigned int>>,key_hash,true>,std::allocator<std::__hash_value_type<std::tuple<std::string,unsigned int,unsigned int>,unsigned int>>>::~__hash_table(v105);
  }
}

- (id)newComputePipelineDescriptorWithScript:(const PipelineScript *)a3 obj:(void *)a4 destinationArchive:(id)a5 error:(id *)a6
{
  v11 = objc_opt_new();
  v12 = Air::PipelineScript::pipeline_as_compute(a3);
  v13 = (v12 - *v12);
  if (*v13 >= 7u && (v14 = v13[3]) != 0)
  {
    v15 = (v12 + v14 + *(v12 + v14));
  }

  else
  {
    v15 = 0;
  }

  v16 = (v15 - *v15);
  if (*v16 >= 9u && (v17 = v16[4]) != 0)
  {
    v18 = *(v15 + v17);
  }

  else
  {
    v18 = 1;
  }

  [v11 setMaxCallStackDepth:v18];
  v19 = (v15 - *v15);
  if (*v19 >= 7u && (v20 = v19[3]) != 0)
  {
    v21 = *(v15 + v20);
  }

  else
  {
    v21 = 0;
  }

  [v11 setMaxTotalThreadsPerThreadgroup:v21];
  v22 = (v15 - *v15);
  if (*v22 < 0x19u)
  {
    goto LABEL_18;
  }

  v23 = v22[12];
  if (!v23)
  {
LABEL_19:
    v26 = 0;
    v27 = 0;
    goto LABEL_20;
  }

  v24 = v15 + v23 + *(v15 + v23);
  v25 = *v24;
  if (!*v24)
  {
LABEL_18:
    v23 = 0;
    goto LABEL_19;
  }

  v23 = *(v24 + 4);
  if (v25 == 1)
  {
    v26 = 1;
LABEL_102:
    v27 = 1;
    goto LABEL_20;
  }

  v26 = *(v24 + 12);
  if (v25 < 3)
  {
    goto LABEL_102;
  }

  v27 = *(v24 + 20);
LABEL_20:
  v97[0] = v23;
  v97[1] = v26;
  v97[2] = v27;
  [v11 setRequiredThreadsPerThreadgroup:v97];
  v28 = (v15 - *v15);
  v30 = *v28 >= 0x15u && (v29 = v28[10]) != 0 && *(v15 + v29) != 0;
  [v11 setNeedsCustomBorderColorSamplers:v30];
  v31 = (v15 - *v15);
  v33 = *v31 >= 0x11u && (v32 = v31[8]) != 0 && *(v15 + v32) != 0;
  [v11 setSupportAddingBinaryFunctions:v33];
  v34 = (v15 - *v15);
  v36 = *v34 >= 0xFu && (v35 = v34[7]) != 0 && *(v15 + v35) != 0;
  [v11 setSupportIndirectCommandBuffers:v36];
  v37 = (v15 - *v15);
  if (*v37 >= 0x13u && (v38 = v37[9]) != 0)
  {
    v39 = *(v15 + v38);
  }

  else
  {
    v39 = 0;
  }

  [v11 setTextureWriteRoundingMode:v39];
  v40 = (v15 - *v15);
  v42 = *v40 >= 5u && (v41 = v40[2]) != 0 && *(v15 + v41) != 0;
  [v11 setThreadGroupSizeIsMultipleOfThreadExecutionWidth:v42];
  v43 = *v15;
  v44 = -v43;
  v45 = (v15 - v43);
  if (*v45 >= 0xDu)
  {
    v46 = v45[6];
    if (v46)
    {
      v47 = (v15 + v46 + *(v15 + v46));
      v48 = v47 + 1;
      if (*v47)
      {
        v49 = 0;
        do
        {
          v50 = *v48;
          v51 = v50 - *(v48 + v50);
          if (*(v48 + v51) >= 5u && (v52 = *(v48 + v51 + 4)) != 0)
          {
            v53 = *(v48 + v50 + v52);
          }

          else
          {
            v53 = 0;
          }

          [objc_msgSend(objc_msgSend(v11 "buffers")];
          ++v48;
        }

        while (v49 < *v47);
      }

      v44 = -*v15;
    }
  }

  v54 = (v15 + v44);
  if (*v54 >= 0xBu && (v55 = v54[5]) != 0)
  {
    v56 = (v15 + v55 + *(v15 + v55));
  }

  else
  {
    v56 = 0;
  }

  v57 = [v11 linkedFunctions];
  v58 = (v15 - *v15);
  if (*v58 >= 0x17u && (v59 = v58[11]) != 0)
  {
    v60 = v15 + v59 + *(v15 + v59);
  }

  else
  {
    v60 = 0;
  }

  [(_MTLBinaryArchive *)self setMTLLinkedFunctions:v57 LFS:v60 obj:a4 destinationArchive:a5 error:a6];
  if (v56)
  {
    v61 = (v56 - *v56);
    v62 = *v61;
    if (v62 >= 5)
    {
      if (v61[2])
      {
        v63 = (v56 + v61[2] + *(v56 + v61[2]));
      }

      else
      {
        v63 = 0;
      }

      if (v62 >= 7 && (v64 = v61[3]) != 0)
      {
        v65 = (v56 + v64 + *(v56 + v64));
        if (!v63)
        {
          goto LABEL_83;
        }
      }

      else
      {
        v65 = 0;
        if (!v63)
        {
LABEL_83:
          if (v65 && *v65)
          {
            v81 = 0;
            v82 = 0;
            do
            {
              v83 = &v65[v81];
              v84 = v65[v81 + 1];
              v85 = &v65[v81] + v84 - *(&v65[v81 + 1] + v84);
              if (*(v85 + 2) >= 5u && (v86 = *(v85 + 4)) != 0)
              {
                v87 = *(&v65[v81 + 1] + v84 + v86);
              }

              else
              {
                v87 = 1;
              }

              [objc_msgSend(objc_msgSend(objc_msgSend(v11 "stageInputDescriptor")];
              v88 = v83[1];
              v89 = v88 - *(v83 + v88 + 4);
              if (*(v83 + v89 + 4) >= 7u && (v90 = *(&v65[v81 + 2] + v89 + 2)) != 0)
              {
                v91 = *(&v65[v81 + 1] + v88 + v90);
              }

              else
              {
                v91 = 1;
              }

              [objc_msgSend(objc_msgSend(objc_msgSend(v11 "stageInputDescriptor")];
              v92 = v83[1];
              v93 = &v65[v81] + v92 - *(&v65[v81 + 1] + v92);
              if (*(v93 + 2) >= 9u && (v94 = *(v93 + 6)) != 0)
              {
                v95 = *(&v65[v81 + 1] + v92 + v94);
              }

              else
              {
                v95 = 0;
              }

              [objc_msgSend(objc_msgSend(objc_msgSend(v11 "stageInputDescriptor")];
              ++v81;
            }

            while (v82 < *v65);
          }

          return v11;
        }
      }

      if (*v63)
      {
        v66 = 0;
        v67 = 0;
        do
        {
          v68 = &v63[v66];
          v69 = v63[v66 + 1];
          v70 = &v63[v66] + v69 - *(&v63[v66 + 1] + v69);
          if (*(v70 + 2) >= 9u && (v71 = *(v70 + 6)) != 0)
          {
            v72 = *(&v63[v66 + 1] + v69 + v71);
          }

          else
          {
            v72 = 0;
          }

          [objc_msgSend(objc_msgSend(objc_msgSend(v11 "stageInputDescriptor")];
          v73 = v68[1];
          v74 = v73 - *(v68 + v73 + 4);
          if (*(v68 + v74 + 4) >= 7u && (v75 = *(&v63[v66 + 2] + v74 + 2)) != 0)
          {
            v76 = *(&v63[v66 + 1] + v73 + v75);
          }

          else
          {
            v76 = 0;
          }

          [objc_msgSend(objc_msgSend(objc_msgSend(v11 "stageInputDescriptor")];
          v77 = v68[1];
          v78 = &v63[v66] + v77 - *(&v63[v66 + 1] + v77);
          if (*(v78 + 2) >= 5u && (v79 = *(v78 + 4)) != 0)
          {
            v80 = *(&v63[v66 + 1] + v77 + v79);
          }

          else
          {
            v80 = 0;
          }

          [objc_msgSend(objc_msgSend(objc_msgSend(v11 "stageInputDescriptor")];
          ++v66;
        }

        while (v67 < *v63);
      }

      goto LABEL_83;
    }
  }

  return v11;
}

- (id)newRenderPipelineDescriptorWithScript:(const PipelineScript *)a3 obj:(void *)a4 destinationArchive:(id)a5 error:(id *)a6
{
  v8 = objc_opt_new();
  v9 = Air::PipelineScript::pipeline_as_render(a3);
  v10 = (v9 - *v9);
  if (*v10 >= 9u && (v11 = v10[4]) != 0)
  {
    v12 = (v9 + v11 + *(v9 + v11));
  }

  else
  {
    v12 = 0;
  }

  v13 = (v12 - *v12);
  v15 = *v13 < 9u || (v14 = v13[4]) == 0 || *(v12 + v14) != 0;
  [v8 setRasterizationEnabled:v15];
  v16 = (v12 - *v12);
  if (*v16 >= 0x27u && (v17 = v16[19]) != 0)
  {
    v18 = *(v12 + v17);
  }

  else
  {
    v18 = 255;
  }

  [v8 setClipDistanceEnableMask:v18];
  v19 = (v12 - *v12);
  if (*v19 >= 0x29u && (v20 = v19[20]) != 0)
  {
    v21 = *(v12 + v20);
  }

  else
  {
    v21 = 0;
  }

  [v8 setVertexDepthCompareClampMask:v21];
  v22 = (v12 - *v12);
  if (*v22 >= 5u && (v23 = v22[2]) != 0)
  {
    v24 = *(v12 + v23);
  }

  else
  {
    v24 = 1;
  }

  [v8 setMaxVertexCallStackDepth:v24];
  v25 = (v12 - *v12);
  if (*v25 >= 0xDu && (v26 = v25[6]) != 0)
  {
    v27 = *(v12 + v26);
  }

  else
  {
    v27 = 16;
  }

  [v8 setMaxTessellationFactor:v27];
  v28 = (v12 - *v12);
  if (*v28 >= 0x1Bu && (v29 = v28[13]) != 0)
  {
    v30 = *(v12 + v29);
  }

  else
  {
    v30 = 1;
  }

  [v8 setMaxVertexAmplificationCount:v30];
  v31 = (v12 - *v12);
  if (*v31 >= 0x1Du && (v32 = v31[14]) != 0)
  {
    v33 = *(v12 + v32);
  }

  else
  {
    v33 = 0;
  }

  [v8 setVertexAmplificationMode:v33];
  v34 = (v12 - *v12);
  v36 = *v34 >= 0x2Bu && (v35 = v34[21]) != 0 && *(v12 + v35) != 0;
  [v8 setNeedsCustomBorderColorSamplers:v36];
  v37 = (v12 - *v12);
  v39 = *v37 >= 0x23u && (v38 = v37[17]) != 0 && *(v12 + v38) != 0;
  [v8 setSupportAddingVertexBinaryFunctions:v39];
  v40 = (v12 - *v12);
  v42 = *v40 >= 0x21u && (v41 = v40[16]) != 0 && *(v12 + v41) != 0;
  [v8 setSupportIndirectCommandBuffers:v42];
  v43 = (v12 - *v12);
  v45 = *v43 >= 0xFu && (v44 = v43[7]) != 0 && *(v12 + v44) != 0;
  [v8 setTessellationFactorScaleEnabled:v45];
  v46 = (v12 - *v12);
  if (*v46 >= 0x13u && (v47 = v46[9]) != 0)
  {
    v48 = *(v12 + v47);
  }

  else
  {
    v48 = 0;
  }

  [v8 setTessellationControlPointIndexType:v48];
  v49 = (v12 - *v12);
  if (*v49 >= 0x11u && (v50 = v49[8]) != 0)
  {
    v51 = *(v12 + v50);
  }

  else
  {
    v51 = 0;
  }

  [v8 setTessellationFactorFormat:v51];
  v52 = (v12 - *v12);
  if (*v52 >= 0x19u && (v53 = v52[12]) != 0)
  {
    v54 = *(v12 + v53);
  }

  else
  {
    v54 = 0;
  }

  [v8 setTessellationPartitionMode:v54];
  v55 = (v12 - *v12);
  if (*v55 >= 0x15u && (v56 = v55[10]) != 0)
  {
    v57 = *(v12 + v56);
  }

  else
  {
    v57 = 0;
  }

  [v8 setTessellationFactorStepFunction:v57];
  v58 = (v12 - *v12);
  if (*v58 >= 0x17u && (v59 = v58[11]) != 0)
  {
    v60 = *(v12 + v59);
  }

  else
  {
    v60 = 0;
  }

  [v8 setTessellationOutputWindingOrder:v60];
  v61 = (v12 - *v12);
  if (*v61 >= 0xBu && (v62 = v61[5]) != 0)
  {
    v63 = *(v12 + v62);
  }

  else
  {
    v63 = 0;
  }

  [v8 setInputPrimitiveTopology:v63];
  v64 = (v12 - *v12);
  if (*v64 >= 0x25u && (v65 = v64[18]) != 0)
  {
    v66 = *(v12 + v65);
  }

  else
  {
    v66 = 0;
  }

  [v8 setTextureWriteRoundingMode:v66];
  v67 = *v12;
  v68 = -v67;
  v69 = (v12 - v67);
  if (*v69 >= 0x1Fu)
  {
    v70 = v69[15];
    if (v70)
    {
      v71 = (v12 + v70 + *(v12 + v70));
      v72 = v71 + 1;
      if (*v71)
      {
        v73 = 0;
        do
        {
          v74 = *v72;
          v75 = v74 - *(v72 + v74);
          if (*(v72 + v75) >= 5u && (v76 = *(v72 + v75 + 4)) != 0)
          {
            v77 = *(v72 + v74 + v76);
          }

          else
          {
            v77 = 0;
          }

          [objc_msgSend(objc_msgSend(v8 "vertexBuffers")];
          ++v72;
        }

        while (v73 < *v71);
      }

      v68 = -*v12;
    }
  }

  v78 = (v12 + v68);
  if (*v78 >= 7u)
  {
    v79 = v78[3];
    if (v79)
    {
      v80 = (v12 + v79 + *(v12 + v79));
      v81 = (v80 - *v80);
      v82 = *v81;
      if (v82 > 4)
      {
        if (v81[2])
        {
          v83 = (v80 + v81[2] + *(v80 + v81[2]));
        }

        else
        {
          v83 = 0;
        }

        if (v82 >= 7 && (v84 = v81[3]) != 0)
        {
          v85 = (v80 + v84 + *(v80 + v84));
        }

        else
        {
          v85 = 0;
        }

        if (v83 && *v83)
        {
          v86 = 0;
          v87 = 0;
          do
          {
            v88 = &v83[v86];
            v89 = v83[v86 + 1];
            v90 = &v83[v86] + v89 - *(&v83[v86 + 1] + v89);
            if (*(v90 + 2) >= 9u && (v91 = *(v90 + 6)) != 0)
            {
              v92 = *(&v83[v86 + 1] + v89 + v91);
            }

            else
            {
              v92 = 0;
            }

            [objc_msgSend(objc_msgSend(objc_msgSend(v8 "vertexDescriptor")];
            v93 = v88[1];
            v94 = v93 - *(v88 + v93 + 4);
            if (*(v88 + v94 + 4) >= 7u && (v95 = *(&v83[v86 + 2] + v94 + 2)) != 0)
            {
              v96 = *(&v83[v86 + 1] + v93 + v95);
            }

            else
            {
              v96 = 0;
            }

            [objc_msgSend(objc_msgSend(objc_msgSend(v8 "vertexDescriptor")];
            v97 = v88[1];
            v98 = &v83[v86] + v97 - *(&v83[v86 + 1] + v97);
            if (*(v98 + 2) >= 5u && (v99 = *(v98 + 4)) != 0)
            {
              v100 = *(&v83[v86 + 1] + v97 + v99);
            }

            else
            {
              v100 = 0;
            }

            [objc_msgSend(objc_msgSend(objc_msgSend(v8 "vertexDescriptor")];
            ++v86;
          }

          while (v87 < *v83);
        }

        if (v85 && *v85)
        {
          v101 = 0;
          v102 = 0;
          do
          {
            v103 = &v85[v101];
            v104 = v85[v101 + 1];
            v105 = &v85[v101] + v104 - *(&v85[v101 + 1] + v104);
            if (*(v105 + 2) >= 5u && (v106 = *(v105 + 4)) != 0)
            {
              v107 = *(&v85[v101 + 1] + v104 + v106);
            }

            else
            {
              v107 = 1;
            }

            [objc_msgSend(objc_msgSend(objc_msgSend(v8 "vertexDescriptor")];
            v108 = v103[1];
            v109 = v108 - *(v103 + v108 + 4);
            if (*(v103 + v109 + 4) >= 7u && (v110 = *(&v85[v101 + 2] + v109 + 2)) != 0)
            {
              v111 = *(&v85[v101 + 1] + v108 + v110);
            }

            else
            {
              v111 = 1;
            }

            [objc_msgSend(objc_msgSend(objc_msgSend(v8 "vertexDescriptor")];
            v112 = v103[1];
            v113 = &v85[v101] + v112 - *(&v85[v101 + 1] + v112);
            if (*(v113 + 2) >= 9u && (v114 = *(v113 + 6)) != 0)
            {
              v115 = *(&v85[v101 + 1] + v112 + v114);
            }

            else
            {
              v115 = 0;
            }

            [objc_msgSend(objc_msgSend(objc_msgSend(v8 "vertexDescriptor")];
            ++v101;
          }

          while (v102 < *v85);
        }
      }
    }
  }

  v116 = [v8 vertexLinkedFunctions];
  v117 = (v12 - *v12);
  if (*v117 >= 0x2Du && (v118 = v117[22]) != 0)
  {
    v119 = v12 + v118 + *(v12 + v118);
  }

  else
  {
    v119 = 0;
  }

  [(_MTLBinaryArchive *)self setMTLLinkedFunctions:v116 LFS:v119 obj:a4 destinationArchive:a5 error:a6];
  v120 = Air::PipelineScript::pipeline_as_render(a3);
  v121 = (v120 - *v120);
  if (*v121 >= 0xBu && (v122 = v121[5]) != 0)
  {
    v123 = (v120 + v122 + *(v120 + v122));
  }

  else
  {
    v123 = 0;
  }

  v124 = (v123 - *v123);
  v126 = *v124 >= 0x29u && (v125 = v124[20]) != 0 && *(v123 + v125) != 0;
  [v8 setAlphaTestEnabled:v126];
  v127 = (v123 - *v123);
  if (*v127 >= 0x2Bu && (v128 = v127[21]) != 0)
  {
    v129 = *(v123 + v128);
  }

  else
  {
    v129 = 0;
  }

  [v8 setAlphaTestFunction:v129];
  v130 = (v123 - *v123);
  if (*v130 >= 9u && (v131 = v130[4]) != 0)
  {
    v132 = *(v123 + v131);
  }

  else
  {
    v132 = 0;
  }

  [v8 setAlphaToCoverageStateSPI:v132];
  v133 = (v123 - *v123);
  if (*v133 >= 0xBu && (v134 = v133[5]) != 0)
  {
    v135 = *(v123 + v134);
  }

  else
  {
    v135 = 0;
  }

  [v8 setAlphaToOneStateSPI:v135];
  v136 = (v123 - *v123);
  if (*v136 >= 0x39u && (v137 = v136[28]) != 0)
  {
    v138 = *(v123 + v137);
  }

  else
  {
    v138 = 0;
  }

  [v8 setColorAttachmentMappingState:v138];
  v139 = (v123 - *v123);
  if (*v139 >= 0xFu && (v140 = v139[7]) != 0)
  {
    v141 = *(v123 + v140);
  }

  else
  {
    v141 = 0;
  }

  [v8 setColorSampleCount:v141];
  v142 = (v123 - *v123);
  if (*v142 >= 0x19u && (v143 = v142[12]) != 0)
  {
    v144 = *(v123 + v143);
  }

  else
  {
    v144 = 0;
  }

  [v8 setDepthAttachmentPixelFormat:v144];
  v145 = (v123 - *v123);
  if (*v145 >= 0x35u && (v146 = v145[26]) != 0)
  {
    v147 = *(v123 + v146);
  }

  else
  {
    v147 = 0;
  }

  [v8 setVertexDepthCompareClampMask:v147];
  v148 = (v123 - *v123);
  v150 = *v148 >= 0x2Fu && (v149 = v148[23]) != 0 && *(v123 + v149) != 0;
  [v8 setDepthStencilWriteDisabled:v150];
  v151 = (v123 - *v123);
  if (*v151 >= 0x27u && (v152 = v151[19]) != 0)
  {
    v153 = *(v123 + v152);
  }

  else
  {
    v153 = 0;
  }

  [v8 setLogicOperation:v153];
  v154 = (v123 - *v123);
  v156 = *v154 >= 0x25u && (v155 = v154[18]) != 0 && *(v123 + v155) != 0;
  [v8 setLogicOperationEnabled:v156];
  v157 = (v123 - *v123);
  if (*v157 >= 5u && (v158 = v157[2]) != 0)
  {
    v159 = *(v123 + v158);
  }

  else
  {
    v159 = 1;
  }

  [v8 setMaxFragmentCallStackDepth:v159];
  v160 = (v123 - *v123);
  v162 = *v160 >= 0x33u && (v161 = v160[25]) != 0 && *(v123 + v161) != 0;
  [v8 setNeedsCustomBorderColorSamplers:v162];
  v163 = (v123 - *v123);
  v165 = *v163 >= 0x31u && (v164 = v163[24]) != 0 && *(v123 + v164) != 0;
  [v8 setOpenGLModeEnabled:v165];
  v166 = (v123 - *v123);
  v168 = *v166 >= 0x2Du && (v167 = v166[22]) != 0 && *(v123 + v167) != 0;
  [v8 setPointSmoothEnabled:v168];
  v169 = (v123 - *v123);
  if (*v169 >= 0xDu && (v170 = v169[6]) != 0)
  {
    v171 = *(v123 + v170);
  }

  else
  {
    v171 = 1;
  }

  [v8 setRasterSampleCount:v171];
  v172 = (v123 - *v123);
  LODWORD(v173) = 1.0;
  if (*v172 >= 0x13u)
  {
    v174 = v172[9];
    if (v174)
    {
      LODWORD(v173) = *(v123 + v174);
    }
  }

  [v8 setSampleCoverage:v173];
  v175 = (v123 - *v123);
  v177 = *v175 >= 0x15u && (v176 = v175[10]) != 0 && *(v123 + v176) != 0;
  [v8 setSampleCoverageInvert:v177];
  v178 = (v123 - *v123);
  if (*v178 >= 0x11u && (v179 = v178[8]) != 0)
  {
    v180 = *(v123 + v179);
  }

  else
  {
    v180 = -1;
  }

  [v8 setSampleMask:v180];
  v181 = (v123 - *v123);
  if (*v181 >= 0x1Bu && (v182 = v181[13]) != 0)
  {
    v183 = *(v123 + v182);
  }

  else
  {
    v183 = 0;
  }

  [v8 setStencilAttachmentPixelFormat:v183];
  v184 = (v123 - *v123);
  v186 = *v184 >= 0x21u && (v185 = v184[16]) != 0 && *(v123 + v185) != 0;
  [v8 setSupportAddingFragmentBinaryFunctions:v186];
  v187 = (v123 - *v123);
  v188 = *v187;
  if (v188 >= 0x17)
  {
    if (v187[11])
    {
      v189 = (v123 + v187[11] + *(v123 + v187[11]));
    }

    else
    {
      v189 = 0;
    }

    if (v188 >= 0x1D)
    {
      v190 = v187[14];
      if (v190)
      {
        v191 = (v123 + v190 + *(v123 + v190));
        v192 = v191 + 1;
        if (*v191)
        {
          v193 = 0;
          do
          {
            v194 = *v192;
            v195 = v194 - *(v192 + v194);
            if (*(v192 + v195) >= 5u && (v196 = *(v192 + v195 + 4)) != 0)
            {
              v197 = *(v192 + v194 + v196);
            }

            else
            {
              v197 = 0;
            }

            [objc_msgSend(objc_msgSend(v8 "fragmentBuffers")];
            ++v192;
          }

          while (v193 < *v191);
        }
      }
    }

    if (v189 && *v189)
    {
      v198 = 0;
      v199 = 0;
      do
      {
        v200 = &v189[v198];
        v201 = v189[v198 + 1];
        v202 = &v189[v198] + v201 - *(&v189[v198 + 1] + v201);
        if (*(v202 + 2) >= 0xBu && (v203 = *(v202 + 7)) != 0)
        {
          v204 = *(&v189[v198 + 1] + v201 + v203);
        }

        else
        {
          v204 = 0;
        }

        [objc_msgSend(objc_msgSend(v8 "colorAttachments")];
        v205 = v200[1];
        v206 = v205 - *(v200 + v205 + 4);
        if (*(v200 + v206 + 4) >= 9u && (v207 = *(&v189[v198 + 3] + v206)) != 0)
        {
          v208 = *(&v189[v198 + 1] + v205 + v207);
        }

        else
        {
          v208 = 0;
        }

        [objc_msgSend(objc_msgSend(v8 "colorAttachments")];
        v209 = v200[1];
        v210 = &v189[v198];
        v211 = &v189[v198] + v209 - *(&v189[v198 + 1] + v209);
        if (*(v211 + 2) >= 0xFu && (v212 = *(v211 + 9)) != 0)
        {
          v213 = *(&v189[v198 + 1] + v209 + v212);
        }

        else
        {
          v213 = 0;
        }

        [objc_msgSend(objc_msgSend(v8 "colorAttachments")];
        v214 = v200[1];
        v215 = v214 - *(v210 + v214 + 4);
        if (*(v210 + v215 + 4) >= 0x11u && (v216 = *(&v189[v198 + 5] + v215)) != 0)
        {
          v217 = *(&v189[v198 + 1] + v214 + v216);
        }

        else
        {
          v217 = 0;
        }

        [objc_msgSend(objc_msgSend(v8 "colorAttachments")];
        v218 = v200[1];
        v219 = &v189[v198];
        v220 = &v189[v198] + v218 - *(&v189[v198 + 1] + v218);
        if (*(v220 + 2) >= 5u && (v221 = *(v220 + 4)) != 0)
        {
          v222 = *(&v189[v198 + 1] + v218 + v221);
        }

        else
        {
          v222 = 0;
        }

        [objc_msgSend(objc_msgSend(v8 "colorAttachments")];
        v223 = v200[1];
        v224 = v223 - *(v219 + v223 + 4);
        if (*(v219 + v224 + 4) >= 0x15u && (v225 = *(&v189[v198 + 6] + v224)) != 0)
        {
          v226 = *(&v189[v198 + 1] + v223 + v225);
        }

        else
        {
          v226 = 1;
        }

        [objc_msgSend(objc_msgSend(v8 "colorAttachments")];
        v227 = v200[1];
        v228 = &v189[v198];
        v229 = &v189[v198] + v227 - *(&v189[v198 + 1] + v227);
        if (*(v229 + 2) >= 0x13u && (v230 = *(v229 + 11)) != 0)
        {
          v231 = *(&v189[v198 + 1] + v227 + v230);
        }

        else
        {
          v231 = 1;
        }

        [objc_msgSend(objc_msgSend(v8 "colorAttachments")];
        v232 = v200[1];
        v233 = v232 - *(v228 + v232 + 4);
        if (*(v228 + v233 + 4) >= 7u && (v234 = *(&v189[v198 + 2] + v233 + 2)) != 0)
        {
          v235 = *(&v189[v198 + 1] + v232 + v234);
        }

        else
        {
          v235 = 15;
        }

        [objc_msgSend(objc_msgSend(v8 "colorAttachments")];
        ++v198;
      }

      while (v199 < *v189);
    }
  }

  v236 = [v8 fragmentLinkedFunctions];
  v237 = (v123 - *v123);
  if (*v237 >= 0x37u && (v238 = v237[27]) != 0)
  {
    v239 = v123 + v238 + *(v123 + v238);
  }

  else
  {
    v239 = 0;
  }

  [(_MTLBinaryArchive *)self setMTLLinkedFunctions:v236 LFS:v239 obj:a4 destinationArchive:a5 error:a6];
  return v8;
}

- (id)newTileRenderPipelineDescriptorWithScript:(const PipelineScript *)a3 obj:(void *)a4 destinationArchive:(id)a5 error:(id *)a6
{
  v11 = objc_opt_new();
  v12 = Mtl4::FunctionConstantValue::value_as_ConstantFloat(a3);
  v13 = (v12 - *v12);
  if (*v13 >= 7u && (v14 = v13[3]) != 0)
  {
    v15 = (v12 + v14 + *(v12 + v14));
  }

  else
  {
    v15 = 0;
  }

  v16 = (v15 - *v15);
  if (*v16 >= 0xDu && (v17 = v16[6]) != 0)
  {
    v18 = *(v15 + v17);
  }

  else
  {
    v18 = 0;
  }

  [v11 setColorSampleCount:v18];
  v19 = (v15 - *v15);
  if (*v19 >= 9u && (v20 = v19[4]) != 0)
  {
    v21 = *(v15 + v20);
  }

  else
  {
    v21 = 1;
  }

  [v11 setMaxCallStackDepth:v21];
  v22 = (v15 - *v15);
  if (*v22 >= 7u && (v23 = v22[3]) != 0)
  {
    v24 = *(v15 + v23);
  }

  else
  {
    v24 = 0;
  }

  [v11 setMaxTotalThreadsPerThreadgroup:v24];
  v25 = (v15 - *v15);
  if (*v25 < 0x19u)
  {
    goto LABEL_22;
  }

  v26 = v25[12];
  if (!v26)
  {
LABEL_23:
    v29 = 0;
    v30 = 0;
    goto LABEL_24;
  }

  v27 = v15 + v26 + *(v15 + v26);
  v28 = *v27;
  if (!*v27)
  {
LABEL_22:
    v26 = 0;
    goto LABEL_23;
  }

  v26 = *(v27 + 4);
  if (v28 == 1)
  {
    v29 = 1;
LABEL_66:
    v30 = 1;
    goto LABEL_24;
  }

  v29 = *(v27 + 12);
  if (v28 < 3)
  {
    goto LABEL_66;
  }

  v30 = *(v27 + 20);
LABEL_24:
  v68[0] = v26;
  v68[1] = v29;
  v68[2] = v30;
  [v11 setRequiredThreadsPerThreadgroup:v68];
  v31 = (v15 - *v15);
  if (*v31 >= 0xBu && (v32 = v31[5]) != 0)
  {
    v33 = *(v15 + v32);
  }

  else
  {
    v33 = 1;
  }

  [v11 setRasterSampleCount:v33];
  v34 = (v15 - *v15);
  v36 = *v34 >= 0x13u && (v35 = v34[9]) != 0 && *(v15 + v35) != 0;
  [v11 setSupportAddingBinaryFunctions:v36];
  v37 = (v15 - *v15);
  if (*v37 >= 0x15u && (v38 = v37[10]) != 0)
  {
    v39 = *(v15 + v38);
  }

  else
  {
    v39 = 0;
  }

  [v11 setTextureWriteRoundingMode:v39];
  v40 = (v15 - *v15);
  v42 = *v40 >= 5u && (v41 = v40[2]) != 0 && *(v15 + v41) != 0;
  [v11 setThreadgroupSizeMatchesTileSize:v42];
  v43 = [v11 linkedFunctions];
  v44 = (v15 - *v15);
  if (*v44 >= 0x17u && (v45 = v44[11]) != 0)
  {
    v46 = v15 + v45 + *(v15 + v45);
  }

  else
  {
    v46 = 0;
  }

  [(_MTLBinaryArchive *)self setMTLLinkedFunctions:v43 LFS:v46 obj:a4 destinationArchive:a5 error:a6];
  v47 = *v15;
  v48 = -v47;
  v49 = (v15 - v47);
  if (*v49 >= 0x11u)
  {
    v50 = v49[8];
    if (v50)
    {
      v51 = (v15 + v50 + *(v15 + v50));
      v52 = v51 + 1;
      if (*v51)
      {
        v53 = 0;
        do
        {
          v54 = *v52;
          v55 = v54 - *(v52 + v54);
          if (*(v52 + v55) >= 5u && (v56 = *(v52 + v55 + 4)) != 0)
          {
            v57 = *(v52 + v54 + v56);
          }

          else
          {
            v57 = 0;
          }

          [objc_msgSend(objc_msgSend(v11 "tileBuffers")];
          ++v52;
        }

        while (v53 < *v51);
      }

      v48 = -*v15;
    }
  }

  v58 = (v15 + v48);
  if (*v58 >= 0xFu)
  {
    v59 = v58[7];
    if (v59)
    {
      v60 = (v15 + v59 + *(v15 + v59));
      v61 = v60 + 1;
      if (*v60)
      {
        v62 = 0;
        do
        {
          v63 = *v61;
          v64 = v63 - *(v61 + v63);
          if (*(v61 + v64) >= 5u && (v65 = *(v61 + v64 + 4)) != 0)
          {
            v66 = *(v61 + v63 + v65);
          }

          else
          {
            v66 = 0;
          }

          [objc_msgSend(objc_msgSend(v11 "colorAttachments")];
          ++v61;
        }

        while (v62 < *v60);
      }
    }
  }

  return v11;
}

- (id)newMeshRenderPipelineDescriptorWithScript:(const PipelineScript *)a3 obj:(void *)a4 destinationArchive:(id)a5 error:(id *)a6
{
  v10 = objc_opt_new();
  v11 = Mtl4::FunctionConstantValue::value_as_ConstantFloat2(a3);
  v12 = *v11;
  v13 = (v11 - v12);
  v14 = *(v11 - v12);
  if (v14 < 5)
  {
    return v10;
  }

  v15 = v11;
  v16 = v13[2];
  if (v14 < 7)
  {
    if (!v13[2])
    {
      return v10;
    }

    v252 = a6;
    v18 = 0;
    v17 = 1;
    v254 = 1;
LABEL_15:
    v19 = (v18 - *v18);
    if (*v19 >= 7u && (v20 = v19[3]) != 0)
    {
      v21 = *(v18 + v20);
    }

    else
    {
      v21 = 0;
    }

    [v10 setMaxTotalThreadsPerObjectThreadgroup:{v21, v252}];
    v22 = (v18 - *v18);
    if (*v22 >= 0x1Fu)
    {
      v23 = v22[15];
      if (!v23)
      {
LABEL_25:
        v26 = 0;
        v27 = 0;
        goto LABEL_26;
      }

      v24 = v18 + v23 + *(v18 + v23);
      v25 = *v24;
      if (*v24)
      {
        v23 = *(v24 + 4);
        if (v25 == 1)
        {
          v26 = 1;
        }

        else
        {
          v26 = *(v24 + 12);
          if (v25 >= 3)
          {
            v27 = *(v24 + 20);
            goto LABEL_26;
          }
        }

        v27 = 1;
LABEL_26:
        v257 = v23;
        v258 = v26;
        v259 = v27;
        [v10 setRequiredThreadsPerObjectThreadgroup:&v257];
        v28 = (v18 - *v18);
        if (*v28 >= 0xDu && (v29 = v28[6]) != 0)
        {
          v30 = *(v18 + v29);
        }

        else
        {
          v30 = 1;
        }

        [v10 setMaxObjectCallStackDepth:v30];
        v31 = (v18 - *v18);
        if (*v31 >= 0xBu && (v32 = v31[5]) != 0)
        {
          v33 = *(v18 + v32);
        }

        else
        {
          v33 = 0;
        }

        [v10 setMaxTotalThreadgroupsPerMeshGrid:v33];
        v34 = (v18 - *v18);
        if (*v34 >= 0xFu && (v35 = v34[7]) != 0)
        {
          v36 = *(v18 + v35);
        }

        else
        {
          v36 = 1;
        }

        [v10 setMaxVertexAmplificationCount:v36];
        v37 = (v18 - *v18);
        v39 = *v37 >= 0x1Bu && (v38 = v37[13]) != 0 && *(v18 + v38) != 0;
        [v10 setNeedsCustomBorderColorSamplers:v39];
        v40 = (v18 - *v18);
        if (*v40 >= 9u && (v41 = v40[4]) != 0)
        {
          v42 = *(v18 + v41);
        }

        else
        {
          v42 = 0;
        }

        [v10 setPayloadMemoryLength:v42];
        v43 = (v18 - *v18);
        v45 = *v43 >= 0x17u && (v44 = v43[11]) != 0 && *(v18 + v44) != 0;
        [v10 setSupportAddingObjectBinaryFunctions:v45];
        v46 = (v18 - *v18);
        v48 = *v46 >= 0x15u && (v47 = v46[10]) != 0 && *(v18 + v47) != 0;
        [v10 setSupportIndirectCommandBuffers:v48];
        v49 = (v18 - *v18);
        if (*v49 >= 0x19u && (v50 = v49[12]) != 0)
        {
          v51 = *(v18 + v50);
        }

        else
        {
          v51 = 0;
        }

        [v10 setTextureWriteRoundingMode:v51];
        v52 = (v18 - *v18);
        v54 = *v52 >= 5u && (v53 = v52[2]) != 0 && *(v18 + v53) != 0;
        [v10 setObjectThreadgroupSizeIsMultipleOfThreadExecutionWidth:v54];
        v55 = (v18 - *v18);
        if (*v55 >= 0x11u && (v56 = v55[8]) != 0)
        {
          v57 = *(v18 + v56);
        }

        else
        {
          v57 = 0;
        }

        [v10 setVertexAmplificationMode:v57];
        v58 = (v18 - *v18);
        if (*v58 >= 0x13u)
        {
          v59 = v58[9];
          if (v59)
          {
            v60 = (v18 + v59 + *(v18 + v59));
            v61 = v60 + 1;
            if (*v60)
            {
              v62 = 0;
              do
              {
                v63 = *v61;
                v64 = v63 - *(v61 + v63);
                if (*(v61 + v64) >= 5u && (v65 = *(v61 + v64 + 4)) != 0)
                {
                  v66 = *(v61 + v63 + v65);
                }

                else
                {
                  v66 = 0;
                }

                [objc_msgSend(objc_msgSend(v10 "objectBuffers")];
                ++v61;
              }

              while (v62 < *v60);
            }
          }
        }

        v67 = [v10 objectLinkedFunctions];
        v68 = (v18 - *v18);
        if (*v68 >= 0x1Du && (v69 = v68[14]) != 0)
        {
          v70 = v18 + v69 + *(v18 + v69);
        }

        else
        {
          v70 = 0;
        }

        a6 = v253;
        [(_MTLBinaryArchive *)self setMTLLinkedFunctions:v67 LFS:v70 obj:a4 destinationArchive:a5 error:v253];
        if (v17)
        {
          goto LABEL_154;
        }

        v12 = *v15;
LABEL_81:
        v71 = (v15 - v12);
        if (*v71 >= 0xDu && (v72 = v71[6]) != 0)
        {
          v73 = (v15 + v72 + *(v15 + v72));
        }

        else
        {
          v73 = 0;
        }

        v74 = (v73 - *v73);
        if (*v74 >= 7u && (v75 = v74[3]) != 0)
        {
          v76 = *(v73 + v75);
        }

        else
        {
          v76 = 0;
        }

        [v10 setMaxTotalThreadgroupsPerMeshGrid:v76];
        v77 = (v73 - *v73);
        if (*v77 >= 0x21u)
        {
          v78 = v77[16];
          if (!v78)
          {
LABEL_95:
            v81 = 0;
            v82 = 0;
            goto LABEL_96;
          }

          v79 = v73 + v78 + *(v73 + v78);
          v80 = *v79;
          if (*v79)
          {
            v78 = *(v79 + 4);
            if (v80 == 1)
            {
              v81 = 1;
            }

            else
            {
              v81 = *(v79 + 12);
              if (v80 >= 3)
              {
                v82 = *(v79 + 20);
                goto LABEL_96;
              }
            }

            v82 = 1;
LABEL_96:
            v257 = v78;
            v258 = v81;
            v259 = v82;
            [v10 setRequiredThreadsPerMeshThreadgroup:&v257];
            v83 = (v73 - *v73);
            if (*v83 >= 0x1Bu && (v84 = v83[13]) != 0)
            {
              v85 = *(v73 + v84);
            }

            else
            {
              v85 = 255;
            }

            [v10 setClipDistanceEnableMask:v85];
            v86 = (v73 - *v73);
            if (*v86 >= 0xBu && (v87 = v86[5]) != 0)
            {
              v88 = *(v73 + v87);
            }

            else
            {
              v88 = 1;
            }

            [v10 setMaxMeshCallStackDepth:v88];
            v89 = (v73 - *v73);
            if (*v89 >= 0xFu && (v90 = v89[7]) != 0)
            {
              v91 = *(v73 + v90);
            }

            else
            {
              v91 = 1;
            }

            [v10 setMaxVertexAmplificationCount:v91];
            v92 = (v73 - *v73);
            v94 = *v92 >= 0x1Du && (v93 = v92[14]) != 0 && *(v73 + v93) != 0;
            [v10 setNeedsCustomBorderColorSamplers:v94];
            v95 = (v73 - *v73);
            if (*v95 >= 9u && (v96 = v95[4]) != 0)
            {
              v97 = *(v73 + v96);
            }

            else
            {
              v97 = 0;
            }

            [v10 setPayloadMemoryLength:v97];
            v98 = (v73 - *v73);
            v100 = *v98 < 0xDu || (v99 = v98[6]) == 0 || *(v73 + v99) != 0;
            [v10 setRasterizationEnabled:v100];
            v101 = (v73 - *v73);
            v103 = *v101 >= 0x17u && (v102 = v101[11]) != 0 && *(v73 + v102) != 0;
            [v10 setSupportAddingMeshBinaryFunctions:v103];
            v104 = (v73 - *v73);
            v106 = *v104 >= 0x15u && (v105 = v104[10]) != 0 && *(v73 + v105) != 0;
            [v10 setSupportIndirectCommandBuffers:v106];
            v107 = (v73 - *v73);
            if (*v107 >= 0x19u && (v108 = v107[12]) != 0)
            {
              v109 = *(v73 + v108);
            }

            else
            {
              v109 = 0;
            }

            [v10 setTextureWriteRoundingMode:v109];
            v110 = (v73 - *v73);
            v112 = *v110 >= 5u && (v111 = v110[2]) != 0 && *(v73 + v111) != 0;
            [v10 setMeshThreadgroupSizeIsMultipleOfThreadExecutionWidth:v112];
            v113 = (v73 - *v73);
            if (*v113 >= 0x11u && (v114 = v113[8]) != 0)
            {
              v115 = *(v73 + v114);
            }

            else
            {
              v115 = 0;
            }

            [v10 setVertexAmplificationMode:v115];
            v116 = (v73 - *v73);
            if (*v116 >= 0x13u)
            {
              v117 = v116[9];
              if (v117)
              {
                v118 = (v73 + v117 + *(v73 + v117));
                v119 = v118 + 1;
                if (*v118)
                {
                  v120 = 0;
                  do
                  {
                    v121 = *v119;
                    v122 = v121 - *(v119 + v121);
                    if (*(v119 + v122) >= 5u && (v123 = *(v119 + v122 + 4)) != 0)
                    {
                      v124 = *(v119 + v121 + v123);
                    }

                    else
                    {
                      v124 = 0;
                    }

                    [objc_msgSend(objc_msgSend(v10 "meshBuffers")];
                    ++v119;
                  }

                  while (v120 < *v118);
                }
              }
            }

            v125 = [v10 meshLinkedFunctions];
            v126 = (v73 - *v73);
            if (*v126 >= 0x1Fu && (v127 = v126[15]) != 0)
            {
              v128 = v73 + v127 + *(v73 + v127);
            }

            else
            {
              v128 = 0;
            }

            [(_MTLBinaryArchive *)self setMTLLinkedFunctions:v125 LFS:v128 obj:a4 destinationArchive:a5 error:a6];
            goto LABEL_154;
          }
        }

        v78 = 0;
        goto LABEL_95;
      }
    }

    v23 = 0;
    goto LABEL_25;
  }

  v17 = v13[3] == 0;
  if (v14 > 8 && v13[4])
  {
    v254 = 0;
    if (!v13[2])
    {
      goto LABEL_6;
    }

    goto LABEL_11;
  }

  v254 = 1;
  if (v13[2])
  {
LABEL_11:
    v252 = a6;
    if (v14 >= 0xB && v13[5])
    {
      v18 = (v11 + v13[5] + *(v11 + v13[5]));
    }

    else
    {
      v18 = 0;
    }

    goto LABEL_15;
  }

LABEL_6:
  if (v13[3])
  {
    goto LABEL_81;
  }

LABEL_154:
  if ((v254 & 1) == 0)
  {
    v129 = (v15 - *v15);
    if (*v129 >= 0xFu && (v130 = v129[7]) != 0)
    {
      v131 = (v15 + v130 + *(v15 + v130));
    }

    else
    {
      v131 = 0;
    }

    v132 = (v131 - *v131);
    v134 = *v132 >= 0x29u && (v133 = v132[20]) != 0 && *(v131 + v133) != 0;
    [v10 setAlphaTestEnabled:v134];
    v135 = (v131 - *v131);
    if (*v135 >= 0x2Bu && (v136 = v135[21]) != 0)
    {
      v137 = *(v131 + v136);
    }

    else
    {
      v137 = 0;
    }

    [v10 setAlphaTestFunction:v137];
    v138 = (v131 - *v131);
    if (*v138 >= 9u && (v139 = v138[4]) != 0)
    {
      v140 = *(v131 + v139);
    }

    else
    {
      v140 = 0;
    }

    [v10 setAlphaToCoverageStateSPI:v140];
    v141 = (v131 - *v131);
    if (*v141 >= 0xBu && (v142 = v141[5]) != 0)
    {
      v143 = *(v131 + v142);
    }

    else
    {
      v143 = 0;
    }

    [v10 setAlphaToOneStateSPI:v143];
    v144 = (v131 - *v131);
    if (*v144 >= 0x39u && (v145 = v144[28]) != 0)
    {
      v146 = *(v131 + v145);
    }

    else
    {
      v146 = 0;
    }

    [v10 setColorAttachmentMappingState:v146];
    v147 = (v131 - *v131);
    if (*v147 >= 0xFu && (v148 = v147[7]) != 0)
    {
      v149 = *(v131 + v148);
    }

    else
    {
      v149 = 0;
    }

    [v10 setColorSampleCount:v149];
    v150 = (v131 - *v131);
    if (*v150 >= 0x19u && (v151 = v150[12]) != 0)
    {
      v152 = *(v131 + v151);
    }

    else
    {
      v152 = 0;
    }

    [v10 setDepthAttachmentPixelFormat:v152];
    v153 = (v131 - *v131);
    if (*v153 >= 0x35u && (v154 = v153[26]) != 0)
    {
      v155 = *(v131 + v154);
    }

    else
    {
      v155 = 0;
    }

    [v10 setFragmentDepthCompareClampMask:v155];
    v156 = (v131 - *v131);
    v158 = *v156 >= 0x2Fu && (v157 = v156[23]) != 0 && *(v131 + v157) != 0;
    [v10 setDepthStencilWriteDisabled:v158];
    v159 = (v131 - *v131);
    if (*v159 >= 0x27u && (v160 = v159[19]) != 0)
    {
      v161 = *(v131 + v160);
    }

    else
    {
      v161 = 0;
    }

    [v10 setLogicOperation:v161];
    v162 = (v131 - *v131);
    v164 = *v162 >= 0x25u && (v163 = v162[18]) != 0 && *(v131 + v163) != 0;
    [v10 setLogicOperationEnabled:v164];
    v165 = (v131 - *v131);
    if (*v165 >= 5u && (v166 = v165[2]) != 0)
    {
      v167 = *(v131 + v166);
    }

    else
    {
      v167 = 1;
    }

    [v10 setMaxFragmentCallStackDepth:v167];
    v168 = (v131 - *v131);
    v170 = *v168 >= 0x33u && (v169 = v168[25]) != 0 && *(v131 + v169) != 0;
    [v10 setNeedsCustomBorderColorSamplers:v170];
    v171 = (v131 - *v131);
    v173 = *v171 >= 0x31u && (v172 = v171[24]) != 0 && *(v131 + v172) != 0;
    [v10 setOpenGLModeEnabled:v173];
    v174 = (v131 - *v131);
    v176 = *v174 >= 0x2Du && (v175 = v174[22]) != 0 && *(v131 + v175) != 0;
    [v10 setPointSmoothEnabled:v176];
    v177 = (v131 - *v131);
    if (*v177 >= 0xDu && (v178 = v177[6]) != 0)
    {
      v179 = *(v131 + v178);
    }

    else
    {
      v179 = 1;
    }

    [v10 setRasterSampleCount:v179];
    v180 = (v131 - *v131);
    LODWORD(v181) = 1.0;
    if (*v180 >= 0x13u)
    {
      v182 = v180[9];
      if (v182)
      {
        LODWORD(v181) = *(v131 + v182);
      }
    }

    [v10 setSampleCoverage:v181];
    v183 = (v131 - *v131);
    v185 = *v183 >= 0x15u && (v184 = v183[10]) != 0 && *(v131 + v184) != 0;
    [v10 setSampleCoverageInvert:v185];
    v186 = (v131 - *v131);
    if (*v186 >= 0x11u && (v187 = v186[8]) != 0)
    {
      v188 = *(v131 + v187);
    }

    else
    {
      v188 = -1;
    }

    [v10 setSampleMask:v188];
    v189 = (v131 - *v131);
    if (*v189 >= 0x1Bu && (v190 = v189[13]) != 0)
    {
      v191 = *(v131 + v190);
    }

    else
    {
      v191 = 0;
    }

    v255 = a4;
    [v10 setStencilAttachmentPixelFormat:v191];
    v192 = (v131 - *v131);
    v193 = a5;
    if (*v192 >= 0x21u && (v194 = v192[16]) != 0)
    {
      v195 = a6;
      v196 = *(v131 + v194) != 0;
    }

    else
    {
      v195 = a6;
      v196 = 0;
    }

    [v10 setSupportAddingFragmentBinaryFunctions:v196];
    v197 = (v131 - *v131);
    v198 = *v197;
    if (v198 >= 0x17)
    {
      if (v197[11])
      {
        v199 = (v131 + v197[11] + *(v131 + v197[11]));
      }

      else
      {
        v199 = 0;
      }

      if (v198 >= 0x1D)
      {
        v200 = v197[14];
        if (v200)
        {
          v201 = (v131 + v200 + *(v131 + v200));
          v202 = v201 + 1;
          if (*v201)
          {
            v203 = 0;
            do
            {
              v204 = *v202;
              v205 = v204 - *(v202 + v204);
              if (*(v202 + v205) >= 5u && (v206 = *(v202 + v205 + 4)) != 0)
              {
                v207 = *(v202 + v204 + v206);
              }

              else
              {
                v207 = 0;
              }

              [objc_msgSend(objc_msgSend(v10 "fragmentBuffers")];
              ++v202;
            }

            while (v203 < *v201);
          }
        }
      }

      if (v199 && *v199)
      {
        v208 = 0;
        v209 = 0;
        do
        {
          v210 = &v199[v208];
          v211 = v199[v208 + 1];
          v212 = &v199[v208] + v211 - *(&v199[v208 + 1] + v211);
          if (*(v212 + 2) >= 0xBu && (v213 = *(v212 + 7)) != 0)
          {
            v214 = *(&v199[v208 + 1] + v211 + v213);
          }

          else
          {
            v214 = 0;
          }

          [objc_msgSend(objc_msgSend(v10 "colorAttachments")];
          v215 = v210[1];
          v216 = v215 - *(v210 + v215 + 4);
          if (*(v210 + v216 + 4) >= 9u && (v217 = *(&v199[v208 + 3] + v216)) != 0)
          {
            v218 = *(&v199[v208 + 1] + v215 + v217);
          }

          else
          {
            v218 = 0;
          }

          [objc_msgSend(objc_msgSend(v10 "colorAttachments")];
          v219 = v210[1];
          v220 = &v199[v208];
          v221 = &v199[v208] + v219 - *(&v199[v208 + 1] + v219);
          if (*(v221 + 2) >= 0xFu && (v222 = *(v221 + 9)) != 0)
          {
            v223 = *(&v199[v208 + 1] + v219 + v222);
          }

          else
          {
            v223 = 0;
          }

          [objc_msgSend(objc_msgSend(v10 "colorAttachments")];
          v224 = v210[1];
          v225 = v224 - *(v220 + v224 + 4);
          if (*(v220 + v225 + 4) >= 0x11u && (v226 = *(&v199[v208 + 5] + v225)) != 0)
          {
            v227 = *(&v199[v208 + 1] + v224 + v226);
          }

          else
          {
            v227 = 0;
          }

          [objc_msgSend(objc_msgSend(v10 "colorAttachments")];
          v228 = v210[1];
          v229 = &v199[v208];
          v230 = &v199[v208] + v228 - *(&v199[v208 + 1] + v228);
          if (*(v230 + 2) >= 5u && (v231 = *(v230 + 4)) != 0)
          {
            v232 = *(&v199[v208 + 1] + v228 + v231);
          }

          else
          {
            v232 = 0;
          }

          [objc_msgSend(objc_msgSend(v10 "colorAttachments")];
          v233 = v210[1];
          v234 = v233 - *(v229 + v233 + 4);
          if (*(v229 + v234 + 4) >= 0x15u && (v235 = *(&v199[v208 + 6] + v234)) != 0)
          {
            v236 = *(&v199[v208 + 1] + v233 + v235);
          }

          else
          {
            v236 = 1;
          }

          [objc_msgSend(objc_msgSend(v10 "colorAttachments")];
          v237 = v210[1];
          v238 = &v199[v208];
          v239 = &v199[v208] + v237 - *(&v199[v208 + 1] + v237);
          if (*(v239 + 2) >= 0x13u && (v240 = *(v239 + 11)) != 0)
          {
            v241 = *(&v199[v208 + 1] + v237 + v240);
          }

          else
          {
            v241 = 1;
          }

          [objc_msgSend(objc_msgSend(v10 "colorAttachments")];
          v242 = v210[1];
          v243 = v242 - *(v238 + v242 + 4);
          if (*(v238 + v243 + 4) >= 7u && (v244 = *(&v199[v208 + 2] + v243 + 2)) != 0)
          {
            v245 = *(&v199[v208 + 1] + v242 + v244);
          }

          else
          {
            v245 = 15;
          }

          [objc_msgSend(objc_msgSend(v10 "colorAttachments")];
          ++v208;
        }

        while (v209 < *v199);
      }
    }

    v246 = [v10 fragmentLinkedFunctions];
    v247 = (v131 - *v131);
    if (*v247 < 0x37u)
    {
      v250 = 0;
      v249 = v195;
    }

    else
    {
      v248 = v247[27];
      v249 = v195;
      if (v248)
      {
        v250 = v131 + v248 + *(v131 + v248);
      }

      else
      {
        v250 = 0;
      }
    }

    [(_MTLBinaryArchive *)self setMTLLinkedFunctions:v246 LFS:v250 obj:v255 destinationArchive:v193 error:v249];
  }

  return v10;
}

- (id)archiveFunctionIds
{
  v3 = [MEMORY[0x1E695DF70] array];
  for (i = self->_airntBinaryList.__table_.__first_node_.__next_; i; i = *i)
  {
    v9 = 0;
    v10 = 0;
    v11 = 0;
    std::vector<std::pair<MTLHashKey,unsigned int>>::__init_with_size[abi:ne200100]<std::pair<MTLHashKey,unsigned int>*,std::pair<MTLHashKey,unsigned int>*>(&v9, i[3], i[4], 0x2E8BA2E8BA2E8BA3 * ((i[4] - i[3]) >> 3));
    v5 = v9;
    if (v10 != v9)
    {
      v6 = 0;
      v7 = 0;
      do
      {
        [v3 addObject:{objc_msgSend(MEMORY[0x1E696B098], "valueWithPointer:", v5 + v6)}];
        ++v7;
        v5 = v9;
        v6 += 88;
      }

      while (v7 < 0x2E8BA2E8BA2E8BA3 * ((v10 - v9) >> 3));
    }

    v12 = &v9;
    std::vector<std::pair<MTLHashKey,unsigned int>>::__destroy_vector::operator()[abi:ne200100](&v12);
  }

  return v3;
}

- (id)newFunctionDescriptorWithAirScript:(const ConstantsSpecializationScript *)a3
{
  v3 = &a3[-*a3->var0];
  if (*v3->var0 < 9u)
  {
    return 0;
  }

  v4 = *v3[8].var0;
  if (!*v3[8].var0)
  {
    return 0;
  }

  v6 = *a3[v4].var0;
  v7 = &a3[v4 + v6];
  v8 = objc_alloc_init(MTLFunctionDescriptor);
  v9 = *v7->var0;
  v10 = -v9;
  v11 = &v7[-v9];
  if (*v11->var0 >= 5u)
  {
    v12 = *v11[4].var0;
    if (v12)
    {
      -[MTLFunctionDescriptor setName:](v8, "setName:", [MEMORY[0x1E696AEC0] stringWithUTF8String:&v7[v12 + 4 + *v7[v12].var0]]);
      v10 = -*v7->var0;
    }
  }

  if (*v7[v10].var0 >= 7u && *v7[v10 + 6].var0)
  {
    -[MTLFunctionDescriptor setSpecializedName:](v8, "setSpecializedName:", [MEMORY[0x1E696AEC0] stringWithUTF8String:&v7[*v7[v10 + 6].var0 + 4 + *v7[*v7[v10 + 6].var0].var0]]);
    v10 = -*v7->var0;
  }

  v13 = &v7[v10];
  if (*v7[v10].var0 >= 9u && (v14 = *v13[8].var0, *v13[8].var0))
  {
    v15 = &v7[v14];
    v16 = *v7[v14].var0;
    v17 = objc_opt_new();
    if (*v15[v16].var0)
    {
      v18 = 0;
      v19 = &a3[v6 + 12 + v4 + v16 + v14];
      do
      {
        v20 = *v19[-8].var0;
        v21 = v20 - *v19[v20 - 8].var0;
        v22 = *v19[v21 - 8].var0;
        if (v22 >= 5)
        {
          v23 = *v19[v21 - 4].var0 ? *v19[v20 - 8 + *v19[v21 - 4].var0].var0 : 0;
          if (v22 >= 7)
          {
            v24 = *v19[v21 - 2].var0;
            if (*v19[v21 - 2].var0)
            {
              LODWORD(v24) = v19[v20 - 8 + v24].var0[0];
            }

            if (v22 >= 9 && (v25 = *v19[v21].var0) != 0)
            {
              v26 = &v19[v20 - 8 + v25 + *v19[v20 - 8 + v25].var0];
            }

            else
            {
              v26 = 0;
            }

            v27 = v24;
            switch(v24)
            {
              case 3:
                v27 = 3;
                goto LABEL_68;
              case 4:
                v27 = 4;
                goto LABEL_68;
              case 5:
                v27 = 5;
                goto LABEL_68;
              case 6:
                v27 = 6;
                goto LABEL_68;
              case 16:
                v27 = 16;
                goto LABEL_68;
              case 17:
                v27 = 17;
                goto LABEL_68;
              case 18:
                v27 = 18;
                goto LABEL_68;
              case 19:
                v27 = 19;
                goto LABEL_68;
              case 29:
                v27 = 29;
                goto LABEL_68;
              case 30:
                v27 = 30;
                goto LABEL_68;
              case 31:
                v27 = 31;
                goto LABEL_68;
              case 32:
                v27 = 32;
                goto LABEL_68;
              case 33:
                v27 = 33;
                goto LABEL_68;
              case 34:
                v27 = 34;
                goto LABEL_68;
              case 35:
                v27 = 35;
                goto LABEL_68;
              case 36:
                v27 = 36;
                goto LABEL_68;
              case 37:
                v27 = 37;
                goto LABEL_68;
              case 38:
                v27 = 38;
                goto LABEL_68;
              case 39:
                v27 = 39;
                goto LABEL_68;
              case 40:
                v27 = 40;
                goto LABEL_68;
              case 41:
                v27 = 41;
                goto LABEL_68;
              case 42:
                v27 = 42;
                goto LABEL_68;
              case 43:
                v27 = 43;
                goto LABEL_68;
              case 44:
                v27 = 44;
                goto LABEL_68;
              case 45:
                v27 = 45;
                goto LABEL_68;
              case 46:
                v27 = 46;
                goto LABEL_68;
              case 47:
                v27 = 47;
                goto LABEL_68;
              case 48:
                v27 = 48;
                goto LABEL_68;
              case 49:
                v27 = 49;
                goto LABEL_68;
              case 50:
                v27 = 50;
                goto LABEL_68;
              case 51:
                v27 = 51;
                goto LABEL_68;
              case 52:
                v27 = 52;
                goto LABEL_68;
              case 53:
                goto LABEL_68;
              case 54:
                v27 = 54;
                goto LABEL_68;
              case 55:
                v27 = 55;
                goto LABEL_68;
              case 56:
                v27 = 56;
                goto LABEL_68;
              case 81:
                v27 = 81;
                goto LABEL_68;
              case 82:
                v27 = 82;
                goto LABEL_68;
              case 83:
                v27 = 83;
                goto LABEL_68;
              case 84:
                v27 = 84;
                goto LABEL_68;
              case 85:
                v27 = 85;
                goto LABEL_68;
              case 86:
                v27 = 86;
                goto LABEL_68;
              case 87:
                v27 = 87;
                goto LABEL_68;
              case 88:
                v27 = 88;
LABEL_68:
                [v17 setConstantValue:v26 type:v27 atIndex:v23];
                break;
              default:
                break;
            }
          }
        }

        ++v18;
        v19 += 4;
      }

      while (*v15[v16].var0 > v18);
    }
  }

  else
  {
    v17 = objc_opt_new();
  }

  [(MTLFunctionDescriptor *)v8 setConstantValues:v17];

  return v8;
}

- (id)newRecompiledFunctionWithAIRNTObject:(void *)a3 index:(unint64_t)a4 destinationArchive:(id)a5 error:(id *)a6
{
  v10 = 0;
  v11 = &v10;
  v12 = 0x3052000000;
  v13 = __Block_byref_object_copy_;
  v14 = __Block_byref_object_dispose_;
  v15 = 0;
  queue = self->_queue;
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __89___MTLBinaryArchive_newRecompiledFunctionWithAIRNTObject_index_destinationArchive_error___block_invoke;
  v9[3] = &unk_1E6EEAB40;
  v9[8] = a4;
  v9[9] = a6;
  v9[6] = &v10;
  v9[7] = a3;
  v9[4] = self;
  v9[5] = a5;
  dispatch_sync(queue, v9);
  v7 = v11[5];
  _Block_object_dispose(&v10, 8);
  return v7;
}

- (id)getLibraryDescriptorWithAirScrpt:(const StitchingScript *)a3
{
  v136[1] = *MEMORY[0x1E69E9840];
  v4 = objc_opt_new();
  v5 = &a3[-*a3->var0];
  if (*v5->var0 < 9u)
  {
    v6 = 0;
  }

  else
  {
    v6 = *v5[8].var0;
    if (v6)
    {
      v6 = (v6 + a3 + *(v6 + a3));
    }
  }

  v7 = (v6 - *v6);
  if (*v7 >= 7u && (v8 = v7[3]) != 0)
  {
    v9 = (v6 + v8 + *(v6 + v8));
  }

  else
  {
    v9 = 0;
  }

  v10 = objc_opt_new();
  v11 = objc_alloc(MEMORY[0x1E696AEC0]);
  v12 = (v9 - *v9);
  if (*v12 >= 5u && (v13 = v12[2]) != 0)
  {
    v14 = (v9 + v13 + *(v9 + v13));
  }

  else
  {
    v14 = 0;
  }

  flatbuffers::String::str(v14, &__p);
  if (v135 >= 0)
  {
    p_p = &__p;
  }

  else
  {
    p_p = __p;
  }

  [v10 setFunctionName:{objc_msgSend(v11, "initWithUTF8String:", p_p)}];
  if (SHIBYTE(v135) < 0)
  {
    operator delete(__p);
  }

  v121 = v4;
  __p = 0;
  v134 = 0;
  v135 = 0;
  v16 = (v9 - *v9);
  if (*v16 >= 0xBu)
  {
    v17 = v16[5];
    if (v17)
    {
      v18 = (v9 + v17 + *(v9 + v17));
      if (*v18)
      {
        v19 = 0;
        v20 = v18 + 1;
        do
        {
          v21 = *v20;
          v22 = v21 - *(v20 + v21);
          if (*(v20 + v22) >= 5u)
          {
            v23 = *(v20 + v22 + 4);
            if (v23)
            {
              v24 = *(v20 + v21 + v23);
              if (v24 == 2)
              {
                v130 = [MTLFunctionStitchingAttributeKernel alloc];
                std::vector<MTLPipelineLibrarySerializer::SerializedObject>::push_back[abi:ne200100](&__p, &v130);
              }

              else if (v24 == 1)
              {
                v130 = [MTLFunctionStitchingAttributeAlwaysInline alloc];
                std::vector<MTLPipelineLibrarySerializer::SerializedObject>::push_back[abi:ne200100](&__p, &v130);
              }
            }
          }

          ++v19;
          v25 = *v18;
          ++v20;
        }

        while (v19 < v25);
        if (v25)
        {
          [v10 setAttributes:{objc_msgSend(objc_alloc(MEMORY[0x1E695DEC8]), "initWithObjects:count:")}];
        }
      }
    }
  }

  v120 = v10;
  v26 = 0;
  v130 = 0;
  v131 = 0;
  v132 = 0;
  v27 = (v9 + *(v9 - *v9 + 6));
  v28 = (v27 + *v27);
  do
  {
    v29 = &v28[v26 + 1];
    v30 = (v29 + *v29);
    v31 = (v30 - *v30);
    if (*v31 < 5u)
    {
      goto LABEL_152;
    }

    v32 = v31[2];
    if (!v32)
    {
      goto LABEL_152;
    }

    v33 = *(v30 + v32);
    if (v33 <= 5)
    {
      if (v33 > 2)
      {
        if (v33 == 3)
        {
          v74 = [MTLFunctionStitchingInputBuffer alloc];
          v75 = AirReflection::Node::node_as_VertexFunction((v29 + *v29));
          v76 = (v75 - *v75);
          if (*v76 >= 7u && (v77 = v76[3]) != 0)
          {
            v78 = *(v75 + v77);
          }

          else
          {
            v78 = 0;
          }

          v127 = [(MTLFunctionStitchingInputBuffer *)v74 initWithBindIndex:v78];
          std::vector<MTLPipelineLibrarySerializer::SerializedObject>::push_back[abi:ne200100](&v130, &v127);
        }

        else if (v33 == 4)
        {
          v62 = AirReflection::Node::node_as_VisibleFunction(v30);
          v63 = [MTLFunctionStitchingInputBufferAddress alloc];
          v64 = (v62 - *v62);
          v65 = *v64;
          if (v65 < 5)
          {
            v66 = 0;
          }

          else
          {
            v66 = v64[2];
            if (v64[2])
            {
              v66 = (v66 + v62 + *(v66 + v62));
            }
          }

          v86 = (v66 - *v66);
          if (*v86 >= 7u && (v87 = v86[3]) != 0)
          {
            v88 = *(v66 + v87);
          }

          else
          {
            v88 = 0;
          }

          if (v65 >= 7 && (v89 = v64[3]) != 0)
          {
            v90 = *(v62 + v89);
          }

          else
          {
            v90 = 0;
          }

          v127 = [(MTLFunctionStitchingInputBufferAddress *)v63 initWithBindIndex:v88 byteOffset:v90 dereference:0];
          std::vector<MTLPipelineLibrarySerializer::SerializedObject>::push_back[abi:ne200100](&v130, &v127);
        }

        else
        {
          v39 = AirReflection::Node::node_as_VisibleFunction(v30);
          v40 = [MTLFunctionStitchingInputBufferAddress alloc];
          v41 = (v39 - *v39);
          v42 = *v41;
          if (v42 < 5)
          {
            v43 = 0;
          }

          else
          {
            v43 = v41[2];
            if (v41[2])
            {
              v43 = (v43 + v39 + *(v43 + v39));
            }
          }

          v91 = (v43 - *v43);
          if (*v91 >= 7u && (v92 = v91[3]) != 0)
          {
            v93 = *(v43 + v92);
          }

          else
          {
            v93 = 0;
          }

          if (v42 >= 7 && (v94 = v41[3]) != 0)
          {
            v95 = *(v39 + v94);
          }

          else
          {
            v95 = 0;
          }

          v127 = [(MTLFunctionStitchingInputBufferAddress *)v40 initWithBindIndex:v93 byteOffset:v95 dereference:1];
          std::vector<MTLPipelineLibrarySerializer::SerializedObject>::push_back[abi:ne200100](&v130, &v127);
        }

        goto LABEL_152;
      }

      if (v33 == 1)
      {
        v57 = [MTLFunctionStitchingInputNode alloc];
        v58 = AirReflection::Node::node_as_FragmentFunction((v29 + *v29));
        v59 = (v58 - *v58);
        if (*v59 >= 5u && (v60 = v59[2]) != 0)
        {
          v61 = *(v58 + v60);
        }

        else
        {
          v61 = 0;
        }

        v127 = [(MTLFunctionStitchingInputNode *)v57 initWithArgumentIndex:v61];
        std::vector<MTLPipelineLibrarySerializer::SerializedObject>::push_back[abi:ne200100](&v130, &v127);
        goto LABEL_152;
      }

      if (v33 != 2)
      {
        goto LABEL_152;
      }

      v52 = AirReflection::Node::node_as_KernelFunction(v30);
      v53 = v52;
      v54 = (v52 - *v52);
      v55 = *v54;
      if (v55 < 9)
      {
        if (v55 <= 6)
        {
          v127 = 0;
          v128 = 0;
          v129 = 0;
          v124 = 0;
          v125 = 0;
          v126 = 0;
LABEL_139:
          v106 = [objc_alloc(MEMORY[0x1E695DEC8]) initWithObjects:? count:?];
          v107 = [objc_alloc(MEMORY[0x1E695DEC8]) initWithObjects:? count:?];
          v108 = objc_alloc(MEMORY[0x1E696AEC0]);
          v109 = (v53 - *v53);
          if (*v109 >= 5u && (v110 = v109[2]) != 0)
          {
            v111 = (v53 + v110 + *(v53 + v110));
          }

          else
          {
            v111 = 0;
          }

          flatbuffers::String::str(v111, v122);
          if (v123 >= 0)
          {
            v112 = v122;
          }

          else
          {
            v112 = v122[0];
          }

          v113 = [v108 initWithUTF8String:v112];
          if (v123 < 0)
          {
            operator delete(v122[0]);
          }

          v122[0] = [[MTLFunctionStitchingFunctionNode alloc] initWithName:v113 arguments:v107 controlDependencies:v106];
          std::vector<MTLPipelineLibrarySerializer::SerializedObject>::push_back[abi:ne200100](&v130, v122);
          if (v124)
          {
            v125 = v124;
            operator delete(v124);
          }

LABEL_150:
          if (v127)
          {
            v128 = v127;
            operator delete(v127);
          }

          goto LABEL_152;
        }
      }

      else if (v54[4])
      {
        v56 = (v52 + v54[4] + *(v52 + v54[4]));
LABEL_94:
        v84 = v54[3];
        if (v84)
        {
          v85 = (v52 + v84 + *(v52 + v84));
        }

        else
        {
          v85 = 0;
        }

        v127 = 0;
        v128 = 0;
        v129 = 0;
        v124 = 0;
        v125 = 0;
        v126 = 0;
        if (v56 && *v56)
        {
          v96 = 1;
          do
          {
            v122[0] = *(v130 + v56[v96]);
            std::vector<MTLPipelineLibrarySerializer::SerializedObject>::push_back[abi:ne200100](&v127, v122);
            ++v96;
          }

          while (v96 - 1 < *v56);
        }

        if (v85 && *v85)
        {
          v97 = v125;
          v98 = 1;
          do
          {
            v99 = v85[v98];
            if (v97 >= v126)
            {
              v100 = (v97 - v124) >> 3;
              if ((v100 + 1) >> 61)
              {
                std::vector<std::pair<std::tuple<std::string,unsigned int,unsigned int>,unsigned int>>::__throw_length_error[abi:ne200100]();
              }

              v101 = (v126 - v124) >> 2;
              if (v101 <= v100 + 1)
              {
                v101 = v100 + 1;
              }

              if (v126 - v124 >= 0x7FFFFFFFFFFFFFF8)
              {
                v102 = 0x1FFFFFFFFFFFFFFFLL;
              }

              else
              {
                v102 = v101;
              }

              if (v102)
              {
                std::__allocate_at_least[abi:ne200100]<std::allocator<objc_object  {objcproto18MTLIOScratchBuffer}*>>(&v124, v102);
              }

              v103 = (8 * v100);
              *v103 = *(v130 + v99);
              v97 = (8 * v100 + 8);
              v104 = v103 - (v125 - v124);
              memcpy(v104, v124, v125 - v124);
              v105 = v124;
              v124 = v104;
              v125 = v97;
              v126 = 0;
              if (v105)
              {
                operator delete(v105);
              }
            }

            else
            {
              *v97 = *(v130 + v99);
              v97 += 8;
            }

            ++v98;
            v125 = v97;
          }

          while (v98 - 1 < *v85);
        }

        goto LABEL_139;
      }

      v56 = 0;
      goto LABEL_94;
    }

    if (v33 <= 8)
    {
      if (v33 == 6)
      {
        v79 = AirReflection::Node::node_as_MeshFunction(v30);
        v35 = [MTLFunctionStitchingInputTexture alloc];
        v80 = (v79 - *v79);
        if (*v80 >= 5u && (v81 = v80[2]) != 0)
        {
          v38 = *(v79 + v81);
        }

        else
        {
          v38 = 0;
        }
      }

      else if (v33 == 7)
      {
        v67 = AirReflection::Node::node_as_ObjectFunction(v30);
        v35 = [MTLFunctionStitchingInputSampler alloc];
        v68 = (v67 - *v67);
        if (*v68 >= 5u && (v69 = v68[2]) != 0)
        {
          v38 = *(v67 + v69);
        }

        else
        {
          v38 = 0;
        }
      }

      else
      {
        v34 = Mtl4::FunctionStitching::Node::node_as_ThreadgroupNode(v30);
        v35 = [MTLFunctionStitchingInputThreadgroup alloc];
        v36 = (v34 - *v34);
        if (*v36 >= 5u && (v37 = v36[2]) != 0)
        {
          v38 = *(v34 + v37);
        }

        else
        {
          v38 = 0;
        }
      }

      v127 = [(MTLFunctionStitchingInputTexture *)v35 initWithBindIndex:v38];
      std::vector<MTLPipelineLibrarySerializer::SerializedObject>::push_back[abi:ne200100](&v130, &v127);
      goto LABEL_152;
    }

    if (v33 == 9)
    {
      v127 = [[MTLFunctionStitchingInputImageblock alloc] initWithBindIndex:0];
      std::vector<MTLPipelineLibrarySerializer::SerializedObject>::push_back[abi:ne200100](&v130, &v127);
      goto LABEL_152;
    }

    if (v33 != 10)
    {
      if (v33 != 11)
      {
        goto LABEL_152;
      }

      v44 = Mtl4::FunctionStitching::Node::node_as_EarlyReturnNode(v30);
      v45 = v44;
      v46 = (v44 - *v44);
      if (*v46 >= 7u && (v47 = v46[3]) != 0)
      {
        v48 = v44 + v47;
        v49 = *(v44 + v47);
        v127 = 0;
        v128 = 0;
        v129 = 0;
        if (*(v44 + v47 + v49))
        {
          v50 = 0;
          v51 = v44 + v47 + v49 + 4;
          do
          {
            v124 = *(v130 + *(v51 + 4 * v50));
            std::vector<MTLPipelineLibrarySerializer::SerializedObject>::push_back[abi:ne200100](&v127, &v124);
            ++v50;
          }

          while (v50 < *&v48[v49]);
        }
      }

      else
      {
        v127 = 0;
        v128 = 0;
        v129 = 0;
      }

      v82 = [objc_alloc(MEMORY[0x1E695DEC8]) initWithObjects:? count:?];
      v83 = [MTLFunctionStitchingEarlyReturnNode alloc];
      v124 = [(MTLFunctionStitchingEarlyReturnNode *)v83 initWithCondition:*(v130 + *(v45 + *(v45 - *v45 + 4))) controlDependencies:v82];
      std::vector<MTLPipelineLibrarySerializer::SerializedObject>::push_back[abi:ne200100](&v130, &v124);
      goto LABEL_150;
    }

    v70 = Mtl4::FunctionStitching::Node::node_as_BuiltinNode(v30);
    v71 = (v70 - *v70);
    if (*v71 < 5u)
    {
      goto LABEL_74;
    }

    v72 = v71[2];
    if (!v72)
    {
      goto LABEL_74;
    }

    v73 = *(v70 + v72);
    if (v73 != 1)
    {
      if (v73)
      {
        goto LABEL_152;
      }

LABEL_74:
      v127 = objc_alloc_init(MTLFunctionStitchingBuiltinThreadPositionInGrid);
      std::vector<MTLPipelineLibrarySerializer::SerializedObject>::push_back[abi:ne200100](&v130, &v127);
      goto LABEL_152;
    }

    v127 = objc_alloc_init(MTLFunctionStitchingBuiltinThreadPositionInThreadgroup);
    std::vector<MTLPipelineLibrarySerializer::SerializedObject>::push_back[abi:ne200100](&v130, &v127);
LABEL_152:
    ++v26;
  }

  while (v26 < *v28);
  [v120 setOutputNode:*(v130 + *(v9 + *(v9 - *v9 + 8)))];
  v114 = objc_opt_new();
  v115 = v130;
  v116 = v131;
  while (v115 != v116)
  {
    v117 = *v115;
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      [v114 addObject:v117];
    }

    ++v115;
  }

  [v120 setNodes:v114];
  v136[0] = v120;
  [v121 setFunctionGraphs:{objc_msgSend(MEMORY[0x1E695DEC8], "arrayWithObjects:count:", v136, 1)}];
  if (v130)
  {
    v131 = v130;
    operator delete(v130);
  }

  if (__p)
  {
    v134 = __p;
    operator delete(__p);
  }

  v118 = *MEMORY[0x1E69E9840];
  return v121;
}

- (id)recompileFunction:(id)a3 inLibrary:(id)a4 toArchive:(id)a5 toBinary:(BOOL)a6 error:(id *)a7
{
  v8 = a6;
  v64 = *MEMORY[0x1E69E9840];
  v12 = [a3 airScript];
  if (v12 || v8)
  {
    if (v12 || !v8)
    {
      buffer_ptr = 0;
      size_ptr = 0;
      v18 = dispatch_data_create_map(v12, &buffer_ptr, &size_ptr);
      v19 = buffer_ptr;
      if (!strncmp(buffer_ptr + 4, "AIRC", 4uLL))
      {
        v38 = [(_MTLBinaryArchive *)self newFunctionDescriptorWithAirScript:v19 + *v19];
        v39 = v38;
        if (v8)
        {
          [v38 setOptions:{objc_msgSend(v38, "options") | 1}];
        }

        dispatch_release(v18);
        v62 = 0u;
        v63 = 0u;
        if (a3)
        {
          [a3 baseFunctionHash];
        }

        v40 = [a4 newFunctionWithHash:&v62];
        v41 = [(_MTLBinaryArchive *)self recompileFunction:v40 inLibrary:a4 toArchive:a5 toBinary:0 error:a7];
        v42 = v41;
        if (v41)
        {
          if (v41 == v40)
          {
            v58 = 0;
            __p = 0;
            [a4 getFunctionAliasAndNameForHash:&v62 functionName:&v58 alias:&__p];
            if (__p)
            {
              v51 = __p;
            }

            else
            {
              v51 = v58;
            }

            [v39 setName:v51];
            v17 = [a4 newFunctionWithDescriptor:v39 destinationArchive:a5 error:a7];

            if (v58)
            {
            }

            if (__p)
            {
            }
          }

          else
          {

            v43 = [v42 libraryData];
            v44 = (*(*v43 + 128))(v43);
            v49 = MTLLibraryBuilder::newLibraryWithData(*(self->_device + 55), self->_device, v44, 0, v45, v46, v47, v48);
            [v39 setName:{objc_msgSend(v42, "name")}];
            v17 = [(_MTLLibrary *)v49 newFunctionWithDescriptor:v39 destinationArchive:a5 error:a7];
          }
        }

        else
        {

          v17 = 0;
        }
      }

      else
      {
        [a3 bitCodeHash];
        (*(*[a3 libraryData] + 320))(&v58);
        v54 = v18;
        __p = 0;
        v56 = 0;
        v57 = 0;
        v20 = v58;
        v21 = v59;
        if (v58 == v59)
        {
LABEL_28:
          v33 = buffer_ptr;
          v34 = *buffer_ptr;
          v35 = objc_autoreleasePoolPush();
          v36 = [(_MTLBinaryArchive *)self getLibraryDescriptorWithAirScrpt:&v33[v34]];
          dispatch_release(v54);
          [v36 setFunctions:{objc_msgSend(objc_alloc(MEMORY[0x1E695DEC8]), "initWithObjects:count:")}];
          v17 = [(MTLDevice *)self->_device newLibraryWithStitchedDescriptor:v36 destinationBinaryArchive:a5 error:a7];
          for (i = __p; i != v56; ++i)
          {
          }

          if (v17)
          {
            v17 = [v17 newFunctionWithName:{objc_msgSend(objc_msgSend(objc_msgSend(v36, "functionGraphs"), "objectAtIndexedSubscript:", 0), "functionName")}];
          }

          objc_autoreleasePoolPop(v35);
        }

        else
        {
          while (1)
          {
            v22 = v20[1];
            v62 = *v20;
            v63 = v22;
            v23 = [a4 newFunctionWithHash:&v62];
            v24 = [(_MTLBinaryArchive *)self recompileFunction:v23 inLibrary:a4 toArchive:a5 toBinary:0 error:a7];
            if (!v24)
            {
              break;
            }

            v25 = v56;
            if (v56 >= v57)
            {
              v27 = (v56 - __p) >> 3;
              if ((v27 + 1) >> 61)
              {
                std::vector<std::pair<std::tuple<std::string,unsigned int,unsigned int>,unsigned int>>::__throw_length_error[abi:ne200100]();
              }

              v28 = (v57 - __p) >> 2;
              if (v28 <= v27 + 1)
              {
                v28 = v27 + 1;
              }

              if (v57 - __p >= 0x7FFFFFFFFFFFFFF8)
              {
                v29 = 0x1FFFFFFFFFFFFFFFLL;
              }

              else
              {
                v29 = v28;
              }

              if (v29)
              {
                std::__allocate_at_least[abi:ne200100]<std::allocator<objc_object  {objcproto18MTLIOScratchBuffer}*>>(&__p, v29);
              }

              v30 = (8 * v27);
              *v30 = v24;
              v26 = 8 * v27 + 8;
              v31 = v30 - (v56 - __p);
              memcpy(v31, __p, v56 - __p);
              v32 = __p;
              __p = v31;
              v56 = v26;
              v57 = 0;
              if (v32)
              {
                operator delete(v32);
              }
            }

            else
            {
              *v56 = v24;
              v26 = (v25 + 8);
            }

            v56 = v26;
            v20 += 2;
            if (v20 == v21)
            {
              goto LABEL_28;
            }
          }

          for (j = __p; j != v56; ++j)
          {
          }

          v17 = 0;
        }

        if (__p)
        {
          v56 = __p;
          operator delete(__p);
        }

        if (v58)
        {
          v59 = v58;
          operator delete(v58);
        }
      }
    }

    else
    {
      *&v62 = 0;
      v58 = 0;
      [a4 getFunctionAliasAndNameForHash:objc_msgSend(a3 functionName:"bitCodeHash") alias:{&v62, &v58}];
      if (v58)
      {
        v15 = v58;
      }

      else
      {
        v15 = v62;
      }

      v16 = objc_alloc_init(MTLFunctionDescriptor);
      [(MTLFunctionDescriptor *)v16 setName:v15];
      [(MTLFunctionDescriptor *)v16 setOptions:[(MTLFunctionDescriptor *)v16 options]| 1];
      v17 = [a4 newFunctionWithDescriptor:v16 destinationArchive:a5 error:a7];
    }

    v52 = *MEMORY[0x1E69E9840];
    return v17;
  }

  else
  {
    v13 = *MEMORY[0x1E69E9840];

    return a3;
  }
}

- (BOOL)recompileStatelessToArchive:(id)a3 error:(id *)a4
{
  begin = self->_airntFromDescriptorFunctionList.__begin_;
  end = self->_airntFromDescriptorFunctionList.__end_;
  if (begin == end)
  {
    return 1;
  }

  v7 = MEMORY[0x1E69E9820];
  while (1)
  {
    v8 = *begin;
    v22 = 0;
    v23 = &v22;
    v24 = 0x3052000000;
    v25 = __Block_byref_object_copy_;
    v26 = __Block_byref_object_dispose_;
    v27 = 0;
    v16 = 0;
    v17 = &v16;
    v18 = 0x3052000000;
    v19 = __Block_byref_object_copy_;
    v20 = __Block_byref_object_dispose_;
    v21 = 0;
    queue = self->_queue;
    block[0] = v7;
    block[1] = 3221225472;
    block[2] = __55___MTLBinaryArchive_recompileStatelessToArchive_error___block_invoke;
    block[3] = &unk_1E6EEAB68;
    block[4] = self;
    block[5] = &v22;
    block[7] = v8;
    block[8] = a4;
    block[6] = &v16;
    dispatch_sync(queue, block);
    v10 = v23[5];
    if (!v10)
    {
      v11 = 0;
LABEL_10:

      goto LABEL_11;
    }

    if ([v10 isStub])
    {
      break;
    }

    v11 = v23[5];
    if (!v11 || !v17[5])
    {
      goto LABEL_10;
    }

    v12 = [_MTLBinaryArchive recompileFunction:"recompileFunction:inLibrary:toArchive:toBinary:error:" inLibrary:? toArchive:? toBinary:? error:?];

    if (!v12)
    {
      goto LABEL_14;
    }

LABEL_11:
    _Block_object_dispose(&v16, 8);
    _Block_object_dispose(&v22, 8);
    if (++begin == end)
    {
      return 1;
    }
  }

LABEL_14:
  _Block_object_dispose(&v16, 8);
  _Block_object_dispose(&v22, 8);
  return 0;
}

- (BOOL)recompilePipelinesToArchive:(id)a3 error:(id *)a4
{
  begin = self->_airntPipelineList.__begin_;
  end = self->_airntPipelineList.__end_;
  if (begin == end)
  {
    return 1;
  }

  v42 = self->_airntPipelineList.__end_;
  while (1)
  {
    v8 = *begin;
    v9 = (*begin + 8);
    v10 = self->_airntObjectList.__begin_[v9[2 * (**begin == 3)]];
    v11 = [(_MTLBinaryArchive *)self materializeAirScript:v10];
    if (!v11)
    {
      break;
    }

    v12 = v11;
    size_ptr = 0;
    buffer_ptr = 0;
    v13 = dispatch_data_create_map(v11, &buffer_ptr, &size_ptr);
    v14 = *buffer_ptr;
    v15 = *v8;
    if (*v8 > 1)
    {
      if (v15 == 2)
      {
        v16 = v13;
        v17 = a4;
        v18 = [(_MTLBinaryArchive *)self newTileRenderPipelineDescriptorWithScript:buffer_ptr + v14 obj:v10 destinationArchive:a3 error:a4];
        v26 = [(_MTLBinaryArchive *)self newRecompiledFunctionWithAIRNTObject:v10 destinationArchive:a3 error:a4];
        if (!v26)
        {

          dispatch_release(v16);
          dispatch_release(v12);
          if (!a4)
          {
            return 0;
          }

          v41 = @"Failed to materialize function bitcode for tile render pipeline";
LABEL_50:
          *v17 = newErrorWithMessage([MEMORY[0x1E696AEC0] stringWithFormat:v41], MTLBinaryArchiveErrorCompilationFailure);
          return 0;
        }

        v20 = v26;
        [v18 setTileFunction:v26];
        v21 = [a3 addTileRenderPipelineFunctionsWithDescriptor:v18 error:a4];
LABEL_18:
        v27 = v21;

        goto LABEL_39;
      }

      if (v15 != 3)
      {
LABEL_13:
        dispatch_release(v13);
        dispatch_release(v12);
        goto LABEL_40;
      }

      v16 = v13;
      v18 = [(_MTLBinaryArchive *)self newMeshRenderPipelineDescriptorWithScript:buffer_ptr + v14 obj:v10 destinationArchive:a3 error:a4];
      v22 = v8[6];
      if (v22 == -1)
      {
        v23 = 0;
      }

      else
      {
        v23 = self->_airntObjectList.__begin_[v22];
      }

      v28 = *v9;
      if (v28 == -1)
      {
        v29 = 0;
      }

      else
      {
        v29 = self->_airntObjectList.__begin_[v28];
      }

      v30 = [(_MTLBinaryArchive *)self newRecompiledFunctionWithAIRNTObject:v10 destinationArchive:a3 error:a4];
      if (v23)
      {
        v23 = [(_MTLBinaryArchive *)self newRecompiledFunctionWithAIRNTObject:v23 destinationArchive:a3 error:a4];
      }

      if (v29)
      {
        v31 = v29;
        v32 = a4;
        v33 = [(_MTLBinaryArchive *)self newRecompiledFunctionWithAIRNTObject:v31 destinationArchive:a3 error:a4];
      }

      else
      {
        v33 = 0;
        v32 = a4;
      }

      [v18 setMeshFunction:v30];
      [v18 setObjectFunction:v33];
      [v18 setFragmentFunction:v23];
      v27 = [a3 addMeshRenderPipelineFunctionsWithDescriptor:v18 error:v32];
    }

    else
    {
      if (v15)
      {
        if (v15 != 1)
        {
          goto LABEL_13;
        }

        v16 = v13;
        v17 = a4;
        v18 = [(_MTLBinaryArchive *)self newComputePipelineDescriptorWithScript:buffer_ptr + v14 obj:v10 destinationArchive:a3 error:a4];
        v19 = [(_MTLBinaryArchive *)self newRecompiledFunctionWithAIRNTObject:v10 destinationArchive:a3 error:a4];
        if (!v19)
        {

          dispatch_release(v16);
          dispatch_release(v12);
          if (!a4)
          {
            return 0;
          }

          v41 = @"Failed to materialize function bitcode for compute pipeline";
          goto LABEL_50;
        }

        v20 = v19;
        [v18 setComputeFunction:v19];
        v21 = [a3 addComputePipelineFunctionsWithDescriptor:v18 error:a4];
        goto LABEL_18;
      }

      v16 = v13;
      v18 = [(_MTLBinaryArchive *)self newRenderPipelineDescriptorWithScript:buffer_ptr + v14 obj:v10 destinationArchive:a3 error:a4];
      v24 = v8[4];
      if (v24 == -1)
      {
        v25 = 0;
      }

      else
      {
        v25 = self->_airntObjectList.__begin_[v24];
      }

      v34 = a4;
      v35 = [(_MTLBinaryArchive *)self newRecompiledFunctionWithAIRNTObject:v10 destinationArchive:a3 error:a4];
      v36 = v35;
      if (v35)
      {
        v37 = v25 == 0;
      }

      else
      {
        v37 = 1;
      }

      if (v37)
      {
        if (!v35)
        {

          dispatch_release(v16);
          dispatch_release(v12);
          v17 = a4;
          if (!a4)
          {
            return 0;
          }

          v41 = @"Failed to materialize vertex function bitcode for render pipeline";
          goto LABEL_50;
        }

        v38 = 0;
        v34 = a4;
      }

      else
      {
        v38 = [(_MTLBinaryArchive *)self newRecompiledFunctionWithAIRNTObject:v25 destinationArchive:a3 error:a4];
      }

      [v18 setVertexFunction:v36];
      [v18 setFragmentFunction:v38];
      v27 = [a3 addRenderPipelineFunctionsWithDescriptor:v18 error:v34];
    }

    end = v42;
LABEL_39:

    dispatch_release(v16);
    dispatch_release(v12);
    if ((v27 & 1) == 0)
    {
      return 0;
    }

LABEL_40:
    if (++begin == end)
    {
      return 1;
    }
  }

  if (a4)
  {
    v40 = newErrorWithMessage([MEMORY[0x1E696AEC0] stringWithFormat:@"Failed to materialize AirScript for pipeline"], MTLBinaryArchiveErrorInvalidFile);
    result = 0;
    *a4 = v40;
    return result;
  }

  return 0;
}

- (BOOL)recompileToArchiveWithURL:(id)a3 error:(id *)a4
{
  v7 = objc_opt_new();
  v8 = [(MTLDevice *)self->_device newBinaryArchiveWithDescriptor:v7 error:a4];

  if (!v8)
  {
    return 0;
  }

  [v8 setRecompilationTarget:1];
  if ([(_MTLBinaryArchive *)self recompileToArchive:v8 error:a4])
  {
    v9 = [v8 serializeToURL:a3 error:a4];
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

- (BOOL)recompileToArchive:(id)a3 error:(id *)a4
{
  if (self == a3)
  {
    if (a4)
    {
      v6 = MEMORY[0x1E696AEC0];
      v7 = @"Archive cannot be recompiled in place";
      goto LABEL_10;
    }

    return 0;
  }

  if (self->_isLegacy)
  {
    if (a4)
    {
      v6 = MEMORY[0x1E696AEC0];
      v7 = @"Legacy archive cannot be recompiled";
LABEL_10:
      *a4 = newErrorWithMessage([v6 stringWithFormat:v7], MTLBinaryArchiveErrorInvalidFile);
      return 0;
    }

    return 0;
  }

  if (self->_hasBuiltins)
  {
    if (a4)
    {
      v6 = MEMORY[0x1E696AEC0];
      v7 = @"Archive containting builtin objects cannot be recompiled";
      goto LABEL_10;
    }

    return 0;
  }

  if (!self->_airntBinaryList.__table_.__size_ && self->_airntObjectList.__begin_ == self->_airntObjectList.__end_ && self->_airntFromDescriptorFunctionList.__begin_ == self->_airntFromDescriptorFunctionList.__end_ && self->_airntPipelineList.__begin_ == self->_airntPipelineList.__end_)
  {
    if (!a4)
    {
      return 0;
    }

    v6 = MEMORY[0x1E696AEC0];
    v7 = @"No recompilable artifacts found";
    goto LABEL_10;
  }

  [a3 initMetalScriptWithArchive:self];
  if (![(_MTLBinaryArchive *)self recompilePipelinesToArchive:a3 error:a4])
  {
    return 0;
  }

  return [(_MTLBinaryArchive *)self recompileStatelessToArchive:a3 error:a4];
}

- (BOOL)legacySerializeToURL:(id)a3 options:(unint64_t)a4 error:(id *)a5
{
  v81[3] = *MEMORY[0x1E69E9840];
  if (a5)
  {
    *a5 = 0;
  }

  v9 = objc_autoreleasePoolPush();
  v10 = [MEMORY[0x1E696AC08] defaultManager];
  v11 = v10;
  v12 = a3;
  if (a4)
  {
    v13 = [v10 URLForDirectory:99 inDomain:1 appropriateForURL:a3 create:1 error:a5];
    v12 = [v13 URLByAppendingPathComponent:{objc_msgSend(objc_msgSend(MEMORY[0x1E696AFB0], "UUID"), "UUIDString")}];
  }

  if (!v12)
  {
    if (!a5)
    {
      objc_autoreleasePoolPop(v9);
      LOBYTE(v15) = 0;
      goto LABEL_134;
    }

    v16 = newErrorWithMessage(&cfstr_OutputUrlIsInv.isa, MTLBinaryArchiveErrorInvalidFile);
    LOBYTE(v15) = 0;
    *a5 = v16;
    if (!v16)
    {
      goto LABEL_130;
    }

    goto LABEL_129;
  }

  v58 = a3;
  v14 = [MEMORY[0x1E696AC00] fileHandleForWritingToURL:v12 error:0];
  if (v14)
  {
    v15 = v14;
  }

  else
  {
    [objc_msgSend(MEMORY[0x1E696AC08] "defaultManager")];
    v15 = [MEMORY[0x1E696AC00] fileHandleForWritingToURL:v12 error:a5];
    if (!v15)
    {
      if ((a4 & 1) == 0)
      {
        goto LABEL_126;
      }

      goto LABEL_125;
    }
  }

  if ((a4 & 0xC) != 0)
  {
    if ((self->_options & 2) == 0)
    {
      v17 = 0;
      v18 = (a4 & 8) == 0;
      goto LABEL_18;
    }

    v17 = 1;
  }

  else
  {
    v17 = 0;
  }

  v18 = 1;
LABEL_18:
  v60 = v11;
  if ((a4 & 0x30) != 0)
  {
    if (self->_options)
    {
      v19 = 1;
    }

    else
    {
      v19 = 0;
      if ((a4 & 0x20) != 0)
      {
        v18 = 0;
      }
    }
  }

  else
  {
    v19 = 0;
  }

  if ((a4 & 0xC0) == 0)
  {
    v20 = 0;
    if (!a5)
    {
      goto LABEL_36;
    }

    goto LABEL_34;
  }

  if ((self->_options & 4) != 0)
  {
    v20 = 1;
    if (!a5)
    {
      goto LABEL_36;
    }

    goto LABEL_34;
  }

  v20 = 0;
  if ((a4 & 0x80) != 0)
  {
    v18 = 0;
  }

  if (a5)
  {
LABEL_34:
    if (!v18)
    {
      *a5 = newErrorWithMessage(&cfstr_SerializationO.isa, MTLBinaryArchiveErrorUnexpectedElement);
    }
  }

LABEL_36:
  v76 = 0;
  v77 = 0;
  v74 = 0;
  v75 = 0;
  v61 = v9;
  if (self->_legacyPipelineFileIndex.__tree_.__size_)
  {
    v21 = 1;
  }

  else
  {
    v21 = [(NSMutableDictionary *)self->_entries count]!= 0;
  }

  v22 = v21 & v17;
  if (v22)
  {
    *v78 = [MTLLoader sliceIDForDevice:&v77 andDriverVersion:?];
    std::vector<MTLLoaderSliceIdentifier>::push_back[abi:ne200100](&v74, v78);
  }

  if (v19)
  {
    *v78 = +[MTLLoader sliceIDForDescriptors];
    std::vector<MTLLoaderSliceIdentifier>::push_back[abi:ne200100](&v74, v78);
  }

  if (self->_legacySpecializedFunctions.__table_.__size_)
  {
    v23 = 1;
  }

  else
  {
    v23 = self->_legacySpecializedFunctionArchiveFileIndex.__tree_.__size_ != 0;
  }

  v59 = v23 & v20;
  if ((v23 & v20) != 0)
  {
    *v78 = [_MTLBinaryArchive sliceIDForSpecializedFunctionsForLLVMVersion:_MTLGetMTLCompilerLLVMVersionForDevice(self->_device)];
    std::vector<MTLLoaderSliceIdentifier>::push_back[abi:ne200100](&v74, v78);
  }

  v24 = v74 != v75 && v18;
  if (v74 == v75 && a5)
  {
    v25 = newErrorWithMessage(&cfstr_TheBinaryArchi.isa, MTLBinaryArchiveErrorInvalidFile);
    v24 = 0;
    *a5 = v25;
  }

  memset(v81, 0, 24);
  memset(v80, 0, sizeof(v80));
  v70 = 0;
  v71 = &v70;
  v72 = 0x2020000000;
  v73 = 0;
  v69[0] = MEMORY[0x1E69E9820];
  v69[1] = 3221225472;
  v69[2] = __56___MTLBinaryArchive_legacySerializeToURL_options_error___block_invoke;
  v69[3] = &unk_1E6EEAB90;
  v69[4] = v15;
  v69[5] = &v70;
  v69[6] = a5;
  if (!v24)
  {
    goto LABEL_116;
  }

  v26 = [MTLLoader serializeUniversalBinaryHeaderWithSlice:v74 offset:0 length:0 count:(v75 - v74) >> 3 writer:v69];
  v27 = v26 ^ 1;
  if (!v22)
  {
    v27 = 1;
  }

  if (v27)
  {
    v57 = 0;
  }

  else
  {
    *v78 = 0;
    *&v78[8] = v78;
    *&v78[16] = 0x4812000000;
    *&v78[24] = __Block_byref_object_copy__283;
    *&v78[32] = __Block_byref_object_dispose__284;
    *&v78[40] = &unk_185DF1D43;
    queue = self->_queue;
    memset(__p, 0, 24);
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __56___MTLBinaryArchive_legacySerializeToURL_options_error___block_invoke_286;
    block[3] = &unk_1E6EEABE0;
    block[4] = self;
    block[5] = v78;
    block[6] = v77;
    block[7] = a4;
    dispatch_sync(queue, block);
    v81[0] = v71[3];
    v29 = v81[0];
    v26 = [MTLLoader serializeMachOContainerWithSlice:*v74 payload:*(*&v78[8] + 48) count:-1227133513 * ((*(*&v78[8] + 56) - *(*&v78[8] + 48)) >> 4) writer:?];
    v30 = v71[3];
    v80[0] = v30 - v29;
    if ((v75 - v74) >= 9)
    {
      [MTLLoader serializePaddingForOffset:v30 writer:v69];
    }

    if (a5 && v26 != 1)
    {
      *a5 = newErrorWithMessage(&cfstr_SerializationO_0.isa, MTLBinaryArchiveErrorInvalidFile);
    }

    _Block_object_dispose(v78, 8);
    if (__p[0])
    {
      __p[1] = __p[0];
      operator delete(__p[0]);
    }

    v57 = 1;
  }

  if ((v19 & v26) != 1)
  {
    if (v59)
    {
      goto LABEL_94;
    }

LABEL_107:
    if (!v26)
    {
      goto LABEL_116;
    }

    goto LABEL_113;
  }

  v31 = MTLPipelineCollection::JSONData(self->_pipelineCollection.__ptr_);
  v32 = v31;
  if (v31)
  {
    v33 = _MTLNSDataToDispatchData(v31, 0);
  }

  else
  {
    v33 = 0;
  }

  v65 = 0u;
  v66 = 0u;
  v67 = 1065353216;
  v62 = 0;
  v63 = 0;
  v64 = 0;
  std::vector<MTLLoaderMachOPayload>::reserve(&v62, v33 != 0);
  if (v33)
  {
    memset(&__p[1], 0, 56);
    *v78 = v33;
    __p[0] = 1;
    memset(&v78[8], 0, 32);
    *&v78[40] = (a4 & 2) != 0;
    std::vector<MTLLoaderMachOPayload>::push_back[abi:ne200100](&v62, v78);
  }

  for (i = v66; i; i = *i)
  {
    if (i[6])
    {
      memset(__p, 0, sizeof(__p));
      memset(&v78[16], 0, 32);
      *v78 = 0u;
      *v78 = i[6];
      __p[0] = 1;
      v35 = *(i + 2);
      *&v78[8] = *(i + 1);
      *&v78[24] = v35;
      v78[40] = (a4 & 2) != 0;
      std::vector<MTLLoaderMachOPayload>::push_back[abi:ne200100](&v62, v78);
    }
  }

  std::__hash_table<std::__hash_value_type<unsigned long,MTLStructTypeInternal *>,std::__unordered_map_hasher<unsigned long,std::__hash_value_type<unsigned long,MTLStructTypeInternal *>,std::hash<unsigned long>,std::equal_to<unsigned long>,true>,std::__unordered_map_equal<unsigned long,std::__hash_value_type<unsigned long,MTLStructTypeInternal *>,std::equal_to<unsigned long>,std::hash<unsigned long>,true>,std::allocator<std::__hash_value_type<unsigned long,MTLStructTypeInternal *>>>::clear(&v65);
  v36 = v62;
  LODWORD(v37) = -1227133513 * ((v63 - v62) >> 4);
  if (v37)
  {
    v38 = v71[3];
    v81[v57] = v38;
    v26 = [MTLLoader serializeMachOContainerWithSlice:*(v74 + v57) payload:v36 count:v37 writer:?];
    v80[v57] = v71[3] - v38;
    v37 = v37;
    do
    {
      v39 = *v36;
      v36 += 14;
      dispatch_release(v39);
      --v37;
    }

    while (v37);
    v57 = (v57 + 1);
    if (v57 < (v75 - v74) >> 3)
    {
      [MTLLoader serializePaddingForOffset:v69 writer:?];
    }

    if (a5 && v26 != 1)
    {
      *a5 = newErrorWithMessage(&cfstr_SerializationO_1.isa, MTLBinaryArchiveErrorInvalidFile);
    }
  }

  else
  {
    v26 = 1;
  }

  if (v62)
  {
    v63 = v62;
    operator delete(v62);
  }

  std::__hash_table<std::__hash_value_type<unsigned long,MTLStructTypeInternal *>,std::__unordered_map_hasher<unsigned long,std::__hash_value_type<unsigned long,MTLStructTypeInternal *>,std::hash<unsigned long>,std::equal_to<unsigned long>,true>,std::__unordered_map_equal<unsigned long,std::__hash_value_type<unsigned long,MTLStructTypeInternal *>,std::equal_to<unsigned long>,std::hash<unsigned long>,true>,std::allocator<std::__hash_value_type<unsigned long,MTLStructTypeInternal *>>>::~__hash_table(&v65);
  if (!v59)
  {
    goto LABEL_107;
  }

LABEL_94:
  if (!v26)
  {
    goto LABEL_107;
  }

  v65 = 0u;
  v66 = 0u;
  v67 = 1065353216;
  [(_MTLBinaryArchive *)self getSpecializedFunctionArchivesToSerialize:&v65];
  v62 = 0;
  v63 = 0;
  v64 = 0;
  std::vector<MTLLoaderMachOPayload>::reserve(&v62, *(&v66 + 1));
  for (j = v66; j; j = *j)
  {
    if (j[6])
    {
      memset(__p, 0, sizeof(__p));
      memset(&v78[16], 0, 32);
      *v78 = 0u;
      *v78 = j[6];
      __p[0] = 1;
      v41 = *(j + 2);
      *&v78[8] = *(j + 1);
      *&v78[24] = v41;
      v78[40] = (a4 & 2) != 0;
      std::vector<MTLLoaderMachOPayload>::push_back[abi:ne200100](&v62, v78);
    }
  }

  std::__hash_table<std::__hash_value_type<unsigned long,MTLStructTypeInternal *>,std::__unordered_map_hasher<unsigned long,std::__hash_value_type<unsigned long,MTLStructTypeInternal *>,std::hash<unsigned long>,std::equal_to<unsigned long>,true>,std::__unordered_map_equal<unsigned long,std::__hash_value_type<unsigned long,MTLStructTypeInternal *>,std::equal_to<unsigned long>,std::hash<unsigned long>,true>,std::allocator<std::__hash_value_type<unsigned long,MTLStructTypeInternal *>>>::clear(&v65);
  v42 = v62;
  LODWORD(v43) = -1227133513 * ((v63 - v62) >> 4);
  if (v43)
  {
    v44 = v71[3];
    v81[v57] = v44;
    v45 = [MTLLoader serializeMachOContainerWithSlice:*(v74 + v57) payload:v42 count:v43 writer:?];
    v80[v57] = v71[3] - v44;
    v43 = v43;
    do
    {
      v46 = *v42;
      v42 += 14;
      dispatch_release(v46);
      --v43;
    }

    while (v43);
    if ((v57 + 1) < ((v75 - v74) >> 3))
    {
      [MTLLoader serializePaddingForOffset:v69 writer:?];
    }

    if (a5 && v45 != 1)
    {
      *a5 = newErrorWithMessage(&cfstr_SerializationO_1.isa, MTLBinaryArchiveErrorInvalidFile);
    }
  }

  else
  {
    LOBYTE(v45) = 1;
  }

  if (v62)
  {
    v63 = v62;
    operator delete(v62);
  }

  std::__hash_table<std::__hash_value_type<unsigned long,MTLStructTypeInternal *>,std::__unordered_map_hasher<unsigned long,std::__hash_value_type<unsigned long,MTLStructTypeInternal *>,std::hash<unsigned long>,std::equal_to<unsigned long>,true>,std::__unordered_map_equal<unsigned long,std::__hash_value_type<unsigned long,MTLStructTypeInternal *>,std::equal_to<unsigned long>,std::hash<unsigned long>,true>,std::allocator<std::__hash_value_type<unsigned long,MTLStructTypeInternal *>>>::~__hash_table(&v65);
  if ((v45 & 1) == 0)
  {
    goto LABEL_116;
  }

LABEL_113:
  if ([v15 seekToOffset:0 error:{a5, v57}] && +[MTLLoader serializeUniversalBinaryHeaderWithSlice:offset:length:count:writer:](MTLLoader, v74, v81, v80, (v75 - v74) >> 3, v69))
  {
    v47 = v71[3];
    v48 = 1;
    v49 = a5;
    goto LABEL_117;
  }

LABEL_116:
  v48 = 0;
  v49 = 0;
  v47 = 0;
LABEL_117:
  v50 = v48 & [v15 truncateAtOffset:v47 error:{v49, v57}];
  if (v50)
  {
    v51 = a5;
  }

  else
  {
    v51 = 0;
  }

  v52 = [v15 closeAndReturnError:v51];
  _Block_object_dispose(&v70, 8);
  if (v74)
  {
    v75 = v74;
    operator delete(v74);
  }

  LODWORD(v15) = v50 & v52;
  v11 = v60;
  v9 = v61;
  if (a4)
  {
    if (v15)
    {
      LODWORD(v15) = [v60 replaceItemAtURL:v58 withItemAtURL:v12 backupItemName:0 options:0 resultingItemURL:0 error:a5];
    }

LABEL_125:
    [v11 removeItemAtURL:v12 error:0];
  }

LABEL_126:
  if (!a5 || v15)
  {
    objc_autoreleasePoolPop(v9);
    if (!a5)
    {
      goto LABEL_134;
    }

    goto LABEL_132;
  }

  v16 = *a5;
  if (*a5)
  {
LABEL_129:
    v53 = v16;
  }

LABEL_130:
  objc_autoreleasePoolPop(v9);
LABEL_132:
  if (*a5)
  {
    v54 = *a5;
  }

LABEL_134:
  v55 = *MEMORY[0x1E69E9840];
  return v15;
}

- (BOOL)getScriptsWithAIRNTObject:(void *)a3
{
  v12 = 0;
  if (self->_reloadingAfterSerialization)
  {
    return 1;
  }

  v5 = [(_MTLBinaryArchive *)self newLibraryInArchiveAtPos:a3 atIndex:0 error:&v12];
  if (!v5)
  {
    return 0;
  }

  v6 = v5;
  v7 = [v5 isStub];
  if ((v7 & 1) == 0 && (self->_options & 0x80) == 0)
  {
    v8 = [v6 newMetalScript];
    if (v8)
    {
      v9 = v8;
      metalScript = self->_metalScript;
      if (metalScript)
      {
        dispatch_release(metalScript);
      }

      self->_metalScript = v9;
      MTLMetalScriptBuilder::initFromScript(self->_mtlScriptBuilder.__ptr_, v9);
    }
  }

  v3 = v7 ^ 1;

  return v3;
}

- (BOOL)loadAirntBlocksForSlice:(const MTLLoaderSliceIdentifier *)a3 sliceOffset:(unint64_t)a4 skipAIRValidation:(BOOL)a5
{
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = __75___MTLBinaryArchive_loadAirntBlocksForSlice_sliceOffset_skipAIRValidation___block_invoke;
  v13[3] = &unk_1E6EEAC08;
  v13[4] = self;
  v13[5] = a3;
  v13[6] = a4;
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __75___MTLBinaryArchive_loadAirntBlocksForSlice_sliceOffset_skipAIRValidation___block_invoke_2;
  v11[3] = &unk_1E6EEAC30;
  v11[4] = self;
  v11[5] = a4;
  v12 = a5;
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __75___MTLBinaryArchive_loadAirntBlocksForSlice_sliceOffset_skipAIRValidation___block_invoke_3;
  v10[3] = &unk_1E6EEAC58;
  v10[4] = self;
  v7[5] = a4;
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __75___MTLBinaryArchive_loadAirntBlocksForSlice_sliceOffset_skipAIRValidation___block_invoke_4;
  v8[3] = &unk_1E6EEAC80;
  v9 = a5;
  v8[4] = self;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __75___MTLBinaryArchive_loadAirntBlocksForSlice_sliceOffset_skipAIRValidation___block_invoke_303;
  v7[3] = &unk_1E6EEA9B8;
  v7[4] = self;
  result = [MTLLoader deserializeAirntMachOContainerWithHandler:v13 objectHandler:v11 pipelineHandler:v10 errorHandler:v8 reader:v7];
  ++self->_internalArchiverId;
  return result;
}

- (BOOL)loadFileIndex:(void *)a3 expectedSliceId:(const MTLLoaderSliceIdentifier *)a4 expectedVersion:(unint64_t)a5 sliceOffset:(unint64_t)a6
{
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __79___MTLBinaryArchive_loadFileIndex_expectedSliceId_expectedVersion_sliceOffset___block_invoke;
  v10[3] = &__block_descriptor_64_e61_B52__0_MTLLoaderSliceIdentifier_ii_8Q16r_____32C__24I32Q36Q44l;
  v10[4] = a4;
  v10[5] = a5;
  v10[6] = a3;
  v10[7] = a6;
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __79___MTLBinaryArchive_loadFileIndex_expectedSliceId_expectedVersion_sliceOffset___block_invoke_2;
  v9[3] = &unk_1E6EEA9B8;
  v9[4] = self;
  v9[5] = a6;
  v7 = [MTLLoader deserializeMachOContainerWithHandler:v10 reader:v9];
  if ((v7 & 1) == 0)
  {
    std::__tree<flatbuffers::Offset<flatbuffers::String>,flatbuffers::FlatBufferBuilder::StringOffsetCompare,std::allocator<flatbuffers::Offset<flatbuffers::String>>>::destroy(a3, *(a3 + 1));
    *a3 = a3 + 8;
    *(a3 + 2) = 0;
    *(a3 + 1) = 0;
  }

  return v7;
}

- (BOOL)enumerateArchivesFromBackingFileFromSlice:(const MTLLoaderSliceIdentifier *)a3 version:(unint64_t)a4 verifyKey:(id *)a5 offset:(unint64_t)a6 bytes:(unint64_t)a7 enumerator:(id)a8
{
  v8 = 1;
  if (a7)
  {
    fileData = self->_fileData;
    if (fileData)
    {
      v16 = [(MTLLoadedFileContentsWrapper *)self->_fileData bytes];
      v21[0] = 0;
      v21[1] = v21;
      v21[2] = 0x2020000000;
      v21[3] = 0;
      v20[0] = MEMORY[0x1E69E9820];
      v20[1] = 3221225472;
      v20[2] = __105___MTLBinaryArchive_enumerateArchivesFromBackingFileFromSlice_version_verifyKey_offset_bytes_enumerator___block_invoke;
      v20[3] = &unk_1E6EEACC8;
      v20[4] = v21;
      v20[5] = a7;
      v20[6] = &v16[a6];
      v19[0] = MEMORY[0x1E69E9820];
      v19[1] = 3221225472;
      v19[2] = __105___MTLBinaryArchive_enumerateArchivesFromBackingFileFromSlice_version_verifyKey_offset_bytes_enumerator___block_invoke_2;
      v19[3] = &unk_1E6EEACF0;
      v19[8] = a4;
      v19[9] = a5;
      v19[10] = a6;
      v19[6] = v21;
      v19[7] = a3;
      v19[4] = fileData;
      v19[5] = a8;
      v18[0] = MEMORY[0x1E69E9820];
      v18[1] = 3221225472;
      v18[2] = __105___MTLBinaryArchive_enumerateArchivesFromBackingFileFromSlice_version_verifyKey_offset_bytes_enumerator___block_invoke_3;
      v18[3] = &unk_1E6EEAD18;
      v18[7] = a3;
      v18[8] = a4;
      v18[5] = v20;
      v18[6] = v21;
      v18[4] = v19;
      v8 = [MTLLoader deserializeMachOContainerWithHandler:v18 reader:v20];
      _Block_object_dispose(v21, 8);
    }
  }

  return v8;
}

- (BOOL)enumerateArchivesFromPipelineCollection:(id)a3
{
  v3 = 1;
  v8 = 1;
  ptr = self->_pipelineCollection.__ptr_;
  if (ptr)
  {
    v7[0] = &v8;
    v7[1] = a3;
    v5 = *(ptr + 36);
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = ___ZNK21MTLPipelineCollection14visitLibrariesIZ61___MTLBinaryArchive_enumerateArchivesFromPipelineCollection__E3__5EEvOT__block_invoke;
    block[3] = &__block_descriptor_48_e5_v8__0l;
    block[4] = ptr;
    block[5] = v7;
    dispatch_sync(v5, block);
    v3 = v8;
  }

  return v3 & 1;
}

- (id)materializeEntryForKey:(id *)a3 fileIndex:(void *)a4 containsEntry:(id)a5 addEntry:(id)a6
{
  v25 = *MEMORY[0x1E69E9840];
  v9 = *&a3->var0[16];
  v23 = *a3->var0;
  v24 = v9;
  v10 = [(_MTLBinaryArchive *)self materializeFromHash:&v23 fileIndex:a4];
  if (v10)
  {
    v11 = v10;
    v12 = *&a3->var0[16];
    v21 = *a3->var0;
    v22 = v12;
    if (v23 == *a3->var0 && *(&v23 + 1) == *&a3->var0[8] && v24 == *&a3->var0[16] && *(&v24 + 1) == *&a3->var0[24])
    {
      v17 = v10;
    }

    else
    {
      v21 = v23;
      v22 = v24;
      v16 = (*(a5 + 2))(a5, &v21);
      v17 = 0;
      v18 = 0;
      if (v16)
      {
        goto LABEL_17;
      }
    }

    (*(a6 + 2))(a6, v11, &v21);

    v18 = v17;
LABEL_17:

    goto LABEL_18;
  }

  v18 = 0;
LABEL_18:
  v19 = *MEMORY[0x1E69E9840];
  return v18;
}

- ($2772B1D07D29A72E8557B2574C0AE5C1)reflectionHashWithFunctionId:(SEL)a3 binaryPos:(const void *)a4
{
  data = a5;
  MTLHashKey::getHash(a4, 0, 0);
  CC_SHA256_Init(&v9);
  Hash = MTLHashKey::getHash(a4, 0, 0);
  CC_SHA256_Update(&v9, Hash, 0x20u);
  CC_SHA256_Update(&v9, &data, 8u);
  return CC_SHA256_Final(retstr->var0, &v9);
}

- (id)materializeAIRNTBlockForKey:(id)a3 reflectionType:(char)a4
{
  v4 = a4;
  v31[4] = *MEMORY[0x1E69E9840];
  alwaysReturnDriverReflection = self->_alwaysReturnDriverReflection;
  v8 = [a3 getFunctionId];
  v9 = std::__hash_table<std::__hash_value_type<MTLHashKey,std::tuple<unsigned long long,unsigned long long,unsigned long long,unsigned long long>>,std::__unordered_map_hasher<MTLHashKey,std::__hash_value_type<MTLHashKey,std::tuple<unsigned long long,unsigned long long,unsigned long long,unsigned long long>>,CompareFunctionIdHash,CompareFunctionIdHash,true>,std::__unordered_map_equal<MTLHashKey,std::__hash_value_type<MTLHashKey,std::tuple<unsigned long long,unsigned long long,unsigned long long,unsigned long long>>,CompareFunctionIdHash,CompareFunctionIdHash,true>,std::allocator<std::__hash_value_type<MTLHashKey,std::tuple<unsigned long long,unsigned long long,unsigned long long,unsigned long long>>>>::find<MTLHashKey>(&self->_executableFileIndex.__table_.__bucket_list_.__ptr_, v8);
  if (!v9)
  {
    goto LABEL_29;
  }

  v10 = v9;
  v11 = v4 | 2;
  if (!alwaysReturnDriverReflection)
  {
    v11 = v4;
  }

  if (v4)
  {
    v12 = v11;
  }

  else
  {
    v12 = 0;
  }

  v13 = v9[12];
  v14 = v9[14];
  offset = v9[15];
  v30 = v9[13];
  subrange = dispatch_data_create_subrange([(MTLLoadedFileContentsWrapper *)self->_fileData dispatchData], v30, v13);
  if ((v12 & 4) == 0)
  {
    v16 = 0;
LABEL_9:
    v17 = 0;
    goto LABEL_13;
  }

  [(_MTLBinaryArchive *)self reflectionHashWithFunctionId:v8 binaryPos:v30];
  v18 = std::__hash_table<HashKey,KeyHashFunction,std::equal_to<HashKey>,std::allocator<HashKey>>::find<HashKey>(&self->_reflectionsIndex.__table_.__bucket_list_.__ptr_, v31);
  if (!v18)
  {
LABEL_27:
    v16 = subrange;
    if (!subrange)
    {
LABEL_29:
      v23 = 0;
      goto LABEL_35;
    }

LABEL_28:
    dispatch_release(v16);
    goto LABEL_29;
  }

  v19 = v18[8];
  if (v18[6] != v19)
  {
    v26 = v18[9];
    if (v26)
    {
      v16 = dispatch_data_create_subrange([(MTLLoadedFileContentsWrapper *)self->_fileData dispatchData], v19, v26);
      goto LABEL_9;
    }

    goto LABEL_27;
  }

  v16 = 0;
  v17 = 1;
LABEL_13:
  if ((v12 & 2) == 0)
  {
    v20 = 0;
    goto LABEL_18;
  }

  if (!v14)
  {
    if (subrange)
    {
      dispatch_release(subrange);
    }

    if (!v16)
    {
      goto LABEL_29;
    }

    goto LABEL_28;
  }

  v21 = dispatch_data_create_subrange([(MTLLoadedFileContentsWrapper *)self->_fileData dispatchData], offset, v14);
  v20 = v21;
  if (v17)
  {
    dispatch_retain(v21);
    v16 = v20;
  }

LABEL_18:
  if (subrange)
  {
    v22 = MTLNewReflectionBlock(0, v20, v16);
    v23 = [[MTLBinaryEntry alloc] initWithData:subrange reflectionBlock:v22 binaryPosition:v30];
    dispatch_release(subrange);
    if (v22)
    {
      dispatch_release(v22);
    }

    v24 = std::__hash_table<std::__hash_value_type<unsigned long,MTLStructTypeInternal *>,std::__unordered_map_hasher<unsigned long,std::__hash_value_type<unsigned long,MTLStructTypeInternal *>,std::hash<unsigned long>,std::equal_to<unsigned long>,true>,std::__unordered_map_equal<unsigned long,std::__hash_value_type<unsigned long,MTLStructTypeInternal *>,std::equal_to<unsigned long>,std::hash<unsigned long>,true>,std::allocator<std::__hash_value_type<unsigned long,MTLStructTypeInternal *>>>::find<unsigned long>(&self->_airntOffsetToIndexMap.__table_.__bucket_list_.__ptr_, &v30);
    if (v24)
    {
      v25 = v24[3];
    }

    else
    {
      v25 = -1;
    }

    [(MTLBinaryEntry *)v23 setIndex:v25];
    [(NSMutableDictionary *)self->_entries setObject:v23 forKey:a3];

    std::__hash_table<std::__hash_value_type<MTLHashKey,std::tuple<unsigned long long,unsigned long long,unsigned long long,unsigned long long>>,std::__unordered_map_hasher<MTLHashKey,std::__hash_value_type<MTLHashKey,std::tuple<unsigned long long,unsigned long long,unsigned long long,unsigned long long>>,CompareFunctionIdHash,CompareFunctionIdHash,true>,std::__unordered_map_equal<MTLHashKey,std::__hash_value_type<MTLHashKey,std::tuple<unsigned long long,unsigned long long,unsigned long long,unsigned long long>>,CompareFunctionIdHash,CompareFunctionIdHash,true>,std::allocator<std::__hash_value_type<MTLHashKey,std::tuple<unsigned long long,unsigned long long,unsigned long long,unsigned long long>>>>::remove(&self->_executableFileIndex.__table_.__bucket_list_.__ptr_, v10, v31);
    std::unique_ptr<std::__hash_node<std::__hash_value_type<MTLHashKey,std::tuple<unsigned long long,unsigned long long,unsigned long long,unsigned long long>>,void *>,std::__hash_node_destructor<std::allocator<std::__hash_node<std::__hash_value_type<MTLHashKey,std::tuple<unsigned long long,unsigned long long,unsigned long long,unsigned long long>>,void *>>>>::~unique_ptr[abi:ne200100](v31);
    if (!v20)
    {
      goto LABEL_33;
    }

    goto LABEL_32;
  }

  v23 = 0;
  if (v20)
  {
LABEL_32:
    dispatch_release(v20);
  }

LABEL_33:
  if (v16)
  {
    dispatch_release(v16);
  }

LABEL_35:
  v27 = *MEMORY[0x1E69E9840];
  return v23;
}

- (NSArray)keys
{
  if ((self->_options & 2) == 0)
  {
    return MEMORY[0x1E695E0F0];
  }

  v6 = 0;
  v7 = &v6;
  v8 = 0x3052000000;
  v9 = __Block_byref_object_copy_;
  v10 = __Block_byref_object_dispose_;
  v11 = 0;
  queue = self->_queue;
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __25___MTLBinaryArchive_keys__block_invoke;
  v5[3] = &unk_1E6EEAD40;
  v5[4] = self;
  v5[5] = &v6;
  dispatch_sync(queue, v5);
  v2 = v7[5];
  _Block_object_dispose(&v6, 8);
  return v2;
}

+ (id)descriptorDataForArchive:(id)a3
{
  v17 = 0;
  v4 = objc_opt_new();
  v5 = [(MTLLoader *)v4 loadFileWithURL:a3 error:&v17 errorDomain:&cfstr_Mtlbinaryarchi.isa invalidFileErrorCode:1];
  if (v4)
  {
    v6 = v5 == 0;
  }

  else
  {
    v6 = 1;
  }

  if (v6)
  {
  }

  else
  {
    v7 = v5;
    v8 = [[MTLLoadedFileContentsWrapper alloc] initWithData:[(MTLLoadedFile *)v5 contents]];
    *&v16.var0 = 0;
    v16.var14 = 0;
    v16.var13.var0 = 0;
    v16.var13.var1 = 0;
    memset(&v16.var2, 0, 17);
    memset(&v16.var5, 0, 33);
    memset(&v16.var10, 0, 17);
    if (![_MTLBinaryArchive deserializeBinaryArchiveHeader:&v16 fileData:v8 device:0]|| ((v9 = [_MTLBinaryArchive deserializeBinaryArchiveDescriptorMachO:&v16 fileData:v8], v16.var7) ? (v10 = v9) : (v10 = 0), v10 ? (v11 = v16.var8 == 0) : (v11 = 1), v11))
    {
      v13 = 0;
    }

    else
    {
      v12 = [(MTLLoadedFileContentsWrapper *)v8 sourceContents];
      v13 = [(NSData *)v12 subdataWithRange:v16.var7, v16.var8];
    }

    [(MTLLoader *)v4 releaseLoadedFile:v7];
    DeserializedBinaryArchiveLayout::~DeserializedBinaryArchiveLayout(&v16);

    if (v13)
    {
      v14 = [(NSData *)v13 length];
      *&v16.var0 = 0;
      v16.var2 = v14;
      return _MTLNSDataToDispatchData(v13, &v16);
    }
  }

  return 0;
}

- (void)addBinaryEntryImpl:(id)a3 forKey:(id)a4
{
  ++self->_newBinary;
  if (![(_MTLBinaryArchive *)self recompilationTarget])
  {
    [a3 setIndex:-1];
    [(NSMutableDictionary *)self->_entries setObject:a3 forKey:a4];
    v7 = atomic_load(&self->_serializing);
    if ((v7 & 1) != 0 && !self->_isLegacy)
    {
      asynEntries = self->_asynEntries;

      [(NSMutableDictionary *)asynEntries setObject:a3 forKey:a4];
    }
  }
}

- (void)addArchiveEntryInternal:(id)a3 forKey:(id *)a4
{
  queue = self->_queue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __78___MTLBinaryArchive_MTLBinaryArchiveInternal__addArchiveEntryInternal_forKey___block_invoke;
  block[3] = &unk_1E6EEAD68;
  block[5] = a3;
  block[6] = a4;
  block[4] = self;
  dispatch_sync(queue, block);
}

- (id)newArchiveDataForKeyInternal:(id *)a3
{
  v7 = 0;
  v8 = &v7;
  v9 = 0x3052000000;
  v10 = __Block_byref_object_copy_;
  v11 = __Block_byref_object_dispose_;
  v12 = 0;
  if (self->_isLegacy && (self->_options & 4) != 0)
  {
    queue = self->_queue;
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __76___MTLBinaryArchive_MTLBinaryArchiveInternal__newArchiveDataForKeyInternal___block_invoke;
    block[3] = &unk_1E6EEAAA8;
    block[4] = self;
    block[5] = &v7;
    block[6] = a3;
    dispatch_sync(queue, block);
    v3 = v8[5];
  }

  else
  {
    v3 = 0;
  }

  _Block_object_dispose(&v7, 8);
  return v3;
}

- (void)addBinaryEntryInternal:(id)a3 forKey:(id)a4
{
  if (!self->_isLegacy || (self->_options & 2) != 0)
  {
    v7 = a3;
    queue = self->_queue;
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __77___MTLBinaryArchive_MTLBinaryArchiveInternal__addBinaryEntryInternal_forKey___block_invoke;
    block[3] = &unk_1E6EEADE0;
    block[4] = self;
    block[5] = a3;
    block[6] = a4;
    dispatch_async(queue, block);
  }
}

- (id)getArchiveIDWithErrorInternal:(id *)a3
{
  v10 = 0;
  v11 = &v10;
  v12 = 0x3052000000;
  v13 = __Block_byref_object_copy_;
  v14 = __Block_byref_object_dispose_;
  v15 = 0;
  queue = self->_queue;
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __77___MTLBinaryArchive_MTLBinaryArchiveInternal__getArchiveIDWithErrorInternal___block_invoke;
  v9[3] = &unk_1E6EEAD40;
  v9[4] = self;
  v9[5] = &v10;
  dispatch_sync(queue, v9);
  v6 = v11[5];
  if (a3)
  {
    *a3 = v11[5];
  }

  if (self->_archiveIDInt)
  {
    v7 = [MEMORY[0x1E696AEC0] stringWithUTF8String:?];
  }

  else
  {
    v7 = 0;
  }

  _Block_object_dispose(&v10, 8);
  return v7;
}

- (BOOL)updateReflectionForEntry:(id)a3 binaryKey:(id)a4 requiredReflection:(char)a5
{
  v17[4] = *MEMORY[0x1E69E9840];
  if (!a5 || (~[a3 reflectionFlags] & 6) == 0)
  {
    goto LABEL_14;
  }

  if (self->_alwaysReturnDriverReflection)
  {
    v9 = a5 | 2;
  }

  else
  {
    v9 = a5;
  }

  v10 = [a4 getFunctionId];
  if (([a3 reflectionFlags] & 2) == 0 && (v9 & 2) != 0)
  {
    -[_MTLBinaryArchive reflectionHashWithFunctionId:binaryPos:](self, "reflectionHashWithFunctionId:binaryPos:", v10, [a3 binaryPosition]);
    v11 = std::__hash_table<HashKey,KeyHashFunction,std::equal_to<HashKey>,std::allocator<HashKey>>::find<HashKey>(&self->_reflectionsIndex.__table_.__bucket_list_.__ptr_, v17);
    if (!v11)
    {
      goto LABEL_15;
    }

    subrange = dispatch_data_create_subrange([(MTLLoadedFileContentsWrapper *)self->_fileData dispatchData], v11[6], v11[7]);
    [a3 addReflectionWithData:subrange flag:2];
  }

  v13 = [a3 reflectionFlags];
  LOBYTE(v11) = 1;
  if ((v13 & 4) == 0 && (v9 & 4) != 0)
  {
    -[_MTLBinaryArchive reflectionHashWithFunctionId:binaryPos:](self, "reflectionHashWithFunctionId:binaryPos:", v10, [a3 binaryPosition]);
    v11 = std::__hash_table<HashKey,KeyHashFunction,std::equal_to<HashKey>,std::allocator<HashKey>>::find<HashKey>(&self->_reflectionsIndex.__table_.__bucket_list_.__ptr_, v17);
    if (v11)
    {
      v14 = dispatch_data_create_subrange([(MTLLoadedFileContentsWrapper *)self->_fileData dispatchData], v11[8], v11[9]);
      [a3 addReflectionWithData:v14 flag:4];

LABEL_14:
      LOBYTE(v11) = 1;
    }
  }

LABEL_15:
  v15 = *MEMORY[0x1E69E9840];
  return v11;
}

- (id)getBinaryDataForKey:(id)a3 reflectionType:(char)a4
{
  v4 = 0;
  v9 = 0;
  v10 = &v9;
  v11 = 0x3052000000;
  v12 = __Block_byref_object_copy_;
  v13 = __Block_byref_object_dispose_;
  v14 = 0;
  if ((self->_options & 2) != 0)
  {
    queue = self->_queue;
    v7[0] = MEMORY[0x1E69E9820];
    v7[1] = 3221225472;
    v7[2] = __82___MTLBinaryArchive_MTLBinaryArchiveInternal__getBinaryDataForKey_reflectionType___block_invoke;
    v7[3] = &unk_1E6EEAE30;
    v7[5] = a3;
    v7[6] = &v9;
    v7[4] = self;
    v8 = a4;
    dispatch_sync(queue, v7);
    v4 = v10[5];
  }

  _Block_object_dispose(&v9, 8);
  return v4;
}

- (void)setRecompilationTarget:(BOOL)a3
{
  v3 = 64;
  if (!a3)
  {
    v3 = 0;
  }

  self->_options = self->_options & 0xFFFFFFFFFFFFFFBFLL | v3;
}

- (void)findProgramObjectForFunction:(id *)a3
{
  v15 = *MEMORY[0x1E69E9840];
  v3 = *&a3->var0[16];
  v13 = *a3->var0;
  v14 = v3;
  v8 = 0;
  v9 = &v8;
  v10 = 0x2020000000;
  queue = self->_queue;
  v11 = 0;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __76___MTLBinaryArchive_MTLBinaryArchiveInternal__findProgramObjectForFunction___block_invoke;
  block[3] = &unk_1E6EEAE58;
  block[4] = self;
  block[5] = &v8;
  dispatch_sync(queue, block);
  v5 = v9[3];
  _Block_object_dispose(&v8, 8);
  v6 = *MEMORY[0x1E69E9840];
  return v5;
}

- (void)programObjectForFunction:(id *)a3
{
  v15 = *MEMORY[0x1E69E9840];
  v3 = *&a3->var0[16];
  v13 = *a3->var0;
  v14 = v3;
  v8 = 0;
  v9 = &v8;
  v10 = 0x2020000000;
  queue = self->_queue;
  v11 = 0;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __72___MTLBinaryArchive_MTLBinaryArchiveInternal__programObjectForFunction___block_invoke;
  block[3] = &unk_1E6EEAE58;
  block[4] = self;
  block[5] = &v8;
  dispatch_sync(queue, block);
  v5 = v9[3];
  _Block_object_dispose(&v8, 8);
  v6 = *MEMORY[0x1E69E9840];
  return v5;
}

- (id)getFunctionNameFromAirDescriptor:(const stitchedAirDescriptor *)a3
{
  buffer_ptr = 0;
  size_ptr = 0;
  v3 = dispatch_data_create_map(a3->var0, &buffer_ptr, &size_ptr);
  v4 = (buffer_ptr + *buffer_ptr);
  v5 = (v4 - *v4);
  if (*v5 >= 9u && (v6 = v5[4]) != 0)
  {
    v7 = (v4 + v6 + *(v4 + v6));
  }

  else
  {
    v7 = 0;
  }

  v8 = (v7 - *v7);
  if (*v8 >= 7u && (v9 = v8[3]) != 0)
  {
    v10 = (v7 + v9 + *(v7 + v9));
  }

  else
  {
    v10 = 0;
  }

  v11 = (v10 - *v10);
  if (*v11 >= 5u && (v12 = v11[2]) != 0)
  {
    v13 = (v10 + v12 + *(v10 + v12));
  }

  else
  {
    v13 = 0;
  }

  flatbuffers::String::str(v13, __p);
  v14 = objc_alloc(MEMORY[0x1E696AEC0]);
  if (v19 >= 0)
  {
    v15 = __p;
  }

  else
  {
    v15 = __p[0];
  }

  v16 = [v14 initWithUTF8String:v15];
  dispatch_release(v3);
  if (v19 < 0)
  {
    operator delete(__p[0]);
  }

  return v16;
}

- (id)localStitchedFunctionLookupWithDescriptor:(const stitchedAirDescriptor *)a3
{
  result = std::__hash_table<HashKey,KeyHashFunction,std::equal_to<HashKey>,std::allocator<HashKey>>::find<HashKey>(&self->_stitchedFunctionByHash.__table_.__bucket_list_.__ptr_, a3->var1.var0);
  if (result)
  {
    v6 = result;
    v7 = [(_MTLBinaryArchive *)self getFunctionNameFromAirDescriptor:a3];
    device = self->_device;
    libraryBuilder = device->_libraryBuilder;
    v10 = [v6[6] data];
    v15 = MTLLibraryBuilder::newLibraryWithData(libraryBuilder, device, v10, 0, v11, v12, v13, v14);
    v16 = [(_MTLLibrary *)v15 newFunctionWithName:v7];

    return v16;
  }

  return result;
}

- (void)addStitchingInputsFunction:(id)a3 toEntry:(id)a4
{
  v36 = *MEMORY[0x1E69E9840];
  if (a3)
  {
    v5 = a3;
    __p = 0;
    v32 = 0;
    v33 = 0;
    std::vector<NSValue *>::reserve(&__p, [a3 count]);
    v26 = a4;
    v29 = 0u;
    v30 = 0u;
    v27 = 0u;
    v28 = 0u;
    v7 = [v5 countByEnumeratingWithState:&v27 objects:v35 count:16];
    if (v7)
    {
      v8 = *v28;
      do
      {
        v9 = v5;
        for (i = 0; i != v7; ++i)
        {
          if (*v28 != v8)
          {
            objc_enumerationMutation(v9);
          }

          v11 = *(*(&v27 + 1) + 8 * i);
          if (!std::__hash_table<std::__hash_value_type<MTLUINT256_t,NSObject  {objcproto16OS_dispatch_data}*>,std::__unordered_map_hasher<MTLUINT256_t,std::__hash_value_type<MTLUINT256_t,NSObject  {objcproto16OS_dispatch_data}*>,UnorderedContainerHash,UnorderedContainerHash,true>,std::__unordered_map_equal<MTLUINT256_t,std::__hash_value_type<MTLUINT256_t,NSObject  {objcproto16OS_dispatch_data}*>,UnorderedContainerHash,UnorderedContainerHash,true>,std::allocator<std::__hash_value_type<MTLUINT256_t,NSObject  {objcproto16OS_dispatch_data}*>>>::find<MTLUINT256_t>(self->_uniqueBitcodeList.__ptr_, [v11 bitCodeHash]))
          {
            v12 = [v11 bitcodeDataInternal];
            ptr = self->_uniqueBitcodeList.__ptr_;
            v34 = [v11 bitCodeHash];
            std::__hash_table<std::__hash_value_type<MTLUINT256_t,NSObject  {objcproto16OS_dispatch_data}*>,std::__unordered_map_hasher<MTLUINT256_t,std::__hash_value_type<MTLUINT256_t,NSObject  {objcproto16OS_dispatch_data}*>,UnorderedContainerHash,UnorderedContainerHash,true>,std::__unordered_map_equal<MTLUINT256_t,std::__hash_value_type<MTLUINT256_t,NSObject  {objcproto16OS_dispatch_data}*>,UnorderedContainerHash,UnorderedContainerHash,true>,std::allocator<std::__hash_value_type<MTLUINT256_t,NSObject  {objcproto16OS_dispatch_data}*>>>::__emplace_unique_key_args<MTLUINT256_t,std::piecewise_construct_t const&,std::tuple<MTLUINT256_t const&>,std::tuple<>>(ptr, v34)[6] = v12;
          }

          v14 = [objc_alloc(MEMORY[0x1E696B098]) initWithBytes:objc_msgSend(v11 objCType:{"bitCodeHash"), "{?=[32C]}"}];
          v15 = v32;
          if (v32 >= v33)
          {
            v17 = (v32 - __p) >> 3;
            if ((v17 + 1) >> 61)
            {
              std::vector<std::pair<std::tuple<std::string,unsigned int,unsigned int>,unsigned int>>::__throw_length_error[abi:ne200100]();
            }

            v18 = (v33 - __p) >> 2;
            if (v18 <= v17 + 1)
            {
              v18 = v17 + 1;
            }

            if (v33 - __p >= 0x7FFFFFFFFFFFFFF8)
            {
              v19 = 0x1FFFFFFFFFFFFFFFLL;
            }

            else
            {
              v19 = v18;
            }

            if (v19)
            {
              std::__allocate_at_least[abi:ne200100]<std::allocator<objc_object  {objcproto18MTLIOScratchBuffer}*>>(&__p, v19);
            }

            v20 = (8 * v17);
            *v20 = v14;
            v16 = 8 * v17 + 8;
            v21 = v20 - (v32 - __p);
            memcpy(v21, __p, v32 - __p);
            v22 = __p;
            __p = v21;
            v32 = v16;
            v33 = 0;
            if (v22)
            {
              operator delete(v22);
            }
          }

          else
          {
            *v32 = v14;
            v16 = (v15 + 8);
          }

          v32 = v16;
        }

        v5 = v9;
        v7 = [v9 countByEnumeratingWithState:&v27 objects:v35 count:16];
      }

      while (v7);
    }

    [v26 setLinkedBitcodes:{objc_msgSend(objc_alloc(MEMORY[0x1E695DEC8]), "initWithObjects:count:")}];

    v23 = __p;
    v24 = v32;
    if (__p != v32)
    {
      do
      {
      }

      while (v23 != v24);
      v23 = __p;
    }

    if (v23)
    {
      v32 = v23;
      operator delete(v23);
    }
  }

  v25 = *MEMORY[0x1E69E9840];
}

- (id)newStitchedLibraryWithKey:(id *)a3 descriptors:(const void *)a4
{
  if (!self->_isLegacy)
  {
    v35 = 0;
    v36 = &v35;
    v37 = 0x2020000000;
    v38 = 1;
    v28 = 0;
    v29 = &v28;
    v30 = 0x4812000000;
    v31 = __Block_byref_object_copy__584;
    v32 = __Block_byref_object_dispose__585;
    v33 = &unk_185DF1D43;
    std::vector<objc_object  {objcproto11MTLFunction}*>::vector[abi:ne200100](__p, 0xCCCCCCCCCCCCCCCDLL * ((*(a4 + 1) - *a4) >> 3));
    queue = self->_queue;
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __85___MTLBinaryArchive_MTLBinaryArchiveInternal__newStitchedLibraryWithKey_descriptors___block_invoke;
    block[3] = &unk_1E6EEAE80;
    block[4] = self;
    block[5] = &v28;
    block[6] = &v35;
    block[7] = a4;
    dispatch_sync(queue, block);
    if (v36[3])
    {
      v26 = 0;
      v16 = objc_alloc(MEMORY[0x1E695DEC8]);
      v17 = v29[7] - v29[6];
      v22 = [v16 initWithObjects:0 count:?];
      v23 = v29[6];
      v24 = v29[7];
      while (v23 != v24)
      {
      }

      v25 = MTLLibraryBuilder::newLibraryWithFunctionArray(*(self->_device + 55), self->_device, v22, &v26, v18, v19, v20, v21);
    }

    else
    {
      v25 = 0;
    }

    _Block_object_dispose(&v28, 8);
    if (__p[0])
    {
      __p[1] = __p[0];
      operator delete(__p[0]);
    }

    _Block_object_dispose(&v35, 8);
    return v25;
  }

  v5 = [(_MTLBinaryArchive *)self newArchiveDataForKeyInternal:a3, a4];
  if (!v5)
  {
    return 0;
  }

  v10 = v5;
  device = self->_device;
  libraryBuilder = device->_libraryBuilder;

  return MTLLibraryBuilder::newLibraryWithData(libraryBuilder, device, v10, 0, v6, v7, v8, v9);
}

- (void)addStitchedLibraryWithKey:(id *)a3 descriptors:(const void *)a4 inputFunctions:(id)a5 library:(id)a6
{
  v10 = [a6 libraryData];
  if (self->_isLegacy && (self->_options & 4) != 0)
  {
    v12 = [[MTLAirEntry alloc] initWithData:(*(*v10 + 128))(v10)];
    [(_MTLBinaryArchive *)self addArchiveEntryInternal:v12 forKey:a3];
  }

  else
  {
    queue = self->_queue;
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __108___MTLBinaryArchive_MTLBinaryArchiveInternal__addStitchedLibraryWithKey_descriptors_inputFunctions_library___block_invoke;
    block[3] = &unk_1E6EEAEA8;
    block[6] = a4;
    block[7] = v10;
    block[4] = self;
    block[5] = a5;
    dispatch_sync(queue, block);
  }
}

- (id)newSpecializedFunctionWithHash:(id *)a3 libraryPath:(id)a4
{
  if (self->_isLegacy)
  {
    v7 = [(_MTLBinaryArchive *)self newArchiveDataForKeyInternal:a3];
    if (!v7)
    {
      return 0;
    }

LABEL_8:
    v12 = MTLLibraryBuilder::newLibraryWithData(*(self->_device + 55), self->_device, v7, a4, 0, v8, v9, v10);
    v13 = [(_MTLLibrary *)v12 newSpecializedFunctionWithHash:a3 libraryPath:a4];
    if (!v13)
    {
      v13 = [(_MTLLibrary *)v12 newFunctionWithName:[(NSArray *)[(_MTLLibrary *)v12 functionNames] objectAtIndex:0]];
    }

    goto LABEL_10;
  }

  v11 = std::__hash_table<HashKey,KeyHashFunction,std::equal_to<HashKey>,std::allocator<HashKey>>::find<HashKey>(&self->_specializedLibraryCache.__table_.__bucket_list_.__ptr_, a3->var0);
  if (!v11)
  {
    v14 = std::__hash_table<HashKey,KeyHashFunction,std::equal_to<HashKey>,std::allocator<HashKey>>::find<HashKey>(&self->_specializedFunctionByHash.__table_.__bucket_list_.__ptr_, a3->var0);
    if (!v14)
    {
      return 0;
    }

    v7 = [v14[6] data];
    goto LABEL_8;
  }

  v12 = [(_MTLBinaryArchive *)self newLibraryInArchiveWithRange:v11[6] error:v11[7], 0];
  v13 = [(_MTLLibrary *)v12 newSpecializedFunctionWithHash:a3 libraryPath:a4];
LABEL_10:
  v15 = v13;

  return v15;
}

- (id)newArchiverIdWithBinaryKey:(id)a3 entry:(id)a4 srcArchiverId:(id)a5 functionType:(unint64_t)a6
{
  v25 = 0;
  v26 = &v25;
  v27 = 0x3052000000;
  v28 = __Block_byref_object_copy_;
  v29 = __Block_byref_object_dispose_;
  v30 = 0;
  v11 = [a3 getFunctionId];
  size_ptr = 0;
  buffer_ptr = 0;
  v12 = dispatch_data_create_map([a4 airScript], &buffer_ptr, &size_ptr);
  v13 = buffer_ptr;
  v14 = strncmp(buffer_ptr + 4, "AIRP", 4uLL);
  if (v14)
  {
    v15 = 0;
  }

  else
  {
    v15 = v13 + *v13;
  }

  v16 = v14 == 0;
  queue = self->_queue;
  v21[0] = MEMORY[0x1E69E9820];
  v18 = v16;
  v21[1] = 3221225472;
  v21[2] = __107___MTLBinaryArchive_MTLBinaryArchiveInternal__newArchiverIdWithBinaryKey_entry_srcArchiverId_functionType___block_invoke;
  v21[3] = &unk_1E6EEAED0;
  v21[4] = a5;
  v21[5] = self;
  v21[6] = a4;
  v21[7] = a3;
  v21[10] = v15;
  v21[11] = v11;
  v22 = v18;
  v21[8] = v12;
  v21[9] = &v25;
  v21[12] = a6;
  dispatch_sync(queue, v21);
  v19 = v26[5];
  _Block_object_dispose(&v25, 8);
  return v19;
}

- (void)updatePipelineWithPipelineArchiverId:(id)a3 key:(id)a4 functionType:(unint64_t)a5
{
  queue = self->_queue;
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __101___MTLBinaryArchive_MTLBinaryArchiveInternal__updatePipelineWithPipelineArchiverId_key_functionType___block_invoke;
  v6[3] = &unk_1E6EEAEF8;
  v6[4] = a3;
  v6[5] = a4;
  v6[6] = self;
  v6[7] = a5;
  dispatch_sync(queue, v6);
}

- (BOOL)remoteInsertionBegin
{
  dispatch_suspend(self->_serializeQueue);
  v3 = atomic_load(&self->_serializing);
  return (v3 & 1) == 0;
}

- (void)initMetalScriptWithArchive:(id)a3
{
  if ((self->_options & 0x80) == 0)
  {
    v4 = [a3 getMetalScript];
    if (v4)
    {
      v5 = v4;
      ptr = self->_mtlScriptBuilder.__ptr_;

      MTLMetalScriptBuilder::initFromScript(ptr, v5);
    }
  }
}

- (void)initWithOptions:(void *)a1 device:url:error:.cold.2(void *a1)
{
  v7 = *MEMORY[0x1E69E9840];
  [objc_msgSend(a1 "absoluteString")];
  OUTLINED_FUNCTION_0_4(&dword_185B8E000, MEMORY[0x1E69E9C10], v1, "MTLBinaryArchive - load from URL: '%s'", v2, v3, v4, v5, 2u);
  v6 = *MEMORY[0x1E69E9840];
}

- (void)loadFromURL:(uint8_t *)buf error:(uint64_t)a4 .cold.1(uint64_t a1, uint64_t *a2, uint8_t *buf, uint64_t a4)
{
  if (*(a2 + 23) >= 0)
  {
    v4 = a2;
  }

  else
  {
    v4 = *a2;
  }

  *buf = 136315650;
  *(buf + 4) = a4;
  *(buf + 6) = 2080;
  *(buf + 14) = a1;
  *(buf + 11) = 2080;
  *(buf + 3) = v4;
  _os_log_error_impl(&dword_185B8E000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "unable to find %s slice or a compatible one in binary archive '%s' \n available slices: %s \n", buf, 0x20u);
}

- (void)flatBufferFromJSON:(uint64_t)a1 schema:schemaSize:.cold.1(uint64_t a1)
{
  OUTLINED_FUNCTION_1_2(a1, *MEMORY[0x1E69E9840]);
  OUTLINED_FUNCTION_0_4(&dword_185B8E000, MEMORY[0x1E69E9C10], v1, "cannot load schema with error %s", v2, v3, v4, v5, 2u);
  v6 = *MEMORY[0x1E69E9840];
}

- (void)flatBufferFromJSON:(uint64_t)a1 schema:schemaSize:.cold.2(uint64_t a1)
{
  OUTLINED_FUNCTION_1_2(a1, *MEMORY[0x1E69E9840]);
  OUTLINED_FUNCTION_0_4(&dword_185B8E000, MEMORY[0x1E69E9C10], v1, "cannot decode flatbuffert with error %s", v2, v3, v4, v5, 2u);
  v6 = *MEMORY[0x1E69E9840];
}

- (void)materializeBitCode:(void *)a1 atIndex:.cold.1(void *a1)
{
  v7 = *MEMORY[0x1E69E9840];
  [objc_msgSend(a1 "localizedDescription")];
  OUTLINED_FUNCTION_0_4(&dword_185B8E000, MEMORY[0x1E69E9C10], v1, "Error loading machO library: %s", v2, v3, v4, v5, 2u);
  v6 = *MEMORY[0x1E69E9840];
}

@end