void sub_19D4AAC80(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  std::unique_ptr<std::__hash_node<std::__hash_value_type<std::string,std::shared_ptr<E5RT::ProgramFunction>>,void *>,std::__hash_node_destructor<std::allocator<std::__hash_node<std::__hash_value_type<std::string,std::shared_ptr<E5RT::ProgramFunction>>,void *>>>>::~unique_ptr[abi:ne200100](va);
  _Unwind_Resume(a1);
}

void applesauce::CF::convert_to<std::vector<int>,0>(const void *a1@<X0>, std::vector<int> *a2@<X8>)
{
  if (!a1 || (TypeID = CFArrayGetTypeID(), TypeID != CFGetTypeID(a1)))
  {
    exception = __cxa_allocate_exception(0x10uLL);
    applesauce::CF::convert_error(exception);
  }

  applesauce::CF::details::CFArray_get_value_to<std::vector<int>>(a1, a2);
}

void applesauce::CF::details::CFArray_get_value_to<std::vector<int>>(const __CFArray *a1@<X0>, std::vector<int> *a2@<X8>)
{
  Count = CFArrayGetCount(a1);
  a2->__end_ = 0;
  a2->__end_cap_.__value_ = 0;
  a2->__begin_ = 0;
  std::vector<int>::reserve(a2, Count);
  if (Count >= 1)
  {
    v5 = 0;
    do
    {
      ValueAtIndex = CFArrayGetValueAtIndex(a1, v5);
      v7 = applesauce::CF::convert_to<int,0>(ValueAtIndex);
      end = a2->__end_;
      value = a2->__end_cap_.__value_;
      if (end >= value)
      {
        begin = a2->__begin_;
        v12 = end - a2->__begin_;
        v13 = v12 >> 2;
        v14 = (v12 >> 2) + 1;
        if (v14 >> 62)
        {
          std::vector<double>::__throw_length_error[abi:ne200100]();
        }

        v15 = value - begin;
        if (v15 >> 1 > v14)
        {
          v14 = v15 >> 1;
        }

        if (v15 >= 0x7FFFFFFFFFFFFFFCLL)
        {
          v16 = 0x3FFFFFFFFFFFFFFFLL;
        }

        else
        {
          v16 = v14;
        }

        if (v16)
        {
          std::__allocate_at_least[abi:ne200100]<std::allocator<ME_Model::ME_Feature>>(a2, v16);
        }

        *(4 * v13) = v7;
        v10 = 4 * v13 + 4;
        memcpy(0, begin, v12);
        v17 = a2->__begin_;
        a2->__begin_ = 0;
        a2->__end_ = v10;
        a2->__end_cap_.__value_ = 0;
        if (v17)
        {
          operator delete(v17);
        }
      }

      else
      {
        *end = v7;
        v10 = (end + 4);
      }

      a2->__end_ = v10;
      ++v5;
    }

    while ((Count & 0x7FFFFFFF) != v5);
  }
}

void sub_19D4AAE8C(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

void std::vector<int>::reserve(std::vector<int> *this, std::vector<int>::size_type __n)
{
  if (__n > this->__end_cap_.__value_ - this->__begin_)
  {
    if (!(__n >> 62))
    {
      v2 = this->__end_ - this->__begin_;
      std::__allocate_at_least[abi:ne200100]<std::allocator<ME_Model::ME_Feature>>(this, __n);
    }

    std::vector<double>::__throw_length_error[abi:ne200100]();
  }
}

uint64_t applesauce::CF::convert_to<int,0>(const __CFNumber *a1)
{
  result = applesauce::CF::convert_as<int,0>(a1);
  if ((result & 0x100000000) == 0)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    applesauce::CF::convert_error(exception);
  }

  return result;
}

uint64_t applesauce::CF::convert_as<int,0>(const __CFNumber *a1)
{
  if (a1 && (TypeID = CFNumberGetTypeID(), TypeID == CFGetTypeID(a1)))
  {
    v3 = applesauce::CF::details::number_convert_as<int>(a1);
  }

  else
  {
    v3 = applesauce::CF::details::treat_as_BOOL_for_convert_as<int>(a1);
  }

  return v3 & 0xFFFFFFFFFFLL;
}

uint64_t applesauce::CF::details::treat_as_BOOL_for_convert_as<int>(const __CFBoolean *a1)
{
  if (a1 && (TypeID = CFBooleanGetTypeID(), TypeID == CFGetTypeID(a1)))
  {
    Value = CFBooleanGetValue(a1);
    v4 = 0x100000000;
  }

  else
  {
    Value = 0;
    v4 = 0;
  }

  return v4 | Value;
}

uint64_t applesauce::CF::details::number_convert_as<int>(const __CFNumber *a1)
{
  switch(CFNumberGetType(a1))
  {
    case kCFNumberSInt8Type:
      LOBYTE(valuePtr) = 0;
      v2 = a1;
      v3 = kCFNumberSInt8Type;
      goto LABEL_21;
    case kCFNumberSInt16Type:
      LOWORD(valuePtr) = 0;
      v12 = a1;
      v13 = kCFNumberSInt16Type;
      goto LABEL_14;
    case kCFNumberSInt32Type:
      LODWORD(valuePtr) = 0;
      v4 = a1;
      v5 = kCFNumberSInt32Type;
      goto LABEL_29;
    case kCFNumberSInt64Type:
      valuePtr = 0.0;
      v4 = a1;
      v5 = kCFNumberSInt64Type;
      goto LABEL_29;
    case kCFNumberFloat32Type:
      LODWORD(valuePtr) = 0;
      v6 = a1;
      v7 = kCFNumberFloat32Type;
      goto LABEL_6;
    case kCFNumberFloat64Type:
      valuePtr = 0.0;
      v10 = a1;
      v11 = kCFNumberFloat64Type;
      goto LABEL_18;
    case kCFNumberCharType:
      LOBYTE(valuePtr) = 0;
      v2 = a1;
      v3 = kCFNumberCharType;
LABEL_21:
      Value = CFNumberGetValue(v2, v3, &valuePtr);
      LOBYTE(v14) = LOBYTE(valuePtr);
      if (!Value)
      {
        LOBYTE(v14) = 0;
      }

      v16 = SLOBYTE(valuePtr) < 0 && Value != 0;
      v17.i64[0] = Value != 0;
      v17.i64[1] = v16 << 63 >> 63;
      break;
    case kCFNumberShortType:
      LOWORD(valuePtr) = 0;
      v12 = a1;
      v13 = kCFNumberShortType;
LABEL_14:
      if (CFNumberGetValue(v12, v13, &valuePtr))
      {
        v14 = SLOWORD(valuePtr) & 0xFFFFFFFFLL | 0x100000000;
      }

      else
      {
        v14 = 0;
      }

      goto LABEL_32;
    case kCFNumberIntType:
      LODWORD(valuePtr) = 0;
      v4 = a1;
      v5 = kCFNumberIntType;
      goto LABEL_29;
    case kCFNumberLongType:
      valuePtr = 0.0;
      v4 = a1;
      v5 = kCFNumberLongType;
      goto LABEL_29;
    case kCFNumberLongLongType:
      valuePtr = 0.0;
      v4 = a1;
      v5 = kCFNumberLongLongType;
      goto LABEL_29;
    case kCFNumberFloatType:
      LODWORD(valuePtr) = 0;
      v6 = a1;
      v7 = kCFNumberFloatType;
LABEL_6:
      v8 = CFNumberGetValue(v6, v7, &valuePtr);
      v9 = *&valuePtr;
      goto LABEL_30;
    case kCFNumberDoubleType:
      valuePtr = 0.0;
      v10 = a1;
      v11 = kCFNumberDoubleType;
      goto LABEL_18;
    case kCFNumberCFIndexType:
      valuePtr = 0.0;
      v4 = a1;
      v5 = kCFNumberCFIndexType;
      goto LABEL_29;
    case kCFNumberNSIntegerType:
      valuePtr = 0.0;
      v4 = a1;
      v5 = kCFNumberNSIntegerType;
LABEL_29:
      v8 = CFNumberGetValue(v4, v5, &valuePtr);
      v9 = LODWORD(valuePtr);
      goto LABEL_30;
    case kCFNumberCGFloatType:
      valuePtr = 0.0;
      v10 = a1;
      v11 = kCFNumberCGFloatType;
LABEL_18:
      v8 = CFNumberGetValue(v10, v11, &valuePtr);
      v9 = valuePtr;
LABEL_30:
      v14 = v9 | 0x100000000;
      if (!v8)
      {
        v14 = 0;
      }

LABEL_32:
      v17 = vshlq_u64(vdupq_n_s64(v14), xmmword_19D4E9140);
      break;
    default:
      LOBYTE(v14) = 0;
      v17 = 0uLL;
      break;
  }

  v18 = vandq_s8(vshlq_u64(v17, xmmword_19D4E9150), xmmword_19D4E9160);
  return v18.i64[0] | v14 | v18.i64[1];
}

void predictedMRLModelLabelForString(uint64_t a1, uint64_t a2, void *a3, void *a4, void *a5)
{
  v7 = a3;
  v8 = a4;
  v9 = a5;
  MRLModelGetOutputSize();
  operator new[]();
}

void fillOutputProbabilities(const void *a1, BOOL a2, NSDictionary *a3, NSString *a4, float *a5)
{
  a3;
  v7 = a4;
  MRLModelGetOutputSize();
  inputSequenceFromSentence(v7, 0);
  [objc_claimAutoreleasedReturnValue() count];
  operator new[]();
}

void predictedMRLModelLabelHypothesesForString(uint64_t a1, uint64_t a2, void *a3, void *a4, void *a5)
{
  v7 = a3;
  v8 = a4;
  v9 = a5;
  [MEMORY[0x1E695DF90] dictionary];
  objc_claimAutoreleasedReturnValue();
  MRLModelGetOutputSize();
  operator new[]();
}

uint64_t createMRLModelFromURL(void *a1)
{
  v1 = a1;
  Mutable = CFDictionaryCreateMutable(*MEMORY[0x1E695E480], 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
  CFDictionaryAddValue(Mutable, *MEMORY[0x1E69B27F0], [v1 path]);
  v3 = MRLModelCreate();
  CFRelease(Mutable);

  return v3;
}

uint64_t createMRLModelFromData(void *a1)
{
  v1 = a1;
  Mutable = CFDictionaryCreateMutable(*MEMORY[0x1E695E480], 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
  CFDictionaryAddValue(Mutable, *MEMORY[0x1E69B27E0], v1);
  v3 = MRLModelCompile();
  MRLModelSetMaxSequenceLength();
  CFRelease(Mutable);

  return v3;
}

id dataFromMRLModel()
{
  v0 = MRLModelCopyQuantizedSerializedData();

  return v0;
}

void sub_19D4AE3DC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va1, a11);
  va_start(va, a11);
  v13 = va_arg(va1, void);
  v15 = va_arg(va1, void);
  v16 = va_arg(va1, void);
  v17 = va_arg(va1, void);
  v18 = va_arg(va1, void);
  v19 = va_arg(va1, void);
  _Block_object_dispose(va, 8);
  _Block_object_dispose(va1, 8);
  _Block_object_dispose((v11 - 96), 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__1(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

id _NSPathForSystemFramework(void *a1)
{
  v1 = a1;
  v2 = [MEMORY[0x1E696AC08] defaultManager];
  v3 = NSSearchPathForDirectoriesInDomains(NSLibraryDirectory, 8uLL, 1);
  v4 = [v3 count];
  if (v4)
  {
    v5 = 0;
    while (1)
    {
      v6 = [v3 objectAtIndex:v5];
      v7 = [v6 stringByAppendingPathComponent:@"Frameworks"];
      v8 = [v7 stringByAppendingPathComponent:v1];

      if ([v2 fileExistsAtPath:v8])
      {
        break;
      }

      v9 = [v6 stringByAppendingPathComponent:@"PrivateFrameworks"];
      v10 = [v9 stringByAppendingPathComponent:v1];

      if ([v2 fileExistsAtPath:v10])
      {
        v8 = v10;
        break;
      }

      if (v4 == ++v5)
      {
        v4 = 0;
        goto LABEL_9;
      }
    }

    v4 = v8;
  }

LABEL_9:

  return v4;
}

void sub_19D4AFE68(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, char a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, char a49)
{
  _Block_object_dispose(&a43, 8);
  _Block_object_dispose(&a49, 8);
  _Unwind_Resume(a1);
}

void __tagForNLTag_block_invoke()
{
  v4[40] = *MEMORY[0x1E69E9840];
  v3[0] = @"Word";
  v3[1] = @"Punctuation";
  v4[0] = @"Word";
  v4[1] = @"Punctuation";
  v3[2] = @"Whitespace";
  v3[3] = @"Other";
  v4[2] = @"Whitespace";
  v4[3] = @"Other";
  v3[4] = @"Noun";
  v3[5] = @"Verb";
  v4[4] = @"Noun";
  v4[5] = @"Verb";
  v3[6] = @"Adjective";
  v3[7] = @"Adverb";
  v4[6] = @"Adjective";
  v4[7] = @"Adverb";
  v3[8] = @"Pronoun";
  v3[9] = @"Determiner";
  v4[8] = @"Pronoun";
  v4[9] = @"Determiner";
  v3[10] = @"Particle";
  v3[11] = @"Preposition";
  v4[10] = @"Particle";
  v4[11] = @"Preposition";
  v3[12] = @"Number";
  v3[13] = @"Conjunction";
  v4[12] = @"Number";
  v4[13] = @"Conjunction";
  v3[14] = @"Interjection";
  v3[15] = @"Classifier";
  v4[14] = @"Interjection";
  v4[15] = @"Classifier";
  v3[16] = @"Idiom";
  v3[17] = @"OtherWord";
  v4[16] = @"Idiom";
  v4[17] = @"OtherWord";
  v3[18] = @"SentenceTerminator";
  v3[19] = @"OpenQuote";
  v4[18] = @"SentenceTerminator";
  v4[19] = @"OpenQuote";
  v3[20] = @"CloseQuote";
  v3[21] = @"OpenParenthesis";
  v4[20] = @"CloseQuote";
  v4[21] = @"OpenParenthesis";
  v3[22] = @"CloseParenthesis";
  v3[23] = @"WordJoiner";
  v4[22] = @"CloseParenthesis";
  v4[23] = @"WordJoiner";
  v3[24] = @"Dash";
  v3[25] = @"Punctuation";
  v4[24] = @"Dash";
  v4[25] = @"Punctuation";
  v3[26] = @"ParagraphBreak";
  v3[27] = @"Whitespace";
  v4[26] = @"ParagraphBreak";
  v4[27] = @"Whitespace";
  v3[28] = @"PersonalName";
  v3[29] = @"PlaceName";
  v4[28] = @"PersonalName";
  v4[29] = @"PlaceName";
  v3[30] = @"OrganizationName";
  v3[31] = 0x1F10C78E0;
  v4[30] = @"OrganizationName";
  v4[31] = @"1.0";
  v3[32] = 0x1F10C7900;
  v3[33] = @"Anger";
  v4[32] = @"-1.0";
  v4[33] = @"Anger";
  v3[34] = @"Fear";
  v3[35] = @"Happiness";
  v4[34] = @"Fear";
  v4[35] = @"Happiness";
  v3[36] = @"Love";
  v3[37] = @"Sadness";
  v4[36] = @"Love";
  v4[37] = @"Sadness";
  v3[38] = @"Surprise";
  v3[39] = @"OtherEmotion";
  v4[38] = @"Surprise";
  v4[39] = @"OtherEmotion";
  v0 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v4 forKeys:v3 count:40];
  v1 = tagForNLTag_tagDictionary;
  tagForNLTag_tagDictionary = v0;

  v2 = *MEMORY[0x1E69E9840];
}

void ___loadTextInput_block_invoke()
{
  v0 = _NSPathForSystemFramework(@"TextInput.framework");
  v3 = [v0 stringByAppendingPathComponent:@"TextInput"];

  if (v3)
  {
    v1 = dlopen([v3 fileSystemRepresentation], 256);
    if (v1)
    {
      _TILinguisticAssetDownloadClient = NSClassFromString(&cfstr_Tilinguisticas.isa);
      if (_TILinguisticAssetDownloadClient)
      {
        goto LABEL_10;
      }
    }

    else if (_TILinguisticAssetDownloadClient)
    {
      goto LABEL_10;
    }

    v2 = dlerror();
  }

  else
  {
    if (_TILinguisticAssetDownloadClient)
    {
      goto LABEL_10;
    }

    v1 = 0;
    v2 = "nil libraryPath";
  }

  NSLog(&cfstr_FailedToLoadTe.isa, v1, 0, v2);
LABEL_10:
}

void createMaxEntModelFromTrainingDataSet(void *a1, void *a2)
{
  v5 = *MEMORY[0x1E69E9840];
  v3 = a1;
  a2;
  [v3 labelMap];
  objc_claimAutoreleasedReturnValue();
  [v3 inverseLabelMap];
  objc_claimAutoreleasedReturnValue();
  [v3 vocabularyMap];
  objc_claimAutoreleasedReturnValue();
  [v3 documentFrequencyMap];
  objc_claimAutoreleasedReturnValue();
  v4 = [v3 dataProviderOfType:0];
  [v3 dataProviderOfType:1];
  objc_claimAutoreleasedReturnValue();
  v4;
  operator new();
}

void createSample(NSArray *a1@<X0>, NSDictionary *a2@<X1>, NSDictionary *a3@<X2>, NSDictionary *a4@<X3>, uint64_t a5@<X8>)
{
  v62 = *MEMORY[0x1E69E9840];
  v42 = a1;
  v45 = a2;
  v44 = a3;
  *a5 = 0;
  *(a5 + 23) = 0u;
  *(a5 + 39) = 0u;
  *(a5 + 55) = 0u;
  *(a5 + 71) = 0;
  v9 = [MEMORY[0x1E695DF90] dictionary];
  v41 = a4;
  v10 = [MEMORY[0x1E695DF90] dictionary];
  v57 = 0u;
  v58 = 0u;
  v55 = 0u;
  v56 = 0u;
  obj = v42;
  v11 = [(NSArray *)obj countByEnumeratingWithState:&v55 objects:v61 count:16];
  if (v11)
  {
    v12 = *v56;
    do
    {
      for (i = 0; i != v11; ++i)
      {
        if (*v56 != v12)
        {
          objc_enumerationMutation(obj);
        }

        v14 = tokenIDFromTokenAndVocabularyMap(*(*(&v55 + 1) + 8 * i), v45);
        if (v14 != 3)
        {
          v15 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:v14];
          v16 = [v9 objectForKey:v15];
          v17 = [v16 unsignedIntegerValue];

          v18 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:v17 + 1];
          [v9 setObject:v18 forKey:v15];
        }
      }

      v11 = [(NSArray *)obj countByEnumeratingWithState:&v55 objects:v61 count:16];
    }

    while (v11);
  }

  v53 = 0u;
  v54 = 0u;
  v51 = 0u;
  v52 = 0u;
  v19 = [v9 allKeys];
  v20 = [v19 countByEnumeratingWithState:&v51 objects:v60 count:16];
  if (v20)
  {
    v21 = *v52;
    do
    {
      for (j = 0; j != v20; ++j)
      {
        if (*v52 != v21)
        {
          objc_enumerationMutation(v19);
        }

        v23 = *(*(&v51 + 1) + 8 * j);
        v24 = [v9 objectForKey:v23];
        v25 = [(NSDictionary *)v44 objectForKey:v23];
        [v24 doubleValue];
        v27 = v26;
        if (v25)
        {
          [v25 doubleValue];
        }

        else
        {
          v28 = 1.0;
        }

        if (v27 >= 1.0)
        {
          v29 = v27;
        }

        else
        {
          v29 = 1.0;
        }

        if (v28 >= 1.0)
        {
          v30 = v28;
        }

        else
        {
          v30 = 1.0;
        }

        v31 = log(v29 + 1.0);
        v32 = log(v41 / v30);
        std::to_string(&v50, [v23 unsignedIntegerValue]);
        ME_Sample::add_feature(a5, &v50, v31 * v32);
        if (SHIBYTE(v50.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v50.__r_.__value_.__l.__data_);
        }
      }

      v20 = [v19 countByEnumeratingWithState:&v51 objects:v60 count:16];
    }

    while (v20);
  }

  v48 = 0u;
  v49 = 0u;
  v46 = 0u;
  v47 = 0u;
  v33 = [v10 allKeys];
  v34 = [v33 countByEnumeratingWithState:&v46 objects:v59 count:16];
  if (v34)
  {
    v35 = *v47;
    do
    {
      for (k = 0; k != v34; ++k)
      {
        if (*v47 != v35)
        {
          objc_enumerationMutation(v33);
        }

        v37 = *(*(&v46 + 1) + 8 * k);
        v38 = [v10 objectForKey:v37];
        std::to_string(&v50, [v37 unsignedIntegerValue] + 98304);
        [v38 doubleValue];
        ME_Sample::add_feature(a5, &v50, v39);
        if (SHIBYTE(v50.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v50.__r_.__value_.__l.__data_);
        }
      }

      v34 = [v33 countByEnumeratingWithState:&v46 objects:v59 count:16];
    }

    while (v34);
  }

  v40 = *MEMORY[0x1E69E9840];
}

