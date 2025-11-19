@interface NLLMSLanguageModelSession
- (BOOL)enumeratePredictionsForContext:maximumPredictions:maximumTokensPerPrediction:withBlock:;
- (NLLMSLanguageModelSession)initWithLanguageModel:(id)a3 options:(id)a4;
- (__n128)enumeratePredictionsForContext:maximumPredictions:maximumTokensPerPrediction:withBlock:;
- (id)conditionalProbabilityForString:(id)a3 context:(id)a4;
- (id)conditionalProbabilityForToken:(id)a3 context:(id)a4;
- (id)description;
- (int64_t)blocklistStatusForString:(id)a3 matchType:(int64_t)a4;
- (uint64_t)enumeratePredictionsForContext:maximumPredictions:maximumTokensPerPrediction:withBlock:;
- (void)adaptToToken:(id)a3 context:(id)a4;
- (void)enumeratePredictionsForContext:(id)a3 maximumPredictions:(unint64_t)a4 maximumTokensPerPrediction:(unint64_t)a5 withBlock:(id)a6;
- (void)reset;
- (void)unadaptToToken:(id)a3 context:(id)a4;
@end

@implementation NLLMSLanguageModelSession

- (NLLMSLanguageModelSession)initWithLanguageModel:(id)a3 options:(id)a4
{
  v6 = a3;
  v7 = a4;
  v25[0] = 0;
  v25[1] = 0;
  v24 = v25;
  v8 = [v7 objectForKey:@"AppContext"];
  v9 = v8;
  if (v8)
  {
    v10 = [v8 UTF8String];
  }

  else
  {
    v10 = 0;
  }

  v23 = v10;
  std::string::basic_string[abi:ne200100]<0>(__p, *MEMORY[0x1E69ABD88]);
  v26 = __p;
  v11 = std::__tree<std::__value_type<std::string,std::variant<language_modeling::v1::SessionType,std::string>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::variant<language_modeling::v1::SessionType,std::string>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::variant<language_modeling::v1::SessionType,std::string>>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(&v24, __p);
  v12 = v11;
  if (*(v11 + 80))
  {
    std::__variant_detail::__dtor<std::__variant_detail::__traits<language_modeling::v1::SessionType,std::string>,(std::__variant_detail::_Trait)1>::__destroy[abi:ne200100](v11 + 56);
    *(v12 + 80) = 0;
  }

  *(v12 + 56) = 0;
  if (v22 < 0)
  {
    operator delete(__p[0]);
    if (!v10)
    {
      goto LABEL_12;
    }
  }

  else if (!v10)
  {
    goto LABEL_12;
  }

  std::string::basic_string[abi:ne200100]<0>(__p, *MEMORY[0x1E69ABD98]);
  v26 = __p;
  v13 = std::__tree<std::__value_type<std::string,std::variant<language_modeling::v1::SessionType,std::string>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::variant<language_modeling::v1::SessionType,std::string>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::variant<language_modeling::v1::SessionType,std::string>>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(&v24, __p);
  std::__variant_detail::__assignment<std::__variant_detail::__traits<language_modeling::v1::SessionType,std::string>>::__assign_alt[abi:ne200100]<1ul,std::string,char const*&>(v13 + 56, (v13 + 56), &v23);
  if (v22 < 0)
  {
    operator delete(__p[0]);
  }

LABEL_12:
  v20.receiver = self;
  v20.super_class = NLLMSLanguageModelSession;
  v14 = [(NLLanguageModelSession *)&v20 initWithLanguageModel:v6 options:v7];
  if (v14)
  {
    [v6 _underlyingModel];
    language_modeling::v1::LanguageModel::makeSession();
    v15 = __p[0];
    __p[0] = 0;
    std::unique_ptr<language_modeling::v1::LanguageModelSession>::reset[abi:ne200100](v14 + 2, v15);
    v16 = __p[0];
    __p[0] = 0;
    if (v16)
    {
      language_modeling::v1::LanguageModelSession::~LanguageModelSession(v16);
      MEMORY[0x19EAFC130]();
    }

    v17 = [[NLTokenizer alloc] initWithUnit:0];
    v18 = *(v14 + 3);
    *(v14 + 3) = v17;
  }

  std::__tree<std::__value_type<std::string,std::variant<language_modeling::v1::SessionType,std::string>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::variant<language_modeling::v1::SessionType,std::string>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::variant<language_modeling::v1::SessionType,std::string>>>>::destroy(&v24, v25[0]);
  return v14;
}

