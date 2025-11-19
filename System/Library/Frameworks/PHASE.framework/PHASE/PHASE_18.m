uint64_t Phase::GetOptionalChildArray(uint64_t a1, void *a2, void *a3, void *a4)
{
  v7 = a2;
  v8 = a3;
  v9 = [v7 objectForKeyedSubscript:v8];
  if (v9)
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      Phase::ParserSetParseError(a1, 1346924643, "", [v8 UTF8String], "Field should be an array");
      v11 = 0;
      goto LABEL_7;
    }

    v10 = v9;
    *a4 = v9;
  }

  else
  {
    *a4 = 0;
  }

  v11 = 1;
LABEL_7:

  return v11;
}

uint64_t Phase::GetOptionalChildDictionary(uint64_t a1, void *a2, void *a3, void *a4)
{
  v7 = a2;
  v8 = a3;
  v9 = [v7 objectForKeyedSubscript:v8];
  if (v9)
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      Phase::ParserSetParseError(a1, 1346924643, "", [v8 UTF8String], "Field should be a dictionary");
      v11 = 0;
      goto LABEL_7;
    }

    v10 = v9;
    *a4 = v9;
  }

  else
  {
    *a4 = 0;
  }

  v11 = 1;
LABEL_7:

  return v11;
}

BOOL Phase::ReadAVAudioChannelLayout(uint64_t a1, void *a2, id *a3)
{
  v5 = a2;
  v6 = @"ChannelLayout";
  v11 = 0;
  v9 = Phase::ReadAudioChannelLayoutTag(a1, v5, @"ChannelLayout", &v11) && (v7 = objc_alloc(MEMORY[0x277CB8368]), v8 = [v7 initWithLayoutTag:v11], (*a3 = v8) != 0) && !*(objc_msgSend(v8, "layout") + 8) && *(objc_msgSend(*a3, "layout") + 4) == 0;

  return v9;
}

const void **std::__hash_table<std::string,std::hash<std::string>,std::equal_to<std::string>,std::allocator<std::string>>::find<std::string>(void *a1, const void **a2)
{
  v4 = std::__string_hash<char>::operator()[abi:ne200100](a1, a2);
  v5 = a1[1];
  if (!*&v5)
  {
    return 0;
  }

  v6 = v4;
  v7 = vcnt_s8(v5);
  v7.i16[0] = vaddlv_u8(v7);
  v8 = v7.u32[0];
  if (v7.u32[0] > 1uLL)
  {
    v9 = v4;
    if (v4 >= *&v5)
    {
      v9 = v4 % *&v5;
    }
  }

  else
  {
    v9 = (*&v5 - 1) & v4;
  }

  v10 = *(*a1 + 8 * v9);
  if (!v10)
  {
    return 0;
  }

  for (i = *v10; i; i = *i)
  {
    v12 = i[1];
    if (v12 == v6)
    {
      if (std::equal_to<std::string>::operator()[abi:ne200100](a1, i + 2, a2))
      {
        return i;
      }
    }

    else
    {
      if (v8 > 1)
      {
        if (v12 >= *&v5)
        {
          v12 %= *&v5;
        }
      }

      else
      {
        v12 &= *&v5 - 1;
      }

      if (v12 != v9)
      {
        return 0;
      }
    }
  }

  return i;
}

uint64_t Phase::GetParamIndex(Phase *this, Phase::ActionTreeBuilder *a2, _BYTE *a3, signed __int8 *a4)
{
  if (Phase::GetStringHashId(@"auto_distance", a2) == a2)
  {
    result = 1;
    LOBYTE(v8) = -2;
  }

  else
  {
    v10 = *(this + 17);
    v9 = *(this + 18);
    v11 = v9 - v10;
    if (v9 == v10)
    {
LABEL_8:
      result = 0;
      LOBYTE(v8) = -1;
    }

    else
    {
      v8 = 0;
      v12 = v11 >> 3;
      if (v12 <= 1)
      {
        v12 = 1;
      }

      while (*(v10 + 8 * v8) != a2)
      {
        if (v12 == ++v8)
        {
          goto LABEL_8;
        }
      }

      result = 1;
    }
  }

  *a3 = v8;
  return result;
}

void std::vector<unsigned long long>::push_back[abi:ne200100](const void **a1, void *a2)
{
  v5 = a1[1];
  v4 = a1[2];
  if (v5 >= v4)
  {
    v7 = *a1;
    v8 = v5 - *a1;
    v9 = (v8 >> 3) + 1;
    if (v9 >> 61)
    {
      std::vector<Phase::SpatialModeler::OptionalPropertyDescription>::__throw_length_error[abi:ne200100]();
    }

    v10 = v4 - v7;
    if (v10 >> 2 > v9)
    {
      v9 = v10 >> 2;
    }

    v11 = v10 >= 0x7FFFFFFFFFFFFFF8;
    v12 = 0x1FFFFFFFFFFFFFFFLL;
    if (!v11)
    {
      v12 = v9;
    }

    if (v12)
    {
      std::__allocate_at_least[abi:ne200100]<std::allocator<unsigned long>>(a1, v12);
    }

    v13 = (8 * (v8 >> 3));
    *v13 = *a2;
    v6 = v13 + 1;
    memcpy(0, v7, v8);
    v14 = *a1;
    *a1 = 0;
    a1[1] = v6;
    a1[2] = 0;
    if (v14)
    {
      operator delete(v14);
    }
  }

  else
  {
    *v5 = *a2;
    v6 = v5 + 1;
  }

  a1[1] = v6;
}

uint64_t Phase::ReadEnumWithDefault<PHASECurveType>(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = @"CurveType";
  v7 = [v5 objectForKeyedSubscript:@"CurveType"];
  if (v7)
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      Phase::ParserSetParseError(a1, 1346924643, "", [(__CFString *)@"CurveType" UTF8String], "Field should be a string");
      v8 = 0;
      goto LABEL_7;
    }

    *a3 = GetCurveType(v7);
  }

  else
  {
    *a3 = 1668435054;
  }

  v8 = 1;
LABEL_7:

  return v8;
}

uint64_t std::__hash_table<std::string,std::hash<std::string>,std::equal_to<std::string>,std::allocator<std::string>>::~__hash_table(uint64_t a1)
{
  std::__hash_table<std::string,std::hash<std::string>,std::equal_to<std::string>,std::allocator<std::string>>::__deallocate_node(a1, *(a1 + 16));
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    operator delete(v2);
  }

  return a1;
}

void std::__hash_table<std::string,std::hash<std::string>,std::equal_to<std::string>,std::allocator<std::string>>::__deallocate_node(int a1, void **__p)
{
  if (__p)
  {
    v2 = __p;
    do
    {
      v3 = *v2;
      if (*(v2 + 39) < 0)
      {
        operator delete(v2[2]);
      }

      operator delete(v2);
      v2 = v3;
    }

    while (v3);
  }
}

uint64_t Phase::GetParamType(Phase *this, NSString *a2)
{
  v2 = this;
  if (([(Phase *)v2 isEqualToString:@"input"]& 1) != 0)
  {
    v3 = 1;
  }

  else if (([(Phase *)v2 isEqualToString:@"mapped_range"]& 1) != 0)
  {
    v3 = 2;
  }

  else if ([(Phase *)v2 isEqualToString:@"mapped_discrete"])
  {
    v3 = 3;
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

uint64_t Phase::GetInputParamType(Phase *this, NSString *a2)
{
  v2 = this;
  if (([(Phase *)v2 isEqualToString:@"float"]& 1) != 0)
  {
    v3 = 1;
  }

  else if ([(Phase *)v2 isEqualToString:@"string"])
  {
    v3 = 2;
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

uint64_t Phase::ReadPhaseIdWithDefault(uint64_t a1, void *a2, void *a3, void *a4, void *a5)
{
  v9 = a2;
  v10 = a3;
  v11 = [v9 objectForKeyedSubscript:v10];
  if (!v11)
  {
    *a4 = 0;
    goto LABEL_7;
  }

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    Phase::ParserSetParseError(a1, 1346924643, "", [v10 UTF8String], "Field should be a string");
LABEL_10:
    v13 = 0;
    goto LABEL_11;
  }

  if (a5 && (Phase::AddStringToPool(a1, a5, v11) & 1) == 0)
  {
    strncpy((a1 + 8), [v11 UTF8String], 0x80uLL);
    goto LABEL_10;
  }

  *a4 = Phase::GetStringHashId(v11, v12);
LABEL_7:
  v13 = 1;
LABEL_11:

  return v13;
}

uint64_t Phase::ReadEnumWithoutDefault<Phase::OutputMetaParamType>(uint64_t a1, void *a2, _DWORD *a3)
{
  v5 = a2;
  v6 = @"OutputType";
  v7 = [v5 objectForKeyedSubscript:@"OutputType"];
  if (!v7)
  {
    Phase::ParserSetParseError(a1, 1346924642, "", [(__CFString *)@"OutputType" UTF8String], "");
LABEL_8:
    v10 = 0;
    goto LABEL_9;
  }

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    Phase::ParserSetParseError(a1, 1346924643, "", [(__CFString *)@"OutputType" UTF8String], "Field should be a string");
    goto LABEL_8;
  }

  OutputParamType = Phase::GetOutputParamType(v7, v8);
  *a3 = OutputParamType;
  if (!OutputParamType)
  {
    v11 = [(__CFString *)@"OutputType" UTF8String];
    [(__CFString *)@"OutputType" UTF8String];
    [(Phase *)v7 UTF8String];
    Phase::ParserSetParseError(a1, 1346924643, "", v11, "Field is bad %s - %s");
    goto LABEL_8;
  }

  v10 = 1;
LABEL_9:

  return v10;
}

uint64_t Phase::GetOutputParamType(Phase *this, NSString *a2)
{
  v2 = this;
  if (([(Phase *)v2 isEqualToString:@"float"]& 1) != 0)
  {
    v3 = 1;
  }

  else if (([(Phase *)v2 isEqualToString:@"string"]& 1) != 0)
  {
    v3 = 2;
  }

  else if (([(Phase *)v2 isEqualToString:@"paramset"]& 1) != 0)
  {
    v3 = 3;
  }

  else if ([(Phase *)v2 isEqualToString:@"insertfx"])
  {
    v3 = 4;
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

uint64_t Phase::GetChildDictionary(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = @"Envelope";
  v7 = [v5 objectForKeyedSubscript:@"Envelope"];
  if (!v7)
  {
    Phase::ParserSetParseError(a1, 1346924642, "", [(__CFString *)@"Envelope" UTF8String], "");
LABEL_6:
    v9 = 0;
    goto LABEL_7;
  }

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    Phase::ParserSetParseError(a1, 1346924643, "", [(__CFString *)@"Envelope" UTF8String], "Field should be a dictionary");
    goto LABEL_6;
  }

  v8 = v7;
  *a3 = v7;
  v9 = 1;
LABEL_7:

  return v9;
}

uint64_t Phase::ParseEnvelope(uint64_t a1, void *a2, char *a3, uint64_t a4)
{
  v29 = *MEMORY[0x277D85DE8];
  v7 = a2;
  if (Phase::ReadFloatType<double>(a1, v7, @"StartInputValue", a4) & 1) != 0 && (Phase::ReadFloatType<double>(a1, v7, @"StartOutputValue", (a4 + 8)))
  {
    *(a4 + 16) = 0;
    v27 = 0;
    OptionalChildArray = Phase::GetOptionalChildArray(a1, v7, @"Segments", &v27);
    v9 = v27;
    v10 = v9;
    if (OptionalChildArray)
    {
      if ([v9 count] >= 0x11)
      {
        [v10 count];
        Phase::ParserSetParseError(a1, 1346924646, a3, a3, "Envelope has too many segments %d > %d");
LABEL_9:
        v11 = 0;
LABEL_10:

        goto LABEL_11;
      }

      v25 = 0u;
      v26 = 0u;
      v23 = 0u;
      v24 = 0u;
      obj = v10;
      v17 = [obj countByEnumeratingWithState:&v23 objects:v28 count:16];
      if (v17)
      {
        v18 = *v24;
        while (2)
        {
          for (i = 0; i != v17; ++i)
          {
            if (*v24 != v18)
            {
              objc_enumerationMutation(obj);
            }

            v20 = *(*(&v23 + 1) + 8 * i);
            objc_opt_class();
            if ((objc_opt_isKindOfClass() & 1) == 0)
            {
              Phase::ParserSetParseError(a1, 1346924643, a3, [@"Segments" UTF8String], "Envelope segment object must be a dictionary");
              goto LABEL_27;
            }

            v21 = a4 + 24 + 24 * *(a4 + 16);
            if ((Phase::ReadFloatType<double>(a1, v20, @"InputValue", v21) & 1) == 0 || (Phase::ReadFloatType<double>(a1, v20, @"OutputValue", (v21 + 8)) & 1) == 0 || (Phase::ReadEnumWithDefault<PHASECurveType>(a1, v20, (v21 + 16)) & 1) == 0)
            {
              strncpy((a1 + 8), a3, 0x80uLL);
LABEL_27:

              goto LABEL_9;
            }

            ++*(a4 + 16);
          }

          v17 = [obj countByEnumeratingWithState:&v23 objects:v28 count:16];
          if (v17)
          {
            continue;
          }

          break;
        }
      }

      if (*(a4 + 16))
      {
        v11 = 1;
        goto LABEL_10;
      }

      v15 = 1346924641;
      v12 = "";
      v13 = "Envelope doesn't have any segments";
      v14 = a1;
    }

    else
    {
      v12 = [@"Segments" UTF8String];
      v13 = "Envelope segment array object must be an array";
      v14 = a1;
      v15 = 1346924643;
    }

    Phase::ParserSetParseError(v14, v15, a3, v12, v13);
    goto LABEL_9;
  }

  strncpy((a1 + 8), a3, 0x80uLL);
  v11 = 0;
LABEL_11:

  return v11;
}

uint64_t Phase::ReadFloatType<double>(uint64_t a1, void *a2, void *a3, double *a4)
{
  v29 = *MEMORY[0x277D85DE8];
  v7 = a2;
  v8 = a3;
  v9 = [v7 objectForKeyedSubscript:v8];
  if (!v9)
  {
    Phase::ParserSetParseError(a1, 1346924642, "", [v8 UTF8String], "");
LABEL_10:
    v15 = 0;
    goto LABEL_11;
  }

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    Phase::ParserSetParseError(a1, 1346924643, "", [v8 UTF8String], "Field should be a number");
    goto LABEL_10;
  }

  v10 = [v9 doubleValue];
  *a4 = v11;
  if (fabs(v11) > 1.79769313e308)
  {
    v12 = **(Phase::Logger::GetInstance(v10) + 16);
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      v13 = [v8 UTF8String];
      v14 = *a4;
      v17 = 136316418;
      v18 = "ParserCore.mm";
      v19 = 1024;
      v20 = 583;
      v21 = 2080;
      v22 = v13;
      v23 = 2048;
      v24 = v14;
      v25 = 2048;
      v26 = 0xFFEFFFFFFFFFFFFFLL;
      v27 = 2048;
      v28 = 0x7FEFFFFFFFFFFFFFLL;
      _os_log_impl(&dword_23A302000, v12, OS_LOG_TYPE_ERROR, "%25s:%-5d WARNING: %s %f is out of range [%f, %f]. Clamping...", &v17, 0x3Au);
    }

    *a4 = fmin(fmax(*a4, -1.79769313e308), 1.79769313e308);
  }

  v15 = 1;
LABEL_11:

  return v15;
}

uint64_t Phase::GetNodeType(Phase *this, NSString *a2)
{
  v2 = this;
  if (([(Phase *)v2 isEqualToString:@"sampler"]& 1) != 0)
  {
    v3 = 1;
  }

  else if (([(Phase *)v2 isEqualToString:@"blend"]& 1) != 0)
  {
    v3 = 2;
  }

  else if (([(Phase *)v2 isEqualToString:@"random"]& 1) != 0)
  {
    v3 = 3;
  }

  else if (([(Phase *)v2 isEqualToString:@"switch"]& 1) != 0)
  {
    v3 = 4;
  }

  else if (([(Phase *)v2 isEqualToString:@"container"]& 1) != 0)
  {
    v3 = 5;
  }

  else if (([(Phase *)v2 isEqualToString:@"pushstream"]& 1) != 0)
  {
    v3 = 6;
  }

  else if (([(Phase *)v2 isEqualToString:@"procedure"]& 1) != 0)
  {
    v3 = 7;
  }

  else if (([(Phase *)v2 isEqualToString:@"externaloutputpullstream"]& 1) != 0)
  {
    v3 = 8;
  }

  else if ([(Phase *)v2 isEqualToString:@"pullstream"])
  {
    v3 = 9;
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

uint64_t Phase::TraverseNode(uint64_t a1, void *a2, void *a3, void *a4, uint64_t a5, void *a6, void *a7, uint64_t a8)
{
  v15 = a2;
  v16 = a3;
  v17 = a7;
  v18 = [v16 objectForKeyedSubscript:v15];
  v19 = v18;
  if (!v18)
  {
    Phase::ParserSetParseError(a1, 1346924641, "NodeName", [v15 UTF8String], "Node not found.");
    v24 = 0;
    goto LABEL_14;
  }

  v20 = [v18 objectForKeyedSubscript:@"Type"];
  if (!v20 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    Phase::ParserSetParseError(a1, 1346924643, [v15 UTF8String], "NodeType", "Child node type not a string");
    goto LABEL_11;
  }

  NodeType = Phase::GetNodeType(v20, v21);
  if (NodeType <= 4)
  {
    if (NodeType > 2)
    {
      if (NodeType == 3)
      {
        v23 = Phase::ParseRandom(a1, v19, v16, a4, a5, a6, v17);
      }

      else
      {
        v23 = Phase::ParseSwitch(a1, v19, v16, a4, a5, a6, v17);
      }
    }

    else if (NodeType == 1)
    {
      v23 = Phase::ParseSampler(a1, v19, a4, a5, a6);
    }

    else
    {
      if (NodeType != 2)
      {
        goto LABEL_30;
      }

      v23 = Phase::ParseBlend(a1, v19, v16, a4, a5, a6, v17);
    }
  }

  else if (NodeType <= 6)
  {
    if (NodeType == 5)
    {
      v23 = Phase::ParseContainer(a1, v19, v16, a4, a5, a6, v17, a8);
    }

    else
    {
      v23 = Phase::ParsePushStream(a1, v19, a4, a5, a6, v17, a8);
    }
  }

  else
  {
    switch(NodeType)
    {
      case 7:
        v23 = Phase::ParseProcedure(a1, v19, a4, a5, a6);
        break;
      case 8:
        v23 = Phase::ParseExternalOutputPullStream(a1, v19, a4, a5, a6, a8);
        break;
      case 9:
        v23 = Phase::ParsePullStream(a1, v19, a4, a5, a6, v17, a8);
        break;
      default:
LABEL_30:
        [(Phase *)v20 UTF8String];
        Phase::ParserSetParseError(a1, 1346924646, "", "", "Unknown node type %s");
        goto LABEL_11;
    }
  }

  if (v23)
  {
    v24 = 1;
    goto LABEL_12;
  }

LABEL_11:
  v24 = 0;
LABEL_12:

LABEL_14:
  return v24;
}

uint64_t Phase::ParseSampler(uint64_t a1, void *a2, void *a3, uint64_t a4, void *a5)
{
  v18 = *MEMORY[0x277D85DE8];
  v9 = a2;
  if ((Phase::ReadString(a1, v9, @"Name", __src, 0x80uLL, 0) & 1) == 0)
  {
    v10 = 0;
    *(a1 + 72) = xmmword_23A596A25;
    *(a1 + 88) = unk_23A596A35;
    *(a1 + 104) = xmmword_23A596A45;
    *(a1 + 120) = unk_23A596A55;
    strcpy((a1 + 8), "<SamplerStruct>");
    *(a1 + 24) = unk_23A5969F5;
    *(a1 + 40) = xmmword_23A596A05;
    *(a1 + 56) = unk_23A596A15;
    goto LABEL_15;
  }

  if ((Phase::ReadPhaseId(a1, v9, @"Name", &v12, a5) & 1) == 0 || (Phase::ReadPhaseId(a1, v9, @"Asset", &v13, a5) & 1) == 0 || (Phase::ReadEnumWithDefault<PHASEPlaybackMode>(a1, v9, &v16) & 1) == 0)
  {
    goto LABEL_13;
  }

  if (v16)
  {
    *(a4 + 400) = 0;
  }

  if (!Phase::ParseLeafNode(a1, v9, __src, &v14, a4, a5))
  {
    goto LABEL_14;
  }

  if ((Phase::ReadEnumWithDefault<PHASECullOption>(a1, v9, &v15) & 1) == 0)
  {
    goto LABEL_13;
  }

  if ((Phase::AddLeafNodeName(a4, v12, *(a4 + 272)) & 1) == 0)
  {
    Phase::ParserSetParseError(a1, 1346924646, __src, "name", "Name %s is not a valid name", __src);
    goto LABEL_14;
  }

  if (!Phase::MsgBuffer::WriteMsg(a3, a1, 0, &v12, 0x50uLL))
  {
LABEL_13:
    strncpy((a1 + 8), __src, 0x80uLL);
LABEL_14:
    v10 = 0;
    goto LABEL_15;
  }

  v10 = 1;
LABEL_15:

  return v10;
}

uint64_t Phase::ParseBlend(uint64_t a1, void *a2, void *a3, void *a4, uint64_t a5, void *a6, void *a7)
{
  v61 = *MEMORY[0x277D85DE8];
  v13 = a2;
  v14 = a3;
  v15 = a7;
  if ((Phase::ReadString(a1, v13, @"Name", __src, 0x80uLL, 0) & 1) == 0)
  {
    ChildArray = 0;
    *(a1 + 72) = xmmword_23A596AA6;
    *(a1 + 88) = unk_23A596AB6;
    *(a1 + 104) = xmmword_23A596AC6;
    *(a1 + 120) = unk_23A596AD6;
    *(a1 + 8) = *"<BlendStruct>";
    *(a1 + 24) = *&algn_23A596A74[2];
    *(a1 + 40) = xmmword_23A596A86;
    *(a1 + 56) = unk_23A596A96;
    goto LABEL_52;
  }

  v57 = 0;
  if ((Phase::ReadPhaseId(a1, v13, @"Name", &v57, a6) & 1) == 0 || (v56 = 0, (Phase::ReadParamIdx(a1, v13, @"BlendParameter", a5, &v56, a6) & 1) == 0))
  {
    strncpy((a1 + 8), __src, 0x80uLL);
    ChildArray = 0;
    goto LABEL_52;
  }

  v55 = 0;
  ChildArray = Phase::GetChildArray(a1, v13, &v55);
  v17 = v55;
  v41 = v17;
  if (!ChildArray)
  {
    strncpy((a1 + 8), __src, 0x80uLL);
    goto LABEL_51;
  }

  v53 = 0u;
  v54 = 0u;
  v51 = 0u;
  v52 = 0u;
  obj = v17;
  v36 = [obj countByEnumeratingWithState:&v51 objects:v59 count:16];
  if (!v36)
  {
    ChildArray = 1;
    goto LABEL_50;
  }

  v38 = v57;
  v39 = *v52;
  v37 = v56;
  while (2)
  {
    for (i = 0; i != v36; ++i)
    {
      if (*v52 != v39)
      {
        objc_enumerationMutation(obj);
      }

      v18 = *(*(&v51 + 1) + 8 * i);
      if (!v18 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
      {
        Phase::ParserSetParseError(a1, 1346924643, __src, [@"Children" UTF8String], "");
        goto LABEL_49;
      }

      v46 = 0;
      v47 = v38;
      v48 = v37;
      ChildDictionary = Phase::GetChildDictionary(a1, v18, &v46);
      v43 = v46;
      if ((ChildDictionary & 1) == 0 || !Phase::ParseEnvelope(a1, v43, __src, &v49))
      {
        strncpy((a1 + 8), __src, 0x80uLL);

        goto LABEL_49;
      }

      v45 = 0;
      v20 = Phase::ReadString(a1, v18, &v45, a6);
      v44 = v45;
      if ((v20 & 1) == 0)
      {
        goto LABEL_44;
      }

      v21 = [v13 objectForKeyedSubscript:@"BlendParameter"];
      v22 = [v21 isEqualToString:@"auto_distance"];

      if (v22)
      {
        if ((Phase::ReadPhaseId(a1, v13, @"DistanceSubmixName", &v50, a6) & 1) == 0)
        {
          goto LABEL_44;
        }

        v24 = *(a5 + 376);
        v23 = *(a5 + 384);
        if (v23 == v24)
        {
          goto LABEL_43;
        }

        v25 = 0x74CD59ED64F3F0D7 * (v23 - v24);
        if (v25 <= 1)
        {
          v26 = 1;
        }

        else
        {
          v26 = 0x74CD59ED64F3F0D7 * (v23 - v24);
        }

        if (*v24 != v50)
        {
          v27 = 0;
          v28 = v24 + 743;
          v29 = v26 - 1;
          while (v29 != v27)
          {
            v30 = *v28;
            v28 += 743;
            ++v27;
            if (v30 == v50)
            {
              if (v25 <= v27)
              {
                break;
              }

              goto LABEL_26;
            }
          }

LABEL_43:
          v33 = [v18 objectForKeyedSubscript:@"DistanceSubmixName"];
          v34 = v33;
          Phase::ParserSetParseError(a1, 1346924646, __src, "submix", "Submix %s was not found in the sound event asset", [v33 UTF8String]);

LABEL_45:
LABEL_49:
          ChildArray = 0;
          goto LABEL_50;
        }

LABEL_26:
        v31 = *(a5 + 160);
        v32 = *(a5 + 168);
        if (v31 != v32)
        {
          while (*v31 != v50)
          {
            if (++v31 == v32)
            {
              goto LABEL_32;
            }
          }
        }

        if (v31 == v32)
        {
LABEL_32:
          std::vector<unsigned long long>::push_back[abi:ne200100]((a5 + 160), &v50);
        }
      }

      else
      {
        v50 = 0;
      }

      if (!Phase::MsgBuffer::WriteMsg(a4, a1, 1, &v47, 0x1B0uLL))
      {
LABEL_44:
        strncpy((a1 + 8), __src, 0x80uLL);
        goto LABEL_45;
      }

      if (!Phase::TraverseNode(a1, v44, v14, a4, a5, a6, v15, 0))
      {
        goto LABEL_45;
      }

      if (!Phase::MsgBuffer::WriteMsg(a4, a1, 2, v58, 8uLL))
      {
        strncpy((a1 + 8), __src, 0x80uLL);

        goto LABEL_49;
      }
    }

    ChildArray = 1;
    v36 = [obj countByEnumeratingWithState:&v51 objects:v59 count:16];
    if (v36)
    {
      continue;
    }

    break;
  }

LABEL_50:

LABEL_51:
LABEL_52:

  return ChildArray;
}

uint64_t Phase::ParseRandom(uint64_t a1, void *a2, void *a3, void *a4, uint64_t a5, void *a6, void *a7)
{
  v53 = *MEMORY[0x277D85DE8];
  v13 = a2;
  v14 = a3;
  v15 = a7;
  if (Phase::ReadString(a1, v13, @"Name", __src, 0x80uLL, 0))
  {
    if (Phase::ReadPhaseId(a1, v13, @"Name", &v45, a6) & 1) != 0 && (Phase::ReadIntTypeWithDefault<int>(a1, v13, @"UniqueSelectionQueueLength", &v46, 0, 0, 128))
    {
      v44 = 0;
      ChildArray = Phase::GetChildArray(a1, v13, &v44);
      v17 = v44;
      v18 = v17;
      if (ChildArray)
      {
        v19 = [v17 count];
        if (v19 >= 0xFF)
        {
          __assert_rtn("ParseRandom", "ParserCore.mm", 1767, "childCount < UCHAR_MAX");
        }

        v47 = v19;
        if (v19 <= v46)
        {
          Phase::ParserSetParseError(a1, 1346924646, __src, [@"UniqueSelectionQueueLength" UTF8String], "UniqueSelectionQueueLength must be less than the number of child nodes");
        }

        else
        {
          if (Phase::MsgBuffer::WriteMsg(a4, a1, 5, &v45, 0x10uLL))
          {
            v42 = 0u;
            v43 = 0u;
            v40 = 0u;
            v41 = 0u;
            v30 = v18;
            obj = v18;
            v20 = [obj countByEnumeratingWithState:&v40 objects:v51 count:16];
            if (v20)
            {
              v33 = *v41;
              while (2)
              {
                for (i = 0; i != v20; ++i)
                {
                  if (*v41 != v33)
                  {
                    objc_enumerationMutation(obj);
                  }

                  v22 = *(*(&v40 + 1) + 8 * i);
                  if (!v22 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
                  {
                    Phase::ParserSetParseError(a1, 1346924643, __src, [@"Children" UTF8String], "");
LABEL_38:

                    v18 = v30;
                    goto LABEL_39;
                  }

                  if ((Phase::ReadFloatTypeWithDefault<double>(a1, v22, @"Weight", &v50, 1.0, 1.0, 10000.0) & 1) == 0 || !Phase::MsgBuffer::WriteMsg(a4, a1, 6, &v50, 8uLL))
                  {
                    strncpy((a1 + 8), __src, 0x80uLL);
                    goto LABEL_38;
                  }
                }

                v20 = [obj countByEnumeratingWithState:&v40 objects:v51 count:16];
                if (v20)
                {
                  continue;
                }

                break;
              }
            }

            v18 = v30;
            v38 = 0u;
            v39 = 0u;
            v36 = 0u;
            v37 = 0u;
            v29 = obj;
            v23 = [v29 countByEnumeratingWithState:&v36 objects:v49 count:16];
            if (v23)
            {
              obja = v23;
              v34 = *v37;
              while (2)
              {
                for (j = 0; j != obja; j = j + 1)
                {
                  if (*v37 != v34)
                  {
                    objc_enumerationMutation(v29);
                  }

                  v25 = *(*(&v36 + 1) + 8 * j);
                  v35 = 0;
                  v26 = Phase::ReadString(a1, v25, &v35, a6);
                  v27 = v35;
                  if ((v26 & 1) == 0 || !Phase::MsgBuffer::WriteMsg(a4, a1, 7, &v50, 8uLL))
                  {
                    strncpy((a1 + 8), __src, 0x80uLL);
LABEL_44:

                    v18 = v30;
LABEL_46:
                    ChildArray = 0;
                    goto LABEL_47;
                  }

                  if (!Phase::TraverseNode(a1, v27, v14, a4, a5, a6, v15, 0))
                  {
                    goto LABEL_44;
                  }

                  v18 = v30;
                  if (!Phase::MsgBuffer::WriteMsg(a4, a1, 8, v48, 8uLL))
                  {
                    strncpy((a1 + 8), __src, 0x80uLL);

                    goto LABEL_46;
                  }
                }

                ChildArray = 1;
                obja = [v29 countByEnumeratingWithState:&v36 objects:v49 count:16];
                if (obja)
                {
                  continue;
                }

                break;
              }
            }

            else
            {
              ChildArray = 1;
            }

LABEL_47:

            goto LABEL_40;
          }

          strncpy((a1 + 8), __src, 0x80uLL);
        }

LABEL_39:
        ChildArray = 0;
      }

      else
      {
        strncpy((a1 + 8), __src, 0x80uLL);
      }

LABEL_40:

      goto LABEL_41;
    }

    strncpy((a1 + 8), __src, 0x80uLL);
    ChildArray = 0;
  }

  else
  {
    ChildArray = 0;
    *(a1 + 72) = xmmword_23A596B27;
    *(a1 + 88) = unk_23A596B37;
    *(a1 + 104) = xmmword_23A596B47;
    *(a1 + 120) = unk_23A596B57;
    *(a1 + 8) = *"<RandomStruct>";
    *(a1 + 24) = unk_23A596AF7;
    *(a1 + 40) = xmmword_23A596B07;
    *(a1 + 56) = unk_23A596B17;
  }

LABEL_41:

  return ChildArray;
}

uint64_t Phase::ParseSwitch(uint64_t a1, void *a2, void *a3, void *a4, uint64_t a5, void *a6, void *a7)
{
  v47 = *MEMORY[0x277D85DE8];
  v13 = a2;
  v32 = a3;
  v14 = a7;
  if ((Phase::ReadString(a1, v13, @"Name", __src, 0x80uLL, 0) & 1) == 0)
  {
    v25 = 0;
    *(a1 + 72) = xmmword_23A596BA8;
    *(a1 + 88) = unk_23A596BB8;
    *(a1 + 104) = xmmword_23A596BC8;
    *(a1 + 120) = unk_23A596BD8;
    *(a1 + 8) = *"<SwitchStruct>";
    *(a1 + 24) = unk_23A596B78;
    *(a1 + 40) = xmmword_23A596B88;
    *(a1 + 56) = unk_23A596B98;
    goto LABEL_23;
  }

  v43 = 0;
  if ((Phase::ReadPhaseId(a1, v13, @"Name", &v43, a6) & 1) == 0 || (v42 = 0, (Phase::ReadParamIdx(a1, v13, @"SwitchParameter", a5, &v42, a6) & 1) == 0))
  {
    strncpy((a1 + 8), __src, 0x80uLL);
LABEL_22:
    v25 = 0;
    goto LABEL_23;
  }

  v41 = 0;
  ChildArray = Phase::GetChildArray(a1, v13, &v41);
  v16 = v41;
  v17 = v16;
  if (!ChildArray)
  {
    strncpy((a1 + 8), __src, 0x80uLL);

    goto LABEL_22;
  }

  v39 = 0u;
  v40 = 0u;
  v37 = 0u;
  v38 = 0u;
  obj = v16;
  v18 = [obj countByEnumeratingWithState:&v37 objects:v45 count:16];
  if (!v18)
  {
    v25 = 1;
    goto LABEL_31;
  }

  v27 = a5;
  v29 = v43;
  v30 = *v38;
  v28 = v42;
  while (2)
  {
    for (i = 0; i != v18; ++i)
    {
      if (*v38 != v30)
      {
        objc_enumerationMutation(obj);
      }

      v20 = *(*(&v37 + 1) + 8 * i);
      if (!v20 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
      {
        Phase::ParserSetParseError(a1, 1346924643, __src, [@"Children" UTF8String], "");
        goto LABEL_30;
      }

      v21 = v14;
      v22 = v18;
      v33 = 0;
      v23 = Phase::ReadString(a1, v20, &v33, a6);
      v24 = v33;
      if ((v23 & 1) == 0 || (v34 = v29, v35 = v28, !Phase::ReadPhaseId(a1, v20, @"SwitchValue", &v36, a6)) || !Phase::MsgBuffer::WriteMsg(a4, a1, 3, &v34, 0x18uLL))
      {
        strncpy((a1 + 8), __src, 0x80uLL);
LABEL_27:

        v14 = v21;
LABEL_30:
        v25 = 0;
        goto LABEL_31;
      }

      if (!Phase::TraverseNode(a1, v24, v32, a4, v27, a6, v21, 0))
      {
        goto LABEL_27;
      }

      v18 = v22;
      v14 = v21;
      if (!Phase::MsgBuffer::WriteMsg(a4, a1, 4, v44, 8uLL))
      {
        strncpy((a1 + 8), __src, 0x80uLL);

        goto LABEL_30;
      }
    }

    v18 = [obj countByEnumeratingWithState:&v37 objects:v45 count:16];
    v25 = 1;
    if (v18)
    {
      continue;
    }

    break;
  }

LABEL_31:

LABEL_23:
  return v25;
}

uint64_t Phase::ParseContainer(uint64_t a1, void *a2, void *a3, uint64_t a4, uint64_t a5, uint64_t a6, void *a7, uint64_t a8)
{
  v38 = *MEMORY[0x277D85DE8];
  v15 = a2;
  v30 = a3;
  v16 = a7;
  v29 = v15;
  if (Phase::ReadString(a1, v15, @"Name", v37, 0x80uLL, 0))
  {
    v35 = 0;
    ChildArray = Phase::GetChildArray(a1, v15, &v35);
    v18 = v35;
    v19 = v18;
    if (v18)
    {
      v20 = ChildArray;
    }

    else
    {
      v20 = 0;
    }

    if (v20 == 1)
    {
      v33 = 0u;
      v34 = 0u;
      v31 = 0u;
      v32 = 0u;
      obj = v18;
      v21 = [obj countByEnumeratingWithState:&v31 objects:v36 count:16];
      v27 = v19;
      if (v21)
      {
        v22 = *v32;
        while (2)
        {
          for (i = 0; i != v21; ++i)
          {
            if (*v32 != v22)
            {
              objc_enumerationMutation(obj);
            }

            v24 = *(*(&v31 + 1) + 8 * i);
            if (!v24 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
            {
              Phase::ParserSetParseError(a1, 1346924643, "", v37, "Container node child name was not a string", v27);
LABEL_20:
              v25 = 0;
              goto LABEL_22;
            }

            if (!Phase::TraverseNode(a1, v24, v30, a4, a5, a6, v16, a8))
            {
              goto LABEL_20;
            }
          }

          v21 = [obj countByEnumeratingWithState:&v31 objects:v36 count:16];
          v25 = 1;
          if (v21)
          {
            continue;
          }

          break;
        }
      }

      else
      {
        v25 = 1;
      }

LABEL_22:

      v19 = v27;
    }

    else
    {
      v25 = 0;
      *(a1 + 72) = xmmword_23A596CAA;
      *(a1 + 88) = unk_23A596CBA;
      *(a1 + 104) = xmmword_23A596CCA;
      *(a1 + 120) = unk_23A596CDA;
      strcpy((a1 + 8), "<ContainerNode>");
      *(a1 + 24) = unk_23A596C7A;
      *(a1 + 40) = xmmword_23A596C8A;
      *(a1 + 56) = unk_23A596C9A;
    }
  }

  else
  {
    v25 = 0;
    *(a1 + 72) = xmmword_23A596C29;
    *(a1 + 88) = unk_23A596C39;
    *(a1 + 104) = xmmword_23A596C49;
    *(a1 + 120) = unk_23A596C59;
    strcpy((a1 + 8), "<ContainerStruct>");
    *(a1 + 26) = unk_23A596BFB;
    *(a1 + 28) = unk_23A596BFD;
    *(a1 + 32) = unk_23A596C01;
    *(a1 + 40) = xmmword_23A596C09;
    *(a1 + 56) = unk_23A596C19;
  }

  return v25;
}

uint64_t Phase::ParsePushStream(uint64_t a1, void *a2, void *a3, uint64_t a4, void *a5, void *a6, char a7)
{
  v26 = *MEMORY[0x277D85DE8];
  v13 = a2;
  v14 = a6;
  if ((Phase::ReadString(a1, v13, @"Name", __src, 0x80uLL, 0) & 1) == 0)
  {
    v15 = 0;
    *(a1 + 72) = xmmword_23A596D2B;
    *(a1 + 88) = unk_23A596D3B;
    *(a1 + 104) = xmmword_23A596D4B;
    *(a1 + 120) = unk_23A596D5B;
    strcpy((a1 + 8), "<PushStreamStruct>");
    *(a1 + 27) = unk_23A596CFE;
    *(a1 + 28) = unk_23A596CFF;
    *(a1 + 32) = unk_23A596D03;
    *(a1 + 40) = xmmword_23A596D0B;
    *(a1 + 56) = unk_23A596D1B;
    goto LABEL_16;
  }

  if ((a7 & 1) == 0)
  {
    Phase::ParserSetParseError(a1, 1346924646, __src, "", "PushStreamNode cannot be a child of switch, random, or blend nodes");
    goto LABEL_15;
  }

  if ((Phase::ReadPhaseId(a1, v13, @"Name", &v21, a5) & 1) == 0)
  {
    goto LABEL_14;
  }

  *(a4 + 400) = 0;
  if (!Phase::ParseLeafNode(a1, v13, __src, &v22, a4, a5))
  {
LABEL_15:
    v15 = 0;
    goto LABEL_16;
  }

  if ((Phase::AddLeafNodeName(a4, v21, *(a4 + 272)) & 1) == 0)
  {
    Phase::ParserSetParseError(a1, 1346924646, __src, "name", "Name %s is not a valid name");
    goto LABEL_15;
  }

  if ((Phase::ReadBoolWithDefault(a1, v13, v23) & 1) == 0 || (Phase::ReadFloatTypeWithDefault<double>(a1, v13, @"TargetLKFS", &v24, -12.0, -100.0, 0.0) & 1) == 0 || !Phase::MsgBuffer::WriteMsg(a3, a1, 9, &v21, 0x48uLL))
  {
LABEL_14:
    strncpy((a1 + 8), __src, 0x80uLL);
    goto LABEL_15;
  }

  v20 = 0;
  v15 = Phase::ReadAVAudioFormat(a1, v13, &v20);
  v16 = v20;
  if (v15)
  {
    v17 = [v14 streamNodeFormats];
    v18 = [v13 objectForKeyedSubscript:@"Name"];
    [v17 setObject:v16 forKey:v18];
  }

  else
  {
    strncpy((a1 + 8), __src, 0x80uLL);
  }

LABEL_16:
  return v15;
}

uint64_t Phase::ParseProcedure(uint64_t a1, void *a2, void *a3, uint64_t a4, void *a5)
{
  v21 = *MEMORY[0x277D85DE8];
  v9 = a2;
  if ((Phase::ReadString(a1, v9, @"Name", __src, 0x80uLL, 0) & 1) == 0)
  {
    v10 = 0;
    *(a1 + 72) = xmmword_23A596DAC;
    *(a1 + 88) = unk_23A596DBC;
    *(a1 + 104) = xmmword_23A596DCC;
    *(a1 + 120) = unk_23A596DDC;
    strcpy((a1 + 8), "<ProcedureStruct>");
    *(a1 + 26) = unk_23A596D7E;
    *(a1 + 28) = unk_23A596D80;
    *(a1 + 32) = unk_23A596D84;
    *(a1 + 40) = xmmword_23A596D8C;
    *(a1 + 56) = unk_23A596D9C;
    goto LABEL_19;
  }

  if ((Phase::ReadPhaseId(a1, v9, @"Name", &v12, a5) & 1) == 0 || (Phase::ReadEnumWithDefault<PHASEPlaybackMode>(a1, v9, &v15) & 1) == 0)
  {
    goto LABEL_17;
  }

  if (v15)
  {
    *(a4 + 400) = 0;
  }

  if (!Phase::ParseLeafNode(a1, v9, __src, &v13, a4, a5))
  {
    goto LABEL_18;
  }

  if ((Phase::ReadEnumWithDefault<PHASECullOption>(a1, v9, &v14) & 1) == 0 || (Phase::ReadIntTypeWithDefault<int>(a1, v9, @"ProcedureMaxPolyphony", &v16, 16, 1, 0x7FFFFFFF) & 1) == 0 || (Phase::ReadEnumWithDefault<PHASEVoiceStealingType>(a1, v9, &v17) & 1) == 0 || (Phase::ReadEnumWithDefault<Phase::ProcedureMsg::Type>(a1, v9, v18) & 1) == 0)
  {
    goto LABEL_17;
  }

  if (v18[0] == 1 && !Phase::ParseWaterProcedureParams(a1, v9, __src, &v19, a4, a5))
  {
    goto LABEL_18;
  }

  if ((Phase::AddLeafNodeName(a4, v12, *(a4 + 272)) & 1) == 0)
  {
    Phase::ParserSetParseError(a1, 1346924646, __src, "name", "Name %s is not a valid name", __src);
    goto LABEL_18;
  }

  if (!Phase::MsgBuffer::WriteMsg(a3, a1, 10, &v12, 0xB8uLL))
  {
LABEL_17:
    strncpy((a1 + 8), __src, 0x80uLL);
LABEL_18:
    v10 = 0;
    goto LABEL_19;
  }

  v10 = 1;
LABEL_19:

  return v10;
}

uint64_t Phase::ParseExternalOutputPullStream(uint64_t a1, void *a2, void *a3, uint64_t a4, void *a5, char a6)
{
  v27 = *MEMORY[0x277D85DE8];
  v11 = a2;
  if (Phase::ReadString(a1, v11, @"Name", __src, 0x80uLL, 0))
  {
    if ((a6 & 1) == 0)
    {
      Phase::ParserSetParseError(a1, 1346924646, __src, "", "ExternalOutputPullStreamNode cannot be a child of switch, random, or blend nodes");
      v14 = 0;
      goto LABEL_20;
    }

    if (Phase::ReadString(a1, v11, @"UUID", v24, 0x80uLL, 0))
    {
      v12 = [MEMORY[0x277CCACA8] stringWithFormat:@"%s", v24];
      v13 = [objc_alloc(MEMORY[0x277CCAD78]) initWithUUIDString:v12];
      v26 = 0uLL;
      [v13 getUUIDBytes:&v26];
      v18 = v26;
      if (Phase::ReadPhaseId(a1, v11, @"Name", &v17, a5))
      {
        *(a4 + 400) = 0;
        if (!Phase::ParseLeafNode(a1, v11, __src, &v19, a4, a5))
        {
LABEL_18:
          v14 = 0;
          goto LABEL_19;
        }

        if (v20 != 1.0)
        {
          Phase::ParserSetParseError(a1, 1346924646, __src, "rate", "Rate %f is not a valid rate for a pullstream.  Must be 1.0", v20);
          goto LABEL_18;
        }

        if ((Phase::AddLeafNodeName(a4, v17, *(a4 + 272)) & 1) == 0)
        {
          Phase::ParserSetParseError(a1, 1346924646, __src, "name", "Name %s is not a valid name", v15);
          goto LABEL_18;
        }

        if ((Phase::ReadBoolWithDefault(a1, v11, v21) & 1) != 0 && (Phase::ReadFloatTypeWithDefault<double>(a1, v11, @"TargetLKFS", &v22, -12.0, -100.0, 0.0) & 1) != 0 && (Phase::ReadAudioChannelLayoutTag(a1, v11, @"ChannelLayoutTag", &v23) & 1) != 0 && Phase::MsgBuffer::WriteMsg(a3, a1, 11, &v17, 0x60uLL))
        {
          v14 = 1;
LABEL_19:

          goto LABEL_20;
        }
      }

      strncpy((a1 + 8), __src, 0x80uLL);
      goto LABEL_18;
    }
  }

  v14 = 0;
  *(a1 + 72) = xmmword_23A596E2D;
  *(a1 + 88) = unk_23A596E3D;
  *(a1 + 104) = xmmword_23A596E4D;
  *(a1 + 120) = unk_23A596E5D;
  strcpy((a1 + 8), "<ExternalOutputPullStreamStruct>");
  *(a1 + 41) = unk_23A596E0E;
  *(a1 + 42) = unk_23A596E0F;
  *(a1 + 44) = unk_23A596E11;
  *(a1 + 48) = unk_23A596E15;
  *(a1 + 56) = unk_23A596E1D;
LABEL_20:

  return v14;
}

uint64_t Phase::ParsePullStream(uint64_t a1, void *a2, void *a3, uint64_t a4, void *a5, void *a6, char a7)
{
  v28 = *MEMORY[0x277D85DE8];
  v13 = a2;
  v14 = a6;
  if (Phase::ReadString(a1, v13, @"Name", __src, 0x80uLL, 0))
  {
    if ((a7 & 1) == 0)
    {
      Phase::ParserSetParseError(a1, 1346924646, __src, "", "PullStreamNode cannot be a child of switch, random, or blend nodes");
      goto LABEL_17;
    }

    if ((Phase::ReadPhaseId(a1, v13, @"Name", &v22, a5) & 1) == 0)
    {
      goto LABEL_16;
    }

    *(a4 + 400) = 0;
    if (!Phase::ParseLeafNode(a1, v13, __src, &v23, a4, a5))
    {
LABEL_17:
      v15 = 0;
      goto LABEL_18;
    }

    if (v24 != 1.0)
    {
      Phase::ParserSetParseError(a1, 1346924646, __src, "rate", "Rate %f is not a valid rate for a pullstream.  Must be 1.0", v24);
      goto LABEL_17;
    }

    if ((Phase::AddLeafNodeName(a4, v22, *(a4 + 272)) & 1) == 0)
    {
      Phase::ParserSetParseError(a1, 1346924646, __src, "name", "Name %s is not a valid name", v16);
      goto LABEL_17;
    }

    if ((Phase::ReadBoolWithDefault(a1, v13, v25) & 1) == 0 || (Phase::ReadFloatTypeWithDefault<double>(a1, v13, @"TargetLKFS", &v26, -12.0, -100.0, 0.0) & 1) == 0 || !Phase::MsgBuffer::WriteMsg(a3, a1, 12, &v22, 0x50uLL))
    {
LABEL_16:
      strncpy((a1 + 8), __src, 0x80uLL);
      goto LABEL_17;
    }

    v21 = 0;
    v15 = Phase::ReadAVAudioFormat(a1, v13, &v21);
    v17 = v21;
    if (v15)
    {
      v18 = [v14 streamNodeFormats];
      v19 = [v13 objectForKeyedSubscript:@"Name"];
      [v18 setObject:v17 forKey:v19];
    }

    else
    {
      strncpy((a1 + 8), __src, 0x80uLL);
    }
  }

  else
  {
    v15 = 0;
    *(a1 + 72) = xmmword_23A596EAE;
    *(a1 + 88) = unk_23A596EBE;
    *(a1 + 104) = xmmword_23A596ECE;
    *(a1 + 120) = unk_23A596EDE;
    strcpy((a1 + 8), "<PullStreamStruct>");
    *(a1 + 27) = unk_23A596E81;
    *(a1 + 28) = unk_23A596E82;
    *(a1 + 32) = unk_23A596E86;
    *(a1 + 40) = xmmword_23A596E8E;
    *(a1 + 56) = unk_23A596E9E;
  }

LABEL_18:

  return v15;
}

uint64_t Phase::ReadEnumWithDefault<PHASEPlaybackMode>(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = @"PlaybackMode";
  v7 = [v5 objectForKeyedSubscript:@"PlaybackMode"];
  if (v7)
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      Phase::ParserSetParseError(a1, 1346924643, "", [(__CFString *)@"PlaybackMode" UTF8String], "Field should be a string");
      v8 = 0;
      goto LABEL_7;
    }

    *a3 = GetPlaybackMode(v7);
  }

  else
  {
    *a3 = 0;
  }

  v8 = 1;
LABEL_7:

  return v8;
}

uint64_t Phase::ParseLeafNode(uint64_t a1, void *a2, char *a3, double *a4, uint64_t a5, void *a6)
{
  v11 = a2;
  if ((Phase::ReadPhaseId(a1, v11, @"Submix", a4, a6) & 1) == 0)
  {
    goto LABEL_29;
  }

  v13 = *(a5 + 376);
  v12 = *(a5 + 384);
  v14 = v12 - v13;
  if (v12 == v13)
  {
LABEL_14:
    v27 = [v11 objectForKeyedSubscript:@"Submix"];
    Phase::ParserSetParseError(a1, 1346924646, a3, "submix", "Submix %s was not found in the sound event asset", [v27 UTF8String]);

LABEL_30:
    v30 = 0;
    goto LABEL_31;
  }

  v15 = *a4;
  v16 = 0x74CD59ED64F3F0D7 * (v14 >> 3);
  if (v16 <= 1)
  {
    v17 = 1;
  }

  else
  {
    v17 = v16;
  }

  if (*v13 != *&v15)
  {
    v23 = 0;
    v24 = (v13 + 5944);
    v25 = v17 - 1;
    while (v25 != v23)
    {
      v26 = *v24;
      v24 += 743;
      ++v23;
      if (v26 == *&v15)
      {
        if (v16 > v23)
        {
          goto LABEL_7;
        }

        goto LABEL_14;
      }
    }

    goto LABEL_14;
  }

LABEL_7:
  v18 = v11;
  v19 = @"CalibrationMode";
  v20 = [v18 objectForKeyedSubscript:@"CalibrationMode"];
  if (v20)
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      Phase::ParserSetParseError(a1, 1346924643, "", [(__CFString *)@"CalibrationMode" UTF8String], "Field should be a string");

      goto LABEL_29;
    }

    CalibrationMode = Phase::GetCalibrationMode(v20, v21);
  }

  else
  {
    CalibrationMode = 0;
  }

  *(a4 + 1) = CalibrationMode;

  v28 = *(a4 + 1);
  switch(v28)
  {
    case 2:
      FloatTypeWith = Phase::ReadFloatTypeWithDefault<double>(a1, v18, @"Level", a4 + 2, 85.0, 0.0, 120.0);
LABEL_23:
      if (FloatTypeWith)
      {
        break;
      }

LABEL_29:
      strncpy((a1 + 8), a3, 0x80uLL);
      goto LABEL_30;
    case 1:
      FloatTypeWith = Phase::ReadFloatTypeWithDefault<double>(a1, v18, @"Level", a4 + 2, 0.0, -200.0, 12.0);
      goto LABEL_23;
    case 0:
      FloatTypeWith = Phase::ReadFloatTypeWithDefault<double>(a1, v18, @"Level", a4 + 2, 1.0, 0.0, 1.0);
      goto LABEL_23;
  }

  if ((Phase::ReadFloatTypeWithDefault<double>(a1, v18, @"Rate", a4 + 3, 1.0, 0.25, 4.0) & 1) == 0 || (Phase::ReadPhaseIdWithDefault(a1, v18, @"Group", a4 + 4, a6) & 1) == 0 || (Phase::ReadParamIdx(a1, v18, @"GainParameterName", a5, a4 + 40, a6) & 1) == 0 || (Phase::ReadParamIdx(a1, v18, @"RateParameterName", a5, a4 + 41, a6) & 1) == 0)
  {
    goto LABEL_29;
  }

  v30 = 1;
LABEL_31:

  return v30;
}

uint64_t Phase::ReadEnumWithDefault<PHASECullOption>(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = @"CullOption";
  v7 = [v5 objectForKeyedSubscript:@"CullOption"];
  if (v7)
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      Phase::ParserSetParseError(a1, 1346924643, "", [(__CFString *)@"CullOption" UTF8String], "Field should be a string");
      v8 = 0;
      goto LABEL_7;
    }

    *a3 = GetCullOption(v7);
  }

  else
  {
    *a3 = 0;
  }

  v8 = 1;
LABEL_7:

  return v8;
}

uint64_t Phase::AddLeafNodeName(const void **this, Phase::ActionTreeBuilder *a2, int a3)
{
  v20 = a2;
  if (!a2)
  {
    return 0;
  }

  std::vector<unsigned long long>::push_back[abi:ne200100](this + 23, &v20);
  v6 = this[27];
  v5 = this[28];
  if (v6 >= v5)
  {
    v8 = this[26];
    v9 = v6 - v8;
    v10 = (v6 - v8) >> 2;
    v11 = v10 + 1;
    if ((v10 + 1) >> 62)
    {
      std::vector<unsigned int>::__throw_length_error[abi:ne200100]();
    }

    v12 = v5 - v8;
    if (v12 >> 1 > v11)
    {
      v11 = v12 >> 1;
    }

    v13 = v12 >= 0x7FFFFFFFFFFFFFFCLL;
    v14 = 0x3FFFFFFFFFFFFFFFLL;
    if (!v13)
    {
      v14 = v11;
    }

    if (v14)
    {
      std::__allocate_at_least[abi:ne200100]<std::allocator<float>>((this + 26), v14);
    }

    v15 = (v6 - v8) >> 2;
    v16 = (4 * v10);
    v17 = (4 * v10 - 4 * v15);
    *v16 = a3;
    v7 = v16 + 1;
    memcpy(v17, v8, v9);
    v18 = this[26];
    this[26] = v17;
    this[27] = v7;
    this[28] = 0;
    if (v18)
    {
      operator delete(v18);
    }
  }

  else
  {
    *v6 = a3;
    v7 = v6 + 4;
  }

  this[27] = v7;
  return 1;
}

BOOL Phase::MsgBuffer::WriteMsg(void *a1, uint64_t a2, int a3, void *__src, size_t __n)
{
  v6 = a1[1];
  v5 = a1[2];
  v7 = v5 + __n + 8;
  if (v7 >= v6)
  {
    Phase::ParserSetParseError(a2, 1346924644, "", "", "");
  }

  else
  {
    v9 = __n;
    v10 = (*a1 + v5);
    *v10 = a3;
    v10[1] = __n;
    v11 = a1[2] + 8;
    a1[2] = v11;
    memcpy((*a1 + v11), __src, __n);
    a1[2] += v9;
  }

  return v7 < v6;
}

uint64_t Phase::GetCalibrationMode(Phase *this, NSString *a2)
{
  v2 = this;
  if (([(Phase *)v2 isEqualToString:@"none"]& 1) != 0)
  {
    v3 = 0;
  }

  else if (([(Phase *)v2 isEqualToString:@"relative_spl"]& 1) != 0)
  {
    v3 = 1;
  }

  else if ([(Phase *)v2 isEqualToString:@"absolute_spl"])
  {
    v3 = 2;
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

uint64_t Phase::GetChildArray(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = @"Children";
  v7 = [v5 objectForKeyedSubscript:@"Children"];
  if (!v7)
  {
    Phase::ParserSetParseError(a1, 1346924642, "", [(__CFString *)@"Children" UTF8String], "");
LABEL_6:
    v9 = 0;
    goto LABEL_7;
  }

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    Phase::ParserSetParseError(a1, 1346924643, "", [(__CFString *)@"Children" UTF8String], "Field should be an array");
    goto LABEL_6;
  }

  v8 = v7;
  *a3 = v7;
  v9 = 1;
LABEL_7:

  return v9;
}

uint64_t Phase::ReadString(uint64_t a1, void *a2, void *a3, void *a4)
{
  v7 = a2;
  v8 = @"SubTreeNodeName";
  v9 = [v7 objectForKeyedSubscript:@"SubTreeNodeName"];
  if (!v9)
  {
    Phase::ParserSetParseError(a1, 1346924642, "", [(__CFString *)@"SubTreeNodeName" UTF8String], "");
LABEL_8:
    v11 = 0;
    goto LABEL_9;
  }

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    Phase::ParserSetParseError(a1, 1346924643, "", [(__CFString *)@"SubTreeNodeName" UTF8String], "Field should be a string");
    goto LABEL_8;
  }

  v10 = v9;
  *a3 = v9;
  if (a4 && (Phase::AddStringToPool(a1, a4, v9) & 1) == 0)
  {
    strncpy((a1 + 8), [v9 UTF8String], 0x80uLL);
    goto LABEL_8;
  }

  v11 = 1;
LABEL_9:

  return v11;
}

uint64_t Phase::ReadIntTypeWithDefault<int>(uint64_t a1, void *a2, void *a3, int *a4, int a5, int a6, int a7)
{
  v35 = *MEMORY[0x277D85DE8];
  v13 = a2;
  v14 = a3;
  v15 = [v13 objectForKeyedSubscript:v14];
  v16 = v15;
  if (v15)
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      Phase::ParserSetParseError(a1, 1346924643, "", [v14 UTF8String], "Field should be a number");
      v21 = 0;
      goto LABEL_13;
    }

    v15 = [(Phase::Logger *)v16 longLongValue];
    a5 = v15;
  }

  *a4 = a5;
  if (a5 < a6 || a5 > a7)
  {
    v17 = **(Phase::Logger::GetInstance(v15) + 16);
    if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
    {
      v18 = [v14 UTF8String];
      v19 = *a4;
      v23 = 136316418;
      v24 = "ParserCore.mm";
      v25 = 1024;
      v26 = 549;
      v27 = 2080;
      v28 = v18;
      v29 = 2048;
      v30 = v19;
      v31 = 2048;
      v32 = a6;
      v33 = 2048;
      v34 = a7;
      _os_log_impl(&dword_23A302000, v17, OS_LOG_TYPE_ERROR, "%25s:%-5d WARNING: %s %lld is out of range [%lld, %lld]. Clamping...", &v23, 0x3Au);
    }

    v20 = *a4;
    if (*a4 <= a6)
    {
      v20 = a6;
    }

    *a4 = ((a7 - v20) & ((a7 - v20) >> 31)) + v20;
  }

  v21 = 1;