void sub_19D4B2030(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *a11, uint64_t a12, void *a13, void *a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, void *__p, uint64_t a25, int a26, __int16 a27, char a28, char a29)
{
  ME_Sample::~ME_Sample(v29);

  _Unwind_Resume(a1);
}

void __createMaxEntModelFromTrainingDataSet_block_invoke(uint64_t a1, uint64_t a2, int a3, float a4)
{
  v23 = *MEMORY[0x1E69E9840];
  v7 = *(a1 + 32);
  v8 = [MEMORY[0x1E696AEC0] stringWithUTF8String:a2];
  [v7 logMessage:v8];

  v9 = objc_autoreleasePoolPush();
  v10 = NLGetLogCategory(0);
  v11 = [v10 internal];

  if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
  {
    v12 = *(a1 + 40) - a3 + 1;
    v17 = 134218496;
    v18 = 2;
    v19 = 2048;
    v20 = 0;
    v21 = 2048;
    v22 = *&v12;
    _os_log_impl(&dword_19D48F000, v11, OS_LOG_TYPE_INFO, "event: %lu, column: %lu, value: %ld", &v17, 0x20u);
  }

  objc_autoreleasePoolPop(v9);
  v13 = objc_autoreleasePoolPush();
  v14 = NLGetLogCategory(0);
  v15 = [v14 internal];

  if (os_log_type_enabled(v15, OS_LOG_TYPE_INFO))
  {
    v17 = 134218496;
    v18 = 2;
    v19 = 2048;
    v20 = 1;
    v21 = 2048;
    v22 = a4;
    _os_log_impl(&dword_19D48F000, v15, OS_LOG_TYPE_INFO, "event: %lu, column: %lu, value: %f", &v17, 0x20u);
  }

  objc_autoreleasePoolPop(v13);
  v16 = *MEMORY[0x1E69E9840];
}

id predictedMaxEntModelLabelForString(ME_Model *a1, void *a2, void *a3, void *a4, NSDictionary *a5, void *a6)
{
  v11 = a2;
  v12 = a3;
  v13 = a4;
  v14 = inputSequenceFromSentence(a6, 0);
  createSample(v14, v12, v13, a5, v20);
  ME_Model::classify(a1, v20, __p);
  if (__p[0])
  {
    __p[1] = __p[0];
    operator delete(__p[0]);
  }

  if (v21 >= 0)
  {
    v15 = v20;
  }

  else
  {
    v15 = v20[0];
  }

  v16 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:{strtoul(v15, 0, 10)}];
  v17 = [v11 objectForKey:v16];

  v24 = &v23;
  std::vector<std::pair<std::string,double>>::__destroy_vector::operator()[abi:ne200100](&v24);
  v24 = &v22;
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&v24);
  if (v21 < 0)
  {
    operator delete(v20[0]);
  }

  return v17;
}

void sub_19D4B24A4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);

  ME_Sample::~ME_Sample(va);
  _Unwind_Resume(a1);
}

id predictedMaxEntModelLabelHypothesesForString(ME_Model *a1, void *a2, void *a3, void *a4, NSDictionary *a5, void *a6)
{
  v11 = a2;
  v12 = a3;
  v24 = a4;
  v13 = inputSequenceFromSentence(a6, 0);
  createSample(v13, v12, v24, a5, v28);
  v14 = [MEMORY[0x1E695DF90] dictionary];
  ME_Model::classify(a1, v28, &__p);
  if (((v27 - __p) >> 3) >= 1)
  {
    v15 = 0;
    v16 = 0;
    do
    {
      v17 = (*(a1 + 15) + v15);
      if (*(v17 + 23) < 0)
      {
        std::string::__init_copy_ctor_external(&v25, *v17, *(v17 + 1));
      }

      else
      {
        v18 = *v17;
        v25.__r_.__value_.__r.__words[2] = *(v17 + 2);
        *&v25.__r_.__value_.__l.__data_ = v18;
      }

      if ((v25.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v19 = &v25;
      }

      else
      {
        v19 = v25.__r_.__value_.__r.__words[0];
      }

      v20 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:{strtoul(v19, 0, 10)}];
      v21 = [v11 objectForKey:v20];

      if (v21)
      {
        v22 = [MEMORY[0x1E696AD98] numberWithDouble:*(__p + v16)];
        [v14 setObject:v22 forKey:v21];
      }

      if (SHIBYTE(v25.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v25.__r_.__value_.__l.__data_);
      }

      ++v16;
      v15 += 24;
    }

    while (v16 < ((v27 - __p) >> 3));
  }

  if (__p)
  {
    v27 = __p;
    operator delete(__p);
  }

  __p = &v31;
  std::vector<std::pair<std::string,double>>::__destroy_vector::operator()[abi:ne200100](&__p);
  __p = &v30;
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&__p);
  if (v29 < 0)
  {
    operator delete(v28[0]);
  }

  return v14;
}

void sub_19D4B2710(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, void *a10, void *a11, uint64_t a12, int a13, __int16 a14, char a15, char a16, uint64_t a17, void *__p, uint64_t a19, uint64_t a20, void *a21)
{
  ME_Sample::~ME_Sample(&a21);

  _Unwind_Resume(a1);
}

void createMaxEntModelFromData(void *a1)
{
  v1 = a1;
  [v1 bytes];
  [v1 length];
  operator new();
}

id dataFromMaxEntModel(void *a1)
{
  v15 = &v15;
  v16 = &v15;
  v17 = 0;
  ME_Model::get_features(a1, &v15);
  v1 = [MEMORY[0x1E695DF88] dataWithLength:8 * v17];
  v2 = [v1 mutableBytes];
  v3 = v16;
  if (v16 != &v15)
  {
    v4 = (v2 + 4);
    do
    {
      if (*(v3 + 39) < 0)
      {
        std::string::__init_copy_ctor_external(&v14, v3[2], v3[3]);
      }

      else
      {
        v14 = *(v3 + 2);
      }

      if (*(v3 + 63) < 0)
      {
        std::string::__init_copy_ctor_external(&__p, v3[5], v3[6]);
      }

      else
      {
        __p = *(v3 + 5);
      }

      v5 = *(v3 + 8);
      if ((v14.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v6 = &v14;
      }

      else
      {
        v6 = v14.__r_.__value_.__r.__words[0];
      }

      v7 = strtoul(v6, 0, 10);
      if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        p_p = &__p;
      }

      else
      {
        p_p = __p.__r_.__value_.__r.__words[0];
      }

      v9 = strtoul(p_p, 0, 10);
      if ((v7 - 1) <= 0xFE && (v9 - 1) <= 0xFFFFFE)
      {
        *&v11 = v5;
        *(v4 - 1) = v9 | (v7 << 24);
        *v4 = bswap32(v11);
      }

      if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(__p.__r_.__value_.__l.__data_);
      }

      if (SHIBYTE(v14.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v14.__r_.__value_.__l.__data_);
      }

      v3 = v3[1];
      v4 += 2;
    }

    while (v3 != &v15);
  }

  std::__list_imp<std::pair<std::pair<std::string,std::string>,double>>::clear(&v15);

  return v1;
}

void sub_19D4B2B80(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14, int a15, __int16 a16, char a17, char a18, uint64_t a19)
{
  std::__list_imp<std::pair<std::pair<std::string,std::string>,double>>::clear(&a19);

  _Unwind_Resume(a1);
}

ME_Model *releaseMaxEntModel(ME_Model *result)
{
  if (result)
  {
    ME_Model::~ME_Model(result);

    JUMPOUT(0x19EAFC130);
  }

  return result;
}

uint64_t std::__hash_table<std::__hash_value_type<std::string,int>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,int>,ME_Model::hashfun_str,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,int>,std::equal_to<std::string>,ME_Model::hashfun_str,true>,std::allocator<std::__hash_value_type<std::string,int>>>::~__hash_table(uint64_t a1)
{
  std::__hash_table<std::__hash_value_type<std::string,int>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,int>,ME_Model::hashfun_str,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,int>,std::equal_to<std::string>,ME_Model::hashfun_str,true>,std::allocator<std::__hash_value_type<std::string,int>>>::__deallocate_node(a1, *(a1 + 16));
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    operator delete(v2);
  }

  return a1;
}

void std::vector<ME_Model::Sample>::__destroy_vector::operator()[abi:ne200100](void ***a1)
{
  v2 = *a1;
  if (*v2)
  {
    std::vector<ME_Model::Sample>::clear[abi:ne200100](v2);
    v3 = **a1;

    operator delete(v3);
  }
}

void std::vector<ME_Model::Sample>::clear[abi:ne200100](uint64_t *a1)
{
  v2 = *a1;
  for (i = a1[1]; i != v2; i -= 80)
  {
    v4 = *(i - 24);
    if (v4)
    {
      *(i - 16) = v4;
      operator delete(v4);
    }

    v5 = *(i - 48);
    if (v5)
    {
      *(i - 40) = v5;
      operator delete(v5);
    }

    v6 = *(i - 72);
    if (v6)
    {
      *(i - 64) = v6;
      operator delete(v6);
    }
  }

  a1[1] = v2;
}

void ME_Sample::add_feature(void *a1, uint64_t a2, double a3)
{
  if (*(a2 + 23) < 0)
  {
    std::string::__init_copy_ctor_external(&__p, *a2, *(a2 + 8));
  }

  else
  {
    __p = *a2;
  }

  v23 = a3;
  v5 = a1[7];
  v6 = a1[8];
  if (v5 >= v6)
  {
    v8 = a1[6];
    v9 = (v5 - v8) >> 5;
    v10 = v9 + 1;
    if ((v9 + 1) >> 59)
    {
      std::vector<double>::__throw_length_error[abi:ne200100]();
    }

    v11 = v6 - v8;
    if (v11 >> 4 > v10)
    {
      v10 = v11 >> 4;
    }

    if (v11 >= 0x7FFFFFFFFFFFFFE0)
    {
      v12 = 0x7FFFFFFFFFFFFFFLL;
    }

    else
    {
      v12 = v10;
    }

    v24[4] = a1 + 6;
    if (v12)
    {
      std::__allocate_at_least[abi:ne200100]<std::allocator<std::pair<std::string,double>>>((a1 + 6), v12);
    }

    v13 = 32 * v9;
    v14 = *&__p.__r_.__value_.__l.__data_;
    *(v13 + 16) = *(&__p.__r_.__value_.__l + 2);
    *v13 = v14;
    memset(&__p, 0, sizeof(__p));
    *(v13 + 24) = v23;
    v15 = 32 * v9 + 32;
    v16 = a1[6];
    v17 = a1[7] - v16;
    v18 = 32 * v9 - v17;
    memcpy((v13 - v17), v16, v17);
    v19 = a1[6];
    a1[6] = v18;
    a1[7] = v15;
    v20 = a1[8];
    a1[8] = 0;
    v24[2] = v19;
    v24[3] = v20;
    v24[0] = v19;
    v24[1] = v19;
    std::__split_buffer<std::pair<std::string,double>>::~__split_buffer(v24);
    v21 = SHIBYTE(__p.__r_.__value_.__r.__words[2]);
    a1[7] = v15;
    if (v21 < 0)
    {
      operator delete(__p.__r_.__value_.__l.__data_);
    }
  }

  else
  {
    v7 = *&__p.__r_.__value_.__l.__data_;
    *(v5 + 16) = *(&__p.__r_.__value_.__l + 2);
    *v5 = v7;
    *(v5 + 24) = v23;
    a1[7] = v5 + 32;
  }
}

void sub_19D4B2E5C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t std::__split_buffer<std::pair<std::string,double>>::~__split_buffer(uint64_t a1)
{
  std::__split_buffer<std::pair<std::string,double>>::__destruct_at_end[abi:ne200100](a1, *(a1 + 8));
  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

void std::__split_buffer<std::pair<std::string,double>>::__destruct_at_end[abi:ne200100](uint64_t a1, void **a2)
{
  v2 = *(a1 + 16);
  if (v2 != a2)
  {
    do
    {
      v5 = v2 - 4;
      *(a1 + 16) = v2 - 4;
      if (*(v2 - 9) < 0)
      {
        operator delete(*v5);
        v5 = *(a1 + 16);
      }

      v2 = v5;
    }

    while (v5 != a2);
  }
}

void ME_Model::~ME_Model(ME_Model *this)
{
  v2 = *(this + 51);
  if (v2)
  {
    *(this + 52) = v2;
    operator delete(v2);
  }

  v7 = (this + 360);
  std::vector<ME_Model::Sample>::__destroy_vector::operator()[abi:ne200100](&v7);
  v7 = (this + 336);
  std::vector<std::vector<int>>::__destroy_vector::operator()[abi:ne200100](&v7);
  v3 = *(this + 39);
  if (v3)
  {
    *(this + 40) = v3;
    operator delete(v3);
  }

  v4 = *(this + 36);
  if (v4)
  {
    *(this + 37) = v4;
    operator delete(v4);
  }

  v5 = *(this + 32);
  if (v5)
  {
    *(this + 33) = v5;
    operator delete(v5);
  }

  std::__hash_table<std::__hash_value_type<unsigned int,int>,std::__unordered_map_hasher<unsigned int,std::__hash_value_type<unsigned int,int>,std::hash<unsigned int>,std::equal_to<unsigned int>,true>,std::__unordered_map_equal<unsigned int,std::__hash_value_type<unsigned int,int>,std::equal_to<unsigned int>,std::hash<unsigned int>,true>,std::allocator<std::__hash_value_type<unsigned int,int>>>::~__hash_table(this + 216);
  v6 = *(this + 24);
  if (v6)
  {
    *(this + 25) = v6;
    operator delete(v6);
  }

  std::__hash_table<std::__hash_value_type<std::string,int>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,int>,ME_Model::hashfun_str,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,int>,std::equal_to<std::string>,ME_Model::hashfun_str,true>,std::allocator<std::__hash_value_type<std::string,int>>>::~__hash_table(this + 152);
  v7 = (this + 120);
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&v7);
  std::__hash_table<std::__hash_value_type<std::string,int>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,int>,ME_Model::hashfun_str,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,int>,std::equal_to<std::string>,ME_Model::hashfun_str,true>,std::allocator<std::__hash_value_type<std::string,int>>>::~__hash_table(this + 80);
  v7 = (this + 48);
  std::vector<ME_Model::Sample>::__destroy_vector::operator()[abi:ne200100](&v7);
}

void std::vector<std::vector<int>>::__destroy_vector::operator()[abi:ne200100](void ***a1)
{
  v2 = *a1;
  if (*v2)
  {
    std::vector<std::vector<int>>::clear[abi:ne200100](v2);
    v3 = **a1;

    operator delete(v3);
  }
}

