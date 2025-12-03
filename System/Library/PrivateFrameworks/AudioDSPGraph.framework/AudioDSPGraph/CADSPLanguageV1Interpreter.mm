@interface CADSPLanguageV1Interpreter
- (BOOL)interpretContentsOfFile:(id)file updating:(id)updating error:(id *)error;
- (BOOL)interpretString:(id)string updating:(id)updating error:(id *)error;
- (BOOL)interpretUTF8String:(const char *)string length:(unint64_t)length updating:(id)updating error:(id *)error;
- (id).cxx_construct;
@end

@implementation CADSPLanguageV1Interpreter

- (id).cxx_construct
{
  *(self + 1) = &unk_1F48D17F0;
  *(self + 1) = 0u;
  *(self + 2) = 0u;
  *(self + 3) = 0u;
  return self;
}

- (BOOL)interpretContentsOfFile:(id)file updating:(id)updating error:(id *)error
{
  updatingCopy = updating;
  v9 = [MEMORY[0x1E696AEC0] stringWithContentsOfFile:file encoding:4 error:error];
  if (v9)
  {
    v10 = [(CADSPLanguageV1Interpreter *)self interpretString:v9 updating:updatingCopy error:error];
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

- (BOOL)interpretString:(id)string updating:(id)updating error:(id *)error
{
  stringCopy = string;
  updatingCopy = updating;
  LOBYTE(error) = -[CADSPLanguageV1Interpreter interpretUTF8String:length:updating:error:](self, "interpretUTF8String:length:updating:error:", [stringCopy UTF8String], objc_msgSend(stringCopy, "length"), updatingCopy, error);

  return error;
}

- (BOOL)interpretUTF8String:(const char *)string length:(unint64_t)length updating:(id)updating error:(id *)error
{
  v88 = *MEMORY[0x1E69E9840];
  updatingCopy = updating;
  v7 = updatingCopy;
  v66 = &unk_1F48CBB80;
  if (updatingCopy)
  {
    CFRetain(updatingCopy);
  }

  *&v75 = 0;
  cf = v7;
  CA::DSP::ReferenceCounted<__CADSPGraphModel *>::~ReferenceCounted(&v75);
  v68[0] = v7;
  if (!v7)
  {
    v82.__first_ = 0;
    memset(v87, 0, 80);
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    v85 = 134217984;
    v86 = 0;
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
  }

  CFRetain(v7);
  v54 = v7;
  CA::DSP::ReferenceCounted<__CADSPGraphModel *>::~ReferenceCounted(v68);
  v62 = 0u;
  v63 = 0u;
  v64 = 0u;
  v65 = 0u;
  v8 = self->_preprocessorMacroDefinitions;
  v9 = [(NSDictionary *)v8 countByEnumeratingWithState:&v62 objects:v84 count:16];
  if (!v9)
  {
    goto LABEL_13;
  }

  v10 = *v63;
  do
  {
    for (i = 0; i != v9; ++i)
    {
      if (*v63 != v10)
      {
        objc_enumerationMutation(v8);
      }

      v12 = *(*(&v62 + 1) + 8 * i);
      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        if (error)
        {
          *error = [CADSPError errorWithCode:1668049253 descriptionFormat:@"found preprocessor macro definition key of unexpected type '%@'", NSClassFromString(v12)];
        }

        goto LABEL_53;
      }

      v13 = [(NSDictionary *)self->_preprocessorMacroDefinitions objectForKeyedSubscript:v12];
      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        if (error)
        {
          *error = [CADSPError errorWithCode:1668049253 descriptionFormat:@"found preprocessor macro definition value of unexpected type '%@'", NSClassFromString(v13)];
        }

LABEL_53:
LABEL_57:
        v37 = 0;
        goto LABEL_58;
      }
    }

    v9 = [(NSDictionary *)v8 countByEnumeratingWithState:&v62 objects:v84 count:16];
  }

  while (v9);
LABEL_13:

  v60 = 0u;
  v61 = 0u;
  v58 = 0u;
  v59 = 0u;
  v14 = self->_preprocessorIncludePaths;
  v15 = [(NSArray *)v14 countByEnumeratingWithState:&v58 objects:v83 count:16];
  if (!v15)
  {
    goto LABEL_21;
  }

  v16 = *v59;
  do
  {
    for (j = 0; j != v15; ++j)
    {
      if (*v59 != v16)
      {
        objc_enumerationMutation(v14);
      }

      v18 = *(*(&v58 + 1) + 8 * j);
      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        if (error)
        {
          *error = [CADSPError errorWithCode:1668049253 descriptionFormat:@"found preprocessor include path of unexpected type '%@'", NSClassFromString(v18)];
        }

        goto LABEL_57;
      }
    }

    v15 = [(NSArray *)v14 countByEnumeratingWithState:&v58 objects:v83 count:16];
  }

  while (v15);