LABEL_13:

  return v21;
}

uint64_t Phase::ReadBoolWithDefault(uint64_t a1, void *a2, _BYTE *a3)
{
  v5 = a2;
  v6 = @"Normalize";
  v7 = [v5 objectForKeyedSubscript:@"Normalize"];
  if (v7)
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      Phase::ParserSetParseError(a1, 1346924643, "", [(__CFString *)@"Normalize" UTF8String], "Field should be a number");
      v9 = 0;
      goto LABEL_7;
    }

    v8 = [v7 BOOLValue];
  }

  else
  {
    v8 = 0;
  }

  *a3 = v8;
  v9 = 1;
LABEL_7:

  return v9;
}

uint64_t Phase::ReadAVAudioFormat(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = @"Format";
  v7 = [v5 objectForKeyedSubscript:@"Format"];
  if (!v7)
  {
    Phase::ParserSetParseError(a1, 1346924642, "", [(__CFString *)@"Format" UTF8String], "");
LABEL_6:
    v9 = 0;
    goto LABEL_7;
  }

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    Phase::ParserSetParseError(a1, 1346924643, "", [(__CFString *)@"Format" UTF8String], "Field should be AVAudioFormat");
    goto LABEL_6;
  }

  v8 = v7;
  *a3 = v7;
  v9 = 1;
LABEL_7:

  return v9;
}

uint64_t Phase::ReadEnumWithDefault<PHASEVoiceStealingType>(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = @"ProcedureVoiceStealingType";
  v7 = [v5 objectForKeyedSubscript:@"ProcedureVoiceStealingType"];
  if (v7)
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      Phase::ParserSetParseError(a1, 1346924643, "", [(__CFString *)@"ProcedureVoiceStealingType" UTF8String], "Field should be a string");
      v8 = 0;
      goto LABEL_7;
    }

    *a3 = GetVoiceStealingType(v7);
  }

  else
  {
    *a3 = 0;
  }

  v8 = 1;
LABEL_7:

  return v8;
}

uint64_t Phase::ReadEnumWithDefault<Phase::ProcedureMsg::Type>(uint64_t a1, void *a2, _BYTE *a3)
{
  v5 = a2;
  v6 = @"ProcedureType";
  v7 = [v5 objectForKeyedSubscript:@"ProcedureType"];
  if (v7)
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      Phase::ParserSetParseError(a1, 1346924643, "", [(__CFString *)@"ProcedureType" UTF8String], "Field should be a string");
      v8 = 0;
      goto LABEL_7;
    }

    *a3 = GetProcedureType(v7);
  }

  else
  {
    *a3 = 0;
  }

  v8 = 1;
LABEL_7:

  return v8;
}

uint64_t Phase::ParseWaterProcedureParams(uint64_t a1, void *a2, const char *a3, uint64_t a4, uint64_t a5, void *a6)
{
  v11 = a2;
  if (Phase::ReadFloatTypeWithDefault<double>(a1, v11, @"FallRate", a4, 1000.0, 0.1, 48000.0) & 1) != 0 && Phase::ReadFloatTypeWithDefault<double>(a1, v11, @"AverageDropDiameter", (a4 + 8), 1.0, 0.1, 5.0) && Phase::ReadFloatTypeWithDefault<double>(a1, v11, @"MaxDropDiameter", (a4 + 16), 5.0, 5.0, 20.0) && Phase::ReadFloatTypeWithDefault<double>(a1, v11, @"ImpulseShape", (a4 + 24), 1.0, 0.1, 10.0) && Phase::ReadFloatTypeWithDefault<double>(a1, v11, @"ImpulseGainExponent", (a4 + 32), 4.0, 4.0, 7.0) && Phase::ReadFloatTypeWithDefault<double>(a1, v11, @"ImpulseGain", (a4 + 40), 1.0, 0.0, 1.0) && Phase::ReadFloatTypeWithDefault<double>(a1, v11, @"ChirpRiseRate", (a4 + 48), 0.1, 0.01, 10.0) && Phase::ReadFloatTypeWithDefault<double>(a1, v11, @"BaseFrequencyMultiplier", (a4 + 56), 3.0, 0.1, 10.0) && Phase::ReadFloatTypeWithDefault<double>(a1, v11, @"BubbleGain", (a4 + 64), 1.0, 0.0, 1.0) && Phase::ReadParamIdx(a1, v11, @"FallRateParameterName", a5, (a4 + 72), a6) && Phase::ReadParamIdx(a1, v11, @"AverageDropDiameterParameterName", a5, (a4 + 73), a6) && Phase::ReadParamIdx(a1, v11, @"MaxDropDiameterParameterName", a5, (a4 + 74), a6) && Phase::ReadParamIdx(a1, v11, @"ImpulseShapeParameterName", a5, (a4 + 75), a6) && Phase::ReadParamIdx(a1, v11, @"ImpulseGainExponentParameterName", a5, (a4 + 76), a6) && Phase::ReadParamIdx(a1, v11, @"ImpulseGainParameterName", a5, (a4 + 77), a6) && Phase::ReadParamIdx(a1, v11, @"ChirpRiseRateParameterName", a5, (a4 + 78), a6) && Phase::ReadParamIdx(a1, v11, @"BaseFrequencyMultiplierParameterName", a5, (a4 + 79), a6) && (Phase::ReadParamIdx(a1, v11, @"BubbleGainParameterName", a5, (a4 + 80), a6))
  {
    v12 = 1;
  }

  else
  {
    strncpy((a1 + 8), a3, 0x80uLL);
    v12 = 0;
  }

  return v12;
}

void Phase::ActionTreeBuilder::~ActionTreeBuilder(Phase::ActionTreeBuilder *this)
{
  v2 = *(this + 47);
  if (v2)
  {
    *(this + 48) = v2;
    operator delete(v2);
  }

  v3 = *(this + 44);
  if (v3)
  {
    *(this + 45) = v3;
    operator delete(v3);
  }

  v4 = *(this + 41);
  if (v4)
  {
    *(this + 42) = v4;
    operator delete(v4);
  }

  v5 = *(this + 38);
  if (v5)
  {
    *(this + 39) = v5;
    operator delete(v5);
  }

  v6 = *(this + 35);
  if (v6)
  {
    *(this + 36) = v6;
    operator delete(v6);
  }

  v7 = *(this + 32);
  *(this + 32) = 0;
  if (v7)
  {
    MEMORY[0x23EE86470](v7, 0x1000C8077774924);
  }

  v8 = *(this + 29);
  if (v8)
  {
    *(this + 30) = v8;
    operator delete(v8);
  }

  v9 = *(this + 26);
  if (v9)
  {
    *(this + 27) = v9;
    operator delete(v9);
  }

  v10 = *(this + 23);
  if (v10)
  {
    *(this + 24) = v10;
    operator delete(v10);
  }

  v11 = *(this + 20);
  if (v11)
  {
    *(this + 21) = v11;
    operator delete(v11);
  }

  v12 = *(this + 17);
  if (v12)
  {
    *(this + 18) = v12;
    operator delete(v12);
  }
}

void std::default_delete<Phase::ActionTree []>::operator()[abi:ne200100]<Phase::ActionTree>(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    v2 = *(a2 - 8);
    if (v2)
    {
      v3 = -120 * v2;
      v4 = (a2 + 120 * v2 - 120);
      do
      {
        Phase::ActionTree::~ActionTree(v4);
        v4 = (v5 - 120);
        v3 += 120;
      }

      while (v3);
    }

    JUMPOUT(0x23EE86470);
  }
}

void Phase::ActionTree::~ActionTree(Phase::ActionTree *this)
{
  v2 = *(this + 13);
  *(this + 13) = 0;
  if (v2)
  {
    MEMORY[0x23EE86470](v2, 0x1000C809937E4EELL);
  }

  v3 = *(this + 11);
  *(this + 11) = 0;
  if (v3)
  {
    MEMORY[0x23EE86470](v3, 0x1000C8077774924);
  }

  v4 = *(this + 9);
  *(this + 9) = 0;
  if (v4)
  {
    MEMORY[0x23EE86470](v4, 0x1000C80D9B47DDELL);
  }

  v5 = *(this + 7);
  *(this + 7) = 0;
  if (v5)
  {
    MEMORY[0x23EE86470](v5, 0x1000C8052888210);
  }

  v6 = *(this + 6);
  *(this + 6) = 0;
  if (v6)
  {
    MEMORY[0x23EE86470](v6, 0x1000C8000313F17);
  }

  v7 = *(this + 4);
  *(this + 4) = 0;
  if (v7)
  {
    MEMORY[0x23EE86470](v7, 0x1000C8000313F17);
  }

  v8 = *(this + 2);
  *(this + 2) = 0;
  if (v8)
  {
    MEMORY[0x23EE86470](v8, 0x1000C8000313F17);
  }
}

void sub_23A454950(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, char a16)
{
  std::unique_ptr<std::__hash_node<std::__hash_value_type<unsigned long long,std::deque<int>>,void *>,std::__hash_node_destructor<std::allocator<std::__hash_node<std::__hash_value_type<unsigned long long,std::deque<int>>,void *>>>>::~unique_ptr[abi:ne200100](&a16);
  std::deque<int>::~deque[abi:ne200100](&a9);
  _Unwind_Resume(a1);
}

void sub_23A4551A8(_Unwind_Exception *a1)
{
  objc_sync_exit(v1);

  _Unwind_Resume(a1);
}

void sub_23A456CD8()
{
  std::unique_ptr<std::__hash_node<std::__hash_value_type<unsigned long long,void({block_pointer} {__strong})(NSUUID *,NSUUID *,BOOL)>,void *>,std::__hash_node_destructor<std::allocator<std::__hash_node<std::__hash_value_type<unsigned long long,void({block_pointer} {__strong})(NSUUID *,NSUUID *,BOOL)>,void *>>>>::~unique_ptr[abi:ne200100](v0 - 192);

  JUMPOUT(0x23A456D8CLL);
}

void sub_23A456D54()
{
  __cxa_end_catch();

  JUMPOUT(0x23A456ED8);
}

void sub_23A456E18()
{
  __cxa_end_catch();

  JUMPOUT(0x23A456EE8);
}

void sub_23A456E30(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19)
{
  if (a19)
  {
    (*(*a19 + 8))(a19);
  }

  if (v21)
  {
    (*(*v21 + 8))();
  }

  JUMPOUT(0x23A456F28);
}

void sub_23A456E7C()
{
  if (*(v0 - 169) < 0)
  {
    JUMPOUT(0x23A456F44);
  }

  JUMPOUT(0x23A456FF0);
}

void sub_23A456EA0()
{
  objc_sync_exit(v0);

  JUMPOUT(0x23A457024);
}

void sub_23A456EBC()
{
  std::unique_ptr<std::__hash_node<std::__hash_value_type<unsigned long long,void({block_pointer} {__strong})(NSUUID *,NSUUID *,BOOL)>,void *>,std::__hash_node_destructor<std::allocator<std::__hash_node<std::__hash_value_type<unsigned long long,void({block_pointer} {__strong})(NSUUID *,NSUUID *,BOOL)>,void *>>>>::~unique_ptr[abi:ne200100](v0 - 192);

  JUMPOUT(0x23A456F5CLL);
}

void sub_23A456FAC()
{
  __cxa_end_catch();

  JUMPOUT(0x23A456FECLL);
}

void sub_23A456FB8(_Unwind_Exception *a1, int a2)
{
  if (a2)
  {
    __clang_call_terminate(a1);
  }

  _Unwind_Resume(a1);
}

uint64_t *std::unique_ptr<Phase::StringPool>::~unique_ptr[abi:ne200100](uint64_t *a1)
{
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    v3 = *(v2 + 24);
    *(v2 + 24) = 0;
    if (v3)
    {
      MEMORY[0x23EE86470](v3, 0x1000C8077774924);
    }

    v4 = *(v2 + 8);
    *(v2 + 8) = 0;
    if (v4)
    {
      MEMORY[0x23EE86470](v4, 0x1050C80C058ABA2);
    }

    MEMORY[0x23EE864A0](v2, 0x1030C40F3971E94);
  }

  return a1;
}

void sub_23A4573B8(_Unwind_Exception *a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, Phase::Logger *a12, __int128 buf, __int16 a14, __int16 a15, __int128 a16)
{
  if (a2 == 1)
  {
    v22 = __cxa_begin_catch(a1);
    v23 = MEMORY[0x277CCACA8];
    (*(*v22 + 16))(v22);
    v24 = [v23 stringWithFormat:@"Error Creating Sound Asset: %s"];
    v25 = **(Phase::Logger::GetInstance(v24) + 832);
    if (os_log_type_enabled(v25, OS_LOG_TYPE_ERROR))
    {
      v26 = v24;
      v27 = [(Phase::Logger *)v24 UTF8String];
      LODWORD(buf) = 136315906;
      *(&buf + 4) = "PHASEAssetRegistry.mm";
      WORD6(buf) = 1024;
      *(&buf + 14) = 934;
      a15 = 2048;
      WORD2(a16) = 2080;
      *(&a16 + 6) = v27;
      _os_log_impl(&dword_23A302000, v25, OS_LOG_TYPE_ERROR, "%25s:%-5d SoundAssetError for assetId %llu: %s", &buf, 0x26u);
    }

    if (v20)
    {
      a11 = *MEMORY[0x277CCA450];
      a12 = v24;
      v28 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&a12 forKeys:&a11 count:1];
      *v20 = [MEMORY[0x277CCA9B8] errorWithDomain:@"com.apple.coreaudio.phase" code:1346920805 userInfo:v28];
    }

    *v19 = 0;
    __cxa_end_catch();
    JUMPOUT(0x23A45734CLL);
  }

  _Unwind_Resume(a1);
}

uint64_t *std::unique_ptr<Phase::Controller::ResidentSoundAssetInfo>::~unique_ptr[abi:ne200100](uint64_t *a1)
{
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    v3 = *(v2 + 48);
    *(v2 + 48) = 0;

    MEMORY[0x23EE864A0](v2, 0x1081C407A1D6331);
  }

  return a1;
}

Phase::Controller::StreamedSoundAssetInfo **std::unique_ptr<Phase::Controller::StreamedSoundAssetInfo>::~unique_ptr[abi:ne200100](Phase::Controller::StreamedSoundAssetInfo **a1)
{
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    Phase::Controller::StreamedSoundAssetInfo::~StreamedSoundAssetInfo(v2);
    MEMORY[0x23EE864A0]();
  }

  return a1;
}

void sub_23A457BEC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, void *a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  std::unique_ptr<Phase::StringPool>::~unique_ptr[abi:ne200100](&a11);

  std::unique_ptr<Phase::StringPool>::~unique_ptr[abi:ne200100](&a13);
  v19 = a14;
  a14 = 0;
  if (v19)
  {
    (*(*v19 + 8))(v19);
  }

  _Unwind_Resume(a1);
}

double PHASEGetPropertyBounded<double>(void *a1, void *a2, double a3, double a4, double a5)
{
  v29 = *MEMORY[0x277D85DE8];
  v9 = a1;
  v10 = a2;
  v11 = v10;
  if (a3 < a4 || a3 > a5)
  {
    v13 = **(Phase::Logger::GetInstance(v10) + 448);
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEBUG))
    {
      v15 = 136316674;
      v16 = "PHASEGetProperty.h";
      v17 = 1024;
      v18 = 28;
      v19 = 2080;
      v20 = [v9 UTF8String];
      v21 = 2080;
      v22 = [(Phase::Logger *)v11 UTF8String];
      v23 = 2048;
      v24 = a3;
      v25 = 2048;
      v26 = a4;
      v27 = 2048;
      v28 = a5;
      _os_log_impl(&dword_23A302000, v13, OS_LOG_TYPE_DEBUG, "%25s:%-5d %s:%s Value is out of bounds. Clamping %f to range [%f, %f]", &v15, 0x44u);
    }

    a3 = fmin(fmax(a3, a4), a5);
  }

  return a3;
}

void sub_23A458500(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, void *a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t buf)
{
  std::unique_ptr<Phase::StringPool>::~unique_ptr[abi:ne200100](&buf);

  _Unwind_Resume(a1);
}

void sub_23A45907C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, void *a12, void *a13, void *a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t buf)
{
  std::unique_ptr<Phase::StringPool>::~unique_ptr[abi:ne200100](&buf);

  _Unwind_Resume(a1);
}

void sub_23A4597D0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va1, a3);
  va_start(va, a3);
  v9 = va_arg(va1, void);
  v11 = va_arg(va1, void);

  std::unique_ptr<Phase::StringPool>::~unique_ptr[abi:ne200100](va);
  MEMORY[0x23EE86470](v5, 0x1000C80D9B47DDELL);
  std::__hash_table<std::string,std::hash<std::string>,std::equal_to<std::string>,std::allocator<std::string>>::~__hash_table(va1);

  _Unwind_Resume(a1);
}

void sub_23A459C40(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va2, a3);
  va_start(va1, a3);
  va_start(va, a3);
  v12 = va_arg(va1, void);
  va_copy(va2, va1);
  v14 = va_arg(va2, Phase::ActionTree *);

  std::unique_ptr<Phase::StringPool>::~unique_ptr[abi:ne200100](va);
  std::unique_ptr<Phase::ActionTree>::reset[abi:ne200100](va1, 0);

  std::__hash_table<std::string,std::hash<std::string>,std::equal_to<std::string>,std::allocator<std::string>>::~__hash_table(va2);
  _Unwind_Resume(a1);
}

void sub_23A45A098(_Unwind_Exception *a1)
{
  objc_sync_exit(v2);

  _Unwind_Resume(a1);
}

void sub_23A45A41C(_Unwind_Exception *exception_object, int a2)
{
  if (a2)
  {
    __cxa_free_exception(v3);
    __cxa_begin_catch(exception_object);
    Phase::Commandable<128,Phase::LockFreeQueueMPSC>::LogOverflow(v2);
    __cxa_end_catch();
    JUMPOUT(0x23A45A274);
  }

  _Unwind_Resume(exception_object);
}

