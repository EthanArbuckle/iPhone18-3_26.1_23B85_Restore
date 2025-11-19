void sub_1DDFEE830(_Unwind_Exception *a1, int a2)
{
  if (a2)
  {
    __clang_call_terminate(a1);
  }

  _Unwind_Resume(a1);
}

void sub_1DDFEF1A8(uint64_t a1, int a2)
{
  if (!a2)
  {
    JUMPOUT(0x1DDFEF140);
  }

  JUMPOUT(0x1DDFEF054);
}

void sub_1DDFEF1B0(uint64_t a1, int a2)
{
  if (!a2)
  {
    JUMPOUT(0x1DDFEF140);
  }

  JUMPOUT(0x1DDFEF054);
}

void sub_1DDFEF1B8(uint64_t a1, int a2)
{
  if (!a2)
  {
    JUMPOUT(0x1DDFEF140);
  }

  JUMPOUT(0x1DDFEF054);
}

void sub_1DDFEF1C0(uint64_t a1, int a2)
{
  if (!a2)
  {
    JUMPOUT(0x1DDFEF140);
  }

  JUMPOUT(0x1DDFEF054);
}

void sub_1DDFEF1C8(uint64_t a1, int a2)
{
  if (!a2)
  {
    JUMPOUT(0x1DDFEF140);
  }

  JUMPOUT(0x1DDFEF054);
}

