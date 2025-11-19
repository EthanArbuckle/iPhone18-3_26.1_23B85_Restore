void sub_1BA60F000(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, ...)
{
  va_start(va, a8);
  std::__list_imp<AUGraphConnection>::clear(va);
  _Unwind_Resume(a1);
}

void *std::__list_imp<AUGraphConnection>::clear(void *result)
{
  if (result[2])
  {
    v1 = result;
    result = result[1];
    v2 = *(*v1 + 8);
    v3 = *result;
    *(v3 + 8) = v2;
    *v2 = v3;
    v1[2] = 0;
    if (result != v1)
    {
      do
      {
        v4 = result[1];
        operator delete(result);
        result = v4;
      }

      while (v4 != v1);
    }
  }

  return result;
}

uint64_t AUGraphParser::TraverseMIDIGraphNodes(uint64_t a1, uint64_t a2)
{
  if (*(*(**(a1 + 24) + 256))(*(a1 + 24)) != 1635085673 || (result = std::function<ETraversalStatus ()(AUGraphNodeBaseV3 &,AUGraphConnection *)>::operator()(*(a2 + 24), a1, 0), !result))
  {
    v5 = *(a1 + 112);
    if (!v5)
    {
      return 0;
    }

    result = AUGraphParser::TraverseMIDIGraphNodes(v5, a2);
    if (result != 1)
    {
      return 0;
    }
  }

  return result;
}

void AUGraphParser::GetNodeConnectionsToMixer(uint64_t a1, void *a2, _BYTE *a3)
{
  v7 = *MEMORY[0x1E69E9840];
  v6 = 0;
  v5 = a3;
  std::__list_imp<AUGraphConnection>::clear(a2);
  if (a3)
  {
    *a3 = 0;
  }

  v4 = 0;
  operator new();
}

void sub_1BA60F234(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  std::__function::__value_func<ETraversalStatus ()(AUGraphNodeBaseV3 &,AUGraphConnection *)>::~__value_func[abi:ne200100](va);
  _Unwind_Resume(a1);
}

uint64_t std::__function::__value_func<ETraversalStatus ()(AUGraphNodeBaseV3 &,AUGraphConnection *)>::~__value_func[abi:ne200100](uint64_t a1)
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

uint64_t std::__function::__func<AUGraphParser::GetNodeConnectionsToMixer(AVAudioEngineGraph const&,EDirection,ERecursion,AUGraphNodeBaseV3 &,std::list<AUGraphConnection> &,BOOL *)::$_0,std::allocator<AUGraphParser::GetNodeConnectionsToMixer(AVAudioEngineGraph const&,EDirection,ERecursion,AUGraphNodeBaseV3 &,std::list<AUGraphConnection> &,BOOL *)::$_0>,ETraversalStatus ()(AUGraphNodeBaseV3 &,AUGraphConnection*)>::operator()(uint64_t a1, uint64_t a2, void *a3)
{
  if (*a3)
  {
    v5 = *(*a3 + 16 * (**(a1 + 8) != 0));
    if (v5 && (v5 == *(a1 + 16) || (*(*v5 + 112))(v5)))
    {
      **(a1 + 24) = 0;
    }

    if (**(a1 + 24))
    {
      return 0;
    }

    if ((*(*a2 + 120))(a2))
    {
      v6 = *(a1 + 32);
      operator new();
    }
  }

  else if (**(a1 + 24))
  {
    return 0;
  }

  if (!**(a1 + 40))
  {
    return 0;
  }

  result = (*(*a2 + 128))(a2);
  if (result)
  {
    result = 0;
    ***(a1 + 40) = 1;
  }

  return result;
}

__n128 std::__function::__func<AUGraphParser::GetNodeConnectionsToMixer(AVAudioEngineGraph const&,EDirection,ERecursion,AUGraphNodeBaseV3 &,std::list<AUGraphConnection> &,BOOL *)::$_0,std::allocator<AUGraphParser::GetNodeConnectionsToMixer(AVAudioEngineGraph const&,EDirection,ERecursion,AUGraphNodeBaseV3 &,std::list<AUGraphConnection> &,BOOL *)::$_0>,ETraversalStatus ()(AUGraphNodeBaseV3 &,AUGraphConnection*)>::__clone(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_1F38493D0;
  result = *(a1 + 8);
  v3 = *(a1 + 24);
  *(a2 + 40) = *(a1 + 40);
  *(a2 + 24) = v3;
  *(a2 + 8) = result;
  return result;
}

uint64_t AUGraphParser::InformNodesAboutMixerConnection(uint64_t a1, uint64_t a2, NSError **a3)
{
  v14 = *MEMORY[0x1E69E9840];
  v13 = 1;
  v5 = *(a2 + 16);
  if (v5)
  {
    v6 = (*(*v5 + 120))(v5);
  }

  else
  {
    v6 = 0;
  }

  result = _AVAE_CheckAndReturnErr("/Library/Caches/com.apple.xbs/Sources/AVFAudio/Source/AVFAudio/AVAudioEngine/AVAEGraph/AVAudioEngineGraph.mm", 345, "InformNodesAboutMixerConnection", "inMixerConn.destNode && inMixerConn.destNode->IsMixerNode()", v6, 4294967246, a3);
  if (!result)
  {
    v12 = *(a2 + 16);
    v11 = *(a2 + 24);
    v10[0] = 0;
    v10[1] = 0;
    v9 = v10;
    operator new();
  }

  v8 = *MEMORY[0x1E69E9840];
  return result;
}

void sub_1BA60F660(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, void *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, ...)
{
  va_start(va, a8);
  std::__function::__value_func<ETraversalStatus ()(AUGraphNodeBaseV3 &,AUGraphConnection *)>::~__value_func[abi:ne200100](va);
  std::__tree<std::__value_type<AUGraphNodeBaseV3 *,std::pair<AUGraphNodeBaseV3 *,unsigned int>>,std::__map_value_compare<AUGraphNodeBaseV3 *,std::__value_type<AUGraphNodeBaseV3 *,std::pair<AUGraphNodeBaseV3 *,unsigned int>>,std::less<AUGraphNodeBaseV3 *>,true>,std::allocator<std::__value_type<AUGraphNodeBaseV3 *,std::pair<AUGraphNodeBaseV3 *,unsigned int>>>>::destroy(a4);
  _Unwind_Resume(a1);
}

uint64_t _AVAE_CheckAndReturnErr(char *a1, int a2, const char *a3, const char *a4, char a5, uint64_t a6, NSError **a7)
{
  v30 = *MEMORY[0x1E69E9840];
  if (a5)
  {
    v7 = 0;
  }

  else
  {
    v7 = a6;
    if (AVAudioEngineLogCategory(void)::once != -1)
    {
      dispatch_once(&AVAudioEngineLogCategory(void)::once, &__block_literal_global_8660);
    }

    v13 = *AVAudioEngineLogCategory(void)::category;
    if (os_log_type_enabled(*AVAudioEngineLogCategory(void)::category, OS_LOG_TYPE_ERROR))
    {
      if (a1)
      {
        v14 = strrchr(a1, 47);
        if (v14)
        {
          v15 = v14 + 1;
        }

        else
        {
          v15 = a1;
        }
      }

      else
      {
        v15 = 0;
      }

      *buf = 136316418;
      v19 = "AVAEInternal.h";
      v20 = 1024;
      v21 = 83;
      v22 = 2080;
      v23 = v15;
      v24 = 1024;
      v25 = a2;
      v26 = 2080;
      v27 = a3;
      v28 = 2080;
      v29 = a4;
      _os_log_impl(&dword_1BA5AC000, v13, OS_LOG_TYPE_ERROR, "%25s:%-5d required condition is false: [%s:%d:%s: (%s)]", buf, 0x36u);
    }

    if (a7)
    {
      *a7 = [MEMORY[0x1E696ABC0] errorWithDomain:@"com.apple.coreaudio.avfaudio" code:v7 userInfo:{objc_msgSend(MEMORY[0x1E695DF20], "dictionaryWithObjectsAndKeys:", objc_msgSend(MEMORY[0x1E696AEC0], "stringWithUTF8String:", a4), @"false condition", 0)}];
    }

    else
    {
      [MEMORY[0x1E695DF30] raise:@"com.apple.coreaudio.avfaudio" format:{@"required condition is false: %s", a4}];
    }
  }

  v16 = *MEMORY[0x1E69E9840];
  return v7;
}

void std::__tree<std::__value_type<AUGraphNodeBaseV3 *,std::pair<AUGraphNodeBaseV3 *,unsigned int>>,std::__map_value_compare<AUGraphNodeBaseV3 *,std::__value_type<AUGraphNodeBaseV3 *,std::pair<AUGraphNodeBaseV3 *,unsigned int>>,std::less<AUGraphNodeBaseV3 *>,true>,std::allocator<std::__value_type<AUGraphNodeBaseV3 *,std::pair<AUGraphNodeBaseV3 *,unsigned int>>>>::destroy(void *a1)
{
  if (a1)
  {
    std::__tree<std::__value_type<AUGraphNodeBaseV3 *,std::pair<AUGraphNodeBaseV3 *,unsigned int>>,std::__map_value_compare<AUGraphNodeBaseV3 *,std::__value_type<AUGraphNodeBaseV3 *,std::pair<AUGraphNodeBaseV3 *,unsigned int>>,std::less<AUGraphNodeBaseV3 *>,true>,std::allocator<std::__value_type<AUGraphNodeBaseV3 *,std::pair<AUGraphNodeBaseV3 *,unsigned int>>>>::destroy(*a1);
    std::__tree<std::__value_type<AUGraphNodeBaseV3 *,std::pair<AUGraphNodeBaseV3 *,unsigned int>>,std::__map_value_compare<AUGraphNodeBaseV3 *,std::__value_type<AUGraphNodeBaseV3 *,std::pair<AUGraphNodeBaseV3 *,unsigned int>>,std::less<AUGraphNodeBaseV3 *>,true>,std::allocator<std::__value_type<AUGraphNodeBaseV3 *,std::pair<AUGraphNodeBaseV3 *,unsigned int>>>>::destroy(a1[1]);

    operator delete(a1);
  }
}

uint64_t std::__function::__func<AUGraphParser::InformNodesAboutMixerConnection(AVAudioEngineGraph const&,EDirection,ERecursion,AUGraphNodeBaseV3 &,AUGraphConnection &,NSError **)::$_0,std::allocator<AUGraphParser::InformNodesAboutMixerConnection(AVAudioEngineGraph const&,EDirection,ERecursion,AUGraphNodeBaseV3 &,AUGraphConnection &,NSError **)::$_0>,ETraversalStatus ()(AUGraphNodeBaseV3 &,AUGraphConnection*)>::operator()(uint64_t a1, unint64_t a2, uint64_t *a3)
{
  v5 = *a3;
  if (*a3)
  {
    v6 = *(v5 + 16);
    if (v6)
    {
      if ((*(*v6 + 120))(v6))
      {
        **(a1 + 8) = *(v5 + 16);
        v7 = (v5 + 24);
LABEL_5:
        **(a1 + 16) = *v7;
        goto LABEL_15;
      }

      if (**(a1 + 24) == 1)
      {
        v8 = *(a1 + 32);
        v11 = *(v8 + 8);
        v9 = v8 + 8;
        v10 = v11;
        if (v11)
        {
          v12 = *(v5 + 16);
          v13 = v9;
          do
          {
            v14 = *(v10 + 32);
            v15 = v14 >= v12;
            v16 = v14 < v12;
            if (v15)
            {
              v13 = v10;
            }

            v10 = *(v10 + 8 * v16);
          }

          while (v10);
          if (v13 != v9 && v12 >= *(v13 + 32))
          {
            **(a1 + 8) = *(v13 + 40);
            v7 = (v13 + 48);
            goto LABEL_5;
          }
        }
      }
    }
  }

LABEL_15:
  if (**(a1 + 24) == 1 && ((*(a2 + 56) - *(a2 + 48)) >> 3) >= 2)
  {
    v17 = **(a1 + 8);
    v18 = **(a1 + 16);
    v19 = *(*(a1 + 32) + 8);
    if (!v19)
    {
LABEL_23:
      operator new();
    }

    while (1)
    {
      while (1)
      {
        v20 = v19;
        v21 = v19[4];
        if (v21 <= a2)
        {
          break;
        }

        v19 = *v20;
        if (!*v20)
        {
          goto LABEL_23;
        }
      }

      if (v21 >= a2)
      {
        break;
      }

      v19 = v20[1];
      if (!v19)
      {
        goto LABEL_23;
      }
    }
  }

  v22 = **(a1 + 8);
  if (v22 && **(a1 + 16) != -1)
  {
    (*(**(a2 + 24) + 368))(*(a2 + 24), *(v22 + 16));
  }

  return 0;
}

__n128 std::__function::__func<AUGraphParser::InformNodesAboutMixerConnection(AVAudioEngineGraph const&,EDirection,ERecursion,AUGraphNodeBaseV3 &,AUGraphConnection &,NSError **)::$_0,std::allocator<AUGraphParser::InformNodesAboutMixerConnection(AVAudioEngineGraph const&,EDirection,ERecursion,AUGraphNodeBaseV3 &,AUGraphConnection &,NSError **)::$_0>,ETraversalStatus ()(AUGraphNodeBaseV3 &,AUGraphConnection*)>::__clone(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_1F384D150;
  result = *(a1 + 8);
  *(a2 + 24) = *(a1 + 24);
  *(a2 + 8) = result;
  return result;
}

uint64_t AUGraphParser::InformNodesAboutMixerDisconnection(uint64_t a1, uint64_t a2, NSError **a3)
{
  v10[4] = *MEMORY[0x1E69E9840];
  v6 = *(a2 + 16);
  if (v6)
  {
    v7 = (*(*v6 + 120))(v6);
  }

  else
  {
    v7 = 0;
  }

  result = _AVAE_CheckAndReturnErr("/Library/Caches/com.apple.xbs/Sources/AVFAudio/Source/AVFAudio/AVAudioEngine/AVAEGraph/AVAudioEngineGraph.mm", 391, "InformNodesAboutMixerDisconnection", "inMixerConn.destNode && inMixerConn.destNode->IsMixerNode()", v7, 4294967246, a3);
  if (!result)
  {
    v10[0] = &unk_1F384D198;
    v10[1] = a2;
    v10[3] = v10;
    AUGraphParser::TraverseGraphNodes(1, 1, a1, 0, v10);
    result = std::__function::__value_func<ETraversalStatus ()(AUGraphNodeBaseV3 &,AUGraphConnection *)>::~__value_func[abi:ne200100](v10);
  }

  v9 = *MEMORY[0x1E69E9840];
  return result;
}

void sub_1BA60FC94(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  std::__function::__value_func<ETraversalStatus ()(AUGraphNodeBaseV3 &,AUGraphConnection *)>::~__value_func[abi:ne200100](va);
  _Unwind_Resume(a1);
}

uint64_t std::__function::__func<AUGraphParser::InformNodesAboutMixerDisconnection(AVAudioEngineGraph const&,EDirection,ERecursion,AUGraphNodeBaseV3 &,AUGraphConnection &,NSError **)::$_0,std::allocator<AUGraphParser::InformNodesAboutMixerDisconnection(AVAudioEngineGraph const&,EDirection,ERecursion,AUGraphNodeBaseV3 &,AUGraphConnection &,NSError **)::$_0>,ETraversalStatus ()(AUGraphNodeBaseV3 &,AUGraphConnection*)>::operator()(uint64_t a1, void **a2)
{
  (*(*a2[3] + 376))(a2[3], *(*(*(a1 + 8) + 16) + 16), *(*(a1 + 8) + 24), 0);
  if (!((*a2)[15])(a2) || *(*(a1 + 8) + 16) == a2)
  {
    return 0;
  }

  else
  {
    return 2;
  }
}

uint64_t std::__function::__func<AUGraphParser::InformNodesAboutMixerDisconnection(AVAudioEngineGraph const&,EDirection,ERecursion,AUGraphNodeBaseV3 &,AUGraphConnection &,NSError **)::$_0,std::allocator<AUGraphParser::InformNodesAboutMixerDisconnection(AVAudioEngineGraph const&,EDirection,ERecursion,AUGraphNodeBaseV3 &,AUGraphConnection &,NSError **)::$_0>,ETraversalStatus ()(AUGraphNodeBaseV3 &,AUGraphConnection*)>::__clone(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_1F384D198;
  a2[1] = v2;
  return result;
}

uint64_t AUGraphParser::IsNodeConnectedToTarget(uint64_t a1, uint64_t a2, void *a3)
{
  v7[4] = *MEMORY[0x1E69E9840];
  if (*a3 == a3[1])
  {
    v3 = 0;
  }

  else
  {
    v6 = 0;
    v7[0] = &unk_1F384D1E0;
    v7[1] = a3;
    v7[2] = &v6;
    v7[3] = v7;
    AUGraphParser::TraverseGraphNodes(a1, 1, a2, 0, v7);
    std::__function::__value_func<ETraversalStatus ()(AUGraphNodeBaseV3 &,AUGraphConnection *)>::~__value_func[abi:ne200100](v7);
    v3 = v6;
  }

  v4 = *MEMORY[0x1E69E9840];
  return v3 & 1;
}

void sub_1BA60FEAC(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  std::__function::__value_func<ETraversalStatus ()(AUGraphNodeBaseV3 &,AUGraphConnection *)>::~__value_func[abi:ne200100](va);
  _Unwind_Resume(a1);
}

uint64_t std::__function::__func<AUGraphParser::IsNodeConnectedToTarget(AVAudioEngineGraph const&,EDirection,ERecursion,AUGraphNodeBaseV3 &,std::vector<AUGraphNodeBaseV3*> const&)::$_0,std::allocator<AUGraphParser::IsNodeConnectedToTarget(AVAudioEngineGraph const&,EDirection,ERecursion,AUGraphNodeBaseV3 &,std::vector<AUGraphNodeBaseV3*> const&)::$_0>,ETraversalStatus ()(AUGraphNodeBaseV3 &,AUGraphConnection *)>::operator()(uint64_t a1, uint64_t a2)
{
  v3 = **(a1 + 8);
  v2 = *(*(a1 + 8) + 8);
  while (v3 != v2)
  {
    if (*v3 == a2)
    {
      if (v2 != v3)
      {
        v4 = *(a1 + 16);
        result = 1;
        *v4 = 1;
        return result;
      }

      return 0;
    }

    ++v3;
  }

  return 0;
}

__n128 std::__function::__func<AUGraphParser::IsNodeConnectedToTarget(AVAudioEngineGraph const&,EDirection,ERecursion,AUGraphNodeBaseV3 &,std::vector<AUGraphNodeBaseV3*> const&)::$_0,std::allocator<AUGraphParser::IsNodeConnectedToTarget(AVAudioEngineGraph const&,EDirection,ERecursion,AUGraphNodeBaseV3 &,std::vector<AUGraphNodeBaseV3*> const&)::$_0>,ETraversalStatus ()(AUGraphNodeBaseV3 &,AUGraphConnection *)>::__clone(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_1F384D1E0;
  result = *(a1 + 8);
  *(a2 + 8) = result;
  return result;
}

uint64_t AUGraphParser::InitializeNode(AUGraphParser *this, const AVAudioEngineGraph *a2, AUGraphNodeBaseV3 *a3, int a4)
{
  v22 = *MEMORY[0x1E69E9840];
  v12 = a3;
  v10 = this;
  v11 = &v12;
  if (a4)
  {
    *buf = &unk_1F384D228;
    *&buf[8] = &v10;
    *&v15[4] = buf;
    AUGraphParser::TraverseMIDIGraphNodes(a2, buf);
    std::__function::__value_func<ETraversalStatus ()(AUGraphNodeBaseV3 &,AUGraphConnection *)>::~__value_func[abi:ne200100](buf);
  }

  if (*(*(a2 + 3) + 48))
  {
    goto LABEL_14;
  }

  v5 = *(a2 + 9);
  if (v5 && (*(*a2 + 152))(a2))
  {
    if (*(*(a2 + 3) + 48))
    {
      if (AVAudioEngineLogCategory(void)::once != -1)
      {
        dispatch_once(&AVAudioEngineLogCategory(void)::once, &__block_literal_global_8660);
      }

      v6 = *AVAudioEngineLogCategory(void)::category;
      if (os_log_type_enabled(*AVAudioEngineLogCategory(void)::category, OS_LOG_TYPE_ERROR))
      {
        *buf = 136316674;
        *&buf[4] = "AVAEInternal.h";
        *&buf[12] = 1024;
        *&buf[14] = 104;
        v14 = 2080;
        *v15 = "AVAudioEngineGraph.mm";
        *&v15[8] = 1024;
        *&v15[10] = 438;
        v16 = 2080;
        v17 = "operator()";
        v18 = 2080;
        v19 = "inGraph.PerformCommand(theNode, AVAudioEngineGraph::kAUSetPropertyMaximumFramesPerSlice, &maxFrames, sizeof(maxFrames))";
        v20 = 1024;
        v21 = -10849;
        _os_log_impl(&dword_1BA5AC000, v6, OS_LOG_TYPE_ERROR, "%25s:%-5d [%s:%d:%s: (%s): error %d", buf, 0x3Cu);
      }

      [MEMORY[0x1E695DF30] raise:@"com.apple.coreaudio.avfaudio" format:{@"error %d", 4294956447, v10}];
    }

    else
    {
      (*(*a2 + 248))(a2, v5);
    }
  }

  result = AVAudioEngineGraph::PerformCommand(v10, a2, 3, 0, 0);
  if (!result)
  {
LABEL_14:
    result = 0;
    if ((*v11 & 0x3F) != 0)
    {
      if ((*v11 & 0x20) != 0)
      {
        v8 = *v11 & 0x1F;
      }

      else
      {
        v8 = *(a2 + 8) | *v11 & 0x3F;
      }

      *(a2 + 8) = v8;
    }

    else
    {
      *(a2 + 8) = 0;
    }
  }

  v9 = *MEMORY[0x1E69E9840];
  return result;
}

void sub_1BA610214(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  std::__function::__value_func<ETraversalStatus ()(AUGraphNodeBaseV3 &,AUGraphConnection *)>::~__value_func[abi:ne200100](va);
  _Unwind_Resume(a1);
}

uint64_t AVAudioEngineGraph::PerformCommand(uint64_t a1, void *a2, int a3, uint64_t a4, int a5)
{
  v40 = *MEMORY[0x1E69E9840];
  if (a3 > 5)
  {
    if ((a3 - 8) < 2)
    {
      v9 = 4294967246;
      if (!a4 || a5 != 32)
      {
        goto LABEL_34;
      }

      v10 = a3 == 8;
      v11 = *(a4 + 8);
      *buf = *a4;
      *&buf[8] = v11;
      (*(**(a4 + 16) + 256))(*(a4 + 16), v10, *(a4 + 24), buf);
      v13 = *(a1 + 80);
      v14 = !v10;
      if (!v13)
      {
        v14 = 1;
      }

      if ((v14 & 1) == 0)
      {
        AUGraphSequencerInterface::NodeStateChanged(v13, *(a4 + 16), 0x8001u, v12);
      }

      goto LABEL_33;
    }

    if (a3 == 6)
    {
      if ((*(*a2 + 128))(a2))
      {
        v15 = *(*a2 + 224);
        v16 = *MEMORY[0x1E69E9840];
        v17 = a2;

        return v15(v17);
      }
    }

    else if ((*(*a2 + 128))(a2))
    {
      v15 = *(*a2 + 232);
      v25 = *MEMORY[0x1E69E9840];
      v17 = a2;

      return v15(v17);
    }

    v9 = 4294967246;
    goto LABEL_34;
  }

  if (a3 == 3)
  {
    if ((*(a2[3] + 48) & 1) == 0)
    {
      v19 = (*(*a2 + 184))(a2);
      if (v19)
      {
        v9 = v19;
        if (AVAudioEngineLogCategory(void)::once != -1)
        {
          dispatch_once(&AVAudioEngineLogCategory(void)::once, &__block_literal_global_8660);
        }

        v21 = *AVAudioEngineLogCategory(void)::category;
        if (os_log_type_enabled(*AVAudioEngineLogCategory(void)::category, OS_LOG_TYPE_DEFAULT))
        {
          v22 = a2[2];
          AUGraphNodeBase::DescAsString(__p, a2[3]);
          v23 = v28 >= 0 ? __p : __p[0];
          *buf = 136316418;
          *&buf[4] = "AVAudioEngineGraph.mm";
          v30 = 1024;
          v31 = 3337;
          v32 = 2048;
          v33 = a1;
          v34 = 2048;
          v35 = v22;
          v36 = 2080;
          v37 = v23;
          v38 = 1024;
          v39 = v9;
          _os_log_impl(&dword_1BA5AC000, v21, OS_LOG_TYPE_DEFAULT, "%25s:%-5d graph@%p: couldn't initialize node@%p {%s}, error %d", buf, 0x36u);
          if (v28 < 0)
          {
            operator delete(__p[0]);
          }
        }

        goto LABEL_34;
      }

      v26 = *(a1 + 80);
      if (v26)
      {
        AUGraphSequencerInterface::NodeStateChanged(v26, a2, 1u, v20);
      }
    }
  }

  else if (a3 == 4)
  {
    if (*(a2[3] + 48) == 1 && (*(a1 + 185) != 1 || ((*(*a2 + 128))(a2) & 1) == 0))
    {
      v7 = *(a1 + 80);
      if (v7)
      {
        AUGraphSequencerInterface::NodeStateChanged(v7, a2, 2u, a4);
      }

      (*(*a2 + 192))(a2);
    }
  }

  else
  {
    (*(*a2[3] + 88))(a2[3]);
  }

LABEL_33:
  v9 = 0;
LABEL_34:
  v24 = *MEMORY[0x1E69E9840];
  return v9;
}

void AUGraphSequencerInterface::NodeStateChanged(AUGraphSequencerInterface *this, void **a2, unsigned int a3, AudioComponentDescription *a4)
{
  v27 = *MEMORY[0x1E69E9840];
  if (!*(this + 3))
  {
    goto LABEL_31;
  }

  v7 = *(this + 4);
  if (v7)
  {
    if (v7 == a2 && !(a3 >> 15) && *(this + 4) == a2)
    {
      std::__allocate_at_least[abi:ne200100]<std::allocator<EExtAudioGraphNodeState>>(1uLL);
    }

    goto LABEL_31;
  }

  if (a3 != 4)
  {
    v9 = *this;
    if (*(*this + 185))
    {
      NodeFromMap = AVAudioEngineGraph::GetNodeFromMap(*this, *(v9 + 24));
      if (a3 != 32769 || !NodeFromMap || *(v9 + 184) == 1 && !((*a2)[15])(a2))
      {
        goto LABEL_31;
      }
    }

    else
    {
      if (a3 != 1)
      {
        goto LABEL_31;
      }

      v11 = *(*(*a2[3] + 256))(a2[3]);
      v12 = v11 == 1635086953 || v11 == 1635085685;
      if (!v12 || (a2[3][6] & 1) == 0)
      {
        goto LABEL_31;
      }
    }
  }

  v14 = 0;
  if (!AUGraphSequencerInterface::GetDefaultMusicDevice(this, &v14, 0, a4) && v14)
  {
    if (!*(this + 4))
    {
      if (AVAudioEngineLogCategory(void)::once != -1)
      {
        dispatch_once(&AVAudioEngineLogCategory(void)::once, &__block_literal_global_8660);
      }

      v8 = *AVAudioEngineLogCategory(void)::category;
      if (os_log_type_enabled(*AVAudioEngineLogCategory(void)::category, OS_LOG_TYPE_ERROR))
      {
        *buf = 136316418;
        v16 = "AVAEInternal.h";
        v17 = 1024;
        v18 = 71;
        v19 = 2080;
        v20 = "AVAudioEngineGraph.mm";
        v21 = 1024;
        v22 = 4566;
        v23 = 2080;
        v24 = "NodeStateChanged";
        v25 = 2080;
        v26 = "GetMusicDeviceNode()";
        _os_log_impl(&dword_1BA5AC000, v8, OS_LOG_TYPE_ERROR, "%25s:%-5d required condition is false: [%s:%d:%s: (%s)]", buf, 0x36u);
      }

      [MEMORY[0x1E695DF30] raise:@"com.apple.coreaudio.avfaudio" format:{@"required condition is false: %s", "GetMusicDeviceNode()"}];
    }

    std::__allocate_at_least[abi:ne200100]<std::allocator<EExtAudioGraphNodeState>>(1uLL);
  }

LABEL_31:
  v13 = *MEMORY[0x1E69E9840];
}

uint64_t AVAudioEngineGraph::GetNodeFromMap(AVAudioEngineGraph *this, AVAudioNodeImplBase *a2)
{
  if (!AVAudioEngineGraph::IsNodeInGraph(this, a2))
  {
    return 0;
  }

  v4 = *(this + 1);
  v7 = *(v4 + 8);
  v5 = v4 + 8;
  v6 = v7;
  if (!v7)
  {
    goto LABEL_10;
  }

  v8 = v5;
  do
  {
    v9 = *(v6 + 32);
    v10 = v9 >= a2;
    v11 = v9 < a2;
    if (v10)
    {
      v8 = v6;
    }

    v6 = *(v6 + 8 * v11);
  }

  while (v6);
  if (v8 == v5 || *(v8 + 32) > a2)
  {
LABEL_10:
    v8 = v5;
  }

  return *(v8 + 40);
}

uint64_t AUGraphSequencerInterface::GetDefaultMusicDevice(AVAudioNodeImplBase ***this, unint64_t a2, unint64_t a3, AudioComponentDescription *a4)
{
  v26 = *MEMORY[0x1E69E9840];
  if (a2 | a3)
  {
    if (a2)
    {
      *a2 = 0;
    }

    if (a3)
    {
      *a3 = 0;
      *(a3 + 8) = 0;
      *(a3 + 16) = 0;
    }
  }

  else
  {
    if (AVAudioEngineLogCategory(void)::once != -1)
    {
      dispatch_once(&AVAudioEngineLogCategory(void)::once, &__block_literal_global_8660);
    }

    v7 = *AVAudioEngineLogCategory(void)::category;
    if (os_log_type_enabled(*AVAudioEngineLogCategory(void)::category, OS_LOG_TYPE_ERROR))
    {
      *buf = 136316418;
      *&buf[4] = "AVAEInternal.h";
      *&buf[12] = 1024;
      *&buf[14] = 71;
      v20 = 2080;
      *v21 = "AVAudioEngineGraph.mm";
      *&v21[8] = 1024;
      *&v21[10] = 4668;
      v22 = 2080;
      v23 = "GetDefaultMusicDevice";
      v24 = 2080;
      v25 = "outUnit || outDesc";
      _os_log_impl(&dword_1BA5AC000, v7, OS_LOG_TYPE_ERROR, "%25s:%-5d required condition is false: [%s:%d:%s: (%s)]", buf, 0x36u);
    }

    [MEMORY[0x1E695DF30] raise:@"com.apple.coreaudio.avfaudio" format:{@"required condition is false: %s", "outUnit || outDesc"}];
  }

  v8 = *this;
  v9 = **this;
  std::recursive_mutex::lock((v9 + 112));
  NodeFromMap = AVAudioEngineGraph::GetNodeFromMap(v8, v8[3]);
  if (NodeFromMap)
  {
    v18 = 0;
    *buf = &unk_1F384D8A0;
    *&buf[8] = &v18;
    *&v21[4] = buf;
    AUGraphParser::TraverseGraphNodes(1, 1, NodeFromMap, 0, buf);
    std::__function::__value_func<ETraversalStatus ()(AUGraphNodeBaseV3 &,AUGraphConnection *)>::~__value_func[abi:ne200100](buf);
    v11 = v18;
    this[4] = v18;
    if (v11)
    {
      if (a2)
      {
        *a2 = (*(**(v11 + 24) + 224))(*(v11 + 24));
      }

      if (a3)
      {
        v12 = (*(**(v18 + 24) + 256))(*(v18 + 24));
        v13 = *v12;
        *(a3 + 16) = *(v12 + 16);
        *a3 = v13;
      }
    }

    v14 = 0;
  }

  else
  {
    if (AVAudioEngineLogCategory(void)::once != -1)
    {
      dispatch_once(&AVAudioEngineLogCategory(void)::once, &__block_literal_global_8660);
    }

    v15 = *AVAudioEngineLogCategory(void)::category;
    if (os_log_type_enabled(*AVAudioEngineLogCategory(void)::category, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315394;
      *&buf[4] = "AVAudioEngineGraph.mm";
      *&buf[12] = 1024;
      *&buf[14] = 4683;
      _os_log_impl(&dword_1BA5AC000, v15, OS_LOG_TYPE_ERROR, "%25s:%-5d Can't retrieve source node to play sequence because there is no output node!", buf, 0x12u);
    }

    v14 = 4294956420;
  }

  std::recursive_mutex::unlock((v9 + 112));
  v16 = *MEMORY[0x1E69E9840];
  return v14;
}

void std::__allocate_at_least[abi:ne200100]<std::allocator<EExtAudioGraphNodeState>>(unint64_t a1)
{
  if (!(a1 >> 62))
  {
    operator new();
  }

  std::__throw_bad_array_new_length[abi:ne200100]();
}

uint64_t std::__function::__func<AUGraphSequencerInterface::GetDefaultMusicDevice(void *,OpaqueAudioComponentInstance **,AudioComponentDescription *)::$_0,std::allocator<AUGraphSequencerInterface::GetDefaultMusicDevice(void *,OpaqueAudioComponentInstance **,AudioComponentDescription *)::$_0>,ETraversalStatus ()(AUGraphNodeBaseV3 &,AUGraphConnection *)>::operator()(uint64_t a1, uint64_t a2)
{
  v4 = *(*(**(a2 + 24) + 256))(*(a2 + 24));
  if (v4 != 1635086953 && v4 != 1635085685)
  {
    return 0;
  }

  **(a1 + 8) = a2;
  return 1;
}

uint64_t std::__function::__func<AUGraphSequencerInterface::GetDefaultMusicDevice(void *,OpaqueAudioComponentInstance **,AudioComponentDescription *)::$_0,std::allocator<AUGraphSequencerInterface::GetDefaultMusicDevice(void *,OpaqueAudioComponentInstance **,AudioComponentDescription *)::$_0>,ETraversalStatus ()(AUGraphNodeBaseV3 &,AUGraphConnection *)>::__clone(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_1F384D8A0;
  a2[1] = v2;
  return result;
}

BOOL AVAudioEngineGraph::IsNodeInGraph(AVAudioEngineGraph *this, AVAudioNodeImplBase *a2)
{
  if (!a2)
  {
    return 0;
  }

  v2 = *(this + 1);
  if (!v2)
  {
    return 0;
  }

  v5 = *(v2 + 8);
  v3 = v2 + 8;
  v4 = v5;
  if (!v5)
  {
    goto LABEL_11;
  }

  v6 = v3;
  do
  {
    v7 = *(v4 + 32);
    v8 = v7 >= a2;
    v9 = v7 < a2;
    if (v8)
    {
      v6 = v4;
    }

    v4 = *(v4 + 8 * v9);
  }

  while (v4);
  if (v6 == v3 || *(v6 + 32) > a2)
  {
LABEL_11:
    v6 = v3;
  }

  return v6 != v3;
}

uint64_t std::__function::__func<AUGraphParser::InitializeNode(AVAudioEngineGraph const&,AUGraphNodeBaseV3 &,unsigned int,BOOL)::$_0,std::allocator<AUGraphParser::InitializeNode(AVAudioEngineGraph const&,AUGraphNodeBaseV3 &,unsigned int,BOOL)::$_0>,ETraversalStatus ()(AUGraphNodeBaseV3 &,AUGraphConnection *)>::operator()(uint64_t a1, _DWORD *a2)
{
  v24 = *MEMORY[0x1E69E9840];
  v3 = *(a1 + 8);
  if (*(*(a2 + 3) + 48))
  {
    goto LABEL_13;
  }

  v4 = a2[9];
  if (v4 && (*(*a2 + 152))(a2))
  {
    if (*(*(a2 + 3) + 48))
    {
      if (AVAudioEngineLogCategory(void)::once != -1)
      {
        dispatch_once(&AVAudioEngineLogCategory(void)::once, &__block_literal_global_8660);
      }

      v5 = *AVAudioEngineLogCategory(void)::category;
      if (os_log_type_enabled(*AVAudioEngineLogCategory(void)::category, OS_LOG_TYPE_ERROR))
      {
        *buf = 136316674;
        v11 = "AVAEInternal.h";
        v12 = 1024;
        v13 = 104;
        v14 = 2080;
        v15 = "AVAudioEngineGraph.mm";
        v16 = 1024;
        v17 = 438;
        v18 = 2080;
        v19 = "operator()";
        v20 = 2080;
        v21 = "inGraph.PerformCommand(theNode, AVAudioEngineGraph::kAUSetPropertyMaximumFramesPerSlice, &maxFrames, sizeof(maxFrames))";
        v22 = 1024;
        v23 = -10849;
        _os_log_impl(&dword_1BA5AC000, v5, OS_LOG_TYPE_ERROR, "%25s:%-5d [%s:%d:%s: (%s): error %d", buf, 0x3Cu);
      }

      [MEMORY[0x1E695DF30] raise:@"com.apple.coreaudio.avfaudio" format:{@"error %d", 4294956447}];
    }

    else
    {
      (*(*a2 + 248))(a2, v4);
    }
  }

  if (!AVAudioEngineGraph::PerformCommand(*v3, a2, 3, 0, 0))
  {
LABEL_13:
    v7 = **(v3 + 8);
    result = 0;
    if ((v7 & 0x3F) != 0)
    {
      if ((v7 & 0x20) != 0)
      {
        v8 = **(v3 + 8) & 0x1F;
      }

      else
      {
        v8 = a2[8] | **(v3 + 8) & 0x3F;
      }

      a2[8] = v8;
    }

    else
    {
      a2[8] = 0;
    }
  }

  else
  {
    result = 1;
  }

  v9 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t std::__function::__func<AUGraphParser::InitializeNode(AVAudioEngineGraph const&,AUGraphNodeBaseV3 &,unsigned int,BOOL)::$_0,std::allocator<AUGraphParser::InitializeNode(AVAudioEngineGraph const&,AUGraphNodeBaseV3 &,unsigned int,BOOL)::$_0>,ETraversalStatus ()(AUGraphNodeBaseV3 &,AUGraphConnection *)>::__clone(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_1F384D228;
  a2[1] = v2;
  return result;
}

uint64_t AUGraphParser::UninitializeNode(AUGraphParser *this, const AVAudioEngineGraph *a2, AUGraphNodeBaseV3 *a3)
{
  v3 = a3;
  v18 = *MEMORY[0x1E69E9840];
  v10 = 0;
  result = AVAudioEngineGraph::PerformCommand(this, a2, 4, 0, 0);
  if (result)
  {
    v7 = result;
    if (AVAudioEngineLogCategory(void)::once != -1)
    {
      dispatch_once(&AVAudioEngineLogCategory(void)::once, &__block_literal_global_8660);
    }

    v8 = *AVAudioEngineLogCategory(void)::category;
    if (os_log_type_enabled(*AVAudioEngineLogCategory(void)::category, OS_LOG_TYPE_ERROR))
    {
      *buf = 136316674;
      *&buf[4] = "AVAEInternal.h";
      *&buf[12] = 1024;
      *&buf[14] = 104;
      *&buf[18] = 2080;
      *&buf[20] = "AVAudioEngineGraph.mm";
      *&buf[28] = 1024;
      *&buf[30] = 467;
      v12 = 2080;
      v13 = "UninitializeNode";
      v14 = 2080;
      v15 = "inGraph.PerformCommand(node, AVAudioEngineGraph::kAUUninitialize, NULL, 0)";
      v16 = 1024;
      v17 = v7;
      _os_log_impl(&dword_1BA5AC000, v8, OS_LOG_TYPE_ERROR, "%25s:%-5d [%s:%d:%s: (%s): error %d", buf, 0x3Cu);
    }

    result = [MEMORY[0x1E695DF30] raise:@"com.apple.coreaudio.avfaudio" format:{@"error %d", v7}];
  }

  *(a2 + 8) = 0;
  if (v3)
  {
    *buf = &unk_1F384D270;
    *&buf[8] = this;
    *&buf[16] = &v10;
    *&buf[24] = buf;
    AUGraphParser::TraverseMIDIGraphNodes(a2, buf);
    result = std::__function::__value_func<ETraversalStatus ()(AUGraphNodeBaseV3 &,AUGraphConnection *)>::~__value_func[abi:ne200100](buf);
  }

  v9 = *MEMORY[0x1E69E9840];
  return result;
}

void sub_1BA611598(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  std::__function::__value_func<ETraversalStatus ()(AUGraphNodeBaseV3 &,AUGraphConnection *)>::~__value_func[abi:ne200100](va);
  _Unwind_Resume(a1);
}

uint64_t std::__function::__func<AUGraphParser::UninitializeNode(AVAudioEngineGraph const&,AUGraphNodeBaseV3 &,unsigned int,BOOL)::$_0,std::allocator<AUGraphParser::UninitializeNode(AVAudioEngineGraph const&,AUGraphNodeBaseV3 &,unsigned int,BOOL)::$_0>,ETraversalStatus ()(AUGraphNodeBaseV3 &,AUGraphConnection *)>::operator()(uint64_t a1, uint64_t a2)
{
  v26 = *MEMORY[0x1E69E9840];
  for (i = *(a2 + 128); i != *(a2 + 136); i += 8)
  {
    if (*i && (*(*(*i + 24) + 48) & 1) != 0)
    {
      result = 1;
      goto LABEL_19;
    }
  }

  v5 = AVAudioEngineGraph::PerformCommand(*(a1 + 8), a2, 4, 0, 0);
  if (v5)
  {
    v6 = v5;
    if (AVAudioEngineLogCategory(void)::once != -1)
    {
      dispatch_once(&AVAudioEngineLogCategory(void)::once, &__block_literal_global_8660);
    }

    v7 = *AVAudioEngineLogCategory(void)::category;
    if (os_log_type_enabled(*AVAudioEngineLogCategory(void)::category, OS_LOG_TYPE_ERROR))
    {
      *buf = 136316674;
      v13 = "AVAEInternal.h";
      v14 = 1024;
      v15 = 104;
      v16 = 2080;
      v17 = "AVAudioEngineGraph.mm";
      v18 = 1024;
      v19 = 477;
      v20 = 2080;
      v21 = "operator()";
      v22 = 2080;
      v23 = "inGraph.PerformCommand(midiNode, AVAudioEngineGraph::kAUUninitialize, NULL, 0)";
      v24 = 1024;
      v25 = v6;
      _os_log_impl(&dword_1BA5AC000, v7, OS_LOG_TYPE_ERROR, "%25s:%-5d [%s:%d:%s: (%s): error %d", buf, 0x3Cu);
    }

    [MEMORY[0x1E695DF30] raise:@"com.apple.coreaudio.avfaudio" format:{@"error %d", v6}];
  }

  v8 = **(a1 + 16);
  result = 0;
  if ((v8 & 0x3F) != 0)
  {
    if ((v8 & 0x20) != 0)
    {
      v10 = **(a1 + 16) & 0x1F;
    }

    else
    {
      v10 = *(a2 + 32) | **(a1 + 16) & 0x3F;
    }

    *(a2 + 32) = v10;
  }

  else
  {
    *(a2 + 32) = 0;
  }

LABEL_19:
  v11 = *MEMORY[0x1E69E9840];
  return result;
}

__n128 std::__function::__func<AUGraphParser::UninitializeNode(AVAudioEngineGraph const&,AUGraphNodeBaseV3 &,unsigned int,BOOL)::$_0,std::allocator<AUGraphParser::UninitializeNode(AVAudioEngineGraph const&,AUGraphNodeBaseV3 &,unsigned int,BOOL)::$_0>,ETraversalStatus ()(AUGraphNodeBaseV3 &,AUGraphConnection *)>::__clone(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_1F384D270;
  result = *(a1 + 8);
  *(a2 + 8) = result;
  return result;
}

void AUGraphParser::InitializeNodeChain(uint64_t a1, uint64_t a2, uint64_t a3, int a4)
{
  v6 = *MEMORY[0x1E69E9840];
  v4 = 0;
  v5 = a4;
  operator new();
}

void sub_1BA611904(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  std::__function::__value_func<ETraversalStatus ()(AUGraphNodeBaseV3 &,AUGraphConnection *)>::~__value_func[abi:ne200100](va);
  _Unwind_Resume(a1);
}

BOOL std::__function::__func<AUGraphParser::InitializeNodeChain(AVAudioEngineGraph const&,EDirection,ERecursion,AUGraphNodeBaseV3 &,unsigned int)::$_0,std::allocator<AUGraphParser::InitializeNodeChain(AVAudioEngineGraph const&,EDirection,ERecursion,AUGraphNodeBaseV3 &,unsigned int)::$_0>,ETraversalStatus ()(AUGraphNodeBaseV3 &,AUGraphConnection *)>::operator()(uint64_t a1, AVAudioEngineGraph *a2)
{
  v25 = *MEMORY[0x1E69E9840];
  if (**(a1 + 8) != 1)
  {
    goto LABEL_15;
  }

  if ((*(a2 + 32) & 2) != 0)
  {
    goto LABEL_15;
  }

  NodeFromMap = AVAudioEngineGraph::GetNodeFromMap(*(a1 + 16), *(*(a1 + 16) + 16));
  if (!NodeFromMap)
  {
    goto LABEL_15;
  }

  v5 = NodeFromMap;
  v6 = *(a2 + 1);
  if (((*(*NodeFromMap + 136))(NodeFromMap) & 1) != 0 || !v6 || (v7 = (*(**(v5 + 24) + 72))(*(v5 + 24), 0), v8 = (*(**(a2 + 3) + 48))(*(a2 + 3), *(v6 + 8)), v7) && ([v7 sampleRate], v9 > 0.0) && objc_msgSend(v7, "channelCount") && (objc_msgSend(v8, "sampleRate"), v11 = v10, objc_msgSend(v7, "sampleRate"), v11 == v12))
  {
LABEL_15:
    v15 = AUGraphParser::InitializeNode(*(a1 + 16), a2, **(a1 + 8), **(a1 + 8) == 2);
    **(a1 + 24) = v15;
    result = v15 != 0;
  }

  else
  {
    if (AVAudioEngineLogCategory(void)::once != -1)
    {
      dispatch_once(&AVAudioEngineLogCategory(void)::once, &__block_literal_global_8660);
    }

    v13 = *AVAudioEngineLogCategory(void)::category;
    if (os_log_type_enabled(*AVAudioEngineLogCategory(void)::category, OS_LOG_TYPE_ERROR))
    {
      v17 = 136315906;
      v18 = "AVAudioEngineGraph.mm";
      v19 = 1024;
      v20 = 504;
      v21 = 2080;
      v22 = [objc_msgSend(v7 "description")];
      v23 = 2080;
      v24 = [objc_msgSend(v8 "description")];
      _os_log_impl(&dword_1BA5AC000, v13, OS_LOG_TYPE_ERROR, "%25s:%-5d Error, formats don't match! Input HW format: %s, tap format: %s", &v17, 0x26u);
    }

    **(a1 + 24) = -10868;
    result = 1;
  }

  v16 = *MEMORY[0x1E69E9840];
  return result;
}

__n128 std::__function::__func<AUGraphParser::InitializeNodeChain(AVAudioEngineGraph const&,EDirection,ERecursion,AUGraphNodeBaseV3 &,unsigned int)::$_0,std::allocator<AUGraphParser::InitializeNodeChain(AVAudioEngineGraph const&,EDirection,ERecursion,AUGraphNodeBaseV3 &,unsigned int)::$_0>,ETraversalStatus ()(AUGraphNodeBaseV3 &,AUGraphConnection *)>::__clone(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_1F384D2B8;
  result = *(a1 + 8);
  *(a2 + 24) = *(a1 + 24);
  *(a2 + 8) = result;
  return result;
}

uint64_t AUGraphParser::UninitializeNodeChain(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6[4] = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6[0] = &unk_1F384D300;
  v6[1] = &v5;
  v6[2] = a1;
  v6[3] = v6;
  AUGraphParser::TraverseGraphNodes(a2, 1, a3, 0, v6);
  result = std::__function::__value_func<ETraversalStatus ()(AUGraphNodeBaseV3 &,AUGraphConnection *)>::~__value_func[abi:ne200100](v6);
  v4 = *MEMORY[0x1E69E9840];
  return result;
}

void sub_1BA611CC0(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  std::__function::__value_func<ETraversalStatus ()(AUGraphNodeBaseV3 &,AUGraphConnection *)>::~__value_func[abi:ne200100](va);
  _Unwind_Resume(a1);
}

uint64_t std::__function::__func<AUGraphParser::UninitializeNodeChain(AVAudioEngineGraph const&,EDirection,ERecursion,AUGraphNodeBaseV3 &)::$_0,std::allocator<AUGraphParser::UninitializeNodeChain(AVAudioEngineGraph const&,EDirection,ERecursion,AUGraphNodeBaseV3 &)::$_0>,ETraversalStatus ()(AUGraphNodeBaseV3 &,AUGraphConnection *)>::operator()(uint64_t a1, const AVAudioEngineGraph *a2, uint64_t *a3)
{
  v5 = *a3;
  if ((*(*a2 + 112))(a2) && (v5 ? (v6 = **(a1 + 8) == 1) : (v6 = 0), v6 && ((*(a2 + 10) - *(a2 + 9)) >> 3) >= 1))
  {
    v7 = 0;
    while (1)
    {
      v8 = (*(*a2 + 24))(a2, 0, v7);
      if (v8)
      {
        if (v8 != *(v5 + 16) && (*(v8 + 32) & 2) != 0)
        {
          return 2;
        }
      }

      v7 = (v7 + 1);
      if (v7 >= ((*(a2 + 10) - *(a2 + 9)) >> 3))
      {
        goto LABEL_13;
      }
    }
  }

  else
  {
LABEL_13:
    AUGraphParser::UninitializeNode(*(a1 + 16), a2, 1);
    return 0;
  }
}

__n128 std::__function::__func<AUGraphParser::UninitializeNodeChain(AVAudioEngineGraph const&,EDirection,ERecursion,AUGraphNodeBaseV3 &)::$_0,std::allocator<AUGraphParser::UninitializeNodeChain(AVAudioEngineGraph const&,EDirection,ERecursion,AUGraphNodeBaseV3 &)::$_0>,ETraversalStatus ()(AUGraphNodeBaseV3 &,AUGraphConnection *)>::__clone(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_1F384D300;
  result = *(a1 + 8);
  *(a2 + 8) = result;
  return result;
}

void AUGraphParser::InitializeActiveNodesInOutputChain(AVAudioEngineGraph *a1, uint64_t a2, _BYTE *a3)
{
  v38 = *MEMORY[0x1E69E9840];
  v17 = 0;
  *a3 = 0;
  if (!AVAudioEngineGraph::IsNodeInGraph(a1, *(a2 + 24)))
  {
    if (AVAudioEngineLogCategory(void)::once != -1)
    {
      dispatch_once(&AVAudioEngineLogCategory(void)::once, &__block_literal_global_8660);
    }

    v4 = *AVAudioEngineLogCategory(void)::category;
    if (os_log_type_enabled(*AVAudioEngineLogCategory(void)::category, OS_LOG_TYPE_ERROR))
    {
      buf = 136316418;
      v27 = "AVAEInternal.h";
      v28 = 1024;
      v29 = 71;
      v30 = 2080;
      v31 = "AVAudioEngineGraph.mm";
      v32 = 1024;
      v33 = 554;
      v34 = 2080;
      v35 = "InitializeActiveNodesInOutputChain";
      v36 = 2080;
      v37 = "inGraph.IsNodeInGraph(inNode.NodeImpl())";
      _os_log_impl(&dword_1BA5AC000, v4, OS_LOG_TYPE_ERROR, "%25s:%-5d required condition is false: [%s:%d:%s: (%s)]", &buf, 0x36u);
    }

    [MEMORY[0x1E695DF30] raise:@"com.apple.coreaudio.avfaudio" format:{@"required condition is false: %s", "inGraph.IsNodeInGraph(inNode.NodeImpl())"}];
  }

  v14 = &v14;
  v15 = &v14;
  v16 = 0;
  AUGraphNodeBase::GetValidConnections(a2, 0, &v14);
  __p = &unk_1F384D348;
  v23 = &v14;
  v24 = a2;
  p_p = &__p;
  if (!std::function<ETraversalStatus ()(AUGraphNodeBaseV3 &,AUGraphConnection *)>::operator()(&__p, a2, 0))
  {
    v5 = (*(a2 + 56) - *(a2 + 48)) >> 3;
    if (v5 < 1)
    {
LABEL_20:
      v9 = (*(a2 + 80) - *(a2 + 72)) >> 3;
      if (v9 >= 1)
      {
        v10 = 0;
        do
        {
          while (1)
          {
            v11 = (*(*a2 + 24))(a2, 0, v10);
            if (v11)
            {
              break;
            }

            v10 = (v10 + 1);
            if (v10 == v9)
            {
              goto LABEL_8;
            }
          }

          v18 = 0;
          LODWORD(v19) = -1;
          v20 = 0;
          v21 = -1;
          if (((*(*a2 + 32))(a2, 0, v10, &v18) & 1) == 0)
          {
            if (AVAudioEngineLogCategory(void)::once != -1)
            {
              dispatch_once(&AVAudioEngineLogCategory(void)::once, &__block_literal_global_8660);
            }

            v12 = *AVAudioEngineLogCategory(void)::category;
            if (os_log_type_enabled(*AVAudioEngineLogCategory(void)::category, OS_LOG_TYPE_ERROR))
            {
              buf = 136316418;
              v27 = "AVAEInternal.h";
              v28 = 1024;
              v29 = 71;
              v30 = 2080;
              v31 = "AVAudioEngineGraph.mm";
              v32 = 1024;
              v33 = 215;
              v34 = 2080;
              v35 = "TraverseGraphNodesWithLookback";
              v36 = 2080;
              v37 = "inCurrNode.GetConnection(otherDirection, bus, conn)";
              _os_log_impl(&dword_1BA5AC000, v12, OS_LOG_TYPE_ERROR, "%25s:%-5d required condition is false: [%s:%d:%s: (%s)]", &buf, 0x36u);
            }

            [MEMORY[0x1E695DF30] raise:@"com.apple.coreaudio.avfaudio" format:{@"required condition is false: %s", "inCurrNode.GetConnection(otherDirection, bus, conn)"}];
          }

          v10 = (v10 + 1);
        }

        while (AUGraphParser::TraverseGraphNodes(0, 1, v11, &v18, &__p) != 1 && v10 != v9);
      }
    }

    else
    {
      v6 = 0;
      while (1)
      {
        v7 = (*(*a2 + 24))(a2, 1, v6);
        if (v7)
        {
          v18 = 0;
          LODWORD(v19) = -1;
          v20 = 0;
          v21 = -1;
          if (((*(*a2 + 32))(a2, 1, v6, &v18) & 1) == 0)
          {
            if (AVAudioEngineLogCategory(void)::once != -1)
            {
              dispatch_once(&AVAudioEngineLogCategory(void)::once, &__block_literal_global_8660);
            }

            v8 = *AVAudioEngineLogCategory(void)::category;
            if (os_log_type_enabled(*AVAudioEngineLogCategory(void)::category, OS_LOG_TYPE_ERROR))
            {
              buf = 136316418;
              v27 = "AVAEInternal.h";
              v28 = 1024;
              v29 = 71;
              v30 = 2080;
              v31 = "AVAudioEngineGraph.mm";
              v32 = 1024;
              v33 = 183;
              v34 = 2080;
              v35 = "TraverseGraphNodesWithLookback";
              v36 = 2080;
              v37 = "inCurrNode.GetConnection(inDirection, bus, conn)";
              _os_log_impl(&dword_1BA5AC000, v8, OS_LOG_TYPE_ERROR, "%25s:%-5d required condition is false: [%s:%d:%s: (%s)]", &buf, 0x36u);
            }

            [MEMORY[0x1E695DF30] raise:@"com.apple.coreaudio.avfaudio" format:{@"required condition is false: %s", "inCurrNode.GetConnection(inDirection, bus, conn)"}];
          }

          if (AUGraphParser::TraverseGraphNodes(1, 1, v7, &v18, &__p) == 1)
          {
            break;
          }
        }

        v6 = (v6 + 1);
        if (v5 == v6)
        {
          goto LABEL_20;
        }
      }
    }
  }

LABEL_8:
  std::__function::__value_func<ETraversalStatus ()(AUGraphNodeBaseV3 &,AUGraphConnection *)>::~__value_func[abi:ne200100](&__p);
  std::__list_imp<AUGraphConnection>::clear(&v14);
  v14 = &v14;
  v18 = 0;
  v19 = 0;
  v20 = 0;
  __p = 0;
  v23 = 0;
  v24 = 0;
  v15 = &v14;
  v16 = 0;
  AUGraphParser::GetNodeConnectionsToMixer(a2, &v14, 0);
}

uint64_t AVAudioEngineGraph::IsValidSourceNode(uint64_t a1, uint64_t a2)
{
  v4 = *(*(**(a2 + 24) + 256))(*(a2 + 24));
  if (v4 == 1635084142 || v4 == 1635086951)
  {
    return 1;
  }

  v6 = *(*(**(a2 + 24) + 256))(*(a2 + 24));
  if (v6 == 1635085685 || v6 == 1635086953)
  {
    return 1;
  }

  v9 = *(a1 + 16);
  v10 = *(a2 + 24);
  if (v9)
  {
    if (v10 == v9)
    {
      return 1;
    }
  }

  v11 = *(*v10 + 408);

  return v11();
}

uint64_t AUGraphParser::PrepareForDisconnection(AUGraphParser *this, const AVAudioEngineGraph *a2, NSError **a3, unsigned int a4, NSError **a5)
{
  IsNodeInGraph = AVAudioEngineGraph::IsNodeInGraph(this, a2);
  result = _AVAE_CheckAndReturnErr("/Library/Caches/com.apple.xbs/Sources/AVFAudio/Source/AVFAudio/AVAudioEngine/AVAEGraph/AVAudioEngineGraph.mm", 1128, "PrepareForDisconnection", "inGraph.IsNodeInGraph(&inDestNode)", IsNodeInGraph, 4294967246, a3);
  if (!result)
  {
    result = (*(*a2 + 120))(a2);
    if ((result & 1) == 0)
    {
      v10 = AVAudioEngineGraph::PerformCommand(this, a2, 4, 0, 0);

      return _AVAE_CheckNoErr("/Library/Caches/com.apple.xbs/Sources/AVFAudio/Source/AVFAudio/AVAudioEngine/AVAEGraph/AVAudioEngineGraph.mm", 1134, "PrepareForDisconnection", "inGraph.PerformCommand(inDestNode, AVAudioEngineGraph::kAUUninitialize, NULL, 0)", v10, a3);
    }
  }

  return result;
}

uint64_t AVAudioEngineGraph::MakeDisconnection(AVAudioEngineGraph *this, AVAudioNodeImplBase *a2, uint64_t a3, NSError **a4)
{
  IsNodeInGraph = AVAudioEngineGraph::IsNodeInGraph(this, a2);
  v9 = _AVAE_CheckAndReturnErr("/Library/Caches/com.apple.xbs/Sources/AVFAudio/Source/AVFAudio/AVAudioEngine/AVAEGraph/AVAudioEngineGraph.mm", 3978, "MakeDisconnection", "IsNodeInGraph(inDestImpl)", IsNodeInGraph, 4294967246, a4);
  if (!v9)
  {
    NodeFromMap = AVAudioEngineGraph::GetNodeFromMap(this, a2);
    v9 = (*(*NodeFromMap + 24))(NodeFromMap, 1, a3);
    if (v9)
    {
      if (!(*(*NodeFromMap + 120))(NodeFromMap))
      {
        v16 = &v16;
        v17 = &v16;
        v18 = 0;
        AUGraphParser::GetNodeConnectionsToMixer(NodeFromMap, &v16, 0);
      }

      v16 = 0;
      LODWORD(v17) = -1;
      v18 = 0;
      v19 = -1;
      v12 = (*(*NodeFromMap + 32))(NodeFromMap, 1, a3, &v16);
      _AVAE_CheckAndReturnErr("/Library/Caches/com.apple.xbs/Sources/AVFAudio/Source/AVFAudio/AVAudioEngine/AVAEGraph/AVAudioEngineGraph.mm", 3993, "MakeDisconnection", "true == graphNodeDest->GetConnection(kUpstream, inDestBus, mixerConn)", v12, 4294967246, a4);
      AUGraphParser::InformNodesAboutMixerDisconnection(v9, &v16, a4);
      v13 = *(*(NodeFromMap + 3) + 48);
      AUGraphParser::PrepareForDisconnection(this, NodeFromMap, a4, v14, v15);
      v16 = 0;
      LODWORD(v17) = -1;
      v18 = 0;
      v19 = -1;
      (*(*NodeFromMap + 32))(NodeFromMap, 1, a3, &v16);
      v20 = v16;
      v21 = v17;
      (*(*v18 + 256))();
      v9 = 0;
      if (v13 == 1)
      {
        v9 = AVAudioEngineGraph::PerformCommand(this, NodeFromMap, 3, 0, 0);
        _AVAE_CheckNoErr("/Library/Caches/com.apple.xbs/Sources/AVFAudio/Source/AVFAudio/AVAudioEngine/AVAEGraph/AVAudioEngineGraph.mm", 4015, "MakeDisconnection", "err = PerformCommand(*graphNodeDest, kAUInitialize, NULL, 0)", v9, a4);
      }
    }
  }

  return v9;
}

void *AVAudioEngineGraph::AddPendingConnection(uint64_t a1, int a2, __int128 *a3, NSError **a4)
{
  if (*a3)
  {
    v7 = *(a3 + 2) == -1;
  }

  else
  {
    v7 = 1;
  }

  v9 = !v7 && *(a3 + 2) != 0 && *(a3 + 6) != -1;
  result = _AVAE_CheckAndReturnErr("/Library/Caches/com.apple.xbs/Sources/AVFAudio/Source/AVFAudio/AVAudioEngine/AVAEGraph/AVAudioEngineGraph.mm", 3743, "AddPendingConnection", "inConn.IsSrcAndDestValid()", v9, 4294967246, a4);
  if (result)
  {
    return result;
  }

  v11 = 160;
  if (!a2)
  {
    v11 = 136;
  }

  v12 = (a1 + v11);
  result = v12[1];
  if (result == v12)
  {
LABEL_29:
    operator new();
  }

  v13 = 0;
  do
  {
    if (*a3 == result[2])
    {
      v14 = *(a3 + 2);
      if (*(a3 + 2) == *(result + 6))
      {
        if (v14 == result[4] && *(a3 + 6) == *(result + 10))
        {
          return result;
        }

        goto LABEL_23;
      }
    }

    else
    {
      v14 = *(a3 + 2);
    }

    if (result[4] != v14 || *(result + 10) != *(a3 + 6))
    {
      result = result[1];
      continue;
    }

LABEL_23:
    if (v13)
    {
      v15 = *result;
      v16 = result[1];
      *(v15 + 8) = v16;
      *v16 = v15;
      --v12[2];
      operator delete(result);
      v13 = 1;
      result = v16;
    }

    else
    {
      v17 = *a3;
      *(result + 28) = *(a3 + 12);
      *(result + 1) = v17;
      result = result[1];
      v13 = 1;
    }
  }

  while (result != v12);
  if ((v13 & 1) == 0)
  {
    goto LABEL_29;
  }

  return result;
}

uint64_t std::__function::__func<AUGraphParser::InitializeActiveNodesInOutputChain(AVAudioEngineGraph &,ETraversalMode,AUGraphNodeBaseV3 &,BOOL &)::$_3,std::allocator<AUGraphParser::InitializeActiveNodesInOutputChain(AVAudioEngineGraph &,ETraversalMode,AUGraphNodeBaseV3 &,BOOL &)::$_3>,ETraversalStatus ()(AUGraphNodeBaseV3 &,AUGraphConnection *)>::operator()(uint64_t a1, const AVAudioEngineGraph *a2)
{
  if (**(a1 + 8))
  {
    AUGraphParser::UninitializeNode(*(a1 + 16), a2, 1);
  }

  else
  {
    if (*(*(a2 + 3) + 48))
    {
      return 2;
    }

    v3 = 1;
    v4 = AUGraphParser::InitializeNode(*(a1 + 16), a2, 2, 1);
    **(a1 + 24) = v4;
    if (v4)
    {
      return v3;
    }
  }

  return 0;
}

__n128 std::__function::__func<AUGraphParser::InitializeActiveNodesInOutputChain(AVAudioEngineGraph &,ETraversalMode,AUGraphNodeBaseV3 &,BOOL &)::$_3,std::allocator<AUGraphParser::InitializeActiveNodesInOutputChain(AVAudioEngineGraph &,ETraversalMode,AUGraphNodeBaseV3 &,BOOL &)::$_3>,ETraversalStatus ()(AUGraphNodeBaseV3 &,AUGraphConnection *)>::__clone(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_1F384D468;
  result = *(a1 + 8);
  *(a2 + 24) = *(a1 + 24);
  *(a2 + 8) = result;
  return result;
}

BOOL _AVAE_CheckNoErr(char *a1, int a2, const char *a3, const char *a4, uint64_t a5, NSError **a6)
{
  v31 = *MEMORY[0x1E69E9840];
  if (a5)
  {
    if (AVAudioEngineLogCategory(void)::once != -1)
    {
      dispatch_once(&AVAudioEngineLogCategory(void)::once, &__block_literal_global_8660);
    }

    v12 = *AVAudioEngineLogCategory(void)::category;
    if (os_log_type_enabled(*AVAudioEngineLogCategory(void)::category, OS_LOG_TYPE_ERROR))
    {
      if (a1)
      {
        v13 = strrchr(a1, 47);
        if (v13)
        {
          v14 = v13 + 1;
        }

        else
        {
          v14 = a1;
        }
      }

      else
      {
        v14 = 0;
      }

      *buf = 136316674;
      v18 = "AVAEInternal.h";
      v19 = 1024;
      v20 = 104;
      v21 = 2080;
      v22 = v14;
      v23 = 1024;
      v24 = a2;
      v25 = 2080;
      v26 = a3;
      v27 = 2080;
      v28 = a4;
      v29 = 1024;
      v30 = a5;
      _os_log_impl(&dword_1BA5AC000, v12, OS_LOG_TYPE_ERROR, "%25s:%-5d [%s:%d:%s: (%s): error %d", buf, 0x3Cu);
    }

    if (a6)
    {
      *a6 = [MEMORY[0x1E696ABC0] errorWithDomain:@"com.apple.coreaudio.avfaudio" code:a5 userInfo:{objc_msgSend(MEMORY[0x1E695DF20], "dictionaryWithObjectsAndKeys:", objc_msgSend(MEMORY[0x1E696AEC0], "stringWithUTF8String:", a4), @"failed call", 0)}];
    }

    else
    {
      [MEMORY[0x1E695DF30] raise:@"com.apple.coreaudio.avfaudio" format:{@"error %d", a5}];
    }
  }

  result = a5 == 0;
  v16 = *MEMORY[0x1E69E9840];
  return result;
}

BOOL AVAudioEngineGraph::IsNodeInGraph(uint64_t a1, uint64_t a2)
{
  if (!a2)
  {
    return 0;
  }

  v2 = *(a1 + 8);
  if (!v2)
  {
    return 0;
  }

  v5 = *(v2 + 8);
  v3 = v2 + 8;
  v4 = v5;
  if (!v5)
  {
    goto LABEL_11;
  }

  v6 = *(a2 + 24);
  v7 = v3;
  do
  {
    v8 = *(v4 + 32);
    v9 = v8 >= v6;
    v10 = v8 < v6;
    if (v9)
    {
      v7 = v4;
    }

    v4 = *(v4 + 8 * v10);
  }

  while (v4);
  if (v7 == v3 || v6 < *(v7 + 32))
  {
LABEL_11:
    v7 = v3;
  }

  return v7 != v3;
}

uint64_t std::__function::__func<AUGraphParser::InitializeActiveNodesInOutputChain(AVAudioEngineGraph &,ETraversalMode,AUGraphNodeBaseV3 &,BOOL &)::$_2,std::allocator<AUGraphParser::InitializeActiveNodesInOutputChain(AVAudioEngineGraph &,ETraversalMode,AUGraphNodeBaseV3 &,BOOL &)::$_2>,ETraversalStatus ()(AUGraphNodeBaseV3 &,AUGraphConnection *)>::operator()(uint64_t a1, const AVAudioEngineGraph *a2)
{
  if ((*(a2 + 32) & 4) == 0)
  {
    return 2;
  }

  v4 = AUGraphParser::InitializeNode(*(a1 + 16), a2, **(a1 + 24), 1);
  **(a1 + 8) = v4;
  return v4 != 0;
}

__n128 std::__function::__func<AUGraphParser::InitializeActiveNodesInOutputChain(AVAudioEngineGraph &,ETraversalMode,AUGraphNodeBaseV3 &,BOOL &)::$_2,std::allocator<AUGraphParser::InitializeActiveNodesInOutputChain(AVAudioEngineGraph &,ETraversalMode,AUGraphNodeBaseV3 &,BOOL &)::$_2>,ETraversalStatus ()(AUGraphNodeBaseV3 &,AUGraphConnection *)>::__clone(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_1F384D420;
  result = *(a1 + 8);
  *(a2 + 24) = *(a1 + 24);
  *(a2 + 8) = result;
  return result;
}

uint64_t std::__function::__func<AUGraphParser::InitializeActiveNodesInOutputChain(AVAudioEngineGraph &,ETraversalMode,AUGraphNodeBaseV3 &,BOOL &)::$_1,std::allocator<AUGraphParser::InitializeActiveNodesInOutputChain(AVAudioEngineGraph &,ETraversalMode,AUGraphNodeBaseV3 &,BOOL &)::$_1>,ETraversalStatus ()(AUGraphNodeBaseV3 &,AUGraphConnection *)>::operator()(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  v38 = *MEMORY[0x1E69E9840];
  v5 = *a3;
  v29 = *a3;
  if (!*a3)
  {
    goto LABEL_8;
  }

  v6 = *(v5 + 16);
  if (v6 && (*(*v6 + 120))(v6))
  {
    **(a1 + 8) = *(v5 + 16);
    **(a1 + 16) = *(v5 + 24);
  }

  v7 = **(a1 + 8);
  if (v7 && **(a1 + 16) != -1)
  {
    (*(**(a2 + 24) + 368))(*(a2 + 24), *(v7 + 16));
  }

  else
  {
LABEL_8:
    v8 = *(a1 + 24);
    for (i = *(v8 + 8); i != v8; i = *(i + 8))
    {
      v10 = *(i + 32);
      if (!v10 || ((*(*v10 + 120))(v10) & 1) == 0)
      {
        if (AVAudioEngineLogCategory(void)::once != -1)
        {
          dispatch_once(&AVAudioEngineLogCategory(void)::once, &__block_literal_global_8660);
        }

        v11 = *AVAudioEngineLogCategory(void)::category;
        if (os_log_type_enabled(*AVAudioEngineLogCategory(void)::category, OS_LOG_TYPE_ERROR))
        {
          *buf = 136316418;
          *&buf[4] = "AVAEInternal.h";
          *&buf[12] = 1024;
          *&buf[14] = 71;
          v32 = 2080;
          *v33 = "AVAudioEngineGraph.mm";
          *&v33[8] = 1024;
          *&v33[10] = 613;
          v34 = 2080;
          v35 = "operator()";
          v36 = 2080;
          v37 = "conn.destNode && conn.destNode->IsMixerNode()";
          _os_log_impl(&dword_1BA5AC000, v11, OS_LOG_TYPE_ERROR, "%25s:%-5d required condition is false: [%s:%d:%s: (%s)]", buf, 0x36u);
        }

        [MEMORY[0x1E695DF30] raise:@"com.apple.coreaudio.avfaudio" format:{@"required condition is false: %s", "conn.destNode && conn.destNode->IsMixerNode()"}];
      }

      (*(**(a2 + 24) + 368))(*(a2 + 24), *(*(i + 32) + 16), *(i + 40));
    }
  }

  *(a2 + 32) |= 4u;
  v12 = a1;
  if (v29)
  {
    v13 = *(a1 + 32) == a2;
  }

  else
  {
    v13 = 1;
  }

  if (!v13)
  {
    v14 = *(v29 + 16);
    if (v14)
    {
      v15 = *(v14 + 36);
      v16 = (*(**(v14 + 24) + 48))(*(v14 + 24), 0);
      if (v16)
      {
        [v16 sampleRate];
      }

      else
      {
        v17 = -1.0;
      }

      AUGraphNodeBase::CalculateMaxFrames(a2, v15, v17);
      v12 = a1;
    }
  }

  *buf = &unk_1F384D3D8;
  *&buf[8] = a2;
  *&v33[4] = buf;
  AUGraphParser::TraverseMIDIGraphNodes(a2, buf);
  std::__function::__value_func<ETraversalStatus ()(AUGraphNodeBaseV3 &,AUGraphConnection *)>::~__value_func[abi:ne200100](buf);
  IsValidSourceNode = AVAudioEngineGraph::IsValidSourceNode(*(v12 + 40), a2);
  v19 = *(a2 + 48);
  v20 = *(a2 + 56);
  if (v19 != v20)
  {
    v21 = 0;
    do
    {
      if (*v19++)
      {
        ++v21;
      }
    }

    while (v19 != v20);
    v23 = a1;
    if (IsValidSourceNode)
    {
      if (v21)
      {
        if (AVAudioEngineLogCategory(void)::once != -1)
        {
          dispatch_once(&AVAudioEngineLogCategory(void)::once, &__block_literal_global_8660);
        }

        v24 = *AVAudioEngineLogCategory(void)::category;
        if (os_log_type_enabled(*AVAudioEngineLogCategory(void)::category, OS_LOG_TYPE_ERROR))
        {
          *buf = 136316418;
          *&buf[4] = "AVAEInternal.h";
          *&buf[12] = 1024;
          *&buf[14] = 71;
          v32 = 2080;
          *v33 = "AVAudioEngineGraph.mm";
          *&v33[8] = 1024;
          *&v33[10] = 646;
          v34 = 2080;
          v35 = "operator()";
          v36 = 2080;
          v37 = "0 == inCurrNode.NumberOfValidConnections(kUpstream)";
          _os_log_impl(&dword_1BA5AC000, v24, OS_LOG_TYPE_ERROR, "%25s:%-5d required condition is false: [%s:%d:%s: (%s)]", buf, 0x36u);
        }

        [MEMORY[0x1E695DF30] raise:@"com.apple.coreaudio.avfaudio" format:{@"required condition is false: %s", "0 == inCurrNode.NumberOfValidConnections(kUpstream)"}];
        v23 = a1;
      }

      goto LABEL_39;
    }

    if (v21)
    {
      goto LABEL_42;
    }

LABEL_41:
    v26 = *(v23 + 56);
    *buf = a2;
    std::vector<AUGraphNodeBaseV3 *>::push_back[abi:ne200100](v26, buf);
    goto LABEL_42;
  }

  v23 = a1;
  if ((IsValidSourceNode & 1) == 0)
  {
    goto LABEL_41;
  }

LABEL_39:
  v25 = *(v23 + 48);
  *buf = a2;
  std::vector<AUGraphNodeBaseV3 *>::push_back[abi:ne200100](v25, buf);
LABEL_42:
  v27 = *MEMORY[0x1E69E9840];
  return 0;
}

void sub_1BA6139B8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  std::__function::__value_func<ETraversalStatus ()(AUGraphNodeBaseV3 &,AUGraphConnection *)>::~__value_func[abi:ne200100](va);
  _Unwind_Resume(a1);
}

void std::vector<AUGraphNodeBaseV3 *>::push_back[abi:ne200100](uint64_t a1, void *a2)
{
  v4 = *(a1 + 8);
  v3 = *(a1 + 16);
  if (v4 >= v3)
  {
    v6 = (v4 - *a1) >> 3;
    if ((v6 + 1) >> 61)
    {
      std::vector<AUGraphNodeBaseV3 *>::__throw_length_error[abi:ne200100]();
    }

    v7 = v3 - *a1;
    v8 = v7 >> 2;
    if (v7 >> 2 <= (v6 + 1))
    {
      v8 = v6 + 1;
    }

    if (v7 >= 0x7FFFFFFFFFFFFFF8)
    {
      v9 = 0x1FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v9 = v8;
    }

    if (v9)
    {
      std::__allocate_at_least[abi:ne200100]<std::allocator<AUGraphNodeBaseV3 *>>(v9);
    }

    v10 = (8 * v6);
    *v10 = *a2;
    v5 = 8 * v6 + 8;
    v11 = *(a1 + 8) - *a1;
    v12 = v10 - v11;
    memcpy(v10 - v11, *a1, v11);
    v13 = *a1;
    *a1 = v12;
    *(a1 + 8) = v5;
    *(a1 + 16) = 0;
    if (v13)
    {
      operator delete(v13);
    }
  }

  else
  {
    *v4 = *a2;
    v5 = (v4 + 1);
  }

  *(a1 + 8) = v5;
}

void std::__allocate_at_least[abi:ne200100]<std::allocator<AUGraphNodeBaseV3 *>>(unint64_t a1)
{
  if (!(a1 >> 61))
  {
    operator new();
  }

  std::__throw_bad_array_new_length[abi:ne200100]();
}

uint64_t std::__function::__func<AUGraphParser::InitializeActiveNodesInOutputChain(AVAudioEngineGraph &,ETraversalMode,AUGraphNodeBaseV3 &,BOOL &)::$_1::operator() const(AUGraphNodeBaseV3 &,AUGraphConnection *)::{lambda(AUGraphNodeBaseV3 &,AUGraphConnection *)#1},std::allocator<AUGraphParser::InitializeActiveNodesInOutputChain(AVAudioEngineGraph &,ETraversalMode,AUGraphNodeBaseV3 &,BOOL &)::$_1::operator() const(AUGraphNodeBaseV3 &,AUGraphConnection *)::{lambda(AUGraphNodeBaseV3 &,AUGraphConnection *)#1}>,ETraversalStatus ()(AUGraphNodeBaseV3 &,AUGraphConnection *)>::operator()(uint64_t a1, AUGraphNodeBase *a2)
{
  *(a2 + 8) |= 4u;
  v3 = *(a1 + 8);
  v4 = *(v3 + 36);
  v5 = (*(**(v3 + 24) + 48))(*(v3 + 24), 0);
  if (v5)
  {
    [v5 sampleRate];
  }

  else
  {
    v6 = -1.0;
  }

  AUGraphNodeBase::CalculateMaxFrames(a2, v4, v6);
  return 0;
}

uint64_t std::__function::__func<AUGraphParser::InitializeActiveNodesInOutputChain(AVAudioEngineGraph &,ETraversalMode,AUGraphNodeBaseV3 &,BOOL &)::$_1::operator() const(AUGraphNodeBaseV3 &,AUGraphConnection *)::{lambda(AUGraphNodeBaseV3 &,AUGraphConnection *)#1},std::allocator<AUGraphParser::InitializeActiveNodesInOutputChain(AVAudioEngineGraph &,ETraversalMode,AUGraphNodeBaseV3 &,BOOL &)::$_1::operator() const(AUGraphNodeBaseV3 &,AUGraphConnection *)::{lambda(AUGraphNodeBaseV3 &,AUGraphConnection *)#1}>,ETraversalStatus ()(AUGraphNodeBaseV3 &,AUGraphConnection *)>::__clone(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_1F384D3D8;
  a2[1] = v2;
  return result;
}

__n128 std::__function::__func<AUGraphParser::InitializeActiveNodesInOutputChain(AVAudioEngineGraph &,ETraversalMode,AUGraphNodeBaseV3 &,BOOL &)::$_1,std::allocator<AUGraphParser::InitializeActiveNodesInOutputChain(AVAudioEngineGraph &,ETraversalMode,AUGraphNodeBaseV3 &,BOOL &)::$_1>,ETraversalStatus ()(AUGraphNodeBaseV3 &,AUGraphConnection *)>::__clone(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_1F384D390;
  result = *(a1 + 8);
  v3 = *(a1 + 24);
  v4 = *(a1 + 40);
  *(a2 + 56) = *(a1 + 56);
  *(a2 + 40) = v4;
  *(a2 + 24) = v3;
  *(a2 + 8) = result;
  return result;
}

uint64_t std::__function::__func<AUGraphParser::InitializeActiveNodesInOutputChain(AVAudioEngineGraph &,ETraversalMode,AUGraphNodeBaseV3 &,BOOL &)::$_0,std::allocator<AUGraphParser::InitializeActiveNodesInOutputChain(AVAudioEngineGraph &,ETraversalMode,AUGraphNodeBaseV3 &,BOOL &)::$_0>,ETraversalStatus ()(AUGraphNodeBaseV3 &,AUGraphConnection *)>::operator()(uint64_t a1, _DWORD *a2, uint64_t **a3)
{
  v4 = *a3;
  if (*a3)
  {
    v5 = *(a1 + 8);
    if (*(v5 + 16))
    {
      v6 = *(v5 + 8);
      if (v6 != v5)
      {
        v7 = *v4;
        v8 = *(v4 + 2);
        v9 = v4[2];
        v10 = *(v4 + 6);
        while (v7 != *(v6 + 16) || v8 != *(v6 + 24) || v9 != *(v6 + 32) || v10 != *(v6 + 40))
        {
          v6 = *(v6 + 8);
          if (v6 == v5)
          {
            goto LABEL_10;
          }
        }

        if (v5 != v6)
        {
          return 1;
        }
      }
    }
  }

LABEL_10:
  a2[8] = 0;
  if (*(a1 + 16) == a2)
  {
    return 0;
  }

  result = (*(*a2 + 152))(a2);
  if (result)
  {
    result = 0;
    a2[9] = 0;
  }

  return result;
}

__n128 std::__function::__func<AUGraphParser::InitializeActiveNodesInOutputChain(AVAudioEngineGraph &,ETraversalMode,AUGraphNodeBaseV3 &,BOOL &)::$_0,std::allocator<AUGraphParser::InitializeActiveNodesInOutputChain(AVAudioEngineGraph &,ETraversalMode,AUGraphNodeBaseV3 &,BOOL &)::$_0>,ETraversalStatus ()(AUGraphNodeBaseV3 &,AUGraphConnection *)>::__clone(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_1F384D348;
  result = *(a1 + 8);
  *(a2 + 8) = result;
  return result;
}

uint64_t AUGraphParser::InitializeActiveNodesInInputChain(AVAudioNodeImplBase **this, AVAudioEngineGraph *a2, AUGraphNodeBaseV3 *a3)
{
  v55 = *MEMORY[0x1E69E9840];
  if (AVAudioEngineGraph::GetNodeFromMap(this, this[2]) != a2)
  {
    if (AVAudioEngineLogCategory(void)::once != -1)
    {
      dispatch_once(&AVAudioEngineLogCategory(void)::once, &__block_literal_global_8660);
    }

    v4 = *AVAudioEngineLogCategory(void)::category;
    if (os_log_type_enabled(*AVAudioEngineLogCategory(void)::category, OS_LOG_TYPE_ERROR))
    {
      *buf = 136316418;
      *&buf[4] = "AVAEInternal.h";
      *&buf[12] = 1024;
      *&buf[14] = 71;
      *&buf[18] = 2080;
      *&buf[20] = "AVAudioEngineGraph.mm";
      *&buf[28] = 1024;
      *&buf[30] = 775;
      v49 = 2080;
      v50 = "InitializeActiveNodesInInputChain";
      v51 = 2080;
      v52 = "inGraph.GetInputNode() && (&inNode == inGraph.GetInputNode())";
      _os_log_impl(&dword_1BA5AC000, v4, OS_LOG_TYPE_ERROR, "%25s:%-5d required condition is false: [%s:%d:%s: (%s)]", buf, 0x36u);
    }

    [MEMORY[0x1E695DF30] raise:@"com.apple.coreaudio.avfaudio" format:{@"required condition is false: %s", "inGraph.GetInputNode() && (&inNode == inGraph.GetInputNode())"}];
  }

  v5 = (this + 20);
  for (i = this[21]; i != v5; i = *(i + 1))
  {
    v7 = *(i + 4);
    if (v7)
    {
      *(v7 + 32) = 0;
    }

    AVAudioEngineGraph::MakeVirtualConnection(this, i + 16);
  }

  v45 = &v45;
  v46 = &v45;
  v47 = 0;
  v42 = 0;
  v43 = 0;
  v44 = 0;
  v41 = 0;
  AVAudioEngineGraph::SetNodesToPullEnabled(this, 0);
  this[12] = this[11];
  if (AVAudioEngineGraph::GetNodeFromMap(this, this[2]))
  {
    __p = 0;
    operator new();
  }

  if ((*(this + 187) & 1) == 0 && v41)
  {
    if (AVAudioEngineLogCategory(void)::once != -1)
    {
      dispatch_once(&AVAudioEngineLogCategory(void)::once, &__block_literal_global_8660);
    }

    v8 = *AVAudioEngineLogCategory(void)::category;
    if (os_log_type_enabled(*AVAudioEngineLogCategory(void)::category, OS_LOG_TYPE_ERROR))
    {
      *buf = 136316418;
      *&buf[4] = "AVAEInternal.h";
      *&buf[12] = 1024;
      *&buf[14] = 71;
      *&buf[18] = 2080;
      *&buf[20] = "AVAudioEngineGraph.mm";
      *&buf[28] = 1024;
      *&buf[30] = 803;
      v49 = 2080;
      v50 = "InitializeActiveNodesInInputChain";
      v51 = 2080;
      v52 = "false == isInputConnToConverter";
      _os_log_impl(&dword_1BA5AC000, v8, OS_LOG_TYPE_ERROR, "%25s:%-5d required condition is false: [%s:%d:%s: (%s)]", buf, 0x36u);
    }

    [MEMORY[0x1E695DF30] raise:@"com.apple.coreaudio.avfaudio" format:{@"required condition is false: %s", "false == isInputConnToConverter"}];
  }

  v9 = v42;
  v10 = v43;
  if (v42 != v43)
  {
    do
    {
      v11 = *v9;
      v12 = this[3];
      if (*v9)
      {
        v13 = v12 == 0;
      }

      else
      {
        v13 = 1;
      }

      if (v13 || *(v11 + 24) != v12)
      {
        __p = 0;
        v39 = 0;
        v40 = 0;
        NodeFromMap = AVAudioEngineGraph::GetNodeFromMap(this, v12);
        if (NodeFromMap)
        {
          *buf = NodeFromMap;
          std::vector<AUGraphNodeBaseV3 *>::push_back[abi:ne200100](&__p, buf);
        }

        *buf = &unk_1F384D4B0;
        *&buf[8] = this;
        *&buf[16] = &__p;
        *&buf[24] = buf;
        AUGraphParser::TraverseGraphNodes(1, 1, v11, 0, buf);
        std::__function::__value_func<ETraversalStatus ()(AUGraphNodeBaseV3 &,AUGraphConnection *)>::~__value_func[abi:ne200100](buf);
        if (__p)
        {
          v39 = __p;
          operator delete(__p);
        }
      }

      ++v9;
    }

    while (v9 != v10);
  }

  if (this[11] == this[12])
  {
    std::__list_imp<AUGraphConnection>::clear(this + 20);
    v21 = v42;
    if (v42 != v43)
    {
      do
      {
        v22 = this[3];
        if (*v21)
        {
          v23 = v22 == 0;
        }

        else
        {
          v23 = 1;
        }

        if (v23 || *(*v21 + 24) != v22)
        {
          __p = 0;
          v39 = 0;
          v40 = 0;
          v24 = AVAudioEngineGraph::GetNodeFromMap(this, v22);
          if (v24)
          {
            *buf = v24;
            std::vector<AUGraphNodeBaseV3 *>::push_back[abi:ne200100](&__p, buf);
          }

          v37[2] = 0;
          v37[3] = 0;
          v37[0] = v37;
          v37[1] = v37;
          *&buf[24] = 0;
          operator new();
        }

        ++v21;
      }

      while (v21 != v43);
    }
  }

  else
  {
    std::__list_imp<AUGraphConnection>::clear(&v45);
    for (j = this[21]; j != v5; j = *(j + 1))
    {
      v16 = *(j + 4);
      if (v16 && AUGraphParser::IsNodeConnectedToTarget(0, v16, this + 11))
      {
        AUGraphParser::PrepareForConnection(this, j + 16);
        Connection = AVAudioEngineGraph::MakeConnection(this, j + 2, 0);
        if (!Connection)
        {
          operator new();
        }

        if (AVAudioEngineLogCategory(void)::once != -1)
        {
          dispatch_once(&AVAudioEngineLogCategory(void)::once, &__block_literal_global_8660);
        }

        v18 = *AVAudioEngineLogCategory(void)::category;
        if (os_log_type_enabled(*AVAudioEngineLogCategory(void)::category, OS_LOG_TYPE_ERROR))
        {
          *buf = 136316674;
          *&buf[4] = "AVAEInternal.h";
          *&buf[12] = 1024;
          *&buf[14] = 104;
          *&buf[18] = 2080;
          *&buf[20] = "AVAudioEngineGraph.mm";
          *&buf[28] = 1024;
          *&buf[30] = 894;
          v49 = 2080;
          v50 = "InitializeActiveNodesInInputChain";
          v51 = 2080;
          v52 = "inGraph.MakeConnection(inputConn)";
          v53 = 1024;
          v54 = Connection;
          _os_log_impl(&dword_1BA5AC000, v18, OS_LOG_TYPE_ERROR, "%25s:%-5d [%s:%d:%s: (%s): error %d", buf, 0x3Cu);
        }

        [MEMORY[0x1E695DF30] raise:@"com.apple.coreaudio.avfaudio" format:{@"error %d", Connection}];
      }
    }

    for (k = v46; k != &v45; k = k[1])
    {
      AVAudioEngineGraph::RemovePendingConnection(this, 1, (k + 2), 1, 0);
    }

    v20 = this[11];
    if (v20 != this[12])
    {
      __p = *v20;
      *buf = &unk_1F384D540;
      *&buf[8] = &__p;
      *&buf[16] = this;
      *&buf[24] = buf;
      AUGraphParser::TraverseGraphNodes(0, 0, __p, 0, buf);
      std::__function::__value_func<ETraversalStatus ()(AUGraphNodeBaseV3 &,AUGraphConnection *)>::~__value_func[abi:ne200100](buf);
      AUGraphParser::InitializeNodeChain(this, 1, __p, 1);
    }
  }

  v25 = this[11];
  v26 = this[12];
  v27 = v25 == v26;
  if (v25 == v26)
  {
    v28 = 0;
  }

  else
  {
    v28 = AVAudioEngineGraph::InputAvailable;
  }

  if (v27)
  {
    v29 = 0;
  }

  else
  {
    v29 = this;
  }

  v36[0] = v28;
  v36[1] = v29;
  v30 = AVAudioEngineGraph::GetNodeFromMap(this, this[2]);
  if ((*(*v30 + 128))(v30))
  {
    (*(*v30 + 280))(v30, v36);
  }

  else
  {
    if (AVAudioEngineLogCategory(void)::once != -1)
    {
      dispatch_once(&AVAudioEngineLogCategory(void)::once, &__block_literal_global_8660);
    }

    v31 = *AVAudioEngineLogCategory(void)::category;
    if (os_log_type_enabled(*AVAudioEngineLogCategory(void)::category, OS_LOG_TYPE_ERROR))
    {
      *buf = 136316674;
      *&buf[4] = "AVAEInternal.h";
      *&buf[12] = 1024;
      *&buf[14] = 104;
      *&buf[18] = 2080;
      *&buf[20] = "AVAudioEngineGraph.mm";
      *&buf[28] = 1024;
      *&buf[30] = 945;
      v49 = 2080;
      v50 = "InitializeActiveNodesInInputChain";
      v51 = 2080;
      v52 = "inGraph.PerformCommand(*inGraph.GetInputNode(), AVAudioEngineGraph::kAUSetInputCallback, &rc, sizeof(rc))";
      v53 = 1024;
      v54 = -50;
      _os_log_impl(&dword_1BA5AC000, v31, OS_LOG_TYPE_ERROR, "%25s:%-5d [%s:%d:%s: (%s): error %d", buf, 0x3Cu);
    }

    [MEMORY[0x1E695DF30] raise:@"com.apple.coreaudio.avfaudio" format:{@"error %d", 4294967246}];
  }

  AVAudioEngineGraph::SetNodesToPullEnabled(this, this[11] != this[12]);
  v32 = AVAudioEngineGraph::GetNodeFromMap(this, this[2]);
  v33 = AVAudioEngineGraph::PerformCommand(this, v32, 3, 0, 0);
  if (v42)
  {
    v43 = v42;
    operator delete(v42);
  }

  std::__list_imp<AUGraphConnection>::clear(&v45);
  v34 = *MEMORY[0x1E69E9840];
  return v33;
}

void sub_1BA614984(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, char a15, uint64_t a16, uint64_t a17, uint64_t a18, void *a19, uint64_t a20, uint64_t a21, uint64_t a22, void *__p, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, char a29)
{
  if (__p)
  {
    operator delete(__p);
  }

  std::__list_imp<AUGraphConnection>::clear(&a26);
  _Unwind_Resume(a1);
}

uint64_t AVAudioEngineGraph::MakeVirtualConnection(AVAudioEngineGraph *a1, uint64_t a2)
{
  v35 = *MEMORY[0x1E69E9840];
  v4 = *a2;
  if (!AVAudioEngineGraph::IsNodeInGraph(a1, *a2) || (v5 = *(a2 + 16), !AVAudioEngineGraph::IsNodeInGraph(a1, v5)))
  {
    if (AVAudioEngineLogCategory(void)::once != -1)
    {
      dispatch_once(&AVAudioEngineLogCategory(void)::once, &__block_literal_global_8660);
    }

    v6 = *AVAudioEngineLogCategory(void)::category;
    if (os_log_type_enabled(*AVAudioEngineLogCategory(void)::category, OS_LOG_TYPE_ERROR))
    {
      *buf = 136316418;
      v24 = "AVAEInternal.h";
      v25 = 1024;
      v26 = 71;
      v27 = 2080;
      v28 = "AVAudioEngineGraph.mm";
      v29 = 1024;
      v30 = 3947;
      v31 = 2080;
      v32 = "MakeVirtualConnection";
      v33 = 2080;
      v34 = "IsNodeInGraph(conn.srcNode) && IsNodeInGraph(conn.destNode)";
      _os_log_impl(&dword_1BA5AC000, v6, OS_LOG_TYPE_ERROR, "%25s:%-5d required condition is false: [%s:%d:%s: (%s)]", buf, 0x36u);
    }

    [MEMORY[0x1E695DF30] raise:@"com.apple.coreaudio.avfaudio" format:{@"required condition is false: %s", "IsNodeInGraph(conn.srcNode) && IsNodeInGraph(conn.destNode)"}];
    v4 = *a2;
    v5 = *(a2 + 16);
  }

  NodeFromMap = AVAudioEngineGraph::GetNodeFromMap(a1, *(v4 + 24));
  v8 = AVAudioEngineGraph::GetNodeFromMap(a1, *(v5 + 24));
  v19 = 0;
  v20 = -1;
  v21 = 0;
  v22 = -1;
  (*(*NodeFromMap + 32))(NodeFromMap, 0, *(a2 + 8), &v19);
  if (v21 && (*a2 != v19 || *(a2 + 8) != v20 || *(a2 + 16) != v21 || *(a2 + 24) != v22))
  {
    if (AVAudioEngineLogCategory(void)::once != -1)
    {
      dispatch_once(&AVAudioEngineLogCategory(void)::once, &__block_literal_global_8660);
    }

    v9 = *AVAudioEngineLogCategory(void)::category;
    if (os_log_type_enabled(*AVAudioEngineLogCategory(void)::category, OS_LOG_TYPE_ERROR))
    {
      *buf = 136316418;
      v24 = "AVAEInternal.h";
      v25 = 1024;
      v26 = 71;
      v27 = 2080;
      v28 = "AVAudioEngineGraph.mm";
      v29 = 1024;
      v30 = 3957;
      v31 = 2080;
      v32 = "MakeVirtualConnection";
      v33 = 2080;
      v34 = "srcCurrConn.destNode == NULL || srcCurrConn == conn";
      _os_log_impl(&dword_1BA5AC000, v9, OS_LOG_TYPE_ERROR, "%25s:%-5d required condition is false: [%s:%d:%s: (%s)]", buf, 0x36u);
    }

    [MEMORY[0x1E695DF30] raise:@"com.apple.coreaudio.avfaudio" format:{@"required condition is false: %s", "srcCurrConn.destNode == NULL || srcCurrConn == conn"}];
  }

  v15 = 0;
  v16 = -1;
  v17 = 0;
  v18 = -1;
  (*(*v8 + 32))(v8, 1, *(a2 + 24), &v15);
  if (v15 && (*a2 != v15 || *(a2 + 8) != v16 || *(a2 + 16) != v17 || *(a2 + 24) != v18))
  {
    if (AVAudioEngineLogCategory(void)::once != -1)
    {
      dispatch_once(&AVAudioEngineLogCategory(void)::once, &__block_literal_global_8660);
    }

    v10 = *AVAudioEngineLogCategory(void)::category;
    if (os_log_type_enabled(*AVAudioEngineLogCategory(void)::category, OS_LOG_TYPE_ERROR))
    {
      *buf = 136316418;
      v24 = "AVAEInternal.h";
      v25 = 1024;
      v26 = 71;
      v27 = 2080;
      v28 = "AVAudioEngineGraph.mm";
      v29 = 1024;
      v30 = 3962;
      v31 = 2080;
      v32 = "MakeVirtualConnection";
      v33 = 2080;
      v34 = "destCurrConn.srcNode == NULL || destCurrConn == conn";
      _os_log_impl(&dword_1BA5AC000, v10, OS_LOG_TYPE_ERROR, "%25s:%-5d required condition is false: [%s:%d:%s: (%s)]", buf, 0x36u);
    }

    [MEMORY[0x1E695DF30] raise:@"com.apple.coreaudio.avfaudio" format:{@"required condition is false: %s", "destCurrConn.srcNode == NULL || destCurrConn == conn"}];
  }

  v12 = *(a2 + 8);
  v11 = (a2 + 8);
  (*(*NodeFromMap + 56))(NodeFromMap, 0, v12, v8, v11[4]);
  result = (*(*v8 + 56))(v8, 1, v11[4], NodeFromMap, *v11);
  v14 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t AUGraphParser::PrepareForConnection(uint64_t a1, uint64_t a2)
{
  v36 = *MEMORY[0x1E69E9840];
  v4 = *a2;
  v5 = *(a2 + 16);
  if (!*a2 || !AVAudioEngineGraph::IsNodeInGraph(a1, *a2))
  {
    if (AVAudioEngineLogCategory(void)::once != -1)
    {
      dispatch_once(&AVAudioEngineLogCategory(void)::once, &__block_literal_global_8660);
    }

    v6 = *AVAudioEngineLogCategory(void)::category;
    if (os_log_type_enabled(*AVAudioEngineLogCategory(void)::category, OS_LOG_TYPE_ERROR))
    {
      *buf = 136316418;
      v23 = "AVAEInternal.h";
      v24 = 1024;
      v25 = 71;
      v26 = 2080;
      v27 = "AVAudioEngineGraph.mm";
      v28 = 1024;
      v29 = 1100;
      v30 = 2080;
      v31 = "PrepareForConnection";
      v32 = 2080;
      v33 = "srcNode && inGraph.IsNodeInGraph(srcNode)";
      _os_log_impl(&dword_1BA5AC000, v6, OS_LOG_TYPE_ERROR, "%25s:%-5d required condition is false: [%s:%d:%s: (%s)]", buf, 0x36u);
    }

    [MEMORY[0x1E695DF30] raise:@"com.apple.coreaudio.avfaudio" format:{@"required condition is false: %s", "srcNode && inGraph.IsNodeInGraph(srcNode)"}];
  }

  if (!v5 || !AVAudioEngineGraph::IsNodeInGraph(a1, v5))
  {
    if (AVAudioEngineLogCategory(void)::once != -1)
    {
      dispatch_once(&AVAudioEngineLogCategory(void)::once, &__block_literal_global_8660);
    }

    v7 = *AVAudioEngineLogCategory(void)::category;
    if (os_log_type_enabled(*AVAudioEngineLogCategory(void)::category, OS_LOG_TYPE_ERROR))
    {
      *buf = 136316418;
      v23 = "AVAEInternal.h";
      v24 = 1024;
      v25 = 71;
      v26 = 2080;
      v27 = "AVAudioEngineGraph.mm";
      v28 = 1024;
      v29 = 1101;
      v30 = 2080;
      v31 = "PrepareForConnection";
      v32 = 2080;
      v33 = "destNode && inGraph.IsNodeInGraph(destNode)";
      _os_log_impl(&dword_1BA5AC000, v7, OS_LOG_TYPE_ERROR, "%25s:%-5d required condition is false: [%s:%d:%s: (%s)]", buf, 0x36u);
    }

    [MEMORY[0x1E695DF30] raise:@"com.apple.coreaudio.avfaudio" format:{@"required condition is false: %s", "destNode && inGraph.IsNodeInGraph(destNode)"}];
  }

  v18 = 0;
  v19 = -1;
  v20 = 0;
  v21 = -1;
  (*(*v4 + 32))(v4, 0, *(a2 + 8), &v18);
  if (v20 && (*a2 != v18 || *(a2 + 8) != v19 || *(a2 + 16) != v20 || *(a2 + 24) != v21))
  {
    if (AVAudioEngineLogCategory(void)::once != -1)
    {
      dispatch_once(&AVAudioEngineLogCategory(void)::once, &__block_literal_global_8660);
    }

    v8 = *AVAudioEngineLogCategory(void)::category;
    if (os_log_type_enabled(*AVAudioEngineLogCategory(void)::category, OS_LOG_TYPE_ERROR))
    {
      *buf = 136316418;
      v23 = "AVAEInternal.h";
      v24 = 1024;
      v25 = 71;
      v26 = 2080;
      v27 = "AVAudioEngineGraph.mm";
      v28 = 1024;
      v29 = 1107;
      v30 = 2080;
      v31 = "PrepareForConnection";
      v32 = 2080;
      v33 = "srcCurrConn.destNode == NULL || srcCurrConn == inConn";
      _os_log_impl(&dword_1BA5AC000, v8, OS_LOG_TYPE_ERROR, "%25s:%-5d required condition is false: [%s:%d:%s: (%s)]", buf, 0x36u);
    }

    [MEMORY[0x1E695DF30] raise:@"com.apple.coreaudio.avfaudio" format:{@"required condition is false: %s", "srcCurrConn.destNode == NULL || srcCurrConn == inConn"}];
  }

  v14 = 0;
  v15 = -1;
  v16 = 0;
  v17 = -1;
  (*(*v5 + 32))(v5, 1, *(a2 + 24), &v14);
  if (v14 && (*a2 != v14 || *(a2 + 8) != v15 || *(a2 + 16) != v16 || *(a2 + 24) != v17))
  {
    if (AVAudioEngineLogCategory(void)::once != -1)
    {
      dispatch_once(&AVAudioEngineLogCategory(void)::once, &__block_literal_global_8660);
    }

    v9 = *AVAudioEngineLogCategory(void)::category;
    if (os_log_type_enabled(*AVAudioEngineLogCategory(void)::category, OS_LOG_TYPE_ERROR))
    {
      *buf = 136316418;
      v23 = "AVAEInternal.h";
      v24 = 1024;
      v25 = 71;
      v26 = 2080;
      v27 = "AVAudioEngineGraph.mm";
      v28 = 1024;
      v29 = 1111;
      v30 = 2080;
      v31 = "PrepareForConnection";
      v32 = 2080;
      v33 = "destCurrConn.srcNode == NULL || destCurrConn == inConn";
      _os_log_impl(&dword_1BA5AC000, v9, OS_LOG_TYPE_ERROR, "%25s:%-5d required condition is false: [%s:%d:%s: (%s)]", buf, 0x36u);
    }

    [MEMORY[0x1E695DF30] raise:@"com.apple.coreaudio.avfaudio" format:{@"required condition is false: %s", "destCurrConn.srcNode == NULL || destCurrConn == inConn"}];
  }

  result = (*(*v5 + 120))(v5);
  if ((result & 1) == 0)
  {
    result = AVAudioEngineGraph::PerformCommand(a1, v5, 4, 0, 0);
    v11 = result;
    if (result)
    {
      if (AVAudioEngineLogCategory(void)::once != -1)
      {
        dispatch_once(&AVAudioEngineLogCategory(void)::once, &__block_literal_global_8660);
      }

      v12 = *AVAudioEngineLogCategory(void)::category;
      if (os_log_type_enabled(*AVAudioEngineLogCategory(void)::category, OS_LOG_TYPE_ERROR))
      {
        *buf = 136316674;
        v23 = "AVAEInternal.h";
        v24 = 1024;
        v25 = 104;
        v26 = 2080;
        v27 = "AVAudioEngineGraph.mm";
        v28 = 1024;
        v29 = 1116;
        v30 = 2080;
        v31 = "PrepareForConnection";
        v32 = 2080;
        v33 = "inGraph.PerformCommand(*destNode, AVAudioEngineGraph::kAUUninitialize, NULL, 0)";
        v34 = 1024;
        v35 = v11;
        _os_log_impl(&dword_1BA5AC000, v12, OS_LOG_TYPE_ERROR, "%25s:%-5d [%s:%d:%s: (%s): error %d", buf, 0x3Cu);
      }

      result = [MEMORY[0x1E695DF30] raise:@"com.apple.coreaudio.avfaudio" format:{@"error %d", v11}];
    }
  }

  v13 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t AVAudioEngineGraph::MakeConnection(AVAudioEngineGraph *a1, uint64_t *a2, NSError **a3)
{
  v4 = *a2;
  if (*a2)
  {
    v4 = *(v4 + 24);
  }

  v5 = a2[2];
  if (v5)
  {
    v6 = *(v5 + 24);
  }

  else
  {
    v6 = 0;
  }

  return AVAudioEngineGraph::MakeConnection(a1, v4, v6, *(a2 + 2), *(a2 + 6), a3);
}

void AVAudioEngineGraph::RemovePendingConnection(uint64_t a1, int a2, uint64_t a3, int a4, NSError **a5)
{
  if (!_AVAE_CheckAndReturnErr("/Library/Caches/com.apple.xbs/Sources/AVFAudio/Source/AVFAudio/AVAudioEngine/AVAEGraph/AVAudioEngineGraph.mm", 3797, "RemovePendingConnection", "inConn.srcNode || inConn.destNode", (*a3 | *(a3 + 16)) != 0, 4294967246, a5))
  {
    v9 = 160;
    if (!a2)
    {
      v9 = 136;
    }

    v10 = (a1 + v9);
    v11 = v10[1];
    if (v11 != v10)
    {
      do
      {
        if (a4 == 1)
        {
          if (*a3 == v11[2])
          {
            v12 = *(a3 + 16);
            if (*(a3 + 8) == *(v11 + 6))
            {
              if (v12 == v11[4] && *(a3 + 24) == *(v11 + 10))
              {
                v13 = 1;
              }

              else
              {
LABEL_17:
                v13 = 0;
              }

              v14 = *v11;
              v15 = v11[1];
              *(v14 + 8) = v15;
              *v15 = v14;
              --v10[2];
              operator delete(v11);
              if (v13)
              {
                return;
              }

              goto LABEL_21;
            }
          }

          else
          {
            v12 = *(a3 + 16);
          }

          if (v11[4] == v12 && *(v11 + 10) == *(a3 + 24))
          {
            goto LABEL_17;
          }
        }

        else if (v11[2] == *a3 || v11[4] == *(a3 + 16))
        {
          goto LABEL_17;
        }

        v15 = v11[1];
LABEL_21:
        v11 = v15;
      }

      while (v15 != v10);
    }
  }
}

pthread_t AVAudioEngineGraph::SetNodesToPullEnabled(pthread_t this, int a2)
{
  if (this->__opaque[112] != a2)
  {
    v2 = a2;
    v3 = this;
    if (this->__opaque[168] == 1)
    {
      caulk::recursive_mutex_adapter<caulk::pooled_semaphore_mutex>::lock(&this->__opaque[96]);
      v3->__opaque[112] = v2;

      return caulk::recursive_mutex_adapter<caulk::pooled_semaphore_mutex>::unlock(&v3->__opaque[96]);
    }

    else
    {
      this->__opaque[112] = a2;
    }
  }

  return this;
}

uint64_t AVAudioEngineGraph::InputAvailable(AVAudioEngineGraph *this, void *a2, unsigned int *a3, const AudioTimeStamp *a4, unsigned int a5, unsigned int a6, AudioBufferList *a7)
{
  v47 = *MEMORY[0x1E69E9840];
  if (!caulk::recursive_mutex_adapter<caulk::pooled_semaphore_mutex>::try_lock(this + 112))
  {
    goto LABEL_36;
  }

  v32 = a3;
  v33 = this;
  if (*(this + 128) != 1)
  {
    goto LABEL_35;
  }

  v10 = *(this + 11);
  v9 = *(this + 12);
  if (v10 == v9)
  {
    goto LABEL_35;
  }

  v31 = *(this + 12);
  while (1)
  {
    v11 = *v10;
    v12 = (*(**v10 + 144))(*v10);
    if (v12)
    {
      v13 = v11[3];
      if (v13)
      {
        v14 = 0;
        v15 = 0;
        v16 = *(v13 + 188);
        v17 = (v13 + 192);
        goto LABEL_17;
      }

      goto LABEL_15;
    }

    v14 = v11[1];
    if (!v14)
    {
      if (AVAudioEngineLogCategory(void)::once != -1)
      {
        dispatch_once(&AVAudioEngineLogCategory(void)::once, &__block_literal_global_8660);
      }

      v18 = *AVAudioEngineLogCategory(void)::category;
      if (os_log_type_enabled(*AVAudioEngineLogCategory(void)::category, OS_LOG_TYPE_ERROR))
      {
        *buf = 136316418;
        v36 = "AVAEInternal.h";
        v37 = 1024;
        v38 = 71;
        v39 = 2080;
        v40 = "AVAudioEngineGraph.mm";
        v41 = 1024;
        v42 = 3651;
        v43 = 2080;
        v44 = "InputAvailable";
        v45 = 2080;
        v46 = "isSink || tap != nullptr";
        _os_log_impl(&dword_1BA5AC000, v18, OS_LOG_TYPE_ERROR, "%25s:%-5d required condition is false: [%s:%d:%s: (%s)]", buf, 0x36u);
      }

      [MEMORY[0x1E695DF30] raise:@"com.apple.coreaudio.avfaudio" format:{@"required condition is false: %s", "isSink || tap != nullptr"}];
LABEL_15:
      v15 = 0;
      v14 = 0;
      goto LABEL_16;
    }

    v15 = 1;
LABEL_16:
    v17 = (v14 + 372);
    v16 = 4;
LABEL_17:
    *buf = 0;
    if (caulk::pooled_semaphore_mutex::try_lock((v17 + 3)))
    {
      break;
    }

LABEL_32:
    if (++v10 == v9)
    {
      goto LABEL_35;
    }
  }

  v19 = *v17;
  mNumberBuffers = (*v17)->mNumberBuffers;
  if (mNumberBuffers != (v17[1] - *v17 - 8) >> 4)
  {
    CAAssertRtn();
  }

  if (!mNumberBuffers)
  {
    goto LABEL_31;
  }

  v21 = v16 * a5;
  p_mData = &v19->mBuffers[0].mData;
  v23 = &v19->mBuffers[0].mData;
  do
  {
    *(v23 - 2) = 1;
    *(v23 - 1) = v21;
    *v23 = 0;
    v23 += 2;
    --mNumberBuffers;
  }

  while (mNumberBuffers);
  v24 = (*(*v11 + 296))(v11);
  if (v15)
  {
    v25 = v14[2];
  }

  else
  {
    v25 = 0;
  }

  v26 = (*(*v11 + 304))(v11);
  if ((*(v24 + 16))(v24, buf, v32, a5, v25, v19, v26))
  {
    goto LABEL_34;
  }

  v28 = v19->mNumberBuffers;
  if (!v28)
  {
LABEL_29:
    if ((v12 & 1) == 0)
    {
      *buf |= 8u;
      AVAudioNodeTap::RenderCallback(v14, buf, v32, v14[2], a5, v19, v27);
    }

LABEL_31:
    caulk::pooled_semaphore_mutex::_unlock((v17 + 3));
    v9 = v31;
    goto LABEL_32;
  }

  while (*p_mData)
  {
    p_mData += 2;
    if (!--v28)
    {
      goto LABEL_29;
    }
  }

LABEL_34:
  caulk::pooled_semaphore_mutex::_unlock((v17 + 3));
LABEL_35:
  caulk::recursive_mutex_adapter<caulk::pooled_semaphore_mutex>::unlock(v33 + 112);
LABEL_36:
  v29 = *MEMORY[0x1E69E9840];
  return 0;
}

uint64_t std::__function::__func<AUGraphParser::InitializeActiveNodesInInputChain(AVAudioEngineGraph &,AUGraphNodeBaseV3 &)::$_2,std::allocator<AUGraphParser::InitializeActiveNodesInInputChain(AVAudioEngineGraph &,AUGraphNodeBaseV3 &)::$_2>,ETraversalStatus ()(AUGraphNodeBaseV3 &,AUGraphConnection *)>::operator()(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  v20 = *MEMORY[0x1E69E9840];
  v3 = *a3;
  if (*a3)
  {
    if (*v3 == **(a1 + 8))
    {
      v7 = *(v3 + 16);
      if (v7)
      {
        v8 = *(a1 + 16);
        *buf = &unk_1F384D588;
        *&buf[8] = v8;
        *&v13[4] = buf;
        AUGraphParser::TraverseGraphNodes(0, 1, v7, 0, buf);
        std::__function::__value_func<ETraversalStatus ()(AUGraphNodeBaseV3 &,AUGraphConnection *)>::~__value_func[abi:ne200100](buf);
        Disconnection = AVAudioEngineGraph::MakeDisconnection(*(a1 + 16), *(*(v3 + 16) + 24), *(v3 + 24), 0);
        if (Disconnection)
        {
          if (AVAudioEngineLogCategory(void)::once != -1)
          {
            dispatch_once(&AVAudioEngineLogCategory(void)::once, &__block_literal_global_8660);
          }

          v10 = *AVAudioEngineLogCategory(void)::category;
          if (os_log_type_enabled(*AVAudioEngineLogCategory(void)::category, OS_LOG_TYPE_ERROR))
          {
            *buf = 136316674;
            *&buf[4] = "AVAEInternal.h";
            *&buf[12] = 1024;
            *&buf[14] = 104;
            v12 = 2080;
            *v13 = "AVAudioEngineGraph.mm";
            *&v13[8] = 1024;
            *&v13[10] = 916;
            v14 = 2080;
            v15 = "operator()";
            v16 = 2080;
            v17 = "inGraph.MakeDisconnection(inPrevConn->destNode->NodeImpl(), inPrevConn->destBus)";
            v18 = 1024;
            v19 = Disconnection;
            _os_log_impl(&dword_1BA5AC000, v10, OS_LOG_TYPE_ERROR, "%25s:%-5d [%s:%d:%s: (%s): error %d", buf, 0x3Cu);
          }

          [MEMORY[0x1E695DF30] raise:@"com.apple.coreaudio.avfaudio" format:{@"error %d", Disconnection}];
        }

        else
        {
          AVAudioEngineGraph::AddPendingConnection(*(a1 + 16), 1, v3, 0);
        }
      }
    }
  }

  v5 = *MEMORY[0x1E69E9840];
  return 0;
}

void sub_1BA615DA0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  std::__function::__value_func<ETraversalStatus ()(AUGraphNodeBaseV3 &,AUGraphConnection *)>::~__value_func[abi:ne200100](va);
  _Unwind_Resume(a1);
}

uint64_t std::__function::__func<AUGraphParser::InitializeActiveNodesInInputChain(AVAudioEngineGraph &,AUGraphNodeBaseV3 &)::$_2::operator() const(AUGraphNodeBaseV3 &,AUGraphConnection *)::{lambda(AUGraphNodeBaseV3 &,AUGraphConnection *)#1},std::allocator<AUGraphParser::InitializeActiveNodesInInputChain(AVAudioEngineGraph &,AUGraphNodeBaseV3 &)::$_2::operator() const(AUGraphNodeBaseV3 &,AUGraphConnection *)::{lambda(AUGraphNodeBaseV3 &,AUGraphConnection *)#1}>,ETraversalStatus ()(AUGraphNodeBaseV3 &,AUGraphConnection *)>::__clone(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_1F384D588;
  a2[1] = v2;
  return result;
}

__n128 std::__function::__func<AUGraphParser::InitializeActiveNodesInInputChain(AVAudioEngineGraph &,AUGraphNodeBaseV3 &)::$_2,std::allocator<AUGraphParser::InitializeActiveNodesInInputChain(AVAudioEngineGraph &,AUGraphNodeBaseV3 &)::$_2>,ETraversalStatus ()(AUGraphNodeBaseV3 &,AUGraphConnection *)>::__clone(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_1F384D540;
  result = *(a1 + 8);
  *(a2 + 8) = result;
  return result;
}

uint64_t AVAudioEngineGraph::MakeConnection(AVAudioEngineGraph *this, AVAudioNodeImplBase *a2, AVAudioNodeImplBase *a3, int a4, uint64_t a5, NSError **a6)
{
  v34 = *MEMORY[0x1E69E9840];
  v29 = a6;
  IsNodeInGraph = AVAudioEngineGraph::IsNodeInGraph(this, a3);
  _AVAE_CheckAndReturnErr("/Library/Caches/com.apple.xbs/Sources/AVFAudio/Source/AVFAudio/AVAudioEngine/AVAEGraph/AVAudioEngineGraph.mm", 3867, "MakeConnection", "IsNodeInGraph(inDestImpl)", IsNodeInGraph, 4294967246, a6);
  if (a2)
  {
    v13 = AVAudioEngineGraph::IsNodeInGraph(this, a2);
    _AVAE_CheckAndReturnErr("/Library/Caches/com.apple.xbs/Sources/AVFAudio/Source/AVFAudio/AVAudioEngine/AVAEGraph/AVAudioEngineGraph.mm", 3869, "MakeConnection", "IsNodeInGraph(inSrcImpl)", v13, 4294967246, a6);
    NodeFromMap = AVAudioEngineGraph::GetNodeFromMap(this, a2);
    v15 = AVAudioEngineGraph::GetNodeFromMap(this, a3);
    v24 = NodeFromMap;
    v25 = a4;
    v26 = v15;
    v27 = a5;
    v16 = *(*(v15 + 3) + 48);
    AUGraphParser::PrepareForDisconnection(this, v15, 0, v17, v18);
    Disconnection = AVAudioEngineGraph::MakeDisconnection(this, a3, a5, a6);
    if (_AVAE_CheckNoErr("/Library/Caches/com.apple.xbs/Sources/AVFAudio/Source/AVFAudio/AVAudioEngine/AVAEGraph/AVAudioEngineGraph.mm", 3890, "MakeConnection", "err = MakeDisconnection(inDestImpl, inDestBus, outErr)", Disconnection, a6))
    {
      Disconnection = AVAudioEngineGraph::PerformCommand(this, v15, 8, &v24, 32);
      v28 = Disconnection;
      if (_AVAE_CheckNoErr("/Library/Caches/com.apple.xbs/Sources/AVFAudio/Source/AVFAudio/AVAudioEngine/AVAEGraph/AVAudioEngineGraph.mm", 3894, "MakeConnection", "err = PerformCommand(*graphNodeDest, kAUMakeConnection, &connection, sizeof(connection))", Disconnection, a6))
      {
        if (!(*(*v15 + 120))(v15))
        {
          v30 = &v30;
          v31 = &v30;
          v32 = 0;
          AUGraphParser::GetNodeConnectionsToMixer(v15, &v30, 0);
        }

        v30 = 0;
        LODWORD(v31) = -1;
        v32 = 0;
        LODWORD(v33) = -1;
        (*(*v15 + 32))(v15, 1, a5, &v30);
        AUGraphParser::InformNodesAboutMixerConnection(NodeFromMap, &v30, a6);
      }
    }

    if (v16)
    {
      Disconnection = AVAudioEngineGraph::PerformCommand(this, v15, 3, 0, 0);
      _AVAE_CheckNoErr("/Library/Caches/com.apple.xbs/Sources/AVFAudio/Source/AVFAudio/AVAudioEngine/AVAEGraph/AVAudioEngineGraph.mm", 3915, "MakeConnection", "err = PerformCommand(*graphNodeDest, kAUInitialize, NULL, 0)", Disconnection, a6);
      if (!Disconnection)
      {
        v20 = AVAudioEngineGraph::PerformCommand(this, NodeFromMap, 3, 0, 0);
        v28 = v20;
        _AVAE_CheckNoErr("/Library/Caches/com.apple.xbs/Sources/AVFAudio/Source/AVFAudio/AVAudioEngine/AVAEGraph/AVAudioEngineGraph.mm", 3917, "MakeConnection", "err = PerformCommand(*graphNodeSrc, kAUInitialize, NULL, 0)", v20, a6);
        operator new();
      }
    }

    v23 = *MEMORY[0x1E69E9840];
    return Disconnection;
  }

  else
  {
    v21 = *MEMORY[0x1E69E9840];

    return AVAudioEngineGraph::MakeDisconnection(this, a3, a5, a6);
  }
}

void sub_1BA616318(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, ...)
{
  va_start(va, a8);
  std::__list_imp<AUGraphConnection>::clear(va);
  _Unwind_Resume(a1);
}

uint64_t std::__function::__func<AVAudioEngineGraph::MakeConnection(AVAudioNodeImplBase *,AVAudioNodeImplBase *,unsigned int,unsigned int,NSError **)::$_0,std::allocator<AVAudioEngineGraph::MakeConnection(AVAudioNodeImplBase *,AVAudioNodeImplBase *,unsigned int,unsigned int,NSError **)::$_0>,ETraversalStatus ()(AUGraphNodeBaseV3 &,AUGraphConnection *)>::operator()(uint64_t a1, void *a2)
{
  v3 = AVAudioEngineGraph::PerformCommand(*(a1 + 16), a2, 3, 0, 0);
  **(a1 + 8) = v3;
  _AVAE_CheckNoErr("/Library/Caches/com.apple.xbs/Sources/AVFAudio/Source/AVFAudio/AVAudioEngine/AVAEGraph/AVAudioEngineGraph.mm", 3920, "operator()", "err = PerformCommand(midiInput, kAUInitialize, nullptr, 0)", v3, **(a1 + 24));
  return 0;
}

__n128 std::__function::__func<AVAudioEngineGraph::MakeConnection(AVAudioNodeImplBase *,AVAudioNodeImplBase *,unsigned int,unsigned int,NSError **)::$_0,std::allocator<AVAudioEngineGraph::MakeConnection(AVAudioNodeImplBase *,AVAudioNodeImplBase *,unsigned int,unsigned int,NSError **)::$_0>,ETraversalStatus ()(AUGraphNodeBaseV3 &,AUGraphConnection *)>::__clone(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_1F384D6F0;
  result = *(a1 + 8);
  *(a2 + 24) = *(a1 + 24);
  *(a2 + 8) = result;
  return result;
}

uint64_t std::__function::__func<AUGraphParser::InitializeActiveNodesInInputChain(AVAudioEngineGraph &,AUGraphNodeBaseV3 &)::$_1,std::allocator<AUGraphParser::InitializeActiveNodesInInputChain(AVAudioEngineGraph &,AUGraphNodeBaseV3 &)::$_1>,ETraversalStatus ()(AUGraphNodeBaseV3 &,AUGraphConnection *)>::operator()(uint64_t a1, AVAudioEngineGraph *a2, uint64_t *a3)
{
  v27 = *MEMORY[0x1E69E9840];
  v5 = *a3;
  v6 = **(a1 + 8);
  if (v6 == a2 || !v6 && AUGraphParser::IsNodeConnectedToTarget(0, a2, *(a1 + 24)))
  {
    if ((*(*(a2 + 3) + 48) & 1) == 0)
    {
      if (AVAudioEngineLogCategory(void)::once != -1)
      {
        dispatch_once(&AVAudioEngineLogCategory(void)::once, &__block_literal_global_8660);
      }

      v7 = *AVAudioEngineLogCategory(void)::category;
      if (os_log_type_enabled(*AVAudioEngineLogCategory(void)::category, OS_LOG_TYPE_ERROR))
      {
        *buf = 136316418;
        v16 = "AVAEInternal.h";
        v17 = 1024;
        v18 = 71;
        v19 = 2080;
        v20 = "AVAudioEngineGraph.mm";
        v21 = 1024;
        v22 = 846;
        v23 = 2080;
        v24 = "operator()";
        v25 = 2080;
        v26 = "inNodeUpstream.IsInitialized()";
        _os_log_impl(&dword_1BA5AC000, v7, OS_LOG_TYPE_ERROR, "%25s:%-5d required condition is false: [%s:%d:%s: (%s)]", buf, 0x36u);
      }

      [MEMORY[0x1E695DF30] raise:@"com.apple.coreaudio.avfaudio" format:{@"required condition is false: %s", "inNodeUpstream.IsInitialized()"}];
    }

    **(a1 + 8) = a2;
    if (v5)
    {
      v8 = *(a1 + 32);
      operator new();
    }

    result = 2;
  }

  else
  {
    v10 = *(a1 + 16);
    v11 = *(v10 + 2);
    if (v11)
    {
      v12 = *(a2 + 3) == v11;
    }

    else
    {
      v12 = 0;
    }

    if (v12)
    {
      if (v5)
      {
        v13 = *(a1 + 32);
        operator new();
      }
    }

    else
    {
      AUGraphParser::UninitializeNode(v10, a2, 0);
    }

    result = 0;
  }

  v14 = *MEMORY[0x1E69E9840];
  return result;
}

__n128 std::__function::__func<AUGraphParser::InitializeActiveNodesInInputChain(AVAudioEngineGraph &,AUGraphNodeBaseV3 &)::$_1,std::allocator<AUGraphParser::InitializeActiveNodesInInputChain(AVAudioEngineGraph &,AUGraphNodeBaseV3 &)::$_1>,ETraversalStatus ()(AUGraphNodeBaseV3 &,AUGraphConnection *)>::__clone(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_1F384D4F8;
  result = *(a1 + 8);
  *(a2 + 24) = *(a1 + 24);
  *(a2 + 8) = result;
  return result;
}

uint64_t std::__function::__func<AUGraphParser::InitializeActiveNodesInInputChain(AVAudioEngineGraph &,AUGraphNodeBaseV3 &)::$_0,std::allocator<AUGraphParser::InitializeActiveNodesInInputChain(AVAudioEngineGraph &,AUGraphNodeBaseV3 &)::$_0>,ETraversalStatus ()(AUGraphNodeBaseV3 &,AUGraphConnection *)>::operator()(uint64_t a1, uint64_t a2)
{
  if (AUGraphParser::IsNodeConnectedToTarget(0, a2, *(a1 + 16)))
  {
    return 2;
  }

  result = 0;
  *(a2 + 32) = 1;
  return result;
}

__n128 std::__function::__func<AUGraphParser::InitializeActiveNodesInInputChain(AVAudioEngineGraph &,AUGraphNodeBaseV3 &)::$_0,std::allocator<AUGraphParser::InitializeActiveNodesInInputChain(AVAudioEngineGraph &,AUGraphNodeBaseV3 &)::$_0>,ETraversalStatus ()(AUGraphNodeBaseV3 &,AUGraphConnection *)>::__clone(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_1F384D4B0;
  result = *(a1 + 8);
  *(a2 + 8) = result;
  return result;
}

uint64_t std::__function::__func<AUGraphParser::DetermineTappedNodesToPull(AVAudioEngineGraph &,std::vector<AUGraphNodeBaseV3 *> &,BOOL &)::$_0,std::allocator<AUGraphParser::DetermineTappedNodesToPull(AVAudioEngineGraph &,std::vector<AUGraphNodeBaseV3 *> &,BOOL &)::$_0>,ETraversalStatus ()(AUGraphNodeBaseV3&,AUGraphConnection *)>::operator()(uint64_t a1, void *a2, uint64_t **a3)
{
  v5 = *a3;
  if (*(*(*a2[3] + 256))(a2[3]) == 1635083875 && ((*(*a2[3] + 408))(a2[3]) & 1) == 0 && ((*(*a2 + 144))(a2) & 1) == 0)
  {
    **(a1 + 8) = 1;
  }

  v6 = *(a2 + 8);
  *(a2 + 8) = v6 | 1;
  v7 = v6 & 2;
  if (v5)
  {
    v8 = v7 == 0;
  }

  else
  {
    v8 = 0;
  }

  if (v8)
  {
    v9 = *v5;
    if (*v5)
    {
      v10 = *(v9 + 36);
      v11 = (*(**(v9 + 24) + 48))(*(v9 + 24), 0);
      if (v11)
      {
        [v11 sampleRate];
      }

      else
      {
        v12 = -1.0;
      }

      AUGraphNodeBase::CalculateMaxFrames(a2, v10, v12);
    }
  }

  if (a2[1] || (*(*a2 + 144))(a2))
  {
    **(a1 + 16) = a2;
  }

  v13 = a2[9];
  v14 = a2[10];
  if (v13 == v14)
  {
    goto LABEL_24;
  }

  v15 = 0;
  do
  {
    if (*v13++)
    {
      ++v15;
    }
  }

  while (v13 != v14);
  if (!v15)
  {
LABEL_24:
    v17 = *(a1 + 24);
    v25 = a2;
    std::vector<AUGraphNodeBaseV3 *>::push_back[abi:ne200100](v17, &v25);
    v18 = *(*(a1 + 32) + 24);
    if (v18)
    {
      v19 = a2[3] == v18;
    }

    else
    {
      v19 = 0;
    }

    if (!v19)
    {
      v20 = *(a1 + 16);
      if (*v20)
      {
        v21 = *(a1 + 40);
        v23 = *v21;
        v22 = v21[1];
        while (v23 != v22)
        {
          if (*v23 == *v20)
          {
            if (v22 != v23)
            {
              goto LABEL_35;
            }

            break;
          }

          ++v23;
        }

        std::vector<AUGraphNodeBaseV3 *>::push_back[abi:ne200100](v21, v20);
      }
    }

LABEL_35:
    **(a1 + 16) = 0;
  }

  return 0;
}

__n128 std::__function::__func<AUGraphParser::DetermineTappedNodesToPull(AVAudioEngineGraph &,std::vector<AUGraphNodeBaseV3 *> &,BOOL &)::$_0,std::allocator<AUGraphParser::DetermineTappedNodesToPull(AVAudioEngineGraph &,std::vector<AUGraphNodeBaseV3 *> &,BOOL &)::$_0>,ETraversalStatus ()(AUGraphNodeBaseV3&,AUGraphConnection *)>::__clone(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_1F384D5D0;
  result = *(a1 + 8);
  v3 = *(a1 + 24);
  *(a2 + 40) = *(a1 + 40);
  *(a2 + 24) = v3;
  *(a2 + 8) = result;
  return result;
}

void AUGraphParser::UpdateGraphAttributes(AUGraphParser *this, AVAudioEngineGraph *a2)
{
  v38[5] = *MEMORY[0x1E69E9840];
  NodeFromMap = AVAudioEngineGraph::GetNodeFromMap(this, *(this + 3));
  v38[0] = NodeFromMap;
  if (!(NodeFromMap | AVAudioEngineGraph::GetNodeFromMap(this, *(this + 2))))
  {
    goto LABEL_36;
  }

  *(this + 8) = *(this + 7);
  v4 = *(this + 1);
  v7 = *v4;
  v5 = v4 + 1;
  v6 = v7;
  if (v7 != v5)
  {
    do
    {
      v8 = v6[5];
      *(v8 + 40) = 0;
      *(v8 + 32) &= ~4u;
      v9 = v6[1];
      if (v9)
      {
        do
        {
          v10 = v9;
          v9 = *v9;
        }

        while (v9);
      }

      else
      {
        do
        {
          v10 = v6[2];
          v11 = *v10 == v6;
          v6 = v10;
        }

        while (!v11);
      }

      v6 = v10;
    }

    while (v10 != v5);
  }

  __src = 0;
  v36 = 0;
  v37 = 0;
  if (NodeFromMap)
  {
    std::vector<AUGraphNodeBaseV3 *>::push_back[abi:ne200100](&__src, v38);
    NodeFromMap = __src;
  }

  v12 = *(this + 88);
  v13 = *(this + 12);
  v14 = *(this + 11);
  v15 = v36;
  if (v14 != v13)
  {
    v16 = v13 - v14;
    v17 = (v13 - v14) >> 3;
    if (v17 >= 1)
    {
      if (v37 - v36 < v16)
      {
        v18 = v17 + (&v36[-NodeFromMap] >> 3);
        if (v18 >> 61)
        {
          std::vector<AUGraphNodeBaseV3 *>::__throw_length_error[abi:ne200100]();
        }

        v19 = v37 - NodeFromMap;
        if ((v37 - NodeFromMap) >> 2 > v18)
        {
          v18 = v19 >> 2;
        }

        if (v19 >= 0x7FFFFFFFFFFFFFF8)
        {
          v20 = 0x1FFFFFFFFFFFFFFFLL;
        }

        else
        {
          v20 = v18;
        }

        if (v20)
        {
          std::__allocate_at_least[abi:ne200100]<std::allocator<AUGraphNodeBaseV3 *>>(v20);
        }

        v31 = 8 * (&v36[-NodeFromMap] >> 3);
        v22 = (v31 + v16);
        v32 = v31;
        do
        {
          v33 = *v14;
          v14 += 8;
          *v32++ = v33;
          v16 -= 8;
        }

        while (v16);
        v34 = __src;
        NodeFromMap = v31 - (v15 - __src);
        memcpy(NodeFromMap, __src, v15 - __src);
        __src = NodeFromMap;
        v36 = v22;
        v37 = 0;
        if (v34)
        {
          operator delete(v34);
        }

        goto LABEL_25;
      }

      do
      {
        v21 = *v14;
        v14 += 8;
        *v15 = v21;
        v15 += 8;
      }

      while (v14 != v13);
      v36 = v15;
    }
  }

  v22 = v15;
LABEL_25:
  if (NodeFromMap != v22)
  {
    *(*NodeFromMap + 40) = 0;
    v38[4] = 0;
    operator new();
  }

  v23 = *(this + 1);
  v26 = *v23;
  v24 = v23 + 1;
  v25 = v26;
  if (v26 != v24)
  {
    do
    {
      v27 = v25[5];
      (*(**(v27 + 24) + 392))(*(v27 + 24), *(v27 + 40));
      *(v27 + 32) &= ~4u;
      v28 = v25[1];
      if (v28)
      {
        do
        {
          v29 = v28;
          v28 = *v28;
        }

        while (v28);
      }

      else
      {
        do
        {
          v29 = v25[2];
          v11 = *v29 == v25;
          v25 = v29;
        }

        while (!v11);
      }

      v25 = v29;
    }

    while (v29 != v24);
  }

  if (NodeFromMap)
  {
    v36 = NodeFromMap;
    operator delete(NodeFromMap);
  }

LABEL_36:
  v30 = *MEMORY[0x1E69E9840];
}

void sub_1BA616E84(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, char a14)
{
  if (v14)
  {
    operator delete(v14);
  }

  _Unwind_Resume(exception_object);
}

uint64_t std::__function::__func<AUGraphParser::UpdateGraphAttributes(AVAudioEngineGraph &)::$_0,std::allocator<AUGraphParser::UpdateGraphAttributes(AVAudioEngineGraph &)::$_0>,ETraversalStatus ()(AUGraphNodeBaseV3 &,AUGraphConnection *)>::operator()(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v29 = *MEMORY[0x1E69E9840];
  v5 = *(a2 + 32);
  if (*a3)
  {
    v6 = *(*a3 + 16);
    if (v6)
    {
      v7 = (*(**(v6 + 24) + 384))(*(v6 + 24)) + *(v6 + 40);
      if ((v5 & 4) != 0)
      {
        if (*(a2 + 40) >= v7)
        {
          v7 = *(a2 + 40);
        }
      }

      else
      {
        v7 = fmax(v7, 0.0);
      }

      *(a2 + 40) = v7;
    }
  }

  if (**(a1 + 8) == **(a1 + 16))
  {
    v8 = v5 & 4;
    if (AVAudioEngineGraph::IsValidSourceNode(*(a1 + 24), a2) && v8 == 0)
    {
      v10 = *(a2 + 48);
      v11 = *(a2 + 56);
      if (v10 != v11)
      {
        v12 = 0;
        do
        {
          if (*v10++)
          {
            ++v12;
          }
        }

        while (v10 != v11);
        if (v12)
        {
          if (AVAudioEngineLogCategory(void)::once != -1)
          {
            dispatch_once(&AVAudioEngineLogCategory(void)::once, &__block_literal_global_8660);
          }

          v14 = *AVAudioEngineLogCategory(void)::category;
          if (os_log_type_enabled(*AVAudioEngineLogCategory(void)::category, OS_LOG_TYPE_ERROR))
          {
            *buf = 136316418;
            *&buf[4] = "AVAEInternal.h";
            v19 = 1024;
            v20 = 71;
            v21 = 2080;
            v22 = "AVAudioEngineGraph.mm";
            v23 = 1024;
            v24 = 1067;
            v25 = 2080;
            v26 = "operator()";
            v27 = 2080;
            v28 = "0 == inCurrNode.NumberOfValidConnections(kUpstream)";
            _os_log_impl(&dword_1BA5AC000, v14, OS_LOG_TYPE_ERROR, "%25s:%-5d required condition is false: [%s:%d:%s: (%s)]", buf, 0x36u);
          }

          [MEMORY[0x1E695DF30] raise:@"com.apple.coreaudio.avfaudio" format:{@"required condition is false: %s", "0 == inCurrNode.NumberOfValidConnections(kUpstream)"}];
        }
      }

      v15 = *(a1 + 24);
      *buf = a2;
      std::vector<AUGraphNodeBaseV3 *>::push_back[abi:ne200100](v15 + 56, buf);
    }
  }

  *(a2 + 32) |= 4u;
  v16 = *MEMORY[0x1E69E9840];
  return 0;
}

__n128 std::__function::__func<AUGraphParser::UpdateGraphAttributes(AVAudioEngineGraph &)::$_0,std::allocator<AUGraphParser::UpdateGraphAttributes(AVAudioEngineGraph &)::$_0>,ETraversalStatus ()(AUGraphNodeBaseV3 &,AUGraphConnection *)>::__clone(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_1F384D618;
  result = *(a1 + 8);
  *(a2 + 24) = *(a1 + 24);
  *(a2 + 8) = result;
  return result;
}

void AVAEGraphStateTracker::CancelTimers(AVAEGraphStateTracker *this)
{
  v2 = *(this + 2);
  if (v2)
  {
    AVAEDispatchQueueTimer::CancelTimer(v2);
  }

  v3 = *(this + 3);
  if (v3)
  {

    AVAEDispatchQueueTimer::CancelTimer(v3);
  }
}

AVAEDispatchQueueTimer **std::unique_ptr<AVAEDispatchQueueTimer>::reset[abi:ne200100](AVAEDispatchQueueTimer **result, AVAEDispatchQueueTimer *a2)
{
  v2 = *result;
  *result = a2;
  if (v2)
  {
    AVAEDispatchQueueTimer::CancelTimer(v2);
    std::__function::__value_func<void ()(BOOL)>::~__value_func[abi:ne200100](v2 + 24);

    JUMPOUT(0x1BFAF5800);
  }

  return result;
}

void AVAEDispatchQueueTimer::CancelTimer(AVAEDispatchQueueTimer *this)
{
  v2 = *(this + 1);
  if (v2)
  {
    if (*(this + 56) == 1)
    {
      v5[0] = MEMORY[0x1E69E9820];
      v5[1] = 3221225472;
      v5[2] = ___ZN22AVAEDispatchQueueTimer11CancelTimerEv_block_invoke;
      v5[3] = &__block_descriptor_40_e14_v16__0___v___8l;
      v5[4] = this;
      v3 = dispatch_semaphore_create(0);
      dispatch_retain(v3);
      v6[0] = MEMORY[0x1E69E9820];
      v6[1] = 0x40000000;
      v6[2] = __Synchronously_block_invoke;
      v6[3] = &__block_descriptor_tmp_1224;
      v6[4] = v3;
      ___ZN22AVAEDispatchQueueTimer11CancelTimerEv_block_invoke(v5, v6);
      dispatch_semaphore_wait(v3, 0xFFFFFFFFFFFFFFFFLL);
      dispatch_release(v3);
    }

    else
    {
      dispatch_source_cancel(v2);
    }

    if (*(this + 16) == 1 && *(this + 56) == 1)
    {
      *(this + 16) = 0;
      v4 = *(this + 6);
      if (v4)
      {
        std::function<void ()(BOOL)>::operator()(v4, 0);
      }
    }

    dispatch_release(*(this + 1));
    *(this + 1) = 0;
    *(this + 16) = 0;
  }
}

uint64_t std::__function::__value_func<void ()(BOOL)>::~__value_func[abi:ne200100](uint64_t a1)
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

void ___ZN22AVAEDispatchQueueTimer11CancelTimerEv_block_invoke(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 32);
  v3 = *(v2 + 8);
  handler[0] = MEMORY[0x1E69E9820];
  handler[1] = 3221225472;
  handler[2] = ___ZN22AVAEDispatchQueueTimer11CancelTimerEv_block_invoke_2;
  handler[3] = &unk_1E7EF6548;
  handler[4] = a2;
  dispatch_source_set_cancel_handler(v3, handler);
  dispatch_source_cancel(*(v2 + 8));
}

uint64_t std::function<void ()(BOOL)>::operator()(uint64_t a1, char a2)
{
  v3 = a2;
  if (!a1)
  {
    std::__throw_bad_function_call[abi:ne200100]();
  }

  return (*(*a1 + 48))(a1, &v3);
}

uint64_t AVAEGraphStateTracker::GraphHasActiveSource(AVAEGraphStateTracker *this)
{
  if (*(this + 11) != *(this + 12))
  {
    return 1;
  }

  v2 = *(this + 7);
  v3 = *(this + 8);
  if (v2 == v3)
  {
    return 0;
  }

  v4 = v2 + 8;
  do
  {
    result = (*(**(*(v4 - 8) + 24) + 432))(*(*(v4 - 8) + 24));
    if (result)
    {
      break;
    }

    v5 = v4 == v3;
    v4 += 8;
  }

  while (!v5);
  return result;
}

void AVAEDispatchQueueTimer::StartTimer(uint64_t a1, char a2, uint64_t a3, double a4, double a5)
{
  v22[3] = *MEMORY[0x1E69E9840];
  AVAEDispatchQueueTimer::CancelTimer(a1);
  *(a1 + 16) = 1;
  v10 = *(a3 + 24);
  if (v10)
  {
    if (v10 == a3)
    {
      v21 = v20;
      (*(*v10 + 24))(v10, v20);
    }

    else
    {
      v21 = (*(*v10 + 16))(v10);
    }
  }

  else
  {
    v21 = 0;
  }

  v11 = a1 + 24;
  if ((a1 + 24) != v20)
  {
    v12 = v21;
    v13 = *(a1 + 48);
    if (v21 == v20)
    {
      if (v13 == v11)
      {
        (*(*v21 + 24))();
        (*(*v21 + 32))(v21);
        v21 = 0;
        (*(**(a1 + 48) + 24))(*(a1 + 48), v20);
        (*(**(a1 + 48) + 32))(*(a1 + 48));
        *(a1 + 48) = 0;
        v21 = v20;
        (*(v22[0] + 24))(v22, a1 + 24);
        (*(v22[0] + 32))(v22);
      }

      else
      {
        (*(*v21 + 24))();
        (*(*v21 + 32))(v21);
        v21 = *(a1 + 48);
      }

      *(a1 + 48) = v11;
    }

    else if (v13 == v11)
    {
      (*(*v13 + 24))(*(a1 + 48), v20);
      (*(**(a1 + 48) + 32))(*(a1 + 48));
      *(a1 + 48) = v21;
      v21 = v20;
    }

    else
    {
      v21 = *(a1 + 48);
      *(a1 + 48) = v12;
    }
  }

  std::__function::__value_func<void ()(BOOL)>::~__value_func[abi:ne200100](v20);
  *(a1 + 56) = a2;
  v14 = dispatch_source_create(MEMORY[0x1E69E9710], 0, 0, *a1);
  *(a1 + 8) = v14;
  handler[0] = MEMORY[0x1E69E9820];
  handler[1] = 3221225472;
  handler[2] = ___ZN22AVAEDispatchQueueTimer10StartTimerEddbNSt3__18functionIFvbEEE_block_invoke;
  handler[3] = &__block_descriptor_40_e5_v8__0l;
  handler[4] = a1;
  dispatch_source_set_event_handler(v14, handler);
  dispatch_activate(*(a1 + 8));
  if (a5 <= 0.0)
  {
    v15 = -1;
  }

  else
  {
    v15 = (a5 * 1000000000.0);
  }

  v16 = *(a1 + 8);
  v17 = dispatch_time(0, (a4 * 1000000000.0));
  dispatch_source_set_timer(v16, v17, v15, 0x1312D00uLL);
  v18 = *MEMORY[0x1E69E9840];
}

void sub_1BA617988(_Unwind_Exception *a1, int a2)
{
  if (!a2)
  {
    _Unwind_Resume(a1);
  }

  __clang_call_terminate(a1);
}

void std::__function::__func<AVAEGraphStateTracker::StartTimers(void)::$_1,std::allocator<AVAEGraphStateTracker::StartTimers(void)::$_1>,void ()(BOOL)>::operator()(uint64_t a1)
{
  v12 = *MEMORY[0x1E69E9840];
  v1 = *(a1 + 8);
  v2 = **v1;
  if (std::recursive_mutex::try_lock((v2 + 112)))
  {
    v3 = *v1;
    if (*(*v1 + 208) == 1 && *(v3 + 184) == 1 && (*(v3 + 187) & 1) == 0 && (AVAEGraphStateTracker::GraphHasActiveSource(v3) & 1) == 0)
    {
      if (AVAudioEngineLogCategory(void)::once != -1)
      {
        dispatch_once(&AVAudioEngineLogCategory(void)::once, &__block_literal_global_8660);
      }

      v4 = *AVAudioEngineLogCategory(void)::category;
      if (os_log_type_enabled(*AVAudioEngineLogCategory(void)::category, OS_LOG_TYPE_DEBUG))
      {
        v6 = 136315650;
        v7 = "AVAudioEngineGraph.mm";
        v8 = 1024;
        v9 = 1245;
        v10 = 2048;
        v11 = 0x404E000000000000;
        _os_log_impl(&dword_1BA5AC000, v4, OS_LOG_TYPE_DEBUG, "%25s:%-5d AVAudioEngine (auto shutdown mode): left running idle for %.f s, stopping!", &v6, 0x1Cu);
      }

      AVAudioEngineGraph::Stop(*v1, 0);
    }

    AVAEDispatchQueueTimer::CancelTimer(v1[3]);
    std::recursive_mutex::unlock((v2 + 112));
  }

  v5 = *MEMORY[0x1E69E9840];
}

uint64_t AVAudioEngineGraph::Stop(AVAudioNodeImplBase **this, NSError **a2)
{
  v4 = *this;
  std::recursive_mutex::lock((*this + 112));
  if (this[23])
  {
    v5 = AVAudioEngineGraph::_Stop(this, a2);
  }

  else
  {
    v5 = 0;
  }

  std::recursive_mutex::unlock((v4 + 112));
  return v5;
}

uint64_t AVAudioEngineGraph::_Stop(AVAudioNodeImplBase **this, NSError **a2)
{
  v4 = *this;
  std::recursive_mutex::lock((*this + 112));
  NodeFromMap = AVAudioEngineGraph::GetNodeFromMap(this, this[3]);
  v6 = 3;
  if (!NodeFromMap)
  {
    v6 = 2;
  }

  v7 = AVAudioEngineGraph::GetNodeFromMap(this, this[v6]);
  v8 = _AVAE_CheckAndReturnErr("/Library/Caches/com.apple.xbs/Sources/AVFAudio/Source/AVFAudio/AVAudioEngine/AVAEGraph/AVAudioEngineGraph.mm", 1584, "_Stop", "ioNode != NULL", v7 != 0, 4294967246, a2);
  *(this + 232) = *(this + 187) ^ 1;
  if (v7)
  {
    if ((*(*v7 + 128))(v7))
    {
      v9 = (*(*v7 + 232))(v7);
    }

    else
    {
      v9 = 4294967246;
    }

    _AVAE_CheckNoErr("/Library/Caches/com.apple.xbs/Sources/AVFAudio/Source/AVFAudio/AVAudioEngine/AVAEGraph/AVAudioEngineGraph.mm", 1592, "_Stop", "(err = PerformCommand(*ioNode, kAUStopIO, NULL, 0))", v9, a2);
  }

  else
  {
    v9 = v8;
  }

  v10 = this[1];
  v13 = *v10;
  v11 = (v10 + 8);
  v12 = v13;
  if (v13 != v11)
  {
    do
    {
      v14 = v12[5];
      if (*(v14[3] + 48) == 1)
      {
        (*(*v14 + 216))(v14);
      }

      v15 = v12[1];
      if (v15)
      {
        do
        {
          v16 = v15;
          v15 = *v15;
        }

        while (v15);
      }

      else
      {
        do
        {
          v16 = v12[2];
          v17 = *v16 == v12;
          v12 = v16;
        }

        while (!v17);
      }

      v12 = v16;
    }

    while (v16 != v11);
  }

  *(this + 184) = 0;
  AVAudioEngineGraph::MonitorState(this);
  std::recursive_mutex::unlock((v4 + 112));
  return v9;
}

void AVAudioEngineGraph::MonitorState(AVAudioEngineGraph *this)
{
  v11[4] = *MEMORY[0x1E69E9840];
  if (*(this + 187) == 1)
  {
    v1 = *MEMORY[0x1E69E9840];
    v2 = (this + 216);

    std::unique_ptr<AVAEGraphStateTracker>::reset[abi:ne200100](v2, 0);
  }

  else
  {
    v3 = *(this + 27);
    if (!v3)
    {
      operator new();
    }

    v4 = *v3;
    if (*(*v3 + 184) != 1 || (*(v4 + 187) & 1) != 0 || AVAEGraphStateTracker::GraphHasActiveSource(v4))
    {
      v5 = *MEMORY[0x1E69E9840];

      AVAEGraphStateTracker::CancelTimers(v3);
    }

    else
    {
      v6 = *(v3 + 2);
      if (!v6)
      {
        operator new();
      }

      if (!*(v6 + 8))
      {
        v7 = 120.0;
        if (*(*v3 + 208))
        {
          v7 = 30.0;
        }

        v11[0] = &unk_1F384D660;
        v11[1] = v3;
        v11[3] = v11;
        AVAEDispatchQueueTimer::StartTimer(v6, 0, v11, v7, v7);
        std::__function::__value_func<void ()(BOOL)>::~__value_func[abi:ne200100](v11);
      }

      if (*(*v3 + 208) == 1)
      {
        v8 = *(v3 + 3);
        if (!v8)
        {
          operator new();
        }

        if (!*(v8 + 8))
        {
          v10[0] = &unk_1F384D6A8;
          v10[1] = v3;
          v10[3] = v10;
          AVAEDispatchQueueTimer::StartTimer(v8, 0, v10, 60.0, 0.05);
          std::__function::__value_func<void ()(BOOL)>::~__value_func[abi:ne200100](v10);
        }
      }

      v9 = *MEMORY[0x1E69E9840];
    }
  }
}

void sub_1BA61802C(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  std::__function::__value_func<void ()(BOOL)>::~__value_func[abi:ne200100](va);
  _Unwind_Resume(a1);
}

uint64_t *std::unique_ptr<AVAEGraphStateTracker>::reset[abi:ne200100](uint64_t *result, uint64_t a2)
{
  v2 = *result;
  *result = a2;
  if (v2)
  {
    AVAEGraphStateTracker::CancelTimers(v2);
    std::unique_ptr<AVAEDispatchQueueTimer>::reset[abi:ne200100]((v2 + 16), 0);
    std::unique_ptr<AVAEDispatchQueueTimer>::reset[abi:ne200100]((v2 + 24), 0);
    dispatch_sync(*(v2 + 8), &__block_literal_global_1777);
    dispatch_release(*(v2 + 8));
    std::unique_ptr<AVAEDispatchQueueTimer>::reset[abi:ne200100]((v2 + 24), 0);
    std::unique_ptr<AVAEDispatchQueueTimer>::reset[abi:ne200100]((v2 + 16), 0);

    JUMPOUT(0x1BFAF5800);
  }

  return result;
}

uint64_t std::__function::__func<AVAEGraphStateTracker::StartTimers(void)::$_1,std::allocator<AVAEGraphStateTracker::StartTimers(void)::$_1>,void ()(BOOL)>::__clone(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_1F384D6A8;
  a2[1] = v2;
  return result;
}

uint64_t ___ZN22AVAEDispatchQueueTimer10StartTimerEddbNSt3__18functionIFvbEEE_block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  *(v1 + 16) = 0;
  result = *(v1 + 48);
  if (result)
  {
    return std::function<void ()(BOOL)>::operator()(result, 1);
  }

  return result;
}

void std::__function::__func<AVAEGraphStateTracker::StartTimers(void)::$_0,std::allocator<AVAEGraphStateTracker::StartTimers(void)::$_0>,void ()(BOOL)>::operator()(uint64_t a1)
{
  v11 = *MEMORY[0x1E69E9840];
  v1 = *(a1 + 8);
  if (AVAudioEngineLogCategory(void)::once != -1)
  {
    dispatch_once(&AVAudioEngineLogCategory(void)::once, &__block_literal_global_8660);
  }

  v2 = *AVAudioEngineLogCategory(void)::category;
  if (os_log_type_enabled(*AVAudioEngineLogCategory(void)::category, OS_LOG_TYPE_DEBUG))
  {
    v3 = 0x405E000000000000;
    if (*(*v1 + 208))
    {
      v3 = 0x403E000000000000;
    }

    v5 = 136315650;
    v6 = "AVAudioEngineGraph.mm";
    v7 = 1024;
    v8 = 1232;
    v9 = 2048;
    v10 = v3;
    _os_log_impl(&dword_1BA5AC000, v2, OS_LOG_TYPE_DEBUG, "%25s:%-5d AVAudioEngine: left running idle for %.f s", &v5, 0x1Cu);
  }

  v4 = *MEMORY[0x1E69E9840];
}

uint64_t std::__function::__func<AVAEGraphStateTracker::StartTimers(void)::$_0,std::allocator<AVAEGraphStateTracker::StartTimers(void)::$_0>,void ()(BOOL)>::__clone(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_1F384D660;
  a2[1] = v2;
  return result;
}

uint64_t AVAudioEngineGraph::Initialize(AVAudioEngineGraph *this, NSError **a2)
{
  v79 = *MEMORY[0x1E69E9840];
  v4 = *this;
  std::recursive_mutex::lock((*this + 112));
  if (*(this + 185))
  {
    active = 0;
    goto LABEL_103;
  }

  NodeFromMap = AVAudioEngineGraph::GetNodeFromMap(this, *(this + 2));
  v7 = AVAudioEngineGraph::GetNodeFromMap(this, *(this + 3));
  v8 = v7;
  v64 = 0;
  if (*(this + 187) == 1)
  {
    if (!v7)
    {
      if (AVAudioEngineLogCategory(void)::once != -1)
      {
        dispatch_once(&AVAudioEngineLogCategory(void)::once, &__block_literal_global_8660);
      }

      v9 = *AVAudioEngineLogCategory(void)::category;
      v10 = "outputNode != nullptr";
      if (!os_log_type_enabled(*AVAudioEngineLogCategory(void)::category, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_17;
      }

      *buf = 136316418;
      v66 = "AVAEInternal.h";
      v67 = 1024;
      v68 = 71;
      v69 = 2080;
      v70 = "AVAudioEngineGraph.mm";
      v71 = 1024;
      v11 = 1320;
LABEL_16:
      v72 = v11;
      v73 = 2080;
      v74 = "Initialize";
      v75 = 2080;
      v76 = v10;
      _os_log_impl(&dword_1BA5AC000, v9, OS_LOG_TYPE_ERROR, "%25s:%-5d required condition is false: [%s:%d:%s: (%s)]", buf, 0x36u);
LABEL_17:
      [MEMORY[0x1E695DF30] raise:@"com.apple.coreaudio.avfaudio" format:{@"required condition is false: %s", v10}];
      goto LABEL_18;
    }

    goto LABEL_11;
  }

  if (!(NodeFromMap | v7))
  {
    if (AVAudioEngineLogCategory(void)::once != -1)
    {
      dispatch_once(&AVAudioEngineLogCategory(void)::once, &__block_literal_global_8660);
    }

    v9 = *AVAudioEngineLogCategory(void)::category;
    v10 = "inputNode != nullptr || outputNode != nullptr";
    if (!os_log_type_enabled(*AVAudioEngineLogCategory(void)::category, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_17;
    }

    *buf = 136316418;
    v66 = "AVAEInternal.h";
    v67 = 1024;
    v68 = 71;
    v69 = 2080;
    v70 = "AVAudioEngineGraph.mm";
    v71 = 1024;
    v11 = 1322;
    goto LABEL_16;
  }

  if (v7)
  {
LABEL_11:
    v12 = 0;
    goto LABEL_19;
  }

LABEL_18:
  v12 = 1;
  v7 = NodeFromMap;
LABEL_19:
  v13 = (*(*v7 + 240))(v7);
  if ((v12 & 1) == 0 && (!(*(*v8 + 152))(v8) || (*(*v8 + 128))(v8)))
  {
    v8[9] = v13;
  }

  if (NodeFromMap && (!(*(*NodeFromMap + 152))(NodeFromMap) || (*(*NodeFromMap + 128))(NodeFromMap)))
  {
    *(NodeFromMap + 36) = v13;
  }

  if (v12)
  {
    goto LABEL_28;
  }

  (*(*v8 + 200))(v8, *(this + 187), *(this + 24));
  active = AVAudioEngineGraph::PerformCommand(this, v8, 3, 0, 0);
  if (!_AVAE_CheckNoErr("/Library/Caches/com.apple.xbs/Sources/AVFAudio/Source/AVFAudio/AVAudioEngine/AVAEGraph/AVAudioEngineGraph.mm", 1348, "Initialize", "err = PerformCommand(*outputNode, kAUInitialize, NULL, 0)", active, a2))
  {
    goto LABEL_100;
  }

  v32 = (*(*v8 + 240))(v8);
  if (!(*(*v8 + 152))(v8) || (*(*v8 + 128))(v8))
  {
    v8[9] = v32;
  }

  if (NodeFromMap && (!(*(*NodeFromMap + 152))(NodeFromMap) || (*(*NodeFromMap + 128))(NodeFromMap)))
  {
    *(NodeFromMap + 36) = v32;
  }

  v33 = (*(*v8 + 24))(v8, 1, 0);
  v34 = v33;
  if (!v33 || !(*(*v33 + 120))(v33) || *(this + 186) == 1 && (v35 = (*(**(v8 + 3) + 72))(*(v8 + 3), 0), (v36 = v35) != 0) && ([v35 sampleRate], v37 > 0.0) && objc_msgSend(v36, "channelCount"))
  {
LABEL_28:
    active = 0;
  }

  else
  {
    v38 = (*(**(v8 + 3) + 48))(*(v8 + 3), 0);
    v39 = v38;
    v41 = v38 && ([v38 sampleRate], v40 > 0.0) && objc_msgSend(v39, "channelCount") != 0;
    active = _AVAE_CheckAndReturnErr("/Library/Caches/com.apple.xbs/Sources/AVFAudio/Source/AVFAudio/AVAudioEngine/AVAEGraph/AVAudioEngineGraph.mm", 1361, "Initialize", "IsFormatSampleRateAndChannelCountValid(outputHWFormat)", v41, 4294956421, a2);
    if (active)
    {
      goto LABEL_102;
    }

    v59 = [AVAudioFormat alloc];
    [v39 sampleRate];
    v60 = [(AVAudioFormat *)v59 initStandardFormatWithSampleRate:2 channels:?];
    active = AVAudioEngineGraph::_Connect(this, *(v34 + 24), *(v8 + 3), 0, 0, v60);
    v61 = _AVAE_CheckNoErr("/Library/Caches/com.apple.xbs/Sources/AVFAudio/Source/AVFAudio/AVAudioEngine/AVAEGraph/AVAudioEngineGraph.mm", 1369, "Initialize", "err = _Connect(connNode->NodeImpl(), outputNode->NodeImpl(), 0, 0, format)", active, a2);

    if (!v61)
    {
      goto LABEL_100;
    }

    *(this + 186) = 0;
  }

  std::__list_imp<AUGraphConnection>::clear(this + 17);
  std::__list_imp<AUGraphConnection>::clear(this + 20);
  v14 = *(this + 1);
  v17 = *v14;
  v15 = v14 + 1;
  v16 = v17;
  if (v17 != v15)
  {
    do
    {
      v18 = v16[5];
      v18[8] = 0;
      (*(*v18 + 200))(v18, *(this + 187), *(this + 24));
      v19 = v16[1];
      if (v19)
      {
        do
        {
          v20 = v19;
          v19 = *v19;
        }

        while (v19);
      }

      else
      {
        do
        {
          v20 = v16[2];
          v21 = *v20 == v16;
          v16 = v20;
        }

        while (!v21);
      }

      v16 = v20;
    }

    while (v20 != v15);
  }

  v22 = AVAudioEngineGraph::GetNodeFromMap(this, *(this + 3));
  if (v22)
  {
    AUGraphParser::InitializeActiveNodesInOutputChain(this, v22, &v64);
  }

  v23 = AVAudioEngineGraph::GetNodeFromMap(this, *(this + 2));
  if (!v23)
  {
LABEL_46:
    v26 = AVAudioEngineGraph::GetNodeFromMap(this, *(this + 3));
    if (v26 && (*(*v26 + 24))(v26, 1, 0))
    {
      v27 = AVAudioEngineGraph::GetNodeFromMap(this, *(this + 3));
      v28 = (*(**(v27 + 24) + 48))(*(v27 + 24), 0);
      v29 = v28;
      v31 = v28 && ([v28 sampleRate], v30 > 0.0) && objc_msgSend(v29, "channelCount") != 0;
      active = _AVAE_CheckAndReturnErr("/Library/Caches/com.apple.xbs/Sources/AVFAudio/Source/AVFAudio/AVAudioEngine/AVAEGraph/AVAudioEngineGraph.mm", 1412, "Initialize", "IsFormatSampleRateAndChannelCountValid(outputHWFormat)", v31, 4294956421, a2);
      if (active)
      {
        goto LABEL_102;
      }
    }

    v42 = *(this + 2);
    if (AVAudioEngineGraph::GetNodeFromMap(this, v42))
    {
      if (*(this + 11) != *(this + 12))
      {
LABEL_74:
        v44 = AVAudioEngineGraph::GetNodeFromMap(this, v42);
        v45 = (*(**(v44 + 24) + 72))(*(v44 + 24), 0);
        v46 = v45;
        v48 = v45 && ([v45 sampleRate], v47 > 0.0) && objc_msgSend(v46, "channelCount") != 0;
        active = _AVAE_CheckAndReturnErr("/Library/Caches/com.apple.xbs/Sources/AVFAudio/Source/AVFAudio/AVAudioEngine/AVAEGraph/AVAudioEngineGraph.mm", 1419, "Initialize", "IsFormatSampleRateAndChannelCountValid(inputHWFormat)", v48, 4294956421, a2);
        if (active)
        {
          goto LABEL_102;
        }

        goto LABEL_79;
      }

      v43 = AVAudioEngineGraph::GetNodeFromMap(this, v42);
      if ((*(*v43 + 24))(v43, 0, 0))
      {
        v42 = *(this + 2);
        goto LABEL_74;
      }
    }

LABEL_79:
    v49 = *(this + 1);
    v52 = *v49;
    v50 = v49 + 1;
    v51 = v52;
    if (v52 != v50)
    {
      do
      {
        v53 = v51[5];
        if (((*(*v53 + 128))(v53) & 1) == 0 && (*(v53 + 32) & 3) == 0)
        {
          v54 = AVAudioEngineGraph::PerformCommand(this, v53, 4, 0, 0);
          if (v54)
          {
            if (AVAudioEngineLogCategory(void)::once != -1)
            {
              dispatch_once(&AVAudioEngineLogCategory(void)::once, &__block_literal_global_8660);
            }

            v55 = *AVAudioEngineLogCategory(void)::category;
            if (os_log_type_enabled(*AVAudioEngineLogCategory(void)::category, OS_LOG_TYPE_ERROR))
            {
              *buf = 136316674;
              v66 = "AVAEInternal.h";
              v67 = 1024;
              v68 = 104;
              v69 = 2080;
              v70 = "AVAudioEngineGraph.mm";
              v71 = 1024;
              v72 = 1430;
              v73 = 2080;
              v74 = "Initialize";
              v75 = 2080;
              v76 = "PerformCommand(*graphNode, kAUUninitialize, NULL, 0)";
              v77 = 1024;
              v78 = v54;
              _os_log_impl(&dword_1BA5AC000, v55, OS_LOG_TYPE_ERROR, "%25s:%-5d [%s:%d:%s: (%s): error %d", buf, 0x3Cu);
            }

            [MEMORY[0x1E695DF30] raise:@"com.apple.coreaudio.avfaudio" format:{@"error %d", v54}];
          }
        }

        v56 = v51[1];
        if (v56)
        {
          do
          {
            v57 = v56;
            v56 = *v56;
          }

          while (v56);
        }

        else
        {
          do
          {
            v57 = v51[2];
            v21 = *v57 == v51;
            v51 = v57;
          }

          while (!v21);
        }

        v51 = v57;
      }

      while (v57 != v50);
    }

    AVAudioEngineGraph::RemoveInactiveInternalNodes(this);
    AUGraphParser::UpdateGraphAttributes(this, v58);
    if (!active)
    {
      *(this + 185) = 1;
      goto LABEL_103;
    }

LABEL_102:
    AVAudioEngineGraph::_Uninitialize(this, a2);
    goto LABEL_103;
  }

  active = AUGraphParser::InitializeActiveNodesInInputChain(this, v23, v24);
  if (_AVAE_CheckNoErr("/Library/Caches/com.apple.xbs/Sources/AVFAudio/Source/AVFAudio/AVAudioEngine/AVAEGraph/AVAudioEngineGraph.mm", 1401, "Initialize", "err = AUGraphParser::InitializeActiveNodesInInputChain(ThisGraph, *GetInputNode())", active, a2))
  {
    if ((*(*(AVAudioEngineGraph::GetNodeFromMap(this, *(this + 2)) + 24) + 48) & 1) == 0)
    {
      if (AVAudioEngineLogCategory(void)::once != -1)
      {
        dispatch_once(&AVAudioEngineLogCategory(void)::once, &__block_literal_global_8660);
      }

      v25 = *AVAudioEngineLogCategory(void)::category;
      if (os_log_type_enabled(*AVAudioEngineLogCategory(void)::category, OS_LOG_TYPE_ERROR))
      {
        *buf = 136316418;
        v66 = "AVAEInternal.h";
        v67 = 1024;
        v68 = 71;
        v69 = 2080;
        v70 = "AVAudioEngineGraph.mm";
        v71 = 1024;
        v72 = 1405;
        v73 = 2080;
        v74 = "Initialize";
        v75 = 2080;
        v76 = "GetInputNode()->IsInitialized()";
        _os_log_impl(&dword_1BA5AC000, v25, OS_LOG_TYPE_ERROR, "%25s:%-5d required condition is false: [%s:%d:%s: (%s)]", buf, 0x36u);
      }

      [MEMORY[0x1E695DF30] raise:@"com.apple.coreaudio.avfaudio" format:{@"required condition is false: %s", "GetInputNode()->IsInitialized()"}];
    }

    goto LABEL_46;
  }

LABEL_100:
  if (active || (*(this + 185) & 1) == 0)
  {
    goto LABEL_102;
  }

LABEL_103:
  std::recursive_mutex::unlock((v4 + 112));
  v62 = *MEMORY[0x1E69E9840];
  return active;
}

uint64_t AVAudioEngineGraph::_Connect(AVAudioEngineGraph *this, AVAudioNodeImplBase *a2, AVAudioNodeImplBase *a3, uint64_t a4, uint64_t a5, AVAudioFormat *a6)
{
  v97 = *MEMORY[0x1E69E9840];
  if (a6)
  {
    [(AVAudioFormat *)a6 sampleRate];
    if (v12 <= 0.0 || ![(AVAudioFormat *)a6 channelCount])
    {
      if (AVAudioEngineLogCategory(void)::once != -1)
      {
        dispatch_once(&AVAudioEngineLogCategory(void)::once, &__block_literal_global_8660);
      }

      v13 = *AVAudioEngineLogCategory(void)::category;
      if (os_log_type_enabled(*AVAudioEngineLogCategory(void)::category, OS_LOG_TYPE_ERROR))
      {
        buf = 136316418;
        v84 = "AVAEInternal.h";
        v85 = 1024;
        v86 = 71;
        v87 = 2080;
        v88 = "AVAudioEngineGraph.mm";
        v89 = 1024;
        v90 = 2161;
        v91 = 2080;
        v92 = "_Connect";
        v93 = 2080;
        v94 = "IsFormatSampleRateAndChannelCountValid(format)";
        _os_log_impl(&dword_1BA5AC000, v13, OS_LOG_TYPE_ERROR, "%25s:%-5d required condition is false: [%s:%d:%s: (%s)]", &buf, 0x36u);
      }

      [MEMORY[0x1E695DF30] raise:@"com.apple.coreaudio.avfaudio" format:{@"required condition is false: %s", "IsFormatSampleRateAndChannelCountValid(format)"}];
    }
  }

  v64 = *this;
  std::recursive_mutex::lock((*this + 112));
  if (!AVAudioEngineGraph::IsNodeInGraph(this, a2) || !AVAudioEngineGraph::IsNodeInGraph(this, a3))
  {
    if (AVAudioEngineLogCategory(void)::once != -1)
    {
      dispatch_once(&AVAudioEngineLogCategory(void)::once, &__block_literal_global_8660);
    }

    v14 = *AVAudioEngineLogCategory(void)::category;
    if (os_log_type_enabled(*AVAudioEngineLogCategory(void)::category, OS_LOG_TYPE_ERROR))
    {
      buf = 136316418;
      v84 = "AVAEInternal.h";
      v85 = 1024;
      v86 = 71;
      v87 = 2080;
      v88 = "AVAudioEngineGraph.mm";
      v89 = 1024;
      v90 = 2171;
      v91 = 2080;
      v92 = "_Connect";
      v93 = 2080;
      v94 = "IsNodeInGraph(inSrcImpl) && IsNodeInGraph(inDestImpl)";
      _os_log_impl(&dword_1BA5AC000, v14, OS_LOG_TYPE_ERROR, "%25s:%-5d required condition is false: [%s:%d:%s: (%s)]", &buf, 0x36u);
    }

    [MEMORY[0x1E695DF30] raise:@"com.apple.coreaudio.avfaudio" format:{@"required condition is false: %s", "IsNodeInGraph(inSrcImpl) && IsNodeInGraph(inDestImpl)"}];
  }

  v65 = a6;
  NodeFromMap = AVAudioEngineGraph::GetNodeFromMap(this, a2);
  v16 = AVAudioEngineGraph::GetNodeFromMap(this, a3);
  v82 = v16;
  v81 = 0;
  v79 = 0;
  v80 = -1;
  *&v76 = NodeFromMap;
  DWORD2(v76) = a4;
  v77 = v16;
  v78 = a5;
  if (!(*(*a2 + 104))(a2))
  {
    if (AVAudioEngineLogCategory(void)::once != -1)
    {
      dispatch_once(&AVAudioEngineLogCategory(void)::once, &__block_literal_global_8660);
    }

    v17 = *AVAudioEngineLogCategory(void)::category;
    if (os_log_type_enabled(*AVAudioEngineLogCategory(void)::category, OS_LOG_TYPE_ERROR))
    {
      buf = 136316418;
      v84 = "AVAEInternal.h";
      v85 = 1024;
      v86 = 71;
      v87 = 2080;
      v88 = "AVAudioEngineGraph.mm";
      v89 = 1024;
      v90 = 2186;
      v91 = 2080;
      v92 = "_Connect";
      v93 = 2080;
      v94 = "inSrcImpl->NumberOutputs() > 0";
      _os_log_impl(&dword_1BA5AC000, v17, OS_LOG_TYPE_ERROR, "%25s:%-5d required condition is false: [%s:%d:%s: (%s)]", &buf, 0x36u);
    }

    [MEMORY[0x1E695DF30] raise:@"com.apple.coreaudio.avfaudio" format:{@"required condition is false: %s", "inSrcImpl->NumberOutputs() > 0"}];
  }

  if (!(*(*a3 + 96))(a3) && ((*(*v16 + 96))(v16) & 1) == 0)
  {
    if (AVAudioEngineLogCategory(void)::once != -1)
    {
      dispatch_once(&AVAudioEngineLogCategory(void)::once, &__block_literal_global_8660);
    }

    v18 = *AVAudioEngineLogCategory(void)::category;
    if (os_log_type_enabled(*AVAudioEngineLogCategory(void)::category, OS_LOG_TYPE_ERROR))
    {
      buf = 136316418;
      v84 = "AVAEInternal.h";
      v85 = 1024;
      v86 = 71;
      v87 = 2080;
      v88 = "AVAudioEngineGraph.mm";
      v89 = 1024;
      v90 = 2188;
      v91 = 2080;
      v92 = "_Connect";
      v93 = 2080;
      v94 = "inDestImpl->NumberInputs() > 0 || graphNodeDest->CanResizeNumberOfInputs()";
      _os_log_impl(&dword_1BA5AC000, v18, OS_LOG_TYPE_ERROR, "%25s:%-5d required condition is false: [%s:%d:%s: (%s)]", &buf, 0x36u);
    }

    [MEMORY[0x1E695DF30] raise:@"com.apple.coreaudio.avfaudio" format:{@"required condition is false: %s", "inDestImpl->NumberInputs() > 0 || graphNodeDest->CanResizeNumberOfInputs()"}];
  }

  if ((*(this + 186) & 1) == 0)
  {
    if (v16)
    {
      v19 = *(this + 3);
      if (v19)
      {
        if (*(v16 + 3) == v19)
        {
          v20 = (*(*NodeFromMap + 120))(NodeFromMap) ^ 1;
          if (!a6)
          {
            LOBYTE(v20) = 1;
          }

          if ((v20 & 1) == 0)
          {
            *(this + 186) = 1;
          }
        }
      }
    }
  }

  if ((*(*NodeFromMap + 24))(NodeFromMap, 0, a4) == v16 && (*(*v16 + 24))(v16, 1, a5) == NodeFromMap && (!a6 || [(AVAudioFormat *)a6 isEqual:(*(*a2 + 48))(a2, a4)]))
  {
    updated = 0;
    goto LABEL_162;
  }

  __p = 0;
  v74 = 0;
  v75 = 0;
  v23 = *(*(NodeFromMap + 24) + 48);
  v24 = *(*(v16 + 3) + 48);
  v62 = v23;
  v63 = *(*(v16 + 3) + 48);
  v70 = &v70;
  v71 = &v70;
  v72 = 0;
  v67 = &v67;
  v68 = &v67;
  v69 = 0;
  if (*(this + 185) == 1 && ((v23 | v24) & 1) != 0)
  {
    if (v23)
    {
      if ((*(NodeFromMap + 32) & 2) != 0)
      {
        v66 = 0;
        AUGraphParser::GetNodeConnectionsToMixer(NodeFromMap, &v70, &v66);
      }

      IsNodeConnectedToTarget = AUGraphParser::IsNodeConnectedToTarget(0, NodeFromMap, this + 11);
      v26 = IsNodeConnectedToTarget;
      if ((v63 & 1) == 0)
      {
        if (!IsNodeConnectedToTarget)
        {
          goto LABEL_57;
        }

LABEL_56:
        AVAudioEngineGraph::SetNodesToPullEnabled(this, 0);
        goto LABEL_57;
      }
    }

    else
    {
      if ((v63 & 1) == 0)
      {
        goto LABEL_57;
      }

      v26 = 0;
    }

    if ((*(v16 + 32) & 2) != 0 && ((*(*v16 + 120))(v16) & 1) == 0)
    {
      v66 = 0;
      AUGraphParser::GetNodeConnectionsToMixer(v16, &v67, &v66);
    }

    if ((AUGraphParser::IsNodeConnectedToTarget(0, v16, this + 11) | v26))
    {
      goto LABEL_56;
    }
  }

LABEL_57:
  v28 = a5;
  v29 = v71;
  if (v71 != &v70)
  {
    while (1)
    {
      AUGraphParser::PrepareForDisconnection(this, v29[4], 0, v21, v22);
      Disconnection = AVAudioEngineGraph::MakeDisconnection(this, *(v29[4] + 24), *(v29 + 10), 0);
      if (Disconnection)
      {
        break;
      }

      v29 = v29[1];
      if (v29 == &v70)
      {
        goto LABEL_60;
      }
    }

    if (AVAudioEngineLogCategory(void)::once != -1)
    {
      dispatch_once(&AVAudioEngineLogCategory(void)::once, &__block_literal_global_8660);
    }

    v38 = *AVAudioEngineLogCategory(void)::category;
    if (os_log_type_enabled(*AVAudioEngineLogCategory(void)::category, OS_LOG_TYPE_ERROR))
    {
      buf = 136316674;
      v84 = "AVAEInternal.h";
      v85 = 1024;
      v86 = 104;
      v87 = 2080;
      v88 = "AVAudioEngineGraph.mm";
      v89 = 1024;
      v90 = 2274;
      v91 = 2080;
      v92 = "_Connect";
      v93 = 2080;
      v94 = "err = MakeDisconnection(conn.destNode->NodeImpl(), conn.destBus)";
      v95 = 1024;
      v96 = Disconnection;
      _os_log_impl(&dword_1BA5AC000, v38, OS_LOG_TYPE_ERROR, "%25s:%-5d [%s:%d:%s: (%s): error %d", &buf, 0x3Cu);
    }

    goto LABEL_133;
  }

LABEL_60:
  for (i = v68; i != &v67; i = i[1])
  {
    AUGraphParser::PrepareForDisconnection(this, i[4], 0, v21, v22);
    Disconnection = AVAudioEngineGraph::MakeDisconnection(this, *(i[4] + 24), *(i + 10), 0);
    if (Disconnection)
    {
      if (AVAudioEngineLogCategory(void)::once != -1)
      {
        dispatch_once(&AVAudioEngineLogCategory(void)::once, &__block_literal_global_8660);
      }

      v39 = *AVAudioEngineLogCategory(void)::category;
      if (os_log_type_enabled(*AVAudioEngineLogCategory(void)::category, OS_LOG_TYPE_ERROR))
      {
        buf = 136316674;
        v84 = "AVAEInternal.h";
        v85 = 1024;
        v86 = 104;
        v87 = 2080;
        v88 = "AVAudioEngineGraph.mm";
        v89 = 1024;
        v90 = 2280;
        v91 = 2080;
        v92 = "_Connect";
        v93 = 2080;
        v94 = "err = MakeDisconnection(conn.destNode->NodeImpl(), conn.destBus)";
        v95 = 1024;
        v96 = Disconnection;
        _os_log_impl(&dword_1BA5AC000, v39, OS_LOG_TYPE_ERROR, "%25s:%-5d [%s:%d:%s: (%s): error %d", &buf, 0x3Cu);
      }

      goto LABEL_133;
    }
  }

  v34 = AVAudioEngineGraph::PerformCommand(this, NodeFromMap, 4, 0, 0);
  if (v34)
  {
    if (AVAudioEngineLogCategory(void)::once != -1)
    {
      dispatch_once(&AVAudioEngineLogCategory(void)::once, &__block_literal_global_8660);
    }

    v35 = *AVAudioEngineLogCategory(void)::category;
    if (os_log_type_enabled(*AVAudioEngineLogCategory(void)::category, OS_LOG_TYPE_ERROR))
    {
      buf = 136316674;
      v84 = "AVAEInternal.h";
      v85 = 1024;
      v86 = 104;
      v87 = 2080;
      v88 = "AVAudioEngineGraph.mm";
      v89 = 1024;
      v90 = 2286;
      v91 = 2080;
      v92 = "_Connect";
      v93 = 2080;
      v94 = "PerformCommand(*graphNodeSrc, kAUUninitialize, NULL, 0)";
      v95 = 1024;
      v96 = v34;
      _os_log_impl(&dword_1BA5AC000, v35, OS_LOG_TYPE_ERROR, "%25s:%-5d [%s:%d:%s: (%s): error %d", &buf, 0x3Cu);
    }

    [MEMORY[0x1E695DF30] raise:@"com.apple.coreaudio.avfaudio" format:{@"error %d", v34}];
  }

  AUGraphParser::PrepareForDisconnection(this, v16, 0, v32, v33);
  v81 = (*(*v16 + 24))(v16, 1, v28);
  if (v81)
  {
    Disconnection = AVAudioEngineGraph::MakeDisconnection(this, a3, v28, 0);
    if (Disconnection)
    {
      if (AVAudioEngineLogCategory(void)::once != -1)
      {
        dispatch_once(&AVAudioEngineLogCategory(void)::once, &__block_literal_global_8660);
      }

      v36 = *AVAudioEngineLogCategory(void)::category;
      if (os_log_type_enabled(*AVAudioEngineLogCategory(void)::category, OS_LOG_TYPE_ERROR))
      {
        buf = 136316674;
        v84 = "AVAEInternal.h";
        v85 = 1024;
        v86 = 104;
        v87 = 2080;
        v88 = "AVAudioEngineGraph.mm";
        v89 = 1024;
        v90 = 2297;
        v91 = 2080;
        v92 = "_Connect";
        v93 = 2080;
        v37 = "err = MakeDisconnection(inDestImpl, inDestBus)";
LABEL_132:
        v94 = v37;
        v95 = 1024;
        v96 = Disconnection;
        _os_log_impl(&dword_1BA5AC000, v36, OS_LOG_TYPE_ERROR, "%25s:%-5d [%s:%d:%s: (%s): error %d", &buf, 0x3Cu);
        goto LABEL_133;
      }

      goto LABEL_133;
    }

    if (*(this + 185) == 1 && (v63 & 1) != 0)
    {
      std::vector<AUGraphNodeBaseV3 *>::push_back[abi:ne200100](&__p, &v81);
    }
  }

  if ((*(*NodeFromMap + 40))(NodeFromMap, 0, a4, &v79))
  {
    AUGraphParser::PrepareForDisconnection(this, v79, 0, v40, v41);
    Disconnection = AVAudioEngineGraph::MakeDisconnection(this, *(v79 + 3), v80, 0);
    if (Disconnection)
    {
      if (AVAudioEngineLogCategory(void)::once != -1)
      {
        dispatch_once(&AVAudioEngineLogCategory(void)::once, &__block_literal_global_8660);
      }

      v36 = *AVAudioEngineLogCategory(void)::category;
      if (os_log_type_enabled(*AVAudioEngineLogCategory(void)::category, OS_LOG_TYPE_ERROR))
      {
        buf = 136316674;
        v84 = "AVAEInternal.h";
        v85 = 1024;
        v86 = 104;
        v87 = 2080;
        v88 = "AVAudioEngineGraph.mm";
        v89 = 1024;
        v90 = 2308;
        v91 = 2080;
        v92 = "_Connect";
        v93 = 2080;
        v37 = "err = MakeDisconnection(graphNodeSrcCurrConnPoint.node->NodeImpl(), graphNodeSrcCurrConnPoint.bus)";
        goto LABEL_132;
      }

LABEL_133:
      [MEMORY[0x1E695DF30] raise:@"com.apple.coreaudio.avfaudio" format:{@"error %d", Disconnection}];
      v51 = 0;
      goto LABEL_134;
    }

    if (*(this + 185) == 1 && v62)
    {
      std::vector<AUGraphNodeBaseV3 *>::push_back[abi:ne200100](&__p, &v79);
    }
  }

  if ((*(*v16 + 96))(v16) && (*(**(v16 + 3) + 96))(*(v16 + 3)) <= v28)
  {
    (*(**(v16 + 3) + 112))(*(v16 + 3), (v28 + 1));
  }

  if ((*(*NodeFromMap + 104))(NodeFromMap) && (*(**(NodeFromMap + 24) + 104))(*(NodeFromMap + 24)) <= a4)
  {
    (*(**(NodeFromMap + 24) + 120))(*(NodeFromMap + 24), (a4 + 1));
  }

  if ((*(*v16 + 136))(v16) && *(this + 185) == 1)
  {
    v42 = (*(*a3 + 72))(a3, v28);
    if (v65)
    {
      _AVAE_Check("/Library/Caches/com.apple.xbs/Sources/AVFAudio/Source/AVFAudio/AVAudioEngine/AVAEGraph/AVAudioEngineGraph.mm", 2329, "_Connect", "[format isEqual:dstFormat]", [(AVAudioFormat *)v65 isEqual:v42]);
    }

    else if (([(*(*a2 + 48))(a2 a4)] & 1) == 0)
    {
      v61 = (*(*a2 + 64))(a2, a4, v42);
      _AVAE_Check("/Library/Caches/com.apple.xbs/Sources/AVFAudio/Source/AVFAudio/AVAudioEngine/AVAEGraph/AVAudioEngineGraph.mm", 2333, "_Connect", "inSrcImpl->SetOutputFormat(inSrcBus, dstFormat)", v61);
    }
  }

  else if (v65)
  {
    if ((*(*NodeFromMap + 136))(NodeFromMap) && *(this + 185) == 1)
    {
      v43 = (*(*a2 + 48))(a2, a4);
      _AVAE_Check("/Library/Caches/com.apple.xbs/Sources/AVFAudio/Source/AVFAudio/AVAudioEngine/AVAEGraph/AVAudioEngineGraph.mm", 2338, "_Connect", "[srcFormat isEqual:format]", [v43 isEqual:v65]);
      v44 = (*(*a3 + 80))(a3, v28, v43);
      _AVAE_Check("/Library/Caches/com.apple.xbs/Sources/AVFAudio/Source/AVFAudio/AVAudioEngine/AVAEGraph/AVAudioEngineGraph.mm", 2339, "_Connect", "inDestImpl->SetInputFormat(inDestBus, srcFormat)", v44);
    }

    else
    {
      if (((*(*a2 + 64))(a2, a4, v65) & 1) == 0)
      {
        [MEMORY[0x1E695DF30] raise:@"com.apple.coreaudio.avfaudio" format:@"Failed to set output format on source node"];
      }

      v45 = (*(*a3 + 80))(a3, v28, v65);
      _AVAE_Check("/Library/Caches/com.apple.xbs/Sources/AVFAudio/Source/AVFAudio/AVAudioEngine/AVAEGraph/AVAudioEngineGraph.mm", 2356, "_Connect", "inDestImpl->SetInputFormat(inDestBus, format)", v45);
    }
  }

  else
  {
    v46 = (*(*a2 + 48))(a2, a4);
    v47 = (*(*a3 + 80))(a3, v28, v46);
    _AVAE_Check("/Library/Caches/com.apple.xbs/Sources/AVFAudio/Source/AVFAudio/AVAudioEngine/AVAEGraph/AVAudioEngineGraph.mm", 2361, "_Connect", "inDestImpl->SetInputFormat(inDestBus, srcFormat)", v47);
  }

  v48 = *(NodeFromMap + 112);
  if (v48)
  {
    v49 = (*(**(v48 + 24) + 48))(*(v48 + 24), 0);
    if (([v49 isEqual:{(*(*a2 + 48))(a2, 0)}] & 1) == 0)
    {
      if (AVAudioEngineLogCategory(void)::once != -1)
      {
        dispatch_once(&AVAudioEngineLogCategory(void)::once, &__block_literal_global_8660);
      }

      v50 = *AVAudioEngineLogCategory(void)::category;
      if (os_log_type_enabled(*AVAudioEngineLogCategory(void)::category, OS_LOG_TYPE_ERROR))
      {
        buf = 136316418;
        v84 = "AVAEInternal.h";
        v85 = 1024;
        v86 = 71;
        v87 = 2080;
        v88 = "AVAudioEngineGraph.mm";
        v89 = 1024;
        v90 = 2367;
        v91 = 2080;
        v92 = "_Connect";
        v93 = 2080;
        v94 = "[midiInputImpl->GetOutputFormat(0) isEqual:inSrcImpl->GetOutputFormat(0)]";
        _os_log_impl(&dword_1BA5AC000, v50, OS_LOG_TYPE_ERROR, "%25s:%-5d required condition is false: [%s:%d:%s: (%s)]", &buf, 0x36u);
      }

      [MEMORY[0x1E695DF30] raise:@"com.apple.coreaudio.avfaudio" format:{@"required condition is false: %s", "[midiInputImpl->GetOutputFormat(0) isEqual:inSrcImpl->GetOutputFormat(0)]"}];
    }
  }

  if (*(this + 185) == 1 && *(*(v16 + 3) + 48) == 1 && (*(*v16 + 120))(v16) && (*(v16 + 32) & 2) != 0)
  {
    AVAudioEngineGraph::AddPendingConnection(this, 0, &v76, 0);
  }

  else
  {
    AUGraphParser::PrepareForConnection(this, &v76);
    Disconnection = AVAudioEngineGraph::MakeConnection(this, *(NodeFromMap + 24), *(v16 + 3), a4, v28, 0);
    if (Disconnection)
    {
      if (AVAudioEngineLogCategory(void)::once != -1)
      {
        dispatch_once(&AVAudioEngineLogCategory(void)::once, &__block_literal_global_8660);
      }

      v36 = *AVAudioEngineLogCategory(void)::category;
      if (os_log_type_enabled(*AVAudioEngineLogCategory(void)::category, OS_LOG_TYPE_ERROR))
      {
        buf = 136316674;
        v84 = "AVAEInternal.h";
        v85 = 1024;
        v86 = 104;
        v87 = 2080;
        v88 = "AVAudioEngineGraph.mm";
        v89 = 1024;
        v90 = 2387;
        v91 = 2080;
        v92 = "_Connect";
        v93 = 2080;
        v37 = "err = MakeConnection(currentConn)";
        goto LABEL_132;
      }

      goto LABEL_133;
    }

    if (*(this + 185) == 1)
    {
      AVAudioEngineGraph::RemovePendingConnection(this, 0, &v76, 1, 0);
      AVAudioEngineGraph::RemovePendingConnection(this, 1, &v76, 1, 0);
      v51 = 1;
      if (v62 && (v63 & 1) == 0)
      {
        std::vector<AUGraphNodeBaseV3 *>::push_back[abi:ne200100](&__p, &v82);
      }

      goto LABEL_134;
    }
  }

  v51 = 1;
LABEL_134:
  for (j = v71; j != &v70; j = *(j + 1))
  {
    if (NodeFromMap == *(j + 2))
    {
      v53 = v51;
    }

    else
    {
      v53 = 0;
    }

    if (v53 != 1 || *(j + 6) != a4)
    {
      AVAudioEngineGraph::AddPendingConnection(this, 0, j + 1, 0);
    }
  }

  v55 = v68;
  if (v68 != &v67)
  {
    v56 = v82;
    do
    {
      if (v56 == *(v55 + 4))
      {
        if (AVAudioEngineLogCategory(void)::once != -1)
        {
          dispatch_once(&AVAudioEngineLogCategory(void)::once, &__block_literal_global_8660);
        }

        v57 = *AVAudioEngineLogCategory(void)::category;
        if (os_log_type_enabled(*AVAudioEngineLogCategory(void)::category, OS_LOG_TYPE_ERROR))
        {
          buf = 136316418;
          v84 = "AVAEInternal.h";
          v85 = 1024;
          v86 = 71;
          v87 = 2080;
          v88 = "AVAudioEngineGraph.mm";
          v89 = 1024;
          v90 = 2413;
          v91 = 2080;
          v92 = "_Connect";
          v93 = 2080;
          v94 = "graphNodeDest != conn.destNode";
          _os_log_impl(&dword_1BA5AC000, v57, OS_LOG_TYPE_ERROR, "%25s:%-5d required condition is false: [%s:%d:%s: (%s)]", &buf, 0x36u);
        }

        [MEMORY[0x1E695DF30] raise:@"com.apple.coreaudio.avfaudio" format:{@"required condition is false: %s", "graphNodeDest != conn.destNode"}];
      }

      AVAudioEngineGraph::AddPendingConnection(this, 0, v55 + 1, 0);
      v55 = *(v55 + 1);
    }

    while (v55 != &v67);
  }

  updated = AVAudioEngineGraph::UpdateGraphAfterReconfig(this, &__p, 2);
  if (updated)
  {
    if (AVAudioEngineLogCategory(void)::once != -1)
    {
      dispatch_once(&AVAudioEngineLogCategory(void)::once, &__block_literal_global_8660);
    }

    v58 = *AVAudioEngineLogCategory(void)::category;
    if (os_log_type_enabled(*AVAudioEngineLogCategory(void)::category, OS_LOG_TYPE_ERROR))
    {
      buf = 136316674;
      v84 = "AVAEInternal.h";
      v85 = 1024;
      v86 = 104;
      v87 = 2080;
      v88 = "AVAudioEngineGraph.mm";
      v89 = 1024;
      v90 = 2419;
      v91 = 2080;
      v92 = "_Connect";
      v93 = 2080;
      v94 = "err = UpdateGraphAfterReconfig(&disjointNodes, graphTraversalMode)";
      v95 = 1024;
      v96 = updated;
      _os_log_impl(&dword_1BA5AC000, v58, OS_LOG_TYPE_ERROR, "%25s:%-5d [%s:%d:%s: (%s): error %d", &buf, 0x3Cu);
    }

    [MEMORY[0x1E695DF30] raise:@"com.apple.coreaudio.avfaudio" format:{@"error %d", updated}];
  }

  AVAudioEngineGraph::RemoveInactiveInternalNodes(this);
  std::__list_imp<AUGraphConnection>::clear(&v67);
  std::__list_imp<AUGraphConnection>::clear(&v70);
  if (__p)
  {
    v74 = __p;
    operator delete(__p);
  }

LABEL_162:
  std::recursive_mutex::unlock((v64 + 112));
  v59 = *MEMORY[0x1E69E9840];
  return updated;
}

void sub_1BA61AC10(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, void *__p, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, char a32)
{
  std::__list_imp<AUGraphConnection>::clear(&a16);
  std::__list_imp<AUGraphConnection>::clear(&a19);
  if (__p)
  {
    a23 = __p;
    operator delete(__p);
  }

  std::recursive_mutex::unlock((a11 + 112));
  _Unwind_Resume(a1);
}

AVAudioNode *AVAudioEngineGraph::RemoveInactiveInternalNodes(AVAudioNode *this)
{
  isa = this[2].super.isa;
  if (isa != this[2]._impl)
  {
    v2 = this;
    while (1)
    {
      v3 = *isa;
      this = AVAudioEngineGraph::GetNodeFromMap(v2, [*isa impl]);
      if (!this)
      {
        goto LABEL_13;
      }

      if ((*(this[1]._impl + 48) & 1) == 0)
      {
        v4 = this[3].super.isa;
        impl = this[3]._impl;
        if (v4 == impl)
        {
          break;
        }

        v6 = 0;
        do
        {
          if (*v4++)
          {
            ++v6;
          }
        }

        while (v4 != impl);
        if (!v6)
        {
          break;
        }
      }

      ++isa;
      v8 = *(v2 + 5);
LABEL_16:
      if (isa == v8)
      {
        return this;
      }
    }

    AVAudioEngineGraph::RemoveNode(v2, v3, 0);
LABEL_13:
    this = v3;
    v9 = *(v2 + 5);
    v10 = v9 - (isa + 1);
    if (v9 != isa + 1)
    {
      this = memmove(isa, isa + 1, v9 - (isa + 1));
    }

    v8 = (isa + v10);
    *(v2 + 5) = isa + v10;
    goto LABEL_16;
  }

  return this;
}

uint64_t AVAudioEngineGraph::_Uninitialize(AVAudioNodeImplBase **this, NSError **a2)
{
  v4 = *this;
  std::recursive_mutex::lock((*this + 112));
  v5 = AVAudioEngineGraph::Stop(this, a2);
  v6 = this[1];
  v9 = *v6;
  v7 = (v6 + 8);
  v8 = v9;
  if (v9 == v7)
  {
    Connection = v5;
  }

  else
  {
    do
    {
      Connection = AVAudioEngineGraph::PerformCommand(this, v8[5], 4, 0, 0);
      _AVAE_CheckNoErr("/Library/Caches/com.apple.xbs/Sources/AVFAudio/Source/AVFAudio/AVAudioEngine/AVAEGraph/AVAudioEngineGraph.mm", 1473, "_Uninitialize", "(err = PerformCommand(*graphNode, kAUUninitialize, NULL, 0))", Connection, a2);
      v11 = v8[1];
      if (v11)
      {
        do
        {
          v12 = v11;
          v11 = *v11;
        }

        while (v11);
      }

      else
      {
        do
        {
          v12 = v8[2];
          v13 = *v12 == v8;
          v8 = v12;
        }

        while (!v13);
      }

      v8 = v12;
    }

    while (v12 != v7);
  }

  for (i = this[18]; i != this + 17; i = i[1])
  {
    Connection = AVAudioEngineGraph::MakeConnection(this, i + 2, a2);
    _AVAE_CheckNoErr("/Library/Caches/com.apple.xbs/Sources/AVFAudio/Source/AVFAudio/AVAudioEngine/AVAEGraph/AVAudioEngineGraph.mm", 1480, "_Uninitialize", "(err = MakeConnection(conn, outErr))", Connection, a2);
  }

  for (j = this[21]; j != this + 20; j = j[1])
  {
    Connection = AVAudioEngineGraph::MakeConnection(this, j + 2, a2);
    _AVAE_CheckNoErr("/Library/Caches/com.apple.xbs/Sources/AVFAudio/Source/AVFAudio/AVAudioEngine/AVAEGraph/AVAudioEngineGraph.mm", 1483, "_Uninitialize", "(err = MakeConnection(conn, outErr))", Connection, a2);
  }

  std::__list_imp<AUGraphConnection>::clear(this + 17);
  std::__list_imp<AUGraphConnection>::clear(this + 20);
  *(this + 185) = 0;
  NodeFromMap = AVAudioEngineGraph::GetNodeFromMap(this, this[3]);
  if (NodeFromMap)
  {
    Connection = AVAudioEngineGraph::PerformCommand(this, NodeFromMap, 4, 0, 0);
    _AVAE_CheckNoErr("/Library/Caches/com.apple.xbs/Sources/AVFAudio/Source/AVFAudio/AVAudioEngine/AVAEGraph/AVAudioEngineGraph.mm", 1495, "_Uninitialize", "(err = PerformCommand(*GetOutputNode(), kAUUninitialize, NULL, 0))", Connection, a2);
  }

  v17 = AVAudioEngineGraph::GetNodeFromMap(this, this[2]);
  if (v17)
  {
    Connection = AVAudioEngineGraph::PerformCommand(this, v17, 4, 0, 0);
    _AVAE_CheckNoErr("/Library/Caches/com.apple.xbs/Sources/AVFAudio/Source/AVFAudio/AVAudioEngine/AVAEGraph/AVAudioEngineGraph.mm", 1497, "_Uninitialize", "(err = PerformCommand(*GetInputNode(), kAUUninitialize, NULL, 0))", Connection, a2);
  }

  std::recursive_mutex::unlock((v4 + 112));
  return Connection;
}

uint64_t AVAudioEngineGraph::RemoveNode(uint64_t ***this, AVAudioNode *a2, NSError **a3)
{
  v112 = *MEMORY[0x1E69E9840];
  updated = _AVAE_CheckAndReturnErr("/Library/Caches/com.apple.xbs/Sources/AVFAudio/Source/AVFAudio/AVAudioEngine/AVAEGraph/AVAudioEngineGraph.mm", 1694, "RemoveNode", "nil != inAVNode", a2 != 0, 4294967246, a3);
  if (updated)
  {
    goto LABEL_97;
  }

  v7 = *this;
  std::recursive_mutex::lock((*this + 14));
  v8 = [(AVAudioNode *)a2 impl];
  IsNodeInGraph = AVAudioEngineGraph::IsNodeInGraph(this, v8);
  updated = _AVAE_CheckAndReturnErr("/Library/Caches/com.apple.xbs/Sources/AVFAudio/Source/AVFAudio/AVAudioEngine/AVAEGraph/AVAudioEngineGraph.mm", 1702, "RemoveNode", "IsNodeInGraph(inImpl)", IsNodeInGraph, 4294967246, a3);
  if (updated)
  {
    goto LABEL_96;
  }

  NodeFromMap = AVAudioEngineGraph::GetNodeFromMap(this, v8);
  if ((*(*NodeFromMap + 128))(NodeFromMap))
  {
    v12 = (this[23] & 1) != 0 ? 0 : *(NodeFromMap[3] + 48) ^ 1;
    updated = _AVAE_CheckAndReturnErr("/Library/Caches/com.apple.xbs/Sources/AVFAudio/Source/AVFAudio/AVAudioEngine/AVAEGraph/AVAudioEngineGraph.mm", 1720, "RemoveNode", "!IsRunning() && !graphNode->IsInitialized()", v12 & 1, 4294967246, a3);
    if (updated)
    {
      goto LABEL_96;
    }
  }

  if (((NodeFromMap[7] - NodeFromMap[6]) & 0x7FFFFFFF8) == 0 && ((NodeFromMap[10] - NodeFromMap[9]) & 0x7FFFFFFF8) == 0 && !NodeFromMap[14] && NodeFromMap[16] == NodeFromMap[17])
  {
    if (*(this + 185) == 1 && (*buf = NodeFromMap, *&buf[8] = 0, *&buf[16] = NodeFromMap, *&buf[24] = 0, AVAudioEngineGraph::RemovePendingConnection(this, 0, buf, 2, a3), AVAudioEngineGraph::RemovePendingConnection(this, 1, buf, 2, a3), a3) && [(NSError *)*a3 code])
    {
      updated = [(NSError *)*a3 code];
    }

    else
    {
      v78 = this[10];
      if (v78)
      {
        AUGraphSequencerInterface::NodeStateChanged(v78, NodeFromMap, 3u, v11);
      }

      std::__tree<std::__value_type<AVAudioNodeImplBase *,AUGraphNodeBaseV3 *>,std::__map_value_compare<AVAudioNodeImplBase *,std::__value_type<AVAudioNodeImplBase *,AUGraphNodeBaseV3 *>,std::less<AVAudioNodeImplBase *>,true>,std::allocator<std::__value_type<AVAudioNodeImplBase *,AUGraphNodeBaseV3 *>>>::__erase_unique<AVAudioNodeImplBase *>(this[1], v8);
      (*(*NodeFromMap + 8))(NodeFromMap);
      updated = 0;
    }

    goto LABEL_96;
  }

  v13 = *(NodeFromMap[3] + 48);
  v97 = 0;
  v98 = 0;
  v99 = 0;
  v94 = &v94;
  v95 = &v94;
  v96 = 0;
  v91 = 0;
  v92 = 0;
  v93 = 0;
  v88 = &v88;
  __p = &v88;
  v90 = 0;
  v85 = &v85;
  v86 = &v85;
  v87 = 0;
  AUGraphNodeBase::GetValidConnections(NodeFromMap, 1, &v88);
  AUGraphNodeBase::GetValidConnections(NodeFromMap, 0, &v85);
  if (*(this + 185) == 1 && v13)
  {
    v14 = *(NodeFromMap + 8);
    if ((v14 & 3) == 0)
    {
      if (AVAudioEngineLogCategory(void)::once != -1)
      {
        dispatch_once(&AVAudioEngineLogCategory(void)::once, &__block_literal_global_8660);
      }

      v15 = *AVAudioEngineLogCategory(void)::category;
      if (os_log_type_enabled(*AVAudioEngineLogCategory(void)::category, OS_LOG_TYPE_ERROR))
      {
        *buf = 136316418;
        *&buf[4] = "AVAEInternal.h";
        *&buf[12] = 1024;
        *&buf[14] = 71;
        *&buf[18] = 2080;
        *&buf[20] = "AVAudioEngineGraph.mm";
        v101 = 1024;
        v102 = 1775;
        v103 = 2080;
        v104 = "RemoveNode";
        v105 = 2080;
        v106 = "(graphNode->IsNodeState(kAUGraphNodeState_InInputChain) || graphNode->IsNodeState(kAUGraphNodeState_InOutputChain))";
        _os_log_impl(&dword_1BA5AC000, v15, OS_LOG_TYPE_ERROR, "%25s:%-5d required condition is false: [%s:%d:%s: (%s)]", buf, 0x36u);
      }

      [MEMORY[0x1E695DF30] raise:@"com.apple.coreaudio.avfaudio" format:{@"required condition is false: %s", "(graphNode->IsNodeState(kAUGraphNodeState_InInputChain) || graphNode->IsNodeState(kAUGraphNodeState_InOutputChain))"}];
      v14 = *(NodeFromMap + 8);
    }

    if ((v14 & 2) != 0)
    {
      buf[0] = 0;
      AUGraphParser::GetNodeConnectionsToMixer(NodeFromMap, &v94, buf);
    }

    if (AUGraphParser::IsNodeConnectedToTarget(0, NodeFromMap, this + 11))
    {
      AVAudioEngineGraph::SetNodesToPullEnabled(this, 0);
    }
  }

  v82 = NodeFromMap[14];
  if (v82)
  {
    *buf = NodeFromMap[14];
    *&buf[8] = NodeFromMap;
    *&buf[16] = 0;
    *&buf[24] = 0;
    (*(*NodeFromMap + 360))(NodeFromMap, buf);
  }

  v79 = v8;
  v84 = NodeFromMap;
  if (*(*(*NodeFromMap[3] + 256))(NodeFromMap[3]) == 1635085673)
  {
    if (v82)
    {
      std::vector<AUGraphNodeBaseV3 *>::__assign_with_size[abi:ne200100]<AUGraphNodeBaseV3 **,AUGraphNodeBaseV3 **>(&v91, NodeFromMap[16], NodeFromMap[17], (NodeFromMap[17] - NodeFromMap[16]) >> 3);
    }

    v19 = NodeFromMap[16];
    v20 = NodeFromMap[17];
    while (v19 != v20)
    {
      v21 = *v19;
      *buf = NodeFromMap;
      *&buf[8] = v21;
      *&buf[16] = 0;
      *&buf[24] = 0;
      (*(*v21 + 360))(v21, buf);
      ++v19;
    }
  }

  v22 = v95;
  if (v95 != &v94)
  {
    v80 = v7;
    do
    {
      AUGraphParser::PrepareForDisconnection(this, v22[4], a3, v17, v18);
      Disconnection = AVAudioEngineGraph::MakeDisconnection(this, *(v22[4] + 24), *(v22 + 10), a3);
      if (!_AVAE_CheckNoErr("/Library/Caches/com.apple.xbs/Sources/AVFAudio/Source/AVFAudio/AVAudioEngine/AVAEGraph/AVAudioEngineGraph.mm", 1822, "RemoveNode", "err = MakeDisconnection(conn.destNode->NodeImpl(), conn.destBus, outErr)", Disconnection, a3))
      {
        goto LABEL_86;
      }

      if (NodeFromMap == v22[2])
      {
        v24 = v90;
        if (v90)
        {
          v25 = __p;
          v26 = *(__p + 1);
          v27 = *(__p + 2);
          v28 = *(__p + 6);
          v29 = *(__p + 4);
          v30 = *(__p + 10);
          v31 = *__p;
          *(v31 + 8) = v26;
          *v26 = v31;
          v90 = v24 - 1;
          operator delete(v25);
          v32 = v22[4];
          v33 = *(v22 + 10);
          *buf = v27;
          *&buf[8] = v28;
          *&buf[16] = v32;
          *&buf[24] = v33;
          AVAudioEngineGraph::AddPendingConnection(this, 0, buf, a3);
          AUGraphParser::PrepareForDisconnection(this, v29, a3, v34, v35);
          v36 = AVAudioEngineGraph::MakeDisconnection(this, v29[3], v30, a3);
          v7 = v80;
          if (!_AVAE_CheckNoErr("/Library/Caches/com.apple.xbs/Sources/AVFAudio/Source/AVFAudio/AVAudioEngine/AVAEGraph/AVAudioEngineGraph.mm", 1838, "RemoveNode", "err = MakeDisconnection(currSrcConn.destNode->NodeImpl(), currSrcConn.destBus, outErr)", v36, a3))
          {
            goto LABEL_86;
          }
        }
      }

      else
      {
        AVAudioEngineGraph::AddPendingConnection(this, 0, v22 + 1, a3);
      }

      v22 = v22[1];
    }

    while (v22 != &v94);
  }

  v37 = AVAudioEngineGraph::PerformCommand(this, NodeFromMap, 4, 0, 0);
  _AVAE_CheckNoErr("/Library/Caches/com.apple.xbs/Sources/AVFAudio/Source/AVFAudio/AVAudioEngine/AVAEGraph/AVAudioEngineGraph.mm", 1844, "RemoveNode", "err = PerformCommand(*graphNode, kAUUninitialize, NULL, 0)", v37, a3);
  Connection = _AVAE_CheckAndReturnErr("/Library/Caches/com.apple.xbs/Sources/AVFAudio/Source/AVFAudio/AVAudioEngine/AVAEGraph/AVAudioEngineGraph.mm", 4038, "DisconnectInactiveNode", "false == inNode->IsInitialized()", (*(NodeFromMap[3] + 48) & 1) == 0, 4294967246, a3);
  if (!Connection)
  {
    v98 = 0;
    *buf = buf;
    *&buf[8] = buf;
    *&buf[16] = 0;
    v109 = &v109;
    v110 = &v109;
    v111 = 0;
    AUGraphNodeBase::GetValidConnections(NodeFromMap, 1, buf);
    AUGraphNodeBase::GetValidConnections(NodeFromMap, 0, &v109);
    if (*&buf[16] | v111)
    {
      v67 = *&buf[8];
      if (*&buf[8] == buf)
      {
        Connection = 0;
LABEL_103:
        v68 = v110;
        if (v110 == &v109)
        {
LABEL_106:
          if (*&buf[16] == v111)
          {
            v69 = *&buf[8];
            if (*&buf[8] != buf)
            {
              v70 = v110;
              do
              {
                Connection = AVAudioEngineGraph::MakeConnection(this, *(*(v69 + 16) + 24), *(v70[4] + 24), *(v69 + 24), *(v70 + 10), a3);
                if (!_AVAE_CheckNoErr("/Library/Caches/com.apple.xbs/Sources/AVFAudio/Source/AVFAudio/AVAudioEngine/AVAEGraph/AVAudioEngineGraph.mm", 4083, "DisconnectInactiveNode", "err = MakeConnection(itInp->srcNode->NodeImpl(), itOut->destNode->NodeImpl(), itInp->srcBus, itOut->destBus, outErr)", Connection, a3))
                {
                  break;
                }

                v72 = v97;
                v71 = v98;
                if (v97 == v98)
                {
                  v74 = v7;
                  v73 = v97;
                }

                else
                {
                  v73 = v97;
                  while (*v73 != *(v69 + 16))
                  {
                    if (++v73 == v98)
                    {
                      v74 = v7;
                      v73 = v98;
                      goto LABEL_117;
                    }
                  }

                  v74 = v7;
                }

LABEL_117:
                if (v98 != (v73 + 1))
                {
                  memmove(v73, v73 + 1, v98 - (v73 + 1));
                }

                v75 = v71 - 8;
                if (v72 == v71 - 8)
                {
                  v7 = v74;
                }

                else
                {
                  v76 = v71 - v72 - 8;
                  v7 = v74;
                  while (*v72 != v70[4])
                  {
                    v72 += 8;
                    v76 -= 8;
                    if (!v76)
                    {
                      v72 = v71 - 8;
                      break;
                    }
                  }
                }

                v77 = v75 - (v72 + 8);
                if (v75 != v72 + 8)
                {
                  memmove(v72, v72 + 8, v75 - (v72 + 8));
                }

                v98 = &v72[v77];
                v69 = *(v69 + 8);
                v70 = v70[1];
              }

              while (v69 != buf);
            }
          }
        }

        else
        {
          while (1)
          {
            AUGraphParser::PrepareForDisconnection(this, v68[4], 0, v39, v40);
            Connection = AVAudioEngineGraph::MakeDisconnection(this, *(v68[4] + 24), *(v68 + 10), a3);
            if (!_AVAE_CheckNoErr("/Library/Caches/com.apple.xbs/Sources/AVFAudio/Source/AVFAudio/AVAudioEngine/AVAEGraph/AVAudioEngineGraph.mm", 4068, "DisconnectInactiveNode", "err = MakeDisconnection(conn.destNode->NodeImpl(), conn.destBus, outErr)", Connection, a3))
            {
              break;
            }

            std::vector<AUGraphNodeBaseV3 *>::push_back[abi:ne200100](&v97, v68 + 4);
            v68 = v68[1];
            if (v68 == &v109)
            {
              goto LABEL_106;
            }
          }
        }
      }

      else
      {
        while (1)
        {
          Connection = AVAudioEngineGraph::MakeDisconnection(this, *(*(v67 + 32) + 24), *(v67 + 40), a3);
          if (!_AVAE_CheckNoErr("/Library/Caches/com.apple.xbs/Sources/AVFAudio/Source/AVFAudio/AVAudioEngine/AVAEGraph/AVAudioEngineGraph.mm", 4059, "DisconnectInactiveNode", "err = MakeDisconnection(conn.destNode->NodeImpl(), conn.destBus, outErr)", Connection, a3))
          {
            break;
          }

          std::vector<AUGraphNodeBaseV3 *>::push_back[abi:ne200100](&v97, (v67 + 16));
          v67 = *(v67 + 8);
          if (v67 == buf)
          {
            goto LABEL_103;
          }
        }
      }
    }

    else
    {
      Connection = 0;
    }

    std::__list_imp<AUGraphConnection>::clear(&v109);
    std::__list_imp<AUGraphConnection>::clear(buf);
  }

  if (!_AVAE_CheckNoErr("/Library/Caches/com.apple.xbs/Sources/AVFAudio/Source/AVFAudio/AVAudioEngine/AVAEGraph/AVAudioEngineGraph.mm", 1847, "RemoveNode", "err = DisconnectInactiveNode(graphNode, true , disjointNodes, outErr)", Connection, a3))
  {
    goto LABEL_86;
  }

  v42 = this;
  if (*(this + 185) != 1)
  {
    goto LABEL_83;
  }

  v81 = v7;
  v43 = 0;
  v109 = 0x100000000;
  do
  {
    v83 = v43;
    v44 = *(&v109 + v43);
    *buf = buf;
    *&buf[8] = buf;
    *&buf[16] = 0;
    AVAudioEngineGraph::GetPendingConnection(v42, v44, v84, buf);
    for (i = *&buf[8]; i != buf; i = *(i + 8))
    {
      v46 = *(i + 16) && *(i + 24) != -1 && *(i + 32) && *(i + 40) != -1;
      if (!_AVAE_CheckAndReturnErr("/Library/Caches/com.apple.xbs/Sources/AVFAudio/Source/AVFAudio/AVAudioEngine/AVAEGraph/AVAudioEngineGraph.mm", 1860, "RemoveNode", "conn.IsSrcAndDestValid()", v46, 4294967246, a3))
      {
        if (v84 == *(i + 16))
        {
          if (!v90)
          {
            goto LABEL_72;
          }

          v53 = *(__p + 2);
          v54 = *(__p + 6);
          if ((*(*v53 + 24))(v53, 0, v54) || (*(**(i + 32) + 24))(*(i + 32), 1, *(i + 40)))
          {
            v55 = 0;
          }

          else
          {
            *(i + 16) = v53;
            *(i + 24) = v54;
            v55 = 1;
          }

          v56 = __p;
          v58 = *__p;
          v57 = *(__p + 1);
          *(v58 + 8) = v57;
          *v57 = v58;
          --v90;
          operator delete(v56);
          v42 = this;
          if ((v55 & 1) == 0)
          {
            goto LABEL_72;
          }
        }

        else
        {
          if (_AVAE_CheckAndReturnErr("/Library/Caches/com.apple.xbs/Sources/AVFAudio/Source/AVFAudio/AVAudioEngine/AVAEGraph/AVAudioEngineGraph.mm", 1884, "RemoveNode", "graphNode == conn.destNode", v84 == *(i + 32), 4294967246, a3))
          {
            continue;
          }

          if (!v87)
          {
            goto LABEL_72;
          }

          v47 = *(v86 + 4);
          v48 = *(v86 + 10);
          if ((*(**(i + 16) + 24))(*(i + 16), 0, *(i + 24)) || (*(*v47 + 24))(v47, 1, v48))
          {
            v49 = 0;
          }

          else
          {
            *(i + 32) = v47;
            *(i + 40) = v48;
            v49 = 1;
          }

          v50 = v86;
          v52 = *v86;
          v51 = *(v86 + 1);
          *(v52 + 8) = v51;
          *v51 = v52;
          --v87;
          operator delete(v50);
          v42 = this;
          if (!v49)
          {
LABEL_72:
            AVAudioEngineGraph::RemovePendingConnection(v42, v44, i + 16, 1, a3);
            continue;
          }
        }

        if (v44 || ((*(**(i + 32) + 120))(*(i + 32)) & 1) != 0)
        {
          AVAudioEngineGraph::AddPendingConnection(v42, v44, (i + 16), a3);
        }

        else
        {
          AUGraphParser::PrepareForConnection(v42, i + 16);
          v59 = AVAudioEngineGraph::MakeConnection(v42, (i + 16), a3);
          _AVAE_CheckNoErr("/Library/Caches/com.apple.xbs/Sources/AVFAudio/Source/AVFAudio/AVAudioEngine/AVAEGraph/AVAudioEngineGraph.mm", 1912, "RemoveNode", "err = MakeConnection(conn, outErr)", v59, a3);
        }
      }
    }

    std::__list_imp<AUGraphConnection>::clear(buf);
    v43 = v83 + 4;
  }

  while (v83 != 4);
  v7 = v81;
  if (v82 && *(*(**(v82 + 24) + 256))(*(v82 + 24)) == 1635085673)
  {
    v60 = v91;
    v61 = v92;
    while (v60 != v61)
    {
      v62 = *v60;
      *buf = v82;
      *&buf[8] = v62;
      *&buf[16] = 0;
      *&buf[24] = 0;
      (*(*v62 + 352))(v62, buf);
      ++v60;
    }
  }

LABEL_83:
  v63 = *(v42 + 10);
  if (v63)
  {
    AUGraphSequencerInterface::NodeStateChanged(v63, v84, 3u, v41);
  }

  std::__tree<std::__value_type<AVAudioNodeImplBase *,AUGraphNodeBaseV3 *>,std::__map_value_compare<AVAudioNodeImplBase *,std::__value_type<AVAudioNodeImplBase *,AUGraphNodeBaseV3 *>,std::less<AVAudioNodeImplBase *>,true>,std::allocator<std::__value_type<AVAudioNodeImplBase *,AUGraphNodeBaseV3 *>>>::__erase_unique<AVAudioNodeImplBase *>(*(v42 + 1), v79);
  ((*v84)[1])(v84);
LABEL_86:
  updated = AVAudioEngineGraph::UpdateGraphAfterReconfig(this, &v97, 2);
  if (updated)
  {
    if (AVAudioEngineLogCategory(void)::once != -1)
    {
      dispatch_once(&AVAudioEngineLogCategory(void)::once, &__block_literal_global_8660);
    }

    v64 = *AVAudioEngineLogCategory(void)::category;
    if (os_log_type_enabled(*AVAudioEngineLogCategory(void)::category, OS_LOG_TYPE_ERROR))
    {
      *buf = 136316674;
      *&buf[4] = "AVAEInternal.h";
      *&buf[12] = 1024;
      *&buf[14] = 104;
      *&buf[18] = 2080;
      *&buf[20] = "AVAudioEngineGraph.mm";
      v101 = 1024;
      v102 = 1940;
      v103 = 2080;
      v104 = "RemoveNode";
      v105 = 2080;
      v106 = "err = UpdateGraphAfterReconfig(&disjointNodes, graphTraversalMode)";
      v107 = 1024;
      v108 = updated;
      _os_log_impl(&dword_1BA5AC000, v64, OS_LOG_TYPE_ERROR, "%25s:%-5d [%s:%d:%s: (%s): error %d", buf, 0x3Cu);
    }

    [MEMORY[0x1E695DF30] raise:@"com.apple.coreaudio.avfaudio" format:{@"error %d", updated}];
  }

  std::__list_imp<AUGraphConnection>::clear(&v85);
  std::__list_imp<AUGraphConnection>::clear(&v88);
  if (v91)
  {
    operator delete(v91);
  }

  std::__list_imp<AUGraphConnection>::clear(&v94);
  if (v97)
  {
    v98 = v97;
    operator delete(v97);
  }

LABEL_96:
  std::recursive_mutex::unlock((v7 + 14));
LABEL_97:
  v65 = *MEMORY[0x1E69E9840];
  return updated;
}

void std::__tree<std::__value_type<AVAudioNodeImplBase *,AUGraphNodeBaseV3 *>,std::__map_value_compare<AVAudioNodeImplBase *,std::__value_type<AVAudioNodeImplBase *,AUGraphNodeBaseV3 *>,std::less<AVAudioNodeImplBase *>,true>,std::allocator<std::__value_type<AVAudioNodeImplBase *,AUGraphNodeBaseV3 *>>>::__erase_unique<AVAudioNodeImplBase *>(uint64_t **a1, unint64_t a2)
{
  v4 = (a1 + 1);
  v3 = a1[1];
  if (v3)
  {
    v5 = v4;
    v6 = v3;
    do
    {
      v7 = v6[4];
      v8 = v7 >= a2;
      v9 = v7 < a2;
      if (v8)
      {
        v5 = v6;
      }

      v6 = v6[v9];
    }

    while (v6);
    if (v5 != v4 && v5[4] <= a2)
    {
      v10 = v5[1];
      if (v10)
      {
        do
        {
          v11 = v10;
          v10 = *v10;
        }

        while (v10);
      }

      else
      {
        v12 = v5;
        do
        {
          v11 = v12[2];
          v13 = *v11 == v12;
          v12 = v11;
        }

        while (!v13);
      }

      if (*a1 == v5)
      {
        *a1 = v11;
      }

      a1[2] = (a1[2] - 1);
      std::__tree_remove[abi:ne200100]<std::__tree_node_base<void *> *>(v3, v5);

      operator delete(v5);
    }
  }
}

void *std::vector<AUGraphNodeBaseV3 *>::__assign_with_size[abi:ne200100]<AUGraphNodeBaseV3 **,AUGraphNodeBaseV3 **>(void *result, char *__src, char *a3, unint64_t a4)
{
  v6 = result;
  v7 = result[2];
  v8 = *result;
  if (a4 > (v7 - *result) >> 3)
  {
    if (v8)
    {
      result[1] = v8;
      operator delete(v8);
      v7 = 0;
      *v6 = 0;
      v6[1] = 0;
      v6[2] = 0;
    }

    if (!(a4 >> 61))
    {
      v9 = v7 >> 2;
      if (v7 >> 2 <= a4)
      {
        v9 = a4;
      }

      if (v7 >= 0x7FFFFFFFFFFFFFF8)
      {
        v10 = 0x1FFFFFFFFFFFFFFFLL;
      }

      else
      {
        v10 = v9;
      }

      if (!(v10 >> 61))
      {
        std::__allocate_at_least[abi:ne200100]<std::allocator<AUGraphNodeBaseV3 *>>(v10);
      }
    }

    std::vector<AUGraphNodeBaseV3 *>::__throw_length_error[abi:ne200100]();
  }

  v11 = result[1];
  v12 = v11 - v8;
  if (a4 <= (v11 - v8) >> 3)
  {
    v15 = a3 - __src;
    if (v15)
    {
      result = memmove(*result, __src, v15);
    }

    v14 = &v8[v15];
  }

  else
  {
    v13 = &__src[v12];
    if (v11 != v8)
    {
      result = memmove(*result, __src, v12);
      v11 = v6[1];
    }

    if (a3 != v13)
    {
      result = memmove(v11, v13, a3 - v13);
    }

    v14 = &v11[a3 - v13];
  }

  v6[1] = v14;
  return result;
}

void *AVAudioEngineGraph::GetPendingConnection(uint64_t a1, int a2, uint64_t a3, void *a4)
{
  result = std::__list_imp<AUGraphConnection>::clear(a4);
  v8 = 160;
  if (!a2)
  {
    v8 = 136;
  }

  v9 = (a1 + v8);
  for (i = v9[1]; i != v9; i = i[1])
  {
    v11 = *(a3 + 24);
    if (v11 == *(i[2] + 24) || v11 == *(i[4] + 24))
    {
      operator new();
    }
  }

  return result;
}

uint64_t AVAudioEngineGraph::UpdateGraphAfterReconfig(AVAudioEngineGraph *this, uint64_t **a2, int a3)
{
  v43 = *MEMORY[0x1E69E9840];
  if (*(this + 185) != 1)
  {
    goto LABEL_51;
  }

  if (a2)
  {
    v5 = *a2;
    v6 = a2[1];
    while (v5 != v6)
    {
      v7 = *v5;
      memset(buf, 0, 24);
      __p = 0;
      p_p = 0;
      v33 = 0;
      v30[0] = AVAudioEngineGraph::GetNodeFromMap(this, *(this + 2));
      std::vector<AUGraphNodeBaseV3 *>::push_back[abi:ne200100](buf, v30);
      v30[0] = AVAudioEngineGraph::GetNodeFromMap(this, *(this + 3));
      std::vector<AUGraphNodeBaseV3 *>::push_back[abi:ne200100](&__p, v30);
      if ((AUGraphParser::IsNodeConnectedToTarget(1, v7, buf) & 1) == 0 && (AUGraphParser::IsNodeConnectedToTarget(0, v7, &__p) & 1) == 0)
      {
        AUGraphParser::UninitializeNodeChain(this, 1, v7);
        AUGraphParser::UninitializeNodeChain(this, 0, v7);
      }

      if (__p)
      {
        p_p = __p;
        operator delete(__p);
      }

      if (*buf)
      {
        *&buf[8] = *buf;
        operator delete(*buf);
      }

      ++v5;
    }
  }

  v8 = this + 160;
  for (i = *(this + 21); i != v8; i = *(i + 8))
  {
    v10 = *(i + 32);
    if (v10)
    {
      *(v10 + 32) = 0;
    }

    AVAudioEngineGraph::MakeVirtualConnection(this, i + 16);
  }

  v11 = *(this + 3);
  NodeFromMap = AVAudioEngineGraph::GetNodeFromMap(this, v11);
  if (a3 == 2 && NodeFromMap)
  {
    v13 = *(this + 18);
    __p = &__p;
    p_p = &__p;
    v33 = 0;
    if (v13 != (this + 136))
    {
      operator new();
    }

    v30[0] = v30;
    v30[1] = v30;
    v30[2] = 0;
    std::__list_imp<AUGraphConnection>::clear(v30);
    std::__list_imp<AUGraphConnection>::clear(&__p);
  }

  else
  {
    v14 = AVAudioEngineGraph::GetNodeFromMap(this, v11);
    if (a3 == 1 && v14)
    {
      for (j = *(this + 18); j != (this + 136); j = j[1])
      {
        Connection = AVAudioEngineGraph::MakeConnection(this, j + 2, 0);
        if (Connection)
        {
          if (AVAudioEngineLogCategory(void)::once != -1)
          {
            dispatch_once(&AVAudioEngineLogCategory(void)::once, &__block_literal_global_8660);
          }

          v17 = *AVAudioEngineLogCategory(void)::category;
          if (os_log_type_enabled(*AVAudioEngineLogCategory(void)::category, OS_LOG_TYPE_ERROR))
          {
            *buf = 136316674;
            *&buf[4] = "AVAEInternal.h";
            *&buf[12] = 1024;
            *&buf[14] = 104;
            *&buf[18] = 2080;
            *&buf[20] = "AVAudioEngineGraph.mm";
            v35 = 1024;
            v36 = 4264;
            v37 = 2080;
            v38 = "UpdateGraphAfterReconfig";
            v39 = 2080;
            v40 = "MakeConnection(conn)";
            v41 = 1024;
            v42 = Connection;
            _os_log_impl(&dword_1BA5AC000, v17, OS_LOG_TYPE_ERROR, "%25s:%-5d [%s:%d:%s: (%s): error %d", buf, 0x3Cu);
          }

          [MEMORY[0x1E695DF30] raise:@"com.apple.coreaudio.avfaudio" format:{@"error %d", Connection}];
        }
      }

      for (k = *(this + 21); k != v8; k = *(k + 8))
      {
        v19 = AVAudioEngineGraph::MakeConnection(this, (k + 16), 0);
        if (v19)
        {
          if (AVAudioEngineLogCategory(void)::once != -1)
          {
            dispatch_once(&AVAudioEngineLogCategory(void)::once, &__block_literal_global_8660);
          }

          v20 = *AVAudioEngineLogCategory(void)::category;
          if (os_log_type_enabled(*AVAudioEngineLogCategory(void)::category, OS_LOG_TYPE_ERROR))
          {
            *buf = 136316674;
            *&buf[4] = "AVAEInternal.h";
            *&buf[12] = 1024;
            *&buf[14] = 104;
            *&buf[18] = 2080;
            *&buf[20] = "AVAudioEngineGraph.mm";
            v35 = 1024;
            v36 = 4267;
            v37 = 2080;
            v38 = "UpdateGraphAfterReconfig";
            v39 = 2080;
            v40 = "MakeConnection(conn)";
            v41 = 1024;
            v42 = v19;
            _os_log_impl(&dword_1BA5AC000, v20, OS_LOG_TYPE_ERROR, "%25s:%-5d [%s:%d:%s: (%s): error %d", buf, 0x3Cu);
          }

          [MEMORY[0x1E695DF30] raise:@"com.apple.coreaudio.avfaudio" format:{@"error %d", v19}];
        }
      }

      std::__list_imp<AUGraphConnection>::clear(this + 17);
      std::__list_imp<AUGraphConnection>::clear(this + 20);
      v21 = AVAudioEngineGraph::GetNodeFromMap(this, *(this + 3));
      AUGraphParser::InitializeActiveNodesInOutputChain(this, v21, &__p);
    }
  }

  v22 = *(this + 2);
  if (!AVAudioEngineGraph::GetNodeFromMap(this, v22))
  {
    AVAudioEngineGraph::SetNodesToPullEnabled(this, 0);
    *(this + 12) = *(this + 11);
    goto LABEL_50;
  }

  v23 = AVAudioEngineGraph::GetNodeFromMap(this, v22);
  active = AUGraphParser::InitializeActiveNodesInInputChain(this, v23, v24);
  if (!active)
  {
LABEL_50:
    AUGraphParser::UpdateGraphAttributes(this, v25);
    AVAudioEngineGraph::MonitorState(this);
LABEL_51:
    active = 0;
    goto LABEL_52;
  }

  if (AVAudioEngineLogCategory(void)::once != -1)
  {
    dispatch_once(&AVAudioEngineLogCategory(void)::once, &__block_literal_global_8660);
  }

  v27 = *AVAudioEngineLogCategory(void)::category;
  if (os_log_type_enabled(*AVAudioEngineLogCategory(void)::category, OS_LOG_TYPE_ERROR))
  {
    *buf = 136316674;
    *&buf[4] = "AVAEInternal.h";
    *&buf[12] = 1024;
    *&buf[14] = 104;
    *&buf[18] = 2080;
    *&buf[20] = "AVAudioEngineGraph.mm";
    v35 = 1024;
    v36 = 4285;
    v37 = 2080;
    v38 = "UpdateGraphAfterReconfig";
    v39 = 2080;
    v40 = "err = AUGraphParser::InitializeActiveNodesInInputChain(ThisGraph, *GetInputNode())";
    v41 = 1024;
    v42 = active;
    _os_log_impl(&dword_1BA5AC000, v27, OS_LOG_TYPE_ERROR, "%25s:%-5d [%s:%d:%s: (%s): error %d", buf, 0x3Cu);
  }

  [MEMORY[0x1E695DF30] raise:@"com.apple.coreaudio.avfaudio" format:{@"error %d", active}];
LABEL_52:
  v28 = *MEMORY[0x1E69E9840];
  return active;
}

void sub_1BA61D550(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, void *__p, uint64_t a21, uint64_t a22, void *a23, uint64_t a24)
{
  std::__list_imp<AUGraphConnection>::clear(&a17);
  std::__list_imp<AUGraphConnection>::clear(&__p);
  _Unwind_Resume(a1);
}

void AVAudioEngineGraph::Start(AVAudioNodeImplBase **this, NSError **a2)
{
  v31 = *MEMORY[0x1E69E9840];
  if (a2)
  {
    *a2 = 0;
  }

  v4 = *this;
  std::recursive_mutex::lock((*this + 112));
  if ((this[23] & 1) == 0)
  {
    NodeFromMap = AVAudioEngineGraph::GetNodeFromMap(this, this[3]);
    v6 = 3;
    if (!NodeFromMap)
    {
      v6 = 2;
    }

    v7 = AVAudioEngineGraph::GetNodeFromMap(this, this[v6]);
    if (!v7)
    {
      if (AVAudioEngineLogCategory(void)::once != -1)
      {
        dispatch_once(&AVAudioEngineLogCategory(void)::once, &__block_literal_global_8660);
      }

      v8 = *AVAudioEngineLogCategory(void)::category;
      if (os_log_type_enabled(*AVAudioEngineLogCategory(void)::category, OS_LOG_TYPE_ERROR))
      {
        *buf = 136316418;
        v20 = "AVAEInternal.h";
        v21 = 1024;
        v22 = 71;
        v23 = 2080;
        v24 = "AVAudioEngineGraph.mm";
        v25 = 1024;
        v26 = 1533;
        v27 = 2080;
        v28 = "Start";
        v29 = 2080;
        v30 = "ioNode != NULL";
        _os_log_impl(&dword_1BA5AC000, v8, OS_LOG_TYPE_ERROR, "%25s:%-5d required condition is false: [%s:%d:%s: (%s)]", buf, 0x36u);
      }

      [MEMORY[0x1E695DF30] raise:@"com.apple.coreaudio.avfaudio" format:{@"required condition is false: %s", "ioNode != NULL"}];
    }

    if (AVAudioEngineGraph::Initialize(this, a2))
    {
      goto LABEL_29;
    }

    v9 = this[1];
    v12 = *v9;
    v10 = (v9 + 8);
    v11 = v12;
    if (v12 != v10)
    {
      do
      {
        v13 = v11[5];
        if (*(v13[3] + 48) == 1)
        {
          (*(*v13 + 208))(v13);
        }

        v14 = v11[1];
        if (v14)
        {
          do
          {
            v15 = v14;
            v14 = *v14;
          }

          while (v14);
        }

        else
        {
          do
          {
            v15 = v11[2];
            v16 = *v15 == v11;
            v11 = v15;
          }

          while (!v16);
        }

        v11 = v15;
      }

      while (v15 != v10);
    }

    v17 = (*(*v7 + 128))(v7) ? (*(*v7 + 224))(v7) : 4294967246;
    if (_AVAE_CheckNoErr("/Library/Caches/com.apple.xbs/Sources/AVFAudio/Source/AVFAudio/AVAudioEngine/AVAEGraph/AVAudioEngineGraph.mm", 1549, "Start", "err = PerformCommand(*ioNode, kAUStartIO, NULL, 0)", v17, a2))
    {
      *(this + 184) = 1;
      AVAudioEngineGraph::MonitorState(this);
    }

    if (v17 || (this[23] & 1) == 0)
    {
LABEL_29:
      AVAudioEngineGraph::_Stop(this, a2);
    }
  }

  std::recursive_mutex::unlock((v4 + 112));
  v18 = *MEMORY[0x1E69E9840];
}

void AVAudioEngineGraph::AddNode(AVAudioEngineGraph *this, AVAudioNode *a2)
{
  v23 = *MEMORY[0x1E69E9840];
  if (!a2)
  {
    if (AVAudioEngineLogCategory(void)::once != -1)
    {
      dispatch_once(&AVAudioEngineLogCategory(void)::once, &__block_literal_global_8660);
    }

    v4 = *AVAudioEngineLogCategory(void)::category;
    if (os_log_type_enabled(*AVAudioEngineLogCategory(void)::category, OS_LOG_TYPE_ERROR))
    {
      buf[0] = 136316418;
      *&buf[1] = "AVAEInternal.h";
      v17 = 1024;
      *v18 = 71;
      *&v18[4] = 2080;
      *&v18[6] = "AVAudioEngineGraph.mm";
      v19 = 1024;
      *v20 = 1629;
      *&v20[4] = 2080;
      *&v20[6] = "AddNode";
      v21 = 2080;
      v22 = "nil != inAVNode";
      _os_log_impl(&dword_1BA5AC000, v4, OS_LOG_TYPE_ERROR, "%25s:%-5d required condition is false: [%s:%d:%s: (%s)]", buf, 0x36u);
    }

    [MEMORY[0x1E695DF30] raise:@"com.apple.coreaudio.avfaudio" format:{@"required condition is false: %s", "nil != inAVNode"}];
  }

  v5 = *this;
  std::recursive_mutex::lock((*this + 112));
  v6 = [(AVAudioNode *)a2 impl];
  if (!v6 || (v7 = [(AVAudioNode *)a2 impl], *(*(*v7 + 256))(v7) == 1635086197))
  {
    if (AVAudioEngineLogCategory(void)::once != -1)
    {
      dispatch_once(&AVAudioEngineLogCategory(void)::once, &__block_literal_global_8660);
    }

    v8 = *AVAudioEngineLogCategory(void)::category;
    if (os_log_type_enabled(*AVAudioEngineLogCategory(void)::category, OS_LOG_TYPE_ERROR))
    {
      buf[0] = 136316418;
      *&buf[1] = "AVAEInternal.h";
      v17 = 1024;
      *v18 = 71;
      *&v18[4] = 2080;
      *&v18[6] = "AVAudioEngineGraph.mm";
      v19 = 1024;
      *v20 = 1634;
      *&v20[4] = 2080;
      *&v20[6] = "AddNode";
      v21 = 2080;
      v22 = "inImpl != nil && !IsIONode(inAVNode)";
      _os_log_impl(&dword_1BA5AC000, v8, OS_LOG_TYPE_ERROR, "%25s:%-5d required condition is false: [%s:%d:%s: (%s)]", buf, 0x36u);
    }

    [MEMORY[0x1E695DF30] raise:@"com.apple.coreaudio.avfaudio" format:{@"required condition is false: %s", "inImpl != nil && !IsIONode(inAVNode)"}];
  }

  if (!AVAudioEngineGraph::IsNodeInGraph(this, v6))
  {
    v9 = [(AVAudioNode *)a2 impl];
    v10 = (*(*v9 + 256))(v9);
    if (v10[1] != 1836281964 && *v10 != 1635085688)
    {
      v12 = [(AVAudioNode *)a2 impl];
      if (*(*(*v12 + 256))(v12) == 1635085673)
      {
        operator new();
      }

      v13 = [(AVAudioNode *)a2 impl];
      if ((*(*v13 + 408))(v13))
      {
        operator new();
      }

      v14 = [(AVAudioNode *)a2 impl];
      if ((*(*v14 + 416))(v14))
      {
        operator new();
      }

      operator new();
    }

    operator new();
  }

  std::recursive_mutex::unlock((v5 + 112));
  v15 = *MEMORY[0x1E69E9840];
}

void sub_1BA61E774(_Unwind_Exception *a1)
{
  MEMORY[0x1BFAF5800](v2, 0x80C40B8603338);
  AUGraphNodeBaseV3::~AUGraphNodeBaseV3(v1);
  MEMORY[0x1BFAF5800](v1, 0x10A1C40220A4F1BLL);
  std::recursive_mutex::unlock((v3 + 112));
  _Unwind_Resume(a1);
}

uint64_t std::__tree<std::__value_type<AVAudioNodeImplBase *,AUGraphNodeBaseV3 *>,std::__map_value_compare<AVAudioNodeImplBase *,std::__value_type<AVAudioNodeImplBase *,AUGraphNodeBaseV3 *>,std::less<AVAudioNodeImplBase *>,true>,std::allocator<std::__value_type<AVAudioNodeImplBase *,AUGraphNodeBaseV3 *>>>::__emplace_unique_key_args<AVAudioNodeImplBase *,std::pair<AVAudioNodeImplBase *,AUGraphNodeBaseV3 *>>(uint64_t result, unint64_t a2)
{
  v2 = *(result + 8);
  if (!v2)
  {
LABEL_7:
    operator new();
  }

  while (1)
  {
    while (1)
    {
      v3 = v2;
      v4 = v2[4];
      if (v4 <= a2)
      {
        break;
      }

      v2 = *v3;
      if (!*v3)
      {
        goto LABEL_7;
      }
    }

    if (v4 >= a2)
    {
      return result;
    }

    v2 = v3[1];
    if (!v2)
    {
      goto LABEL_7;
    }
  }
}

uint64_t *std::__tree<std::__value_type<AVAudioNodeImplBase *,AUGraphNodeBaseV3 *>,std::__map_value_compare<AVAudioNodeImplBase *,std::__value_type<AVAudioNodeImplBase *,AUGraphNodeBaseV3 *>,std::less<AVAudioNodeImplBase *>,true>,std::allocator<std::__value_type<AVAudioNodeImplBase *,AUGraphNodeBaseV3 *>>>::__insert_node_at(uint64_t **a1, uint64_t a2, uint64_t **a3, uint64_t *a4)
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

uint64_t AUGraphNodeBaseV3::InputBlock(AUGraphNodeBaseV3 *this)
{
  v1 = *(this + 15);
  if (v1)
  {
    return *v1;
  }

  else
  {
    return 0;
  }
}

uint64_t AUGraphNodeBaseV3::RenderBlock(AUGraphNodeBaseV3 *this)
{
  v1 = *(this + 13);
  if (v1)
  {
    return *v1;
  }

  else
  {
    return 0;
  }
}

void AUGraphNodeV3::~AUGraphNodeV3(const void ***this)
{
  AUGraphNodeBaseV3::~AUGraphNodeBaseV3(this);

  JUMPOUT(0x1BFAF5800);
}

void AVAudioEngineGraph::AddIONode(AVAudioEngineGraph *this, AVAudioNode *a2, int a3)
{
  v26 = *MEMORY[0x1E69E9840];
  if (!a2)
  {
    if (AVAudioEngineLogCategory(void)::once != -1)
    {
      dispatch_once(&AVAudioEngineLogCategory(void)::once, &__block_literal_global_8660);
    }

    v6 = *AVAudioEngineLogCategory(void)::category;
    if (os_log_type_enabled(*AVAudioEngineLogCategory(void)::category, OS_LOG_TYPE_ERROR))
    {
      buf[0] = 136316418;
      *&buf[1] = "AVAEInternal.h";
      v16 = 1024;
      v17 = 71;
      v18 = 2080;
      v19 = "AVAudioEngineGraph.mm";
      v20 = 1024;
      v21 = 1665;
      v22 = 2080;
      v23 = "AddIONode";
      v24 = 2080;
      v25 = "nil != inAVNode";
      _os_log_impl(&dword_1BA5AC000, v6, OS_LOG_TYPE_ERROR, "%25s:%-5d required condition is false: [%s:%d:%s: (%s)]", buf, 0x36u);
    }

    [MEMORY[0x1E695DF30] raise:@"com.apple.coreaudio.avfaudio" format:{@"required condition is false: %s", "nil != inAVNode"}];
  }

  v7 = *this;
  std::recursive_mutex::lock((*this + 112));
  v8 = [(AVAudioNode *)a2 impl];
  if (!v8 || (v9 = [(AVAudioNode *)a2 impl], *(*(*v9 + 256))(v9) != 1635086197))
  {
    if (AVAudioEngineLogCategory(void)::once != -1)
    {
      dispatch_once(&AVAudioEngineLogCategory(void)::once, &__block_literal_global_8660);
    }

    v10 = *AVAudioEngineLogCategory(void)::category;
    if (os_log_type_enabled(*AVAudioEngineLogCategory(void)::category, OS_LOG_TYPE_ERROR))
    {
      buf[0] = 136316418;
      *&buf[1] = "AVAEInternal.h";
      v16 = 1024;
      v17 = 71;
      v18 = 2080;
      v19 = "AVAudioEngineGraph.mm";
      v20 = 1024;
      v21 = 1670;
      v22 = 2080;
      v23 = "AddIONode";
      v24 = 2080;
      v25 = "inImpl != nil && IsIONode(inAVNode)";
      _os_log_impl(&dword_1BA5AC000, v10, OS_LOG_TYPE_ERROR, "%25s:%-5d required condition is false: [%s:%d:%s: (%s)]", buf, 0x36u);
    }

    [MEMORY[0x1E695DF30] raise:@"com.apple.coreaudio.avfaudio" format:{@"required condition is false: %s", "inImpl != nil && IsIONode(inAVNode)"}];
  }

  if (a3)
  {
    v11 = 16;
  }

  else
  {
    v11 = 24;
  }

  v12 = *(this + v11);
  if (v8 != v12)
  {
    if (v12 || AVAudioEngineGraph::IsNodeInGraph(this, v8))
    {
      if (AVAudioEngineLogCategory(void)::once != -1)
      {
        dispatch_once(&AVAudioEngineLogCategory(void)::once, &__block_literal_global_8660);
      }

      v13 = *AVAudioEngineLogCategory(void)::category;
      if (os_log_type_enabled(*AVAudioEngineLogCategory(void)::category, OS_LOG_TYPE_ERROR))
      {
        buf[0] = 136316418;
        *&buf[1] = "AVAEInternal.h";
        v16 = 1024;
        v17 = 71;
        v18 = 2080;
        v19 = "AVAudioEngineGraph.mm";
        v20 = 1024;
        v21 = 1678;
        v22 = 2080;
        v23 = "AddIONode";
        v24 = 2080;
        v25 = "NULL == ioNodeImpl && !IsNodeInGraph(inImpl)";
        _os_log_impl(&dword_1BA5AC000, v13, OS_LOG_TYPE_ERROR, "%25s:%-5d required condition is false: [%s:%d:%s: (%s)]", buf, 0x36u);
      }

      [MEMORY[0x1E695DF30] raise:@"com.apple.coreaudio.avfaudio" format:{@"required condition is false: %s", "NULL == ioNodeImpl && !IsNodeInGraph(inImpl)"}];
    }

    if (*(this + 187) == 1)
    {
      operator new();
    }

    operator new();
  }

  std::recursive_mutex::unlock((v7 + 112));
  v14 = *MEMORY[0x1E69E9840];
}

void sub_1BA61EF2C(_Unwind_Exception *a1)
{
  MEMORY[0x1BFAF5800](v1, 0x10A1C400CDEF94BLL);
  std::recursive_mutex::unlock((v2 + 112));
  _Unwind_Resume(a1);
}

void AVAudioEngineGraph::RemoveIONode(AVAudioEngineGraph *this, AVAudioNode *a2, int a3, NSError **a4)
{
  if (!_AVAE_CheckAndReturnErr("/Library/Caches/com.apple.xbs/Sources/AVFAudio/Source/AVFAudio/AVAudioEngine/AVAEGraph/AVAudioEngineGraph.mm", 1956, "RemoveIONode", "nil != inAVNode", a2 != 0, 4294967246, a4))
  {
    v8 = *this;
    std::recursive_mutex::lock((*this + 112));
    v9 = [(AVAudioNode *)a2 impl];
    IsNodeInGraph = AVAudioEngineGraph::IsNodeInGraph(this, v9);
    if (!_AVAE_CheckAndReturnErr("/Library/Caches/com.apple.xbs/Sources/AVFAudio/Source/AVFAudio/AVAudioEngine/AVAEGraph/AVAudioEngineGraph.mm", 1962, "RemoveIONode", "IsNodeInGraph(inImpl)", IsNodeInGraph, 4294967246, a4))
    {
      NodeFromMap = AVAudioEngineGraph::GetNodeFromMap(this, v9);
      v12 = 24;
      if (a3)
      {
        v12 = 16;
      }

      v13 = NodeFromMap == AVAudioEngineGraph::GetNodeFromMap(this, *(this + v12));
      _AVAE_CheckAndReturnErr("/Library/Caches/com.apple.xbs/Sources/AVFAudio/Source/AVFAudio/AVAudioEngine/AVAEGraph/AVAudioEngineGraph.mm", 1967, "RemoveIONode", "(isInputNode && graphNode == GetInputNode()) || (!isInputNode && graphNode == GetOutputNode())", v13, 4294967246, a4);
      if (*(this + 184))
      {
        v14 = 0;
      }

      else
      {
        v14 = *(this + 185) ^ 1;
      }

      if (!_AVAE_CheckAndReturnErr("/Library/Caches/com.apple.xbs/Sources/AVFAudio/Source/AVFAudio/AVAudioEngine/AVAEGraph/AVAudioEngineGraph.mm", 1968, "RemoveIONode", "!IsRunning() && !IsInitialized()", v14 & 1, 4294967246, a4))
      {
        v15 = AVAudioEngineGraph::RemoveNode(this, a2, a4);
        if (_AVAE_CheckNoErr("/Library/Caches/com.apple.xbs/Sources/AVFAudio/Source/AVFAudio/AVAudioEngine/AVAEGraph/AVAudioEngineGraph.mm", 1980, "RemoveIONode", "err = RemoveNode(inAVNode, outErr)", v15, a4))
        {
          if (a3)
          {
            *(this + 2) = 0;
            AVAudioEngineGraph::SetNodesToPullEnabled(this, 0);
            *(this + 12) = *(this + 11);
          }

          else
          {
            *(this + 3) = 0;
          }
        }
      }
    }

    std::recursive_mutex::unlock((v8 + 112));
  }
}

uint64_t AUGraphSequencerInterface::GetOutputAudioUnit(AVAudioNodeImplBase ***this, unint64_t a2, unint64_t a3, AudioComponentDescription *a4)
{
  v28 = *MEMORY[0x1E69E9840];
  if (a2 | a3)
  {
    if (a2)
    {
      *a2 = 0;
    }

    if (a3)
    {
      *a3 = 0;
      *(a3 + 8) = 0;
      *(a3 + 16) = 0;
    }
  }

  else
  {
    if (AVAudioEngineLogCategory(void)::once != -1)
    {
      dispatch_once(&AVAudioEngineLogCategory(void)::once, &__block_literal_global_8660);
    }

    v7 = *AVAudioEngineLogCategory(void)::category;
    if (os_log_type_enabled(*AVAudioEngineLogCategory(void)::category, OS_LOG_TYPE_ERROR))
    {
      *buf = 136316418;
      v17 = "AVAEInternal.h";
      v18 = 1024;
      v19 = 71;
      v20 = 2080;
      v21 = "AVAudioEngineGraph.mm";
      v22 = 1024;
      v23 = 4717;
      v24 = 2080;
      v25 = "GetOutputAudioUnit";
      v26 = 2080;
      v27 = "outUnit || outDesc";
      _os_log_impl(&dword_1BA5AC000, v7, OS_LOG_TYPE_ERROR, "%25s:%-5d required condition is false: [%s:%d:%s: (%s)]", buf, 0x36u);
    }

    [MEMORY[0x1E695DF30] raise:@"com.apple.coreaudio.avfaudio" format:{@"required condition is false: %s", "outUnit || outDesc"}];
  }

  v8 = *this;
  v9 = *v8;
  std::recursive_mutex::lock((*v8 + 112));
  NodeFromMap = AVAudioEngineGraph::GetNodeFromMap(v8, v8[3]);
  if (!NodeFromMap)
  {
    if (AVAudioEngineLogCategory(void)::once != -1)
    {
      dispatch_once(&AVAudioEngineLogCategory(void)::once, &__block_literal_global_8660);
    }

    v11 = *AVAudioEngineLogCategory(void)::category;
    if (os_log_type_enabled(*AVAudioEngineLogCategory(void)::category, OS_LOG_TYPE_ERROR))
    {
      *buf = 136316418;
      v17 = "AVAEInternal.h";
      v18 = 1024;
      v19 = 71;
      v20 = 2080;
      v21 = "AVAudioEngineGraph.mm";
      v22 = 1024;
      v23 = 4730;
      v24 = 2080;
      v25 = "GetOutputAudioUnit";
      v26 = 2080;
      v27 = "outputNode";
      _os_log_impl(&dword_1BA5AC000, v11, OS_LOG_TYPE_ERROR, "%25s:%-5d required condition is false: [%s:%d:%s: (%s)]", buf, 0x36u);
    }

    [MEMORY[0x1E695DF30] raise:@"com.apple.coreaudio.avfaudio" format:{@"required condition is false: %s", "outputNode"}];
  }

  if (a2)
  {
    *a2 = (*(**(NodeFromMap + 24) + 224))(*(NodeFromMap + 24));
  }

  if (a3)
  {
    v12 = (*(**(NodeFromMap + 24) + 256))(*(NodeFromMap + 24));
    v13 = *v12;
    *(a3 + 16) = *(v12 + 16);
    *a3 = v13;
  }

  std::recursive_mutex::unlock((v9 + 112));
  v14 = *MEMORY[0x1E69E9840];
  return 0;
}

uint64_t AUGraphSequencerInterface::UnregisterRenderCallback(AVAudioNodeImplBase ***this, void *a2, int (*a3)(void *, unsigned int *, const AudioTimeStamp *, unsigned int, unsigned int, AudioBufferList *), void *a4)
{
  v21 = *MEMORY[0x1E69E9840];
  v6 = *this;
  v7 = **this;
  std::recursive_mutex::lock((v7 + 112));
  NodeFromMap = AVAudioEngineGraph::GetNodeFromMap(v6, v6[3]);
  if (!NodeFromMap)
  {
    if (AVAudioEngineLogCategory(void)::once != -1)
    {
      dispatch_once(&AVAudioEngineLogCategory(void)::once, &__block_literal_global_8660);
    }

    v9 = *AVAudioEngineLogCategory(void)::category;
    if (os_log_type_enabled(*AVAudioEngineLogCategory(void)::category, OS_LOG_TYPE_ERROR))
    {
      *buf = 136316418;
      *&buf[4] = "AVAEInternal.h";
      *&buf[12] = 1024;
      *&buf[14] = 71;
      v13 = 2080;
      v14 = "AVAudioEngineGraph.mm";
      v15 = 1024;
      v16 = 4654;
      v17 = 2080;
      v18 = "UnregisterRenderCallback";
      v19 = 2080;
      v20 = "outputNode";
      _os_log_impl(&dword_1BA5AC000, v9, OS_LOG_TYPE_ERROR, "%25s:%-5d required condition is false: [%s:%d:%s: (%s)]", buf, 0x36u);
    }

    [MEMORY[0x1E695DF30] raise:@"com.apple.coreaudio.avfaudio" format:{@"required condition is false: %s", "outputNode"}];
  }

  *buf = a2;
  *&buf[8] = a3;
  (*(*NodeFromMap + 272))(NodeFromMap, buf);
  std::recursive_mutex::unlock((v7 + 112));
  v10 = *MEMORY[0x1E69E9840];
  return 0;
}

uint64_t AUGraphSequencerInterface::RegisterRenderCallback(AVAudioNodeImplBase ***this, void *a2, int (*a3)(void *, unsigned int *, const AudioTimeStamp *, unsigned int, unsigned int, AudioBufferList *), void *a4)
{
  v21 = *MEMORY[0x1E69E9840];
  v6 = *this;
  v7 = **this;
  std::recursive_mutex::lock((v7 + 112));
  NodeFromMap = AVAudioEngineGraph::GetNodeFromMap(v6, v6[3]);
  if (!NodeFromMap)
  {
    if (AVAudioEngineLogCategory(void)::once != -1)
    {
      dispatch_once(&AVAudioEngineLogCategory(void)::once, &__block_literal_global_8660);
    }

    v9 = *AVAudioEngineLogCategory(void)::category;
    if (os_log_type_enabled(*AVAudioEngineLogCategory(void)::category, OS_LOG_TYPE_ERROR))
    {
      *buf = 136316418;
      *&buf[4] = "AVAEInternal.h";
      *&buf[12] = 1024;
      *&buf[14] = 71;
      v13 = 2080;
      v14 = "AVAudioEngineGraph.mm";
      v15 = 1024;
      v16 = 4637;
      v17 = 2080;
      v18 = "RegisterRenderCallback";
      v19 = 2080;
      v20 = "outputNode";
      _os_log_impl(&dword_1BA5AC000, v9, OS_LOG_TYPE_ERROR, "%25s:%-5d required condition is false: [%s:%d:%s: (%s)]", buf, 0x36u);
    }

    [MEMORY[0x1E695DF30] raise:@"com.apple.coreaudio.avfaudio" format:{@"required condition is false: %s", "outputNode"}];
  }

  *buf = a2;
  *&buf[8] = a3;
  (*(*NodeFromMap + 264))(NodeFromMap, buf);
  std::recursive_mutex::unlock((v7 + 112));
  v10 = *MEMORY[0x1E69E9840];
  return 0;
}

uint64_t AUGraphSequencerInterface::RegisterAUStatusCallback(AUGraphSequencerInterface *this, void *a2, void (*a3)(void *, OpaqueAudioComponentInstance *, int), void *a4)
{
  v4 = *(this + 3);
  if (!v4)
  {
    operator new();
  }

  *v4 = a2;
  v4[1] = a3;
  return 0;
}

uint64_t AUGraphSequencerInterface::IsGraphRunning(uint64_t **this, void *a2)
{
  v2 = *this;
  v3 = **this;
  std::recursive_mutex::lock((v3 + 112));
  v4 = *(v2 + 184);
  std::recursive_mutex::unlock((v3 + 112));
  return v4;
}

uint64_t AVAudioEngineGraph::_DisconnectInput(AVAudioEngineGraph *this, AVAudioNodeImplBase *a2, uint64_t a3)
{
  v46 = *MEMORY[0x1E69E9840];
  v6 = *this;
  std::recursive_mutex::lock((*this + 112));
  if (!AVAudioEngineGraph::IsNodeInGraph(this, a2))
  {
    if (AVAudioEngineLogCategory(void)::once != -1)
    {
      dispatch_once(&AVAudioEngineLogCategory(void)::once, &__block_literal_global_8660);
    }

    v7 = *AVAudioEngineLogCategory(void)::category;
    if (os_log_type_enabled(*AVAudioEngineLogCategory(void)::category, OS_LOG_TYPE_ERROR))
    {
      *buf = 136316418;
      *&buf[4] = "AVAEInternal.h";
      v36 = 1024;
      *v37 = 71;
      *&v37[4] = 2080;
      *&v37[6] = "AVAudioEngineGraph.mm";
      v38 = 1024;
      v39 = 2701;
      v40 = 2080;
      v41 = "_DisconnectInput";
      v42 = 2080;
      v43 = "IsNodeInGraph(inDestImpl)";
      _os_log_impl(&dword_1BA5AC000, v7, OS_LOG_TYPE_ERROR, "%25s:%-5d required condition is false: [%s:%d:%s: (%s)]", buf, 0x36u);
    }

    [MEMORY[0x1E695DF30] raise:@"com.apple.coreaudio.avfaudio" format:{@"required condition is false: %s", "IsNodeInGraph(inDestImpl)"}];
  }

  NodeFromMap = AVAudioEngineGraph::GetNodeFromMap(this, a2);
  v34 = NodeFromMap;
  v9 = (*(*NodeFromMap + 24))(NodeFromMap, 1, a3);
  v33 = v9;
  if (!v9)
  {
    updated = 0;
    goto LABEL_41;
  }

  __p = 0;
  v31 = 0;
  v32 = 0;
  v10 = *(NodeFromMap[3] + 48);
  v27 = &v27;
  v28 = &v27;
  v29 = 0;
  if ((*(*NodeFromMap + 120))(NodeFromMap))
  {
    AVAudioEngineGraph::MakeDisconnection(this, a2, a3, 0);
    goto LABEL_31;
  }

  if (((*(*NodeFromMap + 128))(NodeFromMap) & v10) == 1)
  {
    if (*(this + 184) == 1)
    {
      if (AVAudioEngineLogCategory(void)::once != -1)
      {
        dispatch_once(&AVAudioEngineLogCategory(void)::once, &__block_literal_global_8660);
      }

      v12 = *AVAudioEngineLogCategory(void)::category;
      if (os_log_type_enabled(*AVAudioEngineLogCategory(void)::category, OS_LOG_TYPE_ERROR))
      {
        *buf = 136316418;
        *&buf[4] = "AVAEInternal.h";
        v36 = 1024;
        *v37 = 71;
        *&v37[4] = 2080;
        *&v37[6] = "AVAudioEngineGraph.mm";
        v38 = 1024;
        v39 = 2728;
        v40 = 2080;
        v41 = "_DisconnectInput";
        v42 = 2080;
        v43 = "!IsRunning()";
        _os_log_impl(&dword_1BA5AC000, v12, OS_LOG_TYPE_ERROR, "%25s:%-5d required condition is false: [%s:%d:%s: (%s)]", buf, 0x36u);
      }

      [MEMORY[0x1E695DF30] raise:@"com.apple.coreaudio.avfaudio" format:{@"required condition is false: %s", "!IsRunning()"}];
    }

    v13 = *(this + 2);
    if (v13)
    {
      v14 = NodeFromMap[3] != v13;
    }

    else
    {
      v14 = 1;
    }

    AUGraphParser::UninitializeNodeChain(this, v14, v9);
    Disconnection = AVAudioEngineGraph::MakeDisconnection(this, a2, a3, 0);
    if (!Disconnection)
    {
      goto LABEL_31;
    }

    if (AVAudioEngineLogCategory(void)::once != -1)
    {
      dispatch_once(&AVAudioEngineLogCategory(void)::once, &__block_literal_global_8660);
    }

    v16 = *AVAudioEngineLogCategory(void)::category;
    if (os_log_type_enabled(*AVAudioEngineLogCategory(void)::category, OS_LOG_TYPE_ERROR))
    {
      *buf = 136316674;
      *&buf[4] = "AVAEInternal.h";
      v36 = 1024;
      *v37 = 104;
      *&v37[4] = 2080;
      *&v37[6] = "AVAudioEngineGraph.mm";
      v38 = 1024;
      v39 = 2733;
      v40 = 2080;
      v41 = "_DisconnectInput";
      v42 = 2080;
      v43 = "err = MakeDisconnection(inDestImpl, inDestBus)";
      v44 = 1024;
      v45 = Disconnection;
      _os_log_impl(&dword_1BA5AC000, v16, OS_LOG_TYPE_ERROR, "%25s:%-5d [%s:%d:%s: (%s): error %d", buf, 0x3Cu);
    }

    goto LABEL_30;
  }

  if (*(this + 185) == 1 && v10)
  {
    if ((NodeFromMap[4] & 2) != 0)
    {
      buf[0] = 0;
      AUGraphParser::GetNodeConnectionsToMixer(NodeFromMap, &v27, buf);
    }

    if (AUGraphParser::IsNodeConnectedToTarget(0, NodeFromMap, this + 11))
    {
      AVAudioEngineGraph::SetNodesToPullEnabled(this, 0);
    }
  }

  v20 = v28;
  if (v28 != &v27)
  {
    while (1)
    {
      v21 = AVAudioEngineGraph::MakeDisconnection(this, *(*(v20 + 4) + 24), *(v20 + 10), 0);
      if (v21)
      {
        break;
      }

      if (NodeFromMap == *(v20 + 4))
      {
        if (AVAudioEngineLogCategory(void)::once != -1)
        {
          dispatch_once(&AVAudioEngineLogCategory(void)::once, &__block_literal_global_8660);
        }

        v22 = *AVAudioEngineLogCategory(void)::category;
        if (os_log_type_enabled(*AVAudioEngineLogCategory(void)::category, OS_LOG_TYPE_ERROR))
        {
          *buf = 136316418;
          *&buf[4] = "AVAEInternal.h";
          v36 = 1024;
          *v37 = 71;
          *&v37[4] = 2080;
          *&v37[6] = "AVAudioEngineGraph.mm";
          v38 = 1024;
          v39 = 2771;
          v40 = 2080;
          v41 = "_DisconnectInput";
          v42 = 2080;
          v43 = "graphNode != conn.destNode";
          _os_log_impl(&dword_1BA5AC000, v22, OS_LOG_TYPE_ERROR, "%25s:%-5d required condition is false: [%s:%d:%s: (%s)]", buf, 0x36u);
        }

        [MEMORY[0x1E695DF30] raise:@"com.apple.coreaudio.avfaudio" format:{@"required condition is false: %s", "graphNode != conn.destNode"}];
      }

      AVAudioEngineGraph::AddPendingConnection(this, 0, v20 + 1, 0);
      v20 = *(v20 + 1);
      if (v20 == &v27)
      {
        goto LABEL_53;
      }
    }

    if (AVAudioEngineLogCategory(void)::once != -1)
    {
      dispatch_once(&AVAudioEngineLogCategory(void)::once, &__block_literal_global_8660);
    }

    v26 = *AVAudioEngineLogCategory(void)::category;
    if (os_log_type_enabled(*AVAudioEngineLogCategory(void)::category, OS_LOG_TYPE_ERROR))
    {
      *buf = 136316674;
      *&buf[4] = "AVAEInternal.h";
      v36 = 1024;
      *v37 = 104;
      *&v37[4] = 2080;
      *&v37[6] = "AVAudioEngineGraph.mm";
      v38 = 1024;
      v39 = 2766;
      v40 = 2080;
      v41 = "_DisconnectInput";
      v42 = 2080;
      v43 = "err = MakeDisconnection(conn.destNode->NodeImpl(), conn.destBus)";
      v44 = 1024;
      v45 = v21;
      _os_log_impl(&dword_1BA5AC000, v26, OS_LOG_TYPE_ERROR, "%25s:%-5d [%s:%d:%s: (%s): error %d", buf, 0x3Cu);
    }

    [MEMORY[0x1E695DF30] raise:@"com.apple.coreaudio.avfaudio" format:{@"error %d", v21}];
    goto LABEL_31;
  }

LABEL_53:
  v23 = AVAudioEngineGraph::PerformCommand(this, NodeFromMap, 4, 0, 0);
  if (v23)
  {
    if (AVAudioEngineLogCategory(void)::once != -1)
    {
      dispatch_once(&AVAudioEngineLogCategory(void)::once, &__block_literal_global_8660);
    }

    v24 = *AVAudioEngineLogCategory(void)::category;
    if (os_log_type_enabled(*AVAudioEngineLogCategory(void)::category, OS_LOG_TYPE_ERROR))
    {
      *buf = 136316674;
      *&buf[4] = "AVAEInternal.h";
      v36 = 1024;
      *v37 = 104;
      *&v37[4] = 2080;
      *&v37[6] = "AVAudioEngineGraph.mm";
      v38 = 1024;
      v39 = 2776;
      v40 = 2080;
      v41 = "_DisconnectInput";
      v42 = 2080;
      v43 = "PerformCommand(*graphNode, kAUUninitialize, NULL, 0)";
      v44 = 1024;
      v45 = v23;
      _os_log_impl(&dword_1BA5AC000, v24, OS_LOG_TYPE_ERROR, "%25s:%-5d [%s:%d:%s: (%s): error %d", buf, 0x3Cu);
    }

    [MEMORY[0x1E695DF30] raise:@"com.apple.coreaudio.avfaudio" format:{@"error %d", v23}];
  }

  Disconnection = AVAudioEngineGraph::MakeDisconnection(this, a2, a3, 0);
  if (Disconnection)
  {
    if (AVAudioEngineLogCategory(void)::once != -1)
    {
      dispatch_once(&AVAudioEngineLogCategory(void)::once, &__block_literal_global_8660);
    }

    v25 = *AVAudioEngineLogCategory(void)::category;
    if (os_log_type_enabled(*AVAudioEngineLogCategory(void)::category, OS_LOG_TYPE_ERROR))
    {
      *buf = 136316674;
      *&buf[4] = "AVAEInternal.h";
      v36 = 1024;
      *v37 = 104;
      *&v37[4] = 2080;
      *&v37[6] = "AVAudioEngineGraph.mm";
      v38 = 1024;
      v39 = 2779;
      v40 = 2080;
      v41 = "_DisconnectInput";
      v42 = 2080;
      v43 = "err = MakeDisconnection(inDestImpl, inDestBus)";
      v44 = 1024;
      v45 = Disconnection;
      _os_log_impl(&dword_1BA5AC000, v25, OS_LOG_TYPE_ERROR, "%25s:%-5d [%s:%d:%s: (%s): error %d", buf, 0x3Cu);
    }

LABEL_30:
    [MEMORY[0x1E695DF30] raise:@"com.apple.coreaudio.avfaudio" format:{@"error %d", Disconnection}];
  }

LABEL_31:
  if (*(this + 185) == 1)
  {
    memset(buf, 0, sizeof(buf));
    *&v37[2] = NodeFromMap;
    *&v37[10] = a3;
    AVAudioEngineGraph::RemovePendingConnection(this, 0, buf, 1, 0);
    memset(buf, 0, sizeof(buf));
    *&v37[2] = NodeFromMap;
    *&v37[10] = a3;
    AVAudioEngineGraph::RemovePendingConnection(this, 1, buf, 1, 0);
  }

  std::vector<AUGraphNodeBaseV3 *>::push_back[abi:ne200100](&__p, &v34);
  std::vector<AUGraphNodeBaseV3 *>::push_back[abi:ne200100](&__p, &v33);
  updated = AVAudioEngineGraph::UpdateGraphAfterReconfig(this, &__p, 2);
  if (updated)
  {
    if (AVAudioEngineLogCategory(void)::once != -1)
    {
      dispatch_once(&AVAudioEngineLogCategory(void)::once, &__block_literal_global_8660);
    }

    v17 = *AVAudioEngineLogCategory(void)::category;
    if (os_log_type_enabled(*AVAudioEngineLogCategory(void)::category, OS_LOG_TYPE_ERROR))
    {
      *buf = 136316674;
      *&buf[4] = "AVAEInternal.h";
      v36 = 1024;
      *v37 = 104;
      *&v37[4] = 2080;
      *&v37[6] = "AVAudioEngineGraph.mm";
      v38 = 1024;
      v39 = 2795;
      v40 = 2080;
      v41 = "_DisconnectInput";
      v42 = 2080;
      v43 = "err = UpdateGraphAfterReconfig(&disjointNodes, graphTraversalMode)";
      v44 = 1024;
      v45 = updated;
      _os_log_impl(&dword_1BA5AC000, v17, OS_LOG_TYPE_ERROR, "%25s:%-5d [%s:%d:%s: (%s): error %d", buf, 0x3Cu);
    }

    [MEMORY[0x1E695DF30] raise:@"com.apple.coreaudio.avfaudio" format:{@"error %d", updated}];
  }

  std::__list_imp<AUGraphConnection>::clear(&v27);
  if (__p)
  {
    v31 = __p;
    operator delete(__p);
  }

LABEL_41:
  std::recursive_mutex::unlock((v6 + 112));
  v18 = *MEMORY[0x1E69E9840];
  return updated;
}

void sub_1BA6204A8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, void *__p, uint64_t a19)
{
  std::__list_imp<AUGraphConnection>::clear(&a15);
  if (__p)
  {
    a19 = __p;
    operator delete(__p);
  }

  std::recursive_mutex::unlock((a12 + 112));
  _Unwind_Resume(a1);
}

uint64_t std::list<AUGraphConnection>::splice(uint64_t result, uint64_t *a2, uint64_t a3, void *a4, void *a5)
{
  if (a4 != a5)
  {
    v5 = *a5;
    if (result != a3)
    {
      if (v5 == a4)
      {
        v6 = 1;
      }

      else
      {
        v7 = -1;
        v8 = a4;
        do
        {
          v8 = v8[1];
          ++v7;
        }

        while (v8 != v5);
        v6 = v7 + 2;
      }

      *(a3 + 16) -= v6;
      *(result + 16) += v6;
    }

    v9 = v5[1];
    v10 = *a4;
    *(v10 + 8) = v9;
    *v9 = v10;
    v11 = *a2;
    *(v11 + 8) = a4;
    *a4 = v11;
    *a2 = v5;
    v5[1] = a2;
  }

  return result;
}

uint64_t AVAudioEngineGraph::ConnectMIDI(AVAudioEngineGraph *a1, void *a2, void *a3, void *a4, uint64_t a5, uint64_t a6)
{
  v82 = *MEMORY[0x1E69E9840];
  v8 = 0x1E695D000uLL;
  if (!a2 || !a3 || ![a3 count])
  {
    if (AVAudioEngineLogCategory(void)::once != -1)
    {
      dispatch_once(&AVAudioEngineLogCategory(void)::once, &__block_literal_global_8660);
    }

    v9 = *AVAudioEngineLogCategory(void)::category;
    if (os_log_type_enabled(*AVAudioEngineLogCategory(void)::category, OS_LOG_TYPE_ERROR))
    {
      *buf = 136316418;
      *&buf[4] = "AVAEInternal.h";
      *&buf[12] = 1024;
      *&buf[14] = 71;
      *&buf[18] = 2080;
      *&buf[20] = "AVAudioEngineGraph.mm";
      *&buf[28] = 1024;
      *&buf[30] = 2901;
      v76 = 2080;
      v77 = "ConnectMIDI";
      v78 = 2080;
      v79 = "inSourceAVNode && inDestAVNodes && inDestAVNodes.count > 0";
      _os_log_impl(&dword_1BA5AC000, v9, OS_LOG_TYPE_ERROR, "%25s:%-5d required condition is false: [%s:%d:%s: (%s)]", buf, 0x36u);
    }

    [MEMORY[0x1E695DF30] raise:@"com.apple.coreaudio.avfaudio" format:{@"required condition is false: %s", "inSourceAVNode && inDestAVNodes && inDestAVNodes.count > 0"}];
  }

  v10 = [a2 impl];
  if (!v10)
  {
    if (AVAudioEngineLogCategory(void)::once != -1)
    {
      dispatch_once(&AVAudioEngineLogCategory(void)::once, &__block_literal_global_8660);
    }

    v11 = *AVAudioEngineLogCategory(void)::category;
    if (os_log_type_enabled(*AVAudioEngineLogCategory(void)::category, OS_LOG_TYPE_ERROR))
    {
      *buf = 136316418;
      *&buf[4] = "AVAEInternal.h";
      *&buf[12] = 1024;
      *&buf[14] = 71;
      *&buf[18] = 2080;
      *&buf[20] = "AVAudioEngineGraph.mm";
      *&buf[28] = 1024;
      *&buf[30] = 2904;
      v76 = 2080;
      v77 = "ConnectMIDI";
      v78 = 2080;
      v79 = "inSrcImpl";
      _os_log_impl(&dword_1BA5AC000, v11, OS_LOG_TYPE_ERROR, "%25s:%-5d required condition is false: [%s:%d:%s: (%s)]", buf, 0x36u);
    }

    [MEMORY[0x1E695DF30] raise:@"com.apple.coreaudio.avfaudio" format:{@"required condition is false: %s", "inSrcImpl"}];
  }

  if (a4)
  {
    [a4 sampleRate];
    if (v12 <= 0.0 || ![a4 channelCount])
    {
      if (AVAudioEngineLogCategory(void)::once != -1)
      {
        dispatch_once(&AVAudioEngineLogCategory(void)::once, &__block_literal_global_8660);
      }

      v13 = *AVAudioEngineLogCategory(void)::category;
      if (os_log_type_enabled(*AVAudioEngineLogCategory(void)::category, OS_LOG_TYPE_ERROR))
      {
        *buf = 136316418;
        *&buf[4] = "AVAEInternal.h";
        *&buf[12] = 1024;
        *&buf[14] = 71;
        *&buf[18] = 2080;
        *&buf[20] = "AVAudioEngineGraph.mm";
        *&buf[28] = 1024;
        *&buf[30] = 2907;
        v76 = 2080;
        v77 = "ConnectMIDI";
        v78 = 2080;
        v79 = "IsFormatSampleRateAndChannelCountValid(format)";
        _os_log_impl(&dword_1BA5AC000, v13, OS_LOG_TYPE_ERROR, "%25s:%-5d required condition is false: [%s:%d:%s: (%s)]", buf, 0x36u);
      }

      [MEMORY[0x1E695DF30] raise:@"com.apple.coreaudio.avfaudio" format:{@"required condition is false: %s", "IsFormatSampleRateAndChannelCountValid(format)"}];
    }
  }

  v55 = *a1;
  std::recursive_mutex::lock((*a1 + 112));
  if (!AVAudioEngineGraph::IsNodeInGraph(a1, v10))
  {
    if (AVAudioEngineLogCategory(void)::once != -1)
    {
      dispatch_once(&AVAudioEngineLogCategory(void)::once, &__block_literal_global_8660);
    }

    v14 = *AVAudioEngineLogCategory(void)::category;
    if (os_log_type_enabled(*AVAudioEngineLogCategory(void)::category, OS_LOG_TYPE_ERROR))
    {
      *buf = 136316418;
      *&buf[4] = "AVAEInternal.h";
      *&buf[12] = 1024;
      *&buf[14] = 71;
      *&buf[18] = 2080;
      *&buf[20] = "AVAudioEngineGraph.mm";
      *&buf[28] = 1024;
      *&buf[30] = 2912;
      v76 = 2080;
      v77 = "ConnectMIDI";
      v78 = 2080;
      v79 = "IsNodeInGraph(inSrcImpl)";
      _os_log_impl(&dword_1BA5AC000, v14, OS_LOG_TYPE_ERROR, "%25s:%-5d required condition is false: [%s:%d:%s: (%s)]", buf, 0x36u);
    }

    [MEMORY[0x1E695DF30] raise:@"com.apple.coreaudio.avfaudio" format:{@"required condition is false: %s", "IsNodeInGraph(inSrcImpl)"}];
  }

  NodeFromMap = AVAudioEngineGraph::GetNodeFromMap(a1, v10);
  v16 = NodeFromMap[3];
  v17 = v16[48];
  if (*(*(*v16 + 256))(v16) != 1635085673)
  {
    if (AVAudioEngineLogCategory(void)::once != -1)
    {
      dispatch_once(&AVAudioEngineLogCategory(void)::once, &__block_literal_global_8660);
    }

    v18 = *AVAudioEngineLogCategory(void)::category;
    if (os_log_type_enabled(*AVAudioEngineLogCategory(void)::category, OS_LOG_TYPE_ERROR))
    {
      *buf = 136316418;
      *&buf[4] = "AVAEInternal.h";
      *&buf[12] = 1024;
      *&buf[14] = 71;
      *&buf[18] = 2080;
      *&buf[20] = "AVAudioEngineGraph.mm";
      *&buf[28] = 1024;
      *&buf[30] = 2919;
      v76 = 2080;
      v77 = "ConnectMIDI";
      v78 = 2080;
      v79 = "graphNodeSrc->IsMIDIProcessorNode()";
      _os_log_impl(&dword_1BA5AC000, v18, OS_LOG_TYPE_ERROR, "%25s:%-5d required condition is false: [%s:%d:%s: (%s)]", buf, 0x36u);
    }

    [MEMORY[0x1E695DF30] raise:@"com.apple.coreaudio.avfaudio" format:{@"required condition is false: %s", "graphNodeSrc->IsMIDIProcessorNode()"}];
  }

  v54 = v17;
  v71 = 0;
  v72 = 0;
  v73 = 0;
  __p = 0;
  v69 = 0;
  v70 = 0;
  v64 = 0u;
  v65 = 0u;
  v66 = 0u;
  v67 = 0u;
  v19 = [a3 countByEnumeratingWithState:&v64 objects:v74 count:16];
  if (v19)
  {
    v60 = *v65;
    do
    {
      v61 = v19;
      for (i = 0; i != v61; ++i)
      {
        if (*v65 != v60)
        {
          objc_enumerationMutation(a3);
        }

        v21 = *(*(&v64 + 1) + 8 * i);
        if (!v21)
        {
          if (AVAudioEngineLogCategory(void)::once != -1)
          {
            dispatch_once(&AVAudioEngineLogCategory(void)::once, &__block_literal_global_8660);
          }

          v22 = *AVAudioEngineLogCategory(void)::category;
          if (os_log_type_enabled(*AVAudioEngineLogCategory(void)::category, OS_LOG_TYPE_ERROR))
          {
            *buf = 136316418;
            *&buf[4] = "AVAEInternal.h";
            *&buf[12] = 1024;
            *&buf[14] = 71;
            *&buf[18] = 2080;
            *&buf[20] = "AVAudioEngineGraph.mm";
            *&buf[28] = 1024;
            *&buf[30] = 2929;
            v76 = 2080;
            v77 = "ConnectMIDI";
            v78 = 2080;
            v79 = "destAVNode";
            _os_log_impl(&dword_1BA5AC000, v22, OS_LOG_TYPE_ERROR, "%25s:%-5d required condition is false: [%s:%d:%s: (%s)]", buf, 0x36u);
          }

          [*(v8 + 3888) raise:@"com.apple.coreaudio.avfaudio" format:{@"required condition is false: %s", "destAVNode"}];
        }

        v23 = [v21 impl];
        if (!v23)
        {
          if (AVAudioEngineLogCategory(void)::once != -1)
          {
            dispatch_once(&AVAudioEngineLogCategory(void)::once, &__block_literal_global_8660);
          }

          v24 = *AVAudioEngineLogCategory(void)::category;
          if (os_log_type_enabled(*AVAudioEngineLogCategory(void)::category, OS_LOG_TYPE_ERROR))
          {
            *buf = 136316418;
            *&buf[4] = "AVAEInternal.h";
            *&buf[12] = 1024;
            *&buf[14] = 71;
            *&buf[18] = 2080;
            *&buf[20] = "AVAudioEngineGraph.mm";
            *&buf[28] = 1024;
            *&buf[30] = 2932;
            v76 = 2080;
            v77 = "ConnectMIDI";
            v78 = 2080;
            v79 = "inDestImpl";
            _os_log_impl(&dword_1BA5AC000, v24, OS_LOG_TYPE_ERROR, "%25s:%-5d required condition is false: [%s:%d:%s: (%s)]", buf, 0x36u);
          }

          [*(v8 + 3888) raise:@"com.apple.coreaudio.avfaudio" format:{@"required condition is false: %s", "inDestImpl"}];
        }

        if (!AVAudioEngineGraph::IsNodeInGraph(a1, v23))
        {
          if (AVAudioEngineLogCategory(void)::once != -1)
          {
            dispatch_once(&AVAudioEngineLogCategory(void)::once, &__block_literal_global_8660);
          }

          v25 = *AVAudioEngineLogCategory(void)::category;
          if (os_log_type_enabled(*AVAudioEngineLogCategory(void)::category, OS_LOG_TYPE_ERROR))
          {
            *buf = 136316418;
            *&buf[4] = "AVAEInternal.h";
            *&buf[12] = 1024;
            *&buf[14] = 71;
            *&buf[18] = 2080;
            *&buf[20] = "AVAudioEngineGraph.mm";
            *&buf[28] = 1024;
            *&buf[30] = 2936;
            v76 = 2080;
            v77 = "ConnectMIDI";
            v78 = 2080;
            v79 = "IsNodeInGraph(inDestImpl)";
            _os_log_impl(&dword_1BA5AC000, v25, OS_LOG_TYPE_ERROR, "%25s:%-5d required condition is false: [%s:%d:%s: (%s)]", buf, 0x36u);
          }

          [*(v8 + 3888) raise:@"com.apple.coreaudio.avfaudio" format:{@"required condition is false: %s", "IsNodeInGraph(inDestImpl)"}];
        }

        v26 = AVAudioEngineGraph::GetNodeFromMap(a1, v23);
        v63 = v26;
        v27 = *(*(**(v26 + 24) + 256))(*(v26 + 24));
        if (v27 != 1635085685 && v27 != 1635086953)
        {
          v29 = *(*(**(v26 + 24) + 256))(*(v26 + 24));
          v30 = v29 == 1635085670 || v29 == 1635086957;
          if (!v30 && *(*(**(v26 + 24) + 256))(*(v26 + 24)) != 1635085673)
          {
            if (AVAudioEngineLogCategory(void)::once != -1)
            {
              dispatch_once(&AVAudioEngineLogCategory(void)::once, &__block_literal_global_8660);
            }

            v40 = *AVAudioEngineLogCategory(void)::category;
            if (os_log_type_enabled(*AVAudioEngineLogCategory(void)::category, OS_LOG_TYPE_ERROR))
            {
              *buf = 136316418;
              *&buf[4] = "AVAEInternal.h";
              *&buf[12] = 1024;
              *&buf[14] = 71;
              *&buf[18] = 2080;
              *&buf[20] = "AVAudioEngineGraph.mm";
              *&buf[28] = 1024;
              *&buf[30] = 2940;
              v76 = 2080;
              v77 = "ConnectMIDI";
              v78 = 2080;
              v79 = "graphNodeDest->IsMusicDevice() || graphNodeDest->IsMusicEffect() || graphNodeDest->IsMIDIProcessorNode()";
              _os_log_impl(&dword_1BA5AC000, v40, OS_LOG_TYPE_ERROR, "%25s:%-5d required condition is false: [%s:%d:%s: (%s)]", buf, 0x36u);
            }

            [*(v8 + 3888) raise:@"com.apple.coreaudio.avfaudio" format:{@"required condition is false: %s", "graphNodeDest->IsMusicDevice() || graphNodeDest->IsMusicEffect() || graphNodeDest->IsMIDIProcessorNode()"}];
          }
        }

        std::vector<AUGraphNodeBaseV3 *>::push_back[abi:ne200100](&v71, &v63);
        v31 = *(v26 + 112);
        if (v31)
        {
          if (v31 == NodeFromMap)
          {
            continue;
          }

          v32 = *(*(v26 + 24) + 48);
          *buf = *(v26 + 112);
          *&buf[8] = v26;
          *&buf[16] = 0;
          *&buf[24] = 0;
          (*(*v26 + 360))(v26, buf);
          if (*(a1 + 185) == 1 && v32)
          {
            v62 = v31;
            std::vector<AUGraphNodeBaseV3 *>::push_back[abi:ne200100](&__p, &v62);
          }

          v8 = 0x1E695D000;
        }

        v33 = a4;
        if (!a4)
        {
          v33 = (*(*v23 + 48))(v23, 0);
        }

        if (([(*(*v10 + 48))(v10 0)] & 1) == 0)
        {
          v34 = AVAudioEngineGraph::PerformCommand(a1, NodeFromMap, 4, 0, 0);
          if (v34)
          {
            if (AVAudioEngineLogCategory(void)::once != -1)
            {
              dispatch_once(&AVAudioEngineLogCategory(void)::once, &__block_literal_global_8660);
            }

            v35 = *AVAudioEngineLogCategory(void)::category;
            if (os_log_type_enabled(*AVAudioEngineLogCategory(void)::category, OS_LOG_TYPE_ERROR))
            {
              *buf = 136316674;
              *&buf[4] = "AVAEInternal.h";
              *&buf[12] = 1024;
              *&buf[14] = 104;
              *&buf[18] = 2080;
              *&buf[20] = "AVAudioEngineGraph.mm";
              *&buf[28] = 1024;
              *&buf[30] = 2967;
              v76 = 2080;
              v77 = "ConnectMIDI";
              v78 = 2080;
              v79 = "PerformCommand(*graphNodeSrc, kAUUninitialize, NULL, 0)";
              v80 = 1024;
              v81 = v34;
              _os_log_impl(&dword_1BA5AC000, v35, OS_LOG_TYPE_ERROR, "%25s:%-5d [%s:%d:%s: (%s): error %d", buf, 0x3Cu);
            }

            v8 = 0x1E695D000uLL;
            [MEMORY[0x1E695DF30] raise:@"com.apple.coreaudio.avfaudio" format:{@"error %d", v34}];
          }

          if (((*(*v10 + 64))(v10, 0, v33) & 1) == 0)
          {
            if (AVAudioEngineLogCategory(void)::once != -1)
            {
              dispatch_once(&AVAudioEngineLogCategory(void)::once, &__block_literal_global_8660);
            }

            v36 = *AVAudioEngineLogCategory(void)::category;
            if (os_log_type_enabled(*AVAudioEngineLogCategory(void)::category, OS_LOG_TYPE_ERROR))
            {
              *buf = 136316418;
              *&buf[4] = "AVAEInternal.h";
              *&buf[12] = 1024;
              *&buf[14] = 71;
              *&buf[18] = 2080;
              *&buf[20] = "AVAudioEngineGraph.mm";
              *&buf[28] = 1024;
              *&buf[30] = 2968;
              v76 = 2080;
              v77 = "ConnectMIDI";
              v78 = 2080;
              v79 = "inSrcImpl->SetOutputFormat(0, newFormat)";
              _os_log_impl(&dword_1BA5AC000, v36, OS_LOG_TYPE_ERROR, "%25s:%-5d required condition is false: [%s:%d:%s: (%s)]", buf, 0x36u);
            }

            [*(v8 + 3888) raise:@"com.apple.coreaudio.avfaudio" format:{@"required condition is false: %s", "inSrcImpl->SetOutputFormat(0, newFormat)"}];
          }
        }

        v37 = NodeFromMap[14];
        if (v37)
        {
          v38 = (*(**(v37 + 24) + 48))(*(v37 + 24), 0);
          if (([v38 isEqual:{(*(*v10 + 48))(v10, 0)}] & 1) == 0)
          {
            if (AVAudioEngineLogCategory(void)::once != -1)
            {
              dispatch_once(&AVAudioEngineLogCategory(void)::once, &__block_literal_global_8660);
            }

            v39 = *AVAudioEngineLogCategory(void)::category;
            if (os_log_type_enabled(*AVAudioEngineLogCategory(void)::category, OS_LOG_TYPE_ERROR))
            {
              *buf = 136316418;
              *&buf[4] = "AVAEInternal.h";
              *&buf[12] = 1024;
              *&buf[14] = 71;
              *&buf[18] = 2080;
              *&buf[20] = "AVAudioEngineGraph.mm";
              *&buf[28] = 1024;
              *&buf[30] = 2973;
              v76 = 2080;
              v77 = "ConnectMIDI";
              v78 = 2080;
              v79 = "[midiInputImpl->GetOutputFormat(0) isEqual:inSrcImpl->GetOutputFormat(0)]";
              _os_log_impl(&dword_1BA5AC000, v39, OS_LOG_TYPE_ERROR, "%25s:%-5d required condition is false: [%s:%d:%s: (%s)]", buf, 0x36u);
            }

            [*(v8 + 3888) raise:@"com.apple.coreaudio.avfaudio" format:{@"required condition is false: %s", "[midiInputImpl->GetOutputFormat(0) isEqual:inSrcImpl->GetOutputFormat(0)]"}];
          }
        }

        *buf = NodeFromMap;
        *&buf[8] = v26;
        *&buf[16] = a5;
        *&buf[24] = a6;
        (*(*v26 + 352))(v26, buf);
      }

      v19 = [a3 countByEnumeratingWithState:&v64 objects:v74 count:16];
    }

    while (v19);
  }

  v41 = NodeFromMap[16];
  v42 = NodeFromMap[17];
  if (v41 != v42)
  {
    v43 = v71;
    v44 = v72;
    do
    {
      v45 = *v41;
      v63 = *v41;
      v46 = v43;
      if (v43 != v44)
      {
        v46 = v43;
        while (*v46 != v45)
        {
          if (++v46 == v44)
          {
            goto LABEL_113;
          }
        }
      }

      if (v46 == v44)
      {
LABEL_113:
        *buf = NodeFromMap;
        *&buf[8] = v45;
        *&buf[16] = 0;
        *&buf[24] = 0;
        (*(*v45 + 360))(v45, buf);
        if (*(a1 + 185) == 1 && v54 != 0)
        {
          std::vector<AUGraphNodeBaseV3 *>::push_back[abi:ne200100](&__p, &v63);
        }
      }

      ++v41;
    }

    while (v41 != v42);
  }

  if ((v54 & 1) != 0 && (*(NodeFromMap[3] + 48) & 1) == 0)
  {
    v48 = AVAudioEngineGraph::PerformCommand(a1, NodeFromMap, 3, 0, 0);
    if (v48)
    {
      if (AVAudioEngineLogCategory(void)::once != -1)
      {
        dispatch_once(&AVAudioEngineLogCategory(void)::once, &__block_literal_global_8660);
      }

      v49 = *AVAudioEngineLogCategory(void)::category;
      if (os_log_type_enabled(*AVAudioEngineLogCategory(void)::category, OS_LOG_TYPE_ERROR))
      {
        *buf = 136316674;
        *&buf[4] = "AVAEInternal.h";
        *&buf[12] = 1024;
        *&buf[14] = 104;
        *&buf[18] = 2080;
        *&buf[20] = "AVAudioEngineGraph.mm";
        *&buf[28] = 1024;
        *&buf[30] = 2994;
        v76 = 2080;
        v77 = "ConnectMIDI";
        v78 = 2080;
        v79 = "PerformCommand(*graphNodeSrc, kAUInitialize, NULL, 0)";
        v80 = 1024;
        v81 = v48;
        _os_log_impl(&dword_1BA5AC000, v49, OS_LOG_TYPE_ERROR, "%25s:%-5d [%s:%d:%s: (%s): error %d", buf, 0x3Cu);
      }

      [*(v8 + 3888) raise:@"com.apple.coreaudio.avfaudio" format:{@"error %d", v48}];
    }
  }

  updated = AVAudioEngineGraph::UpdateGraphAfterReconfig(a1, &__p, 1);
  if (updated)
  {
    if (AVAudioEngineLogCategory(void)::once != -1)
    {
      dispatch_once(&AVAudioEngineLogCategory(void)::once, &__block_literal_global_8660);
    }

    v51 = *AVAudioEngineLogCategory(void)::category;
    if (os_log_type_enabled(*AVAudioEngineLogCategory(void)::category, OS_LOG_TYPE_ERROR))
    {
      *buf = 136316674;
      *&buf[4] = "AVAEInternal.h";
      *&buf[12] = 1024;
      *&buf[14] = 104;
      *&buf[18] = 2080;
      *&buf[20] = "AVAudioEngineGraph.mm";
      *&buf[28] = 1024;
      *&buf[30] = 2998;
      v76 = 2080;
      v77 = "ConnectMIDI";
      v78 = 2080;
      v79 = "err = UpdateGraphAfterReconfig(&disjointNodes, kOutputChainFullTraversal)";
      v80 = 1024;
      v81 = updated;
      _os_log_impl(&dword_1BA5AC000, v51, OS_LOG_TYPE_ERROR, "%25s:%-5d [%s:%d:%s: (%s): error %d", buf, 0x3Cu);
    }

    [*(v8 + 3888) raise:@"com.apple.coreaudio.avfaudio" format:{@"error %d", updated}];
  }

  AVAudioEngineGraph::RemoveInactiveInternalNodes(a1);
  if (__p)
  {
    v69 = __p;
    operator delete(__p);
  }

  if (v71)
  {
    operator delete(v71);
  }

  std::recursive_mutex::unlock((v55 + 112));
  v52 = *MEMORY[0x1E69E9840];
  return updated;
}

void AVAudioEngineGraph::DisconnectMIDI(AVAudioEngineGraph *this, AVAudioNode *a2, NSArray *a3)
{
  v40 = *MEMORY[0x1E69E9840];
  v4 = [(AVAudioNode *)a2 impl];
  if (!v4)
  {
    if (AVAudioEngineLogCategory(void)::once != -1)
    {
      dispatch_once(&AVAudioEngineLogCategory(void)::once, &__block_literal_global_8660);
    }

    v5 = *AVAudioEngineLogCategory(void)::category;
    if (os_log_type_enabled(*AVAudioEngineLogCategory(void)::category, OS_LOG_TYPE_ERROR))
    {
      *buf = 136316418;
      *&buf[4] = "AVAEInternal.h";
      *&buf[12] = 1024;
      *&buf[14] = 71;
      *&buf[18] = 2080;
      *&buf[20] = "AVAudioEngineGraph.mm";
      v32 = 1024;
      v33 = 3016;
      v34 = 2080;
      v35 = "DisconnectMIDI";
      v36 = 2080;
      v37 = "inSrcImpl";
      _os_log_impl(&dword_1BA5AC000, v5, OS_LOG_TYPE_ERROR, "%25s:%-5d required condition is false: [%s:%d:%s: (%s)]", buf, 0x36u);
    }

    [MEMORY[0x1E695DF30] raise:@"com.apple.coreaudio.avfaudio" format:{@"required condition is false: %s", "inSrcImpl"}];
  }

  v24 = *this;
  std::recursive_mutex::lock((*this + 112));
  if (!AVAudioEngineGraph::IsNodeInGraph(this, v4))
  {
    if (AVAudioEngineLogCategory(void)::once != -1)
    {
      dispatch_once(&AVAudioEngineLogCategory(void)::once, &__block_literal_global_8660);
    }

    v6 = *AVAudioEngineLogCategory(void)::category;
    if (os_log_type_enabled(*AVAudioEngineLogCategory(void)::category, OS_LOG_TYPE_ERROR))
    {
      *buf = 136316418;
      *&buf[4] = "AVAEInternal.h";
      *&buf[12] = 1024;
      *&buf[14] = 71;
      *&buf[18] = 2080;
      *&buf[20] = "AVAudioEngineGraph.mm";
      v32 = 1024;
      v33 = 3021;
      v34 = 2080;
      v35 = "DisconnectMIDI";
      v36 = 2080;
      v37 = "IsNodeInGraph(inSrcImpl)";
      _os_log_impl(&dword_1BA5AC000, v6, OS_LOG_TYPE_ERROR, "%25s:%-5d required condition is false: [%s:%d:%s: (%s)]", buf, 0x36u);
    }

    [MEMORY[0x1E695DF30] raise:@"com.apple.coreaudio.avfaudio" format:{@"required condition is false: %s", "IsNodeInGraph(inSrcImpl)"}];
  }

  NodeFromMap = AVAudioEngineGraph::GetNodeFromMap(this, v4);
  if (*(*(**(NodeFromMap + 24) + 256))(*(NodeFromMap + 24)) != 1635085673)
  {
    if (AVAudioEngineLogCategory(void)::once != -1)
    {
      dispatch_once(&AVAudioEngineLogCategory(void)::once, &__block_literal_global_8660);
    }

    v8 = *AVAudioEngineLogCategory(void)::category;
    if (os_log_type_enabled(*AVAudioEngineLogCategory(void)::category, OS_LOG_TYPE_ERROR))
    {
      *buf = 136316418;
      *&buf[4] = "AVAEInternal.h";
      *&buf[12] = 1024;
      *&buf[14] = 71;
      *&buf[18] = 2080;
      *&buf[20] = "AVAudioEngineGraph.mm";
      v32 = 1024;
      v33 = 3026;
      v34 = 2080;
      v35 = "DisconnectMIDI";
      v36 = 2080;
      v37 = "graphNodeSrc->IsMIDIProcessorNode()";
      _os_log_impl(&dword_1BA5AC000, v8, OS_LOG_TYPE_ERROR, "%25s:%-5d required condition is false: [%s:%d:%s: (%s)]", buf, 0x36u);
    }

    [MEMORY[0x1E695DF30] raise:@"com.apple.coreaudio.avfaudio" format:{@"required condition is false: %s", "graphNodeSrc->IsMIDIProcessorNode()"}];
  }

  v28 = 0u;
  v29 = 0u;
  v26 = 0u;
  v27 = 0u;
  v9 = [(NSArray *)a3 countByEnumeratingWithState:&v26 objects:v30 count:16];
  if (v9)
  {
    v10 = *v27;
    do
    {
      v11 = 0;
      do
      {
        if (*v27 != v10)
        {
          objc_enumerationMutation(a3);
        }

        v12 = *(*(&v26 + 1) + 8 * v11);
        if (!v12)
        {
          if (AVAudioEngineLogCategory(void)::once != -1)
          {
            dispatch_once(&AVAudioEngineLogCategory(void)::once, &__block_literal_global_8660);
          }

          v13 = *AVAudioEngineLogCategory(void)::category;
          if (os_log_type_enabled(*AVAudioEngineLogCategory(void)::category, OS_LOG_TYPE_ERROR))
          {
            *buf = 136316418;
            *&buf[4] = "AVAEInternal.h";
            *&buf[12] = 1024;
            *&buf[14] = 71;
            *&buf[18] = 2080;
            *&buf[20] = "AVAudioEngineGraph.mm";
            v32 = 1024;
            v33 = 3032;
            v34 = 2080;
            v35 = "DisconnectMIDI";
            v36 = 2080;
            v37 = "destAVNode";
            _os_log_impl(&dword_1BA5AC000, v13, OS_LOG_TYPE_ERROR, "%25s:%-5d required condition is false: [%s:%d:%s: (%s)]", buf, 0x36u);
          }

          [MEMORY[0x1E695DF30] raise:@"com.apple.coreaudio.avfaudio" format:{@"required condition is false: %s", "destAVNode"}];
        }

        v14 = [v12 impl];
        if (!v14)
        {
          if (AVAudioEngineLogCategory(void)::once != -1)
          {
            dispatch_once(&AVAudioEngineLogCategory(void)::once, &__block_literal_global_8660);
          }

          v15 = *AVAudioEngineLogCategory(void)::category;
          if (os_log_type_enabled(*AVAudioEngineLogCategory(void)::category, OS_LOG_TYPE_ERROR))
          {
            *buf = 136316418;
            *&buf[4] = "AVAEInternal.h";
            *&buf[12] = 1024;
            *&buf[14] = 71;
            *&buf[18] = 2080;
            *&buf[20] = "AVAudioEngineGraph.mm";
            v32 = 1024;
            v33 = 3035;
            v34 = 2080;
            v35 = "DisconnectMIDI";
            v36 = 2080;
            v37 = "inDestImpl";
            _os_log_impl(&dword_1BA5AC000, v15, OS_LOG_TYPE_ERROR, "%25s:%-5d required condition is false: [%s:%d:%s: (%s)]", buf, 0x36u);
          }

          [MEMORY[0x1E695DF30] raise:@"com.apple.coreaudio.avfaudio" format:{@"required condition is false: %s", "inDestImpl"}];
        }

        if (!AVAudioEngineGraph::IsNodeInGraph(this, v14))
        {
          if (AVAudioEngineLogCategory(void)::once != -1)
          {
            dispatch_once(&AVAudioEngineLogCategory(void)::once, &__block_literal_global_8660);
          }

          v16 = *AVAudioEngineLogCategory(void)::category;
          if (os_log_type_enabled(*AVAudioEngineLogCategory(void)::category, OS_LOG_TYPE_ERROR))
          {
            *buf = 136316418;
            *&buf[4] = "AVAEInternal.h";
            *&buf[12] = 1024;
            *&buf[14] = 71;
            *&buf[18] = 2080;
            *&buf[20] = "AVAudioEngineGraph.mm";
            v32 = 1024;
            v33 = 3039;
            v34 = 2080;
            v35 = "DisconnectMIDI";
            v36 = 2080;
            v37 = "IsNodeInGraph(inDestImpl)";
            _os_log_impl(&dword_1BA5AC000, v16, OS_LOG_TYPE_ERROR, "%25s:%-5d required condition is false: [%s:%d:%s: (%s)]", buf, 0x36u);
          }

          [MEMORY[0x1E695DF30] raise:@"com.apple.coreaudio.avfaudio" format:{@"required condition is false: %s", "IsNodeInGraph(inDestImpl)"}];
        }

        v17 = AVAudioEngineGraph::GetNodeFromMap(this, v14);
        v19 = *(NodeFromMap + 128);
        v18 = *(NodeFromMap + 136);
        if (v19 != v18)
        {
          v20 = v17;
          do
          {
            if (*v19 == v20)
            {
              *buf = NodeFromMap;
              *&buf[8] = v20;
              *&buf[16] = 0;
              *&buf[24] = 0;
              (*(*v20 + 360))(v20, buf);
            }

            ++v19;
          }

          while (v19 != v18);
        }

        ++v11;
      }

      while (v11 != v9);
      v9 = [(NSArray *)a3 countByEnumeratingWithState:&v26 objects:v30 count:16];
    }

    while (v9);
  }

  if (*(NodeFromMap + 128) == *(NodeFromMap + 136))
  {
    v21 = AVAudioEngineGraph::PerformCommand(this, NodeFromMap, 4, 0, 0);
    if (v21)
    {
      if (AVAudioEngineLogCategory(void)::once != -1)
      {
        dispatch_once(&AVAudioEngineLogCategory(void)::once, &__block_literal_global_8660);
      }

      v22 = *AVAudioEngineLogCategory(void)::category;
      if (os_log_type_enabled(*AVAudioEngineLogCategory(void)::category, OS_LOG_TYPE_ERROR))
      {
        *buf = 136316674;
        *&buf[4] = "AVAEInternal.h";
        *&buf[12] = 1024;
        *&buf[14] = 104;
        *&buf[18] = 2080;
        *&buf[20] = "AVAudioEngineGraph.mm";
        v32 = 1024;
        v33 = 3053;
        v34 = 2080;
        v35 = "DisconnectMIDI";
        v36 = 2080;
        v37 = "PerformCommand(*midiNode, kAUUninitialize, nullptr, 0)";
        v38 = 1024;
        v39 = v21;
        _os_log_impl(&dword_1BA5AC000, v22, OS_LOG_TYPE_ERROR, "%25s:%-5d [%s:%d:%s: (%s): error %d", buf, 0x3Cu);
      }

      [MEMORY[0x1E695DF30] raise:@"com.apple.coreaudio.avfaudio" format:{@"error %d", v21}];
    }
  }

  std::recursive_mutex::unlock((v24 + 112));
  v23 = *MEMORY[0x1E69E9840];
}

void AVAudioEngineGraph::DisconnectAllMIDIInputs(AVAudioEngineGraph *this, AVAudioNode *a2)
{
  v30 = *MEMORY[0x1E69E9840];
  if (!a2)
  {
    if (AVAudioEngineLogCategory(void)::once != -1)
    {
      dispatch_once(&AVAudioEngineLogCategory(void)::once, &__block_literal_global_8660);
    }

    v4 = *AVAudioEngineLogCategory(void)::category;
    if (os_log_type_enabled(*AVAudioEngineLogCategory(void)::category, OS_LOG_TYPE_ERROR))
    {
      *buf = 136316418;
      v17 = "AVAEInternal.h";
      v18 = 1024;
      v19 = 71;
      v20 = 2080;
      v21 = "AVAudioEngineGraph.mm";
      v22 = 1024;
      v23 = 3061;
      v24 = 2080;
      v25 = "DisconnectAllMIDIInputs";
      v26 = 2080;
      v27 = "inAVNode";
      _os_log_impl(&dword_1BA5AC000, v4, OS_LOG_TYPE_ERROR, "%25s:%-5d required condition is false: [%s:%d:%s: (%s)]", buf, 0x36u);
    }

    [MEMORY[0x1E695DF30] raise:@"com.apple.coreaudio.avfaudio" format:{@"required condition is false: %s", "inAVNode"}];
  }

  v5 = [(AVAudioNode *)a2 impl];
  if (!v5)
  {
    if (AVAudioEngineLogCategory(void)::once != -1)
    {
      dispatch_once(&AVAudioEngineLogCategory(void)::once, &__block_literal_global_8660);
    }

    v6 = *AVAudioEngineLogCategory(void)::category;
    if (os_log_type_enabled(*AVAudioEngineLogCategory(void)::category, OS_LOG_TYPE_ERROR))
    {
      *buf = 136316418;
      v17 = "AVAEInternal.h";
      v18 = 1024;
      v19 = 71;
      v20 = 2080;
      v21 = "AVAudioEngineGraph.mm";
      v22 = 1024;
      v23 = 3064;
      v24 = 2080;
      v25 = "DisconnectAllMIDIInputs";
      v26 = 2080;
      v27 = "inImpl";
      _os_log_impl(&dword_1BA5AC000, v6, OS_LOG_TYPE_ERROR, "%25s:%-5d required condition is false: [%s:%d:%s: (%s)]", buf, 0x36u);
    }

    [MEMORY[0x1E695DF30] raise:@"com.apple.coreaudio.avfaudio" format:{@"required condition is false: %s", "inImpl"}];
  }

  v7 = *this;
  std::recursive_mutex::lock((*this + 112));
  if (!AVAudioEngineGraph::IsNodeInGraph(this, v5))
  {
    if (AVAudioEngineLogCategory(void)::once != -1)
    {
      dispatch_once(&AVAudioEngineLogCategory(void)::once, &__block_literal_global_8660);
    }

    v8 = *AVAudioEngineLogCategory(void)::category;
    if (os_log_type_enabled(*AVAudioEngineLogCategory(void)::category, OS_LOG_TYPE_ERROR))
    {
      *buf = 136316418;
      v17 = "AVAEInternal.h";
      v18 = 1024;
      v19 = 71;
      v20 = 2080;
      v21 = "AVAudioEngineGraph.mm";
      v22 = 1024;
      v23 = 3069;
      v24 = 2080;
      v25 = "DisconnectAllMIDIInputs";
      v26 = 2080;
      v27 = "IsNodeInGraph(inImpl)";
      _os_log_impl(&dword_1BA5AC000, v8, OS_LOG_TYPE_ERROR, "%25s:%-5d required condition is false: [%s:%d:%s: (%s)]", buf, 0x36u);
    }

    [MEMORY[0x1E695DF30] raise:@"com.apple.coreaudio.avfaudio" format:{@"required condition is false: %s", "IsNodeInGraph(inImpl)"}];
  }

  NodeFromMap = AVAudioEngineGraph::GetNodeFromMap(this, v5);
  v10 = NodeFromMap[14];
  if (v10)
  {
    v14[0] = NodeFromMap[14];
    v14[1] = NodeFromMap;
    v14[2] = 0;
    v15 = 0;
    (*(*NodeFromMap + 360))(NodeFromMap, v14);
    if (v10[16] == v10[17])
    {
      v11 = AVAudioEngineGraph::PerformCommand(this, v10, 4, 0, 0);
      if (v11)
      {
        if (AVAudioEngineLogCategory(void)::once != -1)
        {
          dispatch_once(&AVAudioEngineLogCategory(void)::once, &__block_literal_global_8660);
        }

        v12 = *AVAudioEngineLogCategory(void)::category;
        if (os_log_type_enabled(*AVAudioEngineLogCategory(void)::category, OS_LOG_TYPE_ERROR))
        {
          *buf = 136316674;
          v17 = "AVAEInternal.h";
          v18 = 1024;
          v19 = 104;
          v20 = 2080;
          v21 = "AVAudioEngineGraph.mm";
          v22 = 1024;
          v23 = 3081;
          v24 = 2080;
          v25 = "DisconnectAllMIDIInputs";
          v26 = 2080;
          v27 = "PerformCommand(*midiNode, kAUUninitialize, nullptr, 0)";
          v28 = 1024;
          v29 = v11;
          _os_log_impl(&dword_1BA5AC000, v12, OS_LOG_TYPE_ERROR, "%25s:%-5d [%s:%d:%s: (%s): error %d", buf, 0x3Cu);
        }

        [MEMORY[0x1E695DF30] raise:@"com.apple.coreaudio.avfaudio" format:{@"error %d", v11}];
      }
    }
  }

  std::recursive_mutex::unlock((v7 + 112));
  v13 = *MEMORY[0x1E69E9840];
}

void AVAudioEngineGraph::DisconnectAllMIDIOutputs(AVAudioEngineGraph *this, AVAudioNode *a2)
{
  v26 = *MEMORY[0x1E69E9840];
  if (!a2)
  {
    if (AVAudioEngineLogCategory(void)::once != -1)
    {
      dispatch_once(&AVAudioEngineLogCategory(void)::once, &__block_literal_global_8660);
    }

    v4 = *AVAudioEngineLogCategory(void)::category;
    if (os_log_type_enabled(*AVAudioEngineLogCategory(void)::category, OS_LOG_TYPE_ERROR))
    {
      *buf = 136316418;
      *&buf[4] = "AVAEInternal.h";
      *&buf[12] = 1024;
      *&buf[14] = 71;
      *&buf[18] = 2080;
      *&buf[20] = "AVAudioEngineGraph.mm";
      v18 = 1024;
      v19 = 3090;
      v20 = 2080;
      v21 = "DisconnectAllMIDIOutputs";
      v22 = 2080;
      v23 = "inAVNode";
      _os_log_impl(&dword_1BA5AC000, v4, OS_LOG_TYPE_ERROR, "%25s:%-5d required condition is false: [%s:%d:%s: (%s)]", buf, 0x36u);
    }

    [MEMORY[0x1E695DF30] raise:@"com.apple.coreaudio.avfaudio" format:{@"required condition is false: %s", "inAVNode"}];
  }

  v5 = [(AVAudioNode *)a2 impl];
  if (!v5)
  {
    if (AVAudioEngineLogCategory(void)::once != -1)
    {
      dispatch_once(&AVAudioEngineLogCategory(void)::once, &__block_literal_global_8660);
    }

    v6 = *AVAudioEngineLogCategory(void)::category;
    if (os_log_type_enabled(*AVAudioEngineLogCategory(void)::category, OS_LOG_TYPE_ERROR))
    {
      *buf = 136316418;
      *&buf[4] = "AVAEInternal.h";
      *&buf[12] = 1024;
      *&buf[14] = 71;
      *&buf[18] = 2080;
      *&buf[20] = "AVAudioEngineGraph.mm";
      v18 = 1024;
      v19 = 3093;
      v20 = 2080;
      v21 = "DisconnectAllMIDIOutputs";
      v22 = 2080;
      v23 = "inImpl";
      _os_log_impl(&dword_1BA5AC000, v6, OS_LOG_TYPE_ERROR, "%25s:%-5d required condition is false: [%s:%d:%s: (%s)]", buf, 0x36u);
    }

    [MEMORY[0x1E695DF30] raise:@"com.apple.coreaudio.avfaudio" format:{@"required condition is false: %s", "inImpl"}];
  }

  v7 = *this;
  std::recursive_mutex::lock((*this + 112));
  if (!AVAudioEngineGraph::IsNodeInGraph(this, v5))
  {
    if (AVAudioEngineLogCategory(void)::once != -1)
    {
      dispatch_once(&AVAudioEngineLogCategory(void)::once, &__block_literal_global_8660);
    }

    v8 = *AVAudioEngineLogCategory(void)::category;
    if (os_log_type_enabled(*AVAudioEngineLogCategory(void)::category, OS_LOG_TYPE_ERROR))
    {
      *buf = 136316418;
      *&buf[4] = "AVAEInternal.h";
      *&buf[12] = 1024;
      *&buf[14] = 71;
      *&buf[18] = 2080;
      *&buf[20] = "AVAudioEngineGraph.mm";
      v18 = 1024;
      v19 = 3098;
      v20 = 2080;
      v21 = "DisconnectAllMIDIOutputs";
      v22 = 2080;
      v23 = "IsNodeInGraph(inImpl)";
      _os_log_impl(&dword_1BA5AC000, v8, OS_LOG_TYPE_ERROR, "%25s:%-5d required condition is false: [%s:%d:%s: (%s)]", buf, 0x36u);
    }

    [MEMORY[0x1E695DF30] raise:@"com.apple.coreaudio.avfaudio" format:{@"required condition is false: %s", "IsNodeInGraph(inImpl)"}];
  }

  NodeFromMap = AVAudioEngineGraph::GetNodeFromMap(this, v5);
  if (*(*(**(NodeFromMap + 24) + 256))(*(NodeFromMap + 24)) != 1635085673)
  {
    if (AVAudioEngineLogCategory(void)::once != -1)
    {
      dispatch_once(&AVAudioEngineLogCategory(void)::once, &__block_literal_global_8660);
    }

    v10 = *AVAudioEngineLogCategory(void)::category;
    if (os_log_type_enabled(*AVAudioEngineLogCategory(void)::category, OS_LOG_TYPE_ERROR))
    {
      *buf = 136316418;
      *&buf[4] = "AVAEInternal.h";
      *&buf[12] = 1024;
      *&buf[14] = 71;
      *&buf[18] = 2080;
      *&buf[20] = "AVAudioEngineGraph.mm";
      v18 = 1024;
      v19 = 3105;
      v20 = 2080;
      v21 = "DisconnectAllMIDIOutputs";
      v22 = 2080;
      v23 = "graphNode->IsMIDIProcessorNode()";
      _os_log_impl(&dword_1BA5AC000, v10, OS_LOG_TYPE_ERROR, "%25s:%-5d required condition is false: [%s:%d:%s: (%s)]", buf, 0x36u);
    }

    [MEMORY[0x1E695DF30] raise:@"com.apple.coreaudio.avfaudio" format:{@"required condition is false: %s", "graphNode->IsMIDIProcessorNode()"}];
  }

  v11 = *(NodeFromMap + 128);
  v12 = *(NodeFromMap + 136);
  while (v11 != v12)
  {
    v13 = *v11;
    *buf = NodeFromMap;
    *&buf[8] = v13;
    *&buf[24] = 0;
    (*(*v13 + 360))(v13, buf);
    ++v11;
  }

  v14 = AVAudioEngineGraph::PerformCommand(this, NodeFromMap, 4, 0, 0);
  if (v14)
  {
    if (AVAudioEngineLogCategory(void)::once != -1)
    {
      dispatch_once(&AVAudioEngineLogCategory(void)::once, &__block_literal_global_8660);
    }

    v15 = *AVAudioEngineLogCategory(void)::category;
    if (os_log_type_enabled(*AVAudioEngineLogCategory(void)::category, OS_LOG_TYPE_ERROR))
    {
      *buf = 136316674;
      *&buf[4] = "AVAEInternal.h";
      *&buf[12] = 1024;
      *&buf[14] = 104;
      *&buf[18] = 2080;
      *&buf[20] = "AVAudioEngineGraph.mm";
      v18 = 1024;
      v19 = 3114;
      v20 = 2080;
      v21 = "DisconnectAllMIDIOutputs";
      v22 = 2080;
      v23 = "PerformCommand(*midiNode, kAUUninitialize, nullptr, 0)";
      v24 = 1024;
      v25 = v14;
      _os_log_impl(&dword_1BA5AC000, v15, OS_LOG_TYPE_ERROR, "%25s:%-5d [%s:%d:%s: (%s): error %d", buf, 0x3Cu);
    }

    [MEMORY[0x1E695DF30] raise:@"com.apple.coreaudio.avfaudio" format:{@"error %d", v14}];
  }

  std::recursive_mutex::unlock((v7 + 112));
  v16 = *MEMORY[0x1E69E9840];
}

AVAudioConnectionPoint *AVAudioEngineGraph::GetInputConnectionPointForNode(AVAudioEngineGraph *this, AVAudioNode *a2, uint64_t a3)
{
  v34 = *MEMORY[0x1E69E9840];
  if (!a2)
  {
    if (AVAudioEngineLogCategory(void)::once != -1)
    {
      dispatch_once(&AVAudioEngineLogCategory(void)::once, &__block_literal_global_8660);
    }

    v6 = *AVAudioEngineLogCategory(void)::category;
    if (os_log_type_enabled(*AVAudioEngineLogCategory(void)::category, OS_LOG_TYPE_ERROR))
    {
      *buf = 136316418;
      v23 = "AVAEInternal.h";
      v24 = 1024;
      v25 = 71;
      v26 = 2080;
      v27 = "AVAudioEngineGraph.mm";
      v28 = 1024;
      v29 = 3122;
      v30 = 2080;
      v31 = "GetInputConnectionPointForNode";
      v32 = 2080;
      v33 = "nil != inAVNode";
      _os_log_impl(&dword_1BA5AC000, v6, OS_LOG_TYPE_ERROR, "%25s:%-5d required condition is false: [%s:%d:%s: (%s)]", buf, 0x36u);
    }

    [MEMORY[0x1E695DF30] raise:@"com.apple.coreaudio.avfaudio" format:{@"required condition is false: %s", "nil != inAVNode"}];
  }

  v7 = *this;
  std::recursive_mutex::lock((*this + 112));
  v8 = [(AVAudioNode *)a2 impl];
  if (!AVAudioEngineGraph::IsNodeInGraph(this, v8))
  {
    if (AVAudioEngineLogCategory(void)::once != -1)
    {
      dispatch_once(&AVAudioEngineLogCategory(void)::once, &__block_literal_global_8660);
    }

    v9 = *AVAudioEngineLogCategory(void)::category;
    if (os_log_type_enabled(*AVAudioEngineLogCategory(void)::category, OS_LOG_TYPE_ERROR))
    {
      *buf = 136316418;
      v23 = "AVAEInternal.h";
      v24 = 1024;
      v25 = 71;
      v26 = 2080;
      v27 = "AVAudioEngineGraph.mm";
      v28 = 1024;
      v29 = 3127;
      v30 = 2080;
      v31 = "GetInputConnectionPointForNode";
      v32 = 2080;
      v33 = "IsNodeInGraph(inImpl)";
      _os_log_impl(&dword_1BA5AC000, v9, OS_LOG_TYPE_ERROR, "%25s:%-5d required condition is false: [%s:%d:%s: (%s)]", buf, 0x36u);
    }

    [MEMORY[0x1E695DF30] raise:@"com.apple.coreaudio.avfaudio" format:{@"required condition is false: %s", "IsNodeInGraph(inImpl)"}];
  }

  v10 = (*(*v8 + 240))(v8, a3);
  NodeFromMap = AVAudioEngineGraph::GetNodeFromMap(this, v8);
  if ((*(*NodeFromMap + 112))(NodeFromMap))
  {
    if (AVAudioEngineLogCategory(void)::once != -1)
    {
      dispatch_once(&AVAudioEngineLogCategory(void)::once, &__block_literal_global_8660);
    }

    v12 = *AVAudioEngineLogCategory(void)::category;
    if (os_log_type_enabled(*AVAudioEngineLogCategory(void)::category, OS_LOG_TYPE_ERROR))
    {
      *buf = 136316418;
      v23 = "AVAEInternal.h";
      v24 = 1024;
      v25 = 71;
      v26 = 2080;
      v27 = "AVAudioEngineGraph.mm";
      v28 = 1024;
      v29 = 3135;
      v30 = 2080;
      v31 = "GetInputConnectionPointForNode";
      v32 = 2080;
      v33 = "!graphNode->IsSplitterNode()";
      _os_log_impl(&dword_1BA5AC000, v12, OS_LOG_TYPE_ERROR, "%25s:%-5d required condition is false: [%s:%d:%s: (%s)]", buf, 0x36u);
    }

    [MEMORY[0x1E695DF30] raise:@"com.apple.coreaudio.avfaudio" format:{@"required condition is false: %s", "!graphNode->IsSplitterNode()"}];
  }

  v20 = 0;
  v21 = -1;
  if ((*(*NodeFromMap + 40))(NodeFromMap, 1, v10, &v20))
  {
    if (!(*(*v20 + 112))(v20))
    {
      v14 = [AVAudioConnectionPoint connectionPointWithNode:*(v20 + 16) bus:(*(**(v20 + 24) + 248))(*(v20 + 24), v21)];
LABEL_31:
      v15 = v14;
      goto LABEL_32;
    }

    v18 = 0;
    v19 = -1;
    if ((*(*v20 + 40))(v20, 1, 0, &v18))
    {
      if ((*(*v18 + 112))(v18))
      {
        if (AVAudioEngineLogCategory(void)::once != -1)
        {
          dispatch_once(&AVAudioEngineLogCategory(void)::once, &__block_literal_global_8660);
        }

        v13 = *AVAudioEngineLogCategory(void)::category;
        if (os_log_type_enabled(*AVAudioEngineLogCategory(void)::category, OS_LOG_TYPE_ERROR))
        {
          *buf = 136316418;
          v23 = "AVAEInternal.h";
          v24 = 1024;
          v25 = 71;
          v26 = 2080;
          v27 = "AVAudioEngineGraph.mm";
          v28 = 1024;
          v29 = 3144;
          v30 = 2080;
          v31 = "GetInputConnectionPointForNode";
          v32 = 2080;
          v33 = "!splitterConnPoint.node->IsSplitterNode()";
          _os_log_impl(&dword_1BA5AC000, v13, OS_LOG_TYPE_ERROR, "%25s:%-5d required condition is false: [%s:%d:%s: (%s)]", buf, 0x36u);
        }

        [MEMORY[0x1E695DF30] raise:@"com.apple.coreaudio.avfaudio" format:{@"required condition is false: %s", "!splitterConnPoint.node->IsSplitterNode()"}];
      }

      v14 = [AVAudioConnectionPoint connectionPointWithNode:*(v18 + 16) bus:(*(**(v18 + 24) + 248))(*(v18 + 24), v19)];
      goto LABEL_31;
    }
  }

  v15 = 0;
LABEL_32:
  std::recursive_mutex::unlock((v7 + 112));
  v16 = *MEMORY[0x1E69E9840];
  return v15;
}

uint64_t AVAudioEngineGraph::GetOutputConnectionPointsForNode(AVAudioEngineGraph *this, AVAudioNode *a2, uint64_t a3)
{
  v45 = *MEMORY[0x1E69E9840];
  if (!a2)
  {
    if (AVAudioEngineLogCategory(void)::once != -1)
    {
      dispatch_once(&AVAudioEngineLogCategory(void)::once, &__block_literal_global_8660);
    }

    v6 = *AVAudioEngineLogCategory(void)::category;
    if (os_log_type_enabled(*AVAudioEngineLogCategory(void)::category, OS_LOG_TYPE_ERROR))
    {
      *buf = 136316418;
      v34 = "AVAEInternal.h";
      v35 = 1024;
      v36 = 71;
      v37 = 2080;
      v38 = "AVAudioEngineGraph.mm";
      v39 = 1024;
      v40 = 3160;
      v41 = 2080;
      v42 = "GetOutputConnectionPointsForNode";
      v43 = 2080;
      v44 = "nil != inAVNode";
      _os_log_impl(&dword_1BA5AC000, v6, OS_LOG_TYPE_ERROR, "%25s:%-5d required condition is false: [%s:%d:%s: (%s)]", buf, 0x36u);
    }

    [MEMORY[0x1E695DF30] raise:@"com.apple.coreaudio.avfaudio" format:{@"required condition is false: %s", "nil != inAVNode"}];
  }

  v7 = *this;
  std::recursive_mutex::lock((*this + 112));
  v8 = [(AVAudioNode *)a2 impl];
  if (!AVAudioEngineGraph::IsNodeInGraph(this, v8))
  {
    if (AVAudioEngineLogCategory(void)::once != -1)
    {
      dispatch_once(&AVAudioEngineLogCategory(void)::once, &__block_literal_global_8660);
    }

    v9 = *AVAudioEngineLogCategory(void)::category;
    if (os_log_type_enabled(*AVAudioEngineLogCategory(void)::category, OS_LOG_TYPE_ERROR))
    {
      *buf = 136316418;
      v34 = "AVAEInternal.h";
      v35 = 1024;
      v36 = 71;
      v37 = 2080;
      v38 = "AVAudioEngineGraph.mm";
      v39 = 1024;
      v40 = 3165;
      v41 = 2080;
      v42 = "GetOutputConnectionPointsForNode";
      v43 = 2080;
      v44 = "IsNodeInGraph(inImpl)";
      _os_log_impl(&dword_1BA5AC000, v9, OS_LOG_TYPE_ERROR, "%25s:%-5d required condition is false: [%s:%d:%s: (%s)]", buf, 0x36u);
    }

    [MEMORY[0x1E695DF30] raise:@"com.apple.coreaudio.avfaudio" format:{@"required condition is false: %s", "IsNodeInGraph(inImpl)"}];
  }

  v10 = (*(*v8 + 240))(v8, a3);
  NodeFromMap = AVAudioEngineGraph::GetNodeFromMap(this, v8);
  if ((*(*NodeFromMap + 112))(NodeFromMap))
  {
    if (AVAudioEngineLogCategory(void)::once != -1)
    {
      dispatch_once(&AVAudioEngineLogCategory(void)::once, &__block_literal_global_8660);
    }

    v12 = *AVAudioEngineLogCategory(void)::category;
    if (os_log_type_enabled(*AVAudioEngineLogCategory(void)::category, OS_LOG_TYPE_ERROR))
    {
      *buf = 136316418;
      v34 = "AVAEInternal.h";
      v35 = 1024;
      v36 = 71;
      v37 = 2080;
      v38 = "AVAudioEngineGraph.mm";
      v39 = 1024;
      v40 = 3173;
      v41 = 2080;
      v42 = "GetOutputConnectionPointsForNode";
      v43 = 2080;
      v44 = "!graphNode->IsSplitterNode()";
      _os_log_impl(&dword_1BA5AC000, v12, OS_LOG_TYPE_ERROR, "%25s:%-5d required condition is false: [%s:%d:%s: (%s)]", buf, 0x36u);
    }

    [MEMORY[0x1E695DF30] raise:@"com.apple.coreaudio.avfaudio" format:{@"required condition is false: %s", "!graphNode->IsSplitterNode()"}];
  }

  v31 = 0;
  v32 = -1;
  if (!(*(*NodeFromMap + 40))(NodeFromMap, 0, v10, &v31))
  {
    goto LABEL_53;
  }

  v13 = (*(*v31 + 112))(v31);
  v14 = v31;
  if (!v13)
  {
    v21 = [MEMORY[0x1E695DEC8] arrayWithObject:{+[AVAudioConnectionPoint connectionPointWithNode:bus:](AVAudioConnectionPoint, "connectionPointWithNode:bus:", v31[2], (*(*v31[3] + 248))(v31[3], v32))}];
LABEL_40:
    v22 = v21;
    goto LABEL_41;
  }

  v15 = v31[9];
  v16 = v31[10];
  if (v15 == v16)
  {
    goto LABEL_53;
  }

  v17 = 0;
  do
  {
    if (*v15++)
    {
      ++v17;
    }
  }

  while (v15 != v16);
  if (v17 != 1)
  {
    if (v17 >= 2)
    {
      v28 = &v28;
      v29 = &v28;
      v30 = 0;
      AUGraphNodeBase::GetValidConnectionPoints(v31, &v28);
      v23 = objc_alloc_init(MEMORY[0x1E695DF70]);
      for (i = v29; i != &v28; i = i[1])
      {
        if ((*(*i[2] + 112))(i[2]))
        {
          if (AVAudioEngineLogCategory(void)::once != -1)
          {
            dispatch_once(&AVAudioEngineLogCategory(void)::once, &__block_literal_global_8660);
          }

          v25 = *AVAudioEngineLogCategory(void)::category;
          if (os_log_type_enabled(*AVAudioEngineLogCategory(void)::category, OS_LOG_TYPE_ERROR))
          {
            *buf = 136316418;
            v34 = "AVAEInternal.h";
            v35 = 1024;
            v36 = 71;
            v37 = 2080;
            v38 = "AVAudioEngineGraph.mm";
            v39 = 1024;
            v40 = 3203;
            v41 = 2080;
            v42 = "GetOutputConnectionPointsForNode";
            v43 = 2080;
            v44 = "!connPoint.node->IsSplitterNode()";
            _os_log_impl(&dword_1BA5AC000, v25, OS_LOG_TYPE_ERROR, "%25s:%-5d required condition is false: [%s:%d:%s: (%s)]", buf, 0x36u);
          }

          [MEMORY[0x1E695DF30] raise:@"com.apple.coreaudio.avfaudio" format:{@"required condition is false: %s", "!connPoint.node->IsSplitterNode()"}];
        }

        [v23 addObject:{+[AVAudioConnectionPoint connectionPointWithNode:bus:](AVAudioConnectionPoint, "connectionPointWithNode:bus:", *(i[2] + 16), (*(**(i[2] + 24) + 248))(*(i[2] + 24), *(i + 6)))}];
      }

      v22 = [MEMORY[0x1E695DEC8] arrayWithArray:v23];
      std::__list_imp<AUGraphConnection>::clear(&v28);
      goto LABEL_41;
    }

LABEL_53:
    v22 = [MEMORY[0x1E695DEC8] array];
    goto LABEL_54;
  }

  if (AVAudioEngineLogCategory(void)::once != -1)
  {
    dispatch_once(&AVAudioEngineLogCategory(void)::once, &__block_literal_global_8660);
  }

  v19 = *AVAudioEngineLogCategory(void)::category;
  if (os_log_type_enabled(*AVAudioEngineLogCategory(void)::category, OS_LOG_TYPE_ERROR))
  {
    *buf = 136316418;
    v34 = "AVAEInternal.h";
    v35 = 1024;
    v36 = 71;
    v37 = 2080;
    v38 = "AVAudioEngineGraph.mm";
    v39 = 1024;
    v40 = 3183;
    v41 = 2080;
    v42 = "GetOutputConnectionPointsForNode";
    v43 = 2080;
    v44 = "numSplitterConnections == 0 || numSplitterConnections > 1";
    _os_log_impl(&dword_1BA5AC000, v19, OS_LOG_TYPE_ERROR, "%25s:%-5d required condition is false: [%s:%d:%s: (%s)]", buf, 0x36u);
  }

  [MEMORY[0x1E695DF30] raise:@"com.apple.coreaudio.avfaudio" format:{@"required condition is false: %s", "numSplitterConnections == 0 || numSplitterConnections > 1"}];
  v28 = 0;
  LODWORD(v29) = -1;
  if ((*(*v14 + 40))(v14, 0, 0, &v28))
  {
    if ((*(*v28 + 112))(v28))
    {
      if (AVAudioEngineLogCategory(void)::once != -1)
      {
        dispatch_once(&AVAudioEngineLogCategory(void)::once, &__block_literal_global_8660);
      }

      v20 = *AVAudioEngineLogCategory(void)::category;
      if (os_log_type_enabled(*AVAudioEngineLogCategory(void)::category, OS_LOG_TYPE_ERROR))
      {
        *buf = 136316418;
        v34 = "AVAEInternal.h";
        v35 = 1024;
        v36 = 71;
        v37 = 2080;
        v38 = "AVAudioEngineGraph.mm";
        v39 = 1024;
        v40 = 3190;
        v41 = 2080;
        v42 = "GetOutputConnectionPointsForNode";
        v43 = 2080;
        v44 = "!splitterConnPoint.node->IsSplitterNode()";
        _os_log_impl(&dword_1BA5AC000, v20, OS_LOG_TYPE_ERROR, "%25s:%-5d required condition is false: [%s:%d:%s: (%s)]", buf, 0x36u);
      }

      [MEMORY[0x1E695DF30] raise:@"com.apple.coreaudio.avfaudio" format:{@"required condition is false: %s", "!splitterConnPoint.node->IsSplitterNode()"}];
    }

    v21 = [MEMORY[0x1E695DEC8] arrayWithObject:{+[AVAudioConnectionPoint connectionPointWithNode:bus:](AVAudioConnectionPoint, "connectionPointWithNode:bus:", *(v28 + 16), (*(**(v28 + 24) + 248))(*(v28 + 24), v29))}];
    goto LABEL_40;
  }

  v22 = 0;
LABEL_41:
  if (!v22)
  {
    goto LABEL_53;
  }

LABEL_54:
  std::recursive_mutex::unlock((v7 + 112));
  v26 = *MEMORY[0x1E69E9840];
  return v22;
}

void sub_1BA623D90(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, ...)
{
  va_start(va, a6);
  std::__list_imp<AUGraphConnection>::clear(va);
  std::recursive_mutex::unlock((v6 + 112));
  _Unwind_Resume(a1);
}

size_t AVAudioEngineGraph::ConnAsString(_BYTE *a1, uint64_t a2, uint64_t a3)
{
  v38 = *MEMORY[0x1E69E9840];
  v36 = 0u;
  v37 = 0u;
  v34 = 0u;
  v35 = 0u;
  v32 = 0u;
  v33 = 0u;
  v30 = 0u;
  v31 = 0u;
  v29 = 0u;
  v27 = 0u;
  v28 = 0u;
  v25 = 0u;
  v26 = 0u;
  v23 = 0u;
  v24 = 0u;
  *__str = 0u;
  v6 = *(a3 + 8);
  v7 = *a3;
  if (AVAudioEngineGraph::IsNodeInGraph(a2, *a3))
  {
    v8 = *(v7 + 24);
  }

  else
  {
    v8 = 0;
  }

  if (AVAudioEngineGraph::IsNodeInGraph(a2, v7))
  {
    AUGraphNodeBase::DescAsString(__p, *(v7 + 24));
    if (v21 >= 0)
    {
      v9 = __p;
    }

    else
    {
      v9 = __p[0];
    }

    v10 = snprintf(__str, 0x100uLL, "(bus%d) %p, {%s} -> ", v6, v8, v9);
    if (v21 < 0)
    {
      operator delete(__p[0]);
    }
  }

  else
  {
    v10 = snprintf(__str, 0x100uLL, "(bus%d) %p, {%s} -> ", v6, v8, "");
  }

  v11 = &__str[v10];
  v12 = 256 - v10;
  v13 = *(a3 + 24);
  v14 = *(a3 + 16);
  if (AVAudioEngineGraph::IsNodeInGraph(a2, v14))
  {
    v15 = *(v14 + 24);
  }

  else
  {
    v15 = 0;
  }

  if (AVAudioEngineGraph::IsNodeInGraph(a2, v14))
  {
    AUGraphNodeBase::DescAsString(__p, *(v14 + 24));
    if (v21 >= 0)
    {
      v16 = __p;
    }

    else
    {
      v16 = __p[0];
    }

    snprintf(v11, v12, "(bus%d) %p, {%s}", v13, v15, v16);
    if (v21 < 0)
    {
      operator delete(__p[0]);
    }
  }

  else
  {
    snprintf(v11, v12, "(bus%d) %p, {%s}", v13, v15, "");
  }

  result = strlen(__str);
  if (result >= 0x7FFFFFFFFFFFFFF8)
  {
    std::string::__throw_length_error[abi:ne200100]();
  }

  v18 = result;
  if (result >= 0x17)
  {
    operator new();
  }

  a1[23] = result;
  if (result)
  {
    result = memcpy(a1, __str, result);
  }

  a1[v18] = 0;
  v19 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t std::__function::__func<AVAudioEngineGraph::PrintObject(__sFILE *,char const*)::$_3,std::allocator<AVAudioEngineGraph::PrintObject(__sFILE *,char const*)::$_3>,ETraversalStatus ()(AUGraphNodeBaseV3 &,AUGraphConnection *)>::operator()(uint64_t a1, AUGraphNodeBase *this, const char *a3)
{
  v5 = *(this + 6);
  v6 = *(this + 7);
  if (v5 != v6)
  {
    v7 = 0;
    do
    {
      if (*v5++)
      {
        ++v7;
      }
    }

    while (v5 != v6);
    if (v7)
    {
      goto LABEL_13;
    }
  }

  v9 = *(this + 9);
  v10 = *(this + 10);
  if (v9 != v10)
  {
    v11 = 0;
    do
    {
      if (*v9++)
      {
        ++v11;
      }
    }

    while (v9 != v10);
    if (v11)
    {
LABEL_13:
      AUGraphNodeBase::PrintNodeObject(this, **(a1 + 8), a3);
    }
  }

  v13 = *(a1 + 16);
  v16 = *(v13 + 8);
  v14 = v13 + 8;
  v15 = v16;
  if (v16)
  {
    v17 = *(this + 3);
    v18 = v14;
    do
    {
      v19 = *(v15 + 32);
      v20 = v19 >= v17;
      v21 = v19 < v17;
      if (v20)
      {
        v18 = v15;
      }

      v15 = *(v15 + 8 * v21);
    }

    while (v15);
    if (v18 != v14 && v17 >= *(v18 + 32))
    {
      std::__tree<std::__value_type<AVAudioNodeImplBase *,AUGraphNodeBaseV3 *>,std::__map_value_compare<AVAudioNodeImplBase *,std::__value_type<AVAudioNodeImplBase *,AUGraphNodeBaseV3 *>,std::less<AVAudioNodeImplBase *>,true>,std::allocator<std::__value_type<AVAudioNodeImplBase *,AUGraphNodeBaseV3 *>>>::__erase_unique<AVAudioNodeImplBase *>(*(a1 + 16), v17);
    }
  }

  return 0;
}

__n128 std::__function::__func<AVAudioEngineGraph::PrintObject(__sFILE *,char const*)::$_3,std::allocator<AVAudioEngineGraph::PrintObject(__sFILE *,char const*)::$_3>,ETraversalStatus ()(AUGraphNodeBaseV3 &,AUGraphConnection *)>::__clone(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_1F384D858;
  result = *(a1 + 8);
  *(a2 + 8) = result;
  return result;
}

uint64_t std::__function::__func<AVAudioEngineGraph::PrintObject(__sFILE *,char const*)::$_2,std::allocator<AVAudioEngineGraph::PrintObject(__sFILE *,char const*)::$_2>,ETraversalStatus ()(AUGraphNodeBaseV3 &,AUGraphConnection *)>::operator()(uint64_t a1, AUGraphNodeBase *this, const char *a3)
{
  v5 = *(this + 6);
  v6 = *(this + 7);
  if (v5 != v6)
  {
    v7 = 0;
    do
    {
      if (*v5++)
      {
        ++v7;
      }
    }

    while (v5 != v6);
    if (v7)
    {
      goto LABEL_13;
    }
  }

  v9 = *(this + 9);
  v10 = *(this + 10);
  if (v9 != v10)
  {
    v11 = 0;
    do
    {
      if (*v9++)
      {
        ++v11;
      }
    }

    while (v9 != v10);
    if (v11)
    {
LABEL_13:
      AUGraphNodeBase::PrintNodeObject(this, **(a1 + 8), a3);
    }
  }

  v13 = *(a1 + 16);
  v16 = *(v13 + 8);
  v14 = v13 + 8;
  v15 = v16;
  if (v16)
  {
    v17 = *(this + 3);
    v18 = v14;
    do
    {
      v19 = *(v15 + 32);
      v20 = v19 >= v17;
      v21 = v19 < v17;
      if (v20)
      {
        v18 = v15;
      }

      v15 = *(v15 + 8 * v21);
    }

    while (v15);
    if (v18 != v14 && v17 >= *(v18 + 32))
    {
      std::__tree<std::__value_type<AVAudioNodeImplBase *,AUGraphNodeBaseV3 *>,std::__map_value_compare<AVAudioNodeImplBase *,std::__value_type<AVAudioNodeImplBase *,AUGraphNodeBaseV3 *>,std::less<AVAudioNodeImplBase *>,true>,std::allocator<std::__value_type<AVAudioNodeImplBase *,AUGraphNodeBaseV3 *>>>::__erase_unique<AVAudioNodeImplBase *>(*(a1 + 16), v17);
    }
  }

  return 0;
}

__n128 std::__function::__func<AVAudioEngineGraph::PrintObject(__sFILE *,char const*)::$_2,std::allocator<AVAudioEngineGraph::PrintObject(__sFILE *,char const*)::$_2>,ETraversalStatus ()(AUGraphNodeBaseV3 &,AUGraphConnection *)>::__clone(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_1F384D810;
  result = *(a1 + 8);
  *(a2 + 8) = result;
  return result;
}

uint64_t std::__function::__func<AVAudioEngineGraph::PrintObject(__sFILE *,char const*)::$_1,std::allocator<AVAudioEngineGraph::PrintObject(__sFILE *,char const*)::$_1>,ETraversalStatus ()(AUGraphNodeBaseV3 &,AUGraphConnection *)>::operator()(uint64_t a1, AUGraphNodeBase *this, const char *a3)
{
  if ((*(this + 32) & 8) == 0)
  {
    AUGraphNodeBase::PrintNodeObject(this, **(a1 + 8), a3);
    *(this + 8) |= 8u;
    std::__tree<std::__value_type<AVAudioNodeImplBase *,AUGraphNodeBaseV3 *>,std::__map_value_compare<AVAudioNodeImplBase *,std::__value_type<AVAudioNodeImplBase *,AUGraphNodeBaseV3 *>,std::less<AVAudioNodeImplBase *>,true>,std::allocator<std::__value_type<AVAudioNodeImplBase *,AUGraphNodeBaseV3 *>>>::__erase_unique<AVAudioNodeImplBase *>(*(a1 + 16), *(this + 3));
  }

  return 0;
}

__n128 std::__function::__func<AVAudioEngineGraph::PrintObject(__sFILE *,char const*)::$_1,std::allocator<AVAudioEngineGraph::PrintObject(__sFILE *,char const*)::$_1>,ETraversalStatus ()(AUGraphNodeBaseV3 &,AUGraphConnection *)>::__clone(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_1F384D7C8;
  result = *(a1 + 8);
  *(a2 + 8) = result;
  return result;
}

uint64_t std::__function::__func<AVAudioEngineGraph::PrintObject(__sFILE *,char const*)::$_0,std::allocator<AVAudioEngineGraph::PrintObject(__sFILE *,char const*)::$_0>,ETraversalStatus ()(AUGraphNodeBaseV3 &,AUGraphConnection *)>::operator()(uint64_t a1, AUGraphNodeBase *this, const char *a3)
{
  if ((*(this + 32) & 0x10) == 0)
  {
    AUGraphNodeBase::PrintNodeObject(this, **(a1 + 8), a3);
    *(this + 8) |= 0x10u;
    std::__tree<std::__value_type<AVAudioNodeImplBase *,AUGraphNodeBaseV3 *>,std::__map_value_compare<AVAudioNodeImplBase *,std::__value_type<AVAudioNodeImplBase *,AUGraphNodeBaseV3 *>,std::less<AVAudioNodeImplBase *>,true>,std::allocator<std::__value_type<AVAudioNodeImplBase *,AUGraphNodeBaseV3 *>>>::__erase_unique<AVAudioNodeImplBase *>(*(a1 + 16), *(this + 3));
  }

  return 0;
}

__n128 std::__function::__func<AVAudioEngineGraph::PrintObject(__sFILE *,char const*)::$_0,std::allocator<AVAudioEngineGraph::PrintObject(__sFILE *,char const*)::$_0>,ETraversalStatus ()(AUGraphNodeBaseV3 &,AUGraphConnection *)>::__clone(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_1F384D780;
  result = *(a1 + 8);
  *(a2 + 8) = result;
  return result;
}

const char *CAMemoryStream::Write(CAMemoryStream *this, void *a2, const char *a3)
{
  v3 = a3;
  if (a3 >= 1)
  {
    v6 = *(this + 2);
    v7 = v6 + a3;
    if ((v7 + 1) <= *(this + 3))
    {
      v8 = *(this + 1);
    }

    else
    {
      v8 = malloc_type_realloc(*(this + 1), (v7 & 0xFFFFFFFFFFFFFF80) + 128, 0x100004077774924uLL);
      if (!v8)
      {
        fwrite("realloc failed", 0xEuLL, 1uLL, *MEMORY[0x1E69E9848]);
        return 0xFFFFFFFFLL;
      }

      *(this + 1) = v8;
      *(this + 3) = (v7 & 0xFFFFFFFFFFFFFF80) + 128;
      v6 = *(this + 2);
    }

    memcpy(&v8[v6], a2, v3);
    *(this + 2) = v7;
  }

  return v3;
}

uint64_t AVAudioEngineGraph::SetManualRenderingMode(AVAudioEngineGraph *this, int a2, AVAudioEngineManualRenderingMode a3, NSError **a4)
{
  v8 = *this;
  std::recursive_mutex::lock((*this + 112));
  if (*(this + 187) != a2 || *(this + 24) != a3)
  {
    if (*(this + 185))
    {
      if (!a4)
      {
        v10 = 0;
        goto LABEL_13;
      }

      v9 = [MEMORY[0x1E696ABC0] errorWithDomain:@"com.apple.coreaudio.avfaudio" code:-80801 userInfo:0];
      v10 = 0;
      goto LABEL_12;
    }

    *(this + 187) = a2;
    if (a2)
    {
      v11 = a3;
    }

    else
    {
      v11 = AVAudioEngineManualRenderingModeRealtime;
    }

    *(this + 24) = v11;
  }

  v10 = 1;
  if (a4)
  {
    v9 = 0;
LABEL_12:
    *a4 = v9;
  }

LABEL_13:
  std::recursive_mutex::unlock((v8 + 112));
  return v10;
}

uint64_t AVAudioEngineGraph::RenderToABL(AVAudioNodeImplBase **this, uint64_t a2, AudioBufferList *a3, int *a4)
{
  v36 = *MEMORY[0x1E69E9840];
  v8 = -80802;
  if (*(this + 187) == 1)
  {
    if (*(this + 184) == 1)
    {
      NodeFromMap = AVAudioEngineGraph::GetNodeFromMap(this, this[3]);
      if (!NodeFromMap)
      {
        if (AVAudioEngineLogCategory(void)::once != -1)
        {
          dispatch_once(&AVAudioEngineLogCategory(void)::once, &__block_literal_global_8660);
        }

        v10 = *AVAudioEngineLogCategory(void)::category;
        if (os_log_type_enabled(*AVAudioEngineLogCategory(void)::category, OS_LOG_TYPE_ERROR))
        {
          *buf = 136316418;
          v25 = "AVAEInternal.h";
          v26 = 1024;
          v27 = 71;
          v28 = 2080;
          v29 = "AVAudioEngineGraph.mm";
          v30 = 1024;
          v31 = 3580;
          v32 = 2080;
          v33 = "RenderToABL";
          v34 = 2080;
          v35 = "outputNode";
          _os_log_impl(&dword_1BA5AC000, v10, OS_LOG_TYPE_ERROR, "%25s:%-5d required condition is false: [%s:%d:%s: (%s)]", buf, 0x36u);
        }

        [MEMORY[0x1E695DF30] raise:@"com.apple.coreaudio.avfaudio" format:{@"required condition is false: %s", "outputNode"}];
      }

      v8 = (*(*NodeFromMap + 168))(NodeFromMap, a2, a3, this[25]);
    }
  }

  else
  {
    v8 = -80800;
  }

  if (a4)
  {
    *a4 = v8;
  }

  if (v8)
  {
    result = -1;
  }

  else
  {
    result = AVAudioEngineGraph::GetNodeFromMap(this, this[2]);
    if (result)
    {
      result = (*(*result + 176))(result);
    }
  }

  if (a3)
  {
    mNumberBuffers = a3->mNumberBuffers;
    if (mNumberBuffers)
    {
      if (v8 || result == 1 && (v20 = this[8], v20 - this[7] == 8) && (v21 = *(v20 - 1)) != 0 && (v22 = this[2]) != 0 && *(v21 + 24) == v22)
      {
        v13 = (mNumberBuffers + 3) & 0x1FFFFFFFCLL;
        v14 = vdupq_n_s64(mNumberBuffers - 1);
        v15 = xmmword_1BA6CF300;
        v16 = xmmword_1BA6CF310;
        v17 = &a3[1].mBuffers[0].mData + 1;
        v18 = vdupq_n_s64(4uLL);
        do
        {
          v19 = vmovn_s64(vcgeq_u64(v14, v16));
          if (vuzp1_s16(v19, *v14.i8).u8[0])
          {
            *(v17 - 8) = 0;
          }

          if (vuzp1_s16(v19, *&v14).i8[2])
          {
            *(v17 - 4) = 0;
          }

          if (vuzp1_s16(*&v14, vmovn_s64(vcgeq_u64(v14, *&v15))).i32[1])
          {
            *v17 = 0;
            v17[4] = 0;
          }

          v15 = vaddq_s64(v15, v18);
          v16 = vaddq_s64(v16, v18);
          v17 += 16;
          v13 -= 4;
        }

        while (v13);
      }

      else if (a3->mBuffers[0].mDataByteSize)
      {
        this[25] = (this[25] + a2);
      }
    }
  }

  v23 = *MEMORY[0x1E69E9840];
  return result;
}

BOOL std::__function::__func<AVAudioEngineGraph::LastRenderErrorInChain(AVAudioNodeImplBase *)::$_0,std::allocator<AVAudioEngineGraph::LastRenderErrorInChain(AVAudioNodeImplBase *)::$_0>,ETraversalStatus ()(AUGraphNodeBaseV3 &,AUGraphConnection *)>::operator()(uint64_t a1, void *a2)
{
  v4 = (*(*a2 + 368))(a2);
  if (v4)
  {
    v5 = a2[2];
    v6 = *(a1 + 8);
    if (*(v6 + 16) == 1)
    {
      *v6 = v4;
      *(v6 + 8) = v5;
    }

    else
    {
      *v6 = v4;
      *(v6 + 8) = v5;
      *(v6 + 16) = 1;
    }
  }

  return v4 != 0;
}

uint64_t std::__function::__func<AVAudioEngineGraph::LastRenderErrorInChain(AVAudioNodeImplBase *)::$_0,std::allocator<AVAudioEngineGraph::LastRenderErrorInChain(AVAudioNodeImplBase *)::$_0>,ETraversalStatus ()(AUGraphNodeBaseV3 &,AUGraphConnection *)>::__clone(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_1F384D738;
  a2[1] = v2;
  return result;
}

uint64_t AVAudioEnvironmentNodeImpl::SetManualRenderingMode(AVAudioEnvironmentNodeImpl *this, unsigned int a2, AVAudioEngineManualRenderingMode a3)
{
  v4 = *(this + 72);
  *(this + 72) = a2;
  if (a2)
  {
    v5 = a3;
  }

  else
  {
    v5 = AVAudioEngineManualRenderingModeRealtime;
  }

  *(this + 10) = v5;
  if (a3)
  {
    v6 = 0;
  }

  else
  {
    v6 = a2;
  }

  v7 = (*(*this + 40))(this);
  result = (*(*v7 + 184))(v7, v6);
  *(this + 49) = v6;
  if (v4 != *(this + 72) && !*(this + 23))
  {

    return AVAudioEnvironmentNodeImpl::UpdateAutomaticOutputType(this);
  }

  return result;
}