uint64_t Phase::Controller::TaskManager::GetService<Phase::Controller::AssetUnloader>(Phase::Logger *a1, int a2)
{
  v21 = *MEMORY[0x277D85DE8];
  v3 = *(a1 + 6);
  if (a2 >= ((*(a1 + 7) - v3) >> 5))
  {
    v7 = **(Phase::Logger::GetInstance(a1) + 464);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315394;
      v14 = "TaskManager.hpp";
      v15 = 1024;
      v16 = 112;
      _os_log_impl(&dword_23A302000, v7, OS_LOG_TYPE_ERROR, "%25s:%-5d PRECONDITION: pId < mServiceRegistry.size() is false.", buf, 0x12u);
    }

    exception = __cxa_allocate_exception(0x10uLL);
    std::domain_error::domain_error[abi:ne200100](exception, "PRECONDITION: pId < mServiceRegistry.size() is false.");
  }

  v4 = (v3 + 32 * a2);
  if (!*v4)
  {
    v9 = **(Phase::Logger::GetInstance(v4) + 464);
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      Phase::GetBacktraceFrame<1ul>(&__p);
      v10 = (__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0 ? &__p : __p.__r_.__value_.__r.__words[0];
      *buf = 136315906;
      v14 = "TaskManager.hpp";
      v15 = 1024;
      v16 = 121;
      v17 = 1024;
      v18 = a2;
      v19 = 2080;
      v20 = v10;
      _os_log_impl(&dword_23A302000, v9, OS_LOG_TYPE_ERROR, "%25s:%-5d EXCEPTION (std::domain_error) [not lService.has_value() is true]: No service registered for Id %i, in call \\n%s", buf, 0x22u);
      if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(__p.__r_.__value_.__l.__data_);
      }
    }

    v11 = __cxa_allocate_exception(0x10uLL);
    std::domain_error::domain_error[abi:ne200100](v11, "No service registered for Id %i, in call \n%s");
  }

  v5 = std::any_cast[abi:ne200100]<Phase::Controller::AssetUnloader * const>(v4);
  if (!v5)
  {
    std::__throw_bad_any_cast[abi:ne200100]();
  }

  return *v5;
}

void sub_23A45A80C(_Unwind_Exception *a1, int a2)
{
  if (a2)
  {
    __clang_call_terminate(a1);
  }

  _Unwind_Resume(a1);
}

void sub_23A45AC6C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void **a14, uint64_t a15)
{
  v20 = a14;
  a14 = 0;
  if (v20)
  {
    std::__hash_node_destructor<std::allocator<std::__hash_node<std::string,void *>>>::operator()[abi:ne200100](&a15, v20);
  }

  if (a2 == 1)
  {
    __cxa_begin_catch(a1);
    if (v17)
    {
      *v17 = [MEMORY[0x277CCA9B8] errorWithDomain:@"com.apple.coreaudio.phase" code:1346920806 userInfo:0];
    }

    *v16 = 0;
    __cxa_end_catch();
    JUMPOUT(0x23A45AC24);
  }

  std::__hash_table<std::string,std::hash<std::string>,std::equal_to<std::string>,std::allocator<std::string>>::~__hash_table(&a9);

  _Unwind_Resume(a1);
}

void sub_23A45B8E8(_Unwind_Exception *a1)
{
  objc_sync_exit(v2);

  _Unwind_Resume(a1);
}

void sub_23A45BEDC(_Unwind_Exception *a1)
{
  objc_sync_exit(v1);

  _Unwind_Resume(a1);
}

void sub_23A45BF94(_Unwind_Exception *a1)
{
  objc_sync_exit(v1);

  _Unwind_Resume(a1);
}

void sub_23A45C090(_Unwind_Exception *a1)
{
  objc_sync_exit(v1);

  _Unwind_Resume(a1);
}

void *std::unique_ptr<Phase::DataBundle>::reset[abi:ne200100](void *result, uint64_t a2)
{
  v2 = *result;
  *result = a2;
  if (v2)
  {
    v3 = v2[8];
    v2[8] = 0;
    if (v3)
    {
      MEMORY[0x23EE86470](v3, 0x1000C80D9B47DDELL);
    }

    v4 = v2[6];
    v2[6] = 0;
    if (v4)
    {
      MEMORY[0x23EE86470](v4, 0x1000C80281E3F58);
    }

    v5 = v2[4];
    v2[4] = 0;
    if (v5)
    {
      MEMORY[0x23EE86470](v5, 0x1000C8039DDB5B0);
    }

    v6 = v2[2];
    v2[2] = 0;
    if (v6)
    {
      std::default_delete<Phase::ActionTree []>::operator()[abi:ne200100]<Phase::ActionTree>((v2 + 2), v6);
    }

    JUMPOUT(0x23EE864A0);
  }

  return result;
}

Phase::ActionTree *std::unique_ptr<Phase::ActionTree>::reset[abi:ne200100](Phase::ActionTree **a1, Phase::ActionTree *a2)
{
  result = *a1;
  *a1 = a2;
  if (result)
  {
    Phase::ActionTree::~ActionTree(result);

    JUMPOUT(0x23EE864A0);
  }

  return result;
}

uint64_t std::deque<int>::~deque[abi:ne200100](uint64_t a1)
{
  v2 = *(a1 + 8);
  v3 = *(a1 + 16);
  *(a1 + 40) = 0;
  v4 = v3 - v2;
  if (v4 >= 3)
  {
    do
    {
      operator delete(*v2);
      v3 = *(a1 + 16);
      v2 = (*(a1 + 8) + 8);
      *(a1 + 8) = v2;
      v4 = v3 - v2;
    }

    while (v4 > 2);
  }

  if (v4 == 1)
  {
    v5 = 512;
    goto LABEL_7;
  }

  if (v4 == 2)
  {
    v5 = 1024;
LABEL_7:
    *(a1 + 32) = v5;
  }

  if (v2 != v3)
  {
    do
    {
      v6 = *v2++;
      operator delete(v6);
    }

    while (v2 != v3);
    v8 = *(a1 + 8);
    v7 = *(a1 + 16);
    if (v7 != v8)
    {
      *(a1 + 16) = v7 + ((v8 - v7 + 7) & 0xFFFFFFFFFFFFFFF8);
    }
  }

  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

uint64_t std::unique_ptr<std::__hash_node<std::__hash_value_type<unsigned long long,std::deque<int>>,void *>,std::__hash_node_destructor<std::allocator<std::__hash_node<std::__hash_value_type<unsigned long long,std::deque<int>>,void *>>>>::~unique_ptr[abi:ne200100](uint64_t a1)
{
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    if (*(a1 + 16) == 1)
    {
      std::deque<int>::~deque[abi:ne200100](v2 + 24);
    }

    operator delete(v2);
  }

  return a1;
}

void *std::__hash_table<std::__hash_value_type<unsigned long long,PHASEAsset * {__strong}>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,PHASEAsset * {__strong}>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,PHASEAsset * {__strong}>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,PHASEAsset * {__strong}>>>::__erase_unique<unsigned long long>(void *a1, unint64_t a2)
{
  result = std::__hash_table<std::__hash_value_type<PHASETapType,std::unique_ptr<Phase::TapSourceRegistry::TapSourceInfo>>,std::__unordered_map_hasher<PHASETapType,std::__hash_value_type<PHASETapType,std::unique_ptr<Phase::TapSourceRegistry::TapSourceInfo>>,std::hash<PHASETapType>,std::equal_to<PHASETapType>,true>,std::__unordered_map_equal<PHASETapType,std::__hash_value_type<PHASETapType,std::unique_ptr<Phase::TapSourceRegistry::TapSourceInfo>>,std::equal_to<PHASETapType>,std::hash<PHASETapType>,true>,std::allocator<std::__hash_value_type<PHASETapType,std::unique_ptr<Phase::TapSourceRegistry::TapSourceInfo>>>>::find<PHASETapType>(a1, a2);
  if (result)
  {
    std::__hash_table<std::__hash_value_type<Phase::UniqueObjectId,std::pair<std::unique_ptr<Phase::Controller::SpatialQueryInstance>,std::vector<Phase::Controller::SpatialModelerInstance::SubmixHandleInfo>>>,std::__unordered_map_hasher<Phase::UniqueObjectId,std::__hash_value_type<Phase::UniqueObjectId,std::pair<std::unique_ptr<Phase::Controller::SpatialQueryInstance>,std::vector<Phase::Controller::SpatialModelerInstance::SubmixHandleInfo>>>,std::hash<Phase::UniqueObjectId>,std::equal_to<Phase::UniqueObjectId>,true>,std::__unordered_map_equal<Phase::UniqueObjectId,std::__hash_value_type<Phase::UniqueObjectId,std::pair<std::unique_ptr<Phase::Controller::SpatialQueryInstance>,std::vector<Phase::Controller::SpatialModelerInstance::SubmixHandleInfo>>>,std::equal_to<Phase::UniqueObjectId>,std::hash<Phase::UniqueObjectId>,true>,std::allocator<std::__hash_value_type<Phase::UniqueObjectId,std::pair<std::unique_ptr<Phase::Controller::SpatialQueryInstance>,std::vector<Phase::Controller::SpatialModelerInstance::SubmixHandleInfo>>>>>::remove(v4, a1, result);
    return std::unique_ptr<std::__hash_node<std::__hash_value_type<unsigned long long,void({block_pointer} {__strong})(NSUUID *,NSUUID *,BOOL)>,void *>,std::__hash_node_destructor<std::allocator<std::__hash_node<std::__hash_value_type<unsigned long long,void({block_pointer} {__strong})(NSUUID *,NSUUID *,BOOL)>,void *>>>>::~unique_ptr[abi:ne200100](v4);
  }

  return result;
}

uint64_t std::__hash_table<std::__hash_value_type<unsigned long long,std::unique_ptr<Phase::StringPool>>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,std::unique_ptr<Phase::StringPool>>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,std::unique_ptr<Phase::StringPool>>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,std::unique_ptr<Phase::StringPool>>>>::__emplace_unique_key_args<unsigned long long,std::pair<unsigned long long,std::unique_ptr<Phase::StringPool>>>(void *a1, unint64_t a2)
{
  v2 = a1[1];
  if (!*&v2)
  {
    goto LABEL_18;
  }

  v3 = vcnt_s8(v2);
  v3.i16[0] = vaddlv_u8(v3);
  if (v3.u32[0] > 1uLL)
  {
    v4 = a2;
    if (*&v2 <= a2)
    {
      v4 = a2 % *&v2;
    }
  }

  else
  {
    v4 = (*&v2 - 1) & a2;
  }

  v5 = *(*a1 + 8 * v4);
  if (!v5 || (v6 = *v5) == 0)
  {
LABEL_18:
    operator new();
  }

  while (1)
  {
    v7 = v6[1];
    if (v7 == a2)
    {
      break;
    }

    if (v3.u32[0] > 1uLL)
    {
      if (v7 >= *&v2)
      {
        v7 %= *&v2;
      }
    }

    else
    {
      v7 &= *&v2 - 1;
    }

    if (v7 != v4)
    {
      goto LABEL_18;
    }

LABEL_17:
    v6 = *v6;
    if (!v6)
    {
      goto LABEL_18;
    }
  }

  if (v6[2] != a2)
  {
    goto LABEL_17;
  }

  return 0;
}

void sub_23A462054(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  std::unique_ptr<std::__hash_node<std::__hash_value_type<unsigned long long,std::unique_ptr<Phase::StringPool>>,void *>,std::__hash_node_destructor<std::allocator<std::__hash_node<std::__hash_value_type<unsigned long long,std::unique_ptr<Phase::StringPool>>,void *>>>>::~unique_ptr[abi:ne200100](va);
  _Unwind_Resume(a1);
}

uint64_t std::unique_ptr<std::__hash_node<std::__hash_value_type<unsigned long long,std::unique_ptr<Phase::StringPool>>,void *>,std::__hash_node_destructor<std::allocator<std::__hash_node<std::__hash_value_type<unsigned long long,std::unique_ptr<Phase::StringPool>>,void *>>>>::~unique_ptr[abi:ne200100](uint64_t a1)
{
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    if (*(a1 + 16) == 1)
    {
      std::unique_ptr<Phase::StringPool>::~unique_ptr[abi:ne200100](v2 + 3);
    }

    operator delete(v2);
  }

  return a1;
}

uint64_t std::__hash_table<std::__hash_value_type<unsigned long long,PHASEAsset * {__strong}>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,PHASEAsset * {__strong}>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,PHASEAsset * {__strong}>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,PHASEAsset * {__strong}>>>::__emplace_unique_key_args<unsigned long long,unsigned long long &,PHASEDataBundleAsset * {__strong}&>(void *a1, unint64_t a2)
{
  v2 = a1[1];
  if (!*&v2)
  {
    goto LABEL_18;
  }

  v3 = vcnt_s8(v2);
  v3.i16[0] = vaddlv_u8(v3);
  if (v3.u32[0] > 1uLL)
  {
    v4 = a2;
    if (*&v2 <= a2)
    {
      v4 = a2 % *&v2;
    }
  }

  else
  {
    v4 = (*&v2 - 1) & a2;
  }

  v5 = *(*a1 + 8 * v4);
  if (!v5 || (v6 = *v5) == 0)
  {
LABEL_18:
    operator new();
  }

  while (1)
  {
    v7 = v6[1];
    if (v7 == a2)
    {
      break;
    }

    if (v3.u32[0] > 1uLL)
    {
      if (v7 >= *&v2)
      {
        v7 %= *&v2;
      }
    }

    else
    {
      v7 &= *&v2 - 1;
    }

    if (v7 != v4)
    {
      goto LABEL_18;
    }

LABEL_17:
    v6 = *v6;
    if (!v6)
    {
      goto LABEL_18;
    }
  }

  if (v6[2] != a2)
  {
    goto LABEL_17;
  }

  return 0;
}

void sub_23A46230C(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  std::unique_ptr<std::__hash_node<std::__hash_value_type<unsigned long long,void({block_pointer} {__strong})(NSUUID *,NSUUID *,BOOL)>,void *>,std::__hash_node_destructor<std::allocator<std::__hash_node<std::__hash_value_type<unsigned long long,void({block_pointer} {__strong})(NSUUID *,NSUUID *,BOOL)>,void *>>>>::~unique_ptr[abi:ne200100](va);
  _Unwind_Resume(a1);
}

uint64_t *std::__hash_table<std::__hash_value_type<unsigned long long,std::unique_ptr<Phase::StringPool>>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,std::unique_ptr<Phase::StringPool>>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,std::unique_ptr<Phase::StringPool>>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,std::unique_ptr<Phase::StringPool>>>>::__erase_unique<unsigned long long>(uint64_t *result, unint64_t a2)
{
  v4 = result[1];
  if (v4)
  {
    v5 = vcnt_s8(v4);
    v5.i16[0] = vaddlv_u8(v5);
    if (v5.u32[0] > 1uLL)
    {
      v6 = a2;
      if (*&v4 <= a2)
      {
        v6 = a2 % *&v4;
      }
    }

    else
    {
      v6 = (*&v4 - 1) & a2;
    }

    v22 = v2;
    v23 = v3;
    v7 = *result;
    v8 = *(*result + 8 * v6);
    if (v8)
    {
      v9 = *v8;
      if (v9)
      {
        v10 = *&v4 - 1;
        do
        {
          v11 = v9[1];
          if (v11 == a2)
          {
            if (v9[2] == a2)
            {
              v12 = v9[1];
              if (v5.u32[0] > 1uLL)
              {
                if (v12 >= *&v4)
                {
                  v12 %= *&v4;
                }
              }

              else
              {
                v12 &= v10;
              }

              v13 = *(v7 + 8 * v12);
              do
              {
                v14 = v13;
                v13 = *v13;
              }

              while (v13 != v9);
              if (v14 == result + 2)
              {
                goto LABEL_36;
              }

              v15 = v14[1];
              if (v5.u32[0] > 1uLL)
              {
                if (v15 >= *&v4)
                {
                  v15 %= *&v4;
                }
              }

              else
              {
                v15 &= v10;
              }

              if (v15 != v12)
              {
LABEL_36:
                if (!*v9)
                {
                  goto LABEL_37;
                }

                v16 = *(*v9 + 8);
                if (v5.u32[0] > 1uLL)
                {
                  if (v16 >= *&v4)
                  {
                    v16 %= *&v4;
                  }
                }

                else
                {
                  v16 &= v10;
                }

                if (v16 != v12)
                {
LABEL_37:
                  *(v7 + 8 * v12) = 0;
                }
              }

              v17 = *v9;
              if (*v9)
              {
                v18 = *(v17 + 8);
                if (v5.u32[0] > 1uLL)
                {
                  if (v18 >= *&v4)
                  {
                    v18 %= *&v4;
                  }
                }

                else
                {
                  v18 &= v10;
                }

                if (v18 != v12)
                {
                  *(*result + 8 * v18) = v14;
                  v17 = *v9;
                }
              }

              *v14 = v17;
              *v9 = 0;
              --result[3];
              v19[0] = v9;
              v19[1] = result;
              v20 = 1;
              memset(v21, 0, sizeof(v21));
              return std::unique_ptr<std::__hash_node<std::__hash_value_type<unsigned long long,std::unique_ptr<Phase::StringPool>>,void *>,std::__hash_node_destructor<std::allocator<std::__hash_node<std::__hash_value_type<unsigned long long,std::unique_ptr<Phase::StringPool>>,void *>>>>::~unique_ptr[abi:ne200100](v19);
            }
          }

          else
          {
            if (v5.u32[0] > 1uLL)
            {
              if (v11 >= *&v4)
              {
                v11 %= *&v4;
              }
            }

            else
            {
              v11 &= v10;
            }

            if (v11 != v6)
            {
              return result;
            }
          }

          v9 = *v9;
        }

        while (v9);
      }
    }
  }

  return result;
}

uint64_t Phase::Commandable<128,Phase::LockFreeQueueMPSC>::CallAsync<Phase::GlobalMetaParameterManager,BOOL,unsigned long long,Phase::InputMetaParamType,Phase::MetaParamValue,double>(uint64_t a1, uint64_t a2, int a3, uint64_t a4, double a5)
{
  v31 = *MEMORY[0x277D85DE8];
  if (*(a1 + 16) <= 0)
  {
    v15 = **(a1 + 24);
    if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315394;
      v24 = "Commandable.hpp";
      v25 = 1024;
      v26 = 132;
      _os_log_impl(&dword_23A302000, v15, OS_LOG_TYPE_ERROR, "%25s:%-5d PRECONDITION: pQueueId >= 0 && pQueueId < mQueueCount is false.", buf, 0x12u);
    }

    exception = __cxa_allocate_exception(0x10uLL);
    std::domain_error::domain_error[abi:ne200100](exception, "PRECONDITION: pQueueId >= 0 && pQueueId < mQueueCount is false.");
  }

  v10 = **(a1 + 8);
  v22 = 0;
  v21 = 1;
  v11 = Phase::LockFreeQueueMPSC::GetWriteBuffer(v10, 64, &v22, &v21);
  if (!v11)
  {
    Instance = Phase::Logger::GetInstance(0);
    Phase::Logger::DumpTailspinWithThrottleAsync(Instance, "CommandQueue unable to retrieve write buffer; buffer is full, unable to grow.");
    v18 = **(v10 + 48);
    v19 = v18;
    if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315394;
      v24 = "CommandQueue.hpp";
      v25 = 1024;
      v26 = 100;
      _os_log_impl(&dword_23A302000, v18, OS_LOG_TYPE_ERROR, "%25s:%-5d EXCEPTION (std::runtime_error) [true is true]: CommandQueue unable to retrieve write buffer; buffer is full, unable to grow.", buf, 0x12u);
    }

    v20 = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(v20, "CommandQueue unable to retrieve write buffer; buffer is full, unable to grow.");
  }

  if (v21)
  {
    v12 = **(v10 + 48);
    v13 = v12;
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEBUG))
    {
      *buf = 136315906;
      v24 = "CommandQueue.hpp";
      v25 = 1024;
      v26 = 89;
      v27 = 2048;
      v28 = v22;
      v29 = 2048;
      v30 = 64;
      _os_log_impl(&dword_23A302000, v12, OS_LOG_TYPE_DEBUG, "%25s:%-5d Warning: CommandQueue grew buffer to %zu bytes to accommodate extra %zu bytes - this usually means the system is under load or the command queue is too small.", buf, 0x26u);
    }
  }

  *v11 = &unk_284D35CE8;
  *(v11 + 8) = a1;
  *(v11 + 16) = Phase::GlobalMetaParameterManager::SetGlobalMetaParameter;
  *(v11 + 24) = 0;
  *(v11 + 32) = a2;
  *(v11 + 40) = a3;
  *(v11 + 48) = a4;
  *(v11 + 56) = a5;
  result = Phase::LockFreeQueueSPSC::CommitBytes(v10, 64);
  atomic_store(0, (v10 + 40));
  return result;
}

void sub_23A462804(_Unwind_Exception *exception_object, int a2)
{
  if (a2)
  {
    __cxa_free_exception(v3);
    __cxa_begin_catch(exception_object);
    Phase::Commandable<128,Phase::LockFreeQueueMPSC>::LogOverflow(v2);
    __cxa_end_catch();
    JUMPOUT(0x23A46266CLL);
  }

  _Unwind_Resume(exception_object);
}

uint64_t Phase::LambdaFunction<BOOL Phase::Commandable<128,Phase::LockFreeQueueMPSC>::CallAsync<Phase::GlobalMetaParameterManager,BOOL,unsigned long long,Phase::InputMetaParamType,Phase::MetaParamValue,double>(int,BOOL (Phase::GlobalMetaParameterManager::*)(unsigned long long,Phase::InputMetaParamType,Phase::MetaParamValue,double),unsigned long long,Phase::InputMetaParamType,Phase::MetaParamValue,double)::{lambda(void)#1},void>::operator()(uint64_t a1)
{
  v1 = *(a1 + 16);
  v2 = *(a1 + 24);
  v3 = (*(a1 + 8) + (v2 >> 1));
  if (v2)
  {
    v1 = *(*v3 + v1);
  }

  return v1(v3, *(a1 + 32), *(a1 + 40), *(a1 + 48), *(a1 + 56));
}

uint64_t (**std::any_cast[abi:ne200100]<Phase::Controller::AssetUnloader * const>(uint64_t (**result)(uint64_t, void, void, void, void *)))(uint64_t, void, void, void, void *)
{
  if (result)
  {
    if (*result)
    {
      return (*result)(3, result, 0, 0, &std::__any_imp::__unique_typeinfo<Phase::Controller::AssetUnloader *>::__id);
    }

    else
    {
      return 0;
    }
  }

  return result;
}

void sub_23A463374(_Unwind_Exception *a1)
{
  objc_sync_exit(v1);

  _Unwind_Resume(a1);
}

void sub_23A4636B0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, objc_super a9)
{
  a9.super_class = PHASEContext;
  [(_Unwind_Exception *)&a9 dealloc];
  _Unwind_Resume(a1);
}

void sub_23A463BB4(_Unwind_Exception *a1)
{
  v4 = v3;

  _Unwind_Resume(a1);
}

void sub_23A464774(_Unwind_Exception *a1)
{
  objc_sync_exit(v1);

  _Unwind_Resume(a1);
}

void sub_23A466BFC(_Unwind_Exception *exception_object, int a2)
{
  if (a2)
  {
    __cxa_free_exception(v3);
    __cxa_begin_catch(exception_object);
    Phase::Commandable<128,Phase::LockFreeQueueMPSC>::LogOverflow(v2);
    __cxa_end_catch();
    JUMPOUT(0x23A466B08);
  }

  _Unwind_Resume(exception_object);
}

void sub_23A466EEC(_Unwind_Exception *exception_object, int a2)
{
  if (a2)
  {
    __cxa_free_exception(v3);
    __cxa_begin_catch(exception_object);
    Phase::Commandable<128,Phase::LockFreeQueueMPSC>::LogOverflow(v2);
    __cxa_end_catch();
    JUMPOUT(0x23A466DFCLL);
  }

  _Unwind_Resume(exception_object);
}

void GetDefaultClientEngineMode(void)
{
  {
    if (v0)
    {
      GetDefaultClientEngineMode(void)::$_0::operator()(v0);
    }
  }
}

void sub_23A467EA0(_Unwind_Exception *a1)
{
  objc_sync_exit(v1);

  _Unwind_Resume(a1);
}

PHASEEngineImpl *std::unique_ptr<PHASEEngineImpl>::reset[abi:ne200100](PHASEEngineImpl **a1, PHASEEngineImpl *a2)
{
  result = *a1;
  *a1 = a2;
  if (result)
  {
    PHASEEngineImpl::~PHASEEngineImpl(result);
  }

  return result;
}

void sub_23A467F9C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, objc_super a9)
{
  objc_sync_exit(v9);

  a9.receiver = v9;
  a9.super_class = PHASEEngine;
  [(_Unwind_Exception *)&a9 dealloc];
  _Unwind_Resume(a1);
}

void sub_23A4680F8(_Unwind_Exception *a1)
{
  objc_sync_exit(v1);

  _Unwind_Resume(a1);
}

void sub_23A468204(_Unwind_Exception *a1)
{
  objc_sync_exit(v1);

  _Unwind_Resume(a1);
}

void sub_23A468314(_Unwind_Exception *a1)
{
  objc_sync_exit(v1);

  _Unwind_Resume(a1);
}

void sub_23A468EE4(_Unwind_Exception *a1)
{
  objc_sync_exit(v1);

  _Unwind_Resume(a1);
}

void sub_23A4692EC(_Unwind_Exception *a1)
{
  objc_sync_exit(v2);

  _Unwind_Resume(a1);
}

void sub_23A4699CC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, void *a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, void *__p, uint64_t a29, uint64_t a30, void *a31, uint64_t a32, uint64_t a33, void *a34, uint64_t a35, uint64_t a36, void *a37, uint64_t a38, uint64_t a39, void *a40, uint64_t a41)
{
  if (__p)
  {
    operator delete(__p);
  }

  if (a31)
  {
    operator delete(a31);
  }

  if (a34)
  {
    operator delete(a34);
  }

  if (a37)
  {
    operator delete(a37);
  }

  if (a40)
  {
    operator delete(a40);
  }

  _Unwind_Resume(a1);
}

void Phase::GetValuesFromFrequencyResponse<std::__wrap_iter<float *>,std::__wrap_iter<float *>,float const*,float *,&float Phase::Identity<float>,&float Phase::Identity<float>>(float *a1, float *a2, uint64_t a3, float *a4, float *a5, uint64_t a6)
{
  v10 = a2 - a1;
  if (a2 != a1)
  {
    v11 = a1 + 1;
    while (v11 != a2)
    {
      v13 = *(v11 - 1);
      v12 = *v11++;
      if (v12 < v13)
      {
        v14 = v11 - 1;
        goto LABEL_7;
      }
    }

    v14 = a2;
LABEL_7:
    if (v14 != a2)
    {
      __assert_rtn("GetValuesFromFrequencyResponse", "FrequencyResponse.hpp", 262, "std::is_sorted(inFrequenciesFirst, inFrequenciesLast)");
    }
  }

  if (a4 != a5)
  {
    for (i = a4 + 1; i != a5; ++i)
    {
      v17 = *(i - 1);
      v16 = *i;
      if (v16 < v17)
      {
        __assert_rtn("GetValuesFromFrequencyResponse", "FrequencyResponse.hpp", 263, "std::is_sorted(inOutputFrequenciesFirst, inOutputFrequenciesLast)");
      }
    }
  }

  Phase::GetBandsFromCenterFrequencies<std::__wrap_iter<float *>,float>(a1, a2, v51, 22000.0);
  Phase::GetBandsFromCenterFrequencies<float const*,float>(a4, a5, v50, 22000.0);
  v49 = 0.0;
  v18 = a5 - a4;
  v46 = 0;
  v47 = 0;
  v48 = 0;
  __p = 0;
  v44 = 0;
  v45 = 0;
  v40 = 0;
  v41 = 0;
  v42 = 0;
  if (v18 > 0)
  {
    v19 = 0;
    v20 = 0;
    v21 = 0;
    v22 = 0;
    v23 = v10 >> 2;
    do
    {
      v24 = (v50[0] + 8 * v22);
      v25 = *v24;
      v26 = v24[1];
      v47 = v46;
      v44 = v20;
      v41 = v19;
      v39 = v21;
      if (v21 < v23)
      {
        v27 = v21;
        while (1)
        {
          v28.i32[0] = *(v51[0] + v27);
          v28.i32[1] = HIDWORD(*(v50[0] + v22));
          v29.i32[0] = *(v50[0] + v22);
          v29.i32[1] = HIDWORD(*(v51[0] + v27));
          v30 = vbsl_s8(vcgt_f32(v29, v28), *(v50[0] + 8 * v22), *(v51[0] + 8 * v27));
          v49 = fmaxf(vsub_f32(vdup_lane_s32(v30, 1), v30).f32[0], 0.0);
          if (v49 == 0.0)
          {
            break;
          }

          std::vector<float>::push_back[abi:ne200100](&v46, &v49);
          std::vector<long>::push_back[abi:ne200100](&__p, &v39);
          if (v39 == v23 - 1)
          {
            v21 = v39;
          }

          v27 = v39 + 1;
          v39 = v27;
          if (v27 >= v23)
          {
            goto LABEL_23;
          }
        }

        v21 = v27 - (*(v51[0] + 2 * v27) != *(v50[0] + 2 * v22 + 1));
      }

LABEL_23:
      v20 = __p;
      v31 = 0.0;
      if (v44 == __p)
      {
        v34 = 0.0;
      }

      else
      {
        v32 = 0;
        v33 = v26 - v25;
        v34 = 0.0;
        do
        {
          v35 = *(v46 + v32) / v33;
          *&v39 = v35 * *(a3 + 4 * *&v20[8 * v32]);
          std::vector<float>::push_back[abi:ne200100](&v40, &v39);
          v34 = v34 + v35;
          ++v32;
          v20 = __p;
        }

        while (v32 < (v44 - __p) >> 3);
      }

      v19 = v40;
      if (v40 != v41)
      {
        v36 = 0.0;
        v37 = v40;
        do
        {
          v38 = *v37++;
          v36 = v36 + v38;
        }

        while (v37 != v41);
        v31 = v36;
      }

      *(a6 + 4 * v22++) = v31 / v34;
    }

    while (v22 != v18);
    if (v19)
    {
      v41 = v19;
      operator delete(v19);
      v20 = __p;
    }

    if (v20)
    {
      v44 = v20;
      operator delete(v20);
    }
  }

  if (v46)
  {
    v47 = v46;
    operator delete(v46);
  }

  if (v50[0])
  {
    v50[1] = v50[0];
    operator delete(v50[0]);
  }

  if (v51[0])
  {
    v51[1] = v51[0];
    operator delete(v51[0]);
  }
}

void sub_23A469DBC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *a11, uint64_t a12, uint64_t a13, void *a14, uint64_t a15, uint64_t a16, void *a17, uint64_t a18, uint64_t a19, uint64_t a20, void *a21, uint64_t a22, uint64_t a23, void *__p, uint64_t a25)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

