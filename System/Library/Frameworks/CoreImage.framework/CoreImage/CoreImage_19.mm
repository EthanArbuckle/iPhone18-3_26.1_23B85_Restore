void CI::ConvertNode::ConvertNode(CI::NodeWithChildren *a1, CI::Node *a2, unsigned int a3)
{
  (*(*a2 + 168))(a2);
  CI::cfname_for_conversion(a3);
  v6 = (*(*a2 + 16))(a2);
  if ((CI::is_image_type(v6) & 1) == 0)
  {
    CI::input_format_for_conversion(a3);
  }

  CI::output_format_for_conversion(a3);
  CI::conversion_is_alpha_one(a3);
  v7 = (*(*a2 + 16))(a2);
  CI::is_image_type(v7);
  CI::ProcessorNode::ProcessorNode(a1, a2);
}

CI::Object *CI::ConvertNode::append_to_tree(CI::Object *this, int a2)
{
  v2 = this;
  if (a2)
  {
    if ((*(*this + 16))(this) != 48 || ((v4 = (*(*v2 + 440))(v2), a2 != 32) || v4 != 33) && (a2 != 34 || v4 != 35) && (a2 != 6 || v4 != 5) && (a2 != 5 || v4 != 6) && (a2 != 38 || v4 != 36) && (a2 != 39 || v4 != 37) && (a2 != 30 || v4 != 31) && (a2 != 31 || v4 != 30) && (a2 != 27 || v4 != 26) && (a2 != 29 || v4 != 28) && (a2 != 20 || v4 != 21) && (a2 != 21 || v4 != 20) && (a2 != 17 || v4 != 16) && (a2 != 19 || v4 != 18))
    {
      if ((*(*v2 + 16))(v2) >= 47)
      {
        (*(*v2 + 16))(v2);
      }

      operator new();
    }

    v5 = (*(*v2 + 48))(v2, 0);
    v2 = v5;
    if (v5)
    {
      CI::Object::ref(v5);
    }

    return v2;
  }

  if (!this)
  {
    return v2;
  }

  return CI::Object::ref(this);
}

void ___ZN2CI11ConvertNode14append_to_treeEPNS_4NodeENS_11ConvertTypeE_block_invoke(uint64_t a1, __IOSurface ***a2, CGFloat a3, CGFloat a4, CGFloat a5, CGFloat a6, uint64_t a7, uint64_t a8, CGFloat **a9, uint64_t a10, __IOSurface *a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15)
{
  v15 = **a2;
  if (!v15)
  {
    return;
  }

  v23 = **a9;
  v24 = (*a9)[1];
  v25 = (*a9)[2];
  v26 = (*a9)[3];
  v40.origin.x = v23;
  v40.origin.y = v24;
  v40.size.width = v25;
  v40.size.height = v26;
  if (CGRectIsNull(v40))
  {
    height = 0;
    width = 0;
    y = 0x7FFFFFFF;
    x = 0x7FFFFFFF;
  }

  else
  {
    v41.origin.x = v23;
    v41.origin.y = v24;
    v41.size.width = v25;
    v41.size.height = v26;
    if (CGRectIsInfinite(v41))
    {
      y = -2147483647;
      height = 0xFFFFFFFFLL;
      width = 0xFFFFFFFFLL;
      x = -2147483647;
    }

    else
    {
      v42.origin.x = v23;
      v42.origin.y = v24;
      v42.size.width = v25;
      v42.size.height = v26;
      v43 = CGRectInset(v42, 0.000001, 0.000001);
      v44 = CGRectIntegral(v43);
      x = v44.origin.x;
      y = v44.origin.y;
      width = v44.size.width;
      height = v44.size.height;
    }
  }

  v45.origin.x = a3;
  v45.origin.y = a4;
  v45.size.width = a5;
  v45.size.height = a6;
  if (CGRectIsNull(v45))
  {
    v31 = 0;
    v32 = 0;
    v33 = 0x7FFFFFFF;
    v34 = 0x7FFFFFFF;
  }

  else
  {
    v46.origin.x = a3;
    v46.origin.y = a4;
    v46.size.width = a5;
    v46.size.height = a6;
    if (CGRectIsInfinite(v46))
    {
      v33 = -2147483647;
      v31 = 0xFFFFFFFFLL;
      v32 = 0xFFFFFFFFLL;
      v34 = -2147483647;
    }

    else
    {
      v47.origin.x = a3;
      v47.origin.y = a4;
      v47.size.width = a5;
      v47.size.height = a6;
      v48 = CGRectInset(v47, 0.000001, 0.000001);
      v49 = CGRectIntegral(v48);
      v34 = v49.origin.x;
      v33 = v49.origin.y;
      v32 = v49.size.width;
      v31 = v49.size.height;
    }
  }

  if (x == -2147483647 && y == -2147483647 && width == 0xFFFFFFFF && height == 0xFFFFFFFF)
  {
    goto LABEL_16;
  }

  if (v34 != 0x7FFFFFFF)
  {
    if (v34 == -2147483647 && v33 == -2147483647 && v32 == 0xFFFFFFFF && v31 == 0xFFFFFFFF)
    {
      return;
    }

LABEL_29:
    if (height)
    {
      v36 = 0;
    }

    else
    {
      v36 = width == 0;
    }

    v38 = v36 && y == 0x7FFFFFFF && x == 0x7FFFFFFF;
    if (v38 || v34 < x || x + width < v34 + v32 || v33 < y || y + height < v33 + v31)
    {
      return;
    }

    goto LABEL_16;
  }

  if (v33 != 0x7FFFFFFF || v32 || v31)
  {
    goto LABEL_29;
  }

LABEL_16:
  if (a11 | a12)
  {
    v35 = *(a1 + 32);

    CI::convert_buffer_to_texture(a15, v15, v34 - x, v33 - y, 0, a11, a12, v35);
  }
}

void CI::ConvertNode::render(uint64_t a1, uint64_t a2, void *a3, uint64_t *a4, void *a5, CGRect *a6, int a7)
{
  v14 = (*(*a1 + 48))(a1, 0);
  if (!v14)
  {
    goto LABEL_26;
  }

  v15 = v14;
  if ((*(*v14 + 16))(v14) != 35)
  {
    goto LABEL_26;
  }

  v16 = (*(***a4 + 32))(**a4);
  v37[0] = 0;
  v37[1] = 0;
  CI::CGNode::surfaceForROI(v15, a3, &v16->origin.x, v37, &v36);
  v17 = v36;
  if (v36)
  {
    ReturnSurfaceToCache(v36);
  }

  else
  {
    if (CI_VERBOSE_SIGNPOSTS())
    {
      log = ci_signpost_log_render();
      v18 = (*(*a3 + 280))(a3);
      if ((*(a1 + 36) | (v18 << 32)) - 1 <= 0xFFFFFFFFFFFFFFFDLL)
      {
        v29 = *(a1 + 36) | (v18 << 32);
        if (os_signpost_enabled(log))
        {
          *buf = 0;
          _os_signpost_emit_with_name_impl(&dword_19CC36000, log, OS_SIGNPOST_INTERVAL_BEGIN, v29, "convert_processor", &unk_19CFBCBAE, buf, 2u);
        }
      }
    }

    v19 = (*(*a3 + 280))(a3);
    TimerBase::TimerBase(buf, v19, *(a1 + 36), "convert_processor", 15);
    v32 = CGRectIntersection(*v16, *a6);
    CI::CGNode::cgImageForROI(v15, &v32, &image);
    v20 = image;
    v17 = 0;
    if (image)
    {
      DataProvider = CGImageGetDataProvider(image);
      *&v32.size.width = CGImageGetWidth(v20);
      *&v32.origin.y = CGImageGetHeight(v20);
      *&v32.size.height = CGImageGetBytesPerRow(v20);
      if (DataProvider && (*&v32.origin.x = CGDataProviderRetainBytePtr()) != 0)
      {
        if (a5[1] - *a5 == 8)
        {
          v22 = (****a5)();
          (*(***a5 + 24))(&v31);
          CI::convert_buffer_to_texture(a3, 0, 0, 0, &v32, v22, v31, *(a1 + 296));
          CGDataProviderReleaseBytePtr();
        }
      }

      else
      {
        v23 = ci_logger_render();
        if (os_log_type_enabled(v23, OS_LOG_TYPE_DEBUG))
        {
          CI::ConvertNode::render(v20, v23);
        }
      }

      v24 = image;
      image = 0;
      if (v24)
      {
        CFRelease(v24);
      }
    }

    if (CI_VERBOSE_SIGNPOSTS())
    {
      v25 = ci_signpost_log_render();
      v26 = v35;
      if (v35 - 1 <= 0xFFFFFFFFFFFFFFFDLL)
      {
        v27 = v25;
        if (os_signpost_enabled(v25))
        {
          LOWORD(v32.origin.x) = 0;
          _os_signpost_emit_with_name_impl(&dword_19CC36000, v27, OS_SIGNPOST_INTERVAL_END, v26, "convert_processor", &unk_19CFBCBAE, &v32, 2u);
        }
      }
    }

    TimerBase::~TimerBase(buf);
  }

  v28 = v36;
  v36 = 0;
  if (v28)
  {
    CFRelease(v28);
  }

  if (v17)
  {
LABEL_26:
    CI::ProcessorNode::render(a1, a2, a3, a4, a5, &a6->origin.x, a7);
  }
}

uint64_t CI::ConvertNode::print_for_graph_core(uint64_t a1, FILE *a2)
{
  v3 = CI::name_for_conversion(*(a1 + 296));

  return fputs(v3, a2);
}

void CI::ProcessorOutputNode::~ProcessorOutputNode(CI::ProcessorOutputNode *this)
{
  CI::NodeWithChild::~NodeWithChild(this);

  JUMPOUT(0x19EAF5590);
}

uint64_t CI::ProcessorOutputNode::add_args_to_hash(CI::ProcessorOutputNode *this, CI::XXHashHelper *a2)
{
  XXH64_update(a2, this + 48, 0x20uLL);
  __src = *(this + 80);
  XXH64_update(a2, &__src, 4uLL);
  v6 = *(this + 21);
  XXH64_update(a2, &v6, 4uLL);
  return XXH64_update(a2, this + 88, 0x30uLL);
}

uint64_t CI::ProcessorOutputNode::alpha_one(CI::ProcessorOutputNode *this)
{
  if (*(this + 80))
  {
    return 1;
  }

  result = *(this + 21);
  if (result)
  {
    return CI::format_has_alpha(result) ^ 1;
  }

  return result;
}

uint64_t CI::ProcessorOutputNode::output_is_rg(CI::ProcessorOutputNode *this)
{
  result = *(this + 21);
  if (result)
  {
    return CI::format_is_rg(result);
  }

  return result;
}

uint64_t CI::ProcessorOutputNode::output_is_r(CI::ProcessorOutputNode *this)
{
  result = *(this + 21);
  if (result)
  {
    return CI::format_is_r(result);
  }

  return result;
}

uint64_t CI::ProcessorOutputNode::output_is_luma(CI::ProcessorOutputNode *this)
{
  v2 = *(this + 21);
  if (!v2 || !CI::format_is_luminance(v2))
  {
    return 0;
  }

  v3 = *(*this + 280);

  return v3(this);
}

uint64_t CI::ProcessorOutputNode::output_depth(CI::ProcessorOutputNode *this)
{
  result = *(this + 21);
  if (result)
  {
    if (CI::format_is_deep(result))
    {
      return 1;
    }

    else
    {
      return 0xFFFFFFFFLL;
    }
  }

  return result;
}

void CI::ConvertNode::~ConvertNode(CI::ConvertNode *this)
{
  CI::ProcessorNode::~ProcessorNode(this);

  JUMPOUT(0x19EAF5590);
}

uint64_t CI::ConvertNode::is_flipped(CI::ConvertNode *this)
{
  v1 = (*(*this + 48))(this, 0);
  v2 = (*(*v1 + 16))(v1);
  return CI::is_image_type(v2) ^ 1;
}

void non-virtual thunk toCI::ConvertNode::~ConvertNode(CI::ConvertNode *this)
{
  CI::ProcessorNode::~ProcessorNode((this - 48));
}

{
  CI::ProcessorNode::~ProcessorNode((this - 48));

  JUMPOUT(0x19EAF5590);
}

void std::vector<__IOSurface *>::__vallocate[abi:nn200100](uint64_t a1, unint64_t a2)
{
  if (!(a2 >> 61))
  {
    std::__allocate_at_least[abi:nn200100]<std::allocator<Queue *>>(a1, a2);
  }

  std::vector<CI::SWRendererFunctionInputNode>::__throw_length_error[abi:nn200100]();
}

void *std::__split_buffer<void const*>::emplace_back<void const*>(void *result, void *a2)
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

      std::__allocate_at_least[abi:nn200100]<std::allocator<void const*>>(result[4], v11);
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

void std::vector<BOOL>::__vallocate[abi:nn200100](uint64_t a1, uint64_t a2)
{
  if ((a2 & 0x8000000000000000) == 0)
  {
    if (a2)
    {
      v2 = ((a2 - 1) >> 6) + 1;
    }

    else
    {
      v2 = 0;
    }

    std::__allocate_at_least[abi:nn200100]<std::allocator<unsigned long>>(a1, v2);
  }

  std::vector<CI::SWRendererFunctionInputNode>::__throw_length_error[abi:nn200100]();
}

uint64_t std::vector<BOOL>::__init_with_size[abi:nn200100]<BOOL *,BOOL *>(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a4)
  {
    std::vector<BOOL>::__vallocate[abi:nn200100](result, a4);
  }

  return result;
}

void *std::vector<BOOL>::__construct_at_end<BOOL *,BOOL *>(void *result, _BYTE *a2, _BYTE *a3, uint64_t a4)
{
  v4 = result[1];
  v5 = v4 + a4;
  result[1] = v4 + a4;
  if (!v4 || ((v5 - 1) ^ (v4 - 1)) >= 0x40)
  {
    if (v5 >= 0x41)
    {
      v6 = (v5 - 1) >> 6;
    }

    else
    {
      v6 = 0;
    }

    *(*result + 8 * v6) = 0;
  }

  if (a2 != a3)
  {
    v7 = v4 & 0x3F;
    v8 = (*result + 8 * (v4 >> 6));
    do
    {
      v9 = 1 << v7;
      if (*a2 == 1)
      {
        v10 = *v8 | v9;
      }

      else
      {
        v10 = *v8 & ~v9;
      }

      *v8 = v10;
      ++a2;
      v8 += v7 == 63;
      if (v7 == 63)
      {
        v7 = 0;
      }

      else
      {
        ++v7;
      }
    }

    while (a2 != a3);
  }

  return result;
}

void *std::vector<CI::intermediate_t const*>::vector[abi:nn200100](void *result, void *a2)
{
  *result = 0;
  result[1] = 0;
  result[2] = 0;
  v2 = a2[1];
  if (v2 != *a2)
  {
    std::vector<CI::intermediate_t const*>::__vallocate[abi:nn200100](result, (v2 - *a2) >> 3);
  }

  return result;
}

void *CI::InstanceCounted<(CI::Type)47>::~InstanceCounted(void *result)
{
  *result = &unk_1F103B0D8;
  atomic_fetch_add(&dword_1ED7C47BC[45], 0xFFFFFFFF);
  return result;
}

void CI::InstanceCounted<(CI::Type)47>::~InstanceCounted(void *a1)
{
  *a1 = &unk_1F103B0D8;
  atomic_fetch_add(&dword_1ED7C47BC[45], 0xFFFFFFFF);
  JUMPOUT(0x19EAF5590);
}

uint64_t CI::ProgramNode::queue_pool(CI::ProgramNode *this)
{
  if ((atomic_load_explicit(&qword_1ED7C45F8, memory_order_acquire) & 1) == 0)
  {
    CI::ProgramNode::queue_pool();
  }

  return _MergedGlobals_10;
}

void QueuePool<4>::get(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x2000000000;
  v9 = 0;
  v4 = *(a1 + 8);
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 0x40000000;
  block[2] = ___ZN9QueuePoolILi4EE3getEP21dispatch_queue_attr_s_block_invoke;
  block[3] = &unk_1E75C6C88;
  block[4] = &v6;
  block[5] = a1;
  block[6] = a2;
  dispatch_sync(v4, block);
  *a3 = v7[3];
  a3[1] = dispatch_group_create();
  _Block_object_dispose(&v6, 8);
}

void CI::ProgramNode::~ProgramNode(CI::ProgramNode *this)
{
  *this = &unk_1F103B100;
  *(this + 5) = &unk_1F103B2C0;
  v2 = (this + 104);
  dispatch_sync(*(this + 13), &__block_literal_global_170_1);
  CI::ProgramNode::release_program_and_arguments(this);
  v3 = *(this + 6);
  if (v3)
  {
    CI::Object::unref(v3);
  }

  v4 = *(this + 7);
  *(this + 6) = 0;
  if (v4)
  {
    CI::SerialStringArray::~SerialStringArray(v4);
    MEMORY[0x19EAF5590]();
  }

  v5 = *(this + 8);
  if (v5)
  {
    CI::SerialObjectPtrArray::~SerialObjectPtrArray(v5);
    MEMORY[0x19EAF5590]();
  }

  v6 = *(this + 9);
  if (v6)
  {
    CI::SerialStringArray::~SerialStringArray(v6);
    MEMORY[0x19EAF5590]();
  }

  *(this + 7) = 0;
  *(this + 8) = 0;
  *(this + 9) = 0;
  Queue::~Queue(v2);
  std::__tree<std::__value_type<unsigned long long,CI::DAGHelper::ImageArgInfo>,std::__map_value_compare<unsigned long long,std::__value_type<unsigned long long,CI::DAGHelper::ImageArgInfo>,std::less<unsigned long long>,true>,std::allocator<std::__value_type<unsigned long long,CI::DAGHelper::ImageArgInfo>>>::destroy(this + 80, *(this + 11));
  *(this + 5) = &unk_1F103B3D0;
  atomic_fetch_add(&dword_1ED7C47BC[58], 0xFFFFFFFF);

  CI::Node::~Node(this);
}

{
  CI::ProgramNode::~ProgramNode(this);

  JUMPOUT(0x19EAF5590);
}

CI::SerialObjectPtrArray *CI::ProgramNode::release_program_and_arguments(CI::ProgramNode *this)
{
  v2 = *(this + 15);
  if (v2)
  {
    CI::Object::unref(v2);
  }

  *(this + 15) = 0;
  result = *(this + 16);
  if (result)
  {
    CI::SerialObjectPtrArray::~SerialObjectPtrArray(result);
    result = MEMORY[0x19EAF5590]();
  }

  *(this + 16) = 0;
  return result;
}

void non-virtual thunk toCI::ProgramNode::~ProgramNode(CI::ProgramNode *this)
{
  CI::ProgramNode::~ProgramNode((this - 40));
}

{
  CI::ProgramNode::~ProgramNode((this - 40));

  JUMPOUT(0x19EAF5590);
}

void CI::ProgramNode::traverse_graph_preorder_stoppable(uint64_t a1, uint64_t a2)
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x2000000000;
  v9 = malloc_type_calloc(0x400uLL, 1uLL, 0x100004077774924uLL);
  v4 = *(a1 + 48);
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 0x40000000;
  v5[2] = ___ZNK2CI11ProgramNode33traverse_graph_preorder_stoppableEU13block_pointerFbPNS_4NodeEPKS1_iiiE_block_invoke;
  v5[3] = &unk_1E75C6930;
  v5[5] = &v6;
  v5[6] = a1;
  v5[4] = a2;
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 0x40000000;
  v10[2] = ___ZN2CI4Node27traverse_preorder_stoppableEU13block_pointerFbPS0_PKS0_iiE_block_invoke;
  v10[3] = &unk_1E75C6C00;
  v10[4] = v5;
  CI::GraphObject::traverse_preorder_stoppable(v4, 0, 0, 0, v10);
  free(v7[3]);
  _Block_object_dispose(&v6, 8);
}

uint64_t ___ZNK2CI11ProgramNode33traverse_graph_preorder_stoppableEU13block_pointerFbPNS_4NodeEPKS1_iiiE_block_invoke(void *a1, uint64_t a2, uint64_t a3, int a4, char a5)
{
  v6 = a1[6];
  *(*(*(a1[5] + 8) + 24) + a4) = a5 + 48;
  *(*(*(a1[5] + 8) + 24) + a4 + 1) = 0;
  v7 = CI::SerialStringArray::firstIndexOfString(*(v6 + 56), (*(*(a1[5] + 8) + 24) + 1)) != -1;
  return (v7 | (*(a1[4] + 16))()) & 1;
}

void CI::ProgramNode::traverse_dag(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = malloc_type_calloc(0x400uLL, 1uLL, 0x100004077774924uLL);
  v9 = *(a1 + 48);
  if (v9 == a2)
  {
    v10 = 0;
  }

  else
  {
    v10 = 0;
    do
    {
      v8[v10++] = 48;
      v9 = (*(*v9 + 48))(v9, 0);
    }

    while (v9 != a2);
  }

  v12[0] = 0;
  v12[1] = 0;
  v11 = v12;
  CI::_traverse_dag(a1, v9, 0, v10, 0, 0, 0, v8, &v11, 0, a3, a4);
  free(v8);
  std::__tree<std::__value_type<unsigned long long,CI::DAGHelper::ImageArgInfo>,std::__map_value_compare<unsigned long long,std::__value_type<unsigned long long,CI::DAGHelper::ImageArgInfo>,std::less<unsigned long long>,true>,std::allocator<std::__value_type<unsigned long long,CI::DAGHelper::ImageArgInfo>>>::destroy(&v11, v12[0]);
}

uint64_t CI::_traverse_dag(CI::SerialStringArray **a1, unint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, unint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  v12 = a8;
  v20 = a4;
  *(a8 + a4) = a5 + 48;
  v39 = a4 + 1;
  *(a8 + v39) = 0;
  IndexOfString = CI::SerialStringArray::firstIndexOfString(a1[7], (a8 + 1));
  if (IndexOfString != -1)
  {
    a2 = (*(*a1 + 6))(a1, IndexOfString);
  }

  v40 = IndexOfString;
  v22 = CI::hash_dag_node_id(a2, a7, v12);
  result = a12;
  if (a12)
  {
    result = (*(a12 + 16))(a12, a2);
    v24 = result ^ 1;
  }

  else
  {
    v24 = 0;
  }

  v25 = *(a9 + 8);
  if (!v25)
  {
    goto LABEL_14;
  }

  v26 = a9 + 8;
  do
  {
    v27 = *(v25 + 32);
    v28 = v27 >= v22;
    v29 = v27 < v22;
    if (v28)
    {
      v26 = v25;
    }

    v25 = *(v25 + 8 * v29);
  }

  while (v25);
  if (v26 == a9 + 8 || (v22 < *(v26 + 32)) | v24 & 1)
  {
LABEL_14:
    v41 = a1;
    v37 = v20;
    v43 = v22;
    result = std::__tree<unsigned long>::__emplace_unique_key_args<unsigned long,unsigned long>(a9, &v43);
    if (a10)
    {
      result = (*(a10 + 16))(a10, a2, a3, a4, a5, a6, a7, v12, v40);
    }

    v38 = a5;
    v42 = a7;
    if (v40 == -1)
    {
      result = (*(*a2 + 40))(a2);
      if (result >= 1)
      {
        v30 = result;
        v31 = 0;
        do
        {
          v32 = (*(*a2 + 48))(a2, v31);
          v33 = v12;
          if ((*(*a2 + 240))(a2))
          {
            v34 = a2;
          }

          else
          {
            v34 = a6;
          }

          if ((*(*a2 + 240))(a2))
          {
            v35 = v22;
          }

          else
          {
            v35 = v42;
          }

          v36 = v34;
          v12 = v33;
          result = CI::_traverse_dag(v41, v32, a2, v39, v31, v36, v35, v33, a9, a10, a11, a12);
          v31 = (v31 + 1);
        }

        while (v30 != v31);
      }
    }

    v20 = v37;
    if (a11)
    {
      result = (*(a11 + 16))(a11, a2, a3, a4, v38, a6, v42, v12, v40);
    }
  }

  v12[v20] = 0;
  return result;
}

void CI::ProgramNode::traverse_dag_preorder(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = malloc_type_calloc(0x400uLL, 1uLL, 0x100004077774924uLL);
  v9 = *(a1 + 48);
  if (v9 == a2)
  {
    v10 = 0;
  }

  else
  {
    v10 = 0;
    do
    {
      v8[v10++] = 48;
      v9 = (*(*v9 + 48))(v9, 0);
    }

    while (v9 != a2);
  }

  v12[0] = 0;
  v12[1] = 0;
  v11 = v12;
  CI::_traverse_dag(a1, v9, 0, v10, 0, 0, 0, v8, &v11, a3, 0, a4);
  free(v8);
  std::__tree<std::__value_type<unsigned long long,CI::DAGHelper::ImageArgInfo>,std::__map_value_compare<unsigned long long,std::__value_type<unsigned long long,CI::DAGHelper::ImageArgInfo>,std::less<unsigned long long>,true>,std::allocator<std::__value_type<unsigned long long,CI::DAGHelper::ImageArgInfo>>>::destroy(&v11, v12[0]);
}

uint64_t CI::ProgramNode::child_type_is_image(CI::ProgramNode *this, int a2)
{
  if (a2 < 0)
  {
    return 0;
  }

  if ((*(*this + 40))(this) <= a2)
  {
    return 0;
  }

  v4 = *(*(*(this + 7) + 32) + 8 * a2);
  v5 = strlen(v4);
  if (!v5)
  {
    return 0;
  }

  v6 = v5;
  v7 = *(this + 6);
  if (v6 != 1)
  {
    v8 = v6 - 1;
    v9 = v4;
    do
    {
      v10 = *v9++;
      v7 = (*(*v7 + 48))(v7, (v10 - 48));
      --v8;
    }

    while (v8);
  }

  v11 = *(*v7 + 200);

  return v11();
}

size_t CI::ProgramNode::child_depth(CI::ProgramNode *this, int a2)
{
  if (a2 < 0 || (*(*this + 40))(this) <= a2)
  {
    return 0;
  }

  v4 = *(*(*(this + 7) + 32) + 8 * a2);

  return strlen(v4);
}

size_t CI::ProgramNode::child_can_sample_nearest(CI::ProgramNode *this, int a2)
{
  if (a2 < 0 || (*(*this + 40))(this) <= a2)
  {
    return 0;
  }

  v4 = *(*(*(this + 7) + 32) + 8 * a2);
  result = strlen(v4);
  if (!result)
  {
    return result;
  }

  v6 = result;
  v7 = *(this + 6);
  v8 = result - 1;
  if (result != 1)
  {
    v9 = v4;
    do
    {
      v10 = *v9++;
      v7 = (*(*v7 + 48))(v7, (v10 - 48));
      --v8;
    }

    while (v8);
  }

  if ((*(*v7 + 16))(v7) == 53 && !(*(*v7 + 424))(v7))
  {
    return 1;
  }

  v11 = *(this + 6);
  while (1)
  {
    v12 = (*(*v11 + 16))(v11);
    if (v12 <= 0x3B)
    {
      if (((1 << v12) & 0xA05FB000000000) != 0)
      {
        goto LABEL_12;
      }

      if (v12 == 57)
      {
        if ((*(*v11 + 424))(v11, (*v4 - 48)))
        {
          return 0;
        }

        goto LABEL_12;
      }

      if (v12 == 59)
      {
        break;
      }
    }

    if (v12 != 34 || !CI::Affine::isOrientationWithIntegralTranslation((v11 + 56)))
    {
      return 0;
    }

LABEL_12:
    v13 = *v4++;
    v11 = (*(*v11 + 48))(v11, (v13 - 48));
    if (!--v6)
    {
      return 1;
    }
  }

  v14 = *(*v11 + 256);

  return v14(v11);
}

uint64_t CI::ProgramNode::child(CI::ProgramNode *this, unsigned int a2)
{
  if ((a2 & 0x80000000) != 0)
  {
    return 0;
  }

  if ((*(*this + 40))(this) <= a2)
  {
    return 0;
  }

  v4 = *(this + 8);
  if (a2 > 9)
  {
    v5 = *(v4 + 16) + 8 * a2 - 80;
  }

  else
  {
    v5 = v4 + 8 * a2 + 24;
  }

  return *v5;
}

void CI::ProgramNode::set_child(CI::ProgramNode *this, CI::Node *a2, int a3)
{
  if ((a3 & 0x80000000) == 0 && (*(*this + 40))(this) > a3)
  {
    v6 = *(this + 8);

    CI::SerialObjectPtrArray::replace(v6, a2, a3);
  }
}

char *CI::ProgramNode::make_function_name(uint64_t a1, char **a2)
{
  x_stream_write(a2, "ci", 2uLL);
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 0x40000000;
  v5[2] = ___ZNK2CI11ProgramNode18make_function_nameER15x_stream_struct_block_invoke;
  v5[3] = &__block_descriptor_tmp_5_1;
  v5[4] = a2;
  CI::ProgramNode::traverse_graph_preorder_stoppable(a1, v5);
  return x_stream_get(a2);
}

uint64_t ___ZNK2CI11ProgramNode18make_function_nameER15x_stream_struct_block_invoke(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, int a6)
{
  if (a6 == -1)
  {
    v7 = (*(*a2 + 104))(a2);
    if (*v7 != 95)
    {
      x_stream_write(*(a1 + 32), "_", 1uLL);
    }

    v8 = strlen(v7);
    x_stream_write(*(a1 + 32), v7, v8);
  }

  return 0;
}

void CI::ProgramNode::print_for_graph_core(uint64_t a1, FILE *__stream)
{
  if (*(a1 + 160))
  {
    fprintf(__stream, "program=%08X ", *(a1 + 160));
  }

  else
  {
    fwrite("program ", 8uLL, 1uLL, __stream);
  }

  v4 = CI::ProgramNode::mainProgram(a1);
  if (v4)
  {
    v5 = v4;
    v6 = (*(v4->isa + 8))(v4);
    fprintf(__stream, "type=%s ", v6);
    if (*(a1 + 168) == 1)
    {
      v7 = *&v5[4].isa;
      v8 = *&v5[5].isa * 1000.0;
      v9 = COERCE_DOUBLE(atomic_load(&v5[3]));
      fprintf(__stream, "compileTime=(%0.1fms + %0.1fms) waited=%0.1fms ", v8, v9 * 1000.0, v7 * 1000.0);
    }
  }

  if (CI::ProgramNode::print_for_graph_core(__sFILE *,std::unordered_map<CI::GraphObject const*,unsigned int> const&,BOOL)const::onceToken != -1)
  {
    CI::ProgramNode::print_for_graph_core();
  }

  v16 = 0;
  v17 = &v16;
  v18 = 0x2000000000;
  v19 = -1;
  v15[0] = MEMORY[0x1E69E9820];
  v15[1] = 0x40000000;
  v15[2] = ___ZNK2CI11ProgramNode20print_for_graph_coreEP7__sFILERKNSt3__113unordered_mapIPKNS_11GraphObjectEjNS3_4hashIS7_EENS3_8equal_toIS7_EENS3_9allocatorINS3_4pairIKS7_jEEEEEEb_block_invoke_2;
  v15[3] = &unk_1E75C6998;
  v15[4] = &v16;
  v15[5] = __stream;
  CI::ProgramNode::traverse_graph_preorder_stoppable(a1, v15);
  fprintf(__stream, "%.*s", *(v17 + 6) + 1, &CI::ProgramNode::print_for_graph_core(__sFILE *,std::unordered_map<CI::GraphObject const*,unsigned int> const&,BOOL)const::paren_str);
  v10 = *(a1 + 140);
  if (v10)
  {
    v11 = CI::name_for_format(v10);
    v12 = "s'";
    if ((*(a1 + 144) & 2) == 0)
    {
      v12 = "";
    }

    if (*(a1 + 144))
    {
      v13 = "s";
    }

    else
    {
      v13 = v12;
    }

    fprintf(__stream, " format=%s%s", v11, v13);
  }

  v14 = (*(*a1 + 400))(a1);
  if (v14)
  {
    fprintf(__stream, " digest=%08X", v14);
  }

  _Block_object_dispose(&v16, 8);
}

__n128 ___ZNK2CI11ProgramNode20print_for_graph_coreEP7__sFILERKNSt3__113unordered_mapIPKNS_11GraphObjectEjNS3_4hashIS7_EENS3_8equal_toIS7_EENS3_9allocatorINS3_4pairIKS7_jEEEEEEb_block_invoke()
{
  result.n128_u64[0] = 0x2929292929292929;
  result.n128_u64[1] = 0x2929292929292929;
  xmmword_1EB00EAD8 = result;
  unk_1EB00EAE8 = result;
  xmmword_1EB00EAB8 = result;
  unk_1EB00EAC8 = result;
  xmmword_1EB00EA98 = result;
  unk_1EB00EAA8 = result;
  xmmword_1EB00EA78 = result;
  unk_1EB00EA88 = result;
  xmmword_1EB00EA58 = result;
  unk_1EB00EA68 = result;
  xmmword_1EB00EA38 = result;
  unk_1EB00EA48 = result;
  xmmword_1EB00EA18 = result;
  unk_1EB00EA28 = result;
  CI::ProgramNode::print_for_graph_core(__sFILE *,std::unordered_map<CI::GraphObject const*,unsigned int> const&,BOOL)const::paren_str = result;
  unk_1EB00EA08 = result;
  byte_1EB00EAF8 = 0;
  return result;
}

uint64_t ___ZNK2CI11ProgramNode20print_for_graph_coreEP7__sFILERKNSt3__113unordered_mapIPKNS_11GraphObjectEjNS3_4hashIS7_EENS3_8equal_toIS7_EENS3_9allocatorINS3_4pairIKS7_jEEEEEEb_block_invoke_2(uint64_t a1, uint64_t a2, uint64_t a3, int a4, int a5, int a6)
{
  fprintf(*(a1 + 40), "%.*s", *(*(*(a1 + 32) + 8) + 24) - a4 + 1, &CI::ProgramNode::print_for_graph_core(__sFILE *,std::unordered_map<CI::GraphObject const*,unsigned int> const&,BOOL)const::paren_str);
  if (a5)
  {
    fputc(44, *(a1 + 40));
  }

  if (a6 == -1)
  {
    (*(*a2 + 112))(a2, *(a1 + 40));
    fputc(40, *(a1 + 40));
  }

  else
  {
    fprintf(*(a1 + 40), "%d", a6);
  }

  *(*(*(a1 + 32) + 8) + 24) = a4;
  return 0;
}

CFStringRef CI::ProgramNode::description(CI::ProgramNode *this)
{
  v2 = (*(*this + 16))(this);
  v3 = CI::name_for_type(v2);
  return CFStringCreateWithFormat(0, 0, @"<CI::%s %p>", v3, this);
}