id createCRFSuiteMaxEntModelDataFromTrainingDataSet(void *a1)
{
  v18 = a1;
  v1 = [v18 labelMap];
  v17 = [v18 inverseLabelMap];
  v21 = [v18 vocabularyMap];
  v20 = [v18 documentFrequencyMap];
  v16 = [v18 dataProviderOfType:0];
  v19 = [v18 dataProviderOfType:1];
  v2 = v16;
  maxent_model_create();
  v3 = [v2 numberOfInstances];
  [v19 numberOfInstances];
  if (v3)
  {
    for (i = 0; i != v3; i = (i + 1))
    {
      v5 = [v2 instanceAtIndex:i];
      v6 = v5;
      if (v5)
      {
        v7 = [v5 label];
        v8 = [v1 objectForKey:v7];

        if (v8)
        {
          v9 = [v6 tokens];
          createSample(v9, v21, v20, v3);

          std::to_string(&v22, [v8 unsignedIntegerValue]);
          maxent_sample_set_label();
          if (SHIBYTE(v22.__r_.__value_.__r.__words[2]) < 0)
          {
            operator delete(v22.__r_.__value_.__l.__data_);
          }

          maxent_add_training_sample();
          maxent_sample_release();
        }
      }
    }
  }

  maxent_use_l2_regularizer();
  maxent_train();
  v10 = NSTemporaryDirectory();
  v11 = [MEMORY[0x1E696AEC0] stringWithFormat:@"maxentmodel_%d.dat", getpid()];
  v12 = [v10 stringByAppendingPathComponent:v11];

  [v12 fileSystemRepresentation];
  if (maxent_save_to_file())
  {
    v13 = [MEMORY[0x1E695DEF0] dataWithContentsOfFile:v12];
    v14 = [MEMORY[0x1E696AC08] defaultManager];
    [v14 removeItemAtPath:v12 error:0];
  }

  else
  {
    v13 = 0;
  }

  return v13;
}

uint64_t createSample(NSArray *a1, NSDictionary *a2, NSDictionary *a3, NSDictionary *a4)
{
  v59 = *MEMORY[0x1E69E9840];
  v38 = a1;
  v42 = a2;
  v41 = a3;
  v7 = maxent_sample_create();
  v8 = [MEMORY[0x1E695DF90] dictionary];
  v40 = [MEMORY[0x1E695DF90] dictionary];
  v54 = 0u;
  v55 = 0u;
  v52 = 0u;
  v53 = 0u;
  obj = v38;
  v9 = [(NSArray *)obj countByEnumeratingWithState:&v52 objects:v58 count:16];
  if (v9)
  {
    v10 = *v53;
    do
    {
      for (i = 0; i != v9; ++i)
      {
        if (*v53 != v10)
        {
          objc_enumerationMutation(obj);
        }

        v12 = tokenIDFromTokenAndVocabularyMap(*(*(&v52 + 1) + 8 * i), v42);
        if (v12 != 3)
        {
          v13 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:v12];
          v14 = [v8 objectForKey:v13];
          v15 = [v14 unsignedIntegerValue];

          v16 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:v15 + 1];
          [v8 setObject:v16 forKey:v13];
        }
      }

      v9 = [(NSArray *)obj countByEnumeratingWithState:&v52 objects:v58 count:16];
    }

    while (v9);
  }

  v50 = 0u;
  v51 = 0u;
  v48 = 0u;
  v49 = 0u;
  v17 = [v8 allKeys];
  v18 = [v17 countByEnumeratingWithState:&v48 objects:v57 count:16];
  if (v18)
  {
    v19 = *v49;
    v20 = a4;
    do
    {
      for (j = 0; j != v18; ++j)
      {
        if (*v49 != v19)
        {
          objc_enumerationMutation(v17);
        }

        v22 = *(*(&v48 + 1) + 8 * j);
        v23 = [v8 objectForKey:v22];
        v24 = [(NSDictionary *)v41 objectForKey:v22];
        [v23 doubleValue];
        v26 = v25;
        if (v24)
        {
          [v24 doubleValue];
        }

        else
        {
          v27 = 1.0;
        }

        if (v26 >= 1.0)
        {
          v28 = v26;
        }

        else
        {
          v28 = 1.0;
        }

        if (v27 >= 1.0)
        {
          v29 = v27;
        }

        else
        {
          v29 = 1.0;
        }

        log(v28 + 1.0);
        log(v20 / v29);
        std::to_string(&v47, [v22 unsignedIntegerValue]);
        maxent_sample_add_feature_with_value();
        if (SHIBYTE(v47.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v47.__r_.__value_.__l.__data_);
        }
      }

      v18 = [v17 countByEnumeratingWithState:&v48 objects:v57 count:16];
    }

    while (v18);
  }

  v45 = 0u;
  v46 = 0u;
  v43 = 0u;
  v44 = 0u;
  v30 = [v40 allKeys];
  v31 = [v30 countByEnumeratingWithState:&v43 objects:v56 count:16];
  if (v31)
  {
    v32 = *v44;
    do
    {
      for (k = 0; k != v31; ++k)
      {
        if (*v44 != v32)
        {
          objc_enumerationMutation(v30);
        }

        v34 = *(*(&v43 + 1) + 8 * k);
        v35 = [v40 objectForKey:v34];
        std::to_string(&v47, [v34 unsignedIntegerValue] + 98304);
        [v35 doubleValue];
        maxent_sample_add_feature_with_value();
        if (SHIBYTE(v47.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v47.__r_.__value_.__l.__data_);
        }
      }

      v31 = [v30 countByEnumeratingWithState:&v43 objects:v56 count:16];
    }

    while (v31);
  }

  v36 = *MEMORY[0x1E69E9840];
  return v7;
}

id predictedCRFSuiteMaxEntModelLabelForString(uint64_t a1, void *a2, void *a3, void *a4, NSDictionary *a5, void *a6)
{
  v10 = a2;
  v11 = a3;
  v12 = a4;
  v13 = inputSequenceFromSentence(a6, 0);
  createSample(v13, v11, v12, a5);
  maxent_classify();
  label = maxent_sample_get_label();
  v15 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:{strtoul(label, 0, 10)}];
  v16 = [v10 objectForKey:v15];

  maxent_sample_release();

  return v16;
}

id predictedCRFSuiteMaxEntModelLabelHypothesesForString(uint64_t a1, void *a2, void *a3, void *a4, NSDictionary *a5, void *a6)
{
  v10 = a2;
  v11 = a3;
  v12 = a4;
  v13 = inputSequenceFromSentence(a6, 0);
  createSample(v13, v11, v12, a5);
  v14 = [MEMORY[0x1E695DF90] dictionary];
  v19[0] = 0;
  v19[1] = v19;
  v19[2] = 0x2020000000;
  v20 = 0;
  v17 = v10;
  v18 = v14;
  maxent_classify();
  maxent_sample_release();
  v15 = v18;

  _Block_object_dispose(v19, 8);

  return v15;
}

void sub_19D4B3C44(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, void *a6, void *a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);

  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void __predictedCRFSuiteMaxEntModelLabelHypothesesForString_block_invoke(void *a1, double a2)
{
  v4 = a1[7];
  v5 = *(*(a1[6] + 8) + 24);
  class_label = maxent_get_class_label();
  v7 = strtoul(class_label, 0, 10);
  v8 = a1[4];
  v9 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:v7];
  v13 = [v8 objectForKey:v9];

  v10 = v13;
  if (v13)
  {
    v11 = a1[5];
    v12 = [MEMORY[0x1E696AD98] numberWithDouble:a2];
    [v11 setObject:v12 forKey:v13];

    v10 = v13;
  }

  ++*(*(a1[6] + 8) + 24);
}

uint64_t createCRFSuiteMaxEntModelFromData(void *a1)
{
  v1 = a1;
  [v1 bytes];
  [v1 length];
  v2 = maxent_load_with_bytes();

  return v2;
}

_DWORD *tokensForEntrySequence(void *a1)
{
  v1 = a1;
  v2 = [v1 count];
  if (v2)
  {
    v3 = v2;
    v4 = malloc_type_malloc(4 * v2, 0x100004052888210uLL);
    for (i = 0; i != v3; ++i)
    {
      v6 = [v1 objectAtIndex:i];
      v4[i] = [v6 tokenID];
    }
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

void sub_19D4B788C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

id entrySequenceForStringWithOptionalBOS(void *a1, void *a2, void *a3, int a4)
{
  v7 = a1;
  v8 = a2;
  v9 = MEMORY[0x1E695DF70];
  v10 = a3;
  v11 = [v9 array];
  if (a4)
  {
    v12 = [[NLLexiconEntry alloc] initWithString:&stru_1F10C6540 tokenID:1 flags:0 probability:-30.0];
    [v11 addObject:v12];
  }

  [v10 setString:v7];
  v13 = [v7 length];
  v20[0] = MEMORY[0x1E69E9820];
  v20[1] = 3221225472;
  v20[2] = __entrySequenceForStringWithOptionalBOS_block_invoke;
  v20[3] = &unk_1E76298F8;
  v21 = v7;
  v22 = v8;
  v14 = v11;
  v23 = v14;
  v15 = v8;
  v16 = v7;
  [v10 enumerateTokensInRange:0 usingBlock:{v13, v20}];

  v17 = v23;
  v18 = v14;

  return v14;
}

void __entrySequenceForStringWithOptionalBOS_block_invoke(id *a1, uint64_t a2, uint64_t a3)
{
  v8 = [a1[4] substringWithRange:{a2, a3}];
  v4 = [a1[5] entryForString:?];
  if (v4)
  {
    goto LABEL_2;
  }

  v6 = a1[5];
  v7 = [v8 lowercaseString];
  v5 = [v6 entryForString:v7];

  if (!v5)
  {
    v4 = [[NLLexiconEntry alloc] initWithString:v8 tokenID:0 flags:0 probability:-30.0];
LABEL_2:
    v5 = v4;
  }

  [a1[6] addObject:v5];
}

void *NLPClassifierModelCreateTrainedModelWithData(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, void *a6, void *a7, void *a8)
{
  v33[1] = *MEMORY[0x1E69E9840];
  v14 = a7;
  v31 = 0;
  v15 = a8;
  v16 = [NLModelConfiguration defaultModelConfigurationForType:0 options:a1 error:&v31];
  v17 = v31;
  v18 = [[NLPModelTrainingDelegate alloc] initWithLogHandler:v15];

  if (a2 >= 1 && v16)
  {
    v19 = [[NLModelTrainingDataSet alloc] initWithConfiguration:v16 numberOfTrainingInstances:a2 numberOfValidationInstances:a3 trainingDataSource:a4 validationDataSource:a5 instanceDataProvider:v14];
    v20 = [NLModelTrainer modelTrainerWithConfiguration:v16 dataSet:v19 options:a1 delegate:v18];
    v21 = [(NLDataSet *)v19 numberOfValidationInstances];
    if (!a3 && v21)
    {
      v22 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Holding out %llu samples for validation\n", v21];
      [v20 logMessage:v22];
    }

    v23 = [v20 trainedModel];
    if (!v23)
    {
      v24 = [v20 trainingError];

      v17 = v24;
    }
  }

  else
  {
    if (!v16)
    {
      v23 = 0;
      goto LABEL_11;
    }

    v25 = MEMORY[0x1E696ABC0];
    v32 = *MEMORY[0x1E696A578];
    v33[0] = @"Failed to train model, no training data supplied";
    v19 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v33 forKeys:&v32 count:1];
    [v25 errorWithDomain:@"NLNaturalLanguageErrorDomain" code:9 userInfo:v19];
    v23 = 0;
    v17 = v20 = v17;
  }

LABEL_11:
  if (!a6 || v23)
  {
    if (v23)
    {
      v27 = v23;
    }
  }

  else
  {
    if (v17)
    {
      v26 = v17;
    }

    *a6 = v17;
  }

  v28 = *MEMORY[0x1E69E9840];
  return v23;
}

uint64_t NLPClassifierModelIsRevisionSupported(uint64_t a1)
{
  if (a1 < 0)
  {
    return 0;
  }

  v2 = [NLModelConfiguration supportedRevisionsForType:0];
  v3 = [v2 containsIndex:a1];

  return v3;
}

uint64_t NLPClassifierModelGetRevision(void *a1)
{
  v1 = [a1 configuration];
  v2 = [v1 revision];

  return v2;
}

NLModel *NLPClassifierModelCreateWithData(uint64_t a1, void *a2)
{
  v9 = 0;
  v3 = [[NLModel alloc] initWithData:a1 error:&v9];
  v4 = v9;
  v5 = v4;
  if (!a2 || v3)
  {
    if (v3)
    {
      v7 = v3;
    }

    else
    {
      v7 = 0;
    }
  }

  else
  {
    if (v4)
    {
      v6 = v4;
    }

    v7 = 0;
    *a2 = v5;
  }

  return v7;
}

NLModel *NLPClassifierModelCreateWithURL(uint64_t a1, void *a2)
{
  v9 = 0;
  v3 = [[NLModel alloc] initWithContentsOfURL:a1 error:&v9];
  v4 = v9;
  v5 = v4;
  if (!a2 || v3)
  {
    if (v3)
    {
      v7 = v3;
    }

    else
    {
      v7 = 0;
    }
  }

  else
  {
    if (v4)
    {
      v6 = v4;
    }

    v7 = 0;
    *a2 = v5;
  }

  return v7;
}

uint64_t NLPClassifierModelWriteToURL(void *a1, uint64_t a2, void *a3)
{
  v9 = 0;
  v4 = [a1 writeToURL:a2 atomically:1 error:&v9];
  v5 = v9;
  v6 = v5;
  if (a3 && (v4 & 1) == 0)
  {
    if (v5)
    {
      v7 = v5;
    }

    *a3 = v6;
  }

  return v4;
}

uint64_t NLPClassifierModelWriteCoreMLModelToURLWithOptions(void *a1, uint64_t a2, uint64_t a3, void *a4)
{
  v10 = 0;
  v5 = [a1 writeMLModelToURL:a2 options:a3 error:&v10];
  v6 = v10;
  v7 = v6;
  if (a4 && (v5 & 1) == 0)
  {
    if (v6)
    {
      v8 = v6;
    }

    *a4 = v7;
  }

  return v5;
}

void *NLPClassifierModelCopyPredictedLabelForText(void *a1, uint64_t a2)
{
  v2 = [a1 predictedLabelForString:a2];
  v3 = v2;
  if (v2)
  {
    v4 = v2;
  }

  return v3;
}

void *NLPClassifierModelCopyTestResults(void *a1, uint64_t a2, uint64_t a3, void *a4)
{
  v7 = a1;
  v8 = a4;
  v9 = [NLPModelTrainingDataProvider alloc];
  v10 = [v7 configuration];
  v11 = [(NLPModelTrainingDataProvider *)v9 initWithConfiguration:v10 numberOfInstances:a2 dataSource:a3 instanceDataProvider:v8];

  v12 = [v7 testResultsWithDataProvider:v11];

  if (v12)
  {
    v13 = v12;
  }

  return v12;
}

void *NLPSequenceModelCreateTrainedModelWithData(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, void *a6, void *a7, void *a8)
{
  v33[1] = *MEMORY[0x1E69E9840];
  v14 = a7;
  v31 = 0;
  v15 = a8;
  v16 = [NLModelConfiguration defaultModelConfigurationForType:1 options:a1 error:&v31];
  v17 = v31;
  v18 = [[NLPModelTrainingDelegate alloc] initWithLogHandler:v15];

  if (a2 >= 1 && v16)
  {
    v19 = [[NLModelTrainingDataSet alloc] initWithConfiguration:v16 numberOfTrainingInstances:a2 numberOfValidationInstances:a3 trainingDataSource:a4 validationDataSource:a5 instanceDataProvider:v14];
    v20 = [NLModelTrainer modelTrainerWithConfiguration:v16 dataSet:v19 options:a1 delegate:v18];
    v21 = [(NLDataSet *)v19 numberOfValidationInstances];
    if (!a3 && v21)
    {
      v22 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Holding out %llu samples for validation\n", v21];
      [v20 logMessage:v22];
    }

    v23 = [v20 trainedModel];
    if (!v23)
    {
      v24 = [v20 trainingError];

      v17 = v24;
    }
  }

  else
  {
    if (!v16)
    {
      v23 = 0;
      goto LABEL_11;
    }

    v25 = MEMORY[0x1E696ABC0];
    v32 = *MEMORY[0x1E696A578];
    v33[0] = @"Failed to train model, no training data supplied";
    v19 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v33 forKeys:&v32 count:1];
    [v25 errorWithDomain:@"NLNaturalLanguageErrorDomain" code:9 userInfo:v19];
    v23 = 0;
    v17 = v20 = v17;
  }

LABEL_11:
  if (!a6 || v23)
  {
    if (v23)
    {
      v27 = v23;
    }
  }

  else
  {
    if (v17)
    {
      v26 = v17;
    }

    *a6 = v17;
  }

  v28 = *MEMORY[0x1E69E9840];
  return v23;
}

uint64_t NLPSequenceModelIsRevisionSupported(uint64_t a1)
{
  if (a1 < 0)
  {
    return 0;
  }

  v2 = [NLModelConfiguration supportedRevisionsForType:1];
  v3 = [v2 containsIndex:a1];

  return v3;
}

uint64_t NLPSequenceModelGetRevision(void *a1)
{
  v1 = [a1 configuration];
  v2 = [v1 revision];

  return v2;
}

NLModel *NLPSequenceModelCreateWithData(uint64_t a1, void *a2)
{
  v9 = 0;
  v3 = [[NLModel alloc] initWithData:a1 error:&v9];
  v4 = v9;
  v5 = v4;
  if (!a2 || v3)
  {
    if (v3)
    {
      v7 = v3;
    }

    else
    {
      v7 = 0;
    }
  }

  else
  {
    if (v4)
    {
      v6 = v4;
    }

    v7 = 0;
    *a2 = v5;
  }

  return v7;
}

NLModel *NLPSequenceModelCreateWithURL(uint64_t a1, void *a2)
{
  v9 = 0;
  v3 = [[NLModel alloc] initWithContentsOfURL:a1 error:&v9];
  v4 = v9;
  v5 = v4;
  if (!a2 || v3)
  {
    if (v3)
    {
      v7 = v3;
    }

    else
    {
      v7 = 0;
    }
  }

  else
  {
    if (v4)
    {
      v6 = v4;
    }

    v7 = 0;
    *a2 = v5;
  }

  return v7;
}

uint64_t NLPSequenceModelWriteToURL(void *a1, uint64_t a2, void *a3)
{
  v9 = 0;
  v4 = [a1 writeToURL:a2 atomically:1 error:&v9];
  v5 = v9;
  v6 = v5;
  if (a3 && (v4 & 1) == 0)
  {
    if (v5)
    {
      v7 = v5;
    }

    *a3 = v6;
  }

  return v4;
}