__CFString *GetReverbPresetName(uint64_t a1)
{
  result = 0;
  v42 = *MEMORY[0x277D85DE8];
  if (a1 <= 1917152824)
  {
    if (a1 > 1917137203)
    {
      if (a1 > 1917152819)
      {
        if (a1 <= 1917152821)
        {
          if (a1 == 1917152820)
          {
            v37 = **(Phase::Logger::GetInstance(0) + 448);
            if (os_log_type_enabled(v37, OS_LOG_TYPE_DEFAULT))
            {
              v38 = 136315394;
              v39 = "PHASEEngine.mm";
              v40 = 1024;
              v41 = 270;
              _os_log_impl(&dword_23A302000, v37, OS_LOG_TYPE_DEFAULT, "%25s:%-5d Setting reverb to Environment04", &v38, 0x12u);
            }

            return @"Environment04";
          }

          else
          {
            v18 = **(Phase::Logger::GetInstance(0) + 448);
            if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
            {
              v38 = 136315394;
              v39 = "PHASEEngine.mm";
              v40 = 1024;
              v41 = 277;
              _os_log_impl(&dword_23A302000, v18, OS_LOG_TYPE_DEFAULT, "%25s:%-5d Setting reverb to Environment05", &v38, 0x12u);
            }

            return @"Environment05";
          }
        }

        else if (a1 == 1917152822)
        {
          v32 = **(Phase::Logger::GetInstance(0) + 448);
          if (os_log_type_enabled(v32, OS_LOG_TYPE_DEFAULT))
          {
            v38 = 136315394;
            v39 = "PHASEEngine.mm";
            v40 = 1024;
            v41 = 284;
            _os_log_impl(&dword_23A302000, v32, OS_LOG_TYPE_DEFAULT, "%25s:%-5d Setting reverb to Environment06", &v38, 0x12u);
          }

          return @"Environment06";
        }

        else if (a1 == 1917152823)
        {
          v29 = **(Phase::Logger::GetInstance(0) + 448);
          if (os_log_type_enabled(v29, OS_LOG_TYPE_DEFAULT))
          {
            v38 = 136315394;
            v39 = "PHASEEngine.mm";
            v40 = 1024;
            v41 = 291;
            _os_log_impl(&dword_23A302000, v29, OS_LOG_TYPE_DEFAULT, "%25s:%-5d Setting reverb to Environment07", &v38, 0x12u);
          }

          return @"Environment07";
        }

        else
        {
          v7 = **(Phase::Logger::GetInstance(0) + 448);
          if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
          {
            v38 = 136315394;
            v39 = "PHASEEngine.mm";
            v40 = 1024;
            v41 = 298;
            _os_log_impl(&dword_23A302000, v7, OS_LOG_TYPE_DEFAULT, "%25s:%-5d Setting reverb to Environment08", &v38, 0x12u);
          }

          return @"Environment08";
        }
      }

      if (a1 > 1917152817)
      {
        if (a1 == 1917152818)
        {
          v24 = **(Phase::Logger::GetInstance(0) + 448);
          if (os_log_type_enabled(v24, OS_LOG_TYPE_DEFAULT))
          {
            v38 = 136315394;
            v39 = "PHASEEngine.mm";
            v40 = 1024;
            v41 = 256;
            _os_log_impl(&dword_23A302000, v24, OS_LOG_TYPE_DEFAULT, "%25s:%-5d Setting reverb to Environment02", &v38, 0x12u);
          }

          return @"Environment02";
        }

        else
        {
          v14 = **(Phase::Logger::GetInstance(0) + 448);
          if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
          {
            v38 = 136315394;
            v39 = "PHASEEngine.mm";
            v40 = 1024;
            v41 = 263;
            _os_log_impl(&dword_23A302000, v14, OS_LOG_TYPE_DEFAULT, "%25s:%-5d Setting reverb to Environment03", &v38, 0x12u);
          }

          return @"Environment03";
        }
      }

      if (a1 != 1917137204)
      {
        if (a1 == 1917152817)
        {
          v11 = **(Phase::Logger::GetInstance(0) + 448);
          if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
          {
            v38 = 136315394;
            v39 = "PHASEEngine.mm";
            v40 = 1024;
            v41 = 249;
            _os_log_impl(&dword_23A302000, v11, OS_LOG_TYPE_DEFAULT, "%25s:%-5d Setting reverb to Environment01", &v38, 0x12u);
          }

          return @"Environment01";
        }

        return result;
      }

      v4 = **(Phase::Logger::GetInstance(0) + 448);
      if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
      {
        v38 = 136315394;
        v39 = "PHASEEngine.mm";
        v40 = 1024;
        v41 = 337;
        v5 = "%25s:%-5d Setting reverb to LargeRoom. In the future, return Environment14";
        goto LABEL_138;
      }
    }

    else
    {
      if (a1 <= 1917023335)
      {
        if (a1 > 1917020525)
        {
          if (a1 == 1917020526)
          {
            v23 = **(Phase::Logger::GetInstance(0) + 448);
            if (os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT))
            {
              v38 = 136315394;
              v39 = "PHASEEngine.mm";
              v40 = 1024;
              v41 = 242;
              _os_log_impl(&dword_23A302000, v23, OS_LOG_TYPE_DEFAULT, "%25s:%-5d Setting reverb to Cinema", &v38, 0x12u);
            }

            return @"Cinema";
          }

          else if (a1 == 1917022062)
          {
            v13 = **(Phase::Logger::GetInstance(0) + 448);
            if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
            {
              v38 = 136315394;
              v39 = "PHASEEngine.mm";
              v40 = 1024;
              v41 = 186;
              _os_log_impl(&dword_23A302000, v13, OS_LOG_TYPE_DEFAULT, "%25s:%-5d Setting reverb to ConcertHall", &v38, 0x12u);
            }

            return @"ConcertHall";
          }
        }

        else if (a1 == 1916890725)
        {
          v22 = **(Phase::Logger::GetInstance(0) + 448);
          if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
          {
            v38 = 136315394;
            v39 = "PHASEEngine.mm";
            v40 = 1024;
            v41 = 343;
            _os_log_impl(&dword_23A302000, v22, OS_LOG_TYPE_DEFAULT, "%25s:%-5d Setting reverb to Anechoic", &v38, 0x12u);
          }

          return @"Anechoic";
        }

        else if (a1 == 1916952948)
        {
          v10 = **(Phase::Logger::GetInstance(0) + 448);
          if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
          {
            v38 = 136315394;
            v39 = "PHASEEngine.mm";
            v40 = 1024;
            v41 = 228;
            _os_log_impl(&dword_23A302000, v10, OS_LOG_TYPE_DEFAULT, "%25s:%-5d Setting reverb to Bathroom", &v38, 0x12u);
          }

          return @"Bathroom";
        }

        return result;
      }

      if (a1 <= 1917137200)
      {
        if (a1 == 1917023336)
        {
          v36 = **(Phase::Logger::GetInstance(0) + 448);
          if (os_log_type_enabled(v36, OS_LOG_TYPE_DEFAULT))
          {
            v38 = 136315394;
            v39 = "PHASEEngine.mm";
            v40 = 1024;
            v41 = 95;
            _os_log_impl(&dword_23A302000, v36, OS_LOG_TYPE_DEFAULT, "%25s:%-5d Setting reverb to Cathedral", &v38, 0x12u);
          }

          return @"Cathedral";
        }

        else if (a1 == 1917137200)
        {
          v17 = **(Phase::Logger::GetInstance(0) + 448);
          if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
          {
            v38 = 136315394;
            v39 = "PHASEEngine.mm";
            v40 = 1024;
            v41 = 312;
            _os_log_impl(&dword_23A302000, v17, OS_LOG_TYPE_DEFAULT, "%25s:%-5d Setting reverb to Environment10", &v38, 0x12u);
          }

          return @"Environment10";
        }

        return result;
      }

      if (a1 == 1917137201)
      {
        v4 = **(Phase::Logger::GetInstance(0) + 448);
        if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
        {
          v38 = 136315394;
          v39 = "PHASEEngine.mm";
          v40 = 1024;
          v41 = 319;
          v5 = "%25s:%-5d Setting reverb to LargeRoom. In the future, return Environment11";
          goto LABEL_138;
        }
      }

      else
      {
        if (a1 == 1917137202)
        {
          v28 = **(Phase::Logger::GetInstance(0) + 448);
          if (os_log_type_enabled(v28, OS_LOG_TYPE_DEFAULT))
          {
            v38 = 136315394;
            v39 = "PHASEEngine.mm";
            v40 = 1024;
            v41 = 325;
            _os_log_impl(&dword_23A302000, v28, OS_LOG_TYPE_DEFAULT, "%25s:%-5d Setting reverb to Environment12", &v38, 0x12u);
          }

          return @"Environment12";
        }

        v4 = **(Phase::Logger::GetInstance(0) + 448);
        if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
        {
          v38 = 136315394;
          v39 = "PHASEEngine.mm";
          v40 = 1024;
          v41 = 331;
          v5 = "%25s:%-5d Setting reverb to LargeRoom. In the future, return Environment13";
LABEL_138:
          _os_log_impl(&dword_23A302000, v4, OS_LOG_TYPE_DEFAULT, v5, &v38, 0x12u);
        }
      }
    }

    return @"LargeRoom";
  }

  if (a1 > 1917612652)
  {
    if (a1 > 1917667378)
    {
      if (a1 <= 1917678444)
      {
        if (a1 == 1917667379)
        {
          v35 = **(Phase::Logger::GetInstance(0) + 448);
          if (os_log_type_enabled(v35, OS_LOG_TYPE_DEFAULT))
          {
            v38 = 136315394;
            v39 = "PHASEEngine.mm";
            v40 = 1024;
            v41 = 158;
            _os_log_impl(&dword_23A302000, v35, OS_LOG_TYPE_DEFAULT, "%25s:%-5d Setting reverb to MediumHall3", &v38, 0x12u);
          }

          return @"MediumHall3";
        }

        else if (a1 == 1917669997)
        {
          v16 = **(Phase::Logger::GetInstance(0) + 448);
          if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
          {
            v38 = 136315394;
            v39 = "PHASEEngine.mm";
            v40 = 1024;
            v41 = 165;
            _os_log_impl(&dword_23A302000, v16, OS_LOG_TYPE_DEFAULT, "%25s:%-5d Setting reverb to MediumRoom", &v38, 0x12u);
          }

          return @"MediumRoom";
        }
      }

      else
      {
        switch(a1)
        {
          case 1917678445:
            v31 = **(Phase::Logger::GetInstance(0) + 448);
            if (os_log_type_enabled(v31, OS_LOG_TYPE_DEFAULT))
            {
              v38 = 136315394;
              v39 = "PHASEEngine.mm";
              v40 = 1024;
              v41 = 207;
              _os_log_impl(&dword_23A302000, v31, OS_LOG_TYPE_DEFAULT, "%25s:%-5d Setting reverb to Museum", &v38, 0x12u);
            }

            return @"Museum";
          case 1917810036:
            v26 = **(Phase::Logger::GetInstance(0) + 448);
            if (os_log_type_enabled(v26, OS_LOG_TYPE_DEFAULT))
            {
              v38 = 136315394;
              v39 = "PHASEEngine.mm";
              v40 = 1024;
              v41 = 179;
              _os_log_impl(&dword_23A302000, v26, OS_LOG_TYPE_DEFAULT, "%25s:%-5d Setting reverb to Outside", &v38, 0x12u);
            }

            return @"Outside";
          case 1918063213:
            v8 = **(Phase::Logger::GetInstance(0) + 448);
            if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
            {
              v38 = 136315394;
              v39 = "PHASEEngine.mm";
              v40 = 1024;
              v41 = 172;
              _os_log_impl(&dword_23A302000, v8, OS_LOG_TYPE_DEFAULT, "%25s:%-5d Setting reverb to SmallRoom", &v38, 0x12u);
            }

            return @"SmallRoom";
        }
      }
    }

    else if (a1 <= 1917666151)
    {
      if (a1 == 1917612653)
      {
        v34 = **(Phase::Logger::GetInstance(0) + 448);
        if (os_log_type_enabled(v34, OS_LOG_TYPE_DEFAULT))
        {
          v38 = 136315394;
          v39 = "PHASEEngine.mm";
          v40 = 1024;
          v41 = 235;
          _os_log_impl(&dword_23A302000, v34, OS_LOG_TYPE_DEFAULT, "%25s:%-5d Setting reverb to ListeningRoom", &v38, 0x12u);
        }

        return @"ListeningRoom";
      }

      else if (a1 == 1917613682)
      {
        v15 = **(Phase::Logger::GetInstance(0) + 448);
        if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
        {
          v38 = 136315394;
          v39 = "PHASEEngine.mm";
          v40 = 1024;
          v41 = 214;
          _os_log_impl(&dword_23A302000, v15, OS_LOG_TYPE_DEFAULT, "%25s:%-5d Setting reverb to LivingRoom", &v38, 0x12u);
        }

        return @"LivingRoom";
      }
    }

    else
    {
      switch(a1)
      {
        case 1917666152:
          v30 = **(Phase::Logger::GetInstance(0) + 448);
          if (os_log_type_enabled(v30, OS_LOG_TYPE_DEFAULT))
          {
            v38 = 136315394;
            v39 = "PHASEEngine.mm";
            v40 = 1024;
            v41 = 137;
            _os_log_impl(&dword_23A302000, v30, OS_LOG_TYPE_DEFAULT, "%25s:%-5d Setting reverb to MediumChamber", &v38, 0x12u);
          }

          return @"MediumChamber";
        case 1917667377:
          v25 = **(Phase::Logger::GetInstance(0) + 448);
          if (os_log_type_enabled(v25, OS_LOG_TYPE_DEFAULT))
          {
            v38 = 136315394;
            v39 = "PHASEEngine.mm";
            v40 = 1024;
            v41 = 144;
            _os_log_impl(&dword_23A302000, v25, OS_LOG_TYPE_DEFAULT, "%25s:%-5d Setting reverb to MediumHall", &v38, 0x12u);
          }

          return @"MediumHall";
        case 1917667378:
          v3 = **(Phase::Logger::GetInstance(0) + 448);
          if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
          {
            v38 = 136315394;
            v39 = "PHASEEngine.mm";
            v40 = 1024;
            v41 = 151;
            _os_log_impl(&dword_23A302000, v3, OS_LOG_TYPE_DEFAULT, "%25s:%-5d Setting reverb to MediumHall2", &v38, 0x12u);
          }

          return @"MediumHall2";
      }
    }

    return result;
  }

  if (a1 <= 1917601841)
  {
    if (a1 > 1917600615)
    {
      if (a1 == 1917600616)
      {
        v20 = **(Phase::Logger::GetInstance(0) + 448);
        if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
        {
          v38 = 136315394;
          v39 = "PHASEEngine.mm";
          v40 = 1024;
          v41 = 102;
          _os_log_impl(&dword_23A302000, v20, OS_LOG_TYPE_DEFAULT, "%25s:%-5d Setting reverb to LargeChamber", &v38, 0x12u);
        }

        return @"LargeChamber";
      }

      else if (a1 == 1917601841)
      {
        v12 = **(Phase::Logger::GetInstance(0) + 448);
        if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
        {
          v38 = 136315394;
          v39 = "PHASEEngine.mm";
          v40 = 1024;
          v41 = 109;
          _os_log_impl(&dword_23A302000, v12, OS_LOG_TYPE_DEFAULT, "%25s:%-5d Setting reverb to LargeHall", &v38, 0x12u);
        }

        return @"LargeHall";
      }
    }

    else if (a1 == 1917152825)
    {
      v19 = **(Phase::Logger::GetInstance(0) + 448);
      if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
      {
        v38 = 136315394;
        v39 = "PHASEEngine.mm";
        v40 = 1024;
        v41 = 305;
        _os_log_impl(&dword_23A302000, v19, OS_LOG_TYPE_DEFAULT, "%25s:%-5d Setting reverb to Environment09", &v38, 0x12u);
      }

      return @"Environment09";
    }

    else if (a1 == 1917547630)
    {
      v9 = **(Phase::Logger::GetInstance(0) + 448);
      if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
      {
        v38 = 136315394;
        v39 = "PHASEEngine.mm";
        v40 = 1024;
        v41 = 221;
        _os_log_impl(&dword_23A302000, v9, OS_LOG_TYPE_DEFAULT, "%25s:%-5d Setting reverb to Kitchen", &v38, 0x12u);
      }

      return @"Kitchen";
    }
  }

  else
  {
    if (a1 > 1917604401)
    {
      switch(a1)
      {
        case 1917604402:
          v27 = **(Phase::Logger::GetInstance(0) + 448);
          if (os_log_type_enabled(v27, OS_LOG_TYPE_DEFAULT))
          {
            v38 = 136315394;
            v39 = "PHASEEngine.mm";
            v40 = 1024;
            v41 = 123;
            _os_log_impl(&dword_23A302000, v27, OS_LOG_TYPE_DEFAULT, "%25s:%-5d Setting reverb to LargeRoom2", &v38, 0x12u);
          }

          return @"LargeRoom2";
        case 1917604403:
          v21 = **(Phase::Logger::GetInstance(0) + 448);
          if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
          {
            v38 = 136315394;
            v39 = "PHASEEngine.mm";
            v40 = 1024;
            v41 = 193;
            _os_log_impl(&dword_23A302000, v21, OS_LOG_TYPE_DEFAULT, "%25s:%-5d Setting reverb to LargeRoom3", &v38, 0x12u);
          }

          return @"LargeRoom3";
        case 1917604404:
          v6 = **(Phase::Logger::GetInstance(0) + 448);
          if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
          {
            v38 = 136315394;
            v39 = "PHASEEngine.mm";
            v40 = 1024;
            v41 = 200;
            _os_log_impl(&dword_23A302000, v6, OS_LOG_TYPE_DEFAULT, "%25s:%-5d Setting reverb to LargeRoom4", &v38, 0x12u);
          }

          return @"LargeRoom4";
      }

      return result;
    }

    if (a1 != 1917601842)
    {
      if (a1 != 1917604401)
      {
        return result;
      }

      v4 = **(Phase::Logger::GetInstance(0) + 448);
      if (!os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
      {
        return @"LargeRoom";
      }

      v38 = 136315394;
      v39 = "PHASEEngine.mm";
      v40 = 1024;
      v41 = 116;
      v5 = "%25s:%-5d Setting reverb to LargeRoom";
      goto LABEL_138;
    }

    v33 = **(Phase::Logger::GetInstance(0) + 448);
    if (os_log_type_enabled(v33, OS_LOG_TYPE_DEFAULT))
    {
      v38 = 136315394;
      v39 = "PHASEEngine.mm";
      v40 = 1024;
      v41 = 130;
      _os_log_impl(&dword_23A302000, v33, OS_LOG_TYPE_DEFAULT, "%25s:%-5d Setting reverb to LargeHall2", &v38, 0x12u);
    }

    return @"LargeHall2";
  }

  return result;
}

void sub_23A46C1F8(_Unwind_Exception *exception_object, int a2)
{
  if (a2)
  {
    __cxa_free_exception(v3);
    __cxa_begin_catch(exception_object);
    Phase::Commandable<128,Phase::LockFreeQueueMPSC>::LogOverflow(v2);
    __cxa_end_catch();
    JUMPOUT(0x23A46C0FCLL);
  }

  _Unwind_Resume(exception_object);
}

void sub_23A46C41C(_Unwind_Exception *a1)
{
  objc_sync_exit(v1);

  _Unwind_Resume(a1);
}

void sub_23A46C4DC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id obj)
{
  objc_sync_exit(obj);

  _Unwind_Resume(a1);
}

void sub_23A46C570(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id obj)
{
  objc_sync_exit(obj);

  _Unwind_Resume(a1);
}

void sub_23A46C694(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id obj)
{
  objc_sync_exit(obj);

  _Unwind_Resume(a1);
}

void sub_23A46C9C0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id a10)
{
  objc_sync_exit(v10);

  _Unwind_Resume(a1);
}

void sub_23A46CAD0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id a10)
{
  objc_sync_exit(v10);

  _Unwind_Resume(a1);
}

void sub_23A46CBE0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id a10)
{
  objc_sync_exit(v10);

  _Unwind_Resume(a1);
}

void GetDefaultClientEngineMode(void)::$_0::operator()(Phase::Logger *a1)
{
  v10 = *MEMORY[0x277D85DE8];
  v1 = **(Phase::Logger::GetInstance(a1) + 448);
  if (os_log_type_enabled(v1, OS_LOG_TYPE_DEBUG))
  {
    v2 = 136315906;
    v3 = "PHASEEngine.mm";
    v4 = 1024;
    v5 = 441;
    v6 = 2080;
    v7 = "";
    v8 = 2080;
    v9 = "default";
    _os_log_impl(&dword_23A302000, v1, OS_LOG_TYPE_DEBUG, "%25s:%-5d Phase %smode = %s", &v2, 0x26u);
  }
}

void Phase::GetValuesFromFrequencyResponse<std::__wrap_iter<float *>,std::__wrap_iter<float *>,float const*,float *,&float Phase::DecibelsToEnergy<float>,&float Phase::EnergyToDecibels<float>>(float *a1, float *a2, uint64_t a3, float *a4, float *a5, uint64_t a6)
{
  v10 = a2 - a1;
  if (a2 != a1)
  {
    v11 = a1 + 1;
    while (v11 != a2)
    {
      v13 = *(v11 - 1);
      v12 = *v11++;
      if (v12 < v13)
      {
        v14 = v11 - 1;
        goto LABEL_7;
      }
    }

    v14 = a2;
LABEL_7:
    if (v14 != a2)
    {
      __assert_rtn("GetValuesFromFrequencyResponse", "FrequencyResponse.hpp", 262, "std::is_sorted(inFrequenciesFirst, inFrequenciesLast)");
    }
  }

  if (a4 != a5)
  {
    for (i = a4 + 1; i != a5; ++i)
    {
      v17 = *(i - 1);
      v16 = *i;
      if (v16 < v17)
      {
        __assert_rtn("GetValuesFromFrequencyResponse", "FrequencyResponse.hpp", 263, "std::is_sorted(inOutputFrequenciesFirst, inOutputFrequenciesLast)");
      }
    }
  }

  Phase::GetBandsFromCenterFrequencies<std::__wrap_iter<float *>,float>(a1, a2, v52, 22000.0);
  Phase::GetBandsFromCenterFrequencies<float const*,float>(a4, a5, v51, 22000.0);
  v50 = 0.0;
  v18 = a5 - a4;
  __p = 0;
  v48 = 0;
  v49 = 0;
  v44 = 0;
  v45 = 0;
  v46 = 0;
  v41 = 0;
  v42 = 0;
  v43 = 0;
  if (v18 > 0)
  {
    v19 = 0;
    v20 = 0;
    v21 = 0;
    v22 = 0;
    v23 = v10 >> 2;
    do
    {
      v24 = (v51[0] + 8 * v22);
      v25 = *v24;
      v26 = v24[1];
      v48 = __p;
      v45 = v20;
      v42 = v19;
      v40 = v21;
      if (v21 < v23)
      {
        v27 = v21;
        while (1)
        {
          v28.i32[0] = *(v52[0] + v27);
          v28.i32[1] = HIDWORD(*(v51[0] + v22));
          v29.i32[0] = *(v51[0] + v22);
          v29.i32[1] = HIDWORD(*(v52[0] + v27));
          v30 = vbsl_s8(vcgt_f32(v29, v28), *(v51[0] + 8 * v22), *(v52[0] + 8 * v27));
          v50 = fmaxf(vsub_f32(vdup_lane_s32(v30, 1), v30).f32[0], 0.0);
          if (v50 == 0.0)
          {
            break;
          }

          std::vector<float>::push_back[abi:ne200100](&__p, &v50);
          std::vector<long>::push_back[abi:ne200100](&v44, &v40);
          if (v40 == v23 - 1)
          {
            v21 = v40;
          }

          v27 = v40 + 1;
          v40 = v27;
          if (v27 >= v23)
          {
            goto LABEL_23;
          }
        }

        v21 = v27 - (*(v52[0] + 2 * v27) != *(v51[0] + 2 * v22 + 1));
      }

LABEL_23:
      v20 = v44;
      v31 = 0.0;
      if (v45 == v44)
      {
        v34 = 0.0;
      }

      else
      {
        v32 = 0;
        v33 = v26 - v25;
        v34 = 0.0;
        do
        {
          v35 = *(__p + v32) / v33;
          *&v40 = v35 * expf(((*(a3 + 4 * *&v20[8 * v32]) * 10.0) / 10.0) * 0.23026);
          std::vector<float>::push_back[abi:ne200100](&v41, &v40);
          v34 = v34 + v35;
          ++v32;
          v20 = v44;
        }

        while (v32 < (v45 - v44) >> 3);
      }

      v19 = v41;
      if (v41 != v42)
      {
        v36 = 0.0;
        v37 = v41;
        do
        {
          v38 = *v37++;
          v36 = v36 + v38;
        }

        while (v37 != v42);
        v31 = v36;
      }

      v39 = v31 / v34;
      if ((v31 / v34) <= 0.0)
      {
        v39 = COERCE_FLOAT(1);
      }

      *(a6 + 4 * v22++) = ((logf(v39) * 4.3429) / 10.0) * 10.0;
    }

    while (v22 != v18);
    if (v19)
    {
      v42 = v19;
      operator delete(v19);
      v20 = v44;
    }

    if (v20)
    {
      v45 = v20;
      operator delete(v20);
    }
  }

  if (__p)
  {
    v48 = __p;
    operator delete(__p);
  }

  if (v51[0])
  {
    v51[1] = v51[0];
    operator delete(v51[0]);
  }

  if (v52[0])
  {
    v52[1] = v52[0];
    operator delete(v52[0]);
  }
}

void sub_23A46DE44(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, uint64_t a12, void *a13, uint64_t a14, uint64_t a15, void *a16, uint64_t a17, uint64_t a18, uint64_t a19, void *a20, uint64_t a21, uint64_t a22, void *__p, uint64_t a24)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void PHASEEngineImpl::PHASEEngineImpl(uint64_t a1, void *a2, double a3, uint64_t a4, uint64_t a5, void *a6)
{
  v10 = a2;
  a6;
  objc_initWeak(a1, v10);
  *(a1 + 8) = a3;
  *(a1 + 16) = a5;
  *(a1 + 24) = 0;
  *(a1 + 32) = 0;
  *(a1 + 36) = 0;
  *(a1 + 40) = 0;
  *(a1 + 44) = 0;
  Phase::Controller::TaskManager::TaskManager((a1 + 48));
}

void sub_23A46EBF8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, uint64_t *a11, id **a12, id ***a13, Phase::SpatialModeler::ReverbPresetDatabase::Implementation ***a14, uint64_t *a15, uint64_t *a16, Phase::Controller::LoadBalancer **a17, uint64_t a18, void *a19, uint64_t *a20, char a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25)
{
  __cxa_free_exception(v26);
  std::vector<Phase::Controller::GeometryPermutation>::__destroy_vector::operator()[abi:ne200100](&a25);

  v30 = *(v25 + 504);
  *(v25 + 504) = 0;
  if (v30)
  {
    MEMORY[0x23EE864A0](v30, 0x1020C409C4962EBLL);
  }

  v31 = *(v25 + 488);
  *(v25 + 488) = 0;
  if (v31)
  {
    (*(*v31 + 8))(v31);
  }

  std::unique_ptr<Phase::TapSourceRegistry>::reset[abi:ne200100]((v27 + 272), 0);
  std::unique_ptr<Phase::Controller::ClientTapRegistryProxy>::reset[abi:ne200100](v28, 0);
  std::__hash_table<std::__hash_value_type<Phase::SpatialCategory,Phase::Controller::SpatialCategoryParameters>,std::__unordered_map_hasher<Phase::SpatialCategory,std::__hash_value_type<Phase::SpatialCategory,Phase::Controller::SpatialCategoryParameters>,std::hash<Phase::SpatialCategory>,std::equal_to<Phase::SpatialCategory>,true>,std::__unordered_map_equal<Phase::SpatialCategory,std::__hash_value_type<Phase::SpatialCategory,Phase::Controller::SpatialCategoryParameters>,std::equal_to<Phase::SpatialCategory>,std::hash<Phase::SpatialCategory>,true>,std::allocator<std::__hash_value_type<Phase::SpatialCategory,Phase::Controller::SpatialCategoryParameters>>>::~__hash_table(a10);
  v32 = *(v25 + 424);
  *(v25 + 424) = 0;
  if (v32)
  {
    (*(*v32 + 8))(v32);
  }

  v33 = *(v25 + 416);
  *(v25 + 416) = 0;
  if (v33)
  {
    (*(*v33 + 8))(v33);
  }

  v34 = *(v25 + 408);
  *(v25 + 408) = 0;
  if (v34)
  {
    (*(*v34 + 8))(v34);
  }

  std::unique_ptr<Phase::Dispatch::ClientTransactionManager>::reset[abi:ne200100](a20, 0);
  std::unique_ptr<Phase::ActionTreeManager>::reset[abi:ne200100]((v27 + 184), 0);
  v35 = *(v25 + 384);
  *(v25 + 384) = 0;
  if (v35)
  {
    (*(*v35 + 24))(v35);
  }

  std::unique_ptr<Phase::Controller::AssetUnloader>::reset[abi:ne200100]((v27 + 168), 0);
  v36 = *(v25 + 368);
  *(v25 + 368) = 0;
  if (v36)
  {
    (*(*v36 + 8))(v36);
  }

  v37 = *(v25 + 360);
  *(v25 + 360) = 0;
  if (v37)
  {
    (*(*v37 + 24))(v37);
  }

  std::unique_ptr<Phase::Controller::SharedEntityManager>::reset[abi:ne200100](a11, 0);
  std::unique_ptr<Phase::Controller::RoomCongruenceManager>::reset[abi:ne200100]((v27 + 136), 0);
  std::unique_ptr<Phase::Controller::SessionManager>::reset[abi:ne200100](a12, 0);
  std::unique_ptr<Phase::ActionTreeServerCommandProcessor>::reset[abi:ne200100]((v27 + 120), 0);
  std::unique_ptr<Phase::Controller::StatisticsDatabase>::reset[abi:ne200100](a13, 0);
  v38 = *(v25 + 312);
  *(v25 + 312) = 0;
  if (v38)
  {
    MEMORY[0x23EE864A0](v38, 0x1000C4077B8E174);
  }

  std::unique_ptr<Phase::SpatialModeler::ReverbPresetDatabase>::reset[abi:ne200100](a14, 0);
  v39 = *(v25 + 296);
  *(v25 + 296) = 0;
  if (v39)
  {
    (*(*v39 + 24))(v39);
  }

  v40 = *(v25 + 288);
  *(v25 + 288) = 0;
  if (v40)
  {
    (*(*v40 + 24))(v40);
  }

  v41 = *(v25 + 280);
  *(v25 + 280) = 0;
  if (v41)
  {
    (*(*v41 + 24))(v41);
  }

  std::unique_ptr<Phase::Controller::LoadBalancer>::reset[abi:ne200100](a17, 0);
  std::unique_ptr<Phase::Controller::VoiceManager>::reset[abi:ne200100]((v27 + 56), 0);
  v42 = *(v25 + 256);
  *(v25 + 256) = 0;
  if (v42)
  {
    MEMORY[0x23EE864A0](v42, 0x1000C405A0DE52CLL);
  }

  std::unique_ptr<Phase::Controller::ProfileRegistry>::reset[abi:ne200100]((v27 + 40), 0);
  std::unique_ptr<Phase::Controller::SpatialModelerRegistry>::reset[abi:ne200100](a15, 0);
  std::unique_ptr<Phase::Controller::ProcedureRegistry>::reset[abi:ne200100]((v27 + 24), 0);
  std::unique_ptr<Phase::Controller::VoicePoolRegistry>::reset[abi:ne200100](a16, 0);
  std::unique_ptr<Phase::Controller::IR::IRBuilder>::reset[abi:ne200100]((v27 + 8), 0);
  std::unique_ptr<Phase::Geometry::System>::reset[abi:ne200100](v27, 0);
  Phase::Controller::TaskManager::~TaskManager((v25 + 48));
  objc_destroyWeak(v25);

  _Unwind_Resume(a1);
}

void PHASEEngineImpl::ServerInit(PHASEEngineImpl *this)
{
  v2 = *MEMORY[0x277D85DE8];
  Phase::Logger::GetInstance(this);
  if (!*(this + 59))
  {
    operator new();
  }

  operator new();
}

void sub_23A470AFC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *a12, void *__p, uint64_t a14, uint64_t a15, uint64_t a16, void *a17, char a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, char a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, void *a43, uint64_t a44, int a45, __int16 a46, char a47, char a48, uint64_t a49, uint64_t a50, uint64_t a51, void *a52, uint64_t a53, int a54, __int16 a55, char a56, char a57)
{
  __cxa_guard_abort(&qword_27DF97B78);

  std::__hash_table<std::__hash_value_type<Phase::SpatialCategory,Phase::Controller::SpatialCategoryParameters>,std::__unordered_map_hasher<Phase::SpatialCategory,std::__hash_value_type<Phase::SpatialCategory,Phase::Controller::SpatialCategoryParameters>,std::hash<Phase::SpatialCategory>,std::equal_to<Phase::SpatialCategory>,true>,std::__unordered_map_equal<Phase::SpatialCategory,std::__hash_value_type<Phase::SpatialCategory,Phase::Controller::SpatialCategoryParameters>,std::equal_to<Phase::SpatialCategory>,std::hash<Phase::SpatialCategory>,true>,std::allocator<std::__hash_value_type<Phase::SpatialCategory,Phase::Controller::SpatialCategoryParameters>>>::~__hash_table(&a38);
  _Unwind_Resume(a1);
}

void PHASEEngineImpl::UpdateFrame(PHASEEngineImpl *this, double a2)
{
  v33 = *MEMORY[0x277D85DE8];
  v4 = *(this + 2);
  switch(v4)
  {
    case 2:
      Instance = Phase::Logger::GetInstance(this);
      v16 = os_signpost_id_generate(**(Instance + 1008));
      v25 = Phase::Logger::GetInstance(v16);
      if (*(v25 + 1016) == 1)
      {
        v26 = **(Phase::Logger::GetInstance(v25) + 1008);
        v27 = v26;
        if (v16 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v26))
        {
          v31 = 134217984;
          v32 = this;
          _os_signpost_emit_with_name_impl(&dword_23A302000, v27, OS_SIGNPOST_INTERVAL_BEGIN, v16, "Phase_Client_Engine_Update", "impl@%p Client Engine Update Start", &v31, 0xCu);
        }
      }

      PHASEEngineImpl::UpdateFrameClient(this, a2);
      v29 = Phase::Logger::GetInstance(v28);
      if (*(v29 + 1016) == 1)
      {
        v30 = **(Phase::Logger::GetInstance(v29) + 1008);
        v23 = v30;
        if (v16 - 1 > 0xFFFFFFFFFFFFFFFDLL || !os_signpost_enabled(v30))
        {
          goto LABEL_32;
        }

        v31 = 134217984;
        v32 = this;
        goto LABEL_31;
      }

      break;
    case 1:
      v15 = Phase::Logger::GetInstance(this);
      v16 = os_signpost_id_generate(**(v15 + 1008));
      v17 = Phase::Logger::GetInstance(v16);
      if (*(v17 + 1016) == 1)
      {
        v18 = **(Phase::Logger::GetInstance(v17) + 1008);
        v19 = v18;
        if (v16 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v18))
        {
          v31 = 134217984;
          v32 = this;
          _os_signpost_emit_with_name_impl(&dword_23A302000, v19, OS_SIGNPOST_INTERVAL_BEGIN, v16, "Phase_Client_Engine_Update", "impl@%p Client Engine Update Start", &v31, 0xCu);
        }
      }

      PHASEEngineImpl::UpdateFrameClient(this, a2);
      v21 = Phase::Logger::GetInstance(v20);
      if (*(v21 + 1016) == 1)
      {
        v22 = **(Phase::Logger::GetInstance(v21) + 1008);
        v23 = v22;
        if (v16 - 1 > 0xFFFFFFFFFFFFFFFDLL || !os_signpost_enabled(v22))
        {
          goto LABEL_32;
        }

        v31 = 134217984;
        v32 = this;
LABEL_31:
        _os_signpost_emit_with_name_impl(&dword_23A302000, v23, OS_SIGNPOST_INTERVAL_END, v16, "Phase_Client_Engine_Update", "impl@%p Client Engine Update Finish", &v31, 0xCu);
LABEL_32:
      }

      break;
    case 0:
      v5 = Phase::Logger::GetInstance(this);
      v6 = os_signpost_id_generate(**(v5 + 992));
      v7 = Phase::Logger::GetInstance(v6);
      if (*(v7 + 1000) == 1)
      {
        v8 = **(Phase::Logger::GetInstance(v7) + 992);
        v9 = v8;
        if (v6 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v8))
        {
          v31 = 134217984;
          v32 = this;
          _os_signpost_emit_with_name_impl(&dword_23A302000, v9, OS_SIGNPOST_INTERVAL_BEGIN, v6, "Phase_Engine_Update", "impl@%p Engine Update Start", &v31, 0xCu);
        }
      }

      v10 = *(*(this + 26) + 2832);
      *(v10 + 3168) = pthread_self();
      Phase::Controller::SpatializerManager::Update(*(this + 36), a2);
      Phase::Commandable<128,Phase::LockFreeQueueMPSC>::ExecuteCommands(*(this + 35));
      if (*(this + 44))
      {
        v11 = atomic_load(this + 3);
        if (v11 == 1)
        {
          v12 = a2;
          Phase::Controller::SharedEntityManager::Update(*(this + 44), v12);
        }
      }

      v13 = a2;
      Phase::Controller::ListenerManager::Update(*(this + 45), v13);
      v14 = a2;
      Phase::Geometry::SystemScheduler::Update((*(this + 26) + 2784), v14);
    default:
      return;
  }
}

void *Phase::Controller::TaskManager::RegisterService<Phase::Controller::ClientTapRegistryProxy>(void *result, uint64_t (*a2)(void, void, void, void, void))
{
  v5[4] = *MEMORY[0x277D85DE8];
  v3 = result[6];
  v4 = result + 6;
  if ((result[7] - v3) <= 0x200)
  {
    result = std::vector<std::any>::resize(result + 6, 0x11uLL);
    v3 = *v4;
  }

  if (!*(v3 + 512))
  {
    v5[0] = std::__any_imp::_SmallHandler<Phase::Controller::ClientTapRegistryProxy *>::__handle[abi:ne200100];
    v5[1] = a2;
    if (v5 != (v3 + 512))
    {
      *(v3 + 520) = a2;
      *(v3 + 512) = std::__any_imp::_SmallHandler<Phase::Controller::ClientTapRegistryProxy *>::__handle[abi:ne200100];
      v5[0] = 0;
    }

    return std::any::reset[abi:ne200100](v5);
  }

  return result;
}

Phase::Geometry::System *std::unique_ptr<Phase::Geometry::System>::reset[abi:ne200100](Phase::Geometry::System **a1, Phase::Geometry::System *a2)
{
  result = *a1;
  *a1 = a2;
  if (result)
  {
    Phase::Geometry::System::~System(result);

    JUMPOUT(0x23EE864A0);
  }

  return result;
}

void PHASEEngineImpl::~PHASEEngineImpl(PHASEEngineImpl *this)
{
  v16 = *MEMORY[0x277D85DE8];
  PHASEEngineImpl::Stop(this);
  if (*(this + 36) == 1)
  {
    v2 = CACentralStateDumpUnregisterSubsystem();
    v3 = v2;
    if (v2)
    {
      v4 = **(Phase::Logger::GetInstance(v2) + 448);
      if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
      {
        v9[0] = 136315906;
        *&v9[1] = "PHASEEngineImpl.mm";
        v10 = 1024;
        v11 = 530;
        v12 = 2048;
        v13 = this;
        v14 = 1024;
        v15 = v3;
        _os_log_impl(&dword_23A302000, v4, OS_LOG_TYPE_ERROR, "%25s:%-5d impl@%p: failed to unregister client state dump: %d", v9, 0x22u);
      }
    }
  }

  if (*(this + 44) == 1)
  {
    v5 = CACentralStateDumpUnregisterSubsystem();
    v6 = v5;
    if (v5)
    {
      v7 = **(Phase::Logger::GetInstance(v5) + 448);
      if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
      {
        v9[0] = 136315906;
        *&v9[1] = "PHASEEngineImpl.mm";
        v10 = 1024;
        v11 = 540;
        v12 = 2048;
        v13 = this;
        v14 = 1024;
        v15 = v6;
        _os_log_impl(&dword_23A302000, v7, OS_LOG_TYPE_ERROR, "%25s:%-5d impl@%p: failed to unregister server state dump: %d", v9, 0x22u);
      }
    }
  }

  v8 = *(this + 33);
  if (v8)
  {
    Phase::Controller::VoiceManager::Implementation::Destroy(*v8);
  }

  std::unique_ptr<Phase::Dispatch::ClientTransactionManager>::reset[abi:ne200100](this + 50, 0);
  std::unique_ptr<Phase::ActionTreeServerCommandProcessor>::reset[abi:ne200100](this + 41, 0);
  Phase::Controller::TaskManager::ClearServiceRegistry((this + 48));
  Phase::Controller::TaskManager::ResetUpdateFunction((this + 48));
}

void sub_23A471A8C(_Unwind_Exception *a1, int a2)
{
  if (!a2)
  {
    _Unwind_Resume(a1);
  }

  __clang_call_terminate(a1);
}

void PHASEEngineImpl::Stop(PHASEEngineImpl *this)
{
  v20 = *MEMORY[0x277D85DE8];
  if (atomic_load(this + 3))
  {
    v3 = **(Phase::Logger::GetInstance(this) + 448);
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
    {
      v16 = 136315394;
      v17 = "PHASEEngineImpl.mm";
      v18 = 1024;
      v19 = 947;
      _os_log_impl(&dword_23A302000, v3, OS_LOG_TYPE_DEFAULT, "%25s:%-5d PHASEEngine stopping", &v16, 0x12u);
    }

    *(this + 536) = 1;
    Phase::Controller::TaskManager::StopUpdateLoop((this + 48));
    v4 = *(this + 33);
    if (v4)
    {
      v5 = Phase::Controller::VoiceManager::Implementation::Stop(*v4);
      if (HIDWORD(v5))
      {
        v6 = 1;
      }

      else
      {
        v6 = v5 == 0;
      }

      if (!v6)
      {
        v11 = **(Phase::Logger::GetInstance(v5) + 496);
        if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
        {
          v16 = 136315394;
          v17 = "PHASEEngineImpl.mm";
          v18 = 1024;
          v19 = 957;
          _os_log_impl(&dword_23A302000, v11, OS_LOG_TYPE_ERROR, "%25s:%-5d POSTCONDITION: result.IsOkay() is false.", &v16, 0x12u);
        }

        exception = __cxa_allocate_exception(0x10uLL);
        std::runtime_error::runtime_error(exception, "POSTCONDITION: result.IsOkay() is false.");
      }

      if (atomic_load(**(this + 33)))
      {
        v14 = **(Phase::Logger::GetInstance(v5) + 496);
        if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
        {
          v16 = 136315394;
          v17 = "PHASEEngineImpl.mm";
          v18 = 1024;
          v19 = 958;
          _os_log_impl(&dword_23A302000, v14, OS_LOG_TYPE_ERROR, "%25s:%-5d POSTCONDITION: mpVoiceManager->GetState() == State::Stopped is false.", &v16, 0x12u);
        }

        v15 = __cxa_allocate_exception(0x10uLL);
        std::runtime_error::runtime_error(v15, "POSTCONDITION: mpVoiceManager->GetState() == State::Stopped is false.");
      }
    }

    v8 = *(this + 49);
    if (v8)
    {
      Phase::ActionTreeManager::Reset(v8);
    }

    v9 = *(this + 48);
    if (v9 && *(v9 + 16) >= 1)
    {
      v10 = 0;
      do
      {
        Phase::CommandQueue<Phase::LockFreeQueueMPSC>::Reset(*(*(v9 + 8) + 8 * v10++));
      }

      while (v10 < *(v9 + 16));
    }

    atomic_store(0, this + 3);
    *(this + 536) = 0;
  }
}

uint64_t *std::unique_ptr<Phase::Dispatch::ClientTransactionManager>::reset[abi:ne200100](uint64_t *result, uint64_t a2)
{
  v2 = *result;
  *result = a2;
  if (v2)
  {
    std::__function::__value_func<void ()(Phase::MessageWriteBuffer &,Phase::MessageWriteBuffer &,unsigned long)>::~__value_func[abi:ne200100](v2 + 504);
    v3 = *(v2 + 448);
    if (v3)
    {
      *(v2 + 456) = v3;
      operator delete(v3);
    }

    *(v2 + 352) = &unk_284D32148;

    std::__hash_table<std::__hash_value_type<Phase::ActionTreeClientCommand,std::function<void ()(void const*)>>,std::__unordered_map_hasher<Phase::ActionTreeClientCommand,std::__hash_value_type<Phase::ActionTreeClientCommand,std::function<void ()(void const*)>>,std::hash<Phase::ActionTreeClientCommand>,std::equal_to<Phase::ActionTreeClientCommand>,true>,std::__unordered_map_equal<Phase::ActionTreeClientCommand,std::__hash_value_type<Phase::ActionTreeClientCommand,std::function<void ()(void const*)>>,std::equal_to<Phase::ActionTreeClientCommand>,std::hash<Phase::ActionTreeClientCommand>,true>,std::allocator<std::__hash_value_type<Phase::ActionTreeClientCommand,std::function<void ()(void const*)>>>>::~__hash_table(v2 + 360);
    *(v2 + 264) = &unk_284D320D0;

    std::__hash_table<std::__hash_value_type<Phase::ActionTreeClientCommand,std::function<void ()(void const*)>>,std::__unordered_map_hasher<Phase::ActionTreeClientCommand,std::__hash_value_type<Phase::ActionTreeClientCommand,std::function<void ()(void const*)>>,std::hash<Phase::ActionTreeClientCommand>,std::equal_to<Phase::ActionTreeClientCommand>,true>,std::__unordered_map_equal<Phase::ActionTreeClientCommand,std::__hash_value_type<Phase::ActionTreeClientCommand,std::function<void ()(void const*)>>,std::equal_to<Phase::ActionTreeClientCommand>,std::hash<Phase::ActionTreeClientCommand>,true>,std::allocator<std::__hash_value_type<Phase::ActionTreeClientCommand,std::function<void ()(void const*)>>>>::~__hash_table(v2 + 272);
    *(v2 + 176) = &unk_284D32120;

    std::__hash_table<std::__hash_value_type<Phase::ActionTreeClientCommand,std::function<void ()(void const*)>>,std::__unordered_map_hasher<Phase::ActionTreeClientCommand,std::__hash_value_type<Phase::ActionTreeClientCommand,std::function<void ()(void const*)>>,std::hash<Phase::ActionTreeClientCommand>,std::equal_to<Phase::ActionTreeClientCommand>,true>,std::__unordered_map_equal<Phase::ActionTreeClientCommand,std::__hash_value_type<Phase::ActionTreeClientCommand,std::function<void ()(void const*)>>,std::equal_to<Phase::ActionTreeClientCommand>,std::hash<Phase::ActionTreeClientCommand>,true>,std::allocator<std::__hash_value_type<Phase::ActionTreeClientCommand,std::function<void ()(void const*)>>>>::~__hash_table(v2 + 184);
    *(v2 + 88) = &unk_284D2EFD0;

    std::__hash_table<std::__hash_value_type<Phase::ActionTreeClientCommand,std::function<void ()(void const*)>>,std::__unordered_map_hasher<Phase::ActionTreeClientCommand,std::__hash_value_type<Phase::ActionTreeClientCommand,std::function<void ()(void const*)>>,std::hash<Phase::ActionTreeClientCommand>,std::equal_to<Phase::ActionTreeClientCommand>,true>,std::__unordered_map_equal<Phase::ActionTreeClientCommand,std::__hash_value_type<Phase::ActionTreeClientCommand,std::function<void ()(void const*)>>,std::equal_to<Phase::ActionTreeClientCommand>,std::hash<Phase::ActionTreeClientCommand>,true>,std::allocator<std::__hash_value_type<Phase::ActionTreeClientCommand,std::function<void ()(void const*)>>>>::~__hash_table(v2 + 96);
    *v2 = &unk_284D320F8;

    std::__hash_table<std::__hash_value_type<Phase::ActionTreeClientCommand,std::function<void ()(void const*)>>,std::__unordered_map_hasher<Phase::ActionTreeClientCommand,std::__hash_value_type<Phase::ActionTreeClientCommand,std::function<void ()(void const*)>>,std::hash<Phase::ActionTreeClientCommand>,std::equal_to<Phase::ActionTreeClientCommand>,true>,std::__unordered_map_equal<Phase::ActionTreeClientCommand,std::__hash_value_type<Phase::ActionTreeClientCommand,std::function<void ()(void const*)>>,std::equal_to<Phase::ActionTreeClientCommand>,std::hash<Phase::ActionTreeClientCommand>,true>,std::allocator<std::__hash_value_type<Phase::ActionTreeClientCommand,std::function<void ()(void const*)>>>>::~__hash_table(v2 + 8);

    JUMPOUT(0x23EE864A0);
  }

  return result;
}