double CI::ProgramNode::compute_regions_of_child@<D0>(CI::ProgramNode *this@<X0>, CGRect a2@<0:D0, 8:D1, 16:D2, 24:D3>, unsigned int a3@<W1>, unint64_t a4@<X2>, int a5@<W3>, int a6@<W4>, uint64_t a7@<X8>)
{
  *&v51 = a2.origin.x;
  *(&v51 + 1) = *&a2.origin.y;
  width = a2.size.width;
  height = a2.size.height;
  if ((a3 & 0x80000000) != 0 || (*(*this + 40))(this) <= a3 || (v35 = *(*(*(this + 7) + 32) + 8 * a3), (v34 = strlen(v35)) == 0))
  {
    *a7 = 0;
    *(a7 + 8) = 0;
    *(a7 + 16) = 0;
    v29 = MEMORY[0x1E695F050];

    std::vector<CGRect>::push_back[abi:nn200100](a7, v29);
  }

  else
  {
    v31 = a6;
    v10 = *(this + 6);
    v45 = 0;
    v46 = -1;
    v48 = 0;
    v49 = 0;
    v47 = -1;
    v50 = 0;
    *(a7 + 8) = 0;
    *(a7 + 16) = 0;
    *a7 = 0;
    std::vector<CGRect>::push_back[abi:nn200100](a7, &v51);
    v11 = 0;
    do
    {
      if (a5)
      {
        v12 = *a7;
        v13 = *(a7 + 8);
        while (v12 != v13)
        {
          (*(*v10 + 360))(v10, 0, a4, &v45, *v12, v12[1], v12[2], v12[3]);
          v12 += 4;
        }
      }

      v37 = v11;
      v14 = (v35[v11] - 48);
      std::vector<CGRect>::vector[abi:nn200100](&v43, a7);
      *(a7 + 8) = *a7;
      v15 = v43;
      v16 = v44;
      while (v15 != v16)
      {
        (*(*v10 + 384))(&v41, v10, v14, *v15, v15[1], v15[2], v15[3]);
        v17 = v14;
        v18 = v10;
        while (1)
        {
          v19 = (*(*v18 + 48))(v18, v17);
          if ((*(*v19 + 16))(v19) != 45)
          {
            break;
          }

          v18 = (*(*v18 + 48))(v18, v17);
          __p = 0uLL;
          v39 = 0;
          if (v42 != v41)
          {
            std::vector<CGRect>::__vallocate[abi:nn200100](&__p, (v42 - v41) >> 5);
          }

          v17 = 0;
        }

        std::vector<CGRect>::__insert_with_size[abi:nn200100]<std::__wrap_iter<CGRect const*>,std::__wrap_iter<CGRect const*>>(a7, *(a7 + 8), v41, v42, (v42 - v41) >> 5);
        if (v41)
        {
          v42 = v41;
          operator delete(v41);
        }

        v15 += 4;
      }

      v20 = CI::Node::rois_count(v10);
      v48 = 0;
      v49 = 0;
      v50 = 0;
      v45 = v10;
      v46 = v20;
      v47 = v14 | 0xFFFFFFFF00000000;
      v10 = (*(*v10 + 48))(v10, v14);
      if (v43)
      {
        v44 = v43;
        operator delete(v43);
      }

      ++v11;
    }

    while (v37 + 1 != v34);
    v21 = (*(*this + 48))(this, a3);
    (*(*v21 + 176))(v21);
    if (v22 <= v23)
    {
      result = v23;
    }

    else
    {
      result = v22;
    }

    if (result < a4 && (*(*v21 + 16))(v21) == 54)
    {
      (*(*v21 + 176))(v21);
    }

    else
    {
      if (!v31)
      {
        return result;
      }

      v57.origin.x = (*(*v21 + 176))(v21);
      if (CGRectIsInfinite(v57))
      {
        return result;
      }

      v58.origin.x = (*(*v21 + 176))(v21);
      v59 = CGRectInset(v58, -1.0, -1.0);
      v60 = CGRectInset(v59, 0.001, 0.001);
      *&v25 = CGRectIntegral(v60);
    }

    *&__p = v25;
    *(&__p + 1) = v26;
    v39 = v27;
    v40 = v28;
    v55 = 0;
    v54 = 0uLL;
    std::vector<CGRect>::push_back[abi:nn200100](&v54, &__p);
    v30 = *a7;
    if (*a7)
    {
      *(a7 + 8) = v30;
      operator delete(v30);
    }

    result = *&v54;
    *a7 = v54;
    *(a7 + 16) = v55;
  }

  return result;
}

unint64_t CI::ProgramNode::digest(CI::ProgramNode *this)
{
  v2 = (*(**(this + 6) + 400))(*(this + 6));
  XXH64_reset(v4, 0);
  __src = v2;
  XXH64_update(v4, &__src, 8uLL);
  LODWORD(__src) = *(this + 145);
  XXH64_update(v4, &__src, 4uLL);
  LODWORD(__src) = *(this + 146);
  XXH64_update(v4, &__src, 4uLL);
  LODWORD(__src) = *(this + 148);
  XXH64_update(v4, &__src, 4uLL);
  LODWORD(__src) = *(this + 149);
  XXH64_update(v4, &__src, 4uLL);
  LOBYTE(__src) = *(this + 144);
  XXH64_update(v4, &__src, 1uLL);
  LODWORD(__src) = *(this + 35);
  XXH64_update(v4, &__src, 4uLL);
  return XXH64_digest(v4);
}

void CI::ProgramNode::roiKeys_of_child(CI::ProgramNode *this@<X0>, CGRect a2@<0:D0, 8:D1, 16:D2, 24:D3>, uint64_t a3@<X1>, void *a4@<X8>)
{
  height = a2.size.height;
  width = a2.size.width;
  y = a2.origin.y;
  x = a2.origin.x;
  if (CI::Node::rois_count(this) < 1)
  {
    goto LABEL_16;
  }

  v10 = 0;
  do
  {
    v11 = CI::Node::rois(this);
    v41 = 0;
    v42 = 0;
    v40 = 0;
    v12 = *v11 + 120 * v10;
    v13 = *(v12 + 80);
    v14 = *(v12 + 16);
    v36 = *v12;
    v37 = v14;
    CI::SerialRectArray::recurseSubdivide(&v36, v13, &v40);
    v15 = v40;
    if (v41 == v40)
    {
LABEL_9:
      v20 = 0;
      if (!v15)
      {
        goto LABEL_11;
      }

LABEL_10:
      v41 = v15;
      operator delete(v15);
      goto LABEL_11;
    }

    v16 = 0;
    v17 = 0;
    while (1)
    {
      v43.origin.x = x;
      v43.origin.y = y;
      v43.size.width = width;
      v43.size.height = height;
      if (CGRectEqualToRect(v43, *&v15[v16]))
      {
        break;
      }

LABEL_8:
      ++v17;
      v15 = v40;
      v16 += 32;
      if (v17 >= (v41 - v40) >> 5)
      {
        goto LABEL_9;
      }
    }

    *&v36 = this;
    *(&v36 + 1) = __PAIR64__(v17, v10);
    v37 = a3 | 0xFFFFFFFF00000000;
    v38 = 0;
    v39 = 0;
    v18 = (*(*this + 48))(this, a3);
    v19 = CI::Node::rois(v18);
    CI::SerialRectArray::findParentROI(v19, &v36, &__block_literal_global_26_1, &v33);
    if (!v35)
    {
      std::__tree<std::__value_type<unsigned long long,CI::DAGHelper::ImageArgInfo>,std::__map_value_compare<unsigned long long,std::__value_type<unsigned long long,CI::DAGHelper::ImageArgInfo>,std::less<unsigned long long>,true>,std::allocator<std::__value_type<unsigned long long,CI::DAGHelper::ImageArgInfo>>>::destroy(&v33, v34);
      goto LABEL_8;
    }

    CI::roiKeyVec::roiKeyVec(a4, v18, &v33);
    std::__tree<std::__value_type<unsigned long long,CI::DAGHelper::ImageArgInfo>,std::__map_value_compare<unsigned long long,std::__value_type<unsigned long long,CI::DAGHelper::ImageArgInfo>,std::less<unsigned long long>,true>,std::allocator<std::__value_type<unsigned long long,CI::DAGHelper::ImageArgInfo>>>::destroy(&v33, v34);
    v20 = 1;
    v15 = v40;
    if (v40)
    {
      goto LABEL_10;
    }

LABEL_11:
    if (v20)
    {
      return;
    }

    ++v10;
  }

  while (v10 < CI::Node::rois_count(this));
LABEL_16:
  if (CI::Node::rois_count(this) < 1)
  {
    goto LABEL_31;
  }

  v21 = 0;
  do
  {
    v22 = CI::Node::rois(this);
    v41 = 0;
    v42 = 0;
    v40 = 0;
    v23 = *v22 + 120 * v21;
    v24 = *(v23 + 80);
    v25 = *(v23 + 16);
    v36 = *v23;
    v37 = v25;
    CI::SerialRectArray::recurseSubdivide(&v36, v24, &v40);
    v26 = v40;
    if (v41 == v40)
    {
LABEL_24:
      v31 = 0;
      if (!v26)
      {
        goto LABEL_26;
      }

LABEL_25:
      v41 = v26;
      operator delete(v26);
      goto LABEL_26;
    }

    v27 = 0;
    v28 = 0;
    while (1)
    {
      v44.origin.x = x;
      v44.origin.y = y;
      v44.size.width = width;
      v44.size.height = height;
      if (CGRectEqualToRect(v44, *&v26[v27]))
      {
        break;
      }

LABEL_23:
      ++v28;
      v26 = v40;
      v27 += 32;
      if (v28 >= (v41 - v40) >> 5)
      {
        goto LABEL_24;
      }
    }

    *&v36 = this;
    *(&v36 + 1) = __PAIR64__(v28, v21);
    v37 = a3 | 0xFFFFFFFF00000000;
    v38 = 0;
    v39 = 0;
    v29 = (*(*this + 48))(this, a3);
    v30 = CI::Node::rois(v29);
    CI::SerialRectArray::findRetiredParentROI(v30, &v36, &__block_literal_global_30_2, &v33);
    if (!v35)
    {
      std::__tree<std::__value_type<unsigned long long,CI::DAGHelper::ImageArgInfo>,std::__map_value_compare<unsigned long long,std::__value_type<unsigned long long,CI::DAGHelper::ImageArgInfo>,std::less<unsigned long long>,true>,std::allocator<std::__value_type<unsigned long long,CI::DAGHelper::ImageArgInfo>>>::destroy(&v33, v34);
      goto LABEL_23;
    }

    CI::roiKeyVec::roiKeyVec(a4, v29, &v33);
    std::__tree<std::__value_type<unsigned long long,CI::DAGHelper::ImageArgInfo>,std::__map_value_compare<unsigned long long,std::__value_type<unsigned long long,CI::DAGHelper::ImageArgInfo>,std::less<unsigned long long>,true>,std::allocator<std::__value_type<unsigned long long,CI::DAGHelper::ImageArgInfo>>>::destroy(&v33, v34);
    v31 = 1;
    v26 = v40;
    if (v40)
    {
      goto LABEL_25;
    }

LABEL_26:
    if (v31)
    {
      return;
    }

    ++v21;
  }

  while (v21 < CI::Node::rois_count(this));
LABEL_31:
  *a4 = 0;
  a4[1] = 0;
  a4[2] = 0;
}

uint64_t *CI::SerialRectArray::findParentROI@<X0>(uint64_t *result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, void *a4@<X8>)
{
  a4[1] = 0;
  a4[2] = 0;
  *a4 = a4 + 1;
  v15 = 0;
  v6 = *result;
  v5 = result[1];
  if (v5 != *result)
  {
    v9 = result;
    v10 = 0;
    v11 = 0;
    do
    {
      v12 = v6 + 120 * v11;
      v13 = *(v12 + 32);
      v14 = *(v12 + 40);
      if (v13 != v14)
      {
        do
        {
          if (*v13 == *a2 && *(a2 + 16) == *(v13 + 16) && *(a2 + 12) == *(v13 + 12) && *(a2 + 8) == *(v13 + 8))
          {
            (*(a3 + 16))(a3, v13, v15);
            result = std::__tree<int>::__emplace_unique_key_args<int,int const&>(a4, &v15);
          }

          v13 += 48;
        }

        while (v13 != v14);
        v10 = v15;
        v6 = *v9;
        v5 = v9[1];
      }

      v15 = ++v10;
      v11 = v10;
    }

    while (0xEEEEEEEEEEEEEEEFLL * ((v5 - v6) >> 3) > v10);
  }

  return result;
}

uint64_t *CI::SerialRectArray::findRetiredParentROI@<X0>(uint64_t *result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, void *a4@<X8>)
{
  a4[1] = 0;
  a4[2] = 0;
  *a4 = a4 + 1;
  v15 = 0;
  v6 = *result;
  v5 = result[1];
  if (v5 != *result)
  {
    v9 = result;
    v10 = 0;
    v11 = 0;
    do
    {
      v12 = v6 + 120 * v11;
      v13 = *(v12 + 56);
      v14 = *(v12 + 64);
      if (v13 != v14)
      {
        do
        {
          if (*v13 == *a2 && *(a2 + 16) == *(v13 + 16) && *(a2 + 12) == *(v13 + 12) && *(a2 + 8) == *(v13 + 8))
          {
            (*(a3 + 16))(a3, v13);
            result = std::__tree<int>::__emplace_unique_key_args<int,int const&>(a4, &v15);
          }

          v13 += 48;
        }

        while (v13 != v14);
        v10 = v15;
        v6 = *v9;
        v5 = v9[1];
      }

      v15 = ++v10;
      v11 = v10;
    }

    while (0xEEEEEEEEEEEEEEEFLL * ((v5 - v6) >> 3) > v10);
  }

  return result;
}

void CI::ProgramNode::regions_of_child(CI::ProgramNode *this@<X0>, CGRect a2@<0:D0, 8:D1, 16:D2, 24:D3>, uint64_t a3@<X1>, const void **a4@<X8>)
{
  CI::ProgramNode::roiKeys_of_child(this, a2, a3, __p);
  CI::roiKeyVec::roi(__p, a4);
  if (__p[0])
  {
    __p[1] = __p[0];
    operator delete(__p[0]);
  }
}

void CI::roiKeyVec::roi(CI::roiKeyVec *this@<X0>, const void **a2@<X8>)
{
  *a2 = 0;
  a2[1] = 0;
  a2[2] = 0;
  v2 = *this;
  v3 = *(this + 1);
  if (*this != v3)
  {
    do
    {
      v5 = CI::Node::roi(*v2, *(v2 + 8));
      v9 = a2[1];
      v10 = a2[2];
      if (v9 >= v10)
      {
        v12 = *a2;
        v13 = v9 - *a2;
        v14 = v13 >> 5;
        v15 = (v13 >> 5) + 1;
        if (v15 >> 59)
        {
          std::vector<CI::SWRendererFunctionInputNode>::__throw_length_error[abi:nn200100]();
        }

        v16 = v10 - v12;
        if (v16 >> 4 > v15)
        {
          v15 = v16 >> 4;
        }

        if (v16 >= 0x7FFFFFFFFFFFFFE0)
        {
          v15 = 0x7FFFFFFFFFFFFFFLL;
        }

        if (v15)
        {
          std::__allocate_at_least[abi:nn200100]<std::allocator<CGRect>>(a2, v15);
        }

        v17 = 32 * v14;
        *v17 = v5;
        *(v17 + 8) = v6;
        *(v17 + 16) = v7;
        *(v17 + 24) = v8;
        v11 = 32 * v14 + 32;
        memcpy(0, v12, v13);
        v18 = *a2;
        *a2 = 0;
        a2[1] = v11;
        a2[2] = 0;
        if (v18)
        {
          operator delete(v18);
        }
      }

      else
      {
        *v9 = v5;
        *(v9 + 1) = v6;
        v11 = (v9 + 32);
        *(v9 + 2) = v7;
        *(v9 + 3) = v8;
      }

      a2[1] = v11;
      v2 += 16;
    }

    while (v2 != v3);
  }
}

CI::ProgramNode *CI::ProgramNode::build_program_graph(CI::ProgramNode *this, CI::Node *a2, CI::Context *a3, CI::NodeToNodeMap *a4)
{
  v6 = (*(*this + 16))(this);
  if (CI::is_image_type(v6))
  {
LABEL_2:
    CI::Object::ref(this);
    return this;
  }

  if (v6 != 44 || !(*(*this + 232))(this))
  {
    (*(*a2 + 16))(a2);
    (*(*a2 + 16))(a2);
    if (v6 - 36 < 9 || (v6 <= 0x3B ? (v8 = ((1 << v6) & 0xEABC00400000000) == 0) : (v8 = 1), !v8))
    {
      v13[0] = 0;
      v13[1] = v13;
      v13[2] = 0x2000000000;
      v13[3] = malloc_type_calloc(0x400uLL, 1uLL, 0x100004077774924uLL);
      v12[0] = 0;
      v12[1] = v12;
      v12[2] = 0x2000000000;
      v12[3] = 0;
      v10[0] = 0;
      v10[1] = v10;
      v10[2] = 0x2000000000;
      v11 = 0;
      operator new();
    }

    goto LABEL_2;
  }

  v7 = *(*(*(*this + 48))(this, 0) + 344);

  return v7();
}

uint64_t ___ZN2CI11ProgramNode19build_program_graphEPNS_4NodeEPNS_7ContextERNS_13NodeToNodeMapEb_block_invoke(uint64_t a1, unint64_t a2, uint64_t a3, int a4, uint64_t a5)
{
  v56 = *(*(*(a1 + 32) + 8) + 24);
  v57 = *(*(*(a1 + 40) + 8) + 24);
  v58 = *(*(*(a1 + 48) + 8) + 24);
  v10 = (*(*a2 + 16))(a2);
  *(*(*(*(a1 + 56) + 8) + 24) + a4) = a5 + 48;
  *(*(*(*(a1 + 56) + 8) + 24) + a4 + 1) = 0;
  *(*(*(a1 + 64) + 8) + 24) += (*(*a2 + 352))(a2);
  if ((*(*a2 + 40))(a2) < 1)
  {
    v12 = 0;
  }

  else
  {
    v12 = 0;
    v13 = 0;
    do
    {
      v14 = (*(*a2 + 48))(a2, v13);
      v12 += (*(*v14 + 216))(v14);
      v13 = (v13 + 1);
    }

    while (v13 < (*(*a2 + 40))(a2));
  }

  *(*(*(a1 + 72) + 8) + 24) += v12;
  if (v10 == 57 || v10 == 58)
  {
    v17 = 0;
    v15 = *(a2 + 48);
  }

  else if (v10 == 59)
  {
    v15 = *(a2 + 48);
    v16 = *(a2 + 136);
    if (HIDWORD(v16) && v16 && *(a2 + 144) || (v17 = 0, v18 = *(a2 + 148), HIDWORD(v18)) && v18 && *(a2 + 156))
    {
      v17 = 1;
    }
  }

  else
  {
    v17 = 0;
    v15 = 0;
  }

  v19 = *(*(*(a1 + 80) + 8) + 24);
  if (v19 && v19 == a3)
  {
    *(*(*(a1 + 88) + 8) + 24) = (*(*v19 + 424))(v19, a5);
  }

  if (!v15)
  {
    v24 = 0;
    v60 = 0;
    v61 = &v60;
    v62 = 0x2000000000;
    v63 = 0;
LABEL_29:
    v55 = 1;
    goto LABEL_30;
  }

  v20 = *(a1 + 120);
  if (v20)
  {
    v56 &= CI::is_kernel_metalextern_linkable(v20, v15, v11);
    v57 &= CI::is_kernel_metalstitchable_linkable(*(a1 + 120), v15, v21);
    v58 &= CI::is_kernel_metalfosl_linkable(v15, v22);
  }

  v60 = 0;
  v61 = &v60;
  v62 = 0x2000000000;
  v63 = 0;
  v23 = (*(*v15 + 40))(v15);
  v24 = v23;
  if (!v23)
  {
    goto LABEL_29;
  }

  v25 = *(a1 + 96);
  if (*(*(v25 + 8) + 24))
  {
    v59[0] = MEMORY[0x1E69E9820];
    v59[1] = 0x40000000;
    v59[2] = ___ZN2CI11ProgramNode19build_program_graphEPNS_4NodeEPNS_7ContextERNS_13NodeToNodeMapEb_block_invoke_2;
    v59[3] = &unk_1E75C6A00;
    v59[4] = v25;
    v59[5] = &v60;
    __CFDictionary::for_each(v23, v59);
  }

  v55 = 0;
LABEL_30:
  if ((v10 | 0x10) == 0x37)
  {
    v26 = (*(*a2 + 48))(a2, 0);
    v27 = (*(*v26 + 16))(v26);
    is_image_type = CI::is_image_type(v27);
    if (!a3)
    {
      goto LABEL_145;
    }
  }

  else
  {
    is_image_type = 0;
    if (!a3)
    {
      goto LABEL_145;
    }
  }

  v29 = *(a1 + 192);
  if (v29 <= 0x33 && ((1 << v29) & 0xB800000000000) != 0)
  {
    v30 = v29 == 51 || v29 == 47;
    v31 = "this is a Convert";
    if (v30)
    {
      v31 = "this is a Processor";
    }

    *(*(*(a1 + 104) + 8) + 24) = v31;
    goto LABEL_42;
  }

  if (v10 == 59 && *(*(*(a1 + 80) + 8) + 24))
  {
    v35 = *(*(a1 + 104) + 8);
    v36 = "program can only contain one General Kernel node";
    goto LABEL_61;
  }

  if (v17)
  {
    v35 = *(*(a1 + 104) + 8);
    v36 = "child sets threadgroup dimensions";
    goto LABEL_61;
  }

  if (*(v61 + 24) == 1)
  {
    v35 = *(*(a1 + 104) + 8);
    v36 = "child contains conflicting kernel constants";
    goto LABEL_61;
  }

  v36 = "child is a Processor";
  if (v10 <= 47)
  {
    if (v10 == 45)
    {
      v37 = (*(*a2 + 424))(a2);
      v35 = *(*(a1 + 104) + 8);
      if (v37 <= 3)
      {
        if (v37 == 1)
        {
          v36 = "child is a Noop intermediate_uncached";
          goto LABEL_61;
        }

        if (v37 == 3)
        {
          v36 = "child is a Noop affine";
          goto LABEL_61;
        }
      }

      else
      {
        switch(v37)
        {
          case 4:
            v36 = "child is a Noop multiuse";
            goto LABEL_61;
          case 5:
            v36 = "child is a Noop samplemode";
            goto LABEL_61;
          case 6:
            v36 = "child is a Noop disablemerging";
            goto LABEL_61;
        }
      }

      v36 = "child is a Noop intermediate";
LABEL_61:
      *(v35 + 24) = v36;
      goto LABEL_42;
    }

    if (v10 == 47)
    {
LABEL_60:
      v35 = *(*(a1 + 104) + 8);
      goto LABEL_61;
    }
  }

  else if ((v10 - 48) < 2 || v10 == 51)
  {
    if (v29 != 51)
    {
      v36 = "child is a Convert";
    }

    goto LABEL_60;
  }

  if (CI::is_image_type(v10))
  {
    v35 = *(*(a1 + 104) + 8);
    v36 = "child is a raster leaf";
    goto LABEL_61;
  }

  for (i = *(*(a1 + 128) + 16); i; i = *i)
  {
    v39 = i[4];
    if (v39 <= a2)
    {
      if (v39 >= a2)
      {
        if (is_image_type)
        {
          break;
        }

        v35 = *(*(a1 + 104) + 8);
        v36 = "child is a previously seen program";
        goto LABEL_61;
      }

      ++i;
    }
  }

  if (v10 != 53)
  {
    if (((*(*a2 + 296))(a2) & 1) != 0 || (*(*a2 + 288))(a2))
    {
      v40 = *(a1 + 196);
      if (v40 <= 1024)
      {
        v40 = 1024;
      }
    }

    else
    {
      v40 = *(a1 + 196);
    }

    if (v40 < a4)
    {
      v35 = *(*(a1 + 104) + 8);
      v36 = "beyond CI_MAX_PROGRAM_DEPTH";
      goto LABEL_61;
    }
  }

  if ((*(**(a1 + 136) + 16))(*(a1 + 136)) == 82)
  {
    v41 = *(*(*(a1 + 64) + 8) + 24);
    if (v41 > CI_MAX_CL_COMPLEXITY() && ((*(*a2 + 240))(a2) & 1) == 0)
    {
      v35 = *(*(a1 + 104) + 8);
      v36 = "beyond CI_MAX_CL_COMPLEXITY";
      goto LABEL_61;
    }
  }

  if (v15 && !*(v15 + 16))
  {
    if (a4 != 1 || *(a1 + 192) != 34 || !CI::Affine::isOrientationWithIntegralTranslation((*(a1 + 144) + 56)))
    {
      v35 = *(*(a1 + 104) + 8);
      v36 = "child is a kernel with ReturnTypeNone";
      goto LABEL_61;
    }

LABEL_145:
    *(*(*(a1 + 72) + 8) + 24) -= (*(*a2 + 216))(a2);
    if ((*(*a2 + 16))(a2) == 59)
    {
      *(*(*(a1 + 80) + 8) + 24) = CI::Object::ref(a2);
    }

    if ((v55 & 1) == 0)
    {
      v50 = *(*(*(a1 + 96) + 8) + 24);
      if (!v50)
      {
        *(*(*(a1 + 96) + 8) + 24) = CFDictionaryCreateMutable(0, 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
        v50 = *(*(*(a1 + 96) + 8) + 24);
      }

      v64[0] = MEMORY[0x1E69E9820];
      v64[1] = 0x40000000;
      v64[2] = ___ZN14__CFDictionary9setValuesEPS_PKS__block_invoke;
      v64[3] = &__block_descriptor_tmp_210;
      v64[4] = v50;
      __CFDictionary::for_each(v24, v64);
    }

    if (*(*(*(a1 + 80) + 8) + 24) || *(*(*(a1 + 112) + 8) + 24) != 1)
    {
      goto LABEL_166;
    }

    if (a4 || v10 != 34)
    {
      if ((*(*a2 + 240))(a2))
      {
        if (v10 == 36)
        {
          goto LABEL_166;
        }
      }

      else
      {
        v51 = (*(*a2 + 40))(a2);
        v52 = *(*(a1 + 112) + 8);
        v53 = *(v52 + 24);
        if (v51 != 1)
        {
          v53 = 0;
        }

        *(v52 + 24) = v53;
        if (!v15 || (*(*v15 + 16))(v15) != 70 || (*(v15 + 172) & 1) == 0)
        {
          goto LABEL_166;
        }
      }
    }

    else if (CI::Affine::isOrientationWithIntegralTranslation((a2 + 56)))
    {
      goto LABEL_166;
    }

    *(*(*(a1 + 112) + 8) + 24) = 0;
LABEL_166:
    v34 = 0;
    *(*(*(a1 + 32) + 8) + 24) = v56;
    *(*(*(a1 + 40) + 8) + 24) = v57;
    *(*(*(a1 + 48) + 8) + 24) = v58;
    goto LABEL_167;
  }

  if (*(*(*(a1 + 72) + 8) + 24) > *(a1 + 152))
  {
    v35 = *(*(a1 + 104) + 8);
    v36 = "beyond max_texture_units";
    goto LABEL_61;
  }

  if (((v56 | v57 | v58) & 1) == 0)
  {
    if (*(*(*(a1 + 32) + 8) + 24) == 1)
    {
      v35 = *(*(a1 + 104) + 8);
      v36 = "program with non-Metal-extern kernels can't be linked with a Metal-extern kernels";
    }

    else if (*(*(*(a1 + 40) + 8) + 24) == 1)
    {
      v35 = *(*(a1 + 104) + 8);
      v36 = "program with non-Metal-stitchable kernels can't be linked with a Metal-stitchable kernels";
    }

    else
    {
      v35 = *(*(a1 + 104) + 8);
      if (*(*(*(a1 + 48) + 8) + 24) == 1)
      {
        v36 = "program with non-CIKL kernels can't be linked with a CIKL kernel";
      }

      else
      {
        v36 = "program can't be linked with the child's kernel";
      }
    }

    goto LABEL_61;
  }

  if (*(*(*(a1 + 80) + 8) + 24) && *(*(*(a1 + 88) + 8) + 24) == 1)
  {
    if (v10 > 52)
    {
      if (v10 != 53)
      {
        if (v10 != 55)
        {
          goto LABEL_129;
        }

        v44 = (*(*a2 + 424))(a2);
        if (!SwizzlerMask(v44))
        {
          v45 = (*(*a2 + 424))(a2);
          if (!SwizzlerMacro(v45))
          {
            v42 = "descendent of GeneralKernel is non-trivial Swizzle";
            goto LABEL_141;
          }
        }

        v46 = *(*(*(a1 + 80) + 8) + 24);
        if ((*(*v46 + 40))(v46) > 1)
        {
          v42 = "descendent of multi-child GeneralKernel is a Swizzle";
          goto LABEL_141;
        }

        if (*(a1 + 160))
        {
          v42 = "descendent of SW GeneralKernel is a Swizzle";
          goto LABEL_141;
        }

        if (CI_ENABLE_METAL_DAG())
        {
          v48 = *(a1 + 120);
          if (v48)
          {
            if (CI::is_kernel_metalstitchable_linkable(v48, *(*(*(*(a1 + 80) + 8) + 24) + 48), v47) & 1) != 0 || (CI::is_kernel_metalextern_linkable(*(a1 + 120), *(*(*(*(a1 + 80) + 8) + 24) + 48), v49))
            {
              v42 = "descendent of precompiled GeneralKernel is a Swizzle";
              goto LABEL_141;
            }
          }
        }
      }
    }

    else
    {
      if (v10 != 34)
      {
        if (v10 == 36)
        {
          v42 = "descendent of GeneralKernel is a Clamp";
LABEL_141:
          v43 = 0;
          *(*(*(a1 + 104) + 8) + 24) = v42;
LABEL_142:
          if (CI_DISABLE_MERGING_PRE_GENERAL())
          {
            v35 = *(*(a1 + 104) + 8);
            v36 = "CI_DISABLE_MERGING_PRE_GENERAL";
            goto LABEL_61;
          }

          goto LABEL_144;
        }

LABEL_129:
        v42 = "this program contains a GeneralKernel";
        goto LABEL_141;
      }

      if (!CI::Affine::isOrientationWithIntegralTranslation((a2 + 56)))
      {
        v42 = "descendent of GeneralKernel is a resampling Affine";
        goto LABEL_141;
      }
    }

    v43 = 1;
    goto LABEL_142;
  }

  if (v10 != 59)
  {
    goto LABEL_145;
  }

  v43 = *(*(*(a1 + 112) + 8) + 24);
  if ((v43 & 1) == 0)
  {
    *(*(*(a1 + 104) + 8) + 24) = "child is a GeneralKernel";
  }

  if (CI_DISABLE_MERGING_POST_GENERAL())
  {
    v35 = *(*(a1 + 104) + 8);
    v36 = "CI_DISABLE_MERGING_POST_GENERAL";
    goto LABEL_61;
  }

LABEL_144:
  if (v43)
  {
    goto LABEL_145;
  }

LABEL_42:
  v32 = (*(*a2 + 344))(a2, *(a1 + 136), *(a1 + 128), 0);
  CI::SerialObjectPtrArray::append(*(a1 + 168), v32);
  CI::SerialStringArray::append(*(a1 + 176), (*(*(*(a1 + 56) + 8) + 24) + 1), a4);
  if (v32)
  {
    CI::Object::unref(v32);
  }

  v33 = strlen(*(*(*(a1 + 104) + 8) + 24));
  CI::SerialStringArray::append(*(a1 + 184), *(*(*(a1 + 104) + 8) + 24), v33);
  *(*(*(a1 + 72) + 8) + 24) -= v12;
  v34 = 1;
LABEL_167:
  _Block_object_dispose(&v60, 8);
  return v34;
}

const __CFDictionary *___ZN2CI11ProgramNode19build_program_graphEPNS_4NodeEPNS_7ContextERNS_13NodeToNodeMapEb_block_invoke_2(uint64_t a1, const void *a2, const void *a3)
{
  result = *(*(*(a1 + 32) + 8) + 24);
  if (result)
  {
    result = CFDictionaryGetValue(result, a2);
    if (result)
    {
      result = CFEqual(result, a3);
      if (!result)
      {
        *(*(*(a1 + 40) + 8) + 24) = 1;
      }
    }
  }

  return result;
}

char *SwizzlerMask(int a1)
{
  if ((a1 - 1) > 0x19)
  {
    return 0;
  }

  else
  {
    return off_1E75C6CA8[a1 - 1];
  }
}

char *SwizzlerMacro(int a1)
{
  if ((a1 - 27) > 9)
  {
    return 0;
  }

  else
  {
    return off_1E75C6D78[a1 - 27];
  }
}

uint64_t CI::update_intermediate_descriptor_for_processor(int *a1, uint64_t a2, _BYTE *a3, int a4, int a5)
{
  v8 = a4;
  if (a4 <= 0)
  {
    v8 = *(a2 + 32);
  }

  *a1 = v8;
  *(a1 + 4) = 0;
  if ((a4 < 0 || a5) && !CI_NO_CM() && *(a2 + 24) && CI::format_bits_per_component(*a1) <= 8)
  {
    if (CI_INTERMEDIATE_SRGB_TEXTURES() && ((*(*a2 + 592))(a2, *a1, 3) & 1) != 0)
    {
      v10 = 2;
    }

    else
    {
      v10 = 1;
    }

    *(a1 + 4) |= v10;
  }

  *(a1 + 8) = a3[240];
  *(a1 + 7) = a3[292];
  result = CI_FLIP_IMAGE_PROCESSOR();
  if (result)
  {
    result = (*(*a3 + 424))(a3);
    if (result)
    {
      *(a1 + 9) = 1;
    }
  }

  return result;
}

void CI::ProgramNode::dispatch_main_program_args(uint64_t a1, uint64_t a2, void *a3, uint64_t a4, void *a5)
{
  if (CI_ASYNC_KERNEL_COMPILE() && *(a2 + 344) != 1)
  {
    if (a4)
    {
      (*(a4 + 16))(a4);
    }

    Queue::execute_async((a1 + 104), a3);
    if (a5)
    {

      Queue::execute_async((a1 + 104), a5);
    }
  }

  else
  {
    v10 = a3[2];

    v10(a3);
  }
}

unint64_t CI::ProgramNode::compute_kernel_digest(CI::ProgramNode *this, const CI::Context *a2)
{
  v17 = 0;
  v18 = &v17;
  v19 = 0x8002000000;
  v20 = __Block_byref_object_copy__26;
  v21 = __Block_byref_object_dispose__26;
  XXH64_reset(v22, 0);
  v16[0] = 0;
  v16[1] = v16;
  v16[2] = 0x2000000000;
  v16[3] = 0;
  v13[0] = 0;
  v13[1] = v13;
  v13[2] = 0x4002000000;
  v13[3] = __Block_byref_object_copy__67;
  v15[0] = 0;
  v15[1] = 0;
  v13[4] = __Block_byref_object_dispose__68;
  v14 = v15;
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 0x40000000;
  v12[2] = ___ZNK2CI11ProgramNode21compute_kernel_digestEPKNS_7ContextE_block_invoke;
  v12[3] = &unk_1E75C6A50;
  v12[4] = v13;
  v12[5] = v16;
  v12[6] = &v17;
  v12[7] = this;
  CI::ProgramNode::traverse_graph_preorder_stoppable(this, v12);
  v4 = v18;
  __src = CI::Node::unique_child_count(this);
  XXH64_update((v4 + 5), &__src, 8uLL);
  LODWORD(__src) = *(this + 144) & 1;
  XXH64_update((v18 + 5), &__src, 4uLL);
  if (CI_ENABLE_METAL_IMAGEBLOCKS() == 2 && (*(*a2 + 16))(a2) == 85)
  {
    v6 = *(this + 35);
    v5 = this + 140;
    if (CI::MetalContext::use_imageblocks_for_format(a2, v6))
    {
      v7 = (v18 + 5);
      p_src = v5;
      v9 = 8;
    }

    else
    {
      LODWORD(__src) = 0;
      v7 = (v18 + 5);
      p_src = &__src;
      v9 = 4;
    }

    XXH64_update(v7, p_src, v9);
  }

  v10 = XXH64_digest((v18 + 5));
  _Block_object_dispose(v13, 8);
  std::__tree<std::__value_type<unsigned long long,CI::DAGHelper::ImageArgInfo>,std::__map_value_compare<unsigned long long,std::__value_type<unsigned long long,CI::DAGHelper::ImageArgInfo>,std::less<unsigned long long>,true>,std::allocator<std::__value_type<unsigned long long,CI::DAGHelper::ImageArgInfo>>>::destroy(&v14, v15[0]);
  _Block_object_dispose(v16, 8);
  _Block_object_dispose(&v17, 8);
  return v10;
}

__n128 __Block_byref_object_copy__26(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 56) = *(a2 + 56);
  *(a1 + 40) = v2;
  result = *(a2 + 72);
  v4 = *(a2 + 88);
  v5 = *(a2 + 104);
  *(a1 + 120) = *(a2 + 120);
  *(a1 + 104) = v5;
  *(a1 + 88) = v4;
  *(a1 + 72) = result;
  return result;
}