uint64_t NLPSequenceModelWriteCoreMLModelToURLWithOptions(void *a1, uint64_t a2, uint64_t a3, void *a4)
{
  v10 = 0;
  v5 = [a1 writeMLModelToURL:a2 options:a3 error:&v10];
  v6 = v10;
  v7 = v6;
  if (a4 && (v5 & 1) == 0)
  {
    if (v6)
    {
      v8 = v6;
    }

    *a4 = v7;
  }

  return v5;
}

__CFDictionary *NLPSequenceModelCopyPredictedTokensAndLabelsForText(void *a1, void *a2)
{
  v3 = MEMORY[0x1E695DF70];
  v4 = a1;
  v5 = [v3 array];
  v6 = [MEMORY[0x1E695DF70] array];
  v7 = [MEMORY[0x1E695DF70] array];
  Mutable = CFDictionaryCreateMutable(0, 0, MEMORY[0x1E695E528], MEMORY[0x1E695E9E8]);
  generateTokenSequence(a2, 0, v5, v6, v7);
  v9 = [v4 predictedLabelsForTokens:v5];

  CFDictionaryAddValue(Mutable, kNLPTokenArrayKey, v5);
  CFDictionaryAddValue(Mutable, kNLPLabelArrayKey, v9);
  CFDictionaryAddValue(Mutable, kNLPTokenRangeLocationArrayKey, v6);
  CFDictionaryAddValue(Mutable, kNLPTokenRangeLengthArrayKey, v7);

  return Mutable;
}

__CFDictionary *NLPSequenceModelCopyPredictedTokensAndLabelHypothesesForText(void *a1, void *a2, uint64_t a3)
{
  v5 = MEMORY[0x1E695DF70];
  v6 = a1;
  v7 = [v5 array];
  v8 = [MEMORY[0x1E695DF70] array];
  v9 = [MEMORY[0x1E695DF70] array];
  Mutable = CFDictionaryCreateMutable(0, 0, MEMORY[0x1E695E528], MEMORY[0x1E695E9E8]);
  generateTokenSequence(a2, 0, v7, v8, v9);
  v11 = [v6 predictedLabelHypothesesForTokens:v7 maximumCount:a3];

  CFDictionaryAddValue(Mutable, kNLPTokenArrayKey, v7);
  CFDictionaryAddValue(Mutable, kNLPLabelHypothesesArrayKey, v11);
  CFDictionaryAddValue(Mutable, kNLPTokenRangeLocationArrayKey, v8);
  CFDictionaryAddValue(Mutable, kNLPTokenRangeLengthArrayKey, v9);

  return Mutable;
}

void *NLPSequenceModelCopyPredictedLabelsForTokens(void *a1, uint64_t a2)
{
  v2 = [a1 predictedLabelsForTokens:a2];
  v3 = v2;
  if (v2)
  {
    v4 = v2;
  }

  return v3;
}

void *NLPSequenceModelCopyPredictedLabelArraysForTokenArrays(void *a1, uint64_t a2)
{
  v2 = [a1 predictedLabelArraysForTokenArrays:a2];
  v3 = v2;
  if (v2)
  {
    v4 = v2;
  }

  return v3;
}

void *NLPSequenceModelCopyTestResults(void *a1, uint64_t a2, uint64_t a3, void *a4)
{
  v7 = a1;
  v8 = a4;
  v9 = [NLPModelTrainingDataProvider alloc];
  v10 = [v7 configuration];
  v11 = [(NLPModelTrainingDataProvider *)v9 initWithConfiguration:v10 numberOfInstances:a2 dataSource:a3 instanceDataProvider:v8];

  v12 = [v7 testResultsWithDataProvider:v11];

  if (v12)
  {
    v13 = v12;
  }

  return v12;
}

NLModel *NLPGazetteerModelCreateWithData(uint64_t a1, void *a2)
{
  v9 = 0;
  v3 = [[NLModel alloc] initWithData:a1 error:&v9];
  v4 = v9;
  v5 = v4;
  if (!a2 || v3)
  {
    if (v3)
    {
      v7 = v3;
    }

    else
    {
      v7 = 0;
    }
  }

  else
  {
    if (v4)
    {
      v6 = v4;
    }

    v7 = 0;
    *a2 = v5;
  }

  return v7;
}

NLModel *NLPGazetteerModelCreateWithURL(uint64_t a1, void *a2)
{
  v9 = 0;
  v3 = [[NLModel alloc] initWithContentsOfURL:a1 error:&v9];
  v4 = v9;
  v5 = v4;
  if (!a2 || v3)
  {
    if (v3)
    {
      v7 = v3;
    }

    else
    {
      v7 = 0;
    }
  }

  else
  {
    if (v4)
    {
      v6 = v4;
    }

    v7 = 0;
    *a2 = v5;
  }

  return v7;
}

uint64_t NLPGazetteerModelWriteCoreMLModelToURLWithOptions(void *a1, uint64_t a2, uint64_t a3, void *a4)
{
  v10 = 0;
  v5 = [a1 writeMLModelToURL:a2 options:a3 error:&v10];
  v6 = v10;
  v7 = v6;
  if (a4 && (v5 & 1) == 0)
  {
    if (v6)
    {
      v8 = v6;
    }

    *a4 = v7;
  }

  return v5;
}

void *NLPGazetteerModelCopyLabelForString(void *a1, uint64_t a2)
{
  v2 = [a1 predictedLabelForString:a2];
  v3 = v2;
  if (v2)
  {
    v4 = v2;
  }

  return v3;
}

uint64_t NLPGazetteerModelIsRevisionSupported(uint64_t a1)
{
  if (a1 < 0)
  {
    return 0;
  }

  v2 = [NLModelConfiguration supportedRevisionsForType:0];
  v3 = [v2 containsIndex:a1];

  return v3;
}

uint64_t NLPGazetteerModelGetRevision(void *a1)
{
  v1 = [a1 configuration];
  v2 = [v1 revision];

  return v2;
}

NLModel *NLPEmbeddingModelCreateWithData(uint64_t a1, void *a2)
{
  v9 = 0;
  v3 = [[NLModel alloc] initWithData:a1 error:&v9];
  v4 = v9;
  v5 = v4;
  if (!a2 || v3)
  {
    if (v3)
    {
      v7 = v3;
    }

    else
    {
      v7 = 0;
    }
  }

  else
  {
    if (v4)
    {
      v6 = v4;
    }

    v7 = 0;
    *a2 = v5;
  }

  return v7;
}

NLModel *NLPEmbeddingModelCreateWithURL(uint64_t a1, void *a2)
{
  v9 = 0;
  v3 = [[NLModel alloc] initWithContentsOfURL:a1 error:&v9];
  v4 = v9;
  v5 = v4;
  if (!a2 || v3)
  {
    if (v3)
    {
      v7 = v3;
    }

    else
    {
      v7 = 0;
    }
  }

  else
  {
    if (v4)
    {
      v6 = v4;
    }

    v7 = 0;
    *a2 = v5;
  }

  return v7;
}

uint64_t NLPEmbeddingModelWriteCoreMLModelToURLWithOptions(void *a1, uint64_t a2, uint64_t a3, void *a4)
{
  v10 = 0;
  v5 = [a1 writeMLModelToURL:a2 options:a3 error:&v10];
  v6 = v10;
  v7 = v6;
  if (a4 && (v5 & 1) == 0)
  {
    if (v6)
    {
      v8 = v6;
    }

    *a4 = v7;
  }

  return v5;
}

id NLPEmbeddingModelCopyVectorForString(void *a1, uint64_t a2)
{
  v18 = *MEMORY[0x1E69E9840];
  v2 = [a1 predictedLabelForString:a2];
  if (v2)
  {
    v3 = [MEMORY[0x1E695DF70] array];
    v13 = 0u;
    v14 = 0u;
    v15 = 0u;
    v16 = 0u;
    v4 = [v2 componentsSeparatedByString:{@", ", 0}];
    v5 = [v4 countByEnumeratingWithState:&v13 objects:v17 count:16];
    if (v5)
    {
      v6 = v5;
      v7 = *v14;
      do
      {
        for (i = 0; i != v6; ++i)
        {
          if (*v14 != v7)
          {
            objc_enumerationMutation(v4);
          }

          v9 = MEMORY[0x1E696AD98];
          [*(*(&v13 + 1) + 8 * i) doubleValue];
          v10 = [v9 numberWithDouble:?];
          [v3 addObject:v10];
        }

        v6 = [v4 countByEnumeratingWithState:&v13 objects:v17 count:16];
      }

      while (v6);
    }

    if (v3)
    {
      v3 = v3;
    }
  }

  else
  {
    v3 = 0;
  }

  v11 = *MEMORY[0x1E69E9840];
  return v3;
}

uint64_t NLPEmbeddingModelIsRevisionSupported(uint64_t a1)
{
  if (a1 < 0)
  {
    return 0;
  }

  v2 = [NLModelConfiguration supportedRevisionsForType:0];
  v3 = [v2 containsIndex:a1];

  return v3;
}

uint64_t NLPEmbeddingModelGetRevision(void *a1)
{
  v1 = [a1 configuration];
  v2 = [v1 revision];

  return v2;
}

void sub_19D4BE384(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__2(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_19D4BE6C4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void ME_Model::regularized_func_grad(ME_Model *this, double a2, double **a3, double **a4)
{
  v6 = ME_Model::FunctionGradient(this, a3, a4);
  v7 = *a3;
  v8 = a3[1] - *a3;
  if (v8)
  {
    v9 = v8 >> 3;
    if (v9 <= 1)
    {
      v9 = 1;
    }

    do
    {
      v10 = *v7++;
      v6 = v6 + a2 * fabs(v10);
      --v9;
    }

    while (v9);
  }
}

double ME_Model::constrained_line_search(ME_Model *this, double a2, const Vec *a3, double **a4, double a5, const Vec *a6, void **a7, double **a8)
{
  v56 = 0;
  v57 = 0;
  v58 = 0;
  std::vector<double>::__init_with_size[abi:ne200100]<double *,double *>(&v56, *a3, *(a3 + 1), (*(a3 + 1) - *a3) >> 3);
  v16 = v56;
  if (v57 != v56)
  {
    v17 = (v57 - v56) >> 3;
    v18 = *a4;
    if (v17 <= 1)
    {
      v17 = 1;
    }

    do
    {
      if (*v16 == 0.0)
      {
        *v16 = -*v18;
      }

      ++v18;
      ++v16;
      --v17;
    }

    while (v17);
  }

  v19 = 2.0;
  do
  {
    while (1)
    {
      Vec::Vec(v53, (*(a6 + 1) - *a6) >> 3, 0.0);
      v19 = v19 * 0.5;
      v20 = *a6;
      v21 = *(a6 + 1) - *a6;
      if (v21)
      {
        v22 = v21 >> 3;
        v23 = v53[0];
        if (v22 <= 1)
        {
          v22 = 1;
        }

        do
        {
          v24 = *v20++;
          *v23++ = v19 * v24;
          --v22;
        }

        while (v22);
      }

      Vec::Vec(&__p, (*(a3 + 1) - *a3) >> 3, 0.0);
      v25 = *a3;
      v26 = *(a3 + 1) - *a3;
      if (v26)
      {
        v27 = v26 >> 3;
        v28 = v53[0];
        v29 = __p;
        if (v27 <= 1)
        {
          v27 = 1;
        }

        do
        {
          v30 = *v25++;
          v31 = v30;
          v32 = *v28++;
          *v29++ = v31 + v32;
          --v27;
        }

        while (v27);
      }

      if (&__p != a7)
      {
        std::vector<double>::__assign_with_size[abi:ne200100]<double *,double *>(a7, __p, v55, (v55 - __p) >> 3);
      }

      if (__p)
      {
        v55 = __p;
        operator delete(__p);
      }

      if (v53[0])
      {
        v53[1] = v53[0];
        operator delete(v53[0]);
      }

      v33 = *a7;
      v34 = a7[1] - *a7;
      if (v34)
      {
        v35 = v34 >> 3;
        v36 = v56;
        if (v35 <= 1)
        {
          v35 = 1;
        }

        do
        {
          if (*v33 * *v36 <= 0.0)
          {
            *v33 = 0.0;
          }

          ++v36;
          ++v33;
          --v35;
        }

        while (v35);
      }

      ME_Model::regularized_func_grad(this, a2, a7, a8);
      v38 = v37;
      Vec::Vec(&__p, (a7[1] - *a7) >> 3, 0.0);
      v39 = *a7;
      v40 = a7[1] - *a7;
      if (v40)
      {
        v41 = v40 >> 3;
        v42 = *a3;
        v43 = __p;
        if (v41 <= 1)
        {
          v41 = 1;
        }

        do
        {
          v44 = *v39++;
          v45 = v44;
          v46 = *v42++;
          *v43++ = v45 - v46;
          --v41;
        }

        while (v41);
      }

      v47 = v55 - __p;
      if (v55 == __p)
      {
        break;
      }

      v48 = 0;
      v49 = v47 >> 3;
      if ((v47 >> 3) <= 1)
      {
        v49 = 1;
      }

      v50 = 0.0;
      do
      {
        v50 = v50 + *(__p + v48) * (*a4)[v48];
        ++v48;
      }

      while (v49 != v48);
      v51 = a5 + v50 * 0.1;
      v55 = __p;
      operator delete(__p);
      if (v38 <= v51)
      {
        goto LABEL_42;
      }
    }

    if (v55)
    {
      v55 = __p;
      operator delete(__p);
    }
  }

  while (v38 > a5);
LABEL_42:
  if (v56)
  {
    v57 = v56;
    operator delete(v56);
  }

  return v38;
}

void sub_19D4C11C8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14, uint64_t a15, void *a16, uint64_t a17)
{
  if (__p)
  {
    operator delete(__p);
  }

  if (a10)
  {
    operator delete(a10);
  }

  if (a16)
  {
    operator delete(a16);
  }

  _Unwind_Resume(exception_object);
}

void ME_Model::perform_OWLQN(int *a1@<X0>, uint64_t *a2@<X1>, void *a3@<X8>, double a4@<D0>)
{
  v96 = *MEMORY[0x1E69E9840];
  v7 = *a2;
  v8 = a2[1];
  v10 = (v8 - v7) >> 3;
  v90 = 0;
  v91 = 0;
  v92 = 0;
  std::vector<double>::__init_with_size[abi:ne200100]<double *,double *>(&v90, v7, v8, v10);
  Vec::Vec(&v88, v10, 0.0);
  Vec::Vec(&v86, v10, 0.0);
  ME_Model::regularized_func_grad(a1, a4, &v90, &v88);
  v12 = v11;
  for (i = 0; i != 30; i += 3)
  {
    Vec::Vec(&v95[i], 0, 0.0);
  }

  for (j = 0; j != 30; j += 3)
  {
    Vec::Vec(&v94[j], 0, 0.0);
  }

  if (OWLQN_MAX_ITER >= 1)
  {
    v15 = 0;
    while (1)
    {
      v83 = 0;
      v84 = 0;
      v85 = 0;
      std::vector<double>::__init_with_size[abi:ne200100]<double *,double *>(&v83, v88, v89, (v89 - v88) >> 3);
      v16 = v90;
      if (v91 != v90)
      {
        break;
      }

LABEL_23:
      if (a1[100] >= 1)
      {
        ME_Model::heldout_likelihood(a1);
      }

      v23 = v83;
      if (v84 == v83)
      {
        v25 = 0.0;
      }

      else
      {
        v24 = (v84 - v83) >> 3;
        if (v24 <= 1)
        {
          v24 = 1;
        }

        v25 = 0.0;
        v26 = v83;
        do
        {
          v27 = *v26++;
          v25 = v25 + v27 * v27;
          --v24;
        }

        while (v24);
      }

      v28 = sqrt(v25);
      if (v28 >= 0.0001)
      {
        approximate_Hg(&v83, v95, v94, v93, v15, &v79);
        Vec::Vec(&__p, (v80 - v79) >> 3, 0.0);
        v29 = v79;
        if (v80 != v79)
        {
          v30 = (v80 - v79) >> 3;
          v31 = __p;
          if (v30 <= 1)
          {
            v30 = 1;
          }

          do
          {
            v32 = *v29++;
            *v31++ = -v32;
            --v30;
          }

          while (v30);
        }

        std::vector<double>::__assign_with_size[abi:ne200100]<double *,double *>(&v86, __p, v82, (v82 - __p) >> 3);
        if (__p)
        {
          v82 = __p;
          operator delete(__p);
        }

        if (v79)
        {
          v80 = v79;
          operator delete(v79);
        }

        v33 = v86;
        if (v87 == v86)
        {
          goto LABEL_47;
        }

        v34 = (v87 - v86) >> 3;
        if (v34 <= 1)
        {
          v34 = 1;
        }

        v35 = 0.0;
        v36 = v83;
        do
        {
          v37 = *v33++;
          v38 = v37;
          v39 = *v36++;
          v35 = v35 + v38 * v39;
          --v34;
        }

        while (v34);
        if (v35 >= 0.0)
        {
LABEL_47:
          Vec::Vec(&__p, (v84 - v83) >> 3, 0.0);
          v40 = v83;
          if (v84 != v83)
          {
            v41 = (v84 - v83) >> 3;
            v42 = __p;
            if (v41 <= 1)
            {
              v41 = 1;
            }

            do
            {
              v43 = *v40++;
              *v42++ = -v43;
              --v41;
            }

            while (v41);
          }

          v44 = v86;
          v45 = __p;
          if (v87 != v86)
          {
            v46 = (v87 - v86) >> 3;
            if (v46 <= 1)
            {
              v46 = 1;
            }

            do
            {
              if (*v44 * *v45 <= 0.0)
              {
                *v44 = 0.0;
              }

              v45 += 8;
              ++v44;
              --v46;
            }

            while (v46);
            v45 = __p;
          }

          if (v45)
          {
            v82 = v45;
            operator delete(v45);
          }
        }

        Vec::Vec(&__p, v10, 0.0);
        Vec::Vec(&v79, v10, 0.0);
        v12 = ME_Model::constrained_line_search(a1, a4, &v90, &v83, v12, &v86, &__p, &v79);
        Vec::Vec(&v77, (v82 - __p) >> 3, 0.0);
        v47 = __p;
        if (v82 != __p)
        {
          v48 = (v82 - __p) >> 3;
          v49 = v90;
          v50 = v77;
          if (v48 <= 1)
          {
            v48 = 1;
          }

          do
          {
            v51 = *v47++;
            v52 = v51;
            v53 = *v49++;
            *v50++ = v52 - v53;
            --v48;
          }

          while (v48);
        }

        v54 = v15 % 0xA;
        v55 = &v95[3 * v54];
        if (v55 != &v77)
        {
          std::vector<double>::__assign_with_size[abi:ne200100]<double *,double *>(&v95[3 * v54], v77, v78, (v78 - v77) >> 3);
        }

        if (v77)
        {
          v78 = v77;
          operator delete(v77);
        }

        Vec::Vec(&v77, (v80 - v79) >> 3, 0.0);
        v56 = v79;
        if (v80 != v79)
        {
          v57 = (v80 - v79) >> 3;
          v58 = v88;
          v59 = v77;
          if (v57 <= 1)
          {
            v57 = 1;
          }

          do
          {
            v60 = *v56++;
            v61 = v60;
            v62 = *v58++;
            *v59++ = v61 - v62;
            --v57;
          }

          while (v57);
        }

        v63 = &v94[3 * v54];
        if (v63 != &v77)
        {
          std::vector<double>::__assign_with_size[abi:ne200100]<double *,double *>(&v94[3 * v54], v77, v78, (v78 - v77) >> 3);
        }

        if (v77)
        {
          v78 = v77;
          operator delete(v77);
        }

        v64 = *v63;
        v65 = v63[1] - *v63;
        if (v65)
        {
          v66 = v65 >> 3;
          v67 = *v55;
          if (v66 <= 1)
          {
            v66 = 1;
          }

          v68 = 0.0;
          do
          {
            v69 = *v64++;
            v70 = v69;
            v71 = *v67++;
            v68 = v68 + v70 * v71;
            --v66;
          }

          while (v66);
        }

        else
        {
          v68 = 0.0;
        }

        v93[v54] = 1.0 / v68;
        std::vector<double>::__assign_with_size[abi:ne200100]<double *,double *>(&v90, __p, v82, (v82 - __p) >> 3);
        std::vector<double>::__assign_with_size[abi:ne200100]<double *,double *>(&v88, v79, v80, (v80 - v79) >> 3);
        if (v79)
        {
          v80 = v79;
          operator delete(v79);
        }

        if (__p)
        {
          v82 = __p;
          operator delete(__p);
        }

        v23 = v83;
      }

      if (v23)
      {
        v84 = v23;
        operator delete(v23);
      }

      if (v28 >= 0.0001 && ++v15 < OWLQN_MAX_ITER)
      {
        continue;
      }

      goto LABEL_92;
    }

    v17 = (v91 - v90) >> 3;
    v18 = v88;
    v19 = v83;
    if (v17 <= 1)
    {
      v17 = 1;
    }

    while (1)
    {
      if (*v16 == 0.0)
      {
        v22 = *v18 - a4;
        if (v22 > 0.0)
        {
          *v19 = v22;
          goto LABEL_22;
        }

        v21 = *v18 + a4;
        if (v21 >= 0.0)
        {
          *v19 = 0.0;
          goto LABEL_22;
        }
      }

      else
      {
        if (*v16 >= 0.0)
        {
          v20 = 0.0;
        }

        else
        {
          v20 = -1.0;
        }

        if (*v16 > 0.0)
        {
          v20 = 1.0;
        }

        v21 = *v19 + a4 * v20;
      }

      *v19 = v21;
LABEL_22:
      ++v19;
      ++v18;
      ++v16;
      if (!--v17)
      {
        goto LABEL_23;
      }
    }
  }

LABEL_92:
  *a3 = 0;
  a3[1] = 0;
  a3[2] = 0;
  std::vector<double>::__init_with_size[abi:ne200100]<double *,double *>(a3, v90, v91, (v91 - v90) >> 3);
  for (k = 0; k != -30; k -= 3)
  {
    v73 = v94[k + 27];
    if (v73)
    {
      v94[k + 28] = v73;
      operator delete(v73);
    }
  }

  for (m = 0; m != -30; m -= 3)
  {
    v75 = v95[m + 27];
    if (v75)
    {
      v95[m + 28] = v75;
      operator delete(v75);
    }
  }

  if (v86)
  {
    v87 = v86;
    operator delete(v86);
  }

  if (v88)
  {
    v89 = v88;
    operator delete(v88);
  }

  if (v90)
  {
    v91 = v90;
    operator delete(v90);
  }

  v76 = *MEMORY[0x1E69E9840];
}

void sub_19D4C18AC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, void *a10, uint64_t a11, uint64_t a12, void *a13, uint64_t a14, uint64_t a15, void *a16, uint64_t a17, uint64_t a18, void *a19, uint64_t a20, uint64_t a21, void *__p, uint64_t a23, uint64_t a24, void *a25, uint64_t a26, uint64_t a27, void *a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, uint64_t a61, uint64_t a62, uint64_t a63)
{
  v70 = &a69;
  v71 = -240;
  while (1)
  {
    v72 = *(v70 - 1);
    if (v72)
    {
      *v70 = v72;
      operator delete(v72);
    }

    v70 -= 3;
    v71 += 24;
    if (!v71)
    {
      v73 = &STACK[0x2D0];
      v74 = -240;
      while (1)
      {
        v75 = *(v73 - 1);
        if (v75)
        {
          *v73 = v75;
          operator delete(v75);
        }

        v73 -= 3;
        v74 += 24;
        if (!v74)
        {
          if (__p)
          {
            operator delete(__p);
          }

          if (a25)
          {
            operator delete(a25);
          }

          if (a28)
          {
            operator delete(a28);
          }

          _Unwind_Resume(a1);
        }
      }
    }
  }
}