Phase::ActionTreeServerCommandProcessor *std::unique_ptr<Phase::ActionTreeServerCommandProcessor>::reset[abi:ne200100](Phase::ActionTreeServerCommandProcessor **a1, Phase::ActionTreeServerCommandProcessor *a2)
{
  result = *a1;
  *a1 = a2;
  if (result)
  {
    Phase::ActionTreeServerCommandProcessor::~ActionTreeServerCommandProcessor(result);

    JUMPOUT(0x23EE864A0);
  }

  return result;
}

void PHASEEngineImpl::UpdateFrameClient(PHASEEngineImpl *this, double a2)
{
  v23 = 0u;
  v24 = 0u;
  v21 = 0u;
  v22 = 0u;
  v4 = *(this + 63);
  if (v4)
  {
    v5 = *v4;
    if (v5)
    {
      v6 = atomic_load((v5 + 128));
      v7 = (v5 + ((v6 == 1) << 6));
      v8 = v7[1];
      v21 = *v7;
      v22 = v8;
      v9 = v7[3];
      v23 = v7[2];
      v24 = v9;
    }
  }

  (*(**(this + 46) + 592))(*(this + 46));
  (*(**(this + 51) + 72))(*(this + 51));
  (*(**(this + 52) + 96))(*(this + 52));
  (*(**(this + 53) + 80))(*(this + 53));
  v10 = *(this + 61);
  if (v10)
  {
    (*(*v10 + 56))(v10);
  }

  Phase::Controller::AssetUnloader::Update(*(this + 47));
  v11 = atomic_load(this + 3);
  if (v11 == 1)
  {
    v16 = a2;
    v17 = v21;
    v18 = v22;
    v19 = v23;
    v20 = v24;
    Phase::Dispatch::TransactionExecutor<Phase::Dispatch::GeometryServerMessageType>::ExecuteTransactions(*(this + 50));
    Phase::Dispatch::TransactionExecutor<Phase::Dispatch::ExternalStreamServerMessageType>::ExecuteTransactions(*(this + 50) + 264);
    Phase::Dispatch::TransactionExecutor<Phase::Dispatch::MiscServerMessageType>::ExecuteTransactions(*(this + 50) + 176);
    Phase::Dispatch::TransactionExecutor<Phase::Dispatch::TapsServerMessageType>::ExecuteTransactions(*(this + 50) + 352);
    Phase::Dispatch::TransactionExecutor<Phase::ActionTreeClientCommand>::ExecuteTransactions(*(this + 50) + 88);
    if (*(this + 57))
    {
      v12 = *(this + 56);
      if (v12)
      {
        do
        {
          v13 = *v12;
          operator delete(v12);
          v12 = v13;
        }

        while (v13);
      }

      *(this + 56) = 0;
      v14 = *(this + 55);
      if (v14)
      {
        for (i = 0; i != v14; ++i)
        {
          *(*(this + 54) + 8 * i) = 0;
        }
      }

      *(this + 57) = 0;
    }

    Phase::ActionTreeManager::GetActiveGroups(*(this + 49), this + 54);
    Phase::Controller::GroupManager::Update(*(this + 37), this + 54, a2);
    Phase::GlobalMetaParameterManager::Update(*(this + 48), &v16);
    Phase::ActionTreeManager::UpdateActionTrees(*(this + 49), (*(this + 50) + 472), &v16);
  }
}

id PHASEEngineImpl::Start(PHASEEngineImpl *this, double a2)
{
  v30 = *MEMORY[0x277D85DE8];
  v2 = atomic_load(this + 3);
  if (v2 != 1)
  {
    v5 = *(this + 2);
    if (v5 != 3 && v5 != 0)
    {
      v17 = **(Phase::Logger::GetInstance(this) + 448);
      if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
      {
        v20 = 136315394;
        v21 = "PHASEEngineImpl.mm";
        v22 = 1024;
        v23 = 874;
        _os_log_impl(&dword_23A302000, v17, OS_LOG_TYPE_ERROR, "%25s:%-5d EXCEPTION (std::runtime_error): Server type error starting PHASE system", &v20, 0x12u);
      }

      exception = __cxa_allocate_exception(0x10uLL);
      std::runtime_error::runtime_error(exception, "Server type error starting PHASE system");
    }

    v8 = **(Phase::Logger::GetInstance(this) + 448);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      v20 = 136315394;
      v21 = "PHASEEngineImpl.mm";
      v22 = 1024;
      v23 = 848;
      _os_log_impl(&dword_23A302000, v8, OS_LOG_TYPE_DEFAULT, "%25s:%-5d PHASEEngine starting the voice manager", &v20, 0x12u);
    }

    v9 = Phase::Controller::VoiceManager::Implementation::Start(**(this + 33), 5.0);
    if (v9)
    {
      v10 = [MEMORY[0x277CCA9B8] errorWithDomain:@"com.apple.coreaudio.phase" code:v9 userInfo:0];
      v11 = v10;

      v3 = v10;
      goto LABEL_22;
    }

    if (*(this + 64) == 1)
    {
      PHASEEngineImpl::UpdateFrame(this, 0.0);
    }

    else
    {
      if (a2 <= 0.0)
      {
        std::terminate();
      }

      v12 = *(this + 24);
      *(this + 68) = v12;
      if (*(this + 22))
      {
        if (v12 != a2)
        {
          v13 = **(Phase::Logger::GetInstance(v9) + 448);
          if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
          {
            v14 = *(this + 68);
            v20 = 136316162;
            v21 = "PHASEEngineImpl.mm";
            v22 = 1024;
            v23 = 894;
            v24 = 2048;
            v25 = this;
            v26 = 2048;
            v27 = v14;
            v28 = 2048;
            v29 = a2;
            _os_log_impl(&dword_23A302000, v13, OS_LOG_TYPE_ERROR, "%25s:%-5d impl@%p: engine already running in auto update mode at %ff Hz - new framerate %ff Hz ignored", &v20, 0x30u);
          }
        }

        goto LABEL_21;
      }

      Phase::Controller::TaskManager::StartUpdateLoop((this + 48), a2);
    }

    *(this + 68) = a2;
LABEL_21:
    v3 = 0;
    atomic_store(1uLL, this + 3);
    goto LABEL_22;
  }

  v3 = 0;
LABEL_22:
  v15 = v3;

  return v3;
}

PHASEEngineImpl *PHASEEngineImpl::Pause(PHASEEngineImpl *this)
{
  v17 = *MEMORY[0x277D85DE8];
  v1 = atomic_load(this + 3);
  if (v1 == 1)
  {
    v2 = this;
    v3 = *(this + 2);
    if (v3 != 3 && v3 != 0)
    {
      v10 = **(Phase::Logger::GetInstance(this) + 448);
      if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
      {
        v13 = 136315394;
        v14 = "PHASEEngineImpl.mm";
        v15 = 1024;
        v16 = 936;
        _os_log_impl(&dword_23A302000, v10, OS_LOG_TYPE_ERROR, "%25s:%-5d EXCEPTION (std::runtime_error): Server type error pausing PHASE system", &v13, 0x12u);
      }

      exception = __cxa_allocate_exception(0x10uLL);
      std::runtime_error::runtime_error(exception, "Server type error pausing PHASE system");
    }

    v5 = **(Phase::Logger::GetInstance(this) + 448);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      v13 = 136315394;
      v14 = "PHASEEngineImpl.mm";
      v15 = 1024;
      v16 = 919;
      _os_log_impl(&dword_23A302000, v5, OS_LOG_TYPE_DEFAULT, "%25s:%-5d PHASEEngine pausing", &v13, 0x12u);
    }

    this = Phase::Controller::VoiceManager::Implementation::Pause(**(v2 + 33));
    if (this >> 32)
    {
      v6 = 1;
    }

    else
    {
      v6 = this == 0;
    }

    if (!v6)
    {
      v7 = **(Phase::Logger::GetInstance(this) + 496);
      if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
      {
        v13 = 136315394;
        v14 = "PHASEEngineImpl.mm";
        v15 = 1024;
        v16 = 923;
        _os_log_impl(&dword_23A302000, v7, OS_LOG_TYPE_ERROR, "%25s:%-5d POSTCONDITION: result.IsOkay() is false.", &v13, 0x12u);
      }

      v9 = __cxa_allocate_exception(0x10uLL);
      std::runtime_error::runtime_error(v9, "POSTCONDITION: result.IsOkay() is false.");
    }

    atomic_store(2uLL, v2 + 3);
  }

  return this;
}

void std::vector<Phase::SpatialModeler::ReverbPresetFile::ReflectionEntry>::__destroy_vector::operator()[abi:ne200100](void ***a1)
{
  v2 = *a1;
  if (*v2)
  {
    std::vector<Phase::SpatialModeler::ReverbPresetFile::ReflectionEntry>::__base_destruct_at_end[abi:ne200100](v2, *v2);
    v3 = **a1;

    operator delete(v3);
  }
}

uint64_t std::vector<Phase::SpatialModeler::ReverbPresetFile::ReflectionEntry>::__base_destruct_at_end[abi:ne200100](uint64_t result, uint64_t a2)
{
  v3 = result;
  for (i = *(result + 8); i != a2; i -= 24)
  {
    result = *(i - 8);
    *(i - 8) = 0;
    if (result)
    {
      result = MEMORY[0x23EE86470](result, 0x1000C8052888210);
    }
  }

  *(v3 + 8) = a2;
  return result;
}

void Phase::SpatialModeler::ReverbPresetFile::~ReverbPresetFile(void **this)
{
  v2 = this + 6;
  std::vector<Phase::SpatialModeler::ReverbPresetFile::ReflectionEntry>::__destroy_vector::operator()[abi:ne200100](&v2);
  v2 = this + 3;
  std::vector<Phase::SpatialModeler::ReverbPresetFile::ReflectionEntry>::__destroy_vector::operator()[abi:ne200100](&v2);
  if (*(this + 23) < 0)
  {
    operator delete(*this);
  }
}

void Phase::Controller::VoiceManagerInitializeParameters::~VoiceManagerInitializeParameters(Phase::Controller::VoiceManagerInitializeParameters *this)
{
  v2 = *(this + 14);
  if (v2)
  {
    *(this + 15) = v2;
    operator delete(v2);
  }

  std::__hash_table<std::__hash_value_type<Phase::SpatialCategory,Phase::Controller::SpatialCategoryParameters>,std::__unordered_map_hasher<Phase::SpatialCategory,std::__hash_value_type<Phase::SpatialCategory,Phase::Controller::SpatialCategoryParameters>,std::hash<Phase::SpatialCategory>,std::equal_to<Phase::SpatialCategory>,true>,std::__unordered_map_equal<Phase::SpatialCategory,std::__hash_value_type<Phase::SpatialCategory,Phase::Controller::SpatialCategoryParameters>,std::equal_to<Phase::SpatialCategory>,std::hash<Phase::SpatialCategory>,true>,std::allocator<std::__hash_value_type<Phase::SpatialCategory,Phase::Controller::SpatialCategoryParameters>>>::~__hash_table(this + 72);
}

Phase::Controller::IR::IRBuilder *std::unique_ptr<Phase::Controller::IR::IRBuilder>::reset[abi:ne200100](Phase::Controller::IR::IRBuilder **a1, Phase::Controller::IR::IRBuilder *a2)
{
  result = *a1;
  *a1 = a2;
  if (result)
  {
    Phase::Controller::IR::IRBuilder::~IRBuilder(result);

    JUMPOUT(0x23EE864A0);
  }

  return result;
}

uint64_t std::unique_ptr<Phase::Controller::VoicePoolRegistry>::reset[abi:ne200100](uint64_t *a1, uint64_t a2)
{
  result = *a1;
  *a1 = a2;
  if (result)
  {
    std::__hash_table<std::__hash_value_type<Phase::DspLayer23::KernelType,std::unique_ptr<Phase::Controller::VoicePoolEntry const>>,std::__unordered_map_hasher<Phase::DspLayer23::KernelType,std::__hash_value_type<Phase::DspLayer23::KernelType,std::unique_ptr<Phase::Controller::VoicePoolEntry const>>,std::hash<Phase::DspLayer23::KernelType>,std::equal_to<Phase::DspLayer23::KernelType>,true>,std::__unordered_map_equal<Phase::DspLayer23::KernelType,std::__hash_value_type<Phase::DspLayer23::KernelType,std::unique_ptr<Phase::Controller::VoicePoolEntry const>>,std::equal_to<Phase::DspLayer23::KernelType>,std::hash<Phase::DspLayer23::KernelType>,true>,std::allocator<std::__hash_value_type<Phase::DspLayer23::KernelType,std::unique_ptr<Phase::Controller::VoicePoolEntry const>>>>::~__hash_table(result);

    JUMPOUT(0x23EE864A0);
  }

  return result;
}

uint64_t std::unique_ptr<Phase::Controller::ProcedureRegistry>::reset[abi:ne200100](uint64_t *a1, uint64_t a2)
{
  result = *a1;
  *a1 = a2;
  if (result)
  {
    std::__hash_table<std::__hash_value_type<unsigned long long,Phase::Controller::ProcedureInfo>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,Phase::Controller::ProcedureInfo>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,Phase::Controller::ProcedureInfo>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,Phase::Controller::ProcedureInfo>>>::~__hash_table(result);

    JUMPOUT(0x23EE864A0);
  }

  return result;
}

uint64_t std::unique_ptr<Phase::Controller::SpatialModelerRegistry>::reset[abi:ne200100](uint64_t *a1, uint64_t a2)
{
  result = *a1;
  *a1 = a2;
  if (result)
  {
    std::__hash_table<std::__hash_value_type<unsigned long long,Phase::Controller::SpatialModelerInfo>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,Phase::Controller::SpatialModelerInfo>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,Phase::Controller::SpatialModelerInfo>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,Phase::Controller::SpatialModelerInfo>>>::~__hash_table(result);

    JUMPOUT(0x23EE864A0);
  }

  return result;
}

uint64_t std::unique_ptr<Phase::Controller::ProfileRegistry>::reset[abi:ne200100](uint64_t *a1, uint64_t a2)
{
  result = *a1;
  *a1 = a2;
  if (result)
  {
    std::__hash_table<std::__hash_value_type<Phase::StringId,Phase::Controller::ProfileRegistry::Profile>,std::__unordered_map_hasher<Phase::StringId,std::__hash_value_type<Phase::StringId,Phase::Controller::ProfileRegistry::Profile>,std::hash<Phase::StringId>,std::equal_to<Phase::StringId>,true>,std::__unordered_map_equal<Phase::StringId,std::__hash_value_type<Phase::StringId,Phase::Controller::ProfileRegistry::Profile>,std::equal_to<Phase::StringId>,std::hash<Phase::StringId>,true>,std::allocator<std::__hash_value_type<Phase::StringId,Phase::Controller::ProfileRegistry::Profile>>>::~__hash_table(result);

    JUMPOUT(0x23EE864A0);
  }

  return result;
}

uint64_t std::__hash_table<std::__hash_value_type<Phase::StringId,Phase::Controller::ProfileRegistry::Profile>,std::__unordered_map_hasher<Phase::StringId,std::__hash_value_type<Phase::StringId,Phase::Controller::ProfileRegistry::Profile>,std::hash<Phase::StringId>,std::equal_to<Phase::StringId>,true>,std::__unordered_map_equal<Phase::StringId,std::__hash_value_type<Phase::StringId,Phase::Controller::ProfileRegistry::Profile>,std::equal_to<Phase::StringId>,std::hash<Phase::StringId>,true>,std::allocator<std::__hash_value_type<Phase::StringId,Phase::Controller::ProfileRegistry::Profile>>>::~__hash_table(uint64_t a1)
{
  std::__hash_table<std::__hash_value_type<Phase::StringId,Phase::Controller::ProfileRegistry::Profile>,std::__unordered_map_hasher<Phase::StringId,std::__hash_value_type<Phase::StringId,Phase::Controller::ProfileRegistry::Profile>,std::hash<Phase::StringId>,std::equal_to<Phase::StringId>,true>,std::__unordered_map_equal<Phase::StringId,std::__hash_value_type<Phase::StringId,Phase::Controller::ProfileRegistry::Profile>,std::equal_to<Phase::StringId>,std::hash<Phase::StringId>,true>,std::allocator<std::__hash_value_type<Phase::StringId,Phase::Controller::ProfileRegistry::Profile>>>::__deallocate_node(a1, *(a1 + 16));
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    operator delete(v2);
  }

  return a1;
}

void std::__hash_table<std::__hash_value_type<Phase::StringId,Phase::Controller::ProfileRegistry::Profile>,std::__unordered_map_hasher<Phase::StringId,std::__hash_value_type<Phase::StringId,Phase::Controller::ProfileRegistry::Profile>,std::hash<Phase::StringId>,std::equal_to<Phase::StringId>,true>,std::__unordered_map_equal<Phase::StringId,std::__hash_value_type<Phase::StringId,Phase::Controller::ProfileRegistry::Profile>,std::equal_to<Phase::StringId>,std::hash<Phase::StringId>,true>,std::allocator<std::__hash_value_type<Phase::StringId,Phase::Controller::ProfileRegistry::Profile>>>::__deallocate_node(uint64_t a1, void **a2)
{
  if (a2)
  {
    v2 = a2;
    do
    {
      v3 = *v2;
      std::__hash_table<std::__hash_value_type<Phase::StringId,Phase::Controller::ProfileRegistry::Category>,std::__unordered_map_hasher<Phase::StringId,std::__hash_value_type<Phase::StringId,Phase::Controller::ProfileRegistry::Category>,std::hash<Phase::StringId>,std::equal_to<Phase::StringId>,true>,std::__unordered_map_equal<Phase::StringId,std::__hash_value_type<Phase::StringId,Phase::Controller::ProfileRegistry::Category>,std::equal_to<Phase::StringId>,std::hash<Phase::StringId>,true>,std::allocator<std::__hash_value_type<Phase::StringId,Phase::Controller::ProfileRegistry::Category>>>::~__hash_table((v2 + 11));
      if ((v2[7] & 1) == 0)
      {
        free(v2[6]);
      }

      v2[5] = 0;
      v2[6] = &str_20;
      *(v2 + 56) = 1;
      if ((v2[4] & 1) == 0)
      {
        free(v2[3]);
      }

      operator delete(v2);
      v2 = v3;
    }

    while (v3);
  }
}

uint64_t std::__hash_table<std::__hash_value_type<Phase::StringId,Phase::Controller::ProfileRegistry::Category>,std::__unordered_map_hasher<Phase::StringId,std::__hash_value_type<Phase::StringId,Phase::Controller::ProfileRegistry::Category>,std::hash<Phase::StringId>,std::equal_to<Phase::StringId>,true>,std::__unordered_map_equal<Phase::StringId,std::__hash_value_type<Phase::StringId,Phase::Controller::ProfileRegistry::Category>,std::equal_to<Phase::StringId>,std::hash<Phase::StringId>,true>,std::allocator<std::__hash_value_type<Phase::StringId,Phase::Controller::ProfileRegistry::Category>>>::~__hash_table(uint64_t a1)
{
  std::__hash_table<std::__hash_value_type<Phase::StringId,Phase::Controller::ProfileRegistry::Category>,std::__unordered_map_hasher<Phase::StringId,std::__hash_value_type<Phase::StringId,Phase::Controller::ProfileRegistry::Category>,std::hash<Phase::StringId>,std::equal_to<Phase::StringId>,true>,std::__unordered_map_equal<Phase::StringId,std::__hash_value_type<Phase::StringId,Phase::Controller::ProfileRegistry::Category>,std::equal_to<Phase::StringId>,std::hash<Phase::StringId>,true>,std::allocator<std::__hash_value_type<Phase::StringId,Phase::Controller::ProfileRegistry::Category>>>::__deallocate_node(a1, *(a1 + 16));
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    operator delete(v2);
  }

  return a1;
}

void std::__hash_table<std::__hash_value_type<Phase::StringId,Phase::Controller::ProfileRegistry::Category>,std::__unordered_map_hasher<Phase::StringId,std::__hash_value_type<Phase::StringId,Phase::Controller::ProfileRegistry::Category>,std::hash<Phase::StringId>,std::equal_to<Phase::StringId>,true>,std::__unordered_map_equal<Phase::StringId,std::__hash_value_type<Phase::StringId,Phase::Controller::ProfileRegistry::Category>,std::equal_to<Phase::StringId>,std::hash<Phase::StringId>,true>,std::allocator<std::__hash_value_type<Phase::StringId,Phase::Controller::ProfileRegistry::Category>>>::__deallocate_node(uint64_t a1, void **a2)
{
  if (a2)
  {
    v2 = a2;
    do
    {
      v3 = *v2;
      std::__hash_table<std::__hash_value_type<Phase::StringId,Phase::Controller::ProfileRegistry::Graph>,std::__unordered_map_hasher<Phase::StringId,std::__hash_value_type<Phase::StringId,Phase::Controller::ProfileRegistry::Graph>,std::hash<Phase::StringId>,std::equal_to<Phase::StringId>,true>,std::__unordered_map_equal<Phase::StringId,std::__hash_value_type<Phase::StringId,Phase::Controller::ProfileRegistry::Graph>,std::equal_to<Phase::StringId>,std::hash<Phase::StringId>,true>,std::allocator<std::__hash_value_type<Phase::StringId,Phase::Controller::ProfileRegistry::Graph>>>::~__hash_table((v2 + 12));
      if ((v2[10] & 1) == 0)
      {
        free(v2[9]);
      }

      v2[8] = 0;
      v2[9] = &str_20;
      *(v2 + 80) = 1;
      if ((v2[7] & 1) == 0)
      {
        free(v2[6]);
      }

      v2[5] = 0;
      v2[6] = &str_20;
      *(v2 + 56) = 1;
      if ((v2[4] & 1) == 0)
      {
        free(v2[3]);
      }

      operator delete(v2);
      v2 = v3;
    }

    while (v3);
  }
}

uint64_t std::__hash_table<std::__hash_value_type<Phase::StringId,Phase::Controller::ProfileRegistry::Graph>,std::__unordered_map_hasher<Phase::StringId,std::__hash_value_type<Phase::StringId,Phase::Controller::ProfileRegistry::Graph>,std::hash<Phase::StringId>,std::equal_to<Phase::StringId>,true>,std::__unordered_map_equal<Phase::StringId,std::__hash_value_type<Phase::StringId,Phase::Controller::ProfileRegistry::Graph>,std::equal_to<Phase::StringId>,std::hash<Phase::StringId>,true>,std::allocator<std::__hash_value_type<Phase::StringId,Phase::Controller::ProfileRegistry::Graph>>>::~__hash_table(uint64_t a1)
{
  std::__hash_table<std::__hash_value_type<Phase::StringId,Phase::Controller::ProfileRegistry::Graph>,std::__unordered_map_hasher<Phase::StringId,std::__hash_value_type<Phase::StringId,Phase::Controller::ProfileRegistry::Graph>,std::hash<Phase::StringId>,std::equal_to<Phase::StringId>,true>,std::__unordered_map_equal<Phase::StringId,std::__hash_value_type<Phase::StringId,Phase::Controller::ProfileRegistry::Graph>,std::equal_to<Phase::StringId>,std::hash<Phase::StringId>,true>,std::allocator<std::__hash_value_type<Phase::StringId,Phase::Controller::ProfileRegistry::Graph>>>::__deallocate_node(a1, *(a1 + 16));
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    operator delete(v2);
  }

  return a1;
}

void std::__hash_table<std::__hash_value_type<Phase::StringId,Phase::Controller::ProfileRegistry::Graph>,std::__unordered_map_hasher<Phase::StringId,std::__hash_value_type<Phase::StringId,Phase::Controller::ProfileRegistry::Graph>,std::hash<Phase::StringId>,std::equal_to<Phase::StringId>,true>,std::__unordered_map_equal<Phase::StringId,std::__hash_value_type<Phase::StringId,Phase::Controller::ProfileRegistry::Graph>,std::equal_to<Phase::StringId>,std::hash<Phase::StringId>,true>,std::allocator<std::__hash_value_type<Phase::StringId,Phase::Controller::ProfileRegistry::Graph>>>::__deallocate_node(uint64_t a1, void **a2)
{
  if (a2)
  {
    v2 = a2;
    do
    {
      v3 = *v2;
      std::__hash_table<std::__hash_value_type<Phase::StringId,Phase::Controller::ProfileRegistry::Stage>,std::__unordered_map_hasher<Phase::StringId,std::__hash_value_type<Phase::StringId,Phase::Controller::ProfileRegistry::Stage>,std::hash<Phase::StringId>,std::equal_to<Phase::StringId>,true>,std::__unordered_map_equal<Phase::StringId,std::__hash_value_type<Phase::StringId,Phase::Controller::ProfileRegistry::Stage>,std::equal_to<Phase::StringId>,std::hash<Phase::StringId>,true>,std::allocator<std::__hash_value_type<Phase::StringId,Phase::Controller::ProfileRegistry::Stage>>>::~__hash_table((v2 + 8));
      if ((v2[7] & 1) == 0)
      {
        free(v2[6]);
      }

      v2[5] = 0;
      v2[6] = &str_20;
      *(v2 + 56) = 1;
      if ((v2[4] & 1) == 0)
      {
        free(v2[3]);
      }

      operator delete(v2);
      v2 = v3;
    }

    while (v3);
  }
}

uint64_t std::__hash_table<std::__hash_value_type<Phase::StringId,Phase::Controller::ProfileRegistry::Stage>,std::__unordered_map_hasher<Phase::StringId,std::__hash_value_type<Phase::StringId,Phase::Controller::ProfileRegistry::Stage>,std::hash<Phase::StringId>,std::equal_to<Phase::StringId>,true>,std::__unordered_map_equal<Phase::StringId,std::__hash_value_type<Phase::StringId,Phase::Controller::ProfileRegistry::Stage>,std::equal_to<Phase::StringId>,std::hash<Phase::StringId>,true>,std::allocator<std::__hash_value_type<Phase::StringId,Phase::Controller::ProfileRegistry::Stage>>>::~__hash_table(uint64_t a1)
{
  std::__hash_table<std::__hash_value_type<Phase::StringId,Phase::Controller::ProfileRegistry::Stage>,std::__unordered_map_hasher<Phase::StringId,std::__hash_value_type<Phase::StringId,Phase::Controller::ProfileRegistry::Stage>,std::hash<Phase::StringId>,std::equal_to<Phase::StringId>,true>,std::__unordered_map_equal<Phase::StringId,std::__hash_value_type<Phase::StringId,Phase::Controller::ProfileRegistry::Stage>,std::equal_to<Phase::StringId>,std::hash<Phase::StringId>,true>,std::allocator<std::__hash_value_type<Phase::StringId,Phase::Controller::ProfileRegistry::Stage>>>::__deallocate_node(a1, *(a1 + 16));
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    operator delete(v2);
  }

  return a1;
}

void std::__hash_table<std::__hash_value_type<Phase::StringId,Phase::Controller::ProfileRegistry::Stage>,std::__unordered_map_hasher<Phase::StringId,std::__hash_value_type<Phase::StringId,Phase::Controller::ProfileRegistry::Stage>,std::hash<Phase::StringId>,std::equal_to<Phase::StringId>,true>,std::__unordered_map_equal<Phase::StringId,std::__hash_value_type<Phase::StringId,Phase::Controller::ProfileRegistry::Stage>,std::equal_to<Phase::StringId>,std::hash<Phase::StringId>,true>,std::allocator<std::__hash_value_type<Phase::StringId,Phase::Controller::ProfileRegistry::Stage>>>::__deallocate_node(uint64_t a1, void **a2)
{
  if (a2)
  {
    v2 = a2;
    do
    {
      v3 = *v2;
      std::__hash_table<std::__hash_value_type<Phase::StringId,Phase::Controller::ProfileRegistry::Parameter>,std::__unordered_map_hasher<Phase::StringId,std::__hash_value_type<Phase::StringId,Phase::Controller::ProfileRegistry::Parameter>,std::hash<Phase::StringId>,std::equal_to<Phase::StringId>,true>,std::__unordered_map_equal<Phase::StringId,std::__hash_value_type<Phase::StringId,Phase::Controller::ProfileRegistry::Parameter>,std::equal_to<Phase::StringId>,std::hash<Phase::StringId>,true>,std::allocator<std::__hash_value_type<Phase::StringId,Phase::Controller::ProfileRegistry::Parameter>>>::~__hash_table((v2 + 8));
      if ((v2[7] & 1) == 0)
      {
        free(v2[6]);
      }

      v2[5] = 0;
      v2[6] = &str_20;
      *(v2 + 56) = 1;
      if ((v2[4] & 1) == 0)
      {
        free(v2[3]);
      }

      operator delete(v2);
      v2 = v3;
    }

    while (v3);
  }
}

uint64_t std::__hash_table<std::__hash_value_type<Phase::StringId,Phase::Controller::ProfileRegistry::Parameter>,std::__unordered_map_hasher<Phase::StringId,std::__hash_value_type<Phase::StringId,Phase::Controller::ProfileRegistry::Parameter>,std::hash<Phase::StringId>,std::equal_to<Phase::StringId>,true>,std::__unordered_map_equal<Phase::StringId,std::__hash_value_type<Phase::StringId,Phase::Controller::ProfileRegistry::Parameter>,std::equal_to<Phase::StringId>,std::hash<Phase::StringId>,true>,std::allocator<std::__hash_value_type<Phase::StringId,Phase::Controller::ProfileRegistry::Parameter>>>::~__hash_table(uint64_t a1)
{
  std::__hash_table<std::__hash_value_type<Phase::StringId,Phase::Controller::ProfileRegistry::Parameter>,std::__unordered_map_hasher<Phase::StringId,std::__hash_value_type<Phase::StringId,Phase::Controller::ProfileRegistry::Parameter>,std::hash<Phase::StringId>,std::equal_to<Phase::StringId>,true>,std::__unordered_map_equal<Phase::StringId,std::__hash_value_type<Phase::StringId,Phase::Controller::ProfileRegistry::Parameter>,std::equal_to<Phase::StringId>,std::hash<Phase::StringId>,true>,std::allocator<std::__hash_value_type<Phase::StringId,Phase::Controller::ProfileRegistry::Parameter>>>::__deallocate_node(a1, *(a1 + 16));
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    operator delete(v2);
  }

  return a1;
}

void std::__hash_table<std::__hash_value_type<Phase::StringId,Phase::Controller::ProfileRegistry::Parameter>,std::__unordered_map_hasher<Phase::StringId,std::__hash_value_type<Phase::StringId,Phase::Controller::ProfileRegistry::Parameter>,std::hash<Phase::StringId>,std::equal_to<Phase::StringId>,true>,std::__unordered_map_equal<Phase::StringId,std::__hash_value_type<Phase::StringId,Phase::Controller::ProfileRegistry::Parameter>,std::equal_to<Phase::StringId>,std::hash<Phase::StringId>,true>,std::allocator<std::__hash_value_type<Phase::StringId,Phase::Controller::ProfileRegistry::Parameter>>>::__deallocate_node(uint64_t a1, void *a2)
{
  if (a2)
  {
    v2 = a2;
    do
    {
      v4 = *v2;
      std::allocator_traits<std::allocator<std::__hash_node<std::__hash_value_type<Phase::StringId,Phase::Controller::ProfileRegistry::Parameter>,void *>>>::destroy[abi:ne200100]<std::pair<Phase::StringId const,Phase::Controller::ProfileRegistry::Parameter>,void,0>(a1, (v2 + 2));
      operator delete(v2);
      v2 = v4;
    }

    while (v4);
  }
}

void std::allocator_traits<std::allocator<std::__hash_node<std::__hash_value_type<Phase::StringId,Phase::Controller::ProfileRegistry::Parameter>,void *>>>::destroy[abi:ne200100]<std::pair<Phase::StringId const,Phase::Controller::ProfileRegistry::Parameter>,void,0>(uint64_t a1, uint64_t a2)
{
  v3 = (a2 + 48);
  std::vector<Phase::Envelope<double>::SegmentInternal,std::allocator<Phase::Envelope<double>::SegmentInternal>>::__destroy_vector::operator()[abi:ne200100](&v3);
  if ((*(a2 + 40) & 1) == 0)
  {
    free(*(a2 + 32));
  }

  *(a2 + 24) = 0;
  *(a2 + 32) = &str_20;
  *(a2 + 40) = 1;
  if ((*(a2 + 16) & 1) == 0)
  {
    free(*(a2 + 8));
  }

  *a2 = 0;
  *(a2 + 8) = &str_20;
  *(a2 + 16) = 1;
}

Phase::Controller::VoiceManager::Implementation **std::unique_ptr<Phase::Controller::VoiceManager>::reset[abi:ne200100](Phase::Controller::VoiceManager::Implementation ***a1, Phase::Controller::VoiceManager::Implementation **a2)
{
  result = *a1;
  *a1 = a2;
  if (result)
  {
    Phase::Controller::VoiceManager::~VoiceManager(result);

    JUMPOUT(0x23EE864A0);
  }

  return result;
}

Phase::Controller::LoadBalancer *std::unique_ptr<Phase::Controller::LoadBalancer>::reset[abi:ne200100](Phase::Controller::LoadBalancer **a1, Phase::Controller::LoadBalancer *a2)
{
  result = *a1;
  *a1 = a2;
  if (result)
  {
    Phase::Controller::LoadBalancer::~LoadBalancer(result);

    JUMPOUT(0x23EE864A0);
  }

  return result;
}

Phase::SpatialModeler::ReverbPresetDatabase::Implementation **std::unique_ptr<Phase::SpatialModeler::ReverbPresetDatabase>::reset[abi:ne200100](Phase::SpatialModeler::ReverbPresetDatabase::Implementation ***a1, Phase::SpatialModeler::ReverbPresetDatabase::Implementation **a2)
{
  result = *a1;
  *a1 = a2;
  if (result)
  {
    Phase::SpatialModeler::ReverbPresetDatabase::~ReverbPresetDatabase(result);

    JUMPOUT(0x23EE864A0);
  }

  return result;
}

id ***std::unique_ptr<Phase::Controller::StatisticsDatabase>::reset[abi:ne200100](id ***result, id **a2)
{
  v2 = *result;
  *result = a2;
  if (v2)
  {
    v3 = *v2;
    *v2 = 0;
    if (v3)
    {
      std::default_delete<Phase::Controller::StatisticsDatabase::Implementation>::operator()[abi:ne200100](v2, v3);
    }

    JUMPOUT(0x23EE864A0);
  }

  return result;
}

id *std::unique_ptr<Phase::Controller::SessionManager>::reset[abi:ne200100](id **a1, id *a2)
{
  result = *a1;
  *a1 = a2;
  if (result)
  {
    Phase::Controller::SessionManager::~SessionManager(result);

    JUMPOUT(0x23EE864A0);
  }

  return result;
}

Phase::Controller::RoomCongruenceManager *std::unique_ptr<Phase::Controller::RoomCongruenceManager>::reset[abi:ne200100](Phase::Controller::RoomCongruenceManager **a1, Phase::Controller::RoomCongruenceManager *a2)
{
  result = *a1;
  *a1 = a2;
  if (result)
  {
    Phase::Controller::RoomCongruenceManager::~RoomCongruenceManager(result);

    JUMPOUT(0x23EE864A0);
  }

  return result;
}

uint64_t *std::unique_ptr<Phase::Controller::SharedEntityManager>::reset[abi:ne200100](uint64_t *result, uint64_t a2)
{
  v2 = *result;
  *result = a2;
  if (v2)
  {
    v3 = *(v2 + 192);
    *(v2 + 192) = 0;
    if (v3)
    {
      Phase::Controller::HeadTracker::~HeadTracker(v3);
      MEMORY[0x23EE864A0]();
    }

    v4 = *(v2 + 168);
    if (v4)
    {
      do
      {
        v5 = *v4;
        v6 = v4[3];
        if (v6)
        {
          do
          {
            v7 = *v6;
            operator delete(v6);
            v6 = v7;
          }

          while (v7);
        }

        operator delete(v4);
        v4 = v5;
      }

      while (v5);
    }

    v8 = *(v2 + 152);
    *(v2 + 152) = 0;
    if (v8)
    {
      operator delete(v8);
    }

    v9 = *(v2 + 136);
    *(v2 + 136) = 0;

    std::__hash_table<std::__hash_value_type<Phase::SpatialCategory,Phase::Controller::SpatialCategoryParameters>,std::__unordered_map_hasher<Phase::SpatialCategory,std::__hash_value_type<Phase::SpatialCategory,Phase::Controller::SpatialCategoryParameters>,std::hash<Phase::SpatialCategory>,std::equal_to<Phase::SpatialCategory>,true>,std::__unordered_map_equal<Phase::SpatialCategory,std::__hash_value_type<Phase::SpatialCategory,Phase::Controller::SpatialCategoryParameters>,std::equal_to<Phase::SpatialCategory>,std::hash<Phase::SpatialCategory>,true>,std::allocator<std::__hash_value_type<Phase::SpatialCategory,Phase::Controller::SpatialCategoryParameters>>>::~__hash_table(v2 + 88);
    std::__hash_table<std::__hash_value_type<Phase::Controller::IR::IRBuilder::Processor,std::unordered_map<Phase::Controller::IR::IRBuilder::Method,Phase::Controller::IR::IRBuilderBase *>>,std::__unordered_map_hasher<Phase::Controller::IR::IRBuilder::Processor,std::__hash_value_type<Phase::Controller::IR::IRBuilder::Processor,std::unordered_map<Phase::Controller::IR::IRBuilder::Method,Phase::Controller::IR::IRBuilderBase *>>,std::hash<Phase::Controller::IR::IRBuilder::Processor>,std::equal_to<Phase::Controller::IR::IRBuilder::Processor>,true>,std::__unordered_map_equal<Phase::Controller::IR::IRBuilder::Processor,std::__hash_value_type<Phase::Controller::IR::IRBuilder::Processor,std::unordered_map<Phase::Controller::IR::IRBuilder::Method,Phase::Controller::IR::IRBuilderBase *>>,std::equal_to<Phase::Controller::IR::IRBuilder::Processor>,std::hash<Phase::Controller::IR::IRBuilder::Processor>,true>,std::allocator<std::__hash_value_type<Phase::Controller::IR::IRBuilder::Processor,std::unordered_map<Phase::Controller::IR::IRBuilder::Method,Phase::Controller::IR::IRBuilderBase *>>>>::~__hash_table(v2 + 40);
    std::__hash_table<std::__hash_value_type<Phase::SpatialCategory,Phase::Controller::SpatialCategoryParameters>,std::__unordered_map_hasher<Phase::SpatialCategory,std::__hash_value_type<Phase::SpatialCategory,Phase::Controller::SpatialCategoryParameters>,std::hash<Phase::SpatialCategory>,std::equal_to<Phase::SpatialCategory>,true>,std::__unordered_map_equal<Phase::SpatialCategory,std::__hash_value_type<Phase::SpatialCategory,Phase::Controller::SpatialCategoryParameters>,std::equal_to<Phase::SpatialCategory>,std::hash<Phase::SpatialCategory>,true>,std::allocator<std::__hash_value_type<Phase::SpatialCategory,Phase::Controller::SpatialCategoryParameters>>>::~__hash_table(v2);

    JUMPOUT(0x23EE864A0);
  }

  return result;
}

