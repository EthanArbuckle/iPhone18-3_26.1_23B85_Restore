@interface VNModelFilesCache
+ (BOOL)useFOpenForModelWithPath:(id)a3;
+ (id)sharedInstance;
- (VNModelFilesCache)init;
- (id)load:(id)a3;
- (void)purgeAll;
- (void)unload:(id)a3;
@end

@implementation VNModelFilesCache

- (void)purgeAll
{
  ptr = self->m_impl.__ptr_;
  std::mutex::lock((ptr + 40));
  for (i = *(ptr + 2); i; i = *i)
  {
    if (i[14] >= 1)
    {
      v4 = 4;
    }

    else
    {
      v4 = 5;
    }

    (*(**(i + 5) + 24))(*(i + 5), v4);
  }

  std::mutex::unlock((ptr + 40));
}

- (void)unload:(id)a3
{
  v4 = a3;
  ptr = self->m_impl.__ptr_;
  std::string::basic_string[abi:ne200100]<0>(__p, [v4 UTF8String]);
  std::mutex::lock((ptr + 40));
  v6 = std::__hash_table<std::__hash_value_type<std::string,vision::mod::ImageClassfier_GraphNode *>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,vision::mod::ImageClassfier_GraphNode *>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,vision::mod::ImageClassfier_GraphNode *>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,vision::mod::ImageClassfier_GraphNode *>>>::find<std::string>(ptr, __p);
  if (v6)
  {
    v7 = v6;
    (*(*v6[5] + 24))(v6[5], 4);
    --*(v7 + 14);
  }

  std::mutex::unlock((ptr + 40));
  if (v9 < 0)
  {
    operator delete(__p[0]);
  }
}

- (id)load:(id)a3
{
  v4 = a3;
  v5 = [VNModelFileImpl alloc];
  ptr = self->m_impl.__ptr_;
  std::string::basic_string[abi:ne200100]<0>(__p, [v4 UTF8String]);
  v7 = [objc_opt_class() useFOpenForModelWithPath:v4];
  std::mutex::lock((ptr + 40));
  v8 = std::__hash_table<std::__hash_value_type<std::string,vision::mod::ImageClassfier_GraphNode *>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,vision::mod::ImageClassfier_GraphNode *>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,vision::mod::ImageClassfier_GraphNode *>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,vision::mod::ImageClassfier_GraphNode *>>>::find<std::string>(ptr, __p);
  if (!v8)
  {
    if (v7)
    {
      operator new();
    }

    operator new();
  }

  ++*(v8 + 14);
  v9 = v8[5];
  std::mutex::unlock((ptr + 40));
  v10 = [(VNModelFileImpl *)v5 initWithMappedModel:v9];
  if (v13 < 0)
  {
    operator delete(__p[0]);
  }

  return v10;
}

- (VNModelFilesCache)init
{
  {
    operator new();
  }

  std::unique_ptr<cvml::util::model_file_cache>::reset[abi:ne200100](&self->m_impl, cvml::util::model_file_cache::instance(void)::m_cache_);
  return self;
}

+ (BOOL)useFOpenForModelWithPath:(id)a3
{
  v14 = *MEMORY[0x1E69E9840];
  v3 = a3;
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v4 = [&unk_1F19C20C8 countByEnumeratingWithState:&v9 objects:v13 count:16];
  if (v4)
  {
    v5 = *v10;
    while (2)
    {
      for (i = 0; i != v4; ++i)
      {
        if (*v10 != v5)
        {
          objc_enumerationMutation(&unk_1F19C20C8);
        }

        if ([v3 containsString:*(*(&v9 + 1) + 8 * i)])
        {
          v7 = 1;
          goto LABEL_11;
        }
      }

      v4 = [&unk_1F19C20C8 countByEnumeratingWithState:&v9 objects:v13 count:16];
      if (v4)
      {
        continue;
      }

      break;
    }
  }

  v7 = 0;
LABEL_11:

  return v7;
}

+ (id)sharedInstance
{
  if (+[VNModelFilesCache sharedInstance]::onceToken != -1)
  {
    dispatch_once(&+[VNModelFilesCache sharedInstance]::onceToken, &__block_literal_global_24827);
  }

  v3 = +[VNModelFilesCache sharedInstance]::cache;

  return v3;
}

uint64_t __35__VNModelFilesCache_sharedInstance__block_invoke()
{
  +[VNModelFilesCache sharedInstance]::cache = objc_alloc_init(VNModelFilesCache);

  return MEMORY[0x1EEE66BB8]();
}

@end