void sub_19D4C1A00(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, char a41)
{
  if (v41)
  {
    v42 = -v41;
    v43 = &a41 + v41 - 24;
    do
    {
      v44 = *v43;
      if (*v43)
      {
        *(v43 + 1) = v44;
        operator delete(v44);
      }

      v43 -= 24;
      v42 += 24;
    }

    while (v42);
  }

  JUMPOUT(0x19D4C19A0);
}

void sub_19D4C1A38(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, uint64_t a61, uint64_t a62, uint64_t a63)
{
  if (v71)
  {
    v72 = -v71;
    v73 = &a71 + v71 - 24;
    do
    {
      v74 = *v73;
      if (*v73)
      {
        *(v73 + 1) = v74;
        operator delete(v74);
      }

      v73 -= 24;
      v72 += 24;
    }

    while (v72);
  }

  JUMPOUT(0x19D4C19C8);
}

void Vec::Vec(Vec *this, unint64_t a2, double a3)
{
  v3 = a3;
  *(this + 1) = 0;
  *(this + 2) = 0;
  *this = 0;
  std::vector<double>::resize(this, a2, &v3);
}

void sub_19D4C1AB0(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

void std::vector<double>::resize(void *a1, unint64_t a2, uint64_t *a3)
{
  v3 = (a1[1] - *a1) >> 3;
  if (a2 <= v3)
  {
    if (a2 < v3)
    {
      a1[1] = *a1 + 8 * a2;
    }
  }

  else
  {
    std::vector<double>::__append(a1, a2 - v3, a3);
  }
}

void std::vector<double>::__append(uint64_t a1, unint64_t a2, uint64_t *a3)
{
  v6 = *(a1 + 8);
  v5 = *(a1 + 16);
  if (a2 <= (v5 - v6) >> 3)
  {
    if (a2)
    {
      v12 = 0;
      v13 = v6 + 8 * a2;
      v14 = *a3;
      v15 = (a2 + 0x1FFFFFFFFFFFFFFFLL) & 0x1FFFFFFFFFFFFFFFLL;
      v16 = vdupq_n_s64(v15);
      v17 = (v6 + 8);
      do
      {
        v18 = vmovn_s64(vcgeq_u64(v16, vorrq_s8(vdupq_n_s64(v12), xmmword_19D4E9070)));
        if (v18.i8[0])
        {
          *(v17 - 1) = v14;
        }

        if (v18.i8[4])
        {
          *v17 = v14;
        }

        v12 += 2;
        v17 += 2;
      }

      while (v15 - ((a2 + 0x1FFFFFFFFFFFFFFFLL) & 1) + 2 != v12);
    }

    else
    {
      v13 = *(a1 + 8);
    }

    *(a1 + 8) = v13;
  }

  else
  {
    v7 = v6 - *a1;
    v8 = a2 + (v7 >> 3);
    if (v8 >> 61)
    {
      std::vector<double>::__throw_length_error[abi:ne200100]();
    }

    v9 = v7 >> 3;
    v10 = v5 - *a1;
    if (v10 >> 2 > v8)
    {
      v8 = v10 >> 2;
    }

    if (v10 >= 0x7FFFFFFFFFFFFFF8)
    {
      v11 = 0x1FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v11 = v8;
    }

    if (v11)
    {
      std::__allocate_at_least[abi:ne200100]<std::allocator<double>>(a1, v11);
    }

    v19 = 0;
    v20 = 8 * v9;
    v21 = 8 * v9 + 8 * a2;
    v22 = *a3;
    v23 = (a2 + 0x1FFFFFFFFFFFFFFFLL) & 0x1FFFFFFFFFFFFFFFLL;
    v24 = v23 - ((a2 + 0x1FFFFFFFFFFFFFFFLL) & 1) + 2;
    v25 = vdupq_n_s64(v23);
    v26 = (v20 + 8);
    do
    {
      v27 = vmovn_s64(vcgeq_u64(v25, vorrq_s8(vdupq_n_s64(v19), xmmword_19D4E9070)));
      if (v27.i8[0])
      {
        *(v26 - 1) = v22;
      }

      if (v27.i8[4])
      {
        *v26 = v22;
      }

      v19 += 2;
      v26 += 2;
    }

    while (v24 != v19);
    v28 = *(a1 + 8) - *a1;
    v29 = v20 - v28;
    memcpy((v20 - v28), *a1, v28);
    v30 = *a1;
    *a1 = v29;
    *(a1 + 8) = v21;
    *(a1 + 16) = 0;
    if (v30)
    {

      operator delete(v30);
    }
  }
}

void sub_19D4C2288(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, void *a15, uint64_t a16, int a17, __int16 a18, char a19, char a20, void *a21, uint64_t a22, int a23, __int16 a24, char a25, char a26, void *__p, uint64_t a28, int a29, __int16 a30, char a31, char a32)
{
  if (a32 < 0)
  {
    operator delete(__p);
  }

  std::__tree<std::__value_type<std::string,std::variant<BOOL,std::string>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::variant<BOOL,std::string>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::variant<BOOL,std::string>>>>::destroy(v37 - 104, *(v37 - 96));

  _Unwind_Resume(a1);
}

void sub_19D4C2668(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17, uint64_t a18, char a19, void *a20)
{
  std::__tree<std::__value_type<std::string,std::variant<language_modeling::v1::SessionType,std::string>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::variant<language_modeling::v1::SessionType,std::string>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::variant<language_modeling::v1::SessionType,std::string>>>>::destroy(&a19, a20);

  _Unwind_Resume(a1);
}

void sub_19D4C2784(_Unwind_Exception *a1)
{
  v2 = v1;

  _Unwind_Resume(a1);
}

void makeContext(NSArray *a1@<X0>, language_modeling::v1::LinguisticContext *a2@<X8>)
{
  v19 = *MEMORY[0x1E69E9840];
  v3 = a1;
  language_modeling::v1::LinguisticContext::LinguisticContext(a2);
  std::string::basic_string[abi:ne200100]<0>(__p, "");
  v17 = 1;
  MEMORY[0x19EAFBD10](a2, __p);
  if (v16 < 0)
  {
    operator delete(__p[0]);
  }

  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v4 = v3;
  v5 = [(NSArray *)v4 countByEnumeratingWithState:&v11 objects:v18 count:16];
  if (v5)
  {
    v6 = *v12;
    do
    {
      v7 = 0;
      do
      {
        if (*v12 != v6)
        {
          objc_enumerationMutation(v4);
        }

        v8 = *(*(&v11 + 1) + 8 * v7);
        v9 = [v8 UTF8String];
        if (v9)
        {
          std::string::basic_string[abi:ne200100]<0>(__p, v9);
          v17 = 0;
          MEMORY[0x19EAFBD10](a2, __p);
          if (v16 < 0)
          {
            operator delete(__p[0]);
          }
        }

        ++v7;
      }

      while (v5 != v7);
      v5 = [(NSArray *)v4 countByEnumeratingWithState:&v11 objects:v18 count:16];
    }

    while (v5);
  }

  v10 = *MEMORY[0x1E69E9840];
}

void sub_19D4C2924(_Unwind_Exception *a1)
{
  language_modeling::v1::LinguisticContext::~LinguisticContext(v1);

  _Unwind_Resume(a1);
}

void sub_19D4C2A74(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16)
{
  if (a16 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

id wordSequenceForString(NSString *a1, NLTokenizer *a2)
{
  v3 = a1;
  v4 = a2;
  v5 = [MEMORY[0x1E695DF70] array];
  [(NLTokenizer *)v4 setString:v3];
  v6 = [(NSString *)v3 length];
  v12 = MEMORY[0x1E69E9820];
  v13 = 3221225472;
  v14 = ___ZL21wordSequenceForStringP8NSStringP11NLTokenizer_block_invoke;
  v15 = &unk_1E7629C10;
  v7 = v3;
  v16 = v7;
  v8 = v5;
  v17 = v8;
  [(NLTokenizer *)v4 enumerateTokensInRange:0 usingBlock:v6, &v12];
  [(NLTokenizer *)v4 setString:&stru_1F10C6540, v12, v13, v14, v15];
  v9 = v17;
  v10 = v8;

  return v8;
}

void sub_19D4C2FA4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, char a15)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  language_modeling::v1::LinguisticContext::~LinguisticContext(&a15);

  _Unwind_Resume(a1);
}

void sub_19D4C3198(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16)
{
  if (a16 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void sub_19D4C329C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16)
{
  if (a16 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

double std::__variant_detail::__assignment<std::__variant_detail::__traits<BOOL,std::string>>::__assign_alt[abi:ne200100]<1ul,std::string,std::string&>(uint64_t a1, std::string *this, std::string *__str)
{
  if (*(a1 + 24) == 1)
  {

    std::string::operator=(this, __str);
  }

  else
  {
    v6[2] = v3;
    v6[3] = v4;
    v6[0] = a1;
    v6[1] = __str;
    *&result = std::__variant_detail::__assignment<std::__variant_detail::__traits<BOOL,std::string>>::__assign_alt[abi:ne200100]<1ul,std::string,std::string&>(std::__variant_detail::__alt<1ul,std::string> &,std::string&)::{unnamed type#1}::operator()(v6).n128_u64[0];
  }

  return result;
}

__n128 std::__variant_detail::__assignment<std::__variant_detail::__traits<BOOL,std::string>>::__assign_alt[abi:ne200100]<1ul,std::string,std::string&>(std::__variant_detail::__alt<1ul,std::string> &,std::string&)::{unnamed type#1}::operator()(uint64_t a1)
{
  v2 = *a1;
  v1 = *(a1 + 8);
  if (*(v1 + 23) < 0)
  {
    std::string::__init_copy_ctor_external(&v5, *v1, *(v1 + 1));
  }

  else
  {
    v3 = *v1;
    v5.__r_.__value_.__r.__words[2] = *(v1 + 2);
    *&v5.__r_.__value_.__l.__data_ = v3;
  }

  std::__variant_detail::__dtor<std::__variant_detail::__traits<BOOL,std::string>,(std::__variant_detail::_Trait)1>::__destroy[abi:ne200100](v2);
  result = *&v5.__r_.__value_.__l.__data_;
  v2[1].n128_u64[0] = v5.__r_.__value_.__r.__words[2];
  *v2 = result;
  v2[1].n128_u32[2] = 1;
  return result;
}

uint64_t std::__variant_detail::__dtor<std::__variant_detail::__traits<BOOL,std::string>,(std::__variant_detail::_Trait)1>::__destroy[abi:ne200100](uint64_t result)
{
  v1 = result;
  v2 = *(result + 24);
  if (v2 != -1)
  {
    result = (off_1F10C6340[v2])(&v3, result);
  }

  *(v1 + 24) = -1;
  return result;
}

void _ZNSt3__116__variant_detail12__visitation6__base12__dispatcherIJLm1EEE10__dispatchB8ne200100IOZNS0_6__dtorINS0_8__traitsIJbNS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEEEEELNS0_6_TraitE1EE9__destroyB8ne200100EvEUlRT_E_JRNS0_6__baseILSF_1EJbSD_EEEEEEDcSH_DpT0_(uint64_t a1, uint64_t a2)
{
  if (*(a2 + 23) < 0)
  {
    operator delete(*a2);
  }
}

double std::__variant_detail::__assignment<std::__variant_detail::__traits<BOOL,std::string>>::__assign_alt[abi:ne200100]<1ul,std::string,char const*&>(uint64_t a1, std::string *this, char **a3)
{
  if (*(a1 + 24) == 1)
  {
    v6 = *a3;

    std::string::__assign_external(this, v6);
  }

  else
  {
    v11 = v3;
    v12 = v4;
    std::string::basic_string[abi:ne200100]<0>(&v9, *a3);
    std::__variant_detail::__dtor<std::__variant_detail::__traits<BOOL,std::string>,(std::__variant_detail::_Trait)1>::__destroy[abi:ne200100](a1);
    result = *&v9;
    *a1 = v9;
    *(a1 + 16) = v10;
    *(a1 + 24) = 1;
  }

  return result;
}

std::string *__cdecl std::string::__assign_external(std::string *this, const std::string::value_type *__s, std::string::size_type __n)
{
  size = SHIBYTE(this->__r_.__value_.__r.__words[2]);
  if ((size & 0x8000000000000000) != 0)
  {
    v9 = this->__r_.__value_.__r.__words[2];
    v8 = (v9 & 0x7FFFFFFFFFFFFFFFLL) - 1;
    if (v8 < __n)
    {
      size = this->__r_.__value_.__l.__size_;
      goto LABEL_6;
    }

    size = HIBYTE(v9);
    v7 = this->__r_.__value_.__r.__words[0];
  }

  else
  {
    v7 = this;
    if (__n > 0x16)
    {
      v8 = 22;
LABEL_6:
      std::string::__grow_by_and_replace(this, v8, __n - v8, size, 0, size, __n, __s);
      return this;
    }
  }

  if (__n)
  {
    memmove(v7, __s, __n);
    LOBYTE(size) = *(&this->__r_.__value_.__s + 23);
  }

  if ((size & 0x80) != 0)
  {
    this->__r_.__value_.__l.__size_ = __n;
  }

  else
  {
    *(&this->__r_.__value_.__s + 23) = __n & 0x7F;
  }

  v7->__r_.__value_.__s.__data_[__n] = 0;
  return this;
}

std::string *__cdecl std::string::__assign_external(std::string *this, const std::string::value_type *__s)
{
  v4 = strlen(__s);

  return std::string::__assign_external(this, __s, v4);
}

uint64_t std::__variant_detail::__dtor<std::__variant_detail::__traits<language_modeling::v1::SessionType,std::string>,(std::__variant_detail::_Trait)1>::__destroy[abi:ne200100](uint64_t result)
{
  v1 = result;
  v2 = *(result + 24);
  if (v2 != -1)
  {
    result = (off_1F10C6350[v2])(&v3, result);
  }

  *(v1 + 24) = -1;
  return result;
}

void _ZNSt3__116__variant_detail12__visitation6__base12__dispatcherIJLm1EEE10__dispatchB8ne200100IOZNS0_6__dtorINS0_8__traitsIJN17language_modeling2v111SessionTypeENS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEEEEELNS0_6_TraitE1EE9__destroyB8ne200100EvEUlRT_E_JRNS0_6__baseILSI_1EJSA_SG_EEEEEEDcSK_DpT0_(uint64_t a1, uint64_t a2)
{
  if (*(a2 + 23) < 0)
  {
    operator delete(*a2);
  }
}

double std::__variant_detail::__assignment<std::__variant_detail::__traits<language_modeling::v1::SessionType,std::string>>::__assign_alt[abi:ne200100]<1ul,std::string,char const*&>(uint64_t a1, std::string *this, char **a3)
{
  if (*(a1 + 24) == 1)
  {
    v6 = *a3;

    std::string::__assign_external(this, v6);
  }

  else
  {
    v11 = v3;
    v12 = v4;
    std::string::basic_string[abi:ne200100]<0>(&v9, *a3);
    std::__variant_detail::__dtor<std::__variant_detail::__traits<language_modeling::v1::SessionType,std::string>,(std::__variant_detail::_Trait)1>::__destroy[abi:ne200100](a1);
    result = *&v9;
    *a1 = v9;
    *(a1 + 16) = v10;
    *(a1 + 24) = 1;
  }

  return result;
}

void ___ZL21wordSequenceForStringP8NSStringP11NLTokenizer_block_invoke(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = [*(a1 + 32) substringWithRange:{a2, a3}];
  [*(a1 + 40) addObject:?];
}

void std::__tree<std::__value_type<std::string,std::variant<BOOL,std::string>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::variant<BOOL,std::string>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::variant<BOOL,std::string>>>>::destroy(uint64_t a1, void *a2)
{
  if (a2)
  {
    std::__tree<std::__value_type<std::string,std::variant<BOOL,std::string>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::variant<BOOL,std::string>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::variant<BOOL,std::string>>>>::destroy(a1, *a2);
    std::__tree<std::__value_type<std::string,std::variant<BOOL,std::string>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::variant<BOOL,std::string>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::variant<BOOL,std::string>>>>::destroy(a1, a2[1]);
    std::__destroy_at[abi:ne200100]<std::pair<std::string const,std::variant<BOOL,std::string>>,0>((a2 + 4));

    operator delete(a2);
  }
}

void std::__destroy_at[abi:ne200100]<std::pair<std::string const,std::variant<BOOL,std::string>>,0>(uint64_t a1)
{
  std::__variant_detail::__dtor<std::__variant_detail::__traits<BOOL,std::string>,(std::__variant_detail::_Trait)1>::__destroy[abi:ne200100](a1 + 24);
  if (*(a1 + 23) < 0)
  {
    v2 = *a1;

    operator delete(v2);
  }
}

uint64_t std::__tree<std::__value_type<std::string,std::variant<BOOL,std::string>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::variant<BOOL,std::string>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::variant<BOOL,std::string>>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(uint64_t a1, void **a2)
{
  v2 = *std::__tree<std::__value_type<std::string,std::variant<BOOL,std::string>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::variant<BOOL,std::string>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::variant<BOOL,std::string>>>>::__find_equal<std::string>(a1, &v4, a2);
  if (!v2)
  {
    operator new();
  }

  return v2;
}

void *std::__tree<std::__value_type<std::string,std::variant<BOOL,std::string>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::variant<BOOL,std::string>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::variant<BOOL,std::string>>>>::__find_equal<std::string>(uint64_t a1, void *a2, void **a3)
{
  v5 = (a1 + 8);
  v4 = *(a1 + 8);
  if (v4)
  {
    do
    {
      while (1)
      {
        v7 = v4;
        if ((std::operator<=>[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>(a3, (v4 + 32)) & 0x80) == 0)
        {
          break;
        }

        v4 = *v7;
        v5 = v7;
        if (!*v7)
        {
          goto LABEL_9;
        }
      }

      if ((std::operator<=>[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>(v7 + 4, a3) & 0x80) == 0)
      {
        break;
      }

      v5 = v7 + 1;
      v4 = v7[1];
    }

    while (v4);
  }

  else
  {
    v7 = (a1 + 8);
  }

LABEL_9:
  *a2 = v7;
  return v5;
}

uint64_t *std::__tree<std::__value_type<std::string,std::variant<BOOL,std::string>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::variant<BOOL,std::string>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::variant<BOOL,std::string>>>>::__insert_node_at(uint64_t **a1, uint64_t a2, uint64_t **a3, uint64_t *a4)
{
  *a4 = 0;
  a4[1] = 0;
  a4[2] = a2;
  *a3 = a4;
  v5 = **a1;
  if (v5)
  {
    *a1 = v5;
    a4 = *a3;
  }

  result = std::__tree_balance_after_insert[abi:ne200100]<std::__tree_node_base<void *> *>(a1[1], a4);
  a1[2] = (a1[2] + 1);
  return result;
}

uint64_t std::unique_ptr<std::__tree_node<std::__value_type<std::string,std::variant<BOOL,std::string>>,void *>,std::__tree_node_destructor<std::allocator<std::__tree_node<std::__value_type<std::string,std::variant<BOOL,std::string>>,void *>>>>::~unique_ptr[abi:ne200100](uint64_t a1)
{
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    if (*(a1 + 16) == 1)
    {
      std::__destroy_at[abi:ne200100]<std::pair<std::string const,std::variant<BOOL,std::string>>,0>(v2 + 32);
    }

    operator delete(v2);
  }

  return a1;
}

uint64_t std::operator<=>[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>(void *a1, void **a2)
{
  v2 = *(a1 + 23);
  v3 = a1[1];
  if ((v2 & 0x80u) != 0)
  {
    a1 = *a1;
    v2 = v3;
  }

  v4 = *(a2 + 23);
  if (v4 >= 0)
  {
    v5 = a2;
  }

  else
  {
    v5 = *a2;
  }

  if (v4 >= 0)
  {
    v6 = *(a2 + 23);
  }

  else
  {
    v6 = a2[1];
  }

  return std::operator<=>[abi:ne200100]<char,std::char_traits<char>>(a1, v2, v5, v6);
}

uint64_t std::operator<=>[abi:ne200100]<char,std::char_traits<char>>(const void *a1, size_t a2, void *__s2, size_t a4)
{
  if (a4 >= a2)
  {
    v7 = a2;
  }

  else
  {
    v7 = a4;
  }

  v8 = memcmp(a1, __s2, v7);
  if (v8)
  {
    if ((v8 & 0x80000000) == 0)
    {
      return 1;
    }
  }

  else
  {
    if (a2 == a4)
    {
      return 0;
    }

    if (a2 >= a4)
    {
      return 1;
    }
  }

  return 255;
}

uint64_t *std::__tree_balance_after_insert[abi:ne200100]<std::__tree_node_base<void *> *>(uint64_t *result, uint64_t *a2)
{
  *(a2 + 24) = a2 == result;
  if (a2 != result)
  {
    do
    {
      v2 = a2[2];
      if (v2[3])
      {
        break;
      }

      v3 = v2[2];
      v4 = *v3;
      if (*v3 == v2)
      {
        v8 = v3[1];
        if (!v8 || (v9 = *(v8 + 24), v7 = (v8 + 24), v9 == 1))
        {
          if (*v2 == a2)
          {
            v11 = a2[2];
          }

          else
          {
            v11 = v2[1];
            v12 = *v11;
            v2[1] = *v11;
            v13 = v2;
            if (v12)
            {
              v12[2] = v2;
              v3 = v2[2];
              v13 = *v3;
            }

            v11[2] = v3;
            v3[v13 != v2] = v11;
            *v11 = v2;
            v2[2] = v11;
            v3 = v11[2];
            v4 = *v3;
          }

          *(v11 + 24) = 1;
          *(v3 + 24) = 0;
          v18 = *(v4 + 8);
          *v3 = v18;
          if (v18)
          {
            *(v18 + 16) = v3;
          }

          v19 = v3[2];
          *(v4 + 16) = v19;
          v19[*v19 != v3] = v4;
          *(v4 + 8) = v3;
          v3[2] = v4;
          return result;
        }
      }

      else
      {
        if (!v4 || (v6 = *(v4 + 24), v5 = (v4 + 24), v6 == 1))
        {
          v10 = *v2;
          if (*v2 == a2)
          {
            v14 = v10[1];
            *v2 = v14;
            if (v14)
            {
              *(v14 + 16) = v2;
              v3 = v2[2];
            }

            v10[2] = v3;
            v3[*v3 != v2] = v10;
            v10[1] = v2;
            v2[2] = v10;
            v3 = v10[2];
          }

          else
          {
            v10 = a2[2];
          }

          *(v10 + 24) = 1;
          *(v3 + 24) = 0;
          v15 = v3[1];
          v16 = *v15;
          v3[1] = *v15;
          if (v16)
          {
            *(v16 + 16) = v3;
          }

          v17 = v3[2];
          v15[2] = v17;
          v17[*v17 != v3] = v15;
          *v15 = v3;
          v3[2] = v15;
          return result;
        }

        v7 = v5;
      }

      *(v2 + 24) = 1;
      a2 = v3;
      *(v3 + 24) = v3 == result;
      *v7 = 1;
    }

    while (v3 != result);
  }

  return result;
}

void std::__tree<std::__value_type<std::string,std::variant<language_modeling::v1::SessionType,std::string>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::variant<language_modeling::v1::SessionType,std::string>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::variant<language_modeling::v1::SessionType,std::string>>>>::destroy(uint64_t a1, void *a2)
{
  if (a2)
  {
    std::__tree<std::__value_type<std::string,std::variant<language_modeling::v1::SessionType,std::string>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::variant<language_modeling::v1::SessionType,std::string>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::variant<language_modeling::v1::SessionType,std::string>>>>::destroy(a1, *a2);
    std::__tree<std::__value_type<std::string,std::variant<language_modeling::v1::SessionType,std::string>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::variant<language_modeling::v1::SessionType,std::string>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::variant<language_modeling::v1::SessionType,std::string>>>>::destroy(a1, a2[1]);
    std::__destroy_at[abi:ne200100]<std::pair<std::string const,std::variant<language_modeling::v1::SessionType,std::string>>,0>((a2 + 4));

    operator delete(a2);
  }
}

void std::__destroy_at[abi:ne200100]<std::pair<std::string const,std::variant<language_modeling::v1::SessionType,std::string>>,0>(uint64_t a1)
{
  std::__variant_detail::__dtor<std::__variant_detail::__traits<language_modeling::v1::SessionType,std::string>,(std::__variant_detail::_Trait)1>::__destroy[abi:ne200100](a1 + 24);
  if (*(a1 + 23) < 0)
  {
    v2 = *a1;

    operator delete(v2);
  }
}

uint64_t std::__tree<std::__value_type<std::string,std::variant<language_modeling::v1::SessionType,std::string>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::variant<language_modeling::v1::SessionType,std::string>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::variant<language_modeling::v1::SessionType,std::string>>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(uint64_t a1, void **a2)
{
  v2 = *std::__tree<std::__value_type<std::string,std::variant<BOOL,std::string>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::variant<BOOL,std::string>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::variant<BOOL,std::string>>>>::__find_equal<std::string>(a1, &v4, a2);
  if (!v2)
  {
    operator new();
  }

  return v2;
}

uint64_t std::unique_ptr<std::__tree_node<std::__value_type<std::string,std::variant<language_modeling::v1::SessionType,std::string>>,void *>,std::__tree_node_destructor<std::allocator<std::__tree_node<std::__value_type<std::string,std::variant<language_modeling::v1::SessionType,std::string>>,void *>>>>::~unique_ptr[abi:ne200100](uint64_t a1)
{
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    if (*(a1 + 16) == 1)
    {
      std::__destroy_at[abi:ne200100]<std::pair<std::string const,std::variant<language_modeling::v1::SessionType,std::string>>,0>(v2 + 32);
    }

    operator delete(v2);
  }

  return a1;
}

language_modeling::v1::LanguageModelSession *std::unique_ptr<language_modeling::v1::LanguageModelSession>::reset[abi:ne200100](language_modeling::v1::LanguageModelSession **a1, language_modeling::v1::LanguageModelSession *a2)
{
  result = *a1;
  *a1 = a2;
  if (result)
  {
    language_modeling::v1::LanguageModelSession::~LanguageModelSession(result);

    JUMPOUT(0x19EAFC130);
  }

  return result;
}

uint64_t std::__function::__value_func<BOOL ()(language_modeling::v1::Prediction const&)>::~__value_func[abi:ne200100](uint64_t a1)
{
  v2 = *(a1 + 24);
  if (v2 == a1)
  {
    (*(*v2 + 32))(v2);
  }

  else if (v2)
  {
    (*(*v2 + 40))(v2);
  }

  return a1;
}

void sub_19D4C4C20(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, char a39, uint64_t a40, uint64_t a41, uint64_t a42, char a43, uint64_t a44, uint64_t a45, uint64_t a46, char a47, uint64_t a48, uint64_t a49, uint64_t a50, char a51, uint64_t a52, uint64_t a53, uint64_t a54, char a55)
{
  _Block_object_dispose(&a39, 8);
  _Block_object_dispose(&a43, 8);
  _Block_object_dispose(&a47, 8);
  _Block_object_dispose(&a51, 8);
  _Block_object_dispose(&a55, 8);
  _Block_object_dispose((v55 - 256), 8);
  _Block_object_dispose((v55 - 224), 8);
  _Unwind_Resume(a1);
}

uint64_t copySampleDataEnumerator(void *a1, _BYTE *a2)
{
  v3 = [a1 nextInstance];
  v4 = v3;
  if (v3)
  {
    v5 = [v3 instanceDictionary];
  }

  else
  {
    v5 = 0;
    *a2 = 1;
  }

  return v5;
}

uint64_t rangesMatch(unint64_t a1, uint64_t a2, unint64_t a3, uint64_t a4)
{
  v5 = a1 == a3 && a2 == a4;
  if (a3 >= a1 && !v5)
  {
    v6 = a3 + a4;
    v7 = a1 + a2;
    if (a3 + a4 > a1 + a2)
    {
      goto LABEL_14;
    }

    return 1;
  }

  if (v5)
  {
    return 1;
  }

  v7 = a1 + a2;
  v6 = a3 + a4;
LABEL_14:
  v10 = a3 < v7 && v6 >= v7;
  return a3 <= a1 && v6 > a1 || v10;
}

uint64_t __Block_byref_object_copy__3(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

unint64_t maxTokensFromBatchComponents(void *a1, void *a2, void *a3)
{
  v5 = a1;
  v6 = a3;
  v7 = 0;
  if (v5)
  {
    if (a2)
    {
      v8 = [a2 count];
      v9 = [v5 count];
      v7 = 0;
      if (v6)
      {
        if (v8 == v9)
        {
          v10 = [v6 count];
          if (v10 == [v5 count] && objc_msgSend(v5, "count"))
          {
            v7 = 0;
            v11 = 0;
            do
            {
              v12 = [v5 objectAtIndex:v11];
              v13 = [v6 objectAtIndex:v11];
              v14 = [v12 count];
              v15 = [v13 count];
              if (v14 >= v15)
              {
                v16 = v15;
              }

              else
              {
                v16 = v14;
              }

              if (v16 > v7)
              {
                v7 = v16;
              }

              ++v11;
            }

            while (v11 < [v5 count]);
          }

          else
          {
            v7 = 0;
          }
        }
      }
    }
  }

  return v7;
}

void sub_19D4CAFF0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v11 - 96), 8);
  _Unwind_Resume(a1);
}

void sub_19D4CB474(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, ...)
{
  va_start(va1, a10);
  va_start(va, a10);
  v11 = va_arg(va1, void);
  v13 = va_arg(va1, void);
  v14 = va_arg(va1, void);
  v15 = va_arg(va1, void);
  v16 = va_arg(va1, void);
  v17 = va_arg(va1, void);
  _Block_object_dispose(va, 8);
  _Block_object_dispose(va1, 8);
  _Unwind_Resume(a1);
}

void sub_19D4CB924(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, ...)
{
  va_start(va1, a8);
  va_start(va, a8);
  v9 = va_arg(va1, void);
  v11 = va_arg(va1, void);
  v12 = va_arg(va1, void);
  v13 = va_arg(va1, void);
  v14 = va_arg(va1, void);
  v15 = va_arg(va1, void);
  _Block_object_dispose(va, 8);
  _Block_object_dispose(va1, 8);
  _Unwind_Resume(a1);
}

uint64_t __mostRecentEmbedding_block_invoke(uint64_t a1, void *a2, void *a3)
{
  v4 = a3;
  v5 = [a2 revision];
  v6 = [v4 revision];

  if (v5 > v6)
  {
    return -1;
  }

  else
  {
    return v5 < v6;
  }
}

id NLGetLogCategory(void *a1)
{
  v1 = a1;
  v2 = v1;
  if (v1 && [v1 conformsToProtocol:&unk_1F10D3C00])
  {
    v3 = [objc_opt_class() logCategory];
  }

  else
  {
    v3 = +[NLLogCategory defaultCategory];
  }

  v4 = v3;

  return v4;
}

__CFString *NLGetLogIdentifier(void *a1)
{
  v1 = a1;
  v2 = v1;
  if (v1 && [v1 conformsToProtocol:&unk_1F10D3C00] && (objc_opt_respondsToSelector() & 1) != 0)
  {
    v3 = MEMORY[0x1E696AEC0];
    v4 = [v2 logIdentifier];
    v5 = [v3 stringWithFormat:@"[%@] ", v4];
  }

  else
  {
    v5 = &stru_1F10C6540;
  }

  return v5;
}

__CFString *NLBooleanToString(int a1)
{
  if (a1)
  {
    return @"YES";
  }

  else
  {
    return @"NO";
  }
}

id NLContextualEmbeddingSignpostHandle()
{
  if (NLContextualEmbeddingSignpostHandle_onceToken != -1)
  {
    NLContextualEmbeddingSignpostHandle_cold_1();
  }

  v1 = NLContextualEmbeddingSignpostHandle_log_handle;

  return v1;
}

uint64_t __NLContextualEmbeddingSignpostHandle_block_invoke()
{
  NLContextualEmbeddingSignpostHandle_log_handle = os_log_create("com.apple.NaturalLanguage", "NLContextualEmbedding");

  return MEMORY[0x1EEE66BB8]();
}

void ME_Model::backtracking_line_search(ME_Model *this, const Vec *a2, double **a3, double a4, const Vec *a5, void **a6, double **a7)
{
  v15 = *a5;
  v14 = *(a5 + 1);
  v16 = 2.0;
  do
  {
    v16 = v16 * 0.5;
    Vec::Vec(v38, (v14 - v15) >> 3, 0.0);
    v17 = *a5;
    v18 = *(a5 + 1) - *a5;
    if (v18)
    {
      v19 = v18 >> 3;
      v20 = v38[0];
      if (v19 <= 1)
      {
        v19 = 1;
      }

      do
      {
        v21 = *v17++;
        *v20++ = v16 * v21;
        --v19;
      }

      while (v19);
    }

    Vec::Vec(&__p, (*(a2 + 1) - *a2) >> 3, 0.0);
    v22 = *a2;
    v23 = *(a2 + 1) - *a2;
    if (v23)
    {
      v24 = v23 >> 3;
      v25 = v38[0];
      v26 = __p;
      if (v24 <= 1)
      {
        v24 = 1;
      }

      do
      {
        v27 = *v22++;
        v28 = v27;
        v29 = *v25++;
        *v26++ = v28 + v29;
        --v24;
      }

      while (v24);
    }

    if (&__p != a6)
    {
      std::vector<double>::__assign_with_size[abi:ne200100]<double *,double *>(a6, __p, v40, (v40 - __p) >> 3);
    }

    if (__p)
    {
      v40 = __p;
      operator delete(__p);
    }

    if (v38[0])
    {
      v38[1] = v38[0];
      operator delete(v38[0]);
    }

    v30 = ME_Model::FunctionGradient(this, a6, a7);
    v15 = *a5;
    v14 = *(a5 + 1);
    if (v14 == *a5)
    {
      v33 = 0.0;
    }

    else
    {
      v31 = (v14 - *a5) >> 3;
      v32 = *a3;
      if (v31 <= 1)
      {
        v31 = 1;
      }

      v33 = 0.0;
      v34 = *a5;
      do
      {
        v35 = *v34++;
        v36 = v35;
        v37 = *v32++;
        v33 = v33 + v36 * v37;
        --v31;
      }

      while (v31);
    }
  }

  while (v30 > a4 + v16 * 0.1 * v33);
}

void sub_19D4CF2C8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13)
{
  if (__p)
  {
    operator delete(__p);
  }

  if (a9)
  {
    operator delete(a9);
  }

  _Unwind_Resume(exception_object);
}

void approximate_Hg(const Vec *a1@<X1>, const Vec *a2@<X2>, const Vec *a3@<X3>, const double *a4@<X4>, int a5@<W0>, double **a6@<X8>)
{
  v72[10] = *MEMORY[0x1E69E9840];
  v67 = a5 - 1;
  if (a5 >= 11)
  {
    v10 = 9;
  }

  else
  {
    v10 = (a5 - 1);
  }

  if (a5 >= 11)
  {
    v11 = a5 - 10;
  }

  else
  {
    v11 = 0;
  }

  *a6 = 0;
  a6[1] = 0;
  a6[2] = 0;
  std::vector<double>::__init_with_size[abi:ne200100]<double *,double *>(a6, *a1, *(a1 + 1), (*(a1 + 1) - *a1) >> 3);
  v69 = v10;
  if ((v10 & 0x80000000) == 0)
  {
    do
    {
      v12 = (v11 + v10) % 0xAu;
      v13 = *(a2 + 3 * v12);
      v14 = 0.0;
      v15 = *(a2 + 3 * v12 + 1) - v13;
      if (v15)
      {
        v16 = v15 >> 3;
        v17 = *a6;
        if (v16 <= 1)
        {
          v16 = 1;
        }

        do
        {
          v18 = *v13++;
          v19 = v18;
          v20 = *v17++;
          v14 = v14 + v19 * v20;
          --v16;
        }

        while (v16);
      }

      v21 = a4[v12];
      *&v72[v10] = v21 * v14;
      v22 = (a3 + 24 * v12);
      Vec::Vec(&__p, v22[1] - *v22, 0.0);
      v23 = *v22;
      v24 = v22[1] - *v22;
      if (v24)
      {
        v25 = v24 >> 3;
        v26 = __p;
        if (v25 <= 1)
        {
          v25 = 1;
        }

        do
        {
          v27 = *v23++;
          *v26++ = v27 * -(v21 * v14);
          --v25;
        }

        while (v25);
      }

      v28 = *a6;
      v29 = a6[1] - *a6;
      if (v29)
      {
        v30 = v29 >> 3;
        v31 = __p;
        if (v30 <= 1)
        {
          v30 = 1;
        }

        do
        {
          v32 = *v31++;
          *v28 = v32 + *v28;
          ++v28;
          --v30;
        }

        while (v30);
      }

      if (__p)
      {
        v71 = __p;
        operator delete(__p);
      }
    }

    while (v10-- > 0);
  }

  if (a5 > 0)
  {
    v34 = *(a3 + 3 * (v67 % 0xA));
    v35 = *(a3 + 3 * (v67 % 0xA) + 1) - v34;
    if (v35)
    {
      v36 = v35 >> 3;
      if (v36 <= 1)
      {
        v36 = 1;
      }

      v37 = 0.0;
      do
      {
        v38 = *v34++;
        v37 = v37 + v38 * v38;
        --v36;
      }

      while (v36);
    }

    else
    {
      v37 = 0.0;
    }

    v39 = *a6;
    v40 = a6[1] - *a6;
    if (v40)
    {
      v41 = 1.0 / a4[v67 % 0xA] / v37;
      v42 = v40 >> 3;
      if ((v40 >> 3) <= 1)
      {
        v42 = 1;
      }

      do
      {
        *v39 = v41 * *v39;
        ++v39;
        --v42;
      }

      while (v42);
    }
  }

  if ((v69 & 0x80000000) == 0)
  {
    v43 = 0;
    do
    {
      v44 = (v11 + v43) % 10;
      v45 = *(a3 + 3 * v44);
      v46 = 0.0;
      v47 = *(a3 + 3 * v44 + 1) - v45;
      if (v47)
      {
        v48 = v47 >> 3;
        v49 = *a6;
        if (v48 <= 1)
        {
          v48 = 1;
        }

        do
        {
          v50 = *v45++;
          v51 = v50;
          v52 = *v49++;
          v46 = v46 + v51 * v52;
          --v48;
        }

        while (v48);
      }

      v53 = a4[v44];
      v54 = (a2 + 24 * v44);
      v55 = *&v72[v43];
      Vec::Vec(&__p, v54[1] - *v54, 0.0);
      v56 = *v54;
      v57 = v54[1] - *v54;
      if (v57)
      {
        v58 = v57 >> 3;
        v59 = __p;
        if (v58 <= 1)
        {
          v58 = 1;
        }

        do
        {
          v60 = *v56++;
          *v59++ = (v55 - v53 * v46) * v60;
          --v58;
        }

        while (v58);
      }

      v61 = *a6;
      v62 = a6[1] - *a6;
      if (v62)
      {
        v63 = v62 >> 3;
        v64 = __p;
        if (v63 <= 1)
        {
          v63 = 1;
        }

        do
        {
          v65 = *v64++;
          *v61 = v65 + *v61;
          ++v61;
          --v63;
        }

        while (v63);
      }

      if (__p)
      {
        v71 = __p;
        operator delete(__p);
      }

      ++v43;
    }

    while (v43 != v69 + 1);
  }

  v66 = *MEMORY[0x1E69E9840];
}

void sub_19D4CF6A0(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

void ME_Model::perform_LBFGS(uint64_t a1@<X0>, uint64_t *a2@<X1>, uint64_t a3@<X2>, void *a4@<X8>)
{
  v75 = *MEMORY[0x1E69E9840];
  v6 = *a2;
  v7 = a2[1];
  v9 = (v7 - v6) >> 3;
  v67 = 0;
  v68 = 0;
  v69 = 0;
  std::vector<double>::__init_with_size[abi:ne200100]<double *,double *>(&v67, v6, v7, v9);
  Vec::Vec(&v65, v9, 0.0);
  Vec::Vec(v64, v9, 0.0);
  v10 = ME_Model::FunctionGradient(a1, &v67, &v65);
  for (i = 0; i != 30; i += 3)
  {
    Vec::Vec(&v74[i], 0, 0.0);
  }

  for (j = 0; j != 30; j += 3)
  {
    Vec::Vec(&v73[j], 0, 0.0);
  }

  if (LBFGS_MAX_ITER >= 1)
  {
    v13 = 0;
    v14 = 1;
    v15 = 1.0;
    do
    {
      v16 = *(a1 + 24);
      if (v16 >= 1 && v14 > v16)
      {
        break;
      }

      if (a3)
      {
        if ((v13 & 1) == 0)
        {
          v18 = *(a1 + 384);
          if (v18 < v15 && (v18 > 0.0 || v15 > 0.05))
          {
            snprintf(__str, 0x100uLL, "Iteration %d training accuracy %.6f", v14, 1.0 - v18);
            v19 = 1.0 - *(a1 + 384);
            (*(a3 + 16))(a3, __str, v14, v19);
            v15 = *(a1 + 384);
            v14 = (v14 + 1);
          }
        }
      }

      v20 = v65;
      if (v66 == v65)
      {
        v22 = 0.0;
      }

      else
      {
        v21 = (v66 - v65) >> 3;
        if (v21 <= 1)
        {
          v21 = 1;
        }

        v22 = 0.0;
        do
        {
          v23 = *v20++;
          v22 = v22 + v23 * v23;
          --v21;
        }

        while (v21);
      }

      if (sqrt(v22) < 0.0001)
      {
        break;
      }

      approximate_Hg(&v65, v74, v73, v72, v13, &__p);
      Vec::Vec(__str, (v63 - __p) >> 3, 0.0);
      v24 = __p;
      if (v63 != __p)
      {
        v25 = (v63 - __p) >> 3;
        v26 = *__str;
        if (v25 <= 1)
        {
          v25 = 1;
        }

        do
        {
          v27 = *v24++;
          *v26 = -v27;
          v26 += 8;
          --v25;
        }

        while (v25);
      }

      std::vector<double>::__assign_with_size[abi:ne200100]<double *,double *>(v64, *__str, v71, &v71[-*__str] >> 3);
      if (*__str)
      {
        v71 = *__str;
        operator delete(*__str);
      }

      if (__p)
      {
        v63 = __p;
        operator delete(__p);
      }

      Vec::Vec(__str, v9, 0.0);
      Vec::Vec(&__p, v9, 0.0);
      ME_Model::backtracking_line_search(a1, &v67, &v65, v10, v64, __str, &__p);
      v10 = v28;
      Vec::Vec(&v60, &v71[-*__str] >> 3, 0.0);
      v29 = *__str;
      if (v71 != *__str)
      {
        v30 = &v71[-*__str] >> 3;
        v31 = v67;
        v32 = v60;
        if (v30 <= 1)
        {
          v30 = 1;
        }

        do
        {
          v33 = *v29;
          v29 += 8;
          v34 = v33;
          v35 = *v31++;
          *v32++ = v34 - v35;
          --v30;
        }

        while (v30);
      }

      v36 = v13 % 0xAu;
      v37 = &v74[3 * v36];
      if (v37 != &v60)
      {
        std::vector<double>::__assign_with_size[abi:ne200100]<double *,double *>(&v74[3 * v36], v60, v61, (v61 - v60) >> 3);
      }

      if (v60)
      {
        v61 = v60;
        operator delete(v60);
      }

      Vec::Vec(&v60, (v63 - __p) >> 3, 0.0);
      v38 = __p;
      if (v63 != __p)
      {
        v39 = (v63 - __p) >> 3;
        v40 = v65;
        v41 = v60;
        if (v39 <= 1)
        {
          v39 = 1;
        }

        do
        {
          v42 = *v38++;
          v43 = v42;
          v44 = *v40++;
          *v41++ = v43 - v44;
          --v39;
        }

        while (v39);
      }

      v45 = &v73[3 * v36];
      if (v45 != &v60)
      {
        std::vector<double>::__assign_with_size[abi:ne200100]<double *,double *>(&v73[3 * v36], v60, v61, (v61 - v60) >> 3);
      }

      if (v60)
      {
        v61 = v60;
        operator delete(v60);
      }

      v46 = *v45;
      v47 = v45[1] - *v45;
      if (v47)
      {
        v48 = v47 >> 3;
        v49 = *v37;
        if (v48 <= 1)
        {
          v48 = 1;
        }

        v50 = 0.0;
        do
        {
          v51 = *v46++;
          v52 = v51;
          v53 = *v49++;
          v50 = v50 + v52 * v53;
          --v48;
        }

        while (v48);
      }

      else
      {
        v50 = 0.0;
      }

      v72[v36] = 1.0 / v50;
      std::vector<double>::__assign_with_size[abi:ne200100]<double *,double *>(&v67, *__str, v71, &v71[-*__str] >> 3);
      std::vector<double>::__assign_with_size[abi:ne200100]<double *,double *>(&v65, __p, v63, (v63 - __p) >> 3);
      if (__p)
      {
        v63 = __p;
        operator delete(__p);
      }

      if (*__str)
      {
        v71 = *__str;
        operator delete(*__str);
      }

      ++v13;
    }

    while (v13 < LBFGS_MAX_ITER);
  }

  *a4 = 0;
  a4[1] = 0;
  a4[2] = 0;
  std::vector<double>::__init_with_size[abi:ne200100]<double *,double *>(a4, v67, v68, (v68 - v67) >> 3);
  for (k = 0; k != -30; k -= 3)
  {
    v55 = v73[k + 27];
    if (v55)
    {
      v73[k + 28] = v55;
      operator delete(v55);
    }
  }

  for (m = 0; m != -30; m -= 3)
  {
    v57 = v74[m + 27];
    if (v57)
    {
      v74[m + 28] = v57;
      operator delete(v57);
    }
  }

  if (v64[0])
  {
    v64[1] = v64[0];
    operator delete(v64[0]);
  }

  if (v65)
  {
    v66 = v65;
    operator delete(v65);
  }

  if (v67)
  {
    v68 = v67;
    operator delete(v67);
  }

  v58 = *MEMORY[0x1E69E9840];
}

void sub_19D4CFC2C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *a14, uint64_t a15, uint64_t a16, void *a17, uint64_t a18, uint64_t a19, void *__p, uint64_t a21, uint64_t a22, void *a23, uint64_t a24, uint64_t a25, void *a26)
{
  v27 = &STACK[0x2D0];
  v28 = -240;
  while (1)
  {
    v29 = *(v27 - 1);
    if (v29)
    {
      *v27 = v29;
      operator delete(v29);
    }

    v27 -= 3;
    v28 += 24;
    if (!v28)
    {
      v30 = &STACK[0x3C0];
      v31 = -240;
      while (1)
      {
        v32 = *(v30 - 1);
        if (v32)
        {
          *v30 = v32;
          operator delete(v32);
        }

        v30 -= 3;
        v31 += 24;
        if (!v31)
        {
          if (__p)
          {
            operator delete(__p);
          }

          if (a23)
          {
            operator delete(a23);
          }

          if (a26)
          {
            operator delete(a26);
          }

          _Unwind_Resume(a1);
        }
      }
    }
  }
}

void sub_19D4CFD64(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, uint64_t a61, uint64_t a62, uint64_t a63)
{
  if (v71)
  {
    v72 = -v71;
    v73 = &a71 + v71 - 24;
    do
    {
      v74 = *v73;
      if (*v73)
      {
        *(v73 + 1) = v74;
        operator delete(v74);
      }

      v73 -= 24;
      v72 += 24;
    }

    while (v72);
  }

  JUMPOUT(0x19D4CFD04);
}

void sub_19D4CFD9C()
{
  if (v0)
  {
    v1 = -v0;
    v2 = &STACK[0x2E0] + v0 - 24;
    do
    {
      v3 = *v2;
      if (*v2)
      {
        *(v2 + 1) = v3;
        operator delete(v3);
      }

      v2 -= 24;
      v1 += 24;
    }

    while (v1);
  }

  JUMPOUT(0x19D4CFD2CLL);
}

void requestContextualEmbeddingAssetsForEmbedding(void *a1)
{
  v1 = a1;
  if (([v1 hasAvailableAssets] & 1) == 0)
  {
    v2[0] = MEMORY[0x1E69E9820];
    v2[1] = 3221225472;
    v2[2] = __requestContextualEmbeddingAssetsForEmbedding_block_invoke;
    v2[3] = &unk_1E7629440;
    v3 = v1;
    [v3 requestEmbeddingAssetsWithCompletionHandler:v2];
  }
}

void sub_19D4D1020(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, char a49, uint64_t a50, uint64_t a51, uint64_t a52, char a53, uint64_t a54, uint64_t a55, uint64_t a56, char a57, uint64_t a58, uint64_t a59, uint64_t a60, char a61, uint64_t a62, uint64_t a63)
{
  _Block_object_dispose(&a49, 8);
  _Block_object_dispose(&a53, 8);
  _Block_object_dispose(&a57, 8);
  _Block_object_dispose(&a61, 8);
  _Block_object_dispose(&a65, 8);
  _Block_object_dispose((v65 - 208), 8);
  _Block_object_dispose((v65 - 176), 8);
  _Unwind_Resume(a1);
}

uint64_t copySampleDataEnumerator_0(void *a1, _BYTE *a2)
{
  v3 = [a1 nextInstance];
  v4 = v3;
  if (v3)
  {
    v5 = [v3 instanceDictionary];
  }

  else
  {
    v5 = 0;
    *a2 = 1;
  }

  return v5;
}

void __requestContextualEmbeddingAssetsForEmbedding_block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = a3;
  if (a2 == 2)
  {
    v6 = v5;
    NSLog(&cfstr_FailedToLoadAs.isa, *(a1 + 32), v5);
  }

  else if (a2 == 1)
  {
    v6 = v5;
    NSLog(&cfstr_AssetsNotAvail.isa, *(a1 + 32));
  }

  else
  {
    if (a2)
    {
      goto LABEL_8;
    }

    v6 = v5;
    NSLog(&cfstr_AssetsAreNowAv.isa, *(a1 + 32));
  }

  v5 = v6;
LABEL_8:
}

id _parameterValuesForHyperTuneValues(void *a1)
{
  v22 = *MEMORY[0x1E69E9840];
  v16 = [MEMORY[0x1E695DF90] dictionary];
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v2 = a1;
  v3 = [v2 countByEnumeratingWithState:&v17 objects:v21 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v18;
    v6 = 0x1E696A000uLL;
    do
    {
      for (i = 0; i != v4; ++i)
      {
        if (*v18 != v5)
        {
          objc_enumerationMutation(v2);
        }

        v8 = *(*(&v17 + 1) + 8 * i);
        v9 = [v2 objectForKey:v8];
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v10 = v9;
          if ([v10 count] == 1)
          {
            [v10 firstObject];
            v12 = v11 = v6;
            [v16 setObject:v12 forKey:v8];

            v6 = v11;
          }

          else
          {
            [v16 setObject:v10 forKey:v8];
          }
        }

        else
        {
          v13 = *(v6 + 3480);
          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            [v16 setObject:v9 forKey:v8];
          }
        }
      }

      v4 = [v2 countByEnumeratingWithState:&v17 objects:v21 count:16];
    }

    while (v4);
  }

  v14 = *MEMORY[0x1E69E9840];

  return v16;
}

void createMRLModelFromTrainingDataSet(void *a1, uint64_t a2, uint64_t a3, void *a4)
{
  v28[3] = *MEMORY[0x1E69E9840];
  v6 = a1;
  v22 = a4;
  v28[0] = 0;
  v27[0] = 0;
  v27[1] = 0;
  v26[1] = 0;
  v26[0] = [v6 numberOfTrainingInstances];
  v25 = [v6 numberOfValidationInstances];
  [v6 numberOfLabels];
  [v6 numberOfVocabularyEntries];
  objc_alloc_init(NLNumberGenerator);
  v23 = [v6 labelMap];
  v24 = [v6 vocabularyMap];
  v21 = [MEMORY[0x1E696AD60] string];
  v20 = [MEMORY[0x1E696AD60] string];
  if (v26[0])
  {
    v7 = 0;
    v8 = 0;
    v9 = a3;
    do
    {
      v10 = [v6 trainingInstanceAtIndex:v7];
      v11 = v10;
      if (v10)
      {
        v12 = [v10 formattedLineWithLabelMap:v23 vocabularyMap:v24];
        v13 = v12;
        if (v12)
        {
          [(NSString *)v21 appendFormat:@"%@\n", v12];
          v14 = v9 / v26[0];
          if (v9 / v26[0] > v8)
          {
            reportInstanceCompletionToTrainer(v22, v9 / v26[0], a3, 2);
          }
        }

        else
        {
          v14 = v8;
        }

        v8 = v14;
      }

      ++v7;
      v9 += a3;
    }

    while (v7 < v26[0]);
  }

  if (v25)
  {
    for (i = 0; i < v25; ++i)
    {
      v16 = [v6 validationInstanceAtIndex:i];
      v17 = v16;
      if (v16)
      {
        v18 = [v16 formattedLineWithLabelMap:v23 vocabularyMap:v24];
        v19 = v18;
        if (v18)
        {
          [(NSString *)v20 appendFormat:@"%@\n", v18];
        }
      }
    }
  }

  prepareData(v21, v28, v27, v26);
}

void prepareData(NSString *a1, const float **a2, const int **a3, unint64_t *a4)
{
  v4 = a1;
  v7 = 0;
  v8 = &v7;
  v9 = 0x2020000000;
  v10 = 0;
  v6[0] = 0;
  v6[1] = v6;
  v6[2] = 0x2020000000;
  v6[3] = 0;
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = ___ZL11prepareDataP8NSStringPPKfPPKiPm_block_invoke;
  v5[3] = &unk_1E762A0B0;
  v5[4] = &v7;
  [(NSString *)v4 enumerateLinesUsingBlock:v5];
  v8[3];
  operator new[]();
}

void sub_19D4DCCF8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v14 - 96), 8);

  _Unwind_Resume(a1);
}