- (id)description
{
  v3 = MEMORY[0x1E696AD60];
  v9.receiver = self;
  v9.super_class = NLLMSLanguageModelSession;
  v4 = [(NLLMSLanguageModelSession *)&v9 description];
  v5 = [(NLLanguageModelSession *)self languageModel];
  v6 = [v5 localization];
  v7 = objc_msgSend(v3, "stringWithFormat:", @"%@(%@"), v4, v6;

  [v7 appendString:@""]);

  return v7;
}

- (id)conditionalProbabilityForToken:(id)a3 context:(id)a4
{
  v6 = a3;
  v7 = wordSequenceForString(a4, self->_tokenizer);
  v8 = [v6 UTF8String];
  if (self->_session.__ptr_)
  {
    v9 = v8 == 0;
  }

  else
  {
    v9 = 1;
  }

  if (v9 || v7 == 0)
  {
    v11 = [[NLProbabilityInfo alloc] initWithInvalidProbability];
  }

  else
  {
    std::string::basic_string[abi:ne200100]<0>(&__p, v8);
    v18 = 0;
    makeContext(v7, v15);
    v12 = language_modeling::v1::LanguageModelSession::conditionalProbability();
    language_modeling::v1::LinguisticContext::~LinguisticContext(v15);
    if (v17 < 0)
    {
      operator delete(__p);
    }

    v11 = [[NLProbabilityInfo alloc] initWithLog10Probability:0 flags:*&v12];
  }

  v13 = v11;

  return v13;
}

- (id)conditionalProbabilityForString:(id)a3 context:(id)a4
{
  v6 = a3;
  v7 = wordSequenceForString(a4, self->_tokenizer);
  v8 = wordSequenceForString(v6, self->_tokenizer);
  v9 = v8;
  if (self->_session.__ptr_)
  {
    v10 = v7 == 0;
  }

  else
  {
    v10 = 1;
  }

  v11 = v10 || v8 == 0;
  v12 = 0x1E7628000;
  if (v11)
  {
LABEL_19:
    v21 = [objc_alloc(*(v12 + 2280)) initWithInvalidProbability];
    goto LABEL_20;
  }

  v13 = [v8 count];
  v14 = [MEMORY[0x1E695DF70] arrayWithArray:v7];
  if (v13)
  {
    v15 = 0;
    v16 = 0.0;
    while (1)
    {
      v17 = [v9 objectAtIndex:v15];
      v18 = [v17 UTF8String];
      if (!v18)
      {
        break;
      }

      ptr = self->_session.__ptr_;
      std::string::basic_string[abi:ne200100]<0>(&__p, v18);
      v26 = 0;
      makeContext(v14, v23);
      v20 = COERCE_DOUBLE(language_modeling::v1::LanguageModelSession::conditionalProbability());
      language_modeling::v1::LinguisticContext::~LinguisticContext(v23);
      if (v25 < 0)
      {
        operator delete(__p);
      }

      [(NSArray *)v14 addObject:v17];
      v16 = v16 + v20;

      if (++v15 >= v13)
      {
        goto LABEL_16;
      }
    }

    v12 = 0x1E7628000uLL;
    goto LABEL_19;
  }

  v16 = 0.0;
LABEL_16:
  v21 = [[NLProbabilityInfo alloc] initWithLog10Probability:0 flags:v16];

  v12 = 0x1E7628000;
  if (!v21)
  {
    goto LABEL_19;
  }

LABEL_20:

  return v21;
}