LABEL_21:

  *__p = 0u;
  v80 = 0u;
  v81 = 1065353216;
  v75 = 0u;
  v76 = 0u;
  v77 = 0u;
  v78 = 0u;
  v19 = self->_preprocessorMacroDefinitions;
  v53 = v19;
  v20 = [(NSDictionary *)v19 countByEnumeratingWithState:&v75 objects:v87 count:16];
  if (!v20)
  {
    goto LABEL_59;
  }

  v21 = 0;
  v22 = *v76;
  v56 = *v76;
  while (2)
  {
    if (v22 != v56)
    {
      objc_enumerationMutation(v19);
    }

    v23 = *(*(&v75 + 1) + 8 * v21);
    v24 = [(NSDictionary *)self->_preprocessorMacroDefinitions objectForKeyedSubscript:v23];
    v25 = v24;
    uTF8String = [v24 UTF8String];
    v27 = v23;
    std::string::basic_string[abi:ne200100]<0>(v68, [v23 UTF8String]);
    v28 = std::__string_hash<char>::operator()[abi:ne200100](v68);
    v29 = v28;
    v30 = __p[1];
    if (!__p[1])
    {
      goto LABEL_41;
    }

    v31 = vcnt_s8(__p[1]);
    v31.i16[0] = vaddlv_u8(v31);
    v32 = v31.u32[0];
    if (v31.u32[0] > 1uLL)
    {
      v33 = v28;
      if (v28 >= __p[1])
      {
        v33 = v28 % __p[1];
      }
    }

    else
    {
      v33 = (__p[1] - 1) & v28;
    }

    v34 = *(__p[0] + v33);
    if (!v34 || (v35 = *v34) == 0)
    {
LABEL_41:
      operator new();
    }

    while (2)
    {
      v36 = v35[1];
      if (v36 != v29)
      {
        if (v32 > 1)
        {
          if (v36 >= v30)
          {
            v36 %= v30;
          }
        }

        else
        {
          v36 &= v30 - 1;
        }

        if (v36 != v33)
        {
          goto LABEL_41;
        }

        goto LABEL_40;
      }

      if (!AudioDSPGraph::IR::BoxAlias::operator==(v35 + 2, v68))
      {
LABEL_40:
        v35 = *v35;
        if (!v35)
        {
          goto LABEL_41;
        }

        continue;
      }

      break;
    }

    v19 = v53;
    std::string::__assign_external((v35 + 5), uTF8String);
    if (SBYTE7(v69) < 0)
    {
      operator delete(v68[0]);
    }

    if (++v21 < v20)
    {
      goto LABEL_47;
    }

    v20 = [(NSDictionary *)v53 countByEnumeratingWithState:&v75 objects:v87 count:16];
    if (v20)
    {
      v21 = 0;
LABEL_47:
      v22 = *v76;
      continue;
    }

    break;
  }

LABEL_59:

  v72 = 0;
  v73 = 0;
  value = 0;
  *v68 = 0u;
  v69 = 0u;
  v70 = 0u;
  v71 = 0u;
  v40 = self->_preprocessorIncludePaths;
  v41 = [(NSArray *)v40 countByEnumeratingWithState:v68 objects:&v85 count:16];
  if (v41)
  {
    v42 = *v69;
    do
    {
      for (k = 0; k != v41; ++k)
      {
        if (*v69 != v42)
        {
          objc_enumerationMutation(v40);
        }

        uTF8String2 = [*(v68[1] + k) UTF8String];
        v45 = v73;
        if (v73 >= value)
        {
          v47 = 0xAAAAAAAAAAAAAAABLL * ((v73 - v72) >> 3) + 1;
          if (v47 > 0xAAAAAAAAAAAAAAALL)
          {
            std::vector<unsigned char,std::pmr::polymorphic_allocator<unsigned char>>::__throw_length_error[abi:ne200100]();
          }

          if (0x5555555555555556 * ((value - v72) >> 3) > v47)
          {
            v47 = 0x5555555555555556 * ((value - v72) >> 3);
          }

          if (0xAAAAAAAAAAAAAAABLL * ((value - v72) >> 3) >= 0x555555555555555)
          {
            v48 = 0xAAAAAAAAAAAAAAALL;
          }

          else
          {
            v48 = v47;
          }

          v82.__end_cap_.__value_ = &v72;
          if (v48)
          {
            std::allocator<AudioDSPGraph::IR::SubsetModel>::allocate_at_least[abi:ne200100](v48);
          }

          v82.__first_ = 0;
          v82.__begin_ = (8 * ((v73 - v72) >> 3));
          v82.__end_ = v82.__begin_;
          v82.__end_cap_.__value_ = 0;
          std::string::basic_string[abi:ne200100]<0>(v82.__begin_, uTF8String2);
          v46 = v82.__end_ + 1;
          v49 = (v82.__begin_ - (v73 - v72));
          memcpy(v49, v72, v73 - v72);
          v50 = v72;
          v51 = value;
          v72 = v49;
          v73 = v46;
          value = v82.__end_cap_.__value_;
          v82.__end_ = v50;
          v82.__end_cap_.__value_ = v51;
          v82.__first_ = v50;
          v82.__begin_ = v50;
          std::__split_buffer<AudioDSPGraph::IR::SubsetModel>::~__split_buffer(&v82);
        }

        else
        {
          std::string::basic_string[abi:ne200100]<0>(v73, uTF8String2);
          v46 = v45 + 1;
        }

        v73 = v46;
      }

      v41 = [(NSArray *)v40 countByEnumeratingWithState:v68 objects:&v85 count:16];
    }

    while (v41);
  }

  (*(self->_interpreter._vptr$VirtuallyDestructible + 2))(&self->_interpreter, &v66, string, __p, &v72);
  v82.__first_ = &v72;
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&v82);
  std::__hash_table<std::__hash_value_type<std::string,std::string>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::string>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::string>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::string>>>::~__hash_table(__p);
  v37 = 1;
LABEL_58:
  CA::DSP::ReferenceCounted<__CADSPGraphModel *>::~ReferenceCounted(&cf);

  v38 = *MEMORY[0x1E69E9840];
  return v37;
}

@end