void NeuralNetLoader<FullyConnectedLayerBNNS<short>>::loadLayers(uint64_t a1, const __CFDictionary *a2, uint64_t *a3)
{
  v465 = *MEMORY[0x1E69E9840];
  if (a3[1] != *a3)
  {
    v5 = 0;
    v6 = MEMORY[0x1E69E9C10];
    do
    {
      std::to_string(v460, v5);
      v7 = std::string::insert(v460, 0, "Layer", 5uLL);
      v8 = *&v7->__r_.__value_.__l.__data_;
      v458 = v7->__r_.__value_.__r.__words[2];
      v457 = v8;
      v7->__r_.__value_.__l.__size_ = 0;
      v7->__r_.__value_.__r.__words[2] = 0;
      v7->__r_.__value_.__r.__words[0] = 0;
      if (v464.__r_.__value_.__s.__data_[3] < 0)
      {
        operator delete(*v460);
      }

      if (v458 >= 0)
      {
        v9 = &v457;
      }

      else
      {
        v9 = v457;
      }

      if (v9)
      {
        if (v458 >= 0)
        {
          v10 = HIBYTE(v458);
        }

        else
        {
          v10 = *(&v457 + 1);
        }

        v9 = CFStringCreateWithBytes(0, v9, v10, 0x8000100u, 0);
        v456 = v9;
        if (!v9)
        {
          exception = __cxa_allocate_exception(0x10uLL);
          std::runtime_error::runtime_error(exception, "Could not construct");
        }
      }

      else
      {
        v456 = 0;
      }

      Value = CFDictionaryGetValue(a2, v9);
      v12 = Value;
      if (!Value)
      {
        v279 = 0;
        v455 = 0;
        v280 = *(a1 + 16);
        if (v280)
        {
          v279 = *v280;
        }

        if (os_log_type_enabled(v279, OS_LOG_TYPE_ERROR))
        {
          v281 = &v457;
          if (v458 < 0)
          {
            v281 = v457;
          }

          *v460 = 136315906;
          *&v460[4] = "NeuralNetLoader.cpp";
          v461 = 1024;
          v462 = 60;
          v463 = 1024;
          LODWORD(v464.__r_.__value_.__l.__data_) = -66741;
          WORD2(v464.__r_.__value_.__r.__words[0]) = 2080;
          *(v464.__r_.__value_.__r.__words + 6) = v281;
          _os_log_impl(&dword_1DDB85000, v279, OS_LOG_TYPE_ERROR, "%25s:%-5d EXCEPTION (%d) [topLevelDict_ref.get_cf() == nullptr is false]: Missing dictionary: %s", v460, 0x22u);
        }

        v282 = __cxa_allocate_exception(0x10uLL);
        *v282 = &unk_1F593B0D8;
        v282[2] = -66741;
      }

      CFRetain(Value);
      v455 = v12;
      applesauce::CF::TypeRef::operator applesauce::CF::DictionaryRef(&v454, &v455);
      v13 = *(a1 + 16);
      if (v13)
      {
        v14 = *v13;
        if (!*v13)
        {
          goto LABEL_25;
        }
      }

      else
      {
        v14 = v6;
      }

      if (os_log_type_enabled(v14, OS_LOG_TYPE_INFO))
      {
        if (v458 >= 0)
        {
          v15 = &v457;
        }

        else
        {
          v15 = v457;
        }

        *v460 = 136315650;
        *&v460[4] = "NeuralNetLoader.cpp";
        v461 = 1024;
        v462 = 64;
        v463 = 2080;
        v464.__r_.__value_.__r.__words[0] = v15;
        _os_log_impl(&dword_1DDB85000, v14, OS_LOG_TYPE_INFO, "%25s:%-5d Found the dictionary: %s\n", v460, 0x1Cu);
      }

LABEL_25:
      v16 = CFDictionaryGetValue(v454, @"InputVectorDescriptor");
      v17 = v16;
      if (!v16)
      {
        v276 = 0;
        v453 = 0;
        v277 = *(a1 + 16);
        if (v277)
        {
          v276 = *v277;
        }

        if (os_log_type_enabled(v276, OS_LOG_TYPE_ERROR))
        {
          *v460 = 136315650;
          *&v460[4] = "NeuralNetLoader.cpp";
          v461 = 1024;
          v462 = 75;
          v463 = 1024;
          LODWORD(v464.__r_.__value_.__l.__data_) = -66741;
          _os_log_impl(&dword_1DDB85000, v276, OS_LOG_TYPE_ERROR, "%25s:%-5d EXCEPTION (%d) [inputDescDict_ref.get_cf() == nullptr is false]: Missing dictionary InputVectorDescriptor.", v460, 0x18u);
        }

        v278 = __cxa_allocate_exception(0x10uLL);
        *v278 = &unk_1F593B0D8;
        v278[2] = -66741;
      }

      CFRetain(v16);
      v453 = v17;
      applesauce::CF::TypeRef::operator applesauce::CF::DictionaryRef(&v452, &v453);
      v18 = *(a1 + 16);
      if (v18)
      {
        v19 = *v18;
        if (!*v18)
        {
          v451 = 0;
          goto LABEL_38;
        }
      }

      else
      {
        v19 = v6;
      }

      if (os_log_type_enabled(v19, OS_LOG_TYPE_DEBUG))
      {
        *v460 = 136315394;
        *&v460[4] = "NeuralNetLoader.cpp";
        v461 = 1024;
        v462 = 79;
        _os_log_impl(&dword_1DDB85000, v19, OS_LOG_TYPE_DEBUG, "%25s:%-5d Found the dictionary InputVectorDescriptor.", v460, 0x12u);
        v18 = *(a1 + 16);
      }

      v451 = 0;
      if (v18)
      {
        v20 = *v18;
        if (!*v18)
        {
          goto LABEL_38;
        }
      }

      else
      {
        v20 = v6;
      }

      if (os_log_type_enabled(v20, OS_LOG_TYPE_DEBUG))
      {
        *v460 = 136315394;
        *&v460[4] = "NeuralNetLoader.cpp";
        v461 = 1024;
        v462 = 83;
        _os_log_impl(&dword_1DDB85000, v20, OS_LOG_TYPE_DEBUG, "%25s:%-5d Loading from inputDescDict.", v460, 0x12u);
      }

LABEL_38:
      if (DictionaryBlobReader::ReadScalarFromDictionary<unsigned int>(*a1, v452, @"Size", &v451))
      {
        v232 = *(a1 + 16);
        if (v232)
        {
          v233 = *v232;
        }

        else
        {
          v233 = 0;
        }

        if (os_log_type_enabled(v233, OS_LOG_TYPE_ERROR))
        {
          *v460 = 136315650;
          *&v460[4] = "NeuralNetLoader.cpp";
          v461 = 1024;
          v462 = 86;
          v463 = 1024;
          LODWORD(v464.__r_.__value_.__l.__data_) = -66741;
          _os_log_impl(&dword_1DDB85000, v233, OS_LOG_TYPE_ERROR, "%25s:%-5d EXCEPTION (%d) [err != noErr is false]: Missing scalar Size from dictionary InputVectorDescriptor.", v460, 0x18u);
        }

        v260 = __cxa_allocate_exception(0x10uLL);
        *v260 = &unk_1F593B0D8;
        v260[2] = -66741;
      }

      v22 = *a3 + 968 * v5;
      *(v22 + 4) = 0x10000;
      v23 = v451;
      *(v22 + 8) = v451;
      *(v22 + 72) = 1;
      *v460 = 0;
      std::vector<float>::resize((v22 + 792), v23, v460, v21);
      v24 = *a3 + 968 * v5;
      *v460 = 0;
      std::vector<short>::resize((v24 + 912), v451, v460);
      v25 = CFDictionaryGetValue(v452, @"DataType");
      v26 = v25;
      if (!v25)
      {
        v283 = 0;
        v450 = 0;
        v284 = *(a1 + 16);
        if (v284)
        {
          v283 = *v284;
        }

        if (os_log_type_enabled(v283, OS_LOG_TYPE_ERROR))
        {
          *v460 = 136315650;
          *&v460[4] = "NeuralNetLoader.cpp";
          v461 = 1024;
          v462 = 98;
          v463 = 1024;
          LODWORD(v464.__r_.__value_.__l.__data_) = -66741;
          _os_log_impl(&dword_1DDB85000, v283, OS_LOG_TYPE_ERROR, "%25s:%-5d EXCEPTION (%d) [inputDataType_ref.get_cf() == nullptr is false]: Missing dictionary DataType.", v460, 0x18u);
        }

        v285 = __cxa_allocate_exception(0x10uLL);
        *v285 = &unk_1F593B0D8;
        v285[2] = -66741;
      }

      CFRetain(v25);
      v450 = v26;
      applesauce::CF::TypeRef::operator applesauce::CF::StringRef(&v449, &v450);
      v27 = *(a1 + 16);
      if (v27)
      {
        v28 = *v27;
        if (!*v27)
        {
          goto LABEL_51;
        }
      }

      else
      {
        v28 = v6;
      }

      if (os_log_type_enabled(v28, OS_LOG_TYPE_DEBUG))
      {
        v29 = CFCopyDescription(v449);
        v459 = v29;
        applesauce::CF::details::CFString_get_value<true>(__p, v29);
        if (v29)
        {
          CFRelease(v29);
        }

        v30 = __p;
        if (v448 < 0)
        {
          v30 = __p[0];
        }

        *v460 = 136315906;
        *&v460[4] = "NeuralNetLoader.cpp";
        v461 = 1024;
        v462 = 102;
        v463 = 2080;
        v464.__r_.__value_.__r.__words[0] = v30;
        LOWORD(v464.__r_.__value_.__r.__words[1]) = 2048;
        *(&v464.__r_.__value_.__r.__words[1] + 2) = v5;
        _os_log_impl(&dword_1DDB85000, v28, OS_LOG_TYPE_DEBUG, "%25s:%-5d Successfully retrieved input data type (%s) for Layer %zu.", v460, 0x26u);
        if (v448 < 0)
        {
          operator delete(__p[0]);
        }
      }

LABEL_51:
      v31 = *(a1 + 8);
      if (v31 != 8)
      {
        goto LABEL_63;
      }

      v32 = v449;
      if (v449)
      {
        CFRetain(v449);
      }

      v446 = v32;
      std::string::basic_string[abi:ne200100]<0>(v444, "int8");
      std::string::basic_string[abi:ne200100]<0>(v442, "Sint8");
      v33 = matchiEither(&v446, v444, v442);
      if (v443 < 0)
      {
        operator delete(v442[0]);
      }

      if ((v445 & 0x80000000) == 0)
      {
        if (!v32)
        {
          goto LABEL_61;
        }

LABEL_60:
        CFRelease(v32);
        goto LABEL_61;
      }

      operator delete(v444[0]);
      if (v32)
      {
        goto LABEL_60;
      }

LABEL_61:
      v34 = 131080;
      if (v33)
      {
        goto LABEL_98;
      }

      v31 = *(a1 + 8);
LABEL_63:
      if (v31 != 16)
      {
        goto LABEL_76;
      }

      v35 = v449;
      if (v449)
      {
        CFRetain(v449);
      }

      v441 = v35;
      std::string::basic_string[abi:ne200100]<0>(v439, "int16");
      std::string::basic_string[abi:ne200100]<0>(v437, "SInt16");
      v36 = matchiEither(&v441, v439, v437);
      if (v438 < 0)
      {
        operator delete(v437[0]);
      }

      if ((v440 & 0x80000000) == 0)
      {
        if (!v35)
        {
          goto LABEL_73;
        }

LABEL_72:
        CFRelease(v35);
        goto LABEL_73;
      }

      operator delete(v439[0]);
      if (v35)
      {
        goto LABEL_72;
      }

LABEL_73:
      if (v36)
      {
        v34 = 131088;
        goto LABEL_98;
      }

      v31 = *(a1 + 8);
LABEL_76:
      if (v31 != 32)
      {
        goto LABEL_89;
      }

      v37 = v449;
      if (v449)
      {
        CFRetain(v449);
      }

      v436 = v37;
      std::string::basic_string[abi:ne200100]<0>(v434, "int32");
      std::string::basic_string[abi:ne200100]<0>(v432, "Sint32");
      v38 = matchiEither(&v436, v434, v432);
      if (v433 < 0)
      {
        operator delete(v432[0]);
      }

      if ((v435 & 0x80000000) == 0)
      {
        if (!v37)
        {
          goto LABEL_86;
        }

LABEL_85:
        CFRelease(v37);
        goto LABEL_86;
      }

      operator delete(v434[0]);
      if (v37)
      {
        goto LABEL_85;
      }

LABEL_86:
      if (v38)
      {
        v34 = 131104;
        goto LABEL_98;
      }

      v31 = *(a1 + 8);
LABEL_89:
      if (v31)
      {
        goto LABEL_723;
      }

      v39 = v449;
      if (v449)
      {
        CFRetain(v449);
      }

      v431 = v39;
      std::string::basic_string[abi:ne200100]<0>(v429, "float32");
      v40 = matchiString(&v431, v429);
      if (v430 < 0)
      {
        operator delete(v429[0]);
        if (!v39)
        {
          goto LABEL_97;
        }

LABEL_96:
        CFRelease(v39);
        goto LABEL_97;
      }

      if (v39)
      {
        goto LABEL_96;
      }

LABEL_97:
      v34 = 65568;
      if (!v40)
      {
LABEL_723:
        v317 = *(a1 + 16);
        if (v317)
        {
          v318 = *v317;
        }

        else
        {
          v318 = 0;
        }

        if (os_log_type_enabled(v318, OS_LOG_TYPE_ERROR))
        {
          v330 = *(a1 + 8);
          *v460 = 136315906;
          *&v460[4] = "NeuralNetLoader.cpp";
          v461 = 1024;
          v462 = 124;
          v463 = 1024;
          LODWORD(v464.__r_.__value_.__l.__data_) = -66743;
          WORD2(v464.__r_.__value_.__r.__words[0]) = 1024;
          *(v464.__r_.__value_.__r.__words + 6) = v330;
          _os_log_impl(&dword_1DDB85000, v318, OS_LOG_TYPE_ERROR, "%25s:%-5d EXCEPTION (%d): Unsupported input data quantization type for Quantization (%u).", v460, 0x1Eu);
        }

        v331 = __cxa_allocate_exception(0x10uLL);
        *v331 = &unk_1F593B0D8;
        v331[2] = -66743;
      }

LABEL_98:
      *(*a3 + 968 * v5 + 144) = v34;
      v428 = 1065353216;
      v41 = *(a1 + 16);
      if (v41)
      {
        v42 = *v41;
        if (!*v41)
        {
          goto LABEL_104;
        }
      }

      else
      {
        v42 = v6;
      }

      if (os_log_type_enabled(v42, OS_LOG_TYPE_DEBUG))
      {
        *v460 = 136315394;
        *&v460[4] = "NeuralNetLoader.cpp";
        v461 = 1024;
        v462 = 129;
        _os_log_impl(&dword_1DDB85000, v42, OS_LOG_TYPE_DEBUG, "%25s:%-5d Loading from inputDescDict.", v460, 0x12u);
      }

LABEL_104:
      if (DictionaryBlobReader::ReadScalarFromDictionary<float>(*a1, v452, @"DataScale", kCFNumberFloat32Type, &v428))
      {
        v234 = *(a1 + 16);
        if (v234)
        {
          v235 = *v234;
        }

        else
        {
          v235 = 0;
        }

        if (os_log_type_enabled(v235, OS_LOG_TYPE_ERROR))
        {
          *v460 = 136315650;
          *&v460[4] = "NeuralNetLoader.cpp";
          v461 = 1024;
          v462 = 132;
          v463 = 1024;
          LODWORD(v464.__r_.__value_.__l.__data_) = -66741;
          _os_log_impl(&dword_1DDB85000, v235, OS_LOG_TYPE_ERROR, "%25s:%-5d EXCEPTION (%d) [err != noErr is false]: Missing scalar DataScale from dictionary InputVectorDescriptor.", v460, 0x18u);
        }

        v261 = __cxa_allocate_exception(0x10uLL);
        *v261 = &unk_1F593B0D8;
        v261[2] = -66741;
      }

      *(*a3 + 968 * v5 + 164) = v428;
      v427 = 0;
      if (DictionaryBlobReader::ReadScalarFromDictionary<float>(*a1, v452, @"DataBias", kCFNumberFloat32Type, &v427))
      {
        v236 = *(a1 + 16);
        if (v236)
        {
          v237 = *v236;
        }

        else
        {
          v237 = 0;
        }

        if (os_log_type_enabled(v237, OS_LOG_TYPE_ERROR))
        {
          *v460 = 136315650;
          *&v460[4] = "NeuralNetLoader.cpp";
          v461 = 1024;
          v462 = 140;
          v463 = 1024;
          LODWORD(v464.__r_.__value_.__l.__data_) = -66741;
          _os_log_impl(&dword_1DDB85000, v237, OS_LOG_TYPE_ERROR, "%25s:%-5d EXCEPTION (%d) [err != noErr is false]: Missing scalar DataBias from dictionary InputVectorDescriptor.", v460, 0x18u);
        }

        v262 = __cxa_allocate_exception(0x10uLL);
        *v262 = &unk_1F593B0D8;
        v262[2] = -66741;
      }

      *(*a3 + 968 * v5 + 168) = v427;
      v43 = CFDictionaryGetValue(v454, @"OutputVectorDescriptor");
      v44 = v43;
      if (!v43)
      {
        v286 = 0;
        v426 = 0;
        v287 = *(a1 + 16);
        if (v287)
        {
          v286 = *v287;
        }

        if (os_log_type_enabled(v286, OS_LOG_TYPE_ERROR))
        {
          *v460 = 136315650;
          *&v460[4] = "NeuralNetLoader.cpp";
          v461 = 1024;
          v462 = 153;
          v463 = 1024;
          LODWORD(v464.__r_.__value_.__l.__data_) = -66741;
          _os_log_impl(&dword_1DDB85000, v286, OS_LOG_TYPE_ERROR, "%25s:%-5d EXCEPTION (%d) [outputDescDict_ref.get_cf() == nullptr is false]: Missing dictionary OutputVectorDescriptor.", v460, 0x18u);
        }

        v288 = __cxa_allocate_exception(0x10uLL);
        *v288 = &unk_1F593B0D8;
        v288[2] = -66741;
      }

      CFRetain(v43);
      v426 = v44;
      applesauce::CF::TypeRef::operator applesauce::CF::DictionaryRef(&v425, &v426);
      v45 = *(a1 + 16);
      if (v45)
      {
        v46 = *v45;
        if (!*v45)
        {
          v424 = 0;
          goto LABEL_119;
        }
      }

      else
      {
        v46 = v6;
      }

      if (os_log_type_enabled(v46, OS_LOG_TYPE_DEBUG))
      {
        *v460 = 136315394;
        *&v460[4] = "NeuralNetLoader.cpp";
        v461 = 1024;
        v462 = 157;
        _os_log_impl(&dword_1DDB85000, v46, OS_LOG_TYPE_DEBUG, "%25s:%-5d Found the dictionary OutputVectorDescriptor.", v460, 0x12u);
        v45 = *(a1 + 16);
      }

      v424 = 0;
      if (v45)
      {
        v47 = *v45;
        if (!*v45)
        {
          goto LABEL_119;
        }
      }

      else
      {
        v47 = v6;
      }

      if (os_log_type_enabled(v47, OS_LOG_TYPE_DEBUG))
      {
        *v460 = 136315394;
        *&v460[4] = "NeuralNetLoader.cpp";
        v461 = 1024;
        v462 = 161;
        _os_log_impl(&dword_1DDB85000, v47, OS_LOG_TYPE_DEBUG, "%25s:%-5d Loading from outputDescDict.", v460, 0x12u);
      }

LABEL_119:
      if (DictionaryBlobReader::ReadScalarFromDictionary<unsigned int>(*a1, v425, @"Size", &v424))
      {
        v238 = *(a1 + 16);
        if (v238)
        {
          v239 = *v238;
        }

        else
        {
          v239 = 0;
        }

        if (os_log_type_enabled(v239, OS_LOG_TYPE_ERROR))
        {
          *v460 = 136315650;
          *&v460[4] = "NeuralNetLoader.cpp";
          v461 = 1024;
          v462 = 164;
          v463 = 1024;
          LODWORD(v464.__r_.__value_.__l.__data_) = -66741;
          _os_log_impl(&dword_1DDB85000, v239, OS_LOG_TYPE_ERROR, "%25s:%-5d EXCEPTION (%d) [err != noErr is false]: Missing scalar Size from dictionary OutputVectorDescriptor.", v460, 0x18u);
        }

        v263 = __cxa_allocate_exception(0x10uLL);
        *v263 = &unk_1F593B0D8;
        v263[2] = -66741;
      }

      v49 = *a3 + 968 * v5;
      *(v49 + 356) = 0x10000;
      v50 = v424;
      *(v49 + 360) = v424;
      *(v49 + 424) = 1;
      *v460 = 0;
      std::vector<float>::resize((v49 + 816), v50, v460, v48);
      v51 = CFDictionaryGetValue(v425, @"DataType");
      v52 = v51;
      if (!v51)
      {
        v289 = 0;
        v423 = 0;
        v290 = *(a1 + 16);
        if (v290)
        {
          v289 = *v290;
        }

        if (os_log_type_enabled(v289, OS_LOG_TYPE_ERROR))
        {
          *v460 = 136315650;
          *&v460[4] = "NeuralNetLoader.cpp";
          v461 = 1024;
          v462 = 176;
          v463 = 1024;
          LODWORD(v464.__r_.__value_.__l.__data_) = -66741;
          _os_log_impl(&dword_1DDB85000, v289, OS_LOG_TYPE_ERROR, "%25s:%-5d EXCEPTION (%d) [outputDataType_ref.get_cf() == nullptr is false]: Failed to retrieve output data type (DataType) from dictionary OutputVectorDescriptor.", v460, 0x18u);
        }

        v291 = __cxa_allocate_exception(0x10uLL);
        *v291 = &unk_1F593B0D8;
        v291[2] = -66741;
      }

      CFRetain(v51);
      v423 = v52;
      applesauce::CF::TypeRef::operator applesauce::CF::StringRef(&cf, &v423);
      v53 = *(a1 + 16);
      if (v53)
      {
        v54 = *v53;
        if (!*v53)
        {
          goto LABEL_132;
        }
      }

      else
      {
        v54 = v6;
      }

      if (os_log_type_enabled(v54, OS_LOG_TYPE_DEBUG))
      {
        v55 = CFCopyDescription(cf);
        v459 = v55;
        applesauce::CF::details::CFString_get_value<true>(__p, v55);
        if (v55)
        {
          CFRelease(v55);
        }

        v56 = __p;
        if (v448 < 0)
        {
          v56 = __p[0];
        }

        *v460 = 136315906;
        *&v460[4] = "NeuralNetLoader.cpp";
        v461 = 1024;
        v462 = 179;
        v463 = 2080;
        v464.__r_.__value_.__r.__words[0] = v56;
        LOWORD(v464.__r_.__value_.__r.__words[1]) = 1024;
        *(&v464.__r_.__value_.__r.__words[1] + 2) = v5;
        _os_log_impl(&dword_1DDB85000, v54, OS_LOG_TYPE_DEBUG, "%25s:%-5d Successfully retrieved output data type (%s) for Layer %u.", v460, 0x22u);
        if (v448 < 0)
        {
          operator delete(__p[0]);
        }
      }

LABEL_132:
      v57 = cf;
      if (cf)
      {
        CFRetain(cf);
      }

      v421 = v57;
      std::string::basic_string[abi:ne200100]<0>(v419, "float32");
      v58 = matchiString(&v421, v419);
      if (v420 < 0)
      {
        operator delete(v419[0]);
      }

      if (v421)
      {
        CFRelease(v421);
      }

      if (!v58)
      {
        v292 = *(a1 + 16);
        if (v292)
        {
          v293 = *v292;
        }

        else
        {
          v293 = 0;
        }

        if (os_log_type_enabled(v293, OS_LOG_TYPE_ERROR))
        {
          *v460 = 136315650;
          *&v460[4] = "NeuralNetLoader.cpp";
          v461 = 1024;
          v462 = 189;
          v463 = 1024;
          LODWORD(v464.__r_.__value_.__l.__data_) = -66743;
          _os_log_impl(&dword_1DDB85000, v293, OS_LOG_TYPE_ERROR, "%25s:%-5d EXCEPTION (%d): Unsupported output data type.", v460, 0x18u);
        }

        v325 = __cxa_allocate_exception(0x10uLL);
        *v325 = &unk_1F593B0D8;
        v325[2] = -66743;
      }

      *(*a3 + 968 * v5 + 496) = 65568;
      v418 = 1065353216;
      v59 = *(a1 + 16);
      if (v59)
      {
        v60 = *v59;
        if (!*v59)
        {
          goto LABEL_145;
        }
      }

      else
      {
        v60 = v6;
      }

      if (os_log_type_enabled(v60, OS_LOG_TYPE_DEBUG))
      {
        *v460 = 136315394;
        *&v460[4] = "NeuralNetLoader.cpp";
        v461 = 1024;
        v462 = 194;
        _os_log_impl(&dword_1DDB85000, v60, OS_LOG_TYPE_DEBUG, "%25s:%-5d Loading from outputDescDict.", v460, 0x12u);
      }

LABEL_145:
      if (DictionaryBlobReader::ReadScalarFromDictionary<float>(*a1, v425, @"DataScale", kCFNumberFloat32Type, &v418))
      {
        v240 = *(a1 + 16);
        if (v240)
        {
          v241 = *v240;
        }

        else
        {
          v241 = 0;
        }

        if (os_log_type_enabled(v241, OS_LOG_TYPE_ERROR))
        {
          *v460 = 136315650;
          *&v460[4] = "NeuralNetLoader.cpp";
          v461 = 1024;
          v462 = 197;
          v463 = 1024;
          LODWORD(v464.__r_.__value_.__l.__data_) = -66741;
          _os_log_impl(&dword_1DDB85000, v241, OS_LOG_TYPE_ERROR, "%25s:%-5d EXCEPTION (%d) [err != noErr is false]: Missing scalar DataScale from dictionary OutputVectorDescriptor.", v460, 0x18u);
        }

        v264 = __cxa_allocate_exception(0x10uLL);
        *v264 = &unk_1F593B0D8;
        v264[2] = -66741;
      }

      *(*a3 + 968 * v5 + 516) = v418;
      v417 = 0;
      v61 = *(a1 + 16);
      if (v61)
      {
        v62 = *v61;
        if (!*v61)
        {
          goto LABEL_152;
        }
      }

      else
      {
        v62 = v6;
      }

      if (os_log_type_enabled(v62, OS_LOG_TYPE_DEBUG))
      {
        *v460 = 136315394;
        *&v460[4] = "NeuralNetLoader.cpp";
        v461 = 1024;
        v462 = 203;
        _os_log_impl(&dword_1DDB85000, v62, OS_LOG_TYPE_DEBUG, "%25s:%-5d Loading from outputDescDict.", v460, 0x12u);
      }

LABEL_152:
      if (DictionaryBlobReader::ReadScalarFromDictionary<float>(*a1, v425, @"DataBias", kCFNumberFloat32Type, &v417))
      {
        v242 = *(a1 + 16);
        if (v242)
        {
          v243 = *v242;
        }

        else
        {
          v243 = 0;
        }

        if (os_log_type_enabled(v243, OS_LOG_TYPE_ERROR))
        {
          *v460 = 136315650;
          *&v460[4] = "NeuralNetLoader.cpp";
          v461 = 1024;
          v462 = 206;
          v463 = 1024;
          LODWORD(v464.__r_.__value_.__l.__data_) = -66741;
          _os_log_impl(&dword_1DDB85000, v243, OS_LOG_TYPE_ERROR, "%25s:%-5d EXCEPTION (%d) [err != noErr is false]: Missing scalar DataBias from dictionary OutputVectorDescriptor.", v460, 0x18u);
        }

        v265 = __cxa_allocate_exception(0x10uLL);
        *v265 = &unk_1F593B0D8;
        v265[2] = -66741;
      }

      *(*a3 + 968 * v5 + 520) = v417;
      v63 = CFDictionaryGetValue(v454, @"LayerDescriptor");
      v64 = v63;
      if (!v63)
      {
        v416 = 0;
        v67 = *(a1 + 16);
        if (v67)
        {
          v68 = *v67;
          if (!*v67)
          {
LABEL_202:
            *(*a3 + 968 * v5 + 964) = 0;
            goto LABEL_203;
          }
        }

        else
        {
          v68 = v6;
        }

        if (os_log_type_enabled(v68, OS_LOG_TYPE_DEFAULT))
        {
          *v460 = 136315650;
          *&v460[4] = "NeuralNetLoader.cpp";
          v461 = 1024;
          v462 = 221;
          v463 = 2048;
          v464.__r_.__value_.__r.__words[0] = v5;
          _os_log_impl(&dword_1DDB85000, v68, OS_LOG_TYPE_DEFAULT, "%25s:%-5d LayerDescriptor for layer %zu not found, using default fully connected layer.", v460, 0x1Cu);
        }

        goto LABEL_202;
      }

      CFRetain(v63);
      v416 = v64;
      applesauce::CF::TypeRef::operator applesauce::CF::DictionaryRef(&v415, &v416);
      v65 = *(a1 + 16);
      if (v65)
      {
        v66 = *v65;
        if (!*v65)
        {
          goto LABEL_163;
        }
      }

      else
      {
        v66 = v6;
      }

      if (os_log_type_enabled(v66, OS_LOG_TYPE_DEBUG))
      {
        *v460 = 136315394;
        *&v460[4] = "NeuralNetLoader.cpp";
        v461 = 1024;
        v462 = 228;
        _os_log_impl(&dword_1DDB85000, v66, OS_LOG_TYPE_DEBUG, "%25s:%-5d Found the dictionary LayerDescriptor.", v460, 0x12u);
      }

LABEL_163:
      v69 = CFDictionaryGetValue(v415, @"Type");
      v70 = v69;
      if (!v69)
      {
        v322 = 0;
        v414 = 0;
        v323 = *(a1 + 16);
        if (v323)
        {
          v322 = *v323;
        }

        if (os_log_type_enabled(v322, OS_LOG_TYPE_ERROR))
        {
          *v460 = 136315650;
          *&v460[4] = "NeuralNetLoader.cpp";
          v461 = 1024;
          v462 = 233;
          v463 = 1024;
          LODWORD(v464.__r_.__value_.__l.__data_) = -66741;
          _os_log_impl(&dword_1DDB85000, v322, OS_LOG_TYPE_ERROR, "%25s:%-5d EXCEPTION (%d) [layerType_ref.get_cf() == nullptr is false]: Failed to retrieve layer type (Type) from dictionary LayerDescriptor.", v460, 0x18u);
        }

        v324 = __cxa_allocate_exception(0x10uLL);
        *v324 = &unk_1F593B0D8;
        v324[2] = -66741;
      }

      CFRetain(v69);
      v414 = v70;
      applesauce::CF::TypeRef::operator applesauce::CF::StringRef(&v413, &v414);
      v71 = *(a1 + 16);
      if (!v71)
      {
        v72 = v6;
LABEL_168:
        if (os_log_type_enabled(v72, OS_LOG_TYPE_INFO))
        {
          v73 = CFCopyDescription(v413);
          v459 = v73;
          applesauce::CF::details::CFString_get_value<true>(__p, v73);
          if (v73)
          {
            CFRelease(v73);
          }

          v74 = __p;
          if (v448 < 0)
          {
            v74 = __p[0];
          }

          *v460 = 136315906;
          *&v460[4] = "NeuralNetLoader.cpp";
          v461 = 1024;
          v462 = 237;
          v463 = 2080;
          v464.__r_.__value_.__r.__words[0] = v74;
          LOWORD(v464.__r_.__value_.__r.__words[1]) = 2048;
          *(&v464.__r_.__value_.__r.__words[1] + 2) = v5;
          _os_log_impl(&dword_1DDB85000, v72, OS_LOG_TYPE_INFO, "%25s:%-5d Successfully retrieved Type (%s) for LayerDescriptor %zu.", v460, 0x26u);
          if (v448 < 0)
          {
            operator delete(__p[0]);
          }
        }

        goto LABEL_175;
      }

      v72 = *v71;
      if (*v71)
      {
        goto LABEL_168;
      }

LABEL_175:
      v75 = v413;
      if (v413)
      {
        CFRetain(v413);
      }

      v412 = v75;
      std::string::basic_string[abi:ne200100]<0>(v410, "FullyConnected");
      std::string::basic_string[abi:ne200100]<0>(v408, "Dense");
      v76 = matchiEither(&v412, v410, v408);
      if (v409 < 0)
      {
        operator delete(v408[0]);
      }

      if (v411 < 0)
      {
        operator delete(v410[0]);
      }

      if (v412)
      {
        CFRelease(v412);
      }

      if (v76)
      {
        v77 = 0;
      }

      else
      {
        v78 = v413;
        if (v413)
        {
          CFRetain(v413);
        }

        v407 = v78;
        std::string::basic_string[abi:ne200100]<0>(v405, "LSTM");
        v79 = matchiString(&v407, v405);
        if (v406 < 0)
        {
          operator delete(v405[0]);
        }

        if (v407)
        {
          CFRelease(v407);
        }

        if (!v79)
        {
          v334 = *(a1 + 16);
          if (v334)
          {
            v335 = *v334;
          }

          else
          {
            v335 = 0;
          }

          if (os_log_type_enabled(v335, OS_LOG_TYPE_ERROR))
          {
            *v460 = 136315650;
            *&v460[4] = "NeuralNetLoader.cpp";
            v461 = 1024;
            v462 = 250;
            v463 = 1024;
            LODWORD(v464.__r_.__value_.__l.__data_) = -66743;
            _os_log_impl(&dword_1DDB85000, v335, OS_LOG_TYPE_ERROR, "%25s:%-5d EXCEPTION (%d): Unsupported LayerType.", v460, 0x18u);
          }

          v336 = __cxa_allocate_exception(0x10uLL);
          *v336 = &unk_1F593B0D8;
          v336[2] = -66743;
        }

        v77 = 1;
      }

      *(*a3 + 968 * v5 + 964) = v77;
      if (v413)
      {
        CFRelease(v413);
      }

      if (v414)
      {
        CFRelease(v414);
      }

      if (v415)
      {
        CFRelease(v415);
      }

LABEL_203:
      v80 = CFDictionaryGetValue(v454, @"Weights");
      v81 = v80;
      if (!v80)
      {
        v294 = 0;
        v415 = 0;
        v295 = *(a1 + 16);
        if (v295)
        {
          v294 = *v295;
        }

        if (os_log_type_enabled(v294, OS_LOG_TYPE_ERROR))
        {
          *v460 = 136315650;
          *&v460[4] = "NeuralNetLoader.cpp";
          v461 = 1024;
          v462 = 262;
          v463 = 1024;
          LODWORD(v464.__r_.__value_.__l.__data_) = -66741;
          _os_log_impl(&dword_1DDB85000, v294, OS_LOG_TYPE_ERROR, "%25s:%-5d EXCEPTION (%d) [weightsDict_ref.get_cf() == nullptr is false]: Missing dictionary Weights.", v460, 0x18u);
        }

        v296 = __cxa_allocate_exception(0x10uLL);
        *v296 = &unk_1F593B0D8;
        v296[2] = -66741;
      }

      CFRetain(v80);
      v415 = v81;
      applesauce::CF::TypeRef::operator applesauce::CF::DictionaryRef(&v414, &v415);
      v82 = *(a1 + 16);
      if (v82)
      {
        v83 = *v82;
        if (!*v82)
        {
          goto LABEL_210;
        }
      }

      else
      {
        v83 = v6;
      }

      if (os_log_type_enabled(v83, OS_LOG_TYPE_DEBUG))
      {
        *v460 = 136315394;
        *&v460[4] = "NeuralNetLoader.cpp";
        v461 = 1024;
        v462 = 266;
        _os_log_impl(&dword_1DDB85000, v83, OS_LOG_TYPE_DEBUG, "%25s:%-5d Found the dictionary Weights.", v460, 0x12u);
      }

LABEL_210:
      v84 = *a1;
      v85 = *a3;
      v86 = CFDictionaryGetValue(v414, @"Data");
      v87 = v86;
      if (!v86)
      {
        v297 = *v84;
        if (*v84)
        {
          v298 = *v297;
          if (!*v297)
          {
            goto LABEL_743;
          }
        }

        else
        {
          v298 = MEMORY[0x1E69E9C10];
        }

        if (os_log_type_enabled(v298, OS_LOG_TYPE_DEFAULT))
        {
          *v460 = 136315650;
          *&v460[4] = "DictionaryBlobReader.hpp";
          v461 = 1024;
          v462 = 101;
          v463 = 2112;
          v464.__r_.__value_.__r.__words[0] = @"Data";
          goto LABEL_742;
        }

LABEL_743:
        v326 = *(a1 + 16);
        if (v326)
        {
          v327 = *v326;
        }

        else
        {
          v327 = 0;
        }

        if (os_log_type_enabled(v327, OS_LOG_TYPE_ERROR))
        {
          *v460 = 136315650;
          *&v460[4] = "NeuralNetLoader.cpp";
          v461 = 1024;
          v462 = 271;
          v463 = 1024;
          LODWORD(v464.__r_.__value_.__l.__data_) = -66741;
          _os_log_impl(&dword_1DDB85000, v327, OS_LOG_TYPE_ERROR, "%25s:%-5d EXCEPTION (%d) [err != noErr is false]: Missing vector Data from dictionary Weights.", v460, 0x18u);
        }

        v328 = __cxa_allocate_exception(0x10uLL);
        *v328 = &unk_1F593B0D8;
        v328[2] = -66741;
      }

      v88 = CFGetTypeID(v86);
      if (v88 != CFDataGetTypeID())
      {
        v299 = *v84;
        if (!*v84)
        {
          v298 = MEMORY[0x1E69E9C10];
          goto LABEL_740;
        }

        v298 = *v299;
        if (*v299)
        {
LABEL_740:
          if (os_log_type_enabled(v298, OS_LOG_TYPE_DEFAULT))
          {
            *v460 = 136315650;
            *&v460[4] = "DictionaryBlobReader.hpp";
            v461 = 1024;
            v462 = 107;
            v463 = 2112;
            v464.__r_.__value_.__r.__words[0] = @"Data";
LABEL_742:
            _os_log_impl(&dword_1DDB85000, v298, OS_LOG_TYPE_DEFAULT, "%25s:%-5d Failed to retrieve '%@'", v460, 0x1Cu);
          }
        }

        goto LABEL_743;
      }

      Length = CFDataGetLength(v87);
      v90 = (v85 + 968 * v5 + 936);
      v91 = Length >> 1;
      v92 = v90[2];
      v93 = *v90;
      if (v91 > (v92 - *v90) >> 1)
      {
        if (v93)
        {
          v90[1] = v93;
          operator delete(v93);
          v92 = 0;
          *v90 = 0;
          v90[1] = 0;
          v90[2] = 0;
        }

        if (v92 <= v91)
        {
          v94 = Length >> 1;
        }

        else
        {
          v94 = v92;
        }

        if (v92 >= 0x7FFFFFFFFFFFFFFELL)
        {
          v95 = 0x7FFFFFFFFFFFFFFFLL;
        }

        else
        {
          v95 = v94;
        }

        std::vector<short>::__vallocate[abi:ne200100](v90, v95);
      }

      v96 = v90[1];
      v97 = (v96 - v93) >> 1;
      if (v97 >= v91)
      {
        v98 = Length >> 1;
      }

      else
      {
        v98 = (v96 - v93) >> 1;
      }

      if (v98)
      {
        v99 = 0;
        v100 = (v98 + 7) & 0xFFFFFFF8;
        v101 = vdupq_n_s64(v98 - 1);
        v102 = v93 + 4;
        do
        {
          v103 = vdupq_n_s64(v99);
          v104 = vmovn_s64(vcgeq_u64(v101, vorrq_s8(v103, xmmword_1DE095160)));
          if (vuzp1_s8(vuzp1_s16(v104, *v101.i8), *v101.i8).u8[0])
          {
            *(v102 - 4) = 0;
          }

          if (vuzp1_s8(vuzp1_s16(v104, *&v101), *&v101).i8[1])
          {
            *(v102 - 3) = 0;
          }

          if (vuzp1_s8(vuzp1_s16(*&v101, vmovn_s64(vcgeq_u64(v101, vorrq_s8(v103, xmmword_1DE095150)))), *&v101).i8[2])
          {
            *(v102 - 2) = 0;
            *(v102 - 1) = 0;
          }

          v105 = vmovn_s64(vcgeq_u64(v101, vorrq_s8(v103, xmmword_1DE095220)));
          if (vuzp1_s8(*&v101, vuzp1_s16(v105, *&v101)).i32[1])
          {
            *v102 = 0;
          }

          if (vuzp1_s8(*&v101, vuzp1_s16(v105, *&v101)).i8[5])
          {
            v102[1] = 0;
          }

          if (vuzp1_s8(*&v101, vuzp1_s16(*&v101, vmovn_s64(vcgeq_u64(v101, vorrq_s8(v103, xmmword_1DE0952D0))))).i8[6])
          {
            v102[2] = 0;
            v102[3] = 0;
          }

          v99 += 8;
          v102 += 8;
        }

        while (v100 != v99);
      }

      v106 = v91 >= v97;
      v107 = v91 - v97;
      if (v107 != 0 && v106)
      {
        v108 = 0;
        v109 = (2 * v91 - (v96 - v93) - 2) >> 1;
        v110 = vdupq_n_s64(v109);
        v111 = (v109 & 0x7FFFFFFFFFFFFFF8) + 8;
        v112 = (v96 + 8);
        do
        {
          v113 = vdupq_n_s64(v108);
          v114 = vmovn_s64(vcgeq_u64(v110, vorrq_s8(v113, xmmword_1DE095160)));
          if (vuzp1_s8(vuzp1_s16(v114, *v110.i8), *v110.i8).u8[0])
          {
            *(v112 - 4) = 0;
          }

          if (vuzp1_s8(vuzp1_s16(v114, *&v110), *&v110).i8[1])
          {
            *(v112 - 3) = 0;
          }

          if (vuzp1_s8(vuzp1_s16(*&v110, vmovn_s64(vcgeq_u64(v110, vorrq_s8(v113, xmmword_1DE095150)))), *&v110).i8[2])
          {
            *(v112 - 2) = 0;
            *(v112 - 1) = 0;
          }

          v115 = vmovn_s64(vcgeq_u64(v110, vorrq_s8(v113, xmmword_1DE095220)));
          if (vuzp1_s8(*&v110, vuzp1_s16(v115, *&v110)).i32[1])
          {
            *v112 = 0;
          }

          if (vuzp1_s8(*&v110, vuzp1_s16(v115, *&v110)).i8[5])
          {
            v112[1] = 0;
          }

          if (vuzp1_s8(*&v110, vuzp1_s16(*&v110, vmovn_s64(vcgeq_u64(v110, vorrq_s8(v113, xmmword_1DE0952D0))))).i8[6])
          {
            v112[2] = 0;
            v112[3] = 0;
          }

          v108 += 8;
          v112 += 8;
        }

        while (v111 != v108);
        v116 = (v96 + 2 * v107);
      }

      else
      {
        v116 = &v93[v91];
      }

      v90[1] = v116;
      BytePtr = CFDataGetBytePtr(v87);
      if (Length >= 2)
      {
        v118 = *v90;
        if (v91 <= 1)
        {
          v119 = 1;
        }

        else
        {
          v119 = v91;
        }

        do
        {
          v120 = *BytePtr;
          BytePtr += 2;
          *v118++ = v120;
          --v119;
        }

        while (v119);
      }

      v121 = *a3 + 968 * v5;
      v122 = *(v121 + 964);
      v123 = v122 == 1;
      if (v122 == 1)
      {
        v124 = *(v121 + 360);
      }

      else
      {
        v124 = 0;
      }

      v125 = *(v121 + 8) + v124;
      if (v123)
      {
        v126 = 4 * *(v121 + 360);
      }

      else
      {
        v126 = *(v121 + 360);
      }

      v127 = v126 * v125;
      v128 = *(v121 + 944);
      v129 = *(v121 + 936);
      v130 = (v128 - v129) >> 1;
      if (v130 != v126 * v125)
      {
        v244 = *(a1 + 16);
        if (v244)
        {
          v245 = *v244;
        }

        else
        {
          v245 = 0;
        }

        if (os_log_type_enabled(v245, OS_LOG_TYPE_ERROR))
        {
          *v460 = 136316162;
          *&v460[4] = "NeuralNetLoader.cpp";
          v461 = 1024;
          v462 = 280;
          v463 = 1024;
          LODWORD(v464.__r_.__value_.__l.__data_) = -66743;
          WORD2(v464.__r_.__value_.__r.__words[0]) = 2048;
          *(v464.__r_.__value_.__r.__words + 6) = v130;
          HIWORD(v464.__r_.__value_.__r.__words[1]) = 2048;
          v464.__r_.__value_.__r.__words[2] = v127;
          _os_log_impl(&dword_1DDB85000, v245, OS_LOG_TYPE_ERROR, "%25s:%-5d EXCEPTION (%d) [nnLayers[i].mWeightsQuantized.size() != weightsNumberOfCoefficients is false]: Number of weights in Data (%lu) does not match the required number of weights (%lu).", v460, 0x2Cu);
        }

        v266 = __cxa_allocate_exception(0x10uLL);
        *v266 = &unk_1F593B0D8;
        v266[2] = -66743;
      }

      *(v121 + 180) = 0x20000;
      *(v121 + 184) = v125;
      *(v121 + 192) = v126;
      *(v121 + 248) = 1;
      *(v121 + 256) = v125;
      *(v121 + 312) = v129;
      v131 = MEMORY[0x1E69E9C10];
      if (v128 != v129)
      {
        v132 = 0;
        while (1)
        {
          v133 = *(a1 + 8);
          HIDWORD(v135) = v133;
          LODWORD(v135) = v133;
          v134 = v135 >> 3;
          v136 = *(a1 + 16);
          if (v134 > 1)
          {
            break;
          }

          if (v134)
          {
            if (v134 != 1)
            {
              goto LABEL_652;
            }

            if (!v136)
            {
              goto LABEL_298;
            }

            if ((*(v136 + 8) & 1) == 0)
            {
              goto LABEL_298;
            }

            v137 = *v136;
            if (!*v136 || !os_log_type_enabled(*v136, OS_LOG_TYPE_DEBUG))
            {
              goto LABEL_298;
            }

            v138 = *(*(v121 + 312) + v132);
            *v460 = 136315906;
            *&v460[4] = "NeuralNetLoader.cpp";
            v461 = 1024;
            v462 = 296;
            v463 = 1024;
            LODWORD(v464.__r_.__value_.__l.__data_) = v138;
            WORD2(v464.__r_.__value_.__r.__words[0]) = 2048;
            *(v464.__r_.__value_.__r.__words + 6) = v132;
            v139 = v137;
            v140 = "%25s:%-5d Successfully retrieved weights data (%i) at index (%zu).";
LABEL_296:
            v145 = 34;
            goto LABEL_297;
          }

          if (!v136)
          {
            goto LABEL_298;
          }

          if ((*(v136 + 8) & 1) == 0)
          {
            goto LABEL_298;
          }

          v143 = *v136;
          if (!*v136 || !os_log_type_enabled(*v136, OS_LOG_TYPE_DEBUG))
          {
            goto LABEL_298;
          }

          v144 = *(*(v121 + 312) + 4 * v132);
          *v460 = 136315906;
          *&v460[4] = "NeuralNetLoader.cpp";
          v461 = 1024;
          v462 = 308;
          v463 = 2048;
          *&v464.__r_.__value_.__l.__data_ = v144;
          LOWORD(v464.__r_.__value_.__r.__words[1]) = 2048;
          *(&v464.__r_.__value_.__r.__words[1] + 2) = v132;
          v139 = v143;
          v140 = "%25s:%-5d Successfully retrieved weights data (%g) at index (%zu).";
          v145 = 38;
LABEL_297:
          _os_log_impl(&dword_1DDB85000, v139, OS_LOG_TYPE_DEBUG, v140, v460, v145);
LABEL_298:
          ++v132;
          v121 = *a3 + 968 * v5;
          v148 = (*(v121 + 944) - *(v121 + 936)) >> 1;
          if (v148 >= 4)
          {
            v148 = 4;
          }

          if (v132 >= v148)
          {
            goto LABEL_301;
          }
        }

        if (v134 == 2)
        {
          if (!v136)
          {
            goto LABEL_298;
          }

          if ((*(v136 + 8) & 1) == 0)
          {
            goto LABEL_298;
          }

          v146 = *v136;
          if (!*v136 || !os_log_type_enabled(*v136, OS_LOG_TYPE_DEBUG))
          {
            goto LABEL_298;
          }

          v147 = *(*(v121 + 312) + 2 * v132);
          *v460 = 136315906;
          *&v460[4] = "NeuralNetLoader.cpp";
          v461 = 1024;
          v462 = 300;
          v463 = 1024;
          LODWORD(v464.__r_.__value_.__l.__data_) = v147;
          WORD2(v464.__r_.__value_.__r.__words[0]) = 2048;
          *(v464.__r_.__value_.__r.__words + 6) = v132;
          v139 = v146;
          v140 = "%25s:%-5d Successfully retrieved weights data (%i) at index (%zu).";
        }

        else
        {
          if (v134 != 4)
          {
LABEL_652:
            if (v136)
            {
              v274 = *v136;
            }

            else
            {
              v274 = 0;
            }

            if (os_log_type_enabled(v274, OS_LOG_TYPE_ERROR))
            {
              *v460 = 136315906;
              *&v460[4] = "NeuralNetLoader.cpp";
              v461 = 1024;
              v462 = 312;
              v463 = 1024;
              LODWORD(v464.__r_.__value_.__l.__data_) = -66743;
              WORD2(v464.__r_.__value_.__r.__words[0]) = 1024;
              *(v464.__r_.__value_.__r.__words + 6) = v133;
              _os_log_impl(&dword_1DDB85000, v274, OS_LOG_TYPE_ERROR, "%25s:%-5d EXCEPTION (%d): Unknown quantization type (%u).", v460, 0x1Eu);
            }

            v275 = __cxa_allocate_exception(0x10uLL);
            *v275 = &unk_1F593B0D8;
            v275[2] = -66743;
          }

          if (!v136)
          {
            goto LABEL_298;
          }

          if ((*(v136 + 8) & 1) == 0)
          {
            goto LABEL_298;
          }

          v141 = *v136;
          if (!*v136 || !os_log_type_enabled(*v136, OS_LOG_TYPE_DEBUG))
          {
            goto LABEL_298;
          }

          v142 = *(*(v121 + 312) + 4 * v132);
          *v460 = 136315906;
          *&v460[4] = "NeuralNetLoader.cpp";
          v461 = 1024;
          v462 = 304;
          v463 = 1024;
          LODWORD(v464.__r_.__value_.__l.__data_) = v142;
          WORD2(v464.__r_.__value_.__r.__words[0]) = 2048;
          *(v464.__r_.__value_.__r.__words + 6) = v132;
          v139 = v141;
          v140 = "%25s:%-5d Successfully retrieved weights data (%i) at index (%zu).";
        }

        goto LABEL_296;
      }

LABEL_301:
      v149 = CFDictionaryGetValue(v414, @"DataType");
      v150 = v149;
      if (!v149)
      {
        v300 = 0;
        v413 = 0;
        v301 = *(a1 + 16);
        if (v301)
        {
          v300 = *v301;
        }

        if (os_log_type_enabled(v300, OS_LOG_TYPE_ERROR))
        {
          *v460 = 136315650;
          *&v460[4] = "NeuralNetLoader.cpp";
          v461 = 1024;
          v462 = 320;
          v463 = 1024;
          LODWORD(v464.__r_.__value_.__l.__data_) = -66741;
          _os_log_impl(&dword_1DDB85000, v300, OS_LOG_TYPE_ERROR, "%25s:%-5d EXCEPTION (%d) [weightsDataType_ref.get_cf() == nullptr is false]: Missing DataType from dictionary Weights.", v460, 0x18u);
        }

        v302 = __cxa_allocate_exception(0x10uLL);
        *v302 = &unk_1F593B0D8;
        v302[2] = -66741;
      }

      CFRetain(v149);
      v413 = v150;
      applesauce::CF::TypeRef::operator applesauce::CF::StringRef(&v404, &v413);
      v151 = *(a1 + 16);
      if (v151)
      {
        v152 = *v151;
        if (!*v151)
        {
          goto LABEL_313;
        }
      }

      else
      {
        v152 = v131;
      }

      if (os_log_type_enabled(v152, OS_LOG_TYPE_DEBUG))
      {
        v153 = CFCopyDescription(v404);
        v459 = v153;
        applesauce::CF::details::CFString_get_value<true>(__p, v153);
        if (v153)
        {
          CFRelease(v153);
        }

        v154 = __p;
        if (v448 < 0)
        {
          v154 = __p[0];
        }

        *v460 = 136315906;
        *&v460[4] = "NeuralNetLoader.cpp";
        v461 = 1024;
        v462 = 324;
        v463 = 2080;
        v464.__r_.__value_.__r.__words[0] = v154;
        LOWORD(v464.__r_.__value_.__r.__words[1]) = 2048;
        *(&v464.__r_.__value_.__r.__words[1] + 2) = v5;
        _os_log_impl(&dword_1DDB85000, v152, OS_LOG_TYPE_DEBUG, "%25s:%-5d Successfully retrieved weights data type (%s) for Layer %zu.", v460, 0x26u);
        if (v448 < 0)
        {
          operator delete(__p[0]);
        }
      }

LABEL_313:
      v155 = *(a1 + 8);
      if (v155 == 8)
      {
        v156 = v404;
        if (v404)
        {
          CFRetain(v404);
        }

        v403 = v156;
        std::string::basic_string[abi:ne200100]<0>(v401, "int8");
        std::string::basic_string[abi:ne200100]<0>(v399, "SInt8");
        v157 = matchiEither(&v403, v401, v399);
        if (v400 < 0)
        {
          operator delete(v399[0]);
        }

        if (v402 < 0)
        {
          operator delete(v401[0]);
        }

        if (v403)
        {
          CFRelease(v403);
        }

        v158 = 131080;
        if (v157)
        {
          goto LABEL_356;
        }

        v155 = *(a1 + 8);
      }

      if (v155 == 16)
      {
        v159 = v404;
        if (v404)
        {
          CFRetain(v404);
        }

        v398 = v159;
        std::string::basic_string[abi:ne200100]<0>(v396, "int16");
        std::string::basic_string[abi:ne200100]<0>(v394, "SInt16");
        v160 = matchiEither(&v398, v396, v394);
        if (v395 < 0)
        {
          operator delete(v394[0]);
        }

        if (v397 < 0)
        {
          operator delete(v396[0]);
        }

        if (v398)
        {
          CFRelease(v398);
        }

        if (v160)
        {
          v158 = 131088;
          goto LABEL_356;
        }

        v155 = *(a1 + 8);
      }

      if (v155 == 32)
      {
        v161 = v404;
        if (v404)
        {
          CFRetain(v404);
        }

        v393 = v161;
        std::string::basic_string[abi:ne200100]<0>(v391, "int32");
        std::string::basic_string[abi:ne200100]<0>(v389, "SInt32");
        v162 = matchiEither(&v393, v391, v389);
        if (v390 < 0)
        {
          operator delete(v389[0]);
        }

        if (v392 < 0)
        {
          operator delete(v391[0]);
        }

        if (v393)
        {
          CFRelease(v393);
        }

        if (v162)
        {
          v158 = 131104;
          goto LABEL_356;
        }

        v155 = *(a1 + 8);
      }

      if (v155)
      {
        goto LABEL_725;
      }

      v163 = v404;
      if (v404)
      {
        CFRetain(v404);
      }

      v388 = v163;
      std::string::basic_string[abi:ne200100]<0>(v386, "float32");
      v164 = matchiString(&v388, v386);
      if (v387 < 0)
      {
        operator delete(v386[0]);
      }

      if (v388)
      {
        CFRelease(v388);
      }

      v158 = 65568;
      if (!v164)
      {
LABEL_725:
        v319 = *(a1 + 16);
        if (v319)
        {
          v320 = *v319;
        }

        else
        {
          v320 = 0;
        }

        if (os_log_type_enabled(v320, OS_LOG_TYPE_ERROR))
        {
          v332 = *(a1 + 8);
          *v460 = 136315906;
          *&v460[4] = "NeuralNetLoader.cpp";
          v461 = 1024;
          v462 = 346;
          v463 = 1024;
          LODWORD(v464.__r_.__value_.__l.__data_) = -66743;
          WORD2(v464.__r_.__value_.__r.__words[0]) = 1024;
          *(v464.__r_.__value_.__r.__words + 6) = v332;
          _os_log_impl(&dword_1DDB85000, v320, OS_LOG_TYPE_ERROR, "%25s:%-5d EXCEPTION (%d): Unsupported weights data quantization type for Quantization (%u).", v460, 0x1Eu);
        }

        v333 = __cxa_allocate_exception(0x10uLL);
        *v333 = &unk_1F593B0D8;
        v333[2] = -66743;
      }

LABEL_356:
      *(*a3 + 968 * v5 + 320) = v158;
      v385 = 1065353216;
      v165 = *(a1 + 16);
      if (v165)
      {
        v166 = *v165;
        if (!*v165)
        {
          goto LABEL_362;
        }
      }

      else
      {
        v166 = v131;
      }

      if (os_log_type_enabled(v166, OS_LOG_TYPE_DEBUG))
      {
        *v460 = 136315394;
        *&v460[4] = "NeuralNetLoader.cpp";
        v461 = 1024;
        v462 = 351;
        _os_log_impl(&dword_1DDB85000, v166, OS_LOG_TYPE_DEBUG, "%25s:%-5d Loading from weightsDict.", v460, 0x12u);
      }

LABEL_362:
      if (DictionaryBlobReader::ReadScalarFromDictionary<float>(*a1, v414, @"DataScale", kCFNumberFloat32Type, &v385))
      {
        v246 = *(a1 + 16);
        if (v246)
        {
          v247 = *v246;
        }

        else
        {
          v247 = 0;
        }

        if (os_log_type_enabled(v247, OS_LOG_TYPE_ERROR))
        {
          *v460 = 136315650;
          *&v460[4] = "NeuralNetLoader.cpp";
          v461 = 1024;
          v462 = 354;
          v463 = 1024;
          LODWORD(v464.__r_.__value_.__l.__data_) = -66741;
          _os_log_impl(&dword_1DDB85000, v247, OS_LOG_TYPE_ERROR, "%25s:%-5d EXCEPTION (%d) [err != noErr is false]: Missing scalar DataScale from dictionary Weights.", v460, 0x18u);
        }

        v267 = __cxa_allocate_exception(0x10uLL);
        *v267 = &unk_1F593B0D8;
        v267[2] = -66741;
      }

      *(*a3 + 968 * v5 + 340) = v385;
      v384 = 0;
      v167 = *(a1 + 16);
      if (v167)
      {
        v168 = *v167;
        if (!*v167)
        {
          goto LABEL_369;
        }
      }

      else
      {
        v168 = v131;
      }

      if (os_log_type_enabled(v168, OS_LOG_TYPE_DEBUG))
      {
        *v460 = 136315394;
        *&v460[4] = "NeuralNetLoader.cpp";
        v461 = 1024;
        v462 = 360;
        _os_log_impl(&dword_1DDB85000, v168, OS_LOG_TYPE_DEBUG, "%25s:%-5d Loading from weightsDict.", v460, 0x12u);
      }

LABEL_369:
      if (DictionaryBlobReader::ReadScalarFromDictionary<float>(*a1, v414, @"DataBias", kCFNumberFloat32Type, &v384))
      {
        v248 = *(a1 + 16);
        if (v248)
        {
          v249 = *v248;
        }

        else
        {
          v249 = 0;
        }

        if (os_log_type_enabled(v249, OS_LOG_TYPE_ERROR))
        {
          *v460 = 136315650;
          *&v460[4] = "NeuralNetLoader.cpp";
          v461 = 1024;
          v462 = 363;
          v463 = 1024;
          LODWORD(v464.__r_.__value_.__l.__data_) = -66741;
          _os_log_impl(&dword_1DDB85000, v249, OS_LOG_TYPE_ERROR, "%25s:%-5d EXCEPTION (%d) [err != noErr is false]: Missing scalar DataBias from dictionary Weights.", v460, 0x18u);
        }

        v268 = __cxa_allocate_exception(0x10uLL);
        *v268 = &unk_1F593B0D8;
        v268[2] = -66741;
      }

      *(*a3 + 968 * v5 + 344) = v384;
      v169 = CFDictionaryGetValue(v454, @"Bias");
      v170 = v169;
      if (!v169)
      {
        v303 = 0;
        v383 = 0;
        v304 = *(a1 + 16);
        if (v304)
        {
          v303 = *v304;
        }

        if (os_log_type_enabled(v303, OS_LOG_TYPE_ERROR))
        {
          *v460 = 136315650;
          *&v460[4] = "NeuralNetLoader.cpp";
          v461 = 1024;
          v462 = 374;
          v463 = 1024;
          LODWORD(v464.__r_.__value_.__l.__data_) = -66741;
          _os_log_impl(&dword_1DDB85000, v303, OS_LOG_TYPE_ERROR, "%25s:%-5d EXCEPTION (%d) [biasDict_ref.get_cf() == nullptr is false]: Missing dictionary Bias from dictionary Weights.", v460, 0x18u);
        }

        v305 = __cxa_allocate_exception(0x10uLL);
        *v305 = &unk_1F593B0D8;
        v305[2] = -66741;
      }

      CFRetain(v169);
      v383 = v170;
      applesauce::CF::TypeRef::operator applesauce::CF::DictionaryRef(&v382, &v383);
      v171 = *(a1 + 16);
      if (v171)
      {
        v172 = *v171;
        if (!*v171)
        {
          goto LABEL_377;
        }
      }

      else
      {
        v172 = v131;
      }

      if (os_log_type_enabled(v172, OS_LOG_TYPE_DEBUG))
      {
        *v460 = 136315394;
        *&v460[4] = "NeuralNetLoader.cpp";
        v461 = 1024;
        v462 = 378;
        _os_log_impl(&dword_1DDB85000, v172, OS_LOG_TYPE_DEBUG, "%25s:%-5d Found the dictionary Bias.", v460, 0x12u);
      }

LABEL_377:
      if (DictionaryBlobReader::ReadVectorFromDictionary(*a1, v382, @"Data", (*a3 + 968 * v5 + 888)))
      {
        v250 = *(a1 + 16);
        if (v250)
        {
          v251 = *v250;
        }

        else
        {
          v251 = 0;
        }

        if (os_log_type_enabled(v251, OS_LOG_TYPE_ERROR))
        {
          *v460 = 136315650;
          *&v460[4] = "NeuralNetLoader.cpp";
          v461 = 1024;
          v462 = 383;
          v463 = 1024;
          LODWORD(v464.__r_.__value_.__l.__data_) = -66741;
          _os_log_impl(&dword_1DDB85000, v251, OS_LOG_TYPE_ERROR, "%25s:%-5d EXCEPTION (%d) [err != noErr is false]: Missing vector Data from dictionary Bias.", v460, 0x18u);
        }

        v269 = __cxa_allocate_exception(0x10uLL);
        *v269 = &unk_1F593B0D8;
        v269[2] = -66741;
      }

      v173 = *a3;
      v174 = *a3 + 968 * v5;
      *(v174 + 532) = 0x10000;
      v175 = *(v174 + 896);
      v176 = *(v174 + 888);
      *(v174 + 600) = 1;
      *(v174 + 664) = v176;
      v177 = v175 - v176;
      *(v174 + 536) = v177 >> 2;
      if (v177)
      {
        v178 = 0;
        do
        {
          v179 = *(a1 + 16);
          if (v179)
          {
            if (*(v179 + 8))
            {
              v180 = *v179;
              if (*v179)
              {
                if (os_log_type_enabled(*v179, OS_LOG_TYPE_DEBUG))
                {
                  v181 = *(*(v173 + 968 * v5 + 664) + 4 * v178);
                  *v460 = 136315906;
                  *&v460[4] = "NeuralNetLoader.cpp";
                  v461 = 1024;
                  v462 = 394;
                  v463 = 2048;
                  *&v464.__r_.__value_.__l.__data_ = v181;
                  LOWORD(v464.__r_.__value_.__r.__words[1]) = 2048;
                  *(&v464.__r_.__value_.__r.__words[1] + 2) = v178;
                  _os_log_impl(&dword_1DDB85000, v180, OS_LOG_TYPE_DEBUG, "%25s:%-5d Successfully retrieved bias data (%g) at index (%zu).", v460, 0x26u);
                  v173 = *a3;
                }
              }
            }
          }

          ++v178;
          v182 = (*(v173 + 968 * v5 + 896) - *(v173 + 968 * v5 + 888)) >> 2;
          if (v182 >= 4)
          {
            v182 = 4;
          }
        }

        while (v178 < v182);
      }

      v183 = CFDictionaryGetValue(v382, @"DataType");
      v184 = v183;
      v185 = MEMORY[0x1E69E9C10];
      if (!v183)
      {
        v306 = 0;
        v381 = 0;
        v307 = *(a1 + 16);
        if (v307)
        {
          v306 = *v307;
        }

        if (os_log_type_enabled(v306, OS_LOG_TYPE_ERROR))
        {
          *v460 = 136315650;
          *&v460[4] = "NeuralNetLoader.cpp";
          v461 = 1024;
          v462 = 401;
          v463 = 1024;
          LODWORD(v464.__r_.__value_.__l.__data_) = -66741;
          _os_log_impl(&dword_1DDB85000, v306, OS_LOG_TYPE_ERROR, "%25s:%-5d EXCEPTION (%d) [biasDataType_ref.get_cf() == nullptr is false]: Missing dictionary DataType from dictionary Weights.", v460, 0x18u);
        }

        v308 = __cxa_allocate_exception(0x10uLL);
        *v308 = &unk_1F593B0D8;
        v308[2] = -66741;
      }

      CFRetain(v183);
      v381 = v184;
      applesauce::CF::TypeRef::operator applesauce::CF::StringRef(&v380, &v381);
      v186 = *(a1 + 16);
      if (v186)
      {
        v187 = *v186;
        if (!*v186)
        {
          goto LABEL_400;
        }
      }

      else
      {
        v187 = v185;
      }

      if (os_log_type_enabled(v187, OS_LOG_TYPE_DEBUG))
      {
        v188 = CFCopyDescription(v380);
        v459 = v188;
        applesauce::CF::details::CFString_get_value<true>(__p, v188);
        if (v188)
        {
          CFRelease(v188);
        }

        v189 = __p;
        if (v448 < 0)
        {
          v189 = __p[0];
        }

        *v460 = 136315906;
        *&v460[4] = "NeuralNetLoader.cpp";
        v461 = 1024;
        v462 = 405;
        v463 = 2080;
        v464.__r_.__value_.__r.__words[0] = v189;
        LOWORD(v464.__r_.__value_.__r.__words[1]) = 2048;
        *(&v464.__r_.__value_.__r.__words[1] + 2) = v5;
        _os_log_impl(&dword_1DDB85000, v187, OS_LOG_TYPE_DEBUG, "%25s:%-5d Successfully retrieved bias data type (%s) for Layer %zu.", v460, 0x26u);
        if (v448 < 0)
        {
          operator delete(__p[0]);
        }
      }

LABEL_400:
      v190 = v380;
      if (v380)
      {
        CFRetain(v380);
      }

      v379 = v190;
      std::string::basic_string[abi:ne200100]<0>(v377, "float32");
      v191 = matchiString(&v379, v377);
      if (v378 < 0)
      {
        operator delete(v377[0]);
      }

      if (v379)
      {
        CFRelease(v379);
      }

      if (!v191)
      {
        v309 = *(a1 + 16);
        if (v309)
        {
          v310 = *v309;
        }

        else
        {
          v310 = 0;
        }

        if (os_log_type_enabled(v310, OS_LOG_TYPE_ERROR))
        {
          *v460 = 136315650;
          *&v460[4] = "NeuralNetLoader.cpp";
          v461 = 1024;
          v462 = 414;
          v463 = 1024;
          LODWORD(v464.__r_.__value_.__l.__data_) = -66743;
          _os_log_impl(&dword_1DDB85000, v310, OS_LOG_TYPE_ERROR, "%25s:%-5d EXCEPTION (%d): Unsupported bias data type.", v460, 0x18u);
        }

        v329 = __cxa_allocate_exception(0x10uLL);
        *v329 = &unk_1F593B0D8;
        v329[2] = -66743;
      }

      *(*a3 + 968 * v5 + 672) = 65568;
      v376 = 1065353216;
      v192 = *(a1 + 16);
      if (v192)
      {
        v193 = *v192;
        if (!*v192)
        {
          goto LABEL_413;
        }
      }

      else
      {
        v193 = v185;
      }

      if (os_log_type_enabled(v193, OS_LOG_TYPE_DEBUG))
      {
        *v460 = 136315394;
        *&v460[4] = "NeuralNetLoader.cpp";
        v461 = 1024;
        v462 = 419;
        _os_log_impl(&dword_1DDB85000, v193, OS_LOG_TYPE_DEBUG, "%25s:%-5d Loading from biasDict.", v460, 0x12u);
      }

LABEL_413:
      if (DictionaryBlobReader::ReadScalarFromDictionary<float>(*a1, v382, @"DataScale", kCFNumberFloat32Type, &v376))
      {
        v252 = *(a1 + 16);
        if (v252)
        {
          v253 = *v252;
        }

        else
        {
          v253 = 0;
        }

        if (os_log_type_enabled(v253, OS_LOG_TYPE_ERROR))
        {
          *v460 = 136315650;
          *&v460[4] = "NeuralNetLoader.cpp";
          v461 = 1024;
          v462 = 422;
          v463 = 1024;
          LODWORD(v464.__r_.__value_.__l.__data_) = -66741;
          _os_log_impl(&dword_1DDB85000, v253, OS_LOG_TYPE_ERROR, "%25s:%-5d EXCEPTION (%d) [err != noErr is false]: Missing scalar DataScale from dictionary Bias.", v460, 0x18u);
        }

        v270 = __cxa_allocate_exception(0x10uLL);
        *v270 = &unk_1F593B0D8;
        v270[2] = -66741;
      }

      *(*a3 + 968 * v5 + 692) = v376;
      v375 = 0;
      v194 = *(a1 + 16);
      if (v194)
      {
        v195 = *v194;
        if (!*v194)
        {
          goto LABEL_420;
        }
      }

      else
      {
        v195 = v185;
      }

      if (os_log_type_enabled(v195, OS_LOG_TYPE_DEBUG))
      {
        *v460 = 136315394;
        *&v460[4] = "NeuralNetLoader.cpp";
        v461 = 1024;
        v462 = 428;
        _os_log_impl(&dword_1DDB85000, v195, OS_LOG_TYPE_DEBUG, "%25s:%-5d Loading from biasDict.", v460, 0x12u);
      }

LABEL_420:
      if (DictionaryBlobReader::ReadScalarFromDictionary<float>(*a1, v382, @"DataBias", kCFNumberFloat32Type, &v375))
      {
        v254 = *(a1 + 16);
        if (v254)
        {
          v255 = *v254;
        }

        else
        {
          v255 = 0;
        }

        if (os_log_type_enabled(v255, OS_LOG_TYPE_ERROR))
        {
          *v460 = 136315650;
          *&v460[4] = "NeuralNetLoader.cpp";
          v461 = 1024;
          v462 = 431;
          v463 = 1024;
          LODWORD(v464.__r_.__value_.__l.__data_) = -66741;
          _os_log_impl(&dword_1DDB85000, v255, OS_LOG_TYPE_ERROR, "%25s:%-5d EXCEPTION (%d) [err != noErr is false]: Missing scalar DataBias from dictionary Bias.", v460, 0x18u);
        }

        v271 = __cxa_allocate_exception(0x10uLL);
        *v271 = &unk_1F593B0D8;
        v271[2] = -66741;
      }

      *(*a3 + 968 * v5 + 696) = v375;
      v196 = CFDictionaryGetValue(v454, @"Activation");
      v197 = v196;
      if (!v196)
      {
        v314 = 0;
        v374 = 0;
        v315 = *(a1 + 16);
        if (v315)
        {
          v314 = *v315;
        }

        if (os_log_type_enabled(v314, OS_LOG_TYPE_ERROR))
        {
          *v460 = 136315650;
          *&v460[4] = "NeuralNetLoader.cpp";
          v461 = 1024;
          v462 = 443;
          v463 = 1024;
          LODWORD(v464.__r_.__value_.__l.__data_) = -66741;
          _os_log_impl(&dword_1DDB85000, v314, OS_LOG_TYPE_ERROR, "%25s:%-5d EXCEPTION (%d) [activationDict_ref.get_cf() == nullptr is false]: Missing dictionary Activation.", v460, 0x18u);
        }

        v316 = __cxa_allocate_exception(0x10uLL);
        *v316 = &unk_1F593B0D8;
        v316[2] = -66741;
      }

      CFRetain(v196);
      v374 = v197;
      applesauce::CF::TypeRef::operator applesauce::CF::DictionaryRef(&v373, &v374);
      v198 = *(a1 + 16);
      if (v198)
      {
        v199 = *v198;
        if (!*v198)
        {
          goto LABEL_428;
        }
      }

      else
      {
        v199 = v185;
      }

      if (os_log_type_enabled(v199, OS_LOG_TYPE_DEBUG))
      {
        *v460 = 136315394;
        *&v460[4] = "NeuralNetLoader.cpp";
        v461 = 1024;
        v462 = 447;
        _os_log_impl(&dword_1DDB85000, v199, OS_LOG_TYPE_DEBUG, "%25s:%-5d Found the dictionary Activation.", v460, 0x12u);
      }

LABEL_428:
      v200 = CFDictionaryGetValue(v373, @"Function");
      v201 = v200;
      if (!v200)
      {
        v311 = 0;
        v372 = 0;
        v312 = *(a1 + 16);
        if (v312)
        {
          v311 = *v312;
        }

        if (os_log_type_enabled(v311, OS_LOG_TYPE_ERROR))
        {
          *v460 = 136315650;
          *&v460[4] = "NeuralNetLoader.cpp";
          v461 = 1024;
          v462 = 453;
          v463 = 1024;
          LODWORD(v464.__r_.__value_.__l.__data_) = -66741;
          _os_log_impl(&dword_1DDB85000, v311, OS_LOG_TYPE_ERROR, "%25s:%-5d EXCEPTION (%d) [activationFunction_ref.get_cf() == nullptr is false]: Failed to retrieve activation function (Function) from dictionary Activation.", v460, 0x18u);
        }

        v313 = __cxa_allocate_exception(0x10uLL);
        *v313 = &unk_1F593B0D8;
        v313[2] = -66741;
      }

      CFRetain(v200);
      v372 = v201;
      applesauce::CF::TypeRef::operator applesauce::CF::StringRef(&v371, &v372);
      v202 = *(a1 + 16);
      if (v202)
      {
        v203 = *v202;
        if (!*v202)
        {
          goto LABEL_440;
        }
      }

      else
      {
        v203 = v185;
      }

      if (os_log_type_enabled(v203, OS_LOG_TYPE_DEBUG))
      {
        v204 = CFCopyDescription(v371);
        v459 = v204;
        applesauce::CF::details::CFString_get_value<true>(__p, v204);
        if (v204)
        {
          CFRelease(v204);
        }

        v205 = __p;
        if (v448 < 0)
        {
          v205 = __p[0];
        }

        *v460 = 136315906;
        *&v460[4] = "NeuralNetLoader.cpp";
        v461 = 1024;
        v462 = 457;
        v463 = 2080;
        v464.__r_.__value_.__r.__words[0] = v205;
        LOWORD(v464.__r_.__value_.__r.__words[1]) = 2048;
        *(&v464.__r_.__value_.__r.__words[1] + 2) = v5;
        _os_log_impl(&dword_1DDB85000, v203, OS_LOG_TYPE_DEBUG, "%25s:%-5d Successfully retrieved activation function (%s) for Layer %zu.", v460, 0x26u);
        if (v448 < 0)
        {
          operator delete(__p[0]);
        }
      }

LABEL_440:
      *(*a3 + 968 * v5 + 704) = 0;
      v206 = v371;
      if (v371)
      {
        CFRetain(v371);
      }

      v370 = v206;
      std::string::basic_string[abi:ne200100]<0>(v368, "Identity");
      std::string::basic_string[abi:ne200100]<0>(v366, "Linear");
      v6 = MEMORY[0x1E69E9C10];
      v207 = matchiEither(&v370, v368, v366);
      if (v367 < 0)
      {
        operator delete(v366[0]);
      }

      if (v369 < 0)
      {
        operator delete(v368[0]);
      }

      if (v370)
      {
        CFRelease(v370);
      }

      if (v207)
      {
        v208 = 0;
      }

      else
      {
        v209 = v371;
        if (v371)
        {
          CFRetain(v371);
        }

        v365 = v209;
        std::string::basic_string[abi:ne200100]<0>(v363, "RectifiedLinear");
        std::string::basic_string[abi:ne200100]<0>(v361, "ReLU");
        v6 = MEMORY[0x1E69E9C10];
        v210 = matchiEither(&v365, v363, v361);
        if (v362 < 0)
        {
          operator delete(v361[0]);
        }

        if (v364 < 0)
        {
          operator delete(v363[0]);
        }

        if (v365)
        {
          CFRelease(v365);
        }

        if (v210)
        {
          v208 = 1;
        }

        else
        {
          v211 = v371;
          if (v371)
          {
            CFRetain(v371);
          }

          v360 = v211;
          std::string::basic_string[abi:ne200100]<0>(v358, "LeakyRectifiedLinear");
          std::string::basic_string[abi:ne200100]<0>(v356, "LeakyReLU");
          v6 = MEMORY[0x1E69E9C10];
          v212 = matchiEither(&v360, v358, v356);
          if (v357 < 0)
          {
            operator delete(v356[0]);
          }

          if (v359 < 0)
          {
            operator delete(v358[0]);
          }

          if (v360)
          {
            CFRelease(v360);
          }

          if (v212)
          {
            v208 = 2;
          }

          else
          {
            v213 = v371;
            if (v371)
            {
              CFRetain(v371);
            }

            v355 = v213;
            std::string::basic_string[abi:ne200100]<0>(v353, "Sigmoid");
            v214 = matchiString(&v355, v353);
            v6 = MEMORY[0x1E69E9C10];
            v215 = v214;
            if (v354 < 0)
            {
              operator delete(v353[0]);
            }

            if (v355)
            {
              CFRelease(v355);
            }

            if (v215)
            {
              v208 = 3;
            }

            else
            {
              v216 = v371;
              if (v371)
              {
                CFRetain(v371);
              }

              v352 = v216;
              std::string::basic_string[abi:ne200100]<0>(v350, "Tanh");
              v217 = matchiString(&v352, v350);
              v6 = MEMORY[0x1E69E9C10];
              v218 = v217;
              if (v351 < 0)
              {
                operator delete(v350[0]);
              }

              if (v352)
              {
                CFRelease(v352);
              }

              if (v218)
              {
                v208 = 4;
              }

              else
              {
                v219 = v371;
                if (v371)
                {
                  CFRetain(v371);
                }

                v349 = v219;
                std::string::basic_string[abi:ne200100]<0>(v347, "ScaledTanh");
                v220 = matchiString(&v349, v347);
                v6 = MEMORY[0x1E69E9C10];
                v221 = v220;
                if (v348 < 0)
                {
                  operator delete(v347[0]);
                }

                if (v349)
                {
                  CFRelease(v349);
                }

                if (v221)
                {
                  v208 = 5;
                }

                else
                {
                  v222 = v371;
                  if (v371)
                  {
                    CFRetain(v371);
                  }

                  v346 = v222;
                  std::string::basic_string[abi:ne200100]<0>(v344, "Abs");
                  v223 = matchiString(&v346, v344);
                  v6 = MEMORY[0x1E69E9C10];
                  v224 = v223;
                  if (v345 < 0)
                  {
                    operator delete(v344[0]);
                  }

                  if (v346)
                  {
                    CFRelease(v346);
                  }

                  if (v224)
                  {
                    v208 = 6;
                  }

                  else
                  {
                    v225 = v371;
                    if (v371)
                    {
                      CFRetain(v371);
                    }

                    v343 = v225;
                    std::string::basic_string[abi:ne200100]<0>(v341, "ELU");
                    v226 = matchiString(&v343, v341);
                    v6 = MEMORY[0x1E69E9C10];
                    v227 = v226;
                    if (v342 < 0)
                    {
                      operator delete(v341[0]);
                    }

                    if (v343)
                    {
                      CFRelease(v343);
                    }

                    if (!v227)
                    {
                      v337 = *(a1 + 16);
                      if (v337)
                      {
                        v338 = *v337;
                      }

                      else
                      {
                        v338 = 0;
                      }

                      if (os_log_type_enabled(v338, OS_LOG_TYPE_ERROR))
                      {
                        *v460 = 136315650;
                        *&v460[4] = "NeuralNetLoader.cpp";
                        v461 = 1024;
                        v462 = 496;
                        v463 = 1024;
                        LODWORD(v464.__r_.__value_.__l.__data_) = -66743;
                        _os_log_impl(&dword_1DDB85000, v338, OS_LOG_TYPE_ERROR, "%25s:%-5d EXCEPTION (%d): Unsupported activation function.", v460, 0x18u);
                      }

                      v339 = __cxa_allocate_exception(0x10uLL);
                      *v339 = &unk_1F593B0D8;
                      v339[2] = -66743;
                    }

                    v208 = 7;
                  }
                }
              }
            }
          }
        }
      }

      *(*a3 + 968 * v5 + 960) = v208;
      LODWORD(__p[0]) = 1065353216;
      v228 = *(a1 + 16);
      if (v228)
      {
        v229 = *v228;
        if (!*v228)
        {
          goto LABEL_516;
        }
      }

      else
      {
        v229 = v6;
      }

      if (os_log_type_enabled(v229, OS_LOG_TYPE_DEBUG))
      {
        *v460 = 136315394;
        *&v460[4] = "NeuralNetLoader.cpp";
        v461 = 1024;
        v462 = 501;
        _os_log_impl(&dword_1DDB85000, v229, OS_LOG_TYPE_DEBUG, "%25s:%-5d Loading from activationDict.", v460, 0x12u);
      }

LABEL_516:
      if (DictionaryBlobReader::ReadScalarFromDictionary<float>(*a1, v373, @"Alpha", kCFNumberFloat32Type, __p))
      {
        v256 = *(a1 + 16);
        if (v256)
        {
          v257 = *v256;
        }

        else
        {
          v257 = 0;
        }

        if (os_log_type_enabled(v257, OS_LOG_TYPE_ERROR))
        {
          *v460 = 136315650;
          *&v460[4] = "NeuralNetLoader.cpp";
          v461 = 1024;
          v462 = 504;
          v463 = 1024;
          LODWORD(v464.__r_.__value_.__l.__data_) = -66741;
          _os_log_impl(&dword_1DDB85000, v257, OS_LOG_TYPE_ERROR, "%25s:%-5d EXCEPTION (%d) [err != noErr is false]: Missing scalar Alpha from dictionary Activation.", v460, 0x18u);
        }

        v272 = __cxa_allocate_exception(0x10uLL);
        *v272 = &unk_1F593B0D8;
        v272[2] = -66741;
      }

      *(*a3 + 968 * v5 + 708) = __p[0];
      LODWORD(v459) = 0;
      v230 = *(a1 + 16);
      if (!v230)
      {
        v231 = v6;
LABEL_521:
        if (os_log_type_enabled(v231, OS_LOG_TYPE_DEBUG))
        {
          *v460 = 136315394;
          *&v460[4] = "NeuralNetLoader.cpp";
          v461 = 1024;
          v462 = 510;
          _os_log_impl(&dword_1DDB85000, v231, OS_LOG_TYPE_DEBUG, "%25s:%-5d Loading from activationDict.", v460, 0x12u);
        }

        goto LABEL_523;
      }

      v231 = *v230;
      if (*v230)
      {
        goto LABEL_521;
      }

LABEL_523:
      if (DictionaryBlobReader::ReadScalarFromDictionary<float>(*a1, v373, @"Beta", kCFNumberFloat32Type, &v459))
      {
        v258 = *(a1 + 16);
        if (v258)
        {
          v259 = *v258;
        }

        else
        {
          v259 = 0;
        }

        if (os_log_type_enabled(v259, OS_LOG_TYPE_ERROR))
        {
          *v460 = 136315650;
          *&v460[4] = "NeuralNetLoader.cpp";
          v461 = 1024;
          v462 = 513;
          v463 = 1024;
          LODWORD(v464.__r_.__value_.__l.__data_) = -66741;
          _os_log_impl(&dword_1DDB85000, v259, OS_LOG_TYPE_ERROR, "%25s:%-5d EXCEPTION (%d) [err != noErr is false]: Missing scalar Beta from dictionary Activation.", v460, 0x18u);
        }

        v273 = __cxa_allocate_exception(0x10uLL);
        *v273 = &unk_1F593B0D8;
        v273[2] = -66741;
      }

      *(*a3 + 968 * v5 + 712) = v459;
      if (v371)
      {
        CFRelease(v371);
      }

      CFRelease(v201);
      if (v373)
      {
        CFRelease(v373);
      }

      CFRelease(v197);
      if (v380)
      {
        CFRelease(v380);
      }

      CFRelease(v184);
      if (v382)
      {
        CFRelease(v382);
      }

      CFRelease(v170);
      if (v404)
      {
        CFRelease(v404);
      }

      if (v413)
      {
        CFRelease(v413);
      }

      if (v414)
      {
        CFRelease(v414);
      }

      if (v415)
      {
        CFRelease(v415);
      }

      if (v416)
      {
        CFRelease(v416);
      }

      if (cf)
      {
        CFRelease(cf);
      }

      if (v423)
      {
        CFRelease(v423);
      }

      if (v425)
      {
        CFRelease(v425);
      }

      if (v426)
      {
        CFRelease(v426);
      }

      if (v449)
      {
        CFRelease(v449);
      }

      if (v450)
      {
        CFRelease(v450);
      }

      if (v452)
      {
        CFRelease(v452);
      }

      if (v453)
      {
        CFRelease(v453);
      }

      if (v454)
      {
        CFRelease(v454);
      }

      if (v455)
      {
        CFRelease(v455);
      }

      if (v456)
      {
        CFRelease(v456);
      }

      if (SHIBYTE(v458) < 0)
      {
        operator delete(v457);
      }

      ++v5;
    }

    while (v5 < 0x1B810ECF56BE69C9 * ((a3[1] - *a3) >> 3));
  }
}