- (void)enumeratePredictionsForContext:(id)a3 maximumPredictions:(unint64_t)a4 maximumTokensPerPrediction:(unint64_t)a5 withBlock:(id)a6
{
  v16 = *MEMORY[0x1E69E9840];
  v15 = a4;
  v14 = a6;
  v8 = wordSequenceForString(a3, self->_tokenizer);
  v13 = 0;
  if (self->_session.__ptr_)
  {
    v9 = v8 == 0;
  }

  else
  {
    v9 = 1;
  }

  if (!v9)
  {
    makeContext(v8, v12);
    std::string::basic_string[abi:ne200100]<0>(&__p, "");
    operator new();
  }

  v10 = *MEMORY[0x1E69E9840];
}

- (int64_t)blocklistStatusForString:(id)a3 matchType:(int64_t)a4
{
  v5 = wordSequenceForString(a3, self->_tokenizer);
  if (v5)
  {
    v6 = [(NLLanguageModelSession *)self languageModel];
    [v6 _underlyingModel];
    makeContext(v5, v10);
    v7 = language_modeling::v1::LanguageModel::blocklistStatus();
    language_modeling::v1::LinguisticContext::~LinguisticContext(v10);

    v8 = v7 != 0;
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (void)adaptToToken:(id)a3 context:(id)a4
{
  v6 = a3;
  v7 = wordSequenceForString(a4, self->_tokenizer);
  v8 = [v6 UTF8String];
  if (self->_session.__ptr_)
  {
    v9 = v8 == 0;
  }

  else
  {
    v9 = 1;
  }

  if (!v9 && v7 != 0)
  {
    std::string::basic_string[abi:ne200100]<0>(&__p, v8);
    v14 = 0;
    makeContext(v7, v11);
    language_modeling::v1::LanguageModelSession::adaptToToken();
    language_modeling::v1::LinguisticContext::~LinguisticContext(v11);
    if (v13 < 0)
    {
      operator delete(__p);
    }
  }
}

- (void)unadaptToToken:(id)a3 context:(id)a4
{
  v6 = a3;
  v7 = wordSequenceForString(a4, self->_tokenizer);
  v8 = [v6 UTF8String];
  if (self->_session.__ptr_)
  {
    v9 = v8 == 0;
  }

  else
  {
    v9 = 1;
  }

  if (!v9 && v7 != 0)
  {
    std::string::basic_string[abi:ne200100]<0>(&__p, v8);
    v14 = 0;
    makeContext(v7, v11);
    language_modeling::v1::LanguageModelSession::unAdaptToToken();
    language_modeling::v1::LinguisticContext::~LinguisticContext(v11);
    if (v13 < 0)
    {
      operator delete(__p);
    }
  }
}

- (void)reset
{
  v2 = [(NLLanguageModelSession *)self languageModel];
  language_modeling::v1::LanguageModel::deallocateInternalBuffers([v2 _underlyingModel]);
}

- (__n128)enumeratePredictionsForContext:maximumPredictions:maximumTokensPerPrediction:withBlock:
{
  *a2 = &unk_1F10C6370;
  result = *(a1 + 8);
  *(a2 + 24) = *(a1 + 24);
  *(a2 + 8) = result;
  return result;
}

- (BOOL)enumeratePredictionsForContext:maximumPredictions:maximumTokensPerPrediction:withBlock:
{
  v4 = MEMORY[0x1E696AEC0];
  language_modeling::v1::Prediction::string(__p, this);
  if (v14 >= 0)
  {
    v5 = __p;
  }

  else
  {
    v5 = __p[0];
  }

  v6 = [v4 stringWithUTF8String:v5];
  if (v14 < 0)
  {
    operator delete(__p[0]);
  }

  v7 = [[NLProbabilityInfo alloc] initWithLog10Probability:0 flags:COERCE_DOUBLE(language_modeling::v1::Prediction::probability(this))];
  v8 = [[NLPredictionInfo alloc] initWithPrediction:v6 contextLength:language_modeling::v1::Prediction::contextSize(this) probabilityInfo:v7];
  LOBYTE(__p[0]) = 0;
  (*(*a1[1] + 16))();
  v9 = a1[2];
  v10 = *v9 + 1;
  *v9 = v10;
  v11 = (__p[0] & 1) == 0 && v10 < *a1[3];

  return v11;
}

- (uint64_t)enumeratePredictionsForContext:maximumPredictions:maximumTokensPerPrediction:withBlock:
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

@end