uint64_t *std::unique_ptr<Phase::Controller::AssetUnloader>::reset[abi:ne200100](uint64_t *result, uint64_t a2)
{
  v2 = *result;
  *result = a2;
  if (v2)
  {
    objc_destroyWeak((v2 + 104));
    std::__list_imp<Phase::Controller::AssetUnloader::ObjectUnloadRequest>::clear((v2 + 64));
    std::__list_imp<Phase::Controller::AssetUnloader::UnloadRequest>::clear((v2 + 40));
    Phase::Commandable<128,Phase::LockFreeQueueMPSC>::~Commandable(v2);

    JUMPOUT(0x23EE864A0);
  }

  return result;
}

void **std::unique_ptr<Phase::ActionTreeManager>::reset[abi:ne200100](void **result, void *a2)
{
  v2 = *result;
  *result = a2;
  if (v2)
  {
    caulk::concurrent::guarded_lookup_hash_table<Phase::UniqueObjectId,Phase::Controller::StreamRenderer *,(caulk::concurrent::guarded_lookup_hash_table_options)2,caulk::concurrent::guarded_lookup_default_hash_fn<Phase::UniqueObjectId>>::~guarded_lookup_hash_table((v2 + 10));
    std::__hash_table<std::__hash_value_type<Phase::UniqueObjectId,std::shared_ptr<Phase::ActionTreeObject>>,std::__unordered_map_hasher<Phase::UniqueObjectId,std::__hash_value_type<Phase::UniqueObjectId,std::shared_ptr<Phase::ActionTreeObject>>,std::hash<Phase::UniqueObjectId>,std::equal_to<Phase::UniqueObjectId>,true>,std::__unordered_map_equal<Phase::UniqueObjectId,std::__hash_value_type<Phase::UniqueObjectId,std::shared_ptr<Phase::ActionTreeObject>>,std::equal_to<Phase::UniqueObjectId>,std::hash<Phase::UniqueObjectId>,true>,std::allocator<std::__hash_value_type<Phase::UniqueObjectId,std::shared_ptr<Phase::ActionTreeObject>>>>::~__hash_table((v2 + 5));
    Phase::Commandable<128,Phase::LockFreeQueueMPSC>::~Commandable(v2);

    JUMPOUT(0x23EE864A0);
  }

  return result;
}

Phase::Controller::ClientTapRegistryProxy *std::unique_ptr<Phase::Controller::ClientTapRegistryProxy>::reset[abi:ne200100](Phase::Controller::ClientTapRegistryProxy **a1, Phase::Controller::ClientTapRegistryProxy *a2)
{
  result = *a1;
  *a1 = a2;
  if (result)
  {
    Phase::Controller::ClientTapRegistryProxy::~ClientTapRegistryProxy(result);

    JUMPOUT(0x23EE864A0);
  }

  return result;
}

uint64_t *std::unique_ptr<Phase::TapSourceRegistry>::reset[abi:ne200100](uint64_t *result, uint64_t a2)
{
  v2 = *result;
  *result = a2;
  if (v2)
  {
    std::__tree<std::__value_type<std::pair<PHASETapType,PHASETapStreamType>,std::unique_ptr<Phase::TapSourceRegistry::TapSourceInfo>>,std::__map_value_compare<std::pair<PHASETapType,PHASETapStreamType>,std::__value_type<std::pair<PHASETapType,PHASETapStreamType>,std::unique_ptr<Phase::TapSourceRegistry::TapSourceInfo>>,std::less<std::pair<PHASETapType,PHASETapStreamType>>,true>,std::allocator<std::__value_type<std::pair<PHASETapType,PHASETapStreamType>,std::unique_ptr<Phase::TapSourceRegistry::TapSourceInfo>>>>::destroy(*(v2 + 168));
    std::__tree<std::__value_type<std::pair<PHASETapType,std::string>,std::unique_ptr<Phase::TapSourceRegistry::TapSourceInfo>>,std::__map_value_compare<std::pair<PHASETapType,std::string>,std::__value_type<std::pair<PHASETapType,std::string>,std::unique_ptr<Phase::TapSourceRegistry::TapSourceInfo>>,std::less<std::pair<PHASETapType,std::string>>,true>,std::allocator<std::__value_type<std::pair<PHASETapType,std::string>,std::unique_ptr<Phase::TapSourceRegistry::TapSourceInfo>>>>::destroy(*(v2 + 144));
    std::__tree<std::__value_type<std::pair<PHASETapType,PHASETapStreamType>,std::unique_ptr<Phase::TapSourceRegistry::TapSourceInfo>>,std::__map_value_compare<std::pair<PHASETapType,PHASETapStreamType>,std::__value_type<std::pair<PHASETapType,PHASETapStreamType>,std::unique_ptr<Phase::TapSourceRegistry::TapSourceInfo>>,std::less<std::pair<PHASETapType,PHASETapStreamType>>,true>,std::allocator<std::__value_type<std::pair<PHASETapType,PHASETapStreamType>,std::unique_ptr<Phase::TapSourceRegistry::TapSourceInfo>>>>::destroy(*(v2 + 120));
    std::__tree<std::__value_type<std::pair<PHASETapType,PHASETapStreamType>,std::unique_ptr<Phase::TapSourceRegistry::TapSourceInfo>>,std::__map_value_compare<std::pair<PHASETapType,PHASETapStreamType>,std::__value_type<std::pair<PHASETapType,PHASETapStreamType>,std::unique_ptr<Phase::TapSourceRegistry::TapSourceInfo>>,std::less<std::pair<PHASETapType,PHASETapStreamType>>,true>,std::allocator<std::__value_type<std::pair<PHASETapType,PHASETapStreamType>,std::unique_ptr<Phase::TapSourceRegistry::TapSourceInfo>>>>::destroy(*(v2 + 96));
    std::__hash_table<std::__hash_value_type<PHASETapType,std::unique_ptr<Phase::TapSourceRegistry::TapSourceInfo>>,std::__unordered_map_hasher<PHASETapType,std::__hash_value_type<PHASETapType,std::unique_ptr<Phase::TapSourceRegistry::TapSourceInfo>>,std::hash<PHASETapType>,std::equal_to<PHASETapType>,true>,std::__unordered_map_equal<PHASETapType,std::__hash_value_type<PHASETapType,std::unique_ptr<Phase::TapSourceRegistry::TapSourceInfo>>,std::equal_to<PHASETapType>,std::hash<PHASETapType>,true>,std::allocator<std::__hash_value_type<PHASETapType,std::unique_ptr<Phase::TapSourceRegistry::TapSourceInfo>>>>::~__hash_table(v2 + 48);
    std::__hash_table<std::__hash_value_type<PHASETapType,std::unique_ptr<Phase::TapSourceRegistry::TapSourceInfo>>,std::__unordered_map_hasher<PHASETapType,std::__hash_value_type<PHASETapType,std::unique_ptr<Phase::TapSourceRegistry::TapSourceInfo>>,std::hash<PHASETapType>,std::equal_to<PHASETapType>,true>,std::__unordered_map_equal<PHASETapType,std::__hash_value_type<PHASETapType,std::unique_ptr<Phase::TapSourceRegistry::TapSourceInfo>>,std::equal_to<PHASETapType>,std::hash<PHASETapType>,true>,std::allocator<std::__hash_value_type<PHASETapType,std::unique_ptr<Phase::TapSourceRegistry::TapSourceInfo>>>>::~__hash_table(v2 + 8);
    objc_destroyWeak(v2);

    JUMPOUT(0x23EE864A0);
  }

  return result;
}

void std::__tree<std::__value_type<std::pair<PHASETapType,PHASETapStreamType>,std::unique_ptr<Phase::TapSourceRegistry::TapSourceInfo>>,std::__map_value_compare<std::pair<PHASETapType,PHASETapStreamType>,std::__value_type<std::pair<PHASETapType,PHASETapStreamType>,std::unique_ptr<Phase::TapSourceRegistry::TapSourceInfo>>,std::less<std::pair<PHASETapType,PHASETapStreamType>>,true>,std::allocator<std::__value_type<std::pair<PHASETapType,PHASETapStreamType>,std::unique_ptr<Phase::TapSourceRegistry::TapSourceInfo>>>>::destroy(id **a1)
{
  if (a1)
  {
    std::__tree<std::__value_type<std::pair<PHASETapType,PHASETapStreamType>,std::unique_ptr<Phase::TapSourceRegistry::TapSourceInfo>>,std::__map_value_compare<std::pair<PHASETapType,PHASETapStreamType>,std::__value_type<std::pair<PHASETapType,PHASETapStreamType>,std::unique_ptr<Phase::TapSourceRegistry::TapSourceInfo>>,std::less<std::pair<PHASETapType,PHASETapStreamType>>,true>,std::allocator<std::__value_type<std::pair<PHASETapType,PHASETapStreamType>,std::unique_ptr<Phase::TapSourceRegistry::TapSourceInfo>>>>::destroy(*a1);
    std::__tree<std::__value_type<std::pair<PHASETapType,PHASETapStreamType>,std::unique_ptr<Phase::TapSourceRegistry::TapSourceInfo>>,std::__map_value_compare<std::pair<PHASETapType,PHASETapStreamType>,std::__value_type<std::pair<PHASETapType,PHASETapStreamType>,std::unique_ptr<Phase::TapSourceRegistry::TapSourceInfo>>,std::less<std::pair<PHASETapType,PHASETapStreamType>>,true>,std::allocator<std::__value_type<std::pair<PHASETapType,PHASETapStreamType>,std::unique_ptr<Phase::TapSourceRegistry::TapSourceInfo>>>>::destroy(a1[1]);
    std::unique_ptr<Phase::TapSourceRegistry::TapSourceInfo>::~unique_ptr[abi:ne200100](a1 + 6);

    operator delete(a1);
  }
}

void std::__tree<std::__value_type<std::pair<PHASETapType,std::string>,std::unique_ptr<Phase::TapSourceRegistry::TapSourceInfo>>,std::__map_value_compare<std::pair<PHASETapType,std::string>,std::__value_type<std::pair<PHASETapType,std::string>,std::unique_ptr<Phase::TapSourceRegistry::TapSourceInfo>>,std::less<std::pair<PHASETapType,std::string>>,true>,std::allocator<std::__value_type<std::pair<PHASETapType,std::string>,std::unique_ptr<Phase::TapSourceRegistry::TapSourceInfo>>>>::destroy(char *a1)
{
  if (a1)
  {
    std::__tree<std::__value_type<std::pair<PHASETapType,std::string>,std::unique_ptr<Phase::TapSourceRegistry::TapSourceInfo>>,std::__map_value_compare<std::pair<PHASETapType,std::string>,std::__value_type<std::pair<PHASETapType,std::string>,std::unique_ptr<Phase::TapSourceRegistry::TapSourceInfo>>,std::less<std::pair<PHASETapType,std::string>>,true>,std::allocator<std::__value_type<std::pair<PHASETapType,std::string>,std::unique_ptr<Phase::TapSourceRegistry::TapSourceInfo>>>>::destroy(*a1);
    std::__tree<std::__value_type<std::pair<PHASETapType,std::string>,std::unique_ptr<Phase::TapSourceRegistry::TapSourceInfo>>,std::__map_value_compare<std::pair<PHASETapType,std::string>,std::__value_type<std::pair<PHASETapType,std::string>,std::unique_ptr<Phase::TapSourceRegistry::TapSourceInfo>>,std::less<std::pair<PHASETapType,std::string>>,true>,std::allocator<std::__value_type<std::pair<PHASETapType,std::string>,std::unique_ptr<Phase::TapSourceRegistry::TapSourceInfo>>>>::destroy(*(a1 + 1));
    std::unique_ptr<Phase::TapSourceRegistry::TapSourceInfo>::~unique_ptr[abi:ne200100](a1 + 8);
    if (a1[63] < 0)
    {
      operator delete(*(a1 + 5));
    }

    operator delete(a1);
  }
}

uint64_t std::__hash_table<std::__hash_value_type<PHASETapType,std::unique_ptr<Phase::TapSourceRegistry::TapSourceInfo>>,std::__unordered_map_hasher<PHASETapType,std::__hash_value_type<PHASETapType,std::unique_ptr<Phase::TapSourceRegistry::TapSourceInfo>>,std::hash<PHASETapType>,std::equal_to<PHASETapType>,true>,std::__unordered_map_equal<PHASETapType,std::__hash_value_type<PHASETapType,std::unique_ptr<Phase::TapSourceRegistry::TapSourceInfo>>,std::equal_to<PHASETapType>,std::hash<PHASETapType>,true>,std::allocator<std::__hash_value_type<PHASETapType,std::unique_ptr<Phase::TapSourceRegistry::TapSourceInfo>>>>::~__hash_table(uint64_t a1)
{
  v2 = *(a1 + 16);
  if (v2)
  {
    do
    {
      v3 = *v2;
      std::unique_ptr<Phase::TapSourceRegistry::TapSourceInfo>::~unique_ptr[abi:ne200100](v2 + 3);
      operator delete(v2);
      v2 = v3;
    }

    while (v3);
  }

  v4 = *a1;
  *a1 = 0;
  if (v4)
  {
    operator delete(v4);
  }

  return a1;
}

__n128 std::__function::__func<std::__bind<void (PHASEEngineImpl::*)(double),PHASEEngineImpl*,std::placeholders::__ph<1> const&>,std::allocator<std::__bind<void (PHASEEngineImpl::*)(double),PHASEEngineImpl*,std::placeholders::__ph<1> const&>>,void ()(double)>::__clone(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_284D35DB0;
  result = *(a1 + 8);
  *(a2 + 24) = *(a1 + 24);
  *(a2 + 8) = result;
  return result;
}

uint64_t std::__function::__func<std::__bind<void (PHASEEngineImpl::*)(double),PHASEEngineImpl*,std::placeholders::__ph<1> const&>,std::allocator<std::__bind<void (PHASEEngineImpl::*)(double),PHASEEngineImpl*,std::placeholders::__ph<1> const&>>,void ()(double)>::operator()(void *a1, double *a2)
{
  v2 = a1[2];
  v3 = a1[1];
  v4 = (a1[3] + (v2 >> 1));
  if (v2)
  {
    v3 = *(*v4 + v3);
  }

  return v3(v4, *a2);
}

uint64_t std::__function::__value_func<void ()(double)>::~__value_func[abi:ne200100](uint64_t a1)
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

uint64_t std::__any_imp::_SmallHandler<PHASEAssetRegistry * {__strong}>::__handle[abi:ne200100](int a1, uint64_t a2, void *a3, uint64_t a4, void *a5)
{
  if (a1 <= 1)
  {
    if (a1)
    {
      v10 = *(a2 + 8);
      result = 0;
      *a3 = std::__any_imp::_SmallHandler<PHASEAssetRegistry * {__strong}>::__handle[abi:ne200100];
      a3[1] = v10;
      return result;
    }

    goto LABEL_14;
  }

  if (a1 == 2)
  {
    v11 = *(a2 + 8);
    *(a2 + 8) = 0;
    *a3 = std::__any_imp::_SmallHandler<PHASEAssetRegistry * {__strong}>::__handle[abi:ne200100];
    a3[1] = v11;
LABEL_14:

    result = 0;
    *a2 = 0;
    return result;
  }

  v7 = a5 == &std::__any_imp::__unique_typeinfo<PHASEAssetRegistry * {__strong}>::__id && a4 == 0;
  v8 = a2 + 8;
  if (!v7)
  {
    v8 = 0;
  }

  if (a1 == 3)
  {
    return v8;
  }

  else
  {
    return 0;
  }
}

void *std::__any_imp::_SmallHandler<Phase::Controller::ClientTapRegistryProxy *>::__handle[abi:ne200100](int a1, void *a2, void *a3, uint64_t a4, void *a5)
{
  if (a1 <= 1)
  {
    if (a1)
    {
      result = 0;
      v9 = a2[1];
      *a3 = std::__any_imp::_SmallHandler<Phase::Controller::ClientTapRegistryProxy *>::__handle[abi:ne200100];
      a3[1] = v9;
      return result;
    }

    result = 0;
LABEL_14:
    *a2 = 0;
    return result;
  }

  if (a1 == 2)
  {
    result = 0;
    v8 = a2[1];
    *a3 = std::__any_imp::_SmallHandler<Phase::Controller::ClientTapRegistryProxy *>::__handle[abi:ne200100];
    a3[1] = v8;
    goto LABEL_14;
  }

  v5 = a5 == &std::__any_imp::__unique_typeinfo<Phase::Controller::ClientTapRegistryProxy *>::__id && a4 == 0;
  v6 = a2 + 1;
  if (!v5)
  {
    v6 = 0;
  }

  if (a1 == 3)
  {
    return v6;
  }

  else
  {
    return 0;
  }
}

void *std::__any_imp::_SmallHandler<Phase::TapSourceRegistry *>::__handle[abi:ne200100](int a1, void *a2, void *a3, uint64_t a4, void *a5)
{
  if (a1 <= 1)
  {
    if (a1)
    {
      result = 0;
      v9 = a2[1];
      *a3 = std::__any_imp::_SmallHandler<Phase::TapSourceRegistry *>::__handle[abi:ne200100];
      a3[1] = v9;
      return result;
    }

    result = 0;
LABEL_14:
    *a2 = 0;
    return result;
  }

  if (a1 == 2)
  {
    result = 0;
    v8 = a2[1];
    *a3 = std::__any_imp::_SmallHandler<Phase::TapSourceRegistry *>::__handle[abi:ne200100];
    a3[1] = v8;
    goto LABEL_14;
  }

  v5 = a5 == &std::__any_imp::__unique_typeinfo<Phase::TapSourceRegistry *>::__id && a4 == 0;
  v6 = a2 + 1;
  if (!v5)
  {
    v6 = 0;
  }

  if (a1 == 3)
  {
    return v6;
  }

  else
  {
    return 0;
  }
}

void Phase::GlobalMetaParameterManager::~GlobalMetaParameterManager(id *this)
{
  *this = &unk_284D35DF8;
  std::__hash_table<std::__hash_value_type<unsigned long long,PHASEGlobalMetaParameterAsset * {__weak}>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,PHASEGlobalMetaParameterAsset * {__weak}>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,PHASEGlobalMetaParameterAsset * {__weak}>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,PHASEGlobalMetaParameterAsset * {__weak}>>>::~__hash_table((this + 6));

  Phase::Commandable<128,Phase::LockFreeQueueMPSC>::~Commandable(this);
}

{
  *this = &unk_284D35DF8;
  std::__hash_table<std::__hash_value_type<unsigned long long,PHASEGlobalMetaParameterAsset * {__weak}>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,PHASEGlobalMetaParameterAsset * {__weak}>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,PHASEGlobalMetaParameterAsset * {__weak}>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,PHASEGlobalMetaParameterAsset * {__weak}>>>::~__hash_table((this + 6));

  Phase::Commandable<128,Phase::LockFreeQueueMPSC>::~Commandable(this);

  JUMPOUT(0x23EE864A0);
}

uint64_t std::__hash_table<std::__hash_value_type<unsigned long long,PHASEGlobalMetaParameterAsset * {__weak}>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,PHASEGlobalMetaParameterAsset * {__weak}>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,PHASEGlobalMetaParameterAsset * {__weak}>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,PHASEGlobalMetaParameterAsset * {__weak}>>>::~__hash_table(uint64_t a1)
{
  v2 = *(a1 + 16);
  if (v2)
  {
    do
    {
      v3 = *v2;
      objc_destroyWeak(v2 + 3);
      operator delete(v2);
      v2 = v3;
    }

    while (v3);
  }

  v4 = *a1;
  *a1 = 0;
  if (v4)
  {
    operator delete(v4);
  }

  return a1;
}

void *std::__any_imp::_SmallHandler<Phase::GlobalMetaParameterManager *>::__handle[abi:ne200100](int a1, void *a2, void *a3, uint64_t a4, void *a5)
{
  if (a1 <= 1)
  {
    if (a1)
    {
      result = 0;
      v9 = a2[1];
      *a3 = std::__any_imp::_SmallHandler<Phase::GlobalMetaParameterManager *>::__handle[abi:ne200100];
      a3[1] = v9;
      return result;
    }

    result = 0;
LABEL_14:
    *a2 = 0;
    return result;
  }

  if (a1 == 2)
  {
    result = 0;
    v8 = a2[1];
    *a3 = std::__any_imp::_SmallHandler<Phase::GlobalMetaParameterManager *>::__handle[abi:ne200100];
    a3[1] = v8;
    goto LABEL_14;
  }

  v5 = a5 == &std::__any_imp::__unique_typeinfo<Phase::GlobalMetaParameterManager *>::__id && a4 == 0;
  v6 = a2 + 1;
  if (!v5)
  {
    v6 = 0;
  }

  if (a1 == 3)
  {
    return v6;
  }

  else
  {
    return 0;
  }
}

void *std::__any_imp::_SmallHandler<Phase::Controller::GroupManager *>::__handle[abi:ne200100](int a1, void *a2, void *a3, uint64_t a4, void *a5)
{
  if (a1 <= 1)
  {
    if (a1)
    {
      result = 0;
      v9 = a2[1];
      *a3 = std::__any_imp::_SmallHandler<Phase::Controller::GroupManager *>::__handle[abi:ne200100];
      a3[1] = v9;
      return result;
    }

    result = 0;
LABEL_14:
    *a2 = 0;
    return result;
  }

  if (a1 == 2)
  {
    result = 0;
    v8 = a2[1];
    *a3 = std::__any_imp::_SmallHandler<Phase::Controller::GroupManager *>::__handle[abi:ne200100];
    a3[1] = v8;
    goto LABEL_14;
  }

  v5 = a5 == &std::__any_imp::__unique_typeinfo<Phase::Controller::GroupManager *>::__id && a4 == 0;
  v6 = a2 + 1;
  if (!v5)
  {
    v6 = 0;
  }

  if (a1 == 3)
  {
    return v6;
  }

  else
  {
    return 0;
  }
}

void *std::__any_imp::_SmallHandler<Phase::ActionTreeManager *>::__handle[abi:ne200100](int a1, void *a2, void *a3, uint64_t a4, void *a5)
{
  if (a1 <= 1)
  {
    if (a1)
    {
      result = 0;
      v9 = a2[1];
      *a3 = std::__any_imp::_SmallHandler<Phase::ActionTreeManager *>::__handle[abi:ne200100];
      a3[1] = v9;
      return result;
    }

    result = 0;
LABEL_14:
    *a2 = 0;
    return result;
  }

  if (a1 == 2)
  {
    result = 0;
    v8 = a2[1];
    *a3 = std::__any_imp::_SmallHandler<Phase::ActionTreeManager *>::__handle[abi:ne200100];
    a3[1] = v8;
    goto LABEL_14;
  }

  v5 = a5 == &std::__any_imp::__unique_typeinfo<Phase::ActionTreeManager *>::__id && a4 == 0;
  v6 = a2 + 1;
  if (!v5)
  {
    v6 = 0;
  }

  if (a1 == 3)
  {
    return v6;
  }

  else
  {
    return 0;
  }
}

void *std::__any_imp::_SmallHandler<Phase::Controller::AssetUnloader *>::__handle[abi:ne200100](int a1, void *a2, void *a3, uint64_t a4, void *a5)
{
  if (a1 <= 1)
  {
    if (a1)
    {
      result = 0;
      v9 = a2[1];
      *a3 = std::__any_imp::_SmallHandler<Phase::Controller::AssetUnloader *>::__handle[abi:ne200100];
      a3[1] = v9;
      return result;
    }

    result = 0;
LABEL_14:
    *a2 = 0;
    return result;
  }

  if (a1 == 2)
  {
    result = 0;
    v8 = a2[1];
    *a3 = std::__any_imp::_SmallHandler<Phase::Controller::AssetUnloader *>::__handle[abi:ne200100];
    a3[1] = v8;
    goto LABEL_14;
  }

  v5 = a5 == &std::__any_imp::__unique_typeinfo<Phase::Controller::AssetUnloader *>::__id && a4 == 0;
  v6 = a2 + 1;
  if (!v5)
  {
    v6 = 0;
  }

  if (a1 == 3)
  {
    return v6;
  }

  else
  {
    return 0;
  }
}

void *std::__any_imp::_SmallHandler<Phase::Controller::VoicePoolRegistry *>::__handle[abi:ne200100](int a1, void *a2, void *a3, uint64_t a4, void *a5)
{
  if (a1 <= 1)
  {
    if (a1)
    {
      result = 0;
      v9 = a2[1];
      *a3 = std::__any_imp::_SmallHandler<Phase::Controller::VoicePoolRegistry *>::__handle[abi:ne200100];
      a3[1] = v9;
      return result;
    }

    result = 0;
LABEL_14:
    *a2 = 0;
    return result;
  }

  if (a1 == 2)
  {
    result = 0;
    v8 = a2[1];
    *a3 = std::__any_imp::_SmallHandler<Phase::Controller::VoicePoolRegistry *>::__handle[abi:ne200100];
    a3[1] = v8;
    goto LABEL_14;
  }

  v5 = a5 == &std::__any_imp::__unique_typeinfo<Phase::Controller::VoicePoolRegistry *>::__id && a4 == 0;
  v6 = a2 + 1;
  if (!v5)
  {
    v6 = 0;
  }

  if (a1 == 3)
  {
    return v6;
  }

  else
  {
    return 0;
  }
}

void *std::__any_imp::_SmallHandler<Phase::Controller::ProcedureRegistry *>::__handle[abi:ne200100](int a1, void *a2, void *a3, uint64_t a4, void *a5)
{
  if (a1 <= 1)
  {
    if (a1)
    {
      result = 0;
      v9 = a2[1];
      *a3 = std::__any_imp::_SmallHandler<Phase::Controller::ProcedureRegistry *>::__handle[abi:ne200100];
      a3[1] = v9;
      return result;
    }

    result = 0;
LABEL_14:
    *a2 = 0;
    return result;
  }

  if (a1 == 2)
  {
    result = 0;
    v8 = a2[1];
    *a3 = std::__any_imp::_SmallHandler<Phase::Controller::ProcedureRegistry *>::__handle[abi:ne200100];
    a3[1] = v8;
    goto LABEL_14;
  }

  v5 = a5 == &std::__any_imp::__unique_typeinfo<Phase::Controller::ProcedureRegistry *>::__id && a4 == 0;
  v6 = a2 + 1;
  if (!v5)
  {
    v6 = 0;
  }

  if (a1 == 3)
  {
    return v6;
  }

  else
  {
    return 0;
  }
}

void *std::__any_imp::_SmallHandler<Phase::Geometry::System *>::__handle[abi:ne200100](int a1, void *a2, void *a3, uint64_t a4, void *a5)
{
  if (a1 <= 1)
  {
    if (a1)
    {
      result = 0;
      v9 = a2[1];
      *a3 = std::__any_imp::_SmallHandler<Phase::Geometry::System *>::__handle[abi:ne200100];
      a3[1] = v9;
      return result;
    }

    result = 0;
LABEL_14:
    *a2 = 0;
    return result;
  }

  if (a1 == 2)
  {
    result = 0;
    v8 = a2[1];
    *a3 = std::__any_imp::_SmallHandler<Phase::Geometry::System *>::__handle[abi:ne200100];
    a3[1] = v8;
    goto LABEL_14;
  }

  v5 = a5 == &std::__any_imp::__unique_typeinfo<Phase::Geometry::System *>::__id && a4 == 0;
  v6 = a2 + 1;
  if (!v5)
  {
    v6 = 0;
  }

  if (a1 == 3)
  {
    return v6;
  }

  else
  {
    return 0;
  }
}

void *std::__any_imp::_SmallHandler<Phase::Controller::SharedEntityManager *>::__handle[abi:ne200100](int a1, void *a2, void *a3, uint64_t a4, void *a5)
{
  if (a1 <= 1)
  {
    if (a1)
    {
      result = 0;
      v9 = a2[1];
      *a3 = std::__any_imp::_SmallHandler<Phase::Controller::SharedEntityManager *>::__handle[abi:ne200100];
      a3[1] = v9;
      return result;
    }

    result = 0;
LABEL_14:
    *a2 = 0;
    return result;
  }

  if (a1 == 2)
  {
    result = 0;
    v8 = a2[1];
    *a3 = std::__any_imp::_SmallHandler<Phase::Controller::SharedEntityManager *>::__handle[abi:ne200100];
    a3[1] = v8;
    goto LABEL_14;
  }

  v5 = a5 == &std::__any_imp::__unique_typeinfo<Phase::Controller::SharedEntityManager *>::__id && a4 == 0;
  v6 = a2 + 1;
  if (!v5)
  {
    v6 = 0;
  }

  if (a1 == 3)
  {
    return v6;
  }

  else
  {
    return 0;
  }
}

void *std::__any_imp::_SmallHandler<Phase::Controller::ListenerManager *>::__handle[abi:ne200100](int a1, void *a2, void *a3, uint64_t a4, void *a5)
{
  if (a1 <= 1)
  {
    if (a1)
    {
      result = 0;
      v9 = a2[1];
      *a3 = std::__any_imp::_SmallHandler<Phase::Controller::ListenerManager *>::__handle[abi:ne200100];
      a3[1] = v9;
      return result;
    }

    result = 0;
LABEL_14:
    *a2 = 0;
    return result;
  }

  if (a1 == 2)
  {
    result = 0;
    v8 = a2[1];
    *a3 = std::__any_imp::_SmallHandler<Phase::Controller::ListenerManager *>::__handle[abi:ne200100];
    a3[1] = v8;
    goto LABEL_14;
  }

  v5 = a5 == &std::__any_imp::__unique_typeinfo<Phase::Controller::ListenerManager *>::__id && a4 == 0;
  v6 = a2 + 1;
  if (!v5)
  {
    v6 = 0;
  }

  if (a1 == 3)
  {
    return v6;
  }

  else
  {
    return 0;
  }
}

void *std::__any_imp::_SmallHandler<Phase::Controller::SpatialModelerRegistry *>::__handle[abi:ne200100](int a1, void *a2, void *a3, uint64_t a4, void *a5)
{
  if (a1 <= 1)
  {
    if (a1)
    {
      result = 0;
      v9 = a2[1];
      *a3 = std::__any_imp::_SmallHandler<Phase::Controller::SpatialModelerRegistry *>::__handle[abi:ne200100];
      a3[1] = v9;
      return result;
    }

    result = 0;
LABEL_14:
    *a2 = 0;
    return result;
  }

  if (a1 == 2)
  {
    result = 0;
    v8 = a2[1];
    *a3 = std::__any_imp::_SmallHandler<Phase::Controller::SpatialModelerRegistry *>::__handle[abi:ne200100];
    a3[1] = v8;
    goto LABEL_14;
  }

  v5 = a5 == &std::__any_imp::__unique_typeinfo<Phase::Controller::SpatialModelerRegistry *>::__id && a4 == 0;
  v6 = a2 + 1;
  if (!v5)
  {
    v6 = 0;
  }

  if (a1 == 3)
  {
    return v6;
  }

  else
  {
    return 0;
  }
}

void *std::__any_imp::_SmallHandler<Phase::Controller::SpatializerManager *>::__handle[abi:ne200100](int a1, void *a2, void *a3, uint64_t a4, void *a5)
{
  if (a1 <= 1)
  {
    if (a1)
    {
      result = 0;
      v9 = a2[1];
      *a3 = std::__any_imp::_SmallHandler<Phase::Controller::SpatializerManager *>::__handle[abi:ne200100];
      a3[1] = v9;
      return result;
    }

    result = 0;
LABEL_14:
    *a2 = 0;
    return result;
  }

  if (a1 == 2)
  {
    result = 0;
    v8 = a2[1];
    *a3 = std::__any_imp::_SmallHandler<Phase::Controller::SpatializerManager *>::__handle[abi:ne200100];
    a3[1] = v8;
    goto LABEL_14;
  }

  v5 = a5 == &std::__any_imp::__unique_typeinfo<Phase::Controller::SpatializerManager *>::__id && a4 == 0;
  v6 = a2 + 1;
  if (!v5)
  {
    v6 = 0;
  }

  if (a1 == 3)
  {
    return v6;
  }

  else
  {
    return 0;
  }
}

void *std::__any_imp::_SmallHandler<Phase::Controller::DeviceManager *>::__handle[abi:ne200100](int a1, void *a2, void *a3, uint64_t a4, void *a5)
{
  if (a1 <= 1)
  {
    if (a1)
    {
      result = 0;
      v9 = a2[1];
      *a3 = std::__any_imp::_SmallHandler<Phase::Controller::DeviceManager *>::__handle[abi:ne200100];
      a3[1] = v9;
      return result;
    }

    result = 0;
LABEL_14:
    *a2 = 0;
    return result;
  }

  if (a1 == 2)
  {
    result = 0;
    v8 = a2[1];
    *a3 = std::__any_imp::_SmallHandler<Phase::Controller::DeviceManager *>::__handle[abi:ne200100];
    a3[1] = v8;
    goto LABEL_14;
  }

  v5 = a5 == &std::__any_imp::__unique_typeinfo<Phase::Controller::DeviceManager *>::__id && a4 == 0;
  v6 = a2 + 1;
  if (!v5)
  {
    v6 = 0;
  }

  if (a1 == 3)
  {
    return v6;
  }

  else
  {
    return 0;
  }
}

void *std::__any_imp::_SmallHandler<Phase::Controller::IR::IRBuilder *>::__handle[abi:ne200100](int a1, void *a2, void *a3, uint64_t a4, void *a5)
{
  if (a1 <= 1)
  {
    if (a1)
    {
      result = 0;
      v9 = a2[1];
      *a3 = std::__any_imp::_SmallHandler<Phase::Controller::IR::IRBuilder *>::__handle[abi:ne200100];
      a3[1] = v9;
      return result;
    }

    result = 0;
LABEL_14:
    *a2 = 0;
    return result;
  }

  if (a1 == 2)
  {
    result = 0;
    v8 = a2[1];
    *a3 = std::__any_imp::_SmallHandler<Phase::Controller::IR::IRBuilder *>::__handle[abi:ne200100];
    a3[1] = v8;
    goto LABEL_14;
  }

  v5 = a5 == &std::__any_imp::__unique_typeinfo<Phase::Controller::IR::IRBuilder *>::__id && a4 == 0;
  v6 = a2 + 1;
  if (!v5)
  {
    v6 = 0;
  }

  if (a1 == 3)
  {
    return v6;
  }

  else
  {
    return 0;
  }
}

void *std::__any_imp::_SmallHandler<Phase::Controller::StatisticsDatabase *>::__handle[abi:ne200100](int a1, void *a2, void *a3, uint64_t a4, void *a5)
{
  if (a1 <= 1)
  {
    if (a1)
    {
      result = 0;
      v9 = a2[1];
      *a3 = std::__any_imp::_SmallHandler<Phase::Controller::StatisticsDatabase *>::__handle[abi:ne200100];
      a3[1] = v9;
      return result;
    }

    result = 0;
LABEL_14:
    *a2 = 0;
    return result;
  }

  if (a1 == 2)
  {
    result = 0;
    v8 = a2[1];
    *a3 = std::__any_imp::_SmallHandler<Phase::Controller::StatisticsDatabase *>::__handle[abi:ne200100];
    a3[1] = v8;
    goto LABEL_14;
  }

  v5 = a5 == &std::__any_imp::__unique_typeinfo<Phase::Controller::StatisticsDatabase *>::__id && a4 == 0;
  v6 = a2 + 1;
  if (!v5)
  {
    v6 = 0;
  }

  if (a1 == 3)
  {
    return v6;
  }

  else
  {
    return 0;
  }
}

void *std::__any_imp::_SmallHandler<Phase::Controller::CalibrationManager *>::__handle[abi:ne200100](int a1, void *a2, void *a3, uint64_t a4, void *a5)
{
  if (a1 <= 1)
  {
    if (a1)
    {
      result = 0;
      v9 = a2[1];
      *a3 = std::__any_imp::_SmallHandler<Phase::Controller::CalibrationManager *>::__handle[abi:ne200100];
      a3[1] = v9;
      return result;
    }

    result = 0;
LABEL_14:
    *a2 = 0;
    return result;
  }

  if (a1 == 2)
  {
    result = 0;
    v8 = a2[1];
    *a3 = std::__any_imp::_SmallHandler<Phase::Controller::CalibrationManager *>::__handle[abi:ne200100];
    a3[1] = v8;
    goto LABEL_14;
  }

  v5 = a5 == &std::__any_imp::__unique_typeinfo<Phase::Controller::CalibrationManager *>::__id && a4 == 0;
  v6 = a2 + 1;
  if (!v5)
  {
    v6 = 0;
  }

  if (a1 == 3)
  {
    return v6;
  }

  else
  {
    return 0;
  }
}

void *std::__any_imp::_SmallHandler<Phase::Controller::SessionManager *>::__handle[abi:ne200100](int a1, void *a2, void *a3, uint64_t a4, void *a5)
{
  if (a1 <= 1)
  {
    if (a1)
    {
      result = 0;
      v9 = a2[1];
      *a3 = std::__any_imp::_SmallHandler<Phase::Controller::SessionManager *>::__handle[abi:ne200100];
      a3[1] = v9;
      return result;
    }

    result = 0;
LABEL_14:
    *a2 = 0;
    return result;
  }

  if (a1 == 2)
  {
    result = 0;
    v8 = a2[1];
    *a3 = std::__any_imp::_SmallHandler<Phase::Controller::SessionManager *>::__handle[abi:ne200100];
    a3[1] = v8;
    goto LABEL_14;
  }

  v5 = a5 == &std::__any_imp::__unique_typeinfo<Phase::Controller::SessionManager *>::__id && a4 == 0;
  v6 = a2 + 1;
  if (!v5)
  {
    v6 = 0;
  }

  if (a1 == 3)
  {
    return v6;
  }

  else
  {
    return 0;
  }
}

void *std::__any_imp::_SmallHandler<Phase::Controller::RoomCongruenceManager *>::__handle[abi:ne200100](int a1, void *a2, void *a3, uint64_t a4, void *a5)
{
  if (a1 <= 1)
  {
    if (a1)
    {
      result = 0;
      v9 = a2[1];
      *a3 = std::__any_imp::_SmallHandler<Phase::Controller::RoomCongruenceManager *>::__handle[abi:ne200100];
      a3[1] = v9;
      return result;
    }

    result = 0;
LABEL_14:
    *a2 = 0;
    return result;
  }

  if (a1 == 2)
  {
    result = 0;
    v8 = a2[1];
    *a3 = std::__any_imp::_SmallHandler<Phase::Controller::RoomCongruenceManager *>::__handle[abi:ne200100];
    a3[1] = v8;
    goto LABEL_14;
  }

  v5 = a5 == &std::__any_imp::__unique_typeinfo<Phase::Controller::RoomCongruenceManager *>::__id && a4 == 0;
  v6 = a2 + 1;
  if (!v5)
  {
    v6 = 0;
  }

  if (a1 == 3)
  {
    return v6;
  }

  else
  {
    return 0;
  }
}