void *__Block_byref_object_copy__67(void *result, void *a2)
{
  result[5] = a2[5];
  v2 = a2 + 6;
  v3 = a2[6];
  result[6] = v3;
  v4 = result + 6;
  v5 = a2[7];
  result[7] = v5;
  if (v5)
  {
    *(v3 + 16) = v4;
    a2[5] = v2;
    *v2 = 0;
    a2[7] = 0;
  }

  else
  {
    result[5] = v4;
  }

  return result;
}

uint64_t ___ZNK2CI11ProgramNode21compute_kernel_digestEPKNS_7ContextE_block_invoke(void *a1, CI::Node *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v9 = a1[7];
  v10 = *(a1[4] + 8);
  v11 = (a2 + 36);
  v14 = *(v10 + 48);
  v12 = v10 + 48;
  v13 = v14;
  if (!v14)
  {
    goto LABEL_9;
  }

  v15 = *v11;
  v16 = v12;
  do
  {
    v17 = *(v13 + 32);
    v18 = v17 >= v15;
    v19 = v17 < v15;
    if (v18)
    {
      v16 = v13;
    }

    v13 = *(v13 + 8 * v19);
  }

  while (v13);
  if (v16 != v12 && v15 >= *(v16 + 32))
  {
    v21 = *(v16 + 40);
  }

  else
  {
LABEL_9:
    v20 = *(a1[5] + 8);
    v21 = *(v20 + 24) + 1;
    *(v20 + 24) = v21;
    v22 = *(a1[4] + 8);
    __src = v11;
    std::__tree<std::__value_type<CI::NodeIndex,unsigned long>,std::__map_value_compare<CI::NodeIndex,std::__value_type<CI::NodeIndex,unsigned long>,std::less<CI::NodeIndex>,true>,std::allocator<std::__value_type<CI::NodeIndex,unsigned long>>>::__emplace_unique_key_args<CI::NodeIndex,std::piecewise_construct_t const&,std::tuple<CI::NodeIndex const&>,std::tuple<>>(v22 + 40, v11)[5] = v21;
  }

  v23 = *(a1[6] + 8);
  __src = v21;
  XXH64_update(v23 + 40, &__src, 8uLL);
  if (a6 != -1)
  {
    v24 = (*(*v9 + 48))(v9, a6);
    v25 = v24;
    v28 = v9[11];
    v27 = v9 + 11;
    v26 = v28;
    if (!v28)
    {
      goto LABEL_19;
    }

    v29 = v27;
    do
    {
      v30 = v26[4];
      v18 = v30 >= v24;
      v31 = v30 < v24;
      if (v18)
      {
        v29 = v26;
      }

      v26 = v26[v31];
    }

    while (v26);
    if (v29 == v27 || v24 < v29[4])
    {
LABEL_19:
      v29 = v27;
    }

    v32 = *(a1[6] + 8);
    __src = v29[5];
    XXH64_update(v32 + 40, &__src, 8uLL);
    v33 = *(a1[6] + 8);
    LODWORD(__src) = CI::Node::rois_count(v25);
    XXH64_update(v33 + 40, &__src, 4uLL);
    v34 = (*(*v25 + 16))(v25);
    v35 = *(a1[6] + 8);
    if (v34 == 60)
    {
      LODWORD(__src) = *(v25 + 144) & 1;
    }

    else
    {
      LODWORD(__src) = 0;
    }

    XXH64_update(v35 + 40, &__src, 4uLL);
    if ((*(*a2 + 16))(a2) == 54)
    {
      v40 = *(a1[6] + 8);
    }

    else
    {
      v41 = (*(*a2 + 16))(a2);
      v40 = *(a1[6] + 8);
      if (v41 != 52)
      {
        LODWORD(__src) = 1;
        goto LABEL_30;
      }
    }

    LODWORD(__src) = (*(*a2 + 216))(a2);
LABEL_30:
    v38 = v40 + 40;
    v39 = 4;
    goto LABEL_31;
  }

  v36 = *(a1[6] + 8);
  LODWORD(__src) = CI::Node::rois_count(a2);
  XXH64_update(v36 + 40, &__src, 4uLL);
  (*(*a2 + 408))(a2, *(a1[6] + 8) + 40);
  v37 = *(a1[6] + 8);
  __src = CI::Node::unique_child_count(a2);
  v38 = v37 + 40;
  v39 = 8;
LABEL_31:
  XXH64_update(v38, &__src, v39);
  return 0;
}

uint64_t CI::ProgramNode::compute_kernel_attributes(CI::ProgramNode *this, CI::Context *a2)
{
  v15 = 0;
  v16 = &v15;
  v17 = 0x2000000000;
  v18 = 1;
  v11 = 0;
  v12 = &v11;
  v13 = 0x2000000000;
  v14 = 1;
  v7 = 0;
  v8 = &v7;
  v9 = 0x2000000000;
  v10 = 0;
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 0x40000000;
  v6[2] = ___ZNK2CI11ProgramNode25compute_kernel_attributesEPNS_7ContextE_block_invoke;
  v6[3] = &unk_1E75C6A78;
  v6[4] = &v15;
  v6[5] = &v11;
  v6[6] = &v7;
  v6[7] = a2;
  CI::ProgramNode::traverse_graph_preorder_stoppable(this, v6);
  if (*(v12 + 24))
  {
    v2 = 2;
  }

  else
  {
    v2 = 0;
  }

  v3 = v2 | *(v16 + 24);
  if (*(v8 + 24))
  {
    v4 = 4;
  }

  else
  {
    v4 = 0;
  }

  _Block_object_dispose(&v7, 8);
  _Block_object_dispose(&v11, 8);
  _Block_object_dispose(&v15, 8);
  return v3 | v4;
}

uint64_t ___ZNK2CI11ProgramNode25compute_kernel_attributesEPNS_7ContextE_block_invoke(void *a1, CI::Object *this, uint64_t a3, uint64_t a4, uint64_t a5, int a6)
{
  if (a6 == -1)
  {
    v13[4] = v6;
    v13[5] = v7;
    v8 = this;
    v13[0] = this;
    if (this)
    {
      CI::Object::ref(this);
    }

    v10 = (*(*v8 + 336))(v8, a1[7]);
    v13[1] = v10;
    if (v10)
    {
      v8 = v10;
    }

    if ((*(*v8 + 16))(v8) == 57 || (*(*v8 + 16))(v8) == 58 || (*(*v8 + 16))(v8) == 59)
    {
      v11 = *(v8 + 6);
      if (v11)
      {
        *(*(a1[4] + 8) + 24) &= v11[158];
        *(*(a1[5] + 8) + 24) &= v11[154];
        *(*(a1[6] + 8) + 24) |= v11[159];
      }
    }

    CI::ConvertedNodeRAII::~ConvertedNodeRAII(v13);
  }

  return 0;
}

void CI::ProgramNode::addDestinationTransform(CI::ProgramNode *this, const CI::Context *a2, float64x2_t *a3)
{
  v6 = *(this + 6);
  v21 = v6[7];
  v19 = v6[8];
  v22 = v6[9];
  v20 = v6[10];
  v18 = v6[11];
  v17 = v6[12];
  CI::AffineNode::append_transform(v6, a3);
  memset(v28, 0, sizeof(v28));
  v29 = **CI::Node::rois(this);
  v7 = a3[1];
  *&v27.a = *a3;
  *&v27.c = v7;
  *&v27.tx = a3[2];
  v30 = CGRectApplyAffineTransform(v29, &v27);
  x = v30.origin.x;
  y = v30.origin.y;
  width = v30.size.width;
  height = v30.size.height;
  v12 = CI::Node::rois(this);
  CI::SerialRectArray::replace(v12, v28, 0, x, y, width, height);
  v13 = a3[1];
  v14 = vaddq_f64(vmlaq_n_f64(vmulq_n_f64(v13, v17), *a3, v18), a3[2]);
  v15 = vmlaq_n_f64(vmulq_n_f64(v13, v19), *a3, v21);
  v16 = vmlaq_n_f64(vmulq_n_f64(v13, v20), *a3, v22);
  v26[0] = v15;
  v26[1] = v16;
  v26[2] = v14;
  CI::Affine::inverse(v26, &v27);
  v23[0] = MEMORY[0x1E69E9820];
  v23[1] = *"";
  v24 = v27;
  v23[2] = ___ZN2CI11ProgramNode23addDestinationTransformERKNS_7ContextERKNS_6AffineE_block_invoke;
  v23[3] = &__block_descriptor_tmp_71_0;
  v23[4] = this;
  v25 = a2;
  CI::ProgramNode::dispatch_main_program_args(this, a2, v23, 0, 0);
}

double CI::AffineNode::append_transform(CI::AffineNode *this, float64x2_t *a2)
{
  v3 = (this + 56);
  *&result = *&CI::Affine::operator*(this + 7, a2, v6);
  if (v3 != v6)
  {
    v5 = v6[1];
    *(this + 56) = v6[0];
    *(this + 72) = v5;
    result = *&v7;
    *(this + 88) = v7;
  }

  return result;
}

void *CI::SerialRectArray::replace(void *a1, char **a2, int a3, double a4, double a5, double a6, double a7)
{
  v16 = CGRectStandardize(*&a4);
  v10 = (*a1 + 120 * a3);
  *v10 = v16;
  result = &v10[1].origin.x;
  if (&v10[1] != a2)
  {
    v12 = *a2;
    v13 = a2[1];
    v14 = 0xAAAAAAAAAAAAAAABLL * ((v13 - *a2) >> 4);

    return std::vector<CI::parentROI>::__assign_with_size[abi:nn200100]<CI::parentROI*,CI::parentROI*>(result, v12, v13, v14);
  }

  return result;
}

void ___ZN2CI11ProgramNode23addDestinationTransformERKNS_7ContextERKNS_6AffineE_block_invoke(uint64_t a1)
{
  v10 = *MEMORY[0x1E69E9840];
  v2 = *(a1 + 32);
  v3 = *(a1 + 56);
  *&v7.a = *(a1 + 40);
  *&v7.c = v3;
  *&v7.tx = *(a1 + 72);
  CI::Vector::Vector(v8, &v7);
  v4 = *(*(v2 + 128) + 24);
  if ((*(*v4 + 16))(v4) == 66)
  {
    v5 = CI::Vector::clone(v4, v8);
    if ((*(**(a1 + 88) + 16))(*(a1 + 88), v5) == 82)
    {
      v6 = *(*(v2 + 128) + 32);
      if ((*(*v6 + 16))(v6) == 66)
      {
        CI::Vector::clone(v6, v8);
      }
    }
  }

  v9 = &unk_1F1033F70;
  atomic_fetch_add(&dword_1ED7C47BC[64], 0xFFFFFFFF);
}

void CI::ProgramNode::create_program_and_arguments(CI::ProgramNode *this, CI::Context *a2, const char *a3)
{
  if (CI_VERBOSE_SIGNPOSTS())
  {
    v5 = ci_signpost_log_render();
    v6 = *(this + 9) | ((*(*a2 + 280))(a2) << 32);
    if (v6 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v5))
    {
      *buf = 0;
      _os_signpost_emit_with_name_impl(&dword_19CC36000, v5, OS_SIGNPOST_INTERVAL_BEGIN, v6, "create_program_and_arguments", &unk_19CFBCBAE, buf, 2u);
    }
  }

  v7 = (*(*a2 + 280))(a2);
  TimerBase::TimerBase(v9, v7, *(this + 9), "create_program_and_arguments", 37);
  operator new();
}

void ___ZN2CI11ProgramNode28create_program_and_argumentsEPNS_7ContextEPKc_block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = *(a1 + 40);
  if ((*(**(a1 + 48) + 16))(*(a1 + 48)) == 85)
  {
    v3 = "ciKernelMain";
  }

  x_stream_init(v25);
  if ((*(**(a1 + 48) + 16))(*(a1 + 48)) == 82 || (*(**(a1 + 48) + 16))(*(a1 + 48)) == 85 || (CI_PRINT_TIME() & 0x100) != 0)
  {
    v3 = (*(*v2 + 424))(v2, v25);
  }

  v4.__d_.__rep_ = std::chrono::steady_clock::now().__d_.__rep_;
  if (CI_ENABLE_METAL_DAG() && (*(**(a1 + 48) + 16))(*(a1 + 48)) == 85)
  {
    *(v2 + 15) = CI::create_metal_dag(v3, *(a1 + 48), *(a1 + 56), v2, *(v2 + 16), v5);
    CI_ENABLE_METAL_DAG();
  }

  if ((*(**(a1 + 48) + 16))(*(a1 + 48)) == 83)
  {
    *(v2 + 15) = CI::create_sw_dag(v3, *(a1 + 48), *(a1 + 56), v2, *(v2 + 16), v6);
  }

  if ((*(**(a1 + 48) + 16))(*(a1 + 48)) == 84 && !FOSL_DAG_CODEGEN())
  {
    v7 = *(a1 + 48);
    v8 = CI::ProgramNode::compute_kernel_attributes(v2, v7);
    CI::createMainProgramCodeAndArgs(v7, v3, v2, *(v2 + 16), v8);
  }

  if (!*(v2 + 15))
  {
    if (CI_VERBOSE_SIGNPOSTS())
    {
      v9 = ci_signpost_log_render();
      v10 = v2[9] | ((*(**(a1 + 48) + 280))(*(a1 + 48)) << 32);
      if (v10 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v9))
      {
        *buf = 0;
        _os_signpost_emit_with_name_impl(&dword_19CC36000, v9, OS_SIGNPOST_INTERVAL_BEGIN, v10, "create_main_program_fosl", &unk_19CFBCBAE, buf, 2u);
      }
    }

    v11 = (*(**(a1 + 48) + 280))(*(a1 + 48));
    TimerBase::TimerBase(v24, v11, v2[9], "create_main_program_fosl", 0);
    operator new();
  }

  v12.__d_.__rep_ = std::chrono::steady_clock::now().__d_.__rep_;
  v13 = *(v2 + 15);
  *(v13 + 40) = (v12.__d_.__rep_ - v4.__d_.__rep_) / 1000000000.0;
  *(v13 + 16) = *(v2 + 20);
  if (CI_ENABLE_KERNEL_CACHE())
  {
    CI::Context::cacheMainProgram(*(a1 + 48), *(v2 + 20), *(v2 + 15));
  }

  CachedMainProgram = CI::Context::findCachedMainProgram(*(a1 + 48), *(v2 + 20));
  v15 = *(v2 + 15);
  *(v2 + 168) = CachedMainProgram == v15;
  if (CachedMainProgram)
  {
    if (v15)
    {
      CI::Object::unref(v15);
    }

    *(v2 + 15) = CachedMainProgram;
  }

  v16 = *(a1 + 48);
  if (CI_PRINT_PROGRAM())
  {
    v17 = (*(*v16 + 280))(v16);
    if (CI_PRINT_PROGRAM_context(v17, v16 + 236))
    {
      v18 = CI_LOG_FILE();
      v21[0] = MEMORY[0x1E69E9820];
      v21[1] = 0x40000000;
      v21[2] = ___ZN2CI11ProgramNode28create_program_and_argumentsEPNS_7ContextEPKc_block_invoke_77;
      v21[3] = &__block_descriptor_tmp_85;
      v21[4] = v2;
      v21[5] = v3;
      v21[6] = *(a1 + 48);
      v22 = *(a1 + 72);
      stream_to_file(v18, v21);
    }
  }

  if (CI::MainProgram::num_arguments(*(v2 + 15)) != **(v2 + 16))
  {
    v19 = CI_LOG_FILE();
    v20[0] = MEMORY[0x1E69E9820];
    v20[1] = 0x40000000;
    v20[2] = ___ZN2CI11ProgramNode28create_program_and_argumentsEPNS_7ContextEPKc_block_invoke_2;
    v20[3] = &__block_descriptor_tmp_90;
    v20[4] = v2;
    v20[5] = v3;
    stream_to_file(v19, v20);
  }

  if (CI_ASYNC_KERNEL_COMPILE() >= 2)
  {
    (*(**(v2 + 15) + 72))(*(v2 + 15), *(a1 + 72));
  }

  x_stream_free(v25);
}

uint64_t ___ZN2CI11ProgramNode28create_program_and_argumentsEPNS_7ContextEPKc_block_invoke_77(uint64_t a1, FILE *a2)
{
  v4 = *(a1 + 32);
  v5 = *(a1 + 40);
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

  fprintf(a2, "CI_PRINT_PROGRAM %s (%s context %d%s%s frame %lu) node:%d digest:%016llX = \n", v5, v6, v7, v11, v9, *(v9 - 84), *(a1 + 56), *(v4 + 160));
  fwrite("// Argument Names\n", 0x12uLL, 1uLL, a2);
  CI::MainProgram::print_argument_names(*(v4 + 120), a2);
  fputc(10, a2);
  fwrite("// Argument Types\n", 0x12uLL, 1uLL, a2);
  CI::MainProgram::print_argument_types(*(v4 + 120), a2);
  fputc(10, a2);
  fwrite("// Arguments\n", 0xDuLL, 1uLL, a2);
  v12 = *(v4 + 128);
  v14[0] = MEMORY[0x1E69E9820];
  v14[1] = 0x40000000;
  v14[2] = ___ZNK2CI20SerialObjectPtrArray5printEP7__sFILE_block_invoke;
  v14[3] = &__block_descriptor_tmp_225;
  v14[4] = v12;
  stream_to_file(a2, v14);
  fputc(10, a2);
  return (*(**(v4 + 120) + 56))(*(v4 + 120), a2);
}

uint64_t ___ZN2CI11ProgramNode28create_program_and_argumentsEPNS_7ContextEPKc_block_invoke_2(uint64_t a1, FILE *a2)
{
  v3 = *(a1 + 32);
  v4 = *(a1 + 40);
  v5 = *(v3 + 160);
  v6 = CI::MainProgram::num_arguments(*(v3 + 120));
  fprintf(a2, "Argument count mismatch for program (%s) <%016llx> (%d != %d).\n\n", v4, v5, v6, **(v3 + 128));
  fwrite("[argument types]\n", 0x11uLL, 1uLL, a2);
  CI::MainProgram::print_argument_types(*(v3 + 120), a2);
  fputc(10, a2);
  fwrite("[argument names]\n", 0x11uLL, 1uLL, a2);
  CI::MainProgram::print_argument_names(*(v3 + 120), a2);
  fputc(10, a2);
  fwrite("[argument objects]\n", 0x13uLL, 1uLL, a2);
  v7 = *(v3 + 128);
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 0x40000000;
  v9[2] = ___ZNK2CI20SerialObjectPtrArray5printEP7__sFILE_block_invoke;
  v9[3] = &__block_descriptor_tmp_225;
  v9[4] = v7;
  stream_to_file(a2, v9);
  return fputc(10, a2);
}

uint64_t ___ZN2CI11ProgramNode28create_program_and_argumentsEPNS_7ContextEPKc_block_invoke_3(uint64_t a1)
{
  v2 = *(a1 + 32);
  if (v2)
  {
    CI::Object::ref(v2);
  }

  result = *(a1 + 40);
  if (result)
  {

    return CI::Object::ref(result);
  }

  return result;
}

void ___ZN2CI11ProgramNode28create_program_and_argumentsEPNS_7ContextEPKc_block_invoke_4(uint64_t a1)
{
  v2 = *(a1 + 32);
  if (v2)
  {
    CI::Object::unref(v2);
  }

  v3 = *(a1 + 40);
  if (v3)
  {

    CI::Object::unref(v3);
  }
}

const char *CI::ProgramNode::program_name(CI::ProgramNode *this)
{
  v1 = *(this + 15);
  if (v1)
  {
    return *(v1 + 56);
  }

  v4 = *(this + 6);
  if ((*(*v4 + 16))(v4) < 47 || (*(*v4 + 16))(v4) > 49)
  {
    return 0;
  }

  v5 = (*(**(this + 6) + 24))(*(this + 6));

  return CFStringGetCStringPtr(v5, 0x8000100u);
}

void CI::ProgramNode::graphvis_set_title(uint64_t a1, void *a2, void *a3)
{
  if (CI_GRAPHVIZ_INTERNAL() || (CI_PRINT_TREE_dump_intermediates() & 1) != 0 || CI_PRINT_TREE_dump_outputs())
  {
    v6 = (a1 + 36);
  }

  else
  {
    v18 = a1;
    v13 = std::__hash_table<void const*,std::hash<void const*>,std::equal_to<void const*>,std::allocator<void const*>>::find<void const*>(a3, &v18);
    if (!v13)
    {
      v8 = *(a1 + 140);
      goto LABEL_17;
    }

    v6 = (v13 + 3);
  }

  v7 = *v6;
  v8 = *(a1 + 140);
  if (v7)
  {
    if (v8)
    {
      v9 = CI::name_for_format(v8);
      v10 = "s'";
      if ((*(a1 + 144) & 2) == 0)
      {
        v10 = "";
      }

      if (*(a1 + 144))
      {
        v11 = "s";
      }

      else
      {
        v11 = v10;
      }

      v12 = CFStringCreateWithFormat(0, 0, @"%u  %s%s", v7, v9, v11);
    }

    else
    {
      v12 = CFStringCreateWithFormat(0, 0, @"%u", *v6);
    }

    goto LABEL_24;
  }

LABEL_17:
  if (!v8)
  {
    return;
  }

  v14 = CI::name_for_format(v8);
  v15 = "s'";
  if ((*(a1 + 144) & 2) == 0)
  {
    v15 = "";
  }

  if (*(a1 + 144))
  {
    v16 = "s";
  }

  else
  {
    v16 = v15;
  }

  v12 = CFStringCreateWithFormat(0, 0, @"%s%s", v14, v16);
LABEL_24:
  v17 = v12;
  if (v12)
  {
    CIGVNodeSetTitle(a2, v12);
    CFRelease(v17);
  }
}

void CI::ProgramNode::print_for_graphviz(uint64_t a1, FILE *a2, uint64_t a3)
{
  v23[128] = *MEMORY[0x1E69E9840];
  v20[0] = 0;
  v20[1] = v20;
  v20[2] = 0x2000000000;
  v21 = -1;
  v19[0] = MEMORY[0x1E69E9820];
  v19[1] = 0x40000000;
  v19[2] = ___ZNK2CI11ProgramNode18print_for_graphvizEP7__sFILERKNSt3__113unordered_mapIPKNS_11GraphObjectEjNS3_4hashIS7_EENS3_8equal_toIS7_EENS3_9allocatorINS3_4pairIKS7_jEEEEEENS_4Node9NodeStatsE_block_invoke;
  v19[3] = &unk_1E75C6B40;
  v19[4] = v20;
  CI::ProgramNode::traverse_graph_preorder_stoppable(a1, v19);
  v6 = (*(**(a1 + 48) + 16))(*(a1 + 48)) == 36;
  v17[0] = 0;
  v17[1] = v17;
  v17[2] = 0x2000000000;
  v18 = -1;
  v14[0] = 0;
  v14[1] = v14;
  v14[2] = 0x5002000000;
  v14[3] = __Block_byref_object_copy__104;
  v14[4] = __Block_byref_object_dispose__105;
  memset(v15, 0, sizeof(v15));
  v16 = 1065353216;
  v12[0] = 0;
  v12[1] = v12;
  v12[2] = 0x2000000000;
  v13 = 0;
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 0x40000000;
  v11[2] = ___ZNK2CI11ProgramNode18print_for_graphvizEP7__sFILERKNSt3__113unordered_mapIPKNS_11GraphObjectEjNS3_4hashIS7_EENS3_8equal_toIS7_EENS3_9allocatorINS3_4pairIKS7_jEEEEEENS_4Node9NodeStatsE_block_invoke_106;
  v11[3] = &unk_1E75C6B68;
  v11[4] = v14;
  v11[5] = v17;
  CI::ProgramNode::traverse_graph_preorder_stoppable(a1, v11);
  v22[0] = 0;
  v22[1] = v22;
  v22[2] = 0x42802000000;
  v22[3] = __Block_byref_object_copy__108;
  v22[4] = __Block_byref_object_dispose__109;
  bzero(v23, 0x400uLL);
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 0x40000000;
  v9[2] = ___ZNK2CI11ProgramNode18print_for_graphvizEP7__sFILERKNSt3__113unordered_mapIPKNS_11GraphObjectEjNS3_4hashIS7_EENS3_8equal_toIS7_EENS3_9allocatorINS3_4pairIKS7_jEEEEEENS_4Node9NodeStatsE_block_invoke_110;
  v9[3] = &unk_1E75C6B90;
  v10 = v6;
  v9[4] = v22;
  v9[5] = v14;
  v9[8] = a2;
  v9[9] = a3;
  v9[6] = v12;
  v9[7] = a1;
  CI::ProgramNode::traverse_graph_preorder_stoppable(a1, v9);
  fputc(10, a2);
  v7 = CI::ProgramNode::mainProgram(a1);
  if (v7)
  {
    v8 = (*(v7->isa + 8))(v7);
    fprintf(a2, "\ntype=%s", v8);
  }

  _Block_object_dispose(v22, 8);
  _Block_object_dispose(v12, 8);
  _Block_object_dispose(v14, 8);
  std::__hash_table<CI::Image const*,std::hash<CI::Image const*>,std::equal_to<CI::Image const*>,std::allocator<CI::Image const*>>::~__hash_table(v15);
  _Block_object_dispose(v17, 8);
  _Block_object_dispose(v20, 8);
}

uint64_t ___ZNK2CI11ProgramNode18print_for_graphvizEP7__sFILERKNSt3__113unordered_mapIPKNS_11GraphObjectEjNS3_4hashIS7_EENS3_8equal_toIS7_EENS3_9allocatorINS3_4pairIKS7_jEEEEEENS_4Node9NodeStatsE_block_invoke(uint64_t a1, uint64_t a2, uint64_t a3, int a4)
{
  v4 = *(*(a1 + 32) + 8);
  if (*(v4 + 24) < a4)
  {
    *(v4 + 24) = a4;
  }

  return 0;
}

BOOL ___ZNK2CI11ProgramNode18print_for_graphvizEP7__sFILERKNSt3__113unordered_mapIPKNS_11GraphObjectEjNS3_4hashIS7_EENS3_8equal_toIS7_EENS3_9allocatorINS3_4pairIKS7_jEEEEEENS_4Node9NodeStatsE_block_invoke_106(uint64_t a1, uint64_t a2)
{
  v8 = a2;
  v3 = std::__hash_table<CI::Image const*,std::hash<CI::Image const*>,std::equal_to<CI::Image const*>,std::allocator<CI::Image const*>>::find<CI::Image const*>((*(*(a1 + 32) + 8) + 40), &v8);
  v4 = *(*(a1 + 32) + 8);
  if (v3)
  {
    v9 = &v8;
    if (!*(std::__hash_table<std::__hash_value_type<CI::Node *,int>,std::__unordered_map_hasher<CI::Node *,std::__hash_value_type<CI::Node *,int>,std::hash<CI::Node *>,std::equal_to<CI::Node *>,true>,std::__unordered_map_equal<CI::Node *,std::__hash_value_type<CI::Node *,int>,std::equal_to<CI::Node *>,std::hash<CI::Node *>,true>,std::allocator<std::__hash_value_type<CI::Node *,int>>>::__emplace_unique_key_args<CI::Node *,std::piecewise_construct_t const&,std::tuple<CI::Node * const&>,std::tuple<>>((v4 + 40), &v8) + 6))
    {
      v5 = *(*(*(a1 + 40) + 8) + 24);
      v6 = *(*(a1 + 32) + 8);
      v9 = &v8;
      *(std::__hash_table<std::__hash_value_type<CI::Node *,int>,std::__unordered_map_hasher<CI::Node *,std::__hash_value_type<CI::Node *,int>,std::hash<CI::Node *>,std::equal_to<CI::Node *>,true>,std::__unordered_map_equal<CI::Node *,std::__hash_value_type<CI::Node *,int>,std::equal_to<CI::Node *>,std::hash<CI::Node *>,true>,std::allocator<std::__hash_value_type<CI::Node *,int>>>::__emplace_unique_key_args<CI::Node *,std::piecewise_construct_t const&,std::tuple<CI::Node * const&>,std::tuple<>>((v6 + 40), &v8) + 6) = v5;
      --*(*(*(a1 + 40) + 8) + 24);
    }
  }

  else
  {
    v9 = &v8;
    *(std::__hash_table<std::__hash_value_type<CI::Node *,int>,std::__unordered_map_hasher<CI::Node *,std::__hash_value_type<CI::Node *,int>,std::hash<CI::Node *>,std::equal_to<CI::Node *>,true>,std::__unordered_map_equal<CI::Node *,std::__hash_value_type<CI::Node *,int>,std::equal_to<CI::Node *>,std::hash<CI::Node *>,true>,std::allocator<std::__hash_value_type<CI::Node *,int>>>::__emplace_unique_key_args<CI::Node *,std::piecewise_construct_t const&,std::tuple<CI::Node * const&>,std::tuple<>>((v4 + 40), &v8) + 6) = 0;
  }

  return v3 != 0;
}

uint64_t ___ZNK2CI11ProgramNode18print_for_graphvizEP7__sFILERKNSt3__113unordered_mapIPKNS_11GraphObjectEjNS3_4hashIS7_EENS3_8equal_toIS7_EENS3_9allocatorINS3_4pairIKS7_jEEEEEENS_4Node9NodeStatsE_block_invoke_110(uint64_t a1, _DWORD **a2, uint64_t a3, unsigned int a4, int a5, uint64_t a6)
{
  v37 = a2;
  v11 = *(a1 + 56);
  if (a4 <= 0x3FF)
  {
    *(*(*(a1 + 32) + 8) + a4 + 40) = (*(*a2 + 5))(a2);
  }

  if (a3)
  {
    fputc(10, *(a1 + 64));
    v12 = *(a1 + 80);
    if (v12 < a4)
    {
      do
      {
        if (v12 <= 0x3FF && (v13 = *(*(*(a1 + 32) + 8) + v12 + 40), v14 = v13 != 0, v15 = v13 - 1, v15 != 0 && v14))
        {
          v16 = v12 + 1;
          v17 = *(a1 + 64);
          if (v12 + 1 == a4 && v15 == a5)
          {
            fwrite("╰─", 6uLL, 1uLL, v17);
            *(*(*(a1 + 32) + 8) + v12 + 40) = 0;
          }

          else
          {
            if (v16 == a4)
            {
              v18 = "├─";
              v19 = 6;
            }

            else
            {
              v18 = "│ ";
              v19 = 4;
            }

            fwrite(v18, v19, 1uLL, v17);
          }
        }

        else
        {
          fwrite("  ", 2uLL, 1uLL, *(a1 + 64));
          v16 = v12 + 1;
        }

        v12 = v16;
      }

      while (v16 != a4);
    }
  }

  if (a6 == -1)
  {
    v23 = *(*(a1 + 40) + 8);
    v38 = &v37;
    if (*(std::__hash_table<std::__hash_value_type<CI::Node *,int>,std::__unordered_map_hasher<CI::Node *,std::__hash_value_type<CI::Node *,int>,std::hash<CI::Node *>,std::equal_to<CI::Node *>,true>,std::__unordered_map_equal<CI::Node *,std::__hash_value_type<CI::Node *,int>,std::equal_to<CI::Node *>,std::hash<CI::Node *>,true>,std::allocator<std::__hash_value_type<CI::Node *,int>>>::__emplace_unique_key_args<CI::Node *,std::piecewise_construct_t const&,std::tuple<CI::Node * const&>,std::tuple<>>((v23 + 40), &v37) + 6) >= 1)
    {
      v24 = *(a1 + 64);
      v25 = *(*(a1 + 40) + 8);
      v38 = &v37;
      v26 = std::__hash_table<std::__hash_value_type<CI::Node *,int>,std::__unordered_map_hasher<CI::Node *,std::__hash_value_type<CI::Node *,int>,std::hash<CI::Node *>,std::equal_to<CI::Node *>,true>,std::__unordered_map_equal<CI::Node *,std::__hash_value_type<CI::Node *,int>,std::equal_to<CI::Node *>,std::hash<CI::Node *>,true>,std::allocator<std::__hash_value_type<CI::Node *,int>>>::__emplace_unique_key_args<CI::Node *,std::piecewise_construct_t const&,std::tuple<CI::Node * const&>,std::tuple<>>((v25 + 40), &v37);
      fprintf(v24, "<%d>", *(v26 + 6));
      return 1;
    }

    if ((*(*v37 + 2))(v37) == 57)
    {
      v28 = *v37[7];
      if ((*(*v37 + 41))(v37))
      {
        ++v28;
      }
    }

    else
    {
      v28 = 0;
    }

    if ((*(*v37 + 2))(v37) == 58)
    {
      v28 = *v37[7];
      if ((*(*v37 + 41))(v37))
      {
        ++v28;
      }
    }

    if ((*(*v37 + 2))(v37) == 59)
    {
      v28 = *v37[7];
      if ((*(*v37 + 41))(v37))
      {
        ++v28;
      }
    }

    if (a4)
    {
      v29 = 1;
    }

    else
    {
      v29 = v28 <= 2;
    }

    v30 = !v29;
    if (a4 == 1)
    {
      v30 = *(a1 + 80);
      if (v28 <= 2)
      {
        v30 = 0;
      }
    }

    (*(*v37 + 15))(v37, *(a1 + 64), *(a1 + 72), v30 ^ 1u);
    v31 = *(*(a1 + 40) + 8);
    v38 = &v37;
    if ((std::__hash_table<std::__hash_value_type<CI::Node *,int>,std::__unordered_map_hasher<CI::Node *,std::__hash_value_type<CI::Node *,int>,std::hash<CI::Node *>,std::equal_to<CI::Node *>,true>,std::__unordered_map_equal<CI::Node *,std::__hash_value_type<CI::Node *,int>,std::equal_to<CI::Node *>,std::hash<CI::Node *>,true>,std::allocator<std::__hash_value_type<CI::Node *,int>>>::__emplace_unique_key_args<CI::Node *,std::piecewise_construct_t const&,std::tuple<CI::Node * const&>,std::tuple<>>((v31 + 40), &v37)[3] & 0x80000000) != 0)
    {
      v32 = *(*(a1 + 40) + 8);
      v38 = &v37;
      v33 = std::__hash_table<std::__hash_value_type<CI::Node *,int>,std::__unordered_map_hasher<CI::Node *,std::__hash_value_type<CI::Node *,int>,std::hash<CI::Node *>,std::equal_to<CI::Node *>,true>,std::__unordered_map_equal<CI::Node *,std::__hash_value_type<CI::Node *,int>,std::equal_to<CI::Node *>,std::hash<CI::Node *>,true>,std::allocator<std::__hash_value_type<CI::Node *,int>>>::__emplace_unique_key_args<CI::Node *,std::piecewise_construct_t const&,std::tuple<CI::Node * const&>,std::tuple<>>((v32 + 40), &v37);
      *(v33 + 6) = -*(v33 + 6);
      v34 = *(a1 + 64);
      v35 = *(*(a1 + 40) + 8);
      v38 = &v37;
      std::__hash_table<std::__hash_value_type<CI::Node *,int>,std::__unordered_map_hasher<CI::Node *,std::__hash_value_type<CI::Node *,int>,std::hash<CI::Node *>,std::equal_to<CI::Node *>,true>,std::__unordered_map_equal<CI::Node *,std::__hash_value_type<CI::Node *,int>,std::equal_to<CI::Node *>,std::hash<CI::Node *>,true>,std::allocator<std::__hash_value_type<CI::Node *,int>>>::__emplace_unique_key_args<CI::Node *,std::piecewise_construct_t const&,std::tuple<CI::Node * const&>,std::tuple<>>((v35 + 40), &v37);
      fprintf(v34, "<%d>");
    }
  }

  else
  {
    v20 = (*(*v11 + 48))(v11, a6);
    if (CI_GRAPHVIZ_INTERNAL() || (CI_PRINT_TREE_dump_intermediates() & 1) != 0 || CI_PRINT_TREE_dump_outputs() || (v36 = *(a1 + 72), v38 = v20, std::__hash_table<void const*,std::hash<void const*>,std::equal_to<void const*>,std::allocator<void const*>>::find<void const*>(v36, &v38)))
    {
      fprintf(*(a1 + 64), "(%d)");
    }

    *(*(*(a1 + 48) + 8) + 24) = 1;
    v21 = v11[9];
    if (v21)
    {
      v22 = *(*(v21 + 32) + 8 * a6);
    }

    else
    {
      v22 = "";
    }

    if (*v22)
    {
      fprintf(*(a1 + 64), " // stopped concat because %s");
    }
  }

  return 0;
}