void sub_1DDFF3690(_Unwind_Exception *a1, int a2)
{
  if (a2)
  {
    __clang_call_terminate(a1);
  }

  _Unwind_Resume(a1);
}

void sub_1DDFF4010(uint64_t a1, int a2)
{
  if (!a2)
  {
    JUMPOUT(0x1DDFF3FA8);
  }

  JUMPOUT(0x1DDFF3EB8);
}

void sub_1DDFF4018(uint64_t a1, int a2)
{
  if (!a2)
  {
    JUMPOUT(0x1DDFF3FA8);
  }

  JUMPOUT(0x1DDFF3EB8);
}

void sub_1DDFF4020(uint64_t a1, int a2)
{
  if (!a2)
  {
    JUMPOUT(0x1DDFF3FA8);
  }

  JUMPOUT(0x1DDFF3EB8);
}

void sub_1DDFF4028(uint64_t a1, int a2)
{
  if (!a2)
  {
    JUMPOUT(0x1DDFF3FA8);
  }

  JUMPOUT(0x1DDFF3EB8);
}

void sub_1DDFF4030(uint64_t a1, int a2)
{
  if (!a2)
  {
    JUMPOUT(0x1DDFF3FA8);
  }

  JUMPOUT(0x1DDFF3EB8);
}