void *freeInputVectors(void *result, uint64_t a2)
{
  if (a2)
  {
    v2 = a2;
    v3 = result;
    do
    {
      if (*v3)
      {
        MEMORY[0x19EAFC110](*v3, 0xC0C80B8AA526DLL);
      }

      ++v3;
      --v2;
    }

    while (v2);
LABEL_8:

    JUMPOUT(0x19EAFC110);
  }

  if (result)
  {
    goto LABEL_8;
  }

  return result;
}

uint64_t freeData(uint64_t result, const int *a2)
{
  if (result)
  {
    result = MEMORY[0x19EAFC110](result, 0x1000C8052888210);
  }

  if (a2)
  {

    JUMPOUT(0x19EAFC110);
  }

  return result;
}

void ___ZL11prepareDataP8NSStringPPKfPPKiPm_block_invoke(uint64_t a1, void *a2)
{
  v7 = [a2 componentsSeparatedByString:@"\t"];
  if ([v7 count] == 2)
  {
    v3 = [v7 objectAtIndex:0];
    v4 = [v3 componentsSeparatedByString:@" "];

    v5 = [v7 objectAtIndex:1];
    v6 = [v5 componentsSeparatedByString:@" "];

    if ([v4 count] == 32 && objc_msgSend(v6, "count") == 32)
    {
      ++*(*(*(a1 + 32) + 8) + 24);
    }
  }
}

