void *CI::liveROIs::unref_roi(void *result, uint64_t a2)
{
  v2 = result;
  v4 = *result;
  v3 = result[1];
  if (*result == v3)
  {
LABEL_5:
    v4 = result[1];
  }

  else
  {
    while (*v4 != *a2 || *(v4 + 8) != *(a2 + 8))
    {
      v4 += 24;
      if (v4 == v3)
      {
        goto LABEL_5;
      }
    }
  }

  v5 = *(v4 + 16) - 1;
  *(v4 + 16) = v5;
  if (!v5)
  {
    v6 = v3 - (v4 + 24);
    if (v3 != v4 + 24)
    {
      result = memmove(v4, (v4 + 24), v3 - (v4 + 24));
    }

    v2[1] = v4 + v6;
  }

  return result;
}

void std::__allocate_at_least[abi:nn200100]<std::allocator<CI::roiTuple>>(uint64_t a1, unint64_t a2)
{
  if (a2 < 0xAAAAAAAAAAAAAABLL)
  {
    operator new();
  }

  std::vector<CI::SWRendererFunctionInputNode>::__throw_length_error[abi:nn200100]();
}

void *std::vector<CI::roiTuple>::__assign_with_size[abi:nn200100]<CI::roiTuple*,CI::roiTuple*>(void *result, char *__src, char *a3, unint64_t a4)
{
  v6 = result;
  v7 = result[2];
  v8 = *result;
  if (0xAAAAAAAAAAAAAAABLL * ((v7 - *result) >> 3) < a4)
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

    if (a4 <= 0xAAAAAAAAAAAAAAALL)
    {
      v9 = 0xAAAAAAAAAAAAAAABLL * (v7 >> 3);
      v10 = 2 * v9;
      if (2 * v9 <= a4)
      {
        v10 = a4;
      }

      if (v9 >= 0x555555555555555)
      {
        v11 = 0xAAAAAAAAAAAAAAALL;
      }

      else
      {
        v11 = v10;
      }

      std::vector<CI::roiTuple>::__vallocate[abi:nn200100](v6, v11);
    }

    std::vector<CI::SWRendererFunctionInputNode>::__throw_length_error[abi:nn200100]();
  }

  v12 = result[1];
  v13 = v12 - v8;
  if (0xAAAAAAAAAAAAAAABLL * ((v12 - v8) >> 3) >= a4)
  {
    v16 = a3 - __src;
    if (v16)
    {
      result = memmove(*result, __src, v16);
    }

    v15 = &v8[v16];
  }

  else
  {
    v14 = &__src[v13];
    if (v12 != v8)
    {
      result = memmove(*result, __src, v13);
      v12 = v6[1];
    }

    if (a3 != v14)
    {
      result = memmove(v12, v14, a3 - v14);
    }

    v15 = &v12[a3 - v14];
  }

  v6[1] = v15;
  return result;
}

void std::vector<CI::roiTuple>::__vallocate[abi:nn200100](uint64_t a1, unint64_t a2)
{
  if (a2 < 0xAAAAAAAAAAAAAABLL)
  {
    std::__allocate_at_least[abi:nn200100]<std::allocator<CI::roiTuple>>(a1, a2);
  }

  std::vector<CI::SWRendererFunctionInputNode>::__throw_length_error[abi:nn200100]();
}

void CI::NodeToNodeMap::~NodeToNodeMap(CI::NodeToNodeMap *this)
{
  CI::NodeToNodeMap::~NodeToNodeMap(this);

  JUMPOUT(0x19EAF5590);
}

{
  *this = &unk_1F103CE08;
  v2 = this + 8;
  v3 = *(this + 1);
  v4 = this + 16;
  if (v3 != this + 16)
  {
    do
    {
      v5 = *(v3 + 4);
      if (v5)
      {
        CI::Object::unref(v5);
      }

      v6 = *(v3 + 5);
      if (v6)
      {
        CI::Object::unref(v6);
      }

      v7 = *(v3 + 1);
      if (v7)
      {
        do
        {
          v8 = v7;
          v7 = *v7;
        }

        while (v7);
      }

      else
      {
        do
        {
          v8 = *(v3 + 2);
          v9 = *v8 == v3;
          v3 = v8;
        }

        while (!v9);
      }

      v3 = v8;
    }

    while (v8 != v4);
  }

  std::__tree<std::__value_type<unsigned long long,CI::DAGHelper::ImageArgInfo>,std::__map_value_compare<unsigned long long,std::__value_type<unsigned long long,CI::DAGHelper::ImageArgInfo>,std::less<unsigned long long>,true>,std::allocator<std::__value_type<unsigned long long,CI::DAGHelper::ImageArgInfo>>>::destroy(v2, *(this + 2));
}

void ___ZN2CI11ObjectCacheINS_11ProgramNodeEyLb0EE6insertEyPS1_j_block_invoke(void *a1)
{
  v2 = a1[4];
  ++v2[1];
  v3 = std::__hash_table<std::__hash_value_type<CI::ProgramDigest,CI::ObjectCache<CI::MainProgram,CI::ProgramDigest,false>::Entry>,std::__unordered_map_hasher<CI::ProgramDigest,std::__hash_value_type<CI::ProgramDigest,CI::ObjectCache<CI::MainProgram,CI::ProgramDigest,false>::Entry>,std::hash<CI::ProgramDigest>,std::equal_to<CI::ProgramDigest>,true>,std::__unordered_map_equal<CI::ProgramDigest,std::__hash_value_type<CI::ProgramDigest,CI::ObjectCache<CI::MainProgram,CI::ProgramDigest,false>::Entry>,std::equal_to<CI::ProgramDigest>,std::hash<CI::ProgramDigest>,true>,std::allocator<std::__hash_value_type<CI::ProgramDigest,CI::ObjectCache<CI::MainProgram,CI::ProgramDigest,false>::Entry>>>::find<CI::ProgramDigest>(v2 + 2, a1 + 5);
  if (!v3)
  {
    if (v2[5] == *v2)
    {
      CI::ObjectCache<CI::ProgramNode,unsigned long long,false>::evict(v2);
    }

    std::__hash_table<std::__hash_value_type<unsigned long long,CI::ObjectCache<CI::ProgramNode,unsigned long long,false>::Entry>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,CI::ObjectCache<CI::ProgramNode,unsigned long long,false>::Entry>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,CI::ObjectCache<CI::ProgramNode,unsigned long long,false>::Entry>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,CI::ObjectCache<CI::ProgramNode,unsigned long long,false>::Entry>>>::__emplace_unique_impl<std::piecewise_construct_t const&,std::tuple<unsigned long long const&>,std::tuple<CI::ProgramNode* const&,unsigned long long &,unsigned int const&>>();
  }

  v3[4] = v2[1];
  v4 = a1[6];
  if (v4)
  {

    CI::Object::unref(v4);
  }
}

uint64_t CI::ObjectCache<CI::ProgramNode,unsigned long long,false>::evict(uint64_t a1)
{
  v1 = *(a1 + 32);
  if (v1)
  {
    v2 = *(a1 + 32);
    do
    {
      if (v2[4] < v1[4])
      {
        v1 = v2;
      }

      v2 = *v2;
    }

    while (v2);
  }

  std::__hash_table<std::__hash_value_type<CI::ProgramDigest,CI::ObjectCache<CI::MainProgram,CI::ProgramDigest,false>::Entry>,std::__unordered_map_hasher<CI::ProgramDigest,std::__hash_value_type<CI::ProgramDigest,CI::ObjectCache<CI::MainProgram,CI::ProgramDigest,false>::Entry>,std::hash<CI::ProgramDigest>,std::equal_to<CI::ProgramDigest>,true>,std::__unordered_map_equal<CI::ProgramDigest,std::__hash_value_type<CI::ProgramDigest,CI::ObjectCache<CI::MainProgram,CI::ProgramDigest,false>::Entry>,std::equal_to<CI::ProgramDigest>,std::hash<CI::ProgramDigest>,true>,std::allocator<std::__hash_value_type<CI::ProgramDigest,CI::ObjectCache<CI::MainProgram,CI::ProgramDigest,false>::Entry>>>::remove((a1 + 16), v1, v4);
  return std::unique_ptr<std::__hash_node<std::__hash_value_type<unsigned long long,CI::ObjectCache<CI::ProgramNode,unsigned long long,false>::Entry>,void *>,std::__hash_node_destructor<std::allocator<std::__hash_node<std::__hash_value_type<unsigned long long,CI::ObjectCache<CI::ProgramNode,unsigned long long,false>::Entry>,void *>>>>::~unique_ptr[abi:nn200100](v4);
}

uint64_t std::unique_ptr<std::__hash_node<std::__hash_value_type<unsigned long long,CI::ObjectCache<CI::ProgramNode,unsigned long long,false>::Entry>,void *>,std::__hash_node_destructor<std::allocator<std::__hash_node<std::__hash_value_type<unsigned long long,CI::ObjectCache<CI::ProgramNode,unsigned long long,false>::Entry>,void *>>>>::~unique_ptr[abi:nn200100](uint64_t a1)
{
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    if (*(a1 + 16) == 1)
    {
      CI::ObjectCache<CI::ProgramNode,unsigned long long,false>::Entry::~Entry(v2 + 24);
    }

    operator delete(v2);
  }

  return a1;
}

uint64_t ___ZN2CIL22dump_program_graph_preEPNS_7ContextEPKNS_17RenderDestinationEPKcPNS_4NodeERK6CGRectNS_11PixelFormatE_block_invoke(uint64_t a1, FILE *__stream)
{
  if (*(a1 + 32))
  {
    fprintf(__stream, "[%s] ", *(a1 + 40));
  }

  fwrite("program graph ", 0xEuLL, 1uLL, __stream);
  if (*(*(a1 + 48) + 344))
  {
    fwrite("prepare ", 8uLL, 1uLL, __stream);
  }

  fprintf(__stream, "%s ", *(a1 + 56));
  v4 = (*(**(a1 + 48) + 272))() - 1;
  v5 = "";
  if (v4 <= 2)
  {
    v5 = off_1E75C8040[v4];
  }

  v6 = (*(**(a1 + 48) + 312))(*(a1 + 48));
  v7 = (*(**(a1 + 48) + 280))();
  v8 = *(a1 + 48);
  v10 = *(v8 + 236);
  v9 = (v8 + 236);
  if (v10)
  {
    v11 = ":";
  }

  else
  {
    v11 = "";
  }

  fprintf(__stream, "(%s%s context %d%s%s frame %lu tile %lu) ", v5, v6, v7, v11, v9, *(v9 - 84), *(v9 - 44));
  if ((*(**(a1 + 48) + 16))(*(a1 + 48)) == 85)
  {
    v12 = CI::MetalContext::queue(*(a1 + 48));
    fprintf(__stream, "commandQueue=%p ", v12);
  }

  v13 = *(a1 + 88);
  if (!v13)
  {
    v14 = *(a1 + 64);
    if (v14)
    {
      v13 = *(v14 + 32);
    }

    else
    {
      v13 = 0;
    }
  }

  v15 = CI::name_for_format(v13);
  fprintf(__stream, "format=%s roi=", v15);
  CI::fprintf(__stream, v16, **(a1 + 72));
  fwrite(" = \n", 4uLL, 1uLL, __stream);
  v17 = CI_TEMP_DIR();
  v18 = *(a1 + 80);
  v19 = CI_PRINT_TREE_graphviz();
  fprintf(__stream, "  %s/%s.%s\n", v17, v18, v19);

  return fputc(10, __stream);
}

uint64_t ___ZN2CIL19print_program_graphEPKNS_7ContextEmmPKNS_17RenderDestinationEdPKNS_8TileTaskEPKcPNS_4NodeERK6CGRectNS_11PixelFormatE_block_invoke(uint64_t a1, FILE *__stream)
{
  v4 = *(a1 + 32);
  if (v4)
  {
    v5 = *(v4 + 16);
    if (v5)
    {
      fputc(91, __stream);
      CI::fprintf(__stream, v5, v6);
      fwrite("] ", 2uLL, 1uLL, __stream);
    }
  }

  fwrite("program graph ", 0xEuLL, 1uLL, __stream);
  if (*(*(a1 + 40) + 344))
  {
    fwrite("prepare ", 8uLL, 1uLL, __stream);
  }

  fprintf(__stream, "%s ", *(a1 + 48));
  v7 = *(a1 + 32);
  if (v7)
  {
    if ((*(*v7 + 40))(v7))
    {
      v8 = (*(**(a1 + 32) + 40))(*(a1 + 32));
      fprintf(__stream, "%p ", v8);
    }

    v9 = *(a1 + 32);
    if (v9)
    {
      v10 = (*(*v9 + 48))(v9);
      v11 = (*(**(a1 + 32) + 56))(*(a1 + 32));
      fprintf(__stream, "%ldx%ld ", v10, v11);
    }
  }

  v12 = (*(**(a1 + 40) + 272))(*(a1 + 40)) - 1;
  v13 = "";
  if (v12 <= 2)
  {
    v13 = off_1E75C8040[v12];
  }

  v14 = (*(**(a1 + 40) + 312))(*(a1 + 40));
  v15 = (*(**(a1 + 40) + 280))();
  v16 = *(a1 + 40);
  v18 = *(v16 + 236);
  v17 = (v16 + 236);
  if (v18)
  {
    v19 = ":";
  }

  else
  {
    v19 = "";
  }

  fprintf(__stream, "(%s%s context %d%s%s frame %lu tile %lu) ", v13, v14, v15, v19, v17, *(a1 + 56), *(a1 + 64));
  if ((*(**(a1 + 40) + 16))(*(a1 + 40)) == 85)
  {
    v20 = CI::MetalContext::queue(*(a1 + 40));
    fprintf(__stream, "commandQueue=%p ", v20);
  }

  v21 = *(a1 + 104);
  if (!v21)
  {
    v22 = *(a1 + 32);
    if (v22)
    {
      v21 = *(v22 + 32);
    }

    else
    {
      v21 = 0;
    }
  }

  v23 = CI::name_for_format(v21);
  fprintf(__stream, "format=%s roi=", v23);
  CI::fprintf(__stream, v24, **(a1 + 72));
  v25 = *(a1 + 80);
  if (v25)
  {
    v26 = CI::TileTask::executionNanoSec(v25);
    v27 = CI::TileTask::executionCycles(*(a1 + 80));
    v28 = CI::TileTask::compileTime(*(a1 + 80));
    v29 = CI::TileTask::compileWaitTime(*(a1 + 80));
    fprintf(__stream, " frameTime=%dms", (*(a1 + 88) * 1000.0 + 0.5));
    SurfaceCachePeakNonVolatileSize = GetSurfaceCachePeakNonVolatileSize();
    fprintf(__stream, " peakNonVolatile=%ldMB", SurfaceCachePeakNonVolatileSize >> 20);
    if (v26)
    {
      v31 = v26 / 1000000.0 + 0.5;
    }

    else
    {
      v31 = CI::TileTask::executionTime(*(a1 + 80)) * 1000.0 + 0.5;
    }

    fprintf(__stream, " executionTime=%dms", v31);
    v33 = CI::TileTask::pixelsProcessed(*(a1 + 80));
    fprintf(__stream, " pixels=%dMP", (v33 / 1000000.0 + 0.5));
    v34 = CI::TileTask::fillPixels(*(a1 + 80));
    fprintf(__stream, " filled=%dMP", (v34 / 1000000.0 + 0.5));
    fprintf(__stream, " compileTime=%.1fms", v28 * 1000.0);
    fprintf(__stream, " compileWait=%.1fms", v29 * 1000.0);
    if (v27)
    {
      fprintf(__stream, " kernelCycles=%d", v27);
    }

    fwrite(" = \n", 4uLL, 1uLL, __stream);
    CI::Node::print_graph(*(a1 + 96), __stream, *(a1 + 80) + 88);
  }

  else
  {
    fwrite(" = \n", 4uLL, 1uLL, __stream);
    v32 = *(a1 + 96);
    memset(v36, 0, sizeof(v36));
    v37 = 1065353216;
    CI::Node::print_graph(v32, __stream, v36);
    std::__hash_table<std::__hash_value_type<CI::NodeIndex,CI::Node::NodeStats>,std::__unordered_map_hasher<CI::NodeIndex,std::__hash_value_type<CI::NodeIndex,CI::Node::NodeStats>,std::hash<CI::NodeIndex>,std::equal_to<CI::NodeIndex>,true>,std::__unordered_map_equal<CI::NodeIndex,std::__hash_value_type<CI::NodeIndex,CI::Node::NodeStats>,std::equal_to<CI::NodeIndex>,std::hash<CI::NodeIndex>,true>,std::allocator<std::__hash_value_type<CI::NodeIndex,CI::Node::NodeStats>>>::~__hash_table(v36);
  }

  return fputc(10, __stream);
}

uint64_t ___ZN2CIL23dump_program_graph_postEPNS_10RenderTaskE_block_invoke(uint64_t a1, FILE *a2)
{
  v55 = *MEMORY[0x1E69E9840];
  v4 = *(a1 + 32);
  v5 = *(v4 + 96);
  v53 = 0u;
  v54 = 0u;
  v51 = 0u;
  v52 = 0u;
  v49 = 0u;
  v50 = 0u;
  v47 = 0u;
  v48 = 0u;
  v45 = 0u;
  v46 = 0u;
  v43 = 0u;
  v44 = 0u;
  v41 = 0u;
  v42 = 0u;
  *buffer = 0u;
  v40 = 0u;
  if (v5)
  {
    CFStringGetCString(v5, buffer, 256, 0x8000100u);
  }

  else
  {
    strlcpy(buffer, (*(v4 + 24) + 236), 0x100uLL);
  }

  v37 = 0u;
  v38 = 0u;
  v35 = 0u;
  v36 = 0u;
  v33 = 0u;
  v34 = 0u;
  v31 = 0u;
  v32 = 0u;
  v29 = 0u;
  v30 = 0u;
  v27 = 0u;
  v28 = 0u;
  v25 = 0u;
  v26 = 0u;
  *__str = 0u;
  v24 = 0u;
  v6 = getpid();
  if (buffer[0])
  {
    v7 = "_";
  }

  else
  {
    v7 = "";
  }

  v8 = (*(**(*(a1 + 32) + 24) + 280))();
  snprintf(__str, 0x100uLL, "%d%s%s_%d_%lu_program_graph", v6, v7, buffer, v8, *(*(a1 + 32) + 32));
  if (v5)
  {
    fprintf(a2, "[%s] ", buffer);
  }

  fprintf(a2, "program graph file %s ", *(*(a1 + 32) + 16));
  v9 = (*(**(*(a1 + 32) + 24) + 312))();
  v10 = (*(**(*(a1 + 32) + 24) + 280))();
  v11 = *(a1 + 32);
  v13 = *(v11 + 24);
  v12 = *(v11 + 32);
  v15 = *(v13 + 236);
  v14 = (v13 + 236);
  if (v15)
  {
    v16 = ":";
  }

  else
  {
    v16 = "";
  }

  fprintf(a2, "(%s%s context %d%s%s frame %lu) ", "", v9, v10, v16, v14, v12);
  v17 = CI::name_for_format(*(*(a1 + 32) + 80));
  fprintf(a2, "format=%s roi=", v17);
  CI::fprintf(a2, v18, *(*(a1 + 32) + 48));
  fwrite(" = \n", 4uLL, 1uLL, a2);
  v19 = CI_TEMP_DIR();
  v20 = CI_PRINT_TREE_graphviz();
  fprintf(a2, "  %s/%s.%s\n", v19, __str, v20);
  v21 = *(a1 + 32);
  if (CI::format_for_graphviz(void)::onceToken != -1)
  {
    CI::prepare_initial_graph();
  }

  CI::RenderTask::dump_for_graphviz(v21, __str, CI::format_for_graphviz(void)::fmt);
  return fputc(10, a2);
}

void ___ZN2CIL13_image_renderEPKcPNS_7ContextEPNS_5ImageE6CGRectNS_11PixelFormatEmRK7CGPoint_block_invoke(uint64_t a1, CI::ProgramNode *a2, CGFloat a3, CGFloat a4, CGFloat a5, CGFloat a6)
{
  v6.origin.x = a3;
  v6.origin.y = a4;
  v6.size.width = a5;
  v6.size.height = a6;
  CI::Context::render(*(a1 + 32), a2, &v6);
}

uint64_t ___ZN2CI11ObjectCacheINS_4NodeEyLb0EE4findEy_block_invoke(void *a1)
{
  v2 = a1[5];
  result = std::__hash_table<std::__hash_value_type<CI::ProgramDigest,CI::ObjectCache<CI::MainProgram,CI::ProgramDigest,false>::Entry>,std::__unordered_map_hasher<CI::ProgramDigest,std::__hash_value_type<CI::ProgramDigest,CI::ObjectCache<CI::MainProgram,CI::ProgramDigest,false>::Entry>,std::hash<CI::ProgramDigest>,std::equal_to<CI::ProgramDigest>,true>,std::__unordered_map_equal<CI::ProgramDigest,std::__hash_value_type<CI::ProgramDigest,CI::ObjectCache<CI::MainProgram,CI::ProgramDigest,false>::Entry>,std::equal_to<CI::ProgramDigest>,std::hash<CI::ProgramDigest>,true>,std::allocator<std::__hash_value_type<CI::ProgramDigest,CI::ObjectCache<CI::MainProgram,CI::ProgramDigest,false>::Entry>>>::find<CI::ProgramDigest>((v2 + 16), a1 + 6);
  if (result)
  {
    v4 = *(v2 + 8) + 1;
    *(v2 + 8) = v4;
    *(result + 32) = v4;
    result = *(result + 24);
    if (result)
    {
      result = CI::Object::ref(result);
    }

    *(*(a1[4] + 8) + 24) = result;
  }

  return result;
}

uint64_t std::map<CI::ImageIndex,CI::ImageDigestForRenderGraphCache>::insert[abi:nn200100]<std::__map_const_iterator<std::__tree_const_iterator<std::__value_type<CI::ImageIndex,CI::ImageDigestForRenderGraphCache>,std::__tree_node<std::__value_type<CI::ImageIndex,CI::ImageDigestForRenderGraphCache>,void *> *,long>>>(uint64_t result, unsigned int *a2, unsigned int *a3)
{
  if (a2 != a3)
  {
    v4 = a2;
    v5 = result;
    do
    {
      result = std::__tree<std::__value_type<CI::ImageIndex,CI::ImageDigestForRenderGraphCache>,std::__map_value_compare<CI::ImageIndex,std::__value_type<CI::ImageIndex,CI::ImageDigestForRenderGraphCache>,std::less<CI::ImageIndex>,true>,std::allocator<std::__value_type<CI::ImageIndex,CI::ImageDigestForRenderGraphCache>>>::__emplace_hint_unique_key_args<CI::ImageIndex,std::pair<CI::ImageIndex const,CI::ImageDigestForRenderGraphCache> const&>(v5, v5 + 1, v4 + 8);
      v6 = *(v4 + 1);
      if (v6)
      {
        do
        {
          v7 = v6;
          v6 = *v6;
        }

        while (v6);
      }

      else
      {
        do
        {
          v7 = *(v4 + 2);
          v8 = *v7 == v4;
          v4 = v7;
        }

        while (!v8);
      }

      v4 = v7;
    }

    while (v7 != a3);
  }

  return result;
}

uint64_t std::__tree<std::__value_type<CI::ImageIndex,CI::ImageDigestForRenderGraphCache>,std::__map_value_compare<CI::ImageIndex,std::__value_type<CI::ImageIndex,CI::ImageDigestForRenderGraphCache>,std::less<CI::ImageIndex>,true>,std::allocator<std::__value_type<CI::ImageIndex,CI::ImageDigestForRenderGraphCache>>>::__emplace_hint_unique_key_args<CI::ImageIndex,std::pair<CI::ImageIndex const,CI::ImageDigestForRenderGraphCache> const&>(void *a1, uint64_t *a2, unsigned int *a3)
{
  v3 = *std::__tree<std::__value_type<CI::ImageIndex,CI::ImageDigestForRenderGraphCache>,std::__map_value_compare<CI::ImageIndex,std::__value_type<CI::ImageIndex,CI::ImageDigestForRenderGraphCache>,std::less<CI::ImageIndex>,true>,std::allocator<std::__value_type<CI::ImageIndex,CI::ImageDigestForRenderGraphCache>>>::__find_equal<CI::ImageIndex>(a1, a2, &v6, &v5, a3);
  if (!v3)
  {
    operator new();
  }

  return v3;
}

uint64_t *std::__tree<std::__value_type<CI::ImageIndex,CI::ImageDigestForRenderGraphCache>,std::__map_value_compare<CI::ImageIndex,std::__value_type<CI::ImageIndex,CI::ImageDigestForRenderGraphCache>,std::less<CI::ImageIndex>,true>,std::allocator<std::__value_type<CI::ImageIndex,CI::ImageDigestForRenderGraphCache>>>::__find_equal<CI::ImageIndex>(void *a1, uint64_t *a2, uint64_t **a3, uint64_t *a4, unsigned int *a5)
{
  v5 = a1 + 1;
  if (a1 + 1 == a2 || (v6 = *a5, v7 = *(a2 + 8), *a5 < v7))
  {
    v8 = *a2;
    if (*a1 == a2)
    {
      v10 = a2;
LABEL_17:
      if (v8)
      {
        *a3 = v10;
        return v10 + 1;
      }

      else
      {
        *a3 = a2;
        return a2;
      }
    }

    if (v8)
    {
      v9 = *a2;
      do
      {
        v10 = v9;
        v9 = v9[1];
      }

      while (v9);
    }

    else
    {
      v13 = a2;
      do
      {
        v10 = v13[2];
        v14 = *v10 == v13;
        v13 = v10;
      }

      while (v14);
    }

    v15 = *a5;
    if (*(v10 + 8) < *a5)
    {
      goto LABEL_17;
    }

    v16 = *v5;
    if (*v5)
    {
      do
      {
        while (1)
        {
          v17 = v16;
          v18 = *(v16 + 32);
          if (v15 >= v18)
          {
            break;
          }

          v16 = *v17;
          v5 = v17;
          if (!*v17)
          {
            goto LABEL_29;
          }
        }

        if (v18 >= v15)
        {
          break;
        }

        v5 = v17 + 1;
        v16 = v17[1];
      }

      while (v16);
    }

    else
    {
      v17 = a1 + 1;
    }

LABEL_29:
    *a3 = v17;
    return v5;
  }

  if (v7 >= v6)
  {
    *a3 = a2;
    *a4 = a2;
    return a4;
  }

  v11 = a2[1];
  if (v11)
  {
    v12 = a2[1];
    do
    {
      a4 = v12;
      v12 = *v12;
    }

    while (v12);
  }

  else
  {
    v19 = a2;
    do
    {
      a4 = v19[2];
      v14 = *a4 == v19;
      v19 = a4;
    }

    while (!v14);
  }

  if (a4 != v5 && v6 >= *(a4 + 8))
  {
    v20 = *v5;
    if (*v5)
    {
      do
      {
        while (1)
        {
          v21 = v20;
          v22 = *(v20 + 32);
          if (v6 >= v22)
          {
            break;
          }

          v20 = *v21;
          v5 = v21;
          if (!*v21)
          {
            goto LABEL_48;
          }
        }

        if (v22 >= v6)
        {
          break;
        }

        v5 = v21 + 1;
        v20 = v21[1];
      }

      while (v20);
    }

    else
    {
      v21 = a1 + 1;
    }

LABEL_48:
    *a3 = v21;
    return v5;
  }

  if (v11)
  {
    *a3 = a4;
  }

  else
  {
    *a3 = a2;
    return a2 + 1;
  }

  return a4;
}

void ___ZN2CI11ObjectCacheINS_4NodeEyLb0EE6insertEyPS1_j_block_invoke(void *a1)
{
  v2 = a1[4];
  ++v2[1];
  v3 = std::__hash_table<std::__hash_value_type<CI::ProgramDigest,CI::ObjectCache<CI::MainProgram,CI::ProgramDigest,false>::Entry>,std::__unordered_map_hasher<CI::ProgramDigest,std::__hash_value_type<CI::ProgramDigest,CI::ObjectCache<CI::MainProgram,CI::ProgramDigest,false>::Entry>,std::hash<CI::ProgramDigest>,std::equal_to<CI::ProgramDigest>,true>,std::__unordered_map_equal<CI::ProgramDigest,std::__hash_value_type<CI::ProgramDigest,CI::ObjectCache<CI::MainProgram,CI::ProgramDigest,false>::Entry>,std::equal_to<CI::ProgramDigest>,std::hash<CI::ProgramDigest>,true>,std::allocator<std::__hash_value_type<CI::ProgramDigest,CI::ObjectCache<CI::MainProgram,CI::ProgramDigest,false>::Entry>>>::find<CI::ProgramDigest>(v2 + 2, a1 + 5);
  if (!v3)
  {
    if (v2[5] == *v2)
    {
      CI::ObjectCache<CI::Node,unsigned long long,false>::evict(v2);
    }

    std::__hash_table<std::__hash_value_type<unsigned long long,CI::ObjectCache<CI::Node,unsigned long long,false>::Entry>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,CI::ObjectCache<CI::Node,unsigned long long,false>::Entry>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,CI::ObjectCache<CI::Node,unsigned long long,false>::Entry>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,CI::ObjectCache<CI::Node,unsigned long long,false>::Entry>>>::__emplace_unique_impl<std::piecewise_construct_t const&,std::tuple<unsigned long long const&>,std::tuple<CI::Node* const&,unsigned long long &,unsigned int const&>>();
  }

  v3[4] = v2[1];
  v4 = a1[6];
  if (v4)
  {

    CI::Object::unref(v4);
  }
}

uint64_t CI::ObjectCache<CI::Node,unsigned long long,false>::evict(uint64_t a1)
{
  v1 = *(a1 + 32);
  if (v1)
  {
    v2 = *(a1 + 32);
    do
    {
      if (v2[4] < v1[4])
      {
        v1 = v2;
      }

      v2 = *v2;
    }

    while (v2);
  }

  std::__hash_table<std::__hash_value_type<CI::ProgramDigest,CI::ObjectCache<CI::MainProgram,CI::ProgramDigest,false>::Entry>,std::__unordered_map_hasher<CI::ProgramDigest,std::__hash_value_type<CI::ProgramDigest,CI::ObjectCache<CI::MainProgram,CI::ProgramDigest,false>::Entry>,std::hash<CI::ProgramDigest>,std::equal_to<CI::ProgramDigest>,true>,std::__unordered_map_equal<CI::ProgramDigest,std::__hash_value_type<CI::ProgramDigest,CI::ObjectCache<CI::MainProgram,CI::ProgramDigest,false>::Entry>,std::equal_to<CI::ProgramDigest>,std::hash<CI::ProgramDigest>,true>,std::allocator<std::__hash_value_type<CI::ProgramDigest,CI::ObjectCache<CI::MainProgram,CI::ProgramDigest,false>::Entry>>>::remove((a1 + 16), v1, v4);
  return std::unique_ptr<std::__hash_node<std::__hash_value_type<unsigned long long,CI::ObjectCache<CI::Node,unsigned long long,false>::Entry>,void *>,std::__hash_node_destructor<std::allocator<std::__hash_node<std::__hash_value_type<unsigned long long,CI::ObjectCache<CI::Node,unsigned long long,false>::Entry>,void *>>>>::~unique_ptr[abi:nn200100](v4);
}

uint64_t std::unique_ptr<std::__hash_node<std::__hash_value_type<unsigned long long,CI::ObjectCache<CI::Node,unsigned long long,false>::Entry>,void *>,std::__hash_node_destructor<std::allocator<std::__hash_node<std::__hash_value_type<unsigned long long,CI::ObjectCache<CI::Node,unsigned long long,false>::Entry>,void *>>>>::~unique_ptr[abi:nn200100](uint64_t a1)
{
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    if (*(a1 + 16) == 1)
    {
      CI::ObjectCache<CI::Node,unsigned long long,false>::Entry::~Entry(v2 + 24);
    }

    operator delete(v2);
  }

  return a1;
}

void *CI::ShaderBuilder::ShaderBuilder(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *a1 = a2;
  a1[1] = a3;
  a1[2] = a4;
  CI::FoslAdapter::FoslAdapter(a1 + 3);
  a1[36] = 0;
  x_stream_init(a1 + 37);
  return a1;
}

void CI::ShaderBuilder::convert_tree(CI::ShaderBuilder *this, size_t a2, int a3)
{
  v6 = malloc_type_calloc(0x400uLL, 1uLL, 0x100004077774924uLL);
  memset(v6, 48, a2);
  *(this + 36) = CI::FoslAdapter::convertTree((this + 24), *(this + 1), v6, a2, a3);

  free(v6);
}

char *CI::ShaderBuilder::construct_shader(CI::ShaderBuilder *this, const char *a2)
{
  v265 = *MEMORY[0x1E69E9840];
  if (CI_VERBOSE_SIGNPOSTS())
  {
    v3 = ci_signpost_log_render();
    v4 = *(*(this + 2) + 36) | ((*(**this + 280))(*this) << 32);
    if (v4 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v3))
    {
      *buf = 0;
      _os_signpost_emit_with_name_impl(&dword_19CC36000, v3, OS_SIGNPOST_INTERVAL_BEGIN, v4, "construct_shader", &unk_19CFBCBAE, buf, 2u);
    }
  }

  v5 = (*(**this + 280))(*this);
  TimerBase::TimerBase(buf, v5, *(*(this + 2) + 36), "construct_shader", 4);
  x_stream_grow(this + 37, 0x1000uLL);
  if (*(*(this + 2) + 137) == 1)
  {
    if ((*(**this + 16))() == 82)
    {
      v6 = "static constant float4 _ci_constants = (float4)(1.0,0.0,1.0/257.0,256.0/257.0);\n";
      v7 = this + 296;
      v8 = 80;
    }

    else if ((*(**this + 16))() == 84)
    {
      v6 = "const lowp vec4 _ci_constants = vec4(1.0,0.0,1.0/257.0,256.0/257.0);\n";
      v7 = this + 296;
      v8 = 69;
    }

    else
    {
      if ((*(**this + 16))() != 85)
      {
        goto LABEL_13;
      }

      v6 = "static constant metal::float4 _ci_constants = metal::float4(1.0,0.0,1.0/257.0,256.0/257.0);\n";
      v7 = this + 296;
      v8 = 92;
    }

    x_stream_write(v7, v6, v8);
  }

LABEL_13:
  if ((*(**this + 16))() == 82)
  {
    x_stream_write(this + 296, "#define writeImage(c, p, _dc) write_imagef(_outputTexture, (int2)p, c)\n", 0x47uLL);
    x_stream_write(this + 296, "#define writeImagePlane(c, p, _dc) write_imagef(_outputTexturePlane, (int2)p, c)\n", 0x51uLL);
    v9 = "#define writeCoord(_dc) (float2)_writeLoc\n\n";
    v10 = this + 296;
    v11 = 43;
LABEL_19:
    x_stream_write(v10, v9, v11);
    goto LABEL_20;
  }

  if ((*(**this + 16))() == 84)
  {
    x_stream_write(this + 296, "#define writeImage(c, p) gl_FragData[0] = c\n", 0x2CuLL);
    x_stream_write(this + 296, "#define writeImagePlane(c, p) gl_FragData[1] = c\n", 0x31uLL);
    v9 = "#define writeCoord() p0\n\n";
    v10 = this + 296;
    v11 = 25;
    goto LABEL_19;
  }

  if ((*(**this + 16))() == 85)
  {
    x_stream_write(this + 296, "#define writeImage(c, p, _dc) _outputTexture.write(c, static_cast<uint2>(p))\n", 0x4DuLL);
    x_stream_write(this + 296, "#define writeImagePlane(c, p, _dc) _outputTexturePlane.write(c, static_cast<uint2>(p))\n", 0x57uLL);
    v9 = "#define writeCoord(_dc) static_cast<float2>(_wc)\n\n";
    v10 = this + 296;
    v11 = 50;
    goto LABEL_19;
  }

LABEL_20:
  CI::FoslAdapter::addLibraryFunctions((this + 24), aCopyright2022A);
  (*(**this + 16))();
  v12 = CI::FoslAdapter::constructShader((this + 24), a2, *(this + 36));
  std::string::basic_string[abi:nn200100]<0>(&__str, v12);
  if ((*(**this + 16))() == 85 && fosl_filter_interface_version() <= 0)
  {
    std::string::basic_string[abi:nn200100]<0>(v260, "gid += static_cast<uint2>(params.outputRect.xy * step(params.outputRect.w, 0.0));");
    size = HIBYTE(__str.__r_.__value_.__r.__words[2]);
    if ((__str.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      p_str = &__str;
    }

    else
    {
      p_str = __str.__r_.__value_.__r.__words[0];
    }

    if ((__str.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
    {
      size = __str.__r_.__value_.__l.__size_;
    }

    v15 = HIBYTE(v262);
    if (v262 >= 0)
    {
      v16 = v260;
    }

    else
    {
      v16 = *v260;
    }

    if (v262 >= 0)
    {
      v17 = HIBYTE(v262);
    }

    else
    {
      v17 = v261;
    }

    if (v17)
    {
      if (size >= v17)
      {
        v18 = p_str + size;
        v19 = *v16;
        v20 = p_str;
        do
        {
          v21 = size - v17;
          if (v21 == -1)
          {
            break;
          }

          v22 = memchr(v20, v19, v21 + 1);
          if (!v22)
          {
            break;
          }

          v23 = v22;
          if (!memcmp(v22, v16, v17))
          {
            if (v23 != v18)
            {
              v24 = v23 - p_str;
              if (v23 - p_str != -1)
              {
                goto LABEL_42;
              }
            }

            break;
          }

          v20 = (v23 + 1);
          size = v18 - (v23 + 1);
        }

        while (size >= v17);
      }
    }

    else
    {
      v24 = 0;
LABEL_42:
      std::string::erase(&__str, v24, v17);
      std::string::insert(&__str, v24, "gid.y += lessThan(params.outputRect.w, 0) * ((-params.outputRect.w-1)-2*gid.y);\n  gid += static_cast<uint2>(params.outputRect.xy);", 0x82uLL);
      v15 = HIBYTE(v262);
    }

    if (v15 < 0)
    {
      operator delete(*v260);
    }
  }

  v243 = this;
  if ((*(**this + 16))() != 84)
  {
    goto LABEL_371;
  }

  v25 = *(this + 2);
  if ((*(v25 + 136) & 1) != 0 || *(v25 + 137) != 1)
  {
    goto LABEL_371;
  }

  v26 = v260;
  std::string::basic_string[abi:nn200100]<0>(v260, "sampler2D _i");
  v242 = 0;
  v27 = 0;
  if ((__str.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v28 = &__str;
  }

  else
  {
    v28 = __str.__r_.__value_.__r.__words[0];
  }

  if ((__str.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v29 = HIBYTE(__str.__r_.__value_.__r.__words[2]);
  }

  else
  {
    v29 = __str.__r_.__value_.__l.__size_;
  }

  if (v262 >= 0)
  {
    v30 = HIBYTE(v262);
  }

  else
  {
    v26 = *v260;
    v30 = v261;
  }

  v31 = v28 + v29;
  while (!v30)
  {
LABEL_68:
    if (v27 != -1)
    {
      ++v242;
      v27 += v30;
      if (v29 >= v27)
      {
        continue;
      }
    }

    goto LABEL_70;
  }

  v32 = v29 - v27;
  if ((v29 - v27) >= v30)
  {
    v33 = v28 + v27;
    v34 = *v26;
    do
    {
      if (v32 - v30 == -1)
      {
        break;
      }

      v35 = memchr(v33, v34, v32 - v30 + 1);
      if (!v35)
      {
        break;
      }

      v36 = v35;
      if (!memcmp(v35, v26, v30))
      {
        if (v36 == v31)
        {
          break;
        }

        v27 = v36 - v28;
        goto LABEL_68;
      }

      v33 = v36 + 1;
      v32 = v31 - (v36 + 1);
    }

    while (v32 >= v30);
  }

LABEL_70:
  std::string::basic_string[abi:nn200100]<0>(&v255, "uniform highp sampler2D _samplers [");
  if ((__str.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v37 = &__str;
  }

  else
  {
    v37 = __str.__r_.__value_.__r.__words[0];
  }

  if ((__str.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v38 = HIBYTE(__str.__r_.__value_.__r.__words[2]);
  }

  else
  {
    v38 = __str.__r_.__value_.__l.__size_;
  }

  if (v256 >= 0)
  {
    v39 = &v255;
  }

  else
  {
    v39 = v255;
  }

  if (v256 >= 0)
  {
    v40 = HIBYTE(v256);
  }

  else
  {
    v40 = v256;
  }

  if (!v40)
  {
    v43 = 0;
LABEL_91:
    v45 = v37 + v38;
    v46 = v38 - v43;
    if ((v38 - v43) >= 1)
    {
      v47 = v37 + v43;
      do
      {
        v48 = memchr(v47, 59, v46);
        if (!v48)
        {
          break;
        }

        if (*v48 == 59)
        {
          goto LABEL_97;
        }

        v47 = v48 + 1;
        v46 = v45 - v47;
      }

      while (v45 - v47 > 0);
    }

    v48 = v37 + v38;
LABEL_97:
    if (v48 == v45)
    {
      v44 = -1;
    }

    else
    {
      v44 = v48 - v37;
    }

    goto LABEL_100;
  }

  v41 = v37 + v38;
  if (v38 >= v40)
  {
    v228 = *v39;
    v229 = v38;
    v230 = v37;
    do
    {
      v231 = v229 - v40;
      if (v231 == -1)
      {
        break;
      }

      v232 = memchr(v230, v228, v231 + 1);
      if (!v232)
      {
        break;
      }

      v42 = v232;
      if (!memcmp(v232, v39, v40))
      {
        goto LABEL_85;
      }

      v230 = (v42 + 1);
      v229 = v41 - (v42 + 1);
    }

    while (v229 >= v40);
  }

  v42 = v37 + v38;
LABEL_85:
  if (v42 == v41)
  {
    v43 = -1;
  }

  else
  {
    v43 = v42 - v37;
  }

  if (v38 >= v43)
  {
    goto LABEL_91;
  }

  v44 = -1;
LABEL_100:
  std::string::basic_string(&v254, &__str, v43 + v40, v44 - (v43 + v40), &__p);
  v49 = std::stoi(&v254, 0, 10);
  std::string::erase(&__str, v43, v44 - v43 + 1);
  std::to_string(&v264, v49 + v242);
  v50 = std::string::insert(&v264, 0, "uniform highp sampler2D _samplers [", 0x23uLL);
  v51 = v50->__r_.__value_.__r.__words[2];
  *&v252.__r_.__value_.__l.__data_ = *&v50->__r_.__value_.__l.__data_;
  v252.__r_.__value_.__r.__words[2] = v51;
  v50->__r_.__value_.__l.__size_ = 0;
  v50->__r_.__value_.__r.__words[2] = 0;
  v50->__r_.__value_.__r.__words[0] = 0;
  v52 = std::string::append(&v252, "];", 2uLL);
  v53 = v52->__r_.__value_.__r.__words[2];
  *&__p.__r_.__value_.__l.__data_ = *&v52->__r_.__value_.__l.__data_;
  __p.__r_.__value_.__r.__words[2] = v53;
  v52->__r_.__value_.__l.__size_ = 0;
  v52->__r_.__value_.__r.__words[2] = 0;
  v52->__r_.__value_.__r.__words[0] = 0;
  if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    p_p = &__p;
  }

  else
  {
    p_p = __p.__r_.__value_.__r.__words[0];
  }

  if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v55 = HIBYTE(__p.__r_.__value_.__r.__words[2]);
  }

  else
  {
    v55 = __p.__r_.__value_.__l.__size_;
  }

  std::string::insert(&__str, v43, p_p, v55);
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v252.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v252.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v264.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v264.__r_.__value_.__l.__data_);
  }

  std::to_string(&v252, v49);
  v56 = std::string::insert(&v252, 0, "uniform highp mat3 _transforms [", 0x20uLL);
  v57 = v56->__r_.__value_.__r.__words[2];
  *&__p.__r_.__value_.__l.__data_ = *&v56->__r_.__value_.__l.__data_;
  __p.__r_.__value_.__r.__words[2] = v57;
  v56->__r_.__value_.__l.__size_ = 0;
  v56->__r_.__value_.__r.__words[2] = 0;
  v56->__r_.__value_.__r.__words[0] = 0;
  v58 = std::string::append(&__p, "];", 2uLL);
  v59 = v58->__r_.__value_.__r.__words[0];
  v264.__r_.__value_.__r.__words[0] = v58->__r_.__value_.__l.__size_;
  *(v264.__r_.__value_.__r.__words + 7) = *(&v58->__r_.__value_.__r.__words[1] + 7);
  v60 = HIBYTE(v58->__r_.__value_.__r.__words[2]);
  v58->__r_.__value_.__l.__size_ = 0;
  v58->__r_.__value_.__r.__words[2] = 0;
  v58->__r_.__value_.__r.__words[0] = 0;
  if (SHIBYTE(v256) < 0)
  {
    operator delete(v255);
  }

  v255 = v59;
  *&v256 = v264.__r_.__value_.__r.__words[0];
  *(&v256 + 7) = *(v264.__r_.__value_.__r.__words + 7);
  HIBYTE(v256) = v60;
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v252.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v252.__r_.__value_.__l.__data_);
  }

  v61 = HIBYTE(__str.__r_.__value_.__r.__words[2]);
  if ((__str.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v62 = &__str;
  }

  else
  {
    v62 = __str.__r_.__value_.__r.__words[0];
  }

  if ((__str.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
  {
    v61 = __str.__r_.__value_.__l.__size_;
  }

  if (v256 >= 0)
  {
    v63 = &v255;
  }

  else
  {
    v63 = v255;
  }

  if (v256 >= 0)
  {
    v64 = HIBYTE(v256);
  }

  else
  {
    v64 = v256;
  }

  if (v64)
  {
    v65 = v62 + v61;
    if (v61 >= v64)
    {
      v233 = *v63;
      v234 = v62;
      do
      {
        v235 = v61 - v64;
        if (v235 == -1)
        {
          break;
        }

        v236 = memchr(v234, v233, v235 + 1);
        if (!v236)
        {
          break;
        }

        v66 = v236;
        if (!memcmp(v236, v63, v64))
        {
          goto LABEL_132;
        }

        v234 = (v66 + 1);
        v61 = v65 - (v66 + 1);
      }

      while (v61 >= v64);
    }

    v66 = v65;
LABEL_132:
    if (v66 == v65)
    {
      v67 = -1;
    }

    else
    {
      v67 = v66 - v62;
    }
  }

  else
  {
    v67 = 0;
  }

  std::string::erase(&__str, v67, v64);
  std::to_string(&v264, v49 + v242);
  v68 = std::string::insert(&v264, 0, "uniform highp mat3 _transforms [", 0x20uLL);
  v69 = v68->__r_.__value_.__r.__words[2];
  *&v252.__r_.__value_.__l.__data_ = *&v68->__r_.__value_.__l.__data_;
  v252.__r_.__value_.__r.__words[2] = v69;
  v68->__r_.__value_.__l.__size_ = 0;
  v68->__r_.__value_.__r.__words[2] = 0;
  v68->__r_.__value_.__r.__words[0] = 0;
  v70 = std::string::append(&v252, "];", 2uLL);
  v71 = v70->__r_.__value_.__r.__words[2];
  *&__p.__r_.__value_.__l.__data_ = *&v70->__r_.__value_.__l.__data_;
  __p.__r_.__value_.__r.__words[2] = v71;
  v70->__r_.__value_.__l.__size_ = 0;
  v70->__r_.__value_.__r.__words[2] = 0;
  v70->__r_.__value_.__r.__words[0] = 0;
  if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v72 = &__p;
  }

  else
  {
    v72 = __p.__r_.__value_.__r.__words[0];
  }

  if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v73 = HIBYTE(__p.__r_.__value_.__r.__words[2]);
  }

  else
  {
    v73 = __p.__r_.__value_.__l.__size_;
  }

  std::string::insert(&__str, v67, v72, v73);
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v252.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v252.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v264.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v264.__r_.__value_.__l.__data_);
  }

  std::to_string(&v252, v49);
  v74 = std::string::insert(&v252, 0, "uniform highp vec4 _extents [", 0x1DuLL);
  v75 = v74->__r_.__value_.__r.__words[2];
  *&__p.__r_.__value_.__l.__data_ = *&v74->__r_.__value_.__l.__data_;
  __p.__r_.__value_.__r.__words[2] = v75;
  v74->__r_.__value_.__l.__size_ = 0;
  v74->__r_.__value_.__r.__words[2] = 0;
  v74->__r_.__value_.__r.__words[0] = 0;
  v76 = std::string::append(&__p, "];", 2uLL);
  v77 = v76->__r_.__value_.__r.__words[0];
  v264.__r_.__value_.__r.__words[0] = v76->__r_.__value_.__l.__size_;
  *(v264.__r_.__value_.__r.__words + 7) = *(&v76->__r_.__value_.__r.__words[1] + 7);
  v78 = HIBYTE(v76->__r_.__value_.__r.__words[2]);
  v76->__r_.__value_.__l.__size_ = 0;
  v76->__r_.__value_.__r.__words[2] = 0;
  v76->__r_.__value_.__r.__words[0] = 0;
  if (SHIBYTE(v256) < 0)
  {
    operator delete(v255);
  }

  v255 = v77;
  *&v256 = v264.__r_.__value_.__r.__words[0];
  *(&v256 + 7) = *(v264.__r_.__value_.__r.__words + 7);
  HIBYTE(v256) = v78;
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v252.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v252.__r_.__value_.__l.__data_);
  }

  v79 = HIBYTE(__str.__r_.__value_.__r.__words[2]);
  if ((__str.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v80 = &__str;
  }

  else
  {
    v80 = __str.__r_.__value_.__r.__words[0];
  }

  if ((__str.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
  {
    v79 = __str.__r_.__value_.__l.__size_;
  }

  if (v256 >= 0)
  {
    v81 = &v255;
  }

  else
  {
    v81 = v255;
  }

  if (v256 >= 0)
  {
    v82 = HIBYTE(v256);
  }

  else
  {
    v82 = v256;
  }

  if (v82)
  {
    v83 = v80 + v79;
    if (v79 >= v82)
    {
      v237 = *v81;
      v238 = v80;
      do
      {
        v239 = v79 - v82;
        if (v239 == -1)
        {
          break;
        }

        v240 = memchr(v238, v237, v239 + 1);
        if (!v240)
        {
          break;
        }

        v84 = v240;
        if (!memcmp(v240, v81, v82))
        {
          goto LABEL_168;
        }

        v238 = (v84 + 1);
        v79 = v83 - (v84 + 1);
      }

      while (v79 >= v82);
    }

    v84 = v83;
LABEL_168:
    if (v84 == v83)
    {
      v85 = -1;
    }

    else
    {
      v85 = v84 - v80;
    }
  }

  else
  {
    v85 = 0;
  }

  std::string::erase(&__str, v85, v82);
  std::to_string(&v264, v49 + v242);
  v86 = std::string::insert(&v264, 0, "uniform highp vec4 _extents [", 0x1DuLL);
  v87 = v86->__r_.__value_.__r.__words[2];
  *&v252.__r_.__value_.__l.__data_ = *&v86->__r_.__value_.__l.__data_;
  v252.__r_.__value_.__r.__words[2] = v87;
  v86->__r_.__value_.__l.__size_ = 0;
  v86->__r_.__value_.__r.__words[2] = 0;
  v86->__r_.__value_.__r.__words[0] = 0;
  v88 = std::string::append(&v252, "];", 2uLL);
  v89 = v88->__r_.__value_.__r.__words[2];
  *&__p.__r_.__value_.__l.__data_ = *&v88->__r_.__value_.__l.__data_;
  __p.__r_.__value_.__r.__words[2] = v89;
  v88->__r_.__value_.__l.__size_ = 0;
  v88->__r_.__value_.__r.__words[2] = 0;
  v88->__r_.__value_.__r.__words[0] = 0;
  if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v90 = &__p;
  }

  else
  {
    v90 = __p.__r_.__value_.__r.__words[0];
  }

  if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v91 = HIBYTE(__p.__r_.__value_.__r.__words[2]);
  }

  else
  {
    v91 = __p.__r_.__value_.__l.__size_;
  }

  std::string::insert(&__str, v85, v90, v91);
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v252.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v252.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v264.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v264.__r_.__value_.__l.__data_);
  }

  if (v242)
  {
    v92 = 0;
    while (1)
    {
      std::string::basic_string[abi:nn200100]<0>(&__p, "uniform lowp sampler2D _i");
      v93 = (__str.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0 ? &__str : __str.__r_.__value_.__r.__words[0];
      v94 = (__str.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0 ? HIBYTE(__str.__r_.__value_.__r.__words[2]) : __str.__r_.__value_.__l.__size_;
      v95 = (__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0 ? &__p : __p.__r_.__value_.__r.__words[0];
      v96 = (__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0 ? HIBYTE(__p.__r_.__value_.__r.__words[2]) : __p.__r_.__value_.__l.__size_;
      v244 = v92;
      if (!v96)
      {
        break;
      }

      v97 = v93 + v94;
      if (v94 >= v96)
      {
        v100 = v95->__r_.__value_.__s.__data_[0];
        v101 = v94;
        v102 = v93;
        do
        {
          v103 = v101 - v96;
          if (v103 == -1)
          {
            break;
          }

          v104 = memchr(v102, v100, v103 + 1);
          if (!v104)
          {
            break;
          }

          v98 = v104;
          if (!memcmp(v104, v95, v96))
          {
            goto LABEL_208;
          }

          v102 = (v98 + 1);
          v101 = v97 - (v98 + 1);
        }

        while (v101 >= v96);
        v98 = v93 + v94;
      }

      else
      {
        v98 = v93 + v94;
      }

LABEL_208:
      if (v98 == v97)
      {
        v99 = -1;
      }

      else
      {
        v99 = v98 - v93;
      }

      if (v94 >= v99)
      {
        goto LABEL_213;
      }

      v105 = -1;
LABEL_222:
      std::string::basic_string(&v252, &__str, v99 + v96, v105 - (v99 + v96), &v264);
      v110 = std::stoi(&v252, 0, 10);
      std::string::erase(&__str, v99, v105 - v99 + 1);
      std::to_string(&v264, v110);
      v111 = std::string::insert(&v264, 0, "_i", 2uLL);
      v112 = v111->__r_.__value_.__r.__words[0];
      v263.__r_.__value_.__r.__words[0] = v111->__r_.__value_.__l.__size_;
      *(v263.__r_.__value_.__r.__words + 7) = *(&v111->__r_.__value_.__r.__words[1] + 7);
      v113 = HIBYTE(v111->__r_.__value_.__r.__words[2]);
      v111->__r_.__value_.__r.__words[0] = 0;
      v111->__r_.__value_.__l.__size_ = 0;
      v111->__r_.__value_.__r.__words[2] = 0;
      if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(__p.__r_.__value_.__l.__data_);
      }

      __p.__r_.__value_.__r.__words[0] = v112;
      __p.__r_.__value_.__l.__size_ = v263.__r_.__value_.__r.__words[0];
      *(&__p.__r_.__value_.__r.__words[1] + 7) = *(v263.__r_.__value_.__r.__words + 7);
      *(&__p.__r_.__value_.__s + 23) = v113;
      if (SHIBYTE(v264.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v264.__r_.__value_.__l.__data_);
        v113 = HIBYTE(__p.__r_.__value_.__r.__words[2]);
        v112 = __p.__r_.__value_.__r.__words[0];
      }

      v114 = 0;
      v115 = HIBYTE(__str.__r_.__value_.__r.__words[2]);
      if ((__str.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v116 = &__str;
      }

      else
      {
        v116 = __str.__r_.__value_.__r.__words[0];
      }

      if ((__str.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
      {
        v115 = __str.__r_.__value_.__l.__size_;
      }

      LOBYTE(v117) = (v113 & 0x80u) != 0;
      v118 = __p.__r_.__value_.__l.__size_;
      if ((v113 & 0x80u) == 0)
      {
        v119 = &__p;
      }

      else
      {
        v119 = v112;
      }

      if ((v113 & 0x80u) == 0)
      {
        v120 = v113;
      }

      else
      {
        v120 = __p.__r_.__value_.__l.__size_;
      }

      while (!v120)
      {
LABEL_247:
        if (v114 != -1)
        {
          if (v117)
          {
            v127 = v118;
          }

          else
          {
            v127 = v113;
          }

          std::string::erase(&__str, v114, v127);
          std::to_string(&v251, v110);
          v128 = std::string::insert(&v251, 0, "_samplers[", 0xAuLL);
          v129 = v128->__r_.__value_.__r.__words[2];
          *&v263.__r_.__value_.__l.__data_ = *&v128->__r_.__value_.__l.__data_;
          v263.__r_.__value_.__r.__words[2] = v129;
          v128->__r_.__value_.__l.__size_ = 0;
          v128->__r_.__value_.__r.__words[2] = 0;
          v128->__r_.__value_.__r.__words[0] = 0;
          v130 = std::string::append(&v263, "]", 1uLL);
          v131 = v130->__r_.__value_.__r.__words[2];
          *&v264.__r_.__value_.__l.__data_ = *&v130->__r_.__value_.__l.__data_;
          v264.__r_.__value_.__r.__words[2] = v131;
          v130->__r_.__value_.__l.__size_ = 0;
          v130->__r_.__value_.__r.__words[2] = 0;
          v130->__r_.__value_.__r.__words[0] = 0;
          if ((v264.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
          {
            v132 = &v264;
          }

          else
          {
            v132 = v264.__r_.__value_.__r.__words[0];
          }

          if ((v264.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
          {
            v133 = HIBYTE(v264.__r_.__value_.__r.__words[2]);
          }

          else
          {
            v133 = v264.__r_.__value_.__l.__size_;
          }

          std::string::insert(&__str, v114, v132, v133);
          if (SHIBYTE(v264.__r_.__value_.__r.__words[2]) < 0)
          {
            operator delete(v264.__r_.__value_.__l.__data_);
          }

          if (SHIBYTE(v263.__r_.__value_.__r.__words[2]) < 0)
          {
            operator delete(v263.__r_.__value_.__l.__data_);
          }

          if (SHIBYTE(v251.__r_.__value_.__r.__words[2]) < 0)
          {
            operator delete(v251.__r_.__value_.__l.__data_);
          }

          v134 = HIBYTE(v262);
          if (v262 < 0)
          {
            v134 = v261;
          }

          v114 += v134;
          v115 = HIBYTE(__str.__r_.__value_.__r.__words[2]);
          if ((__str.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
          {
            v116 = &__str;
          }

          else
          {
            v116 = __str.__r_.__value_.__r.__words[0];
          }

          if ((__str.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
          {
            v115 = __str.__r_.__value_.__l.__size_;
          }

          v113 = SHIBYTE(__p.__r_.__value_.__r.__words[2]);
          v117 = SHIBYTE(__p.__r_.__value_.__r.__words[2]) >> 63;
          v118 = __p.__r_.__value_.__l.__size_;
          v119 = (__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0 ? &__p : __p.__r_.__value_.__r.__words[0];
          v120 = (__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0 ? SHIBYTE(__p.__r_.__value_.__r.__words[2]) : __p.__r_.__value_.__l.__size_;
          if (v115 >= v114)
          {
            continue;
          }
        }

        goto LABEL_277;
      }

      v121 = v115 - v114;
      if ((v115 - v114) >= v120)
      {
        v122 = v116 + v115;
        v123 = v116 + v114;
        v124 = v119->__r_.__value_.__s.__data_[0];
        do
        {
          if (v121 - v120 == -1)
          {
            break;
          }

          v125 = memchr(v123, v124, v121 - v120 + 1);
          if (!v125)
          {
            break;
          }

          v126 = v125;
          if (!memcmp(v125, v119, v120))
          {
            if (v126 == v122)
            {
              break;
            }

            v114 = v126 - v116;
            goto LABEL_247;
          }

          v123 = v126 + 1;
          v121 = v122 - (v126 + 1);
        }

        while (v121 >= v120);
      }

LABEL_277:
      std::to_string(&v264, v110);
      v135 = std::string::insert(&v264, 0, "uniform highp mat3 _t", 0x15uLL);
      v136 = v135->__r_.__value_.__r.__words[0];
      v263.__r_.__value_.__r.__words[0] = v135->__r_.__value_.__l.__size_;
      *(v263.__r_.__value_.__r.__words + 7) = *(&v135->__r_.__value_.__r.__words[1] + 7);
      v137 = HIBYTE(v135->__r_.__value_.__r.__words[2]);
      v135->__r_.__value_.__r.__words[0] = 0;
      v135->__r_.__value_.__l.__size_ = 0;
      v135->__r_.__value_.__r.__words[2] = 0;
      if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(__p.__r_.__value_.__l.__data_);
      }

      __p.__r_.__value_.__r.__words[0] = v136;
      __p.__r_.__value_.__l.__size_ = v263.__r_.__value_.__r.__words[0];
      *(&__p.__r_.__value_.__r.__words[1] + 7) = *(v263.__r_.__value_.__r.__words + 7);
      *(&__p.__r_.__value_.__s + 23) = v137;
      if (SHIBYTE(v264.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v264.__r_.__value_.__l.__data_);
        v137 = HIBYTE(__p.__r_.__value_.__r.__words[2]);
        v136 = __p.__r_.__value_.__r.__words[0];
      }

      v138 = HIBYTE(__str.__r_.__value_.__r.__words[2]);
      if ((__str.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v139 = &__str;
      }

      else
      {
        v139 = __str.__r_.__value_.__r.__words[0];
      }

      if ((__str.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
      {
        v138 = __str.__r_.__value_.__l.__size_;
      }

      if ((v137 & 0x80u) == 0)
      {
        v140 = &__p;
      }

      else
      {
        v140 = v136;
      }

      if ((v137 & 0x80u) == 0)
      {
        v141 = v137;
      }

      else
      {
        v141 = __p.__r_.__value_.__l.__size_;
      }

      if (v141)
      {
        v142 = v139 + v138;
        if (v138 >= v141)
        {
          v145 = v140->__r_.__value_.__s.__data_[0];
          v146 = v139;
          do
          {
            v147 = v138 - v141;
            if (v147 == -1)
            {
              break;
            }

            v148 = memchr(v146, v145, v147 + 1);
            if (!v148)
            {
              break;
            }

            v143 = v148;
            if (!memcmp(v148, v140, v141))
            {
              goto LABEL_302;
            }

            v146 = (v143 + 1);
            v138 = v142 - (v143 + 1);
          }

          while (v138 >= v141);
          v143 = v142;
        }

        else
        {
          v143 = v139 + v138;
        }

LABEL_302:
        if (v143 == v142)
        {
          v144 = -1;
        }

        else
        {
          v144 = v143 - v139;
        }
      }

      else
      {
        v144 = 0;
      }

      std::string::erase(&__str, v144, v141 + 1);
      std::to_string(&v264, v110);
      v149 = std::string::insert(&v264, 0, "_t", 2uLL);
      v150 = v149->__r_.__value_.__r.__words[0];
      v263.__r_.__value_.__r.__words[0] = v149->__r_.__value_.__l.__size_;
      *(v263.__r_.__value_.__r.__words + 7) = *(&v149->__r_.__value_.__r.__words[1] + 7);
      v151 = HIBYTE(v149->__r_.__value_.__r.__words[2]);
      v149->__r_.__value_.__r.__words[0] = 0;
      v149->__r_.__value_.__l.__size_ = 0;
      v149->__r_.__value_.__r.__words[2] = 0;
      if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(__p.__r_.__value_.__l.__data_);
      }

      __p.__r_.__value_.__r.__words[0] = v150;
      __p.__r_.__value_.__l.__size_ = v263.__r_.__value_.__r.__words[0];
      *(&__p.__r_.__value_.__r.__words[1] + 7) = *(v263.__r_.__value_.__r.__words + 7);
      *(&__p.__r_.__value_.__s + 23) = v151;
      if (SHIBYTE(v264.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v264.__r_.__value_.__l.__data_);
        v151 = HIBYTE(__p.__r_.__value_.__r.__words[2]);
        v150 = __p.__r_.__value_.__r.__words[0];
      }

      v152 = 0;
      v153 = HIBYTE(__str.__r_.__value_.__r.__words[2]);
      if ((__str.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v154 = &__str;
      }

      else
      {
        v154 = __str.__r_.__value_.__r.__words[0];
      }

      if ((__str.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
      {
        v153 = __str.__r_.__value_.__l.__size_;
      }

      v155 = (v151 & 0x80u) != 0;
      v156 = __p.__r_.__value_.__l.__size_;
      if ((v151 & 0x80u) == 0)
      {
        v157 = &__p;
      }

      else
      {
        v157 = v150;
      }

      if ((v151 & 0x80u) == 0)
      {
        v158 = v151;
      }

      else
      {
        v158 = __p.__r_.__value_.__l.__size_;
      }

      while (!v158)
      {
LABEL_330:
        if (v152 != -1)
        {
          if (v155)
          {
            v165 = v156;
          }

          else
          {
            v165 = v151;
          }

          std::string::erase(&__str, v152, v165);
          std::to_string(&v251, v110);
          v166 = std::string::insert(&v251, 0, "_transforms[", 0xCuLL);
          v167 = v166->__r_.__value_.__r.__words[2];
          *&v263.__r_.__value_.__l.__data_ = *&v166->__r_.__value_.__l.__data_;
          v263.__r_.__value_.__r.__words[2] = v167;
          v166->__r_.__value_.__l.__size_ = 0;
          v166->__r_.__value_.__r.__words[2] = 0;
          v166->__r_.__value_.__r.__words[0] = 0;
          v168 = std::string::append(&v263, "]", 1uLL);
          v169 = v168->__r_.__value_.__r.__words[2];
          *&v264.__r_.__value_.__l.__data_ = *&v168->__r_.__value_.__l.__data_;
          v264.__r_.__value_.__r.__words[2] = v169;
          v168->__r_.__value_.__l.__size_ = 0;
          v168->__r_.__value_.__r.__words[2] = 0;
          v168->__r_.__value_.__r.__words[0] = 0;
          if ((v264.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
          {
            v170 = &v264;
          }

          else
          {
            v170 = v264.__r_.__value_.__r.__words[0];
          }

          if ((v264.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
          {
            v171 = HIBYTE(v264.__r_.__value_.__r.__words[2]);
          }

          else
          {
            v171 = v264.__r_.__value_.__l.__size_;
          }

          std::string::insert(&__str, v152, v170, v171);
          if (SHIBYTE(v264.__r_.__value_.__r.__words[2]) < 0)
          {
            operator delete(v264.__r_.__value_.__l.__data_);
          }

          if (SHIBYTE(v263.__r_.__value_.__r.__words[2]) < 0)
          {
            operator delete(v263.__r_.__value_.__l.__data_);
          }

          if (SHIBYTE(v251.__r_.__value_.__r.__words[2]) < 0)
          {
            operator delete(v251.__r_.__value_.__l.__data_);
          }

          v172 = HIBYTE(v262);
          if (v262 < 0)
          {
            v172 = v261;
          }

          v152 += v172;
          v153 = HIBYTE(__str.__r_.__value_.__r.__words[2]);
          if ((__str.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
          {
            v154 = &__str;
          }

          else
          {
            v154 = __str.__r_.__value_.__r.__words[0];
          }

          if ((__str.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
          {
            v153 = __str.__r_.__value_.__l.__size_;
          }

          v151 = HIBYTE(__p.__r_.__value_.__r.__words[2]);
          v155 = (__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0;
          v156 = __p.__r_.__value_.__l.__size_;
          v157 = (__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0 ? &__p : __p.__r_.__value_.__r.__words[0];
          v158 = (__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0 ? HIBYTE(__p.__r_.__value_.__r.__words[2]) : __p.__r_.__value_.__l.__size_;
          if (v153 >= v152)
          {
            continue;
          }
        }

        goto LABEL_360;
      }

      v159 = v153 - v152;
      if ((v153 - v152) >= v158)
      {
        v160 = v154 + v153;
        v161 = v154 + v152;
        v162 = v157->__r_.__value_.__s.__data_[0];
        do
        {
          if (v159 - v158 == -1)
          {
            break;
          }

          v163 = memchr(v161, v162, v159 - v158 + 1);
          if (!v163)
          {
            break;
          }

          v164 = v163;
          if (!memcmp(v163, v157, v158))
          {
            if (v164 == v160)
            {
              break;
            }

            v152 = v164 - v154;
            goto LABEL_330;
          }

          v161 = v164 + 1;
          v159 = v160 - (v164 + 1);
        }

        while (v159 >= v158);
      }

LABEL_360:
      if (SHIBYTE(v252.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v252.__r_.__value_.__l.__data_);
        LOBYTE(v151) = *(&__p.__r_.__value_.__s + 23);
      }

      this = v243;
      if ((v151 & 0x80) != 0)
      {
        operator delete(__p.__r_.__value_.__l.__data_);
      }

      v92 = v244 + 1;
      if (v244 + 1 == v242)
      {
        goto LABEL_365;
      }
    }

    v99 = 0;
LABEL_213:
    v106 = v93 + v94;
    v107 = v94 - v99;
    if ((v94 - v99) >= 1)
    {
      v108 = v93 + v99;
      do
      {
        v109 = memchr(v108, 59, v107);
        if (!v109)
        {
          break;
        }

        if (*v109 == 59)
        {
          goto LABEL_219;
        }

        v108 = v109 + 1;
        v107 = v106 - v108;
      }

      while (v106 - v108 > 0);
    }

    v109 = v93 + v94;
LABEL_219:
    if (v109 == v106)
    {
      v105 = -1;
    }

    else
    {
      v105 = v109 - v93;
    }

    goto LABEL_222;
  }

LABEL_365:
  if (SHIBYTE(v254.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v254.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v256) < 0)
  {
    operator delete(v255);
  }

  if (SHIBYTE(v262) < 0)
  {
    operator delete(*v260);
  }

LABEL_371:
  if ((__str.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v173 = &__str;
  }

  else
  {
    v173 = __str.__r_.__value_.__r.__words[0];
  }

  if ((*(**this + 16))() == 82)
  {
    v174 = "write_only image2d_t out";
  }

  else if ((*(**this + 16))() == 85)
  {
    v174 = "texture2d<float, access::write> outputTexture";
  }

  else
  {
    v174 = 0;
  }

  if ((*(**this + 16))() == 82)
  {
    v175 = "write_imagef";
  }

  else if ((*(**this + 16))() == 84)
  {
    v175 = "gl_FragColor";
  }

  else if ((*(**this + 16))() == 85)
  {
    v175 = "outputTexture.write";
  }

  else
  {
    v175 = 0;
  }

  v176 = *(this + 1);
  if ((*(*v176 + 240))(v176))
  {
    do
    {
      v176 = (*(*v176 + 48))(v176, 0);
    }

    while (((*(*v176 + 240))(v176) & 1) != 0);
  }

  v177 = (*(*v176 + 16))(v176);
  v178 = *v176;
  if (v177 == 55)
  {
    v179 = (*(v178 + 424))(v176);
    if ((v179 - 54) >= 8 && v179 != 46)
    {
      goto LABEL_422;
    }

    v180 = (*(*v176 + 424))(v176);
    v181 = CI::Kernel::builtin(v180);
  }

  else
  {
    if ((*(v178 + 16))(v176) != 57)
    {
      goto LABEL_422;
    }

    v181 = v176[6];
    if (*(v181 + 4))
    {
      goto LABEL_422;
    }
  }

  v182 = strstr(v173, "writeImage");
  if (v182 > v173)
  {
    v183 = v182;
    x_stream_write(this + 296, v173, v182 - v173);
    x_stream_write(this + 296, "_STUB_", 6uLL);
    v173 = v183;
  }

  v184 = strstr(v173, "writeImagePlane");
  if (v184 > v173)
  {
    v185 = v184;
    x_stream_write(this + 296, v173, v184 - v173);
    x_stream_write(this + 296, "_STUB_", 6uLL);
    v173 = v185;
  }

  v186 = strstr(v173, "writeCoord");
  if (v186 > v173)
  {
    v187 = v186;
    x_stream_write(this + 296, v173, v186 - v173);
    x_stream_write(this + 296, "_STUB_", 6uLL);
    v173 = v187;
  }

  if ((*(**this + 16))() != 84)
  {
    *v260 = 0;
    v261 = 0;
    v262 = 0;
    v255 = 0;
    v256 = 0uLL;
    if ((*(**this + 16))() == 82)
    {
      v254.__r_.__value_.__r.__words[0] = "write_only image2d_t _outputTexture";
      std::vector<char const*>::push_back[abi:nn200100](v260, &v254);
      v254.__r_.__value_.__r.__words[0] = "write_only image2d_t _outputTexturePlane";
      std::vector<char const*>::push_back[abi:nn200100](v260, &v254);
      v254.__r_.__value_.__r.__words[0] = "int2 _writeLoc";
      std::vector<char const*>::push_back[abi:nn200100](v260, &v254);
      v254.__r_.__value_.__r.__words[0] = "out";
      std::vector<char const*>::push_back[abi:nn200100](&v255, &v254);
      v254.__r_.__value_.__r.__words[0] = "out1";
      std::vector<char const*>::push_back[abi:nn200100](&v255, &v254);
      v188 = "_writeLoc";
    }

    else
    {
      if ((*(**this + 16))() != 85)
      {
LABEL_406:
        v189 = v181[3];
        __dst = 0;
        v250 = 0;
        v248 = 0;
        if (v261 != *v260)
        {
          std::vector<char const*>::__vallocate[abi:nn200100](&v248, &v261[-*v260] >> 3);
        }

        this = v243;
        appended = CI::append_arguments_to_kernel(v243 + 296, v173, v189, &v248);
        if (v248)
        {
          __dst = v248;
          operator delete(v248);
        }

        v191 = strstr(appended, a2);
        v192 = strstr(v191, v174);
        if (v192 > appended)
        {
          v193 = v192;
          x_stream_write(v243 + 296, appended, v192 - appended);
          x_stream_printf(v243 + 296, "%s,", v194, v195, v196, v197, v198, v199, v174);
          x_stream_printf(v243 + 296, " %s1,", v200, v201, v202, v203, v204, v205, v174);
          v206 = strlen(v174);
          appended = strchr(&v193[v206], 44) + 1;
        }

        v207 = v181[3];
        v246 = 0;
        v247 = 0;
        v245 = 0;
        if (v256 != v255)
        {
          std::vector<char const*>::__vallocate[abi:nn200100](&v245, (v256 - v255) >> 3);
        }

        v173 = CI::append_arguments_to_kernel(v243 + 296, appended, v207, &v245);
        if (v245)
        {
          v246 = v245;
          operator delete(v245);
        }

        if (v255)
        {
          *&v256 = v255;
          operator delete(v255);
        }

        if (*v260)
        {
          v261 = *v260;
          operator delete(*v260);
        }

        goto LABEL_420;
      }

      v254.__r_.__value_.__r.__words[0] = "texture2d<float, access::write> _outputTexture";
      std::vector<char const*>::push_back[abi:nn200100](v260, &v254);
      v254.__r_.__value_.__r.__words[0] = "texture2d<float, access::write> _outputTexturePlane";
      std::vector<char const*>::push_back[abi:nn200100](v260, &v254);
      v254.__r_.__value_.__r.__words[0] = "uint2 _wc";
      std::vector<char const*>::push_back[abi:nn200100](v260, &v254);
      v254.__r_.__value_.__r.__words[0] = "outputTexture";
      std::vector<char const*>::push_back[abi:nn200100](&v255, &v254);
      v254.__r_.__value_.__r.__words[0] = "outputTexture1";
      std::vector<char const*>::push_back[abi:nn200100](&v255, &v254);
      v188 = "_wc";
    }

    v254.__r_.__value_.__r.__words[0] = v188;
    std::vector<char const*>::push_back[abi:nn200100](&v255, &v254);
    goto LABEL_406;
  }

LABEL_420:
  v208 = strstr(v173, v175);
  if (v208 > v173)
  {
    v209 = v208;
    x_stream_write(this + 296, v173, v208 - v173);
    x_stream_write(this + 296, "//", 2uLL);
    v173 = v209;
  }

LABEL_422:
  if ((*(**this + 16))() != 85 || !CI::MetalContext::use_imageblocks_for_format(*this, *(*(this + 2) + 140)))
  {
LABEL_436:
    if (!v173)
    {
      goto LABEL_438;
    }

    goto LABEL_437;
  }

  v210 = strstr(v173, "kernel void");
  x_stream_write(this + 296, v173, v210 - v173);
  x_stream_write(this + 296, "struct PixelData {\n  float4 c", 0x1DuLL);
  if (CI_ENABLE_METAL_IMAGEBLOCKS() == 2)
  {
    x_stream_write(this + 296, " [[color(0)]]", 0xDuLL);
  }

  x_stream_write(this + 296, ";\n};\n\n", 6uLL);
  v211 = strstr(v210, v174);
  if (v211 > v210)
  {
    v212 = v211;
    x_stream_write(this + 296, v210, v211 - v210);
    x_stream_write(this + 296, "imageblock<PixelData> imageBlock, ushort2 lid [[ thread_position_in_threadgroup ]],\n", 0x54uLL);
    v210 = v212;
  }

  v213 = strstr(v210, "if (gid.x >= abs(params.outputRect.z) || gid.y >= abs(params.outputRect.w)) return;");
  if (v213 > v210)
  {
    v214 = v213;
    x_stream_write(this + 296, v210, v213 - v210);
    x_stream_write(this + 296, "if (any(static_cast<float2>(gid) < params.outputRect.xy)) return;\n  ", 0x44uLL);
    x_stream_write(this + 296, "if (any(static_cast<float2>(gid) >= params.outputRect.xy + abs(params.outputRect.zw))) return;", 0x5EuLL);
    v210 = v214 + 83;
  }

  v215 = strstr(v210, " + params.outputRect.xy");
  if (v215 > v210)
  {
    v216 = v215;
    x_stream_write(this + 296, v210, v215 - v210);
    v210 = v216 + 23;
  }

  v217 = strstr(v210, v175);
  if (v217 <= v210)
  {
    v173 = v210;
    goto LABEL_436;
  }

  v218 = v217;
  x_stream_write(this + 296, v210, v217 - v210);
  if (CI_ENABLE_METAL_IMAGEBLOCKS() == 2)
  {
    x_stream_write(this + 296, "\n  PixelData output = { ", 0x18uLL);
    v219 = &v218[strlen(v175) + 1];
    v220 = strchr(v218, 44);
    x_stream_write(this + 296, v219, v220 - v219);
    x_stream_write(this + 296, " };\n", 4uLL);
    x_stream_write(this + 296, "  imageBlock.write(output, lid);\n", 0x21uLL);
    v173 = (strchr(v220, 59) + 2);
LABEL_437:
    v221 = strlen(v173);
    x_stream_write(this + 296, v173, v221);
    goto LABEL_438;
  }

  x_stream_write(this + 296, "\n  threadgroup_imageblock PixelData* output = imageBlock.data(lid);\n", 0x44uLL);
  x_stream_write(this + 296, "  output->c = ", 0xEuLL);
  v227 = &v218[strlen(v175) + 1];
  v173 = strchr(v218, 44);
  x_stream_write(this + 296, v227, v173 - v227);
  x_stream_write(this + 296, ";\n", 2uLL);
  x_stream_write(this + 296, "  threadgroup_barrier(mem_flags::mem_threadgroup_imageblock);\n", 0x3EuLL);
  x_stream_write(this + 296, "  if (lid.x == 0 && lid.y == 0)\n", 0x20uLL);
  x_stream_write(this + 296, "    outputTexture.write(imageBlock.slice(output->c)", 0x33uLL);
  if (v173)
  {
    goto LABEL_437;
  }

LABEL_438:
  v222 = x_stream_get(this + 37);
  if (SHIBYTE(__str.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__str.__r_.__value_.__l.__data_);
  }

  if (CI_VERBOSE_SIGNPOSTS())
  {
    v223 = ci_signpost_log_render();
    v224 = v259;
    if (v259 - 1 <= 0xFFFFFFFFFFFFFFFDLL)
    {
      v225 = v223;
      if (os_signpost_enabled(v223))
      {
        *v260 = 0;
        _os_signpost_emit_with_name_impl(&dword_19CC36000, v225, OS_SIGNPOST_INTERVAL_END, v224, "construct_shader", &unk_19CFBCBAE, v260, 2u);
      }
    }
  }

  TimerBase::~TimerBase(buf);
  return v222;
}

void std::vector<char const*>::push_back[abi:nn200100](uint64_t a1, void *a2)
{
  v5 = *(a1 + 8);
  v4 = *(a1 + 16);
  if (v5 >= v4)
  {
    v7 = (v5 - *a1) >> 3;
    if ((v7 + 1) >> 61)
    {
      std::vector<CI::SWRendererFunctionInputNode>::__throw_length_error[abi:nn200100]();
    }

    v8 = v4 - *a1;
    v9 = v8 >> 2;
    if (v8 >> 2 <= (v7 + 1))
    {
      v9 = v7 + 1;
    }

    if (v8 >= 0x7FFFFFFFFFFFFFF8)
    {
      v10 = 0x1FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v10 = v9;
    }

    if (v10)
    {
      std::__allocate_at_least[abi:nn200100]<std::allocator<char const*>>(a1, v10);
    }

    v11 = (8 * v7);
    *v11 = *a2;
    v6 = 8 * v7 + 8;
    v12 = *(a1 + 8) - *a1;
    v13 = v11 - v12;
    memcpy(v11 - v12, *a1, v12);
    v14 = *a1;
    *a1 = v13;
    *(a1 + 8) = v6;
    *(a1 + 16) = 0;
    if (v14)
    {
      operator delete(v14);
    }
  }

  else
  {
    *v5 = *a2;
    v6 = (v5 + 1);
  }

  *(a1 + 8) = v6;
}

char *CI::append_arguments_to_kernel(uint64_t a1, char *__s1, char *__s2, void *a4)
{
  v5 = __s1;
  v7 = strstr(__s1, __s2);
  if (v7 > v5)
  {
    v8 = strchr(v7, 41);
    x_stream_write(a1, v5, v8 - v5);
    v15 = a4[1] - *a4;
    if (v15)
    {
      v16 = 0;
      v17 = v15 >> 3;
      if (v17 <= 1)
      {
        v18 = 1;
      }

      else
      {
        v18 = v17;
      }

      do
      {
        x_stream_printf(a1, ", %s", v9, v10, v11, v12, v13, v14, *(*a4 + 8 * v16++));
      }

      while (v18 != v16);
    }

    return v8;
  }

  return v5;
}

void CI::FoslAdapter::~FoslAdapter(CI::FoslAdapter *this)
{
  fosl_filter_destroyGraph(*(this + 3));
  v2 = *(this + 22);
  if (v2 != (this + 184))
  {
    do
    {
      free(*(v2 + 5));
      v3 = *(v2 + 1);
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
          v4 = *(v2 + 2);
          v5 = *v4 == v2;
          v2 = v4;
        }

        while (!v5);
      }

      v2 = v4;
    }

    while (v4 != (this + 184));
  }

  std::__tree<std::__value_type<unsigned long long,CI::DAGHelper::ImageArgInfo>,std::__map_value_compare<unsigned long long,std::__value_type<unsigned long long,CI::DAGHelper::ImageArgInfo>,std::less<unsigned long long>,true>,std::allocator<std::__value_type<unsigned long long,CI::DAGHelper::ImageArgInfo>>>::destroy(this + 232, *(this + 30));
  std::__tree<std::__value_type<unsigned long long,CI::DAGHelper::ImageArgInfo>,std::__map_value_compare<unsigned long long,std::__value_type<unsigned long long,CI::DAGHelper::ImageArgInfo>,std::less<unsigned long long>,true>,std::allocator<std::__value_type<unsigned long long,CI::DAGHelper::ImageArgInfo>>>::destroy(this + 176, *(this + 23));
  std::__tree<std::__value_type<unsigned long long,CI::DAGHelper::ImageArgInfo>,std::__map_value_compare<unsigned long long,std::__value_type<unsigned long long,CI::DAGHelper::ImageArgInfo>,std::less<unsigned long long>,true>,std::allocator<std::__value_type<unsigned long long,CI::DAGHelper::ImageArgInfo>>>::destroy(this + 152, *(this + 20));
  std::__tree<std::__value_type<unsigned long long,CI::DAGHelper::ImageArgInfo>,std::__map_value_compare<unsigned long long,std::__value_type<unsigned long long,CI::DAGHelper::ImageArgInfo>,std::less<unsigned long long>,true>,std::allocator<std::__value_type<unsigned long long,CI::DAGHelper::ImageArgInfo>>>::destroy(this + 128, *(this + 17));
  for (i = 0; i != -48; i -= 24)
  {
    std::__tree<std::__value_type<unsigned long long,CI::DAGHelper::ImageArgInfo>,std::__map_value_compare<unsigned long long,std::__value_type<unsigned long long,CI::DAGHelper::ImageArgInfo>,std::less<unsigned long long>,true>,std::allocator<std::__value_type<unsigned long long,CI::DAGHelper::ImageArgInfo>>>::destroy(this + i + 104, *(this + i + 112));
  }

  std::__tree<std::__value_type<unsigned long long,CI::DAGHelper::ImageArgInfo>,std::__map_value_compare<unsigned long long,std::__value_type<unsigned long long,CI::DAGHelper::ImageArgInfo>,std::less<unsigned long long>,true>,std::allocator<std::__value_type<unsigned long long,CI::DAGHelper::ImageArgInfo>>>::destroy(this + 56, *(this + 8));
  std::__tree<std::__value_type<unsigned long long,CI::DAGHelper::ImageArgInfo>,std::__map_value_compare<unsigned long long,std::__value_type<unsigned long long,CI::DAGHelper::ImageArgInfo>,std::less<unsigned long long>,true>,std::allocator<std::__value_type<unsigned long long,CI::DAGHelper::ImageArgInfo>>>::destroy(this + 32, *(this + 5));
}

void std::__allocate_at_least[abi:nn200100]<std::allocator<char const*>>(uint64_t a1, unint64_t a2)
{
  if (!(a2 >> 61))
  {
    operator new();
  }

  std::vector<CI::SWRendererFunctionInputNode>::__throw_length_error[abi:nn200100]();
}

void std::vector<char const*>::__vallocate[abi:nn200100](uint64_t a1, unint64_t a2)
{
  if (!(a2 >> 61))
  {
    std::__allocate_at_least[abi:nn200100]<std::allocator<char const*>>(a1, a2);
  }

  std::vector<CI::SWRendererFunctionInputNode>::__throw_length_error[abi:nn200100]();
}

uint64_t CI::gReleaseSurfaceBlockMap(CI *this)
{
  if ((atomic_load_explicit(&qword_1ED7C4670, memory_order_acquire) & 1) == 0)
  {
    CI::gReleaseSurfaceBlockMap();
  }

  return _MergedGlobals_13;
}

uint64_t CI::SurfaceCacheEntry::SurfaceCacheEntry(uint64_t a1, __int128 *a2, uint64_t a3, uint64_t a4, uint64_t a5, __int128 *a6, int a7, int a8, const void *a9, NSObject *a10, const void *a11)
{
  v13 = a5;
  v55[3] = *MEMORY[0x1E69E9840];
  *a1 = &unk_1F103C4D0;
  *(a1 + 8) = 1;
  *(a1 + 16) = &unk_1F103CF48;
  atomic_fetch_add(&dword_1ED7C47BC[84], 1u);
  *a1 = &unk_1F103CE28;
  *(a1 + 16) = &unk_1F103CE60;
  *(a1 + 112) = a3;
  *(a1 + 120) = a4;
  v18 = *a6;
  *(a1 + 152) = *(a6 + 2);
  *(a1 + 136) = v18;
  *info = *a6;
  *&info[16] = *(a6 + 2);
  CachedSurface = CreateCachedSurface(a3, a4, 0x20uLL, a5, info, 0);
  *(a1 + 24) = CachedSurface;
  if (CachedSurface)
  {
    PixelFormat = IOSurfaceGetPixelFormat(CachedSurface);
    v21 = *(a1 + 24);
    *(a1 + 128) = PixelFormat;
    if (v21)
    {
      goto LABEL_52;
    }
  }

  else
  {
    *(a1 + 128) = 0;
  }

  v22 = a7;
  v23 = a8;
  v53 = bswap32(v13);
  v24 = ci_logger_render();
  v25 = os_log_type_enabled(v24, OS_LOG_TYPE_FAULT);
  if (v13 < 0x29)
  {
    if (!v25)
    {
      goto LABEL_9;
    }

    *info = 134218496;
    *&info[4] = a3;
    *&info[12] = 2048;
    *&info[14] = a4;
    *&info[22] = 2048;
    v55[0] = v53;
    v26 = "Failed to allocate IOSurface (%zux%zu format:%ld)";
    v27 = v24;
    v28 = 32;
  }

  else
  {
    if (!v25)
    {
      goto LABEL_9;
    }

    *info = 134218754;
    *&info[4] = a3;
    *&info[12] = 2048;
    *&info[14] = a4;
    *&info[22] = 1040;
    LODWORD(v55[0]) = 4;
    WORD2(v55[0]) = 2080;
    *(v55 + 6) = &v53;
    v26 = "Failed to allocate IOSurface (%zux%zu format:%.4s)";
    v27 = v24;
    v28 = 38;
  }

  _os_log_fault_impl(&dword_19CC36000, v27, OS_LOG_TYPE_FAULT, v26, info, v28);
LABEL_9:
  v29 = mach_timebase_info(info);
  CurrentCacheVolatileSize = CI::GetCurrentCacheVolatileSize(v29);
  v31 = atomic_load(&CI::gCacheSize);
  v32 = v31 - CurrentCacheVolatileSize;
  v33 = ci_logger_render();
  if (os_log_type_enabled(v33, OS_LOG_TYPE_FAULT))
  {
    CI::SurfaceCacheEntry::SurfaceCacheEntry(v32, v33);
  }

  v34 = CI::gCacheList;
  a8 = v23;
  if (CI::gCacheList)
  {
    v34 = *(CI::gCacheList + 16);
  }

  a7 = v22;
  v35 = atomic_load(&CI::gCacheSize);
  if (v35 >= 0x80000001)
  {
    v36 = vcvtd_n_f64_u64(v35, 0x1EuLL);
LABEL_19:
    v35 = llround(v36);
    goto LABEL_20;
  }

  if (v35 > 0x200000)
  {
    v36 = vcvtd_n_f64_u64(v35, 0x14uLL);
    goto LABEL_19;
  }

  if (v35 >= 0x801)
  {
    v36 = vcvtd_n_f64_u64(v35, 0xAuLL);
    goto LABEL_19;
  }

LABEL_20:
  v37 = atomic_load(&CI::gCacheSize);
  if (v37 <= 0x80000000)
  {
    if (v37 <= 0x200000)
    {
      if (v37 <= 0x800)
      {
        v38 = "B";
      }

      else
      {
        v38 = "KB";
      }
    }

    else
    {
      v38 = "MB";
    }
  }

  else
  {
    v38 = "GB";
  }

  if (v32 <= 0x80000000)
  {
    if (v32 <= 0x200000)
    {
      v39 = llround(vcvtd_n_f64_u64(v32, 0xAuLL));
      if (v32 <= 0x800)
      {
        v39 = v32;
      }

      v40 = "B";
      if (v32 > 0x800)
      {
        v40 = "KB";
      }
    }

    else
    {
      v39 = llround(vcvtd_n_f64_u64(v32, 0x14uLL));
      v40 = "MB";
    }
  }

  else
  {
    v39 = llround(vcvtd_n_f64_u64(v32, 0x1EuLL));
    v40 = "GB";
  }

  v41 = CI::gCacheSizePeak;
  if (CI::gCacheSizePeak <= 0x80000000)
  {
    if (CI::gCacheSizePeak <= 0x200000)
    {
      v43 = llround(vcvtd_n_f64_u64(CI::gCacheSizePeak, 0xAuLL));
      if (CI::gCacheSizePeak > 0x800)
      {
        v41 = v43;
      }

      v42 = "B";
      if (CI::gCacheSizePeak > 0x800)
      {
        v42 = "KB";
      }
    }

    else
    {
      v41 = llround(vcvtd_n_f64_u64(CI::gCacheSizePeak, 0x14uLL));
      v42 = "MB";
    }
  }

  else
  {
    v41 = llround(vcvtd_n_f64_u64(CI::gCacheSizePeak, 0x1EuLL));
    v42 = "GB";
  }

  v44 = CI::gCacheNonVolatileSizePeak;
  if (CI::gCacheNonVolatileSizePeak <= 0x80000000)
  {
    if (CI::gCacheNonVolatileSizePeak <= 0x200000)
    {
      v46 = llround(vcvtd_n_f64_u64(CI::gCacheNonVolatileSizePeak, 0xAuLL));
      if (CI::gCacheNonVolatileSizePeak > 0x800)
      {
        v44 = v46;
      }

      v45 = "B";
      if (CI::gCacheNonVolatileSizePeak > 0x800)
      {
        v45 = "KB";
      }
    }

    else
    {
      v44 = llround(vcvtd_n_f64_u64(CI::gCacheNonVolatileSizePeak, 0x14uLL));
      v45 = "MB";
    }
  }

  else
  {
    v44 = llround(vcvtd_n_f64_u64(CI::gCacheNonVolatileSizePeak, 0x1EuLL));
    v45 = "GB";
  }

  snprintf(CI::SurfaceCacheEntry::SurfaceCacheEntry(IRect,ISize,unsigned int,iosurface_properties_t,unsigned int,unsigned int,__CFString const*,dispatch_queue_s *,void({block_pointer})(__IOSurface *))::msg, 0x400uLL, "Cache Stats: count=%ld size=%ld%s non-volatile=%ld%s peakCount=%ld peakSize=%ld%s peakNVSize=%ld%s", v34, v35, v38, v39, v40, CI::gCacheCountPeak, v41, v42, v44, v45);
  qword_1ED7C3F80 = CI::SurfaceCacheEntry::SurfaceCacheEntry(IRect,ISize,unsigned int,iosurface_properties_t,unsigned int,unsigned int,__CFString const*,dispatch_queue_s *,void({block_pointer})(__IOSurface *))::msg;
LABEL_52:
  v47 = *a2;
  *(a1 + 48) = *(a2 + 2);
  *(a1 + 32) = v47;
  *(a1 + 56) = a7;
  *(a1 + 60) = a8;
  *(a1 + 64) = CFRetain(a9);
  if (a10)
  {
    dispatch_retain(a10);
  }

  *(a1 + 72) = a10;
  *(a1 + 80) = 0;
  if (a11)
  {
    *(a1 + 80) = _Block_copy(a11);
  }

  MemorySize = SurfaceGetMemorySize(*(a1 + 24));
  *(a1 + 104) = MemorySize;
  atomic_fetch_add(&CI::gCacheSize, MemorySize);
  v49 = CI::gCacheSizePeak;
  v50 = atomic_load(&CI::gCacheSize);
  if (v49 < v50)
  {
    v51 = atomic_load(&CI::gCacheSize);
    CI::gCacheSizePeak = v51;
  }

  *(a1 + 88) = 0;
  *(a1 + 96) = 1;
  return a1;
}

uint64_t CI::GetCurrentCacheVolatileSize(CI *this)
{
  if (!CI::gCacheList)
  {
    return 0;
  }

  v1 = *(CI::gCacheList + 8);
  if (v1 == CI::gCacheList)
  {
    return 0;
  }

  result = 0;
  do
  {
    v3 = *(v1 + 16);
    if (!*(v3 + 88) && *(v3 + 96) != 8)
    {
      result += *(v3 + 104);
    }

    v1 = *(v1 + 8);
  }

  while (v1 != CI::gCacheList);
  return result;
}

void CI::SurfaceCacheEntry::~SurfaceCacheEntry(CI::SurfaceCacheEntry *this)
{
  *this = &unk_1F103CE28;
  *(this + 2) = &unk_1F103CE60;
  atomic_fetch_add(&CI::gCacheSize, -*(this + 13));
  v2 = *(this + 3);
  if (v2)
  {
    CFRelease(v2);
  }

  *(this + 3) = 0;
  *(this + 7) = 0;
  v3 = *(this + 8);
  if (v3)
  {
    CFRelease(v3);
  }

  *(this + 8) = 0;
  v4 = *(this + 9);
  if (v4)
  {
    dispatch_release(v4);
  }

  *(this + 9) = 0;
  v5 = *(this + 10);
  if (v5)
  {
    _Block_release(v5);
  }

  *(this + 10) = 0;
  *(this + 2) = &unk_1F103CF48;
  atomic_fetch_add(&dword_1ED7C47BC[84], 0xFFFFFFFF);
}

{
  CI::SurfaceCacheEntry::~SurfaceCacheEntry(this);

  JUMPOUT(0x19EAF5590);
}

void CI::SurfaceCacheEntry::setFillQueue(CI::SurfaceCacheEntry *this, dispatch_object_t object)
{
  if (object)
  {
    dispatch_retain(object);
  }

  v4 = *(this + 9);
  if (v4)
  {
    dispatch_release(v4);
  }

  *(this + 9) = object;
}

void CI::SurfaceCacheEntry::setFillBlock(uint64_t a1, void *aBlock)
{
  if (aBlock)
  {
    v3 = _Block_copy(aBlock);
  }

  else
  {
    v3 = 0;
  }

  v4 = *(a1 + 80);
  if (v4)
  {
    _Block_release(v4);
  }

  *(a1 + 80) = v3;
}

void non-virtual thunk toCI::SurfaceCacheEntry::~SurfaceCacheEntry(CI::SurfaceCacheEntry *this)
{
  CI::SurfaceCacheEntry::~SurfaceCacheEntry((this - 16));
}

{
  CI::SurfaceCacheEntry::~SurfaceCacheEntry((this - 16));

  JUMPOUT(0x19EAF5590);
}

void CI::SurfaceCacheEntry::fillAsync(CI::SurfaceCacheEntry *this)
{
  v2 = *(this + 9);
  if (v2)
  {
    if (*(this + 10))
    {
      block[0] = MEMORY[0x1E69E9820];
      block[1] = 0x40000000;
      block[2] = ___ZN2CI17SurfaceCacheEntry9fillAsyncEv_block_invoke;
      block[3] = &__block_descriptor_tmp_3_7;
      block[4] = this;
      dispatch_async(v2, block);
      CI::gCacheBytesFilled += *(this + 13);
    }
  }
}

void ___ZN2CI17SurfaceCacheEntry9fillAsyncEv_block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  if (CI_VERBOSE_SIGNPOSTS())
  {
    v2 = ci_signpost_log_cache();
    if (os_signpost_enabled(v2))
    {
      *v4 = 0;
      _os_signpost_emit_with_name_impl(&dword_19CC36000, v2, OS_SIGNPOST_INTERVAL_BEGIN, 0xEEEEB0B5B2B2EEEELL, "CacheEntryFillAsync", &unk_19CFBCBAE, v4, 2u);
    }
  }

  v3 = mach_absolute_time();
  (*(*(v1 + 80) + 16))();
  atomic_fetch_add_explicit(&CI::gTimeFilling, mach_absolute_time() - v3, memory_order_relaxed);
  ___ZN2CI17SurfaceCacheEntry9fillAsyncEv_block_invoke_1();
}

void ___ZN2CI17SurfaceCacheEntry9fillAsyncEv_block_invoke_1()
{
  if (CI_VERBOSE_SIGNPOSTS())
  {
    v0 = ci_signpost_log_cache();
    if (os_signpost_enabled(v0))
    {
      *v1 = 0;
      _os_signpost_emit_with_name_impl(&dword_19CC36000, v0, OS_SIGNPOST_INTERVAL_END, 0xEEEEB0B5B2B2EEEELL, "CacheEntryFillAsync", &unk_19CFBCBAE, v1, 2u);
    }
  }
}

uint64_t CI::SurfaceCacheEntry::print_core(CI::SurfaceCacheEntry *this, __sFILE *a2)
{
  v19 = *MEMORY[0x1E69E9840];
  v4 = *(this + 8);
  if (v4)
  {
    CStringPtr = CFStringGetCStringPtr(*(this + 8), 0x8000100u);
    if (!CStringPtr)
    {
      CStringPtr = buffer;
      if (!CFStringGetCString(v4, buffer, 1024, 0x8000100u))
      {
        CStringPtr = 0;
      }
    }
  }

  else
  {
    CStringPtr = buffer;
  }

  v6 = *(this + 3);
  ID = IOSurfaceGetID(v6);
  fprintf(a2, "surface=%p(%0.4u)", v6, ID);
  if (*(this + 32) < 0x29u)
  {
    fprintf(a2, " fmt=%-4d");
  }

  else
  {
    fprintf(a2, " fmt=%.4s");
  }

  fprintf(a2, " width=%-4zu height=%-4zu", *(this + 14), *(this + 15));
  fprintf(a2, " x=%-4d y=%-4d w=%-4zu h=%-4zu ctx=%-4u img=%-4u vol=%-2d", *(this + 8), *(this + 9), *(this + 5), *(this + 6), *(this + 14), *(this + 15), *(this + 24));
  v8 = *(this + 13);
  v9 = llround(vcvtd_n_f64_u64(v8, 0x1EuLL));
  v10 = llround(vcvtd_n_f64_u64(v8, 0x14uLL));
  v11 = "MB";
  v12 = llround(vcvtd_n_f64_u64(v8, 0xAuLL));
  if (v8 <= 0x800)
  {
    v12 = *(this + 13);
  }

  v13 = "B";
  if (v8 > 0x800)
  {
    v13 = "KB";
  }

  if (v8 <= 0x200000)
  {
    v10 = v12;
    v11 = v13;
  }

  v14 = v8 > 0x80000000;
  if (v8 <= 0x80000000)
  {
    v15 = v10;
  }

  else
  {
    v15 = v9;
  }

  if (v14)
  {
    v16 = "GB";
  }

  else
  {
    v16 = v11;
  }

  fprintf(a2, " size=%ld%s", v15, v16);
  if (v4)
  {
    fprintf(a2, " id='%s'", CStringPtr);
  }

  else
  {
    fwrite(" id=nil", 7uLL, 1uLL, a2);
  }

  if (!*(this + 8) || SurfaceIsVolatileEmpty(*(this + 3)))
  {
    fwrite(" empty", 6uLL, 1uLL, a2);
  }

  if (*(this + 11))
  {
    fprintf(a2, " use=%ld", *(this + 11));
  }

  if (*(this + 19))
  {
    fprintf(a2, " pool=%lld", *(this + 19));
  }

  return fputc(10, a2);
}

uint64_t CI::SurfaceCacheEntry::print(CI::SurfaceCacheEntry *this, __sFILE *__stream)
{
  fwrite("SurfaceCacheEntry ", 0x12uLL, 1uLL, __stream);

  return CI::SurfaceCacheEntry::print_core(this, __stream);
}

uint64_t GetSurfaceFromCacheAndFill(__int128 *a1, uint64_t a2, int a3, int a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v41 = *MEMORY[0x1E69E9840];
  v36 = 0;
  v37 = &v36;
  v38 = 0x2000000000;
  v39 = 0;
  if (*(a1 + 1))
  {
    v8 = 0;
    if (a5)
    {
      v9 = a2;
      if (a2)
      {
        if (*(a1 + 2))
        {
          v8 = 0;
          if (a6)
          {
            if (a7)
            {
              if ((a2 & 0xFD000000) == 0x2D000000 || a2 >> 24 == 124 || a2 >> 24 == 38)
              {
                v35 = bswap32(a2);
                v15 = ci_logger_cache();
                if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
                {
                  *buf = 136446722;
                  *&buf[4] = "GetSurfaceFromCacheAndFill";
                  *&buf[12] = 1042;
                  *&buf[14] = 4;
                  *&buf[18] = 2082;
                  *&buf[20] = &v35;
                  _os_log_impl(&dword_19CC36000, v15, OS_LOG_TYPE_DEFAULT, "%{public}s  was passed compressed format '%{public}.4s'.  Ignoring compression.\n", buf, 0x1Cu);
                }

                LODWORD(v9) = equivalent_uncompressed_format(v9);
              }

              if (a3 && a4)
              {
                v16 = ci_logger_cache();
                v17 = os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT);
                v18 = 0;
                if (v17)
                {
                  *buf = 136446722;
                  *&buf[4] = "GetSurfaceFromCacheAndFill";
                  *&buf[12] = 1024;
                  *&buf[14] = a3;
                  *&buf[18] = 1024;
                  *&buf[20] = a4;
                  _os_log_impl(&dword_19CC36000, v16, OS_LOG_TYPE_DEFAULT, "%{public}s  was passed contextIndex=%d and imageIndex=%d.  Ignoring imageIndex.\n", buf, 0x18u);
                  v18 = 0;
                }
              }

              else
              {
                v18 = a4;
              }

              *buf = 0;
              *&buf[8] = buf;
              *&buf[16] = 0x2000000000;
              *&buf[24] = 0;
              if (GetQueue(void)::onceToken != -1)
              {
                v24 = v18;
                GetSurfaceFromCacheAndFill_cold_1();
                v18 = v24;
              }

              block[0] = MEMORY[0x1E69E9820];
              block[1] = 0x40000000;
              block[2] = __GetSurfaceFromCacheAndFill_block_invoke;
              block[3] = &unk_1E75C80C0;
              v32 = a3;
              v33 = v18;
              v28 = *a1;
              v19 = *(a1 + 2);
              v34 = v9;
              v29 = v19;
              v30 = a5;
              block[4] = a7;
              block[5] = &v36;
              v31 = a6;
              block[6] = buf;
              dispatch_sync(gSurfaceCacheQueue, block);
              v20 = *(*&buf[8] + 24);
              if (v20)
              {
                if (v20[9])
                {
                  dispatch_sync(v20[9], &__block_literal_global_6_0);
                  v20 = *(*&buf[8] + 24);
                }

                CI::Object::unref(v20);
              }

              v21 = CI_LOG_SURFACE_CACHE();
              if (v21)
              {
                v22 = v21;
                if (GetQueue(void)::onceToken != -1)
                {
                  GetSurfaceFromCacheAndFill_cold_1();
                }

                v25[0] = MEMORY[0x1E69E9820];
                v25[1] = 0x40000000;
                v25[2] = __GetSurfaceFromCacheAndFill_block_invoke_23;
                v25[3] = &__block_descriptor_tmp_24_5;
                v26 = v22;
                dispatch_sync(gSurfaceCacheQueue, v25);
              }

              v8 = v37[3];
              _Block_object_dispose(buf, 8);
            }
          }
        }
      }
    }
  }

  else
  {
    v8 = 0;
  }

  _Block_object_dispose(&v36, 8);
  return v8;
}

void __GetSurfaceFromCacheAndFill_block_invoke(uint64_t a1)
{
  v40 = *MEMORY[0x1E69E9840];
  if (CI_VERBOSE_SIGNPOSTS())
  {
    v2 = ci_signpost_log_cache();
    if (os_signpost_enabled(v2))
    {
      v3 = *(a1 + 96);
      v4 = *(a1 + 100);
      v5 = *(a1 + 56);
      v6 = *(a1 + 60);
      v7 = *(a1 + 64);
      v8 = *(a1 + 72);
      *buf = 67110400;
      *&buf[4] = v3;
      *&buf[8] = 1024;
      *&buf[10] = v4;
      *&buf[14] = 1024;
      *v35 = v5;
      *&v35[4] = 1024;
      *&v35[6] = v6;
      v36 = 2048;
      v37 = v7;
      v38 = 2048;
      v39 = v8;
      _os_signpost_emit_with_name_impl(&dword_19CC36000, v2, OS_SIGNPOST_INTERVAL_BEGIN, 0xEEEEB0B5B2B2EEEELL, "GetSurfaceFromCacheAndFill", "cid:%u iid:%u [%d %d %zu %zu]", buf, 0x2Eu);
    }
  }

  v29[3] = MEMORY[0x1E69E9820];
  v29[4] = 0x40000000;
  v29[5] = __GetSurfaceFromCacheAndFill_block_invoke_20;
  v29[6] = &__block_descriptor_tmp_21_5;
  v9 = *(a1 + 100);
  v32 = *(a1 + 96);
  v33 = v9;
  v30 = *(a1 + 56);
  v10 = *(a1 + 80);
  v31 = *(a1 + 72);
  ++CI::gCacheGetCount;
  *buf = *(a1 + 56);
  *v35 = *(a1 + 72);
  v11 = *(a1 + 104);
  memset(v29, 0, 24);
  CacheEntryWithInfo = CI::FindCacheEntryWithInfo(buf, v11, v29, v32, v9, v10);
  if (CacheEntryWithInfo)
  {
    v13 = CacheEntryWithInfo;
    v14 = *(CacheEntryWithInfo + 24);
    if (v14)
    {
      *(*(*(a1 + 40) + 8) + 24) = CFRetain(v14);
    }

    *(v13 + 96) = 1;
    CI::SurfaceCacheEntry::setIdentifier(v13, *(a1 + 80));
    ++*(v13 + 88);
    if (!SurfaceSetNonVolatile(*(*(*(a1 + 40) + 8) + 24)))
    {
      CI::SurfaceCacheEntry::setFillBlock(v13, *(a1 + 32));
      CI::SurfaceCacheEntry::setFillQueue(v13, *(a1 + 88));
      CI::SurfaceCacheEntry::fillAsync(v13);
      ++CI::gCacheGetCountPurged;
    }

    *(*(*(a1 + 48) + 8) + 24) = v13;
    v15 = *(*(*(a1 + 48) + 8) + 24);
    if (v15)
    {
      CI::Object::ref(v15);
    }

    *buf = v13;
    std::list<CI::attached_surface_t *>::remove(CI::gCacheList, buf);
    operator new();
  }

  ++CI::gCacheGetCountMissed;
  v16 = atomic_load(&CI::gCacheSize);
  SurfaceMemorySize = CreateSurfaceMemorySize(*(a1 + 64), *(a1 + 72), 0x20uLL, *(a1 + 104));
  v28 = 0;
  v18 = SurfaceMemorySize + v16;
  v19 = CI_SURFACE_CACHE_CAPACITY();
  v20 = 0;
  if (v18 < v19)
  {
    if (CI::gCacheList)
    {
      v20 = *(CI::gCacheList + 16) < 0x100uLL;
    }

    else
    {
      v20 = 1;
    }
  }

  v21 = *(a1 + 64);
  v22 = *(a1 + 72);
  v24 = *(a1 + 100);
  v23 = *(a1 + 104);
  memset(buf, 0, sizeof(buf));
  *v35 = 0;
  UnusedCacheEntryWithInfo = CI::FindUnusedCacheEntryWithInfo(v21, v22, v21, v22, v23, buf, *(a1 + 96), v24, v20, &v28, 0);
  v26 = UnusedCacheEntryWithInfo;
  if (v28 == 1)
  {
    ++CI::gCacheGetCountInUseMissed;
  }

  if (UnusedCacheEntryWithInfo)
  {
    ++CI::gCacheGetCountRecycled;
    v27 = *(a1 + 72);
    *(UnusedCacheEntryWithInfo + 32) = *(a1 + 56);
    *(UnusedCacheEntryWithInfo + 48) = v27;
    *(UnusedCacheEntryWithInfo + 56) = *(a1 + 96);
    *(UnusedCacheEntryWithInfo + 60) = *(a1 + 100);
    *(UnusedCacheEntryWithInfo + 96) = 1;
    CI::SurfaceCacheEntry::setIdentifier(UnusedCacheEntryWithInfo, *(a1 + 80));
    CI::SurfaceCacheEntry::setFillBlock(v26, *(a1 + 32));
    CI::SurfaceCacheEntry::setFillQueue(v26, *(a1 + 88));
    ++*(v26 + 11);
    *buf = v26;
    std::list<CI::attached_surface_t *>::remove(CI::gCacheList, buf);
    operator new();
  }

  ++CI::gCacheCountAllocated;
  operator new();
}

void __GetSurfaceFromCacheAndFill_block_invoke_20(uint64_t a1)
{
  v20 = *MEMORY[0x1E69E9840];
  if (CI_VERBOSE_SIGNPOSTS())
  {
    v2 = ci_signpost_log_cache();
    if (os_signpost_enabled(v2))
    {
      v3 = *(a1 + 56);
      v4 = *(a1 + 60);
      v5 = *(a1 + 32);
      v6 = *(a1 + 36);
      v7 = *(a1 + 40);
      v8 = *(a1 + 48);
      v9[0] = 67110400;
      v9[1] = v3;
      v10 = 1024;
      v11 = v4;
      v12 = 1024;
      v13 = v5;
      v14 = 1024;
      v15 = v6;
      v16 = 2048;
      v17 = v7;
      v18 = 2048;
      v19 = v8;
      _os_signpost_emit_with_name_impl(&dword_19CC36000, v2, OS_SIGNPOST_INTERVAL_END, 0xEEEEB0B5B2B2EEEELL, "GetSurfaceFromCacheAndFill", "cid:%u iid:%u [%d %d %zu %zu]", v9, 0x2Eu);
    }
  }
}

uint64_t CI::FindCacheEntryWithInfo(uint64_t a1, int a2, uint64_t a3, int a4, int a5, CFStringRef theString1)
{
  v6 = CI::gCacheList;
  if (!CI::gCacheList)
  {
    return 0;
  }

  v7 = *(CI::gCacheList + 8);
  if (v7 == CI::gCacheList)
  {
    return 0;
  }

  while (1)
  {
    v14 = *(v7 + 16);
    if (*(v14 + 56) == a4 && *(v14 + 60) == a5 && *(v14 + 24))
    {
      v15 = *(v14 + 32) == *a1 && *(v14 + 36) == *(a1 + 4);
      v16 = v15 && *(v14 + 40) == *(a1 + 8);
      if (v16 && *(v14 + 48) == *(a1 + 16) && *(v14 + 128) == a2 && *(v14 + 144) == *(a3 + 8) && *(v14 + 136) == *a3 && *(v14 + 152) == *(a3 + 16))
      {
        v18 = *(v14 + 64);
        if (v18)
        {
          if (CFStringCompare(theString1, v18, 0) == kCFCompareEqualTo)
          {
            break;
          }
        }
      }
    }

    v7 = *(v7 + 8);
    if (v7 == v6)
    {
      return 0;
    }
  }

  return v14;
}

void CI::SurfaceCacheEntry::setIdentifier(CI::SurfaceCacheEntry *this, CFTypeRef cf)
{
  if (cf)
  {
    CFRetain(cf);
  }

  v4 = *(this + 8);
  if (v4)
  {
    CFRelease(v4);
  }

  *(this + 8) = cf;
}

CFIndex CI::FindUnusedCacheEntryWithInfo(unint64_t a1, unint64_t a2, unint64_t a3, unint64_t a4, int a5, uint64_t a6, int a7, int a8, char a9, _BYTE *a10, CFArrayRef theArray)
{
  v12 = a5;
  if (a10)
  {
    *a10 = 0;
  }

  v17 = CI::gCacheList;
  if (!CI::gCacheList)
  {
    return 0;
  }

  v18 = theArray;
  if (theArray)
  {
    v19 = a7;
    result = CFArrayGetCount(theArray);
    if (!result)
    {
      return result;
    }

    v17 = CI::gCacheList;
    a7 = v19;
    v18 = theArray;
    v12 = a5;
  }

  else
  {
    result = 0;
  }

  v21 = *(v17 + 8);
  if (v21 == v17)
  {
    LOBYTE(v25) = 0;
    v24 = 0;
    v23 = 0;
    v57 = 0;
    v22 = 0;
    goto LABEL_97;
  }

  range = result;
  v44 = a7;
  v45 = 0;
  v22 = 0;
  v57 = 0;
  v23 = 0;
  v24 = 0;
  v25 = 0;
  while (1)
  {
    v26 = *(v21 + 16);
    v27 = *(v26 + 112);
    v28 = *(v26 + 120);
    v31 = v27 < a1 || v27 > a3 || v28 < a2 || v28 > a4;
    if (v31 || *(v26 + 128) != v12 || *(v26 + 144) != *(a6 + 8) || *(v26 + 136) != *a6 || *(v26 + 152) != *(a6 + 16))
    {
      goto LABEL_82;
    }

    v59 = v23;
    if (!*(v26 + 88))
    {
      break;
    }

    v51 = v22;
    v54 = v18;
    v46 = v25;
    v32 = v24;
    v33 = CI_USE_INFLIGHT_INTERMEDIATES();
    v24 = v32;
    if (v33 && !v32 && *(v26 + 88) == 1 && *(v26 + 96) == -1 && *(v26 + 56) == v44)
    {
      v24 = v26;
      v23 = v26;
      v22 = v26;
      v18 = v54;
      v25 = v46;
      goto LABEL_72;
    }

    v25 = v46;
    if (v46)
    {
      v18 = v54;
LABEL_47:
      v22 = v51;
      v23 = v59;
      goto LABEL_72;
    }

    v22 = v51;
    v18 = v54;
    v23 = v59;
    if (v24)
    {
      goto LABEL_72;
    }

    v25 = (*(v26 + 88) > 0) | v46;
LABEL_82:
    v21 = *(v21 + 8);
    if (v21 == v17)
    {
      goto LABEL_97;
    }
  }

  v34.length = range;
  if (range < 1)
  {
    if (v23)
    {
LABEL_41:
      if (!v22)
      {
        if (*(v26 + 96) > 6)
        {
          v22 = 0;
        }

        else if (*(v26 + 60))
        {
          v22 = 0;
        }

        else
        {
          v22 = v26;
        }
      }

      if (!v57)
      {
        if (*(v26 + 96) > 6)
        {
          v57 = 0;
        }

        else
        {
          if (*(v26 + 60))
          {
            v37 = v26;
          }

          else
          {
            v37 = 0;
          }

          v57 = v37;
        }
      }

      goto LABEL_72;
    }

    v36 = *(v26 + 64);
    if (*(v26 + 60))
    {
      if (v36)
      {
        if (v45)
        {
          v23 = 0;
          goto LABEL_41;
        }

        v53 = v22;
        v56 = v18;
        v49 = v24;
        IsVolatileEmpty = SurfaceIsVolatileEmpty(*(v26 + 24));
        v22 = v53;
        v24 = v49;
        if (IsVolatileEmpty)
        {
          v45 = 0;
          v23 = v26;
LABEL_95:
          v18 = v56;
          goto LABEL_41;
        }

        goto LABEL_94;
      }
    }

    else if (v36)
    {
      v52 = v22;
      v56 = v18;
      v48 = v24;
      if (SurfaceIsVolatileEmpty(*(v26 + 24)))
      {
        v23 = v26;
        v22 = v52;
        v18 = v56;
        v24 = v48;
        goto LABEL_41;
      }

      v24 = v48;
      v22 = v52;
      if (v45)
      {
        v23 = 0;
        goto LABEL_95;
      }

LABEL_94:
      v23 = 0;
      v45 = *(v26 + 60);
      goto LABEL_95;
    }

    v23 = *(v21 + 16);
    goto LABEL_41;
  }

  v51 = v22;
  v55 = v18;
  v47 = v24;
  v34.location = 0;
  if (CFArrayGetFirstIndexOfValue(v18, v34, *(v26 + 24)) < 0)
  {
    v18 = v55;
    v24 = v47;
    goto LABEL_47;
  }

  v22 = v51;
  v23 = v59;
  if (v59)
  {
    goto LABEL_37;
  }

  v35 = *(v26 + 64);
  if (!*(v26 + 60))
  {
    v18 = v55;
    v24 = v47;
    if (v35)
    {
      goto LABEL_66;
    }

LABEL_84:
    v23 = v26;
    if (v51)
    {
      goto LABEL_72;
    }

LABEL_69:
    if (*(v26 + 96) >= 7)
    {
      v22 = 0;
    }

    else
    {
      v22 = v26;
    }

    goto LABEL_72;
  }

  v18 = v55;
  v24 = v47;
  if (!v35)
  {
    goto LABEL_84;
  }

  if (v45)
  {
    v23 = 0;
    if (v51)
    {
      goto LABEL_72;
    }

    goto LABEL_69;
  }

LABEL_66:
  v38 = SurfaceIsVolatileEmpty(*(v26 + 24));
  v23 = 0;
  v22 = v51;
  if (v38)
  {
    v23 = v26;
    goto LABEL_68;
  }

LABEL_37:
  if (!v45)
  {
    v45 = *(v26 + 60);
  }

LABEL_68:
  v18 = v55;
  v24 = v47;
  if (!v22)
  {
    goto LABEL_69;
  }

LABEL_72:
  if (v22)
  {
    v39 = v23 == 0;
  }

  else
  {
    v39 = 1;
  }

  v41 = !v39 && v24 != 0;
  if ((v41 & v25 & 1) == 0)
  {
    goto LABEL_82;
  }

  LOBYTE(v25) = 1;
LABEL_97:
  if (a10)
  {
    *a10 = v25 & 1;
  }

  if (v24)
  {
    result = v24;
  }

  else
  {
    result = v23;
  }

  if (!v24 && (a9 & 1) == 0)
  {
    result = v23;
    if (!v23)
    {
      result = v22;
      if (!v22)
      {
        if (!a8)
        {
          return 0;
        }

        result = v57;
        if (*(CI::gCacheList + 16) < 0x201uLL || v57 == 0)
        {
          return 0;
        }
      }
    }
  }

  return result;
}

void CI::AppendCacheEntry(CI *this, CI::SurfaceCacheEntry *a2)
{
  if (!CI::gCacheList)
  {
    operator new();
  }

  operator new();
}

unint64_t CI::RemoveFromStartUntilAtOrBelowCapacity(CI *this)
{
  result = CI_SURFACE_CACHE_CAPACITY();
  if (CI::gCacheList)
  {
    v3 = result;
    v4 = atomic_load(&CI::gCacheSize);
    v5 = CI::gCacheList;
    v6 = *(CI::gCacheList + 16);
    v24 = 0u;
    v25 = 0u;
    v23 = 0u;
    for (i = *(CI::gCacheList + 8); i != v5; i = *(i + 8))
    {
      v8 = *(i + 16);
      v22 = v8;
      if (v4 <= v3 && v6 < 0x101)
      {
        break;
      }

      if (*(v8 + 88) > 0)
      {
        continue;
      }

      if (*(v8 + 96) >= 7 && *(v8 + 64))
      {
        if (!SurfaceIsVolatileEmpty(*(v8 + 24)))
        {
          continue;
        }

        v8 = v22;
      }

      v4 -= *(v8 + 104);
      std::deque<CI::SurfaceCacheEntry *>::push_back(&v23, &v22);
      --v6;
    }

    v9 = CI::gCacheList;
    for (j = *(CI::gCacheList + 8); j != v9; j = *(j + 8))
    {
      v11 = *(j + 16);
      v22 = v11;
      if (v4 <= v3 && v6 < 0x101)
      {
        break;
      }

      if (*(v11 + 88) <= 0 && *(v11 + 96) >= 7 && *(v11 + 64) && !SurfaceIsVolatileEmpty(*(v11 + 24)) && !*(v22 + 88))
      {
        v4 -= *(v22 + 104);
        std::deque<CI::SurfaceCacheEntry *>::push_back(&v23, &v22);
        --v6;
      }
    }

    v12 = v25.i64[1];
    if (v25.i64[1] && *(CI::gCacheList + 16) >= 0x401uLL)
    {
      v13 = v25.i64[0];
      do
      {
        v14 = *(*(*(&v23 + 1) + ((v13 >> 6) & 0x3FFFFFFFFFFFFF8)) + 8 * (v13 & 0x1FF));
        CI::RemoveCacheEntry(v14, v2);
        if (v14)
        {
          (*(*v14 + 8))(v14);
        }

        v15 = vaddq_s64(v25, xmmword_19CF2DE60);
        v25 = v15;
        v13 = v15.i64[0];
        if (v15.i64[0] >= 0x400uLL)
        {
          operator delete(**(&v23 + 1));
          v13 = v25.i64[0] - 512;
          *(&v23 + 1) += 8;
          v25.i64[0] -= 512;
          v12 = v25.i64[1];
          if (!v25.i64[1])
          {
            break;
          }
        }

        else
        {
          v12 = v15.i64[1];
          if (!v15.i64[1])
          {
            break;
          }
        }
      }

      while (*(CI::gCacheList + 16) >= 0x401uLL);
    }

    if (v24 != *(&v23 + 1))
    {
      v16 = (*(&v23 + 1) + 8 * (v25.i64[0] >> 9));
      v17 = *v16 + 8 * (v25.i16[0] & 0x1FF);
      v18 = *(*(&v23 + 1) + (((v25.i64[0] + v12) >> 6) & 0x3FFFFFFFFFFFFF8)) + 8 * ((v25.i64[0] + v12) & 0x1FF);
      if (v17 != v18)
      {
        v19 = 0;
        while (1)
        {
          v20 = *v17;
          if (!*(*v17 + 60))
          {
            goto LABEL_42;
          }

          if (!v19)
          {
            break;
          }

LABEL_43:
          v17 += 8;
          if (v17 - *v16 == 4096)
          {
            v21 = v16[1];
            ++v16;
            v17 = v21;
          }

          if (v17 == v18)
          {
            return std::deque<CI::SurfaceCacheEntry *>::~deque[abi:nn200100](&v23);
          }
        }

        if (!*(v20 + 64))
        {
          v19 = *(*v17 + 60);
          goto LABEL_43;
        }

        if (!SurfaceIsVolatileEmpty(*(v20 + 24)))
        {
          v19 = *(v20 + 60);
          goto LABEL_43;
        }

        v19 = 0;
LABEL_42:
        CI::RemoveCacheEntry(v20, v2);
        (*(*v20 + 8))(v20);
        goto LABEL_43;
      }
    }

    return std::deque<CI::SurfaceCacheEntry *>::~deque[abi:nn200100](&v23);
  }

  return result;
}

void CI::UpdateVolatilityStats(CI *this)
{
  v1 = CI::gCacheNonVolatileSizePeak;
  atomic_store(CI::GetCurrentCacheVolatileSize(this), &CI::gVolatileSize);
  v2 = atomic_load(&CI::gCacheSize);
  v3 = atomic_load(&CI::gVolatileSize);
  v4 = v2 - v3;
  if (v2 - v3 > v1)
  {
    if (CI_TRACE_PEAK_SURFACE_CACHE())
    {
      if (CI::gPeakNonVolatileList)
      {
        CFArrayRemoveAllValues(CI::gPeakNonVolatileList);
      }

      else
      {
        CI::gPeakNonVolatileList = CFArrayCreateMutable(0, 0, MEMORY[0x1E695E9C0]);
      }

      v5 = CI::gCacheList;
      if (CI::gCacheList)
      {
        v6 = *(CI::gCacheList + 8);
        if (v6 != CI::gCacheList)
        {
          do
          {
            v7 = *(v6 + 16);
            if (*(v7 + 88) || *(v7 + 96) == 8)
            {
              Mutable = CFDictionaryCreateMutable(0, 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
              __CFDictionary::setValue(Mutable, @"id", *(v7 + 64), v9);
              __CFDictionary::setValue(Mutable, @"x", *(v7 + 32));
              __CFDictionary::setValue(Mutable, @"y", *(v7 + 36));
              __CFDictionary::setValue(Mutable, @"w", *(v7 + 40));
              __CFDictionary::setValue(Mutable, @"h", *(v7 + 48));
              __CFDictionary::setValue(Mutable, @"size", *(v7 + 104));
              v10 = *(v7 + 56);
              if (v10)
              {
                __CFDictionary::setValue(Mutable, @"ctxIndex", v10);
              }

              v11 = *(v7 + 60);
              if (v11)
              {
                __CFDictionary::setValue(Mutable, @"imgIndex", v11);
              }

              if (CI::gPeakNonVolatileList)
              {
                CFArrayAppendValue(CI::gPeakNonVolatileList, Mutable);
              }
            }

            v6 = *(v6 + 8);
          }

          while (v6 != v5);
        }
      }
    }

    CI::gCacheNonVolatileSizePeak = v4;
  }
}

void CI::LogCacheState(CI *this, uint64_t a2, const char *a3)
{
  v4 = this;
  v19 = *MEMORY[0x1E69E9840];
  v5 = CI_SURFACE_CACHE_CAPACITY();
  if (CI::gCacheList)
  {
    v6 = *(CI::gCacheList + 16);
    if (v6)
    {
      v7 = v5;
      CurrentCacheVolatileSize = CI::GetCurrentCacheVolatileSize(v5);
      v9 = atomic_load(&CI::gCacheSize);
      v16[0] = MEMORY[0x1E69E9820];
      v16[1] = 0x40000000;
      v16[2] = ___ZN2CIL13LogCacheStateEbPKc_block_invoke;
      v16[3] = &__block_descriptor_tmp_120;
      v16[4] = a2;
      v16[5] = v6;
      v16[6] = v9 - CurrentCacheVolatileSize;
      v16[7] = CurrentCacheVolatileSize;
      v16[8] = v7;
      v10 = stream_to_string(v16);
      if (v10)
      {
        v11 = v10;
        v12 = ci_logger_cache();
        if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 138543362;
          v18 = v11;
          _os_log_impl(&dword_19CC36000, v12, OS_LOG_TYPE_DEFAULT, "%{public}@", buf, 0xCu);
        }

        CFRelease(v11);
      }

      if (v4)
      {
        v13 = stream_to_string(&__block_literal_global_124_0);
        if (v13)
        {
          v14 = v13;
          v15 = ci_logger_cache();
          if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 138543362;
            v18 = v14;
            _os_log_impl(&dword_19CC36000, v15, OS_LOG_TYPE_DEFAULT, "%{public}@", buf, 0xCu);
          }

          CFRelease(v14);
        }
      }
    }
  }
}

uint64_t GetValidSurfaceFromCache(__int128 *a1, int a2, __int128 *a3, int a4, int a5, int a6, uint64_t a7)
{
  v35 = *MEMORY[0x1E69E9840];
  if (!*(a1 + 1))
  {
    return 0;
  }

  v8 = 0;
  if (a7 && a2 && *(a1 + 2))
  {
    if (a4 && a5)
    {
      v15 = ci_logger_cache();
      v16 = 0;
      if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 136446722;
        *&buf[4] = "GetValidSurfaceFromCache";
        *&buf[12] = 1024;
        *&buf[14] = a4;
        *&buf[18] = 1024;
        *&buf[20] = a5;
        _os_log_impl(&dword_19CC36000, v15, OS_LOG_TYPE_DEFAULT, "%{public}s  was passed contextIndex=%d and imageIndex=%d.  Ignoring imageIndex.\n", buf, 0x18u);
        v16 = 0;
      }
    }

    else
    {
      v16 = a5;
    }

    *buf = 0;
    *&buf[8] = buf;
    *&buf[16] = 0x2000000000;
    v34 = 0;
    if (GetQueue(void)::onceToken != -1)
    {
      GetSurfaceFromCacheAndFill_cold_1();
    }

    block[0] = MEMORY[0x1E69E9820];
    block[1] = 0x40000000;
    block[2] = __GetValidSurfaceFromCache_block_invoke;
    block[3] = &unk_1E75C8108;
    v24 = *a1;
    v25 = *(a1 + 2);
    v26 = *a3;
    v17 = *(a3 + 2);
    v29 = a2;
    v30 = a4;
    v27 = v17;
    v28 = a7;
    block[4] = buf;
    v31 = v16;
    v32 = a6;
    dispatch_sync(gSurfaceCacheQueue, block);
    v18 = CI_LOG_SURFACE_CACHE();
    if (v18)
    {
      v19 = v18;
      if (GetQueue(void)::onceToken != -1)
      {
        GetSurfaceFromCacheAndFill_cold_1();
      }

      v21[0] = MEMORY[0x1E69E9820];
      v21[1] = 0x40000000;
      v21[2] = __GetValidSurfaceFromCache_block_invoke_2;
      v21[3] = &__block_descriptor_tmp_26_1;
      v22 = v19;
      dispatch_sync(gSurfaceCacheQueue, v21);
    }

    v8 = *(*&buf[8] + 24);
    _Block_object_dispose(buf, 8);
  }

  return v8;
}

void __GetValidSurfaceFromCache_block_invoke(uint64_t a1)
{
  v11 = *(a1 + 40);
  v12 = *(a1 + 56);
  v9 = *(a1 + 64);
  v2 = *(a1 + 88);
  v10 = *(a1 + 80);
  CacheEntryWithInfo = CI::FindCacheEntryWithInfo(&v11, *(a1 + 96), &v9, *(a1 + 100), *(a1 + 104), v2);
  if (!CacheEntryWithInfo)
  {
LABEL_13:
    CI::UpdateVolatilityStats(CacheEntryWithInfo);
    return;
  }

  v4 = CacheEntryWithInfo;
  v5 = *(CacheEntryWithInfo + 3);
  if (v5 && !SurfaceIsVolatileEmpty(v5))
  {
    if (SurfaceSetNonVolatile(*(v4 + 3)))
    {
      ++CI::gCacheGetCount;
      *(*(*(a1 + 32) + 8) + 24) = *(v4 + 3);
      CFRetain(*(*(*(a1 + 32) + 8) + 24));
      v6 = *(a1 + 108);
      if (v6 < 7)
      {
        ++v6;
      }

      *(v4 + 24) = v6;
      CI::SurfaceCacheEntry::setIdentifier(v4, *(a1 + 88));
      v7 = *(v4 + 10);
      if (v7)
      {
        _Block_release(v7);
      }

      *(v4 + 10) = 0;
      v8 = *(v4 + 9);
      if (v8)
      {
        dispatch_release(v8);
      }

      *(v4 + 9) = 0;
      ++*(v4 + 11);
      *&v11 = v4;
      std::list<CI::attached_surface_t *>::remove(CI::gCacheList, &v11);
      operator new();
    }

    CI::SurfaceCacheEntry::empty(v4);
    goto LABEL_13;
  }
}

void CI::SurfaceCacheEntry::empty(IOSurfaceRef *this)
{
  SurfaceSetVolatileEmpty(this[3]);
  v2 = this[8];
  if (v2)
  {
    CFRelease(v2);
  }

  this[8] = 0;
  *(this + 15) = 0;
}

uint64_t GetSurfaceFromCache(__int128 *a1, uint64_t a2, uint64_t a3, int a4, __int128 *a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, CFArrayRef theArray)
{
  v54 = *MEMORY[0x1E69E9840];
  if (theArray)
  {
    Count = CFArrayGetCount(theArray);
  }

  else
  {
    Count = 0;
  }

  v44 = 0;
  v45 = &v44;
  v46 = 0x2000000000;
  v47 = 0;
  if (*(a1 + 1))
  {
    v26 = a3;
    v20 = 0;
    if (a10 && a9 && a4 && *(a1 + 2))
    {
      if (a6 && a7)
      {
        log = ci_logger_cache();
        v21 = 0;
        if (os_log_type_enabled(log, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 136446722;
          v49 = "GetSurfaceFromCache";
          v50 = 1024;
          v51 = a6;
          v52 = 1024;
          v53 = a7;
          _os_log_impl(&dword_19CC36000, log, OS_LOG_TYPE_DEFAULT, "%{public}s  was passed contextIndex=%d and imageIndex=%d.  Ignoring imageIndex.\n", buf, 0x18u);
          v21 = 0;
        }
      }

      else
      {
        v21 = a7;
      }

      if (GetQueue(void)::onceToken != -1)
      {
        GetSurfaceFromCacheAndFill_cold_1();
      }

      block[0] = MEMORY[0x1E69E9820];
      block[1] = 0x40000000;
      block[2] = __GetSurfaceFromCache_block_invoke;
      block[3] = &unk_1E75C8170;
      v40 = a6;
      v41 = v21;
      v30 = *a1;
      v31 = *(a1 + 2);
      v32 = *a5;
      v33 = *(a5 + 2);
      v34 = a9;
      block[4] = &v44;
      v42 = a4;
      v43 = a8;
      v35 = a10;
      v36 = a2;
      v37 = v26;
      v38 = Count;
      v39 = theArray;
      dispatch_sync(gSurfaceCacheQueue, block);
      v22 = CI_LOG_SURFACE_CACHE();
      if (v22)
      {
        v23 = v22;
        if (GetQueue(void)::onceToken != -1)
        {
          GetSurfaceFromCacheAndFill_cold_1();
        }

        v27[0] = MEMORY[0x1E69E9820];
        v27[1] = 0x40000000;
        v27[2] = __GetSurfaceFromCache_block_invoke_30;
        v27[3] = &__block_descriptor_tmp_31_2;
        v28 = v23;
        dispatch_sync(gSurfaceCacheQueue, v27);
      }

      v20 = v45[3];
    }
  }

  else
  {
    v20 = 0;
  }

  _Block_object_dispose(&v44, 8);
  return v20;
}

void __GetSurfaceFromCache_block_invoke(uint64_t a1)
{
  v55 = *MEMORY[0x1E69E9840];
  if (CI_VERBOSE_SIGNPOSTS())
  {
    v2 = ci_signpost_log_cache();
    if (os_signpost_enabled(v2))
    {
      v3 = *(a1 + 136);
      v4 = *(a1 + 140);
      v5 = *(a1 + 40);
      v6 = *(a1 + 44);
      v7 = *(a1 + 48);
      v8 = *(a1 + 56);
      *buf = 67110400;
      *&buf[4] = v3;
      *&buf[8] = 1024;
      *&buf[10] = v4;
      *&buf[14] = 1024;
      *v50 = v5;
      *&v50[4] = 1024;
      *&v50[6] = v6;
      v51 = 2048;
      v52 = v7;
      v53 = 2048;
      v54 = v8;
      _os_signpost_emit_with_name_impl(&dword_19CC36000, v2, OS_SIGNPOST_INTERVAL_BEGIN, 0xEEEEB0B5B2B2EEEELL, "GetSurfaceFromCache", "cid:%u iid:%u [%d %d %zu %zu]", buf, 0x2Eu);
    }
  }

  v41 = MEMORY[0x1E69E9820];
  v42 = 0x40000000;
  v43 = __GetSurfaceFromCache_block_invoke_27;
  v44 = &__block_descriptor_tmp_28_1;
  v9 = *(a1 + 140);
  v47 = *(a1 + 136);
  v48 = v9;
  v45 = *(a1 + 40);
  v46 = *(a1 + 56);
  ++CI::gCacheGetCount;
  *buf = *(a1 + 40);
  *v50 = *(a1 + 56);
  v10 = *(a1 + 88);
  v40 = *(a1 + 80);
  v11 = *(a1 + 144);
  v39 = *(a1 + 64);
  CacheEntryWithInfo = CI::FindCacheEntryWithInfo(buf, v11, &v39, v47, v9, v10);
  if (CacheEntryWithInfo)
  {
    v13 = CacheEntryWithInfo;
    v14 = *(CacheEntryWithInfo + 24);
    if (v14)
    {
      *(*(*(a1 + 32) + 8) + 24) = CFRetain(v14);
    }

    v15 = *(a1 + 148);
    if (v15 < 7)
    {
      ++v15;
    }

    *(v13 + 96) = v15;
    CI::SurfaceCacheEntry::setIdentifier(v13, *(a1 + 88));
    v16 = *(v13 + 80);
    if (v16)
    {
      _Block_release(v16);
    }

    *(v13 + 80) = 0;
    v17 = *(v13 + 72);
    if (v17)
    {
      dispatch_release(v17);
    }

    *(v13 + 72) = 0;
    ++*(v13 + 88);
    v18 = SurfaceSetNonVolatile(*(*(*(a1 + 32) + 8) + 24));
    v19 = *(a1 + 96);
    if (v18)
    {
      *v19 = 0;
    }

    else
    {
      *v19 = 1;
      ++CI::gCacheGetCountPurged;
    }

    *buf = v13;
    std::list<CI::attached_surface_t *>::remove(CI::gCacheList, buf);
    operator new();
  }

  ++CI::gCacheGetCountMissed;
  v20 = (*(a1 + 48) + *(a1 + 104) - 1) / *(a1 + 104) * *(a1 + 104);
  v21 = (*(a1 + 56) + *(a1 + 112) - 1) / *(a1 + 112) * *(a1 + 112);
  v22 = atomic_load(&CI::gCacheSize);
  v23 = equivalent_uncompressed_format(*(a1 + 144));
  v38 = 0;
  v24 = CreateSurfaceMemorySize(v20, v21, 0x20uLL, v23) + v22;
  v25 = 0;
  if (v24 < CI_SURFACE_CACHE_CAPACITY())
  {
    if (CI::gCacheList)
    {
      v25 = *(CI::gCacheList + 16) < 0x100uLL;
    }

    else
    {
      v25 = 1;
    }
  }

  if (!*(a1 + 120) || (v26 = *(a1 + 48), v27 = *(a1 + 56), v29 = *(a1 + 140), v28 = *(a1 + 144), *buf = *(a1 + 64), *v50 = *(a1 + 80), (UnusedCacheEntryWithInfo = CI::FindUnusedCacheEntryWithInfo(v26, v27, v20, v21, v28, buf, *(a1 + 136), v29, 1, &v38, *(a1 + 128))) == 0))
  {
    v31 = *(a1 + 48);
    v32 = *(a1 + 56);
    v34 = *(a1 + 140);
    v33 = *(a1 + 144);
    *buf = *(a1 + 64);
    *v50 = *(a1 + 80);
    UnusedCacheEntryWithInfo = CI::FindUnusedCacheEntryWithInfo(v31, v32, v20, v21, v33, buf, *(a1 + 136), v34, v25, &v38, 0);
  }

  if (v38 == 1)
  {
    ++CI::gCacheGetCountInUseMissed;
  }

  if (UnusedCacheEntryWithInfo)
  {
    ++CI::gCacheGetCountRecycled;
    v35 = *(a1 + 56);
    *(UnusedCacheEntryWithInfo + 32) = *(a1 + 40);
    *(UnusedCacheEntryWithInfo + 48) = v35;
    *(UnusedCacheEntryWithInfo + 56) = *(a1 + 136);
    *(UnusedCacheEntryWithInfo + 60) = *(a1 + 140);
    *(UnusedCacheEntryWithInfo + 96) = *(a1 + 148);
    CI::SurfaceCacheEntry::setIdentifier(UnusedCacheEntryWithInfo, *(a1 + 88));
    v36 = *(UnusedCacheEntryWithInfo + 80);
    if (v36)
    {
      _Block_release(v36);
    }

    *(UnusedCacheEntryWithInfo + 80) = 0;
    v37 = *(UnusedCacheEntryWithInfo + 72);
    if (v37)
    {
      dispatch_release(v37);
    }

    *(UnusedCacheEntryWithInfo + 72) = 0;
    ++*(UnusedCacheEntryWithInfo + 88);
    *buf = UnusedCacheEntryWithInfo;
    std::list<CI::attached_surface_t *>::remove(CI::gCacheList, buf);
    operator new();
  }

  ++CI::gCacheCountAllocated;
  operator new();
}

void __GetSurfaceFromCache_block_invoke_27(uint64_t a1)
{
  v20 = *MEMORY[0x1E69E9840];
  if (CI_VERBOSE_SIGNPOSTS())
  {
    v2 = ci_signpost_log_cache();
    if (os_signpost_enabled(v2))
    {
      v3 = *(a1 + 56);
      v4 = *(a1 + 60);
      v5 = *(a1 + 32);
      v6 = *(a1 + 36);
      v7 = *(a1 + 40);
      v8 = *(a1 + 48);
      v9[0] = 67110400;
      v9[1] = v3;
      v10 = 1024;
      v11 = v4;
      v12 = 1024;
      v13 = v5;
      v14 = 1024;
      v15 = v6;
      v16 = 2048;
      v17 = v7;
      v18 = 2048;
      v19 = v8;
      _os_signpost_emit_with_name_impl(&dword_19CC36000, v2, OS_SIGNPOST_INTERVAL_END, 0xEEEEB0B5B2B2EEEELL, "GetSurfaceFromCache", "cid:%u iid:%u [%d %d %zu %zu]", v9, 0x2Eu);
    }
  }
}

void RetainSurfaceFromCache(CFTypeRef cf)
{
  if (cf)
  {
    CFRetain(cf);
  }

  if (GetQueue(void)::onceToken != -1)
  {
    RetainSurfaceFromCache_cold_1();
  }

  block[0] = MEMORY[0x1E69E9820];
  block[1] = 0x40000000;
  block[2] = __RetainSurfaceFromCache_block_invoke;
  block[3] = &__block_descriptor_tmp_33_1;
  block[4] = cf;
  dispatch_async(gSurfaceCacheQueue, block);
}

void __RetainSurfaceFromCache_block_invoke(CI *a1)
{
  v1 = *(a1 + 4);
  if (v1)
  {
    v2 = CI::gCacheList == 0;
  }

  else
  {
    v2 = 1;
  }

  if (!v2)
  {
    v3 = CI::gCacheList;
    while (1)
    {
      v3 = *(v3 + 8);
      if (v3 == CI::gCacheList)
      {
        break;
      }

      v4 = *(v3 + 16);
      if (*(v4 + 24) == v1)
      {
        ++*(v4 + 88);
        CI::UpdateVolatilityStats(a1);
        v5 = CI_LOG_SURFACE_CACHE();
        if (v5)
        {
          v7 = v5 > 1;

          CI::LogCacheState(v7, "RetainSurfaceFromCache", v6);
        }

        return;
      }
    }
  }
}

void ReturnSurfaceToCache(uint64_t a1)
{
  if (GetQueue(void)::onceToken != -1)
  {
    RetainSurfaceFromCache_cold_1();
  }

  block[0] = MEMORY[0x1E69E9820];
  block[1] = 0x40000000;
  block[2] = __ReturnSurfaceToCache_block_invoke;
  block[3] = &__block_descriptor_tmp_35_0;
  block[4] = a1;
  dispatch_async(gSurfaceCacheQueue, block);
}

void __ReturnSurfaceToCache_block_invoke(uint64_t a1, CI::SurfaceCacheEntry *a2)
{
  v2 = *(a1 + 32);
  v3 = CI::gCacheList;
  if (v2)
  {
    v4 = CI::gCacheList == 0;
  }

  else
  {
    v4 = 1;
  }

  if (!v4)
  {
    v6 = CI::gCacheList;
    while (1)
    {
      v6 = *(v6 + 8);
      if (v6 == CI::gCacheList)
      {
        break;
      }

      v7 = *(v6 + 16);
      v8 = *(v7 + 24);
      if (v8 == v2)
      {
        v9 = *(v7 + 88);
        if (v9 <= 0)
        {
          __ReturnSurfaceToCache_block_invoke_cold_1();
        }

        v10 = v9 - 1;
        *(v7 + 88) = v10;
        if (!v10)
        {
          if (*(v7 + 152))
          {
            CI::RemoveCacheEntry(v7, a2);
            v8 = (*(*v7 + 8))(v7);
            goto LABEL_12;
          }

          v13 = *(v7 + 96);
          if (v13 != 8)
          {
            if (v13 == -1)
            {
              goto LABEL_23;
            }

            if (v13 > 6 || *(v7 + 60) || (v14 = *(v3 + 8), v14 == v3))
            {
LABEL_35:
              v8 = SurfaceSetVolatile(v8, v13);
            }

            else
            {
              while (1)
              {
                v15 = *(v14 + 16);
                if (*(v15 + 96) >= 7 && !*(v15 + 88) && *(v15 + 56) && *(v15 + 64) && SurfaceIsVolatileNonEmpty(*(v15 + 24)))
                {
                  break;
                }

                v14 = *(v14 + 8);
                if (v14 == v3)
                {
                  v8 = *(v7 + 24);
                  v13 = *(v7 + 96);
                  goto LABEL_35;
                }
              }

LABEL_23:
              CI::SurfaceCacheEntry::empty(v7);
            }
          }

LABEL_12:
          v8 = CI::RemoveFromStartUntilAtOrBelowCapacity(v8);
        }

        CI::UpdateVolatilityStats(v8);
        v11 = CI_LOG_SURFACE_CACHE();
        if (v11)
        {
          CI::LogCacheState((v11 > 1), "ReturnSurfaceToCache", v12);
        }

        break;
      }
    }

    v2 = *(a1 + 32);
  }

  if (v2)
  {

    CFRelease(v2);
  }
}

void CI::RemoveCacheEntry(CI *this, CI::SurfaceCacheEntry *a2)
{
  v13 = this;
  if (CI::gCacheList)
  {
    v2 = std::list<CI::attached_surface_t *>::remove(CI::gCacheList, &v13);
    v3 = *(v13 + 3);
    v4 = CI::gReleaseSurfaceBlockMap(v2);
    v5 = v4 + 1;
    v6 = *v4;
    if (*v4 != v4 + 1)
    {
      do
      {
        v7 = _Block_copy(v6[5]);
        CFRetain(v3);
        v8 = v6[4];
        block[0] = MEMORY[0x1E69E9820];
        block[1] = 0x40000000;
        block[2] = ___ZN2CIL16RemoveCacheEntryEPNS_17SurfaceCacheEntryE_block_invoke;
        block[3] = &unk_1E75C84D0;
        block[4] = v7;
        block[5] = v3;
        dispatch_async(v8, block);
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
  }
}

void AddReleaseSurfaceBlock(uint64_t a1, uint64_t a2)
{
  if (GetQueue(void)::onceToken != -1)
  {
    RetainSurfaceFromCache_cold_1();
  }

  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 0x40000000;
  v4[2] = __AddReleaseSurfaceBlock_block_invoke;
  v4[3] = &unk_1E75C81F8;
  v4[4] = a2;
  v4[5] = a1;
  dispatch_sync(gSurfaceCacheQueue, v4);
}

void *__AddReleaseSurfaceBlock_block_invoke(uint64_t a1)
{
  v2 = CI::gReleaseSurfaceBlockMap(a1);
  v3 = (a1 + 40);
  v6 = *(v2 + 8);
  v4 = (v2 + 8);
  v5 = v6;
  if (!v6)
  {
    goto LABEL_9;
  }

  v7 = *v3;
  v8 = v4;
  do
  {
    v9 = v5[4];
    v10 = v9 >= v7;
    v11 = v9 < v7;
    if (v10)
    {
      v8 = v5;
    }

    v5 = v5[v11];
  }

  while (v5);
  if (v8 == v4 || v7 < *(v8 + 4))
  {
LABEL_9:
    v8 = v4;
  }

  if (v8 != (CI::gReleaseSurfaceBlockMap(v4) + 8))
  {
    __AddReleaseSurfaceBlock_block_invoke_cold_1();
  }

  dispatch_retain(*(a1 + 40));
  v12 = _Block_copy(*(a1 + 32));
  v13 = CI::gReleaseSurfaceBlockMap(v12);
  result = std::__tree<std::__value_type<dispatch_queue_s *,void({block_pointer})(__IOSurface *)>,std::__map_value_compare<dispatch_queue_s *,std::__value_type<dispatch_queue_s *,void({block_pointer})(__IOSurface *)>,std::less<dispatch_queue_s *>,true>,std::allocator<std::__value_type<dispatch_queue_s *,void({block_pointer})(__IOSurface *)>>>::__emplace_unique_key_args<dispatch_queue_s *,std::piecewise_construct_t const&,std::tuple<dispatch_queue_s * const&>,std::tuple<>>(v13, v3);
  result[5] = v12;
  return result;
}

void RemoveReleaseSurfaceBlock(uint64_t a1)
{
  if (GetQueue(void)::onceToken != -1)
  {
    RetainSurfaceFromCache_cold_1();
  }

  block[0] = MEMORY[0x1E69E9820];
  block[1] = 0x40000000;
  block[2] = __RemoveReleaseSurfaceBlock_block_invoke;
  block[3] = &__block_descriptor_tmp_45_1;
  block[4] = a1;
  dispatch_sync(gSurfaceCacheQueue, block);
}

uint64_t __RemoveReleaseSurfaceBlock_block_invoke(dispatch_object_t *a1)
{
  v2 = CI::gReleaseSurfaceBlockMap(a1);
  v5 = *(v2 + 8);
  v3 = (v2 + 8);
  v4 = v5;
  if (!v5)
  {
    goto LABEL_9;
  }

  v6 = a1[4];
  v7 = v3;
  do
  {
    v8 = *(v4 + 4);
    v9 = v8 >= v6;
    v10 = v8 < v6;
    if (v9)
    {
      v7 = v4;
    }

    v4 = *(v4 + v10);
  }

  while (v4);
  if (v7 == v3 || v6 < *(v7 + 4))
  {
LABEL_9:
    v7 = v3;
  }

  result = CI::gReleaseSurfaceBlockMap(v3);
  if (v7 != (result + 8))
  {
    _Block_release(*(v7 + 5));
    dispatch_release(a1[4]);
    v13 = CI::gReleaseSurfaceBlockMap(v12);

    return std::__tree<std::__value_type<dispatch_queue_s *,void({block_pointer})(__IOSurface *)>,std::__map_value_compare<dispatch_queue_s *,std::__value_type<dispatch_queue_s *,void({block_pointer})(__IOSurface *)>,std::less<dispatch_queue_s *>,true>,std::allocator<std::__value_type<dispatch_queue_s *,void({block_pointer})(__IOSurface *)>>>::__erase_unique<dispatch_queue_s *>(v13, a1 + 4);
  }

  return result;
}

void RegularizePriorityForContextEntries(int a1)
{
  if (GetQueue(void)::onceToken != -1)
  {
    RetainSurfaceFromCache_cold_1();
  }

  block[0] = MEMORY[0x1E69E9820];
  block[1] = 0x40000000;
  block[2] = __RegularizePriorityForContextEntries_block_invoke;
  block[3] = &__block_descriptor_tmp_48;
  v3 = a1;
  dispatch_async(gSurfaceCacheQueue, block);
}

uint64_t __RegularizePriorityForContextEntries_block_invoke(uint64_t result)
{
  v1 = *(result + 32);
  v2 = CI::gCacheList;
  if (v1)
  {
    v3 = CI::gCacheList == 0;
  }

  else
  {
    v3 = 1;
  }

  if (!v3)
  {
    v4 = *(CI::gCacheList + 8);
    if (v4 != CI::gCacheList)
    {
      do
      {
        v5 = *(v4 + 16);
        if (*(v5 + 56) == v1 && *(v5 + 96) >= 7)
        {
          *(v5 + 96) = 6;
        }

        v4 = *(v4 + 8);
      }

      while (v4 != v2);
    }
  }

  return result;
}

void RemoveCacheEntriesForContext(int a1)
{
  if (GetQueue(void)::onceToken != -1)
  {
    RetainSurfaceFromCache_cold_1();
  }

  block[0] = MEMORY[0x1E69E9820];
  block[1] = 0x40000000;
  block[2] = __RemoveCacheEntriesForContext_block_invoke;
  block[3] = &__block_descriptor_tmp_50_0;
  v3 = a1;
  dispatch_sync(gSurfaceCacheQueue, block);
}

void __RemoveCacheEntriesForContext_block_invoke(CI *a1, CI::SurfaceCacheEntry *a2)
{
  v2 = *(a1 + 8);
  v3 = CI::gCacheList;
  if (v2)
  {
    v4 = CI::gCacheList == 0;
  }

  else
  {
    v4 = 1;
  }

  if (v4)
  {
    goto LABEL_21;
  }

  v15 = 0;
  v16 = 0;
  v14 = 0;
  v5 = *(CI::gCacheList + 8);
  if (v5 == CI::gCacheList)
  {
    goto LABEL_21;
  }

  v6 = 0;
  do
  {
    v7 = *(v5 + 16);
    v13 = v7;
    if (*(v7 + 56) == v2 && !*(v7 + 88))
    {
      std::vector<CI::SurfaceCacheEntry *>::push_back[abi:nn200100](&v14, &v13);
      v6 = 1;
    }

    v5 = *(v5 + 8);
  }

  while (v5 != v3);
  v8 = v14;
  v9 = v15;
  if (v14 != v15)
  {
    do
    {
      v10 = *v8;
      CI::RemoveCacheEntry(*v8, a2);
      if (v10)
      {
        a1 = (*(*v10 + 8))(v10);
      }

      ++v8;
    }

    while (v8 != v9);
    v8 = v14;
  }

  if (v8)
  {
    v15 = v8;
    operator delete(v8);
  }

  if ((v6 & 1) == 0)
  {
LABEL_21:
    CI_LOG_SURFACE_CACHE();
  }

  else
  {
    CI::UpdateVolatilityStats(a1);
    v11 = CI_LOG_SURFACE_CACHE();
    if (v11)
    {
      CI::LogCacheState((v11 > 1), "RemoveCacheEntriesForContext", v12);
    }
  }
}

void PurgeCacheEntriesForImage(int a1)
{
  if (GetQueue(void)::onceToken != -1)
  {
    RetainSurfaceFromCache_cold_1();
  }

  block[0] = MEMORY[0x1E69E9820];
  block[1] = 0x40000000;
  block[2] = __PurgeCacheEntriesForImage_block_invoke;
  block[3] = &__block_descriptor_tmp_52;
  v3 = a1;
  dispatch_async(gSurfaceCacheQueue, block);
}

void __PurgeCacheEntriesForImage_block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = CI::gCacheList;
  if (v1)
  {
    v3 = CI::gCacheList == 0;
  }

  else
  {
    v3 = 1;
  }

  if (v3)
  {
    goto LABEL_18;
  }

  v4 = *(CI::gCacheList + 8);
  if (v4 == CI::gCacheList)
  {
    goto LABEL_18;
  }

  v5 = 0;
  do
  {
    v6 = *(v4 + 16);
    if (*(v6 + 60) == v1)
    {
      if (*(v6 + 88))
      {
        *(v6 + 96) = -1;
      }

      else
      {
        CI::SurfaceCacheEntry::empty(v6);
      }

      v5 = 1;
    }

    v4 = *(v4 + 8);
  }

  while (v4 != v2);
  if ((v5 & 1) == 0)
  {
LABEL_18:

    CI_LOG_SURFACE_CACHE();
  }

  else
  {
    CI::UpdateVolatilityStats(v6);
    v7 = CI_LOG_SURFACE_CACHE();
    if (v7)
    {
      v9 = v7 > 1;

      CI::LogCacheState(v9, "PurgeCacheEntriesForImage", v8);
    }
  }
}

float GetSurfaceCacheFillTime()
{
  v3 = 0;
  v4 = &v3;
  v5 = 0x2000000000;
  v6 = 0;
  if (GetQueue(void)::onceToken != -1)
  {
    GetSurfaceFromCacheAndFill_cold_1();
  }

  block[0] = MEMORY[0x1E69E9820];
  block[1] = 0x40000000;
  block[2] = __GetSurfaceCacheFillTime_block_invoke;
  block[3] = &unk_1E75C82A0;
  block[4] = &v3;
  dispatch_sync(gSurfaceCacheQueue, block);
  v0 = v4[6];
  _Block_object_dispose(&v3, 8);
  return v0;
}

float __GetSurfaceCacheFillTime_block_invoke(uint64_t a1)
{
  mach_timebase_info(&info);
  v2.i64[0] = info.numer;
  v2.i64[1] = info.denom;
  v3 = &qword_19CF237D0;
  v4 = vld1q_dup_f64(v3);
  v4.f64[0] = CI::gTimeFilling;
  v5 = vmulq_f64(v4, vcvtq_f64_u64(v2));
  result = vdivq_f64(v5, vdupq_laneq_s64(v5, 1)).f64[0];
  *(*(*(a1 + 32) + 8) + 24) = result;
  return result;
}

uint64_t GetSurfaceCacheNonVolatileSize()
{
  v3 = 0;
  v4 = &v3;
  v5 = 0x2000000000;
  v6 = 0;
  if (GetQueue(void)::onceToken != -1)
  {
    GetSurfaceFromCacheAndFill_cold_1();
  }

  block[0] = MEMORY[0x1E69E9820];
  block[1] = 0x40000000;
  block[2] = __GetSurfaceCacheNonVolatileSize_block_invoke;
  block[3] = &unk_1E75C82C8;
  block[4] = &v3;
  dispatch_sync(gSurfaceCacheQueue, block);
  v0 = v4[3];
  _Block_object_dispose(&v3, 8);
  return v0;
}

uint64_t __GetSurfaceCacheNonVolatileSize_block_invoke(uint64_t result)
{
  v1 = atomic_load(&CI::gCacheSize);
  v2 = atomic_load(&CI::gVolatileSize);
  *(*(*(result + 32) + 8) + 24) = v1 - v2;
  return result;
}

uint64_t GetSurfaceCachePeakNonVolatileSize()
{
  v3 = 0;
  v4 = &v3;
  v5 = 0x2000000000;
  v6 = 0;
  if (GetQueue(void)::onceToken != -1)
  {
    GetSurfaceFromCacheAndFill_cold_1();
  }

  block[0] = MEMORY[0x1E69E9820];
  block[1] = 0x40000000;
  block[2] = __GetSurfaceCachePeakNonVolatileSize_block_invoke;
  block[3] = &unk_1E75C82F0;
  block[4] = &v3;
  dispatch_sync(gSurfaceCacheQueue, block);
  v0 = v4[3];
  _Block_object_dispose(&v3, 8);
  return v0;
}

uint64_t GetSurfaceCacheNonVolatileSizeForContext(int a1)
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x2000000000;
  v9 = 0;
  if (GetQueue(void)::onceToken != -1)
  {
    GetSurfaceFromCacheAndFill_cold_1();
  }

  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 0x40000000;
  v4[2] = __GetSurfaceCacheNonVolatileSizeForContext_block_invoke;
  v4[3] = &unk_1E75C8318;
  v4[4] = &v6;
  v5 = a1;
  dispatch_sync(gSurfaceCacheQueue, v4);
  v2 = v7[3];
  _Block_object_dispose(&v6, 8);
  return v2;
}

uint64_t __GetSurfaceCacheNonVolatileSizeForContext_block_invoke(uint64_t result)
{
  v1 = *(result + 40);
  if (v1)
  {
    v2 = CI::gCacheList == 0;
  }

  else
  {
    v2 = 1;
  }

  if (v2 || (v3 = *(CI::gCacheList + 8), v3 == CI::gCacheList))
  {
    v4 = 0;
  }

  else
  {
    v4 = 0;
    do
    {
      v5 = *(v3 + 16);
      if (*(v5 + 56) == v1 && *(v5 + 88))
      {
        v4 += *(v5 + 104);
      }

      v3 = *(v3 + 8);
    }

    while (v3 != CI::gCacheList);
  }

  *(*(*(result + 32) + 8) + 24) = v4;
  return result;
}

uint64_t CopyPeakNonVolatileList()
{
  v3 = 0;
  v4 = &v3;
  v5 = 0x2000000000;
  v6 = 0;
  if (GetQueue(void)::onceToken != -1)
  {
    GetSurfaceFromCacheAndFill_cold_1();
  }

  block[0] = MEMORY[0x1E69E9820];
  block[1] = 0x40000000;
  block[2] = __CopyPeakNonVolatileList_block_invoke;
  block[3] = &unk_1E75C8340;
  block[4] = &v3;
  dispatch_sync(gSurfaceCacheQueue, block);
  v0 = v4[3];
  _Block_object_dispose(&v3, 8);
  return v0;
}

CFArrayRef __CopyPeakNonVolatileList_block_invoke(uint64_t a1, const __CFArray *a2)
{
  result = __CFArray::createCopy(CI::gPeakNonVolatileList, a2);
  *(*(*(a1 + 32) + 8) + 24) = result;
  return result;
}

CFMutableArrayRef CopyContextPeakNonVolatileList(int a1)
{
  Mutable = CFArrayCreateMutable(0, 0, MEMORY[0x1E695E9C0]);
  if (GetQueue(void)::onceToken != -1)
  {
    RetainSurfaceFromCache_cold_1();
  }

  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 0x40000000;
  v4[2] = __CopyContextPeakNonVolatileList_block_invoke;
  v4[3] = &__block_descriptor_tmp_61;
  v5 = a1;
  v4[4] = Mutable;
  dispatch_sync(gSurfaceCacheQueue, v4);
  return Mutable;
}

void __CopyContextPeakNonVolatileList_block_invoke(uint64_t a1, const __CFArray *a2)
{
  Copy = __CFArray::createCopy(CI::gPeakNonVolatileList, a2);
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 0x40000000;
  v4[2] = __CopyContextPeakNonVolatileList_block_invoke_2;
  v4[3] = &__block_descriptor_tmp_60_0;
  v5 = *(a1 + 40);
  v4[4] = *(a1 + 32);
  __CFArray::for_each(Copy, v4);
  CFRelease(Copy);
}

void __CopyContextPeakNonVolatileList_block_invoke_2(uint64_t a1, __CFDictionary *this)
{
  if (__CFDictionary::getInt32(this, @"ctxIndex", 0) == *(a1 + 40))
  {
    v4 = *(a1 + 32);
    if (v4)
    {

      CFArrayAppendValue(v4, this);
    }
  }
}

CFMutableArrayRef CopyAnyImagePeakNonVolatileList()
{
  Mutable = CFArrayCreateMutable(0, 0, MEMORY[0x1E695E9C0]);
  if (GetQueue(void)::onceToken != -1)
  {
    RetainSurfaceFromCache_cold_1();
  }

  block[0] = MEMORY[0x1E69E9820];
  block[1] = 0x40000000;
  block[2] = __CopyAnyImagePeakNonVolatileList_block_invoke;
  block[3] = &__block_descriptor_tmp_68;
  block[4] = Mutable;
  dispatch_sync(gSurfaceCacheQueue, block);
  return Mutable;
}

void __CopyAnyImagePeakNonVolatileList_block_invoke(uint64_t a1, const __CFArray *a2)
{
  Copy = __CFArray::createCopy(CI::gPeakNonVolatileList, a2);
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 0x40000000;
  v4[2] = __CopyAnyImagePeakNonVolatileList_block_invoke_2;
  v4[3] = &__block_descriptor_tmp_67_1;
  v4[4] = *(a1 + 32);
  __CFArray::for_each(Copy, v4);
  CFRelease(Copy);
}

void __CopyAnyImagePeakNonVolatileList_block_invoke_2(uint64_t a1, __CFDictionary *this)
{
  if (__CFDictionary::getInt32(this, @"imgIndex", 0))
  {
    v4 = *(a1 + 32);
    if (v4)
    {

      CFArrayAppendValue(v4, this);
    }
  }
}

uint64_t GetSurfaceCacheCountAllocated()
{
  v3 = 0;
  v4 = &v3;
  v5 = 0x2000000000;
  v6 = 0;
  if (GetQueue(void)::onceToken != -1)
  {
    GetSurfaceFromCacheAndFill_cold_1();
  }

  block[0] = MEMORY[0x1E69E9820];
  block[1] = 0x40000000;
  block[2] = __GetSurfaceCacheCountAllocated_block_invoke;
  block[3] = &unk_1E75C83E8;
  block[4] = &v3;
  dispatch_sync(gSurfaceCacheQueue, block);
  v0 = v4[3];
  _Block_object_dispose(&v3, 8);
  return v0;
}

void ResetCacheStatistics()
{
  if (GetQueue(void)::onceToken != -1)
  {
    RetainSurfaceFromCache_cold_1();
  }

  v1 = gSurfaceCacheQueue;

  dispatch_sync(v1, &__block_literal_global_74);
}

void __ResetCacheStatistics_block_invoke()
{
  CI::gCacheCountPeak = 0;
  CI::gCacheSizePeak = 0;
  CI::gCacheNonVolatileSizePeak = 0;
  CI::gCacheCountAllocated = 0;
  CI::gCacheBytesAllocated = 0;
  CI::gCacheBytesFilled = 0;
  if (CI::gPeakNonVolatileList)
  {
    CFArrayRemoveAllValues(CI::gPeakNonVolatileList);
  }

  if (CI_LOG_SURFACE_CACHE())
  {

    CI::LogCacheState(1, "ResetCacheStatistics", v0);
  }
}

void ___ZL8GetQueuev_block_invoke()
{
  v0 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
  gSurfaceCacheQueue = dispatch_queue_create("CI::SurfaceCacheQueue", v0);
  global_queue = dispatch_get_global_queue(2, 0);
  gMemoryPressure = dispatch_source_create(MEMORY[0x1E69E96E8], 0, 6uLL, global_queue);
  dispatch_source_set_event_handler(gMemoryPressure, &__block_literal_global_86_1);
  v2 = gMemoryPressure;

  dispatch_resume(v2);
}

void ___ZL8GetQueuev_block_invoke_3(uint64_t a1, CI::SurfaceCacheEntry *a2)
{
  v2 = CI::gCacheList;
  if (!CI::gCacheList || (v12 = 0, v13 = 0, v11 = 0, v3 = *(CI::gCacheList + 8), v3 == CI::gCacheList))
  {

    CI_LOG_SURFACE_CACHE();
  }

  else
  {
    v4 = 0;
    do
    {
      v10 = *(v3 + 16);
      if (!*(v10 + 88))
      {
        std::vector<CI::SurfaceCacheEntry *>::push_back[abi:nn200100](&v11, &v10);
        v4 = 1;
      }

      v3 = *(v3 + 8);
    }

    while (v3 != v2);
    v5 = v11;
    v6 = v12;
    if (v11 != v12)
    {
      do
      {
        v7 = *v5;
        CI::RemoveCacheEntry(*v5, a2);
        if (v7)
        {
          (*(*v7 + 8))(v7);
        }

        ++v5;
      }

      while (v5 != v6);
      v5 = v11;
    }

    if (v5)
    {
      v12 = v5;
      operator delete(v5);
    }

    v8 = CI_LOG_SURFACE_CACHE();
    if ((v4 & (v8 != 0)) == 1)
    {
      CI::LogCacheState((v8 > 1), "MemoryPreasure", v9);
    }
  }
}

void std::vector<CI::SurfaceCacheEntry *>::push_back[abi:nn200100](uint64_t a1, void *a2)
{
  v5 = *(a1 + 8);
  v4 = *(a1 + 16);
  if (v5 >= v4)
  {
    v7 = (v5 - *a1) >> 3;
    if ((v7 + 1) >> 61)
    {
      std::vector<CI::SWRendererFunctionInputNode>::__throw_length_error[abi:nn200100]();
    }

    v8 = v4 - *a1;
    v9 = v8 >> 2;
    if (v8 >> 2 <= (v7 + 1))
    {
      v9 = v7 + 1;
    }

    if (v8 >= 0x7FFFFFFFFFFFFFF8)
    {
      v10 = 0x1FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v10 = v9;
    }

    if (v10)
    {
      std::__allocate_at_least[abi:nn200100]<std::allocator<Queue *>>(a1, v10);
    }

    v11 = (8 * v7);
    *v11 = *a2;
    v6 = 8 * v7 + 8;
    v12 = *(a1 + 8) - *a1;
    v13 = v11 - v12;
    memcpy(v11 - v12, *a1, v12);
    v14 = *a1;
    *a1 = v13;
    *(a1 + 8) = v6;
    *(a1 + 16) = 0;
    if (v14)
    {
      operator delete(v14);
    }
  }

  else
  {
    *v5 = *a2;
    v6 = (v5 + 1);
  }

  *(a1 + 8) = v6;
}

void *std::deque<CI::SurfaceCacheEntry *>::push_back(void *result, void *a2)
{
  v3 = result;
  v4 = result[2];
  v5 = result[1];
  if (v4 == v5)
  {
    v6 = 0;
  }

  else
  {
    v6 = ((v4 - v5) << 6) - 1;
  }

  v7 = result[5];
  v8 = v7 + result[4];
  if (v6 == v8)
  {
    result = std::deque<CI::SurfaceCacheEntry *>::__add_back_capacity(result);
    v5 = v3[1];
    v7 = v3[5];
    v8 = v3[4] + v7;
  }

  *(*(v5 + ((v8 >> 6) & 0x3FFFFFFFFFFFFF8)) + 8 * (v8 & 0x1FF)) = *a2;
  v3[5] = v7 + 1;
  return result;
}

void *std::deque<CI::SurfaceCacheEntry *>::__add_back_capacity(void *a1)
{
  v1 = a1[4];
  v2 = v1 >= 0x200;
  v3 = v1 - 512;
  if (!v2)
  {
    v6 = a1[2];
    v7 = a1[3];
    v8 = v7 - *a1;
    if (v6 - a1[1] < v8)
    {
      if (v7 != v6)
      {
        operator new();
      }

      operator new();
    }

    if (v7 == *a1)
    {
      v9 = 1;
    }

    else
    {
      v9 = v8 >> 2;
    }

    v11 = a1;
    std::__allocate_at_least[abi:nn200100]<std::allocator<NSString *>>(a1, v9);
  }

  a1[4] = v3;
  v4 = a1[1];
  *&v10 = *v4;
  a1[1] = v4 + 1;
  return std::__split_buffer<CI::SurfaceCacheEntry **>::emplace_back<CI::SurfaceCacheEntry **&>(a1, &v10);
}

void *std::__split_buffer<CI::SurfaceCacheEntry **>::emplace_back<CI::SurfaceCacheEntry **&>(void *result, void *a2)
{
  v3 = result;
  v4 = result[2];
  if (v4 == result[3])
  {
    v5 = result[1];
    v6 = &v5[-*result];
    if (v5 <= *result)
    {
      if (v4 == *result)
      {
        v11 = 1;
      }

      else
      {
        v11 = &v4[-*result] >> 2;
      }

      std::__allocate_at_least[abi:nn200100]<std::allocator<NSString *>>(result, v11);
    }

    v7 = ((v6 >> 3) + 1) / -2;
    v8 = ((v6 >> 3) + 1) / 2;
    v9 = &v5[-8 * v8];
    v10 = v4 - v5;
    if (v4 != v5)
    {
      result = memmove(&v5[-8 * v8], v5, v4 - v5);
      v5 = v3[1];
    }

    v4 = &v9[v10];
    v3[1] = &v5[8 * v7];
    v3[2] = &v9[v10];
  }

  *v4 = *a2;
  v3[2] += 8;
  return result;
}

const void **std::__split_buffer<CI::SurfaceCacheEntry **>::emplace_front<CI::SurfaceCacheEntry **>(const void **result, void *a2)
{
  v3 = result;
  v4 = result[1];
  if (v4 == *result)
  {
    v6 = result[2];
    v7 = result[3];
    if (v6 >= v7)
    {
      if (v7 == v4)
      {
        v9 = 1;
      }

      else
      {
        v9 = (v7 - v4) >> 2;
      }

      std::__allocate_at_least[abi:nn200100]<std::allocator<NSString *>>(result, v9);
    }

    v8 = (((v7 - v6) >> 3) + 1) / 2;
    v5 = &v4[8 * v8];
    if (v6 != v4)
    {
      result = memmove(&v4[8 * v8], v4, v6 - v4);
      v6 = v3[2];
    }

    v3[1] = v5;
    v3[2] = &v6[8 * v8];
  }

  else
  {
    v5 = result[1];
  }

  *(v5 - 1) = *a2;
  v3[1] = v3[1] - 8;
  return result;
}

void *std::__split_buffer<CI::SurfaceCacheEntry **>::emplace_back<CI::SurfaceCacheEntry **>(void *result, void *a2)
{
  v3 = result;
  v4 = result[2];
  if (v4 == result[3])
  {
    v5 = result[1];
    v6 = &v5[-*result];
    if (v5 <= *result)
    {
      if (v4 == *result)
      {
        v11 = 1;
      }

      else
      {
        v11 = &v4[-*result] >> 2;
      }

      std::__allocate_at_least[abi:nn200100]<std::allocator<NSString *>>(result[4], v11);
    }

    v7 = ((v6 >> 3) + 1) / -2;
    v8 = ((v6 >> 3) + 1) / 2;
    v9 = &v5[-8 * v8];
    v10 = v4 - v5;
    if (v4 != v5)
    {
      result = memmove(&v5[-8 * v8], v5, v4 - v5);
      v5 = v3[1];
    }

    v4 = &v9[v10];
    v3[1] = &v5[8 * v7];
    v3[2] = &v9[v10];
  }

  *v4 = *a2;
  v3[2] += 8;
  return result;
}

const void **std::__split_buffer<CI::SurfaceCacheEntry **>::emplace_front<CI::SurfaceCacheEntry **&>(const void **result, void *a2)
{
  v3 = result;
  v4 = result[1];
  if (v4 == *result)
  {
    v6 = result[2];
    v7 = result[3];
    if (v6 >= v7)
    {
      if (v7 == v4)
      {
        v9 = 1;
      }

      else
      {
        v9 = (v7 - v4) >> 2;
      }

      std::__allocate_at_least[abi:nn200100]<std::allocator<NSString *>>(result[4], v9);
    }

    v8 = (((v7 - v6) >> 3) + 1) / 2;
    v5 = &v4[8 * v8];
    if (v6 != v4)
    {
      result = memmove(&v4[8 * v8], v4, v6 - v4);
      v6 = v3[2];
    }

    v3[1] = v5;
    v3[2] = &v6[8 * v8];
  }

  else
  {
    v5 = result[1];
  }

  *(v5 - 1) = *a2;
  v3[1] = v3[1] - 8;
  return result;
}

uint64_t std::deque<CI::SurfaceCacheEntry *>::~deque[abi:nn200100](void *a1)
{
  v2 = a1[1];
  v3 = a1[2];
  a1[5] = 0;
  v4 = v3 - v2;
  if (v4 >= 3)
  {
    do
    {
      operator delete(*v2);
      v3 = a1[2];
      v2 = (a1[1] + 8);
      a1[1] = v2;
      v4 = v3 - v2;
    }

    while (v4 > 2);
  }

  if (v4 == 1)
  {
    v5 = 256;
  }

  else
  {
    if (v4 != 2)
    {
      goto LABEL_9;
    }

    v5 = 512;
  }

  a1[4] = v5;
LABEL_9:
  while (v2 != v3)
  {
    v6 = *v2++;
    operator delete(v6);
  }

  return std::__split_buffer<CI::SurfaceCacheEntry **>::~__split_buffer(a1);
}

uint64_t std::__split_buffer<CI::SurfaceCacheEntry **>::~__split_buffer(uint64_t a1)
{
  v3 = *(a1 + 8);
  v2 = *(a1 + 16);
  if (v2 != v3)
  {
    *(a1 + 16) = v2 + ((v3 - v2 + 7) & 0xFFFFFFFFFFFFFFF8);
  }

  v4 = *a1;
  if (*a1)
  {
    operator delete(v4);
  }

  return a1;
}

uint64_t ___ZN2CIL13LogCacheStateEbPKc_block_invoke(uint64_t a1, FILE *a2)
{
  fprintf(a2, "SurfaceCache: %s\n", *(a1 + 32));
  fprintf(a2, "  count: %ld\n", *(a1 + 40));
  v6 = atomic_load(&CI::gCacheSize);
  if (v6 < 0x80000001)
  {
    if (v6 <= 0x200000)
    {
      if (v6 < 0x801)
      {
        goto LABEL_8;
      }

      v7 = vcvtd_n_f64_u64(v6, 0xAuLL);
    }

    else
    {
      v7 = vcvtd_n_f64_u64(v6, 0x14uLL);
    }
  }

  else
  {
    v7 = vcvtd_n_f64_u64(v6, 0x1EuLL);
  }

  v6 = llround(v7);
LABEL_8:
  v8 = atomic_load(&CI::gCacheSize);
  if (v8 <= 0x80000000)
  {
    if (v8 <= 0x200000)
    {
      if (v8 <= 0x800)
      {
        v9 = "B";
      }

      else
      {
        v9 = "KB";
      }
    }

    else
    {
      v9 = "MB";
    }
  }

  else
  {
    v9 = "GB";
  }

  fprintf(a2, "  size: %ld%s\n", v6, v9);
  v10 = *(a1 + 48);
  v11 = llround(vcvtd_n_f64_u64(v10, 0x1EuLL));
  v12 = llround(vcvtd_n_f64_u64(v10, 0x14uLL));
  v13 = "MB";
  v14 = llround(vcvtd_n_f64_u64(v10, 0xAuLL));
  if (v10 > 0x800)
  {
    v15 = "KB";
  }

  else
  {
    v14 = *(a1 + 48);
    v15 = "B";
  }

  if (v10 <= 0x200000)
  {
    v12 = v14;
    v13 = v15;
  }

  v16 = v10 > 0x80000000;
  if (v10 <= 0x80000000)
  {
    v17 = v12;
  }

  else
  {
    v17 = v11;
  }

  if (v16)
  {
    v18 = "GB";
  }

  else
  {
    v18 = v13;
  }

  fprintf(a2, "  non-volatile: %ld%s\n", v17, v18);
  v19 = *(a1 + 56);
  v20 = llround(vcvtd_n_f64_u64(v19, 0x1EuLL));
  v21 = llround(vcvtd_n_f64_u64(v19, 0x14uLL));
  v22 = "MB";
  v23 = llround(vcvtd_n_f64_u64(v19, 0xAuLL));
  if (v19 > 0x800)
  {
    v24 = "KB";
  }

  else
  {
    v23 = *(a1 + 56);
    v24 = "B";
  }

  if (v19 <= 0x200000)
  {
    v21 = v23;
    v22 = v24;
  }

  v25 = v19 > 0x80000000;
  if (v19 <= 0x80000000)
  {
    v26 = v21;
  }

  else
  {
    v26 = v20;
  }

  if (v25)
  {
    v27 = "GB";
  }

  else
  {
    v27 = v22;
  }

  result = fprintf(a2, "  volatile: %ld%s\n", v26, v27);
  v29 = *(a1 + 64);
  if (v29 != -1)
  {
    v30 = llround(vcvtd_n_f64_u64(v29, 0x1EuLL));
    v31 = llround(vcvtd_n_f64_u64(v29, 0x14uLL));
    v32 = "MB";
    v33 = llround(vcvtd_n_f64_u64(v29, 0xAuLL));
    if (v29 > 0x800)
    {
      v34 = "KB";
    }

    else
    {
      v33 = *(a1 + 64);
      v34 = "B";
    }

    if (v29 <= 0x200000)
    {
      v31 = v33;
      v32 = v34;
    }

    v35 = v29 > 0x80000000;
    if (v29 <= 0x80000000)
    {
      v36 = v31;
    }

    else
    {
      v36 = v30;
    }

    if (v35)
    {
      v37 = "GB";
    }

    else
    {
      v37 = v32;
    }

    result = fprintf(a2, "  capacity: %ld%s\n", v36, v37);
  }

  if (CI::gCacheGetCount)
  {
    mach_timebase_info(&info);
    v38 = CI::gTimeFilling;
    LODWORD(v2) = info.numer;
    LODWORD(v3) = info.denom;
    fwrite("  cumulativeStats:\n", 0x13uLL, 1uLL, a2);
    v39 = CI::gCacheSizePeak;
    if (CI::gCacheSizePeak <= 0x80000000)
    {
      if (CI::gCacheSizePeak <= 0x200000)
      {
        v41 = llround(vcvtd_n_f64_u64(CI::gCacheSizePeak, 0xAuLL));
        if (CI::gCacheSizePeak <= 0x800)
        {
          v40 = "B";
        }

        else
        {
          v39 = v41;
          v40 = "KB";
        }
      }

      else
      {
        v39 = llround(vcvtd_n_f64_u64(CI::gCacheSizePeak, 0x14uLL));
        v40 = "MB";
      }
    }

    else
    {
      v39 = llround(vcvtd_n_f64_u64(CI::gCacheSizePeak, 0x1EuLL));
      v40 = "GB";
    }

    v42 = CI::gCacheNonVolatileSizePeak;
    if (CI::gCacheNonVolatileSizePeak <= 0x80000000)
    {
      if (CI::gCacheNonVolatileSizePeak <= 0x200000)
      {
        v44 = llround(vcvtd_n_f64_u64(CI::gCacheNonVolatileSizePeak, 0xAuLL));
        if (CI::gCacheNonVolatileSizePeak <= 0x800)
        {
          v43 = "B";
        }

        else
        {
          v42 = v44;
          v43 = "KB";
        }
      }

      else
      {
        v42 = llround(vcvtd_n_f64_u64(CI::gCacheNonVolatileSizePeak, 0x14uLL));
        v43 = "MB";
      }
    }

    else
    {
      v42 = llround(vcvtd_n_f64_u64(CI::gCacheNonVolatileSizePeak, 0x1EuLL));
      v43 = "GB";
    }

    v45 = CI::gCacheBytesAllocated;
    if (CI::gCacheBytesAllocated <= 0x80000000)
    {
      if (CI::gCacheBytesAllocated <= 0x200000)
      {
        v47 = llround(vcvtd_n_f64_u64(CI::gCacheBytesAllocated, 0xAuLL));
        if (CI::gCacheBytesAllocated <= 0x800)
        {
          v46 = "B";
        }

        else
        {
          v45 = v47;
          v46 = "KB";
        }
      }

      else
      {
        v45 = llround(vcvtd_n_f64_u64(CI::gCacheBytesAllocated, 0x14uLL));
        v46 = "MB";
      }
    }

    else
    {
      v45 = llround(vcvtd_n_f64_u64(CI::gCacheBytesAllocated, 0x1EuLL));
      v46 = "GB";
    }

    v48 = CI::gCacheBytesFilled;
    if (CI::gCacheBytesFilled <= 0x80000000)
    {
      if (CI::gCacheBytesFilled <= 0x200000)
      {
        v50 = llround(vcvtd_n_f64_u64(CI::gCacheBytesFilled, 0xAuLL));
        if (CI::gCacheBytesFilled <= 0x800)
        {
          v49 = "B";
        }

        else
        {
          v48 = v50;
          v49 = "KB";
        }
      }

      else
      {
        v48 = llround(vcvtd_n_f64_u64(CI::gCacheBytesFilled, 0x14uLL));
        v49 = "MB";
      }
    }

    else
    {
      v48 = llround(vcvtd_n_f64_u64(CI::gCacheBytesFilled, 0x1EuLL));
      v49 = "GB";
    }

    fprintf(a2, "    allocCount=%ld peakCount=%ld peakSize=%ld%s peakNVSize=%ld%s totalAlloced=%ld%s totalFilled=%ld%s timeFilling=%.3gms\n", CI::gCacheCountAllocated, CI::gCacheCountPeak, v39, v40, v42, v43, v45, v46, v48, v49, v38 * 1000.0 * v2 / (v3 * 1000000000.0));
    return fprintf(a2, "    hits=%ld (%lu%%)  purgedHits=%ld (%lu%%)  recycledMisses=%ld (%lu%%)  misses=%ld (%lu%%)  inusemisses=%ld (%lu%%)\n", CI::gCacheGetCount - (CI::gCacheGetCountMissed + CI::gCacheGetCountPurged), 100 * (CI::gCacheGetCount - (CI::gCacheGetCountMissed + CI::gCacheGetCountPurged)) / CI::gCacheGetCount, CI::gCacheGetCountPurged, 100 * CI::gCacheGetCountPurged / CI::gCacheGetCount, CI::gCacheGetCountRecycled, 100 * CI::gCacheGetCountRecycled / CI::gCacheGetCount, CI::gCacheGetCountMissed - CI::gCacheGetCountRecycled, 100 * (CI::gCacheGetCountMissed - CI::gCacheGetCountRecycled) / CI::gCacheGetCount, CI::gCacheGetCountInUseMissed, 100 * CI::gCacheGetCountInUseMissed / CI::gCacheGetCount);
  }

  return result;
}

uint64_t ___ZN2CIL13LogCacheStateEbPKc_block_invoke_121(int a1, FILE *__stream)
{
  v2 = CI::gCacheList;
  v3 = *(CI::gCacheList + 8);
  if (v3 != CI::gCacheList)
  {
    do
    {
      v5 = *(v3 + 16);
      fwrite("  ", 2uLL, 1uLL, __stream);
      result = CI::SurfaceCacheEntry::print_core(v5, __stream);
      v3 = *(v3 + 8);
    }

    while (v3 != v2);
  }

  return result;
}

void ___ZN2CIL16RemoveCacheEntryEPNS_17SurfaceCacheEntryE_block_invoke(uint64_t a1)
{
  (*(*(a1 + 32) + 16))();
  _Block_release(*(a1 + 32));
  v2 = *(a1 + 40);

  CFRelease(v2);
}

CFArrayRef __CFArray::createCopy(CFArrayRef theArray, const __CFArray *a2)
{
  if (theArray)
  {
    return CFArrayCreateCopy(0, theArray);
  }

  else
  {
    return CFArrayCreate(0, 0, 0, MEMORY[0x1E695E9C0]);
  }
}

void *CI::InstanceCounted<(CI::Type)86>::~InstanceCounted(void *result)
{
  *result = &unk_1F103CF48;
  atomic_fetch_add(&dword_1ED7C47BC[84], 0xFFFFFFFF);
  return result;
}

void CI::InstanceCounted<(CI::Type)86>::~InstanceCounted(void *a1)
{
  *a1 = &unk_1F103CF48;
  atomic_fetch_add(&dword_1ED7C47BC[84], 0xFFFFFFFF);
  JUMPOUT(0x19EAF5590);
}

void *std::__tree<std::__value_type<dispatch_queue_s *,void({block_pointer})(__IOSurface *)>,std::__map_value_compare<dispatch_queue_s *,std::__value_type<dispatch_queue_s *,void({block_pointer})(__IOSurface *)>,std::less<dispatch_queue_s *>,true>,std::allocator<std::__value_type<dispatch_queue_s *,void({block_pointer})(__IOSurface *)>>>::__emplace_unique_key_args<dispatch_queue_s *,std::piecewise_construct_t const&,std::tuple<dispatch_queue_s * const&>,std::tuple<>>(uint64_t a1, unint64_t *a2)
{
  v2 = *(a1 + 8);
  if (!v2)
  {
LABEL_8:
    operator new();
  }

  v3 = *a2;
  while (1)
  {
    while (1)
    {
      v4 = v2;
      v5 = v2[4];
      if (v3 >= v5)
      {
        break;
      }

      v2 = *v4;
      if (!*v4)
      {
        goto LABEL_8;
      }
    }

    if (v5 >= v3)
    {
      return v4;
    }

    v2 = v4[1];
    if (!v2)
    {
      goto LABEL_8;
    }
  }
}

uint64_t std::__tree<std::__value_type<dispatch_queue_s *,void({block_pointer})(__IOSurface *)>,std::__map_value_compare<dispatch_queue_s *,std::__value_type<dispatch_queue_s *,void({block_pointer})(__IOSurface *)>,std::less<dispatch_queue_s *>,true>,std::allocator<std::__value_type<dispatch_queue_s *,void({block_pointer})(__IOSurface *)>>>::__erase_unique<dispatch_queue_s *>(uint64_t **a1, unint64_t *a2)
{
  v2 = a1[1];
  if (!v2)
  {
    return 0;
  }

  v3 = *a2;
  v4 = (a1 + 1);
  do
  {
    v5 = v2[4];
    v6 = v5 >= v3;
    v7 = v5 < v3;
    if (v6)
    {
      v4 = v2;
    }

    v2 = v2[v7];
  }

  while (v2);
  if (v4 == (a1 + 1) || v3 < v4[4])
  {
    return 0;
  }

  std::__tree<std::__value_type<unsigned long long,CI::DAGHelper::TextureReadFunction>,std::__map_value_compare<unsigned long long,std::__value_type<unsigned long long,CI::DAGHelper::TextureReadFunction>,std::less<unsigned long long>,true>,std::allocator<std::__value_type<unsigned long long,CI::DAGHelper::TextureReadFunction>>>::__remove_node_pointer(a1, v4);
  operator delete(v4);
  return 1;
}

CI::TileTask *CI::TileTask::TileTask(CI::TileTask *this, CI::Context *a2, CI::ProgramNode *a3, const CGRect *a4)
{
  *(this + 2) = 1;
  *this = &unk_1F103CF70;
  *(this + 2) = dispatch_group_create();
  v8 = dispatch_group_create();
  v9 = *(a2 + 24);
  *(this + 3) = v8;
  *(this + 4) = v9;
  *(this + 5) = 0;
  if (a3)
  {
    v10 = CI::Object::ref(a3);
  }

  else
  {
    v10 = 0;
  }

  *(this + 6) = v10;
  origin = a4->origin;
  *(this + 72) = a4->size;
  *(this + 56) = origin;
  *(this + 88) = 0u;
  *(this + 104) = 0u;
  *(this + 30) = 1065353216;
  *(this + 8) = 0u;
  *(this + 9) = 0u;
  *(this + 40) = 1065353216;
  v12 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
  v13 = dispatch_queue_create("CI::TileTaskQueue", v12);
  *(this + 22) = 0;
  *(this + 23) = 0;
  *(this + 21) = v13;
  return this;
}

void CI::TileTask::~TileTask(dispatch_queue_t *this)
{
  *this = &unk_1F103CF70;
  dispatch_sync(this[21], &__block_literal_global_95);
  v2 = this[6];
  if (v2)
  {
    CI::Object::unref(v2);
  }

  dispatch_release(this[2]);
  dispatch_release(this[3]);
  dispatch_release(this[21]);
  v3 = this[22];
  if (v3)
  {
    CFRelease(v3);
  }

  v4 = this[23];
  if (v4)
  {
    CFRelease(v4);
  }

  for (i = this[13]; i; i = *i)
  {
    v6 = i[14];
    if (v6)
    {
      CFRelease(v6);
    }
  }

  std::__hash_table<std::__hash_value_type<CI::ProgramNode *,CI::CGRectArray>,std::__unordered_map_hasher<CI::ProgramNode *,std::__hash_value_type<CI::ProgramNode *,CI::CGRectArray>,std::hash<CI::ProgramNode *>,std::equal_to<CI::ProgramNode *>,true>,std::__unordered_map_equal<CI::ProgramNode *,std::__hash_value_type<CI::ProgramNode *,CI::CGRectArray>,std::equal_to<CI::ProgramNode *>,std::hash<CI::ProgramNode *>,true>,std::allocator<std::__hash_value_type<CI::ProgramNode *,CI::CGRectArray>>>::~__hash_table((this + 16));
  std::__hash_table<std::__hash_value_type<CI::NodeIndex,CI::Node::NodeStats>,std::__unordered_map_hasher<CI::NodeIndex,std::__hash_value_type<CI::NodeIndex,CI::Node::NodeStats>,std::hash<CI::NodeIndex>,std::equal_to<CI::NodeIndex>,true>,std::__unordered_map_equal<CI::NodeIndex,std::__hash_value_type<CI::NodeIndex,CI::Node::NodeStats>,std::equal_to<CI::NodeIndex>,std::hash<CI::NodeIndex>,true>,std::allocator<std::__hash_value_type<CI::NodeIndex,CI::Node::NodeStats>>>::~__hash_table((this + 11));
}

{
  CI::TileTask::~TileTask(this);

  JUMPOUT(0x19EAF5590);
}

void *CI::TileTask::setTaskError(void *this, CFTypeRef cf)
{
  if (!this[23])
  {
    this[23] = cf;
    return CFRetain(cf);
  }

  return this;
}

void CI::TileTask::setCommandBufferError(CI::TileTask *this, CFTypeRef cf)
{
  CFRetain(cf);
  v4 = *(this + 21);
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 0x40000000;
  v5[2] = ___ZN2CI8TileTask21setCommandBufferErrorEP9__CFError_block_invoke;
  v5[3] = &__block_descriptor_tmp_2_3;
  v5[4] = this;
  v5[5] = cf;
  dispatch_async(v4, v5);
}

void ___ZN2CI8TileTask21setCommandBufferErrorEP9__CFError_block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  if (!*(v1 + 176))
  {
    *(v1 + 176) = CFRetain(*(a1 + 40));
    v3 = *(a1 + 40);

    CFRelease(v3);
  }
}

uint64_t CI::TileTask::commandBufferError(CI::TileTask *this)
{
  v5 = 0;
  v6 = &v5;
  v7 = 0x2000000000;
  v8 = 0;
  v1 = *(this + 21);
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 0x40000000;
  v4[2] = ___ZNK2CI8TileTask18commandBufferErrorEv_block_invoke;
  v4[3] = &unk_1E75C8538;
  v4[4] = &v5;
  v4[5] = this;
  dispatch_sync(v1, v4);
  v2 = v6[3];
  _Block_object_dispose(&v5, 8);
  return v2;
}

void CI::TileTask::setCompileTimeForNode(CI::TileTask *this, const CI::ProgramNode *a2, double a3)
{
  if (a3 != 0.0)
  {
    block[7] = v3;
    block[8] = v4;
    v5 = *(this + 21);
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 0x40000000;
    block[2] = ___ZN2CI8TileTask21setCompileTimeForNodeEPKNS_11ProgramNodeEd_block_invoke;
    block[3] = &__block_descriptor_tmp_4_6;
    block[4] = this;
    block[5] = a2;
    *&block[6] = a3;
    dispatch_async(v5, block);
  }
}

uint64_t *___ZN2CI8TileTask21setCompileTimeForNodeEPKNS_11ProgramNodeEd_block_invoke(void *a1)
{
  v2 = a1[4];
  *(std::__hash_table<std::__hash_value_type<CI::NodeIndex,CI::Node::NodeStats>,std::__unordered_map_hasher<CI::NodeIndex,std::__hash_value_type<CI::NodeIndex,CI::Node::NodeStats>,std::hash<CI::NodeIndex>,std::equal_to<CI::NodeIndex>,true>,std::__unordered_map_equal<CI::NodeIndex,std::__hash_value_type<CI::NodeIndex,CI::Node::NodeStats>,std::equal_to<CI::NodeIndex>,std::hash<CI::NodeIndex>,true>,std::allocator<std::__hash_value_type<CI::NodeIndex,CI::Node::NodeStats>>>::__emplace_unique_key_args<CI::NodeIndex,std::piecewise_construct_t const&,std::tuple<CI::NodeIndex const&>,std::tuple<>>((v2 + 88), (a1[5] + 36)) + 176) = 1;
  v3 = a1[6];
  result = std::__hash_table<std::__hash_value_type<CI::NodeIndex,CI::Node::NodeStats>,std::__unordered_map_hasher<CI::NodeIndex,std::__hash_value_type<CI::NodeIndex,CI::Node::NodeStats>,std::hash<CI::NodeIndex>,std::equal_to<CI::NodeIndex>,true>,std::__unordered_map_equal<CI::NodeIndex,std::__hash_value_type<CI::NodeIndex,CI::Node::NodeStats>,std::equal_to<CI::NodeIndex>,std::hash<CI::NodeIndex>,true>,std::allocator<std::__hash_value_type<CI::NodeIndex,CI::Node::NodeStats>>>::__emplace_unique_key_args<CI::NodeIndex,std::piecewise_construct_t const&,std::tuple<CI::NodeIndex const&>,std::tuple<>>((v2 + 88), (a1[5] + 36));
  result[16] = v3;
  return result;
}

void CI::TileTask::incrementCompileWaitTimeForNode(CI::TileTask *this, const CI::ProgramNode *a2, double a3)
{
  if (a3 != 0.0)
  {
    block[7] = v3;
    block[8] = v4;
    v5 = *(this + 21);
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 0x40000000;
    block[2] = ___ZN2CI8TileTask31incrementCompileWaitTimeForNodeEPKNS_11ProgramNodeEd_block_invoke;
    block[3] = &__block_descriptor_tmp_5_4;
    block[4] = this;
    block[5] = a2;
    *&block[6] = a3;
    dispatch_async(v5, block);
  }
}

double ___ZN2CI8TileTask31incrementCompileWaitTimeForNodeEPKNS_11ProgramNodeEd_block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  *(std::__hash_table<std::__hash_value_type<CI::NodeIndex,CI::Node::NodeStats>,std::__unordered_map_hasher<CI::NodeIndex,std::__hash_value_type<CI::NodeIndex,CI::Node::NodeStats>,std::hash<CI::NodeIndex>,std::equal_to<CI::NodeIndex>,true>,std::__unordered_map_equal<CI::NodeIndex,std::__hash_value_type<CI::NodeIndex,CI::Node::NodeStats>,std::equal_to<CI::NodeIndex>,std::hash<CI::NodeIndex>,true>,std::allocator<std::__hash_value_type<CI::NodeIndex,CI::Node::NodeStats>>>::__emplace_unique_key_args<CI::NodeIndex,std::piecewise_construct_t const&,std::tuple<CI::NodeIndex const&>,std::tuple<>>((v2 + 88), (*(a1 + 40) + 36)) + 176) = 1;
  v3 = *(a1 + 48);
  v4 = std::__hash_table<std::__hash_value_type<CI::NodeIndex,CI::Node::NodeStats>,std::__unordered_map_hasher<CI::NodeIndex,std::__hash_value_type<CI::NodeIndex,CI::Node::NodeStats>,std::hash<CI::NodeIndex>,std::equal_to<CI::NodeIndex>,true>,std::__unordered_map_equal<CI::NodeIndex,std::__hash_value_type<CI::NodeIndex,CI::Node::NodeStats>,std::equal_to<CI::NodeIndex>,std::hash<CI::NodeIndex>,true>,std::allocator<std::__hash_value_type<CI::NodeIndex,CI::Node::NodeStats>>>::__emplace_unique_key_args<CI::NodeIndex,std::piecewise_construct_t const&,std::tuple<CI::NodeIndex const&>,std::tuple<>>((v2 + 88), (*(a1 + 40) + 36));
  result = v3 + *(v4 + 17);
  *(v4 + 17) = result;
  return result;
}

void CI::TileTask::incrementTimeForNode(CI::TileTask *this, const CI::ProgramNode *a2, double a3)
{
  if (a3 != 0.0)
  {
    block[7] = v3;
    block[8] = v4;
    v5 = *(this + 21);
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 0x40000000;
    block[2] = ___ZN2CI8TileTask20incrementTimeForNodeEPKNS_11ProgramNodeEd_block_invoke;
    block[3] = &__block_descriptor_tmp_6_6;
    block[4] = this;
    block[5] = a2;
    *&block[6] = a3;
    dispatch_async(v5, block);
  }
}

double ___ZN2CI8TileTask20incrementTimeForNodeEPKNS_11ProgramNodeEd_block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  *(std::__hash_table<std::__hash_value_type<CI::NodeIndex,CI::Node::NodeStats>,std::__unordered_map_hasher<CI::NodeIndex,std::__hash_value_type<CI::NodeIndex,CI::Node::NodeStats>,std::hash<CI::NodeIndex>,std::equal_to<CI::NodeIndex>,true>,std::__unordered_map_equal<CI::NodeIndex,std::__hash_value_type<CI::NodeIndex,CI::Node::NodeStats>,std::equal_to<CI::NodeIndex>,std::hash<CI::NodeIndex>,true>,std::allocator<std::__hash_value_type<CI::NodeIndex,CI::Node::NodeStats>>>::__emplace_unique_key_args<CI::NodeIndex,std::piecewise_construct_t const&,std::tuple<CI::NodeIndex const&>,std::tuple<>>((v2 + 88), (*(a1 + 40) + 36)) + 176) = 1;
  v3 = *(a1 + 48);
  v4 = std::__hash_table<std::__hash_value_type<CI::NodeIndex,CI::Node::NodeStats>,std::__unordered_map_hasher<CI::NodeIndex,std::__hash_value_type<CI::NodeIndex,CI::Node::NodeStats>,std::hash<CI::NodeIndex>,std::equal_to<CI::NodeIndex>,true>,std::__unordered_map_equal<CI::NodeIndex,std::__hash_value_type<CI::NodeIndex,CI::Node::NodeStats>,std::equal_to<CI::NodeIndex>,std::hash<CI::NodeIndex>,true>,std::allocator<std::__hash_value_type<CI::NodeIndex,CI::Node::NodeStats>>>::__emplace_unique_key_args<CI::NodeIndex,std::piecewise_construct_t const&,std::tuple<CI::NodeIndex const&>,std::tuple<>>((v2 + 88), (*(a1 + 40) + 36));
  result = v3 + *(v4 + 15);
  *(v4 + 15) = result;
  return result;
}

void CI::TileTask::incrementCyclesForNode(CI::TileTask *this, const CI::ProgramNode *a2, uint64_t a3)
{
  if (a3)
  {
    v3 = *(this + 21);
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 0x40000000;
    block[2] = ___ZN2CI8TileTask22incrementCyclesForNodeEPKNS_11ProgramNodeEy_block_invoke;
    block[3] = &__block_descriptor_tmp_7_8;
    block[4] = this;
    block[5] = a2;
    block[6] = a3;
    dispatch_async(v3, block);
  }
}

uint64_t *___ZN2CI8TileTask22incrementCyclesForNodeEPKNS_11ProgramNodeEy_block_invoke(void *a1)
{
  v2 = a1[4];
  *(std::__hash_table<std::__hash_value_type<CI::NodeIndex,CI::Node::NodeStats>,std::__unordered_map_hasher<CI::NodeIndex,std::__hash_value_type<CI::NodeIndex,CI::Node::NodeStats>,std::hash<CI::NodeIndex>,std::equal_to<CI::NodeIndex>,true>,std::__unordered_map_equal<CI::NodeIndex,std::__hash_value_type<CI::NodeIndex,CI::Node::NodeStats>,std::equal_to<CI::NodeIndex>,std::hash<CI::NodeIndex>,true>,std::allocator<std::__hash_value_type<CI::NodeIndex,CI::Node::NodeStats>>>::__emplace_unique_key_args<CI::NodeIndex,std::piecewise_construct_t const&,std::tuple<CI::NodeIndex const&>,std::tuple<>>((v2 + 88), (a1[5] + 36)) + 176) = 1;
  v3 = a1[6];
  result = std::__hash_table<std::__hash_value_type<CI::NodeIndex,CI::Node::NodeStats>,std::__unordered_map_hasher<CI::NodeIndex,std::__hash_value_type<CI::NodeIndex,CI::Node::NodeStats>,std::hash<CI::NodeIndex>,std::equal_to<CI::NodeIndex>,true>,std::__unordered_map_equal<CI::NodeIndex,std::__hash_value_type<CI::NodeIndex,CI::Node::NodeStats>,std::equal_to<CI::NodeIndex>,std::hash<CI::NodeIndex>,true>,std::allocator<std::__hash_value_type<CI::NodeIndex,CI::Node::NodeStats>>>::__emplace_unique_key_args<CI::NodeIndex,std::piecewise_construct_t const&,std::tuple<CI::NodeIndex const&>,std::tuple<>>((v2 + 88), (a1[5] + 36));
  result[20] += v3;
  return result;
}

void CI::TileTask::incrementNanoSecForNode(CI::TileTask *this, const CI::ProgramNode *a2, uint64_t a3)
{
  if (a3)
  {
    v3 = *(this + 21);
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 0x40000000;
    block[2] = ___ZN2CI8TileTask23incrementNanoSecForNodeEPKNS_11ProgramNodeEy_block_invoke;
    block[3] = &__block_descriptor_tmp_8_4;
    block[4] = this;
    block[5] = a2;
    block[6] = a3;
    dispatch_async(v3, block);
  }
}

uint64_t *___ZN2CI8TileTask23incrementNanoSecForNodeEPKNS_11ProgramNodeEy_block_invoke(void *a1)
{
  v2 = a1[4];
  *(std::__hash_table<std::__hash_value_type<CI::NodeIndex,CI::Node::NodeStats>,std::__unordered_map_hasher<CI::NodeIndex,std::__hash_value_type<CI::NodeIndex,CI::Node::NodeStats>,std::hash<CI::NodeIndex>,std::equal_to<CI::NodeIndex>,true>,std::__unordered_map_equal<CI::NodeIndex,std::__hash_value_type<CI::NodeIndex,CI::Node::NodeStats>,std::equal_to<CI::NodeIndex>,std::hash<CI::NodeIndex>,true>,std::allocator<std::__hash_value_type<CI::NodeIndex,CI::Node::NodeStats>>>::__emplace_unique_key_args<CI::NodeIndex,std::piecewise_construct_t const&,std::tuple<CI::NodeIndex const&>,std::tuple<>>((v2 + 88), (a1[5] + 36)) + 176) = 1;
  v3 = a1[6];
  result = std::__hash_table<std::__hash_value_type<CI::NodeIndex,CI::Node::NodeStats>,std::__unordered_map_hasher<CI::NodeIndex,std::__hash_value_type<CI::NodeIndex,CI::Node::NodeStats>,std::hash<CI::NodeIndex>,std::equal_to<CI::NodeIndex>,true>,std::__unordered_map_equal<CI::NodeIndex,std::__hash_value_type<CI::NodeIndex,CI::Node::NodeStats>,std::equal_to<CI::NodeIndex>,std::hash<CI::NodeIndex>,true>,std::allocator<std::__hash_value_type<CI::NodeIndex,CI::Node::NodeStats>>>::__emplace_unique_key_args<CI::NodeIndex,std::piecewise_construct_t const&,std::tuple<CI::NodeIndex const&>,std::tuple<>>((v2 + 88), (a1[5] + 36));
  result[21] += v3;
  return result;
}

void CI::TileTask::incrementFillTimeForNode(CI::TileTask *this, const CI::Node *a2, double a3)
{
  if (a3 != 0.0)
  {
    block[7] = v3;
    block[8] = v4;
    v5 = *(this + 21);
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 0x40000000;
    block[2] = ___ZN2CI8TileTask24incrementFillTimeForNodeEPKNS_4NodeEd_block_invoke;
    block[3] = &__block_descriptor_tmp_9_5;
    block[4] = this;
    block[5] = a2;
    *&block[6] = a3;
    dispatch_async(v5, block);
  }
}

uint64_t *___ZN2CI8TileTask24incrementFillTimeForNodeEPKNS_4NodeEd_block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  *(std::__hash_table<std::__hash_value_type<CI::NodeIndex,CI::Node::NodeStats>,std::__unordered_map_hasher<CI::NodeIndex,std::__hash_value_type<CI::NodeIndex,CI::Node::NodeStats>,std::hash<CI::NodeIndex>,std::equal_to<CI::NodeIndex>,true>,std::__unordered_map_equal<CI::NodeIndex,std::__hash_value_type<CI::NodeIndex,CI::Node::NodeStats>,std::equal_to<CI::NodeIndex>,std::hash<CI::NodeIndex>,true>,std::allocator<std::__hash_value_type<CI::NodeIndex,CI::Node::NodeStats>>>::__emplace_unique_key_args<CI::NodeIndex,std::piecewise_construct_t const&,std::tuple<CI::NodeIndex const&>,std::tuple<>>((v2 + 88), (*(a1 + 40) + 36)) + 176) = 1;
  v3 = *(a1 + 48);
  v4 = std::__hash_table<std::__hash_value_type<CI::NodeIndex,CI::Node::NodeStats>,std::__unordered_map_hasher<CI::NodeIndex,std::__hash_value_type<CI::NodeIndex,CI::Node::NodeStats>,std::hash<CI::NodeIndex>,std::equal_to<CI::NodeIndex>,true>,std::__unordered_map_equal<CI::NodeIndex,std::__hash_value_type<CI::NodeIndex,CI::Node::NodeStats>,std::equal_to<CI::NodeIndex>,std::hash<CI::NodeIndex>,true>,std::allocator<std::__hash_value_type<CI::NodeIndex,CI::Node::NodeStats>>>::__emplace_unique_key_args<CI::NodeIndex,std::piecewise_construct_t const&,std::tuple<CI::NodeIndex const&>,std::tuple<>>((v2 + 88), (*(a1 + 40) + 36));
  *(v4 + 18) = v3 + *(v4 + 18);
  v5 = (*(**(a1 + 40) + 96))(*(a1 + 40));
  result = std::__hash_table<std::__hash_value_type<CI::NodeIndex,CI::Node::NodeStats>,std::__unordered_map_hasher<CI::NodeIndex,std::__hash_value_type<CI::NodeIndex,CI::Node::NodeStats>,std::hash<CI::NodeIndex>,std::equal_to<CI::NodeIndex>,true>,std::__unordered_map_equal<CI::NodeIndex,std::__hash_value_type<CI::NodeIndex,CI::Node::NodeStats>,std::equal_to<CI::NodeIndex>,std::hash<CI::NodeIndex>,true>,std::allocator<std::__hash_value_type<CI::NodeIndex,CI::Node::NodeStats>>>::__emplace_unique_key_args<CI::NodeIndex,std::piecewise_construct_t const&,std::tuple<CI::NodeIndex const&>,std::tuple<>>((v2 + 88), (*(a1 + 40) + 36));
  *(result + 26) = v5;
  return result;
}

void CI::TileTask::incrementFillPixelsForNode(CI::TileTask *this, const CI::Node *a2, uint64_t a3)
{
  if (a3)
  {
    v3 = *(this + 21);
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 0x40000000;
    block[2] = ___ZN2CI8TileTask26incrementFillPixelsForNodeEPKNS_4NodeEy_block_invoke;
    block[3] = &__block_descriptor_tmp_10_2;
    block[4] = this;
    block[5] = a2;
    block[6] = a3;
    dispatch_async(v3, block);
  }
}

uint64_t *___ZN2CI8TileTask26incrementFillPixelsForNodeEPKNS_4NodeEy_block_invoke(void *a1)
{
  v2 = a1[4];
  *(std::__hash_table<std::__hash_value_type<CI::NodeIndex,CI::Node::NodeStats>,std::__unordered_map_hasher<CI::NodeIndex,std::__hash_value_type<CI::NodeIndex,CI::Node::NodeStats>,std::hash<CI::NodeIndex>,std::equal_to<CI::NodeIndex>,true>,std::__unordered_map_equal<CI::NodeIndex,std::__hash_value_type<CI::NodeIndex,CI::Node::NodeStats>,std::equal_to<CI::NodeIndex>,std::hash<CI::NodeIndex>,true>,std::allocator<std::__hash_value_type<CI::NodeIndex,CI::Node::NodeStats>>>::__emplace_unique_key_args<CI::NodeIndex,std::piecewise_construct_t const&,std::tuple<CI::NodeIndex const&>,std::tuple<>>((v2 + 88), (a1[5] + 36)) + 176) = 1;
  v3 = a1[6];
  result = std::__hash_table<std::__hash_value_type<CI::NodeIndex,CI::Node::NodeStats>,std::__unordered_map_hasher<CI::NodeIndex,std::__hash_value_type<CI::NodeIndex,CI::Node::NodeStats>,std::hash<CI::NodeIndex>,std::equal_to<CI::NodeIndex>,true>,std::__unordered_map_equal<CI::NodeIndex,std::__hash_value_type<CI::NodeIndex,CI::Node::NodeStats>,std::equal_to<CI::NodeIndex>,std::hash<CI::NodeIndex>,true>,std::allocator<std::__hash_value_type<CI::NodeIndex,CI::Node::NodeStats>>>::__emplace_unique_key_args<CI::NodeIndex,std::piecewise_construct_t const&,std::tuple<CI::NodeIndex const&>,std::tuple<>>((v2 + 88), (a1[5] + 36));
  result[19] += v3;
  return result;
}

void CI::TileTask::addAssembledIntermediate(CI::TileTask *this, const CI::Node *a2, CFTypeRef cf, CGRect a4)
{
  height = a4.size.height;
  width = a4.size.width;
  y = a4.origin.y;
  x = a4.origin.x;
  CFRetain(cf);
  v11 = *(this + 21);
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 0x40000000;
  block[2] = ___ZN2CI8TileTask24addAssembledIntermediateEPKNS_4NodeEPK10__CFString6CGRect_block_invoke;
  block[3] = &__block_descriptor_tmp_11_6;
  block[4] = this;
  block[5] = a2;
  block[6] = cf;
  *&block[7] = x;
  *&block[8] = y;
  *&block[9] = width;
  *&block[10] = height;
  dispatch_async(v11, block);
}

void ___ZN2CI8TileTask24addAssembledIntermediateEPKNS_4NodeEPK10__CFString6CGRect_block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = std::__hash_table<std::__hash_value_type<CI::NodeIndex,CI::Node::NodeStats>,std::__unordered_map_hasher<CI::NodeIndex,std::__hash_value_type<CI::NodeIndex,CI::Node::NodeStats>,std::hash<CI::NodeIndex>,std::equal_to<CI::NodeIndex>,true>,std::__unordered_map_equal<CI::NodeIndex,std::__hash_value_type<CI::NodeIndex,CI::Node::NodeStats>,std::equal_to<CI::NodeIndex>,std::hash<CI::NodeIndex>,true>,std::allocator<std::__hash_value_type<CI::NodeIndex,CI::Node::NodeStats>>>::__emplace_unique_key_args<CI::NodeIndex,std::piecewise_construct_t const&,std::tuple<CI::NodeIndex const&>,std::tuple<>>((v2 + 88), (*(a1 + 40) + 36))[14];
  if (v3)
  {
    CFRelease(v3);
  }

  v4 = *(a1 + 48);
  std::__hash_table<std::__hash_value_type<CI::NodeIndex,CI::Node::NodeStats>,std::__unordered_map_hasher<CI::NodeIndex,std::__hash_value_type<CI::NodeIndex,CI::Node::NodeStats>,std::hash<CI::NodeIndex>,std::equal_to<CI::NodeIndex>,true>,std::__unordered_map_equal<CI::NodeIndex,std::__hash_value_type<CI::NodeIndex,CI::Node::NodeStats>,std::equal_to<CI::NodeIndex>,std::hash<CI::NodeIndex>,true>,std::allocator<std::__hash_value_type<CI::NodeIndex,CI::Node::NodeStats>>>::__emplace_unique_key_args<CI::NodeIndex,std::piecewise_construct_t const&,std::tuple<CI::NodeIndex const&>,std::tuple<>>((v2 + 88), (*(a1 + 40) + 36))[14] = v4;
  v5 = std::__hash_table<std::__hash_value_type<CI::NodeIndex,CI::Node::NodeStats>,std::__unordered_map_hasher<CI::NodeIndex,std::__hash_value_type<CI::NodeIndex,CI::Node::NodeStats>,std::hash<CI::NodeIndex>,std::equal_to<CI::NodeIndex>,true>,std::__unordered_map_equal<CI::NodeIndex,std::__hash_value_type<CI::NodeIndex,CI::Node::NodeStats>,std::equal_to<CI::NodeIndex>,std::hash<CI::NodeIndex>,true>,std::allocator<std::__hash_value_type<CI::NodeIndex,CI::Node::NodeStats>>>::__emplace_unique_key_args<CI::NodeIndex,std::piecewise_construct_t const&,std::tuple<CI::NodeIndex const&>,std::tuple<>>((v2 + 88), (*(a1 + 40) + 36));
  std::vector<CGRect>::push_back[abi:nn200100]((v5 + 9), (a1 + 56));
}

void CI::TileTask::addROIForNode(CI::TileTask *this, CI::ProgramNode *a2, CGRect a3)
{
  *&v8 = a3.origin.x;
  *(&v8 + 1) = *&a3.origin.y;
  width = a3.size.width;
  height = a3.size.height;
  v7 = a2;
  v11 = &v7;
  v4 = std::__hash_table<std::__hash_value_type<CI::ProgramNode *,CI::CGRectArray>,std::__unordered_map_hasher<CI::ProgramNode *,std::__hash_value_type<CI::ProgramNode *,CI::CGRectArray>,std::hash<CI::ProgramNode *>,std::equal_to<CI::ProgramNode *>,true>,std::__unordered_map_equal<CI::ProgramNode *,std::__hash_value_type<CI::ProgramNode *,CI::CGRectArray>,std::equal_to<CI::ProgramNode *>,std::hash<CI::ProgramNode *>,true>,std::allocator<std::__hash_value_type<CI::ProgramNode *,CI::CGRectArray>>>::__emplace_unique_key_args<CI::ProgramNode *,std::piecewise_construct_t const&,std::tuple<CI::ProgramNode * const&>,std::tuple<>>(this + 16, &v7);
  std::vector<CGRect>::push_back[abi:nn200100]((v4 + 3), &v8);
  v5 = *(this + 21);
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 0x40000000;
  block[2] = ___ZN2CI8TileTask13addROIForNodeEPNS_11ProgramNodeE6CGRect_block_invoke;
  block[3] = &__block_descriptor_tmp_12_6;
  block[4] = this;
  block[5] = v7;
  dispatch_async(v5, block);
}

uint64_t *___ZN2CI8TileTask13addROIForNodeEPNS_11ProgramNodeE6CGRect_block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = (*(**(a1 + 40) + 400))(*(a1 + 40));
  result = std::__hash_table<std::__hash_value_type<CI::NodeIndex,CI::Node::NodeStats>,std::__unordered_map_hasher<CI::NodeIndex,std::__hash_value_type<CI::NodeIndex,CI::Node::NodeStats>,std::hash<CI::NodeIndex>,std::equal_to<CI::NodeIndex>,true>,std::__unordered_map_equal<CI::NodeIndex,std::__hash_value_type<CI::NodeIndex,CI::Node::NodeStats>,std::equal_to<CI::NodeIndex>,std::hash<CI::NodeIndex>,true>,std::allocator<std::__hash_value_type<CI::NodeIndex,CI::Node::NodeStats>>>::__emplace_unique_key_args<CI::NodeIndex,std::piecewise_construct_t const&,std::tuple<CI::NodeIndex const&>,std::tuple<>>((v2 + 88), (*(a1 + 40) + 36));
  result[12] = v3;
  return result;
}

void CI::TileTask::updatePeakList(CI::TileTask *this, const __CFArray *a2)
{
  v2 = *(this + 21);
  v3[0] = MEMORY[0x1E69E9820];
  v3[1] = 0x40000000;
  v3[2] = ___ZN2CI8TileTask14updatePeakListEPK9__CFArray_block_invoke;
  v3[3] = &__block_descriptor_tmp_35_1;
  v3[4] = this;
  v3[5] = a2;
  dispatch_sync(v2, v3);
}

CFIndex ___ZN2CI8TileTask14updatePeakListEPK9__CFArray_block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  v1 = *(a1 + 40);
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 0x40000000;
  v4[2] = ___ZN2CI8TileTask14updatePeakListEPK9__CFArray_block_invoke_2;
  v4[3] = &__block_descriptor_tmp_34_0;
  v4[4] = v2;
  return __CFArray::for_each(v1, v4);
}

void ___ZN2CI8TileTask14updatePeakListEPK9__CFArray_block_invoke_2(uint64_t a1, __CFDictionary *this, const __CFString *a3)
{
  v4 = *(a1 + 32);
  String = __CFDictionary::getString(this, @"id", a3);
  Int32 = __CFDictionary::getInt32(this, @"imgIndex", 0);
  v17.origin.x = __CFDictionary::getInt32(this, @"x", 0);
  v17.origin.y = __CFDictionary::getInt32(this, @"y", 0);
  v17.size.width = __CFDictionary::getInt32(this, @"w", 0);
  v17.size.height = __CFDictionary::getInt32(this, @"h", 0);
  v7 = __CFDictionary::getInt32(this, @"size", 0);
  v8 = *(v4 + 104);
  if (Int32)
  {
    if (v8)
    {
      v9 = v7;
      do
      {
        if (*(v8 + 26) == Int32)
        {
          v15 = v17;
          v16 = v9;
          std::vector<std::pair<CGRect,unsigned long>>::push_back[abi:nn200100]((v8 + 6), &v15);
        }

        v8 = *v8;
      }

      while (v8);
    }
  }

  else if (v8)
  {
    v10 = v7;
    v11 = (v4 + 144);
    do
    {
      v12 = v8[14];
      if (!v12)
      {
        v12 = __CFString::createWithFormat("%llX", 0, v8[12]);
      }

      if (String && v12 && CFStringHasPrefix(String, v12))
      {
        if (*(v8 + 26))
        {
          v13 = (v8 + 9);
        }

        else
        {
          v14 = v11;
          do
          {
            v14 = *v14;
          }

          while (v14 && *(v14[2] + 36) != *(v8 + 4));
          v13 = (v14 + 3);
        }

        if (CI::CGRectArray::contains(v13, &v17))
        {
          v15 = v17;
          v16 = v10;
          std::vector<std::pair<CGRect,unsigned long>>::push_back[abi:nn200100]((v8 + 3), &v15);
        }
      }

      v8 = *v8;
    }

    while (v8);
  }
}

void std::vector<std::pair<CGRect,unsigned long>>::push_back[abi:nn200100](uint64_t a1, __int128 *a2)
{
  v4 = *(a1 + 8);
  v5 = *(a1 + 16);
  if (v4 >= v5)
  {
    v9 = 0xCCCCCCCCCCCCCCCDLL * ((v4 - *a1) >> 3);
    v10 = v9 + 1;
    if (v9 + 1 > 0x666666666666666)
    {
      std::vector<CI::SWRendererFunctionInputNode>::__throw_length_error[abi:nn200100]();
    }

    v11 = 0xCCCCCCCCCCCCCCCDLL * ((v5 - *a1) >> 3);
    if (2 * v11 > v10)
    {
      v10 = 2 * v11;
    }

    if (v11 >= 0x333333333333333)
    {
      v12 = 0x666666666666666;
    }

    else
    {
      v12 = v10;
    }

    if (v12)
    {
      std::__allocate_at_least[abi:nn200100]<std::allocator<std::pair<CGRect,unsigned long>>>(a1, v12);
    }

    v13 = 40 * v9;
    v14 = *a2;
    v15 = a2[1];
    *(v13 + 32) = *(a2 + 4);
    *v13 = v14;
    *(v13 + 16) = v15;
    v8 = 40 * v9 + 40;
    v16 = *(a1 + 8) - *a1;
    v17 = v13 - v16;
    memcpy((v13 - v16), *a1, v16);
    v18 = *a1;
    *a1 = v17;
    *(a1 + 8) = v8;
    *(a1 + 16) = 0;
    if (v18)
    {
      operator delete(v18);
    }
  }

  else
  {
    v6 = *a2;
    v7 = a2[1];
    *(v4 + 32) = *(a2 + 4);
    *v4 = v6;
    *(v4 + 16) = v7;
    v8 = v4 + 40;
  }

  *(a1 + 8) = v8;
}

BOOL CI::CGRectArray::contains(CGRect **this, const CGRect *a2)
{
  v2 = *this;
  v3 = this[1];
  if (*this == v3)
  {
    return 0;
  }

  do
  {
    result = CGRectEqualToRect(*a2, *v2);
    if (result)
    {
      break;
    }

    ++v2;
  }

  while (v2 != v3);
  return result;
}

double CI::TileTask::executionTime(CI::TileTask *this)
{
  v5 = 0;
  v6 = &v5;
  v7 = 0x2000000000;
  v8 = 0;
  v1 = *(this + 21);
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 0x40000000;
  v4[2] = ___ZNK2CI8TileTask13executionTimeEv_block_invoke;
  v4[3] = &unk_1E75C86C0;
  v4[4] = &v5;
  v4[5] = this;
  dispatch_sync(v1, v4);
  v2 = v6[3];
  _Block_object_dispose(&v5, 8);
  return v2;
}

double ___ZNK2CI8TileTask13executionTimeEv_block_invoke(uint64_t a1)
{
  for (i = *(*(a1 + 40) + 104); i; i = *i)
  {
    v2 = *(*(a1 + 32) + 8);
    result = i[15] + *(v2 + 24);
    *(v2 + 24) = result;
  }

  return result;
}

double CI::TileTask::compileWaitTime(CI::TileTask *this)
{
  v5 = 0;
  v6 = &v5;
  v7 = 0x2000000000;
  v8 = 0;
  v1 = *(this + 21);
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 0x40000000;
  v4[2] = ___ZNK2CI8TileTask15compileWaitTimeEv_block_invoke;
  v4[3] = &unk_1E75C86E8;
  v4[4] = &v5;
  v4[5] = this;
  dispatch_sync(v1, v4);
  v2 = v6[3];
  _Block_object_dispose(&v5, 8);
  return v2;
}

double ___ZNK2CI8TileTask15compileWaitTimeEv_block_invoke(uint64_t a1)
{
  for (i = *(*(a1 + 40) + 104); i; i = *i)
  {
    v2 = *(*(a1 + 32) + 8);
    result = i[17] + *(v2 + 24);
    *(v2 + 24) = result;
  }

  return result;
}

double CI::TileTask::compileTime(CI::TileTask *this)
{
  v5 = 0;
  v6 = &v5;
  v7 = 0x2000000000;
  v8 = 0;
  v1 = *(this + 21);
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 0x40000000;
  v4[2] = ___ZNK2CI8TileTask11compileTimeEv_block_invoke;
  v4[3] = &unk_1E75C8710;
  v4[4] = &v5;
  v4[5] = this;
  dispatch_sync(v1, v4);
  v2 = v6[3];
  _Block_object_dispose(&v5, 8);
  return v2;
}

double ___ZNK2CI8TileTask11compileTimeEv_block_invoke(uint64_t a1)
{
  for (i = *(*(a1 + 40) + 104); i; i = *i)
  {
    v2 = *(*(a1 + 32) + 8);
    result = i[16] + *(v2 + 24);
    *(v2 + 24) = result;
  }

  return result;
}

uint64_t CI::TileTask::executionCycles(CI::TileTask *this)
{
  v5 = 0;
  v6 = &v5;
  v7 = 0x2000000000;
  v8 = 0;
  v1 = *(this + 21);
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 0x40000000;
  v4[2] = ___ZNK2CI8TileTask15executionCyclesEv_block_invoke;
  v4[3] = &unk_1E75C8738;
  v4[4] = &v5;
  v4[5] = this;
  dispatch_sync(v1, v4);
  v2 = v6[3];
  _Block_object_dispose(&v5, 8);
  return v2;
}

uint64_t ___ZNK2CI8TileTask15executionCyclesEv_block_invoke(uint64_t result)
{
  v1 = *(*(result + 40) + 104);
  if (v1)
  {
    v2 = 0;
    while (1)
    {
      v3 = v1[20];
      if (!v3)
      {
        break;
      }

      v2 += v3;
      v1 = *v1;
      if (!v1)
      {
        goto LABEL_7;
      }
    }
  }

  else
  {
    v2 = 0;
LABEL_7:
    *(*(*(result + 32) + 8) + 24) = v2;
  }

  return result;
}

uint64_t CI::TileTask::executionNanoSec(CI::TileTask *this)
{
  v5 = 0;
  v6 = &v5;
  v7 = 0x2000000000;
  v8 = 0;
  v1 = *(this + 21);
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 0x40000000;
  v4[2] = ___ZNK2CI8TileTask16executionNanoSecEv_block_invoke;
  v4[3] = &unk_1E75C8760;
  v4[4] = &v5;
  v4[5] = this;
  dispatch_sync(v1, v4);
  v2 = v6[3];
  _Block_object_dispose(&v5, 8);
  return v2;
}

uint64_t ___ZNK2CI8TileTask16executionNanoSecEv_block_invoke(uint64_t result)
{
  v1 = *(*(result + 40) + 104);
  if (v1)
  {
    v2 = 0;
    while (1)
    {
      v3 = v1[21];
      if (!v3)
      {
        break;
      }

      v2 += v3;
      v1 = *v1;
      if (!v1)
      {
        goto LABEL_7;
      }
    }
  }

  else
  {
    v2 = 0;
LABEL_7:
    *(*(*(result + 32) + 8) + 24) = v2;
  }

  return result;
}

unint64_t CI::TileTask::pixelsProcessed(CI::TileTask *this)
{
  v1 = *(this + 18);
  if (!v1)
  {
    return 0;
  }

  result = 0;
  do
  {
    for (i = v1[3]; i != v1[4]; i += 32)
    {
      result = (result + ceil(*(i + 16)) * ceil(*(i + 24)));
    }

    v1 = *v1;
  }

  while (v1);
  return result;
}

uint64_t CI::TileTask::fillPixels(CI::TileTask *this)
{
  v1 = *(this + 13);
  if (!v1)
  {
    return 0;
  }

  result = 0;
  do
  {
    result += v1[19];
    v1 = *v1;
  }

  while (v1);
  return result;
}

uint64_t CI::TileTask::pixelsOverdrawn(CI::TileTask *this)
{
  v1 = *(this + 18);
  if (v1)
  {
    v2 = 0;
    do
    {
      __p = 0;
      v41 = 0;
      v42 = 0;
      v38 = 0;
      v39 = 0;
      v37 = &v38;
      v4 = v1[3];
      v3 = v1[4];
      if (v4 == v3)
      {
        v5 = 0;
      }

      else
      {
        do
        {
          std::__tree<double>::__emplace_unique_key_args<double,double const&>(&v37, v4);
          v36[0] = *v4 + v4[2];
          std::__tree<double>::__emplace_unique_key_args<double,double const&>(&v37, v36);
          v4 += 4;
        }

        while (v4 != v3);
        v5 = v39;
      }

      std::vector<double>::reserve(&__p, v5);
      std::__copy_impl::operator()[abi:nn200100]<std::__tree_const_iterator<double,std::__tree_node<double,void *> *,long>,std::__tree_const_iterator<double,std::__tree_node<double,void *> *,long>,std::back_insert_iterator<std::vector<double>>>(v36, v37, &v38, &__p);
      std::__sort<std::__less<double,double> &,double *>();
      std::vector<std::vector<IRect>>::vector[abi:nn200100](v36, (v41 - __p) >> 3);
      v7 = v1[3];
      v6 = v1[4];
      if (v7 != v6)
      {
        v9 = __p;
        v8 = v41;
        v10 = v41;
        do
        {
          *&v35 = *(v7 + 8);
          DWORD2(v35) = 1;
          *&v34 = *&v35 + *(v7 + 24);
          DWORD2(v34) = -1;
          if (v10 == v9)
          {
            v10 = v9;
          }

          else
          {
            v11 = *v7;
            v12 = *v7 + *(v7 + 16);
            v13 = *v9;
            if (*v9 < v12)
            {
              v14 = 0;
              v15 = 1;
              while (1)
              {
                if (v13 >= v11)
                {
                  std::vector<std::pair<double,int>>::push_back[abi:nn200100](*&v36[0] + v14, &v35);
                  std::vector<std::pair<double,int>>::push_back[abi:nn200100](*&v36[0] + v14, &v34);
                  v9 = __p;
                  v8 = v41;
                }

                if (v15 >= v8 - v9)
                {
                  break;
                }

                v13 = v9[v15];
                v14 += 24;
                ++v15;
                v10 = v8;
                if (v13 >= v12)
                {
                  goto LABEL_19;
                }
              }

              v10 = v8;
            }
          }

LABEL_19:
          v7 += 32;
        }

        while (v7 != v6);
      }

      v16 = *&v36[0];
      v17 = v36[1];
      while (v16 != *&v17)
      {
        v18 = *v16;
        v19 = v16[1];
        v16 += 3;
        v20 = 126 - 2 * __clz((v19 - v18) >> 4);
        if (v19 == v18)
        {
          v21 = 0;
        }

        else
        {
          v21 = v20;
        }

        std::__introsort<std::_ClassicAlgPolicy,CI::TileTask::pixelsOverdrawn(void)::$_0::operator() const(std::vector<CGRect> const&)::{lambda(std::pair<double,int>,std::pair<double,int>)#1} &,std::pair<double,int>*,false>(v18, v19, v21, 1);
      }

      v22 = 0;
      if ((v41 - __p) >> 3 != 1)
      {
        v23 = 0;
        v24 = *__p;
        do
        {
          v25 = v24;
          v26 = (*&v36[0] + 24 * v23++);
          v24 = *(__p + v23);
          v27 = *v26;
          v28 = v26[1];
          if (v27 != v28)
          {
            v29 = 0;
            v30 = v24 - v25;
            v31 = 0.0;
            do
            {
              if (v29)
              {
                v29 += *(v27 + 8);
                if (!v29)
                {
                  v22 = (v22 + v30 * (*v27 - v31));
                }
              }

              else
              {
                v31 = *v27;
                v29 = *(v27 + 8);
              }

              v27 += 16;
            }

            while (v27 != v28);
          }
        }

        while (v23 != ((v41 - __p) >> 3) - 1);
      }

      *&v35 = v36;
      std::vector<std::vector<IRect>>::__destroy_vector::operator()[abi:nn200100](&v35);
      std::__tree<std::__value_type<unsigned long long,CI::DAGHelper::ImageArgInfo>,std::__map_value_compare<unsigned long long,std::__value_type<unsigned long long,CI::DAGHelper::ImageArgInfo>,std::less<unsigned long long>,true>,std::allocator<std::__value_type<unsigned long long,CI::DAGHelper::ImageArgInfo>>>::destroy(&v37, v38);
      if (__p)
      {
        v41 = __p;
        operator delete(__p);
      }

      v2 += v22;
      v1 = *v1;
    }

    while (v1);
  }

  else
  {
    v2 = 0;
  }

  return CI::TileTask::pixelsProcessed(this) - v2;
}

void *CI::TileTask::graphviz_representation(CI::TileTask *this, const CI::RenderTask *a2)
{
  v4 = *(this + 6);
  v5 = CIGVGraphCreate();
  v6 = v5;
  if (v5)
  {
    v40[0] = 0;
    v40[1] = v40;
    v40[2] = 0x5002000000;
    v40[3] = __Block_byref_object_copy__28;
    v40[4] = __Block_byref_object_dispose__28;
    memset(v41, 0, sizeof(v41));
    v42 = 1065353216;
    v37[0] = 0;
    v37[1] = v37;
    v37[2] = 0x5002000000;
    v37[3] = __Block_byref_object_copy__41;
    v37[4] = __Block_byref_object_dispose__42;
    memset(v38, 0, sizeof(v38));
    v39 = 1065353216;
    v30 = 0;
    v31 = &v30;
    v32 = 0x5002000000;
    v33 = __Block_byref_object_copy__43;
    v34 = __Block_byref_object_dispose__44;
    memset(v35, 0, sizeof(v35));
    v36 = 1065353216;
    v21 = MEMORY[0x1E69E9820];
    v22 = 0x40000000;
    v23 = ___ZNK2CI8TileTask23graphviz_representationEPKNS_10RenderTaskE_block_invoke;
    v24 = &unk_1E75C8788;
    v25 = v40;
    v26 = v37;
    v28 = this;
    v29 = v5;
    v27 = &v30;
    CI::GraphObject::traverse_unique(v4);
    v14 = 0;
    v15 = &v14;
    v16 = 0x5002000000;
    v17 = __Block_byref_object_copy__47;
    v18 = __Block_byref_object_dispose__48;
    memset(v19, 0, sizeof(v19));
    v20 = 1065353216;
    v13[0] = MEMORY[0x1E69E9820];
    v13[1] = 0x40000000;
    v13[2] = ___ZNK2CI8TileTask23graphviz_representationEPKNS_10RenderTaskE_block_invoke_49;
    v13[3] = &unk_1E75C87B0;
    v13[4] = &v14;
    v13[5] = &v30;
    v13[6] = v6;
    v43[0] = MEMORY[0x1E69E9820];
    v43[1] = 0x40000000;
    v43[2] = ___ZNK2CI4Node27traverse_preorder_stoppableEU13block_pointerFbPKS0_E_block_invoke_0;
    v43[3] = &unk_1E75C8820;
    v43[4] = v13;
    CI::GraphObject::traverse_preorder_stoppable(v4, 0, 0, 0, v43);
    v7 = CIGVNodeCreate();
    CIGVNodeSetColor(v7, 0xD);
    CIGVNodeSetShape(v7, 0);
    if (*(a2 + 12))
    {
      v8 = CFStringCreateWithFormat(0, 0, @"destination=%@\n", *(a2 + 12));
    }

    else
    {
      v8 = &stru_1F1040378;
    }

    v12[0] = MEMORY[0x1E69E9820];
    v12[1] = 0x40000000;
    v12[2] = ___ZNK2CI8TileTask23graphviz_representationEPKNS_10RenderTaskE_block_invoke_2;
    v12[3] = &__block_descriptor_tmp_71;
    v12[4] = this;
    v12[5] = a2;
    v9 = stream_to_string(v12);
    CIGVNodeSetLabel(v7, v9);
    CFRelease(v8);
    CFRelease(v9);
    CIGVGraphAddNode(v6, v7);
    v43[0] = v4;
    v10 = std::__hash_table<CI::Image const*,std::hash<CI::Image const*>,std::equal_to<CI::Image const*>,std::allocator<CI::Image const*>>::find<CI::Image const*>(v31 + 5, v43);
    CIGVGraphAddEdge(v6, v10[3], v7);
    CFRelease(v7);
    std::__hash_table<CI::Image const*,std::hash<CI::Image const*>,std::equal_to<CI::Image const*>,std::allocator<CI::Image const*>>::clear(v31 + 5);
    std::__hash_table<CI::Image const*,std::hash<CI::Image const*>,std::equal_to<CI::Image const*>,std::allocator<CI::Image const*>>::clear(v15 + 5);
    _Block_object_dispose(&v14, 8);
    std::__hash_table<CI::Image const*,std::hash<CI::Image const*>,std::equal_to<CI::Image const*>,std::allocator<CI::Image const*>>::~__hash_table(v19);
    _Block_object_dispose(&v30, 8);
    std::__hash_table<CI::Image const*,std::hash<CI::Image const*>,std::equal_to<CI::Image const*>,std::allocator<CI::Image const*>>::~__hash_table(v35);
    _Block_object_dispose(v37, 8);
    std::__hash_table<CI::Image const*,std::hash<CI::Image const*>,std::equal_to<CI::Image const*>,std::allocator<CI::Image const*>>::~__hash_table(v38);
    _Block_object_dispose(v40, 8);
    std::__hash_table<CI::Image const*,std::hash<CI::Image const*>,std::equal_to<CI::Image const*>,std::allocator<CI::Image const*>>::~__hash_table(v41);
  }

  return v6;
}

void ___ZNK2CI8TileTask23graphviz_representationEPKNS_10RenderTaskE_block_invoke(uint64_t a1, unsigned int *a2)
{
  v37 = a2;
  v4 = *(a1 + 56);
  if (!CI_GRAPHVIZ_INTERNAL() && (*(*a2 + 40))(a2) >= 2 && (*(*a2 + 40))(a2) >= 1)
  {
    v5 = 0;
    do
    {
      v38 = (*(*a2 + 48))(a2, v5);
      if (!std::__hash_table<void const*,std::hash<void const*>,std::equal_to<void const*>,std::allocator<void const*>>::find<void const*>((*(*(a1 + 32) + 8) + 40), &v38))
      {
        v6 = *(*(a1 + 32) + 8);
        v7 = *(v6 + 64);
        *&v28 = &v38;
        *(std::__hash_table<std::__hash_value_type<CI::Node *,int>,std::__unordered_map_hasher<CI::Node *,std::__hash_value_type<CI::Node *,int>,std::hash<CI::Node *>,std::equal_to<CI::Node *>,true>,std::__unordered_map_equal<CI::Node *,std::__hash_value_type<CI::Node *,int>,std::equal_to<CI::Node *>,std::hash<CI::Node *>,true>,std::allocator<std::__hash_value_type<CI::Node *,int>>>::__emplace_unique_key_args<CI::Node *,std::piecewise_construct_t const&,std::tuple<CI::Node * const&>,std::tuple<>>((v6 + 40), &v38) + 6) = v7;
      }

      v5 = (v5 + 1);
    }

    while (v5 < (*(*a2 + 40))(a2));
  }

  v8 = (*(*a2 + 16))(a2);
  if (CI::is_any_TypeNode(v8))
  {
    memset(v31, 0, 36);
    v29 = 0u;
    v30 = 0u;
    v28 = 0u;
    v32 = 0u;
    v33 = 0u;
    v34 = 0u;
    v35 = 0u;
    v36 = 0;
    v9 = std::__hash_table<std::__hash_value_type<CI::ImageIndex,CI::Image::ImageStats>,std::__unordered_map_hasher<CI::ImageIndex,std::__hash_value_type<CI::ImageIndex,CI::Image::ImageStats>,std::hash<CI::ImageIndex>,std::equal_to<CI::ImageIndex>,true>,std::__unordered_map_equal<CI::ImageIndex,std::__hash_value_type<CI::ImageIndex,CI::Image::ImageStats>,std::equal_to<CI::ImageIndex>,std::hash<CI::ImageIndex>,true>,std::allocator<std::__hash_value_type<CI::ImageIndex,CI::Image::ImageStats>>>::find<CI::ImageIndex>((v4 + 88), a2 + 9);
    if (v9)
    {
      v10 = v9;
      if (&v28 != (v9 + 3))
      {
        std::vector<std::pair<CGRect,unsigned long>>::__assign_with_size[abi:nn200100]<std::pair<CGRect,unsigned long>*,std::pair<CGRect,unsigned long>*>(&v28, v9[3], v9[4], 0xCCCCCCCCCCCCCCCDLL * ((v9[4] - v9[3]) >> 3));
        std::vector<std::pair<CGRect,unsigned long>>::__assign_with_size[abi:nn200100]<std::pair<CGRect,unsigned long>*,std::pair<CGRect,unsigned long>*>(&v29 + 1, v10[6], v10[7], 0xCCCCCCCCCCCCCCCDLL * ((v10[7] - v10[6]) >> 3));
        std::vector<CGRect>::__assign_with_size[abi:nn200100]<CGRect*,CGRect*>(v31, v10[9], v10[10], (v10[10] - v10[9]) >> 5);
      }

      v11 = *(v10 + 9);
      v33 = *(v10 + 8);
      v34 = v11;
      v35 = *(v10 + 10);
      v36 = *(v10 + 176);
      v12 = *(v10 + 7);
      *&v31[24] = *(v10 + 6);
      v32 = v12;
    }

    else
    {
      v36 = 0;
    }

    v13 = *(*(a1 + 32) + 8);
    std::vector<std::pair<CGRect,unsigned long>>::vector[abi:nn200100](v17, &v28);
    std::vector<std::pair<CGRect,unsigned long>>::vector[abi:nn200100](v18, &v29 + 1);
    __p = 0;
    __dst = 0;
    v21 = 0;
    if (*&v31[8] != *v31)
    {
      std::vector<CGRect>::__vallocate[abi:nn200100](&__p, (*&v31[8] - *v31) >> 5);
    }

    v27 = v36;
    v24 = v33;
    v25 = v34;
    v26 = v35;
    v22 = *&v31[24];
    v23 = v32;
    v14 = (*(*a2 + 152))(a2, v13 + 40, v17);
    if (__p)
    {
      __dst = __p;
      operator delete(__p);
    }

    if (v18[0])
    {
      v18[1] = v18[0];
      operator delete(v18[0]);
    }

    if (v17[0])
    {
      v17[1] = v17[0];
      operator delete(v17[0]);
    }

    v16 = (*(*a2 + 400))(a2);
    if (std::__hash_table<CI::OtherDigest,std::hash<CI::OtherDigest>,std::equal_to<CI::OtherDigest>,std::allocator<CI::OtherDigest>>::find<CI::OtherDigest>((*(*(a1 + 40) + 8) + 40), &v16))
    {
      CIGVNodeSetColor(v14, 0xF);
    }

    std::__hash_table<CI::OtherDigest,std::hash<CI::OtherDigest>,std::equal_to<CI::OtherDigest>,std::allocator<CI::OtherDigest>>::__emplace_unique_key_args<CI::OtherDigest,CI::OtherDigest const&>((*(*(a1 + 40) + 8) + 40), &v16);
    CIGVGraphAddNode(*(a1 + 64), v14);
    v15 = *(*(a1 + 48) + 8);
    v38 = &v37;
    std::__hash_table<std::__hash_value_type<CI::GraphObject const*,void const*>,std::__unordered_map_hasher<CI::GraphObject const*,std::__hash_value_type<CI::GraphObject const*,void const*>,std::hash<CI::GraphObject const*>,std::equal_to<CI::GraphObject const*>,true>,std::__unordered_map_equal<CI::GraphObject const*,std::__hash_value_type<CI::GraphObject const*,void const*>,std::equal_to<CI::GraphObject const*>,std::hash<CI::GraphObject const*>,true>,std::allocator<std::__hash_value_type<CI::GraphObject const*,void const*>>>::__emplace_unique_key_args<CI::GraphObject const*,std::piecewise_construct_t const&,std::tuple<CI::GraphObject const* const&>,std::tuple<>>((v15 + 40), &v37)[3] = v14;
    CFRelease(v14);
    if (*v31)
    {
      *&v31[8] = *v31;
      operator delete(*v31);
    }

    if (*(&v29 + 1))
    {
      *&v30 = *(&v29 + 1);
      operator delete(*(&v29 + 1));
    }

    if (v28)
    {
      *(&v28 + 1) = v28;
      operator delete(v28);
    }
  }
}

BOOL ___ZNK2CI8TileTask23graphviz_representationEPKNS_10RenderTaskE_block_invoke_49(uint64_t a1, uint64_t a2)
{
  v10 = a2;
  v3 = std::__hash_table<void const*,std::hash<void const*>,std::equal_to<void const*>,std::allocator<void const*>>::find<void const*>((*(*(a1 + 32) + 8) + 40), &v10);
  if (!v3)
  {
    std::__hash_table<CI::Node const*,std::hash<CI::Node const*>,std::equal_to<CI::Node const*>,std::allocator<CI::Node const*>>::__emplace_unique_key_args<CI::Node const*,CI::Node const* const&>((*(*(a1 + 32) + 8) + 40), &v10);
    v4 = std::__hash_table<CI::Image const*,std::hash<CI::Image const*>,std::equal_to<CI::Image const*>,std::allocator<CI::Image const*>>::find<CI::Image const*>((*(*(a1 + 40) + 8) + 40), &v10)[3];
    if ((*(*v10 + 40))(v10) >= 1)
    {
      v5 = 0;
      do
      {
        v6 = *(*(a1 + 40) + 8);
        v9 = (*(*v10 + 48))(v10, v5);
        v7 = std::__hash_table<CI::Image const*,std::hash<CI::Image const*>,std::equal_to<CI::Image const*>,std::allocator<CI::Image const*>>::find<CI::Image const*>((v6 + 40), &v9);
        CIGVGraphAddEdge(*(a1 + 48), v7[3], v4);
        v5 = (v5 + 1);
      }

      while (v5 < (*(*v10 + 40))(v10));
    }
  }

  return v3 != 0;
}

uint64_t ___ZNK2CI8TileTask23graphviz_representationEPKNS_10RenderTaskE_block_invoke_2(uint64_t a1, FILE *a2)
{
  v53 = *MEMORY[0x1E69E9840];
  v5 = *(a1 + 32);
  v4 = *(a1 + 40);
  v6 = v4[2];
  v7 = v4[13];
  v8 = (*(*v4 + 40))(v4);
  v9 = (*(**(a1 + 40) + 48))(*(a1 + 40));
  fprintf(a2, "program graph\n%s %p %ldx%ld\n", v6, v7, v8, v9);
  v10 = (*(**(*(a1 + 40) + 24) + 312))();
  v11 = (*(**(*(a1 + 40) + 24) + 280))();
  v12 = *(a1 + 40);
  v14 = *(v12 + 24);
  v13 = *(v12 + 32);
  v16 = *(v14 + 236);
  v15 = (v14 + 236);
  if (v16)
  {
    v17 = ":";
  }

  else
  {
    v17 = "";
  }

  fprintf(a2, "(%s%s context %d%s%s frame %lu tile %lu)\n", "", v10, v11, v17, v15, v13, *(v5 + 32));
  v18 = *(a1 + 40);
  v19 = *(v18 + 96);
  if (v19)
  {
    v51 = 0u;
    v52 = 0u;
    v49 = 0u;
    v50 = 0u;
    v47 = 0u;
    v48 = 0u;
    v45 = 0u;
    v46 = 0u;
    v43 = 0u;
    v44 = 0u;
    v41 = 0u;
    v42 = 0u;
    v39 = 0u;
    v40 = 0u;
    *buffer = 0u;
    v38 = 0u;
    CFStringGetCString(v19, buffer, 256, 0x8000100u);
    fprintf(a2, "destination=%s\n", buffer);
    v18 = *(a1 + 40);
  }

  v20 = (*(**(v18 + 24) + 320))(*(v18 + 24));
  if ((*(**(*(a1 + 40) + 24) + 240))(*(*(a1 + 40) + 24)) == -1)
  {
    v21 = "false";
  }

  else
  {
    v21 = "true";
  }

  v22 = (*(**(*(a1 + 40) + 24) + 496))() >> 20;
  v23 = CI::name_for_format(*(*(*(a1 + 40) + 24) + 32));
  if ((*(**(*(a1 + 40) + 24) + 176))(*(*(a1 + 40) + 24)))
  {
    v24 = "(lossyAllowed)";
  }

  else
  {
    v24 = "";
  }

  v25 = CI::name_for_format(*(*(a1 + 40) + 80));
  v26 = *(v5 + 72);
  v27 = *(v5 + 80);
  v28 = *(a1 + 40);
  v35 = *(v28 + 200);
  v36 = *(v5 + 56);
  v29 = *(v28 + 216);
  v30 = GetSurfaceCachePeakNonVolatileSize() >> 20;
  v31 = CI::RenderTask::completionTime(*(a1 + 40));
  fprintf(a2, "deviceName=%s\ncacheIntermediates=%s\nintermediatesLimit=%ldMB\nworkingFormat=%s%s\nformat=%s\nroi=[%g %g %g %g]\npassCount=%ld\npixelsProcessed=%ld\npixelsOverdrawn=%ld\npeakNonVolatile=%ldMB\ncompletionTime=%.3fs", v20, v21, v22, v23, v24, v25, *&v36, *(&v36 + 1), v26, v27, v35, *(&v35 + 1), v29, v30, v31);
  fprintf(a2, "\ncompileTime=%.3fms", *(*(a1 + 40) + 176) * 1000.0);
  result = fprintf(a2, "\ncompileWaitTime=%.3fms", *(*(a1 + 40) + 184) * 1000.0);
  v33 = *(a1 + 40);
  v34 = *(v33 + 168);
  if (v34 != 0.0)
  {
    return fprintf(a2, "\nkernelExecutionTime=%.3fms\nrate=%.3fMP/s", v34 * 1000.0, *(v33 + 208) / 1000000.0 / v34);
  }

  return result;
}

double CI::RenderTask::completionTime(CI::RenderTask *this)
{
  v1 = *(this + 18);
  v2 = 0.0;
  if (v1 != *(this + 17))
  {
    v3 = *(*(v1 - 8) + 40);
    if (v3 <= 0.0)
    {
      v4 = ci_logger_render();
      if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
      {
        CI::RenderTask::completionTime(v4);
      }
    }

    else
    {
      return v3 - *(this + 20);
    }
  }

  return v2;
}

uint64_t CI::RenderTask::RenderTask(uint64_t a1, uint64_t a2, uint64_t a3, CI::Object *this, _OWORD *a5, int a6, uint64_t a7)
{
  *(a1 + 8) = 1;
  *a1 = &unk_1F103CFC8;
  *(a1 + 16) = a2;
  *(a1 + 24) = a3;
  *(a1 + 32) = *(a3 + 152);
  if (this)
  {
    v11 = CI::Object::ref(this);
    a3 = *(a1 + 24);
  }

  else
  {
    v11 = 0;
  }

  *(a1 + 40) = v11;
  v12 = a5[1];
  *(a1 + 48) = *a5;
  *(a1 + 64) = v12;
  *(a1 + 80) = a6;
  *(a1 + 192) = 0;
  *(a1 + 88) = 0;
  *(a1 + 112) = 0u;
  *(a1 + 128) = 0u;
  *(a1 + 144) = 0u;
  *(a1 + 160) = 0;
  CI::Object::ref(a3);
  if (a7)
  {
    v13 = *(a7 + 16);
    *(a1 + 96) = v13;
    if (v13)
    {
      CFRetain(v13);
    }

    *(a1 + 104) = (*(*a7 + 40))(a7);
    *(a1 + 112) = (*(*a7 + 48))(a7);
    v14 = (*(*a7 + 56))(a7);
  }

  else
  {
    v14 = 0;
    *(a1 + 96) = 0;
    *(a1 + 104) = 0;
    *(a1 + 112) = 0;
  }

  *(a1 + 120) = v14;
  *(a1 + 160) = CFAbsoluteTimeGetCurrent();
  *(a1 + 176) = 0;
  *(a1 + 184) = 0;
  *(a1 + 168) = 0;
  if (a7 && !*(a1 + 80))
  {
    *(a1 + 80) = *(a7 + 32);
  }

  *(a1 + 200) = 0;
  *(a1 + 208) = 0;
  *(a1 + 216) = 0;
  return a1;
}

CI::RenderTask *CI::RenderTask::RenderTask(CI::RenderTask *this, CFTypeRef cf)
{
  *(this + 2) = 1;
  *this = &unk_1F103CFC8;
  *(this + 3) = 0;
  *(this + 5) = 0;
  *(this + 12) = 0;
  *(this + 24) = 0;
  *(this + 14) = 0;
  *(this + 15) = 0;
  *(this + 136) = 0u;
  *(this + 152) = 0u;
  if (cf)
  {
    v3 = CFRetain(cf);
  }

  else
  {
    v3 = 0;
  }

  *(this + 16) = v3;
  return this;
}

CI::RenderTask *CI::RenderTask::RenderTask(CI::RenderTask *this, const char *a2, ...)
{
  va_start(va, a2);
  *(this + 2) = 1;
  *this = &unk_1F103CFC8;
  *(this + 3) = 0;
  *(this + 5) = 0;
  *(this + 12) = 0;
  *(this + 24) = 0;
  *(this + 14) = 0;
  *(this + 15) = 0;
  *(this + 136) = 0u;
  *(this + 152) = 0u;
  v3 = CFStringCreateWithCString(0, a2, 0x600u);
  *(this + 16) = CFStringCreateWithFormatAndArguments(0, 0, v3, va);
  CFRelease(v3);
  return this;
}

void CI::RenderTask::~RenderTask(CI::RenderTask *this)
{
  *this = &unk_1F103CFC8;
  v2 = *(this + 5);
  if (v2)
  {
    CI::Object::unref(v2);
  }

  *(this + 5) = 0;
  v3 = *(this + 16);
  if (v3)
  {
    CFRelease(v3);
  }

  *(this + 16) = 0;
  v4 = *(this + 12);
  if (v4)
  {
    CFRelease(v4);
  }

  *(this + 12) = 0;
  v5 = *(this + 3);
  if (v5)
  {
    CI::Object::unref(v5);
  }

  *(this + 3) = 0;
  v6 = (this + 136);
  std::vector<std::unique_ptr<CI::TileTask,CI::ObjectDeleter<CI::TileTask>>>::__destroy_vector::operator()[abi:nn200100](&v6);
}

{
  CI::RenderTask::~RenderTask(this);

  JUMPOUT(0x19EAF5590);
}

void *CI::RenderTask::addTileTask(void *this, CI::TileTask *a2)
{
  if (!this[16])
  {
    v2 = this;
    if (a2)
    {
      this = CI::Object::ref(a2);
      v3 = this;
    }

    else
    {
      v3 = 0;
    }

    v5 = v2[18];
    v4 = v2[19];
    if (v5 >= v4)
    {
      v7 = v2[17];
      v8 = v5 - v7;
      v9 = (v5 - v7) >> 3;
      v10 = v9 + 1;
      if ((v9 + 1) >> 61)
      {
        std::vector<CI::SWRendererFunctionInputNode>::__throw_length_error[abi:nn200100]();
      }

      v11 = v4 - v7;
      if (v11 >> 2 > v10)
      {
        v10 = v11 >> 2;
      }

      v12 = v11 >= 0x7FFFFFFFFFFFFFF8;
      v13 = 0x1FFFFFFFFFFFFFFFLL;
      if (!v12)
      {
        v13 = v10;
      }

      v19[4] = v2 + 17;
      if (v13)
      {
        std::__allocate_at_least[abi:nn200100]<std::allocator<Queue *>>((v2 + 17), v13);
      }

      v14 = (v5 - v7) >> 3;
      v15 = (8 * v9);
      v16 = (8 * v9 - 8 * v14);
      *v15 = v3;
      v6 = v15 + 1;
      memcpy(v16, v7, v8);
      v17 = v2[17];
      v2[17] = v16;
      v2[18] = v6;
      v18 = v2[19];
      v2[19] = 0;
      v19[2] = v17;
      v19[3] = v18;
      v19[0] = v17;
      v19[1] = v17;
      this = std::__split_buffer<std::unique_ptr<CI::TileTask,CI::ObjectDeleter<CI::TileTask>>>::~__split_buffer(v19);
    }

    else
    {
      *v5 = v3;
      v6 = v5 + 1;
    }

    v2[18] = v6;
  }

  return this;
}

void CI::RenderTask::raise(CI::RenderTask *this, const char *a2, ...)
{
  va_start(va, a2);
  v3 = CFStringCreateWithCString(0, a2, 0x600u);
  *(this + 16) = CFStringCreateWithFormatAndArguments(0, 0, v3, va);
  CFRelease(v3);
}

CFTypeRef CI::RenderTask::waitUntilCompleted(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 144) == *(a1 + 136))
  {
    return 0;
  }

  v4 = ci_signpost_log_render();
  if (((a2 << 32) - 1) <= 0xFFFFFFFFFFFFFFFDLL)
  {
    v5 = v4;
    if (os_signpost_enabled(v4))
    {
      *v19 = 0;
      _os_signpost_emit_with_name_impl(&dword_19CC36000, v5, OS_SIGNPOST_INTERVAL_BEGIN, a2 << 32, "wait", &unk_19CFBCBAE, v19, 2u);
    }
  }

  TimerBase::TimerBase(v19, a2, 0, "wait", 19);
  dispatch_group_wait(*(*(*(a1 + 144) - 8) + 16), 0xFFFFFFFFFFFFFFFFLL);
  *(a1 + 168) = 0u;
  *(a1 + 184) = 0u;
  *(a1 + 200) = 0u;
  *(a1 + 216) = 0;
  v6 = *(a1 + 136);
  v7 = *(a1 + 144);
  while (1)
  {
    if (v6 == v7)
    {
      v13 = 0;
      goto LABEL_17;
    }

    v8 = CI::TileTask::commandBufferError(*v6);
    v9 = *v6;
    if (v8)
    {
      break;
    }

    *(a1 + 168) = CI::TileTask::executionTime(v9) + *(a1 + 168);
    *(a1 + 176) = CI::TileTask::compileTime(*v6);
    *(a1 + 184) = CI::TileTask::compileWaitTime(*v6) + *(a1 + 184);
    *(a1 + 192) += CI::TileTask::executionCycles(*v6);
    v10 = *v6;
    v11 = *(*v6 + 18);
    if (v11)
    {
      v12 = 0;
      do
      {
        v12 += (v11[4] - v11[3]) >> 5;
        v11 = *v11;
      }

      while (v11);
    }

    else
    {
      v12 = 0;
    }

    *(a1 + 200) += v12;
    *(a1 + 208) += CI::TileTask::pixelsProcessed(v10);
    *(a1 + 216) += CI::TileTask::pixelsOverdrawn(v10);
    ++v6;
  }

  v14 = CI::TileTask::commandBufferError(v9);
  v13 = CFRetain(v14);
LABEL_17:
  v15 = ci_signpost_log_render();
  v16 = v20;
  if (v20 - 1 <= 0xFFFFFFFFFFFFFFFDLL)
  {
    v17 = v15;
    if (os_signpost_enabled(v15))
    {
      *buf = 0;
      _os_signpost_emit_with_name_impl(&dword_19CC36000, v17, OS_SIGNPOST_INTERVAL_END, v16, "wait", &unk_19CFBCBAE, buf, 2u);
    }
  }

  TimerBase::~TimerBase(v19);
  return v13;
}

intptr_t CI::RenderTask::waitUntilScheduled(intptr_t this)
{
  v1 = *(this + 144);
  if (v1 != *(this + 136))
  {
    return dispatch_group_wait(*(*(v1 - 8) + 24), 0xFFFFFFFFFFFFFFFFLL);
  }

  return this;
}

uint64_t CI::RenderTask::quicklookDataForRenderTask(CI::RenderTask *this)
{
  v54 = *MEMORY[0x1E69E9840];
  if ((atomic_load_explicit(&qword_1ED7C4680, memory_order_acquire) & 1) == 0)
  {
    CI::RenderTask::quicklookDataForRenderTask();
  }

  CIGVRendererSetOutputFileURL(_MergedGlobals_14, 0);
  v52 = 0u;
  v53 = 0u;
  v50 = 0u;
  v51 = 0u;
  v48 = 0u;
  v49 = 0u;
  v46 = 0u;
  v47 = 0u;
  v44 = 0u;
  v45 = 0u;
  v42 = 0u;
  v43 = 0u;
  v40 = 0u;
  v41 = 0u;
  v38 = 0u;
  v39 = 0u;
  v36 = 0u;
  v37 = 0u;
  v34 = 0u;
  v35 = 0u;
  v32 = 0u;
  v33 = 0u;
  v30 = 0u;
  v31 = 0u;
  v28 = 0u;
  v29 = 0u;
  v26 = 0u;
  v27 = 0u;
  v24 = 0u;
  v25 = 0u;
  *__str = 0u;
  v23 = 0u;
  v2 = (*(**(this + 3) + 312))();
  v3 = (*(**(this + 3) + 280))();
  v4 = *(this + 3);
  v6 = *(v4 + 236);
  v5 = (v4 + 236);
  v7 = ":";
  if (v6)
  {
    v8 = ":";
  }

  else
  {
    v8 = "";
  }

  snprintf(__str, 0x200uLL, "CIRenderTask <%s context %d%s%s frame %lu>", v2, v3, v8, v5, *(this + 4));
  CIGVRendererSetOutputFileTitle(_MergedGlobals_14, __str);
  if (*(this + 12))
  {
    v9 = CFStringCreateWithFormat(0, 0, @"destination=%@\n", *(this + 12));
  }

  else
  {
    v9 = &stru_1F1040378;
  }

  v10 = *(this + 2);
  v11 = (*(**(this + 3) + 312))(*(this + 3));
  v12 = (*(**(this + 3) + 280))();
  v13 = *(this + 3);
  v14 = *(this + 4);
  v16 = *(v13 + 236);
  v15 = v13 + 236;
  if (!v16)
  {
    v7 = "";
  }

  v17 = CI::name_for_format(*(this + 20));
  v18 = CFStringCreateWithFormat(0, 0, @"optimized graph\n%s\n(%s context %d%s%s frame %lu)\n%@format=%s\nroi=[%g %g %g %g]", v10, v11, v12, v7, v15, v14, v9, v17, *(this + 6), *(this + 7), *(this + 8), *(this + 9), *__str, *&__str[8], v23, v24, v25, v26, v27, v28, v29, v30, v31, v32, v33, v34, v35, v36, v37, v38, v39, v40, v41, v42, v43, v44, v45);
  v20 = CI::GraphObject::graphviz_representation(*(this + 5), v18, 0, 0, v19);
  CIGVGraphRender(v20, _MergedGlobals_14);
  CFRelease(v18);
  CFRelease(v20);
  CFRelease(v9);
  CIGVRendererFlushRender(_MergedGlobals_14);
  return CIGVRendererGetPDFData(_MergedGlobals_14);
}

uint64_t CI::RenderTask::quicklookDataForRenderInfo(CI::RenderTask *this)
{
  v49 = *MEMORY[0x1E69E9840];
  if ((atomic_load_explicit(&qword_1ED7C4690, memory_order_acquire) & 1) == 0)
  {
    CI::RenderTask::quicklookDataForRenderInfo();
  }

  CIGVRendererSetOutputFileURL(qword_1ED7C4688, 0);
  v47 = 0u;
  v48 = 0u;
  v45 = 0u;
  v46 = 0u;
  v43 = 0u;
  v44 = 0u;
  v41 = 0u;
  v42 = 0u;
  v39 = 0u;
  v40 = 0u;
  v37 = 0u;
  v38 = 0u;
  v35 = 0u;
  v36 = 0u;
  v33 = 0u;
  v34 = 0u;
  v31 = 0u;
  v32 = 0u;
  v29 = 0u;
  v30 = 0u;
  v27 = 0u;
  v28 = 0u;
  v25 = 0u;
  v26 = 0u;
  v23 = 0u;
  v24 = 0u;
  v21 = 0u;
  v22 = 0u;
  v19 = 0u;
  v20 = 0u;
  *__str = 0u;
  v18 = 0u;
  v2 = (*(**(this + 3) + 312))();
  v3 = (*(**(this + 3) + 280))();
  v4 = *(this + 3);
  v5 = *(this + 4);
  v7 = *(v4 + 236);
  v6 = (v4 + 236);
  if (v7)
  {
    v8 = ":";
  }

  else
  {
    v8 = "";
  }

  v9 = *(this + 25);
  v10 = *(this + 26);
  v11 = CI::RenderTask::completionTime(this);
  snprintf(__str, 0x200uLL, "CIRenderInfo <%s context %d%s%s frame %lu>\npassCount=%ld\npixelsProcessed=%ld\ncompletionTime=%.3fs", v2, v3, v8, v6, v5, v9, v10, v11);
  CIGVRendererSetOutputFileTitle(qword_1ED7C4688, __str);
  v12 = *(this + 17);
  v13 = *(this + 18);
  while (v12 != v13)
  {
    v14 = *v12++;
    v15 = CI::TileTask::graphviz_representation(v14, this);
    CIGVGraphRender(v15, qword_1ED7C4688);
    CFRelease(v15);
  }

  CIGVRendererFlushRender(qword_1ED7C4688);
  return CIGVRendererGetPDFData(qword_1ED7C4688);
}

void CI::RenderTask::dump_for_graphviz(CI::RenderTask *this, const char *a2, unsigned int a3)
{
  v33 = *MEMORY[0x1E69E9840];
  if (a3)
  {
    v5 = *(this + 17);
    v6 = *(this + 18);
    while (v5 != v6)
    {
      v8 = CI::TileTask::graphviz_representation(*v5, this);
      v9 = *v5++;
      snprintf(__str, 0x100uLL, "%s_%lu", a2, *(v9 + 4));
      v10 = CI_TEMP_DIR();
      CIGVDumpToFile(v8, a3, v10, __str);
      CFRelease(v8);
    }
  }

  else
  {
    v11 = CI::RenderTask::quicklookDataForRenderInfo(this);
    v31 = 0u;
    v32 = 0u;
    v29 = 0u;
    v30 = 0u;
    v27 = 0u;
    v28 = 0u;
    v25 = 0u;
    v26 = 0u;
    v23 = 0u;
    v24 = 0u;
    v21 = 0u;
    v22 = 0u;
    v19 = 0u;
    v20 = 0u;
    *__str = 0u;
    v18 = 0u;
    v12 = CI_TEMP_DIR();
    snprintf(__str, 0x100uLL, "%s/%s.pdf", v12, a2);
    v13 = fopen(__str, "w");
    if (v13)
    {
      v14 = v13;
      BytePtr = CFDataGetBytePtr(v11);
      Length = CFDataGetLength(v11);
      fwrite(BytePtr, Length, 1uLL, v14);
      fclose(v14);
    }

    CFRelease(v11);
  }
}

void *std::vector<double>::reserve(void *result, unint64_t a2)
{
  if (a2 > (result[2] - *result) >> 3)
  {
    if (!(a2 >> 61))
    {
      std::__allocate_at_least[abi:nn200100]<std::allocator<unsigned long>>(result, a2);
    }

    std::vector<CI::SWRendererFunctionInputNode>::__throw_length_error[abi:nn200100]();
  }

  return result;
}

void std::vector<std::pair<double,int>>::push_back[abi:nn200100](uint64_t a1, _OWORD *a2)
{
  v5 = *(a1 + 8);
  v4 = *(a1 + 16);
  if (v5 >= v4)
  {
    v7 = (v5 - *a1) >> 4;
    v8 = v7 + 1;
    if ((v7 + 1) >> 60)
    {
      std::vector<CI::SWRendererFunctionInputNode>::__throw_length_error[abi:nn200100]();
    }

    v9 = v4 - *a1;
    if (v9 >> 3 > v8)
    {
      v8 = v9 >> 3;
    }

    if (v9 >= 0x7FFFFFFFFFFFFFF0)
    {
      v10 = 0xFFFFFFFFFFFFFFFLL;
    }

    else
    {
      v10 = v8;
    }

    if (v10)
    {
      _ZNSt3__119__allocate_at_leastB8nn200100INS_9allocatorIN2CI11Perspective9NMSimplexIDv2_fE8NMVertexEEEEENS_19__allocation_resultINS_16allocator_traitsIT_E7pointerEEERSB_m(a1, v10);
    }

    v11 = (16 * v7);
    *v11 = *a2;
    v6 = 16 * v7 + 16;
    v12 = *(a1 + 8) - *a1;
    v13 = v11 - v12;
    memcpy(v11 - v12, *a1, v12);
    v14 = *a1;
    *a1 = v13;
    *(a1 + 8) = v6;
    *(a1 + 16) = 0;
    if (v14)
    {
      operator delete(v14);
    }
  }

  else
  {
    *v5 = *a2;
    v6 = (v5 + 1);
  }

  *(a1 + 8) = v6;
}

uint64_t *std::__tree<double>::__emplace_unique_key_args<double,double const&>(uint64_t a1, double *a2)
{
  v2 = *(a1 + 8);
  if (!v2)
  {
LABEL_8:
    operator new();
  }

  v3 = *a2;
  while (1)
  {
    while (1)
    {
      v4 = v2;
      v5 = *(v2 + 4);
      if (v3 >= v5)
      {
        break;
      }

      v2 = *v2;
      if (!*v4)
      {
        goto LABEL_8;
      }
    }

    if (v5 >= v3)
    {
      return v2;
    }

    v2 = v2[1];
    if (!v2)
    {
      goto LABEL_8;
    }
  }
}

void *std::__copy_impl::operator()[abi:nn200100]<std::__tree_const_iterator<double,std::__tree_node<double,void *> *,long>,std::__tree_const_iterator<double,std::__tree_node<double,void *> *,long>,std::back_insert_iterator<std::vector<double>>>(uint64_t a1, void *a2, void *a3, const void **a4)
{
  v5 = a2;
  if (a2 != a3)
  {
    v7 = a4[1];
    do
    {
      v8 = a4[2];
      if (v7 >= v8)
      {
        v9 = *a4;
        v10 = v7 - *a4;
        v11 = v10 >> 3;
        v12 = (v10 >> 3) + 1;
        if (v12 >> 61)
        {
          std::vector<CI::SWRendererFunctionInputNode>::__throw_length_error[abi:nn200100]();
        }

        v13 = v8 - v9;
        if (v13 >> 2 > v12)
        {
          v12 = v13 >> 2;
        }

        if (v13 >= 0x7FFFFFFFFFFFFFF8)
        {
          v14 = 0x1FFFFFFFFFFFFFFFLL;
        }

        else
        {
          v14 = v12;
        }

        if (v14)
        {
          std::__allocate_at_least[abi:nn200100]<std::allocator<unsigned long>>(a4, v14);
        }

        *(8 * v11) = v5[4];
        v7 = (8 * v11 + 8);
        memcpy(0, v9, v10);
        v15 = *a4;
        *a4 = 0;
        a4[1] = v7;
        a4[2] = 0;
        if (v15)
        {
          operator delete(v15);
        }
      }

      else
      {
        *v7 = v5[4];
        v7 += 8;
      }

      a4[1] = v7;
      v16 = v5[1];
      if (v16)
      {
        do
        {
          v17 = v16;
          v16 = *v16;
        }

        while (v16);
      }

      else
      {
        do
        {
          v17 = v5[2];
          v18 = *v17 == v5;
          v5 = v17;
        }

        while (!v18);
      }

      v5 = v17;
    }

    while (v17 != a3);
    return a3;
  }

  return v5;
}

uint64_t std::__introsort<std::_ClassicAlgPolicy,CI::TileTask::pixelsOverdrawn(void)::$_0::operator() const(std::vector<CGRect> const&)::{lambda(std::pair<double,int>,std::pair<double,int>)#1} &,std::pair<double,int>*,false>(uint64_t result, unint64_t a2, uint64_t a3, char a4)
{
  v7 = result;
LABEL_2:
  v8 = v7;
  while (1)
  {
    v7 = v8;
    v9 = (a2 - v8) >> 4;
    if (v9 <= 2)
    {
      if (v9 < 2)
      {
        return result;
      }

      if (v9 == 2)
      {
        v78 = *(a2 - 16);
        v79 = *v8;
        if (v78 >= *v8)
        {
          return result;
        }

        *v8 = v78;
        *(a2 - 16) = v79;
LABEL_114:
        v83 = *(v8 + 8);
        *(v8 + 8) = *(a2 - 8);
LABEL_115:
        *(a2 - 8) = v83;
        return result;
      }

      goto LABEL_10;
    }

    if (v9 == 3)
    {
      break;
    }

    if (v9 == 4)
    {
      v84 = *(v8 + 16);
      v85 = *v8;
      v86 = *(v8 + 32);
      if (v84 >= *v8)
      {
        if (v86 < v84)
        {
          *(v8 + 16) = v86;
          *(v8 + 32) = v84;
          v135 = *(v8 + 24);
          v136 = *(v8 + 40);
          *(v8 + 24) = v136;
          *(v8 + 40) = v135;
          if (v86 < v85)
          {
            *v8 = v86;
            *(v8 + 16) = v85;
            v137 = *(v8 + 8);
            *(v8 + 8) = v136;
            *(v8 + 24) = v137;
          }

          goto LABEL_188;
        }
      }

      else
      {
        if (v86 < v84)
        {
          *v8 = v86;
          *(v8 + 32) = v85;
          v87 = *(v8 + 8);
          *(v8 + 8) = *(v8 + 40);
          goto LABEL_186;
        }

        *v8 = v84;
        *(v8 + 16) = v85;
        v87 = *(v8 + 8);
        *(v8 + 8) = *(v8 + 24);
        *(v8 + 24) = v87;
        if (v86 < v85)
        {
          *(v8 + 16) = v86;
          *(v8 + 32) = v85;
          *(v8 + 24) = *(v8 + 40);
LABEL_186:
          *(v8 + 40) = v87;
          v84 = v85;
LABEL_188:
          v147 = *(a2 - 16);
          if (v147 < v84)
          {
            *(v8 + 32) = v147;
            *(a2 - 16) = v84;
            v148 = *(v8 + 40);
            *(v8 + 40) = *(a2 - 8);
            *(a2 - 8) = v148;
            v149 = *(v8 + 32);
            v150 = *(v8 + 16);
            if (v149 < v150)
            {
              *(v8 + 16) = v149;
              *(v8 + 32) = v150;
              v151 = *(v8 + 24);
              v152 = *(v8 + 40);
              *(v8 + 24) = v152;
              *(v8 + 40) = v151;
              v153 = *v8;
              if (v149 < *v8)
              {
                *v8 = v149;
                *(v8 + 16) = v153;
                v154 = *(v8 + 8);
                *(v8 + 8) = v152;
                *(v8 + 24) = v154;
              }
            }
          }

          return result;
        }
      }

      v84 = v86;
      goto LABEL_188;
    }

    if (v9 == 5)
    {

      return std::__sort5[abi:nn200100]<std::_ClassicAlgPolicy,CI::TileTask::pixelsOverdrawn(void)::$_0::operator() const(std::vector<CGRect> const&)::{lambda(std::pair<double,int>,std::pair<double,int>)#1} &,std::pair<double,int>*,0>(v8, v8 + 16, v8 + 32, (v8 + 48), (a2 - 16));
    }

LABEL_10:
    if (v9 <= 23)
    {
      v88 = v8 + 16;
      v90 = v8 == a2 || v88 == a2;
      if (a4)
      {
        if (!v90)
        {
          v91 = 0;
          v92 = v8;
          do
          {
            v93 = v88;
            v94 = *(v92 + 16);
            v95 = *v92;
            if (v94 < *v92)
            {
              v96 = *(v92 + 24);
              v97 = v91;
              while (1)
              {
                v98 = v8 + v97;
                *(v98 + 16) = v95;
                *(v98 + 24) = *(v8 + v97 + 8);
                if (!v97)
                {
                  break;
                }

                v95 = *(v98 - 16);
                v97 -= 16;
                if (v94 >= v95)
                {
                  v99 = v8 + v97 + 16;
                  goto LABEL_134;
                }
              }

              v99 = v8;
LABEL_134:
              *v99 = v94;
              *(v99 + 8) = v96;
            }

            v88 = v93 + 16;
            v91 += 16;
            v92 = v93;
          }

          while (v93 + 16 != a2);
        }
      }

      else if (!v90)
      {
        v138 = (v8 + 24);
        do
        {
          v139 = v88;
          v140 = *(v7 + 16);
          v141 = *v7;
          if (v140 < *v7)
          {
            v142 = *(v7 + 24);
            v143 = v138;
            do
            {
              v144 = v143;
              *(v143 - 1) = v141;
              v145 = *(v143 - 4);
              v143 -= 2;
              *v144 = v145;
              v141 = *(v144 - 5);
            }

            while (v140 < v141);
            *(v143 - 1) = v140;
            *v143 = v142;
          }

          v88 = v139 + 16;
          v138 += 2;
          v7 = v139;
        }

        while (v139 + 16 != a2);
      }

      return result;
    }

    if (!a3)
    {
      if (v8 != a2)
      {
        v100 = (v9 - 2) >> 1;
        v101 = v100;
        do
        {
          v102 = v101;
          if (v100 >= v101)
          {
            v103 = (2 * v101) | 1;
            v104 = v8 + 16 * v103;
            if (2 * v102 + 2 < v9 && *v104 < *(v104 + 16))
            {
              v104 += 16;
              v103 = 2 * v102 + 2;
            }

            v105 = v8 + 16 * v102;
            v106 = *v104;
            v107 = *v105;
            if (*v104 >= *v105)
            {
              v108 = *(v105 + 8);
              do
              {
                v109 = v105;
                v105 = v104;
                *v109 = v106;
                *(v109 + 8) = *(v104 + 8);
                if (v100 < v103)
                {
                  break;
                }

                v110 = 2 * v103;
                v103 = (2 * v103) | 1;
                v104 = v8 + 16 * v103;
                v111 = v110 + 2;
                if (v111 < v9 && *v104 < *(v104 + 16))
                {
                  v104 += 16;
                  v103 = v111;
                }

                v106 = *v104;
              }

              while (*v104 >= v107);
              *v105 = v107;
              *(v105 + 8) = v108;
            }
          }

          v101 = v102 - 1;
        }

        while (v102);
        do
        {
          v112 = 0;
          v113 = *v8;
          v114 = *(v8 + 8);
          v115 = v8;
          do
          {
            v116 = v115;
            v117 = v115 + 16 * v112;
            v115 = v117 + 16;
            v118 = 2 * v112;
            v112 = (2 * v112) | 1;
            v119 = v118 + 2;
            if (v119 < v9)
            {
              v121 = *(v117 + 32);
              v120 = v117 + 32;
              if (*(v120 - 16) < v121)
              {
                v115 = v120;
                v112 = v119;
              }
            }

            *v116 = *v115;
            *(v116 + 8) = *(v115 + 8);
          }

          while (v112 <= ((v9 - 2) >> 1));
          if (v115 == a2 - 16)
          {
            *v115 = v113;
            *(v115 + 8) = v114;
          }

          else
          {
            *v115 = *(a2 - 16);
            *(v115 + 8) = *(a2 - 8);
            *(a2 - 16) = v113;
            *(a2 - 8) = v114;
            v122 = (v115 - v8 + 16) >> 4;
            v123 = v122 < 2;
            v124 = v122 - 2;
            if (!v123)
            {
              v125 = v124 >> 1;
              v126 = v8 + 16 * v125;
              v127 = *v126;
              v128 = *v115;
              if (*v126 < *v115)
              {
                v129 = *(v115 + 8);
                do
                {
                  v130 = v115;
                  v115 = v126;
                  *v130 = v127;
                  *(v130 + 8) = *(v126 + 8);
                  if (!v125)
                  {
                    break;
                  }

                  v125 = (v125 - 1) >> 1;
                  v126 = v8 + 16 * v125;
                  v127 = *v126;
                }

                while (*v126 < v128);
                *v115 = v128;
                *(v115 + 8) = v129;
              }
            }
          }

          a2 -= 16;
          v123 = v9-- <= 2;
        }

        while (!v123);
      }

      return result;
    }

    v10 = v8 + 16 * (v9 >> 1);
    v11 = v10;
    v12 = *(a2 - 16);
    if (v9 >= 0x81)
    {
      v13 = *v10;
      v14 = *v8;
      if (*v10 >= *v8)
      {
        if (v12 < v13)
        {
          *v10 = v12;
          *(a2 - 16) = v13;
          v19 = *(v10 + 8);
          *(v10 + 8) = *(a2 - 8);
          *(a2 - 8) = v19;
          v20 = *v8;
          if (*v10 < *v8)
          {
            *v8 = *v10;
            *v10 = v20;
            v21 = *(v8 + 8);
            *(v8 + 8) = *(v10 + 8);
            *(v10 + 8) = v21;
          }
        }
      }

      else
      {
        if (v12 < v13)
        {
          *v8 = v12;
          *(a2 - 16) = v14;
          v15 = *(v8 + 8);
          *(v8 + 8) = *(a2 - 8);
          goto LABEL_27;
        }

        *v8 = v13;
        *v10 = v14;
        v15 = *(v8 + 8);
        *(v8 + 8) = *(v10 + 8);
        *(v10 + 8) = v15;
        v25 = *(a2 - 16);
        if (v25 < v14)
        {
          *v10 = v25;
          *(a2 - 16) = v14;
          *(v10 + 8) = *(a2 - 8);
LABEL_27:
          *(a2 - 8) = v15;
        }
      }

      v26 = v10 - 16;
      v27 = *(v10 - 16);
      v28 = *(v8 + 16);
      v29 = *(a2 - 32);
      if (v27 >= v28)
      {
        if (v29 < v27)
        {
          *v26 = v29;
          *(a2 - 32) = v27;
          v31 = *(v10 - 8);
          *(v10 - 8) = *(a2 - 24);
          *(a2 - 24) = v31;
          v32 = *(v8 + 16);
          if (*v26 < v32)
          {
            *(v8 + 16) = *v26;
            *v26 = v32;
            v33 = *(v8 + 24);
            *(v8 + 24) = *(v10 - 8);
            *(v10 - 8) = v33;
          }
        }
      }

      else
      {
        if (v29 < v27)
        {
          *(v8 + 16) = v29;
          *(a2 - 32) = v28;
          v30 = *(v8 + 24);
          *(v8 + 24) = *(a2 - 24);
          goto LABEL_39;
        }

        *(v8 + 16) = v27;
        *v26 = v28;
        v30 = *(v8 + 24);
        *(v8 + 24) = *(v10 - 8);
        *(v10 - 8) = v30;
        v35 = *(a2 - 32);
        if (v35 < v28)
        {
          *v26 = v35;
          *(a2 - 32) = v28;
          *(v10 - 8) = *(a2 - 24);
LABEL_39:
          *(a2 - 24) = v30;
        }
      }

      v37 = *(v10 + 16);
      v36 = v10 + 16;
      v38 = v37;
      v39 = *(v8 + 32);
      v40 = *(a2 - 48);
      if (v37 >= v39)
      {
        if (v40 < v38)
        {
          *v36 = v40;
          *(a2 - 48) = v38;
          v42 = *(v36 + 8);
          *(v36 + 8) = *(a2 - 40);
          *(a2 - 40) = v42;
          v43 = *(v8 + 32);
          if (*v36 < v43)
          {
            *(v8 + 32) = *v36;
            *v36 = v43;
            v44 = *(v8 + 40);
            *(v8 + 40) = *(v36 + 8);
            *(v36 + 8) = v44;
          }
        }
      }

      else
      {
        if (v40 < v38)
        {
          *(v8 + 32) = v40;
          *(a2 - 48) = v39;
          v41 = *(v8 + 40);
          *(v8 + 40) = *(a2 - 40);
          goto LABEL_48;
        }

        *(v8 + 32) = v38;
        *v36 = v39;
        v41 = *(v8 + 40);
        *(v8 + 40) = *(v36 + 8);
        *(v36 + 8) = v41;
        v45 = *(a2 - 48);
        if (v45 < v39)
        {
          *v36 = v45;
          *(a2 - 48) = v39;
          *(v36 + 8) = *(a2 - 40);
LABEL_48:
          *(a2 - 40) = v41;
        }
      }

      v46 = *v11;
      v47 = *v26;
      v48 = *v36;
      if (*v11 >= *v26)
      {
        v50 = *(v11 + 8);
        if (v48 >= v46)
        {
LABEL_55:
          v47 = v46;
        }

        else
        {
          *v11 = v48;
          *v36 = v46;
          v51 = *(v36 + 8);
          *(v11 + 8) = v51;
          *(v36 + 8) = v50;
          if (v48 >= v47)
          {
            v50 = v51;
LABEL_59:
            v47 = v48;
          }

          else
          {
            *v26 = v48;
            *v11 = v47;
            v50 = *(v26 + 8);
            *(v26 + 8) = v51;
            *(v11 + 8) = v50;
          }
        }
      }

      else
      {
        if (v48 < v46)
        {
          *v26 = v48;
          *v36 = v47;
          v49 = *(v26 + 8);
          *(v26 + 8) = *(v36 + 8);
          *(v36 + 8) = v49;
          v50 = *(v11 + 8);
          goto LABEL_55;
        }

        *v26 = v46;
        *v11 = v47;
        v50 = *(v26 + 8);
        *(v26 + 8) = *(v11 + 8);
        *(v11 + 8) = v50;
        if (v48 < v47)
        {
          *v11 = v48;
          *v36 = v47;
          v52 = *(v36 + 8);
          *(v11 + 8) = v52;
          *(v36 + 8) = v50;
          v50 = v52;
          goto LABEL_59;
        }
      }

      v53 = *v8;
      *v8 = v47;
      *v11 = v53;
      v54 = *(v8 + 8);
      *(v8 + 8) = v50;
      *(v11 + 8) = v54;
      goto LABEL_61;
    }

    v16 = *v8;
    v17 = *v10;
    if (*v8 >= *v10)
    {
      if (v12 < v16)
      {
        *v8 = v12;
        *(a2 - 16) = v16;
        v22 = *(v8 + 8);
        *(v8 + 8) = *(a2 - 8);
        *(a2 - 8) = v22;
        v23 = *v10;
        if (*v8 < *v10)
        {
          *v10 = *v8;
          *v8 = v23;
          v24 = *(v10 + 8);
          *(v10 + 8) = *(v8 + 8);
          *(v8 + 8) = v24;
        }
      }

      goto LABEL_61;
    }

    if (v12 < v16)
    {
      *v10 = v12;
      *(a2 - 16) = v17;
      v18 = *(v10 + 8);
      *(v10 + 8) = *(a2 - 8);
LABEL_36:
      *(a2 - 8) = v18;
      goto LABEL_61;
    }

    *v10 = v16;
    *v8 = v17;
    v18 = *(v10 + 8);
    *(v10 + 8) = *(v8 + 8);
    *(v8 + 8) = v18;
    v34 = *(a2 - 16);
    if (v34 < v17)
    {
      *v8 = v34;
      *(a2 - 16) = v17;
      *(v8 + 8) = *(a2 - 8);
      goto LABEL_36;
    }

LABEL_61:
    --a3;
    v55 = *v8;
    if (a4)
    {
      v56 = *(v8 + 8);
LABEL_64:
      v57 = 0;
      do
      {
        v58 = *(v8 + v57 + 16);
        v57 += 16;
      }

      while (v58 < v55);
      v59 = v8 + v57;
      v60 = a2;
      if (v57 == 16)
      {
        v60 = a2;
        do
        {
          if (v59 >= v60)
          {
            break;
          }

          v62 = *(v60 - 2);
          v60 -= 2;
        }

        while (v62 >= v55);
      }

      else
      {
        do
        {
          v61 = *(v60 - 2);
          v60 -= 2;
        }

        while (v61 >= v55);
      }

      if (v59 >= v60)
      {
        v8 += v57;
      }

      else
      {
        v63 = *v60;
        v8 += v57;
        v64 = v60;
        do
        {
          *v8 = v63;
          *v64 = v58;
          v65 = *(v8 + 8);
          *(v8 + 8) = *(v64 + 2);
          *(v64 + 2) = v65;
          do
          {
            v66 = *(v8 + 16);
            v8 += 16;
            v58 = v66;
          }

          while (v66 < v55);
          do
          {
            v67 = *(v64 - 2);
            v64 -= 2;
            v63 = v67;
          }

          while (v67 >= v55);
        }

        while (v8 < v64);
      }

      if (v8 - 16 != v7)
      {
        *v7 = *(v8 - 16);
        *(v7 + 8) = *(v8 - 8);
      }

      *(v8 - 16) = v55;
      *(v8 - 8) = v56;
      if (v59 < v60)
      {
        goto LABEL_85;
      }

      v68 = std::__insertion_sort_incomplete[abi:nn200100]<std::_ClassicAlgPolicy,CI::TileTask::pixelsOverdrawn(void)::$_0::operator() const(std::vector<CGRect> const&)::{lambda(std::pair<double,int>,std::pair<double,int>)#1} &,std::pair<double,int>*>(v7, v8 - 16);
      result = std::__insertion_sort_incomplete[abi:nn200100]<std::_ClassicAlgPolicy,CI::TileTask::pixelsOverdrawn(void)::$_0::operator() const(std::vector<CGRect> const&)::{lambda(std::pair<double,int>,std::pair<double,int>)#1} &,std::pair<double,int>*>(v8, a2);
      if (result)
      {
        a2 = v8 - 16;
        if (!v68)
        {
          goto LABEL_2;
        }

        return result;
      }

      if (!v68)
      {
LABEL_85:
        result = std::__introsort<std::_ClassicAlgPolicy,CI::TileTask::pixelsOverdrawn(void)::$_0::operator() const(std::vector<CGRect> const&)::{lambda(std::pair<double,int>,std::pair<double,int>)#1} &,std::pair<double,int>*,false>(v7, v8 - 16, a3, a4 & 1);
        a4 = 0;
      }
    }

    else
    {
      v56 = *(v8 + 8);
      if (*(v8 - 16) < v55)
      {
        goto LABEL_64;
      }

      if (v55 >= *(a2 - 16))
      {
        v70 = v8 + 16;
        do
        {
          v8 = v70;
          if (v70 >= a2)
          {
            break;
          }

          v70 += 16;
        }

        while (v55 >= *v8);
      }

      else
      {
        do
        {
          v69 = *(v8 + 16);
          v8 += 16;
        }

        while (v55 >= v69);
      }

      v71 = a2;
      if (v8 < a2)
      {
        v71 = a2;
        do
        {
          v72 = *(v71 - 16);
          v71 -= 16;
        }

        while (v55 < v72);
      }

      if (v8 < v71)
      {
        v73 = *v8;
        v74 = *v71;
        do
        {
          *v8 = v74;
          *v71 = v73;
          v75 = *(v8 + 8);
          *(v8 + 8) = *(v71 + 8);
          *(v71 + 8) = v75;
          do
          {
            v76 = *(v8 + 16);
            v8 += 16;
            v73 = v76;
          }

          while (v55 >= v76);
          do
          {
            v77 = *(v71 - 16);
            v71 -= 16;
            v74 = v77;
          }

          while (v55 < v77);
        }

        while (v8 < v71);
      }

      if (v8 - 16 != v7)
      {
        *v7 = *(v8 - 16);
        *(v7 + 8) = *(v8 - 8);
      }

      a4 = 0;
      *(v8 - 16) = v55;
      *(v8 - 8) = v56;
    }
  }

  v80 = *(v8 + 16);
  v81 = *v8;
  v82 = *(a2 - 16);
  if (v80 >= *v8)
  {
    if (v82 < v80)
    {
      *(v8 + 16) = v82;
      *(a2 - 16) = v80;
      v131 = *(v8 + 24);
      *(v8 + 24) = *(a2 - 8);
      *(a2 - 8) = v131;
      v132 = *(v8 + 16);
      v133 = *v8;
      if (v132 < *v8)
      {
        *v8 = v132;
        *(v8 + 16) = v133;
        v134 = *(v8 + 8);
        *(v8 + 8) = *(v8 + 24);
        *(v8 + 24) = v134;
      }
    }
  }

  else
  {
    if (v82 < v80)
    {
      *v8 = v82;
      *(a2 - 16) = v81;
      goto LABEL_114;
    }

    *v8 = v80;
    *(v8 + 16) = v81;
    v83 = *(v8 + 8);
    *(v8 + 8) = *(v8 + 24);
    *(v8 + 24) = v83;
    v146 = *(a2 - 16);
    if (v146 < v81)
    {
      *(v8 + 16) = v146;
      *(a2 - 16) = v81;
      *(v8 + 24) = *(a2 - 8);
      goto LABEL_115;
    }
  }

  return result;
}

uint64_t std::__sort5[abi:nn200100]<std::_ClassicAlgPolicy,CI::TileTask::pixelsOverdrawn(void)::$_0::operator() const(std::vector<CGRect> const&)::{lambda(std::pair<double,int>,std::pair<double,int>)#1} &,std::pair<double,int>*,0>(uint64_t result, uint64_t a2, uint64_t a3, uint64_t *a4, uint64_t *a5)
{
  v5 = *a2;
  v6 = *result;
  v7 = *a3;
  if (*a2 >= *result)
  {
    if (v7 >= v5)
    {
      v5 = *a3;
    }

    else
    {
      *a2 = v7;
      *a3 = v5;
      v9 = *(a2 + 8);
      *(a2 + 8) = *(a3 + 8);
      *(a3 + 8) = v9;
      v10 = *result;
      if (*a2 < *result)
      {
        *result = *a2;
        *a2 = v10;
        v11 = *(result + 8);
        *(result + 8) = *(a2 + 8);
        *(a2 + 8) = v11;
        v5 = *a3;
      }
    }
  }

  else
  {
    if (v7 < v5)
    {
      *result = v7;
      *a3 = v6;
      v8 = *(result + 8);
      *(result + 8) = *(a3 + 8);
LABEL_9:
      *(a3 + 8) = v8;
      v5 = v6;
      goto LABEL_11;
    }

    *result = v5;
    *a2 = v6;
    v8 = *(result + 8);
    *(result + 8) = *(a2 + 8);
    *(a2 + 8) = v8;
    v5 = *a3;
    if (*a3 < v6)
    {
      *a2 = v5;
      *a3 = v6;
      *(a2 + 8) = *(a3 + 8);
      goto LABEL_9;
    }
  }

LABEL_11:
  if (*a4 < v5)
  {
    *a3 = *a4;
    *a4 = v5;
    v12 = *(a3 + 8);
    *(a3 + 8) = *(a4 + 2);
    *(a4 + 2) = v12;
    v13 = *a2;
    if (*a3 < *a2)
    {
      *a2 = *a3;
      *a3 = v13;
      v14 = *(a2 + 8);
      *(a2 + 8) = *(a3 + 8);
      *(a3 + 8) = v14;
      v15 = *result;
      if (*a2 < *result)
      {
        *result = *a2;
        *a2 = v15;
        v16 = *(result + 8);
        *(result + 8) = *(a2 + 8);
        *(a2 + 8) = v16;
      }
    }
  }

  v17 = *a4;
  if (*a5 < *a4)
  {
    *a4 = *a5;
    *a5 = v17;
    v18 = *(a4 + 2);
    *(a4 + 2) = *(a5 + 2);
    *(a5 + 2) = v18;
    v19 = *a3;
    if (*a4 < *a3)
    {
      *a3 = *a4;
      *a4 = v19;
      v20 = *(a3 + 8);
      *(a3 + 8) = *(a4 + 2);
      *(a4 + 2) = v20;
      v21 = *a2;
      if (*a3 < *a2)
      {
        *a2 = *a3;
        *a3 = v21;
        v22 = *(a2 + 8);
        *(a2 + 8) = *(a3 + 8);
        *(a3 + 8) = v22;
        v23 = *result;
        if (*a2 < *result)
        {
          *result = *a2;
          *a2 = v23;
          v24 = *(result + 8);
          *(result + 8) = *(a2 + 8);
          *(a2 + 8) = v24;
        }
      }
    }
  }

  return result;
}

BOOL std::__insertion_sort_incomplete[abi:nn200100]<std::_ClassicAlgPolicy,CI::TileTask::pixelsOverdrawn(void)::$_0::operator() const(std::vector<CGRect> const&)::{lambda(std::pair<double,int>,std::pair<double,int>)#1} &,std::pair<double,int>*>(uint64_t a1, uint64_t a2)
{
  v2 = (a2 - a1) >> 4;
  if (v2 > 2)
  {
    if (v2 == 3)
    {
      v5 = *(a1 + 16);
      v6 = *a1;
      v7 = *(a2 - 16);
      if (v5 >= *a1)
      {
        if (v7 < v5)
        {
          *(a1 + 16) = v7;
          *(a2 - 16) = v5;
          v18 = *(a1 + 24);
          *(a1 + 24) = *(a2 - 8);
          *(a2 - 8) = v18;
          v19 = *(a1 + 16);
          v20 = *a1;
          if (v19 < *a1)
          {
            *a1 = v19;
            *(a1 + 16) = v20;
            v21 = *(a1 + 8);
            *(a1 + 8) = *(a1 + 24);
            *(a1 + 24) = v21;
          }
        }

        return 1;
      }

      if (v7 >= v5)
      {
        *a1 = v5;
        *(a1 + 16) = v6;
        v8 = *(a1 + 8);
        *(a1 + 8) = *(a1 + 24);
        *(a1 + 24) = v8;
        v28 = *(a2 - 16);
        if (v28 >= v6)
        {
          return 1;
        }

        *(a1 + 16) = v28;
        *(a2 - 16) = v6;
        *(a1 + 24) = *(a2 - 8);
        goto LABEL_14;
      }

      *a1 = v7;
      *(a2 - 16) = v6;
LABEL_13:
      v8 = *(a1 + 8);
      *(a1 + 8) = *(a2 - 8);
LABEL_14:
      *(a2 - 8) = v8;
      return 1;
    }

    if (v2 != 4)
    {
      if (v2 == 5)
      {
        std::__sort5[abi:nn200100]<std::_ClassicAlgPolicy,CI::TileTask::pixelsOverdrawn(void)::$_0::operator() const(std::vector<CGRect> const&)::{lambda(std::pair<double,int>,std::pair<double,int>)#1} &,std::pair<double,int>*,0>(a1, a1 + 16, a1 + 32, (a1 + 48), (a2 - 16));
        return 1;
      }

      goto LABEL_15;
    }

    v14 = *(a1 + 16);
    v15 = *a1;
    v16 = *(a1 + 32);
    if (v14 >= *a1)
    {
      if (v16 < v14)
      {
        *(a1 + 16) = v16;
        *(a1 + 32) = v14;
        v25 = *(a1 + 24);
        v26 = *(a1 + 40);
        *(a1 + 24) = v26;
        *(a1 + 40) = v25;
        if (v16 < v15)
        {
          *a1 = v16;
          *(a1 + 16) = v15;
          v27 = *(a1 + 8);
          *(a1 + 8) = v26;
          *(a1 + 24) = v27;
        }

        goto LABEL_50;
      }
    }

    else
    {
      if (v16 < v14)
      {
        *a1 = v16;
        *(a1 + 32) = v15;
        v17 = *(a1 + 8);
        *(a1 + 8) = *(a1 + 40);
LABEL_48:
        *(a1 + 40) = v17;
        v14 = v15;
LABEL_50:
        v38 = *(a2 - 16);
        if (v38 < v14)
        {
          *(a1 + 32) = v38;
          *(a2 - 16) = v14;
          v39 = *(a1 + 40);
          *(a1 + 40) = *(a2 - 8);
          *(a2 - 8) = v39;
          v40 = *(a1 + 32);
          v41 = *(a1 + 16);
          if (v40 < v41)
          {
            *(a1 + 16) = v40;
            *(a1 + 32) = v41;
            v42 = *(a1 + 24);
            v43 = *(a1 + 40);
            *(a1 + 24) = v43;
            *(a1 + 40) = v42;
            v44 = *a1;
            if (v40 < *a1)
            {
              *a1 = v40;
              *(a1 + 16) = v44;
              v45 = *(a1 + 8);
              *(a1 + 8) = v43;
              *(a1 + 24) = v45;
            }
          }
        }

        return 1;
      }

      *a1 = v14;
      *(a1 + 16) = v15;
      v17 = *(a1 + 8);
      *(a1 + 8) = *(a1 + 24);
      *(a1 + 24) = v17;
      if (v16 < v15)
      {
        *(a1 + 16) = v16;
        *(a1 + 32) = v15;
        *(a1 + 24) = *(a1 + 40);
        goto LABEL_48;
      }
    }

    v14 = v16;
    goto LABEL_50;
  }

  if (v2 < 2)
  {
    return 1;
  }

  if (v2 == 2)
  {
    v3 = *(a2 - 16);
    v4 = *a1;
    if (v3 < *a1)
    {
      *a1 = v3;
      *(a2 - 16) = v4;
      goto LABEL_13;
    }

    return 1;
  }

LABEL_15:
  v9 = (a1 + 32);
  v10 = *(a1 + 32);
  v11 = *(a1 + 16);
  v12 = *a1;
  if (v11 >= *a1)
  {
    if (v10 < v11)
    {
      *(a1 + 16) = v10;
      *(a1 + 32) = v11;
      v22 = *(a1 + 24);
      v23 = *(a1 + 40);
      *(a1 + 24) = v23;
      *(a1 + 40) = v22;
      if (v10 < v12)
      {
        *a1 = v10;
        *(a1 + 16) = v12;
        v24 = *(a1 + 8);
        *(a1 + 8) = v23;
        *(a1 + 24) = v24;
      }
    }
  }

  else
  {
    if (v10 >= v11)
    {
      *a1 = v11;
      *(a1 + 16) = v12;
      v13 = *(a1 + 8);
      *(a1 + 8) = *(a1 + 24);
      *(a1 + 24) = v13;
      if (v10 >= v12)
      {
        goto LABEL_35;
      }

      *(a1 + 16) = v10;
      *(a1 + 32) = v12;
      *(a1 + 24) = *(a1 + 40);
    }

    else
    {
      *a1 = v10;
      *(a1 + 32) = v12;
      v13 = *(a1 + 8);
      *(a1 + 8) = *(a1 + 40);
    }

    *(a1 + 40) = v13;
  }

LABEL_35:
  v29 = a1 + 48;
  if (a1 + 48 == a2)
  {
    return 1;
  }

  v30 = 0;
  v31 = 0;
  while (1)
  {
    v32 = *v29;
    v33 = *v9;
    if (*v29 < *v9)
    {
      v34 = *(v29 + 8);
      v35 = v30;
      while (1)
      {
        v36 = a1 + v35;
        *(v36 + 48) = v33;
        *(v36 + 56) = *(a1 + v35 + 40);
        if (v35 == -32)
        {
          break;
        }

        v33 = *(v36 + 16);
        v35 -= 16;
        if (v32 >= v33)
        {
          v37 = a1 + v35 + 48;
          goto LABEL_43;
        }
      }

      v37 = a1;
LABEL_43:
      *v37 = v32;
      *(v37 + 8) = v34;
      if (++v31 == 8)
      {
        return v29 + 16 == a2;
      }
    }

    v9 = v29;
    v30 += 16;
    v29 += 16;
    if (v29 == a2)
    {
      return 1;
    }
  }
}

char *std::vector<std::pair<CGRect,unsigned long>>::__assign_with_size[abi:nn200100]<std::pair<CGRect,unsigned long>*,std::pair<CGRect,unsigned long>*>(char **a1, uint64_t a2, __int128 *a3, unint64_t a4)
{
  v5 = a2;
  v7 = a1[2];
  result = *a1;
  if (0xCCCCCCCCCCCCCCCDLL * ((v7 - result) >> 3) < a4)
  {
    if (result)
    {
      a1[1] = result;
      operator delete(result);
      v7 = 0;
      *a1 = 0;
      a1[1] = 0;
      a1[2] = 0;
    }

    if (a4 <= 0x666666666666666)
    {
      v9 = 0xCCCCCCCCCCCCCCCDLL * (v7 >> 3);
      v10 = 2 * v9;
      if (2 * v9 <= a4)
      {
        v10 = a4;
      }

      if (v9 >= 0x333333333333333)
      {
        v11 = 0x666666666666666;
      }

      else
      {
        v11 = v10;
      }

      std::vector<std::pair<CGRect,unsigned long>>::__vallocate[abi:nn200100](a1, v11);
    }

    std::vector<CI::SWRendererFunctionInputNode>::__throw_length_error[abi:nn200100]();
  }

  v12 = a1[1];
  if (0xCCCCCCCCCCCCCCCDLL * ((v12 - result) >> 3) >= a4)
  {
    while (v5 != a3)
    {
      v19 = *(v5 + 16);
      *result = *v5;
      *(result + 1) = v19;
      *(result + 4) = *(v5 + 32);
      v5 += 40;
      result += 40;
    }

    a1[1] = result;
  }

  else
  {
    v13 = (a2 + v12 - result);
    if (v12 != result)
    {
      do
      {
        v14 = *(v5 + 16);
        *result = *v5;
        *(result + 1) = v14;
        *(result + 4) = *(v5 + 32);
        v5 += 40;
        result += 40;
      }

      while (v5 != v13);
      v12 = a1[1];
    }

    v15 = v12;
    if (v13 != a3)
    {
      v15 = v12;
      v16 = v12;
      do
      {
        v17 = *v13;
        v18 = v13[1];
        *(v16 + 4) = *(v13 + 4);
        *v16 = v17;
        *(v16 + 1) = v18;
        v13 = (v13 + 40);
        v16 += 40;
        v15 += 40;
      }

      while (v13 != a3);
    }

    a1[1] = v15;
  }

  return result;
}

void std::vector<std::unique_ptr<CI::TileTask,CI::ObjectDeleter<CI::TileTask>>>::__destroy_vector::operator()[abi:nn200100](void ***a1)
{
  v2 = *a1;
  if (*v2)
  {
    std::vector<std::unique_ptr<CI::TileTask,CI::ObjectDeleter<CI::TileTask>>>::clear[abi:nn200100](v2);
    v3 = **a1;

    operator delete(v3);
  }
}

void std::vector<std::unique_ptr<CI::TileTask,CI::ObjectDeleter<CI::TileTask>>>::clear[abi:nn200100](void *a1)
{
  v2 = *a1;
  v3 = a1[1];
  while (v3 != v2)
  {
    v5 = *--v3;
    v4 = v5;
    *v3 = 0;
    if (v5)
    {
      CI::Object::unref(v4);
    }
  }

  a1[1] = v2;
}

uint64_t std::__split_buffer<std::unique_ptr<CI::TileTask,CI::ObjectDeleter<CI::TileTask>>>::~__split_buffer(uint64_t a1)
{
  std::__split_buffer<std::unique_ptr<CI::TileTask,CI::ObjectDeleter<CI::TileTask>>>::__destruct_at_end[abi:nn200100](a1, *(a1 + 8));
  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

void std::__split_buffer<std::unique_ptr<CI::TileTask,CI::ObjectDeleter<CI::TileTask>>>::__destruct_at_end[abi:nn200100](uint64_t a1, void *a2)
{
  v2 = *(a1 + 16);
  while (v2 != a2)
  {
    v6 = *--v2;
    v5 = v6;
    *(a1 + 16) = v2;
    *v2 = 0;
    if (v6)
    {
      CI::Object::unref(v5);
      v2 = *(a1 + 16);
    }
  }
}

uint64_t std::__hash_table<std::__hash_value_type<CI::ProgramNode *,CI::CGRectArray>,std::__unordered_map_hasher<CI::ProgramNode *,std::__hash_value_type<CI::ProgramNode *,CI::CGRectArray>,std::hash<CI::ProgramNode *>,std::equal_to<CI::ProgramNode *>,true>,std::__unordered_map_equal<CI::ProgramNode *,std::__hash_value_type<CI::ProgramNode *,CI::CGRectArray>,std::equal_to<CI::ProgramNode *>,std::hash<CI::ProgramNode *>,true>,std::allocator<std::__hash_value_type<CI::ProgramNode *,CI::CGRectArray>>>::~__hash_table(uint64_t a1)
{
  std::__hash_table<std::__hash_value_type<CI::ProgramNode *,CI::CGRectArray>,std::__unordered_map_hasher<CI::ProgramNode *,std::__hash_value_type<CI::ProgramNode *,CI::CGRectArray>,std::hash<CI::ProgramNode *>,std::equal_to<CI::ProgramNode *>,true>,std::__unordered_map_equal<CI::ProgramNode *,std::__hash_value_type<CI::ProgramNode *,CI::CGRectArray>,std::equal_to<CI::ProgramNode *>,std::hash<CI::ProgramNode *>,true>,std::allocator<std::__hash_value_type<CI::ProgramNode *,CI::CGRectArray>>>::__deallocate_node(a1, *(a1 + 16));
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    operator delete(v2);
  }

  return a1;
}

void std::__hash_table<std::__hash_value_type<CI::ProgramNode *,CI::CGRectArray>,std::__unordered_map_hasher<CI::ProgramNode *,std::__hash_value_type<CI::ProgramNode *,CI::CGRectArray>,std::hash<CI::ProgramNode *>,std::equal_to<CI::ProgramNode *>,true>,std::__unordered_map_equal<CI::ProgramNode *,std::__hash_value_type<CI::ProgramNode *,CI::CGRectArray>,std::equal_to<CI::ProgramNode *>,std::hash<CI::ProgramNode *>,true>,std::allocator<std::__hash_value_type<CI::ProgramNode *,CI::CGRectArray>>>::__deallocate_node(int a1, void *__p)
{
  if (__p)
  {
    v2 = __p;
    do
    {
      v3 = *v2;
      v4 = v2[3];
      if (v4)
      {
        v2[4] = v4;
        operator delete(v4);
      }

      operator delete(v2);
      v2 = v3;
    }

    while (v3);
  }
}

uint64_t *std::__hash_table<std::__hash_value_type<CI::NodeIndex,CI::Node::NodeStats>,std::__unordered_map_hasher<CI::NodeIndex,std::__hash_value_type<CI::NodeIndex,CI::Node::NodeStats>,std::hash<CI::NodeIndex>,std::equal_to<CI::NodeIndex>,true>,std::__unordered_map_equal<CI::NodeIndex,std::__hash_value_type<CI::NodeIndex,CI::Node::NodeStats>,std::equal_to<CI::NodeIndex>,std::hash<CI::NodeIndex>,true>,std::allocator<std::__hash_value_type<CI::NodeIndex,CI::Node::NodeStats>>>::__emplace_unique_key_args<CI::NodeIndex,std::piecewise_construct_t const&,std::tuple<CI::NodeIndex const&>,std::tuple<>>(void *a1, unsigned int *a2)
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
    if (*&v3 <= v2)
    {
      v5 = v2 % v3.i32[0];
    }
  }

  else
  {
    v5 = (v3.i32[0] - 1) & v2;
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

  if (*(v7 + 4) != v2)
  {
    goto LABEL_17;
  }

  return v7;
}

void *std::__hash_table<std::__hash_value_type<CI::ProgramNode *,CI::CGRectArray>,std::__unordered_map_hasher<CI::ProgramNode *,std::__hash_value_type<CI::ProgramNode *,CI::CGRectArray>,std::hash<CI::ProgramNode *>,std::equal_to<CI::ProgramNode *>,true>,std::__unordered_map_equal<CI::ProgramNode *,std::__hash_value_type<CI::ProgramNode *,CI::CGRectArray>,std::equal_to<CI::ProgramNode *>,std::hash<CI::ProgramNode *>,true>,std::allocator<std::__hash_value_type<CI::ProgramNode *,CI::CGRectArray>>>::__emplace_unique_key_args<CI::ProgramNode *,std::piecewise_construct_t const&,std::tuple<CI::ProgramNode * const&>,std::tuple<>>(void *a1, void *a2)
{
  v2 = 0x9DDFEA08EB382D69 * ((8 * (*a2 & 0x1FFFFFFFLL) + 8) ^ HIDWORD(*a2));
  v3 = 0x9DDFEA08EB382D69 * (HIDWORD(*a2) ^ (v2 >> 47) ^ v2);
  v4 = 0x9DDFEA08EB382D69 * (v3 ^ (v3 >> 47));
  v5 = a1[1];
  if (!*&v5)
  {
    goto LABEL_18;
  }

  v6 = vcnt_s8(v5);
  v6.i16[0] = vaddlv_u8(v6);
  if (v6.u32[0] > 1uLL)
  {
    v7 = 0x9DDFEA08EB382D69 * (v3 ^ (v3 >> 47));
    if (v4 >= *&v5)
    {
      v7 = v4 % *&v5;
    }
  }

  else
  {
    v7 = v4 & (*&v5 - 1);
  }

  v8 = *(*a1 + 8 * v7);
  if (!v8 || (v9 = *v8) == 0)
  {
LABEL_18:
    operator new();
  }

  while (1)
  {
    v10 = v9[1];
    if (v10 == v4)
    {
      break;
    }

    if (v6.u32[0] > 1uLL)
    {
      if (v10 >= *&v5)
      {
        v10 %= *&v5;
      }
    }

    else
    {
      v10 &= *&v5 - 1;
    }

    if (v10 != v7)
    {
      goto LABEL_18;
    }

LABEL_17:
    v9 = *v9;
    if (!v9)
    {
      goto LABEL_18;
    }
  }

  if (v9[2] != *a2)
  {
    goto LABEL_17;
  }

  return v9;
}

uint64_t CI::roiKey::roiKey(uint64_t result, uint64_t a2)
{
  *result = *a2;
  *(result + 8) = *(a2 + 8);
  return result;
}

void CI::TextureManager::TextureManager(CI::TextureManager *this, int a2)
{
  *this = &unk_1F103D010;
  *(this + 2) = a2;
  *(this + 2) = 0;
  *(this + 3) = 0;
  *(this + 4) = this + 32;
  *(this + 5) = this + 32;
  *(this + 6) = 0;
  *(this + 7) = 0;
  *(this + 8) = this + 64;
  *(this + 9) = this + 64;
  *(this + 10) = 0;
  *(this + 11) = dispatch_group_create();
  *(this + 12) = dispatch_queue_create("CI::complete_intermediate", 0);
  v3 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
  v4 = dispatch_queue_create("CI::TextureManager", v3);
  *(this + 16) = 0;
  *(this + 15) = 0;
  *(this + 13) = v4;
  *(this + 14) = this + 120;
  operator new();
}

void CI::TextureManager::~TextureManager(dispatch_queue_t *this)
{
  *this = &unk_1F103D010;
  dispatch_sync(this[13], &__block_literal_global_96);
  v2 = this[7];
  if (v2)
  {
    CFRelease(v2);
  }

  this[7] = 0;
  v3 = this[17];
  if (v3)
  {
    std::__list_imp<CI::attached_surface_t *>::clear(this[17]);
    MEMORY[0x19EAF5590](v3, 0x1020C4062D53EE8);
  }

  this[17] = 0;
  dispatch_release(this[13]);
  dispatch_release(this[11]);
  dispatch_release(this[12]);
  std::__tree<std::__value_type<CI::Node const*,std::multimap<int const,CI::TextureManager::tmIntermediate_t *>>,std::__map_value_compare<CI::Node const*,std::__value_type<CI::Node const*,std::multimap<int const,CI::TextureManager::tmIntermediate_t *>>,std::less<CI::Node const*>,true>,std::allocator<std::__value_type<CI::Node const*,std::multimap<int const,CI::TextureManager::tmIntermediate_t *>>>>::destroy((this + 18), this[19]);
  std::__tree<std::__value_type<unsigned long long,CI::DAGHelper::ImageArgInfo>,std::__map_value_compare<unsigned long long,std::__value_type<unsigned long long,CI::DAGHelper::ImageArgInfo>,std::less<unsigned long long>,true>,std::allocator<std::__value_type<unsigned long long,CI::DAGHelper::ImageArgInfo>>>::destroy((this + 14), this[15]);
  std::__list_imp<CI::attached_surface_t *>::clear(this + 8);
  std::__list_imp<CI::attached_surface_t *>::clear(this + 4);
}

__IOSurface *CI::TextureManager::get_empty_surface(CI::TextureManager *this)
{
  result = *(this + 7);
  if (!result)
  {
    result = CreateSurface(1, 1uLL, 0x10uLL, 1111970369, 1);
    *(this + 7) = result;
    if (!result)
    {
      x_log("TextureManager::TextureManager() failed to create empty surface\n");
      return *(this + 7);
    }
  }

  return result;
}

void CI::TextureManager::mark_usage(CI::TextureManager *this, void *a2)
{
  v2 = a2;
  std::list<CI::attached_surface_t *>::remove(this + 32, &v2);
  operator new();
}

void CI::TextureManager::append_to_lru(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = *(a1 + 104);
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 0x40000000;
  block[2] = ___ZN2CI14TextureManager13append_to_lruEPvPNS_13source_info_tE_block_invoke;
  block[3] = &__block_descriptor_tmp_4_7;
  block[4] = a1;
  block[5] = a2;
  block[6] = a3;
  dispatch_sync(v3, block);
}

void ___ZN2CI14TextureManager13append_to_lruEPvPNS_13source_info_tE_block_invoke(uint64_t a1)
{
  v2 = *(a1 + 40);
  if (v2)
  {
    v3 = *(*(a1 + 48) + 16);
    if (v3 > 1)
    {
      if (v3 == 2)
      {
        CFRetain(v2);
      }

      else if (v3 == 4)
      {
        RetainSurfaceFromCache(v2);
      }
    }

    else if (v3)
    {
      if (v3 == 1)
      {
        CGImageRetain(v2);
      }
    }

    else
    {
      CI::Object::ref(v2);
    }
  }

  operator new();
}

void CI::TextureManager::remove_lru(CI::TextureManager *this, void *a2)
{
  v4 = this + 32;
    ;
  }

  if (i != v4)
  {
    v6 = *(this + 15);
    if (!v6)
    {
      goto LABEL_14;
    }

    v7 = (this + 120);
    do
    {
      v8 = *(v6 + 32);
      v9 = v8 >= a2;
      v10 = v8 < a2;
      if (v9)
      {
        v7 = v6;
      }

      v6 = *(v6 + 8 * v10);
    }

    while (v6);
    if (v7 != (this + 120) && v7[4] <= a2)
    {
      v11 = v7[5];
      v12 = v11[5];
      if (!v12)
      {
        v17 = ci_logger_render();
        if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
        {
          CI::TextureManager::remove_lru(v17);
        }

        abort();
      }

      v13 = v12 - 1;
      v11[5] = v13;
      if (!v13)
      {
        v15 = *i;
        v14 = *(i + 1);
        *(v15 + 8) = v14;
        *v14 = v15;
        --*(this + 6);
        operator delete(i);
        std::__tree<std::__value_type<unsigned long long,CI::DAGHelper::TextureReadFunction>,std::__map_value_compare<unsigned long long,std::__value_type<unsigned long long,CI::DAGHelper::TextureReadFunction>,std::less<unsigned long long>,true>,std::allocator<std::__value_type<unsigned long long,CI::DAGHelper::TextureReadFunction>>>::__remove_node_pointer(this + 14, v7);
        operator delete(v7);
        v18 = *v11;
        (**this)(this, &v18);
        v18 = 0uLL;
        if (a2)
        {
          v16 = v11[4];
          if (v16 > 1)
          {
            if (v16 == 2)
            {
              CFRelease(a2);
            }

            else if (v16 == 4)
            {
              ReturnSurfaceToCache(a2);
            }
          }

          else if (v16)
          {
            if (v16 == 1)
            {
              CGImageRelease(a2);
            }
          }

          else
          {
            CI::Object::unref(a2);
          }
        }

        free(v11);
      }
    }

    else
    {
LABEL_14:

      x_log("TextureManager::remove_lru() did not find an info struct!\n");
    }
  }
}

void CI::TextureManager::remove_all(CI::TextureManager *this)
{
  v1 = *(this + 13);
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 0x40000000;
  block[2] = ___ZN2CI14TextureManager10remove_allEv_block_invoke;
  block[3] = &__block_descriptor_tmp_6_7;
  block[4] = this;
  dispatch_sync(v1, block);
}

void ___ZN2CI14TextureManager10remove_allEv_block_invoke(uint64_t a1)
{
    ;
  }
}

uint64_t CI::TextureManager::_lookup_texture(CI::TextureManager *this, void *a2)
{
  v2 = *(this + 15);
  if (!v2)
  {
    return 0;
  }

  v3 = (this + 120);
  do
  {
    v4 = v2[4];
    v5 = v4 >= a2;
    v6 = v4 < a2;
    if (v5)
    {
      v3 = v2;
    }

    v2 = v2[v6];
  }

  while (v2);
  if (v3 == (this + 120) || v3[4] > a2)
  {
    return 0;
  }

  v7 = v3[5];
  if (v7)
  {
    CI::TextureManager::mark_usage(this, a2);
  }

  return v7;
}

uint64_t CI::TextureManager::lookup_texture(CI::TextureManager *this, void *a2)
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x2000000000;
  v9 = 0;
  v2 = *(this + 13);
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 0x40000000;
  block[2] = ___ZN2CI14TextureManager14lookup_textureEPv_block_invoke;
  block[3] = &unk_1E75C88A8;
  block[4] = &v6;
  block[5] = this;
  block[6] = a2;
  dispatch_sync(v2, block);
  v3 = v7[3];
  _Block_object_dispose(&v6, 8);
  return v3;
}

uint64_t ___ZN2CI14TextureManager14lookup_textureEPv_block_invoke(uint64_t a1)
{
  result = CI::TextureManager::_lookup_texture(*(a1 + 40), *(a1 + 48));
  *(*(*(a1 + 32) + 8) + 24) = result;
  return result;
}

uint64_t CI::TextureManager::_find_match_for_surface(CI::TextureManager *this, IOSurfaceRef buffer, CGSize a3)
{
  v4 = *(this + 17);
  if (v4)
  {
    v5 = *(v4 + 8);
    if (v5 != v4)
    {
      height = a3.height;
      width = a3.width;
      do
      {
        v9 = *(v5 + 16);
        v17 = v9;
        if (v9[8] <= 1uLL)
        {
          ID = IOSurfaceGetID(buffer);
          v11 = (**v9)(v9);
          if (IOSurfaceGetID(v11) == ID)
          {
            v12 = (*(*v9 + 32))(v9);
            if (width == *(v12 + 16) && height == *(v12 + 24))
            {
              v16 = (**v9)(v9);
              CFGetRetainCount(v16);
              std::list<CI::attached_surface_t *>::remove(*(this + 17), &v17);
              operator new();
            }
          }
        }

        v5 = *(v5 + 8);
      }

      while (v5 != v4);
    }
  }

  ++*(this + 3);
  if (CI_LOG_TEXTURE_CACHE())
  {
    v14 = *(this + 17);
    if (v14)
    {
      v14 = *(v14 + 16);
    }

    x_log("TextureCache Missed: context:%u count:%lu hits:%zu misses:%zu\n\n", *(this + 2), v14, *(this + 2), *(this + 3));
  }

  return 0;
}

uint64_t CI::TextureManager::_release_intermediate(uint64_t a1, uint64_t a2)
{
  v5 = a2;
  (*(*a2 + 24))(v4, a2);
  (**a1)(a1, v4);
  v4[0] = 0;
  v4[1] = 0;
  std::list<CI::attached_surface_t *>::remove(*(a1 + 136), &v5);
  result = v5;
  if (v5)
  {
    return (*(*v5 + 48))(v5);
  }

  return result;
}

void CI::TextureManager::purge_intermediates(CI::TextureManager *this)
{
  v1 = *(this + 13);
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 0x40000000;
  block[2] = ___ZN2CI14TextureManager19purge_intermediatesEm_block_invoke;
  block[3] = &__block_descriptor_tmp_10_3;
  block[4] = this;
  dispatch_sync(v1, block);
}

uint64_t ___ZN2CI14TextureManager19purge_intermediatesEm_block_invoke(uint64_t result)
{
  v1 = *(*(result + 32) + 136);
  for (i = *(v1 + 8); i != v1; i = *(i + 8))
  {
    result = (*(**(i + 16) + 16))(*(i + 16));
  }

  return result;
}

uint64_t CI::TextureManager::add_intermediate_for_node(uint64_t a1, void *a2, uint64_t a3)
{
  v3 = 0;
  v8 = 0;
  v9 = &v8;
  v7[0] = 0;
  v7[1] = v7;
  v10 = 0x2000000000;
  v11 = 0;
  v7[2] = 0x2000000000;
  v7[3] = a3;
  if (a3 && *a2)
  {
    v4 = *(a1 + 104);
    v6[0] = MEMORY[0x1E69E9820];
    v6[1] = 0x40000000;
    v6[2] = ___ZN2CI14TextureManager25add_intermediate_for_nodeERKNS_6roiKeyEPNS_14intermediate_tE_block_invoke;
    v6[3] = &unk_1E75C88F0;
    v6[6] = a1;
    v6[7] = a2;
    v6[4] = v7;
    v6[5] = &v8;
    dispatch_sync(v4, v6);
    v3 = v9[3];
  }

  _Block_object_dispose(v7, 8);
  _Block_object_dispose(&v8, 8);
  return v3;
}

uint64_t CI::TextureManager::get_intermediate_for_node(uint64_t a1, uint64_t a2)
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x2000000000;
  v9 = 0;
  v2 = *(a1 + 104);
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 0x40000000;
  block[2] = ___ZNK2CI14TextureManager25get_intermediate_for_nodeERKNS_6roiKeyE_block_invoke;
  block[3] = &unk_1E75C8918;
  block[5] = a1;
  block[6] = a2;
  block[4] = &v6;
  dispatch_sync(v2, block);
  v3 = v7[3];
  _Block_object_dispose(&v6, 8);
  return v3;
}

unint64_t ___ZNK2CI14TextureManager25get_intermediate_for_nodeERKNS_6roiKeyE_block_invoke(unint64_t result)
{
  v1 = *(result + 40);
  v4 = *(v1 + 152);
  v2 = v1 + 152;
  v3 = v4;
  if (v4)
  {
    v5 = result;
    v6 = *(result + 48);
    result = *v6;
    v7 = v2;
    do
    {
      v8 = *(v3 + 32);
      v9 = v8 >= result;
      v10 = v8 < result;
      if (v9)
      {
        v7 = v3;
      }

      v3 = *(v3 + 8 * v10);
    }

    while (v3);
    if (v7 != v2 && result >= *(v7 + 32))
    {
      v13 = *(v7 + 48);
      v11 = v7 + 48;
      v12 = v13;
      if (v13)
      {
        v14 = *(v6 + 8);
        v15 = v11;
        do
        {
          if (*(v12 + 32) >= v14)
          {
            v15 = v12;
          }

          v12 = *(v12 + 8 * (*(v12 + 32) < v14));
        }

        while (v12);
        if (v15 != v11 && v14 >= *(v15 + 32))
        {
          v16.origin.x = CI::Node::roi(result, v14);
          result = CGRectIsInfinite(v16);
          *(*(*(v5 + 4) + 8) + 24) = *(v15 + 40);
        }
      }
    }
  }

  return result;
}

void CI::TextureManager::complete_intermediate(uint64_t a1, int a2, uint64_t a3)
{
  if (a3)
  {
    v3 = *(a1 + 104);
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 0x40000000;
    block[2] = ___ZN2CI14TextureManager21complete_intermediateENS_4TypeEPNS_14intermediate_tE_block_invoke;
    block[3] = &__block_descriptor_tmp_13_4;
    block[4] = a1;
    block[5] = a3;
    v5 = a2;
    dispatch_sync(v3, block);
  }
}

uint64_t ___ZN2CI14TextureManager21complete_intermediateENS_4TypeEPNS_14intermediate_tE_block_invoke(uint64_t a1)
{
  v3 = *(a1 + 32);
  v2 = *(a1 + 40);
  --*(v2 + 64);
  v4 = (**v2)(v2);
  ReturnSurfaceToCache(v4);
  result = (*(**(a1 + 40) + 16))(*(a1 + 40));
  if (!result)
  {
    if ((*(**(a1 + 40) + 64))(*(a1 + 40)))
    {
      v6 = (***(a1 + 40))(*(a1 + 40));
      ReturnSurfaceToCache(v6);
    }

    v7 = *(a1 + 40);
    if (*(a1 + 48) == 60)
    {
      v8 = *(*v3 + 16);

      return v8(v3, v7);
    }

    else
    {

      return CI::TextureManager::_release_intermediate(v3, v7);
    }
  }

  return result;
}

uint64_t CI::TextureManager::releaseDeepIntermediate(CI::TextureManager *this)
{
  v12 = 0;
  v13 = &v12;
  v14 = 0x2000000000;
  v15 = 0;
  v8 = 0;
  v9 = &v8;
  v10 = 0x2000000000;
  v11 = 0;
  v2 = *(this + 13);
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 0x40000000;
  v7[2] = ___ZN2CI14TextureManager23releaseDeepIntermediateEv_block_invoke;
  v7[3] = &unk_1E75C8960;
  v7[5] = &v8;
  v7[6] = this;
  v7[4] = &v12;
  dispatch_sync(v2, v7);
  v3 = v13[3];
  if (v3)
  {
    v4 = *(this + 13);
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 0x40000000;
    block[2] = ___ZN2CI14TextureManager21complete_intermediateENS_4TypeEPNS_14intermediate_tE_block_invoke;
    block[3] = &__block_descriptor_tmp_13_4;
    block[4] = this;
    block[5] = v3;
    v17 = 60;
    dispatch_sync(v4, block);
  }

  v5 = v9[3];
  _Block_object_dispose(&v8, 8);
  _Block_object_dispose(&v12, 8);
  return v5;
}

void ___ZN2CI14TextureManager23releaseDeepIntermediateEv_block_invoke(void *a1)
{
  v1 = a1[6];
  v2 = v1[18];
  if (v2 == v1 + 19)
  {
    return;
  }

  while (1)
  {
    v4 = v2[5];
    if (v4 != v2 + 6)
    {
      break;
    }

LABEL_26:
    v18 = v2[1];
    if (v18)
    {
      do
      {
        v19 = v18;
        v18 = *v18;
      }

      while (v18);
    }

    else
    {
      do
      {
        v19 = v2[2];
        v8 = *v19 == v2;
        v2 = v19;
      }

      while (!v8);
    }

    v2 = v19;
    if (v19 == v1 + 19)
    {
      return;
    }
  }

  while (1)
  {
    if ((*(*v4[5] + 16))(v4[5]) >= 2)
    {
      v5 = (*(*v2[4] + 16))(v2[4]);
      if ((CI::is_image_type(v5) & 1) == 0)
      {
        break;
      }
    }

LABEL_20:
    v16 = v4[1];
    if (v16)
    {
      do
      {
        v17 = v16;
        v16 = *v16;
      }

      while (v16);
    }

    else
    {
      do
      {
        v17 = v4[2];
        v8 = *v17 == v4;
        v4 = v17;
      }

      while (!v8);
    }

    v4 = v17;
    if (v17 == v2 + 6)
    {
      goto LABEL_26;
    }
  }

  v6 = v2[4];
  v7 = v1 + 8;
  while (1)
  {
    v7 = v7[1];
    if (v7 == v1 + 8)
    {
      break;
    }

    v8 = v6 == v7[2] && *(v4 + 8) == *(v7 + 6);
    if (v8)
    {
      goto LABEL_20;
    }
  }

  v9 = CI::Node::rois(v6);
  memset(v26, 0, sizeof(v26));
  std::vector<CI::SerialRectArray::roiData>::__init_with_size[abi:nn200100]<CI::SerialRectArray::roiData*,CI::SerialRectArray::roiData*>(v26, *v9, v9[1], 0xEEEEEEEEEEEEEEEFLL * ((v9[1] - *v9) >> 3));
  v10 = (v26[0] + 120 * *(v4 + 8));
  v11 = v10[12];
  v12 = v10[13];
  if (v11 != v12)
  {
    v13 = 0;
    do
    {
      v15 = *v11++;
      v14 = v15;
      if (v13 <= v15)
      {
        v13 = v14;
      }
    }

    while (v11 != v12);
    if (v13)
    {
      v27 = v26;
      std::vector<CI::SerialRectArray::roiData>::__destroy_vector::operator()[abi:nn200100](&v27);
      goto LABEL_20;
    }
  }

  *(*(a1[4] + 8) + 24) = v4[5];
  v20 = v10[5] - v10[4];
  if (!v20)
  {
    goto LABEL_39;
  }

  v21 = 0xAAAAAAAAAAAAAAABLL * (v20 >> 4);
  v22 = v21 <= 1 ? 1 : v21;
  do
  {
    v23 = *(*(a1[4] + 8) + 24);
    v24 = (**v23)(v23);
    *(*(a1[5] + 8) + 24) = IOSurfaceGetAllocSize(v24);
    v27 = v4;
    v25 = (*(*v1 + 24))(v1, &v27, v2 + 5);
    --v22;
  }

  while (v22);
  if ((v25 & 1) == 0)
  {
LABEL_39:
    x_log("releaseDeepIntermediate did not release.\n");
  }

  v27 = v26;
  std::vector<CI::SerialRectArray::roiData>::__destroy_vector::operator()[abi:nn200100](&v27);
}

BOOL CI::TextureManager::_release_intermediate_for_node(uint64_t a1, uint64_t **a2, uint64_t **a3)
{
  v5 = (**(*a2)[5])((*a2)[5]);
  if (v5)
  {
    ReturnSurfaceToCache(v5);
  }

  v6 = (*a2)[5];
  --v6[8];
  v7 = (*(*v6 + 16))(v6);
  if (v7 == 1)
  {
    v8 = *a2;
    std::__tree<std::__value_type<unsigned long long,CI::DAGHelper::TextureReadFunction>,std::__map_value_compare<unsigned long long,std::__value_type<unsigned long long,CI::DAGHelper::TextureReadFunction>,std::less<unsigned long long>,true>,std::allocator<std::__value_type<unsigned long long,CI::DAGHelper::TextureReadFunction>>>::__remove_node_pointer(a3, v8);
    operator delete(v8);
  }

  return v7 == 1;
}

uint64_t CI::TextureManager::release_intermediate_for_node(uint64_t a1, uint64_t *a2)
{
  v2 = *a2;
  v7 = 0;
  v8 = &v7;
  v9 = 0x2000000000;
  v10 = 0;
  v3 = *(a1 + 104);
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 0x40000000;
  v6[2] = ___ZN2CI14TextureManager29release_intermediate_for_nodeERKNS_6roiKeyEb_block_invoke;
  v6[3] = &unk_1E75C8988;
  v6[6] = v2;
  v6[7] = a2;
  v6[4] = &v7;
  v6[5] = a1;
  dispatch_sync(v3, v6);
  v4 = v8[3];
  _Block_object_dispose(&v7, 8);
  return v4;
}

uint64_t *___ZN2CI14TextureManager29release_intermediate_for_nodeERKNS_6roiKeyEb_block_invoke(uint64_t *result)
{
  v1 = result[5];
  v2 = *(v1 + 152);
  if (v2)
  {
    v3 = result[6];
    v4 = (v1 + 152);
    do
    {
      v5 = v2[4];
      v6 = v5 >= v3;
      v7 = v5 < v3;
      if (v6)
      {
        v4 = v2;
      }

      v2 = v2[v7];
    }

    while (v2);
    if (v4 != (v1 + 152) && v3 >= v4[4])
    {
      v8 = v4[6];
      if (v8)
      {
        v9 = *(result[7] + 8);
        v10 = v4 + 6;
        do
        {
          if (*(v8 + 32) >= v9)
          {
            v10 = v8;
          }

          v8 = *(v8 + 8 * (*(v8 + 32) < v9));
        }

        while (v8);
        if (v10 != v4 + 6 && v9 >= *(v10 + 8))
        {
          *(*(result[4] + 8) + 24) = v10[5];
          v11 = *(*(result[4] + 8) + 24);
          (*(*v11 + 16))(v11);
          v12 = v10;
          result = (*(*v1 + 24))(v1, &v12, v4 + 5);
        }
      }

      if (!v4[7])
      {
        return std::__tree<std::__value_type<CI::Node const*,std::multimap<int const,CI::TextureManager::tmIntermediate_t *>>,std::__map_value_compare<CI::Node const*,std::__value_type<CI::Node const*,std::multimap<int const,CI::TextureManager::tmIntermediate_t *>>,std::less<CI::Node const*>,true>,std::allocator<std::__value_type<CI::Node const*,std::multimap<int const,CI::TextureManager::tmIntermediate_t *>>>>::erase((v1 + 144), v4);
      }
    }
  }

  return result;
}

void CI::TextureManager::add_to_pending(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 104);
  v3[0] = MEMORY[0x1E69E9820];
  v3[1] = 0x40000000;
  v3[2] = ___ZN2CI14TextureManager14add_to_pendingERKNS_6roiKeyE_block_invoke;
  v3[3] = &__block_descriptor_tmp_18_3;
  v3[4] = a1;
  v3[5] = a2;
  dispatch_sync(v2, v3);
}

void CI::TextureManager::remove_from_pending(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 104);
  v3[0] = MEMORY[0x1E69E9820];
  v3[1] = 0x40000000;
  v3[2] = ___ZN2CI14TextureManager19remove_from_pendingERKNS_6roiKeyE_block_invoke;
  v3[3] = &__block_descriptor_tmp_19_5;
  v3[4] = a1;
  v3[5] = a2;
  dispatch_sync(v2, v3);
}

void ___ZN2CI14TextureManager19remove_from_pendingERKNS_6roiKeyE_block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = v2 + 8;
  v4 = v2[9];
  if (v4 != v2 + 8)
  {
    v5 = *(a1 + 40);
    v6 = *v5;
    v7 = *(v5 + 2);
    while (v6 != *(v4 + 16) || v7 != *(v4 + 24))
    {
      v4 = *(v4 + 8);
      if (v4 == v3)
      {
        goto LABEL_8;
      }
    }

    v3 = v4;
  }

LABEL_8:
  v9 = *v3;
  v8 = v3[1];
  *(v9 + 8) = v8;
  *v8 = v9;
  --v2[10];
  operator delete(v3);
}

uint64_t std::vector<CI::SerialRectArray::roiData>::__init_with_size[abi:nn200100]<CI::SerialRectArray::roiData*,CI::SerialRectArray::roiData*>(uint64_t result, uint64_t a2, uint64_t a3, unint64_t a4)
{
  if (a4)
  {
    std::vector<CI::SerialRectArray::roiData>::__vallocate[abi:nn200100](result, a4);
  }

  return result;
}

void std::__tree<std::__value_type<CI::Node const*,std::multimap<int const,CI::TextureManager::tmIntermediate_t *>>,std::__map_value_compare<CI::Node const*,std::__value_type<CI::Node const*,std::multimap<int const,CI::TextureManager::tmIntermediate_t *>>,std::less<CI::Node const*>,true>,std::allocator<std::__value_type<CI::Node const*,std::multimap<int const,CI::TextureManager::tmIntermediate_t *>>>>::destroy(uint64_t a1, void *a2)
{
  if (a2)
  {
    std::__tree<std::__value_type<CI::Node const*,std::multimap<int const,CI::TextureManager::tmIntermediate_t *>>,std::__map_value_compare<CI::Node const*,std::__value_type<CI::Node const*,std::multimap<int const,CI::TextureManager::tmIntermediate_t *>>,std::less<CI::Node const*>,true>,std::allocator<std::__value_type<CI::Node const*,std::multimap<int const,CI::TextureManager::tmIntermediate_t *>>>>::destroy(a1, *a2);
    std::__tree<std::__value_type<CI::Node const*,std::multimap<int const,CI::TextureManager::tmIntermediate_t *>>,std::__map_value_compare<CI::Node const*,std::__value_type<CI::Node const*,std::multimap<int const,CI::TextureManager::tmIntermediate_t *>>,std::less<CI::Node const*>,true>,std::allocator<std::__value_type<CI::Node const*,std::multimap<int const,CI::TextureManager::tmIntermediate_t *>>>>::destroy(a1, a2[1]);
    std::__tree<std::__value_type<unsigned long long,CI::DAGHelper::ImageArgInfo>,std::__map_value_compare<unsigned long long,std::__value_type<unsigned long long,CI::DAGHelper::ImageArgInfo>,std::less<unsigned long long>,true>,std::allocator<std::__value_type<unsigned long long,CI::DAGHelper::ImageArgInfo>>>::destroy((a2 + 5), a2[6]);

    operator delete(a2);
  }
}

void *std::__tree<std::__value_type<void *,CI::source_info_t *>,std::__map_value_compare<void *,std::__value_type<void *,CI::source_info_t *>,std::less<void *>,true>,std::allocator<std::__value_type<void *,CI::source_info_t *>>>::__emplace_unique_key_args<void *,std::piecewise_construct_t const&,std::tuple<void * const&>,std::tuple<>>(uint64_t a1, unint64_t *a2)
{
  v2 = *(a1 + 8);
  if (!v2)
  {
LABEL_8:
    operator new();
  }

  v3 = *a2;
  while (1)
  {
    while (1)
    {
      v4 = v2;
      v5 = v2[4];
      if (v3 >= v5)
      {
        break;
      }

      v2 = *v4;
      if (!*v4)
      {
        goto LABEL_8;
      }
    }

    if (v5 >= v3)
    {
      return v4;
    }

    v2 = v4[1];
    if (!v2)
    {
      goto LABEL_8;
    }
  }
}

void *std::__tree<std::__value_type<CI::Node const*,std::multimap<int const,CI::TextureManager::tmIntermediate_t *>>,std::__map_value_compare<CI::Node const*,std::__value_type<CI::Node const*,std::multimap<int const,CI::TextureManager::tmIntermediate_t *>>,std::less<CI::Node const*>,true>,std::allocator<std::__value_type<CI::Node const*,std::multimap<int const,CI::TextureManager::tmIntermediate_t *>>>>::__emplace_unique_key_args<CI::Node const*,std::piecewise_construct_t const&,std::tuple<CI::Node const* const&>,std::tuple<>>(uint64_t a1, unint64_t *a2)
{
  v2 = *(a1 + 8);
  if (!v2)
  {
LABEL_8:
    operator new();
  }

  v3 = *a2;
  while (1)
  {
    while (1)
    {
      v4 = v2;
      v5 = v2[4];
      if (v3 >= v5)
      {
        break;
      }

      v2 = *v4;
      if (!*v4)
      {
        goto LABEL_8;
      }
    }

    if (v5 >= v3)
    {
      return v4;
    }

    v2 = v4[1];
    if (!v2)
    {
      goto LABEL_8;
    }
  }
}

uint64_t *std::__tree<std::__value_type<CI::Node const*,std::multimap<int const,CI::TextureManager::tmIntermediate_t *>>,std::__map_value_compare<CI::Node const*,std::__value_type<CI::Node const*,std::multimap<int const,CI::TextureManager::tmIntermediate_t *>>,std::less<CI::Node const*>,true>,std::allocator<std::__value_type<CI::Node const*,std::multimap<int const,CI::TextureManager::tmIntermediate_t *>>>>::erase(uint64_t **a1, uint64_t a2)
{
  v3 = std::__tree<std::__value_type<unsigned long long,CI::DAGHelper::TextureReadFunction>,std::__map_value_compare<unsigned long long,std::__value_type<unsigned long long,CI::DAGHelper::TextureReadFunction>,std::less<unsigned long long>,true>,std::allocator<std::__value_type<unsigned long long,CI::DAGHelper::TextureReadFunction>>>::__remove_node_pointer(a1, a2);
  std::__tree<std::__value_type<unsigned long long,CI::DAGHelper::ImageArgInfo>,std::__map_value_compare<unsigned long long,std::__value_type<unsigned long long,CI::DAGHelper::ImageArgInfo>,std::less<unsigned long long>,true>,std::allocator<std::__value_type<unsigned long long,CI::DAGHelper::ImageArgInfo>>>::destroy(a2 + 40, *(a2 + 48));
  operator delete(a2);
  return v3;
}

CI::TextureSampler *CI::TextureSampler::TextureSampler(CI::TextureSampler *this, CI::Node *a2, int a3)
{
  *this = &unk_1F103C4D0;
  *(this + 2) = 1;
  *(this + 2) = &unk_1F103D100;
  atomic_fetch_add(&dword_1ED7C47BC[66], 1u);
  *this = &unk_1F103D0A0;
  *(this + 2) = &unk_1F103D0D8;
  if (a2)
  {
    v5 = CI::Object::ref(a2);
  }

  else
  {
    v5 = 0;
  }

  *(this + 3) = v5;
  *(this + 8) = a3;
  *(this + 5) = 0x3FF0000000000000;
  *(this + 6) = 0;
  *(this + 7) = 0;
  *(this + 8) = 0x3FF0000000000000;
  *(this + 9) = 0;
  *(this + 10) = 0;
  CI::set_sampler_modes_for_texture(v5, this + 30, this + 31);
  return this;
}

uint64_t CI::set_sampler_modes_for_texture(uint64_t result, int *a2, int *a3)
{
  if (result)
  {
    v5 = result;
    result = (*(*result + 16))(result);
    if (result > 53)
    {
      if (result == 54)
      {
        *a2 = *(v5 + 104) ^ 1;
        v6 = *(v5 + 100);
        goto LABEL_12;
      }

      if (result == 56)
      {
        *a2 = 1;
        v6 = *(v5 + 84);
        goto LABEL_12;
      }
    }

    else
    {
      if (result == 35)
      {
        *a2 = *(v5 + 152) ^ 1;
        v6 = *(v5 + 148);
        goto LABEL_12;
      }

      if (result == 52)
      {
        *a2 = *(v5 + 192) ^ 1;
        v6 = *(v5 + 188);
LABEL_12:
        *a3 = v6;
        return result;
      }
    }

    v6 = 1;
    *a2 = 1;
    goto LABEL_12;
  }

  return result;
}

uint64_t CI::TextureSampler::TextureSampler(uint64_t a1, CI::Object *this, int a3, __int128 *a4, __int128 *a5, int a6, int a7)
{
  *a1 = &unk_1F103C4D0;
  *(a1 + 8) = 1;
  *(a1 + 16) = &unk_1F103D100;
  atomic_fetch_add(&dword_1ED7C47BC[66], 1u);
  *a1 = &unk_1F103D0A0;
  *(a1 + 16) = &unk_1F103D0D8;
  if (this)
  {
    v13 = CI::Object::ref(this);
  }

  else
  {
    v13 = 0;
  }

  *(a1 + 24) = v13;
  *(a1 + 32) = a3;
  v14 = *a4;
  v15 = a4[1];
  *(a1 + 72) = a4[2];
  *(a1 + 56) = v15;
  *(a1 + 40) = v14;
  v16 = *a5;
  *(a1 + 104) = a5[1];
  *(a1 + 88) = v16;
  CI::set_sampler_modes_for_texture(v13, (a1 + 120), (a1 + 124));
  if (a6 != -1)
  {
    *(a1 + 120) = a6;
  }

  if (a7 != -1)
  {
    *(a1 + 124) = a7;
  }

  return a1;
}

void CI::TextureSampler::~TextureSampler(CI::TextureSampler *this)
{
  *this = &unk_1F103D0A0;
  *(this + 2) = &unk_1F103D0D8;
  v2 = *(this + 3);
  if (v2)
  {
    CI::Object::unref(v2);
  }

  *(this + 2) = &unk_1F103D100;
  *(this + 3) = 0;
  atomic_fetch_add(&dword_1ED7C47BC[66], 0xFFFFFFFF);
}

{
  CI::TextureSampler::~TextureSampler(this);

  JUMPOUT(0x19EAF5590);
}

void non-virtual thunk toCI::TextureSampler::~TextureSampler(CI::TextureSampler *this)
{
  CI::TextureSampler::~TextureSampler((this - 16));
}

{
  CI::TextureSampler::~TextureSampler((this - 16));

  JUMPOUT(0x19EAF5590);
}

float64_t CI::TextureSampler::transform@<D0>(CI::TextureSampler *this@<X0>, const CI::Context *a2@<X1>, const CGRect *a3@<X2>, float64x2_t *a4@<X8>)
{
  if (CGRectIsEmpty(*a3))
  {
    result = 0.0;
    a4[1] = 0u;
    a4[2] = 0u;
    *a4 = 0u;
  }

  else
  {
    (*(*a2 + 600))(a2, a3);
    if ((*(**(this + 3) + 16))(*(this + 3)) == 60 && *(*(this + 3) + 149) == 1)
    {
      MidY = CGRectGetMidY(*a3);
      v11 = *a4;
      v10 = a4[1];
      v12 = vmlaq_f64(vnegq_f64(v10), 0, *a4);
      *a4 = vaddq_f64(*a4, vmulq_f64(v10, 0));
      a4[1] = v12;
      a4[2] = vaddq_f64(a4[2], vmlaq_f64(vmulq_n_f64(v10, MidY + MidY), 0, v11));
    }

    *&result = *&CI::Affine::operator*(this + 5, a4, v14);
    if (v14 != a4)
    {
      v13 = v14[1];
      *a4 = v14[0];
      a4[1] = v13;
      result = v15.f64[0];
      a4[2] = v15;
    }
  }

  return result;
}

size_t CI::TextureSampler::print(CI::TextureSampler *this, __sFILE *__stream)
{
  v4 = *(this + 3);
  if (v4)
  {
    v5 = (*(*v4 + 16))(v4);
    v6 = *(this + 3);
    if (v5 == 54)
    {
      v7 = v6[12];
    }

    else
    {
      v7 = 0;
    }

    v8 = (*(*v6 + 16))(v6);
    v9 = *(this + 3);
    if (v8 == 52)
    {
      v7 = v9[12];
    }

    v10 = (*(*v9 + 16))(v9);
    v11 = *(this + 3);
    if (v10 == 35)
    {
      v7 = *(v11 + 48);
    }

    fprintf(__stream, "node%d", *(v11 + 36));
    fprintf(__stream, " child:%d", *(this + 8));
    if (v7)
    {
      CI::name_for_format(v7);
      fprintf(__stream, " %s");
    }
  }

  else
  {
    fwrite("nil", 3uLL, 1uLL, __stream);
    fprintf(__stream, " child:%d");
  }

  v12 = "edge_unknown";
  v14 = *(this + 30);
  v13 = *(this + 31);
  if (v13 == 1)
  {
    v12 = "edge_clamp";
  }

  if (!v13)
  {
    v12 = "edge_black";
  }

  if ((v14 + 1) > 2)
  {
    v15 = "unknown";
  }

  else
  {
    v15 = off_1E75C89E8[v14 + 1];
  }

  fprintf(__stream, " %s %s", v12, v15);
  fwrite(" transform:", 0xBuLL, 1uLL, __stream);
  if (CI::Affine::isIdentity((this + 40)))
  {
    fwrite("identity", 8uLL, 1uLL, __stream);
  }

  else
  {
    fprintf(__stream, "[%g %g %g %g %g %g]", *(this + 5), *(this + 6), *(this + 7), *(this + 8), *(this + 9), *(this + 10));
  }

  fwrite(" extent:", 8uLL, 1uLL, __stream);
  v17 = *(this + 11);
  v18 = *(this + 12);
  v19 = *(this + 13);
  v20 = *(this + 14);

  return CI::fprintf(__stream, v16, *&v17);
}

void *CI::InstanceCounted<(CI::Type)68>::~InstanceCounted(void *result)
{
  *result = &unk_1F103D100;
  atomic_fetch_add(&dword_1ED7C47BC[66], 0xFFFFFFFF);
  return result;
}

void CI::InstanceCounted<(CI::Type)68>::~InstanceCounted(void *a1)
{
  *a1 = &unk_1F103D100;
  atomic_fetch_add(&dword_1ED7C47BC[66], 0xFFFFFFFF);
  JUMPOUT(0x19EAF5590);
}

uint64_t CI::Vector::Vector(uint64_t this, float a2)
{
  *this = &unk_1F103C4D0;
  *(this + 8) = 1;
  *(this + 16) = &unk_1F1033F70;
  atomic_fetch_add(&dword_1ED7C47BC[64], 1u);
  *this = &unk_1F103D128;
  *(this + 16) = &unk_1F103D160;
  *(this + 96) = 0;
  *(this + 32) = 0u;
  *(this + 48) = 0u;
  *(this + 64) = 0u;
  *(this + 76) = 0u;
  *(this + 24) = 1;
  *(this + 28) = a2;
  return this;
}

__n64 CI::Vector::Vector(CI::Vector *this, __n64 result, float a3)
{
  *this = &unk_1F103C4D0;
  *(this + 2) = 1;
  *(this + 2) = &unk_1F1033F70;
  atomic_fetch_add(&dword_1ED7C47BC[64], 1u);
  *this = &unk_1F103D128;
  *(this + 2) = &unk_1F103D160;
  *(this + 2) = 0u;
  *(this + 3) = 0u;
  *(this + 4) = 0u;
  *(this + 76) = 0u;
  *(this + 6) = 2;
  *(this + 7) = result.n64_u32[0];
  *(this + 8) = a3;
  result.n64_f32[1] = a3;
  *(this + 12) = result;
  return result;
}

__n64 CI::Vector::Vector(CI::Vector *this, __n64 result, float a3, float a4)
{
  *this = &unk_1F103C4D0;
  *(this + 2) = 1;
  *(this + 2) = &unk_1F1033F70;
  atomic_fetch_add(&dword_1ED7C47BC[64], 1u);
  *this = &unk_1F103D128;
  *(this + 2) = &unk_1F103D160;
  *(this + 40) = 0u;
  *(this + 56) = 0u;
  *(this + 72) = 0u;
  *(this + 22) = 0;
  *(this + 6) = 3;
  *(this + 7) = result.n64_u32[0];
  *(this + 8) = a3;
  *(this + 9) = a4;
  result.n64_f32[1] = a3;
  *(this + 26) = a4;
  *(this + 12) = result;
  return result;
}

__n128 CI::Vector::Vector(CI::Vector *this, __n128 result, float a3, float a4, float a5)
{
  *this = &unk_1F103C4D0;
  *(this + 2) = 1;
  *(this + 2) = &unk_1F1033F70;
  atomic_fetch_add(&dword_1ED7C47BC[64], 1u);
  *this = &unk_1F103D128;
  *(this + 2) = &unk_1F103D160;
  *(this + 40) = 0u;
  *(this + 56) = 0u;
  *(this + 72) = 0u;
  *(this + 22) = 0;
  *(this + 6) = 4;
  *(this + 7) = result.n128_u32[0];
  *(this + 8) = a3;
  *(this + 9) = a4;
  *(this + 10) = a5;
  result.n128_f32[1] = a3;
  result.n128_u64[1] = __PAIR64__(LODWORD(a5), LODWORD(a4));
  *(this + 6) = result;
  return result;
}

CI::Vector *CI::Vector::Vector(CI::Vector *this, CGRect a2)
{
  height = a2.size.height;
  width = a2.size.width;
  y = a2.origin.y;
  x = a2.origin.x;
  *this = &unk_1F103C4D0;
  *(this + 2) = 1;
  *(this + 2) = &unk_1F1033F70;
  atomic_fetch_add(&dword_1ED7C47BC[64], 1u);
  *this = &unk_1F103D128;
  *(this + 2) = &unk_1F103D160;
  *(this + 12) = 0;
  *(this + 24) = 0u;
  *(this + 40) = 0u;
  *(this + 56) = 0u;
  *(this + 72) = 0u;
  *(this + 22) = 0;
  *(this + 6) = 4;
  IsInfinite = CGRectIsInfinite(a2);
  v4.f64[0] = width;
  v4.f64[1] = height;
  v5.f64[0] = x;
  v5.f64[1] = y;
  v6 = vcvt_hight_f32_f64(vcvt_f32_f64(v5), v4);
  *(this + 28) = vbslq_s8(vcltzq_s32(vshlq_n_s32(vmovl_u16(vdup_n_s16(IsInfinite)), 0x1FuLL)), xmmword_19CF2DE80, v6);
  *(this + 6) = v6;
  return this;
}

CI::Vector *CI::Vector::Vector(CI::Vector *this, CGAffineTransform *a2)
{
  *this = &unk_1F103C4D0;
  *(this + 2) = 1;
  *(this + 2) = &unk_1F1033F70;
  atomic_fetch_add(&dword_1ED7C47BC[64], 1u);
  *this = &unk_1F103D128;
  *(this + 2) = &unk_1F103D160;
  *(this + 12) = 0;
  *(this + 24) = 0u;
  *(this + 56) = 0u;
  *(this + 72) = 0u;
  *(this + 22) = 0;
  *(this + 40) = 0u;
  *(this + 6) = 9;
  b = a2->b;
  *&v4 = a2->a;
  d = a2->d;
  *&v6 = a2->c;
  *(this + 7) = v4;
  *(this + 8) = v6;
  ty = a2->ty;
  *&v8 = a2->tx;
  *&b = b;
  *(this + 9) = v8;
  *(this + 10) = LODWORD(b);
  *&d = d;
  *&ty = ty;
  *(this + 11) = LODWORD(d);
  *(this + 12) = LODWORD(ty);
  *(this + 7) = 0x3F80000000000000;
  *&v11 = __PAIR64__(v6, v4);
  *(&v11 + 1) = __PAIR64__(LODWORD(b), v8);
  v12 = __PAIR64__(LODWORD(ty), LODWORD(d));
  LODWORD(v13) = 1065353216;
  HIDWORD(v13) = mat3::type(&v11);
  v9 = v12;
  *(this + 6) = v11;
  *(this + 7) = v9;
  *(this + 16) = v13;
  return this;
}

uint64_t CI::Vector::Vector(uint64_t a1, double *a2, double a3, double a4, double a5, double a6)
{
  *a1 = &unk_1F103C4D0;
  *(a1 + 8) = 1;
  *(a1 + 16) = &unk_1F1033F70;
  atomic_fetch_add(&dword_1ED7C47BC[64], 1u);
  *a1 = &unk_1F103D128;
  *(a1 + 16) = &unk_1F103D160;
  *(a1 + 96) = 0;
  *(a1 + 24) = 0u;
  *(a1 + 56) = 0u;
  *(a1 + 72) = 0u;
  *(a1 + 88) = 0;
  *(a1 + 40) = 0u;
  *(a1 + 24) = 13;
  v11 = a2[1];
  *&v12 = *a2;
  v13 = a2[3];
  *&v14 = a2[2];
  *(a1 + 28) = v12;
  *(a1 + 32) = v14;
  v15 = a2[5];
  *&v16 = a2[4];
  *&v11 = v11;
  *(a1 + 36) = v16;
  *(a1 + 40) = LODWORD(v11);
  *&v13 = v13;
  *&v15 = v15;
  *(a1 + 44) = LODWORD(v13);
  *(a1 + 48) = LODWORD(v15);
  *(a1 + 56) = 0x3F80000000000000;
  *&v21 = __PAIR64__(v14, v12);
  *(&v21 + 1) = __PAIR64__(LODWORD(v11), v16);
  v22 = __PAIR64__(LODWORD(v15), LODWORD(v13));
  LODWORD(v23) = 1065353216;
  HIDWORD(v23) = mat3::type(&v21);
  v17 = v22;
  *(a1 + 96) = v21;
  *(a1 + 112) = v17;
  *(a1 + 128) = v23;
  v18 = a3;
  *&v17 = a4;
  *(a1 + 64) = v18;
  *(a1 + 68) = v17;
  v19 = a5;
  *&v17 = a6;
  *(a1 + 72) = v19;
  *(a1 + 76) = v17;
  return a1;
}

float CI::Vector::Vector(CI::Vector *this, double *a2, unsigned int a3)
{
  *this = &unk_1F103C4D0;
  *(this + 2) = 1;
  *(this + 2) = &unk_1F1033F70;
  atomic_fetch_add(&dword_1ED7C47BC[64], 1u);
  *this = &unk_1F103D128;
  *(this + 2) = &unk_1F103D160;
  *(this + 12) = 0;
  v3 = 0uLL;
  *(this + 24) = 0u;
  *(this + 40) = 0u;
  if (a3 >= 0x10)
  {
    v4 = 16;
  }

  else
  {
    v4 = a3;
  }

  *(this + 56) = 0uLL;
  *(this + 72) = 0uLL;
  *(this + 22) = 0;
  *(this + 6) = v4;
  if (!a2)
  {
    CI::Vector::Vector();
  }

  if (a3)
  {
    v5 = (this + 28);
    do
    {
      v6 = *a2++;
      *&v3 = v6;
      *v5++ = v3;
      --v4;
    }

    while (v4);
  }

  return *&v3;
}

double CI::Vector::clone(CI::Vector *this, const CI::Vector *a2)
{
  v3 = *(a2 + 6);
  *(this + 6) = v3;
  memcpy(this + 28, a2 + 28, 4 * v3);
  v4 = *(this + 15);
  v5 = *(this + 44);
  v8 = *(this + 28);
  v9 = v5;
  LODWORD(v10) = v4;
  HIDWORD(v10) = mat3::type(&v8);
  result = *&v8;
  v7 = v9;
  *(this + 6) = v8;
  *(this + 7) = v7;
  *(this + 16) = v10;
  return result;
}

float *CI::Vector::copy_to(float *this, float *__dst)
{
  v2 = *(this + 6);
  if (v2 != 9)
  {
    return memcpy(__dst, this + 7, 4 * v2);
  }

  *__dst = this[7];
  __dst[1] = this[8];
  __dst[2] = this[9];
  __dst[3] = 0.0;
  __dst[4] = this[10];
  __dst[5] = this[11];
  __dst[6] = this[12];
  __dst[7] = 0.0;
  __dst[8] = this[13];
  __dst[9] = this[14];
  __dst[10] = this[15];
  __dst[11] = 0.0;
  return this;
}

uint64_t CI::Vector::copy_to(CI::Vector *this, unsigned __int16 *a2)
{
  v3 = *(this + 6);
  if (v3 == 9)
  {
    *&src.height = xmmword_19CF2DEA0;
    src.rowBytes = 4;
    dest.data = a2;
    *&dest.height = xmmword_19CF2DEA0;
    dest.rowBytes = 2;
    src.data = this + 28;
    vImageConvert_PlanarFtoPlanar16F(&src, &dest, 0);
    a2[3] = 0;
    dest.rowBytes = 2;
    src.data = this + 40;
    *&src.height = xmmword_19CF2DEA0;
    src.rowBytes = 4;
    dest.data = a2 + 4;
    *&dest.height = xmmword_19CF2DEA0;
    vImageConvert_PlanarFtoPlanar16F(&src, &dest, 0);
    a2[7] = 0;
    dest.rowBytes = 2;
    src.data = this + 52;
    *&src.height = xmmword_19CF2DEA0;
    src.rowBytes = 4;
    dest.data = a2 + 8;
    *&dest.height = xmmword_19CF2DEA0;
    result = vImageConvert_PlanarFtoPlanar16F(&src, &dest, 0);
    a2[11] = 0;
  }

  else
  {
    src.data = this + 28;
    src.height = v3;
    *&src.width = xmmword_19CF23040;
    dest.data = a2;
    dest.height = v3;
    *&dest.width = xmmword_19CF2DE90;
    return vImageConvert_PlanarFtoPlanar16F(&src, &dest, 0);
  }

  return result;
}

double CI::Vector::affine@<D0>(CI::Vector *this@<X0>, double *a2@<X8>)
{
  result = *(this + 7);
  v3 = *(this + 10);
  v4 = *(this + 8);
  v5 = *(this + 11);
  v6 = *(this + 9);
  v7 = *(this + 12);
  *a2 = result;
  a2[1] = v3;
  a2[2] = v4;
  a2[3] = v5;
  a2[4] = v6;
  a2[5] = v7;
  return result;
}

CFStringRef CI::Vector::description(CI::Vector *this)
{
  v1 = *(this + 6);
  if (v1 > 2)
  {
    if (v1 == 3)
    {
      return CFStringCreateWithFormat(0, 0, @"<CI::Vector %p>[%g %g %g]", this, *(this + 7), *(this + 8), *(this + 9));
    }

    if (v1 != 4)
    {
      if (v1 == 9)
      {
        return CFStringCreateWithFormat(0, 0, @"<CI::Vector %p>[%g %g %g %g %g %g %g %g %g]", this, *(this + 7), *(this + 8), *(this + 9), *(this + 10), *(this + 11), *(this + 12), *(this + 13), *(this + 14), *(this + 15));
      }

      return CFStringCreateWithFormat(0, 0, @"<CI::Vector %p>[%d values]", this, v1);
    }

    return CFStringCreateWithFormat(0, 0, @"<CI::Vector %p>[%g %g %g %g]", this, *(this + 7), *(this + 8), *(this + 9), *(this + 10));
  }

  else
  {
    if (!v1)
    {
      return CFStringCreateWithFormat(0, 0, @"<CI::Vector %p>[]", this);
    }

    if (v1 != 1)
    {
      if (v1 == 2)
      {
        return CFStringCreateWithFormat(0, 0, @"<CI::Vector %p>[%g %g]", this, *(this + 7), *(this + 8));
      }

      return CFStringCreateWithFormat(0, 0, @"<CI::Vector %p>[%d values]", this, v1);
    }

    return CFStringCreateWithFormat(0, 0, @"<CI::Vector %p>[%g]", this, *(this + 7));
  }
}

size_t CI::Vector::print(CI::Vector *this, __sFILE *__stream)
{
  v3 = *(this + 6);
  if (v3)
  {
    if (v3 == 1)
    {
      return fprintf(__stream, "%g", *(this + 7));
    }

    else
    {
      if (v3 >= 1)
      {
        v6 = 0;
        do
        {
          v7 = *(this + v6 + 7);
          if (v7 == 0.0)
          {
            v8 = 0.0;
          }

          else
          {
            v8 = v7;
          }

          if (v6)
          {
            v9 = 32;
          }

          else
          {
            v9 = 91;
          }

          fprintf(__stream, "%c%g", v9, v8);
          ++v6;
        }

        while (v6 < *(this + 6));
      }

      return fputc(93, __stream);
    }
  }

  else
  {

    return fwrite("[]", 2uLL, 1uLL, __stream);
  }
}

void CI::Vector::~Vector(CI::Vector *this)
{
  *(this + 2) = &unk_1F1033F70;
  atomic_fetch_add(&dword_1ED7C47BC[64], 0xFFFFFFFF);
}

{
  *(this + 2) = &unk_1F1033F70;
  atomic_fetch_add(&dword_1ED7C47BC[64], 0xFFFFFFFF);
  JUMPOUT(0x19EAF5590);
}

void non-virtual thunk toCI::Vector::~Vector(CI::Vector *this)
{
  *this = &unk_1F1033F70;
  atomic_fetch_add(&dword_1ED7C47BC[64], 0xFFFFFFFF);
}

{
  *this = &unk_1F1033F70;
  atomic_fetch_add(&dword_1ED7C47BC[64], 0xFFFFFFFF);
  JUMPOUT(0x19EAF5590);
}

uint64_t mat3::type(mat3 *this)
{
  if (mat3::is_identity(this))
  {
    return 2;
  }

  if (*(this + 1) == 0.0 && *(this + 3) == 0.0 && *(this + 6) == 0.0 && *(this + 7) == 0.0)
  {
    return *(this + 8) == 1.0;
  }

  return 0;
}

long double pow_10(long double __x, long double __y)
{
  result = 1.0;
  if (v2 >= 1)
  {
    if (v2 < 0x21)
    {
      v4 = v2;
    }

    else
    {
      do
      {
        result = result * 1.0e32;
        v4 = v2 - 32;
        v5 = v2 > 0x40;
        v2 -= 32;
      }

      while (v5);
    }

    v6 = v4 - 1;
    v7 = &pow_10_up;
    return result * v7[v6];
  }

  if ((v2 & 0x80000000) != 0)
  {
    if (v2 > 0xFFFFFFDF)
    {
      v8 = v2;
    }

    else
    {
      do
      {
        result = result * 1.0e-32;
        v8 = v2 + 32;
        v9 = __CFADD__(v2, 64);
        v2 += 32;
      }

      while (!v9);
    }

    v6 = ~v8;
    v7 = &pow_10_down;
    return result * v7[v6];
  }

  return result;
}

_BYTE *x_dtostr_(_BYTE *a1, unint64_t a2, char a3, double a4, double a5)
{
  v5 = a4;
  if (a5 <= 0.0)
  {
    v6 = 0.000001;
  }

  else
  {
    v6 = a5;
  }

  if (a2 < 8)
  {
    return 0;
  }

  if (a4 >= 0.0)
  {
    v11 = a1;
  }

  else
  {
    *a1 = 45;
    v11 = a1 + 1;
    v5 = -a4;
  }

  v12 = __fpclassifyd(v5);
  switch(v12)
  {
    case 5:
      *v11 = 48;
      return v11 + 1;
    case 2:
      v13 = 6712905;
      goto LABEL_14;
    case 1:
      v13 = 5136718;
LABEL_14:
      *v11 = v13;
      return v11 + 3;
  }

  __e = 0;
  if (v5 <= 0.0)
  {
    __e = 0;
    goto LABEL_24;
  }

  if (v5 >= 0.01 && v5 <= 100.0)
  {
    v17 = 0;
    v21 = v5;
    v19 = v6;
  }

  else
  {
    frexp(v5, &__e);
    v16 = __e * 0.301029996;
    v17 = llround(v16);
    v18 = pow_10(v16, 0.301029996);
    v19 = v6 * v18;
    v21 = v5 * pow_10(v18, v20);
  }

  for (i = v21 + v6 * 0.5; i >= 10.0; i = v21 + v6 * 0.5)
  {
    ++v17;
    v21 = v21 * 0.1;
    v19 = v19 * 10.0;
  }

  if (i < 1.0)
  {
    do
    {
      --v17;
      v21 = v21 * 10.0;
      v19 = v19 * 0.1;
    }

    while (v21 + v6 * 0.5 < 1.0);
  }

  __e = v17;
  if (v17 >= 0)
  {
    v23 = v17;
  }

  else
  {
    v23 = -v17;
  }

  if (v23 > 3)
  {
    v19 = v6;
    v5 = v21;
    goto LABEL_36;
  }

  __e = 0;
  if (v19 >= v6)
  {
LABEL_24:
    v19 = v6;
  }

LABEL_36:
  v24 = &a1[a2];
  v25 = v5 + v19 * 0.5;
  v26 = floor(v25);
  if (v26 > v19)
  {
    v27 = 1;
    v28 = v26;
    result = v11;
    while (result != v24)
    {
      v29 = v27;
      v30 = v28 * 0.1 + 0.05;
      v28 = floor(v30);
      *result++ = ((v30 - v28) * 10.0) + 48;
      ++v27;
      if (v28 <= v19)
      {
        if (result <= v11)
        {
          v11 = result;
          goto LABEL_46;
        }

        if (result - v11 >= 2)
        {
          v31 = -1;
          do
          {
            v32 = result[v31];
            result[v31] = *v11;
            *v11 = v32;
            v11 = (v11 + 1);
            v29 -= 2;
            --v31;
          }

          while (v29 > 1);
        }

        goto LABEL_47;
      }
    }

    return 0;
  }

LABEL_46:
  *v11 = 48;
  result = v11 + 1;
LABEL_47:
  v33 = v25 - v26;
  if (v33 > v19)
  {
    if (result != v24)
    {
      *result++ = 46;
      while (result != v24)
      {
        v34 = v33 * 10.0;
        *result++ = vcvtmd_s64_f64(v34) + 48;
        v33 = v34 - floor(v34);
        v19 = v19 * 10.0;
        if (v33 <= v19)
        {
          goto LABEL_56;
        }
      }
    }

    return 0;
  }

  v35 = __e;
  if (!(__e | a3 & 1))
  {
    if (v24 - result < 2)
    {
      return 0;
    }

    *result = 12334;
    result += 2;
LABEL_56:
    v35 = __e;
  }

  if (!v35)
  {
    goto LABEL_68;
  }

  if (v24 - result < 3)
  {
    return 0;
  }

  *result = 101;
  v36 = result + 1;
  v37 = __e;
  if (__e < 0)
  {
    v36 = result + 2;
    result[1] = 45;
    v37 = -__e;
    __e = -__e;
  }

  result = v36;
  if (v37 >= 1)
  {
    result = v36;
    while (result != v24)
    {
      *result++ = (v37 % 0xAu) | 0x30;
      v38 = __e;
      v37 = __e / 10;
      __e /= 10;
      if (v38 <= 9)
      {
        goto LABEL_65;
      }
    }

    return 0;
  }

LABEL_65:
  v39 = result - v36;
  if (result - v36 >= 2)
  {
    v40 = -1;
    do
    {
      v41 = result[v40];
      result[v40] = *v36;
      *v36++ = v41;
      v39 -= 2;
      --v40;
    }

    while (v39 > 1);
  }

LABEL_68:
  if (result == v24)
  {
    return 0;
  }

  *result = 0;
  return result;
}

void *x_stream_init(void *result)
{
  *result = 0;
  result[1] = 0;
  result[2] = 0;
  return result;
}

BOOL x_stream_grow(char **a1, unint64_t a2)
{
  v3 = a1[2];
  v4 = *a1;
  v6 = v3 - v4;
  v5 = v6 == 0;
  v7 = 2 * v6;
  if (v5)
  {
    v7 = 1024;
  }

  do
  {
    v8 = v7;
    v9 = (&v4[v7] - a1[1]);
    v7 *= 2;
  }

  while (v9 < a2);
  v10 = malloc_type_realloc(v4, v8, 0xDE079451uLL);
  if (v10)
  {
    v11 = &v10[a1[1] - *a1];
    *a1 = v10;
    a1[1] = v11;
    a1[2] = &v10[v8];
  }

  return v10 != 0;
}

char *x_stream_get(char **a1)
{
  v2 = a1[1];
  if (v2 + 1 < a1[2])
  {
    goto LABEL_4;
  }

  if (x_stream_grow(a1, 1uLL))
  {
    v2 = a1[1];
LABEL_4:
    *v2 = 0;
    return *a1;
  }

  return 0;
}

void x_stream_free(uint64_t a1)
{
  v2 = *a1;
  if (v2)
  {
    free(v2);
    *a1 = 0;
    *(a1 + 8) = 0;
    *(a1 + 16) = 0;
  }
}

uint64_t x_stream_printf(uint64_t a1, char *__s, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v9 = __s;
  v47 = *MEMORY[0x1E69E9840];
  v45 = &a9;
  v11 = strchr(__s, 37);
  if (v11)
  {
    v12 = v11;
    do
    {
      v13 = v12 - v9;
      if (v12 <= v9)
      {
        goto LABEL_8;
      }

      v14 = *(a1 + 8);
      if (v14 + v13 >= *(a1 + 16))
      {
        if (!x_stream_grow(a1, v12 - v9))
        {
          goto LABEL_8;
        }

        v14 = *(a1 + 8);
      }

      memcpy(v14, v9, v12 - v9);
      *(a1 + 8) += v13;
LABEL_8:
      v15 = v12[1];
      if (v15 == 46)
      {
        v15 = v12[2];
        if ((v15 - 48) > 9)
        {
          v16 = 0;
          ++v12;
        }

        else
        {
          v16 = 0;
          ++v12;
          do
          {
            v16 = v15 + 10 * v16 - 48;
            v15 = v12[2];
            ++v12;
          }

          while ((v15 - 48) < 0xA);
        }

        v18 = __exp10(-v16);
        if (v18 >= 1.0 || v18 <= 0.0)
        {
          v17 = 0.000001;
        }

        else
        {
          v17 = v18;
        }
      }

      else
      {
        v17 = 0.000001;
      }

      if (v15 > 101)
      {
        if (v15 > 116)
        {
          switch(v15)
          {
            case 'u':
              ++v45;
              snprintf(__str, 0x100uLL, "%u");
              break;
            case 'w':
              v38 = v45++;
              v39 = *v38;
              if (v39 < 1)
              {
                goto LABEL_72;
              }

              if (v39 >= 0x100)
              {
                v24 = 256;
              }

              else
              {
                v24 = v39;
              }

              __memset_chk();
LABEL_66:
              v27 = *(a1 + 8);
              if (v27 + v24 < *(a1 + 16))
              {
                goto LABEL_69;
              }

              if (x_stream_grow(a1, v24))
              {
                v27 = *(a1 + 8);
LABEL_69:
                v28 = __str;
LABEL_70:
                memcpy(v27, v28, v24);
LABEL_71:
                *(a1 + 8) += v24;
                goto LABEL_72;
              }

              goto LABEL_72;
            case 'x':
              ++v45;
              snprintf(__str, 0x100uLL, "%x");
              break;
            default:
              goto LABEL_72;
          }

LABEL_65:
          v24 = strlen(__str);
          goto LABEL_66;
        }

        if ((v15 - 102) < 2)
        {
          v32 = v45++;
          v31 = *v32;
LABEL_51:
          if (!x_dtostr_(__str, 0x100uLL, 0, v31, v17))
          {
            goto LABEL_72;
          }

          goto LABEL_65;
        }

        if (v15 == 108)
        {
          v35 = v12[2];
          if (v35 > 0x74)
          {
            if (v35 == 117)
            {
              ++v45;
              snprintf(__str, 0x100uLL, "%lu");
            }

            else
            {
              if (v35 != 120)
              {
                goto LABEL_72;
              }

              ++v45;
              snprintf(__str, 0x100uLL, "%lx");
            }

            goto LABEL_89;
          }

          if (v35 == 100)
          {
            ++v45;
            snprintf(__str, 0x100uLL, "%ld");
LABEL_89:
            v24 = strlen(__str);
            v40 = *(a1 + 8);
            if (v40 + v24 >= *(a1 + 16))
            {
              if (!x_stream_grow(a1, v24))
              {
                ++v12;
                goto LABEL_72;
              }

              v40 = *(a1 + 8);
            }

            memcpy(v40, __str, v24);
            ++v12;
            goto LABEL_71;
          }

          if (v35 == 108)
          {
            v36 = v12[3];
            if (v36 == 88)
            {
              ++v45;
              snprintf(__str, 0x100uLL, "%016llX");
              goto LABEL_95;
            }

            if (v36 == 120)
            {
              ++v45;
              snprintf(__str, 0x100uLL, "%016llx");
LABEL_95:
              v24 = strlen(__str);
              v41 = *(a1 + 8);
              if (v41 + v24 >= *(a1 + 16))
              {
                if (!x_stream_grow(a1, v24))
                {
                  v12 += 2;
                  goto LABEL_72;
                }

                v41 = *(a1 + 8);
              }

              memcpy(v41, __str, v24);
              v12 += 2;
              goto LABEL_71;
            }
          }
        }

        else if (v15 == 115)
        {
          v25 = v45++;
          v26 = *v25;
          v24 = strlen(*v25);
          v27 = *(a1 + 8);
          if (v27 + v24 < *(a1 + 16))
          {
            goto LABEL_38;
          }

          if (x_stream_grow(a1, v24))
          {
            v27 = *(a1 + 8);
LABEL_38:
            v28 = v26;
            goto LABEL_70;
          }
        }
      }

      else if (v15 > 96)
      {
        switch(v15)
        {
          case 'a':
            ++v45;
            snprintf(__str, 0x100uLL, "%a");
            goto LABEL_65;
          case 'c':
            v37 = v45++;
            __str[0] = *v37;
            v33 = *(a1 + 8);
            if ((v33 + 1) >= *(a1 + 16))
            {
              if (!x_stream_grow(a1, 1uLL))
              {
                break;
              }

              v33 = *(a1 + 8);
            }

            v34 = __str[0];
LABEL_78:
            *v33 = v34;
            v24 = 1;
            goto LABEL_71;
          case 'd':
            ++v45;
            snprintf(__str, 0x100uLL, "%d");
            goto LABEL_65;
        }
      }

      else
      {
        if ((v15 - 70) < 2)
        {
          v29 = v45++;
          v30 = *v29;
          if ((__fpclassifyd(*v29) - 1) >= 2)
          {
            v31 = v30;
          }

          else
          {
            v31 = 0.0;
          }

          goto LABEL_51;
        }

        if (v15 != 37)
        {
          if (v15 != 87)
          {
            goto LABEL_72;
          }

          v20 = v45++;
          v21 = *v20;
          if (v21 < 1)
          {
            goto LABEL_72;
          }

          v22 = v21 & 7;
          if (v21 >> 3 >= 0xF8)
          {
            v23 = 248;
          }

          else
          {
            v23 = v21 >> 3;
          }

          v24 = (v23 + v22);
          __memset_chk();
          memset(&__str[v23], 32, v22);
          goto LABEL_66;
        }

        v33 = *(a1 + 8);
        if ((v33 + 1) < *(a1 + 16))
        {
          goto LABEL_56;
        }

        if (x_stream_grow(a1, 1uLL))
        {
          v33 = *(a1 + 8);
LABEL_56:
          v34 = 37;
          goto LABEL_78;
        }
      }

LABEL_72:
      v9 = v12 + 2;
      v12 = strchr(v12 + 2, 37);
    }

    while (v12);
  }

  v42 = strlen(v9);
  v43 = *(a1 + 8);
  if (v43 + v42 >= *(a1 + 16))
  {
    result = x_stream_grow(a1, v42);
    if (!result)
    {
      return result;
    }

    v43 = *(a1 + 8);
  }

  result = memcpy(v43, v9, v42);
  *(a1 + 8) += v42;
  return result;
}

uint64_t x_stream_write(uint64_t a1, void *__src, size_t __n)
{
  v6 = *(a1 + 8);
  if (v6 + __n >= *(a1 + 16))
  {
    result = x_stream_grow(a1, __n);
    if (!result)
    {
      return result;
    }

    v6 = *(a1 + 8);
  }

  result = memcpy(v6, __src, __n);
  *(a1 + 8) += __n;
  return result;
}

const void *metadataPropertyWithBool()
{
  v0 = CGImageMetadataPropertyCreate();
  v1 = CGImageMetadataValueCreate();
  CGImageMetadataPropertySetValue();
  CFRelease(v1);
  if (v0)
  {
    CFAutorelease(v0);
  }

  return v0;
}

const void *metadataPropertyWithArray(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v19 = *MEMORY[0x1E69E9840];
  v5 = [MEMORY[0x1E695DF70] arrayWithCapacity:0];
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v6 = [a4 countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v15;
    do
    {
      v9 = 0;
      do
      {
        if (*v15 != v8)
        {
          objc_enumerationMutation(a4);
        }

        v10 = CGImageMetadataValueCreate();
        [v5 addObject:v10];
        CFRelease(v10);
        ++v9;
      }

      while (v7 != v9);
      v7 = [a4 countByEnumeratingWithState:&v14 objects:v18 count:16];
    }

    while (v7);
  }

  v11 = CGImageMetadataPropertyCreate();
  v12 = CGImageMetadataValueCreate();
  CGImageMetadataPropertySetValue();
  CFRelease(v12);
  if (v11)
  {
    CFAutorelease(v11);
  }

  return v11;
}

uint64_t metadataPropertyArrayGetArrayOfStrings()
{
  v14 = *MEMORY[0x1E69E9840];
  if (!GetMetadataPropertyMatchingSchemaAndPropertyName())
  {
    return 0;
  }

  if (!CGImageMetadataPropertyGetValue())
  {
    return [MEMORY[0x1E695DF70] array];
  }

  Value = CGImageMetadataValueGetValue();
  v1 = [MEMORY[0x1E695DF70] array];
  if (Value)
  {
    v2 = CFGetTypeID(Value);
    if (v2 == CFArrayGetTypeID())
    {
      v11 = 0u;
      v12 = 0u;
      v9 = 0u;
      v10 = 0u;
      v3 = [Value countByEnumeratingWithState:&v9 objects:v13 count:16];
      if (v3)
      {
        v4 = v3;
        v5 = *v10;
        do
        {
          for (i = 0; i != v4; ++i)
          {
            if (*v10 != v5)
            {
              objc_enumerationMutation(Value);
            }

            if (*(*(&v9 + 1) + 8 * i))
            {
              v7 = CGImageMetadataValueGetValue();
            }

            else
            {
              v7 = 0;
            }

            [v1 addObject:v7];
          }

          v4 = [Value countByEnumeratingWithState:&v9 objects:v13 count:16];
        }

        while (v4);
      }
    }
  }

  return v1;
}

const void *metadataPropertyWithArrayOfStructs(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, void *a6)
{
  v37 = *MEMORY[0x1E69E9840];
  v24 = [MEMORY[0x1E695DF70] array];
  v27 = 0u;
  v28 = 0u;
  v29 = 0u;
  v30 = 0u;
  obj = a6;
  v25 = [a6 countByEnumeratingWithState:&v27 objects:v35 count:16];
  if (v25)
  {
    v23 = *v28;
    do
    {
      v7 = 0;
      do
      {
        if (*v28 != v23)
        {
          objc_enumerationMutation(obj);
        }

        v26 = v7;
        v8 = *(*(&v27 + 1) + 8 * v7);
        v9 = [MEMORY[0x1E695DF90] dictionary];
        v31 = 0u;
        v32 = 0u;
        v33 = 0u;
        v34 = 0u;
        v10 = [v8 allKeys];
        v11 = [v10 countByEnumeratingWithState:&v31 objects:v36 count:16];
        if (v11)
        {
          v12 = v11;
          v13 = *v32;
          do
          {
            for (i = 0; i != v12; ++i)
            {
              if (*v32 != v13)
              {
                objc_enumerationMutation(v10);
              }

              v15 = *(*(&v31 + 1) + 8 * i);
              v16 = [v8 objectForKey:v15];
              objc_opt_class();
              if ((objc_opt_isKindOfClass() & 1) == 0)
              {
                [v16 stringValue];
              }

              v17 = CGImageMetadataValueCreate();
              CGImageMetadataValueSetNamespaceURI();
              CGImageMetadataValueSetSuggestedNamespacePrefix();
              [v9 setObject:v17 forKey:v15];
              CFRelease(v17);
            }

            v12 = [v10 countByEnumeratingWithState:&v31 objects:v36 count:16];
          }

          while (v12);
        }

        v18 = CGImageMetadataValueCreate();
        [v24 addObject:v18];
        CFRelease(v18);
        v7 = v26 + 1;
      }

      while (v26 + 1 != v25);
      v25 = [obj countByEnumeratingWithState:&v27 objects:v35 count:16];
    }

    while (v25);
  }

  v19 = CGImageMetadataPropertyCreate();
  v20 = CGImageMetadataValueCreate();
  CGImageMetadataPropertySetValue();
  CFRelease(v20);
  if (v19)
  {
    CFAutorelease(v19);
  }

  return v19;
}

uint64_t metadataPropertyArrayGetArrayOfStructs(uint64_t a1, uint64_t a2, void *a3)
{
  v38 = *MEMORY[0x1E69E9840];
  if (!GetMetadataPropertyMatchingSchemaAndPropertyName())
  {
    return 0;
  }

  if (!CGImageMetadataPropertyGetValue())
  {
    return [MEMORY[0x1E695DF70] array];
  }

  Value = CGImageMetadataValueGetValue();
  v24 = [MEMORY[0x1E695DF70] array];
  if (Value)
  {
    v5 = CFGetTypeID(Value);
    if (v5 == CFArrayGetTypeID())
    {
      v34 = 0u;
      v35 = 0u;
      v32 = 0u;
      v33 = 0u;
      v25 = [Value countByEnumeratingWithState:&v32 objects:v37 count:16];
      if (v25)
      {
        obj = Value;
        v23 = *v33;
        do
        {
          v6 = 0;
          do
          {
            if (*v33 != v23)
            {
              objc_enumerationMutation(obj);
            }

            v7 = *(*(&v32 + 1) + 8 * v6);
            v8 = [MEMORY[0x1E695DF90] dictionary];
            v26 = v6;
            if (v7)
            {
              v9 = CGImageMetadataValueGetValue();
            }

            else
            {
              v9 = 0;
            }

            v30 = 0u;
            v31 = 0u;
            v28 = 0u;
            v29 = 0u;
            v10 = [v9 allKeys];
            v11 = [v10 countByEnumeratingWithState:&v28 objects:v36 count:16];
            if (v11)
            {
              v12 = v11;
              v13 = *v29;
              do
              {
                for (i = 0; i != v12; ++i)
                {
                  if (*v29 != v13)
                  {
                    objc_enumerationMutation(v10);
                  }

                  v15 = *(*(&v28 + 1) + 8 * i);
                  v16 = [v9 objectForKey:v15];
                  v17 = [a3 isEqualToString:CGImageMetadataValueGetNamespaceURI()];
                  if (v16)
                  {
                    v18 = v17 == 0;
                  }

                  else
                  {
                    v18 = 1;
                  }

                  if (!v18)
                  {
                    v19 = CGImageMetadataValueGetValue();
                    v39.length = CFStringGetLength(v19);
                    v39.location = 0;
                    if (CFStringFindWithOptions(v19, @" ", v39, 0, 0))
                    {
                      [v8 setObject:v19 forKey:v15];
                    }

                    else
                    {
                      valuePtr = CFStringGetDoubleValue(v19);
                      v20 = CFNumberCreate(0, kCFNumberDoubleType, &valuePtr);
                      [v8 setObject:v20 forKey:v15];
                      CFRelease(v20);
                    }
                  }
                }

                v12 = [v10 countByEnumeratingWithState:&v28 objects:v36 count:16];
              }

              while (v12);
            }

            [v24 addObject:v8];
            v6 = v26 + 1;
          }

          while (v26 + 1 != v25);
          v25 = [obj countByEnumeratingWithState:&v32 objects:v37 count:16];
        }

        while (v25);
      }
    }
  }

  return v24;
}

const void *metadataPropertyWithDouble(double a1)
{
  v2 = CGImageMetadataPropertyCreate();
  [MEMORY[0x1E696AEC0] stringWithFormat:@"%g", *&a1];
  v3 = CGImageMetadataValueCreate();
  CGImageMetadataPropertySetValue();
  CFRelease(v3);
  if (v2)
  {
    CFAutorelease(v2);
  }

  return v2;
}

uint64_t metadataPropertyArrayGetDouble(uint64_t a1, uint64_t a2, uint64_t a3, double *a4)
{
  result = GetMetadataPropertyMatchingSchemaAndPropertyName();
  if (result && (result = CGImageMetadataPropertyGetValue()) != 0 && (result = CGImageMetadataValueGetValue()) != 0)
  {
    DoubleValue = CFStringGetDoubleValue(result);
    result = 1;
  }

  else
  {
    DoubleValue = NAN;
  }

  *a4 = DoubleValue;
  return result;
}

uint64_t metadataPropertyArrayGetBool(uint64_t a1, uint64_t a2, uint64_t a3, BOOL *a4)
{
  if (GetMetadataPropertyMatchingSchemaAndPropertyName())
  {
    if (CGImageMetadataPropertyGetValue() && (Value = CGImageMetadataValueGetValue()) != 0)
    {
      v6 = 1;
      v7 = CFStringCompare(Value, @"TRUE", 1uLL) == kCFCompareEqualTo;
    }

    else
    {
      v6 = 0;
      v7 = 1;
    }
  }

  else
  {
    v7 = 0;
    v6 = 0;
  }

  *a4 = v7;
  return v6;
}

const void *metadataPropertyWithString(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (!a4)
  {
    return 0;
  }

  v4 = CGImageMetadataPropertyCreate();
  v5 = CGImageMetadataValueCreate();
  CGImageMetadataPropertySetValue();
  CFRelease(v5);
  if (v4)
  {
    CFAutorelease(v4);
  }

  return v4;
}

id metadataPropertyArrayGetString()
{
  if (!GetMetadataPropertyMatchingSchemaAndPropertyName())
  {
    return 0;
  }

  v0 = CGImageMetadataPropertyGetValue() ? CGImageMetadataValueGetValue() : 0;
  v1 = CFGetTypeID(v0);
  if (v1 != CFStringGetTypeID())
  {
    return 0;
  }

  v2 = v0;

  return v2;
}

uint64_t get_ycc_to_rgb_matrix(int a1, int a2, int a3, double *a4, float64x2_t *a5, uint64_t a6, float64x2_t *a7)
{
  HIDWORD(v8) = a3;
  LODWORD(v8) = a3;
  v7 = v8 >> 1;
  v9 = v7 > 8;
  v10 = (1 << v7) & 0x171;
  if (v9 || v10 == 0)
  {
    return 0;
  }

  result = 0;
  if (a1 > 708)
  {
    if (a1 == 2020)
    {
      v14 = xmmword_19CF2E0F0;
      v15 = 0x3FE5B22D0E560419;
    }

    else
    {
      if (a1 != 709)
      {
        return result;
      }

      v14 = xmmword_19CF2E110;
      v15 = 0x3FE6E2EB1C432CA5;
    }
  }

  else if (a1 == 240)
  {
    v14 = xmmword_19CF2E100;
    v15 = 0x3FE66E978D4FDF3BLL;
  }

  else
  {
    if (a1 != 601)
    {
      return result;
    }

    v14 = xmmword_19CF2E0E0;
    v15 = 0x3FE2C8B439581062;
  }

  *a5 = xmmword_19CF2D8A0;
  __asm { FMOV            V0.2D, #1.0 }

  v20 = vsubq_f64(_Q0, v14);
  a5[1].f64[0] = v20.f64[1] + v20.f64[1];
  *a6 = 0x3FF0000000000000;
  __asm { FMOV            V4.2D, #-2.0 }

  *(a6 + 8) = vdivq_f64(vmulq_f64(v14, vmulq_f64(v20, _Q4)), vdupq_lane_s64(v15, 0));
  a7->f64[0] = 1.0;
  a7->f64[1] = v20.f64[0] + v20.f64[0];
  a7[1].f64[0] = 0.0;
  if (a3 == 16)
  {
    v22 = 32768.0;
    v23 = 65535.0;
    v24 = 65534.0;
  }

  else if (a3 == 10)
  {
    v22 = 512.0;
    v23 = 1023.0;
    v24 = 1022.0;
  }

  else if (a3 == 12)
  {
    v22 = 2048.0;
    v23 = 4095.0;
    v24 = 4094.0;
  }

  else
  {
    if (a3 == 8)
    {
      v23 = 255.0;
    }

    else
    {
      v23 = 1.0;
    }

    if (a3 == 8)
    {
      v24 = 254.0;
    }

    else
    {
      v24 = 1.0;
    }

    v22 = 128.0;
    if (a3 != 8)
    {
      v22 = 1.0;
    }
  }

  v25 = 1.0;
  if (a3 == 10)
  {
    v25 = 4.0;
  }

  if (a3 == 12)
  {
    v25 = 16.0;
  }

  if (a3 == 16)
  {
    v25 = 256.0;
  }

  if (!a2)
  {
    if (a3)
    {
      _Q0 = vdivq_f64(vdupq_lane_s64(*&v23, 0), vmulq_n_f64(xmmword_19CF2E120, v25));
      v26 = v25 * -16.0 / v23;
      v27 = -v22 / v23;
      goto LABEL_42;
    }

    v26 = 0.0;
LABEL_41:
    v27 = 0.0;
    goto LABEL_42;
  }

  v26 = 0.0;
  if (!a3)
  {
    goto LABEL_41;
  }

  v27 = -v22 / v23;
  __asm { FMOV            V0.2D, #1.0 }

  _Q0.f64[1] = v23 / v24;
LABEL_42:
  a4[1] = v27;
  a4[2] = v27;
  *a4 = v26;
  *a5 = vmulq_f64(_Q0, *a5);
  a5[1].f64[0] = vmuld_lane_f64(a5[1].f64[0], _Q0, 1);
  *a6 = vmulq_f64(_Q0, *a6);
  *(a6 + 16) = vmuld_lane_f64(*(a6 + 16), _Q0, 1);
  *a7 = vmulq_f64(_Q0, *a7);
  a7[1].f64[0] = vmuld_lane_f64(a7[1].f64[0], _Q0, 1);
  return 1;
}

uint64_t get_rgb_to_ycc_matrix(int a1, int a2, int a3, double *a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  HIDWORD(v8) = a3;
  LODWORD(v8) = a3;
  v7 = v8 >> 1;
  v9 = v7 > 8;
  v10 = (1 << v7) & 0x171;
  if (v9 || v10 == 0)
  {
    return 0;
  }

  result = 0;
  if (a1 > 708)
  {
    if (a1 == 2020)
    {
      v14 = xmmword_19CF2E140;
      v15 = 0.2627;
    }

    else
    {
      if (a1 != 709)
      {
        return result;
      }

      v14 = xmmword_19CF2E160;
      v15 = 0.2126;
    }
  }

  else if (a1 == 240)
  {
    v14 = xmmword_19CF2E150;
    v15 = 0.212;
  }

  else
  {
    if (a1 != 601)
    {
      return result;
    }

    v14 = xmmword_19CF2E130;
    v15 = 0.299;
  }

  *a5 = v15;
  *(a5 + 8) = v14;
  v16 = v14.f64[1];
  __asm { FMOV            V2.2D, #-0.5 }

  v21 = vmulq_f64(v14, _Q2);
  v22 = 1.0;
  v23 = 1.0 - v16;
  *a6 = v15 * -0.5 / v23;
  *(a6 + 8) = v21.f64[0] / v23;
  *(a6 + 16) = 0x3FE0000000000000;
  *a7 = 0x3FE0000000000000;
  *(a7 + 8) = vdivq_f64(v21, vdupq_lane_s64(COERCE__INT64(1.0 - v15), 0));
  if (a3 == 16)
  {
    v24 = 32768.0;
    v25 = 65535.0;
    v26 = 65534.0;
  }

  else if (a3 == 10)
  {
    v24 = 512.0;
    v25 = 1023.0;
    v26 = 1022.0;
  }

  else if (a3 == 12)
  {
    v24 = 2048.0;
    v25 = 4095.0;
    v26 = 4094.0;
  }

  else
  {
    if (a3 == 8)
    {
      v25 = 255.0;
    }

    else
    {
      v25 = 1.0;
    }

    if (a3 == 8)
    {
      v26 = 254.0;
    }

    else
    {
      v26 = 1.0;
    }

    v24 = 128.0;
    if (a3 != 8)
    {
      v24 = 1.0;
    }
  }

  if (a3 == 10)
  {
    v22 = 4.0;
  }

  if (a3 == 12)
  {
    v22 = 16.0;
  }

  v27 = 256.0;
  if (a3 != 16)
  {
    v27 = v22;
  }

  if (a2)
  {
    v28 = v26 / v25;
    v29 = 1.0;
    if (!a3)
    {
      v28 = 1.0;
    }

    v30 = 0.0;
  }

  else if (a3)
  {
    v29 = v27 * 219.0 / v25;
    v28 = v27 * 224.0 / v25;
    v30 = v27 * 16.0 / v25;
  }

  else
  {
    v29 = 1.0;
    v30 = 0.0;
    v28 = 1.0;
  }

  v31 = v24 / v25;
  if (!a3)
  {
    v31 = 0.0;
  }

  a4[1] = v31;
  a4[2] = v31;
  *a4 = v30;
  *a5 = vmulq_n_f64(*a5, v29);
  *(a5 + 16) = v29 * *(a5 + 16);
  *a6 = vmulq_n_f64(*a6, v28);
  *(a6 + 16) = v28 * *(a6 + 16);
  *a7 = vmulq_n_f64(*a7, v28);
  *(a7 + 16) = v28 * *(a7 + 16);
  return 1;
}

double get_ycc_to_rgb_bias_matrix(int a1, int a2, int a3, float64x2_t *a4, double *a5, float64x2_t *a6, double *a7)
{
  v18 = *MEMORY[0x1E69E9840];
  v15 = 0.0;
  v16 = 0.0;
  v17 = 0.0;
  get_ycc_to_rgb_matrix(a1, a2, a3, &v15, a4, a5, a6);
  v11 = v15;
  v12 = v16;
  v13 = v17;
  *a7 = a4->f64[1] * v16 + a4->f64[0] * v15 + a4[1].f64[0] * v17;
  a7[1] = v12 * a5[1] + *a5 * v11 + a5[2] * v13;
  result = v12 * a6->f64[1] + a6->f64[0] * v11 + a6[1].f64[0] * v13;
  a7[2] = result;
  return result;
}

void CI::BitmapSampler::write(uint64_t *a1, uint64_t a2, os_log_t log)
{
  v9 = *MEMORY[0x1E69E9840];
  v3 = *a1;
  v4 = *(a2 + 88);
  v5 = 134218240;
  v6 = v3;
  v7 = 2048;
  v8 = v4;
  _os_log_error_impl(&dword_19CC36000, log, OS_LOG_TYPE_ERROR, "Bitmap write error: Accessing corrupted bitmap size: (%zu,%zu)", &v5, 0x16u);
}

void CoreAnalytics()
{
  if (__cxa_guard_acquire(&qword_1ED7C44A0))
  {
    _MergedGlobals_0 = dispatch_queue_create("CoreImageAnalytics", 0);
    __cxa_guard_release(&qword_1ED7C44A0);
  }
}

{
  if (__cxa_guard_acquire(qword_1ED7C44D0))
  {
    qword_1ED7C44C8 = dispatch_queue_create("CoreImageAnalytics", 0);

    __cxa_guard_release(qword_1ED7C44D0);
  }
}

void GetOutputColorSpaceFromOptions()
{
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_3();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void GetWorkingColorSpaceFromOptions()
{
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_3();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void canCreateDataRepresentation(NSObject *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  OUTLINED_FUNCTION_2_1(&dword_19CC36000, a1, a3, "%{public}s unsupported colorspace.", a5, a6, a7, a8, 2u);
}

{
  OUTLINED_FUNCTION_2_1(&dword_19CC36000, a1, a3, "%{public}s requires an image with a finite non-empty extent.", a5, a6, a7, a8, 2u);
}

void repairROIforEyePoints_cold_1(os_log_t log, float a2, float a3)
{
  v9 = *MEMORY[0x1E69E9840];
  v3 = 136446722;
  v4 = "repairROIforEyePoints";
  v5 = 2048;
  v6 = a2;
  v7 = 2048;
  v8 = a3;
  _os_log_error_impl(&dword_19CC36000, log, OS_LOG_TYPE_ERROR, "%{public}s eye outset = %.3f x %.3f", &v3, 0x20u);
}

void focusStatsForRegion_cold_1(os_log_t log)
{
  v3 = *MEMORY[0x1E69E9840];
  v1 = 136446210;
  v2 = "focusStatsForRegion";
  _os_log_error_impl(&dword_19CC36000, log, OS_LOG_TYPE_ERROR, "%{public}s Focus Stats: Error in creating pixel buffer", &v1, 0xCu);
}

void ContextIsUsable_cold_2(uint64_t a1, NSObject *a2)
{
  v4 = *MEMORY[0x1E69E9840];
  v2 = 134349056;
  v3 = a1;
  _os_log_error_impl(&dword_19CC36000, a2, OS_LOG_TYPE_ERROR, "Unable to get macro state for the GLContext: %{public}p.\n", &v2, 0xCu);
}

void VisionLibrary(void *a1)
{
  [objc_msgSend(MEMORY[0x1E696AAA8] "currentHandler")];
  __break(1u);
}

{
  [objc_msgSend(MEMORY[0x1E696AAA8] "currentHandler")];
  __break(1u);
}

void OptionHeadroom()
{
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_3();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void OptionAverageLightLevel()
{
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_3();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void getContentDigestFromOptions()
{
  OUTLINED_FUNCTION_3();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

{
  OUTLINED_FUNCTION_3();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

{
  OUTLINED_FUNCTION_0_0();
  OUTLINED_FUNCTION_1_5(&dword_19CC36000, v0, v1, "%{public}s %{public}@ value is not a NSString of at least length 16.", v2, v3, v4, v5, 2u);
}

{
  OUTLINED_FUNCTION_0_0();
  OUTLINED_FUNCTION_1_5(&dword_19CC36000, v0, v1, "%{public}s %{public}@ value is not NSData of at least 16 bytes.", v2, v3, v4, v5, 2u);
}

void CIKernelReflection::reflect()
{
  OUTLINED_FUNCTION_8_0(*MEMORY[0x1E69E9840]);
  OUTLINED_FUNCTION_1_7();
  OUTLINED_FUNCTION_4_2(&dword_19CC36000, v0, v1, "[CIKernel initWithString:] failed because the warp kernel '%{public}s' has an unsupported type sampler2D for the parameter '%{public}s'.");
}

{
  OUTLINED_FUNCTION_8_0(*MEMORY[0x1E69E9840]);
  OUTLINED_FUNCTION_1_7();
  OUTLINED_FUNCTION_4_2(&dword_19CC36000, v0, v1, "[CIKernel initWithString:] failed because the warp kernel '%{public}s' has an unsupported type sample_h for the parameter '%{public}s'.");
}

{
  OUTLINED_FUNCTION_8_0(*MEMORY[0x1E69E9840]);
  OUTLINED_FUNCTION_1_7();
  OUTLINED_FUNCTION_4_2(&dword_19CC36000, v0, v1, "[CIKernel initWithString:] failed because the warp kernel '%{public}s' has an unsupported type __sample for the parameter '%{public}s'.");
}

{
  OUTLINED_FUNCTION_8_0(*MEMORY[0x1E69E9840]);
  OUTLINED_FUNCTION_1_7();
  OUTLINED_FUNCTION_4_2(&dword_19CC36000, v0, v1, "[CIKernel initWithString:] failed because '%{public}s', the first kernel in the string, has an unsupported type for the parameter '%{public}s'.");
}

{
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_3();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

{
  OUTLINED_FUNCTION_8_0(*MEMORY[0x1E69E9840]);
  OUTLINED_FUNCTION_0_4();
  OUTLINED_FUNCTION_4_2(&dword_19CC36000, v0, v1, "Function '%{public}s' has an unsupported type for the parameter '%{public}@'.");
}

{
  OUTLINED_FUNCTION_8_0(*MEMORY[0x1E69E9840]);
  OUTLINED_FUNCTION_0_4();
  OUTLINED_FUNCTION_4_2(&dword_19CC36000, v0, v1, "Function '%{public}s' has an unsupported type sampler2D for the parameter '%{public}@'.");
}

{
  OUTLINED_FUNCTION_8_0(*MEMORY[0x1E69E9840]);
  OUTLINED_FUNCTION_8_1();
  OUTLINED_FUNCTION_2_1(&dword_19CC36000, v0, v1, "Function '%{public}s' has too many destination parameters.", v2, v3, v4, v5, v6);
}

{
  OUTLINED_FUNCTION_8_0(*MEMORY[0x1E69E9840]);
  OUTLINED_FUNCTION_8_1();
  OUTLINED_FUNCTION_2_1(&dword_19CC36000, v0, v1, "Warp kernel function '%{public}s' does not have a coreimage:destination argument.", v2, v3, v4, v5, v6);
}

{
  OUTLINED_FUNCTION_8_0(*MEMORY[0x1E69E9840]);
  OUTLINED_FUNCTION_8_1();
  OUTLINED_FUNCTION_2_1(&dword_19CC36000, v0, v1, "Warp kernel function '%{public}s' cannot have coreimage:sampler arguments.", v2, v3, v4, v5, v6);
}

{
  OUTLINED_FUNCTION_8_0(*MEMORY[0x1E69E9840]);
  OUTLINED_FUNCTION_8_1();
  OUTLINED_FUNCTION_2_1(&dword_19CC36000, v0, v1, "Function '%{public}s' has an unsupported return type.", v2, v3, v4, v5, v6);
}

{
  OUTLINED_FUNCTION_8_0(*MEMORY[0x1E69E9840]);
  OUTLINED_FUNCTION_8_1();
  OUTLINED_FUNCTION_2_1(&dword_19CC36000, v0, v1, "Function '%{public}s' does not exist.", v2, v3, v4, v5, v6);
}

void CIKernelReflection::reflect(id *a1, NSObject *a2)
{
  v6 = *MEMORY[0x1E69E9840];
  v3 = [*a1 functionNames];
  v4 = 138543362;
  v5 = v3;
  _os_log_debug_impl(&dword_19CC36000, a2, OS_LOG_TYPE_DEBUG, "Available function names are: %{public}@", &v4, 0xCu);
}

void CIKernelReflection::reflectConstants()
{
  OUTLINED_FUNCTION_8_0(*MEMORY[0x1E69E9840]);
  OUTLINED_FUNCTION_8_1();
  OUTLINED_FUNCTION_2_1(&dword_19CC36000, v0, v1, "Could not determine required constants for '%{public}s'.", v2, v3, v4, v5, v6);
}

void CIKLLibraryMaker::createMetalLibraryFromFoslPool()
{
  dispatch_once(&CIKLLibraryMaker::createMetalLibraryFromFoslPool(void *)::onceToken, &__block_literal_global_544);
}

{
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_3();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

{
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_3();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void ___ZN16CIKLLibraryMaker30createMetalLibraryFromFoslPoolEPv_block_invoke_2_cold_1(_BYTE *a1, _BYTE *a2)
{
  *a1 = 0;
  *a2 = 0;
  OUTLINED_FUNCTION_7_0();
  _os_log_error_impl(v2, v3, v4, v5, v6, 2u);
}

void __can_use_metal_block_invoke_cold_1()
{
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_3();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void __can_use_metal_block_invoke_cold_2()
{
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_3();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void __CIGetHarvestingBinaryArchiveDict_block_invoke_cold_1(id *a1)
{
  [*a1 localizedDescription];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_1_1();
  _os_log_error_impl(v1, v2, v3, v4, v5, 0xCu);
}

void __CIGetHarvestingBinaryArchiveDict_block_invoke_cold_2(void *a1, id *a2)
{
  [a1 url];
  [*a2 localizedDescription];
  OUTLINED_FUNCTION_2_7();
  OUTLINED_FUNCTION_1_1();
  _os_log_error_impl(v3, v4, v5, v6, v7, 0x16u);
}

void __CIGetHarvestingBinaryArchiveDict_block_invoke_cold_3()
{
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_3();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void CreateUberComputePipelineState_cold_1()
{
  OUTLINED_FUNCTION_8_0(*MEMORY[0x1E69E9840]);
  OUTLINED_FUNCTION_8_1();
  OUTLINED_FUNCTION_3();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

void CreateComputePipelineState_cold_1(void *a1)
{
  [a1 name];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_1_1();
  _os_log_error_impl(v1, v2, v3, v4, v5, 0xCu);
}

void CreateComputePipelineState_cold_2(void *a1)
{
  [a1 name];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_1_1();
  _os_log_error_impl(v1, v2, v3, v4, v5, 0xCu);
}

void CreateComputePipelineState_cold_3()
{
  OUTLINED_FUNCTION_8_0(*MEMORY[0x1E69E9840]);
  OUTLINED_FUNCTION_8_1();
  OUTLINED_FUNCTION_3();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

void CreateRenderPipelineState_cold_1()
{
  OUTLINED_FUNCTION_8_0(*MEMORY[0x1E69E9840]);
  OUTLINED_FUNCTION_8_1();
  OUTLINED_FUNCTION_3();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

void CreateFunctionFromSource_cold_2(uint64_t a1, void *a2)
{
  [a2 bundlePath];
  OUTLINED_FUNCTION_2_7();
  OUTLINED_FUNCTION_1_1();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0x16u);
}

void CreateFunctionFromSource_cold_3()
{
  v5 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_1();
  v3 = 2082;
  v4 = v0;
  _os_log_error_impl(&dword_19CC36000, v1, OS_LOG_TYPE_ERROR, "Could not get function '%{public}s' from source:\n%{public}s\n", v2, 0x16u);
}

void CreateFunctionFromSource_cold_4()
{
  OUTLINED_FUNCTION_8_0(*MEMORY[0x1E69E9840]);
  OUTLINED_FUNCTION_8_1();
  OUTLINED_FUNCTION_3();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

void CILoadBinaryArchive_cold_1(uint64_t a1, id *a2)
{
  [*a2 description];
  OUTLINED_FUNCTION_1_1();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0x20u);
}

void CILoadBinaryArchive_cold_2()
{
  OUTLINED_FUNCTION_2_7();
  OUTLINED_FUNCTION_3();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x16u);
}

void CreateStitchedFunctionFromDescriptor_cold_1()
{
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_3();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

void CreateStitchedFunctionFromDescriptor_cold_2()
{
  OUTLINED_FUNCTION_8_0(*MEMORY[0x1E69E9840]);
  OUTLINED_FUNCTION_8_1();
  OUTLINED_FUNCTION_3();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

void print_stitched_dag_cold_1()
{
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_3();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

void __CIMetalRenderToTextures_block_invoke_101_cold_2()
{
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_3();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void CIAbortIfICSAndUnsuccessfulCommandBufferExecution_cold_1(void *a1)
{
  [objc_msgSend(a1 "error")];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_1_1();
  _os_log_error_impl(v1, v2, v3, v4, v5, 0x16u);
}

void CIAbortIfICSAndUnsuccessfulCommandBufferExecution_cold_3()
{
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_3();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void serializeBinaryArchive_cold_1(uint64_t a1, id *a2)
{
  [*a2 localizedDescription];
  OUTLINED_FUNCTION_2_7();
  OUTLINED_FUNCTION_1_1();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0x16u);
}

void __ArchiveLibraryUsingDescriptor_block_invoke_cold_1()
{
  __error();
  v0 = __error();
  strerror(*v0);
  OUTLINED_FUNCTION_1_1();
  _os_log_error_impl(v1, v2, v3, v4, v5, 0x1Cu);
}

void __ArchiveLibraryUsingDescriptor_block_invoke_cold_2(id *a1)
{
  [*a1 localizedDescription];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_1_1();
  _os_log_error_impl(v1, v2, v3, v4, v5, 0xCu);
}

void __ArchiveLibraryUsingDescriptor_block_invoke_cold_3(id *a1)
{
  [*a1 localizedDescription];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_1_1();
  _os_log_error_impl(v1, v2, v3, v4, v5, 0xCu);
}

void perspectiveTransformImage()
{
  if (__cxa_guard_acquire(_MergedGlobals_3))
  {
    xmmword_1ED7C44F0 = xmmword_19CF28470;
    unk_1ED7C4500 = xmmword_19CF28480;
    xmmword_1ED7C4510 = xmmword_19CF28490;

    __cxa_guard_release(_MergedGlobals_3);
  }
}

void convexFillHorizontal(unsigned __int8 *a1, int a2, os_log_t log)
{
  v10 = *MEMORY[0x1E69E9840];
  v3 = *a1;
  v4 = 136446722;
  v5 = "convexFillHorizontal";
  v6 = 1024;
  v7 = v3;
  v8 = 1024;
  v9 = a2;
  _os_log_error_impl(&dword_19CC36000, log, OS_LOG_TYPE_ERROR, "%{public}s [ConvexFill] center is below threshold (%d < %d)", &v4, 0x18u);
}

void convexFillHorizontal(os_log_t log)
{
  v3 = *MEMORY[0x1E69E9840];
  v1 = 136446210;
  v2 = "convexFillHorizontal";
  _os_log_error_impl(&dword_19CC36000, log, OS_LOG_TYPE_ERROR, "%{public}s [ConvexFill] center lies outside of the buffer", &v1, 0xCu);
}

void CIVNDetectFaces_cold_2(uint64_t a1)
{
  [OUTLINED_FUNCTION_2_8(a1) localizedDescription];
  OUTLINED_FUNCTION_0_0();
  OUTLINED_FUNCTION_2(&dword_19CC36000, v1, v2, "%{public}s Error while detecting face rects: %{public}@", v3, v4, v5, v6, 2u);
}

void CIVNDetectFaces_cold_3(uint64_t a1)
{
  [OUTLINED_FUNCTION_2_8(a1) localizedDescription];
  OUTLINED_FUNCTION_0_0();
  OUTLINED_FUNCTION_2(&dword_19CC36000, v1, v2, "%{public}s Error while detecting face attributes: %{public}@", v3, v4, v5, v6, 2u);
}

void CIVNDetectFaces_cold_4(uint64_t a1)
{
  [OUTLINED_FUNCTION_2_8(a1) localizedDescription];
  OUTLINED_FUNCTION_0_0();
  OUTLINED_FUNCTION_2(&dword_19CC36000, v1, v2, "%{public}s Error while detecting face landmarks: %{public}@", v3, v4, v5, v6, 2u);
}

void CIVNDetectFaces_cold_5(uint64_t a1)
{
  [OUTLINED_FUNCTION_2_8(a1) localizedDescription];
  OUTLINED_FUNCTION_0_0();
  OUTLINED_FUNCTION_2(&dword_19CC36000, v1, v2, "%{public}s Error while detecting face pose: %{public}@", v3, v4, v5, v6, 2u);
}

void CIVNDetectFaces_cold_6(uint64_t a1)
{
  [OUTLINED_FUNCTION_2_8(a1) localizedDescription];
  OUTLINED_FUNCTION_0_0();
  OUTLINED_FUNCTION_2(&dword_19CC36000, v1, v2, "%{public}s Error while detecting face segmentations: %{public}@", v3, v4, v5, v6, 2u);
}

void SDOFParameterValue()
{
  dispatch_once(&SDOFParameterValue(NSString *,NSString *)::onceToken, &__block_literal_global_1148);
}

{
  dispatch_once(&SDOFParameterValue(NSString *,NSString *)::onceToken2, &__block_literal_global_1153);
}

void FigDepthBlurEffectRenderingParametersV1FromCFData()
{
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_0_2(&dword_19CC36000, v0, v1, "Invalid parameters data; no start marker found", v2, v3, v4, v5, v6);
}

{
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_0_2(&dword_19CC36000, v0, v1, "Incorrect parameters version", v2, v3, v4, v5, v6);
}

{
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_0_2(&dword_19CC36000, v0, v1, "Size mismatch", v2, v3, v4, v5, v6);
}

{
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_0_2(&dword_19CC36000, v0, v1, "Params data too small", v2, v3, v4, v5, v6);
}

void CI::snprintf_cs()
{
  if (__cxa_guard_acquire(&qword_1ED7C4528))
  {
    _MergedGlobals_4 = CGColorSpaceCreateWithName(*MEMORY[0x1E695F1C0]);

    __cxa_guard_release(&qword_1ED7C4528);
  }
}

void CI::SWContext::render_node()
{
  OUTLINED_FUNCTION_3();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

{
  OUTLINED_FUNCTION_3();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

{
  OUTLINED_FUNCTION_3();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

{
  OUTLINED_FUNCTION_3();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

{
  OUTLINED_FUNCTION_3();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void CI::SWContext::render_node(int a1, int a2, os_log_t log)
{
  v9 = *MEMORY[0x1E69E9840];
  v3 = 136446722;
  v4 = "void CI::SWContext::render_node(ProgramNode *, const CGRect &, const CGRect &, const Bitmap *)";
  v5 = 1024;
  v6 = a1;
  v7 = 1024;
  v8 = a2;
  _os_log_error_impl(&dword_19CC36000, log, OS_LOG_TYPE_ERROR, "%{public}s: Destination refCount changed from %d to %d", &v3, 0x18u);
}

void CI::SWContext::render_node(uint64_t *a1, uint64_t *a2, os_log_t log)
{
  v11 = *MEMORY[0x1E69E9840];
  v3 = *a1;
  v4 = *a2;
  v5 = 136446722;
  v6 = "void CI::SWContext::render_node(ProgramNode *, const CGRect &, const CGRect &, const Bitmap *)";
  v7 = 2048;
  v8 = v3;
  v9 = 2048;
  v10 = v4;
  _os_log_error_impl(&dword_19CC36000, log, OS_LOG_TYPE_ERROR, "%{public}s: outBuffer with %zu width and %zu height", &v5, 0x20u);
}

uint64_t CMatrix::operator[](unsigned int *a1, unsigned int a2)
{
  if (*a1 <= a2)
  {
    return 0;
  }

  else
  {
    return a1[1];
  }
}

void *CMatrixRow::operator[](uint64_t a1, unsigned int a2)
{
  v2 = *(a1 + 8);
  if (!v2)
  {
    return &CMatrixRow::operator[]const::zero;
  }

  v3 = v2 + 8 * a2;
  if (*a1 > a2)
  {
    return v3;
  }

  else
  {
    return &CMatrixRow::operator[]const::zero;
  }
}

void CI::PixelBufferImage::render_graph_core(int a1, NSObject *a2)
{
  v5 = *MEMORY[0x1E69E9840];
  v3 = 136446210;
  v4 = CI::name_for_format(a1);
  _os_log_error_impl(&dword_19CC36000, a2, OS_LOG_TYPE_ERROR, "Render failed because a pixel format %{public}s is not supported.\n", &v3, 0xCu);
}

void wrapEAGLContextTexImageIOSurface_cold_1(uint64_t a1, NSObject *a2)
{
  v4 = *MEMORY[0x1E69E9840];
  v2 = 134217984;
  v3 = a1;
  _os_log_error_impl(&dword_19CC36000, a2, OS_LOG_TYPE_ERROR, "Could not set current EAGL context to %p.", &v2, 0xCu);
}

void CI::createCFData()
{
  if (__cxa_guard_acquire(&qword_1ED7C4538))
  {
    _MergedGlobals_5 = getpagesize();

    __cxa_guard_release(&qword_1ED7C4538);
  }
}

void ___ZN2CI16GLTextureManager19create_intermediateERKNS_22IntermediateDescriptorEP11__IOSurfaceiRK5IRectmb_block_invoke_cold_1()
{
  OUTLINED_FUNCTION_8_0(*MEMORY[0x1E69E9840]);
  OUTLINED_FUNCTION_8_1();
  OUTLINED_FUNCTION_2_1(&dword_19CC36000, v0, v1, "Unable to get macro state for the GLContext: %{public}p.\n", v2, v3, v4, v5, v6);
}

void CI::GLTextureManager::upload_texture()
{
  OUTLINED_FUNCTION_8_0(*MEMORY[0x1E69E9840]);
  OUTLINED_FUNCTION_8_1();
  OUTLINED_FUNCTION_2_1(&dword_19CC36000, v0, v1, "Unable to get macro state for the GLContext: %{public}p.\n", v2, v3, v4, v5, v6);
}

void ___ZN2CI9GLContext16render_root_nodeEPNS_8TileTaskERKNS_9parentROIEU13block_pointerFvvES7__block_invoke_38_cold_1()
{
  OUTLINED_FUNCTION_8_0(*MEMORY[0x1E69E9840]);
  OUTLINED_FUNCTION_8_1();
  OUTLINED_FUNCTION_2_1(&dword_19CC36000, v0, v1, "Unable to get macro state for the GLContext: %{public}p.\n", v2, v3, v4, v5, v6);
}

void CI::MetalTextureManager::create_intermediate(uint64_t a1, uint8_t *buf, os_log_t log)
{
  *buf = 136446210;
  *(buf + 4) = a1;
  _os_log_error_impl(&dword_19CC36000, log, OS_LOG_TYPE_ERROR, "Rendering with %{public}s requires compression!\n", buf, 0xCu);
}

void CI::allowRemoval(uint64_t *a1, NSObject *a2)
{
  v5 = *MEMORY[0x1E69E9840];
  v2 = *a1;
  v3 = 134217984;
  v4 = v2;
  _os_log_error_impl(&dword_19CC36000, a2, OS_LOG_TYPE_ERROR, "Released LRU for %p", &v3, 0xCu);
}

void CI::MetalContext::set_bitmap_destination()
{
  if (__cxa_guard_acquire(&qword_1ED7C4548))
  {
    _MergedGlobals_6 = getpagesize();

    __cxa_guard_release(&qword_1ED7C4548);
  }
}

uint64_t CI::Context::recursive_render(CI::TextureManager *a1)
{
  result = __cxa_guard_acquire(&qword_1ED7C4558);
  if (result)
  {
    CI::TextureManager::intermediate(a1);
  }

  return result;
}

{
  result = __cxa_guard_acquire(&qword_1ED7C4568);
  if (result)
  {
    CI::TextureManager::intermediate(a1);
  }

  return result;
}

void CI::Context::recursive_render(double *a1, double *a2)
{
  v2 = CFStringCreateWithFormat(0, 0, @"Core Image cannot allocate surface of size %zu x %zu", *a1, *a2);
  qword_1ED7C3F80 = CFStringGetCStringPtr(v2, 0x600u);
  abort();
}

void CI::Context::recursive_render()
{
  qword_1ED7C3F80 = "Core Image cannot allocate IOSurface with unspecified format.";
  abort();
}

{
  dispatch_once(&CI::dump_intermediate_for_node(CI::ProgramNode const*,CI::intermediate_t const*,dispatch_group_s *)::onceToken, &__block_literal_global_88_1);
}

{
  dispatch_once(&CI::Context::render_completion_queue(void)::onceToken, &__block_literal_global_84);
}

void CI::convert_buffer_to_texture()
{
  if (__cxa_guard_acquire(&qword_1ED7C4578))
  {
    _MergedGlobals_8 = getpagesize();

    __cxa_guard_release(&qword_1ED7C4578);
  }
}

void CI::format_swizzle_for_input()
{
  OUTLINED_FUNCTION_1_11();
  OUTLINED_FUNCTION_2_12(&dword_19CC36000, v0, v1, "CoreImage needs a %{public}s swizzler so that %{public}s can be read as %{public}s.\n", v2, v3, v4, v5, 2u);
}

{
  OUTLINED_FUNCTION_1_11();
  OUTLINED_FUNCTION_2_12(&dword_19CC36000, v0, v1, "CoreImage needs a %{public}s swizzler so that %{public}s can be read as %{public}s.\n", v2, v3, v4, v5, 2u);
}

{
  OUTLINED_FUNCTION_1_11();
  OUTLINED_FUNCTION_2_12(&dword_19CC36000, v0, v1, "CoreImage needs a %{public}s swizzler so that %{public}s can be read as %{public}s.\n", v2, v3, v4, v5, 2u);
}

void CI::ColorMatchImage::render_graph_core()
{
  if (__cxa_guard_acquire(&qword_1ED7C4588))
  {
    Mutable = CFDictionaryCreateMutable(0, 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
    v1 = OUTLINED_FUNCTION_0_12(Mutable, &_MergedGlobals_9);
    __cxa_guard_release(v1);
  }
}

{
  dispatch_once(&CI::CI_EXTENDED_PCS(void)::didCheck, &__block_literal_global_86);
}

{
  if (__cxa_guard_acquire(&qword_1ED7C4598))
  {
    Mutable = CFDictionaryCreateMutable(0, 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
    v1 = OUTLINED_FUNCTION_0_12(Mutable, &qword_1ED7C4590);
    __cxa_guard_release(v1);
  }
}

void CI::ColorMatchImage::render_graph_core(uint64_t a1, NSObject *a2)
{
  v4 = *MEMORY[0x1E69E9840];
  v2 = 136446210;
  v3 = a1;
  _os_log_error_impl(&dword_19CC36000, a2, OS_LOG_TYPE_ERROR, "Could not support source colorspace: %{public}s", &v2, 0xCu);
}

{
  v4 = *MEMORY[0x1E69E9840];
  v2 = 136446210;
  v3 = a1;
  _os_log_error_impl(&dword_19CC36000, a2, OS_LOG_TYPE_ERROR, "Could not support destination colorspace: %{public}s", &v2, 0xCu);
}

void CI::match_color(uint64_t a1, uint64_t a2, os_log_t log)
{
  v7 = *MEMORY[0x1E69E9840];
  v3 = 136446466;
  v4 = a1;
  v5 = 2082;
  v6 = a2;
  _os_log_error_impl(&dword_19CC36000, log, OS_LOG_TYPE_ERROR, "Matching a color failed: from %{public}s to %{public}s", &v3, 0x16u);
}

void CI::get_colorspace_gamma_and_matrix()
{
  if (__cxa_guard_acquire(&qword_1ED7C45A8))
  {
    v0 = CGColorSpaceCreateWithName(*MEMORY[0x1E695F1B0]);
    v1 = OUTLINED_FUNCTION_0_12(v0, &qword_1ED7C45A0);

    __cxa_guard_release(v1);
  }
}

{
  if (__cxa_guard_acquire(&qword_1ED7C45B8))
  {
    v0 = CGColorSpaceCreateWithName(*MEMORY[0x1E695F108]);
    v1 = OUTLINED_FUNCTION_0_12(v0, &qword_1ED7C45B0);

    __cxa_guard_release(v1);
  }
}

{
  if (__cxa_guard_acquire(&qword_1ED7C45C8))
  {
    v0 = CGColorSpaceCreateWithName(*MEMORY[0x1E695F1C0]);
    v1 = OUTLINED_FUNCTION_0_12(v0, &qword_1ED7C45C0);
    __cxa_guard_release(v1);
  }
}

{
  if (__cxa_guard_acquire(&qword_1ED7C45D8))
  {
    v0 = CGColorSpaceCreateWithName(*MEMORY[0x1E695F110]);
    v1 = OUTLINED_FUNCTION_0_12(v0, &qword_1ED7C45D0);
    __cxa_guard_release(v1);
  }
}

{
  if (__cxa_guard_acquire(&qword_1ED7C45E8))
  {
    v0 = CGColorSpaceCreateWithName(*MEMORY[0x1E695F128]);
    v1 = OUTLINED_FUNCTION_0_12(v0, &qword_1ED7C45E0);
    __cxa_guard_release(v1);
  }
}

void CI::SurfaceImage::render_graph_core(int *a1, NSObject *a2)
{
  v6 = *MEMORY[0x1E69E9840];
  v3 = CI::name_for_format(*a1);
  v4 = 136446210;
  v5 = v3;
  _os_log_error_impl(&dword_19CC36000, a2, OS_LOG_TYPE_ERROR, "Render failed because a pixel format %{public}s is not supported.\n", &v4, 0xCu);
}

void ___ZL37addSpecializedFunctionToBinaryArchiveP21MTLFunctionDescriptorPU21objcproto10MTLLibrary11objc_object_block_invoke_cold_1(id *a1)
{
  [*a1 localizedDescription];
  OUTLINED_FUNCTION_1_1();
  _os_log_error_impl(v1, v2, v3, v4, v5, 0xCu);
}

void CI::StitchableFunctionDAGDescriptor::~StitchableFunctionDAGDescriptor(uint64_t a1)
{
  v2 = *(a1 + 80);
  if (v2)
  {
    *(a1 + 88) = v2;
    operator delete(v2);
  }
}

void CI::UberDAGDescriptor::create_pipeline(uint64_t a1, uint8_t *buf, os_log_t log)
{
  *buf = 138543362;
  *(buf + 4) = a1;
  _os_log_error_impl(&dword_19CC36000, log, OS_LOG_TYPE_ERROR, "Failed creating visible function handle for %{public}@", buf, 0xCu);
}

void CI::UberDAGDescriptor::create_pipeline()
{
  OUTLINED_FUNCTION_3();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

{
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_3();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

{
  OUTLINED_FUNCTION_3();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void CI::PrecompiledUberFunctions::getUberShaderName()
{
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_3();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

void CI::PrecompiledUberFunctions::getFunctionArray()
{
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_3();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

void CI::PrecompiledUberFunctions::getFunctionArrayNoDuplicates()
{
  v5 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_1();
  v3 = 2114;
  v4 = v0;
  _os_log_error_impl(&dword_19CC36000, v1, OS_LOG_TYPE_ERROR, "Error creating uber wrapper function %{public}@ from library: %{public}@", v2, 0x16u);
}

void CI::UberDAGDescriptor::~UberDAGDescriptor(void *a1)
{
  v2 = a1[34];
  if (v2)
  {
    a1[35] = v2;
    operator delete(v2);
  }

  v3 = a1[31];
  if (v3)
  {
    a1[32] = v3;

    operator delete(v3);
  }
}

void CI::LegacyDAGDescriptor::~LegacyDAGDescriptor(uint64_t a1)
{
  v2 = *(a1 + 40);
  if (v2)
  {
    *(a1 + 48) = v2;
    operator delete(v2);
  }
}

void CI::Kernel::builtin(int a1, NSObject *a2)
{
  v3 = *MEMORY[0x1E69E9840];
  v2[0] = 67109120;
  v2[1] = a1;
  _os_log_error_impl(&dword_19CC36000, a2, OS_LOG_TYPE_ERROR, "don't know how to create builtin kernel for type %d", v2, 8u);
}

void CI::fillBlock()
{
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_0_2(&dword_19CC36000, v0, v1, "Source provider block set is nil.", v2, v3, v4, v5, v6);
}

{
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_0_2(&dword_19CC36000, v0, v1, "Source image provider is nil.", v2, v3, v4, v5, v6);
}

{
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_0_2(&dword_19CC36000, v0, v1, "Destination surface is nil.", v2, v3, v4, v5, v6);
}

void CI::GeneralKernelNode::roi_of_child(uint64_t a1, NSObject *a2)
{
  v5 = *MEMORY[0x1E69E9840];
  v2 = *(*(a1 + 48) + 24);
  v3 = 136446210;
  v4 = v2;
  _os_log_error_impl(&dword_19CC36000, a2, OS_LOG_TYPE_ERROR, "Error general kernel %{public}s no longer has its ROI callback.", &v3, 0xCu);
}

void CI::WarpKernelNode::roi_of_child(uint64_t a1, NSObject *a2)
{
  v5 = *MEMORY[0x1E69E9840];
  v2 = *(*(a1 + 48) + 24);
  v3 = 136446210;
  v4 = v2;
  _os_log_error_impl(&dword_19CC36000, a2, OS_LOG_TYPE_ERROR, "Error warp kernel %{public}s no longer has its ROI callback.", &v3, 0xCu);
}

void CI::PremultiplyNode::convert_to_kernel_node(int *a1, NSObject *a2)
{
  v4 = *MEMORY[0x1E69E9840];
  v2 = *a1;
  v3[0] = 67109120;
  v3[1] = v2;
  _os_log_error_impl(&dword_19CC36000, a2, OS_LOG_TYPE_ERROR, "Invalid premultiply power %d.", v3, 8u);
}

void CI::ConvertNode::render(uint64_t a1, NSObject *a2)
{
  v4 = *MEMORY[0x1E69E9840];
  v2 = 134217984;
  v3 = a1;
  _os_log_debug_impl(&dword_19CC36000, a2, OS_LOG_TYPE_DEBUG, "Failed to render - cannot access data from CGImage %p", &v2, 0xCu);
}

uint64_t CI::ProgramNode::queue_pool()
{
  result = __cxa_guard_acquire(&qword_1ED7C45F8);
  if (result)
  {
    operator new();
  }

  return result;
}

void ___ZNK2CI12ProviderNode13surfaceForROIEPKNS_7ContextERK6CGRectRNS_8Tileable5StatsE_block_invoke_6_cold_1(int *a1, uint64_t a2, int a3)
{
  v6 = ci_logger_render();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
  {
    v7 = CI::name_for_format(*a1);
    v8 = 136446722;
    v9 = v7;
    v10 = 2048;
    v11 = a2;
    v12 = 1024;
    v13 = a3;
    _os_log_error_impl(&dword_19CC36000, v6, OS_LOG_TYPE_ERROR, "Malloc of scratch for %{public}s rowbytes=%zu plane=%d failed.", &v8, 0x1Cu);
  }

  abort();
}

void CI::SRGBNode::convert_to_kernel_node(int *a1, NSObject *a2)
{
  v4 = *MEMORY[0x1E69E9840];
  v2 = *a1;
  v3[0] = 67109120;
  v3[1] = v2;
  _os_log_error_impl(&dword_19CC36000, a2, OS_LOG_TYPE_ERROR, "Invalid srgb direction %d.", v3, 8u);
}

void CI::Object::performDeferredRoot()
{
  if (__cxa_guard_acquire(&_MergedGlobals_11))
  {
    qword_1ED7C4620 = &qword_1ED7C4620;
    qword_1ED7C4628 = &qword_1ED7C4620;
    qword_1ED7C4630 = 0;
    __cxa_atexit(std::list<dispatch_queue_s *>::~list, &qword_1ED7C4620, &dword_19CC36000);

    __cxa_guard_release(&_MergedGlobals_11);
  }
}

{
  if (__cxa_guard_acquire(&qword_1ED7C4608))
  {
    qword_1ED7C4638 = &qword_1ED7C4638;
    qword_1ED7C4640 = &qword_1ED7C4638;
    qword_1ED7C4648 = 0;
    __cxa_atexit(std::list<dispatch_group_s *>::~list, &qword_1ED7C4638, &dword_19CC36000);

    __cxa_guard_release(&qword_1ED7C4608);
  }
}

{
  if (__cxa_guard_acquire(&qword_1ED7C4618))
  {
    v0 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    qword_1ED7C4610 = dispatch_queue_create("CI::DispatchPoolAccessQueue", v0);

    __cxa_guard_release(&qword_1ED7C4618);
  }
}

void ___ZNK2CI19RenderToPixelBuffer6renderEPNS_5ImageEPNS_7ContextE_block_invoke_10_cold_1(os_log_t log)
{
  v3 = *MEMORY[0x1E69E9840];
  v1 = 136446210;
  v2 = "render_block_invoke";
  _os_log_error_impl(&dword_19CC36000, log, OS_LOG_TYPE_ERROR, "%{public}s could not access pixelbuffer.", &v1, 0xCu);
}

void ___ZNK2CI15RenderToSurface6renderEPNS_5ImageEPNS_7ContextE_block_invoke_10_cold_1(os_log_t log)
{
  v3 = *MEMORY[0x1E69E9840];
  v1 = 136446210;
  v2 = "render_block_invoke";
  _os_log_error_impl(&dword_19CC36000, log, OS_LOG_TYPE_ERROR, "%{public}s could not access surface.", &v1, 0xCu);
}

void CI::tile_node_graph()
{
  if (__cxa_guard_acquire(&qword_1ED7C4658))
  {
    if (CI_PRINT_TREE_dump_timing() || (CI_PRINT_TREE_dump_intermediates() & 1) != 0)
    {
      v0 = 1;
    }

    else
    {
      v0 = CI_PRINT_TREE_dump_outputs();
    }

    _MergedGlobals_12 = v0;
    __cxa_guard_release(&qword_1ED7C4658);
  }
}

void CI::tile_node_graph(uint64_t a1, uint64_t a2, os_log_t log)
{
  v7 = *MEMORY[0x1E69E9840];
  v3 = 134218240;
  v4 = a1 - a2;
  v5 = 2048;
  v6 = a1;
  _os_log_error_impl(&dword_19CC36000, log, OS_LOG_TYPE_ERROR, "Failed to render %llu of %llu pixels", &v3, 0x16u);
}

void CI::tile_node_graph(uint64_t a1, NSObject *a2)
{
  v4 = *MEMORY[0x1E69E9840];
  v2 = 134217984;
  v3 = a1;
  _os_log_error_impl(&dword_19CC36000, a2, OS_LOG_TYPE_ERROR, "Failed to render %llu pixels", &v2, 0xCu);
}

void CI::recursive_tile()
{
  if (__cxa_guard_acquire(&qword_1ED7C4660))
  {
    if (CI_PRINT_TREE_dump_timing() || (CI_PRINT_TREE_dump_intermediates() & 1) != 0)
    {
      v0 = 0;
    }

    else
    {
      v0 = CI_PRINT_TREE_dump_outputs() ^ 1;
    }

    byte_1ED7C4651 = v0;
    __cxa_guard_release(&qword_1ED7C4660);
  }
}

uint64_t CI::gReleaseSurfaceBlockMap()
{
  result = __cxa_guard_acquire(&qword_1ED7C4670);
  if (result)
  {
    operator new();
  }

  return result;
}

void CI::SurfaceCacheEntry::SurfaceCacheEntry(unint64_t a1, NSObject *a2)
{
  v44 = *MEMORY[0x1E69E9840];
  v2 = CI::gCacheList;
  if (CI::gCacheList)
  {
    v2 = *(CI::gCacheList + 16);
  }

  v3 = atomic_load(&CI::gCacheSize);
  if (v3 <= 0x80000000)
  {
    if (v3 <= 0x200000)
    {
      if (v3 < 0x801)
      {
        goto LABEL_10;
      }

      v4 = vcvtd_n_f64_u64(v3, 0xAuLL);
    }

    else
    {
      v4 = vcvtd_n_f64_u64(v3, 0x14uLL);
    }
  }

  else
  {
    v4 = vcvtd_n_f64_u64(v3, 0x1EuLL);
  }

  v3 = llround(v4);
LABEL_10:
  v5 = atomic_load(&CI::gCacheSize);
  v6 = "B";
  if (v5 <= 0x80000000)
  {
    if (v5 <= 0x200000)
    {
      if (v5 <= 0x800)
      {
        v7 = "B";
      }

      else
      {
        v7 = "KB";
      }
    }

    else
    {
      v7 = "MB";
    }
  }

  else
  {
    v7 = "GB";
  }

  v8 = llround(vcvtd_n_f64_u64(a1, 0x1EuLL));
  v9 = llround(vcvtd_n_f64_u64(a1, 0x14uLL));
  v10 = "MB";
  v11 = llround(vcvtd_n_f64_u64(a1, 0xAuLL));
  if (a1 > 0x800)
  {
    v12 = "KB";
  }

  else
  {
    v11 = a1;
    v12 = "B";
  }

  if (a1 <= 0x200000)
  {
    v9 = v11;
    v10 = v12;
  }

  if (a1 <= 0x80000000)
  {
    v13 = v10;
  }

  else
  {
    v9 = v8;
    v13 = "GB";
  }

  v14 = llround(vcvtd_n_f64_u64(CI::gCacheSizePeak, 0x1EuLL));
  v15 = llround(vcvtd_n_f64_u64(CI::gCacheSizePeak, 0x14uLL));
  v16 = "MB";
  v17 = llround(vcvtd_n_f64_u64(CI::gCacheSizePeak, 0xAuLL));
  if (CI::gCacheSizePeak > 0x800)
  {
    v18 = "KB";
  }

  else
  {
    v17 = CI::gCacheSizePeak;
    v18 = "B";
  }

  if (CI::gCacheSizePeak <= 0x200000)
  {
    v15 = v17;
    v16 = v18;
  }

  if (CI::gCacheSizePeak > 0x80000000)
  {
    v19 = "GB";
  }

  else
  {
    v14 = v15;
    v19 = v16;
  }

  v20 = llround(vcvtd_n_f64_u64(CI::gCacheNonVolatileSizePeak, 0x1EuLL));
  v21 = llround(vcvtd_n_f64_u64(CI::gCacheNonVolatileSizePeak, 0x14uLL));
  v22 = llround(vcvtd_n_f64_u64(CI::gCacheNonVolatileSizePeak, 0xAuLL));
  if (CI::gCacheNonVolatileSizePeak > 0x800)
  {
    v6 = "KB";
  }

  else
  {
    v22 = CI::gCacheNonVolatileSizePeak;
  }

  if (CI::gCacheNonVolatileSizePeak <= 0x200000)
  {
    v23 = v22;
  }

  else
  {
    v23 = v21;
  }

  if (CI::gCacheNonVolatileSizePeak > 0x200000)
  {
    v6 = "MB";
  }

  if (CI::gCacheNonVolatileSizePeak > 0x80000000)
  {
    v23 = v20;
    v6 = "GB";
  }

  v24 = 134220290;
  v25 = v2;
  v26 = 2048;
  v27 = v3;
  v28 = 2080;
  v29 = v7;
  v30 = 2048;
  v31 = v9;
  v32 = 2080;
  v33 = v13;
  v34 = 2048;
  v35 = CI::gCacheCountPeak;
  v36 = 2048;
  v37 = v14;
  v38 = 2080;
  v39 = v19;
  v40 = 2048;
  v41 = v23;
  v42 = 2080;
  v43 = v6;
  _os_log_fault_impl(&dword_19CC36000, a2, OS_LOG_TYPE_FAULT, "Cache Stats: count=%ld size=%ld%s non-volatile=%ld%s peakCount=%ld peakSize=%ld%s peakNVSize=%ld%s", &v24, 0x66u);
}

void CI::RenderTask::quicklookDataForRenderTask()
{
  if (__cxa_guard_acquire(&qword_1ED7C4680))
  {
    _MergedGlobals_14 = CIGVRendererCreatePDFRenderer();

    __cxa_guard_release(&qword_1ED7C4680);
  }
}

void CI::RenderTask::quicklookDataForRenderInfo()
{
  if (__cxa_guard_acquire(&qword_1ED7C4690))
  {
    qword_1ED7C4688 = CIGVRendererCreatePDFRenderer();

    __cxa_guard_release(&qword_1ED7C4690);
  }
}

CFRange CFStringFind(CFStringRef theString, CFStringRef stringToFind, CFStringCompareFlags compareOptions)
{
  v3 = MEMORY[0x1EEDB7958](theString, stringToFind, compareOptions);
  result.length = v4;
  result.location = v3;
  return result;
}

CGSize CGLayerGetSize(CGLayerRef layer)
{
  MEMORY[0x1EEDBA310](layer);
  result.height = v2;
  result.width = v1;
  return result;
}

CGRect CGRectApplyAffineTransform(CGRect rect, CGAffineTransform *t)
{
  MEMORY[0x1EEDBAD98](t, rect.origin, *&rect.origin.y, rect.size, *&rect.size.height);
  result.size.height = v5;
  result.size.width = v4;
  result.origin.y = v3;
  result.origin.x = v2;
  return result;
}

CGRect CGRectInset(CGRect rect, CGFloat dx, CGFloat dy)
{
  MEMORY[0x1EEDBAE30](rect.origin, *&rect.origin.y, rect.size, *&rect.size.height, dx, dy);
  result.size.height = v6;
  result.size.width = v5;
  result.origin.y = v4;
  result.origin.x = v3;
  return result;
}

CGRect CGRectIntegral(CGRect rect)
{
  MEMORY[0x1EEDBAE38](rect.origin, *&rect.origin.y, rect.size, *&rect.size.height);
  result.size.height = v4;
  result.size.width = v3;
  result.origin.y = v2;
  result.origin.x = v1;
  return result;
}

CGRect CGRectIntersection(CGRect r1, CGRect r2)
{
  MEMORY[0x1EEDBAE40](r1.origin, *&r1.origin.y, r1.size, *&r1.size.height, r2.origin, *&r2.origin.y, r2.size, *&r2.size.height);
  result.size.height = v5;
  result.size.width = v4;
  result.origin.y = v3;
  result.origin.x = v2;
  return result;
}

CGRect CGRectOffset(CGRect rect, CGFloat dx, CGFloat dy)
{
  MEMORY[0x1EEDBAE78](rect.origin, *&rect.origin.y, rect.size, *&rect.size.height, dx, dy);
  result.size.height = v6;
  result.size.width = v5;
  result.origin.y = v4;
  result.origin.x = v3;
  return result;
}

CGRect CGRectStandardize(CGRect rect)
{
  MEMORY[0x1EEDBAE80](rect.origin, *&rect.origin.y, rect.size, *&rect.size.height);
  result.size.height = v4;
  result.size.width = v3;
  result.origin.y = v2;
  result.origin.x = v1;
  return result;
}

CGRect CGRectUnion(CGRect r1, CGRect r2)
{
  MEMORY[0x1EEDBAE88](r1.origin, *&r1.origin.y, r1.size, *&r1.size.height, r2.origin, *&r2.origin.y, r2.size, *&r2.size.height);
  result.size.height = v5;
  result.size.width = v4;
  result.origin.y = v3;
  result.origin.x = v2;
  return result;
}

CGSize CTFramesetterSuggestFrameSizeWithConstraints(CTFramesetterRef framesetter, CFRange stringRange, CFDictionaryRef frameAttributes, CGSize constraints, CFRange *fitRange)
{
  MEMORY[0x1EEDBF1F0](framesetter, stringRange.location, stringRange.length, frameAttributes, fitRange, constraints, *&constraints.height);
  result.height = v6;
  result.width = v5;
  return result;
}

CGRect CTLineGetBoundsWithOptions(CTLineRef line, CTLineBoundsOptions options)
{
  MEMORY[0x1EEDBF2E0](line, options);
  result.size.height = v5;
  result.size.width = v4;
  result.origin.y = v3;
  result.origin.x = v2;
  return result;
}

CGSize CVImageBufferGetEncodedSize(CVImageBufferRef imageBuffer)
{
  MEMORY[0x1EEDBF858](imageBuffer);
  result.height = v2;
  result.width = v1;
  return result;
}

uint64_t std::ostream::operator<<()
{
  return MEMORY[0x1EEE63ED0]();
}

{
  return MEMORY[0x1EEE63ED8]();
}

{
  return MEMORY[0x1EEE63EE8]();
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

simd_float3x3 __invert_f3(simd_float3x3 a1)
{
  MEMORY[0x1EEE73558](a1.columns[0], a1.columns[1], a1.columns[2]);
  result.columns[2].i64[1] = v6;
  result.columns[2].i64[0] = v5;
  result.columns[1].i64[1] = v4;
  result.columns[1].i64[0] = v3;
  result.columns[0].i64[1] = v2;
  result.columns[0].i64[0] = v1;
  return result;
}

__double2 __sincos_stret(double a1)
{
  MEMORY[0x1EEE73570](a1);
  result.__cosval = v2;
  result.__sinval = v1;
  return result;
}

__float2 __sincosf_stret(float a1)
{
  MEMORY[0x1EEE73578](a1);
  result.__cosval = v2;
  result.__sinval = v1;
  return result;
}