void *CI::ProgramNode::node_for_graphviz_stats(CI::Node *a1, uint64_t a2, uint64_t a3)
{
  v53 = *MEMORY[0x1E69E9840];
  v6 = (*(*a1 + 176))(a1);
  v10 = CIGVNodeCreateForNode(a1, v6, v7, v8, v9);
  v11 = (*(*a1 + 56))(a1);
  CIGVNodeSetShape(v10, v11);
  v12 = (*(*a1 + 64))(a1);
  CIGVNodeSetColor(v10, v12);
  v13 = (*(*a1 + 400))(a1);
  v15 = v13;
  v50[0] = 0;
  v50[1] = v50;
  v50[2] = 0x4002000000;
  v50[3] = __Block_byref_object_copy__121;
  v50[4] = __Block_byref_object_dispose__122;
  memset(&v50[5], 0, 24);
  v49[0] = 0;
  v49[1] = v49;
  v49[2] = 0x2000000000;
  v49[3] = 0;
  if (v13)
  {
    v16 = __CFString::createWithFormat("%llX", v14, v13);
    v17 = CopyPeakNonVolatileList();
    v48[0] = MEMORY[0x1E69E9820];
    v48[1] = 0x40000000;
    v48[2] = ___ZNK2CI11ProgramNode23node_for_graphviz_statsERKNSt3__113unordered_mapIPKNS_11GraphObjectEjNS1_4hashIS5_EENS1_8equal_toIS5_EENS1_9allocatorINS1_4pairIKS5_jEEEEEENS_4Node9NodeStatsE_block_invoke;
    v48[3] = &unk_1E75C6BB8;
    v48[6] = v16;
    v48[7] = v10;
    v48[4] = v50;
    v48[5] = v49;
    __CFArray::for_each(v17, v48);
    if (v17)
    {
      CFRelease(v17);
    }

    if (v16)
    {
      CFRelease(v16);
    }
  }

  (*(*a1 + 136))(a1, v10, a2);
  v37[0] = MEMORY[0x1E69E9820];
  v37[1] = *"";
  v37[2] = ___ZNK2CI11ProgramNode23node_for_graphviz_statsERKNSt3__113unordered_mapIPKNS_11GraphObjectEjNS1_4hashIS5_EENS1_8equal_toIS5_EENS1_9allocatorINS1_4pairIKS5_jEEEEEENS_4Node9NodeStatsE_block_invoke_2;
  v37[3] = &unk_1F103B370;
  v37[6] = a1;
  v37[7] = a2;
  std::vector<std::pair<CGRect,unsigned long>>::vector[abi:nn200100](v38, a3);
  std::vector<std::pair<CGRect,unsigned long>>::vector[abi:nn200100](v39, (a3 + 24));
  std::vector<CGRect>::vector[abi:nn200100](__p, (a3 + 48));
  v43 = *(a3 + 104);
  v44 = *(a3 + 120);
  v45 = *(a3 + 136);
  v46 = *(a3 + 152);
  v41 = *(a3 + 72);
  v42 = *(a3 + 88);
  v37[4] = v50;
  v37[5] = v49;
  v47 = v15;
  v18 = stream_to_string(v37);
  CIGVNodeSetLabel(v10, v18);
  CFRelease(v18);
  if (CI_PRINT_TREE_dump_rois() && CI::Node::rois_count(a1) >= 1)
  {
    v19 = 0;
    do
    {
      v20 = CI::Node::roi(a1, v19);
      CIGVNodeAddRoi(v10, v20);
      ++v19;
    }

    while (v19 < CI::Node::rois_count(a1));
  }

  if (((CI_PRINT_TREE_dump_intermediates() & 1) != 0 || CI_PRINT_TREE_dump_outputs()) && CI::Node::rois_count(a1) >= 1)
  {
    v21 = 0;
    do
    {
      v22 = CI::Node::roi(a1, v21);
      v24 = v23;
      v26 = v25;
      v28 = v27;
      v29 = CI_TEMP_DIR();
      v30 = getpid();
      snprintf(__str, 0x100uLL, "%s/%d_intermediate_%d_%d_%d_%d_%d.png", v29, v30, *(a1 + 9), v22, v24, v26, v28);
      if (!stat(__str, &v51) && v51.st_mode < 0 && v51.st_size && (v31 = CGDataProviderCreateWithFilename(__str), v32 = CGImageCreateWithPNGDataProvider(v31, 0, 1, kCGRenderingIntentDefault), CGDataProviderRelease(v31), v32) || (v33 = CI_TEMP_DIR(), v34 = getpid(), snprintf(__str, 0x100uLL, "%s/%d_output_%d_%d_%d_%d_%d.png", v33, v34, *(a1 + 9), v22, v24, v26, v28), !stat(__str, &v51)) && v51.st_mode < 0 && v51.st_size && (v35 = CGDataProviderCreateWithFilename(__str), v32 = CGImageCreateWithPNGDataProvider(v35, 0, 1, kCGRenderingIntentDefault), CGDataProviderRelease(v35), v32))
      {
        CIGVNodeAddImage(v10, v32);
        CGImageRelease(v32);
      }

      ++v21;
    }

    while (v21 < CI::Node::rois_count(a1));
  }

  if (__p[0])
  {
    __p[1] = __p[0];
    operator delete(__p[0]);
  }

  if (v39[0])
  {
    v39[1] = v39[0];
    operator delete(v39[0]);
  }

  if (v38[0])
  {
    v38[1] = v38[0];
    operator delete(v38[0]);
  }

  _Block_object_dispose(v49, 8);
  _Block_object_dispose(v50, 8);
  return v10;
}

__n128 __Block_byref_object_copy__121(uint64_t a1, uint64_t a2)
{
  result = *(a2 + 40);
  *(a1 + 56) = *(a2 + 56);
  *(a1 + 40) = result;
  return result;
}

__CFString *__CFString::createWithFormat(__CFString *this, const char *a2, ...)
{
  va_start(va, a2);
  if (this)
  {
    v2 = CFStringCreateWithCString(0, this, 0x600u);
    return CFStringCreateWithFormatAndArguments(0, 0, v2, va);
  }

  return this;
}

CFIndex __CFArray::for_each(CFIndex result, uint64_t a2)
{
  if (result)
  {
    v3 = result;
    result = CFArrayGetCount(result);
    if (result >= 1)
    {
      for (i = 0; i < result; i = (i + 1))
      {
        ObjectAtIndex = __CFArray::getObjectAtIndex(v3, i);
        (*(a2 + 16))(a2, ObjectAtIndex);
        result = CFArrayGetCount(v3);
      }
    }
  }

  return result;
}

const __CFString *___ZNK2CI11ProgramNode23node_for_graphviz_statsERKNSt3__113unordered_mapIPKNS_11GraphObjectEjNS1_4hashIS5_EENS1_8equal_toIS5_EENS1_9allocatorINS1_4pairIKS5_jEEEEEENS_4Node9NodeStatsE_block_invoke(uint64_t a1, __CFDictionary *this, const __CFString *a3)
{
  result = __CFDictionary::getString(this, @"id", a3);
  if (result)
  {
    v6 = *(a1 + 48);
    if (v6)
    {
      result = CFStringHasPrefix(result, v6);
      if (result)
      {
        CIGVNodeSetColor(*(a1 + 56), 7);
        *(*(*(a1 + 32) + 8) + 40) = __CFDictionary::getInt32(this, @"x", 0);
        *(*(*(a1 + 32) + 8) + 44) = __CFDictionary::getInt32(this, @"y", 0);
        *(*(*(a1 + 32) + 8) + 48) = __CFDictionary::getInt32(this, @"w", 0);
        *(*(*(a1 + 32) + 8) + 56) = __CFDictionary::getInt32(this, @"h", 0);
        result = __CFDictionary::getInt32(this, @"size", 0);
        *(*(*(a1 + 40) + 8) + 24) += result;
      }
    }
  }

  return result;
}

const __CFDictionary *__CFDictionary::getString(const __CFDictionary *this, const __CFDictionary *a2, const __CFString *a3)
{
  if (this)
  {
    this = CFDictionaryGetValue(this, a2);
    if (this)
    {
      v3 = this;
      v4 = CFGetTypeID(this);
      if (v4 == CFStringGetTypeID())
      {
        return v3;
      }

      else
      {
        return 0;
      }
    }
  }

  return this;
}

const __CFString *__CFDictionary::getInt32(__CFDictionary *this, const __CFDictionary *a2, const __CFString *a3)
{
  if (this && CFDictionaryContainsKey(this, a2))
  {
    Number = __CFDictionary::getNumber(this, a2, v6);
    valuePtr = 0;
    if (Number)
    {
      CFNumberGetValue(Number, kCFNumberSInt32Type, &valuePtr);
      return valuePtr;
    }

    else
    {
      return 0;
    }
  }

  return a3;
}

uint64_t ___ZNK2CI11ProgramNode23node_for_graphviz_statsERKNSt3__113unordered_mapIPKNS_11GraphObjectEjNS1_4hashIS5_EENS1_8equal_toIS5_EENS1_9allocatorINS1_4pairIKS5_jEEEEEENS_4Node9NodeStatsE_block_invoke_2(uint64_t a1, FILE *a2)
{
  v4 = *(a1 + 48);
  if (*(v4 + 20))
  {
    fprintf(a2, "program=%016llX\n", *(v4 + 20));
  }

  v5 = *(a1 + 56);
  std::vector<std::pair<CGRect,unsigned long>>::vector[abi:nn200100](v48, (a1 + 64));
  std::vector<std::pair<CGRect,unsigned long>>::vector[abi:nn200100](v49, (a1 + 88));
  std::vector<CGRect>::vector[abi:nn200100](__p, (a1 + 112));
  v6 = *(a1 + 184);
  v53 = *(a1 + 168);
  v54 = v6;
  v55 = *(a1 + 200);
  v56 = *(a1 + 216);
  v7 = *(a1 + 152);
  v51 = *(a1 + 136);
  v52 = v7;
  (*(*v4 + 160))(v4, a2, v5, v48);
  if (__p[0])
  {
    __p[1] = __p[0];
    operator delete(__p[0]);
  }

  if (v49[0])
  {
    v49[1] = v49[0];
    operator delete(v49[0]);
  }

  if (v48[0])
  {
    v48[1] = v48[0];
    operator delete(v48[0]);
  }

  if (CI::Node::rois_count(v4) < 1)
  {
    v9 = 0;
  }

  else
  {
    v8 = 0;
    v9 = 0;
    v10 = 80;
    do
    {
      if (v10 == 80)
      {
        fprintf(a2, "\nrois=");
      }

      else
      {
        fprintf(a2, ",");
      }

      if (v10 != 80 && (v8 & 1) == 0)
      {
        fwrite("\n     ", 6uLL, 1uLL, a2);
      }

      v57.origin.x = CI::Node::roi(v4, v8);
      x = v57.origin.x;
      y = v57.origin.y;
      width = v57.size.width;
      height = v57.size.height;
      v15 = *(*(a1 + 32) + 8);
      v16 = *(v15 + 40);
      v17 = *(v15 + 44);
      v18 = *(v15 + 48);
      v19 = *(v15 + 56);
      if (CGRectIsNull(v57))
      {
        v21 = 0;
        v22 = 0;
        v23 = 0x7FFFFFFF;
        v24 = 0x7FFFFFFF;
      }

      else
      {
        v58.origin.x = x;
        v58.origin.y = y;
        v58.size.width = width;
        v58.size.height = height;
        if (CGRectIsInfinite(v58))
        {
          v23 = -2147483647;
          v21 = 0xFFFFFFFFLL;
          v22 = 0xFFFFFFFFLL;
          v24 = -2147483647;
        }

        else
        {
          v59.origin.x = x;
          v59.origin.y = y;
          v59.size.width = width;
          v59.size.height = height;
          v60 = CGRectInset(v59, 0.000001, 0.000001);
          v61 = CGRectIntegral(v60);
          v24 = v61.origin.x;
          v23 = v61.origin.y;
          v22 = v61.size.width;
          v21 = v61.size.height;
        }
      }

      if (v16 == v24 && v17 == v23 && v18 == v22 && v19 == v21)
      {
        fputc(60, a2);
        v63.origin.x = x;
        v63.origin.y = y;
        v63.size.width = width;
        v63.size.height = height;
        CI::fprintf(a2, v28, v63);
        fputc(62, a2);
      }

      else
      {
        v62.origin.x = x;
        v62.origin.y = y;
        v62.size.width = width;
        v62.size.height = height;
        CI::fprintf(a2, v20, v62);
      }

      v29 = CI::Node::rois(v4);
      if (*(*v29 + v10) >= 2)
      {
        fprintf(a2, "/%d", *(*v29 + v10));
      }

      v9 = (v9 + width * height);
      ++v8;
      v10 += 120;
    }

    while (v8 < CI::Node::rois_count(v4));
  }

  v30 = *(*(*(a1 + 40) + 8) + 24);
  if (v30)
  {
    fprintf(a2, "\npeakContribution=%.1fMB", vcvtd_n_f64_s64(v30, 0x14uLL));
  }

  fprintf(a2, "\npixels=%ld", v9);
  fwrite("\nextent=", 8uLL, 1uLL, a2);
  v64.origin.x = (*(*v4 + 168))(v4);
  CI::fprintf(a2, v31, v64);
  v32 = (*(*v4 + 168))(v4);
  v34 = v33;
  v36 = v35;
  v38 = v37;
  v67.origin.x = (*(*v4 + 176))(v4);
  v67.origin.y = v39;
  v67.size.width = v40;
  v67.size.height = v41;
  v65.origin.x = v32;
  v65.origin.y = v34;
  v65.size.width = v36;
  v65.size.height = v38;
  if (!CGRectEqualToRect(v65, v67))
  {
    v66.origin.x = (*(*v4 + 176))(v4);
    CI::fprintf(a2, v42, v66);
  }

  if ((*(*v4 + 304))(v4))
  {
    v43 = "\nluma-only opaque";
    v44 = 17;
  }

  else if ((*(*v4 + 296))(v4))
  {
    v43 = "\nr-only opaque";
    v44 = 14;
  }

  else if ((*(*v4 + 288))(v4))
  {
    v43 = "\nrg-only opaque";
    v44 = 15;
  }

  else
  {
    if (!(*(*v4 + 280))(v4))
    {
      goto LABEL_52;
    }

    v43 = "\nopaque";
    v44 = 7;
  }

  fwrite(v43, v44, 1uLL, a2);
LABEL_52:
  if ((*(*v4 + 320))(v4) == -1)
  {
    fwrite(" shallow", 8uLL, 1uLL, a2);
  }

  result = (*(*v4 + 320))(v4);
  if (result == 1)
  {
    result = fwrite(" deep", 5uLL, 1uLL, a2);
  }

  if (*(a1 + 224))
  {
    result = fprintf(a2, "\ndigest=%016llX", *(a1 + 224));
  }

  if (*(a1 + 216) == 1)
  {
    if (CI::ProgramNode::mainProgram(v4))
    {
      if (v4[168])
      {
        v46 = " cacheMiss";
      }

      else
      {
        v46 = "";
      }

      fprintf(a2, "\ncompileTime=%.3fms waited=%0.3fms%s", *(a1 + 168) * 1000.0, *(a1 + 176) * 1000.0, v46);
    }

    v47 = *(a1 + 160);
    if (v47 == 0.0)
    {
      result = fwrite("\nrenderTime=cacheHit", 0x14uLL, 1uLL, a2);
    }

    else
    {
      result = fprintf(a2, "\nrenderTime=%.3fms", v47 * 1000.0);
    }

    if (*(a1 + 200))
    {
      return fprintf(a2, "\ncycles=%llu", *(a1 + 200));
    }
  }

  return result;
}

__n128 __copy_helper_block_8_64c25_ZTSKN2CI4Node9NodeStatsE(uint64_t a1, uint64_t a2)
{
  std::vector<std::pair<CGRect,unsigned long>>::vector[abi:nn200100]((a1 + 64), (a2 + 64));
  std::vector<std::pair<CGRect,unsigned long>>::vector[abi:nn200100]((a1 + 88), (a2 + 88));
  std::vector<CGRect>::vector[abi:nn200100]((a1 + 112), (a2 + 112));
  v4 = *(a2 + 136);
  *(a1 + 152) = *(a2 + 152);
  *(a1 + 136) = v4;
  result = *(a2 + 168);
  v6 = *(a2 + 184);
  v7 = *(a2 + 200);
  *(a1 + 216) = *(a2 + 216);
  *(a1 + 200) = v7;
  *(a1 + 184) = v6;
  *(a1 + 168) = result;
  return result;
}

void __destroy_helper_block_8_64c25_ZTSKN2CI4Node9NodeStatsE(void *a1)
{
  v2 = a1[14];
  if (v2)
  {
    a1[15] = v2;
    operator delete(v2);
  }

  v3 = a1[11];
  if (v3)
  {
    a1[12] = v3;
    operator delete(v3);
  }

  v4 = a1[8];
  if (v4)
  {
    a1[9] = v4;

    operator delete(v4);
  }
}

uint64_t CI::ProgramNode::color_for_graphviz(CI::ProgramNode *this)
{
  if ((*(**(this + 6) + 16))(*(this + 6)) == 47)
  {
    return 0;
  }

  else
  {
    return 8 * ((*(**(this + 6) + 16))(*(this + 6)) != 51);
  }
}

char *std::vector<CGRect>::__insert_with_size[abi:nn200100]<std::__wrap_iter<CGRect const*>,std::__wrap_iter<CGRect const*>>(void *a1, char *__dst, char *__src, char *a4, uint64_t a5)
{
  v5 = __dst;
  if (a5 < 1)
  {
    return v5;
  }

  v7 = __src;
  v10 = a1[1];
  v9 = a1[2];
  if (a5 > (v9 - v10) >> 5)
  {
    v11 = *a1;
    v12 = a5 + (&v10[-*a1] >> 5);
    if (v12 >> 59)
    {
      std::vector<CI::SWRendererFunctionInputNode>::__throw_length_error[abi:nn200100]();
    }

    v13 = __dst - v11;
    v14 = v9 - v11;
    if (v14 >> 4 > v12)
    {
      v12 = v14 >> 4;
    }

    if (v14 >= 0x7FFFFFFFFFFFFFE0)
    {
      v15 = 0x7FFFFFFFFFFFFFFLL;
    }

    else
    {
      v15 = v12;
    }

    v16 = v13 >> 5;
    if (v15)
    {
      std::__allocate_at_least[abi:nn200100]<std::allocator<CGRect>>(a1, v15);
    }

    v36 = 32 * v16;
    v37 = 32 * a5;
    v38 = (32 * v16);
    do
    {
      v39 = *v7;
      v40 = v7[1];
      v7 += 2;
      *v38 = v39;
      v38[1] = v40;
      v38 += 2;
      v37 -= 32;
    }

    while (v37);
    memcpy((v36 + 32 * a5), v5, a1[1] - v5);
    v41 = *a1;
    v42 = v36 + 32 * a5 + a1[1] - v5;
    a1[1] = v5;
    v43 = v5 - v41;
    v44 = (v36 - (v5 - v41));
    memcpy(v44, v41, v43);
    v45 = *a1;
    *a1 = v44;
    a1[1] = v42;
    a1[2] = 0;
    if (v45)
    {
      operator delete(v45);
    }

    return (32 * v16);
  }

  v17 = (v10 - __dst) >> 5;
  if (v17 >= a5)
  {
    v23 = &__dst[32 * a5];
    v24 = &v10[-32 * a5];
    v25 = a1[1];
    while (v24 < v10)
    {
      v26 = *v24;
      v27 = *(v24 + 1);
      v24 += 32;
      *v25 = v26;
      v25[1] = v27;
      v25 += 2;
    }

    a1[1] = v25;
    if (v10 != v23)
    {
      memmove(&__dst[32 * a5], __dst, v10 - v23);
    }

    v33 = 32 * a5;
    v34 = v5;
    v35 = v7;
    goto LABEL_34;
  }

  v18 = &__src[v10 - __dst];
  v19 = a1[1];
  v20 = v19;
  while (v18 != a4)
  {
    v21 = *v18;
    v22 = *(v18 + 1);
    v18 += 32;
    *v20 = v21;
    *(v20 + 1) = v22;
    v20 += 32;
    v19 += 32;
  }

  a1[1] = v19;
  if (v17 >= 1)
  {
    v28 = &__dst[32 * a5];
    v29 = &v19[-32 * a5];
    v30 = v19;
    while (v29 < v10)
    {
      v31 = *v29;
      v32 = *(v29 + 1);
      v29 += 32;
      *v30 = v31;
      *(v30 + 1) = v32;
      v30 += 32;
    }

    a1[1] = v30;
    if (v20 != v28)
    {
      memmove(&__dst[32 * a5], __dst, v19 - v28);
    }

    if (v10 != v5)
    {
      v34 = v5;
      v35 = v7;
      v33 = v10 - v5;
LABEL_34:
      memmove(v34, v35, v33);
    }
  }

  return v5;
}

uint64_t *std::__tree<int>::__emplace_unique_key_args<int,int const&>(uint64_t a1, int *a2)
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
      v5 = *(v2 + 28);
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

uint64_t CI::roiKeyVec::roiKeyVec(uint64_t a1, uint64_t a2, void *a3)
{
  *a1 = 0;
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  v4 = a3 + 1;
  v5 = *a3;
  if (*a3 != a3 + 1)
  {
    v7 = 0;
    do
    {
      v8 = *(v5 + 7);
      v9 = *(a1 + 16);
      if (v7 >= v9)
      {
        v10 = (v7 - *a1) >> 4;
        if ((v10 + 1) >> 60)
        {
          std::vector<CI::SWRendererFunctionInputNode>::__throw_length_error[abi:nn200100]();
        }

        v11 = v9 - *a1;
        v12 = v11 >> 3;
        if (v11 >> 3 <= (v10 + 1))
        {
          v12 = v10 + 1;
        }

        if (v11 >= 0x7FFFFFFFFFFFFFF0)
        {
          v13 = 0xFFFFFFFFFFFFFFFLL;
        }

        else
        {
          v13 = v12;
        }

        if (v13)
        {
          std::__allocate_at_least[abi:nn200100]<std::allocator<CI::roiKey>>(a1, v13);
        }

        v14 = 16 * v10;
        *v14 = a2;
        *(v14 + 8) = v8;
        v7 = 16 * v10 + 16;
        v15 = *(a1 + 8) - *a1;
        v16 = v14 - v15;
        memcpy((v14 - v15), *a1, v15);
        v17 = *a1;
        *a1 = v16;
        *(a1 + 8) = v7;
        *(a1 + 16) = 0;
        if (v17)
        {
          operator delete(v17);
        }
      }

      else
      {
        *v7 = a2;
        *(v7 + 8) = v8;
        v7 += 16;
      }

      *(a1 + 8) = v7;
      v18 = v5[1];
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
          v19 = v5[2];
          v20 = *v19 == v5;
          v5 = v19;
        }

        while (!v20);
      }

      v5 = v19;
    }

    while (v19 != v4);
  }

  return a1;
}

void *std::vector<CI::parentROI>::__assign_with_size[abi:nn200100]<CI::parentROI*,CI::parentROI*>(void *result, char *__src, char *a3, unint64_t a4)
{
  v6 = result;
  v7 = result[2];
  v8 = *result;
  if (0xAAAAAAAAAAAAAAABLL * ((v7 - *result) >> 4) < a4)
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

    if (a4 <= 0x555555555555555)
    {
      v9 = 0xAAAAAAAAAAAAAAABLL * (v7 >> 4);
      v10 = 2 * v9;
      if (2 * v9 <= a4)
      {
        v10 = a4;
      }

      if (v9 >= 0x2AAAAAAAAAAAAAALL)
      {
        v11 = 0x555555555555555;
      }

      else
      {
        v11 = v10;
      }

      std::vector<CI::parentROI>::__vallocate[abi:nn200100](v6, v11);
    }

    std::vector<CI::SWRendererFunctionInputNode>::__throw_length_error[abi:nn200100]();
  }

  v12 = result[1];
  v13 = v12 - v8;
  if (0xAAAAAAAAAAAAAAABLL * ((v12 - v8) >> 4) >= a4)
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

void std::vector<CI::parentROI>::__vallocate[abi:nn200100](uint64_t a1, unint64_t a2)
{
  if (a2 < 0x555555555555556)
  {
    std::__allocate_at_least[abi:nn200100]<std::allocator<CI::parentROI>>(a1, a2);
  }

  std::vector<CI::SWRendererFunctionInputNode>::__throw_length_error[abi:nn200100]();
}

uint64_t ___ZNK2CI20SerialObjectPtrArray5printEP7__sFILE_block_invoke(uint64_t result, uint64_t a2)
{
  v2 = *(result + 32);
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 0x40000000;
  v7 = ___ZNK2CI20SerialObjectPtrArray5printEP7__sFILE_block_invoke_2;
  v8 = &__block_descriptor_tmp_224;
  v9 = a2;
  if (*v2 >= 1)
  {
    v3 = 0;
    v4 = v2 + 6;
    do
    {
      v5 = v4;
      if (v3 >= 0xA)
      {
        v5 = (*(v2 + 2) + 8 * v3 - 80);
      }

      result = v7(v6, v3++, *v5);
      v4 += 2;
    }

    while (v3 < *v2);
  }

  return result;
}

uint64_t ___ZNK2CI20SerialObjectPtrArray5printEP7__sFILE_block_invoke_2(uint64_t a1, int a2, const void *a3)
{
  v6 = *(a1 + 32);
  v7 = (*(*a3 + 16))(a3);
  v8 = CI::name_for_type(v7);
  fprintf(v6, "[%i] = %p <%s> ", a2, a3, v8);
  (*(*a3 + 32))(a3, *(a1 + 32), 0);
  v9 = *(a1 + 32);

  return fputc(10, v9);
}

const void *__CFArray::getObjectAtIndex(__CFArray *this, const __CFArray *a2)
{
  if (!this || CFArrayGetCount(this) <= a2)
  {
    return 0;
  }

  return CFArrayGetValueAtIndex(this, a2);
}

const __CFDictionary *__CFDictionary::getNumber(const __CFDictionary *this, const __CFDictionary *a2, const __CFString *a3)
{
  if (this)
  {
    this = CFDictionaryGetValue(this, a2);
    if (this)
    {
      v3 = this;
      v4 = CFGetTypeID(this);
      if (v4 == CFNumberGetTypeID())
      {
        return v3;
      }

      else
      {
        return 0;
      }
    }
  }

  return this;
}

void *CI::InstanceCounted<(CI::Type)60>::~InstanceCounted(void *result)
{
  *result = &unk_1F103B3D0;
  atomic_fetch_add(&dword_1ED7C47BC[58], 0xFFFFFFFF);
  return result;
}

void CI::InstanceCounted<(CI::Type)60>::~InstanceCounted(void *a1)
{
  *a1 = &unk_1F103B3D0;
  atomic_fetch_add(&dword_1ED7C47BC[58], 0xFFFFFFFF);
  JUMPOUT(0x19EAF5590);
}

void ___ZN9QueuePoolILi4EE3getEP21dispatch_queue_attr_s_block_invoke(uint64_t a1)
{
  v2 = *(a1 + 40);
  v3 = v2 + 10;
  if (!*&v2[2 * *v2 + 10])
  {
    std::string::basic_string[abi:nn200100]<0>(&v30, "-Pool-");
    v4 = *(v2 + 39);
    if (v4 >= 0)
    {
      v5 = (v2 + 4);
    }

    else
    {
      v5 = *(v2 + 2);
    }

    if (v4 >= 0)
    {
      v6 = *(v2 + 39);
    }

    else
    {
      v6 = *(v2 + 3);
    }

    v7 = std::string::insert(&v30, 0, v5, v6);
    v8 = v7->__r_.__value_.__r.__words[2];
    *&v31.__r_.__value_.__l.__data_ = *&v7->__r_.__value_.__l.__data_;
    v31.__r_.__value_.__r.__words[2] = v8;
    v7->__r_.__value_.__l.__size_ = 0;
    v7->__r_.__value_.__r.__words[2] = 0;
    v7->__r_.__value_.__r.__words[0] = 0;
    std::to_string(&__p, *v2);
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
      size = HIBYTE(__p.__r_.__value_.__r.__words[2]);
    }

    else
    {
      size = __p.__r_.__value_.__l.__size_;
    }

    v11 = std::string::append(&v31, p_p, size);
    v12 = v11->__r_.__value_.__r.__words[2];
    v32 = *&v11->__r_.__value_.__l.__data_;
    v33 = v12;
    v11->__r_.__value_.__l.__size_ = 0;
    v11->__r_.__value_.__r.__words[2] = 0;
    v11->__r_.__value_.__r.__words[0] = 0;
    if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__p.__r_.__value_.__l.__data_);
    }

    if (SHIBYTE(v31.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v31.__r_.__value_.__l.__data_);
    }

    if (SHIBYTE(v30.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v30.__r_.__value_.__l.__data_);
    }

    if (v33 >= 0)
    {
      v13 = &v32;
    }

    else
    {
      v13 = v32;
    }

    v14 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    *&v3[2 * *v2] = dispatch_queue_create(v13, v14);
    if (SHIBYTE(v33) < 0)
    {
      operator delete(v32);
    }
  }

  std::string::basic_string[abi:nn200100]<0>(&v30, "-");
  v15 = *(v2 + 39);
  if (v15 >= 0)
  {
    v16 = (v2 + 4);
  }

  else
  {
    v16 = *(v2 + 2);
  }

  if (v15 >= 0)
  {
    v17 = *(v2 + 39);
  }

  else
  {
    v17 = *(v2 + 3);
  }

  v18 = std::string::insert(&v30, 0, v16, v17);
  v19 = v18->__r_.__value_.__r.__words[2];
  *&v31.__r_.__value_.__l.__data_ = *&v18->__r_.__value_.__l.__data_;
  v31.__r_.__value_.__r.__words[2] = v19;
  v18->__r_.__value_.__l.__size_ = 0;
  v18->__r_.__value_.__r.__words[2] = 0;
  v18->__r_.__value_.__r.__words[0] = 0;
  std::to_string(&__p, *v2);
  if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v20 = &__p;
  }

  else
  {
    v20 = __p.__r_.__value_.__r.__words[0];
  }

  if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v21 = HIBYTE(__p.__r_.__value_.__r.__words[2]);
  }

  else
  {
    v21 = __p.__r_.__value_.__l.__size_;
  }

  v22 = std::string::append(&v31, v20, v21);
  v23 = v22->__r_.__value_.__r.__words[2];
  v32 = *&v22->__r_.__value_.__l.__data_;
  v33 = v23;
  v22->__r_.__value_.__l.__size_ = 0;
  v22->__r_.__value_.__r.__words[2] = 0;
  v22->__r_.__value_.__r.__words[0] = 0;
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v31.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v31.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v30.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v30.__r_.__value_.__l.__data_);
  }

  if (v33 >= 0)
  {
    v24 = &v32;
  }

  else
  {
    v24 = v32;
  }

  *(*(*(a1 + 32) + 8) + 24) = dispatch_queue_create_with_target_V2(v24, *(a1 + 48), *&v3[2 * *v2]);
  v25 = *v2 + 1;
  v26 = -v25 < 0;
  v27 = -v25 & 3;
  v28 = v25 & 3;
  if (!v26)
  {
    v28 = -v27;
  }

  *v2 = v28;
  if (SHIBYTE(v33) < 0)
  {
    operator delete(v32);
  }
}

void *std::__tree<std::__value_type<CI::Object const*,unsigned long>,std::__map_value_compare<CI::Object const*,std::__value_type<CI::Object const*,unsigned long>,std::less<CI::Object const*>,true>,std::allocator<std::__value_type<CI::Object const*,unsigned long>>>::__emplace_unique_key_args<CI::Object const*,std::pair<CI::Object const*,unsigned long>>(uint64_t a1, unint64_t *a2)
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

uint64_t *std::__tree<std::__value_type<CI::NodeIndex,unsigned long>,std::__map_value_compare<CI::NodeIndex,std::__value_type<CI::NodeIndex,unsigned long>,std::less<CI::NodeIndex>,true>,std::allocator<std::__value_type<CI::NodeIndex,unsigned long>>>::__emplace_unique_key_args<CI::NodeIndex,std::piecewise_construct_t const&,std::tuple<CI::NodeIndex const&>,std::tuple<>>(uint64_t a1, unsigned int *a2)
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
      v5 = *(v2 + 32);
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