void NeuralNetLoader<FullyConnectedLayerBNNS<int>>::loadLayers(uint64_t a1, const __CFDictionary *a2, uint64_t *a3)
{
  v432 = *MEMORY[0x1E69E9840];
  if (a3[1] != *a3)
  {
    for (i = 0; i < 0x1B810ECF56BE69C9 * ((a3[1] - *a3) >> 3); ++i)
    {
      std::to_string(v427, i);
      v6 = std::string::insert(v427, 0, "Layer", 5uLL);
      v7 = *&v6->__r_.__value_.__l.__data_;
      v425 = v6->__r_.__value_.__r.__words[2];
      v424 = v7;
      v6->__r_.__value_.__l.__size_ = 0;
      v6->__r_.__value_.__r.__words[2] = 0;
      v6->__r_.__value_.__r.__words[0] = 0;
      if (v431.__r_.__value_.__s.__data_[3] < 0)
      {
        operator delete(*v427);
      }

      if (v425 >= 0)
      {
        v8 = &v424;
      }

      else
      {
        v8 = v424;
      }

      if (v8)
      {
        if (v425 >= 0)
        {
          v9 = HIBYTE(v425);
        }

        else
        {
          v9 = *(&v424 + 1);
        }

        v8 = CFStringCreateWithBytes(0, v8, v9, 0x8000100u, 0);
        v423 = v8;
        if (!v8)
        {
          exception = __cxa_allocate_exception(0x10uLL);
          std::runtime_error::runtime_error(exception, "Could not construct");
        }
      }

      else
      {
        v423 = 0;
      }

      Value = CFDictionaryGetValue(a2, v8);
      v11 = Value;
      if (!Value)
      {
        v246 = 0;
        v422 = 0;
        v247 = *(a1 + 16);
        if (v247)
        {
          v246 = *v247;
        }

        if (os_log_type_enabled(v246, OS_LOG_TYPE_ERROR))
        {
          v248 = &v424;
          if (v425 < 0)
          {
            v248 = v424;
          }

          *v427 = 136315906;
          *&v427[4] = "NeuralNetLoader.cpp";
          v428 = 1024;
          v429 = 60;
          v430 = 1024;
          LODWORD(v431.__r_.__value_.__l.__data_) = -66741;
          WORD2(v431.__r_.__value_.__r.__words[0]) = 2080;
          *(v431.__r_.__value_.__r.__words + 6) = v248;
          _os_log_impl(&dword_1DDB85000, v246, OS_LOG_TYPE_ERROR, "%25s:%-5d EXCEPTION (%d) [topLevelDict_ref.get_cf() == nullptr is false]: Missing dictionary: %s", v427, 0x22u);
        }

        v249 = __cxa_allocate_exception(0x10uLL);
        *v249 = &unk_1F593B0D8;
        v249[2] = -66741;
      }

      CFRetain(Value);
      v422 = v11;
      applesauce::CF::TypeRef::operator applesauce::CF::DictionaryRef(&v421, &v422);
      v12 = *(a1 + 16);
      if (v12)
      {
        v13 = *v12;
        if (!*v12)
        {
          goto LABEL_25;
        }
      }

      else
      {
        v13 = MEMORY[0x1E69E9C10];
      }

      if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
      {
        if (v425 >= 0)
        {
          v14 = &v424;
        }

        else
        {
          v14 = v424;
        }

        *v427 = 136315650;
        *&v427[4] = "NeuralNetLoader.cpp";
        v428 = 1024;
        v429 = 64;
        v430 = 2080;
        v431.__r_.__value_.__r.__words[0] = v14;
        _os_log_impl(&dword_1DDB85000, v13, OS_LOG_TYPE_INFO, "%25s:%-5d Found the dictionary: %s\n", v427, 0x1Cu);
      }

LABEL_25:
      v15 = CFDictionaryGetValue(v421, @"InputVectorDescriptor");
      v16 = v15;
      if (!v15)
      {
        v243 = 0;
        v420 = 0;
        v244 = *(a1 + 16);
        if (v244)
        {
          v243 = *v244;
        }

        if (os_log_type_enabled(v243, OS_LOG_TYPE_ERROR))
        {
          *v427 = 136315650;
          *&v427[4] = "NeuralNetLoader.cpp";
          v428 = 1024;
          v429 = 75;
          v430 = 1024;
          LODWORD(v431.__r_.__value_.__l.__data_) = -66741;
          _os_log_impl(&dword_1DDB85000, v243, OS_LOG_TYPE_ERROR, "%25s:%-5d EXCEPTION (%d) [inputDescDict_ref.get_cf() == nullptr is false]: Missing dictionary InputVectorDescriptor.", v427, 0x18u);
        }

        v245 = __cxa_allocate_exception(0x10uLL);
        *v245 = &unk_1F593B0D8;
        v245[2] = -66741;
      }

      CFRetain(v15);
      v420 = v16;
      applesauce::CF::TypeRef::operator applesauce::CF::DictionaryRef(&v419, &v420);
      v17 = *(a1 + 16);
      if (v17)
      {
        v18 = *v17;
        if (!*v17)
        {
          v418 = 0;
          goto LABEL_38;
        }
      }

      else
      {
        v18 = MEMORY[0x1E69E9C10];
      }

      if (os_log_type_enabled(v18, OS_LOG_TYPE_DEBUG))
      {
        *v427 = 136315394;
        *&v427[4] = "NeuralNetLoader.cpp";
        v428 = 1024;
        v429 = 79;
        _os_log_impl(&dword_1DDB85000, v18, OS_LOG_TYPE_DEBUG, "%25s:%-5d Found the dictionary InputVectorDescriptor.", v427, 0x12u);
        v17 = *(a1 + 16);
      }

      v418 = 0;
      if (v17)
      {
        v19 = *v17;
        if (!*v17)
        {
          goto LABEL_38;
        }
      }

      else
      {
        v19 = MEMORY[0x1E69E9C10];
      }

      if (os_log_type_enabled(v19, OS_LOG_TYPE_DEBUG))
      {
        *v427 = 136315394;
        *&v427[4] = "NeuralNetLoader.cpp";
        v428 = 1024;
        v429 = 83;
        _os_log_impl(&dword_1DDB85000, v19, OS_LOG_TYPE_DEBUG, "%25s:%-5d Loading from inputDescDict.", v427, 0x12u);
      }

LABEL_38:
      if (DictionaryBlobReader::ReadScalarFromDictionary<unsigned int>(*a1, v419, @"Size", &v418))
      {
        v199 = *(a1 + 16);
        if (v199)
        {
          v200 = *v199;
        }

        else
        {
          v200 = 0;
        }

        if (os_log_type_enabled(v200, OS_LOG_TYPE_ERROR))
        {
          *v427 = 136315650;
          *&v427[4] = "NeuralNetLoader.cpp";
          v428 = 1024;
          v429 = 86;
          v430 = 1024;
          LODWORD(v431.__r_.__value_.__l.__data_) = -66741;
          _os_log_impl(&dword_1DDB85000, v200, OS_LOG_TYPE_ERROR, "%25s:%-5d EXCEPTION (%d) [err != noErr is false]: Missing scalar Size from dictionary InputVectorDescriptor.", v427, 0x18u);
        }

        v227 = __cxa_allocate_exception(0x10uLL);
        *v227 = &unk_1F593B0D8;
        v227[2] = -66741;
      }

      v21 = *a3 + 968 * i;
      *(v21 + 4) = 0x10000;
      v22 = v418;
      *(v21 + 8) = v418;
      *(v21 + 72) = 1;
      *v427 = 0;
      std::vector<float>::resize((v21 + 792), v22, v427, v20);
      v23 = (*a3 + 968 * i);
      *v427 = 0;
      std::vector<int>::resize(v23 + 38, v418, v427);
      v24 = CFDictionaryGetValue(v419, @"DataType");
      v25 = v24;
      if (!v24)
      {
        v250 = 0;
        v417 = 0;
        v251 = *(a1 + 16);
        if (v251)
        {
          v250 = *v251;
        }

        if (os_log_type_enabled(v250, OS_LOG_TYPE_ERROR))
        {
          *v427 = 136315650;
          *&v427[4] = "NeuralNetLoader.cpp";
          v428 = 1024;
          v429 = 98;
          v430 = 1024;
          LODWORD(v431.__r_.__value_.__l.__data_) = -66741;
          _os_log_impl(&dword_1DDB85000, v250, OS_LOG_TYPE_ERROR, "%25s:%-5d EXCEPTION (%d) [inputDataType_ref.get_cf() == nullptr is false]: Missing dictionary DataType.", v427, 0x18u);
        }

        v252 = __cxa_allocate_exception(0x10uLL);
        *v252 = &unk_1F593B0D8;
        v252[2] = -66741;
      }

      CFRetain(v24);
      v417 = v25;
      applesauce::CF::TypeRef::operator applesauce::CF::StringRef(&v416, &v417);
      v26 = *(a1 + 16);
      if (v26)
      {
        v27 = *v26;
        if (!*v26)
        {
          goto LABEL_51;
        }
      }

      else
      {
        v27 = MEMORY[0x1E69E9C10];
      }

      if (os_log_type_enabled(v27, OS_LOG_TYPE_DEBUG))
      {
        v28 = CFCopyDescription(v416);
        v426 = v28;
        applesauce::CF::details::CFString_get_value<true>(__p, v28);
        if (v28)
        {
          CFRelease(v28);
        }

        v29 = __p;
        if (v415 < 0)
        {
          v29 = __p[0];
        }

        *v427 = 136315906;
        *&v427[4] = "NeuralNetLoader.cpp";
        v428 = 1024;
        v429 = 102;
        v430 = 2080;
        v431.__r_.__value_.__r.__words[0] = v29;
        LOWORD(v431.__r_.__value_.__r.__words[1]) = 2048;
        *(&v431.__r_.__value_.__r.__words[1] + 2) = i;
        _os_log_impl(&dword_1DDB85000, v27, OS_LOG_TYPE_DEBUG, "%25s:%-5d Successfully retrieved input data type (%s) for Layer %zu.", v427, 0x26u);
        if (v415 < 0)
        {
          operator delete(__p[0]);
        }
      }

LABEL_51:
      v30 = *(a1 + 8);
      if (v30 != 8)
      {
        goto LABEL_63;
      }

      v31 = v416;
      if (v416)
      {
        CFRetain(v416);
      }

      v413 = v31;
      std::string::basic_string[abi:ne200100]<0>(v411, "int8");
      std::string::basic_string[abi:ne200100]<0>(v409, "Sint8");
      v32 = matchiEither(&v413, v411, v409);
      if (v410 < 0)
      {
        operator delete(v409[0]);
      }

      if ((v412 & 0x80000000) == 0)
      {
        if (!v31)
        {
          goto LABEL_61;
        }

LABEL_60:
        CFRelease(v31);
        goto LABEL_61;
      }

      operator delete(v411[0]);
      if (v31)
      {
        goto LABEL_60;
      }

LABEL_61:
      v33 = 131080;
      if (v32)
      {
        goto LABEL_98;
      }

      v30 = *(a1 + 8);
LABEL_63:
      if (v30 != 16)
      {
        goto LABEL_76;
      }

      v34 = v416;
      if (v416)
      {
        CFRetain(v416);
      }

      v408 = v34;
      std::string::basic_string[abi:ne200100]<0>(v406, "int16");
      std::string::basic_string[abi:ne200100]<0>(v404, "SInt16");
      v35 = matchiEither(&v408, v406, v404);
      if (v405 < 0)
      {
        operator delete(v404[0]);
      }

      if ((v407 & 0x80000000) == 0)
      {
        if (!v34)
        {
          goto LABEL_73;
        }

LABEL_72:
        CFRelease(v34);
        goto LABEL_73;
      }

      operator delete(v406[0]);
      if (v34)
      {
        goto LABEL_72;
      }

LABEL_73:
      if (v35)
      {
        v33 = 131088;
        goto LABEL_98;
      }

      v30 = *(a1 + 8);
LABEL_76:
      if (v30 != 32)
      {
        goto LABEL_89;
      }

      v36 = v416;
      if (v416)
      {
        CFRetain(v416);
      }

      v403 = v36;
      std::string::basic_string[abi:ne200100]<0>(v401, "int32");
      std::string::basic_string[abi:ne200100]<0>(v399, "Sint32");
      v37 = matchiEither(&v403, v401, v399);
      if (v400 < 0)
      {
        operator delete(v399[0]);
      }

      if ((v402 & 0x80000000) == 0)
      {
        if (!v36)
        {
          goto LABEL_86;
        }

LABEL_85:
        CFRelease(v36);
        goto LABEL_86;
      }

      operator delete(v401[0]);
      if (v36)
      {
        goto LABEL_85;
      }

LABEL_86:
      if (v37)
      {
        v33 = 131104;
        goto LABEL_98;
      }

      v30 = *(a1 + 8);
LABEL_89:
      if (v30)
      {
        goto LABEL_678;
      }

      v38 = v416;
      if (v416)
      {
        CFRetain(v416);
      }

      v398 = v38;
      std::string::basic_string[abi:ne200100]<0>(v396, "float32");
      v39 = matchiString(&v398, v396);
      if (v397 < 0)
      {
        operator delete(v396[0]);
        if (!v38)
        {
          goto LABEL_97;
        }

LABEL_96:
        CFRelease(v38);
        goto LABEL_97;
      }

      if (v38)
      {
        goto LABEL_96;
      }

LABEL_97:
      v33 = 65568;
      if (!v39)
      {
LABEL_678:
        v284 = *(a1 + 16);
        if (v284)
        {
          v285 = *v284;
        }

        else
        {
          v285 = 0;
        }

        if (os_log_type_enabled(v285, OS_LOG_TYPE_ERROR))
        {
          v297 = *(a1 + 8);
          *v427 = 136315906;
          *&v427[4] = "NeuralNetLoader.cpp";
          v428 = 1024;
          v429 = 124;
          v430 = 1024;
          LODWORD(v431.__r_.__value_.__l.__data_) = -66743;
          WORD2(v431.__r_.__value_.__r.__words[0]) = 1024;
          *(v431.__r_.__value_.__r.__words + 6) = v297;
          _os_log_impl(&dword_1DDB85000, v285, OS_LOG_TYPE_ERROR, "%25s:%-5d EXCEPTION (%d): Unsupported input data quantization type for Quantization (%u).", v427, 0x1Eu);
        }

        v298 = __cxa_allocate_exception(0x10uLL);
        *v298 = &unk_1F593B0D8;
        v298[2] = -66743;
      }

LABEL_98:
      *(*a3 + 968 * i + 144) = v33;
      v395 = 1065353216;
      v40 = *(a1 + 16);
      if (v40)
      {
        v41 = *v40;
        if (!*v40)
        {
          goto LABEL_104;
        }
      }

      else
      {
        v41 = MEMORY[0x1E69E9C10];
      }

      if (os_log_type_enabled(v41, OS_LOG_TYPE_DEBUG))
      {
        *v427 = 136315394;
        *&v427[4] = "NeuralNetLoader.cpp";
        v428 = 1024;
        v429 = 129;
        _os_log_impl(&dword_1DDB85000, v41, OS_LOG_TYPE_DEBUG, "%25s:%-5d Loading from inputDescDict.", v427, 0x12u);
      }

LABEL_104:
      if (DictionaryBlobReader::ReadScalarFromDictionary<float>(*a1, v419, @"DataScale", kCFNumberFloat32Type, &v395))
      {
        v201 = *(a1 + 16);
        if (v201)
        {
          v202 = *v201;
        }

        else
        {
          v202 = 0;
        }

        if (os_log_type_enabled(v202, OS_LOG_TYPE_ERROR))
        {
          *v427 = 136315650;
          *&v427[4] = "NeuralNetLoader.cpp";
          v428 = 1024;
          v429 = 132;
          v430 = 1024;
          LODWORD(v431.__r_.__value_.__l.__data_) = -66741;
          _os_log_impl(&dword_1DDB85000, v202, OS_LOG_TYPE_ERROR, "%25s:%-5d EXCEPTION (%d) [err != noErr is false]: Missing scalar DataScale from dictionary InputVectorDescriptor.", v427, 0x18u);
        }

        v228 = __cxa_allocate_exception(0x10uLL);
        *v228 = &unk_1F593B0D8;
        v228[2] = -66741;
      }

      *(*a3 + 968 * i + 164) = v395;
      v394 = 0;
      if (DictionaryBlobReader::ReadScalarFromDictionary<float>(*a1, v419, @"DataBias", kCFNumberFloat32Type, &v394))
      {
        v203 = *(a1 + 16);
        if (v203)
        {
          v204 = *v203;
        }

        else
        {
          v204 = 0;
        }

        if (os_log_type_enabled(v204, OS_LOG_TYPE_ERROR))
        {
          *v427 = 136315650;
          *&v427[4] = "NeuralNetLoader.cpp";
          v428 = 1024;
          v429 = 140;
          v430 = 1024;
          LODWORD(v431.__r_.__value_.__l.__data_) = -66741;
          _os_log_impl(&dword_1DDB85000, v204, OS_LOG_TYPE_ERROR, "%25s:%-5d EXCEPTION (%d) [err != noErr is false]: Missing scalar DataBias from dictionary InputVectorDescriptor.", v427, 0x18u);
        }

        v229 = __cxa_allocate_exception(0x10uLL);
        *v229 = &unk_1F593B0D8;
        v229[2] = -66741;
      }

      *(*a3 + 968 * i + 168) = v394;
      v42 = CFDictionaryGetValue(v421, @"OutputVectorDescriptor");
      v43 = v42;
      if (!v42)
      {
        v253 = 0;
        v393 = 0;
        v254 = *(a1 + 16);
        if (v254)
        {
          v253 = *v254;
        }

        if (os_log_type_enabled(v253, OS_LOG_TYPE_ERROR))
        {
          *v427 = 136315650;
          *&v427[4] = "NeuralNetLoader.cpp";
          v428 = 1024;
          v429 = 153;
          v430 = 1024;
          LODWORD(v431.__r_.__value_.__l.__data_) = -66741;
          _os_log_impl(&dword_1DDB85000, v253, OS_LOG_TYPE_ERROR, "%25s:%-5d EXCEPTION (%d) [outputDescDict_ref.get_cf() == nullptr is false]: Missing dictionary OutputVectorDescriptor.", v427, 0x18u);
        }

        v255 = __cxa_allocate_exception(0x10uLL);
        *v255 = &unk_1F593B0D8;
        v255[2] = -66741;
      }

      CFRetain(v42);
      v393 = v43;
      applesauce::CF::TypeRef::operator applesauce::CF::DictionaryRef(&v392, &v393);
      v44 = *(a1 + 16);
      if (v44)
      {
        v45 = *v44;
        if (!*v44)
        {
          v391 = 0;
          goto LABEL_119;
        }
      }

      else
      {
        v45 = MEMORY[0x1E69E9C10];
      }

      if (os_log_type_enabled(v45, OS_LOG_TYPE_DEBUG))
      {
        *v427 = 136315394;
        *&v427[4] = "NeuralNetLoader.cpp";
        v428 = 1024;
        v429 = 157;
        _os_log_impl(&dword_1DDB85000, v45, OS_LOG_TYPE_DEBUG, "%25s:%-5d Found the dictionary OutputVectorDescriptor.", v427, 0x12u);
        v44 = *(a1 + 16);
      }

      v391 = 0;
      if (v44)
      {
        v46 = *v44;
        if (!*v44)
        {
          goto LABEL_119;
        }
      }

      else
      {
        v46 = MEMORY[0x1E69E9C10];
      }

      if (os_log_type_enabled(v46, OS_LOG_TYPE_DEBUG))
      {
        *v427 = 136315394;
        *&v427[4] = "NeuralNetLoader.cpp";
        v428 = 1024;
        v429 = 161;
        _os_log_impl(&dword_1DDB85000, v46, OS_LOG_TYPE_DEBUG, "%25s:%-5d Loading from outputDescDict.", v427, 0x12u);
      }

LABEL_119:
      if (DictionaryBlobReader::ReadScalarFromDictionary<unsigned int>(*a1, v392, @"Size", &v391))
      {
        v205 = *(a1 + 16);
        if (v205)
        {
          v206 = *v205;
        }

        else
        {
          v206 = 0;
        }

        if (os_log_type_enabled(v206, OS_LOG_TYPE_ERROR))
        {
          *v427 = 136315650;
          *&v427[4] = "NeuralNetLoader.cpp";
          v428 = 1024;
          v429 = 164;
          v430 = 1024;
          LODWORD(v431.__r_.__value_.__l.__data_) = -66741;
          _os_log_impl(&dword_1DDB85000, v206, OS_LOG_TYPE_ERROR, "%25s:%-5d EXCEPTION (%d) [err != noErr is false]: Missing scalar Size from dictionary OutputVectorDescriptor.", v427, 0x18u);
        }

        v230 = __cxa_allocate_exception(0x10uLL);
        *v230 = &unk_1F593B0D8;
        v230[2] = -66741;
      }

      v48 = *a3 + 968 * i;
      *(v48 + 356) = 0x10000;
      v49 = v391;
      *(v48 + 360) = v391;
      *(v48 + 424) = 1;
      *v427 = 0;
      std::vector<float>::resize((v48 + 816), v49, v427, v47);
      v50 = CFDictionaryGetValue(v392, @"DataType");
      v51 = v50;
      if (!v50)
      {
        v256 = 0;
        v390 = 0;
        v257 = *(a1 + 16);
        if (v257)
        {
          v256 = *v257;
        }

        if (os_log_type_enabled(v256, OS_LOG_TYPE_ERROR))
        {
          *v427 = 136315650;
          *&v427[4] = "NeuralNetLoader.cpp";
          v428 = 1024;
          v429 = 176;
          v430 = 1024;
          LODWORD(v431.__r_.__value_.__l.__data_) = -66741;
          _os_log_impl(&dword_1DDB85000, v256, OS_LOG_TYPE_ERROR, "%25s:%-5d EXCEPTION (%d) [outputDataType_ref.get_cf() == nullptr is false]: Failed to retrieve output data type (DataType) from dictionary OutputVectorDescriptor.", v427, 0x18u);
        }

        v258 = __cxa_allocate_exception(0x10uLL);
        *v258 = &unk_1F593B0D8;
        v258[2] = -66741;
      }

      CFRetain(v50);
      v390 = v51;
      applesauce::CF::TypeRef::operator applesauce::CF::StringRef(&cf, &v390);
      v52 = *(a1 + 16);
      if (v52)
      {
        v53 = *v52;
        if (!*v52)
        {
          goto LABEL_132;
        }
      }

      else
      {
        v53 = MEMORY[0x1E69E9C10];
      }

      if (os_log_type_enabled(v53, OS_LOG_TYPE_DEBUG))
      {
        v54 = CFCopyDescription(cf);
        v426 = v54;
        applesauce::CF::details::CFString_get_value<true>(__p, v54);
        if (v54)
        {
          CFRelease(v54);
        }

        v55 = __p;
        if (v415 < 0)
        {
          v55 = __p[0];
        }

        *v427 = 136315906;
        *&v427[4] = "NeuralNetLoader.cpp";
        v428 = 1024;
        v429 = 179;
        v430 = 2080;
        v431.__r_.__value_.__r.__words[0] = v55;
        LOWORD(v431.__r_.__value_.__r.__words[1]) = 1024;
        *(&v431.__r_.__value_.__r.__words[1] + 2) = i;
        _os_log_impl(&dword_1DDB85000, v53, OS_LOG_TYPE_DEBUG, "%25s:%-5d Successfully retrieved output data type (%s) for Layer %u.", v427, 0x22u);
        if (v415 < 0)
        {
          operator delete(__p[0]);
        }
      }

LABEL_132:
      v56 = cf;
      if (cf)
      {
        CFRetain(cf);
      }

      v388 = v56;
      std::string::basic_string[abi:ne200100]<0>(v386, "float32");
      v57 = matchiString(&v388, v386);
      if (v387 < 0)
      {
        operator delete(v386[0]);
      }

      if (v388)
      {
        CFRelease(v388);
      }

      if (!v57)
      {
        v259 = *(a1 + 16);
        if (v259)
        {
          v260 = *v259;
        }

        else
        {
          v260 = 0;
        }

        if (os_log_type_enabled(v260, OS_LOG_TYPE_ERROR))
        {
          *v427 = 136315650;
          *&v427[4] = "NeuralNetLoader.cpp";
          v428 = 1024;
          v429 = 189;
          v430 = 1024;
          LODWORD(v431.__r_.__value_.__l.__data_) = -66743;
          _os_log_impl(&dword_1DDB85000, v260, OS_LOG_TYPE_ERROR, "%25s:%-5d EXCEPTION (%d): Unsupported output data type.", v427, 0x18u);
        }

        v292 = __cxa_allocate_exception(0x10uLL);
        *v292 = &unk_1F593B0D8;
        v292[2] = -66743;
      }

      *(*a3 + 968 * i + 496) = 65568;
      v385 = 1065353216;
      v58 = *(a1 + 16);
      if (v58)
      {
        v59 = *v58;
        if (!*v58)
        {
          goto LABEL_145;
        }
      }

      else
      {
        v59 = MEMORY[0x1E69E9C10];
      }

      if (os_log_type_enabled(v59, OS_LOG_TYPE_DEBUG))
      {
        *v427 = 136315394;
        *&v427[4] = "NeuralNetLoader.cpp";
        v428 = 1024;
        v429 = 194;
        _os_log_impl(&dword_1DDB85000, v59, OS_LOG_TYPE_DEBUG, "%25s:%-5d Loading from outputDescDict.", v427, 0x12u);
      }

LABEL_145:
      if (DictionaryBlobReader::ReadScalarFromDictionary<float>(*a1, v392, @"DataScale", kCFNumberFloat32Type, &v385))
      {
        v207 = *(a1 + 16);
        if (v207)
        {
          v208 = *v207;
        }

        else
        {
          v208 = 0;
        }

        if (os_log_type_enabled(v208, OS_LOG_TYPE_ERROR))
        {
          *v427 = 136315650;
          *&v427[4] = "NeuralNetLoader.cpp";
          v428 = 1024;
          v429 = 197;
          v430 = 1024;
          LODWORD(v431.__r_.__value_.__l.__data_) = -66741;
          _os_log_impl(&dword_1DDB85000, v208, OS_LOG_TYPE_ERROR, "%25s:%-5d EXCEPTION (%d) [err != noErr is false]: Missing scalar DataScale from dictionary OutputVectorDescriptor.", v427, 0x18u);
        }

        v231 = __cxa_allocate_exception(0x10uLL);
        *v231 = &unk_1F593B0D8;
        v231[2] = -66741;
      }

      *(*a3 + 968 * i + 516) = v385;
      v384 = 0;
      v60 = *(a1 + 16);
      if (v60)
      {
        v61 = *v60;
        if (!*v60)
        {
          goto LABEL_152;
        }
      }

      else
      {
        v61 = MEMORY[0x1E69E9C10];
      }

      if (os_log_type_enabled(v61, OS_LOG_TYPE_DEBUG))
      {
        *v427 = 136315394;
        *&v427[4] = "NeuralNetLoader.cpp";
        v428 = 1024;
        v429 = 203;
        _os_log_impl(&dword_1DDB85000, v61, OS_LOG_TYPE_DEBUG, "%25s:%-5d Loading from outputDescDict.", v427, 0x12u);
      }

LABEL_152:
      if (DictionaryBlobReader::ReadScalarFromDictionary<float>(*a1, v392, @"DataBias", kCFNumberFloat32Type, &v384))
      {
        v209 = *(a1 + 16);
        if (v209)
        {
          v210 = *v209;
        }

        else
        {
          v210 = 0;
        }

        if (os_log_type_enabled(v210, OS_LOG_TYPE_ERROR))
        {
          *v427 = 136315650;
          *&v427[4] = "NeuralNetLoader.cpp";
          v428 = 1024;
          v429 = 206;
          v430 = 1024;
          LODWORD(v431.__r_.__value_.__l.__data_) = -66741;
          _os_log_impl(&dword_1DDB85000, v210, OS_LOG_TYPE_ERROR, "%25s:%-5d EXCEPTION (%d) [err != noErr is false]: Missing scalar DataBias from dictionary OutputVectorDescriptor.", v427, 0x18u);
        }

        v232 = __cxa_allocate_exception(0x10uLL);
        *v232 = &unk_1F593B0D8;
        v232[2] = -66741;
      }

      *(*a3 + 968 * i + 520) = v384;
      v62 = CFDictionaryGetValue(v421, @"LayerDescriptor");
      v63 = v62;
      if (!v62)
      {
        v383 = 0;
        v66 = *(a1 + 16);
        if (v66)
        {
          v67 = *v66;
          if (!*v66)
          {
LABEL_202:
            *(*a3 + 968 * i + 964) = 0;
            goto LABEL_203;
          }
        }

        else
        {
          v67 = MEMORY[0x1E69E9C10];
        }

        if (os_log_type_enabled(v67, OS_LOG_TYPE_DEFAULT))
        {
          *v427 = 136315650;
          *&v427[4] = "NeuralNetLoader.cpp";
          v428 = 1024;
          v429 = 221;
          v430 = 2048;
          v431.__r_.__value_.__r.__words[0] = i;
          _os_log_impl(&dword_1DDB85000, v67, OS_LOG_TYPE_DEFAULT, "%25s:%-5d LayerDescriptor for layer %zu not found, using default fully connected layer.", v427, 0x1Cu);
        }

        goto LABEL_202;
      }

      CFRetain(v62);
      v383 = v63;
      applesauce::CF::TypeRef::operator applesauce::CF::DictionaryRef(&v382, &v383);
      v64 = *(a1 + 16);
      if (v64)
      {
        v65 = *v64;
        if (!*v64)
        {
          goto LABEL_163;
        }
      }

      else
      {
        v65 = MEMORY[0x1E69E9C10];
      }

      if (os_log_type_enabled(v65, OS_LOG_TYPE_DEBUG))
      {
        *v427 = 136315394;
        *&v427[4] = "NeuralNetLoader.cpp";
        v428 = 1024;
        v429 = 228;
        _os_log_impl(&dword_1DDB85000, v65, OS_LOG_TYPE_DEBUG, "%25s:%-5d Found the dictionary LayerDescriptor.", v427, 0x12u);
      }

LABEL_163:
      v68 = CFDictionaryGetValue(v382, @"Type");
      v69 = v68;
      if (!v68)
      {
        v289 = 0;
        v381 = 0;
        v290 = *(a1 + 16);
        if (v290)
        {
          v289 = *v290;
        }

        if (os_log_type_enabled(v289, OS_LOG_TYPE_ERROR))
        {
          *v427 = 136315650;
          *&v427[4] = "NeuralNetLoader.cpp";
          v428 = 1024;
          v429 = 233;
          v430 = 1024;
          LODWORD(v431.__r_.__value_.__l.__data_) = -66741;
          _os_log_impl(&dword_1DDB85000, v289, OS_LOG_TYPE_ERROR, "%25s:%-5d EXCEPTION (%d) [layerType_ref.get_cf() == nullptr is false]: Failed to retrieve layer type (Type) from dictionary LayerDescriptor.", v427, 0x18u);
        }

        v291 = __cxa_allocate_exception(0x10uLL);
        *v291 = &unk_1F593B0D8;
        v291[2] = -66741;
      }

      CFRetain(v68);
      v381 = v69;
      applesauce::CF::TypeRef::operator applesauce::CF::StringRef(&v380, &v381);
      v70 = *(a1 + 16);
      if (!v70)
      {
        v71 = MEMORY[0x1E69E9C10];
LABEL_168:
        if (os_log_type_enabled(v71, OS_LOG_TYPE_INFO))
        {
          v72 = CFCopyDescription(v380);
          v426 = v72;
          applesauce::CF::details::CFString_get_value<true>(__p, v72);
          if (v72)
          {
            CFRelease(v72);
          }

          v73 = __p;
          if (v415 < 0)
          {
            v73 = __p[0];
          }

          *v427 = 136315906;
          *&v427[4] = "NeuralNetLoader.cpp";
          v428 = 1024;
          v429 = 237;
          v430 = 2080;
          v431.__r_.__value_.__r.__words[0] = v73;
          LOWORD(v431.__r_.__value_.__r.__words[1]) = 2048;
          *(&v431.__r_.__value_.__r.__words[1] + 2) = i;
          _os_log_impl(&dword_1DDB85000, v71, OS_LOG_TYPE_INFO, "%25s:%-5d Successfully retrieved Type (%s) for LayerDescriptor %zu.", v427, 0x26u);
          if (v415 < 0)
          {
            operator delete(__p[0]);
          }
        }

        goto LABEL_175;
      }

      v71 = *v70;
      if (*v70)
      {
        goto LABEL_168;
      }

LABEL_175:
      v74 = v380;
      if (v380)
      {
        CFRetain(v380);
      }

      v379 = v74;
      std::string::basic_string[abi:ne200100]<0>(v377, "FullyConnected");
      std::string::basic_string[abi:ne200100]<0>(v375, "Dense");
      v75 = matchiEither(&v379, v377, v375);
      if (v376 < 0)
      {
        operator delete(v375[0]);
      }

      if (v378 < 0)
      {
        operator delete(v377[0]);
      }

      if (v379)
      {
        CFRelease(v379);
      }

      if (v75)
      {
        v76 = 0;
      }

      else
      {
        v77 = v380;
        if (v380)
        {
          CFRetain(v380);
        }

        v374 = v77;
        std::string::basic_string[abi:ne200100]<0>(v372, "LSTM");
        v78 = matchiString(&v374, v372);
        if (v373 < 0)
        {
          operator delete(v372[0]);
        }

        if (v374)
        {
          CFRelease(v374);
        }

        if (!v78)
        {
          v301 = *(a1 + 16);
          if (v301)
          {
            v302 = *v301;
          }

          else
          {
            v302 = 0;
          }

          if (os_log_type_enabled(v302, OS_LOG_TYPE_ERROR))
          {
            *v427 = 136315650;
            *&v427[4] = "NeuralNetLoader.cpp";
            v428 = 1024;
            v429 = 250;
            v430 = 1024;
            LODWORD(v431.__r_.__value_.__l.__data_) = -66743;
            _os_log_impl(&dword_1DDB85000, v302, OS_LOG_TYPE_ERROR, "%25s:%-5d EXCEPTION (%d): Unsupported LayerType.", v427, 0x18u);
          }

          v303 = __cxa_allocate_exception(0x10uLL);
          *v303 = &unk_1F593B0D8;
          v303[2] = -66743;
        }

        v76 = 1;
      }

      *(*a3 + 968 * i + 964) = v76;
      if (v380)
      {
        CFRelease(v380);
      }

      if (v381)
      {
        CFRelease(v381);
      }

      if (v382)
      {
        CFRelease(v382);
      }

LABEL_203:
      v79 = CFDictionaryGetValue(v421, @"Weights");
      v80 = v79;
      if (!v79)
      {
        v264 = 0;
        v382 = 0;
        v265 = *(a1 + 16);
        if (v265)
        {
          v264 = *v265;
        }

        if (os_log_type_enabled(v264, OS_LOG_TYPE_ERROR))
        {
          *v427 = 136315650;
          *&v427[4] = "NeuralNetLoader.cpp";
          v428 = 1024;
          v429 = 262;
          v430 = 1024;
          LODWORD(v431.__r_.__value_.__l.__data_) = -66741;
          _os_log_impl(&dword_1DDB85000, v264, OS_LOG_TYPE_ERROR, "%25s:%-5d EXCEPTION (%d) [weightsDict_ref.get_cf() == nullptr is false]: Missing dictionary Weights.", v427, 0x18u);
        }

        v266 = __cxa_allocate_exception(0x10uLL);
        *v266 = &unk_1F593B0D8;
        v266[2] = -66741;
      }

      CFRetain(v79);
      v382 = v80;
      applesauce::CF::TypeRef::operator applesauce::CF::DictionaryRef(&v381, &v382);
      v81 = *(a1 + 16);
      if (v81)
      {
        v82 = *v81;
        if (!*v81)
        {
          goto LABEL_210;
        }
      }

      else
      {
        v82 = MEMORY[0x1E69E9C10];
      }

      if (os_log_type_enabled(v82, OS_LOG_TYPE_DEBUG))
      {
        *v427 = 136315394;
        *&v427[4] = "NeuralNetLoader.cpp";
        v428 = 1024;
        v429 = 266;
        _os_log_impl(&dword_1DDB85000, v82, OS_LOG_TYPE_DEBUG, "%25s:%-5d Found the dictionary Weights.", v427, 0x12u);
      }

LABEL_210:
      v83 = *a1;
      v84 = *a3;
      v85 = CFDictionaryGetValue(v381, @"Data");
      v86 = v85;
      if (!v85)
      {
        v263 = *v83;
        if (*v83)
        {
          v262 = *v263;
          if (!*v263)
          {
            goto LABEL_698;
          }
        }

        else
        {
          v262 = MEMORY[0x1E69E9C10];
        }

        if (os_log_type_enabled(v262, OS_LOG_TYPE_DEFAULT))
        {
          *v427 = 136315650;
          *&v427[4] = "DictionaryBlobReader.hpp";
          v428 = 1024;
          v429 = 101;
          v430 = 2112;
          v431.__r_.__value_.__r.__words[0] = @"Data";
LABEL_697:
          _os_log_impl(&dword_1DDB85000, v262, OS_LOG_TYPE_DEFAULT, "%25s:%-5d Failed to retrieve '%@'", v427, 0x1Cu);
        }

LABEL_698:
        v293 = *(a1 + 16);
        if (v293)
        {
          v294 = *v293;
        }

        else
        {
          v294 = 0;
        }

        if (os_log_type_enabled(v294, OS_LOG_TYPE_ERROR))
        {
          *v427 = 136315650;
          *&v427[4] = "NeuralNetLoader.cpp";
          v428 = 1024;
          v429 = 271;
          v430 = 1024;
          LODWORD(v431.__r_.__value_.__l.__data_) = -66741;
          _os_log_impl(&dword_1DDB85000, v294, OS_LOG_TYPE_ERROR, "%25s:%-5d EXCEPTION (%d) [err != noErr is false]: Missing vector Data from dictionary Weights.", v427, 0x18u);
        }

        v295 = __cxa_allocate_exception(0x10uLL);
        *v295 = &unk_1F593B0D8;
        v295[2] = -66741;
      }

      v87 = CFGetTypeID(v85);
      if (v87 != CFDataGetTypeID())
      {
        v261 = *v83;
        if (!*v83)
        {
          v262 = MEMORY[0x1E69E9C10];
          goto LABEL_692;
        }

        v262 = *v261;
        if (*v261)
        {
LABEL_692:
          if (os_log_type_enabled(v262, OS_LOG_TYPE_DEFAULT))
          {
            *v427 = 136315650;
            *&v427[4] = "DictionaryBlobReader.hpp";
            v428 = 1024;
            v429 = 107;
            v430 = 2112;
            v431.__r_.__value_.__r.__words[0] = @"Data";
            goto LABEL_697;
          }
        }

        goto LABEL_698;
      }

      Length = CFDataGetLength(v86);
      v89 = (v84 + 968 * i + 936);
      v90 = Length >> 2;
      *v427 = 0;
      std::vector<int>::assign(v89, Length >> 2, v427);
      BytePtr = CFDataGetBytePtr(v86);
      if (Length >= 4)
      {
        begin = v89->__begin_;
        if (v90 <= 1)
        {
          v93 = 1;
        }

        else
        {
          v93 = v90;
        }

        do
        {
          v94 = *BytePtr;
          BytePtr += 4;
          *begin++ = v94;
          --v93;
        }

        while (v93);
      }

      v95 = *a3 + 968 * i;
      v96 = *(v95 + 964);
      v97 = v96 == 1;
      if (v96 == 1)
      {
        v98 = *(v95 + 360);
      }

      else
      {
        v98 = 0;
      }

      v99 = *(v95 + 8) + v98;
      if (v97)
      {
        v100 = 4 * *(v95 + 360);
      }

      else
      {
        v100 = *(v95 + 360);
      }

      v101 = v100 * v99;
      v102 = *(v95 + 944);
      v103 = *(v95 + 936);
      v104 = (v102 - v103) >> 2;
      if (v104 != v100 * v99)
      {
        v211 = *(a1 + 16);
        if (v211)
        {
          v212 = *v211;
        }

        else
        {
          v212 = 0;
        }

        if (os_log_type_enabled(v212, OS_LOG_TYPE_ERROR))
        {
          *v427 = 136316162;
          *&v427[4] = "NeuralNetLoader.cpp";
          v428 = 1024;
          v429 = 280;
          v430 = 1024;
          LODWORD(v431.__r_.__value_.__l.__data_) = -66743;
          WORD2(v431.__r_.__value_.__r.__words[0]) = 2048;
          *(v431.__r_.__value_.__r.__words + 6) = v104;
          HIWORD(v431.__r_.__value_.__r.__words[1]) = 2048;
          v431.__r_.__value_.__r.__words[2] = v101;
          _os_log_impl(&dword_1DDB85000, v212, OS_LOG_TYPE_ERROR, "%25s:%-5d EXCEPTION (%d) [nnLayers[i].mWeightsQuantized.size() != weightsNumberOfCoefficients is false]: Number of weights in Data (%lu) does not match the required number of weights (%lu).", v427, 0x2Cu);
        }

        v233 = __cxa_allocate_exception(0x10uLL);
        *v233 = &unk_1F593B0D8;
        v233[2] = -66743;
      }

      *(v95 + 180) = 0x20000;
      *(v95 + 184) = v99;
      *(v95 + 192) = v100;
      *(v95 + 248) = 1;
      *(v95 + 256) = v99;
      *(v95 + 312) = v103;
      if (v102 != v103)
      {
        v105 = 0;
        while (1)
        {
          v106 = *(a1 + 8);
          HIDWORD(v108) = v106;
          LODWORD(v108) = v106;
          v107 = v108 >> 3;
          v109 = *(a1 + 16);
          if (v107 > 1)
          {
            break;
          }

          if (v107)
          {
            if (v107 != 1)
            {
              goto LABEL_607;
            }

            if (!v109)
            {
              goto LABEL_253;
            }

            if ((*(v109 + 8) & 1) == 0)
            {
              goto LABEL_253;
            }

            v110 = *v109;
            if (!*v109 || !os_log_type_enabled(*v109, OS_LOG_TYPE_DEBUG))
            {
              goto LABEL_253;
            }

            v111 = *(*(v95 + 312) + v105);
            *v427 = 136315906;
            *&v427[4] = "NeuralNetLoader.cpp";
            v428 = 1024;
            v429 = 296;
            v430 = 1024;
            LODWORD(v431.__r_.__value_.__l.__data_) = v111;
            WORD2(v431.__r_.__value_.__r.__words[0]) = 2048;
            *(v431.__r_.__value_.__r.__words + 6) = v105;
            v112 = v110;
            v113 = "%25s:%-5d Successfully retrieved weights data (%i) at index (%zu).";
LABEL_251:
            v118 = 34;
            goto LABEL_252;
          }

          if (!v109)
          {
            goto LABEL_253;
          }

          if ((*(v109 + 8) & 1) == 0)
          {
            goto LABEL_253;
          }

          v116 = *v109;
          if (!*v109 || !os_log_type_enabled(*v109, OS_LOG_TYPE_DEBUG))
          {
            goto LABEL_253;
          }

          v117 = *(*(v95 + 312) + 4 * v105);
          *v427 = 136315906;
          *&v427[4] = "NeuralNetLoader.cpp";
          v428 = 1024;
          v429 = 308;
          v430 = 2048;
          *&v431.__r_.__value_.__l.__data_ = v117;
          LOWORD(v431.__r_.__value_.__r.__words[1]) = 2048;
          *(&v431.__r_.__value_.__r.__words[1] + 2) = v105;
          v112 = v116;
          v113 = "%25s:%-5d Successfully retrieved weights data (%g) at index (%zu).";
          v118 = 38;
LABEL_252:
          _os_log_impl(&dword_1DDB85000, v112, OS_LOG_TYPE_DEBUG, v113, v427, v118);
LABEL_253:
          ++v105;
          v95 = *a3 + 968 * i;
          v121 = (*(v95 + 944) - *(v95 + 936)) >> 2;
          if (v121 >= 4)
          {
            v121 = 4;
          }

          if (v105 >= v121)
          {
            goto LABEL_256;
          }
        }

        if (v107 == 2)
        {
          if (!v109)
          {
            goto LABEL_253;
          }

          if ((*(v109 + 8) & 1) == 0)
          {
            goto LABEL_253;
          }

          v119 = *v109;
          if (!*v109 || !os_log_type_enabled(*v109, OS_LOG_TYPE_DEBUG))
          {
            goto LABEL_253;
          }

          v120 = *(*(v95 + 312) + 2 * v105);
          *v427 = 136315906;
          *&v427[4] = "NeuralNetLoader.cpp";
          v428 = 1024;
          v429 = 300;
          v430 = 1024;
          LODWORD(v431.__r_.__value_.__l.__data_) = v120;
          WORD2(v431.__r_.__value_.__r.__words[0]) = 2048;
          *(v431.__r_.__value_.__r.__words + 6) = v105;
          v112 = v119;
          v113 = "%25s:%-5d Successfully retrieved weights data (%i) at index (%zu).";
        }

        else
        {
          if (v107 != 4)
          {
LABEL_607:
            if (v109)
            {
              v241 = *v109;
            }

            else
            {
              v241 = 0;
            }

            if (os_log_type_enabled(v241, OS_LOG_TYPE_ERROR))
            {
              *v427 = 136315906;
              *&v427[4] = "NeuralNetLoader.cpp";
              v428 = 1024;
              v429 = 312;
              v430 = 1024;
              LODWORD(v431.__r_.__value_.__l.__data_) = -66743;
              WORD2(v431.__r_.__value_.__r.__words[0]) = 1024;
              *(v431.__r_.__value_.__r.__words + 6) = v106;
              _os_log_impl(&dword_1DDB85000, v241, OS_LOG_TYPE_ERROR, "%25s:%-5d EXCEPTION (%d): Unknown quantization type (%u).", v427, 0x1Eu);
            }

            v242 = __cxa_allocate_exception(0x10uLL);
            *v242 = &unk_1F593B0D8;
            v242[2] = -66743;
          }

          if (!v109)
          {
            goto LABEL_253;
          }

          if ((*(v109 + 8) & 1) == 0)
          {
            goto LABEL_253;
          }

          v114 = *v109;
          if (!*v109 || !os_log_type_enabled(*v109, OS_LOG_TYPE_DEBUG))
          {
            goto LABEL_253;
          }

          v115 = *(*(v95 + 312) + 4 * v105);
          *v427 = 136315906;
          *&v427[4] = "NeuralNetLoader.cpp";
          v428 = 1024;
          v429 = 304;
          v430 = 1024;
          LODWORD(v431.__r_.__value_.__l.__data_) = v115;
          WORD2(v431.__r_.__value_.__r.__words[0]) = 2048;
          *(v431.__r_.__value_.__r.__words + 6) = v105;
          v112 = v114;
          v113 = "%25s:%-5d Successfully retrieved weights data (%i) at index (%zu).";
        }

        goto LABEL_251;
      }

LABEL_256:
      v122 = CFDictionaryGetValue(v381, @"DataType");
      v123 = v122;
      if (!v122)
      {
        v267 = 0;
        v380 = 0;
        v268 = *(a1 + 16);
        if (v268)
        {
          v267 = *v268;
        }

        if (os_log_type_enabled(v267, OS_LOG_TYPE_ERROR))
        {
          *v427 = 136315650;
          *&v427[4] = "NeuralNetLoader.cpp";
          v428 = 1024;
          v429 = 320;
          v430 = 1024;
          LODWORD(v431.__r_.__value_.__l.__data_) = -66741;
          _os_log_impl(&dword_1DDB85000, v267, OS_LOG_TYPE_ERROR, "%25s:%-5d EXCEPTION (%d) [weightsDataType_ref.get_cf() == nullptr is false]: Missing DataType from dictionary Weights.", v427, 0x18u);
        }

        v269 = __cxa_allocate_exception(0x10uLL);
        *v269 = &unk_1F593B0D8;
        v269[2] = -66741;
      }

      CFRetain(v122);
      v380 = v123;
      applesauce::CF::TypeRef::operator applesauce::CF::StringRef(&v371, &v380);
      v124 = *(a1 + 16);
      if (v124)
      {
        v125 = *v124;
        if (!*v124)
        {
          goto LABEL_268;
        }
      }

      else
      {
        v125 = MEMORY[0x1E69E9C10];
      }

      if (os_log_type_enabled(v125, OS_LOG_TYPE_DEBUG))
      {
        v126 = CFCopyDescription(v371);
        v426 = v126;
        applesauce::CF::details::CFString_get_value<true>(__p, v126);
        if (v126)
        {
          CFRelease(v126);
        }

        v127 = __p;
        if (v415 < 0)
        {
          v127 = __p[0];
        }

        *v427 = 136315906;
        *&v427[4] = "NeuralNetLoader.cpp";
        v428 = 1024;
        v429 = 324;
        v430 = 2080;
        v431.__r_.__value_.__r.__words[0] = v127;
        LOWORD(v431.__r_.__value_.__r.__words[1]) = 2048;
        *(&v431.__r_.__value_.__r.__words[1] + 2) = i;
        _os_log_impl(&dword_1DDB85000, v125, OS_LOG_TYPE_DEBUG, "%25s:%-5d Successfully retrieved weights data type (%s) for Layer %zu.", v427, 0x26u);
        if (v415 < 0)
        {
          operator delete(__p[0]);
        }
      }

LABEL_268:
      v128 = *(a1 + 8);
      if (v128 == 8)
      {
        v129 = v371;
        if (v371)
        {
          CFRetain(v371);
        }

        v370 = v129;
        std::string::basic_string[abi:ne200100]<0>(v368, "int8");
        std::string::basic_string[abi:ne200100]<0>(v366, "SInt8");
        v130 = matchiEither(&v370, v368, v366);
        if (v367 < 0)
        {
          operator delete(v366[0]);
        }

        if (v369 < 0)
        {
          operator delete(v368[0]);
        }

        if (v370)
        {
          CFRelease(v370);
        }

        v131 = 131080;
        if (v130)
        {
          goto LABEL_311;
        }

        v128 = *(a1 + 8);
      }

      if (v128 == 16)
      {
        v132 = v371;
        if (v371)
        {
          CFRetain(v371);
        }

        v365 = v132;
        std::string::basic_string[abi:ne200100]<0>(v363, "int16");
        std::string::basic_string[abi:ne200100]<0>(v361, "SInt16");
        v133 = matchiEither(&v365, v363, v361);
        if (v362 < 0)
        {
          operator delete(v361[0]);
        }

        if (v364 < 0)
        {
          operator delete(v363[0]);
        }

        if (v365)
        {
          CFRelease(v365);
        }

        if (v133)
        {
          v131 = 131088;
          goto LABEL_311;
        }

        v128 = *(a1 + 8);
      }

      if (v128 == 32)
      {
        v134 = v371;
        if (v371)
        {
          CFRetain(v371);
        }

        v360 = v134;
        std::string::basic_string[abi:ne200100]<0>(v358, "int32");
        std::string::basic_string[abi:ne200100]<0>(v356, "SInt32");
        v135 = matchiEither(&v360, v358, v356);
        if (v357 < 0)
        {
          operator delete(v356[0]);
        }

        if (v359 < 0)
        {
          operator delete(v358[0]);
        }

        if (v360)
        {
          CFRelease(v360);
        }

        if (v135)
        {
          v131 = 131104;
          goto LABEL_311;
        }

        v128 = *(a1 + 8);
      }

      if (v128)
      {
        goto LABEL_680;
      }

      v136 = v371;
      if (v371)
      {
        CFRetain(v371);
      }

      v355 = v136;
      std::string::basic_string[abi:ne200100]<0>(v353, "float32");
      v137 = matchiString(&v355, v353);
      if (v354 < 0)
      {
        operator delete(v353[0]);
      }

      if (v355)
      {
        CFRelease(v355);
      }

      v131 = 65568;
      if (!v137)
      {
LABEL_680:
        v286 = *(a1 + 16);
        if (v286)
        {
          v287 = *v286;
        }

        else
        {
          v287 = 0;
        }

        if (os_log_type_enabled(v287, OS_LOG_TYPE_ERROR))
        {
          v299 = *(a1 + 8);
          *v427 = 136315906;
          *&v427[4] = "NeuralNetLoader.cpp";
          v428 = 1024;
          v429 = 346;
          v430 = 1024;
          LODWORD(v431.__r_.__value_.__l.__data_) = -66743;
          WORD2(v431.__r_.__value_.__r.__words[0]) = 1024;
          *(v431.__r_.__value_.__r.__words + 6) = v299;
          _os_log_impl(&dword_1DDB85000, v287, OS_LOG_TYPE_ERROR, "%25s:%-5d EXCEPTION (%d): Unsupported weights data quantization type for Quantization (%u).", v427, 0x1Eu);
        }

        v300 = __cxa_allocate_exception(0x10uLL);
        *v300 = &unk_1F593B0D8;
        v300[2] = -66743;
      }

LABEL_311:
      *(*a3 + 968 * i + 320) = v131;
      v352 = 1065353216;
      v138 = *(a1 + 16);
      if (v138)
      {
        v139 = *v138;
        if (!*v138)
        {
          goto LABEL_317;
        }
      }

      else
      {
        v139 = MEMORY[0x1E69E9C10];
      }

      if (os_log_type_enabled(v139, OS_LOG_TYPE_DEBUG))
      {
        *v427 = 136315394;
        *&v427[4] = "NeuralNetLoader.cpp";
        v428 = 1024;
        v429 = 351;
        _os_log_impl(&dword_1DDB85000, v139, OS_LOG_TYPE_DEBUG, "%25s:%-5d Loading from weightsDict.", v427, 0x12u);
      }

LABEL_317:
      if (DictionaryBlobReader::ReadScalarFromDictionary<float>(*a1, v381, @"DataScale", kCFNumberFloat32Type, &v352))
      {
        v213 = *(a1 + 16);
        if (v213)
        {
          v214 = *v213;
        }

        else
        {
          v214 = 0;
        }

        if (os_log_type_enabled(v214, OS_LOG_TYPE_ERROR))
        {
          *v427 = 136315650;
          *&v427[4] = "NeuralNetLoader.cpp";
          v428 = 1024;
          v429 = 354;
          v430 = 1024;
          LODWORD(v431.__r_.__value_.__l.__data_) = -66741;
          _os_log_impl(&dword_1DDB85000, v214, OS_LOG_TYPE_ERROR, "%25s:%-5d EXCEPTION (%d) [err != noErr is false]: Missing scalar DataScale from dictionary Weights.", v427, 0x18u);
        }

        v234 = __cxa_allocate_exception(0x10uLL);
        *v234 = &unk_1F593B0D8;
        v234[2] = -66741;
      }

      *(*a3 + 968 * i + 340) = v352;
      v351 = 0;
      v140 = *(a1 + 16);
      if (v140)
      {
        v141 = *v140;
        if (!*v140)
        {
          goto LABEL_324;
        }
      }

      else
      {
        v141 = MEMORY[0x1E69E9C10];
      }

      if (os_log_type_enabled(v141, OS_LOG_TYPE_DEBUG))
      {
        *v427 = 136315394;
        *&v427[4] = "NeuralNetLoader.cpp";
        v428 = 1024;
        v429 = 360;
        _os_log_impl(&dword_1DDB85000, v141, OS_LOG_TYPE_DEBUG, "%25s:%-5d Loading from weightsDict.", v427, 0x12u);
      }

LABEL_324:
      if (DictionaryBlobReader::ReadScalarFromDictionary<float>(*a1, v381, @"DataBias", kCFNumberFloat32Type, &v351))
      {
        v215 = *(a1 + 16);
        if (v215)
        {
          v216 = *v215;
        }

        else
        {
          v216 = 0;
        }

        if (os_log_type_enabled(v216, OS_LOG_TYPE_ERROR))
        {
          *v427 = 136315650;
          *&v427[4] = "NeuralNetLoader.cpp";
          v428 = 1024;
          v429 = 363;
          v430 = 1024;
          LODWORD(v431.__r_.__value_.__l.__data_) = -66741;
          _os_log_impl(&dword_1DDB85000, v216, OS_LOG_TYPE_ERROR, "%25s:%-5d EXCEPTION (%d) [err != noErr is false]: Missing scalar DataBias from dictionary Weights.", v427, 0x18u);
        }

        v235 = __cxa_allocate_exception(0x10uLL);
        *v235 = &unk_1F593B0D8;
        v235[2] = -66741;
      }

      *(*a3 + 968 * i + 344) = v351;
      v142 = CFDictionaryGetValue(v421, @"Bias");
      v143 = v142;
      if (!v142)
      {
        v270 = 0;
        v350 = 0;
        v271 = *(a1 + 16);
        if (v271)
        {
          v270 = *v271;
        }

        if (os_log_type_enabled(v270, OS_LOG_TYPE_ERROR))
        {
          *v427 = 136315650;
          *&v427[4] = "NeuralNetLoader.cpp";
          v428 = 1024;
          v429 = 374;
          v430 = 1024;
          LODWORD(v431.__r_.__value_.__l.__data_) = -66741;
          _os_log_impl(&dword_1DDB85000, v270, OS_LOG_TYPE_ERROR, "%25s:%-5d EXCEPTION (%d) [biasDict_ref.get_cf() == nullptr is false]: Missing dictionary Bias from dictionary Weights.", v427, 0x18u);
        }

        v272 = __cxa_allocate_exception(0x10uLL);
        *v272 = &unk_1F593B0D8;
        v272[2] = -66741;
      }

      CFRetain(v142);
      v350 = v143;
      applesauce::CF::TypeRef::operator applesauce::CF::DictionaryRef(&v349, &v350);
      v144 = *(a1 + 16);
      if (v144)
      {
        v145 = *v144;
        if (!*v144)
        {
          goto LABEL_332;
        }
      }

      else
      {
        v145 = MEMORY[0x1E69E9C10];
      }

      if (os_log_type_enabled(v145, OS_LOG_TYPE_DEBUG))
      {
        *v427 = 136315394;
        *&v427[4] = "NeuralNetLoader.cpp";
        v428 = 1024;
        v429 = 378;
        _os_log_impl(&dword_1DDB85000, v145, OS_LOG_TYPE_DEBUG, "%25s:%-5d Found the dictionary Bias.", v427, 0x12u);
      }

LABEL_332:
      if (DictionaryBlobReader::ReadVectorFromDictionary(*a1, v349, @"Data", (*a3 + 968 * i + 888)))
      {
        v217 = *(a1 + 16);
        if (v217)
        {
          v218 = *v217;
        }

        else
        {
          v218 = 0;
        }

        if (os_log_type_enabled(v218, OS_LOG_TYPE_ERROR))
        {
          *v427 = 136315650;
          *&v427[4] = "NeuralNetLoader.cpp";
          v428 = 1024;
          v429 = 383;
          v430 = 1024;
          LODWORD(v431.__r_.__value_.__l.__data_) = -66741;
          _os_log_impl(&dword_1DDB85000, v218, OS_LOG_TYPE_ERROR, "%25s:%-5d EXCEPTION (%d) [err != noErr is false]: Missing vector Data from dictionary Bias.", v427, 0x18u);
        }

        v236 = __cxa_allocate_exception(0x10uLL);
        *v236 = &unk_1F593B0D8;
        v236[2] = -66741;
      }

      v146 = *a3;
      v147 = *a3 + 968 * i;
      *(v147 + 532) = 0x10000;
      v148 = *(v147 + 896);
      v149 = *(v147 + 888);
      *(v147 + 600) = 1;
      *(v147 + 664) = v149;
      v150 = v148 - v149;
      *(v147 + 536) = v150 >> 2;
      if (v150)
      {
        v151 = 0;
        do
        {
          v152 = *(a1 + 16);
          if (v152)
          {
            if (*(v152 + 8))
            {
              v153 = *v152;
              if (*v152)
              {
                if (os_log_type_enabled(*v152, OS_LOG_TYPE_DEBUG))
                {
                  v154 = *(*(v146 + 968 * i + 664) + 4 * v151);
                  *v427 = 136315906;
                  *&v427[4] = "NeuralNetLoader.cpp";
                  v428 = 1024;
                  v429 = 394;
                  v430 = 2048;
                  *&v431.__r_.__value_.__l.__data_ = v154;
                  LOWORD(v431.__r_.__value_.__r.__words[1]) = 2048;
                  *(&v431.__r_.__value_.__r.__words[1] + 2) = v151;
                  _os_log_impl(&dword_1DDB85000, v153, OS_LOG_TYPE_DEBUG, "%25s:%-5d Successfully retrieved bias data (%g) at index (%zu).", v427, 0x26u);
                  v146 = *a3;
                }
              }
            }
          }

          ++v151;
          v155 = (*(v146 + 968 * i + 896) - *(v146 + 968 * i + 888)) >> 2;
          if (v155 >= 4)
          {
            v155 = 4;
          }
        }

        while (v151 < v155);
      }

      v156 = CFDictionaryGetValue(v349, @"DataType");
      v157 = v156;
      if (!v156)
      {
        v273 = 0;
        v348 = 0;
        v274 = *(a1 + 16);
        if (v274)
        {
          v273 = *v274;
        }

        if (os_log_type_enabled(v273, OS_LOG_TYPE_ERROR))
        {
          *v427 = 136315650;
          *&v427[4] = "NeuralNetLoader.cpp";
          v428 = 1024;
          v429 = 401;
          v430 = 1024;
          LODWORD(v431.__r_.__value_.__l.__data_) = -66741;
          _os_log_impl(&dword_1DDB85000, v273, OS_LOG_TYPE_ERROR, "%25s:%-5d EXCEPTION (%d) [biasDataType_ref.get_cf() == nullptr is false]: Missing dictionary DataType from dictionary Weights.", v427, 0x18u);
        }

        v275 = __cxa_allocate_exception(0x10uLL);
        *v275 = &unk_1F593B0D8;
        v275[2] = -66741;
      }

      CFRetain(v156);
      v348 = v157;
      applesauce::CF::TypeRef::operator applesauce::CF::StringRef(&v347, &v348);
      v158 = *(a1 + 16);
      if (v158)
      {
        v159 = *v158;
        if (!*v158)
        {
          goto LABEL_355;
        }
      }

      else
      {
        v159 = MEMORY[0x1E69E9C10];
      }

      if (os_log_type_enabled(v159, OS_LOG_TYPE_DEBUG))
      {
        v160 = CFCopyDescription(v347);
        v426 = v160;
        applesauce::CF::details::CFString_get_value<true>(__p, v160);
        if (v160)
        {
          CFRelease(v160);
        }

        v161 = __p;
        if (v415 < 0)
        {
          v161 = __p[0];
        }

        *v427 = 136315906;
        *&v427[4] = "NeuralNetLoader.cpp";
        v428 = 1024;
        v429 = 405;
        v430 = 2080;
        v431.__r_.__value_.__r.__words[0] = v161;
        LOWORD(v431.__r_.__value_.__r.__words[1]) = 2048;
        *(&v431.__r_.__value_.__r.__words[1] + 2) = i;
        _os_log_impl(&dword_1DDB85000, v159, OS_LOG_TYPE_DEBUG, "%25s:%-5d Successfully retrieved bias data type (%s) for Layer %zu.", v427, 0x26u);
        if (v415 < 0)
        {
          operator delete(__p[0]);
        }
      }

LABEL_355:
      v162 = v347;
      if (v347)
      {
        CFRetain(v347);
      }

      v346 = v162;
      std::string::basic_string[abi:ne200100]<0>(v344, "float32");
      v163 = matchiString(&v346, v344);
      if (v345 < 0)
      {
        operator delete(v344[0]);
      }

      if (v346)
      {
        CFRelease(v346);
      }

      if (!v163)
      {
        v276 = *(a1 + 16);
        if (v276)
        {
          v277 = *v276;
        }

        else
        {
          v277 = 0;
        }

        if (os_log_type_enabled(v277, OS_LOG_TYPE_ERROR))
        {
          *v427 = 136315650;
          *&v427[4] = "NeuralNetLoader.cpp";
          v428 = 1024;
          v429 = 414;
          v430 = 1024;
          LODWORD(v431.__r_.__value_.__l.__data_) = -66743;
          _os_log_impl(&dword_1DDB85000, v277, OS_LOG_TYPE_ERROR, "%25s:%-5d EXCEPTION (%d): Unsupported bias data type.", v427, 0x18u);
        }

        v296 = __cxa_allocate_exception(0x10uLL);
        *v296 = &unk_1F593B0D8;
        v296[2] = -66743;
      }

      *(*a3 + 968 * i + 672) = 65568;
      v343 = 1065353216;
      v164 = *(a1 + 16);
      if (v164)
      {
        v165 = *v164;
        if (!*v164)
        {
          goto LABEL_368;
        }
      }

      else
      {
        v165 = MEMORY[0x1E69E9C10];
      }

      if (os_log_type_enabled(v165, OS_LOG_TYPE_DEBUG))
      {
        *v427 = 136315394;
        *&v427[4] = "NeuralNetLoader.cpp";
        v428 = 1024;
        v429 = 419;
        _os_log_impl(&dword_1DDB85000, v165, OS_LOG_TYPE_DEBUG, "%25s:%-5d Loading from biasDict.", v427, 0x12u);
      }

LABEL_368:
      if (DictionaryBlobReader::ReadScalarFromDictionary<float>(*a1, v349, @"DataScale", kCFNumberFloat32Type, &v343))
      {
        v219 = *(a1 + 16);
        if (v219)
        {
          v220 = *v219;
        }

        else
        {
          v220 = 0;
        }

        if (os_log_type_enabled(v220, OS_LOG_TYPE_ERROR))
        {
          *v427 = 136315650;
          *&v427[4] = "NeuralNetLoader.cpp";
          v428 = 1024;
          v429 = 422;
          v430 = 1024;
          LODWORD(v431.__r_.__value_.__l.__data_) = -66741;
          _os_log_impl(&dword_1DDB85000, v220, OS_LOG_TYPE_ERROR, "%25s:%-5d EXCEPTION (%d) [err != noErr is false]: Missing scalar DataScale from dictionary Bias.", v427, 0x18u);
        }

        v237 = __cxa_allocate_exception(0x10uLL);
        *v237 = &unk_1F593B0D8;
        v237[2] = -66741;
      }

      *(*a3 + 968 * i + 692) = v343;
      v342 = 0;
      v166 = *(a1 + 16);
      if (v166)
      {
        v167 = *v166;
        if (!*v166)
        {
          goto LABEL_375;
        }
      }

      else
      {
        v167 = MEMORY[0x1E69E9C10];
      }

      if (os_log_type_enabled(v167, OS_LOG_TYPE_DEBUG))
      {
        *v427 = 136315394;
        *&v427[4] = "NeuralNetLoader.cpp";
        v428 = 1024;
        v429 = 428;
        _os_log_impl(&dword_1DDB85000, v167, OS_LOG_TYPE_DEBUG, "%25s:%-5d Loading from biasDict.", v427, 0x12u);
      }

LABEL_375:
      if (DictionaryBlobReader::ReadScalarFromDictionary<float>(*a1, v349, @"DataBias", kCFNumberFloat32Type, &v342))
      {
        v221 = *(a1 + 16);
        if (v221)
        {
          v222 = *v221;
        }

        else
        {
          v222 = 0;
        }

        if (os_log_type_enabled(v222, OS_LOG_TYPE_ERROR))
        {
          *v427 = 136315650;
          *&v427[4] = "NeuralNetLoader.cpp";
          v428 = 1024;
          v429 = 431;
          v430 = 1024;
          LODWORD(v431.__r_.__value_.__l.__data_) = -66741;
          _os_log_impl(&dword_1DDB85000, v222, OS_LOG_TYPE_ERROR, "%25s:%-5d EXCEPTION (%d) [err != noErr is false]: Missing scalar DataBias from dictionary Bias.", v427, 0x18u);
        }

        v238 = __cxa_allocate_exception(0x10uLL);
        *v238 = &unk_1F593B0D8;
        v238[2] = -66741;
      }

      *(*a3 + 968 * i + 696) = v342;
      v168 = CFDictionaryGetValue(v421, @"Activation");
      v169 = v168;
      if (!v168)
      {
        v281 = 0;
        v341 = 0;
        v282 = *(a1 + 16);
        if (v282)
        {
          v281 = *v282;
        }

        if (os_log_type_enabled(v281, OS_LOG_TYPE_ERROR))
        {
          *v427 = 136315650;
          *&v427[4] = "NeuralNetLoader.cpp";
          v428 = 1024;
          v429 = 443;
          v430 = 1024;
          LODWORD(v431.__r_.__value_.__l.__data_) = -66741;
          _os_log_impl(&dword_1DDB85000, v281, OS_LOG_TYPE_ERROR, "%25s:%-5d EXCEPTION (%d) [activationDict_ref.get_cf() == nullptr is false]: Missing dictionary Activation.", v427, 0x18u);
        }

        v283 = __cxa_allocate_exception(0x10uLL);
        *v283 = &unk_1F593B0D8;
        v283[2] = -66741;
      }

      CFRetain(v168);
      v341 = v169;
      applesauce::CF::TypeRef::operator applesauce::CF::DictionaryRef(&v340, &v341);
      v170 = *(a1 + 16);
      if (v170)
      {
        v171 = *v170;
        if (!*v170)
        {
          goto LABEL_383;
        }
      }

      else
      {
        v171 = MEMORY[0x1E69E9C10];
      }

      if (os_log_type_enabled(v171, OS_LOG_TYPE_DEBUG))
      {
        *v427 = 136315394;
        *&v427[4] = "NeuralNetLoader.cpp";
        v428 = 1024;
        v429 = 447;
        _os_log_impl(&dword_1DDB85000, v171, OS_LOG_TYPE_DEBUG, "%25s:%-5d Found the dictionary Activation.", v427, 0x12u);
      }

LABEL_383:
      v172 = CFDictionaryGetValue(v340, @"Function");
      v173 = v172;
      if (!v172)
      {
        v278 = 0;
        v339 = 0;
        v279 = *(a1 + 16);
        if (v279)
        {
          v278 = *v279;
        }

        if (os_log_type_enabled(v278, OS_LOG_TYPE_ERROR))
        {
          *v427 = 136315650;
          *&v427[4] = "NeuralNetLoader.cpp";
          v428 = 1024;
          v429 = 453;
          v430 = 1024;
          LODWORD(v431.__r_.__value_.__l.__data_) = -66741;
          _os_log_impl(&dword_1DDB85000, v278, OS_LOG_TYPE_ERROR, "%25s:%-5d EXCEPTION (%d) [activationFunction_ref.get_cf() == nullptr is false]: Failed to retrieve activation function (Function) from dictionary Activation.", v427, 0x18u);
        }

        v280 = __cxa_allocate_exception(0x10uLL);
        *v280 = &unk_1F593B0D8;
        v280[2] = -66741;
      }

      CFRetain(v172);
      v339 = v173;
      applesauce::CF::TypeRef::operator applesauce::CF::StringRef(&v338, &v339);
      v174 = *(a1 + 16);
      if (v174)
      {
        v175 = *v174;
        if (!*v174)
        {
          goto LABEL_395;
        }
      }

      else
      {
        v175 = MEMORY[0x1E69E9C10];
      }

      if (os_log_type_enabled(v175, OS_LOG_TYPE_DEBUG))
      {
        v176 = CFCopyDescription(v338);
        v426 = v176;
        applesauce::CF::details::CFString_get_value<true>(__p, v176);
        if (v176)
        {
          CFRelease(v176);
        }

        v177 = __p;
        if (v415 < 0)
        {
          v177 = __p[0];
        }

        *v427 = 136315906;
        *&v427[4] = "NeuralNetLoader.cpp";
        v428 = 1024;
        v429 = 457;
        v430 = 2080;
        v431.__r_.__value_.__r.__words[0] = v177;
        LOWORD(v431.__r_.__value_.__r.__words[1]) = 2048;
        *(&v431.__r_.__value_.__r.__words[1] + 2) = i;
        _os_log_impl(&dword_1DDB85000, v175, OS_LOG_TYPE_DEBUG, "%25s:%-5d Successfully retrieved activation function (%s) for Layer %zu.", v427, 0x26u);
        if (v415 < 0)
        {
          operator delete(__p[0]);
        }
      }

LABEL_395:
      *(*a3 + 968 * i + 704) = 0;
      v178 = v338;
      if (v338)
      {
        CFRetain(v338);
      }

      v337 = v178;
      std::string::basic_string[abi:ne200100]<0>(v335, "Identity");
      std::string::basic_string[abi:ne200100]<0>(v333, "Linear");
      v179 = matchiEither(&v337, v335, v333);
      if (v334 < 0)
      {
        operator delete(v333[0]);
      }

      if (v336 < 0)
      {
        operator delete(v335[0]);
      }

      if (v337)
      {
        CFRelease(v337);
      }

      if (v179)
      {
        v180 = 0;
      }

      else
      {
        v181 = v338;
        if (v338)
        {
          CFRetain(v338);
        }

        v332 = v181;
        std::string::basic_string[abi:ne200100]<0>(v330, "RectifiedLinear");
        std::string::basic_string[abi:ne200100]<0>(v328, "ReLU");
        v182 = matchiEither(&v332, v330, v328);
        if (v329 < 0)
        {
          operator delete(v328[0]);
        }

        if (v331 < 0)
        {
          operator delete(v330[0]);
        }

        if (v332)
        {
          CFRelease(v332);
        }

        if (v182)
        {
          v180 = 1;
        }

        else
        {
          v183 = v338;
          if (v338)
          {
            CFRetain(v338);
          }

          v327 = v183;
          std::string::basic_string[abi:ne200100]<0>(v325, "LeakyRectifiedLinear");
          std::string::basic_string[abi:ne200100]<0>(v323, "LeakyReLU");
          v184 = matchiEither(&v327, v325, v323);
          if (v324 < 0)
          {
            operator delete(v323[0]);
          }

          if (v326 < 0)
          {
            operator delete(v325[0]);
          }

          if (v327)
          {
            CFRelease(v327);
          }

          if (v184)
          {
            v180 = 2;
          }

          else
          {
            v185 = v338;
            if (v338)
            {
              CFRetain(v338);
            }

            v322 = v185;
            std::string::basic_string[abi:ne200100]<0>(v320, "Sigmoid");
            v186 = matchiString(&v322, v320);
            if (v321 < 0)
            {
              operator delete(v320[0]);
            }

            if (v322)
            {
              CFRelease(v322);
            }

            if (v186)
            {
              v180 = 3;
            }

            else
            {
              v187 = v338;
              if (v338)
              {
                CFRetain(v338);
              }

              v319 = v187;
              std::string::basic_string[abi:ne200100]<0>(v317, "Tanh");
              v188 = matchiString(&v319, v317);
              if (v318 < 0)
              {
                operator delete(v317[0]);
              }

              if (v319)
              {
                CFRelease(v319);
              }

              if (v188)
              {
                v180 = 4;
              }

              else
              {
                v189 = v338;
                if (v338)
                {
                  CFRetain(v338);
                }

                v316 = v189;
                std::string::basic_string[abi:ne200100]<0>(v314, "ScaledTanh");
                v190 = matchiString(&v316, v314);
                if (v315 < 0)
                {
                  operator delete(v314[0]);
                }

                if (v316)
                {
                  CFRelease(v316);
                }

                if (v190)
                {
                  v180 = 5;
                }

                else
                {
                  v191 = v338;
                  if (v338)
                  {
                    CFRetain(v338);
                  }

                  v313 = v191;
                  std::string::basic_string[abi:ne200100]<0>(v311, "Abs");
                  v192 = matchiString(&v313, v311);
                  if (v312 < 0)
                  {
                    operator delete(v311[0]);
                  }

                  if (v313)
                  {
                    CFRelease(v313);
                  }

                  if (v192)
                  {
                    v180 = 6;
                  }

                  else
                  {
                    v193 = v338;
                    if (v338)
                    {
                      CFRetain(v338);
                    }

                    v310 = v193;
                    std::string::basic_string[abi:ne200100]<0>(v308, "ELU");
                    v194 = matchiString(&v310, v308);
                    if (v309 < 0)
                    {
                      operator delete(v308[0]);
                    }

                    if (v310)
                    {
                      CFRelease(v310);
                    }

                    if (!v194)
                    {
                      v304 = *(a1 + 16);
                      if (v304)
                      {
                        v305 = *v304;
                      }

                      else
                      {
                        v305 = 0;
                      }

                      if (os_log_type_enabled(v305, OS_LOG_TYPE_ERROR))
                      {
                        *v427 = 136315650;
                        *&v427[4] = "NeuralNetLoader.cpp";
                        v428 = 1024;
                        v429 = 496;
                        v430 = 1024;
                        LODWORD(v431.__r_.__value_.__l.__data_) = -66743;
                        _os_log_impl(&dword_1DDB85000, v305, OS_LOG_TYPE_ERROR, "%25s:%-5d EXCEPTION (%d): Unsupported activation function.", v427, 0x18u);
                      }

                      v306 = __cxa_allocate_exception(0x10uLL);
                      *v306 = &unk_1F593B0D8;
                      v306[2] = -66743;
                    }

                    v180 = 7;
                  }
                }
              }
            }
          }
        }
      }

      *(*a3 + 968 * i + 960) = v180;
      LODWORD(__p[0]) = 1065353216;
      v195 = *(a1 + 16);
      if (v195)
      {
        v196 = *v195;
        if (!*v195)
        {
          goto LABEL_471;
        }
      }

      else
      {
        v196 = MEMORY[0x1E69E9C10];
      }

      if (os_log_type_enabled(v196, OS_LOG_TYPE_DEBUG))
      {
        *v427 = 136315394;
        *&v427[4] = "NeuralNetLoader.cpp";
        v428 = 1024;
        v429 = 501;
        _os_log_impl(&dword_1DDB85000, v196, OS_LOG_TYPE_DEBUG, "%25s:%-5d Loading from activationDict.", v427, 0x12u);
      }

LABEL_471:
      if (DictionaryBlobReader::ReadScalarFromDictionary<float>(*a1, v340, @"Alpha", kCFNumberFloat32Type, __p))
      {
        v223 = *(a1 + 16);
        if (v223)
        {
          v224 = *v223;
        }

        else
        {
          v224 = 0;
        }

        if (os_log_type_enabled(v224, OS_LOG_TYPE_ERROR))
        {
          *v427 = 136315650;
          *&v427[4] = "NeuralNetLoader.cpp";
          v428 = 1024;
          v429 = 504;
          v430 = 1024;
          LODWORD(v431.__r_.__value_.__l.__data_) = -66741;
          _os_log_impl(&dword_1DDB85000, v224, OS_LOG_TYPE_ERROR, "%25s:%-5d EXCEPTION (%d) [err != noErr is false]: Missing scalar Alpha from dictionary Activation.", v427, 0x18u);
        }

        v239 = __cxa_allocate_exception(0x10uLL);
        *v239 = &unk_1F593B0D8;
        v239[2] = -66741;
      }

      *(*a3 + 968 * i + 708) = __p[0];
      LODWORD(v426) = 0;
      v197 = *(a1 + 16);
      if (!v197)
      {
        v198 = MEMORY[0x1E69E9C10];
LABEL_476:
        if (os_log_type_enabled(v198, OS_LOG_TYPE_DEBUG))
        {
          *v427 = 136315394;
          *&v427[4] = "NeuralNetLoader.cpp";
          v428 = 1024;
          v429 = 510;
          _os_log_impl(&dword_1DDB85000, v198, OS_LOG_TYPE_DEBUG, "%25s:%-5d Loading from activationDict.", v427, 0x12u);
        }

        goto LABEL_478;
      }

      v198 = *v197;
      if (*v197)
      {
        goto LABEL_476;
      }

LABEL_478:
      if (DictionaryBlobReader::ReadScalarFromDictionary<float>(*a1, v340, @"Beta", kCFNumberFloat32Type, &v426))
      {
        v225 = *(a1 + 16);
        if (v225)
        {
          v226 = *v225;
        }

        else
        {
          v226 = 0;
        }

        if (os_log_type_enabled(v226, OS_LOG_TYPE_ERROR))
        {
          *v427 = 136315650;
          *&v427[4] = "NeuralNetLoader.cpp";
          v428 = 1024;
          v429 = 513;
          v430 = 1024;
          LODWORD(v431.__r_.__value_.__l.__data_) = -66741;
          _os_log_impl(&dword_1DDB85000, v226, OS_LOG_TYPE_ERROR, "%25s:%-5d EXCEPTION (%d) [err != noErr is false]: Missing scalar Beta from dictionary Activation.", v427, 0x18u);
        }

        v240 = __cxa_allocate_exception(0x10uLL);
        *v240 = &unk_1F593B0D8;
        v240[2] = -66741;
      }

      *(*a3 + 968 * i + 712) = v426;
      if (v338)
      {
        CFRelease(v338);
      }

      CFRelease(v173);
      if (v340)
      {
        CFRelease(v340);
      }

      CFRelease(v169);
      if (v347)
      {
        CFRelease(v347);
      }

      CFRelease(v157);
      if (v349)
      {
        CFRelease(v349);
      }

      CFRelease(v143);
      if (v371)
      {
        CFRelease(v371);
      }

      if (v380)
      {
        CFRelease(v380);
      }

      if (v381)
      {
        CFRelease(v381);
      }

      if (v382)
      {
        CFRelease(v382);
      }

      if (v383)
      {
        CFRelease(v383);
      }

      if (cf)
      {
        CFRelease(cf);
      }

      if (v390)
      {
        CFRelease(v390);
      }

      if (v392)
      {
        CFRelease(v392);
      }

      if (v393)
      {
        CFRelease(v393);
      }

      if (v416)
      {
        CFRelease(v416);
      }

      if (v417)
      {
        CFRelease(v417);
      }

      if (v419)
      {
        CFRelease(v419);
      }

      if (v420)
      {
        CFRelease(v420);
      }

      if (v421)
      {
        CFRelease(v421);
      }

      if (v422)
      {
        CFRelease(v422);
      }

      if (v423)
      {
        CFRelease(v423);
      }

      if (SHIBYTE(v425) < 0)
      {
        operator delete(v424);
      }
    }
  }
}

