@interface NLLMSLanguageModel
- (NLLMSLanguageModel)initWithLocalization:(id)localization options:(id)options;
- (id)sessionWithOptions:(id)options;
@end

@implementation NLLMSLanguageModel

- (NLLMSLanguageModel)initWithLocalization:(id)localization options:(id)options
{
  localizationCopy = localization;
  optionsCopy = options;
  v8 = stringForKey(optionsCopy, @"Architecture", @"LSTM");
  v9 = [MEMORY[0x1E695DF58] localeWithLocaleIdentifier:localizationCopy];
  languageCode = [v9 languageCode];
  if (languageCode)
  {
    v11 = [&unk_1F10D14B0 objectForKey:languageCode];
  }

  else
  {
    v11 = 0;
  }

  v39[0] = 0;
  v39[1] = 0;
  v38 = v39;
  std::string::basic_string[abi:ne200100]<0>(&v37, [localizationCopy UTF8String]);
  v12 = BOOLForKey(optionsCopy, @"AdaptationEnabled", 1);
  v13 = BOOLForKey(optionsCopy, @"IsSiriModel", 0);
  if (v11)
  {
    std::string::basic_string[abi:ne200100]<0>(&__str, [v11 UTF8String]);
    std::string::basic_string[abi:ne200100]<0>(__p, *MEMORY[0x1E69ABD90]);
    v40 = __p;
    v14 = std::__tree<std::__value_type<std::string,std::variant<BOOL,std::string>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::variant<BOOL,std::string>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::variant<BOOL,std::string>>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(&v38, __p);
    std::__variant_detail::__assignment<std::__variant_detail::__traits<BOOL,std::string>>::__assign_alt[abi:ne200100]<1ul,std::string,std::string&>(v14 + 56, (v14 + 56), &__str);
    if (v35 < 0)
    {
      operator delete(__p[0]);
    }

    std::string::basic_string[abi:ne200100]<0>(__p, *MEMORY[0x1E69ABD70]);
    v40 = __p;
    v15 = std::__tree<std::__value_type<std::string,std::variant<BOOL,std::string>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::variant<BOOL,std::string>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::variant<BOOL,std::string>>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(&v38, __p);
    std::__variant_detail::__assignment<std::__variant_detail::__traits<BOOL,std::string>>::__assign_alt[abi:ne200100]<1ul,std::string,std::string&>(v15 + 56, (v15 + 56), &v37);
    if (v35 < 0)
    {
      operator delete(__p[0]);
    }

    std::string::basic_string[abi:ne200100]<0>(__p, *MEMORY[0x1E69ABDA0]);
    v40 = __p;
    v16 = std::__tree<std::__value_type<std::string,std::variant<BOOL,std::string>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::variant<BOOL,std::string>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::variant<BOOL,std::string>>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(&v38, __p);
    v18 = v16;
    if (*(v16 + 80))
    {
      std::__variant_detail::__dtor<std::__variant_detail::__traits<BOOL,std::string>,(std::__variant_detail::_Trait)1>::__destroy[abi:ne200100](v16 + 56);
      *(v18 + 80) = 0;
    }

    *(v18 + 56) = 1;
    if (v35 < 0)
    {
      operator delete(__p[0]);
    }
  }

  else
  {
    std::string::basic_string[abi:ne200100]<0>(&__str, *MEMORY[0x1E69ABD90]);
    __p[0] = &__str;
    v19 = std::__tree<std::__value_type<std::string,std::variant<BOOL,std::string>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::variant<BOOL,std::string>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::variant<BOOL,std::string>>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(&v38, &__str.__r_.__value_.__l.__data_);
    v17 = std::__variant_detail::__assignment<std::__variant_detail::__traits<BOOL,std::string>>::__assign_alt[abi:ne200100]<1ul,std::string,std::string&>(v19 + 56, (v19 + 56), &v37);
  }

  if (SHIBYTE(__str.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__str.__r_.__value_.__l.__data_);
    if (v12)
    {
      goto LABEL_21;
    }
  }

  else if (v12)
  {
    goto LABEL_21;
  }

  std::string::basic_string[abi:ne200100]<0>(&__str, *MEMORY[0x1E69ABD80]);
  __p[0] = &__str;
  v20 = std::__tree<std::__value_type<std::string,std::variant<BOOL,std::string>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::variant<BOOL,std::string>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::variant<BOOL,std::string>>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(&v38, &__str.__r_.__value_.__l.__data_);
  v21 = v20;
  if (*(v20 + 80))
  {
    std::__variant_detail::__dtor<std::__variant_detail::__traits<BOOL,std::string>,(std::__variant_detail::_Trait)1>::__destroy[abi:ne200100](v20 + 56);
    *(v21 + 80) = 0;
  }

  *(v21 + 56) = 0;
  if ((SHIBYTE(__str.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
  {
LABEL_21:
    if (!v13)
    {
      goto LABEL_27;
    }

    goto LABEL_22;
  }

  operator delete(__str.__r_.__value_.__l.__data_);
  if (!v13)
  {
    goto LABEL_27;
  }

LABEL_22:
  std::string::basic_string[abi:ne200100]<0>(&__str, *MEMORY[0x1E69ABD60]);
  __p[0] = &__str;
  v22 = std::__tree<std::__value_type<std::string,std::variant<BOOL,std::string>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::variant<BOOL,std::string>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::variant<BOOL,std::string>>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(&v38, &__str.__r_.__value_.__l.__data_);
  v23 = v22;
  if (*(v22 + 80))
  {
    std::__variant_detail::__dtor<std::__variant_detail::__traits<BOOL,std::string>,(std::__variant_detail::_Trait)1>::__destroy[abi:ne200100](v22 + 56);
    *(v23 + 80) = 0;
  }

  *(v23 + 56) = 1;
  if (SHIBYTE(__str.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__str.__r_.__value_.__l.__data_);
  }

LABEL_27:
  if (v8 && [v8 isEqual:{@"Transformer", v17}])
  {
    std::string::basic_string[abi:ne200100]<0>(&__str, *MEMORY[0x1E69ABDA8]);
    __p[0] = &__str;
    v24 = std::__tree<std::__value_type<std::string,std::variant<BOOL,std::string>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::variant<BOOL,std::string>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::variant<BOOL,std::string>>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(&v38, &__str.__r_.__value_.__l.__data_);
    std::__variant_detail::__assignment<std::__variant_detail::__traits<BOOL,std::string>>::__assign_alt[abi:ne200100]<1ul,std::string,char const*&>(v24 + 56, (v24 + 56), MEMORY[0x1E69ABD68]);
    if (SHIBYTE(__str.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__str.__r_.__value_.__l.__data_);
    }

    std::string::basic_string[abi:ne200100]<0>(&__str, *MEMORY[0x1E69ABDB0]);
    __p[0] = &__str;
    v25 = std::__tree<std::__value_type<std::string,std::variant<BOOL,std::string>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::variant<BOOL,std::string>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::variant<BOOL,std::string>>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(&v38, &__str.__r_.__value_.__l.__data_);
    v26 = std::__variant_detail::__assignment<std::__variant_detail::__traits<BOOL,std::string>>::__assign_alt[abi:ne200100]<1ul,std::string,char const*&>(v25 + 56, (v25 + 56), MEMORY[0x1E69ABD68]);
  }

  else
  {
    std::string::basic_string[abi:ne200100]<0>(&__str, *MEMORY[0x1E69ABDA8]);
    __p[0] = &__str;
    v27 = std::__tree<std::__value_type<std::string,std::variant<BOOL,std::string>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::variant<BOOL,std::string>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::variant<BOOL,std::string>>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(&v38, &__str.__r_.__value_.__l.__data_);
    std::__variant_detail::__assignment<std::__variant_detail::__traits<BOOL,std::string>>::__assign_alt[abi:ne200100]<1ul,std::string,char const*&>(v27 + 56, (v27 + 56), MEMORY[0x1E69ABD78]);
    if (SHIBYTE(__str.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__str.__r_.__value_.__l.__data_);
    }

    std::string::basic_string[abi:ne200100]<0>(&__str, *MEMORY[0x1E69ABDB0]);
    __p[0] = &__str;
    v28 = std::__tree<std::__value_type<std::string,std::variant<BOOL,std::string>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::variant<BOOL,std::string>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::variant<BOOL,std::string>>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(&v38, &__str.__r_.__value_.__l.__data_);
    v26 = std::__variant_detail::__assignment<std::__variant_detail::__traits<BOOL,std::string>>::__assign_alt[abi:ne200100]<1ul,std::string,char const*&>(v28 + 56, (v28 + 56), MEMORY[0x1E69ABD78]);
  }

  if (SHIBYTE(__str.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__str.__r_.__value_.__l.__data_);
  }

  v33.receiver = self;
  v33.super_class = NLLMSLanguageModel;
  v29 = [(NLLanguageModel *)&v33 initWithLocalization:localizationCopy, v26];
  if (v29)
  {
    language_modeling::v1::LanguageModel::init();
    if (v32 < 0)
    {
      operator delete(v31);
    }
  }

  if (SHIBYTE(v37.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v37.__r_.__value_.__l.__data_);
  }

  std::__tree<std::__value_type<std::string,std::variant<BOOL,std::string>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::variant<BOOL,std::string>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::variant<BOOL,std::string>>>>::destroy(&v38, v39[0]);

  return v29;
}

- (id)sessionWithOptions:(id)options
{
  optionsCopy = options;
  v5 = [[NLLMSLanguageModelSession alloc] initWithLanguageModel:self options:optionsCopy];

  return v5;
}

@end