void *std::__any_imp::_SmallHandler<Phase::Controller::VoiceManager *>::__handle[abi:ne200100](int a1, void *a2, void *a3, uint64_t a4, void *a5)
{
  if (a1 <= 1)
  {
    if (a1)
    {
      result = 0;
      v9 = a2[1];
      *a3 = std::__any_imp::_SmallHandler<Phase::Controller::VoiceManager *>::__handle[abi:ne200100];
      a3[1] = v9;
      return result;
    }

    result = 0;
LABEL_14:
    *a2 = 0;
    return result;
  }

  if (a1 == 2)
  {
    result = 0;
    v8 = a2[1];
    *a3 = std::__any_imp::_SmallHandler<Phase::Controller::VoiceManager *>::__handle[abi:ne200100];
    a3[1] = v8;
    goto LABEL_14;
  }

  v5 = a5 == &std::__any_imp::__unique_typeinfo<Phase::Controller::VoiceManager *>::__id && a4 == 0;
  v6 = a2 + 1;
  if (!v5)
  {
    v6 = 0;
  }

  if (a1 == 3)
  {
    return v6;
  }

  else
  {
    return 0;
  }
}

uint64_t std::__any_imp::_SmallHandler<ExternalStreamManager * {__strong}>::__handle[abi:ne200100](int a1, uint64_t a2, void *a3, uint64_t a4, void *a5)
{
  if (a1 <= 1)
  {
    if (a1)
    {
      v10 = *(a2 + 8);
      result = 0;
      *a3 = std::__any_imp::_SmallHandler<ExternalStreamManager * {__strong}>::__handle[abi:ne200100];
      a3[1] = v10;
      return result;
    }

    goto LABEL_14;
  }

  if (a1 == 2)
  {
    v11 = *(a2 + 8);
    *(a2 + 8) = 0;
    *a3 = std::__any_imp::_SmallHandler<ExternalStreamManager * {__strong}>::__handle[abi:ne200100];
    a3[1] = v11;
LABEL_14:

    result = 0;
    *a2 = 0;
    return result;
  }

  v7 = a5 == &std::__any_imp::__unique_typeinfo<ExternalStreamManager * {__strong}>::__id && a4 == 0;
  v8 = a2 + 8;
  if (!v7)
  {
    v8 = 0;
  }

  if (a1 == 3)
  {
    return v8;
  }

  else
  {
    return 0;
  }
}

__CFString *GetCalibrationModeString(PHASECalibrationMode a1)
{
  v1 = @"none";
  if (a1 == PHASECalibrationModeRelativeSpl)
  {
    v1 = @"relative_spl";
  }

  if (a1 == PHASECalibrationModeAbsoluteSpl)
  {
    return @"absolute_spl";
  }

  else
  {
    return v1;
  }
}

__CFString *GetCullOptionString(PHASECullOption a1)
{
  if ((a1 - 1) > 3)
  {
    return @"terminate";
  }

  else
  {
    return off_278B4F748[a1 - 1];
  }
}

uint64_t GetCullOption(NSString *a1)
{
  v1 = a1;
  if ([(NSString *)v1 isEqualToString:@"terminate"])
  {
    v2 = 0;
  }

  else if ([(NSString *)v1 isEqualToString:@"sleep_wake_at_zero"])
  {
    v2 = 1;
  }

  else if ([(NSString *)v1 isEqualToString:@"sleep_wake_at_random_offset"])
  {
    v2 = 2;
  }

  else if ([(NSString *)v1 isEqualToString:@"sleep_wake_at_realtime_offset"])
  {
    v2 = 3;
  }

  else if ([(NSString *)v1 isEqualToString:@"do_not_cull"])
  {
    v2 = 4;
  }

  else
  {
    v2 = 0;
  }

  return v2;
}

__CFString *GetPlaybackModeString(PHASEPlaybackMode a1)
{
  if (a1 == PHASEPlaybackModeLooping)
  {
    return @"looping";
  }

  else
  {
    return @"one_shot";
  }
}

uint64_t GetPlaybackMode(NSString *a1)
{
  v1 = a1;
  if ([(NSString *)v1 isEqualToString:@"one_shot"])
  {
    v2 = 0;
  }

  else
  {
    v2 = [(NSString *)v1 isEqualToString:@"looping"];
  }

  return v2;
}

__CFString *GetVoiceStealingTypeString(uint64_t a1)
{
  v1 = @"none";
  if (a1 == 1)
  {
    v1 = @"oldest";
  }

  if (a1 == 2)
  {
    return @"quietest";
  }

  else
  {
    return v1;
  }
}

uint64_t GetVoiceStealingType(NSString *a1)
{
  v1 = a1;
  if ([(NSString *)v1 isEqualToString:@"none"])
  {
    v2 = 0;
  }

  else if ([(NSString *)v1 isEqualToString:@"oldest"])
  {
    v2 = 1;
  }

  else if ([(NSString *)v1 isEqualToString:@"quietest"])
  {
    v2 = 2;
  }

  else
  {
    v2 = 0;
  }

  return v2;
}

__CFString *GetCurveTypeString(PHASECurveType a1)
{
  v1 = @"linear";
  if (a1 > 1668434258)
  {
    v2 = 1668436838;
    v10 = @"sine";
    v11 = @"squared";
    if (a1 != PHASECurveTypeSquared)
    {
      v11 = @"linear";
    }

    if (a1 != PHASECurveTypeSine)
    {
      v10 = v11;
    }

    if (a1 == PHASECurveTypeSigmoid)
    {
      v5 = @"sigmoid";
    }

    else
    {
      v5 = v10;
    }

    v6 = 1668434259;
    v7 = @"inversesine";
    v8 = 1668434501;
    v9 = @"jumptoendvalue";
  }

  else
  {
    v2 = 1668434242;
    v3 = @"inversesigmoid";
    v4 = @"inversesquared";
    if (a1 != PHASECurveTypeInverseSquared)
    {
      v4 = @"linear";
    }

    if (a1 != PHASECurveTypeInverseSigmoid)
    {
      v3 = v4;
    }

    if (a1 == PHASECurveTypeInverseCubed)
    {
      v5 = @"inversecubed";
    }

    else
    {
      v5 = v3;
    }

    v6 = 1668432757;
    v7 = @"cubed";
    v8 = 1668434003;
    v9 = @"holdstartvalue";
  }

  if (a1 == v8)
  {
    v1 = v9;
  }

  if (a1 == v6)
  {
    v1 = v7;
  }

  if (a1 <= v2)
  {
    return v1;
  }

  else
  {
    return v5;
  }
}

uint64_t GetCurveType(NSString *a1)
{
  v1 = a1;
  v2 = 1668435054;
  if (![(NSString *)v1 isEqualToString:@"linear"])
  {
    if ([(NSString *)v1 isEqualToString:@"squared"])
    {
      v2 = 1668436849;
    }

    else if ([(NSString *)v1 isEqualToString:@"inversesquared"])
    {
      v2 = 1668434257;
    }

    else if ([(NSString *)v1 isEqualToString:@"cubed"])
    {
      v2 = 1668432757;
    }

    else if ([(NSString *)v1 isEqualToString:@"inversecubed"])
    {
      v2 = 1668434243;
    }

    else if ([(NSString *)v1 isEqualToString:@"inversesine"])
    {
      v2 = 1668434259;
    }

    else if ([(NSString *)v1 isEqualToString:@"sine"])
    {
      v2 = 1668436846;
    }

    else if ([(NSString *)v1 isEqualToString:@"sigmoid"])
    {
      v2 = 1668436839;
    }

    else if ([(NSString *)v1 isEqualToString:@"inversesigmoid"])
    {
      v2 = 1668434247;
    }

    else if ([(NSString *)v1 isEqualToString:@"holdstartvalue"])
    {
      v2 = 1668434003;
    }

    else if ([(NSString *)v1 isEqualToString:@"jumptoendvalue"])
    {
      v2 = 1668434501;
    }
  }

  return v2;
}

uint64_t GetMixerType(NSString *a1)
{
  v1 = a1;
  if ([(NSString *)v1 isEqualToString:@"spatial"])
  {
    v2 = 1;
  }

  else if ([(NSString *)v1 isEqualToString:@"channel"])
  {
    v2 = 3;
  }

  else if ([(NSString *)v1 isEqualToString:@"ambient"])
  {
    v2 = 2;
  }

  else
  {
    v2 = 0;
  }

  return v2;
}

uint64_t GetDistanceModelType(NSString *a1)
{
  v1 = a1;
  if ([(NSString *)v1 isEqualToString:@"none"])
  {
    v2 = 0;
  }

  else if ([(NSString *)v1 isEqualToString:@"geometric_spreading"])
  {
    v2 = 1;
  }

  else if ([(NSString *)v1 isEqualToString:@"envelope"])
  {
    v2 = 2;
  }

  else
  {
    v2 = 0;
  }

  return v2;
}

uint64_t GetDirectivityModelType(NSString *a1)
{
  v1 = a1;
  if ([(NSString *)v1 isEqualToString:@"none"])
  {
    v2 = 0;
  }

  else if ([(NSString *)v1 isEqualToString:@"cardioid"])
  {
    v2 = 1;
  }

  else if ([(NSString *)v1 isEqualToString:@"cone"])
  {
    v2 = 2;
  }

  else if ([(NSString *)v1 isEqualToString:@"sphericalcap"])
  {
    v2 = 3;
  }

  else
  {
    v2 = 0;
  }

  return v2;
}

id GetChannelLayoutString(Phase::ChannelLayout *a1)
{
  Phase::ChannelLayout::GetStringFromLayoutTag(a1, __p);
  v1 = MEMORY[0x277CCACA8];
  v2 = v9;
  v3 = __p[0];
  v4 = [MEMORY[0x277CCACA8] defaultCStringEncoding];
  if (v2 >= 0)
  {
    v5 = __p;
  }

  else
  {
    v5 = v3;
  }

  v6 = [v1 stringWithCString:v5 encoding:v4];
  if (v9 < 0)
  {
    operator delete(__p[0]);
  }

  return v6;
}

void sub_23A474A4C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t GetProcedureType(NSString *a1)
{
  v1 = a1;
  v2 = ![(NSString *)v1 isEqualToString:@"none"]&& [(NSString *)v1 isEqualToString:@"water"];

  return v2;
}

uint64_t GetSpatialCategory(NSString *a1)
{
  v1 = a1;
  if ([(NSString *)v1 isEqualToString:@"direct_path_transmission"])
  {
    v2 = 1;
  }

  else if ([(NSString *)v1 isEqualToString:@"early_reflections"])
  {
    v2 = 2;
  }

  else if ([(NSString *)v1 isEqualToString:@"late_reverb"])
  {
    v2 = 3;
  }

  else
  {
    v2 = 0;
  }

  return v2;
}

__CFString *GetSpatialCategoryString(int a1)
{
  if ((a1 - 1) > 2)
  {
    return @"Invalid";
  }

  else
  {
    return off_278B4F768[a1 - 1];
  }
}

__CFString *GetSpatialCategoryStringFromSpatialCategoryKey(NSString *a1)
{
  v1 = a1;
  if ([(NSString *)v1 isEqualToString:@"PHASEDirectPathTransmission"])
  {
    v2 = @"direct_path_transmission";
  }

  else if ([(NSString *)v1 isEqualToString:@"PHASEEarlyReflections"])
  {
    v2 = @"early_reflections";
  }

  else if ([(NSString *)v1 isEqualToString:@"PHASELateReverb"])
  {
    v2 = @"late_reverb";
  }

  else
  {
    v2 = @"Invalid";
  }

  return v2;
}

__CFString *GetTapTypeString(uint64_t a1)
{
  v1 = @"Invalid";
  if (a1 == 1)
  {
    v1 = @"PHASETapTypePreSpatial_PreSessionVolume";
  }

  if (a1)
  {
    return v1;
  }

  else
  {
    return @"PHASETapTypePreSpatial";
  }
}

void sub_23A4750DC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, char a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, void **a24)
{
  a24 = &a12;
  std::vector<Phase::Envelope<double>::Segment,std::allocator<Phase::Envelope<double>::Segment>>::__destroy_vector::operator()[abi:ne200100](&a24);

  _Unwind_Resume(a1);
}

double Phase::Envelope<double>::Range(uint64_t *a1)
{
  v2 = std::__minmax_element_impl[abi:ne200100]<std::__wrap_iter<Phase::Envelope<double>::SegmentInternal const*>,std::__wrap_iter<Phase::Envelope<double>::SegmentInternal const*>,std::__identity,Phase::Envelope<double>::Range(void)::{lambda(Phase::Envelope<double>::SegmentInternal const&,Phase::Envelope<double>::SegmentInternal const&)#1}>(*a1, a1[1]);
  result = *(std::__minmax_element_impl[abi:ne200100]<std::__wrap_iter<Phase::Envelope<double>::SegmentInternal const*>,std::__wrap_iter<Phase::Envelope<double>::SegmentInternal const*>,std::__identity,Phase::Envelope<double>::Range(void)::{lambda(Phase::Envelope<double>::SegmentInternal const&,Phase::Envelope<double>::SegmentInternal const&)#2}>(*a1, a1[1]) + 24);
  if (result >= *(v2 + 8))
  {
    return *(v2 + 8);
  }

  return result;
}

uint64_t std::vector<Phase::Envelope<double>::Segment,std::allocator<Phase::Envelope<double>::Segment>>::__emplace_back_slow_path<Phase::Envelope<double>::Segment const&>(uint64_t *a1, void *a2)
{
  v2 = 0xAAAAAAAAAAAAAAABLL * ((a1[1] - *a1) >> 4);
  v3 = v2 + 1;
  if (v2 + 1 > 0x555555555555555)
  {
    std::vector<Phase::MetaParamValue>::__throw_length_error[abi:ne200100]();
  }

  if (0x5555555555555556 * ((a1[2] - *a1) >> 4) > v3)
  {
    v3 = 0x5555555555555556 * ((a1[2] - *a1) >> 4);
  }

  if (0xAAAAAAAAAAAAAAABLL * ((a1[2] - *a1) >> 4) >= 0x2AAAAAAAAAAAAAALL)
  {
    v6 = 0x555555555555555;
  }

  else
  {
    v6 = v3;
  }

  v17 = a1;
  if (v6)
  {
    std::__allocate_at_least[abi:ne200100]<std::allocator<Phase::Envelope<double>::Segment>>(a1, v6);
  }

  v7 = 48 * v2;
  v14 = 0;
  v15 = v7;
  v16 = 48 * v2;
  *v7 = *a2;
  *(v7 + 8) = a2[1];
  std::__function::__value_func<double ()(double)>::__value_func[abi:ne200100](48 * v2 + 16, (a2 + 2));
  *&v16 = v16 + 48;
  v8 = a1[1];
  v9 = v15 + *a1 - v8;
  std::__uninitialized_allocator_relocate[abi:ne200100]<std::allocator<Phase::Envelope<double>::Segment>,Phase::Envelope<double>::Segment*>(a1, *a1, v8, v9);
  v10 = *a1;
  *a1 = v9;
  v11 = a1[2];
  v13 = v16;
  *(a1 + 1) = v16;
  *&v16 = v10;
  *(&v16 + 1) = v11;
  v14 = v10;
  v15 = v10;
  std::__split_buffer<Phase::Envelope<double>::Segment,std::allocator<Phase::Envelope<double>::Segment> &>::~__split_buffer(&v14);
  return v13;
}

void sub_23A47540C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  std::__split_buffer<Phase::Envelope<double>::Segment,std::allocator<Phase::Envelope<double>::Segment> &>::~__split_buffer(va);
  _Unwind_Resume(a1);
}

uint64_t std::__uninitialized_allocator_relocate[abi:ne200100]<std::allocator<Phase::Envelope<double>::Segment>,Phase::Envelope<double>::Segment*>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a2 != a3)
  {
    v6 = a2;
    v7 = 0;
    do
    {
      v8 = v6 + v7;
      v9 = (a4 + v7);
      *v9 = *(v6 + v7);
      v9[1] = *(v6 + v7 + 8);
      std::__function::__value_func<double ()(double)>::__value_func[abi:ne200100](a4 + v7 + 16, v6 + v7 + 16);
      v7 += 48;
    }

    while (v8 + 48 != a3);
    do
    {
      result = std::__function::__value_func<double ()(double)>::~__value_func[abi:ne200100](v6 + 16);
      v6 += 48;
    }

    while (v6 != a3);
  }

  return result;
}

void sub_23A4754AC(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    v4 = -v1;
    v5 = v2 - 32;
    do
    {
      v5 = std::__function::__value_func<double ()(double)>::~__value_func[abi:ne200100](v5) - 48;
      v4 += 48;
    }

    while (v4);
  }

  _Unwind_Resume(exception_object);
}

uint64_t std::__split_buffer<Phase::Envelope<double>::Segment,std::allocator<Phase::Envelope<double>::Segment> &>::~__split_buffer(uint64_t a1)
{
  v3 = *(a1 + 8);
  for (i = *(a1 + 16); i != v3; i = *(a1 + 16))
  {
    *(a1 + 16) = i - 48;
    std::__function::__value_func<double ()(double)>::~__value_func[abi:ne200100](i - 32);
  }

  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

void ***std::unique_ptr<Phase::Envelope<double>>::reset[abi:ne200100](void ***result, void **a2)
{
  v2 = *result;
  *result = a2;
  if (v2)
  {
    v3 = v2;
    std::vector<Phase::Envelope<double>::SegmentInternal,std::allocator<Phase::Envelope<double>::SegmentInternal>>::__destroy_vector::operator()[abi:ne200100](&v3);
    return MEMORY[0x23EE864A0](v2, 0x20C40960023A9);
  }

  return result;
}

uint64_t std::__minmax_element_impl[abi:ne200100]<std::__wrap_iter<Phase::Envelope<double>::SegmentInternal const*>,std::__wrap_iter<Phase::Envelope<double>::SegmentInternal const*>,std::__identity,Phase::Envelope<double>::Range(void)::{lambda(Phase::Envelope<double>::SegmentInternal const&,Phase::Envelope<double>::SegmentInternal const&)#1}>(uint64_t result, uint64_t a2)
{
  v2 = result;
  if (result != a2 && result + 64 != a2)
  {
    if (*(result + 72) >= *(result + 8))
    {
      v4 = result + 64;
    }

    else
    {
      result += 64;
      v4 = v2;
    }

    v5 = v2 + 128;
    while (v5 != a2)
    {
      v6 = v5;
      v7 = v5 + 64;
      if (v7 == a2)
      {
        if (*(v6 + 8) < *(result + 8))
        {
          return v6;
        }

        return result;
      }

      v8 = v2 + 192;
      v9 = *(v6 + 72);
      v10 = *(v6 + 8);
      v11 = *(result + 8);
      v12 = *(v4 + 8);
      if (v10 >= v11)
      {
        v13 = result;
      }

      else
      {
        v13 = v6;
      }

      if (v9 < v12)
      {
        v8 = v4;
      }

      if (v9 >= v11)
      {
        v7 = result;
      }

      if (v10 >= v12)
      {
        v14 = v6;
      }

      else
      {
        v14 = v4;
      }

      if (v9 < v10)
      {
        result = v7;
      }

      else
      {
        result = v13;
      }

      if (v9 < v10)
      {
        v4 = v14;
      }

      else
      {
        v4 = v8;
      }

      v5 = v6 + 128;
      v2 = v6;
    }
  }

  return result;
}

uint64_t std::__minmax_element_impl[abi:ne200100]<std::__wrap_iter<Phase::Envelope<double>::SegmentInternal const*>,std::__wrap_iter<Phase::Envelope<double>::SegmentInternal const*>,std::__identity,Phase::Envelope<double>::Range(void)::{lambda(Phase::Envelope<double>::SegmentInternal const&,Phase::Envelope<double>::SegmentInternal const&)#2}>(uint64_t result, uint64_t a2)
{
  v2 = result;
  if (result != a2 && result + 64 != a2)
  {
    if (*(result + 88) >= *(result + 24))
    {
      v4 = result + 64;
    }

    else
    {
      result += 64;
      v4 = v2;
    }

    v5 = v2 + 128;
    while (v5 != a2)
    {
      v6 = v5;
      v7 = v5 + 64;
      if (v7 == a2)
      {
        if (*(v6 + 24) < *(result + 24))
        {
          return v6;
        }

        return result;
      }

      v8 = v2 + 192;
      v9 = *(v6 + 88);
      v10 = *(v6 + 24);
      v11 = *(result + 24);
      v12 = *(v4 + 24);
      if (v10 >= v11)
      {
        v13 = result;
      }

      else
      {
        v13 = v6;
      }

      if (v9 < v12)
      {
        v8 = v4;
      }

      if (v9 >= v11)
      {
        v7 = result;
      }

      if (v10 >= v12)
      {
        v14 = v6;
      }

      else
      {
        v14 = v4;
      }

      if (v9 < v10)
      {
        result = v7;
      }

      else
      {
        result = v13;
      }

      if (v9 < v10)
      {
        v4 = v14;
      }

      else
      {
        v4 = v8;
      }

      v5 = v6 + 128;
      v2 = v6;
    }
  }

  return result;
}

void sub_23A475AFC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, id a12)
{
  objc_sync_exit(v13);

  _Unwind_Resume(a1);
}

void sub_23A476820(_Unwind_Exception *a1)
{
  objc_sync_exit(v1);

  _Unwind_Resume(a1);
}

void sub_23A478344(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, void *__p, uint64_t a17, uint64_t a18, void *a19, uint64_t a20, uint64_t a21, void *a22, uint64_t a23, uint64_t a24, void *a25, uint64_t a26)
{
  v29 = *(v27 - 112);
  if (v29)
  {
    operator delete(v29);
  }

  if (__p)
  {
    operator delete(__p);
  }

  if (v26)
  {
    operator delete(v26);
  }

  if (a19)
  {
    operator delete(a19);
  }

  if (a22)
  {
    operator delete(a22);
  }

  if (a25)
  {
    operator delete(a25);
  }

  v30 = *(v27 - 136);
  if (v30)
  {
    *(v27 - 128) = v30;
    operator delete(v30);
  }

  _Unwind_Resume(exception_object);
}

void sub_23A47884C(_Unwind_Exception *a1)
{
  objc_sync_exit(*(v1 - 24));

  _Unwind_Resume(a1);
}

void sub_23A478BE8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, objc_super a9)
{
  a9.super_class = PHASEEnvironmentalMetadataStream;
  [(_Unwind_Exception *)&a9 dealloc];
  _Unwind_Resume(a1);
}

uint64_t std::__function::__value_func<void * ()(unsigned long,unsigned long long &)>::__value_func[abi:ne200100](uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 24);
  if (v3)
  {
    if (v3 == a2)
    {
      *(a1 + 24) = a1;
      (*(**(a2 + 24) + 24))(*(a2 + 24), a1);
    }

    else
    {
      *(a1 + 24) = (*(*v3 + 16))(v3);
    }
  }

  else
  {
    *(a1 + 24) = 0;
  }

  return a1;
}

uint64_t std::__function::__value_func<void * ()(unsigned long,unsigned long long &)>::~__value_func[abi:ne200100](uint64_t a1)
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

uint64_t PHASEEnvironmentalMetadataStreamKeyIsPublished(NSString *a1)
{
  v1 = a1;
  v2 = MEMORY[0x277CBEB98];
  if (qword_27DF97B88 != -1)
  {
    dispatch_once(&qword_27DF97B88, &__block_literal_global_3);
  }

  v3 = [v2 setWithArray:_MergedGlobals_19];
  v4 = [v3 containsObject:v1];

  return v4;
}

void ___ZL13PublishedKeysv_block_invoke()
{
  v2[2] = *MEMORY[0x277D85DE8];
  v2[0] = @"PHASEDefaultReverb";
  v2[1] = @"PHASEAcousticRoomEstimationData";
  v0 = [MEMORY[0x277CBEA60] arrayWithObjects:v2 count:2];
  v1 = _MergedGlobals_19;
  _MergedGlobals_19 = v0;
}

void sub_23A479318(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, objc_super a9)
{
  v10 = v9;
  a9.receiver = v10;
  a9.super_class = PHASEExternalStream;
  [(_Unwind_Exception *)&a9 dealloc];
  _Unwind_Resume(a1);
}

void sub_23A4794B4(_Unwind_Exception *a1)
{
  v5 = v4;

  _Unwind_Resume(a1);
}

uint64_t sDefaultAudioSessionToken(void)
{
  if ((gInProcessServer & 1) == 0 && ihdYoUjk3kGK > 0)
  {
    return 0;
  }

  v1 = [MEMORY[0x277CB83F8] sharedInstance];
  v0 = [v1 opaqueSessionID];

  return v0;
}

void sub_23A47BF30(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, id a16)
{
  v24 = v23;

  _Unwind_Resume(a1);
}

void sub_23A47C204(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *a14, void *a15, void *a16, void *a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, void *a22, void *a23, void *a24)
{
  objc_destroyWeak((v24 + 32));
  objc_destroyWeak((v32 - 120));

  _Unwind_Resume(a1);
}

void sub_23A47C4A0(_Unwind_Exception *a1)
{
  objc_sync_exit(v2);

  _Unwind_Resume(a1);
}

void sub_23A47C53C(_Unwind_Exception *a1)
{
  objc_sync_exit(v2);

  _Unwind_Resume(a1);
}

void sub_23A47C764(_Unwind_Exception *a1)
{
  objc_sync_exit(v2);

  _Unwind_Resume(a1);
}

void sub_23A47CE08(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, _Unwind_Exception *exception_object, uint64_t a10, void *a11, void *a12, void *a13, void *a14)
{
  objc_sync_exit(v15);

  _Unwind_Resume(a1);
}

void sub_23A47D20C(_Unwind_Exception *a1)
{
  objc_sync_exit(v1);

  _Unwind_Resume(a1);
}

void sub_23A47D51C(_Unwind_Exception *a1)
{
  objc_sync_exit(v1);

  _Unwind_Resume(a1);
}

void sub_23A47D738(_Unwind_Exception *a1)
{
  objc_sync_exit(v1);

  _Unwind_Resume(a1);
}

void sub_23A47D7D4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, objc_super a9)
{
  v10 = v9;
  a9.receiver = v10;
  a9.super_class = PHASEExternalOutputStreamController;
  [(_Unwind_Exception *)&a9 dealloc];
  _Unwind_Resume(a1);
}

void _ZNSt3__16vectorIDv3_fNS_9allocatorIS1_EEE6resizeEm(void *a1, unint64_t a2)
{
  v2 = (a1[1] - *a1) >> 4;
  if (a2 <= v2)
  {
    if (a2 < v2)
    {
      a1[1] = *a1 + 16 * a2;
    }
  }

  else
  {
    _ZNSt3__16vectorIDv3_fNS_9allocatorIS1_EEE8__appendEm(a1, a2 - v2);
  }
}

void sub_23A4800F4(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  std::__function::__value_func<void ()(unsigned long,Phase::Vector<unsigned short,3ul> *)>::~__value_func[abi:ne200100](va);

  _Unwind_Resume(a1);
}

void sub_23A480A08(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  std::__function::__value_func<void ()(unsigned int,void const*)>::~__value_func[abi:ne200100](va);

  _Unwind_Resume(a1);
}

void _ZNSt3__16vectorIDv3_fNS_9allocatorIS1_EEE8__appendEm(uint64_t a1, unint64_t a2)
{
  v5 = *(a1 + 8);
  v4 = *(a1 + 16);
  if (a2 <= (v4 - v5) >> 4)
  {
    if (a2)
    {
      bzero(*(a1 + 8), 16 * a2);
      v5 += 16 * a2;
    }

    *(a1 + 8) = v5;
  }

  else
  {
    v6 = v5 - *a1;
    v7 = a2 + (v6 >> 4);
    if (v7 >> 60)
    {
      std::vector<Phase::Controller::DVM23::SubmixController *>::__throw_length_error[abi:ne200100]();
    }

    v8 = v4 - *a1;
    if (v8 >> 3 > v7)
    {
      v7 = v8 >> 3;
    }

    if (v8 >= 0x7FFFFFFFFFFFFFF0)
    {
      v9 = 0xFFFFFFFFFFFFFFFLL;
    }

    else
    {
      v9 = v7;
    }

    if (v9)
    {
      std::__allocate_at_least[abi:ne200100]<std::allocator<Phase::UniqueObjectId>>(a1, v9);
    }

    v10 = (16 * (v6 >> 4));
    bzero(v10, 16 * a2);
    v11 = &v10[16 * a2];
    v12 = *(a1 + 8) - *a1;
    v13 = &v10[-v12];
    memcpy(&v10[-v12], *a1, v12);
    v14 = *a1;
    *a1 = v13;
    *(a1 + 8) = v11;
    *(a1 + 16) = 0;
    if (v14)
    {

      operator delete(v14);
    }
  }
}

void sub_23A481498(_Unwind_Exception *exception_object, int a2)
{
  if (a2)
  {
    __cxa_free_exception(v3);
    __cxa_begin_catch(exception_object);
    Phase::Commandable<128,Phase::LockFreeQueueMPSC>::LogOverflow(v2);
    __cxa_end_catch();
    JUMPOUT(0x23A481398);
  }

  _Unwind_Resume(exception_object);
}

void sub_23A481778(_Unwind_Exception *exception_object, int a2)
{
  if (a2)
  {
    __cxa_free_exception(v3);
    __cxa_begin_catch(exception_object);
    Phase::Commandable<128,Phase::LockFreeQueueMPSC>::LogOverflow(v2);
    __cxa_end_catch();
    JUMPOUT(0x23A481670);
  }

  _Unwind_Resume(exception_object);
}

void sub_23A481AE0(_Unwind_Exception *exception_object, int a2)
{
  if (a2)
  {
    __cxa_free_exception(v3);
    __cxa_begin_catch(exception_object);
    Phase::Commandable<128,Phase::LockFreeQueueMPSC>::LogOverflow(v2);
    __cxa_end_catch();
    JUMPOUT(0x23A4819E8);
  }

  _Unwind_Resume(exception_object);
}

void sub_23A481E74(_Unwind_Exception *exception_object, int a2)
{
  if (a2)
  {
    __cxa_free_exception(v3);
    __cxa_begin_catch(exception_object);
    Phase::Commandable<128,Phase::LockFreeQueueMPSC>::LogOverflow(v2);
    __cxa_end_catch();
    JUMPOUT(0x23A481D7CLL);
  }

  _Unwind_Resume(exception_object);
}

void sub_23A482208(_Unwind_Exception *exception_object, int a2)
{
  if (a2)
  {
    __cxa_free_exception(v3);
    __cxa_begin_catch(exception_object);
    Phase::Commandable<128,Phase::LockFreeQueueMPSC>::LogOverflow(v2);
    __cxa_end_catch();
    JUMPOUT(0x23A482110);
  }

  _Unwind_Resume(exception_object);
}

void sub_23A48259C(_Unwind_Exception *exception_object, int a2)
{
  if (a2)
  {
    __cxa_free_exception(v3);
    __cxa_begin_catch(exception_object);
    Phase::Commandable<128,Phase::LockFreeQueueMPSC>::LogOverflow(v2);
    __cxa_end_catch();
    JUMPOUT(0x23A4824A4);
  }

  _Unwind_Resume(exception_object);
}

void sub_23A482880(_Unwind_Exception *exception_object, int a2)
{
  if (a2)
  {
    __cxa_free_exception(v3);
    __cxa_begin_catch(exception_object);
    Phase::Commandable<128,Phase::LockFreeQueueMPSC>::LogOverflow(v2);
    __cxa_end_catch();
    JUMPOUT(0x23A482788);
  }

  _Unwind_Resume(exception_object);
}

void sub_23A482B34(_Unwind_Exception *exception_object, int a2)
{
  if (a2)
  {
    __cxa_free_exception(v3);
    __cxa_begin_catch(exception_object);
    Phase::Commandable<128,Phase::LockFreeQueueMPSC>::LogOverflow(v2);
    __cxa_end_catch();
    JUMPOUT(0x23A482A40);
  }

  _Unwind_Resume(exception_object);
}

void sub_23A482DEC(_Unwind_Exception *exception_object, int a2)
{
  if (a2)
  {
    __cxa_free_exception(v3);
    __cxa_begin_catch(exception_object);
    Phase::Commandable<128,Phase::LockFreeQueueMPSC>::LogOverflow(v2);
    __cxa_end_catch();
    JUMPOUT(0x23A482CF4);
  }

  _Unwind_Resume(exception_object);
}

void sub_23A4830A0(_Unwind_Exception *exception_object, int a2)
{
  if (a2)
  {
    __cxa_free_exception(v3);
    __cxa_begin_catch(exception_object);
    Phase::Commandable<128,Phase::LockFreeQueueMPSC>::LogOverflow(v2);
    __cxa_end_catch();
    JUMPOUT(0x23A482FACLL);
  }

  _Unwind_Resume(exception_object);
}

void sub_23A483B34(_Unwind_Exception *exception_object, int a2)
{
  if (a2)
  {
    __cxa_free_exception(v3);
    __cxa_begin_catch(exception_object);
    Phase::Commandable<128,Phase::LockFreeQueueMPSC>::LogOverflow(v2);
    __cxa_end_catch();
    JUMPOUT(0x23A483A30);
  }

  _Unwind_Resume(exception_object);
}

void sub_23A483E34(_Unwind_Exception *exception_object, int a2)
{
  if (a2)
  {
    __cxa_free_exception(v3);
    __cxa_begin_catch(exception_object);
    Phase::Commandable<128,Phase::LockFreeQueueMPSC>::LogOverflow(v2);
    __cxa_end_catch();
    JUMPOUT(0x23A483D2CLL);
  }

  _Unwind_Resume(exception_object);
}

void sub_23A484138(_Unwind_Exception *exception_object, int a2)
{
  if (a2)
  {
    __cxa_free_exception(v3);
    __cxa_begin_catch(exception_object);
    Phase::Commandable<128,Phase::LockFreeQueueMPSC>::LogOverflow(v2);
    __cxa_end_catch();
    JUMPOUT(0x23A484038);
  }

  _Unwind_Resume(exception_object);
}

void sub_23A484448(_Unwind_Exception *exception_object, int a2)
{
  if (a2)
  {
    __cxa_free_exception(v3);
    __cxa_begin_catch(exception_object);
    Phase::Commandable<128,Phase::LockFreeQueueMPSC>::LogOverflow(v2);
    __cxa_end_catch();
    JUMPOUT(0x23A484344);
  }

  _Unwind_Resume(exception_object);
}

void sub_23A484DC4(_Unwind_Exception *a1)
{
  v5 = v4;

  _Unwind_Resume(a1);
}