void sub_1DDFF8120(_Unwind_Exception *a1, int a2)
{
  if (a2)
  {
    __clang_call_terminate(a1);
  }

  _Unwind_Resume(a1);
}

void sub_1DDFF8A98(uint64_t a1, int a2)
{
  if (!a2)
  {
    JUMPOUT(0x1DDFF8A30);
  }

  JUMPOUT(0x1DDFF8944);
}

void sub_1DDFF8AA0(uint64_t a1, int a2)
{
  if (!a2)
  {
    JUMPOUT(0x1DDFF8A30);
  }

  JUMPOUT(0x1DDFF8944);
}

void sub_1DDFF8AA8(uint64_t a1, int a2)
{
  if (!a2)
  {
    JUMPOUT(0x1DDFF8A30);
  }

  JUMPOUT(0x1DDFF8944);
}

void sub_1DDFF8AB0(uint64_t a1, int a2)
{
  if (!a2)
  {
    JUMPOUT(0x1DDFF8A30);
  }

  JUMPOUT(0x1DDFF8944);
}

void sub_1DDFF8AB8(uint64_t a1, int a2)
{
  if (!a2)
  {
    JUMPOUT(0x1DDFF8A30);
  }

  JUMPOUT(0x1DDFF8944);
}

void NeuralNetLoader<FullyConnectedLayerBNNS<float>>::loadLayers(uint64_t a1, const __CFDictionary *a2, uint64_t *a3)
{
  v420 = *MEMORY[0x1E69E9840];
  if (a3[1] != *a3)
  {
    for (i = 0; i < 0x1B810ECF56BE69C9 * ((a3[1] - *a3) >> 3); ++i)
    {
      std::to_string(v415, i);
      v6 = std::string::insert(v415, 0, "Layer", 5uLL);
      v7 = *&v6->__r_.__value_.__l.__data_;
      v413 = v6->__r_.__value_.__r.__words[2];
      v412 = v7;
      v6->__r_.__value_.__l.__size_ = 0;
      v6->__r_.__value_.__r.__words[2] = 0;
      v6->__r_.__value_.__r.__words[0] = 0;
      if (v419.__r_.__value_.__s.__data_[3] < 0)
      {
        operator delete(*v415);
      }

      if (v413 >= 0)
      {
        v8 = &v412;
      }

      else
      {
        v8 = v412;
      }

      if (v8)
      {
        if (v413 >= 0)
        {
          v9 = HIBYTE(v413);
        }

        else
        {
          v9 = *(&v412 + 1);
        }

        v8 = CFStringCreateWithBytes(0, v8, v9, 0x8000100u, 0);
        v411 = v8;
        if (!v8)
        {
          exception = __cxa_allocate_exception(0x10uLL);
          std::runtime_error::runtime_error(exception, "Could not construct");
        }
      }

      else
      {
        v411 = 0;
      }

      Value = CFDictionaryGetValue(a2, v8);
      v11 = Value;
      if (!Value)
      {
        v236 = 0;
        v410 = 0;
        v237 = *(a1 + 16);
        if (v237)
        {
          v236 = *v237;
        }

        if (os_log_type_enabled(v236, OS_LOG_TYPE_ERROR))
        {
          v238 = &v412;
          if (v413 < 0)
          {
            v238 = v412;
          }

          *v415 = 136315906;
          *&v415[4] = "NeuralNetLoader.cpp";
          v416 = 1024;
          v417 = 60;
          v418 = 1024;
          LODWORD(v419.__r_.__value_.__l.__data_) = -66741;
          WORD2(v419.__r_.__value_.__r.__words[0]) = 2080;
          *(v419.__r_.__value_.__r.__words + 6) = v238;
          _os_log_impl(&dword_1DDB85000, v236, OS_LOG_TYPE_ERROR, "%25s:%-5d EXCEPTION (%d) [topLevelDict_ref.get_cf() == nullptr is false]: Missing dictionary: %s", v415, 0x22u);
        }

        v239 = __cxa_allocate_exception(0x10uLL);
        *v239 = &unk_1F593B0D8;
        v239[2] = -66741;
      }

      CFRetain(Value);
      v410 = v11;
      applesauce::CF::TypeRef::operator applesauce::CF::DictionaryRef(&v409, &v410);
      v12 = *(a1 + 16);
      if (v12)
      {
        v13 = *v12;
        if (!*v12)
        {
          goto LABEL_25;
        }
      }

      else
      {
        v13 = MEMORY[0x1E69E9C10];
      }

      if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
      {
        if (v413 >= 0)
        {
          v14 = &v412;
        }

        else
        {
          v14 = v412;
        }

        *v415 = 136315650;
        *&v415[4] = "NeuralNetLoader.cpp";
        v416 = 1024;
        v417 = 64;
        v418 = 2080;
        v419.__r_.__value_.__r.__words[0] = v14;
        _os_log_impl(&dword_1DDB85000, v13, OS_LOG_TYPE_INFO, "%25s:%-5d Found the dictionary: %s\n", v415, 0x1Cu);
      }

LABEL_25:
      v15 = CFDictionaryGetValue(v409, @"InputVectorDescriptor");
      v16 = v15;
      if (!v15)
      {
        v240 = 0;
        v408 = 0;
        v241 = *(a1 + 16);
        if (v241)
        {
          v240 = *v241;
        }

        if (os_log_type_enabled(v240, OS_LOG_TYPE_ERROR))
        {
          *v415 = 136315650;
          *&v415[4] = "NeuralNetLoader.cpp";
          v416 = 1024;
          v417 = 75;
          v418 = 1024;
          LODWORD(v419.__r_.__value_.__l.__data_) = -66741;
          _os_log_impl(&dword_1DDB85000, v240, OS_LOG_TYPE_ERROR, "%25s:%-5d EXCEPTION (%d) [inputDescDict_ref.get_cf() == nullptr is false]: Missing dictionary InputVectorDescriptor.", v415, 0x18u);
        }

        v242 = __cxa_allocate_exception(0x10uLL);
        *v242 = &unk_1F593B0D8;
        v242[2] = -66741;
      }

      CFRetain(v15);
      v408 = v16;
      applesauce::CF::TypeRef::operator applesauce::CF::DictionaryRef(&v407, &v408);
      v17 = *(a1 + 16);
      if (v17)
      {
        v18 = *v17;
        if (!*v17)
        {
          v406 = 0;
          goto LABEL_38;
        }
      }

      else
      {
        v18 = MEMORY[0x1E69E9C10];
      }

      if (os_log_type_enabled(v18, OS_LOG_TYPE_DEBUG))
      {
        *v415 = 136315394;
        *&v415[4] = "NeuralNetLoader.cpp";
        v416 = 1024;
        v417 = 79;
        _os_log_impl(&dword_1DDB85000, v18, OS_LOG_TYPE_DEBUG, "%25s:%-5d Found the dictionary InputVectorDescriptor.", v415, 0x12u);
        v17 = *(a1 + 16);
      }

      v406 = 0;
      if (v17)
      {
        v19 = *v17;
        if (!*v17)
        {
          goto LABEL_38;
        }
      }

      else
      {
        v19 = MEMORY[0x1E69E9C10];
      }

      if (os_log_type_enabled(v19, OS_LOG_TYPE_DEBUG))
      {
        *v415 = 136315394;
        *&v415[4] = "NeuralNetLoader.cpp";
        v416 = 1024;
        v417 = 83;
        _os_log_impl(&dword_1DDB85000, v19, OS_LOG_TYPE_DEBUG, "%25s:%-5d Loading from inputDescDict.", v415, 0x12u);
      }

LABEL_38:
      if (DictionaryBlobReader::ReadScalarFromDictionary<unsigned int>(*a1, v407, @"Size", &v406))
      {
        v189 = *(a1 + 16);
        if (v189)
        {
          v190 = *v189;
        }

        else
        {
          v190 = 0;
        }

        if (os_log_type_enabled(v190, OS_LOG_TYPE_ERROR))
        {
          *v415 = 136315650;
          *&v415[4] = "NeuralNetLoader.cpp";
          v416 = 1024;
          v417 = 86;
          v418 = 1024;
          LODWORD(v419.__r_.__value_.__l.__data_) = -66741;
          _os_log_impl(&dword_1DDB85000, v190, OS_LOG_TYPE_ERROR, "%25s:%-5d EXCEPTION (%d) [err != noErr is false]: Missing scalar Size from dictionary InputVectorDescriptor.", v415, 0x18u);
        }

        v219 = __cxa_allocate_exception(0x10uLL);
        *v219 = &unk_1F593B0D8;
        v219[2] = -66741;
      }

      v21 = *a3 + 968 * i;
      *(v21 + 4) = 0x10000;
      v22 = v406;
      *(v21 + 8) = v406;
      *(v21 + 72) = 1;
      *v415 = 0;
      std::vector<float>::resize((v21 + 792), v22, v415, v20);
      v23 = *a3 + 968 * i;
      *v415 = 0;
      std::vector<float>::resize((v23 + 912), v406, v415, v24);
      v25 = CFDictionaryGetValue(v407, @"DataType");
      v26 = v25;
      if (!v25)
      {
        v243 = 0;
        v405 = 0;
        v244 = *(a1 + 16);
        if (v244)
        {
          v243 = *v244;
        }

        if (os_log_type_enabled(v243, OS_LOG_TYPE_ERROR))
        {
          *v415 = 136315650;
          *&v415[4] = "NeuralNetLoader.cpp";
          v416 = 1024;
          v417 = 98;
          v418 = 1024;
          LODWORD(v419.__r_.__value_.__l.__data_) = -66741;
          _os_log_impl(&dword_1DDB85000, v243, OS_LOG_TYPE_ERROR, "%25s:%-5d EXCEPTION (%d) [inputDataType_ref.get_cf() == nullptr is false]: Missing dictionary DataType.", v415, 0x18u);
        }

        v245 = __cxa_allocate_exception(0x10uLL);
        *v245 = &unk_1F593B0D8;
        v245[2] = -66741;
      }

      CFRetain(v25);
      v405 = v26;
      applesauce::CF::TypeRef::operator applesauce::CF::StringRef(&v404, &v405);
      v27 = *(a1 + 16);
      if (v27)
      {
        v28 = *v27;
        if (!*v27)
        {
          goto LABEL_51;
        }
      }

      else
      {
        v28 = MEMORY[0x1E69E9C10];
      }

      if (os_log_type_enabled(v28, OS_LOG_TYPE_DEBUG))
      {
        v29 = CFCopyDescription(v404);
        v414 = v29;
        applesauce::CF::details::CFString_get_value<true>(__p, v29);
        if (v29)
        {
          CFRelease(v29);
        }

        v30 = __p;
        if (v403 < 0)
        {
          v30 = __p[0];
        }

        *v415 = 136315906;
        *&v415[4] = "NeuralNetLoader.cpp";
        v416 = 1024;
        v417 = 102;
        v418 = 2080;
        v419.__r_.__value_.__r.__words[0] = v30;
        LOWORD(v419.__r_.__value_.__r.__words[1]) = 2048;
        *(&v419.__r_.__value_.__r.__words[1] + 2) = i;
        _os_log_impl(&dword_1DDB85000, v28, OS_LOG_TYPE_DEBUG, "%25s:%-5d Successfully retrieved input data type (%s) for Layer %zu.", v415, 0x26u);
        if (v403 < 0)
        {
          operator delete(__p[0]);
        }
      }

LABEL_51:
      v31 = *(a1 + 8);
      if (v31 != 8)
      {
        goto LABEL_63;
      }

      v32 = v404;
      if (v404)
      {
        CFRetain(v404);
      }

      v401 = v32;
      std::string::basic_string[abi:ne200100]<0>(v399, "int8");
      std::string::basic_string[abi:ne200100]<0>(v397, "Sint8");
      v33 = matchiEither(&v401, v399, v397);
      if (v398 < 0)
      {
        operator delete(v397[0]);
      }

      if ((v400 & 0x80000000) == 0)
      {
        if (!v32)
        {
          goto LABEL_61;
        }

LABEL_60:
        CFRelease(v32);
        goto LABEL_61;
      }

      operator delete(v399[0]);
      if (v32)
      {
        goto LABEL_60;
      }

LABEL_61:
      v34 = 131080;
      if (v33)
      {
        goto LABEL_98;
      }

      v31 = *(a1 + 8);
LABEL_63:
      if (v31 != 16)
      {
        goto LABEL_76;
      }

      v35 = v404;
      if (v404)
      {
        CFRetain(v404);
      }

      v396 = v35;
      std::string::basic_string[abi:ne200100]<0>(v394, "int16");
      std::string::basic_string[abi:ne200100]<0>(v392, "SInt16");
      v36 = matchiEither(&v396, v394, v392);
      if (v393 < 0)
      {
        operator delete(v392[0]);
      }

      if ((v395 & 0x80000000) == 0)
      {
        if (!v35)
        {
          goto LABEL_73;
        }

LABEL_72:
        CFRelease(v35);
        goto LABEL_73;
      }

      operator delete(v394[0]);
      if (v35)
      {
        goto LABEL_72;
      }

LABEL_73:
      if (v36)
      {
        v34 = 131088;
        goto LABEL_98;
      }

      v31 = *(a1 + 8);
LABEL_76:
      if (v31 != 32)
      {
        goto LABEL_89;
      }

      v37 = v404;
      if (v404)
      {
        CFRetain(v404);
      }

      v391 = v37;
      std::string::basic_string[abi:ne200100]<0>(v389, "int32");
      std::string::basic_string[abi:ne200100]<0>(v387, "Sint32");
      v38 = matchiEither(&v391, v389, v387);
      if (v388 < 0)
      {
        operator delete(v387[0]);
      }

      if ((v390 & 0x80000000) == 0)
      {
        if (!v37)
        {
          goto LABEL_86;
        }

LABEL_85:
        CFRelease(v37);
        goto LABEL_86;
      }

      operator delete(v389[0]);
      if (v37)
      {
        goto LABEL_85;
      }

LABEL_86:
      if (v38)
      {
        v34 = 131104;
        goto LABEL_98;
      }

      v31 = *(a1 + 8);
LABEL_89:
      if (v31)
      {
        goto LABEL_676;
      }

      v39 = v404;
      if (v404)
      {
        CFRetain(v404);
      }

      v386 = v39;
      std::string::basic_string[abi:ne200100]<0>(v384, "float32");
      v40 = matchiString(&v386, v384);
      if (v385 < 0)
      {
        operator delete(v384[0]);
        if (!v39)
        {
          goto LABEL_97;
        }

LABEL_96:
        CFRelease(v39);
        goto LABEL_97;
      }

      if (v39)
      {
        goto LABEL_96;
      }

LABEL_97:
      v34 = 65568;
      if (!v40)
      {
LABEL_676:
        v274 = *(a1 + 16);
        if (v274)
        {
          v275 = *v274;
        }

        else
        {
          v275 = 0;
        }

        if (os_log_type_enabled(v275, OS_LOG_TYPE_ERROR))
        {
          v284 = *(a1 + 8);
          *v415 = 136315906;
          *&v415[4] = "NeuralNetLoader.cpp";
          v416 = 1024;
          v417 = 124;
          v418 = 1024;
          LODWORD(v419.__r_.__value_.__l.__data_) = -66743;
          WORD2(v419.__r_.__value_.__r.__words[0]) = 1024;
          *(v419.__r_.__value_.__r.__words + 6) = v284;
          _os_log_impl(&dword_1DDB85000, v275, OS_LOG_TYPE_ERROR, "%25s:%-5d EXCEPTION (%d): Unsupported input data quantization type for Quantization (%u).", v415, 0x1Eu);
        }

        v285 = __cxa_allocate_exception(0x10uLL);
        *v285 = &unk_1F593B0D8;
        v285[2] = -66743;
      }

LABEL_98:
      *(*a3 + 968 * i + 144) = v34;
      v383 = 1065353216;
      v41 = *(a1 + 16);
      if (v41)
      {
        v42 = *v41;
        if (!*v41)
        {
          goto LABEL_104;
        }
      }

      else
      {
        v42 = MEMORY[0x1E69E9C10];
      }

      if (os_log_type_enabled(v42, OS_LOG_TYPE_DEBUG))
      {
        *v415 = 136315394;
        *&v415[4] = "NeuralNetLoader.cpp";
        v416 = 1024;
        v417 = 129;
        _os_log_impl(&dword_1DDB85000, v42, OS_LOG_TYPE_DEBUG, "%25s:%-5d Loading from inputDescDict.", v415, 0x12u);
      }

LABEL_104:
      if (DictionaryBlobReader::ReadScalarFromDictionary<float>(*a1, v407, @"DataScale", kCFNumberFloat32Type, &v383))
      {
        v191 = *(a1 + 16);
        if (v191)
        {
          v192 = *v191;
        }

        else
        {
          v192 = 0;
        }

        if (os_log_type_enabled(v192, OS_LOG_TYPE_ERROR))
        {
          *v415 = 136315650;
          *&v415[4] = "NeuralNetLoader.cpp";
          v416 = 1024;
          v417 = 132;
          v418 = 1024;
          LODWORD(v419.__r_.__value_.__l.__data_) = -66741;
          _os_log_impl(&dword_1DDB85000, v192, OS_LOG_TYPE_ERROR, "%25s:%-5d EXCEPTION (%d) [err != noErr is false]: Missing scalar DataScale from dictionary InputVectorDescriptor.", v415, 0x18u);
        }

        v220 = __cxa_allocate_exception(0x10uLL);
        *v220 = &unk_1F593B0D8;
        v220[2] = -66741;
      }

      *(*a3 + 968 * i + 164) = v383;
      v382 = 0;
      if (DictionaryBlobReader::ReadScalarFromDictionary<float>(*a1, v407, @"DataBias", kCFNumberFloat32Type, &v382))
      {
        v193 = *(a1 + 16);
        if (v193)
        {
          v194 = *v193;
        }

        else
        {
          v194 = 0;
        }

        if (os_log_type_enabled(v194, OS_LOG_TYPE_ERROR))
        {
          *v415 = 136315650;
          *&v415[4] = "NeuralNetLoader.cpp";
          v416 = 1024;
          v417 = 140;
          v418 = 1024;
          LODWORD(v419.__r_.__value_.__l.__data_) = -66741;
          _os_log_impl(&dword_1DDB85000, v194, OS_LOG_TYPE_ERROR, "%25s:%-5d EXCEPTION (%d) [err != noErr is false]: Missing scalar DataBias from dictionary InputVectorDescriptor.", v415, 0x18u);
        }

        v221 = __cxa_allocate_exception(0x10uLL);
        *v221 = &unk_1F593B0D8;
        v221[2] = -66741;
      }

      *(*a3 + 968 * i + 168) = v382;
      v43 = CFDictionaryGetValue(v409, @"OutputVectorDescriptor");
      v44 = v43;
      if (!v43)
      {
        v246 = 0;
        v381 = 0;
        v247 = *(a1 + 16);
        if (v247)
        {
          v246 = *v247;
        }

        if (os_log_type_enabled(v246, OS_LOG_TYPE_ERROR))
        {
          *v415 = 136315650;
          *&v415[4] = "NeuralNetLoader.cpp";
          v416 = 1024;
          v417 = 153;
          v418 = 1024;
          LODWORD(v419.__r_.__value_.__l.__data_) = -66741;
          _os_log_impl(&dword_1DDB85000, v246, OS_LOG_TYPE_ERROR, "%25s:%-5d EXCEPTION (%d) [outputDescDict_ref.get_cf() == nullptr is false]: Missing dictionary OutputVectorDescriptor.", v415, 0x18u);
        }

        v248 = __cxa_allocate_exception(0x10uLL);
        *v248 = &unk_1F593B0D8;
        v248[2] = -66741;
      }

      CFRetain(v43);
      v381 = v44;
      applesauce::CF::TypeRef::operator applesauce::CF::DictionaryRef(&v380, &v381);
      v45 = *(a1 + 16);
      if (v45)
      {
        v46 = *v45;
        if (!*v45)
        {
          v379 = 0;
          goto LABEL_119;
        }
      }

      else
      {
        v46 = MEMORY[0x1E69E9C10];
      }

      if (os_log_type_enabled(v46, OS_LOG_TYPE_DEBUG))
      {
        *v415 = 136315394;
        *&v415[4] = "NeuralNetLoader.cpp";
        v416 = 1024;
        v417 = 157;
        _os_log_impl(&dword_1DDB85000, v46, OS_LOG_TYPE_DEBUG, "%25s:%-5d Found the dictionary OutputVectorDescriptor.", v415, 0x12u);
        v45 = *(a1 + 16);
      }

      v379 = 0;
      if (v45)
      {
        v47 = *v45;
        if (!*v45)
        {
          goto LABEL_119;
        }
      }

      else
      {
        v47 = MEMORY[0x1E69E9C10];
      }

      if (os_log_type_enabled(v47, OS_LOG_TYPE_DEBUG))
      {
        *v415 = 136315394;
        *&v415[4] = "NeuralNetLoader.cpp";
        v416 = 1024;
        v417 = 161;
        _os_log_impl(&dword_1DDB85000, v47, OS_LOG_TYPE_DEBUG, "%25s:%-5d Loading from outputDescDict.", v415, 0x12u);
      }

LABEL_119:
      if (DictionaryBlobReader::ReadScalarFromDictionary<unsigned int>(*a1, v380, @"Size", &v379))
      {
        v195 = *(a1 + 16);
        if (v195)
        {
          v196 = *v195;
        }

        else
        {
          v196 = 0;
        }

        if (os_log_type_enabled(v196, OS_LOG_TYPE_ERROR))
        {
          *v415 = 136315650;
          *&v415[4] = "NeuralNetLoader.cpp";
          v416 = 1024;
          v417 = 164;
          v418 = 1024;
          LODWORD(v419.__r_.__value_.__l.__data_) = -66741;
          _os_log_impl(&dword_1DDB85000, v196, OS_LOG_TYPE_ERROR, "%25s:%-5d EXCEPTION (%d) [err != noErr is false]: Missing scalar Size from dictionary OutputVectorDescriptor.", v415, 0x18u);
        }

        v222 = __cxa_allocate_exception(0x10uLL);
        *v222 = &unk_1F593B0D8;
        v222[2] = -66741;
      }

      v49 = *a3 + 968 * i;
      *(v49 + 356) = 0x10000;
      v50 = v379;
      *(v49 + 360) = v379;
      *(v49 + 424) = 1;
      *v415 = 0;
      std::vector<float>::resize((v49 + 816), v50, v415, v48);
      v51 = CFDictionaryGetValue(v380, @"DataType");
      v52 = v51;
      if (!v51)
      {
        v251 = 0;
        v378 = 0;
        v252 = *(a1 + 16);
        if (v252)
        {
          v251 = *v252;
        }

        if (os_log_type_enabled(v251, OS_LOG_TYPE_ERROR))
        {
          *v415 = 136315650;
          *&v415[4] = "NeuralNetLoader.cpp";
          v416 = 1024;
          v417 = 176;
          v418 = 1024;
          LODWORD(v419.__r_.__value_.__l.__data_) = -66741;
          _os_log_impl(&dword_1DDB85000, v251, OS_LOG_TYPE_ERROR, "%25s:%-5d EXCEPTION (%d) [outputDataType_ref.get_cf() == nullptr is false]: Failed to retrieve output data type (DataType) from dictionary OutputVectorDescriptor.", v415, 0x18u);
        }

        v253 = __cxa_allocate_exception(0x10uLL);
        *v253 = &unk_1F593B0D8;
        v253[2] = -66741;
      }

      CFRetain(v51);
      v378 = v52;
      applesauce::CF::TypeRef::operator applesauce::CF::StringRef(&cf, &v378);
      v53 = *(a1 + 16);
      if (v53)
      {
        v54 = *v53;
        if (!*v53)
        {
          goto LABEL_132;
        }
      }

      else
      {
        v54 = MEMORY[0x1E69E9C10];
      }

      if (os_log_type_enabled(v54, OS_LOG_TYPE_DEBUG))
      {
        v55 = CFCopyDescription(cf);
        v414 = v55;
        applesauce::CF::details::CFString_get_value<true>(__p, v55);
        if (v55)
        {
          CFRelease(v55);
        }

        v56 = __p;
        if (v403 < 0)
        {
          v56 = __p[0];
        }

        *v415 = 136315906;
        *&v415[4] = "NeuralNetLoader.cpp";
        v416 = 1024;
        v417 = 179;
        v418 = 2080;
        v419.__r_.__value_.__r.__words[0] = v56;
        LOWORD(v419.__r_.__value_.__r.__words[1]) = 1024;
        *(&v419.__r_.__value_.__r.__words[1] + 2) = i;
        _os_log_impl(&dword_1DDB85000, v54, OS_LOG_TYPE_DEBUG, "%25s:%-5d Successfully retrieved output data type (%s) for Layer %u.", v415, 0x22u);
        if (v403 < 0)
        {
          operator delete(__p[0]);
        }
      }

LABEL_132:
      v57 = cf;
      if (cf)
      {
        CFRetain(cf);
      }

      v376 = v57;
      std::string::basic_string[abi:ne200100]<0>(v374, "float32");
      v58 = matchiString(&v376, v374);
      if (v375 < 0)
      {
        operator delete(v374[0]);
      }

      if (v376)
      {
        CFRelease(v376);
      }

      if (!v58)
      {
        v249 = *(a1 + 16);
        if (v249)
        {
          v250 = *v249;
        }

        else
        {
          v250 = 0;
        }

        if (os_log_type_enabled(v250, OS_LOG_TYPE_ERROR))
        {
          *v415 = 136315650;
          *&v415[4] = "NeuralNetLoader.cpp";
          v416 = 1024;
          v417 = 189;
          v418 = 1024;
          LODWORD(v419.__r_.__value_.__l.__data_) = -66743;
          _os_log_impl(&dword_1DDB85000, v250, OS_LOG_TYPE_ERROR, "%25s:%-5d EXCEPTION (%d): Unsupported output data type.", v415, 0x18u);
        }

        v282 = __cxa_allocate_exception(0x10uLL);
        *v282 = &unk_1F593B0D8;
        v282[2] = -66743;
      }

      *(*a3 + 968 * i + 496) = 65568;
      v373 = 1065353216;
      v59 = *(a1 + 16);
      if (v59)
      {
        v60 = *v59;
        if (!*v59)
        {
          goto LABEL_145;
        }
      }

      else
      {
        v60 = MEMORY[0x1E69E9C10];
      }

      if (os_log_type_enabled(v60, OS_LOG_TYPE_DEBUG))
      {
        *v415 = 136315394;
        *&v415[4] = "NeuralNetLoader.cpp";
        v416 = 1024;
        v417 = 194;
        _os_log_impl(&dword_1DDB85000, v60, OS_LOG_TYPE_DEBUG, "%25s:%-5d Loading from outputDescDict.", v415, 0x12u);
      }

LABEL_145:
      if (DictionaryBlobReader::ReadScalarFromDictionary<float>(*a1, v380, @"DataScale", kCFNumberFloat32Type, &v373))
      {
        v197 = *(a1 + 16);
        if (v197)
        {
          v198 = *v197;
        }

        else
        {
          v198 = 0;
        }

        if (os_log_type_enabled(v198, OS_LOG_TYPE_ERROR))
        {
          *v415 = 136315650;
          *&v415[4] = "NeuralNetLoader.cpp";
          v416 = 1024;
          v417 = 197;
          v418 = 1024;
          LODWORD(v419.__r_.__value_.__l.__data_) = -66741;
          _os_log_impl(&dword_1DDB85000, v198, OS_LOG_TYPE_ERROR, "%25s:%-5d EXCEPTION (%d) [err != noErr is false]: Missing scalar DataScale from dictionary OutputVectorDescriptor.", v415, 0x18u);
        }

        v223 = __cxa_allocate_exception(0x10uLL);
        *v223 = &unk_1F593B0D8;
        v223[2] = -66741;
      }

      *(*a3 + 968 * i + 516) = v373;
      v372 = 0;
      v61 = *(a1 + 16);
      if (v61)
      {
        v62 = *v61;
        if (!*v61)
        {
          goto LABEL_152;
        }
      }

      else
      {
        v62 = MEMORY[0x1E69E9C10];
      }

      if (os_log_type_enabled(v62, OS_LOG_TYPE_DEBUG))
      {
        *v415 = 136315394;
        *&v415[4] = "NeuralNetLoader.cpp";
        v416 = 1024;
        v417 = 203;
        _os_log_impl(&dword_1DDB85000, v62, OS_LOG_TYPE_DEBUG, "%25s:%-5d Loading from outputDescDict.", v415, 0x12u);
      }

LABEL_152:
      if (DictionaryBlobReader::ReadScalarFromDictionary<float>(*a1, v380, @"DataBias", kCFNumberFloat32Type, &v372))
      {
        v199 = *(a1 + 16);
        if (v199)
        {
          v200 = *v199;
        }

        else
        {
          v200 = 0;
        }

        if (os_log_type_enabled(v200, OS_LOG_TYPE_ERROR))
        {
          *v415 = 136315650;
          *&v415[4] = "NeuralNetLoader.cpp";
          v416 = 1024;
          v417 = 206;
          v418 = 1024;
          LODWORD(v419.__r_.__value_.__l.__data_) = -66741;
          _os_log_impl(&dword_1DDB85000, v200, OS_LOG_TYPE_ERROR, "%25s:%-5d EXCEPTION (%d) [err != noErr is false]: Missing scalar DataBias from dictionary OutputVectorDescriptor.", v415, 0x18u);
        }

        v224 = __cxa_allocate_exception(0x10uLL);
        *v224 = &unk_1F593B0D8;
        v224[2] = -66741;
      }

      *(*a3 + 968 * i + 520) = v372;
      v63 = CFDictionaryGetValue(v409, @"LayerDescriptor");
      v64 = v63;
      if (!v63)
      {
        v371 = 0;
        v67 = *(a1 + 16);
        if (v67)
        {
          v68 = *v67;
          if (!*v67)
          {
LABEL_202:
            *(*a3 + 968 * i + 964) = 0;
            goto LABEL_203;
          }
        }

        else
        {
          v68 = MEMORY[0x1E69E9C10];
        }

        if (os_log_type_enabled(v68, OS_LOG_TYPE_DEFAULT))
        {
          *v415 = 136315650;
          *&v415[4] = "NeuralNetLoader.cpp";
          v416 = 1024;
          v417 = 221;
          v418 = 2048;
          v419.__r_.__value_.__r.__words[0] = i;
          _os_log_impl(&dword_1DDB85000, v68, OS_LOG_TYPE_DEFAULT, "%25s:%-5d LayerDescriptor for layer %zu not found, using default fully connected layer.", v415, 0x1Cu);
        }

        goto LABEL_202;
      }

      CFRetain(v63);
      v371 = v64;
      applesauce::CF::TypeRef::operator applesauce::CF::DictionaryRef(&v370, &v371);
      v65 = *(a1 + 16);
      if (v65)
      {
        v66 = *v65;
        if (!*v65)
        {
          goto LABEL_163;
        }
      }

      else
      {
        v66 = MEMORY[0x1E69E9C10];
      }

      if (os_log_type_enabled(v66, OS_LOG_TYPE_DEBUG))
      {
        *v415 = 136315394;
        *&v415[4] = "NeuralNetLoader.cpp";
        v416 = 1024;
        v417 = 228;
        _os_log_impl(&dword_1DDB85000, v66, OS_LOG_TYPE_DEBUG, "%25s:%-5d Found the dictionary LayerDescriptor.", v415, 0x12u);
      }

LABEL_163:
      v69 = CFDictionaryGetValue(v370, @"Type");
      v70 = v69;
      if (!v69)
      {
        v279 = 0;
        v369 = 0;
        v280 = *(a1 + 16);
        if (v280)
        {
          v279 = *v280;
        }

        if (os_log_type_enabled(v279, OS_LOG_TYPE_ERROR))
        {
          *v415 = 136315650;
          *&v415[4] = "NeuralNetLoader.cpp";
          v416 = 1024;
          v417 = 233;
          v418 = 1024;
          LODWORD(v419.__r_.__value_.__l.__data_) = -66741;
          _os_log_impl(&dword_1DDB85000, v279, OS_LOG_TYPE_ERROR, "%25s:%-5d EXCEPTION (%d) [layerType_ref.get_cf() == nullptr is false]: Failed to retrieve layer type (Type) from dictionary LayerDescriptor.", v415, 0x18u);
        }

        v281 = __cxa_allocate_exception(0x10uLL);
        *v281 = &unk_1F593B0D8;
        v281[2] = -66741;
      }

      CFRetain(v69);
      v369 = v70;
      applesauce::CF::TypeRef::operator applesauce::CF::StringRef(&v368, &v369);
      v71 = *(a1 + 16);
      if (!v71)
      {
        v72 = MEMORY[0x1E69E9C10];
LABEL_168:
        if (os_log_type_enabled(v72, OS_LOG_TYPE_INFO))
        {
          v73 = CFCopyDescription(v368);
          v414 = v73;
          applesauce::CF::details::CFString_get_value<true>(__p, v73);
          if (v73)
          {
            CFRelease(v73);
          }

          v74 = __p;
          if (v403 < 0)
          {
            v74 = __p[0];
          }

          *v415 = 136315906;
          *&v415[4] = "NeuralNetLoader.cpp";
          v416 = 1024;
          v417 = 237;
          v418 = 2080;
          v419.__r_.__value_.__r.__words[0] = v74;
          LOWORD(v419.__r_.__value_.__r.__words[1]) = 2048;
          *(&v419.__r_.__value_.__r.__words[1] + 2) = i;
          _os_log_impl(&dword_1DDB85000, v72, OS_LOG_TYPE_INFO, "%25s:%-5d Successfully retrieved Type (%s) for LayerDescriptor %zu.", v415, 0x26u);
          if (v403 < 0)
          {
            operator delete(__p[0]);
          }
        }

        goto LABEL_175;
      }

      v72 = *v71;
      if (*v71)
      {
        goto LABEL_168;
      }

LABEL_175:
      v75 = v368;
      if (v368)
      {
        CFRetain(v368);
      }

      v367 = v75;
      std::string::basic_string[abi:ne200100]<0>(v365, "FullyConnected");
      std::string::basic_string[abi:ne200100]<0>(v363, "Dense");
      v76 = matchiEither(&v367, v365, v363);
      if (v364 < 0)
      {
        operator delete(v363[0]);
      }

      if (v366 < 0)
      {
        operator delete(v365[0]);
      }

      if (v367)
      {
        CFRelease(v367);
      }

      if (v76)
      {
        v77 = 0;
      }

      else
      {
        v78 = v368;
        if (v368)
        {
          CFRetain(v368);
        }

        v362 = v78;
        std::string::basic_string[abi:ne200100]<0>(v360, "LSTM");
        v79 = matchiString(&v362, v360);
        if (v361 < 0)
        {
          operator delete(v360[0]);
        }

        if (v362)
        {
          CFRelease(v362);
        }

        if (!v79)
        {
          v288 = *(a1 + 16);
          if (v288)
          {
            v289 = *v288;
          }

          else
          {
            v289 = 0;
          }

          if (os_log_type_enabled(v289, OS_LOG_TYPE_ERROR))
          {
            *v415 = 136315650;
            *&v415[4] = "NeuralNetLoader.cpp";
            v416 = 1024;
            v417 = 250;
            v418 = 1024;
            LODWORD(v419.__r_.__value_.__l.__data_) = -66743;
            _os_log_impl(&dword_1DDB85000, v289, OS_LOG_TYPE_ERROR, "%25s:%-5d EXCEPTION (%d): Unsupported LayerType.", v415, 0x18u);
          }

          v290 = __cxa_allocate_exception(0x10uLL);
          *v290 = &unk_1F593B0D8;
          v290[2] = -66743;
        }

        v77 = 1;
      }

      *(*a3 + 968 * i + 964) = v77;
      if (v368)
      {
        CFRelease(v368);
      }

      if (v369)
      {
        CFRelease(v369);
      }

      if (v370)
      {
        CFRelease(v370);
      }

LABEL_203:
      v80 = CFDictionaryGetValue(v409, @"Weights");
      v81 = v80;
      if (!v80)
      {
        v254 = 0;
        v370 = 0;
        v255 = *(a1 + 16);
        if (v255)
        {
          v254 = *v255;
        }

        if (os_log_type_enabled(v254, OS_LOG_TYPE_ERROR))
        {
          *v415 = 136315650;
          *&v415[4] = "NeuralNetLoader.cpp";
          v416 = 1024;
          v417 = 262;
          v418 = 1024;
          LODWORD(v419.__r_.__value_.__l.__data_) = -66741;
          _os_log_impl(&dword_1DDB85000, v254, OS_LOG_TYPE_ERROR, "%25s:%-5d EXCEPTION (%d) [weightsDict_ref.get_cf() == nullptr is false]: Missing dictionary Weights.", v415, 0x18u);
        }

        v256 = __cxa_allocate_exception(0x10uLL);
        *v256 = &unk_1F593B0D8;
        v256[2] = -66741;
      }

      CFRetain(v80);
      v370 = v81;
      applesauce::CF::TypeRef::operator applesauce::CF::DictionaryRef(&v369, &v370);
      v82 = *(a1 + 16);
      if (v82)
      {
        v83 = *v82;
        if (!*v82)
        {
          goto LABEL_210;
        }
      }

      else
      {
        v83 = MEMORY[0x1E69E9C10];
      }

      if (os_log_type_enabled(v83, OS_LOG_TYPE_DEBUG))
      {
        *v415 = 136315394;
        *&v415[4] = "NeuralNetLoader.cpp";
        v416 = 1024;
        v417 = 266;
        _os_log_impl(&dword_1DDB85000, v83, OS_LOG_TYPE_DEBUG, "%25s:%-5d Found the dictionary Weights.", v415, 0x12u);
      }

LABEL_210:
      if (DictionaryBlobReader::ReadVectorFromDictionary(*a1, v369, @"Data", (*a3 + 968 * i + 936)))
      {
        v201 = *(a1 + 16);
        if (v201)
        {
          v202 = *v201;
        }

        else
        {
          v202 = 0;
        }

        if (os_log_type_enabled(v202, OS_LOG_TYPE_ERROR))
        {
          *v415 = 136315650;
          *&v415[4] = "NeuralNetLoader.cpp";
          v416 = 1024;
          v417 = 271;
          v418 = 1024;
          LODWORD(v419.__r_.__value_.__l.__data_) = -66741;
          _os_log_impl(&dword_1DDB85000, v202, OS_LOG_TYPE_ERROR, "%25s:%-5d EXCEPTION (%d) [err != noErr is false]: Missing vector Data from dictionary Weights.", v415, 0x18u);
        }

        v225 = __cxa_allocate_exception(0x10uLL);
        *v225 = &unk_1F593B0D8;
        v225[2] = -66741;
      }

      v84 = *a3 + 968 * i;
      v85 = *(v84 + 964);
      v86 = v85 == 1;
      if (v85 == 1)
      {
        v87 = *(v84 + 360);
      }

      else
      {
        v87 = 0;
      }

      v88 = *(v84 + 8) + v87;
      if (v86)
      {
        v89 = 4 * *(v84 + 360);
      }

      else
      {
        v89 = *(v84 + 360);
      }

      v90 = v89 * v88;
      v91 = *(v84 + 944);
      v92 = *(v84 + 936);
      v93 = (v91 - v92) >> 2;
      if (v93 != v89 * v88)
      {
        v203 = *(a1 + 16);
        if (v203)
        {
          v204 = *v203;
        }

        else
        {
          v204 = 0;
        }

        if (os_log_type_enabled(v204, OS_LOG_TYPE_ERROR))
        {
          *v415 = 136316162;
          *&v415[4] = "NeuralNetLoader.cpp";
          v416 = 1024;
          v417 = 280;
          v418 = 1024;
          LODWORD(v419.__r_.__value_.__l.__data_) = -66743;
          WORD2(v419.__r_.__value_.__r.__words[0]) = 2048;
          *(v419.__r_.__value_.__r.__words + 6) = v93;
          HIWORD(v419.__r_.__value_.__r.__words[1]) = 2048;
          v419.__r_.__value_.__r.__words[2] = v90;
          _os_log_impl(&dword_1DDB85000, v204, OS_LOG_TYPE_ERROR, "%25s:%-5d EXCEPTION (%d) [nnLayers[i].mWeightsQuantized.size() != weightsNumberOfCoefficients is false]: Number of weights in Data (%lu) does not match the required number of weights (%lu).", v415, 0x2Cu);
        }

        v226 = __cxa_allocate_exception(0x10uLL);
        *v226 = &unk_1F593B0D8;
        v226[2] = -66743;
      }

      *(v84 + 180) = 0x20000;
      *(v84 + 184) = v88;
      *(v84 + 192) = v89;
      *(v84 + 248) = 1;
      *(v84 + 256) = v88;
      *(v84 + 312) = v92;
      if (v91 != v92)
      {
        v94 = 0;
        while (1)
        {
          v95 = *(a1 + 8);
          HIDWORD(v97) = v95;
          LODWORD(v97) = v95;
          v96 = v97 >> 3;
          v98 = *(a1 + 16);
          if (v96 > 1)
          {
            break;
          }

          if (v96)
          {
            if (v96 != 1)
            {
              goto LABEL_609;
            }

            if (!v98)
            {
              goto LABEL_247;
            }

            if ((*(v98 + 8) & 1) == 0)
            {
              goto LABEL_247;
            }

            v99 = *v98;
            if (!*v98 || !os_log_type_enabled(*v98, OS_LOG_TYPE_DEBUG))
            {
              goto LABEL_247;
            }

            v100 = *(*(v84 + 312) + v94);
            *v415 = 136315906;
            *&v415[4] = "NeuralNetLoader.cpp";
            v416 = 1024;
            v417 = 296;
            v418 = 1024;
            LODWORD(v419.__r_.__value_.__l.__data_) = v100;
            WORD2(v419.__r_.__value_.__r.__words[0]) = 2048;
            *(v419.__r_.__value_.__r.__words + 6) = v94;
            v101 = v99;
            v102 = "%25s:%-5d Successfully retrieved weights data (%i) at index (%zu).";
LABEL_245:
            v107 = 34;
            goto LABEL_246;
          }

          if (!v98)
          {
            goto LABEL_247;
          }

          if ((*(v98 + 8) & 1) == 0)
          {
            goto LABEL_247;
          }

          v105 = *v98;
          if (!*v98 || !os_log_type_enabled(*v98, OS_LOG_TYPE_DEBUG))
          {
            goto LABEL_247;
          }

          v106 = *(*(v84 + 312) + 4 * v94);
          *v415 = 136315906;
          *&v415[4] = "NeuralNetLoader.cpp";
          v416 = 1024;
          v417 = 308;
          v418 = 2048;
          *&v419.__r_.__value_.__l.__data_ = v106;
          LOWORD(v419.__r_.__value_.__r.__words[1]) = 2048;
          *(&v419.__r_.__value_.__r.__words[1] + 2) = v94;
          v101 = v105;
          v102 = "%25s:%-5d Successfully retrieved weights data (%g) at index (%zu).";
          v107 = 38;
LABEL_246:
          _os_log_impl(&dword_1DDB85000, v101, OS_LOG_TYPE_DEBUG, v102, v415, v107);
LABEL_247:
          ++v94;
          v84 = *a3 + 968 * i;
          v110 = (*(v84 + 944) - *(v84 + 936)) >> 2;
          if (v110 >= 4)
          {
            v110 = 4;
          }

          if (v94 >= v110)
          {
            goto LABEL_250;
          }
        }

        if (v96 == 2)
        {
          if (!v98)
          {
            goto LABEL_247;
          }

          if ((*(v98 + 8) & 1) == 0)
          {
            goto LABEL_247;
          }

          v108 = *v98;
          if (!*v98 || !os_log_type_enabled(*v98, OS_LOG_TYPE_DEBUG))
          {
            goto LABEL_247;
          }

          v109 = *(*(v84 + 312) + 2 * v94);
          *v415 = 136315906;
          *&v415[4] = "NeuralNetLoader.cpp";
          v416 = 1024;
          v417 = 300;
          v418 = 1024;
          LODWORD(v419.__r_.__value_.__l.__data_) = v109;
          WORD2(v419.__r_.__value_.__r.__words[0]) = 2048;
          *(v419.__r_.__value_.__r.__words + 6) = v94;
          v101 = v108;
          v102 = "%25s:%-5d Successfully retrieved weights data (%i) at index (%zu).";
        }

        else
        {
          if (v96 != 4)
          {
LABEL_609:
            if (v98)
            {
              v234 = *v98;
            }

            else
            {
              v234 = 0;
            }

            if (os_log_type_enabled(v234, OS_LOG_TYPE_ERROR))
            {
              *v415 = 136315906;
              *&v415[4] = "NeuralNetLoader.cpp";
              v416 = 1024;
              v417 = 312;
              v418 = 1024;
              LODWORD(v419.__r_.__value_.__l.__data_) = -66743;
              WORD2(v419.__r_.__value_.__r.__words[0]) = 1024;
              *(v419.__r_.__value_.__r.__words + 6) = v95;
              _os_log_impl(&dword_1DDB85000, v234, OS_LOG_TYPE_ERROR, "%25s:%-5d EXCEPTION (%d): Unknown quantization type (%u).", v415, 0x1Eu);
            }

            v235 = __cxa_allocate_exception(0x10uLL);
            *v235 = &unk_1F593B0D8;
            v235[2] = -66743;
          }

          if (!v98)
          {
            goto LABEL_247;
          }

          if ((*(v98 + 8) & 1) == 0)
          {
            goto LABEL_247;
          }

          v103 = *v98;
          if (!*v98 || !os_log_type_enabled(*v98, OS_LOG_TYPE_DEBUG))
          {
            goto LABEL_247;
          }

          v104 = *(*(v84 + 312) + 4 * v94);
          *v415 = 136315906;
          *&v415[4] = "NeuralNetLoader.cpp";
          v416 = 1024;
          v417 = 304;
          v418 = 1024;
          LODWORD(v419.__r_.__value_.__l.__data_) = v104;
          WORD2(v419.__r_.__value_.__r.__words[0]) = 2048;
          *(v419.__r_.__value_.__r.__words + 6) = v94;
          v101 = v103;
          v102 = "%25s:%-5d Successfully retrieved weights data (%i) at index (%zu).";
        }

        goto LABEL_245;
      }

LABEL_250:
      v111 = CFDictionaryGetValue(v369, @"DataType");
      v112 = v111;
      if (!v111)
      {
        v257 = 0;
        v368 = 0;
        v258 = *(a1 + 16);
        if (v258)
        {
          v257 = *v258;
        }

        if (os_log_type_enabled(v257, OS_LOG_TYPE_ERROR))
        {
          *v415 = 136315650;
          *&v415[4] = "NeuralNetLoader.cpp";
          v416 = 1024;
          v417 = 320;
          v418 = 1024;
          LODWORD(v419.__r_.__value_.__l.__data_) = -66741;
          _os_log_impl(&dword_1DDB85000, v257, OS_LOG_TYPE_ERROR, "%25s:%-5d EXCEPTION (%d) [weightsDataType_ref.get_cf() == nullptr is false]: Missing DataType from dictionary Weights.", v415, 0x18u);
        }

        v259 = __cxa_allocate_exception(0x10uLL);
        *v259 = &unk_1F593B0D8;
        v259[2] = -66741;
      }

      CFRetain(v111);
      v368 = v112;
      applesauce::CF::TypeRef::operator applesauce::CF::StringRef(&v359, &v368);
      v113 = *(a1 + 16);
      if (v113)
      {
        v114 = *v113;
        if (!*v113)
        {
          goto LABEL_262;
        }
      }

      else
      {
        v114 = MEMORY[0x1E69E9C10];
      }

      if (os_log_type_enabled(v114, OS_LOG_TYPE_DEBUG))
      {
        v115 = CFCopyDescription(v359);
        v414 = v115;
        applesauce::CF::details::CFString_get_value<true>(__p, v115);
        if (v115)
        {
          CFRelease(v115);
        }

        v116 = __p;
        if (v403 < 0)
        {
          v116 = __p[0];
        }

        *v415 = 136315906;
        *&v415[4] = "NeuralNetLoader.cpp";
        v416 = 1024;
        v417 = 324;
        v418 = 2080;
        v419.__r_.__value_.__r.__words[0] = v116;
        LOWORD(v419.__r_.__value_.__r.__words[1]) = 2048;
        *(&v419.__r_.__value_.__r.__words[1] + 2) = i;
        _os_log_impl(&dword_1DDB85000, v114, OS_LOG_TYPE_DEBUG, "%25s:%-5d Successfully retrieved weights data type (%s) for Layer %zu.", v415, 0x26u);
        if (v403 < 0)
        {
          operator delete(__p[0]);
        }
      }

LABEL_262:
      v117 = *(a1 + 8);
      if (v117 == 8)
      {
        v118 = v359;
        if (v359)
        {
          CFRetain(v359);
        }

        v358 = v118;
        std::string::basic_string[abi:ne200100]<0>(v356, "int8");
        std::string::basic_string[abi:ne200100]<0>(v354, "SInt8");
        v119 = matchiEither(&v358, v356, v354);
        if (v355 < 0)
        {
          operator delete(v354[0]);
        }

        if (v357 < 0)
        {
          operator delete(v356[0]);
        }

        if (v358)
        {
          CFRelease(v358);
        }

        v120 = 131080;
        if (v119)
        {
          goto LABEL_305;
        }

        v117 = *(a1 + 8);
      }

      if (v117 == 16)
      {
        v121 = v359;
        if (v359)
        {
          CFRetain(v359);
        }

        v353 = v121;
        std::string::basic_string[abi:ne200100]<0>(v351, "int16");
        std::string::basic_string[abi:ne200100]<0>(v349, "SInt16");
        v122 = matchiEither(&v353, v351, v349);
        if (v350 < 0)
        {
          operator delete(v349[0]);
        }

        if (v352 < 0)
        {
          operator delete(v351[0]);
        }

        if (v353)
        {
          CFRelease(v353);
        }

        if (v122)
        {
          v120 = 131088;
          goto LABEL_305;
        }

        v117 = *(a1 + 8);
      }

      if (v117 == 32)
      {
        v123 = v359;
        if (v359)
        {
          CFRetain(v359);
        }

        v348 = v123;
        std::string::basic_string[abi:ne200100]<0>(v346, "int32");
        std::string::basic_string[abi:ne200100]<0>(v344, "SInt32");
        v124 = matchiEither(&v348, v346, v344);
        if (v345 < 0)
        {
          operator delete(v344[0]);
        }

        if (v347 < 0)
        {
          operator delete(v346[0]);
        }

        if (v348)
        {
          CFRelease(v348);
        }

        if (v124)
        {
          v120 = 131104;
          goto LABEL_305;
        }

        v117 = *(a1 + 8);
      }

      if (v117)
      {
        goto LABEL_678;
      }

      v125 = v359;
      if (v359)
      {
        CFRetain(v359);
      }

      v343 = v125;
      std::string::basic_string[abi:ne200100]<0>(v341, "float32");
      v126 = matchiString(&v343, v341);
      if (v342 < 0)
      {
        operator delete(v341[0]);
      }

      if (v343)
      {
        CFRelease(v343);
      }

      v120 = 65568;
      if (!v126)
      {
LABEL_678:
        v276 = *(a1 + 16);
        if (v276)
        {
          v277 = *v276;
        }

        else
        {
          v277 = 0;
        }

        if (os_log_type_enabled(v277, OS_LOG_TYPE_ERROR))
        {
          v286 = *(a1 + 8);
          *v415 = 136315906;
          *&v415[4] = "NeuralNetLoader.cpp";
          v416 = 1024;
          v417 = 346;
          v418 = 1024;
          LODWORD(v419.__r_.__value_.__l.__data_) = -66743;
          WORD2(v419.__r_.__value_.__r.__words[0]) = 1024;
          *(v419.__r_.__value_.__r.__words + 6) = v286;
          _os_log_impl(&dword_1DDB85000, v277, OS_LOG_TYPE_ERROR, "%25s:%-5d EXCEPTION (%d): Unsupported weights data quantization type for Quantization (%u).", v415, 0x1Eu);
        }

        v287 = __cxa_allocate_exception(0x10uLL);
        *v287 = &unk_1F593B0D8;
        v287[2] = -66743;
      }

LABEL_305:
      *(*a3 + 968 * i + 320) = v120;
      v340 = 1065353216;
      v127 = *(a1 + 16);
      if (v127)
      {
        v128 = *v127;
        if (!*v127)
        {
          goto LABEL_311;
        }
      }

      else
      {
        v128 = MEMORY[0x1E69E9C10];
      }

      if (os_log_type_enabled(v128, OS_LOG_TYPE_DEBUG))
      {
        *v415 = 136315394;
        *&v415[4] = "NeuralNetLoader.cpp";
        v416 = 1024;
        v417 = 351;
        _os_log_impl(&dword_1DDB85000, v128, OS_LOG_TYPE_DEBUG, "%25s:%-5d Loading from weightsDict.", v415, 0x12u);
      }

LABEL_311:
      if (DictionaryBlobReader::ReadScalarFromDictionary<float>(*a1, v369, @"DataScale", kCFNumberFloat32Type, &v340))
      {
        v205 = *(a1 + 16);
        if (v205)
        {
          v206 = *v205;
        }

        else
        {
          v206 = 0;
        }

        if (os_log_type_enabled(v206, OS_LOG_TYPE_ERROR))
        {
          *v415 = 136315650;
          *&v415[4] = "NeuralNetLoader.cpp";
          v416 = 1024;
          v417 = 354;
          v418 = 1024;
          LODWORD(v419.__r_.__value_.__l.__data_) = -66741;
          _os_log_impl(&dword_1DDB85000, v206, OS_LOG_TYPE_ERROR, "%25s:%-5d EXCEPTION (%d) [err != noErr is false]: Missing scalar DataScale from dictionary Weights.", v415, 0x18u);
        }

        v227 = __cxa_allocate_exception(0x10uLL);
        *v227 = &unk_1F593B0D8;
        v227[2] = -66741;
      }

      *(*a3 + 968 * i + 340) = v340;
      v339 = 0;
      v129 = *(a1 + 16);
      if (v129)
      {
        v130 = *v129;
        if (!*v129)
        {
          goto LABEL_318;
        }
      }

      else
      {
        v130 = MEMORY[0x1E69E9C10];
      }

      if (os_log_type_enabled(v130, OS_LOG_TYPE_DEBUG))
      {
        *v415 = 136315394;
        *&v415[4] = "NeuralNetLoader.cpp";
        v416 = 1024;
        v417 = 360;
        _os_log_impl(&dword_1DDB85000, v130, OS_LOG_TYPE_DEBUG, "%25s:%-5d Loading from weightsDict.", v415, 0x12u);
      }

LABEL_318:
      if (DictionaryBlobReader::ReadScalarFromDictionary<float>(*a1, v369, @"DataBias", kCFNumberFloat32Type, &v339))
      {
        v207 = *(a1 + 16);
        if (v207)
        {
          v208 = *v207;
        }

        else
        {
          v208 = 0;
        }

        if (os_log_type_enabled(v208, OS_LOG_TYPE_ERROR))
        {
          *v415 = 136315650;
          *&v415[4] = "NeuralNetLoader.cpp";
          v416 = 1024;
          v417 = 363;
          v418 = 1024;
          LODWORD(v419.__r_.__value_.__l.__data_) = -66741;
          _os_log_impl(&dword_1DDB85000, v208, OS_LOG_TYPE_ERROR, "%25s:%-5d EXCEPTION (%d) [err != noErr is false]: Missing scalar DataBias from dictionary Weights.", v415, 0x18u);
        }

        v228 = __cxa_allocate_exception(0x10uLL);
        *v228 = &unk_1F593B0D8;
        v228[2] = -66741;
      }

      *(*a3 + 968 * i + 344) = v339;
      v131 = CFDictionaryGetValue(v409, @"Bias");
      v132 = v131;
      if (!v131)
      {
        v260 = 0;
        v338 = 0;
        v261 = *(a1 + 16);
        if (v261)
        {
          v260 = *v261;
        }

        if (os_log_type_enabled(v260, OS_LOG_TYPE_ERROR))
        {
          *v415 = 136315650;
          *&v415[4] = "NeuralNetLoader.cpp";
          v416 = 1024;
          v417 = 374;
          v418 = 1024;
          LODWORD(v419.__r_.__value_.__l.__data_) = -66741;
          _os_log_impl(&dword_1DDB85000, v260, OS_LOG_TYPE_ERROR, "%25s:%-5d EXCEPTION (%d) [biasDict_ref.get_cf() == nullptr is false]: Missing dictionary Bias from dictionary Weights.", v415, 0x18u);
        }

        v262 = __cxa_allocate_exception(0x10uLL);
        *v262 = &unk_1F593B0D8;
        v262[2] = -66741;
      }

      CFRetain(v131);
      v338 = v132;
      applesauce::CF::TypeRef::operator applesauce::CF::DictionaryRef(&v337, &v338);
      v133 = *(a1 + 16);
      if (v133)
      {
        v134 = *v133;
        if (!*v133)
        {
          goto LABEL_326;
        }
      }

      else
      {
        v134 = MEMORY[0x1E69E9C10];
      }

      if (os_log_type_enabled(v134, OS_LOG_TYPE_DEBUG))
      {
        *v415 = 136315394;
        *&v415[4] = "NeuralNetLoader.cpp";
        v416 = 1024;
        v417 = 378;
        _os_log_impl(&dword_1DDB85000, v134, OS_LOG_TYPE_DEBUG, "%25s:%-5d Found the dictionary Bias.", v415, 0x12u);
      }

LABEL_326:
      if (DictionaryBlobReader::ReadVectorFromDictionary(*a1, v337, @"Data", (*a3 + 968 * i + 888)))
      {
        v209 = *(a1 + 16);
        if (v209)
        {
          v210 = *v209;
        }

        else
        {
          v210 = 0;
        }

        if (os_log_type_enabled(v210, OS_LOG_TYPE_ERROR))
        {
          *v415 = 136315650;
          *&v415[4] = "NeuralNetLoader.cpp";
          v416 = 1024;
          v417 = 383;
          v418 = 1024;
          LODWORD(v419.__r_.__value_.__l.__data_) = -66741;
          _os_log_impl(&dword_1DDB85000, v210, OS_LOG_TYPE_ERROR, "%25s:%-5d EXCEPTION (%d) [err != noErr is false]: Missing vector Data from dictionary Bias.", v415, 0x18u);
        }

        v229 = __cxa_allocate_exception(0x10uLL);
        *v229 = &unk_1F593B0D8;
        v229[2] = -66741;
      }

      v135 = *a3;
      v136 = *a3 + 968 * i;
      *(v136 + 532) = 0x10000;
      v137 = *(v136 + 896);
      v138 = *(v136 + 888);
      *(v136 + 600) = 1;
      *(v136 + 664) = v138;
      v139 = v137 - v138;
      *(v136 + 536) = v139 >> 2;
      if (v139)
      {
        v140 = 0;
        do
        {
          v141 = *(a1 + 16);
          if (v141)
          {
            if (*(v141 + 8))
            {
              v142 = *v141;
              if (*v141)
              {
                if (os_log_type_enabled(*v141, OS_LOG_TYPE_DEBUG))
                {
                  v143 = *(*(v135 + 968 * i + 664) + 4 * v140);
                  *v415 = 136315906;
                  *&v415[4] = "NeuralNetLoader.cpp";
                  v416 = 1024;
                  v417 = 394;
                  v418 = 2048;
                  *&v419.__r_.__value_.__l.__data_ = v143;
                  LOWORD(v419.__r_.__value_.__r.__words[1]) = 2048;
                  *(&v419.__r_.__value_.__r.__words[1] + 2) = v140;
                  _os_log_impl(&dword_1DDB85000, v142, OS_LOG_TYPE_DEBUG, "%25s:%-5d Successfully retrieved bias data (%g) at index (%zu).", v415, 0x26u);
                  v135 = *a3;
                }
              }
            }
          }

          ++v140;
          v144 = (*(v135 + 968 * i + 896) - *(v135 + 968 * i + 888)) >> 2;
          if (v144 >= 4)
          {
            v144 = 4;
          }
        }

        while (v140 < v144);
      }

      v145 = CFDictionaryGetValue(v337, @"DataType");
      v146 = v145;
      if (!v145)
      {
        v263 = 0;
        v336 = 0;
        v264 = *(a1 + 16);
        if (v264)
        {
          v263 = *v264;
        }

        if (os_log_type_enabled(v263, OS_LOG_TYPE_ERROR))
        {
          *v415 = 136315650;
          *&v415[4] = "NeuralNetLoader.cpp";
          v416 = 1024;
          v417 = 401;
          v418 = 1024;
          LODWORD(v419.__r_.__value_.__l.__data_) = -66741;
          _os_log_impl(&dword_1DDB85000, v263, OS_LOG_TYPE_ERROR, "%25s:%-5d EXCEPTION (%d) [biasDataType_ref.get_cf() == nullptr is false]: Missing dictionary DataType from dictionary Weights.", v415, 0x18u);
        }

        v265 = __cxa_allocate_exception(0x10uLL);
        *v265 = &unk_1F593B0D8;
        v265[2] = -66741;
      }

      CFRetain(v145);
      v336 = v146;
      applesauce::CF::TypeRef::operator applesauce::CF::StringRef(&v335, &v336);
      v147 = *(a1 + 16);
      if (v147)
      {
        v148 = *v147;
        if (!*v147)
        {
          goto LABEL_349;
        }
      }

      else
      {
        v148 = MEMORY[0x1E69E9C10];
      }

      if (os_log_type_enabled(v148, OS_LOG_TYPE_DEBUG))
      {
        v149 = CFCopyDescription(v335);
        v414 = v149;
        applesauce::CF::details::CFString_get_value<true>(__p, v149);
        if (v149)
        {
          CFRelease(v149);
        }

        v150 = __p;
        if (v403 < 0)
        {
          v150 = __p[0];
        }

        *v415 = 136315906;
        *&v415[4] = "NeuralNetLoader.cpp";
        v416 = 1024;
        v417 = 405;
        v418 = 2080;
        v419.__r_.__value_.__r.__words[0] = v150;
        LOWORD(v419.__r_.__value_.__r.__words[1]) = 2048;
        *(&v419.__r_.__value_.__r.__words[1] + 2) = i;
        _os_log_impl(&dword_1DDB85000, v148, OS_LOG_TYPE_DEBUG, "%25s:%-5d Successfully retrieved bias data type (%s) for Layer %zu.", v415, 0x26u);
        if (v403 < 0)
        {
          operator delete(__p[0]);
        }
      }

LABEL_349:
      v151 = v335;
      if (v335)
      {
        CFRetain(v335);
      }

      v334 = v151;
      std::string::basic_string[abi:ne200100]<0>(v332, "float32");
      v152 = matchiString(&v334, v332);
      if (v333 < 0)
      {
        operator delete(v332[0]);
      }

      if (v334)
      {
        CFRelease(v334);
      }

      if (!v152)
      {
        v266 = *(a1 + 16);
        if (v266)
        {
          v267 = *v266;
        }

        else
        {
          v267 = 0;
        }

        if (os_log_type_enabled(v267, OS_LOG_TYPE_ERROR))
        {
          *v415 = 136315650;
          *&v415[4] = "NeuralNetLoader.cpp";
          v416 = 1024;
          v417 = 414;
          v418 = 1024;
          LODWORD(v419.__r_.__value_.__l.__data_) = -66743;
          _os_log_impl(&dword_1DDB85000, v267, OS_LOG_TYPE_ERROR, "%25s:%-5d EXCEPTION (%d): Unsupported bias data type.", v415, 0x18u);
        }

        v283 = __cxa_allocate_exception(0x10uLL);
        *v283 = &unk_1F593B0D8;
        v283[2] = -66743;
      }

      *(*a3 + 968 * i + 672) = 65568;
      v331 = 1065353216;
      v153 = *(a1 + 16);
      if (v153)
      {
        v154 = *v153;
        if (!*v153)
        {
          goto LABEL_362;
        }
      }

      else
      {
        v154 = MEMORY[0x1E69E9C10];
      }

      if (os_log_type_enabled(v154, OS_LOG_TYPE_DEBUG))
      {
        *v415 = 136315394;
        *&v415[4] = "NeuralNetLoader.cpp";
        v416 = 1024;
        v417 = 419;
        _os_log_impl(&dword_1DDB85000, v154, OS_LOG_TYPE_DEBUG, "%25s:%-5d Loading from biasDict.", v415, 0x12u);
      }

LABEL_362:
      if (DictionaryBlobReader::ReadScalarFromDictionary<float>(*a1, v337, @"DataScale", kCFNumberFloat32Type, &v331))
      {
        v211 = *(a1 + 16);
        if (v211)
        {
          v212 = *v211;
        }

        else
        {
          v212 = 0;
        }

        if (os_log_type_enabled(v212, OS_LOG_TYPE_ERROR))
        {
          *v415 = 136315650;
          *&v415[4] = "NeuralNetLoader.cpp";
          v416 = 1024;
          v417 = 422;
          v418 = 1024;
          LODWORD(v419.__r_.__value_.__l.__data_) = -66741;
          _os_log_impl(&dword_1DDB85000, v212, OS_LOG_TYPE_ERROR, "%25s:%-5d EXCEPTION (%d) [err != noErr is false]: Missing scalar DataScale from dictionary Bias.", v415, 0x18u);
        }

        v230 = __cxa_allocate_exception(0x10uLL);
        *v230 = &unk_1F593B0D8;
        v230[2] = -66741;
      }

      *(*a3 + 968 * i + 692) = v331;
      v330 = 0;
      v155 = *(a1 + 16);
      if (v155)
      {
        v156 = *v155;
        if (!*v155)
        {
          goto LABEL_369;
        }
      }

      else
      {
        v156 = MEMORY[0x1E69E9C10];
      }

      if (os_log_type_enabled(v156, OS_LOG_TYPE_DEBUG))
      {
        *v415 = 136315394;
        *&v415[4] = "NeuralNetLoader.cpp";
        v416 = 1024;
        v417 = 428;
        _os_log_impl(&dword_1DDB85000, v156, OS_LOG_TYPE_DEBUG, "%25s:%-5d Loading from biasDict.", v415, 0x12u);
      }

LABEL_369:
      if (DictionaryBlobReader::ReadScalarFromDictionary<float>(*a1, v337, @"DataBias", kCFNumberFloat32Type, &v330))
      {
        v213 = *(a1 + 16);
        if (v213)
        {
          v214 = *v213;
        }

        else
        {
          v214 = 0;
        }

        if (os_log_type_enabled(v214, OS_LOG_TYPE_ERROR))
        {
          *v415 = 136315650;
          *&v415[4] = "NeuralNetLoader.cpp";
          v416 = 1024;
          v417 = 431;
          v418 = 1024;
          LODWORD(v419.__r_.__value_.__l.__data_) = -66741;
          _os_log_impl(&dword_1DDB85000, v214, OS_LOG_TYPE_ERROR, "%25s:%-5d EXCEPTION (%d) [err != noErr is false]: Missing scalar DataBias from dictionary Bias.", v415, 0x18u);
        }

        v231 = __cxa_allocate_exception(0x10uLL);
        *v231 = &unk_1F593B0D8;
        v231[2] = -66741;
      }

      *(*a3 + 968 * i + 696) = v330;
      v157 = CFDictionaryGetValue(v409, @"Activation");
      v158 = v157;
      if (!v157)
      {
        v271 = 0;
        v329 = 0;
        v272 = *(a1 + 16);
        if (v272)
        {
          v271 = *v272;
        }

        if (os_log_type_enabled(v271, OS_LOG_TYPE_ERROR))
        {
          *v415 = 136315650;
          *&v415[4] = "NeuralNetLoader.cpp";
          v416 = 1024;
          v417 = 443;
          v418 = 1024;
          LODWORD(v419.__r_.__value_.__l.__data_) = -66741;
          _os_log_impl(&dword_1DDB85000, v271, OS_LOG_TYPE_ERROR, "%25s:%-5d EXCEPTION (%d) [activationDict_ref.get_cf() == nullptr is false]: Missing dictionary Activation.", v415, 0x18u);
        }

        v273 = __cxa_allocate_exception(0x10uLL);
        *v273 = &unk_1F593B0D8;
        v273[2] = -66741;
      }

      CFRetain(v157);
      v329 = v158;
      applesauce::CF::TypeRef::operator applesauce::CF::DictionaryRef(&v328, &v329);
      v159 = *(a1 + 16);
      if (v159)
      {
        v160 = *v159;
        if (!*v159)
        {
          goto LABEL_377;
        }
      }

      else
      {
        v160 = MEMORY[0x1E69E9C10];
      }

      if (os_log_type_enabled(v160, OS_LOG_TYPE_DEBUG))
      {
        *v415 = 136315394;
        *&v415[4] = "NeuralNetLoader.cpp";
        v416 = 1024;
        v417 = 447;
        _os_log_impl(&dword_1DDB85000, v160, OS_LOG_TYPE_DEBUG, "%25s:%-5d Found the dictionary Activation.", v415, 0x12u);
      }

LABEL_377:
      v161 = CFDictionaryGetValue(v328, @"Function");
      v162 = v161;
      v295 = v158;
      if (!v161)
      {
        v268 = 0;
        v327 = 0;
        v269 = *(a1 + 16);
        if (v269)
        {
          v268 = *v269;
        }

        if (os_log_type_enabled(v268, OS_LOG_TYPE_ERROR))
        {
          *v415 = 136315650;
          *&v415[4] = "NeuralNetLoader.cpp";
          v416 = 1024;
          v417 = 453;
          v418 = 1024;
          LODWORD(v419.__r_.__value_.__l.__data_) = -66741;
          _os_log_impl(&dword_1DDB85000, v268, OS_LOG_TYPE_ERROR, "%25s:%-5d EXCEPTION (%d) [activationFunction_ref.get_cf() == nullptr is false]: Failed to retrieve activation function (Function) from dictionary Activation.", v415, 0x18u);
        }

        v270 = __cxa_allocate_exception(0x10uLL);
        *v270 = &unk_1F593B0D8;
        v270[2] = -66741;
      }

      CFRetain(v161);
      v327 = v162;
      applesauce::CF::TypeRef::operator applesauce::CF::StringRef(&v326, &v327);
      v163 = *(a1 + 16);
      if (v163)
      {
        v164 = *v163;
        if (!*v163)
        {
          goto LABEL_389;
        }
      }

      else
      {
        v164 = MEMORY[0x1E69E9C10];
      }

      if (os_log_type_enabled(v164, OS_LOG_TYPE_DEBUG))
      {
        v165 = CFCopyDescription(v326);
        v414 = v165;
        applesauce::CF::details::CFString_get_value<true>(__p, v165);
        if (v165)
        {
          CFRelease(v165);
        }

        v166 = __p;
        if (v403 < 0)
        {
          v166 = __p[0];
        }

        *v415 = 136315906;
        *&v415[4] = "NeuralNetLoader.cpp";
        v416 = 1024;
        v417 = 457;
        v418 = 2080;
        v419.__r_.__value_.__r.__words[0] = v166;
        LOWORD(v419.__r_.__value_.__r.__words[1]) = 2048;
        *(&v419.__r_.__value_.__r.__words[1] + 2) = i;
        _os_log_impl(&dword_1DDB85000, v164, OS_LOG_TYPE_DEBUG, "%25s:%-5d Successfully retrieved activation function (%s) for Layer %zu.", v415, 0x26u);
        if (v403 < 0)
        {
          operator delete(__p[0]);
        }
      }

LABEL_389:
      *(*a3 + 968 * i + 704) = 0;
      v167 = v326;
      if (v326)
      {
        CFRetain(v326);
      }

      v325 = v167;
      std::string::basic_string[abi:ne200100]<0>(v323, "Identity");
      v168 = v295;
      std::string::basic_string[abi:ne200100]<0>(v321, "Linear");
      v169 = matchiEither(&v325, v323, v321);
      if (v322 < 0)
      {
        operator delete(v321[0]);
      }

      if (v324 < 0)
      {
        operator delete(v323[0]);
      }

      if (v325)
      {
        CFRelease(v325);
      }

      if (v169)
      {
        v170 = 0;
        goto LABEL_452;
      }

      v171 = v326;
      if (v326)
      {
        CFRetain(v326);
      }

      v320 = v171;
      std::string::basic_string[abi:ne200100]<0>(v318, "RectifiedLinear");
      std::string::basic_string[abi:ne200100]<0>(v316, "ReLU");
      v172 = matchiEither(&v320, v318, v316);
      if (v317 < 0)
      {
        operator delete(v316[0]);
      }

      if (v319 < 0)
      {
        operator delete(v318[0]);
      }

      if (v320)
      {
        CFRelease(v320);
      }

      if (v172)
      {
        v170 = 1;
LABEL_451:
        v168 = v295;
        goto LABEL_452;
      }

      v173 = v326;
      if (v326)
      {
        CFRetain(v326);
      }

      v315 = v173;
      std::string::basic_string[abi:ne200100]<0>(v313, "LeakyRectifiedLinear");
      std::string::basic_string[abi:ne200100]<0>(v311, "LeakyReLU");
      v174 = matchiEither(&v315, v313, v311);
      if (v312 < 0)
      {
        operator delete(v311[0]);
      }

      if (v314 < 0)
      {
        operator delete(v313[0]);
      }

      if (v315)
      {
        CFRelease(v315);
      }

      if (v174)
      {
        v170 = 2;
        goto LABEL_451;
      }

      v175 = v326;
      if (v326)
      {
        CFRetain(v326);
      }

      v310 = v175;
      std::string::basic_string[abi:ne200100]<0>(v308, "Sigmoid");
      v176 = matchiString(&v310, v308);
      if (v309 < 0)
      {
        operator delete(v308[0]);
      }

      if (v310)
      {
        CFRelease(v310);
      }

      if (v176)
      {
        v170 = 3;
        goto LABEL_451;
      }

      v177 = v326;
      if (v326)
      {
        CFRetain(v326);
      }

      v307 = v177;
      std::string::basic_string[abi:ne200100]<0>(v305, "Tanh");
      v178 = matchiString(&v307, v305);
      if (v306 < 0)
      {
        operator delete(v305[0]);
      }

      if (v307)
      {
        CFRelease(v307);
      }

      if (v178)
      {
        v170 = 4;
        goto LABEL_451;
      }

      v179 = v326;
      if (v326)
      {
        CFRetain(v326);
      }

      v304 = v179;
      std::string::basic_string[abi:ne200100]<0>(v302, "ScaledTanh");
      v180 = matchiString(&v304, v302);
      if (v303 < 0)
      {
        operator delete(v302[0]);
      }

      if (v304)
      {
        CFRelease(v304);
      }

      if (v180)
      {
        v170 = 5;
        goto LABEL_451;
      }

      v181 = v326;
      if (v326)
      {
        CFRetain(v326);
      }

      v301 = v181;
      std::string::basic_string[abi:ne200100]<0>(v299, "Abs");
      v182 = matchiString(&v301, v299);
      if (v300 < 0)
      {
        operator delete(v299[0]);
      }

      if (v301)
      {
        CFRelease(v301);
      }

      if (v182)
      {
        v170 = 6;
        goto LABEL_451;
      }

      v187 = v326;
      if (v326)
      {
        CFRetain(v326);
      }

      v298 = v187;
      std::string::basic_string[abi:ne200100]<0>(v296, "ELU");
      v168 = v295;
      v188 = matchiString(&v298, v296);
      if (v297 < 0)
      {
        operator delete(v296[0]);
      }

      if (v298)
      {
        CFRelease(v298);
      }

      if (!v188)
      {
        v291 = *(a1 + 16);
        if (v291)
        {
          v292 = *v291;
        }

        else
        {
          v292 = 0;
        }

        if (os_log_type_enabled(v292, OS_LOG_TYPE_ERROR))
        {
          *v415 = 136315650;
          *&v415[4] = "NeuralNetLoader.cpp";
          v416 = 1024;
          v417 = 496;
          v418 = 1024;
          LODWORD(v419.__r_.__value_.__l.__data_) = -66743;
          _os_log_impl(&dword_1DDB85000, v292, OS_LOG_TYPE_ERROR, "%25s:%-5d EXCEPTION (%d): Unsupported activation function.", v415, 0x18u);
        }

        v293 = __cxa_allocate_exception(0x10uLL);
        *v293 = &unk_1F593B0D8;
        v293[2] = -66743;
      }

      v170 = 7;
LABEL_452:
      *(*a3 + 968 * i + 960) = v170;
      LODWORD(__p[0]) = 1065353216;
      v183 = *(a1 + 16);
      if (v183)
      {
        v184 = *v183;
        if (!*v183)
        {
          goto LABEL_458;
        }
      }

      else
      {
        v184 = MEMORY[0x1E69E9C10];
      }

      if (os_log_type_enabled(v184, OS_LOG_TYPE_DEBUG))
      {
        *v415 = 136315394;
        *&v415[4] = "NeuralNetLoader.cpp";
        v416 = 1024;
        v417 = 501;
        _os_log_impl(&dword_1DDB85000, v184, OS_LOG_TYPE_DEBUG, "%25s:%-5d Loading from activationDict.", v415, 0x12u);
      }

LABEL_458:
      if (DictionaryBlobReader::ReadScalarFromDictionary<float>(*a1, v328, @"Alpha", kCFNumberFloat32Type, __p))
      {
        v215 = *(a1 + 16);
        if (v215)
        {
          v216 = *v215;
        }

        else
        {
          v216 = 0;
        }

        if (os_log_type_enabled(v216, OS_LOG_TYPE_ERROR))
        {
          *v415 = 136315650;
          *&v415[4] = "NeuralNetLoader.cpp";
          v416 = 1024;
          v417 = 504;
          v418 = 1024;
          LODWORD(v419.__r_.__value_.__l.__data_) = -66741;
          _os_log_impl(&dword_1DDB85000, v216, OS_LOG_TYPE_ERROR, "%25s:%-5d EXCEPTION (%d) [err != noErr is false]: Missing scalar Alpha from dictionary Activation.", v415, 0x18u);
        }

        v232 = __cxa_allocate_exception(0x10uLL);
        *v232 = &unk_1F593B0D8;
        v232[2] = -66741;
      }

      *(*a3 + 968 * i + 708) = __p[0];
      LODWORD(v414) = 0;
      v185 = *(a1 + 16);
      if (!v185)
      {
        v186 = MEMORY[0x1E69E9C10];
LABEL_463:
        if (os_log_type_enabled(v186, OS_LOG_TYPE_DEBUG))
        {
          *v415 = 136315394;
          *&v415[4] = "NeuralNetLoader.cpp";
          v416 = 1024;
          v417 = 510;
          _os_log_impl(&dword_1DDB85000, v186, OS_LOG_TYPE_DEBUG, "%25s:%-5d Loading from activationDict.", v415, 0x12u);
        }

        goto LABEL_465;
      }

      v186 = *v185;
      if (*v185)
      {
        goto LABEL_463;
      }

LABEL_465:
      if (DictionaryBlobReader::ReadScalarFromDictionary<float>(*a1, v328, @"Beta", kCFNumberFloat32Type, &v414))
      {
        v217 = *(a1 + 16);
        if (v217)
        {
          v218 = *v217;
        }

        else
        {
          v218 = 0;
        }

        if (os_log_type_enabled(v218, OS_LOG_TYPE_ERROR))
        {
          *v415 = 136315650;
          *&v415[4] = "NeuralNetLoader.cpp";
          v416 = 1024;
          v417 = 513;
          v418 = 1024;
          LODWORD(v419.__r_.__value_.__l.__data_) = -66741;
          _os_log_impl(&dword_1DDB85000, v218, OS_LOG_TYPE_ERROR, "%25s:%-5d EXCEPTION (%d) [err != noErr is false]: Missing scalar Beta from dictionary Activation.", v415, 0x18u);
        }

        v233 = __cxa_allocate_exception(0x10uLL);
        *v233 = &unk_1F593B0D8;
        v233[2] = -66741;
      }

      *(*a3 + 968 * i + 712) = v414;
      if (v326)
      {
        CFRelease(v326);
      }

      CFRelease(v162);
      if (v328)
      {
        CFRelease(v328);
      }

      CFRelease(v168);
      if (v335)
      {
        CFRelease(v335);
      }

      CFRelease(v146);
      if (v337)
      {
        CFRelease(v337);
      }

      CFRelease(v132);
      if (v359)
      {
        CFRelease(v359);
      }

      if (v368)
      {
        CFRelease(v368);
      }

      if (v369)
      {
        CFRelease(v369);
      }

      if (v370)
      {
        CFRelease(v370);
      }

      if (v371)
      {
        CFRelease(v371);
      }

      if (cf)
      {
        CFRelease(cf);
      }

      if (v378)
      {
        CFRelease(v378);
      }

      if (v380)
      {
        CFRelease(v380);
      }

      if (v381)
      {
        CFRelease(v381);
      }

      if (v404)
      {
        CFRelease(v404);
      }

      if (v405)
      {
        CFRelease(v405);
      }

      if (v407)
      {
        CFRelease(v407);
      }

      if (v408)
      {
        CFRelease(v408);
      }

      if (v409)
      {
        CFRelease(v409);
      }

      if (v410)
      {
        CFRelease(v410);
      }

      if (v411)
      {
        CFRelease(v411);
      }

      if (SHIBYTE(v413) < 0)
      {
        operator delete(v412);
      }
    }
  }
}