void *std::__hash_table<std::__hash_value_type<CI::Node *,int>,std::__unordered_map_hasher<CI::Node *,std::__hash_value_type<CI::Node *,int>,std::hash<CI::Node *>,std::equal_to<CI::Node *>,true>,std::__unordered_map_equal<CI::Node *,std::__hash_value_type<CI::Node *,int>,std::equal_to<CI::Node *>,std::hash<CI::Node *>,true>,std::allocator<std::__hash_value_type<CI::Node *,int>>>::__emplace_unique_key_args<CI::Node *,std::piecewise_construct_t const&,std::tuple<CI::Node * const&>,std::tuple<>>(void *a1, void *a2)
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

uint64_t CI::ProviderNode::FormatConversion(uint64_t result)
{
  if ((result - 1799) >= 2)
  {
    return result;
  }

  else
  {
    return 2056;
  }
}

void CI::ProviderNode::ProviderNode(CI::Node *a1)
{
  CI::Node::Node(a1);
}

{
  CI::ProviderNode::ProviderNode(a1);
}

CFStringRef CI::makeCacheID(CI *this, uint64_t a2, dispatch_queue_s *a3)
{
  if (this)
  {
    v3 = CFStringCreateWithFormat(0, 0, @"ProvAssembled %llu", this);
  }

  else if (a3)
  {
    v3 = CFStringCreateWithFormat(0, 0, @"ProvAssembled %p frame %llu", a2, a3);
  }

  else
  {
    v3 = CFStringCreateWithFormat(0, 0, @"ProvAssembled %p", a2);
  }

  v4 = v3;
  CFAutorelease(v3);
  return v4;
}

void CI::ProviderNode::~ProviderNode(CI::ProviderNode *this)
{
  *this = &unk_1F103B3F8;
  *(this + 5) = &unk_1F103B5D8;
  v2 = (this + 56);
  *(this + 7) = &unk_1F103B600;
  CI::ProviderNode::release_resources(this);
  v3 = *(this + 20);
  if (v3)
  {
    *(this + 21) = v3;
    operator delete(v3);
  }

  CI::Tileable::~Tileable(v2);
  *(this + 5) = &unk_1F103B630;
  atomic_fetch_add(&dword_1ED7C47BC[50], 0xFFFFFFFF);

  CI::Node::~Node(this);
}

{
  CI::ProviderNode::~ProviderNode(this);

  JUMPOUT(0x19EAF5590);
}

void non-virtual thunk toCI::ProviderNode::~ProviderNode(CI::ProviderNode *this)
{
  CI::ProviderNode::~ProviderNode((this - 40));
}

{
  CI::ProviderNode::~ProviderNode((this - 40));

  JUMPOUT(0x19EAF5590);
}

CFStringRef CI::ProviderNode::cacheIdentity(CI::ProviderNode *this, dispatch_queue_s *a2)
{
  if (*(this + 195) == 1 && *(this + 11))
  {
    return *(this + 11);
  }

  else
  {
    return CI::makeCacheID(*(this + 12), *(this + 15), a2);
  }
}

CFStringRef non-virtual thunk toCI::ProviderNode::cacheIdentity(CI::ProviderNode *this, dispatch_queue_s *a2)
{
  if (*(this + 139) == 1 && *(this + 4))
  {
    return *(this + 4);
  }

  else
  {
    return CI::makeCacheID(*(this + 5), *(this + 8), a2);
  }
}

void CI::ProviderNode::release_resources(CI::ProviderNode *this)
{
  v2 = *(this + 14);
  if (v2)
  {
    _Block_release(v2);
  }

  *(this + 14) = 0;
  v3 = *(this + 13);
  if (v3)
  {
    CFRelease(v3);
  }

  *(this + 13) = 0;
  v4 = *(this + 15);
  if (v4)
  {
    dispatch_release(v4);
  }

  *(this + 15) = 0;
  v5 = *(this + 11);
  if (v5)
  {
    CFRelease(v5);
  }

  *(this + 11) = 0;
}

void CI::ProviderNode::set_provider(uint64_t a1, int a2, CI *a3, void *aBlock, NSObject *a5)
{
  *(a1 + 196) = a2;
  *(a1 + 96) = a3;
  v9 = *(a1 + 112);
  if (v9)
  {
    _Block_release(v9);
  }

  *(a1 + 112) = _Block_copy(aBlock);
  dispatch_retain(a5);
  v10 = *(a1 + 120);
  if (v10)
  {
    dispatch_release(v10);
  }

  *(a1 + 120) = a5;
  if (*(a1 + 195) == 1)
  {
    CacheID = CI::makeCacheID(a3, a5, 0);

    CI::Tileable::updateCacheIdentity((a1 + 56), CacheID);
  }
}

double CI::ProviderNode::find_matching_roi(CI::ProviderNode *this, const CGRect *a2)
{
  v4 = CI::Node::rois(this);
  x = a2->origin.x;
  y = a2->origin.y;
  width = a2->size.width;
  height = a2->size.height;
  v16.origin.x = (*(*this + 176))(this);
  v16.origin.y = v9;
  v16.size.width = v10;
  v16.size.height = v11;
  v14.origin.x = x;
  v14.origin.y = y;
  v14.size.width = width;
  v14.size.height = height;
  v15 = CGRectIntersection(v14, v16);

  return CI::SerialRectArray::smallestContainingRect(v4, v15);
}

unint64_t CI::ProviderNode::roiAlignment(CI::ProviderNode *this)
{
  if (*(this + 200))
  {
    v2 = 4;
  }

  else if (CI::Tileable::widestTile((this + 56)) >= 0x10)
  {
    if (CI::Tileable::widestTile((this + 56)) <= 0x200)
    {
      v2 = CI::Tileable::widestTile((this + 56));
    }

    else
    {
      v2 = 512;
    }
  }

  else
  {
    v2 = 16;
  }

  if ((*(this + 200) & 1) == 0 && CI::Tileable::tallestTile((this + 56)) >= 0x10 && CI::Tileable::tallestTile((this + 56)) <= 0x200)
  {
    CI::Tileable::tallestTile((this + 56));
  }

  return v2;
}

unint64_t CI::Tileable::widestTile(CI::Tileable *this)
{
  v7 = 0;
  v8 = 0;
  v9 = 0;
  std::vector<std::vector<IRect>>::__init_with_size[abi:nn200100]<std::vector<IRect>*,std::vector<IRect>*>(&v7, *(this + 1), *(this + 2), 0xAAAAAAAAAAAAAAABLL * ((*(this + 2) - *(this + 1)) >> 3));
  v1 = v7;
  v2 = 0;
  if (v8 != v7)
  {
    v3 = 0xAAAAAAAAAAAAAAABLL * (v8 - v7);
    if (v3 <= 1)
    {
      v3 = 1;
    }

    do
    {
      v4 = *v1;
      v1 += 3;
      v5 = *(v4 + 8);
      if (v5 > v2)
      {
        v2 = v5;
      }

      --v3;
    }

    while (v3);
  }

  v10 = &v7;
  std::vector<std::vector<IRect>>::__destroy_vector::operator()[abi:nn200100](&v10);
  return v2;
}

unint64_t CI::Tileable::tallestTile(CI::Tileable *this)
{
  memset(v8, 0, sizeof(v8));
  std::vector<std::vector<IRect>>::__init_with_size[abi:nn200100]<std::vector<IRect>*,std::vector<IRect>*>(v8, *(this + 1), *(this + 2), 0xAAAAAAAAAAAAAAABLL * ((*(this + 2) - *(this + 1)) >> 3));
  v1 = *(v8[0] + 8);
  v2 = 0;
  if (v1 != *v8[0])
  {
    v3 = 0xAAAAAAAAAAAAAAABLL * ((v1 - *v8[0]) >> 3);
    if (v3 <= 1)
    {
      v3 = 1;
    }

    v4 = (*v8[0] + 16);
    do
    {
      v6 = *v4;
      v4 += 3;
      v5 = v6;
      if (v6 > v2)
      {
        v2 = v5;
      }

      --v3;
    }

    while (v3);
  }

  v9 = v8;
  std::vector<std::vector<IRect>>::__destroy_vector::operator()[abi:nn200100](&v9);
  return v2;
}

void CI::ProviderNode::add_roi(CI::ProviderNode *this, unint64_t a2, unint64_t a3, CGRect a4, const CI::parentROI *a5)
{
  height = a4.size.height;
  width = a4.size.width;
  y = a4.origin.y;
  x = a4.origin.x;
  if (CGRectIsEmpty(a4))
  {
    v13 = this;
    v14 = a2;
    v15 = a3;
    v16 = x;
    v17 = y;
    v18 = width;
    v19 = height;
    goto LABEL_93;
  }

  v21 = *(this + 17);
  v20 = *(this + 18);
  v50.origin.x = x;
  v50.origin.y = y;
  v50.size.width = width;
  v50.size.height = height;
  if (CGRectIsNull(v50))
  {
    v22 = 0;
    v23 = 0;
    v24 = 0x7FFFFFFF;
    v25 = 0x7FFFFFFF;
  }

  else
  {
    v51.origin.x = x;
    v51.origin.y = y;
    v51.size.width = width;
    v51.size.height = height;
    if (CGRectIsInfinite(v51))
    {
      v24 = -2147483647;
      v22 = 0xFFFFFFFFLL;
      v23 = 0xFFFFFFFFLL;
      v25 = -2147483647;
    }

    else
    {
      v52.origin.x = x;
      v52.origin.y = y;
      v52.size.width = width;
      v52.size.height = height;
      v53 = CGRectInset(v52, 0.000001, 0.000001);
      v54 = CGRectIntegral(v53);
      v25 = v54.origin.x;
      v24 = v54.origin.y;
      v23 = v54.size.width;
      v22 = v54.size.height;
    }
  }

  if (*(this + 47) != 1)
  {
    goto LABEL_19;
  }

  if (v25 != -2147483647)
  {
    v26 = 0x7FFFFFFF;
    if (v25 == 0x7FFFFFFF)
    {
      if (v24 == 0x7FFFFFFF && !v23 && !v22)
      {
        v27 = 0;
        v28 = 0;
        v29 = 0x7FFFFFFF;
        goto LABEL_49;
      }
    }

    else if (v25 < 0)
    {
      goto LABEL_20;
    }

    if (v25 + v23 <= v21 && (v24 & 0x80000000) == 0 && v24 + v22 <= v20)
    {
LABEL_19:
      v27 = v22;
      v28 = v23;
      v26 = v24;
      v29 = v25;
      goto LABEL_49;
    }
  }

LABEL_20:
  if (v25 == 0x7FFFFFFF && v24 == 0x7FFFFFFF && !v23 && !v22)
  {
    goto LABEL_24;
  }

  if (v25 == -2147483647 && v24 == -2147483647 && v23 == 0xFFFFFFFF && v22 == 0xFFFFFFFF)
  {
    v26 = 0;
    v29 = 0;
    v27 = v20;
    v28 = v21;
    if (!v21)
    {
      goto LABEL_24;
    }
  }

  else
  {
    v29 = v25 & ~(v25 >> 31);
    v40 = v25 + v23;
    if (v21 < v25 + v23)
    {
      v40 = v21;
    }

    v39 = __OFSUB__(v40, v29);
    v41 = v40 - v29;
    if (v41 < 0 != v39)
    {
      goto LABEL_24;
    }

    v26 = v24 & ~(v24 >> 31);
    v42 = v24 + v22;
    if (v20 < v24 + v22)
    {
      v42 = v20;
    }

    v39 = __OFSUB__(v42, v26);
    v43 = v42 - v26;
    if (v43 < 0 != v39)
    {
      goto LABEL_24;
    }

    v28 = v41;
    v27 = v43;
    if (!v41)
    {
      goto LABEL_24;
    }
  }

  if (v27)
  {
    goto LABEL_49;
  }

LABEL_24:
  v30 = v25 + v23;
  if (v30 < 0)
  {
    v29 = 0;
    goto LABEL_35;
  }

  if (v25 > v21)
  {
    v29 = v21 - 1;
LABEL_35:
    v28 = 1;
    goto LABEL_40;
  }

  v29 = v25 & ~(v25 >> 31);
  if (v30 >= v21)
  {
    v31 = v21;
  }

  else
  {
    v31 = v30;
  }

  v28 = v31 - v29;
LABEL_40:
  v32 = v24 + v22;
  if (v32 < 0)
  {
    v26 = 0;
    goto LABEL_44;
  }

  if (v24 > v20)
  {
    v26 = v20 - 1;
LABEL_44:
    v27 = 1;
    goto LABEL_49;
  }

  v26 = v24 & ~(v24 >> 31);
  if (v32 >= v20)
  {
    v33 = v20;
  }

  else
  {
    v33 = v32;
  }

  v27 = v33 - v26;
LABEL_49:
  if (CI::format_is_ycc_biplanar(*(this + 38)))
  {
    goto LABEL_50;
  }

  v34 = 0x7FFFFFFF;
  if (v29 == 0x7FFFFFFF && v26 == 0x7FFFFFFF && !v28 && !v27)
  {
    v35 = 0;
    v36 = 0;
LABEL_56:
    v37 = 0x7FFFFFFF;
    goto LABEL_83;
  }

  if (v29 == -2147483647 && v26 == -2147483647 && v28 == 0xFFFFFFFFLL && v27 == 0xFFFFFFFFLL)
  {
    v34 = 0;
    v37 = 0;
    v35 = v21;
    v36 = v20;
    goto LABEL_83;
  }

  v34 = v29 & ~(v29 >> 31);
  v38 = v29 + v28;
  if (v21 < v29 + v28)
  {
    v38 = v21;
  }

  v39 = __OFSUB__(v38, v34);
  LODWORD(v35) = v38 - v34;
  if (((v35 & 0x80000000) != 0) != v39)
  {
    v35 = 0;
    v36 = 0;
    v34 = 0x7FFFFFFF;
    goto LABEL_56;
  }

  v44 = v26 & ~(v26 >> 31);
  v45 = v26 + v27;
  if (v20 < v26 + v27)
  {
    v45 = v20;
  }

  v35 = v35;
  v39 = __OFSUB__(v45, v44);
  v47 = v45 - v44;
  v46 = (v47 < 0) ^ v39;
  v48 = v47;
  if (v46)
  {
    v34 = 0x7FFFFFFF;
    v37 = 0x7FFFFFFF;
  }

  else
  {
    v37 = v26 & ~(v26 >> 31);
  }

  if (v46)
  {
    v35 = 0;
    v36 = 0;
  }

  else
  {
    v36 = v48;
  }

LABEL_83:
  if (v21 > 0x1000 || v20 > 0x1000 || 3 * v21 * v20 > 4 * v35 * v36)
  {
    if (v34 != 0x7FFFFFFF || v37 != 0x7FFFFFFF || v35 || v36)
    {
      v16 = v34;
      v17 = v37;
      v18 = v35;
      v19 = v36;
    }

    else
    {
      v16 = *MEMORY[0x1E695F050];
      v17 = *(MEMORY[0x1E695F050] + 8);
      v18 = *(MEMORY[0x1E695F050] + 16);
      v19 = *(MEMORY[0x1E695F050] + 24);
    }

    goto LABEL_92;
  }

LABEL_50:
  v18 = v21;
  v19 = v20;
  v16 = 0.0;
  v17 = 0.0;
LABEL_92:
  v13 = this;
  v14 = a2;
  v15 = a3;
LABEL_93:

  CI::Node::add_roi(v13, v14, v15, *&v16, a5);
}

void CI::ProviderNode::tileRect(CI::ProviderNode *this@<X0>, unint64_t a2@<X1>, unint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v46 = *MEMORY[0x1E69E9840];
  v8 = *(this + 8);
  v9 = *(this + 9);
  if (v8 == v9 || 0xAAAAAAAAAAAAAAABLL * (v9 - v8) <= a2 || (v10 = v8[1], *v8 == v10) || 0xAAAAAAAAAAAAAAABLL * ((v10 - *v8) >> 3) <= a3)
  {
    v31 = ci_logger_render();
    if (!os_log_type_enabled(v31, OS_LOG_TYPE_ERROR))
    {
LABEL_34:
      *(a4 + 16) = 0;
      goto LABEL_35;
    }

    v33 = *(this + 8);
    v32 = *(this + 9);
    if (v33 == v32)
    {
      v34 = 0;
    }

    else
    {
      v34 = 0xAAAAAAAAAAAAAAABLL * (v32 - v33);
      v36 = *v33;
      v35 = v33[1];
      if (v36 != v35)
      {
        v37 = 0xAAAAAAAAAAAAAAABLL * ((v35 - v36) >> 3);
        goto LABEL_42;
      }
    }

    v37 = 0;
LABEL_42:
    v38 = 134218752;
    v39 = a2;
    v40 = 2048;
    v41 = a3;
    v42 = 2048;
    v43 = v34;
    v44 = 2048;
    v45 = v37;
    _os_log_error_impl(&dword_19CC36000, v31, OS_LOG_TYPE_ERROR, "Request for a tile outside of expected indexes. Requested tile %zu %zu but only have %zu tiles horizontally and %zu tile vertically", &v38, 0x2Au);
    goto LABEL_34;
  }

  v11 = v8[3 * a2] + 24 * a3;
  v13 = *v11;
  v12 = *(v11 + 4);
  v15 = *(v11 + 8);
  v14 = *(v11 + 16);
  if (v13 == 0x7FFFFFFF && v12 == 0x7FFFFFFF && v15 == 0 && v14 == 0)
  {
LABEL_32:
    *(a4 + 16) = 0;
LABEL_35:
    *a4 = IRectNull;
    return;
  }

  v20 = *(this + 17);
  v19 = *(this + 18);
  if (v13 != -2147483647 || v12 != -2147483647 || v15 != 0xFFFFFFFFLL || v14 != 0xFFFFFFFFLL)
  {
    v24 = v13 & ~(v13 >> 31);
    v25 = v13 + v15;
    if (v25 >= v20)
    {
      v25 = *(this + 17);
    }

    v26 = __OFSUB__(v25, v24);
    v27 = v25 - v24;
    if (v27 < 0 == v26)
    {
      v28 = v12 & ~(v12 >> 31);
      v29 = v12 + v14;
      if (v29 >= v19)
      {
        v29 = *(this + 18);
      }

      v26 = __OFSUB__(v29, v28);
      v30 = v29 - v28;
      if (v30 < 0 == v26)
      {
        *a4 = v24;
        *(a4 + 4) = v28;
        *(a4 + 8) = v27;
        *(a4 + 16) = v30;
        return;
      }
    }

    goto LABEL_32;
  }

  *a4 = 0;
  *(a4 + 8) = v20;
  *(a4 + 16) = v19;
}

uint64_t CI::ProviderNode::tileSurface(CI::ProviderNode *this, uint64_t a2, uint64_t a3, unint64_t *a4)
{
  if (*(this + 12))
  {
    v8 = CFStringCreateWithFormat(0, 0, @"ProvTile %llu", *(this + 12));
  }

  else
  {
    v8 = @"ProvTile";
  }

  v22 = 0uLL;
  v23 = 0;
  (*(*this + 440))(&v22, this, a2, a3);
  v9 = v19;
  v19[0] = MEMORY[0x1E69E9820];
  v19[1] = 0x40000000;
  v19[2] = ___ZNK2CI12ProviderNode11tileSurfaceEmmRy_block_invoke;
  v19[3] = &__block_descriptor_tmp_6_3;
  v19[4] = this;
  v19[5] = a4;
  v20 = v22;
  v21 = v23;
  if (*(this + 16))
  {
    v9 = v16;
    v16[0] = MEMORY[0x1E69E9820];
    v16[1] = 0x40000000;
    v16[2] = ___ZNK2CI12ProviderNode11tileSurfaceEmmRy_block_invoke_3;
    v16[3] = &__block_descriptor_tmp_7_7;
    v16[4] = this;
    v17 = v22;
    v18 = v23;
  }

  v14 = v22;
  v15 = v23;
  v10 = (*(*this + 448))(this);
  if (*(this + 12))
  {
    v11 = 0;
  }

  else
  {
    v11 = *(this + 49);
  }

  SurfaceFromCacheAndFill = GetSurfaceFromCacheAndFill(&v14, v10, 0, v11, v8, *(this + 15), v9);
  CFRelease(v8);
  return SurfaceFromCacheAndFill;
}

uint64_t ___ZNK2CI12ProviderNode11tileSurfaceEmmRy_block_invoke(uint64_t a1, __IOSurface *a2)
{
  v2 = *(a1 + 32);
  **(a1 + 40) = *(a1 + 64) * *(a1 + 56);
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 0x40000000;
  v4[2] = ___ZNK2CI12ProviderNode11tileSurfaceEmmRy_block_invoke_2;
  v4[3] = &__block_descriptor_tmp_27;
  v4[4] = v2;
  v5 = *(a1 + 48);
  v6 = *(a1 + 64);
  return SurfaceApplyPlaneBlock(a2, v4);
}

uint64_t ___ZNK2CI12ProviderNode11tileSurfaceEmmRy_block_invoke_2(void *a1, char *a2, uint64_t a3, uint64_t a4, uint64_t a5, size_t a6)
{
  v9 = a1[4];
  if ((*(v9 + 157) & 1) != 0 || (v10 = a2, *(v9 + 158) == 1))
  {
    v10 = &a2[2 * a4];
  }

  result = (*(*(v9 + 112) + 16))();
  if ((*(v9 + 157) & 1) != 0 || *(v9 + 158) == 1)
  {
    v13 = a1[6];
    v12 = a1[7];
    rgbSrc.data = v10;
    rgbSrc.height = v12;
    rgbSrc.width = v13;
    rgbSrc.rowBytes = a6;
    v16.data = a2;
    v16.height = v12;
    v16.width = v13;
    v16.rowBytes = a6;
    result = vImageConvert_RGB16UtoRGBA16U(&rgbSrc, 0, 0xFFFFu, &v16, 0, 0);
  }

  if ((*(v9 + 156) & 1) != 0 || *(v9 + 157) == 1)
  {
    v15 = a1[6];
    v14 = a1[7];
    rgbSrc.data = a2;
    rgbSrc.height = v14;
    rgbSrc.width = 4 * v15;
    rgbSrc.rowBytes = a6;
    v16.data = a2;
    v16.height = v14;
    v16.width = 4 * v15;
    v16.rowBytes = a6;
    return vImageConvert_16Uto16F(&rgbSrc, &v16, 0);
  }

  return result;
}

uint64_t CI::ProviderNode::surfaceForROI(uint64_t a1, void *a2, CGFloat *a3, uint64_t a4)
{
  v79 = *MEMORY[0x1E69E9840];
  if (CI_VERBOSE_SIGNPOSTS())
  {
    v8 = ci_signpost_log_render();
    v9 = *(a1 + 36) | ((*(*a2 + 280))(a2) << 32);
    if (v9 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v8))
    {
      v10 = *a3;
      v11 = *(a3 + 1);
      v12 = *(a3 + 2);
      v13 = *(a3 + 3);
      *buf = 134218752;
      *v74 = v10;
      *&v74[8] = 2048;
      *&v74[10] = v11;
      v75 = 2048;
      v76 = v12;
      v77 = 2048;
      v78 = v13;
      _os_signpost_emit_with_name_impl(&dword_19CC36000, v8, OS_SIGNPOST_INTERVAL_BEGIN, v9, "surface_for_roi_from_prov", "[%g %g %g %g]", buf, 0x2Au);
    }
  }

  v14 = (*(*a2 + 280))(a2);
  TimerBase::TimerBase(buf, v14, *(a1 + 36), "surface_for_roi_from_prov", 23);
  v15 = *(a1 + 136);
  v16 = *(a1 + 144);
  v17 = *a3;
  v18 = a3[1];
  v19 = a3[2];
  v20 = a3[3];
  v80.origin.x = *a3;
  v80.origin.y = v18;
  v80.size.width = v19;
  v80.size.height = v20;
  if (CGRectIsNull(v80))
  {
    width = 0;
    height = 0;
    v23 = 0;
    v24 = 0x7FFFFFFF;
    v25 = 0x7FFFFFFF;
  }

  else
  {
    v81.origin.x = v17;
    v81.origin.y = v18;
    v81.size.width = v19;
    v81.size.height = v20;
    if (CGRectIsInfinite(v81))
    {
      v23 = 0;
      v24 = -2147483647;
      width = 0xFFFFFFFFLL;
      v25 = -2147483647;
      height = 0xFFFFFFFFLL;
    }

    else
    {
      v82.origin.x = v17;
      v82.origin.y = v18;
      v82.size.width = v19;
      v82.size.height = v20;
      v83 = CGRectInset(v82, 0.000001, 0.000001);
      v84 = CGRectIntegral(v83);
      x = v84.origin.x;
      y = v84.origin.y;
      width = v84.size.width;
      height = v84.size.height;
      v29 = v15 == v84.size.width && v16 == height;
      if (y)
      {
        v30 = v84.origin.y;
      }

      else
      {
        v30 = 0;
      }

      if (y)
      {
        v29 = 0;
      }

      if (x)
      {
        v24 = v84.origin.x;
      }

      else
      {
        v24 = 0;
      }

      if (x)
      {
        v25 = v84.origin.y;
      }

      else
      {
        v25 = v30;
      }

      if (x)
      {
        v23 = 0;
      }

      else
      {
        v23 = v29;
      }
    }
  }

  v31 = CI::PixelFormatType_from_format(*(a1 + 48));
  v32 = *(a1 + 196);
  v33 = *(a1 + 96);
  v34 = *(a1 + 64);
  v35 = *(a1 + 72);
  if (v34 == v35 || 0xAAAAAAAAAAAAAAABLL * (v35 - v34) <= 1 && ((v37 = *v34, v36 = v34[1], v37 == v36) || 0xAAAAAAAAAAAAAAABLL * ((v36 - v37) >> 3) < 2))
  {
    if (v23)
    {
      v38 = v63;
      v63[0] = MEMORY[0x1E69E9820];
      v63[1] = 0x40000000;
      v63[2] = ___ZNK2CI12ProviderNode13surfaceForROIEPKNS_7ContextERK6CGRectRNS_8Tileable5StatsE_block_invoke_3;
      v63[3] = &__block_descriptor_tmp_11_5;
      v63[4] = a1;
      v64 = v24;
      v65 = v25;
      v66 = width;
      v67 = height;
    }

    else
    {
      v38 = v62;
      v62[0] = MEMORY[0x1E69E9820];
      v62[1] = 0x40000000;
      v62[2] = ___ZNK2CI12ProviderNode13surfaceForROIEPKNS_7ContextERK6CGRectRNS_8Tileable5StatsE_block_invoke_5;
      v62[3] = &__block_descriptor_tmp_13_3;
      v62[4] = a1;
      v62[5] = v24;
      v62[6] = v25;
    }
  }

  else
  {
    v38 = v68;
    v68[0] = MEMORY[0x1E69E9820];
    v68[1] = 0x40000000;
    v68[2] = ___ZNK2CI12ProviderNode13surfaceForROIEPKNS_7ContextERK6CGRectRNS_8Tileable5StatsE_block_invoke;
    v68[3] = &__block_descriptor_tmp_9_2;
    v68[4] = a1;
    v69 = v24;
    v70 = v25;
    v71 = width;
    v72 = height;
  }

  if (*(a1 + 128))
  {
    v38 = v61;
    v61[0] = MEMORY[0x1E69E9820];
    v61[1] = 0x40000000;
    v61[2] = ___ZNK2CI12ProviderNode13surfaceForROIEPKNS_7ContextERK6CGRectRNS_8Tileable5StatsE_block_invoke_14;
    v61[3] = &__block_descriptor_tmp_15_5;
    v61[4] = a1;
    v61[5] = a3;
  }

  if (v33)
  {
    v39 = 0;
  }

  else
  {
    v39 = v32;
  }

  Current = CFAbsoluteTimeGetCurrent();
  *&v59 = __PAIR64__(v25, v24);
  *(&v59 + 1) = width;
  v60 = height;
  v41 = (*(*a1 + 456))(a1, a2[19]);
  SurfaceFromCacheAndFill = GetSurfaceFromCacheAndFill(&v59, v31, 0, v39, v41, *(a1 + 120), v38);
  *a4 = *a4 + CFAbsoluteTimeGetCurrent() - Current;
  *(a4 + 8) += height * width;
  v44 = *(a1 + 168);
  v43 = *(a1 + 176);
  if (v44 >= v43)
  {
    v46 = *(a1 + 160);
    v47 = (v44 - v46) >> 3;
    if ((v47 + 1) >> 61)
    {
      std::vector<CI::SWRendererFunctionInputNode>::__throw_length_error[abi:nn200100]();
    }

    v48 = v43 - v46;
    v49 = v48 >> 2;
    if (v48 >> 2 <= (v47 + 1))
    {
      v49 = v47 + 1;
    }

    if (v48 >= 0x7FFFFFFFFFFFFFF8)
    {
      v50 = 0x1FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v50 = v49;
    }

    if (v50)
    {
      std::__allocate_at_least[abi:nn200100]<std::allocator<Queue *>>(a1 + 160, v50);
    }

    *(8 * v47) = SurfaceFromCacheAndFill;
    v45 = 8 * v47 + 8;
    v51 = *(a1 + 160);
    v52 = *(a1 + 168) - v51;
    v53 = (8 * v47 - v52);
    memcpy(v53, v51, v52);
    v54 = *(a1 + 160);
    *(a1 + 160) = v53;
    *(a1 + 168) = v45;
    *(a1 + 176) = 0;
    if (v54)
    {
      operator delete(v54);
    }
  }

  else
  {
    *v44 = SurfaceFromCacheAndFill;
    v45 = (v44 + 1);
  }

  *(a1 + 168) = v45;
  if (CI_VERBOSE_SIGNPOSTS())
  {
    v55 = ci_signpost_log_render();
    v56 = *&v74[4];
    if ((*&v74[4] - 1) <= 0xFFFFFFFFFFFFFFFDLL)
    {
      v57 = v55;
      if (os_signpost_enabled(v55))
      {
        LOWORD(v59) = 0;
        _os_signpost_emit_with_name_impl(&dword_19CC36000, v57, OS_SIGNPOST_INTERVAL_END, v56, "surface_for_roi_from_prov", &unk_19CFBCBAE, &v59, 2u);
      }
    }
  }

  TimerBase::~TimerBase(buf);
  return SurfaceFromCacheAndFill;
}

uint64_t ___ZNK2CI12ProviderNode13surfaceForROIEPKNS_7ContextERK6CGRectRNS_8Tileable5StatsE_block_invoke(uint64_t a1, __IOSurface *a2)
{
  v2 = *(a1 + 32);
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 0x40000000;
  v4[2] = ___ZNK2CI12ProviderNode13surfaceForROIEPKNS_7ContextERK6CGRectRNS_8Tileable5StatsE_block_invoke_2;
  v4[3] = &__block_descriptor_tmp_8_3;
  v4[4] = v2;
  v5 = *(a1 + 40);
  v6 = *(a1 + 56);
  return SurfaceApplyPlaneBlock(a2, v4);
}

void ___ZNK2CI12ProviderNode13surfaceForROIEPKNS_7ContextERK6CGRectRNS_8Tileable5StatsE_block_invoke_2(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v8 = *(a1 + 32);
  if ((*(v8 + 157) & 1) != 0 || *(v8 + 158) == 1)
  {
    v9 = *(v8 + 48);
    v10 = CI::Tileable::widestTile((v8 + 56));
    v11 = CI::format_bytes_per_row(v9, v10);
    v12 = CI::format_bytes_per_pixel(*(v8 + 48));
    v13 = CI::Tileable::tallestTile((v8 + 56));
    v14 = malloc_type_malloc(v13 * v11, 0x45F8D4D1uLL);
    v42 = &v14[2 * CI::Tileable::widestTile((v8 + 56))];
    v43 = v14;
  }

  else
  {
    v15 = *(v8 + 152);
    v16 = CI::Tileable::widestTile((v8 + 56));
    v11 = CI::format_bytes_per_row(v15, v16);
    v12 = CI::format_bytes_per_pixel(*(v8 + 152));
    v17 = CI::Tileable::tallestTile((v8 + 56));
    v42 = malloc_type_malloc(v17 * v11, 0xF29B491DuLL);
    v43 = v42;
  }

  v44 = 0;
  v40 = v12;
  v18 = *(v8 + 64);
  v19 = *(v8 + 72);
LABEL_6:
  if (v18 == v19)
  {
    v21 = 0;
  }

  else
  {
    v20 = v18[1];
    if (*v18 == v20)
    {
      v21 = 0;
    }

    else
    {
      v21 = 0xAAAAAAAAAAAAAAABLL * ((v20 - *v18) >> 3);
    }
  }

  if (v44 < v21)
  {
    for (i = 0; ; ++i)
    {
      v23 = 0xAAAAAAAAAAAAAAABLL * (v19 - v18);
      if (v18 == v19)
      {
        v23 = 0;
      }

      if (i >= v23)
      {
        ++v44;
        goto LABEL_6;
      }

      v47 = 0;
      v48 = 0;
      v49 = 0;
      (*(*v8 + 440))(&v47, v8, i, v44);
      v25 = *(a1 + 40);
      v24 = *(a1 + 44);
      v26 = *(a1 + 48);
      v27 = *(a1 + 56);
      if ((v47 != 0x7FFFFFFF7FFFFFFFLL || v48 || v49) && (v25 != 0x7FFFFFFF || v24 != 0x7FFFFFFF || v26 || v27))
      {
        if (v47 == 0x8000000180000001 && v48 == 0xFFFFFFFF && v49 == 0xFFFFFFFF)
        {
          goto LABEL_31;
        }

        if (v25 == -2147483647 && v24 == -2147483647 && v26 == 0xFFFFFFFF && v27 == 0xFFFFFFFF)
        {
          v27 = v49;
          v26 = v48;
          v24 = HIDWORD(v47);
          v25 = v47;
LABEL_31:
          if (!v26)
          {
            goto LABEL_55;
          }

LABEL_32:
          if (v27)
          {
            (*(*(v8 + 112) + 16))();
            if ((*(v8 + 157) & 1) != 0 || *(v8 + 158) == 1)
            {
              rgbSrc.data = v42;
              rgbSrc.height = v49;
              rgbSrc.width = v48;
              rgbSrc.rowBytes = v11;
              rgbaDest.data = v43;
              rgbaDest.height = v49;
              rgbaDest.width = v48;
              rgbaDest.rowBytes = v11;
              vImageConvert_RGB16UtoRGBA16U(&rgbSrc, 0, 0xFFFFu, &rgbaDest, 0, 0);
            }

            if ((*(v8 + 156) & 1) != 0 || *(v8 + 157) == 1)
            {
              rgbSrc.data = v43;
              rgbSrc.height = v49;
              rgbSrc.width = 4 * v48;
              rgbSrc.rowBytes = v11;
              rgbaDest.data = v43;
              rgbaDest.height = v49;
              rgbaDest.width = 4 * v48;
              rgbaDest.rowBytes = v11;
              vImageConvert_16Uto16F(&rgbSrc, &rgbaDest, 0);
            }

            v28 = v25 - *(a1 + 40);
            v29 = v25 - v47;
            v30 = v26 * v40;
            v31 = (a2 + a6 * (v24 - *(a1 + 44)) + v40 * v28);
            v32 = &v43[v11 * (v24 - HIDWORD(v47)) + v40 * v29];
            do
            {
              memmove(v31, v32, v30);
              v31 += a6;
              v32 += v11;
              --v27;
            }

            while (v27);
          }

          goto LABEL_55;
        }

        if (v47 <= v25)
        {
          v33 = *(a1 + 40);
        }

        else
        {
          v33 = v47;
        }

        v34 = v47 + v48;
        if (v47 + v48 >= v25 + v26)
        {
          v34 = v25 + v26;
        }

        v35 = v34 - v33;
        if (v34 >= v33)
        {
          if (SHIDWORD(v47) <= v24)
          {
            v36 = *(a1 + 44);
          }

          else
          {
            v36 = HIDWORD(v47);
          }

          v37 = HIDWORD(v47) + v49;
          if (HIDWORD(v47) + v49 >= v24 + v27)
          {
            v37 = v24 + v27;
          }

          v38 = __OFSUB__(v37, v36);
          v39 = v37 - v36;
          if (v39 < 0 == v38)
          {
            v26 = v35;
            v27 = v39;
            v24 = v36;
            v25 = v33;
            if (v35)
            {
              goto LABEL_32;
            }
          }
        }
      }

LABEL_55:
      v18 = *(v8 + 64);
      v19 = *(v8 + 72);
    }
  }

  free(v43);
}