void ___ZL11prepareDataP8NSStringPPKfPPKiPm_block_invoke_2(void *a1, void *a2)
{
  v14 = a2;
  v3 = [v14 componentsSeparatedByString:@"\t"];
  if ([v3 count] == 2)
  {
    v4 = [v3 objectAtIndex:0];
    v5 = [v4 componentsSeparatedByString:@" "];

    v6 = [v3 objectAtIndex:1];
    v7 = [v6 componentsSeparatedByString:@" "];

    if ([v5 count] == 32 && objc_msgSend(v7, "count") == 32)
    {
      for (i = 0; i != 32; ++i)
      {
        v9 = [v5 objectAtIndex:i];
        [v9 floatValue];
        v11 = v10;

        v12 = [v7 objectAtIndex:i];
        v13 = [v12 intValue];

        *(a1[5] + (*(*(a1[4] + 8) + 24) << 7) + 4 * i) = v11;
        *(a1[6] + (*(*(a1[4] + 8) + 24) << 7) + 4 * i) = v13;
      }

      ++*(*(a1[4] + 8) + 24);
    }
  }
}

void requestWordEmbeddingAssetsForLanguage(void *a1)
{
  v1 = a1;
  v3[0] = MEMORY[0x1E69E9820];
  v3[1] = 3221225472;
  v3[2] = __requestWordEmbeddingAssetsForLanguage_block_invoke;
  v3[3] = &unk_1E7629440;
  v4 = v1;
  v2 = v1;
  [NLTagger requestAssetsForLanguage:v2 tagScheme:@"WordEmbedding" completionHandler:v3];
}