void sub_1DDFFCA48(_Unwind_Exception *a1, int a2)
{
  if (a2)
  {
    __clang_call_terminate(a1);
  }

  _Unwind_Resume(a1);
}

void sub_1DDFFD2CC()
{
  if (STACK[0x370])
  {
    CFRelease(STACK[0x370]);
  }

  if (STACK[0x378])
  {
    CFRelease(STACK[0x378]);
  }

  JUMPOUT(0x1DDFFD308);
}

void sub_1DDFFD2F4(uint64_t a1, int a2)
{
  if (a2)
  {
    __clang_call_terminate();
  }

  JUMPOUT(0x1DDFFD2C0);
}

void sub_1DDFFD2FC(uint64_t a1, int a2)
{
  if (a2)
  {
    __clang_call_terminate();
  }

  JUMPOUT(0x1DDFFD2C0);
}

void sub_1DDFFD328(uint64_t a1, int a2)
{
  if (a2)
  {
    __clang_call_terminate();
  }

  JUMPOUT(0x1DDFFD2C0);
}

void sub_1DDFFD330(uint64_t a1, int a2)
{
  if (a2)
  {
    __clang_call_terminate();
  }

  JUMPOUT(0x1DDFFD2C0);
}

void sub_1DDFFD338()
{
  v1 = *(v0 - 256);
  if (v1)
  {
    CFRelease(v1);
  }

  if (*(v0 - 248))
  {
    CFRelease(*(v0 - 248));
  }

  JUMPOUT(0x1DDFFD374);
}