uint64_t ___ZNK2CI12ProviderNode13surfaceForROIEPKNS_7ContextERK6CGRectRNS_8Tileable5StatsE_block_invoke_3(uint64_t a1, __IOSurface *a2)
{
  v2 = *(a1 + 32);
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 0x40000000;
  v4[2] = ___ZNK2CI12ProviderNode13surfaceForROIEPKNS_7ContextERK6CGRectRNS_8Tileable5StatsE_block_invoke_4;
  v4[3] = &__block_descriptor_tmp_10_1;
  v4[4] = v2;
  v5 = *(a1 + 40);
  v6 = *(a1 + 56);
  return SurfaceApplyPlaneBlock(a2, v4);
}

uint64_t ___ZNK2CI12ProviderNode13surfaceForROIEPKNS_7ContextERK6CGRectRNS_8Tileable5StatsE_block_invoke_4(uint64_t a1, char *a2, uint64_t a3, vImagePixelCount a4, vImagePixelCount a5, size_t a6)
{
  v9 = *(a1 + 32);
  if ((*(v9 + 157) & 1) != 0 || (v10 = a2, *(v9 + 158) == 1))
  {
    v10 = &a2[2 * a4];
  }

  if (a3 == 1 && !CI::format_is_ycc_422(*(v9 + 152)) && (CI::format_is_ycc_444(*(v9 + 152)) & 1) == 0)
  {
    CI::format_is_rgb_biplanar(*(v9 + 152));
  }

  result = (*(*(v9 + 112) + 16))();
  if ((*(v9 + 157) & 1) != 0 || *(v9 + 158) == 1)
  {
    rgbSrc.data = v10;
    rgbSrc.height = a5;
    rgbSrc.width = a4;
    rgbSrc.rowBytes = a6;
    rgbaDest.data = a2;
    rgbaDest.height = a5;
    rgbaDest.width = a4;
    rgbaDest.rowBytes = a6;
    result = vImageConvert_RGB16UtoRGBA16U(&rgbSrc, 0, 0xFFFFu, &rgbaDest, 0, 0);
  }

  if ((*(v9 + 156) & 1) != 0 || *(v9 + 157) == 1)
  {
    rgbSrc.data = a2;
    rgbSrc.height = a5;
    rgbSrc.width = 4 * a4;
    rgbSrc.rowBytes = a6;
    rgbaDest.data = a2;
    rgbaDest.height = a5;
    rgbaDest.width = 4 * a4;
    rgbaDest.rowBytes = a6;
    return vImageConvert_16Uto16F(&rgbSrc, &rgbaDest, 0);
  }

  return result;
}

uint64_t ___ZNK2CI12ProviderNode13surfaceForROIEPKNS_7ContextERK6CGRectRNS_8Tileable5StatsE_block_invoke_5(uint64_t a1, __IOSurface *a2)
{
  v2 = *(a1 + 32);
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 0x40000000;
  v4[2] = ___ZNK2CI12ProviderNode13surfaceForROIEPKNS_7ContextERK6CGRectRNS_8Tileable5StatsE_block_invoke_6;
  v4[3] = &__block_descriptor_tmp_12_2;
  v4[4] = v2;
  v5 = *(a1 + 40);
  return SurfaceApplyPlaneBlock(a2, v4);
}

void ___ZNK2CI12ProviderNode13surfaceForROIEPKNS_7ContextERK6CGRectRNS_8Tileable5StatsE_block_invoke_6(void *a1, char *a2, int a3, vImagePixelCount a4, vImagePixelCount a5, size_t a6)
{
  v11 = a1[4];
  v12 = CI::format_bytes_for_width_of_plane(*(v11 + 152), *(v11 + 136), a3);
  v13 = CI::format_bytes_for_width_of_plane(*(v11 + 152), a1[5], a3);
  v21 = CI::format_bytes_for_width_of_plane(*(v11 + 152), a1[5] + a4, a3);
  v14 = a1[6];
  v15 = malloc_type_malloc(*(v11 + 144) * v12, 0xC6B0C919uLL);
  if (!v15)
  {
    ___ZNK2CI12ProviderNode13surfaceForROIEPKNS_7ContextERK6CGRectRNS_8Tileable5StatsE_block_invoke_6_cold_1((v11 + 152), v12, a3);
  }

  v16 = v15;
  v17 = &v15[v14 * v12 + v13];
  (*(*(v11 + 112) + 16))();
  if ((*(v11 + 157) & 1) != 0 || *(v11 + 158) == 1)
  {
    rgbSrc.data = v17;
    rgbSrc.height = a5;
    rgbSrc.width = a4;
    rgbSrc.rowBytes = v12;
    rgbaDest.data = a2;
    rgbaDest.height = a5;
    rgbaDest.width = a4;
    rgbaDest.rowBytes = a6;
    vImageConvert_RGB16UtoRGBA16U(&rgbSrc, 0, 0xFFFFu, &rgbaDest, 0, 0);
  }

  else if (a5)
  {
    v18 = v21 - v13;
    v19 = a5;
    v20 = a2;
    do
    {
      memmove(v20, v17, v18);
      v20 += a6;
      v17 += v12;
      --v19;
    }

    while (v19);
  }

  if ((*(v11 + 156) & 1) != 0 || *(v11 + 157) == 1)
  {
    rgbSrc.data = a2;
    rgbSrc.height = a5;
    rgbSrc.width = 4 * a4;
    rgbSrc.rowBytes = a6;
    rgbaDest.data = a2;
    rgbaDest.height = a5;
    rgbaDest.width = 4 * a4;
    rgbaDest.rowBytes = a6;
    vImageConvert_16Uto16F(&rgbSrc, &rgbaDest, 0);
  }

  free(v16);
}

uint64_t CI::ProviderNode::print_for_graph_core(uint64_t a1, FILE *__stream, uint64_t a3, int a4)
{
  v19 = *MEMORY[0x1E69E9840];
  if (a4)
  {
    v6 = 32;
  }

  else
  {
    v6 = 10;
  }

  fwrite("provider", 8uLL, 1uLL, __stream);
  if (*(a1 + 96))
  {
    fprintf(__stream, " content:%016llX");
  }

  else
  {
    fprintf(__stream, " %d");
  }

  v7 = *(a1 + 104);
  if (v7 && CFStringGetCString(v7, buffer, 64, 0x8000100u))
  {
    fprintf(__stream, ":%s", buffer);
  }

  if (*(a1 + 52))
  {
    v8 = "s";
  }

  else
  {
    v8 = "";
  }

  v9 = CI::name_for_format(*(a1 + 152));
  fprintf(__stream, " %s%s", v8, v9);
  result = fprintf(__stream, " %ldx%ld", *(a1 + 136), *(a1 + 144));
  if (*(a1 + 64) != *(a1 + 72))
  {
    if (CI::Tileable::hasVaryingTileSizes((a1 + 56)))
    {
      v11 = "varying with max ";
    }

    else
    {
      v11 = "";
    }

    v12 = CI::Tileable::widestTile((a1 + 56));
    v13 = CI::Tileable::tallestTile((a1 + 56));
    result = fprintf(__stream, "%ctile=%s%zux%zu", v6, v11, v12, v13);
  }

  if (*(a1 + 184) || *(a1 + 188) || (*(a1 + 192) & 1) != 0 || *(a1 + 194) == 1)
  {
    result = fputc(v6, __stream);
    v14 = *(a1 + 184);
    if (v14 <= 1)
    {
      if (!v14)
      {
        goto LABEL_34;
      }

      if (v14 == 1)
      {
        v15 = "alpha_one";
        goto LABEL_33;
      }
    }

    else
    {
      switch(v14)
      {
        case 6:
          v15 = "alpha_unpremul-clear-edges";
          goto LABEL_33;
        case 4:
          v15 = "alpha_premul-clear-edges";
          goto LABEL_33;
        case 2:
          v15 = "alpha_unpremul";
LABEL_33:
          result = fprintf(__stream, " %s", v15);
          goto LABEL_34;
      }
    }

    v15 = "alpha_unknown";
    goto LABEL_33;
  }

LABEL_34:
  v16 = *(a1 + 188);
  if (v16)
  {
    if (v16 == 1)
    {
      v17 = "edge_clamp";
    }

    else
    {
      v17 = "edge_unknown";
    }

    result = fprintf(__stream, " %s", v17);
  }

  if (*(a1 + 192) == 1)
  {
    result = fwrite(" nearestsampling", 0x10uLL, 1uLL, __stream);
  }

  if (*(a1 + 194) == 1)
  {
    return fwrite(" cache", 6uLL, 1uLL, __stream);
  }

  return result;
}

uint64_t CI::Tileable::hasVaryingTileSizes(CI::Tileable *this)
{
  memset(v3, 0, sizeof(v3));
  std::vector<std::vector<IRect>>::__init_with_size[abi:nn200100]<std::vector<IRect>*,std::vector<IRect>*>(v3, *(this + 1), *(this + 2), 0xAAAAAAAAAAAAAAABLL * ((*(this + 2) - *(this + 1)) >> 3));
  HasVaryingTileSizes = CI::Tileable::findHasVaryingTileSizes(v3);
  v4 = v3;
  std::vector<std::vector<IRect>>::__destroy_vector::operator()[abi:nn200100](&v4);
  return HasVaryingTileSizes;
}

uint64_t CI::ProviderNode::add_args_to_hash(CI::ProviderNode *this, CI::XXHashHelper *a2, uint64_t a3)
{
  if (*(this + 12))
  {
    __src = *(this + 12);
LABEL_5:
    XXH64_update(a2, &__src, 8uLL);
    goto LABEL_6;
  }

  __src = *(this + 14);
  XXH64_update(a2, &__src, 8uLL);
  __src = *(this + 15);
  XXH64_update(a2, &__src, 8uLL);
  if ((*(this + 195) & 1) == 0)
  {
    __src = a3;
    goto LABEL_5;
  }

LABEL_6:
  LODWORD(__src) = *(this + 38);
  XXH64_update(a2, &__src, 4uLL);
  LODWORD(__src) = *(this + 46);
  XXH64_update(a2, &__src, 4uLL);
  LODWORD(__src) = *(this + 47);
  XXH64_update(a2, &__src, 4uLL);
  LODWORD(__src) = *(this + 192);
  XXH64_update(a2, &__src, 4uLL);
  LODWORD(__src) = *(this + 52);
  return XXH64_update(a2, &__src, 4uLL);
}