void requestContextualEmbeddingAssetsForEmbedding_0(void *a1)
{
  v1 = a1;
  if (([v1 hasAvailableAssets] & 1) == 0)
  {
    v2[0] = MEMORY[0x1E69E9820];
    v2[1] = 3221225472;
    v2[2] = __requestContextualEmbeddingAssetsForEmbedding_block_invoke_0;
    v2[3] = &unk_1E7629440;
    v3 = v1;
    [v3 requestEmbeddingAssetsWithCompletionHandler:v2];
  }
}

void sub_19D4DF428(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, uint64_t a61, uint64_t a62, uint64_t a63)
{
  _Block_object_dispose(&a72, 8);
  _Block_object_dispose((v72 - 176), 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__4(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

CFMutableDictionaryRef copySampleDataEnumerator_1(void *a1, unint64_t a2, int a3, void *a4, void *a5, void *a6, void *a7, uint64_t a8, _BYTE *a9)
{
  v16 = a1;
  v42 = a4;
  v17 = a5;
  v18 = a6;
  v44 = a7;
  v19 = [MEMORY[0x1E695DF70] array];
  v45 = [MEMORY[0x1E695DF70] array];
  value = [MEMORY[0x1E695DF70] array];
  if (a3)
  {
    [v16 rewindAndShuffle:a8];
  }

  v20 = [v16 index];
  v21 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%llu->%llu", v20, a2 + v20 - 1];
  v22 = [v44 objectForKey:v21];

  if (v22)
  {
    for (i = CFDictionaryCreateMutableCopy(0, 0, v22); a2; --a2)
    {
      v24 = [v16 nextInstance];
    }

LABEL_6:
    v25 = v42;
    goto LABEL_24;
  }

  v41 = v20;
  v40 = a2 + v20 - 1;
  if ([v19 count] < a2)
  {
    while (1)
    {
      v26 = [v16 nextInstance];
      i = v26;
      if (!v26)
      {
        break;
      }

      v27 = [(__CFDictionary *)v26 tokens];
      v28 = v27;
      if (v17)
      {
        normalizedQuoteTokens(v27);
      }

      else
      {
        formattedTokens(v27);
      }
      v29 = ;

      v30 = [(__CFDictionary *)i label];
      v31 = [v18 objectForKey:v30];

      v32 = [v31 unsignedIntegerValue];
      if (v31)
      {
        v33 = v32;
        if (v32)
        {
          if ([v29 count])
          {
            [v19 addObject:v29];
            v34 = [(__CFDictionary *)i string];
            [v45 addObject:v34];

            v35 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:v33 - 1];
            [value addObject:v35];

            v22 = 0;
          }
        }
      }

      if ([v19 count] >= a2)
      {
        goto LABEL_17;
      }
    }

    *a9 = 1;
    goto LABEL_6;
  }

LABEL_17:
  if (v17)
  {
    v36 = [v17 vectorsForTokenizedSentences:v19 untokenizedSentences:v45 maxTokens:50];
    v25 = v42;
  }

  else
  {
    v25 = v42;
    v36 = [v42 vectorsForTokenizedSentences:v19 untokenizedSentences:v45 maxTokens:50];
  }

  if (v36)
  {
    i = CFDictionaryCreateMutable(0, 0, MEMORY[0x1E695E528], MEMORY[0x1E695E9E8]);
    CFDictionaryAddValue(i, *MEMORY[0x1E69B26F8], v36);
    CFDictionaryAddValue(i, *MEMORY[0x1E69B2700], value);
    v37 = [MEMORY[0x1E695DF20] dictionaryWithDictionary:i];
    v38 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%llu->%llu", v41, v40];
    [v44 setObject:v37 forKey:v38];

    v22 = 0;
  }

  else
  {
    i = 0;
  }

LABEL_24:
  return i;
}

id normalizedQuoteTokens(void *a1)
{
  v19 = *MEMORY[0x1E69E9840];
  v1 = a1;
  v2 = [MEMORY[0x1E695DF70] array];
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v3 = v1;
  v4 = [v3 countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v15;
LABEL_3:
    v7 = 0;
    while (1)
    {
      if (*v15 != v6)
      {
        objc_enumerationMutation(v3);
      }

      v8 = *(*(&v14 + 1) + 8 * v7);
      if ([v2 count] > 0x27)
      {
        break;
      }

      v9 = v8;
      [v9 rangeOfString:@"’"];
      if (v10)
      {
        v11 = [v9 stringByReplacingOccurrencesOfString:@"’" withString:@"'"];

        v9 = v11;
      }

      [v2 addObject:v9];

      if (v5 == ++v7)
      {
        v5 = [v3 countByEnumeratingWithState:&v14 objects:v18 count:16];
        if (v5)
        {
          goto LABEL_3;
        }

        break;
      }
    }
  }

  v12 = *MEMORY[0x1E69E9840];

  return v2;
}

id formattedTokens(void *a1)
{
  v35 = *MEMORY[0x1E69E9840];
  v1 = a1;
  v2 = [MEMORY[0x1E695DF70] array];
  if (formattedTokens_onceToken != -1)
  {
    formattedTokens_cold_1();
  }

  v31 = 0u;
  v32 = 0u;
  v29 = 0u;
  v30 = 0u;
  obj = v1;
  v3 = [obj countByEnumeratingWithState:&v29 objects:v34 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v30;
    v21 = *v30;
    do
    {
      v6 = 0;
      v22 = v4;
      do
      {
        if (*v30 != v5)
        {
          objc_enumerationMutation(obj);
        }

        v7 = *(*(&v29 + 1) + 8 * v6);
        if ([v2 count] <= 0x31)
        {
          [v7 rangeOfCharacterFromSet:formattedTokens_alphanumericCharacterSet];
          if (v8)
          {
            v24 = v6;
            v27 = 0u;
            v28 = 0u;
            v25 = 0u;
            v26 = 0u;
            v9 = [v7 componentsSeparatedByCharactersInSet:formattedTokens_internalSeparatorCharacterSet];
            v10 = [v9 countByEnumeratingWithState:&v25 objects:v33 count:16];
            if (v10)
            {
              v11 = v10;
              v12 = *v26;
              do
              {
                for (i = 0; i != v11; ++i)
                {
                  if (*v26 != v12)
                  {
                    objc_enumerationMutation(v9);
                  }

                  v14 = *(*(&v25 + 1) + 8 * i);
                  if ([v2 count] <= 0x31)
                  {
                    [v14 rangeOfCharacterFromSet:formattedTokens_alphanumericCharacterSet];
                    if (v15)
                    {
                      v16 = [v14 lowercaseString];
                      [v16 rangeOfString:@"’"];
                      if (v17)
                      {
                        v18 = [v16 stringByReplacingOccurrencesOfString:@"’" withString:@"'"];

                        v16 = v18;
                      }

                      [v2 addObject:v16];
                    }
                  }
                }

                v11 = [v9 countByEnumeratingWithState:&v25 objects:v33 count:16];
              }

              while (v11);
            }

            v5 = v21;
            v4 = v22;
            v6 = v24;
          }
        }

        ++v6;
      }

      while (v6 != v4);
      v4 = [obj countByEnumeratingWithState:&v29 objects:v34 count:16];
    }

    while (v4);
  }

  v19 = *MEMORY[0x1E69E9840];

  return v2;
}

void __requestWordEmbeddingAssetsForLanguage_block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = a3;
  if (a2 == 2)
  {
    v6 = v5;
    NSLog(&cfstr_FailedToLoadEm_5.isa, *(a1 + 32), v5);
  }

  else if (a2 == 1)
  {
    v6 = v5;
    NSLog(&cfstr_EmbeddingAsset_0.isa, *(a1 + 32));
  }

  else
  {
    if (a2)
    {
      goto LABEL_8;
    }

    v6 = v5;
    NSLog(&cfstr_EmbeddingAsset.isa, *(a1 + 32));
  }

  v5 = v6;
LABEL_8:
}

void __requestContextualEmbeddingAssetsForEmbedding_block_invoke_0(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = a3;
  if (a2 == 2)
  {
    v6 = v5;
    NSLog(&cfstr_FailedToLoadAs.isa, *(a1 + 32), v5);
  }

  else if (a2 == 1)
  {
    v6 = v5;
    NSLog(&cfstr_AssetsNotAvail.isa, *(a1 + 32));
  }

  else
  {
    if (a2)
    {
      goto LABEL_8;
    }

    v6 = v5;
    NSLog(&cfstr_AssetsAreNowAv.isa, *(a1 + 32));
  }

  v5 = v6;
LABEL_8:
}

uint64_t __formattedTokens_block_invoke()
{
  v0 = [MEMORY[0x1E696AB08] alphanumericCharacterSet];
  v1 = formattedTokens_alphanumericCharacterSet;
  formattedTokens_alphanumericCharacterSet = v0;

  formattedTokens_internalSeparatorCharacterSet = [MEMORY[0x1E696AB08] characterSetWithCharactersInString:{@"., -_/"}];;

  return MEMORY[0x1EEE66BB8]();
}

CFRange CFStringTokenizerGetCurrentTokenRange(CFStringTokenizerRef tokenizer)
{
  v1 = MEMORY[0x1EEDB7B38](tokenizer);
  result.length = v2;
  result.location = v1;
  return result;
}

NSRange NSUnionRange(NSRange range1, NSRange range2)
{
  v2 = MEMORY[0x1EEDC7160](range1.location, range1.length, range2.location, range2.length);
  result.length = v3;
  result.location = v2;
  return result;
}

void operator delete[]()
{
    ;
  }
}

void operator delete(void *__p)
{
    ;
  }
}

void operator delete()
{
    ;
  }
}

void operator new[]()
{
    ;
  }
}

void operator new()
{
    ;
  }
}