void sub_1DDFFD360(uint64_t a1, int a2)
{
  if (a2)
  {
    __clang_call_terminate();
  }

  JUMPOUT(0x1DDFFD2C0);
}

void sub_1DDFFD3CC(uint64_t a1, int a2)
{
  if (a2)
  {
    __clang_call_terminate();
  }

  JUMPOUT(0x1DDFFD2C0);
}

void sub_1DDFFD3D4(uint64_t a1, int a2)
{
  if (a2)
  {
    __clang_call_terminate();
  }

  JUMPOUT(0x1DDFFD2C0);
}

void sub_1DDFFD3DC(uint64_t a1, int a2)
{
  if (a2)
  {
    __clang_call_terminate();
  }

  JUMPOUT(0x1DDFFD2C0);
}

void sub_1DDFFD3E4(uint64_t a1, int a2)
{
  if (a2)
  {
    __clang_call_terminate();
  }

  JUMPOUT(0x1DDFFD2C0);
}

void sub_1DDFFD3EC(uint64_t a1, int a2)
{
  if (a2)
  {
    __clang_call_terminate();
  }

  JUMPOUT(0x1DDFFD2C0);
}

uint64_t AUCrossCorrelator::GetScopeExtended(AUCrossCorrelator *this, int a2)
{
  if (a2 == 4)
  {
    return this + 832;
  }

  else
  {
    return 0;
  }
}