void sub_23A485C24(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void *sGetFrequencies(void *a1)
{
  *a1 = 0;
  a1[1] = 0;
  a1[2] = 0;
  result = std::vector<float>::__assign_with_size[abi:ne200100]<float const*,float const*>(a1, Phase::sThirdOctaveBandFrequencies, &qword_23A597188, 0x1FuLL);
  if (*a1 == a1[1])
  {
    std::terminate();
  }

  return result;
}

void sub_23A485CAC(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

void sub_23A486618(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_23A486F1C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_23A488800(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void sub_23A48A004(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, objc_super a9)
{
  a9.super_class = PHASEMaterial;
  [(_Unwind_Exception *)&a9 dealloc];
  _Unwind_Resume(a1);
}

void sub_23A48AC00(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

double Phase::Geometry::WeatherUtility<double>::SetTemperatureInCelsius(uint64_t a1, double a2)
{
  result = Phase::Controller::sClamp<double>(a1, a2 + 273.15, *a1, *(a1 + 8));
  if (result == *(a1 + 24))
  {
    if ((*(a1 + 32) & 1) == 0)
    {
      return result;
    }
  }

  else
  {
    *(a1 + 24) = result;
    *(a1 + 32) = 1;
  }

  return Phase::Geometry::WeatherUtility<double>::InitInternal(a1);
}

double Phase::Geometry::WeatherUtility<double>::SetRelativeHumidityPercentage(uint64_t a1, double a2)
{
  result = Phase::Controller::sClamp<double>(a1, a2, *(a1 + 40), *(a1 + 48));
  if (result == *(a1 + 64))
  {
    if ((*(a1 + 72) & 1) == 0)
    {
      return result;
    }
  }

  else
  {
    *(a1 + 64) = result;
    *(a1 + 72) = 1;
  }

  return Phase::Geometry::WeatherUtility<double>::InitInternal(a1);
}

long double Phase::Geometry::WeatherUtility<double>::AtmosphericAbsorptionInDecibelsPerMeter(double *a1, double a2)
{
  v3 = a1[3];
  v4 = a2 * a2;
  v5 = 101.325 / (a1[13] / 1000.0) * 1.84e-11;
  v6 = fabs(sqrt(v3 / 293.16));
  if (v3 / 293.16 == -INFINITY)
  {
    v7 = INFINITY;
  }

  else
  {
    v7 = v6;
  }

  v8 = pow(v3 / 293.16, -2.5);
  v9 = exp(-2239.1 / v3) * 0.01278 / (a1[15] + v4 / a1[15]);
  return v4 * (v8 * (v9 + exp(-3352.0 / v3) * 0.1068 / (a1[16] + v4 / a1[16])) + v5 * v7) * 8.68588964 / 4.34294482;
}

float PHASEGetPropertyBounded<float>(void *a1, void *a2, float a3, float a4, float a5)
{
  v29 = *MEMORY[0x277D85DE8];
  v9 = a1;
  v10 = a2;
  v11 = v10;
  if (a3 < a4 || a3 > a5)
  {
    v13 = **(Phase::Logger::GetInstance(v10) + 448);
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEBUG))
    {
      v15 = 136316674;
      v16 = "PHASEGetProperty.h";
      v17 = 1024;
      v18 = 28;
      v19 = 2080;
      v20 = [v9 UTF8String];
      v21 = 2080;
      v22 = [(Phase::Logger *)v11 UTF8String];
      v23 = 2048;
      v24 = a3;
      v25 = 2048;
      v26 = a4;
      v27 = 2048;
      v28 = a5;
      _os_log_impl(&dword_23A302000, v13, OS_LOG_TYPE_DEBUG, "%25s:%-5d %s:%s Value is out of bounds. Clamping %f to range [%f, %f]", &v15, 0x44u);
    }

    a3 = fminf(fmaxf(a3, a4), a5);
  }

  return a3;
}

double Phase::Geometry::WaterUtility<double>::SetTemperatureInCelsius(uint64_t a1, double a2)
{
  result = Phase::Controller::sClamp<double>(a1, a2, *a1, *(a1 + 8));
  if (result == *(a1 + 24))
  {
    if ((*(a1 + 32) & 1) == 0)
    {
      return result;
    }
  }

  else
  {
    *(a1 + 24) = result;
    *(a1 + 32) = 1;
  }

  return Phase::Geometry::WaterUtility<double>::InitInternal(a1);
}

double Phase::Geometry::WaterUtility<double>::SetDepthInMeters(uint64_t a1, double a2)
{
  result = Phase::Controller::sClamp<double>(a1, a2, *(a1 + 40), *(a1 + 48));
  if (result == *(a1 + 64))
  {
    if ((*(a1 + 72) & 1) == 0)
    {
      return result;
    }
  }

  else
  {
    *(a1 + 64) = result;
    *(a1 + 72) = 1;
  }

  return Phase::Geometry::WaterUtility<double>::InitInternal(a1);
}

long double Phase::Geometry::WaterUtility<double>::WaterAbsorptionInDecibelsPerMeter(double *a1, double a2)
{
  v3 = a2 / 1000.0;
  v4 = a1[8] / 1000.0;
  v5 = v3 * v3;
  v6 = v3 * (v3 * a1[20]) / (v3 * v3 + a1[20] * a1[20]) * 0.106;
  v7 = v6 * exp((a1[18] + -8.0) / 0.56);
  v8 = a1[3];
  v9 = a1[13] / 35.0 * ((v8 / 43.0 + 1.0) * 0.52) * (v3 * (v3 * a1[21]) / (v3 * v3 + a1[21] * a1[21]));
  v10 = exp(v4 / -6.0) * v9;
  return (v5 * 0.00049 * exp(-(v4 / 17.0 + v8 / 27.0)) + v7 + v10) / 1000.0;
}

void sub_23A48BD20(_Unwind_Exception *a1)
{
  v5 = v4;

  _Unwind_Resume(a1);
}

void sub_23A48BEE8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, objc_super a9)
{
  a9.super_class = PHASEMedium;
  [(_Unwind_Exception *)&a9 dealloc];
  _Unwind_Resume(a1);
}

uint64_t Phase::Geometry::WeatherUtility<double>::WeatherUtility(uint64_t a1)
{
  *a1 = xmmword_23A5973D0;
  *(a1 + 16) = vdupq_n_s64(0x4072526666666666uLL);
  *(a1 + 32) = 0;
  *(a1 + 40) = 0;
  *(a1 + 48) = xmmword_23A5973E0;
  *(a1 + 64) = 0x4049000000000000;
  *(a1 + 72) = 0;
  *(a1 + 80) = xmmword_23A5973F0;
  *(a1 + 96) = vdupq_n_s64(0x40F8BCD000000000uLL);
  *(a1 + 112) = 0;
  *(a1 + 128) = 0;
  *(a1 + 136) = 0;
  *(a1 + 120) = 0;
  v3 = Phase::Controller::sClamp<double>(a1, 50.0, 0.0, 100.0);
  if (v3 != *(a1 + 64))
  {
    *(a1 + 64) = v3;
    *(a1 + 72) = 1;
  }

  v4 = Phase::Controller::sClamp<double>(v2, 101325.0, *(a1 + 80), *(a1 + 88));
  if (v4 != *(a1 + 104))
  {
    *(a1 + 104) = v4;
    *(a1 + 112) = 1;
  }

  Phase::Geometry::WeatherUtility<double>::InitInternal(a1);
  return a1;
}

long double Phase::Geometry::WeatherUtility<double>::InitInternal(uint64_t a1)
{
  v2 = *(a1 + 24);
  v3 = *(a1 + 64);
  v4 = *(a1 + 104);
  v21 = v4 / 1000.0 / 101.325;
  v5 = 1.0 - 273.16 / v2;
  v6 = log10(v2 / 273.16) * -5.02808 + v5 * 10.79586;
  v7 = v6 + (1.0 - __exp10((v2 / 273.16 + -1.0) * -8.29692)) * 0.000150474;
  v8 = __exp10(v5 * -4.76955);
  v19 = v3 * __exp10(v7 + (v8 + -1.0) * 0.00042873 + -2.2195983) / v21;
  v20 = pow(v2 / 293.16, -0.5) * v21;
  v9 = pow(v2 / 293.16, -0.3333333);
  v10 = exp((v9 + -1.0) * -4.17);
  v11.f64[0] = (v19 + 0.02) / (v19 + 0.391);
  v11.f64[1] = v10;
  v12.f64[0] = v21;
  v12.f64[1] = v20;
  *(a1 + 120) = vmulq_f64(v12, vmlaq_f64(xmmword_23A597410, v11, vmulq_n_f64(xmmword_23A597400, v19)));
  v13 = v2 + -273.15;
  v15 = -6343.1645 / v2 + 33.9371105;
  v16 = exp(v2 * -0.019121316 + v2 * v2 * 1.2378847 * 0.00000999999975);
  v17 = v3 * (v4 * 0.0000000314 + 1.00062 + v13 * v13 * 5.6 * 0.0000001) * (exp(v15) * v16) / v4 / 100.0;
  v14 = v13 * v13;
  result = (v13 * -0.228525 + -85.20931 + v14 * 5.91 / 100000.0) * 0.0004 + (v13 * 0.0000000373 + -0.000000182 + v14 * -2.93 / 1.0e10) * v4 + v13 * 0.603055 + 331.5024 + v14 * -5.28 / 10000.0 + (v13 * 0.1495874 + 51.471935 + v14 * -7.82 / 10000.0) * v17 - (v4 * v4 * 2.15 / 1.0e13 + v17 * v17 * 2.835149 + -0.00000466876192 + v4 * (v17 * -0.000486) * 0.0004);
  *(a1 + 136) = result;
  return result;
}

uint64_t Phase::Geometry::WaterUtility<double>::WaterUtility(uint64_t a1)
{
  *a1 = 0;
  *(a1 + 8) = xmmword_23A597420;
  *(a1 + 24) = 0x4034000000000000;
  *(a1 + 32) = 0;
  *(a1 + 40) = 0;
  *(a1 + 48) = xmmword_23A597430;
  *(a1 + 64) = 0x4024000000000000;
  *(a1 + 72) = 0;
  *(a1 + 80) = 0;
  *(a1 + 88) = xmmword_23A597440;
  *(a1 + 104) = 0x4041800000000000;
  *(a1 + 112) = 0;
  *(a1 + 120) = xmmword_23A597450;
  __asm { FMOV            V0.2D, #8.0 }

  *(a1 + 136) = _Q0;
  *(a1 + 152) = 0;
  *(a1 + 168) = 0;
  *(a1 + 176) = 0;
  *(a1 + 160) = 0;
  v8 = Phase::Controller::sClamp<double>(a1, 10.0, 0.0, 10000.0);
  if (v8 != *(a1 + 64))
  {
    *(a1 + 64) = v8;
    *(a1 + 72) = 1;
  }

  v10 = Phase::Controller::sClamp<double>(v7, 35.0, *(a1 + 80), *(a1 + 88));
  if (v10 != *(a1 + 104))
  {
    *(a1 + 104) = v10;
    *(a1 + 112) = 1;
  }

  v11 = Phase::Controller::sClamp<double>(v9, 8.0, *(a1 + 120), *(a1 + 128));
  if (v11 != *(a1 + 144))
  {
    *(a1 + 144) = v11;
    *(a1 + 152) = 1;
  }

  Phase::Geometry::WaterUtility<double>::InitInternal(a1);
  return a1;
}

long double Phase::Geometry::WaterUtility<double>::InitInternal(uint64_t a1)
{
  v2 = *(a1 + 104);
  v3 = *(a1 + 24);
  *(a1 + 160) = sqrt(v2 / 35.0) * 0.78 * exp(v3 / 26.0);
  result = exp(v3 / 17.0) * 42.0;
  v5 = *(a1 + 64) / 1000.0;
  *(a1 + 168) = result;
  *(a1 + 176) = v3 / 10.0 * 45.7 + 1449.05 + v3 / 10.0 * -5.21 * (v3 / 10.0) + v3 / 10.0 * (v3 / 10.0 * 0.23) * (v3 / 10.0) + (v2 + -35.0) * (v3 / 10.0 * -0.126 + 1.333 + v3 / 10.0 * 0.009 * (v3 / 10.0)) + (v3 / 10.0 * 0.352 + 16.23) * v5 + (v3 / 10.0 * -0.1 + 0.213) * v5 * v5 + v3 / 10.0 * ((v2 + -35.0) * ((v2 + -35.0) * 0.0002 + 0.016)) * v5;
  return result;
}

void sub_23A48D634(_Unwind_Exception *a1)
{
  v5 = v4;

  _Unwind_Resume(a1);
}

void sub_23A48D70C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id a10)
{
  v11 = v10;

  _Unwind_Resume(a1);
}

void sub_23A48EFD8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, int a15, uint64_t a16, __int16 a17, int a18, __int16 a19, uint64_t a20)
{
  if (a2)
  {
    __cxa_free_exception(v21);
    __cxa_begin_catch(exception_object);
    Phase::Commandable<128,Phase::LockFreeQueueMPSC>::LogOverflow(v20);
    __cxa_end_catch();
    v24 = **(Phase::Logger::GetInstance(v23) + 448);
    if (os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
    {
      JUMPOUT(0x23A48EDACLL);
    }

    JUMPOUT(0x23A48EEE8);
  }

  _Unwind_Resume(exception_object);
}

void sub_23A48FC44(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, uint64_t a12, void *a13, void *a14, uint64_t a15, void *a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, void *__p, uint64_t a27)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void sub_23A4901D8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, objc_super a9)
{
  a9.super_class = PHASEObject;
  [(_Unwind_Exception *)&a9 dealloc];
  _Unwind_Resume(a1);
}

void sub_23A490958(_Unwind_Exception *exception_object, int a2)
{
  if (a2)
  {
    __cxa_free_exception(v3);
    __cxa_begin_catch(exception_object);
    Phase::Commandable<128,Phase::LockFreeQueueMPSC>::LogOverflow(v2);
    __cxa_end_catch();
    JUMPOUT(0x23A49085CLL);
  }

  _Unwind_Resume(exception_object);
}

float Phase::Determinant<float>(float *a1)
{
  v1 = a1[4];
  v2 = a1[5];
  v4 = a1[8];
  v3 = a1[9];
  v6 = a1[12];
  v5 = a1[13];
  v7 = a1[10];
  v8 = a1[14];
  v9 = a1[6];
  v10 = a1[1];
  v11 = a1[2];
  return (((a1[7] * ((((((v6 * (v7 * v10)) + ((v3 * *a1) * v8)) + ((v4 * v11) * v5)) + (-(v11 * v3) * v6)) + (-(v10 * v4) * v8)) + (-(*a1 * v7) * v5))) - (a1[3] * (((((((v2 * v7) * v6) + ((v1 * v3) * v8)) + ((v9 * v4) * v5)) + (-(v9 * v3) * v6)) + (-(v2 * v4) * v8)) + (-(v1 * v7) * v5)))) - (a1[11] * ((((((v6 * (v9 * v10)) + ((v2 * *a1) * v8)) + ((v1 * v11) * v5)) + (-(v11 * v2) * v6)) + (-(v10 * v1) * v8)) + (-(*a1 * v9) * v5)))) + (a1[15] * ((((((v4 * (v9 * v10)) + ((v2 * *a1) * v7)) + ((v1 * v11) * v3)) + (-(v11 * v2) * v4)) + (-(v10 * v1) * v7)) + (-(*a1 * v9) * v3)));
}

void sub_23A493874(_Unwind_Exception *a1)
{
  v5 = v4;

  _Unwind_Resume(a1);
}

void sub_23A493AF4(_Unwind_Exception *a1)
{
  v4 = v2;

  _Unwind_Resume(a1);
}

void sub_23A496AC0(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  std::__function::__value_func<void ()(Phase::SpatialModeler::RoomSimulationDebugger::RoomSimulationDebugView *)>::~__value_func[abi:ne200100](va);

  _Unwind_Resume(a1);
}

void sub_23A496D70(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  std::__function::__value_func<void ()(Phase::SpatialModeler::RoomSimulationDebugger::RoomSimulationDebugView *)>::~__value_func[abi:ne200100](va);

  _Unwind_Resume(a1);
}

void sub_23A497020(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  std::__function::__value_func<void ()(Phase::SpatialModeler::RoomSimulationDebugger::RoomSimulationDebugView *)>::~__value_func[abi:ne200100](va);

  _Unwind_Resume(a1);
}

void sub_23A4972D0(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  std::__function::__value_func<void ()(Phase::SpatialModeler::RoomSimulationDebugger::RoomSimulationDebugView *)>::~__value_func[abi:ne200100](va);

  _Unwind_Resume(a1);
}

void sub_23A497580(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  std::__function::__value_func<void ()(Phase::SpatialModeler::RoomSimulationDebugger::RoomSimulationDebugView *)>::~__value_func[abi:ne200100](va);

  _Unwind_Resume(a1);
}

void sub_23A497844(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  std::__function::__value_func<void ()(Phase::SpatialModeler::RoomSimulationDebugger::RoomSimulationDebugView *)>::~__value_func[abi:ne200100](va);

  _Unwind_Resume(a1);
}

void sub_23A498F3C(_Unwind_Exception *a1)
{
  v3 = v2;

  _Unwind_Resume(a1);
}

void sub_23A49A2FC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11)
{
  v12[8] = v13;

  _Unwind_Resume(a1);
}

void sub_23A49B408(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, objc_super a9)
{
  a9.super_class = PHASEShape;
  [(_Unwind_Exception *)&a9 dealloc];
  _Unwind_Resume(a1);
}

void sub_23A49BF4C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, void **a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, char a22)
{
  v24 = v22;

  a11 = &a22;
  std::vector<Phase::Controller::GeometryPermutation>::__destroy_vector::operator()[abi:ne200100](&a11);
  _Unwind_Resume(a1);
}

void sub_23A49C30C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, char a11, uint64_t a12, uint64_t a13, void **a14)
{
  a14 = &a11;
  std::vector<Phase::Controller::GeometryPermutation>::__destroy_vector::operator()[abi:ne200100](&a14);

  _Unwind_Resume(a1);
}

uint64_t std::__uninitialized_allocator_copy_impl[abi:ne200100]<std::allocator<Phase::LocalizedGeometryPermutation>,Phase::LocalizedGeometryPermutation*,Phase::LocalizedGeometryPermutation*,Phase::LocalizedGeometryPermutation*>(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a1 != a2)
  {
    v6 = 0;
    do
    {
      v7 = a1 + v6;
      v8 = a3 + v6;
      *(a3 + v6) = *(a1 + v6);
      std::unordered_map<Phase::UnorderedStringMap<Phase::OptionsValue>::InternalKey,Phase::OptionsValue,Phase::UnorderedStringMap<Phase::OptionsValue>::InternalHash,Phase::UnorderedStringMap<Phase::OptionsValue>::InternalEqualTo,std::allocator<std::pair<Phase::UnorderedStringMap<Phase::OptionsValue>::InternalKey const,Phase::OptionsValue>>>::unordered_map(a3 + v6 + 8, a1 + v6 + 8);
      *(v8 + 48) = 0;
      *(v8 + 56) = 0;
      v9 = a3 + v6 + 48;
      *(v9 + 16) = 0;
      std::vector<Phase::Geometry::EntityType>::__init_with_size[abi:ne200100]<Phase::Geometry::EntityType*,Phase::Geometry::EntityType*>(v9, *(v7 + 48), *(v7 + 56), (*(v7 + 56) - *(v7 + 48)) >> 2);
      *(a3 + v6 + 72) = *(a1 + v6 + 72);
      v6 += 88;
    }

    while (v7 + 88 != a2);
    a3 += v6;
  }

  return a3;
}

void sub_23A49C510(_Unwind_Exception *exception_object)
{
  if (v2)
  {
    v4 = v1 + v2 - 88;
    v5 = -v2;
    do
    {
      std::__destroy_at[abi:ne200100]<Phase::Controller::GeometryPermutation,0>(v4);
      v4 -= 88;
      v5 += 88;
    }

    while (v5);
  }

  _Unwind_Resume(exception_object);
}

uint64_t std::__copy_impl::operator()[abi:ne200100]<Phase::LocalizedGeometryPermutation *,Phase::LocalizedGeometryPermutation *,Phase::LocalizedGeometryPermutation *>(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a1 != a2)
  {
    v4 = a2;
    v5 = 0;
    do
    {
      v6 = a1 + v5;
      v7 = a3 + v5;
      *(a3 + v5) = *(a1 + v5);
      if (a3 != a1)
      {
        *(v7 + 40) = *(v6 + 40);
        std::__hash_table<std::__hash_value_type<Phase::UnorderedStringMap<Phase::OptionsValue>::InternalKey,Phase::OptionsValue>,std::__unordered_map_hasher<Phase::UnorderedStringMap<Phase::OptionsValue>::InternalKey,std::__hash_value_type<Phase::UnorderedStringMap<Phase::OptionsValue>::InternalKey,Phase::OptionsValue>,Phase::UnorderedStringMap<Phase::OptionsValue>::InternalHash,Phase::UnorderedStringMap<Phase::OptionsValue>::InternalEqualTo,true>,std::__unordered_map_equal<Phase::UnorderedStringMap<Phase::OptionsValue>::InternalKey,std::__hash_value_type<Phase::UnorderedStringMap<Phase::OptionsValue>::InternalKey,Phase::OptionsValue>,Phase::UnorderedStringMap<Phase::OptionsValue>::InternalEqualTo,Phase::UnorderedStringMap<Phase::OptionsValue>::InternalHash,true>,std::allocator<std::__hash_value_type<Phase::UnorderedStringMap<Phase::OptionsValue>::InternalKey,Phase::OptionsValue>>>::__assign_multi<std::__hash_const_iterator<std::__hash_node<std::__hash_value_type<Phase::UnorderedStringMap<Phase::OptionsValue>::InternalKey,Phase::OptionsValue>,void *> *>>((v7 + 8), *(v6 + 24), 0);
        v8 = *(v7 + 48);
        v10 = *(v6 + 48);
        v9 = *(v6 + 56);
        v11 = v9 - v10;
        v12 = *(v7 + 64);
        if (v12 - v8 < (v9 - v10))
        {
          if (v8)
          {
            *(a3 + v5 + 56) = v8;
            operator delete(v8);
            v12 = 0;
            *(v7 + 48) = 0;
            *(v7 + 56) = 0;
            *(v7 + 64) = 0;
          }

          v13 = v11 >> 2;
          if (!((v11 >> 2) >> 62))
          {
            if (v12 >> 1 > v13)
            {
              v13 = v12 >> 1;
            }

            if (v12 >= 0x7FFFFFFFFFFFFFFCLL)
            {
              v14 = 0x3FFFFFFFFFFFFFFFLL;
            }

            else
            {
              v14 = v13;
            }

            std::vector<Phase::Geometry::EntityType>::__vallocate[abi:ne200100](v7 + 48, v14);
          }

          std::vector<Phase::Controller::GeometryPermutation>::__throw_length_error[abi:ne200100]();
        }

        v15 = a3 + v5;
        v16 = *(a3 + v5 + 56);
        v17 = v16 - v8;
        if (v16 - v8 >= v11)
        {
          v4 = a2;
          if (v9 != v10)
          {
            memmove(*(v7 + 48), *(v6 + 48), v9 - v10);
            v15 = a3 + v5;
          }

          *(v15 + 56) = &v8[v11];
        }

        else
        {
          if (v16 != v8)
          {
            memmove(*(v7 + 48), *(v6 + 48), v16 - v8);
            v15 = a3 + v5;
            v16 = *(a3 + v5 + 56);
          }

          v18 = (v10 + v17);
          v19 = v9 - (v10 + v17);
          if (v19)
          {
            v20 = v15;
            memmove(v16, v18, v19);
            v15 = v20;
          }

          *(v15 + 56) = &v16[v19];
          v4 = a2;
        }
      }

      *(v7 + 72) = *(v6 + 72);
      v5 += 88;
    }

    while (v6 + 88 != v4);
    a3 += v5;
  }

  return a3;
}

void std::__allocate_at_least[abi:ne200100]<std::allocator<Phase::LocalizedGeometryPermutation>>(unint64_t a1)
{
  if (a1 < 0x2E8BA2E8BA2E8BBLL)
  {
    operator new();
  }

  std::__throw_bad_array_new_length[abi:ne200100]();
}

uint64_t std::__split_buffer<Phase::LocalizedGeometryPermutation>::~__split_buffer(uint64_t a1)
{
  v3 = *(a1 + 8);
  for (i = *(a1 + 16); i != v3; i = *(a1 + 16))
  {
    *(a1 + 16) = i - 88;
    std::__destroy_at[abi:ne200100]<Phase::Controller::GeometryPermutation,0>(i - 88);
  }

  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

void sub_23A49D6B4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, objc_super a9)
{
  a9.super_class = PHASESharedListener;
  [(_Unwind_Exception *)&a9 dealloc];
  _Unwind_Resume(a1);
}

void sub_23A49E070(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, objc_super a9)
{
  a9.super_class = PHASESharedRoot;
  [(_Unwind_Exception *)&a9 dealloc];
  _Unwind_Resume(a1);
}

void sub_23A49F100(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, std::__shared_weak_count *a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, std::bad_alloc a32, uint64_t a33, uint64_t a34, uint8_t buf, int a36, int a37, __int16 a38, __int16 a39, __int16 a40, __int16 a41)
{
  if (a2)
  {
    __cxa_free_exception(v41);
    if (v42)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v42);
    }

    __cxa_begin_catch(exception_object);
    Phase::Commandable<128,Phase::LockFreeQueueMPSC>::LogOverflow(a11);
    __cxa_end_catch();
    if (!v42)
    {
      JUMPOUT(0x23A49EC68);
    }

    JUMPOUT(0x23A49EC58);
  }

  _Unwind_Resume(exception_object);
}

void sub_23A4A08E0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, char a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, char a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28)
{
  if (a2)
  {
    __cxa_free_exception(v32);

    __cxa_begin_catch(exception_object);
    Phase::Commandable<128,Phase::LockFreeQueueMPSC>::LogOverflow(v31);
    __cxa_end_catch();

    v36 = **(Phase::Logger::GetInstance(v35) + 448);
    if (os_log_type_enabled(v36, OS_LOG_TYPE_ERROR))
    {
      *(v33 - 144) = 136315650;
      v37 = v33 - 144;
      *(v37 + 4) = "PHASESoundEvent.mm";
      *(v33 - 132) = 1024;
      *(v37 + 14) = 494;
      *(v33 - 126) = 2112;
      *(v37 + 20) = v29;
      _os_log_impl(&dword_23A302000, v36, OS_LOG_TYPE_ERROR, "%25s:%-5d %@ Command buffer full.  Unable to Start PHASESoundEvent.  Consider having fewer sound event API calls in a given frame", (v33 - 144), 0x1Cu);
    }

    (*(v28 + 16))(v28, 0);
    JUMPOUT(0x23A4A05D8);
  }

  _Unwind_Resume(exception_object);
}

void *__Block_byref_object_copy__0(uint64_t a1, uint64_t a2)
{
  result = _Block_copy(*(a2 + 40));
  *(a1 + 40) = result;
  return result;
}

void sub_23A4A13A0(_Unwind_Exception *a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, __int128 buf, __int16 a14, __int16 a15)
{
  if (a2)
  {
    __cxa_free_exception(v16);
    __cxa_begin_catch(a1);
    Phase::Commandable<128,Phase::LockFreeQueueMPSC>::LogOverflow(v15);
    __cxa_end_catch();
    v19 = **(Phase::Logger::GetInstance(v18) + 448);
    if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
    {
      LODWORD(buf) = 136315650;
      *(&buf + 4) = "PHASESoundEvent.mm";
      WORD6(buf) = 1024;
      *(&buf + 14) = 597;
      a15 = 2112;
      _os_log_impl(&dword_23A302000, v19, OS_LOG_TYPE_ERROR, "%25s:%-5d %@ Command buffer full.  Unable to pause PHASESoundEvent.  Consider having fewer sound event API calls in a given frame", &buf, 0x1Cu);
    }

    JUMPOUT(0x23A4A12BCLL);
  }

  _Unwind_Resume(a1);
}

void sub_23A4A170C(_Unwind_Exception *a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, __int128 buf, __int16 a14, __int16 a15)
{
  if (a2)
  {
    __cxa_free_exception(v17);
    __cxa_begin_catch(a1);
    Phase::Commandable<128,Phase::LockFreeQueueMPSC>::LogOverflow(v16);
    __cxa_end_catch();

    v20 = **(Phase::Logger::GetInstance(v19) + 448);
    if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
    {
      LODWORD(buf) = 136315650;
      *(&buf + 4) = "PHASESoundEvent.mm";
      WORD6(buf) = 1024;
      *(&buf + 14) = 625;
      a15 = 2112;
      _os_log_impl(&dword_23A302000, v20, OS_LOG_TYPE_ERROR, "%25s:%-5d %@ Command buffer full.  Unable to resume PHASESoundEvent.  Consider having fewer sound event API calls in a given frame", &buf, 0x1Cu);
    }

    JUMPOUT(0x23A4A1620);
  }

  _Unwind_Resume(a1);
}

void sub_23A4A1B48(_Unwind_Exception *a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, __int128 buf, __int16 a14, __int16 a15)
{
  if (a2)
  {
    __cxa_free_exception(v16);
    __cxa_begin_catch(a1);
    Phase::Commandable<128,Phase::LockFreeQueueMPSC>::LogOverflow(v15);
    __cxa_end_catch();
    v19 = **(Phase::Logger::GetInstance(v18) + 448);
    if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
    {
      LODWORD(buf) = 136315650;
      *(&buf + 4) = "PHASESoundEvent.mm";
      WORD6(buf) = 1024;
      *(&buf + 14) = 654;
      a15 = 2112;
      _os_log_impl(&dword_23A302000, v19, OS_LOG_TYPE_ERROR, "%25s:%-5d %@ Command buffer full.  Unable to stop PHASESoundEvent.  Consider having fewer sound event API calls in a given frame", &buf, 0x1Cu);
    }

    JUMPOUT(0x23A4A1A60);
  }

  _Unwind_Resume(a1);
}

uint64_t Phase::Controller::TaskManager::GetService<Phase::TapSourceRegistry>(Phase::Logger *a1, uint64_t a2)
{
  v19 = *MEMORY[0x277D85DE8];
  if ((a2 - a1) <= 0x220)
  {
    v5 = **(Phase::Logger::GetInstance(a1) + 464);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315394;
      v12 = "TaskManager.hpp";
      v13 = 1024;
      v14 = 112;
      _os_log_impl(&dword_23A302000, v5, OS_LOG_TYPE_ERROR, "%25s:%-5d PRECONDITION: pId < mServiceRegistry.size() is false.", buf, 0x12u);
    }

    exception = __cxa_allocate_exception(0x10uLL);
    std::domain_error::domain_error[abi:ne200100](exception, "PRECONDITION: pId < mServiceRegistry.size() is false.");
  }

  v2 = *(a1 + 68);
  if (!v2)
  {
    v7 = **(Phase::Logger::GetInstance(a1) + 464);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      Phase::GetBacktraceFrame<1ul>(&__p);
      v8 = (__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0 ? &__p : __p.__r_.__value_.__r.__words[0];
      *buf = 136315906;
      v12 = "TaskManager.hpp";
      v13 = 1024;
      v14 = 121;
      v15 = 1024;
      v16 = 17;
      v17 = 2080;
      v18 = v8;
      _os_log_impl(&dword_23A302000, v7, OS_LOG_TYPE_ERROR, "%25s:%-5d EXCEPTION (std::domain_error) [not lService.has_value() is true]: No service registered for Id %i, in call \\n%s", buf, 0x22u);
      if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(__p.__r_.__value_.__l.__data_);
      }
    }

    v9 = __cxa_allocate_exception(0x10uLL);
    std::domain_error::domain_error[abi:ne200100](v9, "No service registered for Id %i, in call \n%s");
  }

  v3 = v2(3, a1 + 544, 0, 0, &std::__any_imp::__unique_typeinfo<Phase::TapSourceRegistry *>::__id);
  if (!v3)
  {
    std::__throw_bad_any_cast[abi:ne200100]();
  }

  return *v3;
}

void sub_23A4A2160(_Unwind_Exception *a1, int a2)
{
  if (a2)
  {
    __clang_call_terminate(a1);
  }

  _Unwind_Resume(a1);
}

void sub_23A4A36EC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, char a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, char a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28)
{
  if (a2)
  {
    __cxa_free_exception(v31);
    __cxa_begin_catch(exception_object);
    Phase::Commandable<128,Phase::LockFreeQueueMPSC>::LogOverflow(v30);
    __cxa_end_catch();
    v36 = **(Phase::Logger::GetInstance(v35) + 448);
    if (os_log_type_enabled(v36, OS_LOG_TYPE_ERROR))
    {
      *(v33 - 128) = 136315650;
      *(v32 + 4) = "PHASESoundEvent.mm";
      *(v33 - 116) = 1024;
      *(v32 + 14) = 995;
      *(v33 - 110) = 2112;
      *(v32 + 20) = v29;
      _os_log_impl(&dword_23A302000, v36, OS_LOG_TYPE_ERROR, "%25s:%-5d %@ Command buffer full.  Unable to Prepare PHASESoundEvent.  Consider having fewer sound event API calls in a given frame", (v33 - 128), 0x1Cu);
    }

    (*(v28 + 16))(v28, 0, 1);
    JUMPOUT(0x23A4A33E8);
  }

  _Unwind_Resume(exception_object);
}

void sub_23A4A63EC(_Unwind_Exception *a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, __int128 buf, __int16 a12, __int16 a13)
{
  if (a2)
  {
    __cxa_free_exception(v16);
    __cxa_begin_catch(a1);
    Phase::Commandable<128,Phase::LockFreeQueueMPSC>::LogOverflow(v15);
    __cxa_end_catch();

    v19 = **(Phase::Logger::GetInstance(v18) + 448);
    if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
    {
      LODWORD(buf) = 136315650;
      *(&buf + 4) = "PHASESoundEvent.mm";
      WORD6(buf) = 1024;
      *(&buf + 14) = 1525;
      a13 = 2112;
      _os_log_impl(&dword_23A302000, v19, OS_LOG_TYPE_ERROR, "%25s:%-5d %@ Command buffer full.  Unable to Seek.  Consider having fewer sound event API calls in a given frame", &buf, 0x1Cu);
    }

    (*(v13 + 16))(v13, 0);
    JUMPOUT(0x23A4A6128);
  }

  _Unwind_Resume(a1);
}

void sub_23A4A68F8(_Unwind_Exception *a1)
{
  objc_sync_exit(v1);

  _Unwind_Resume(a1);
}

void *Phase::LambdaFunction<BOOL Phase::Commandable<128,Phase::LockFreeQueueMPSC>::CallAsync<Phase::ActionTreeManager,BOOL,std::shared_ptr<Phase::ActionTreeObject>>(int,BOOL (Phase::ActionTreeManager::*)(std::shared_ptr<Phase::ActionTreeObject>),std::shared_ptr<Phase::ActionTreeObject>)::{lambda(void)#1},void>::~LambdaFunction(void *a1)
{
  *a1 = &unk_284D36390;
  v2 = a1[5];
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  }

  return a1;
}

void Phase::LambdaFunction<BOOL Phase::Commandable<128,Phase::LockFreeQueueMPSC>::CallAsync<Phase::ActionTreeManager,BOOL,std::shared_ptr<Phase::ActionTreeObject>>(int,BOOL (Phase::ActionTreeManager::*)(std::shared_ptr<Phase::ActionTreeObject>),std::shared_ptr<Phase::ActionTreeObject>)::{lambda(void)#1},void>::~LambdaFunction(void *a1)
{
  *a1 = &unk_284D36390;
  v1 = a1[5];
  if (v1)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v1);
  }

  JUMPOUT(0x23EE864A0);
}

void Phase::LambdaFunction<BOOL Phase::Commandable<128,Phase::LockFreeQueueMPSC>::CallAsync<Phase::ActionTreeManager,BOOL,std::shared_ptr<Phase::ActionTreeObject>>(int,BOOL (Phase::ActionTreeManager::*)(std::shared_ptr<Phase::ActionTreeObject>),std::shared_ptr<Phase::ActionTreeObject>)::{lambda(void)#1},void>::operator()(void *a1)
{
  v2 = a1[2];
  v3 = a1[3];
  v4 = (a1[1] + (v3 >> 1));
  if (v3)
  {
    v2 = *(*v4 + v2);
  }

  v6 = a1[4];
  v5 = a1[5];
  v7 = v6;
  v8 = v5;
  if (v5)
  {
    atomic_fetch_add_explicit(&v5->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  v2(v4, &v7);
  if (v8)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v8);
  }
}

void sub_23A4A6D80(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10)
{
  if (a10)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a10);
  }

  _Unwind_Resume(exception_object);
}

void Phase::LambdaFunction<BOOL Phase::Commandable<128,Phase::LockFreeQueueMPSC>::CallAsync<Phase::ActionTreeManager,BOOL,Phase::UniqueObjectId,AVAudioTime * {__strong},void (*)(Phase::UniqueObjectId,Phase::Controller::IOTimeStamps const&,PHASESoundEventStartHandlerReason,void *),void *>(int,BOOL (Phase::ActionTreeManager::*)(Phase::UniqueObjectId,AVAudioTime * {__strong},void (*)(Phase::UniqueObjectId,Phase::Controller::IOTimeStamps const&,PHASESoundEventStartHandlerReason,void *),void *),Phase::UniqueObjectId,AVAudioTime * {__strong},void (*)(Phase::UniqueObjectId,Phase::Controller::IOTimeStamps const&,PHASESoundEventStartHandlerReason,void *),void *)::{lambda(void)#1},void>::~LambdaFunction(uint64_t a1)
{

  JUMPOUT(0x23EE864A0);
}

uint64_t Phase::LambdaFunction<BOOL Phase::Commandable<128,Phase::LockFreeQueueMPSC>::CallAsync<Phase::ActionTreeManager,BOOL,Phase::UniqueObjectId,AVAudioTime * {__strong},void (*)(Phase::UniqueObjectId,Phase::Controller::IOTimeStamps const&,PHASESoundEventStartHandlerReason,void *),void *>(int,BOOL (Phase::ActionTreeManager::*)(Phase::UniqueObjectId,AVAudioTime * {__strong},void (*)(Phase::UniqueObjectId,Phase::Controller::IOTimeStamps const&,PHASESoundEventStartHandlerReason,void *),void *),Phase::UniqueObjectId,AVAudioTime * {__strong},void (*)(Phase::UniqueObjectId,Phase::Controller::IOTimeStamps const&,PHASESoundEventStartHandlerReason,void *),void *)::{lambda(void)#1},void>::operator()(void *a1)
{
  v1 = a1[2];
  v2 = a1[3];
  v3 = (a1[1] + (v2 >> 1));
  if (v2)
  {
    v1 = *(*v3 + v1);
  }

  return v1(v3, a1[4], a1[5], a1[6], a1[7], a1[8]);
}

uint64_t Phase::Commandable<128,Phase::LockFreeQueueMPSC>::CallAsync<Phase::ActionTreeManager,BOOL,Phase::UniqueObjectId,unsigned long long,Phase::InputMetaParamType,Phase::MetaParamValue,double>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, int a5, uint64_t a6, double a7)
{
  v35 = *MEMORY[0x277D85DE8];
  if (*(a1 + 16) <= 0)
  {
    v19 = **(a1 + 24);
    if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315394;
      v28 = "Commandable.hpp";
      v29 = 1024;
      v30 = 132;
      _os_log_impl(&dword_23A302000, v19, OS_LOG_TYPE_ERROR, "%25s:%-5d PRECONDITION: pQueueId >= 0 && pQueueId < mQueueCount is false.", buf, 0x12u);
    }

    exception = __cxa_allocate_exception(0x10uLL);
    std::domain_error::domain_error[abi:ne200100](exception, "PRECONDITION: pQueueId >= 0 && pQueueId < mQueueCount is false.");
  }

  v14 = **(a1 + 8);
  v26 = 0;
  v25 = 1;
  v15 = Phase::LockFreeQueueMPSC::GetWriteBuffer(v14, 80, &v26, &v25);
  if (!v15)
  {
    Instance = Phase::Logger::GetInstance(0);
    Phase::Logger::DumpTailspinWithThrottleAsync(Instance, "CommandQueue unable to retrieve write buffer; buffer is full, unable to grow.");
    v22 = **(v14 + 48);
    v23 = v22;
    if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315394;
      v28 = "CommandQueue.hpp";
      v29 = 1024;
      v30 = 100;
      _os_log_impl(&dword_23A302000, v22, OS_LOG_TYPE_ERROR, "%25s:%-5d EXCEPTION (std::runtime_error) [true is true]: CommandQueue unable to retrieve write buffer; buffer is full, unable to grow.", buf, 0x12u);
    }

    v24 = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(v24, "CommandQueue unable to retrieve write buffer; buffer is full, unable to grow.");
  }

  if (v25)
  {
    v16 = **(v14 + 48);
    v17 = v16;
    if (os_log_type_enabled(v16, OS_LOG_TYPE_DEBUG))
    {
      *buf = 136315906;
      v28 = "CommandQueue.hpp";
      v29 = 1024;
      v30 = 89;
      v31 = 2048;
      v32 = v26;
      v33 = 2048;
      v34 = 80;
      _os_log_impl(&dword_23A302000, v16, OS_LOG_TYPE_DEBUG, "%25s:%-5d Warning: CommandQueue grew buffer to %zu bytes to accommodate extra %zu bytes - this usually means the system is under load or the command queue is too small.", buf, 0x26u);
    }
  }

  *v15 = &unk_284D36458;
  *(v15 + 8) = a1;
  *(v15 + 16) = Phase::ActionTreeManager::SetMetaParameter;
  *(v15 + 24) = 0;
  *(v15 + 32) = a2;
  *(v15 + 40) = a3;
  *(v15 + 48) = a4;
  *(v15 + 56) = a5;
  *(v15 + 64) = a6;
  *(v15 + 72) = a7;
  Phase::LockFreeQueueSPSC::CommitBytes(v14, 80);
  atomic_store(0, (v14 + 40));
  return 1;
}

void sub_23A4A7264(_Unwind_Exception *exception_object, int a2)
{
  if (a2)
  {
    __cxa_free_exception(v3);
    __cxa_begin_catch(exception_object);
    Phase::Commandable<128,Phase::LockFreeQueueMPSC>::LogOverflow(v2);
    __cxa_end_catch();
    JUMPOUT(0x23A4A70C8);
  }

  _Unwind_Resume(exception_object);
}

uint64_t Phase::LambdaFunction<BOOL Phase::Commandable<128,Phase::LockFreeQueueMPSC>::CallAsync<Phase::ActionTreeManager,BOOL,Phase::UniqueObjectId,unsigned long long,Phase::InputMetaParamType,Phase::MetaParamValue,double>(int,BOOL (Phase::ActionTreeManager::*)(Phase::UniqueObjectId,unsigned long long,Phase::InputMetaParamType,Phase::MetaParamValue,double),Phase::UniqueObjectId,unsigned long long,Phase::InputMetaParamType,Phase::MetaParamValue,double)::{lambda(void)#1},void>::operator()(uint64_t a1)
{
  v1 = *(a1 + 16);
  v2 = *(a1 + 24);
  v3 = (*(a1 + 8) + (v2 >> 1));
  if (v2)
  {
    v1 = *(*v3 + v1);
  }

  return v1(v3, *(a1 + 32), *(a1 + 40), *(a1 + 48), *(a1 + 56), *(a1 + 64), *(a1 + 72));
}