uint64_t CI::ProviderNode::chroma_scale_fix(CI::ProviderNode *this)
{
  result = (*(*this + 216))(this);
  if (result == 2)
  {
    CI::format_is_ycc_444(*(this + 38));
    __asm { FMOV            V1.2S, #1.0 }

    return CI::format_is_ycc_422(*(this + 38));
  }

  else
  {
    __asm { FMOV            V0.2S, #1.0 }
  }

  return result;
}

_DWORD *CI::ProviderNode::extent(_DWORD *this)
{
  if (!this[47])
  {
    return (*(*this + 176))(this);
  }

  return this;
}

uint64_t CI::ProviderNode::plane_count(CI::ProviderNode *this)
{
  if (CI::format_is_ycc_biplanar(*(this + 38)))
  {
    return 2;
  }

  if (CI::format_is_rgb_biplanar(*(this + 38)))
  {
    return 2;
  }

  return 1;
}

uint64_t CI::ProviderNode::may_be_extended_range(CI::ProviderNode *this)
{
  if (*(this + 46))
  {
    v1 = *(this + 193);
  }

  else
  {
    v1 = 1;
  }

  return v1 & 1;
}

uint64_t CI::ProviderNode::output_is_luma(CI::ProviderNode *this)
{
  result = CI::format_is_luminance(*(this + 38));
  if (result)
  {
    v3 = *(*this + 280);

    return v3(this);
  }

  return result;
}

uint64_t CI::ProviderNode::output_depth(CI::ProviderNode *this)
{
  if (CI::format_is_deep(*(this + 38)))
  {
    return 1;
  }

  else
  {
    return 0xFFFFFFFFLL;
  }
}

void *CI::InstanceCounted<(CI::Type)52>::~InstanceCounted(void *result)
{
  *result = &unk_1F103B630;
  atomic_fetch_add(&dword_1ED7C47BC[50], 0xFFFFFFFF);
  return result;
}

void CI::InstanceCounted<(CI::Type)52>::~InstanceCounted(void *a1)
{
  *a1 = &unk_1F103B630;
  atomic_fetch_add(&dword_1ED7C47BC[50], 0xFFFFFFFF);
  JUMPOUT(0x19EAF5590);
}

uint64_t CI::SampleModeNode::append_to_tree(uint64_t a1, uint64_t a2)
{
  if ((*(*a1 + 16))(a1) != 41)
  {
    if ((*(*a1 + 16))(a1) == 34 && CI::Affine::isOrientationWithIntegralTranslation((a1 + 56)))
    {
      v5 = (*(*a1 + 48))(a1, 0);
      CI::SampleModeNode::append_to_tree(v5, a2);
      operator new();
    }

    if ((*(*a1 + 16))(a1) != 53 || (*(*a1 + 424))(a1) != a2)
    {
      operator new();
    }
  }

  return CI::Object::ref(a1);
}

__n64 CI::SampleModeNode::extent(CI::SampleModeNode *this)
{
  (*(**(this + 5) + 168))(*(this + 5));
  v6 = *(this + 14);
  if (v6 == -1)
  {
    v8 = CGRectInset(*result.n64_u64, 0.001, 0.001);
    *result.n64_u64 = CGRectIntegral(v8);
    v6 = *(this + 14);
    if (v6)
    {
      goto LABEL_3;
    }
  }

  else if (v6)
  {
    goto LABEL_3;
  }

  v9 = CGRectInset(*result.n64_u64, 0.001, 0.001);
  *result.n64_u64 = CGRectIntegral(v9);
  v6 = *(this + 14);
LABEL_3:
  if (v6 == 1)
  {
    v7 = CGRectInset(*result.n64_u64, 0.001, 0.001);
    return CGRectIntegral(v7);
  }

  return result;
}

__n64 CI::SampleModeNode::extent_unclamped(CI::SampleModeNode *this)
{
  (*(**(this + 5) + 176))(*(this + 5));
  v6 = *(this + 14);
  if (v6 == -1)
  {
    v8 = CGRectInset(*result.n64_u64, 0.001, 0.001);
    *result.n64_u64 = CGRectIntegral(v8);
    v6 = *(this + 14);
    if (v6)
    {
      goto LABEL_3;
    }
  }

  else if (v6)
  {
    goto LABEL_3;
  }

  v9 = CGRectInset(*result.n64_u64, 0.001, 0.001);
  *result.n64_u64 = CGRectIntegral(v9);
  v6 = *(this + 14);
LABEL_3:
  if (v6 == 1)
  {
    v7 = CGRectInset(*result.n64_u64, 0.001, 0.001);
    return CGRectIntegral(v7);
  }

  return result;
}

CGFloat CI::SampleModeNode::roi_of_child(CI::SampleModeNode *this, CGRect a2)
{
  v2 = *(this + 14);
  if (v2 == 1)
  {
    v3 = -0.499;
    goto LABEL_6;
  }

  if (!v2 || v2 == -1)
  {
    v3 = 0.001;
LABEL_6:
    v5 = CGRectInset(a2, v3, v3);
    *&a2.origin.x = CGRectIntegral(v5);
  }

  return a2.origin.x;
}

void CI::SampleModeNode::~SampleModeNode(CI::SampleModeNode *this)
{
  *(this + 6) = &unk_1F103B840;
  atomic_fetch_add(&dword_1ED7C47BC[51], 0xFFFFFFFF);
  CI::NodeWithChild::~NodeWithChild(this);
}

{
  *(this + 6) = &unk_1F103B840;
  atomic_fetch_add(&dword_1ED7C47BC[51], 0xFFFFFFFF);
  CI::NodeWithChild::~NodeWithChild(this);

  JUMPOUT(0x19EAF5590);
}

const char *CI::SampleModeNode::short_name(CI::SampleModeNode *this)
{
  v1 = *(this + 14) + 1;
  if (v1 > 2)
  {
    return "unknown";
  }

  else
  {
    return off_1E75C6F08[v1];
  }
}

uint64_t CI::SampleModeNode::print_for_graph_core(uint64_t a1, FILE *a2)
{
  v2 = *(a1 + 56) + 1;
  if (v2 > 2)
  {
    v3 = "unknown";
  }

  else
  {
    v3 = off_1E75C6F08[v2];
  }

  return fprintf(a2, "samplemode %s", v3);
}

void non-virtual thunk toCI::SampleModeNode::~SampleModeNode(CI::SampleModeNode *this)
{
  *this = &unk_1F103B840;
  atomic_fetch_add(&dword_1ED7C47BC[51], 0xFFFFFFFF);
  CI::NodeWithChild::~NodeWithChild((this - 48));
}

{
  *this = &unk_1F103B840;
  atomic_fetch_add(&dword_1ED7C47BC[51], 0xFFFFFFFF);
  CI::NodeWithChild::~NodeWithChild((this - 48));

  JUMPOUT(0x19EAF5590);
}

void *CI::InstanceCounted<(CI::Type)53>::~InstanceCounted(void *result)
{
  *result = &unk_1F103B840;
  atomic_fetch_add(&dword_1ED7C47BC[51], 0xFFFFFFFF);
  return result;
}

void CI::InstanceCounted<(CI::Type)53>::~InstanceCounted(void *a1)
{
  *a1 = &unk_1F103B840;
  atomic_fetch_add(&dword_1ED7C47BC[51], 0xFFFFFFFF);
  JUMPOUT(0x19EAF5590);
}

uint64_t CI::sw_ci_pass_thru(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = *(a1 + 40);
  v4 = *(v3 + 16);
  v5 = *(v3 + 8);
  v6 = a3 + 16 * v5;
  v7 = a2 + (v5 << 6);
  if (v4 == 5)
  {
    v7 = v6;
  }

  return *v7;
}

CI::Object *CI::SRGBNode::append_to_tree(CI::SRGBNode *this, CI::Node *a2, int a3)
{
  v3 = this;
  if (a2)
  {
    v4 = a2;
    if (a3 && (*(*this + 240))(this))
    {
      v5 = 0;
      v6 = v3;
      do
      {
        v7 = v6;
        if ((*(*v6 + 184))(v6))
        {
          break;
        }

        v6 = (*(*v6 + 48))(v6, 0);
        v5 = v7;
      }

      while (((*(*v6 + 240))(v6) & 1) != 0);
    }

    else
    {
      v5 = 0;
      v6 = v3;
    }

    v8 = (*(*v6 + 16))(v6);
    v9 = *v6;
    if (v8 == 41)
    {
      if (!(*(v9 + 432))(v6))
      {
        goto LABEL_25;
      }
    }

    else
    {
      if ((*(v9 + 16))(v6) != 44 || *(v6 + 14) + v4)
      {
LABEL_25:
        operator new();
      }

      v6 = *(v6 + 5);
      if (!v6)
      {
        goto LABEL_20;
      }
    }

    CI::Object::ref(v6);
LABEL_20:
    if (!v5)
    {
      return v6;
    }

    (*(*v5 + 208))(v5, v6, 0);
    if (v6)
    {
      CI::Object::unref(v6);
    }

    if (v3)
    {
      CI::Object::ref(v3);
    }

    return v3;
  }

  if (!this)
  {
    return v3;
  }

  return CI::Object::ref(this);
}

uint64_t CI::SRGBNode::add_to_kernel_hash(uint64_t this, CI::XXHashHelper *a2)
{
  v2 = *(this + 56) + 1;
  if (v2 <= 2)
  {
    return CI::XXHashHelper::addstr(a2, off_1E75C6F20[v2]);
  }

  return this;
}

uint64_t CI::SRGBNode::convert_to_kernel_node(CI::SRGBNode *this, CI::Context *a2)
{
  v2 = (this + 56);
  if ((*(this + 14) + 1) < 3)
  {
    operator new();
  }

  v3 = ci_logger_render();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
  {
    CI::SRGBNode::convert_to_kernel_node(v2, v3);
  }

  return 0;
}

void CI::SRGBNode::~SRGBNode(CI::SRGBNode *this)
{
  *this = &unk_1F103B868;
  *(this + 14) = 0;
  *(this + 6) = &unk_1F103BA48;
  atomic_fetch_add(&dword_1ED7C47BC[42], 0xFFFFFFFF);
  CI::NodeWithChild::~NodeWithChild(this);
}

{
  *this = &unk_1F103B868;
  *(this + 14) = 0;
  *(this + 6) = &unk_1F103BA48;
  atomic_fetch_add(&dword_1ED7C47BC[42], 0xFFFFFFFF);
  CI::NodeWithChild::~NodeWithChild(this);

  JUMPOUT(0x19EAF5590);
}

const char *CI::SRGBNode::short_name(CI::SRGBNode *this)
{
  v1 = "linear_to_srgb";
  v2 = *(this + 14);
  v3 = "srgb_invalid";
  if (!v2)
  {
    v3 = "srgb_noop";
  }

  if (v2 != 1)
  {
    v1 = v3;
  }

  if (v2 == -1)
  {
    return "srgb_to_linear";
  }

  else
  {
    return v1;
  }
}

uint64_t CI::SRGBNode::output_depth(CI::SRGBNode *this)
{
  v2 = *(this + 14);
  result = (*(**(this + 5) + 320))(*(this + 5));
  if (v2)
  {
    if (result < 1)
    {
      return 0;
    }

    else
    {
      v4 = *(**(this + 5) + 320);

      return v4();
    }
  }

  return result;
}

void non-virtual thunk toCI::SRGBNode::~SRGBNode(CI::SRGBNode *this)
{
  *(this - 6) = &unk_1F103B868;
  *(this + 2) = 0;
  *this = &unk_1F103BA48;
  atomic_fetch_add(&dword_1ED7C47BC[42], 0xFFFFFFFF);
  CI::NodeWithChild::~NodeWithChild((this - 48));
}

{
  CI::SRGBNode::~SRGBNode((this - 48));
}

void *CI::InstanceCounted<(CI::Type)44>::~InstanceCounted(void *result)
{
  *result = &unk_1F103BA48;
  atomic_fetch_add(&dword_1ED7C47BC[42], 0xFFFFFFFF);
  return result;
}

void CI::InstanceCounted<(CI::Type)44>::~InstanceCounted(void *a1)
{
  *a1 = &unk_1F103BA48;
  atomic_fetch_add(&dword_1ED7C47BC[42], 0xFFFFFFFF);
  JUMPOUT(0x19EAF5590);
}

double CI::sw_ci_lin_to_srgb(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = *(a1 + 40);
  v4 = *(v3 + 16);
  v5 = *(v3 + 8);
  v6 = (a3 + 16 * v5);
  v7 = (a2 + (v5 << 6));
  if (v4 == 5)
  {
    v7 = v6;
  }

  v8 = vabsq_f32(*v7);
  v16 = vcgtq_f32(vdupq_n_s32(0x3B4D2E1Cu), v8);
  v9.i64[0] = 0x8000000080000000;
  v9.i64[1] = 0x8000000080000000;
  __asm { FMOV            V2.4S, #1.0 }

  v8.i32[3] = 0;
  *&result = vbslq_s8(v16, vmulq_f32(*v7, vdupq_n_s32(0x414EB852u)), vmulq_f32(vmlaq_f32(vdupq_n_s32(0xBD6147AE), vdupq_n_s32(0x3F870A3Du), _simd_pow_f4(v8, xmmword_19CF22D80)), vbslq_s8(vorrq_s8(vcltzq_f32(*v7), vcgtzq_f32(*v7)), vorrq_s8(vandq_s8(*v7, v9), _Q2), 0))).u64[0];
  return result;
}

double CI::sw_ci_srgb_to_lin(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = *(a1 + 40);
  v4 = *(v3 + 16);
  v5 = *(v3 + 8);
  v6 = (a3 + 16 * v5);
  v7 = (a2 + (v5 << 6));
  if (v4 == 5)
  {
    v7 = v6;
  }

  v8 = vabsq_f32(*v7);
  v9.i64[0] = 0x8000000080000000;
  v9.i64[1] = 0x8000000080000000;
  __asm { FMOV            V2.4S, #1.0 }

  v17 = vbslq_s8(vorrq_s8(vcltzq_f32(*v7), vcgtzq_f32(*v7)), vorrq_s8(vandq_s8(*v7, v9), _Q2), 0);
  v15 = vmlaq_f32(vdupq_n_s32(0x3D558919u), vdupq_n_s32(0x3F72A76Eu), v8);
  v15.i32[3] = 0;
  *&result = vbslq_s8(vcgtq_f32(vdupq_n_s32(0x3D25AEE6u), v8), vmulq_f32(*v7, vdupq_n_s32(0x3D9E8391u)), vmulq_f32(_simd_pow_f4(v15, xmmword_19CF226D0), v17)).u64[0];
  return result;
}

uint64_t CI::sw_ci_srgb_noop(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = *(a1 + 40);
  v4 = *(v3 + 16);
  v5 = *(v3 + 8);
  v6 = a3 + 16 * v5;
  v7 = a2 + (v5 << 6);
  if (v4 == 5)
  {
    v7 = v6;
  }

  return *v7;
}

void CI::SurfaceNode::SurfaceNode(CI::Node *a1)
{
  CI::Node::Node(a1);
}

{
  CI::SurfaceNode::SurfaceNode(a1);
}

void sub_19CEC483C(_Unwind_Exception *a1)
{
  *(v1 + 5) = v2;
  atomic_fetch_add(v3, 0xFFFFFFFF);
  CI::Node::~Node(v1);
  _Unwind_Resume(a1);
}

void CI::SurfaceNode::~SurfaceNode(CI::SurfaceNode *this)
{
  *this = &unk_1F103BA70;
  *(this + 5) = &unk_1F103BC38;
  v2 = *(this + 7);
  if (v2)
  {
    CFRelease(v2);
  }

  *(this + 7) = 0;
  *(this + 5) = &unk_1F103BC60;
  atomic_fetch_add(&dword_1ED7C47BC[52], 0xFFFFFFFF);

  CI::Node::~Node(this);
}

{
  CI::SurfaceNode::~SurfaceNode(this);

  JUMPOUT(0x19EAF5590);
}

void sub_19CEC4918(_Unwind_Exception *a1)
{
  *(v1 + 5) = &unk_1F103BC60;
  atomic_fetch_add(&dword_1ED7C47BC[52], 0xFFFFFFFF);
  CI::Node::~Node(v1);
  _Unwind_Resume(a1);
}

void non-virtual thunk toCI::SurfaceNode::~SurfaceNode(CI::SurfaceNode *this)
{
  CI::SurfaceNode::~SurfaceNode((this - 40));
}

{
  CI::SurfaceNode::~SurfaceNode((this - 40));

  JUMPOUT(0x19EAF5590);
}

void CI::SurfaceNode::release_resources(CI::SurfaceNode *this)
{
  v2 = *(this + 7);
  if (v2)
  {
    CFRelease(v2);
  }

  *(this + 7) = 0;
}

void CI::SurfaceNode::set_surface(uint64_t a1, int a2, uint64_t a3, CFTypeRef cf)
{
  *(a1 + 108) = a2;
  *(a1 + 64) = a3;
  if (cf)
  {
    CFRetain(cf);
  }

  v6 = *(a1 + 56);
  if (v6)
  {
    CFRelease(v6);
  }

  *(a1 + 56) = cf;
}

uint64_t CI::SurfaceNode::print_for_graph_core(uint64_t a1, FILE *__stream)
{
  fwrite("IOSurface", 9uLL, 1uLL, __stream);
  if (*(a1 + 64))
  {
    fprintf(__stream, " content:%016llX");
  }

  else if (*(a1 + 56))
  {
    fprintf(__stream, " %p", *(a1 + 56));
    ID = IOSurfaceGetID(*(a1 + 56));
    fprintf(__stream, "(%d)", ID);
    IOSurfaceGetSeed(*(a1 + 56));
    fprintf(__stream, " seed:%d");
  }

  if (*(a1 + 52))
  {
    v5 = "s";
  }

  else
  {
    v5 = "";
  }

  v6 = CI::format_from_PixelFormatType(*(a1 + 72));
  v7 = CI::name_for_format(v6);
  result = fprintf(__stream, " %s%s", v5, v7);
  v9 = *(a1 + 72);
  v10 = v9 >> 24;
  if ((v9 & 0xFD000000) == 0x2D000000)
  {
    if (v10 <= 46)
    {
      if (v10 != 38)
      {
        if (v10 == 45)
        {
          v11 = "lossy75";
LABEL_22:
          result = fprintf(__stream, "-%s", v11);
          goto LABEL_23;
        }

LABEL_20:
        v11 = "";
        goto LABEL_22;
      }

LABEL_16:
      v11 = "compressed";
      goto LABEL_22;
    }

    if (v10 == 47)
    {
      v11 = "lossy62";
      goto LABEL_22;
    }

    if (v10 != 124)
    {
      goto LABEL_20;
    }

LABEL_19:
    v11 = "lossy50";
    goto LABEL_22;
  }

  if (v10 == 38)
  {
    goto LABEL_16;
  }

  if (v10 == 124)
  {
    goto LABEL_19;
  }

LABEL_23:
  v12 = *(a1 + 96);
  if (v12 <= 1)
  {
    if (!v12)
    {
      goto LABEL_35;
    }

    if (v12 == 1)
    {
      v13 = "alpha_one";
      goto LABEL_34;
    }

LABEL_33:
    v13 = "alpha_unknown";
    goto LABEL_34;
  }

  if (v12 == 6)
  {
    v13 = "alpha_unpremul-clear-edges";
    goto LABEL_34;
  }

  if (v12 == 4)
  {
    v13 = "alpha_premul-clear-edges";
    goto LABEL_34;
  }

  if (v12 != 2)
  {
    goto LABEL_33;
  }

  v13 = "alpha_unpremul";
LABEL_34:
  result = fprintf(__stream, " %s", v13);
LABEL_35:
  v14 = *(a1 + 100);
  if (v14)
  {
    if (v14 == 1)
    {
      v15 = "edge_clamp";
    }

    else
    {
      v15 = "edge_unknown";
    }

    result = fprintf(__stream, " %s", v15);
  }

  if (*(a1 + 104) == 1)
  {
    result = fwrite(" nearestsampling", 0x10uLL, 1uLL, __stream);
  }

  if (*(a1 + 106) == 1)
  {

    return fwrite(" cache", 6uLL, 1uLL, __stream);
  }

  return result;
}

uint64_t CI::SurfaceNode::add_args_to_hash(CI::SurfaceNode *this, CI::XXHashHelper *a2)
{
  if (*(this + 8))
  {
    __src = *(this + 8);
    v4 = a2;
    v5 = 8;
  }

  else
  {
    __src = *(this + 7);
    XXH64_update(a2, &__src, 8uLL);
    LODWORD(__src) = *(this + 27);
    XXH64_update(a2, &__src, 4uLL);
    LODWORD(__src) = IOSurfaceGetID(*(this + 7));
    XXH64_update(a2, &__src, 4uLL);
    LODWORD(__src) = IOSurfaceGetSeed(*(this + 7));
    v4 = a2;
    v5 = 4;
  }

  XXH64_update(v4, &__src, v5);
  LODWORD(__src) = IOSurfaceGetPixelFormat(*(this + 7));
  XXH64_update(a2, &__src, 4uLL);
  LODWORD(__src) = *(this + 24);
  XXH64_update(a2, &__src, 4uLL);
  LODWORD(__src) = *(this + 25);
  XXH64_update(a2, &__src, 4uLL);
  LODWORD(__src) = *(this + 104);
  XXH64_update(a2, &__src, 4uLL);
  LODWORD(__src) = *(this + 52);
  return XXH64_update(a2, &__src, 4uLL);
}

uint64_t CI::SurfaceNode::chroma_scale_fix(IOSurfaceRef *this, char a2)
{
  result = (*(*this + 27))(this);
  if (result != 2)
  {
    __asm { FMOV            V0.2S, #1.0 }

    return result;
  }

  if ((a2 & 1) == 0)
  {
    IOSurfaceGetWidthOfPlane(this[7], 0);
    IOSurfaceGetWidthOfPlane(this[7], 1uLL);
    IOSurfaceGetHeightOfPlane(this[7], 0);
    IOSurfaceGetHeightOfPlane(this[7], 1uLL);
  }

  result = equivalent_uncompressed_format(*(this + 18));
  if (result <= 1936077875)
  {
    if (result <= 1751528499)
    {
      if (result == 875836518)
      {
        goto LABEL_20;
      }

      v5 = 875836534;
    }

    else
    {
      if (result == 1751528500 || result == 1882469428)
      {
        goto LABEL_20;
      }

      v5 = 1885746228;
    }

LABEL_19:
    if (result != v5)
    {
      return result;
    }

    goto LABEL_20;
  }

  if (result > 1953903667)
  {
    if (result == 1953903668 || result == 2019963956)
    {
      goto LABEL_20;
    }

    v5 = 2016687156;
    goto LABEL_19;
  }

  if (result != 1936077876 && result != 1937126452)
  {
    v5 = 1952855092;
    goto LABEL_19;
  }

LABEL_20:
  __asm { FMOV            V0.2S, #1.0 }

  return result;
}

double CI::SurfaceNode::find_matching_roi(CI::SurfaceNode *this, const CGRect *a2)
{
  v4 = CI::Node::rois(this);
  x = a2->origin.x;
  y = a2->origin.y;
  width = a2->size.width;
  height = a2->size.height;
  v16.origin.x = (*(*this + 176))(this);
  v16.origin.y = v9;
  v16.size.width = v10;
  v16.size.height = v11;
  v14.origin.x = x;
  v14.origin.y = y;
  v14.size.width = width;
  v14.size.height = height;
  v15 = CGRectIntersection(v14, v16);

  return CI::SerialRectArray::smallestContainingRect(v4, v15);
}

void CI::SurfaceNode::add_roi(CI::SurfaceNode *this, unint64_t a2, unint64_t a3, CGRect a4, const CI::parentROI *a5)
{
  height = a4.size.height;
  width = a4.size.width;
  y = a4.origin.y;
  x = a4.origin.x;
  if (CGRectIsEmpty(a4))
  {
    v13 = this;
    v14 = a2;
    v15 = a3;
    v16 = x;
    v17 = y;
    v18 = width;
    v19 = height;
    goto LABEL_88;
  }

  v61.origin.x = (*(*this + 176))(this);
  v20 = v61.origin.x;
  v21 = v61.origin.y;
  v22 = v61.size.width;
  v23 = v61.size.height;
  if (CGRectIsNull(v61))
  {
    v24 = 0;
    v25 = 0;
    v26 = 0x7FFFFFFF;
    v27 = 0x7FFFFFFF;
  }

  else
  {
    v62.origin.x = v20;
    v62.origin.y = v21;
    v62.size.width = v22;
    v62.size.height = v23;
    if (CGRectIsInfinite(v62))
    {
      v26 = -2147483647;
      v24 = 0xFFFFFFFFLL;
      v25 = 0xFFFFFFFFLL;
      v27 = -2147483647;
    }

    else
    {
      v63.origin.x = v20;
      v63.origin.y = v21;
      v63.size.width = v22;
      v63.size.height = v23;
      v64 = CGRectInset(v63, 0.000001, 0.000001);
      v65 = CGRectIntegral(v64);
      v27 = v65.origin.x;
      v26 = v65.origin.y;
      v25 = v65.size.width;
      v24 = v65.size.height;
    }
  }

  v66.origin.x = x;
  v66.origin.y = y;
  v66.size.width = width;
  v66.size.height = height;
  if (CGRectIsNull(v66))
  {
    v28 = 0;
    v29 = 0;
    v30 = 0x7FFFFFFF;
    v31 = 0x7FFFFFFF;
  }

  else
  {
    v67.origin.x = x;
    v67.origin.y = y;
    v67.size.width = width;
    v67.size.height = height;
    if (CGRectIsInfinite(v67))
    {
      v30 = -2147483647;
      v28 = 0xFFFFFFFFLL;
      v29 = 0xFFFFFFFFLL;
      v31 = -2147483647;
    }

    else
    {
      v68.origin.x = x;
      v68.origin.y = y;
      v68.size.width = width;
      v68.size.height = height;
      v69 = CGRectInset(v68, 0.000001, 0.000001);
      v70 = CGRectIntegral(v69);
      v31 = v70.origin.x;
      v30 = v70.origin.y;
      v29 = v70.size.width;
      v28 = v70.size.height;
    }
  }

  if (*(this + 25) != 1 || v27 == -2147483647 && v26 == -2147483647 && v25 == 0xFFFFFFFF && v24 == 0xFFFFFFFF)
  {
    goto LABEL_18;
  }

  v34 = 0x7FFFFFFF;
  if (v31 == 0x7FFFFFFF)
  {
    if (v30 == 0x7FFFFFFF && !v29 && !v28)
    {
      v32 = 0;
      v33 = 0;
      v35 = 0x7FFFFFFF;
      goto LABEL_19;
    }
  }

  else if (v31 == -2147483647 && v30 == -2147483647 && v29 == 0xFFFFFFFF && v28 == 0xFFFFFFFF)
  {
    goto LABEL_109;
  }

  if (v24)
  {
    v49 = 0;
  }

  else
  {
    v49 = v25 == 0;
  }

  v51 = v49 && v26 == 0x7FFFFFFF && v27 == 0x7FFFFFFF;
  if (!v51 && v27 <= v31 && v27 + v25 >= v31 + v29 && v26 <= v30 && v26 + v24 >= v30 + v28)
  {
LABEL_18:
    v32 = v28;
    v33 = v29;
    v34 = v30;
    v35 = v31;
    goto LABEL_19;
  }

LABEL_109:
  if ((v27 != 0x7FFFFFFF || v26 != 0x7FFFFFFF || v25 || v24) && (v31 != 0x7FFFFFFF || v30 != 0x7FFFFFFF || v29 || v28))
  {
    if (v31 == -2147483647 && v30 == -2147483647 && v29 == 0xFFFFFFFF && (v32 = v24, v33 = v25, v34 = v26, v35 = v27, v28 == 0xFFFFFFFF))
    {
      if (!v25)
      {
        goto LABEL_117;
      }
    }

    else
    {
      if (v27 <= v31)
      {
        v35 = v31;
      }

      else
      {
        v35 = v27;
      }

      v58 = v27 + v25;
      if (v27 + v25 >= v31 + v29)
      {
        v58 = v31 + v29;
      }

      LODWORD(v33) = v58 - v35;
      if (v58 < v35)
      {
        goto LABEL_117;
      }

      if (v26 <= v30)
      {
        v34 = v30;
      }

      else
      {
        v34 = v26;
      }

      v59 = v26 + v24;
      if (v26 + v24 >= v30 + v28)
      {
        v59 = v30 + v28;
      }

      v47 = __OFSUB__(v59, v34);
      LODWORD(v32) = v59 - v34;
      if (v32 < 0 != v47)
      {
        goto LABEL_117;
      }

      v33 = v33;
      v32 = v32;
      if (!v33)
      {
        goto LABEL_117;
      }
    }

    if (v32)
    {
      goto LABEL_19;
    }
  }

LABEL_117:
  v52 = v31 + v29;
  if (v52 >= v27)
  {
    v53 = v27 + v25;
    if (v31 <= v27 + v25)
    {
      if (v31 <= v27)
      {
        v35 = v27;
      }

      else
      {
        v35 = v31;
      }

      if (v52 >= v53)
      {
        v54 = v27 + v25;
      }

      else
      {
        v54 = v52;
      }

      v33 = v54 - v35;
    }

    else
    {
      v35 = v53 - 1;
      v33 = 1;
    }
  }

  else
  {
    v33 = 1;
    v35 = v27;
  }

  v55 = v30 + v28;
  if (v55 >= v26)
  {
    v56 = v26 + v24;
    if (v30 <= v26 + v24)
    {
      if (v30 <= v26)
      {
        v34 = v26;
      }

      else
      {
        v34 = v30;
      }

      if (v55 >= v56)
      {
        v57 = v26 + v24;
      }

      else
      {
        v57 = v55;
      }

      v32 = v57 - v34;
    }

    else
    {
      v34 = v56 - 1;
      v32 = 1;
    }
  }

  else
  {
    v32 = 1;
    v34 = v26;
  }

LABEL_19:
  v36 = 0x7FFFFFFF;
  v39 = v27 == 0x7FFFFFFF && v26 == 0x7FFFFFFF && v25 == 0 && v24 == 0;
  v40 = v39;
  if (v39 || v35 == 0x7FFFFFFF && v34 == 0x7FFFFFFF && !v33 && !v32)
  {
    v41 = 0;
    v42 = 0;
LABEL_37:
    v43 = 0x7FFFFFFF;
    goto LABEL_38;
  }

  if (v27 == -2147483647 && v26 == -2147483647 && v25 == 0xFFFFFFFF && v24 == 0xFFFFFFFF)
  {
    v36 = v35;
    v43 = v34;
    v41 = v33;
    v42 = v32;
  }

  else
  {
    if (v35 == -2147483647 && v34 == -2147483647 && v33 == 0xFFFFFFFFLL)
    {
      v36 = v27;
      v43 = v26;
      v41 = v25;
      v42 = v24;
      if (v32 == 0xFFFFFFFFLL)
      {
        goto LABEL_38;
      }
    }

    if (v27 <= v35)
    {
      v36 = v35;
    }

    else
    {
      v36 = v27;
    }

    v46 = v27 + v25;
    if (v27 + v25 >= v35 + v33)
    {
      v46 = v35 + v33;
    }

    v47 = __OFSUB__(v46, v36);
    LODWORD(v41) = v46 - v36;
    if (((v41 & 0x80000000) != 0) != v47)
    {
      goto LABEL_85;
    }

    if (v26 <= v34)
    {
      v43 = v34;
    }

    else
    {
      v43 = v26;
    }

    v48 = v26 + v24;
    if (v26 + v24 >= v34 + v32)
    {
      v48 = v34 + v32;
    }

    v47 = __OFSUB__(v48, v43);
    LODWORD(v42) = v48 - v43;
    if (((v42 & 0x80000000) != 0) != v47)
    {
LABEL_85:
      v41 = 0;
      v42 = 0;
      v36 = 0x7FFFFFFF;
      goto LABEL_37;
    }

    v41 = v41;
    v42 = v42;
  }

LABEL_38:
  if (v25 <= v24)
  {
    v44 = v24;
  }

  else
  {
    v44 = v25;
  }

  if (v44 <= 0x1000 && 3 * v24 * v25 <= 4 * v41 * v42)
  {
    if (!v40)
    {
      v16 = v27;
      v17 = v26;
      v18 = v25;
      v19 = v24;
      goto LABEL_87;
    }

    goto LABEL_66;
  }

  if (v36 == -2147483647)
  {
    if (v43 != -2147483647 || v41 != 0xFFFFFFFF || v42 != 0xFFFFFFFF)
    {
      goto LABEL_53;
    }

    v45 = MEMORY[0x1E695F040];
LABEL_67:
    v16 = *v45;
    v17 = v45[1];
    v18 = v45[2];
    v19 = v45[3];
    goto LABEL_87;
  }

  if (v36 == 0x7FFFFFFF && v43 == 0x7FFFFFFF && !v41 && !v42)
  {
LABEL_66:
    v45 = MEMORY[0x1E695F050];
    goto LABEL_67;
  }

LABEL_53:
  v16 = v36;
  v17 = v43;
  v18 = v41;
  v19 = v42;
LABEL_87:
  v13 = this;
  v14 = a2;
  v15 = a3;
LABEL_88:

  CI::Node::add_roi(v13, v14, v15, *&v16, a5);
}

void CI::SurfaceNode::surfaceForROI(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, __IOSurface **a4@<X8>, CGFloat a5@<D0>, CGFloat a6@<D1>, CGFloat a7@<D2>, CGFloat a8@<D3>)
{
  v52 = *MEMORY[0x1E69E9840];
  if (CI_VERBOSE_SIGNPOSTS())
  {
    v16 = ci_signpost_log_render();
    v17 = *(a1 + 36) | ((*(*a2 + 280))(a2) << 32);
    if (v17 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v16))
    {
      *buf = 134218752;
      v45 = a5;
      v46 = 2048;
      v47 = a6;
      v48 = 2048;
      v49 = a7;
      v50 = 2048;
      v51 = a8;
      _os_signpost_emit_with_name_impl(&dword_19CC36000, v16, OS_SIGNPOST_INTERVAL_BEGIN, v17, "surface_for_roi_from_surface", "[%g %g %g %g]", buf, 0x2Au);
    }
  }

  v18 = (*(*a2 + 280))(a2);
  TimerBase::TimerBase(buf, v18, *(a1 + 36), "surface_for_roi_from_surface", 24);
  v53.origin.x = a5;
  v53.origin.y = a6;
  v53.size.width = a7;
  v53.size.height = a8;
  if (!CGRectIsEmpty(v53))
  {
    v54.origin.x = a5;
    v54.origin.y = a6;
    v54.size.width = a7;
    v54.size.height = a8;
    if (!CGRectIsInfinite(v54))
    {
      v20 = CI::format_from_IOSurface(*(a1 + 56), v19);
      v21 = (*(*a2 + 544))(a2, v20);
      Current = CFAbsoluteTimeGetCurrent();
      *(a3 + 8) += a7 * a8;
      v55.size.width = *(a1 + 80);
      v55.size.height = *(a1 + 88);
      v55.origin.x = 0.0;
      v55.origin.y = 0.0;
      v59 = CGRectInset(v55, 2.0, 2.0);
      v56.origin.x = a5;
      v56.origin.y = a6;
      v56.size.width = a7;
      v56.size.height = a8;
      if (CGRectContainsRect(v56, v59))
      {
        v23 = v21;
        if (SurfaceIsRowBytesAligned(*(a1 + 56), v21))
        {
          CFRetain(*(a1 + 56));
          *a3 = CFAbsoluteTimeGetCurrent() - Current + *a3;
          *a4 = *(a1 + 56);
          goto LABEL_31;
        }
      }

      else
      {
        v23 = v21;
      }

      if (!SurfaceIsRowBytesAligned(*(a1 + 56), v23))
      {
        v24 = ci_logger_performance();
        if (os_log_type_enabled(v24, OS_LOG_TYPE_INFO))
        {
          v25 = *(a1 + 80);
          v26 = *(a1 + 88);
          *v41 = 134218496;
          *&v41[4] = v25;
          *&v41[12] = 2048;
          *&v41[14] = v26;
          *&v41[22] = 1024;
          *&v41[24] = v21;
          _os_log_impl(&dword_19CC36000, v24, OS_LOG_TYPE_INFO, "CI_CONVERSION: Converted %zux%zu input surface to a new surface with required rowbytes alignment (of %d bytes).", v41, 0x1Cu);
        }
      }

      if (CI_ENABLE_METAL_BLIT() && (*(*a2 + 16))(a2) == 85)
      {
        v21 = (*(*a2 + 552))(a2, v20);
      }

      PixelFormat = IOSurfaceGetPixelFormat(*(a1 + 56));
      Surface = CreateSurface(a7, a8, v21, PixelFormat, 0);
      if (CI_ENABLE_METAL_BLIT())
      {
        if ((*(*a2 + 16))(a2) == 85 && IOSurfaceGetPlaneCount(*(a1 + 56)) <= 1)
        {
          v29 = *(a1 + 80);
          if (v29 <= (*(*a2 + 448))(a2))
          {
            v30 = *(a1 + 88);
            if (v30 <= (*(*a2 + 448))(a2) && (((v20 - 1287) < 0xFFFFFFFE) & SurfaceIsRowBytesAligned(*(a1 + 56), v23)) != 0)
            {
              v31 = CI::MetalContext::device(a2);
              v32 = CIMetalFormatForFormat(*(a1 + 48), *(a1 + 52));
              v43 = 0;
              v42 = 0u;
              memset(v41, 0, sizeof(v41));
              MTLPixelFormatGetInfoForDevice();
              if ((v41[8] & 2) != 0)
              {
                v33 = CIMetalTextureCreateFromIOSurface(*(a2 + 2008), v31, *(a1 + 56), 0, v32, 1);
                if (v33)
                {
                  v34 = CIMetalTextureCreateFromIOSurface(*(a2 + 2008), v31, Surface, 0, v32, 2);
                  if (v34)
                  {
                    v57.origin.x = a5;
                    v57.origin.y = a6;
                    v57.size.width = a7;
                    v57.size.height = a8;
                    v58 = CGRectIntegral(v57);
                    v35 = *(a2 + 1848);
                    CIMetalCommandBufferCopyTexture(v35, v34, v33, *MEMORY[0x1E695EFF8], *(MEMORY[0x1E695EFF8] + 8), v58.origin.x, v58.origin.y, v58.size.width, v58.size.height);
                    v40[0] = MEMORY[0x1E69E9820];
                    v40[1] = 3221225472;
                    v40[2] = ___ZNK2CI11SurfaceNode13surfaceForROIEPKNS_7ContextE6CGRectRNS_8Tileable5StatsE_block_invoke;
                    v40[3] = &unk_1E75C3558;
                    v40[4] = v33;
                    v40[5] = v34;
                    CIMetalCommandBufferAddCompletionHandler(v35, v40);
                    v36 = CFAbsoluteTimeGetCurrent();
LABEL_30:
                    *a3 = v36 - Current + *a3;
                    *a4 = Surface;
                    goto LABEL_31;
                  }

                  CFRelease(v33);
                }
              }
            }
          }
        }
      }

      v37 = *(a1 + 56);
      v38[0] = MEMORY[0x1E69E9820];
      v38[1] = 3221225472;
      v38[2] = ___ZNK2CI11SurfaceNode13surfaceForROIEPKNS_7ContextE6CGRectRNS_8Tileable5StatsE_block_invoke_2;
      v38[3] = &__block_descriptor_84_e22_v48__0r_v8Q16Q24Q32Q40l;
      v38[4] = a1;
      v38[5] = Surface;
      v39 = v20;
      *&v38[6] = a5;
      *&v38[7] = a6;
      *&v38[8] = a7;
      *&v38[9] = a8;
      SurfaceApplyPlaneReadOnlyBlock(v37, v38);
      v36 = CFAbsoluteTimeGetCurrent();
      goto LABEL_30;
    }
  }

  *a4 = 0;
LABEL_31:
  CI::SurfaceNode::surfaceForROI(CI::Context const*,CGRect,CI::Tileable::Stats &)const::SignpostTimer::~SignpostTimer(buf);
}

void ___ZNK2CI11SurfaceNode13surfaceForROIEPKNS_7ContextE6CGRectRNS_8Tileable5StatsE_block_invoke(uint64_t a1)
{
  CFRelease(*(a1 + 32));
  v2 = *(a1 + 40);

  CFRelease(v2);
}

uint64_t ___ZNK2CI11SurfaceNode13surfaceForROIEPKNS_7ContextE6CGRectRNS_8Tileable5StatsE_block_invoke_2(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v7 = *(a1 + 32);
  v6 = *(a1 + 40);
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v8 = *(a1 + 64);
  v11 = *(a1 + 48);
  v12 = v8;
  v10[2] = ___ZNK2CI11SurfaceNode13surfaceForROIEPKNS_7ContextE6CGRectRNS_8Tileable5StatsE_block_invoke_3;
  v10[3] = &__block_descriptor_100_e21_v48__0_v8Q16Q24Q32Q40l;
  v10[4] = v7;
  v16 = *(a1 + 80);
  v13 = a2;
  v14 = a6;
  v15 = a3;
  return SurfaceApplyPlaneBlock(v6, v10);
}

uint64_t ___ZNK2CI11SurfaceNode13surfaceForROIEPKNS_7ContextE6CGRectRNS_8Tileable5StatsE_block_invoke_3(uint64_t result, char *a2, size_t planeIndex, unint64_t a4, uint64_t a5, uint64_t a6)
{
  v7 = a5;
  v10 = result;
  v11 = *(result + 96);
  if ((v11 - 1285) > 1)
  {
    if (*(result + 88) != planeIndex)
    {
      return result;
    }

    v23 = *(result + 32);
    ElementWidthOfPlane = IOSurfaceGetElementWidthOfPlane(*(v23 + 56), planeIndex);
    ElementHeightOfPlane = IOSurfaceGetElementHeightOfPlane(*(v23 + 56), *(v10 + 88));
    result = IOSurfaceGetBytesPerElementOfPlane(*(v23 + 56), *(v10 + 88));
    v27 = result;
    if (planeIndex)
    {
      v28 = CI::format_from_IOSurface(*(v23 + 56), v26);
      if (CI::format_is_ycc_biplanar(v28))
      {
        v30 = 2.0;
      }

      else
      {
        v30 = 1.0;
      }

      v31 = CI::format_from_IOSurface(*(v23 + 56), v29);
      result = CI::format_is_ycc_420(v31);
      if (result)
      {
        v32 = 2.0;
      }

      else
      {
        v32 = 1.0;
      }

      if (!v7)
      {
        return result;
      }
    }

    else
    {
      v30 = 1.0;
      v32 = 1.0;
      if (!v7)
      {
        return result;
      }
    }

    v33 = a4 / ElementWidthOfPlane * v27;
    v34 = (*(v10 + 72) + (*(v10 + 40) / v30) / ElementWidthOfPlane * v27 + *(v10 + 80) * ((*(v10 + 48) / v32) / ElementHeightOfPlane));
    do
    {
      result = memcpy(a2, v34, v33);
      v34 += *(v10 + 80);
      a2 += a6;
      --v7;
    }

    while (v7);
    return result;
  }

  v12 = v11 != 1285;
  if (a5)
  {
    v13 = 0;
    v14 = *(result + 48);
    v15 = a4 << v12;
    v16 = *(result + 72);
    v17 = *(result + 80);
    v18 = *(result + 40) << v12;
    result = 0x5555555555555556;
    do
    {
      if (v15)
      {
        v19 = 0;
        for (i = 0; i != v15; ++i)
        {
          v21 = i / 3;
          *&a2[4 * v21 + v13 * a6] = dword_19CF2DDC0[i + -3 * v21] & *&a2[4 * v21 + v13 * a6] | (((*(v16 + v17 * (v13 + v14) + 4 * ((v18 + i) / 3)) >> (10 * ((v18 + i) % 3))) & 0x3FF) << (v19 - 30 * v21));
          v19 += 10;
        }
      }

      ++v13;
    }

    while (v13 != a5);
  }

  return result;
}

void CI::SurfaceNode::surfaceForROI(CI::Context const*,CGRect,CI::Tileable::Stats &)const::SignpostTimer::~SignpostTimer(TimerBase *a1)
{
  if (CI_VERBOSE_SIGNPOSTS())
  {
    v2 = ci_signpost_log_render();
    v3 = *(a1 + 1);
    if (v3 - 1 <= 0xFFFFFFFFFFFFFFFDLL)
    {
      v4 = v2;
      if (os_signpost_enabled(v2))
      {
        *v5 = 0;
        _os_signpost_emit_with_name_impl(&dword_19CC36000, v4, OS_SIGNPOST_INTERVAL_END, v3, "surface_for_roi_from_surface", &unk_19CFBCBAE, v5, 2u);
      }
    }
  }

  TimerBase::~TimerBase(a1);
}

void CI::SurfaceNode::graphviz_add_images(void **this, void *a2)
{
  if (CI_PRINT_TREE_dump_inputs())
  {
    CGImage = SurfaceCreateCGImage(this[7], 0, 1);
    CIGVNodeAddImage(a2, CGImage);

    CGImageRelease(CGImage);
  }
}

void *CI::InstanceCounted<(CI::Type)54>::~InstanceCounted(void *result)
{
  *result = &unk_1F103BC60;
  atomic_fetch_add(&dword_1ED7C47BC[52], 0xFFFFFFFF);
  return result;
}

void CI::InstanceCounted<(CI::Type)54>::~InstanceCounted(void *a1)
{
  *a1 = &unk_1F103BC60;
  atomic_fetch_add(&dword_1ED7C47BC[52], 0xFFFFFFFF);
  JUMPOUT(0x19EAF5590);
}

CI::Object *CI::SwizzleNode::append_to_tree(CI::Object *this, int a2, int a3)
{
  v3 = this;
  if (a2)
  {
    if (a3 && (*(*this + 240))(this))
    {
      v5 = 0;
      v6 = v3;
      do
      {
        v7 = v6;
        if ((*(*v6 + 184))(v6))
        {
          break;
        }

        v6 = (*(*v6 + 48))(v6, 0);
        v5 = v7;
      }

      while (((*(*v6 + 240))(v6) & 1) != 0);
    }

    else
    {
      v5 = 0;
      v6 = v3;
    }

    if ((*(*v6 + 16))(v6) != 55)
    {
      operator new();
    }

    v8 = *(v6 + 56);
    if (a2 == 1 && v8 == 1)
    {
      v9 = *(v6 + 40);
      if (v9)
      {
        CI::Object::ref(*(v6 + 40));
      }
    }

    else
    {
      if (a2 != 10 || (v8 & 0xFFFFFFFE) != 0xA)
      {
        operator new();
      }

      CI::Object::ref(v6);
      v9 = v6;
    }

    if (!v5)
    {
      return v9;
    }

    (*(*v5 + 208))(v5, v9, 0);
    if (v9)
    {
      CI::Object::unref(v9);
    }

    if (v3)
    {
      CI::Object::ref(v3);
    }

    return v3;
  }

  if (!this)
  {
    return v3;
  }

  return CI::Object::ref(this);
}

uint64_t CI::SwizzleNode::convert_to_kernel_node(CI::SwizzleNode *this, CI::Context *a2)
{
  v2 = CI::Kernel::builtin(*(this + 14));
  if (v2 && ((*v2)[2])(v2) != 72)
  {
    operator new();
  }

  return 0;
}

uint64_t CI::SwizzleNode::is_rgb_invariant(CI::SwizzleNode *this, char a2)
{
  v2 = *(this + 14);
  v3 = v2 == 0;
  v4 = (v2 < 0x16) & (0x200C12u >> v2);
  if (!v2)
  {
    v4 = 1;
  }

  if (a2)
  {
    v3 = v4;
  }

  v6 = v2 == 22 || v2 == 25 || v3;
  if ((a2 & 2) != 0)
  {
    return v6;
  }

  else
  {
    return v3;
  }
}

uint64_t CI::SwizzleNode::alpha_one(CI::SwizzleNode *this)
{
  v2 = *(this + 14);
  result = 1;
  if ((v2 - 9) > 0x3E)
  {
    goto LABEL_5;
  }

  if (((1 << (v2 - 9)) & 0x7C1FE23FB4CFF07ELL) != 0)
  {
    return result;
  }

  if (v2 == 9)
  {
    return 0;
  }

LABEL_5:
  v4 = v2 - 83;
  if (v4 > 5 || v4 == 3)
  {
    return (*(**(this + 5) + 280))();
  }

  return result;
}

uint64_t CI::SwizzleNode::output_format(CI::SwizzleNode *this)
{
  v2 = *(*(*this + 48))(this, 0);
  result = (*(v2 + 328))();
  if (result)
  {
    is_float = CI::format_is_float(result);
    if ((*(*this + 288))(this))
    {
      if (is_float)
      {
        return 2054;
      }

      else
      {
        return 262;
      }
    }

    else
    {
      v5 = (*(*this + 296))(this);
      if (is_float)
      {
        v6 = 2053;
      }

      else
      {
        v6 = 261;
      }

      if (v5)
      {
        return v6;
      }

      else
      {
        return 0;
      }
    }
  }

  return result;
}

void CI::SwizzleNode::~SwizzleNode(CI::SwizzleNode *this)
{
  *(this + 6) = &unk_1F103BE80;
  atomic_fetch_add(&dword_1ED7C47BC[53], 0xFFFFFFFF);
  CI::NodeWithChild::~NodeWithChild(this);
}

{
  *(this + 6) = &unk_1F103BE80;
  atomic_fetch_add(&dword_1ED7C47BC[53], 0xFFFFFFFF);
  CI::NodeWithChild::~NodeWithChild(this);

  JUMPOUT(0x19EAF5590);
}

uint64_t CI::SwizzleNode::shape_for_graphviz(CI::SwizzleNode *this)
{
  if ((*(*this + 440))(this))
  {
    return 2;
  }

  else
  {
    return 3;
  }
}

uint64_t CI::SwizzleNode::color_for_graphviz(CI::SwizzleNode *this)
{
  if ((*(*this + 440))(this))
  {
    return 4;
  }

  else
  {
    return 2;
  }
}

uint64_t CI::SwizzleNode::add_to_kernel_hash(CI::SwizzleNode *this, CI::XXHashHelper *a2)
{
  v3 = SwizzlerName(*(this + 14));

  return CI::XXHashHelper::addstr(a2, v3);
}

void non-virtual thunk toCI::SwizzleNode::~SwizzleNode(CI::SwizzleNode *this)
{
  *this = &unk_1F103BE80;
  atomic_fetch_add(&dword_1ED7C47BC[53], 0xFFFFFFFF);
  CI::NodeWithChild::~NodeWithChild((this - 48));
}

{
  *this = &unk_1F103BE80;
  atomic_fetch_add(&dword_1ED7C47BC[53], 0xFFFFFFFF);
  CI::NodeWithChild::~NodeWithChild((this - 48));

  JUMPOUT(0x19EAF5590);
}

void *CI::InstanceCounted<(CI::Type)55>::~InstanceCounted(void *result)
{
  *result = &unk_1F103BE80;
  atomic_fetch_add(&dword_1ED7C47BC[53], 0xFFFFFFFF);
  return result;
}

void CI::InstanceCounted<(CI::Type)55>::~InstanceCounted(void *a1)
{
  *a1 = &unk_1F103BE80;
  atomic_fetch_add(&dword_1ED7C47BC[53], 0xFFFFFFFF);
  JUMPOUT(0x19EAF5590);
}

const char *SwizzlerName(unsigned int a1)
{
  if (a1 > 0x5A)
  {
    return "unknown-swizzle";
  }

  else
  {
    return off_1E75C6F70[a1];
  }
}

void CI::TextureNode::~TextureNode(CI::TextureNode *this)
{
  *this = &unk_1F103BEA8;
  *(this + 6) = 0;
  *(this + 7) = 0;
  *(this + 5) = &unk_1F103C2B8;
  atomic_fetch_add(&dword_1ED7C47BC[54], 0xFFFFFFFF);
  CI::Node::~Node(this);
}

uint64_t CI::TextureNode::print_for_graph_core(uint64_t a1, FILE *a2)
{
  if ((*(*a1 + 440))(a1))
  {
    fprintf(a2, "GLTexture %d", *(a1 + 48));
  }

  if ((*(*a1 + 448))(a1))
  {
    fprintf(a2, "MTLTexture %p", *(a1 + 48));
    pixelFormatForMetalTexture(*(a1 + 48));
    v4 = stringForMetalTextureFormat();
    fprintf(a2, " %s", v4);
  }

  if (*(a1 + 64))
  {
    fprintf(a2, " content:%016llX", *(a1 + 64));
  }

  result = fprintf(a2, " %dx%d", *(a1 + 72), *(a1 + 76));
  v6 = *(a1 + 80);
  if (v6 <= 1)
  {
    if (!v6)
    {
      goto LABEL_19;
    }

    if (v6 == 1)
    {
      v7 = "alpha_one";
      goto LABEL_18;
    }

LABEL_17:
    v7 = "alpha_unknown";
    goto LABEL_18;
  }

  if (v6 == 6)
  {
    v7 = "alpha_unpremul-clear-edges";
    goto LABEL_18;
  }

  if (v6 == 4)
  {
    v7 = "alpha_premul-clear-edges";
    goto LABEL_18;
  }

  if (v6 != 2)
  {
    goto LABEL_17;
  }

  v7 = "alpha_unpremul";
LABEL_18:
  result = fprintf(a2, " %s", v7);
LABEL_19:
  v8 = *(a1 + 84);
  if (v8)
  {
    if (v8 == 1)
    {
      v9 = "edge_clamp";
    }

    else
    {
      v9 = "edge_unknown";
    }

    return fprintf(a2, " %s", v9);
  }

  return result;
}

uint64_t CI::TextureNode::add_args_to_hash(CI::TextureNode *this, CI::XXHashHelper *a2, uint64_t a3)
{
  if (*(this + 8))
  {
    __src = *(this + 8);
  }

  else
  {
    XXH64_update(a2, this + 48, 0x10uLL);
    __src = a3;
  }

  XXH64_update(a2, &__src, 8uLL);
  LODWORD(__src) = *(this + 20);
  XXH64_update(a2, &__src, 4uLL);
  LODWORD(__src) = *(this + 21);
  return XXH64_update(a2, &__src, 4uLL);
}

double CI::TextureNode::find_matching_roi(CI::TextureNode *this, const CGRect *a2)
{
  v4 = CI::Node::rois(this);
  x = a2->origin.x;
  y = a2->origin.y;
  width = a2->size.width;
  height = a2->size.height;
  v16.origin.x = (*(*this + 176))(this);
  v16.origin.y = v9;
  v16.size.width = v10;
  v16.size.height = v11;
  v14.origin.x = x;
  v14.origin.y = y;
  v14.size.width = width;
  v14.size.height = height;
  v15 = CGRectIntersection(v14, v16);

  return CI::SerialRectArray::smallestContainingRect(v4, v15);
}

void CI::TextureNode::add_roi(CI::TextureNode *this, unint64_t a2, unint64_t a3, CGRect a4, const CI::parentROI *a5)
{
  height = a4.size.height;
  width = a4.size.width;
  y = a4.origin.y;
  x = a4.origin.x;
  if (!CGRectIsEmpty(a4))
  {
    x = (*(*this + 176))(this);
    y = v13;
    width = v14;
    height = v15;
  }

  v16 = x;
  v17 = y;
  v18 = width;
  v19 = height;

  CI::Node::add_roi(this, a2, a3, *&v16, a5);
}

uint64_t CI::MetalTextureNode::format(CI::MetalTextureNode *this)
{
  v1 = (*(*this + 448))(this);
  Format = CIMetalTextureGetFormat(v1);

  return CIFormatFromCIMetalTextureFormat(Format, 0);
}

void CI::MetalTextureNode::graphviz_add_images(CI::MetalTextureNode *this, void *a2)
{
  if (CI_PRINT_TREE_dump_inputs() && (*(*this + 448))(this))
  {
    v4 = (*(*this + 448))(this);
    IOSurface = CIMetalTextureGetIOSurface(v4);
    if (IOSurface)
    {
      CGImage = SurfaceCreateCGImage(IOSurface, 0, 1);
      CIGVNodeAddImage(a2, CGImage);

      CGImageRelease(CGImage);
    }

    else
    {
      v7 = (*(*this + 424))(this);
      v8 = CI::format_bits_per_pixel(v7);
      v9 = CI::format_bits_per_component(v7);
      v10 = (*(*this + 432))(this) != 2 && (*(*this + 432))(this) != 6;
      v11 = CI::format_CGBitmapInfo(v7, v10);
      v12 = (*(*this + 448))(this);
      v13 = [v12 width];
      v14 = [v12 height];
      v15 = CI::format_bytes_per_row(v7, v13);
      v16 = [MEMORY[0x1E695DF88] dataWithLength:v15 * v14];
      memset(v20, 0, 24);
      v20[3] = v13;
      v20[4] = v14;
      v20[5] = 1;
      [v12 getBytes:objc_msgSend(v16 bytesPerRow:"mutableBytes") fromRegion:v15 mipmapLevel:{v20, 0}];
      v17 = CGDataProviderCreateWithCFData(v16);
      v18 = CGColorSpaceCreateWithName(*MEMORY[0x1E695F1C0]);
      v19 = CGImageCreate(v13, v14, v9, v8, v15, v18, v11, v17, 0, 0, kCGRenderingIntentDefault);
      if (v19)
      {
        CIGVNodeAddImage(a2, v19);
      }

      CGDataProviderRelease(v17);
      CGImageRelease(v19);
      CGColorSpaceRelease(v18);
    }
  }
}

void CI::MetalTextureNode::~MetalTextureNode(CI::MetalTextureNode *this)
{
  CI::MetalTextureNode::~MetalTextureNode(this);

  JUMPOUT(0x19EAF5590);
}

{
  *this = &unk_1F103C0B0;
  *(this + 5) = &unk_1F103C290;
  v3 = (this + 48);
  v2 = *(this + 6);
  if (v2)
  {
    CFRelease(v2);
  }

  v4 = *(this + 11);
  if (v4)
  {
    CFRelease(v4);
  }

  *this = &unk_1F103BEA8;
  *v3 = 0;
  v3[1] = 0;
  *(this + 5) = &unk_1F103C2B8;
  atomic_fetch_add(&dword_1ED7C47BC[54], 0xFFFFFFFF);

  CI::Node::~Node(this);
}

void CI::MetalTextureNode::release_resources(CI::MetalTextureNode *this)
{
  v2 = (*(*this + 448))(this);
  if (v2)
  {
    CFRelease(v2);
  }

  *(this + 6) = 0;
  *(this + 7) = 0;
  v3 = *(this + 11);
  if (v3)
  {
    CFRelease(v3);
    *(this + 11) = 0;
  }
}

uint64_t CI::MetalTextureNode::output_depth(CI::MetalTextureNode *this)
{
  v1 = (*(*this + 424))(this);
  if (CI::format_is_deep(v1))
  {
    return 1;
  }

  else
  {
    return 0xFFFFFFFFLL;
  }
}

CFTypeRef CI::MetalTextureNode::set_texture(uint64_t a1, _OWORD *a2, uint64_t a3)
{
  v6 = (*(*a1 + 448))(a1);
  if (v6)
  {
    CFRelease(v6);
  }

  *(a1 + 48) = *a2;
  *(a1 + 64) = a3;
  result = (*(*a1 + 448))(a1);
  if (result)
  {

    return CFRetain(result);
  }

  return result;
}

void non-virtual thunk toCI::MetalTextureNode::~MetalTextureNode(CI::MetalTextureNode *this)
{
  CI::MetalTextureNode::~MetalTextureNode((this - 40));
}

{
  CI::MetalTextureNode::~MetalTextureNode((this - 40));

  JUMPOUT(0x19EAF5590);
}

void sub_19CEC7968(_Unwind_Exception *a1)
{
  *v1 = &unk_1F103BEA8;
  *v2 = 0;
  v2[1] = 0;
  *(v1 + 5) = &unk_1F103C2B8;
  atomic_fetch_add(&dword_1ED7C47BC[54], 0xFFFFFFFF);
  CI::Node::~Node(v1);
  _Unwind_Resume(a1);
}

void *CI::InstanceCounted<(CI::Type)56>::~InstanceCounted(void *result)
{
  *result = &unk_1F103C2B8;
  atomic_fetch_add(&dword_1ED7C47BC[54], 0xFFFFFFFF);
  return result;
}

void CI::InstanceCounted<(CI::Type)56>::~InstanceCounted(void *a1)
{
  *a1 = &unk_1F103C2B8;
  atomic_fetch_add(&dword_1ED7C47BC[54], 0xFFFFFFFF);
  JUMPOUT(0x19EAF5590);
}

void CI::Node::Node(CI::Node *this)
{
  *(this + 2) = 1;
  *this = &unk_1F103C2E0;
  operator new();
}

void CI::Node::~Node(CI::Node *this)
{
  *this = &unk_1F103C2E0;
  v1 = *(this + 2);
  if (v1)
  {
    v2 = *(this + 2);
    std::vector<CI::SerialRectArray::roiData>::__destroy_vector::operator()[abi:nn200100](&v2);
    MEMORY[0x19EAF5590](v1, 0x20C40960023A9);
  }
}

unint64_t CI::hash_dag_node_id(unint64_t result, uint64_t a2, char *a3)
{
  if (result)
  {
    v5 = result;
    XXH64_reset(v6, 0);
    LODWORD(__src) = *(v5 + 36);
    XXH64_update(v6, &__src, 4uLL);
    __src = a2;
    XXH64_update(v6, &__src, 8uLL);
    if ((-286331153 * ((*(*(v5 + 16) + 8) - **(v5 + 16)) >> 3)) >= 2)
    {
      CI::XXHashHelper::addstr(v6, a3);
    }

    return XXH64_digest(v6);
  }

  return result;
}

uint64_t CI::hash_image_node_id(uint64_t this, const CI::Node *a2)
{
  if (this)
  {
    if ((-286331153 * ((*(*(this + 16) + 8) - **(this + 16)) >> 3)) <= 1)
    {
      v2 = 0;
    }

    else
    {
      v2 = a2 << 32;
    }

    return v2 | *(this + 36);
  }

  return this;
}

double CI::parentROI::roi(CI::parentROI *this)
{
  v2 = *(*this + 16);
  v3 = *(this + 2);
  __p = 0;
  v10 = 0;
  v11 = 0;
  v4 = *v2 + 120 * v3;
  v5 = *(v4 + 80);
  v6 = *(v4 + 16);
  v12[0] = *v4;
  v12[1] = v6;
  CI::SerialRectArray::recurseSubdivide(v12, v5, &__p);
  v7 = *(__p + 4 * *(this + 3));
  v10 = __p;
  operator delete(__p);
  return v7;
}

void CI::Node::clear_rois(CI::Node *this)
{
  v1 = *(this + 2);
  v3 = *v1;
  for (i = v1[1]; i != v3; std::allocator_traits<std::allocator<CI::SerialRectArray::roiData>>::destroy[abi:nn200100]<CI::SerialRectArray::roiData,void,0>(v1, i))
  {
    i -= 15;
  }

  v1[1] = v3;
}

void CI::Node::set_rois(CI::Node *this, const CI::SerialRectArray *a2)
{
  v2 = *(this + 2);
  if (v2 != a2)
  {
    std::vector<CI::SerialRectArray::roiData>::__assign_with_size[abi:nn200100]<CI::SerialRectArray::roiData*,CI::SerialRectArray::roiData*>(v2, *a2, *(a2 + 1), 0xEEEEEEEEEEEEEEEFLL * ((*(a2 + 1) - *a2) >> 3));
  }
}

void CI::SerialRectArray::unionRect(CGRect **this)
{
  v1 = *MEMORY[0x1E695F050];
  v2 = *(MEMORY[0x1E695F050] + 8);
  v3 = *(MEMORY[0x1E695F050] + 16);
  v4 = *(MEMORY[0x1E695F050] + 24);
  for (i = *this; i != this[1]; i = (i + 120))
  {
    *&v1 = CGRectUnion(*&v1, *i);
  }
}

void CI::Node::add_roi(CI::Node *this, unint64_t a2, unint64_t a3, CGRect a4, const CI::parentROI *a5)
{
  height = a4.size.height;
  width = a4.size.width;
  y = a4.origin.y;
  x = a4.origin.x;
  __p = 0;
  __dst = 0;
  v78 = 0;
  std::vector<CI::parentROI>::push_back[abi:nn200100](&__p, a5);
  v73 = x;
  v74 = y;
  v79.origin.x = x;
  v79.origin.y = y;
  r2 = width;
  v79.size.width = width;
  v12 = height;
  v79.size.height = height;
  IsEmpty = CGRectIsEmpty(v79);
  v14 = *(this + 2);
  v15 = *v14;
  v16 = v14[1];
  v17 = -286331153 * ((v16 - *v14) >> 3);
  if (!IsEmpty)
  {
    if (v17 < 1)
    {
      goto LABEL_85;
    }

    v20 = 0;
    v21 = a3;
    while (1)
    {
      v22 = -286331153 * ((v16 - v15) >> 3);
      if (v20 < v22)
      {
        v23 = v20;
        v24 = 120 * v20 + 40;
        do
        {
          v25 = *(v15 + v24 - 40);
          v26 = *(v15 + v24 - 32);
          v27 = *(v15 + v24 - 24);
          v28 = *(v15 + v24 - 16);
          v80.origin.x = v25;
          v80.origin.y = v26;
          v80.size.width = v27;
          v80.size.height = v28;
          if (!CGRectIsEmpty(v80))
          {
            v81.origin.x = v25;
            v81.origin.y = v26;
            v81.size.width = v27;
            v81.size.height = v28;
            v95.origin.x = v73;
            v95.origin.y = v74;
            v95.size.width = r2;
            v95.size.height = v12;
            v82 = CGRectUnion(v81, v95);
            if (v82.size.width <= v21 && v82.size.height <= v21)
            {
              v30 = (**(this + 2) + v24);
              v31 = *(v30 - 1);
              if (*v30 != v31 && __dst != __p)
              {
                v32 = v82.size.width;
                v33 = v82.size.height;
                if (CI::parentROI::operator==(v31, __p) && v32 * v33 < (r2 * v12 + v27 * v28) * 1.1)
                {
                  std::vector<CI::parentROI>::__insert_with_size[abi:nn200100]<std::__wrap_iter<CI::parentROI const*>,std::__wrap_iter<CI::parentROI const*>>(&__p, __dst, *(**(this + 2) + v24 - 8), *(**(this + 2) + v24), 0xAAAAAAAAAAAAAAABLL * ((*(**(this + 2) + v24) - *(**(this + 2) + v24 - 8)) >> 4));
                  v83.origin.x = v73;
                  v83.origin.y = v74;
                  v83.size.width = r2;
                  v83.size.height = v12;
                  v96.origin.x = v25;
                  v96.origin.y = v26;
                  v96.size.width = v27;
                  v96.size.height = v28;
                  v84 = CGRectUnion(v83, v96);
                  v73 = v84.origin.x;
                  v74 = v84.origin.y;
                  r2 = v84.size.width;
                  v12 = v84.size.height;
                  CI::SerialRectArray::remove(*(this + 2), v23);
                  v20 = 0;
                  v14 = *(this + 2);
                  v15 = *v14;
                  v16 = v14[1];
                  v22 = -286331153 * ((v16 - *v14) >> 3);
                  goto LABEL_23;
                }
              }
            }
          }

          ++v23;
          v14 = *(this + 2);
          v15 = *v14;
          v16 = v14[1];
          v22 = -286331153 * ((v16 - *v14) >> 3);
          v24 += 120;
        }

        while (v23 < v22);
        v20 = v23;
      }

LABEL_23:
      if (v20 >= v22)
      {
        if (v22 < 1)
        {
          goto LABEL_85;
        }

        v34 = 0;
        do
        {
          v35 = -286331153 * ((v16 - v15) >> 3);
          if (v34 >= v35)
          {
            continue;
          }

          v36 = v34;
          v37 = 120 * v34;
          while (1)
          {
            v38 = *(v15 + v37);
            v39 = *(v15 + v37 + 8);
            v40 = *(v15 + v37 + 16);
            v41 = *(v15 + v37 + 24);
            v85.origin.x = v38;
            v85.origin.y = v39;
            v85.size.width = v40;
            v85.size.height = v41;
            if (!CGRectIsEmpty(v85))
            {
              v86.origin.x = v38;
              v86.origin.y = v39;
              v86.size.width = v40;
              v86.size.height = v41;
              v97.origin.x = v73;
              v97.origin.y = v74;
              v97.size.width = r2;
              v97.size.height = v12;
              v87 = CGRectUnion(v86, v97);
              if (v87.size.width <= v21 && v87.size.height <= v21)
              {
                v43 = v40 * v41;
                if (v40 * v41 >= r2 * v12)
                {
                  v43 = r2 * v12;
                }

                if (v87.size.width * v87.size.height < v43 * 1.1)
                {
                  break;
                }
              }
            }

            ++v36;
            v14 = *(this + 2);
            v15 = *v14;
            v16 = v14[1];
            v35 = -286331153 * ((v16 - *v14) >> 3);
            v37 += 120;
            if (v36 >= v35)
            {
              v34 = v36;
              goto LABEL_42;
            }
          }

          std::vector<CI::parentROI>::__insert_with_size[abi:nn200100]<std::__wrap_iter<CI::parentROI const*>,std::__wrap_iter<CI::parentROI const*>>(&__p, __dst, *(**(this + 2) + v37 + 32), *(**(this + 2) + v37 + 40), 0xAAAAAAAAAAAAAAABLL * ((*(**(this + 2) + v37 + 40) - *(**(this + 2) + v37 + 32)) >> 4));
          v88.origin.x = v73;
          v88.origin.y = v74;
          v88.size.width = r2;
          v88.size.height = v12;
          v98.origin.x = v38;
          v98.origin.y = v39;
          v98.size.width = v40;
          v98.size.height = v41;
          v89 = CGRectUnion(v88, v98);
          v73 = v89.origin.x;
          v74 = v89.origin.y;
          r2 = v89.size.width;
          v12 = v89.size.height;
          CI::SerialRectArray::remove(*(this + 2), v36);
          v34 = 0;
          v14 = *(this + 2);
          v15 = *v14;
          v16 = v14[1];
          v35 = -286331153 * ((v16 - *v14) >> 3);
LABEL_42:
          ;
        }

        while (v34 < v35);
        if (v35 < 1)
        {
          goto LABEL_85;
        }

        LODWORD(v44) = 0;
LABEL_45:
        LODWORD(v45) = -286331153 * ((v16 - v15) >> 3);
        if (v44 >= v45)
        {
          goto LABEL_84;
        }

        v72 = r2 * v12;
        v44 = v44;
        while (1)
        {
          v46 = (v15 + 120 * v44);
          v47 = *v46;
          v48 = v46[1];
          v49 = v46[2];
          v50 = v46[3];
          v90.origin.x = *v46;
          v90.origin.y = v48;
          v90.size.width = v49;
          v90.size.height = v50;
          if (!CGRectIsEmpty(v90))
          {
            v91.origin.x = v47;
            v91.origin.y = v48;
            v91.size.width = v49;
            v91.size.height = v50;
            v99.origin.x = v73;
            v99.origin.y = v74;
            v99.size.width = r2;
            v99.size.height = v12;
            v92 = CGRectUnion(v91, v99);
            v51 = v92.size.width <= v21 && v92.size.height <= v21;
            if (v51 && a2 != 0)
            {
              v53 = v92.size.width;
              v54 = v92.size.height;
              if ((*(*this + 328))(this, v92.origin, *&v92.origin.y))
              {
                v55 = __p;
                if (__p == __dst)
                {
LABEL_66:
                  v60 = r2 * v12;
                  if (v72 >= v49 * v50)
                  {
                    v60 = v49 * v50;
                  }

                  v71 = v60;
                  v61 = (*(*this + 328))(this);
                  v62 = CI::format_bytes_per_pixel(v61);
                  v63 = __p;
                  if (__p == __dst)
                  {
                    v64 = 0;
                  }

                  else
                  {
                    v64 = 0;
                    do
                    {
                      if (v64 <= *(**(*v63 + 16) + 120 * v63[2] + 88))
                      {
                        v64 = *(**(*v63 + 16) + 120 * v63[2] + 88);
                      }

                      v63 += 12;
                    }

                    while (v63 != __dst);
                  }

                  v65 = **(this + 2) + 120 * v44;
                  v66 = *(v65 + 32);
                  v67 = *(v65 + 40);
                  v68 = v66;
                  if (v66 != v67)
                  {
                    do
                    {
                      if (v64 <= *(**(*v68 + 16) + 120 * v68[2] + 88))
                      {
                        v64 = *(**(*v68 + 16) + 120 * v68[2] + 88);
                      }

                      v68 += 12;
                    }

                    while (v68 != v67);
                  }

                  v69 = v53 * v54;
                  v70 = r2 * v12;
                  if (v72 < v49 * v50)
                  {
                    v70 = v49 * v50;
                  }

                  if (v69 < v70 * 1.1 && (v69 - v71) * v62 + v64 < a2)
                  {
                    std::vector<CI::parentROI>::__insert_with_size[abi:nn200100]<std::__wrap_iter<CI::parentROI const*>,std::__wrap_iter<CI::parentROI const*>>(&__p, __dst, v66, v67, 0xAAAAAAAAAAAAAAABLL * ((v67 - v66) >> 4));
                    v93.origin.x = v73;
                    v93.origin.y = v74;
                    v93.size.width = r2;
                    v93.size.height = v12;
                    v100.origin.x = v47;
                    v100.origin.y = v48;
                    v100.size.width = v49;
                    v100.size.height = v50;
                    v94 = CGRectUnion(v93, v100);
                    v73 = v94.origin.x;
                    v74 = v94.origin.y;
                    r2 = v94.size.width;
                    v12 = v94.size.height;
                    CI::SerialRectArray::remove(*(this + 2), v44);
                    LODWORD(v44) = 0;
                    v14 = *(this + 2);
                    v15 = *v14;
                    v16 = v14[1];
                    LODWORD(v45) = -286331153 * ((v16 - *v14) >> 3);
LABEL_84:
                    if (v44 >= v45)
                    {
LABEL_85:
                      CI::SerialRectArray::append(v14, &__p, v73, v74, r2, v12);
                      goto LABEL_86;
                    }

                    goto LABEL_45;
                  }
                }

                else
                {
                  v56 = **(this + 2) + 120 * v44;
                  v57 = *(v56 + 32);
                  v58 = *(v56 + 40);
                  while (v57 == v58)
                  {
LABEL_65:
                    v55 += 6;
                    if (v55 == __dst)
                    {
                      goto LABEL_66;
                    }
                  }

                  v59 = v57;
                  while (*v55 != *v59)
                  {
                    v59 += 6;
                    if (v59 == v58)
                    {
                      goto LABEL_65;
                    }
                  }
                }
              }
            }
          }

          ++v44;
          v14 = *(this + 2);
          v15 = *v14;
          v16 = v14[1];
          v45 = 0xEEEEEEEEEEEEEEEFLL * ((v16 - *v14) >> 3);
          if (v44 >= v45)
          {
            goto LABEL_84;
          }
        }
      }
    }
  }

  if (v17 < 1)
  {
    goto LABEL_85;
  }

  v18 = 0;
  v19 = 0;
  while (!CGRectIsEmpty(*(v15 + v18)))
  {
    ++v19;
    v14 = *(this + 2);
    v15 = *v14;
    v18 += 120;
    if (v19 >= (-286331153 * ((v14[1] - *v14) >> 3)))
    {
      goto LABEL_85;
    }
  }

  std::vector<CI::parentROI>::__insert_with_size[abi:nn200100]<std::__wrap_iter<CI::parentROI const*>,std::__wrap_iter<CI::parentROI const*>>(&__p, __dst, *(**(this + 2) + v18 + 32), *(**(this + 2) + v18 + 40), 0xAAAAAAAAAAAAAAABLL * ((*(**(this + 2) + v18 + 40) - *(**(this + 2) + v18 + 32)) >> 4));
  CI::SerialRectArray::replace(*(this + 2), &__p, v19, *MEMORY[0x1E695F050], *(MEMORY[0x1E695F050] + 8), *(MEMORY[0x1E695F050] + 16), *(MEMORY[0x1E695F050] + 24));
LABEL_86:
  if (__p)
  {
    __dst = __p;
    operator delete(__p);
  }
}

void std::vector<CI::parentROI>::push_back[abi:nn200100](uint64_t a1, __int128 *a2)
{
  v4 = *(a1 + 8);
  v5 = *(a1 + 16);
  if (v4 >= v5)
  {
    v9 = 0xAAAAAAAAAAAAAAABLL * ((v4 - *a1) >> 4);
    v10 = v9 + 1;
    if (v9 + 1 > 0x555555555555555)
    {
      std::vector<CI::SWRendererFunctionInputNode>::__throw_length_error[abi:nn200100]();
    }

    v11 = 0xAAAAAAAAAAAAAAABLL * ((v5 - *a1) >> 4);
    if (2 * v11 > v10)
    {
      v10 = 2 * v11;
    }

    if (v11 >= 0x2AAAAAAAAAAAAAALL)
    {
      v12 = 0x555555555555555;
    }

    else
    {
      v12 = v10;
    }

    if (v12)
    {
      std::__allocate_at_least[abi:nn200100]<std::allocator<CI::parentROI>>(a1, v12);
    }

    v13 = 48 * v9;
    v14 = *a2;
    v15 = a2[2];
    *(v13 + 16) = a2[1];
    *(v13 + 32) = v15;
    *v13 = v14;
    v8 = 48 * v9 + 48;
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
    v7 = a2[2];
    v4[1] = a2[1];
    v4[2] = v7;
    *v4 = v6;
    v8 = (v4 + 3);
  }

  *(a1 + 8) = v8;
}

void CI::SerialRectArray::remove(CI::SerialRectArray *this, int a2)
{
  std::__move_impl<std::_ClassicAlgPolicy>::operator()[abi:nn200100]<CI::SerialRectArray::roiData *,CI::SerialRectArray::roiData *,CI::SerialRectArray::roiData *>(&v6, *this + 120 * a2 + 120, *(this + 1), (*this + 120 * a2));
  v4 = v3;
  v5 = *(this + 1);
  if (v5 != v3)
  {
    do
    {
      v5 -= 15;
      std::allocator_traits<std::allocator<CI::SerialRectArray::roiData>>::destroy[abi:nn200100]<CI::SerialRectArray::roiData,void,0>(this, v5);
    }

    while (v5 != v4);
  }

  *(this + 1) = v4;
}

void CI::SerialRectArray::append(uint64_t *a1, char **a2, double a3, double a4, double a5, double a6)
{
  v17 = 0u;
  *v16 = 0u;
  *v15 = 0u;
  *&v18[8] = 0u;
  v19 = 0u;
  v20 = CGRectStandardize(*&a3);
  *&v13 = v20.origin.x;
  *(&v13 + 1) = *&v20.origin.y;
  *&v14 = v20.size.width;
  *(&v14 + 1) = *&v20.size.height;
  *v18 = 1;
  if (v15 != a2)
  {
    std::vector<CI::parentROI>::__assign_with_size[abi:nn200100]<CI::parentROI*,CI::parentROI*>(v15, *a2, a2[1], 0xAAAAAAAAAAAAAAABLL * ((a2[1] - *a2) >> 4));
  }

  v8 = a1[1];
  if (v8 >= a1[2])
  {
    v12 = std::vector<CI::SerialRectArray::roiData>::__emplace_back_slow_path<CI::SerialRectArray::roiData const&>(a1, &v13);
  }

  else
  {
    v9 = v13;
    v10 = v14;
    *(v8 + 32) = 0;
    *v8 = v9;
    *(v8 + 16) = v10;
    *(v8 + 40) = 0;
    *(v8 + 48) = 0;
    if (v15[1] != v15[0])
    {
      std::vector<CI::parentROI>::__vallocate[abi:nn200100](v8 + 32, 0xAAAAAAAAAAAAAAABLL * ((v15[1] - v15[0]) >> 4));
    }

    *(v8 + 56) = 0;
    *(v8 + 64) = 0;
    *(v8 + 72) = 0;
    if (v17 != v16[1])
    {
      std::vector<CI::parentROI>::__vallocate[abi:nn200100](v8 + 56, 0xAAAAAAAAAAAAAAABLL * ((v17 - v16[1]) >> 4));
    }

    v11 = *v18;
    *(v8 + 96) = 0;
    *(v8 + 80) = v11;
    *(v8 + 104) = 0;
    *(v8 + 112) = 0;
    if (v19 != *&v18[16])
    {
      std::vector<unsigned long>::__vallocate[abi:nn200100](v8 + 96, (v19 - *&v18[16]) >> 3);
    }

    v12 = v8 + 120;
  }

  a1[1] = v12;
  if (*&v18[16])
  {
    *&v19 = *&v18[16];
    operator delete(*&v18[16]);
  }

  if (v16[1])
  {
    *&v17 = v16[1];
    operator delete(v16[1]);
  }

  if (v15[0])
  {
    v15[1] = v15[0];
    operator delete(v15[0]);
  }
}

void CI::Node::remove_parentROI(CI::SerialRectArray **a1, const CI::parentROI *a2, uint64_t a3, uint64_t a4, dispatch_object_t object)
{
  dispatch_retain(object);
  v10 = *(a4 + 96);
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 0x40000000;
  block[2] = ___ZN2CI4Node16remove_parentROIERKNS_9parentROIERKNS_6roiKeyEPNS_14TextureManagerEPv_block_invoke;
  block[3] = &__block_descriptor_tmp_28;
  block[4] = object;
  dispatch_async(v10, block);
  v31 = a3;
  v11 = *(a3 + 8);
  CI::SerialRectArray::removeTile(a1[2], v11, a2);
  v12 = (*(*a1 + 2))(a1);
  v13 = (CI::is_image_type(v12) & 1) != 0 || *(*a1[2] + 120 * v11 + 40) == *(*a1[2] + 120 * v11 + 32);
  v30 = v13;
  intermediate_for_node = CI::TextureManager::get_intermediate_for_node(a4, v31);
  if (intermediate_for_node && (v15 = intermediate_for_node, (**intermediate_for_node)(intermediate_for_node)) && (v16 = (*(*a1 + 2))(a1), CI::is_image_type(v16)) && (v17 = (**v15)(v15), IOSurfaceGetPlaneCount(v17) >= 2))
  {
    v18 = (**v15)(v15);
    PlaneCount = IOSurfaceGetPlaneCount(v18);
    if (!PlaneCount)
    {
      return;
    }
  }

  else
  {
    PlaneCount = 1;
  }

  v19 = 0;
  v33 = a4;
  do
  {
    v32 = v19;
    v20 = CI::TextureManager::release_intermediate_for_node(a4, v31);
    if (v30)
    {
      v21 = v20;
      v22 = *a1;
      if (v20)
      {
        v23 = (*(v22 + 2))(a1);
        v25 = *(v33 + 88);
        v24 = *(v33 + 96);
        v34[0] = MEMORY[0x1E69E9820];
        v34[1] = 0x40000000;
        v34[2] = ___ZN2CI4Node16remove_parentROIERKNS_9parentROIERKNS_6roiKeyEPNS_14TextureManagerEPv_block_invoke_3;
        v34[3] = &__block_descriptor_tmp_3_5;
        v35 = v23;
        v34[4] = v33;
        v34[5] = v21;
        dispatch_group_async(v25, v24, v34);
      }

      else if ((*(v22 + 5))(a1) >= 1)
      {
        v26 = 0;
        do
        {
          if (*(*a1[2] + 120 * v11 + 80) >= 1)
          {
            v27 = 0;
            do
            {
              *&v44 = a1;
              *(&v44 + 1) = __PAIR64__(v27, v11);
              v45 = v26 | 0xFFFFFFFF00000000;
              *&v46 = 0;
              DWORD2(v46) = 0;
              v28 = *((*(*a1 + 6))(a1, v26) + 16);
              v36[0] = MEMORY[0x1E69E9820];
              v36[1] = 0x40000000;
              v39 = v46;
              v38 = v45;
              v36[2] = ___ZN2CI4Node16remove_parentROIERKNS_9parentROIERKNS_6roiKeyEPNS_14TextureManagerEPv_block_invoke_2;
              v36[3] = &__block_descriptor_tmp_2_2;
              v37 = v44;
              v42 = v26;
              v36[4] = a1;
              v40 = v33;
              v41 = object;
              CI::SerialRectArray::findParentROI(v28, &v44, v36, v43);
              std::__tree<std::__value_type<unsigned long long,CI::DAGHelper::ImageArgInfo>,std::__map_value_compare<unsigned long long,std::__value_type<unsigned long long,CI::DAGHelper::ImageArgInfo>,std::less<unsigned long long>,true>,std::allocator<std::__value_type<unsigned long long,CI::DAGHelper::ImageArgInfo>>>::destroy(v43, v43[1]);
              ++v27;
            }

            while (v27 < *(*a1[2] + 120 * v11 + 80));
          }

          v26 = (v26 + 1);
        }

        while (v26 < (*(*a1 + 5))(a1));
      }
    }

    v19 = v32 + 1;
    a4 = v33;
  }

  while (v32 + 1 != PlaneCount);
}

void ___ZN2CI4Node16remove_parentROIERKNS_9parentROIERKNS_6roiKeyEPNS_14TextureManagerEPv_block_invoke(uint64_t a1)
{
  dispatch_group_wait(*(a1 + 32), 0xFFFFFFFFFFFFFFFFLL);
  v2 = *(a1 + 32);

  dispatch_release(v2);
}

void CI::SerialRectArray::removeTile(CI::SerialRectArray *this, int a2, const CI::parentROI *a3)
{
  v3 = *this + 120 * a2;
  v5 = *(v3 + 32);
  v4 = *(v3 + 40);
  v6 = v3 + 32;
  if (v5 != v4)
  {
    v10 = (v5 + 3);
    while (!CI::parentROI::operator==(v5, a3))
    {
      v5 += 3;
      v10 += 48;
      if (v5 == *(v6 + 8))
      {
        return;
      }
    }

    std::vector<CI::parentROI>::push_back[abi:nn200100](*this + 120 * a2 + 56, v5);
    v11 = *(v6 + 8);
    v12 = v11 - v10;
    if (v11 != v10)
    {
      memmove(v10 - 48, v10, v11 - v10);
    }

    *(v6 + 8) = &v10[v12 - 48];
  }
}

uint64_t ___ZN2CI4Node16remove_parentROIERKNS_9parentROIERKNS_6roiKeyEPNS_14TextureManagerEPv_block_invoke_2(uint64_t a1, uint64_t a2, int a3)
{
  v5 = *(a1 + 32);
  v6 = *(a1 + 56);
  v11 = *(a1 + 40);
  v12 = v6;
  v13 = *(a1 + 72);
  DWORD1(v12) = *(a2 + 20);
  v7 = (*(*v5 + 48))(v5, *(a1 + 104));
  v9 = (*(*v5 + 48))(v5, *(a1 + 104));
  v10 = a3;
  return CI::Node::remove_parentROI(v7, &v11, &v9, *(a1 + 88), *(a1 + 96));
}

void CI::Node::regions_of_child(CI::Node *this@<X0>, CGRect a2@<0:D0, 8:D1, 16:D2, 24:D3>, uint64_t a3@<X1>, void *a4@<X8>)
{
  if ((a3 & 0x80000000) != 0)
  {
    goto LABEL_47;
  }

  height = a2.size.height;
  width = a2.size.width;
  y = a2.origin.y;
  x = a2.origin.x;
  if (CGRectIsEmpty(a2))
  {
    goto LABEL_47;
  }

  v55 = 0u;
  v56 = 0u;
  v11 = (*(*this + 80))(this, a3, x, y, width, height);
  v13 = v12;
  v15 = v14;
  v17 = v16;
  v18 = (*(*this + 48))(this, a3);
  v19 = (*(*v18 + 368))();
  if (v19 * v20)
  {
    v21 = v19;
    v22 = v20;
    v58.origin.x = v11;
    v58.origin.y = v13;
    v58.size.width = v15;
    v58.size.height = v17;
    if (CGRectIsNull(v58))
    {
      v23 = 0;
      v24 = 0;
      v25 = 0x7FFFFFFF;
LABEL_6:
      if (v25 != 0x7FFFFFFF || v23)
      {
        v26 = 0x7FFFFFFF;
      }

      else
      {
        v26 = 0x7FFFFFFF;
        if (!v24)
        {
          v27 = MEMORY[0x1E695F050];
LABEL_29:
          v11 = *v27;
          v13 = v27[1];
          v15 = v27[2];
          v17 = v27[3];
LABEL_32:
          *&v55 = v11;
          *(&v55 + 1) = v13;
          *&v56 = v15;
          *(&v56 + 1) = v17;
          goto LABEL_33;
        }
      }

      goto LABEL_31;
    }

    v59.origin.x = v11;
    v59.origin.y = v13;
    v59.size.width = v15;
    v59.size.height = v17;
    if (CGRectIsInfinite(v59))
    {
      v24 = 0xFFFFFFFFLL;
      v23 = 0xFFFFFFFFLL;
      v25 = -2147483647;
      v26 = -2147483647;
    }

    else
    {
      v60.origin.x = v11;
      v60.origin.y = v13;
      v60.size.width = v15;
      v60.size.height = v17;
      v61 = CGRectInset(v60, 0.000001, 0.000001);
      v62 = CGRectIntegral(v61);
      v26 = v62.origin.x;
      v25 = v62.origin.y;
      v23 = v62.size.width;
      v24 = v62.size.height;
    }

    if (v26 == -2147483647 && v25 == -2147483647 && v23 == 0xFFFFFFFF)
    {
      v25 = -2147483647;
      v23 = 0xFFFFFFFFLL;
      if (!v24 || v24 == 0xFFFFFFFF)
      {
        goto LABEL_25;
      }
    }

    else if (!v23 || !v24)
    {
LABEL_22:
      if (v26 != -2147483647)
      {
        if (v26 != 0x7FFFFFFF)
        {
          goto LABEL_31;
        }

        goto LABEL_6;
      }

LABEL_25:
      v26 = -2147483647;
      if (v25 == -2147483647 && v23 == 0xFFFFFFFF && v24 == 0xFFFFFFFF)
      {
        v27 = MEMORY[0x1E695F040];
        goto LABEL_29;
      }

LABEL_31:
      v11 = v26;
      v13 = v25;
      v15 = v23;
      v17 = v24;
      goto LABEL_32;
    }

    v28 = v21 + v26 + v23 - 1;
    v29 = v22 + v24 + v25 - 1;
    v26 = v26 / v21 * v21;
    v25 = v25 / v22 * v22;
    v23 = (v28 - v26 - v28 % v21);
    v24 = (v29 - v25 - v29 % v22);
    goto LABEL_22;
  }

LABEL_33:
  v30 = (*(*v18 + 168))(v18);
  v32 = v31;
  v34 = v33;
  v36 = v35;
  v37 = (*(*v18 + 176))(v18);
  v52 = v38;
  v53 = v37;
  v50 = v40;
  v51 = v39;
  v41 = (*(*v18 + 16))(v18) >= 47 && (*(*v18 + 16))(v18) < 50;
  v42 = (*(*v18 + 16))(v18);
  if (v41 && (v63.origin.x = v30, v63.origin.y = v32, v63.size.width = v34, v63.size.height = v36, !CGRectIsInfinite(v63)))
  {
    if ((v18[293] & 1) == 0)
    {
      goto LABEL_43;
    }
  }

  else if (v42 == 51)
  {
    v64.origin.x = v30;
    v64.origin.y = v32;
    v64.size.width = v34;
    v64.size.height = v36;
    if (!CGRectIsInfinite(v64) && (v18[140] & 1) == 0)
    {
      *(&v56 + 1) = v36;
LABEL_43:
      v17 = v36;
      v15 = v34;
      v13 = v32;
      v11 = v30;
    }
  }

  v65.origin.x = v30;
  v65.origin.y = v32;
  v65.size.width = v34;
  v65.size.height = v36;
  if (CGRectIsInfinite(v65))
  {
    v66.origin.y = v52;
    v66.origin.x = v53;
    v66.size.height = v50;
    v66.size.width = v51;
    IsInfinite = CGRectIsInfinite(v66);
    if (!IsInfinite)
    {
      v71.origin.x = v11;
      v71.origin.y = v13;
      v71.size.width = v15;
      v71.size.height = v17;
      v77.origin.y = v52;
      v77.origin.x = v53;
      v77.size.height = v50;
      v77.size.width = v51;
      CI::ClampNode::adjust_roi_for_clamp_rect(IsInfinite, v71, v77);
      v54 = CGRectIntegral(v72);
      a4[1] = 0;
      a4[2] = 0;
      *a4 = 0;
      v49 = &v54;
      goto LABEL_55;
    }
  }

  v67.origin.x = v30;
  v67.origin.y = v32;
  v67.size.width = v34;
  v67.size.height = v36;
  v76 = CGRectInset(v67, -1.0, -1.0);
  v68.origin.x = v11;
  v68.origin.y = v13;
  v68.size.width = v15;
  v68.size.height = v17;
  v69 = CGRectIntersection(v68, v76);
  v44 = v69.origin.x;
  v45 = v69.origin.y;
  v46 = v69.size.width;
  v47 = v69.size.height;
  if (!CGRectIsEmpty(v69))
  {
    v70.origin.x = v44;
    v70.origin.y = v45;
    v70.size.width = v46;
    v70.size.height = v47;
    if (CGRectIsInfinite(v70))
    {
      *a4 = 0;
      a4[1] = 0;
      a4[2] = 0;
      v48 = MEMORY[0x1E695F040];
      goto LABEL_48;
    }

    v73.origin.x = v44;
    v73.origin.y = v45;
    v73.size.width = v46;
    v73.size.height = v47;
    v74 = CGRectInset(v73, 0.001, 0.001);
    v75 = CGRectIntegral(v74);
    *&v55 = v75.origin.x;
    *(&v55 + 1) = *&v75.origin.y;
    *&v56 = v75.size.width;
    *(&v56 + 1) = *&v75.size.height;
    a4[1] = 0;
    a4[2] = 0;
    *a4 = 0;
    v49 = &v55;
LABEL_55:
    std::vector<CGRect>::push_back[abi:nn200100](a4, v49);
    return;
  }

LABEL_47:
  *a4 = 0;
  a4[1] = 0;
  a4[2] = 0;
  v48 = MEMORY[0x1E695F050];
LABEL_48:

  std::vector<CGRect>::push_back[abi:nn200100](a4, v48);
}