uint64_t AUCrossCorrelator::SupportedNumChannels(AUCrossCorrelator *this, const AUChannelInfo **a2)
{
  if (a2)
  {
    *a2 = &AUCrossCorrelator::SupportedNumChannels(AUChannelInfo const**)::sSupportedChannelConfigs;
  }

  return 8;
}

uint64_t AUCrossCorrelator::SaveExtendedScopes(AUCrossCorrelator *this, __CFData *a2)
{
  v3 = (*(*this + 408))(this, 4);
  if (!v3)
  {
    ausdk::ThrowQuiet(0);
  }

  return ausdk::AUScope::SaveState(v3, a2);
}

uint64_t AUCrossCorrelator::GetParameterInfo(AUCrossCorrelator *this, int a2, unsigned int a3, AudioUnitParameterInfo *a4)
{
  getParameterInfo(&v20);
  if (a2 != 4)
  {
    v10 = 4294956430;
    goto LABEL_15;
  }

  v7 = v21;
  if (!v21)
  {
LABEL_8:
    v10 = 4294956418;
    goto LABEL_15;
  }

  v8 = v21;
  while (1)
  {
    v9 = *(v8 + 8);
    if (v9 <= a3)
    {
      break;
    }

LABEL_7:
    v8 = *v8;
    if (!v8)
    {
      goto LABEL_8;
    }
  }

  if (v9 < a3)
  {
    ++v8;
    goto LABEL_7;
  }

  while (1)
  {
    while (1)
    {
      v11 = v7;
      v12 = *(v7 + 8);
      if (v12 <= a3)
      {
        break;
      }

      v7 = *v11;
      if (!*v11)
      {
LABEL_17:
        operator new();
      }
    }

    if (v12 >= a3)
    {
      break;
    }

    v7 = v11[1];
    if (!v7)
    {
      goto LABEL_17;
    }
  }

  v14 = *(v11 + 11);
  v15 = *(v11 + 15);
  v16 = v11[17];
  *&a4->clumpID = *(v11 + 13);
  *&a4->flags = v16;
  v17 = *(v11 + 7);
  v18 = *(v11 + 9);
  *a4->name = *(v11 + 5);
  *&a4->name[16] = v17;
  *&a4->unit = v15;
  *&a4->name[32] = v18;
  *&a4->name[48] = v14;
  cfNameString = a4->cfNameString;
  a4->flags = v16 | 0x8000000;
  CFStringGetCString(cfNameString, a4->name, 52, 0x8000100u);
  v10 = 0;
LABEL_15:
  std::__tree<std::__value_type<VADPostProcessing::SmoothingTypes,__CFString const*>,std::__map_value_compare<VADPostProcessing::SmoothingTypes,std::__value_type<VADPostProcessing::SmoothingTypes,__CFString const*>,std::less<VADPostProcessing::SmoothingTypes>,true>,std::allocator<std::__value_type<VADPostProcessing::SmoothingTypes,__CFString const*>>>::destroy(v21);
  return v10;
}

void getParameterInfo(void *a1)
{
  v7 = *MEMORY[0x1E69E9840];
  {
    memcpy(__dst, &unk_1E86719E8, sizeof(__dst));
    std::map<unsigned int,AudioUnitParameterInfo>::map[abi:ne200100](__dst, 4);
    __cxa_atexit(std::map<unsigned int,AudioUnitParameterInfo>::~map[abi:ne200100], &getParameterInfo(void)::sParameterInfo, &dword_1DDB85000);
  }

  a1[1] = 0;
  a1[2] = 0;
  *a1 = a1 + 1;
  v2 = getParameterInfo(void)::sParameterInfo;
  if (getParameterInfo(void)::sParameterInfo != &qword_1ECDA9FD8)
  {
    do
    {
      std::__tree<std::__value_type<unsigned int,AudioUnitParameterInfo>,std::__map_value_compare<unsigned int,std::__value_type<unsigned int,AudioUnitParameterInfo>,std::less<unsigned int>,true>,std::allocator<std::__value_type<unsigned int,AudioUnitParameterInfo>>>::__emplace_hint_unique_key_args<unsigned int,std::pair<unsigned int const,AudioUnitParameterInfo> const&>(a1, a1 + 1, *(v2 + 32));
      v3 = *(v2 + 8);
      if (v3)
      {
        do
        {
          v4 = v3;
          v3 = *v3;
        }

        while (v3);
      }

      else
      {
        do
        {
          v4 = *(v2 + 16);
          v5 = *v4 == v2;
          v2 = v4;
        }

        while (!v5);
      }

      v2 = v4;
    }

    while (v4 != &qword_1ECDA9FD8);
  }
}

unsigned int *std::map<unsigned int,AudioUnitParameterInfo>::map[abi:ne200100](unsigned int *result, uint64_t a2)
{
  qword_1ECDA9FE0 = 0;
  qword_1ECDA9FD8 = 0;
  getParameterInfo(void)::sParameterInfo = &qword_1ECDA9FD8;
  if (a2)
  {
    v2 = result;
    v3 = 112 * a2;
    do
    {
      result = std::__tree<std::__value_type<unsigned int,AudioUnitParameterInfo>,std::__map_value_compare<unsigned int,std::__value_type<unsigned int,AudioUnitParameterInfo>,std::less<unsigned int>,true>,std::allocator<std::__value_type<unsigned int,AudioUnitParameterInfo>>>::__emplace_hint_unique_key_args<unsigned int,std::pair<unsigned int const,AudioUnitParameterInfo> const&>(&getParameterInfo(void)::sParameterInfo, &qword_1ECDA9FD8, *v2);
      v2 += 28;
      v3 -= 112;
    }

    while (v3);
  }

  return result;
}

void *std::__tree<std::__value_type<unsigned int,AudioUnitParameterInfo>,std::__map_value_compare<unsigned int,std::__value_type<unsigned int,AudioUnitParameterInfo>,std::less<unsigned int>,true>,std::allocator<std::__value_type<unsigned int,AudioUnitParameterInfo>>>::__emplace_hint_unique_key_args<unsigned int,std::pair<unsigned int const,AudioUnitParameterInfo> const&>(void *result, uint64_t *a2, unsigned int a3)
{
  v3 = result + 1;
  if (result + 1 == a2 || (v4 = *(a2 + 8), v4 > a3))
  {
    v5 = *a2;
    if (*result == a2)
    {
      v7 = a2;
LABEL_16:
      if (v5)
      {
        v8 = v7 + 1;
      }

      else
      {
        v8 = a2;
      }

      goto LABEL_19;
    }

    if (v5)
    {
      v6 = *a2;
      do
      {
        v7 = v6;
        v6 = v6[1];
      }

      while (v6);
    }

    else
    {
      v11 = a2;
      do
      {
        v7 = v11[2];
        v12 = *v7 == v11;
        v11 = v7;
      }

      while (v12);
    }

    if (*(v7 + 8) < a3)
    {
      goto LABEL_16;
    }

    v13 = *v3;
    if (*v3)
    {
      while (1)
      {
        while (1)
        {
          v14 = v13;
          v15 = *(v13 + 32);
          if (v15 <= a3)
          {
            break;
          }

          v13 = *v14;
          v3 = v14;
          if (!*v14)
          {
            goto LABEL_38;
          }
        }

        if (v15 >= a3)
        {
          break;
        }

        v3 = v14 + 1;
        v13 = v14[1];
        if (!v13)
        {
          goto LABEL_38;
        }
      }

LABEL_39:
      v8 = v3;
      goto LABEL_19;
    }

    goto LABEL_38;
  }

  if (v4 >= a3)
  {
    return result;
  }

  v8 = a2 + 1;
  v9 = a2[1];
  if (v9)
  {
    do
    {
      v8 = v9;
      v9 = *v9;
      v10 = v8;
    }

    while (v9);
  }

  else
  {
    v10 = a2;
    do
    {
      v16 = v10;
      v10 = v10[2];
    }

    while (*v10 != v16);
  }

  if (v10 != v3 && *(v10 + 8) <= a3)
  {
    for (i = *v3; i; i = v18[1])
    {
      while (1)
      {
        v18 = i;
        v19 = *(i + 32);
        if (v19 <= a3)
        {
          break;
        }

        i = *v18;
        v3 = v18;
        if (!*v18)
        {
          goto LABEL_38;
        }
      }

      if (v19 >= a3)
      {
        goto LABEL_39;
      }

      v3 = v18 + 1;
    }

LABEL_38:
    operator new();
  }

LABEL_19:
  if (!*v8)
  {
    goto LABEL_38;
  }

  return result;
}

uint64_t AUCrossCorrelator::GetParameterList(AUCrossCorrelator *this, int a2, unsigned int *a3, unsigned int *a4)
{
  if (a2 != 4)
  {
    return 4294956430;
  }

  result = 0;
  if (a3)
  {
    *a3 = xmmword_1DE096230;
    *a4 = 4;
  }

  return result;
}

ausdk::AUInputElement *AUCrossCorrelator::Render(AUCrossCorrelator *this, unsigned int *a2, const AudioTimeStamp *a3, uint64_t a4)
{
  Element = ausdk::AUScope::GetElement((this + 80), 0);
  if (!Element || (v9 = Element, (v10 = ausdk::AUScope::GetElement((this + 128), 0)) == 0))
  {
    ausdk::Throw(0xFFFFD583);
  }

  v11 = v10;
  result = ausdk::AUScope::GetElementOrError<ausdk::AUElement>(this + 80, 0);
  if (v13)
  {
    result = ausdk::AUInputElement::PullInput(result, a2, a3, 0, a4);
  }

  if (!result)
  {
    if (!*(v9 + 144) || !*(v11 + 144))
    {
      ausdk::Throw(0xFFFFFFFFLL);
    }

    v14 = *(*this + 176);
    v15 = *(v9 + 152) + 48;
    v16 = *(v11 + 152) + 48;

    return v14(this, a2, v15, v16, a4);
  }

  return result;
}

uint64_t AUCrossCorrelator::ProcessBufferLists(AUCrossCorrelator *this, unsigned int *a2, const AudioBufferList *a3, AudioBufferList *a4, unsigned int a5)
{
  mNumberBuffers = a3->mNumberBuffers;
  if (mNumberBuffers != a4->mNumberBuffers)
  {
    __assert_rtn("CopyBufferList", "AUCrossCorrelator.cpp", 16, "srcBufferList.mNumberBuffers == dstBufferList.mNumberBuffers");
  }

  if (a3->mNumberBuffers)
  {
    v9 = 0;
    p_mData = &a4->mBuffers[0].mData;
    v11 = &a3->mBuffers[0].mData;
    do
    {
      v12 = *(v11 - 1);
      if (v12 == *(p_mData - 1) && *v11 != *p_mData)
      {
        memcpy(*p_mData, *v11, v12);
        mNumberBuffers = a3->mNumberBuffers;
      }

      ++v9;
      p_mData += 2;
      v11 += 2;
    }

    while (v9 < mNumberBuffers);
  }

  if (*(this + 84) < a5)
  {
    return 4294956422;
  }

  *(this + 67) = 0;
  *(this + 648) = 0u;
  *(this + 664) = 0u;
  *(this + 712) = 0u;
  *(this + 728) = 0u;
  if (*(this + 73) && (*(this + 528) & 1) == 0)
  {
    v152 = this + 648;
    if (!a5)
    {
      v25 = 0;
LABEL_48:
      v63 = *(this + 112);
      v64 = *(this + 204);
      v65 = *(this + 113) + v25;
      if (v63 + v64 <= v65)
      {
        v151 = v25;
        do
        {
          v159 = *(this + 111);
          v161 = *(this + 103);
          v153 = v63;
          v156 = v63 + v64;
          if (CADeprecated::AudioRingBuffer::CheckTimeBounds(v159, v63, v63 + v64))
          {
            goto LABEL_128;
          }

          if (v64)
          {
            v66 = *(v159 + 104);
            v67 = *(v159 + 116);
            v68 = *(v159 + 120);
            v69 = v153;
            v70 = ((((v153 % v68) >> 63) & v68) + v153 % v68) * v67;
            v71 = ((((v156 % v68) >> 63) & v68) + v156 % v68) * v67;
            LODWORD(v64) = v71 - v70;
            if (v71 <= v70)
            {
              v79 = *(v161 + 24);
              if (v79 >= 1)
              {
                v150 = v71;
                v80 = *(v159 + 124) - v70;
                v81 = v70;
                __na = v80;
                v82 = v79 + 1;
                v83 = (v161 + 40);
                v84 = (v161 + 40);
                v85 = *(v159 + 104);
                do
                {
                  if (v80 > *(v84 - 1))
                  {
                    goto LABEL_128;
                  }

                  v87 = *v84;
                  v84 += 2;
                  v86 = v87;
                  v88 = *v85++;
                  memcpy(v86, (v88 + v81), v80);
                  --v82;
                }

                while (v82 > 1);
                v89 = *(v161 + 24);
                v69 = v153;
                if (v89 >= 1)
                {
                  LODWORD(v64) = v80 + v150;
                  v90 = v89 + 1;
                  while (v64 <= *(v83 - 1))
                  {
                    v92 = *v83;
                    v83 += 2;
                    v91 = v92;
                    v93 = *v66++;
                    memcpy((v91 + __na), v93, v150);
                    if (--v90 <= 1)
                    {
                      goto LABEL_66;
                    }
                  }

LABEL_128:
                  __assert_rtn("ProcessBufferLists", "AUCrossCorrelator.cpp", 426, "mAudioRingBuffer->Fetch(&readABL, mCrossCorrelationInputSize, mAudioRingBufferReadIdx) == kAudioRingBufferError_OK");
                }
              }
            }

            else
            {
              v72 = *(v161 + 24);
              if (v72 >= 1)
              {
                v73 = v70;
                v74 = v72 + 1;
                v75 = (v161 + 40);
                while (v64 <= *(v75 - 1))
                {
                  v77 = *v75;
                  v75 += 2;
                  v76 = v77;
                  v78 = *v66++;
                  memcpy(v76, (v78 + v73), v64);
                  if (--v74 <= 1)
                  {
                    goto LABEL_66;
                  }
                }

                goto LABEL_128;
              }
            }
          }

          else
          {
LABEL_66:
            v69 = v153;
            v94 = *(v161 + 24);
            if (v94 >= 1)
            {
              v95 = 0;
              v96 = (v94 + 3) & 0xFFFFFFFC;
              v97 = vdupq_n_s64(v94 - 1);
              v98 = (v161 + 84);
              do
              {
                v99 = vdupq_n_s64(v95);
                v100 = vmovn_s64(vcgeq_u64(v97, vorrq_s8(v99, xmmword_1DE095160)));
                if (vuzp1_s16(v100, *v97.i8).u8[0])
                {
                  *(v98 - 12) = v64;
                }

                if (vuzp1_s16(v100, *&v97).i8[2])
                {
                  *(v98 - 8) = v64;
                }

                if (vuzp1_s16(*&v97, vmovn_s64(vcgeq_u64(v97, vorrq_s8(v99, xmmword_1DE095150)))).i32[1])
                {
                  *(v98 - 4) = v64;
                  *v98 = v64;
                }

                v95 += 4;
                v98 += 16;
              }

              while (v96 != v95);
            }
          }

          if (CADeprecated::AudioRingBuffer::CheckTimeBounds(v159, v69, v156))
          {
            goto LABEL_128;
          }

          for (i = 0; i < AULeanSpatial::GetNumberOfInputChannels(this); ++i)
          {
            std::vector<unsigned int>::__assign_with_size[abi:ne200100]<unsigned int *,unsigned int *>(this + 75, *(v161 + 32 + 16 * i + 8), (*(v161 + 32 + 16 * i + 8) + 4 * *(this + 204)), *(this + 204));
            v103 = *(this + 78);
            v104 = *(this + 79);
            v105 = v104 - v103;
            if (v104 - v103 >= 1)
            {
              bzero(*(this + 78), v104 - v103);
            }

            v106 = v105 >> 2;
            v107 = *(this + 76);
            v108 = *(this + 75);
            if (v105 >> 2 < (((v107 - v108) >> 2) + ((*(this + 96) - *(this + 95)) >> 2) - 1))
            {
              __assert_rtn("process", "CrossCorrelator.cpp", 78, "output.size() >= (input.size() + mFilter.size() - 1)");
            }

            v109 = *(this + 98);
            if (v107 != v108)
            {
              memmove(*(this + 98), *(this + 75), v107 - v108);
              v109 = *(this + 98);
              v103 = *(this + 78);
              v106 = (*(this + 79) - v103) >> 2;
            }

            FreqDomainConvolver::Process(*(this + 101), v109, v103, v106, 0, v102);
            if (*(this + 744))
            {
              vDSP_svesq(*(this + 75), 1, this + 188, (*(this + 76) - *(this + 75)) >> 2);
              v110 = *(this + 188);
              if (v110 < 0.000000001)
              {
                v110 = 0.000000001;
              }

              *(this + 188) = v110;
              v111 = *(this + 78);
              v112 = *(this + 79);
              if (v111 != v112)
              {
                v113 = *(this + 78);
                do
                {
                  v114 = *(this + 187) * *(this + 188);
                  v115 = fabs(sqrt(v114));
                  v116 = v114 == -INFINITY;
                  v117 = INFINITY;
                  if (!v116)
                  {
                    v117 = v115;
                  }

                  v118 = *v113 / v117;
                  *v113++ = v118;
                }

                while (v113 != v112);
              }
            }

            else
            {
              v111 = *(this + 78);
              v112 = *(this + 79);
            }

            if (v111 == v112)
            {
              v120 = v111;
            }

            else
            {
              v119 = v111 + 1;
              v120 = v111;
              if (v111 + 1 != v112)
              {
                v121 = *v111;
                v120 = v111;
                v122 = v111 + 1;
                do
                {
                  v123 = *v122++;
                  v124 = v123;
                  if (v121 < v123)
                  {
                    v121 = v124;
                    v120 = v119;
                  }

                  v119 = v122;
                }

                while (v122 != v112);
              }
            }

            v125 = *v120;
            if (*v120 >= *&v152[4 * i])
            {
              *(this + i + 178) = (((((v120 - v111) >> 2) - ((*(this + 96) - *(this + 95)) >> 2)) + 1.0) + *(this + 112)) - *(this + 113);
              *&v152[4 * i] = v125;
            }
          }

          v63 = *(this + 112) + *(this + 220);
          *(this + 112) = v63;
          v64 = *(this + 204);
          v65 = *(this + 113) + v151;
        }

        while (v63 + v64 <= v65);
      }

      v126 = 0;
      *(this + 113) = v65;
      while (v126 < AULeanSpatial::GetNumberOfInputChannels(this))
      {
        if (*(this + v126 + 162) >= *(this + v126 + 170))
        {
          *(this + v126 + 536) = 1;
        }

        ++v126;
      }

      for (j = 0; j < AULeanSpatial::GetNumberOfInputChannels(this); ++j)
      {
        LOBYTE(v128) = *(this + j + 536);
        (*(*this + 152))(this, 3, 4, j, 0, v128);
        v129 = (this + 4 * j);
        (*(*this + 152))(this, 0, 4, j, 0, v129[162]);
        (*(*this + 152))(this, 1, 4, j, 0, v129[178]);
      }

      return 0;
    }

    __n = *(this + 111);
    v14 = *(__n + 120);
    if (v14 < a5)
    {
      goto LABEL_129;
    }

    v15 = *(this + 113);
    v16 = v15 + a5;
    v17 = *(this + 111);
    v18 = __n + 136;
    v19 = *(__n + 904);
    v20 = __n + 136 + 24 * (v19 & 0x1F);
    v22 = *(v20 + 8);
    v21 = (v20 + 8);
    if (v22 > v15 || *(__n + 908) == 1 && *(__n + 909) == 1)
    {
      v23 = v18 + 24 * ((v19 + 1) & 0x1F);
      *v23 = v15;
      *(v23 + 8) = v15;
      *(v23 + 16) = v19 + 1;
      v24 = v19;
      atomic_compare_exchange_strong((__n + 904), &v24, v19 + 1);
      if (v24 != v19)
      {
        *(__n + 904) = v24;
      }

      *(__n + 908) = 0;
    }

    else if (v16 - *(v18 + 24 * (v19 & 0x1F)) > v14)
    {
      v26 = v16 - v14;
      v27 = *v21;
      if (v26 > v27)
      {
        v27 = v26;
      }

      v28 = v18 + 24 * ((v19 + 1) & 0x1F);
      *v28 = v26;
      *(v28 + 8) = v27;
      *(v28 + 16) = v19 + 1;
      v29 = v19;
      atomic_compare_exchange_strong((__n + 904), &v29, v19 + 1);
      if (v29 != v19)
      {
        *(__n + 904) = v29;
      }
    }

    v30 = *(__n + 104);
    v158 = __n + 136;
    v160 = v15 + a5;
    v31 = *(v18 + 24 * (*(__n + 904) & 0x1F) + 8);
    v32 = *(__n + 120);
    v34 = *(__n + 112);
    v33 = *(__n + 116);
    if (v31 >= v15)
    {
      v36 = ((((v15 % v32) >> 63) & v32) + v15 % v32) * v33;
      goto LABEL_40;
    }

    v35 = ((((v31 % v32) >> 63) & v32) + v31 % v32) * v33;
    v36 = ((((v15 % v32) >> 63) & v32) + v15 % v32) * v33;
    if (v36 <= v35)
    {
      if (v34 < 1)
      {
        goto LABEL_40;
      }

      v155 = a5;
      v42 = v35;
      v43 = *(__n + 124) - v35;
      v44 = v34 + 1;
      v45 = *(__n + 104);
      do
      {
        v46 = *v45++;
        bzero((v46 + v42), v43);
        --v44;
      }

      while (v44 > 1);
      v47 = v34 + 1;
      v48 = v30;
      a5 = v155;
      do
      {
        v49 = *v48++;
        bzero(v49, v36);
        --v47;
      }

      while (v47 > 1);
    }

    else
    {
      if (v34 < 1)
      {
        goto LABEL_40;
      }

      v154 = a5;
      v37 = v35;
      v38 = v36 - v35;
      v39 = v34 + 1;
      v40 = *(__n + 104);
      do
      {
        v41 = *v40++;
        bzero((v41 + v37), v38);
        --v39;
      }

      while (v39 > 1);
      a5 = v154;
    }

    v16 = v160;
    v17 = __n;
LABEL_40:
    v50 = *(v17 + 120);
    v51 = ((((v16 % v50) >> 63) & v50) + v16 % v50) * *(v17 + 116);
    v52 = *(v17 + 128);
    v53 = v51 - v36;
    if (v51 <= v36)
    {
      if (v52)
      {
        v59 = v50 - v15 % v50 - (((v15 % v50) >> 63) & v50);
        CADeprecated::AudioRingBuffer::ConvertAndStore(v17, v36, a3, 0, v59);
        v57 = v59 * *(v17 + 72);
        v58 = (((v16 % *(v17 + 120)) >> 63) & *(v17 + 120)) + v16 % *(v17 + 120);
        v54 = v17;
        v55 = 0;
        v56 = a3;
        goto LABEL_45;
      }

      if (a3->mNumberBuffers < 1)
      {
        goto LABEL_46;
      }

      v157 = ((((v16 % v50) >> 63) & v50) + v16 % v50) * *(v17 + 116);
      v135 = *(__n + 124) - v36;
      v136 = v36;
      v137 = v135;
      v138 = a3->mNumberBuffers + 1;
      v139 = &a3->mBuffers[0].mData;
      v140 = v30;
      do
      {
        if (v135 > *(v139 - 1))
        {
          goto LABEL_129;
        }

        v142 = *v139;
        v139 += 2;
        v141 = v142;
        v143 = *v140++;
        memcpy((v143 + v136), v141, v135);
        --v138;
      }

      while (v138 > 1);
      if (a3->mNumberBuffers < 1)
      {
        goto LABEL_46;
      }

      v144 = v135 + v157;
      v145 = a3->mNumberBuffers + 1;
      v146 = &a3->mBuffers[0].mData;
      while (v144 <= *(v146 - 1))
      {
        v148 = *v146;
        v146 += 2;
        v147 = v148;
        v149 = *v30++;
        memcpy(v149, &v147[v137], v157);
        if (--v145 <= 1)
        {
          goto LABEL_46;
        }
      }
    }

    else
    {
      if (v52)
      {
        v54 = v17;
        v55 = v36;
        v56 = a3;
        v57 = 0;
        v58 = a5;
LABEL_45:
        CADeprecated::AudioRingBuffer::ConvertAndStore(v54, v55, v56, v57, v58);
        goto LABEL_46;
      }

      if (a3->mNumberBuffers < 1)
      {
LABEL_46:
        v25 = a5;
        v60 = *(__n + 904);
        v61 = v158 + 24 * ((v60 + 1) & 0x1F);
        *v61 = *(v158 + 24 * (v60 & 0x1F));
        *(v61 + 8) = v160;
        *(v61 + 16) = v60 + 1;
        v62 = v60;
        atomic_compare_exchange_strong((__n + 904), &v62, v60 + 1);
        if (v62 != v60)
        {
          *(__n + 904) = v62;
        }

        goto LABEL_48;
      }

      v130 = a3->mNumberBuffers + 1;
      v131 = &a3->mBuffers[0].mData;
      while (v53 <= *(v131 - 1))
      {
        v133 = *v131;
        v131 += 2;
        v132 = v133;
        v134 = *v30++;
        memcpy((v134 + v36), v132, v53);
        if (--v130 <= 1)
        {
          goto LABEL_46;
        }
      }
    }

LABEL_129:
    __assert_rtn("ProcessBufferLists", "AUCrossCorrelator.cpp", 419, "mAudioRingBuffer->Store(&inBufferList, inFramesToProcess, mAudioRingBufferWriteIdx) == kAudioRingBufferError_OK");
  }

  return 0;
}