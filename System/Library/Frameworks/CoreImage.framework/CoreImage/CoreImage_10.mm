uint64_t CI::Perspective::LSRUpdateFit<EDAnchor>(uint64_t result)
{
  v1 = *(result + 8);
  if (v1)
  {
    v2 = *(result + 16);
    v3 = *(result + 20);
    v4 = v1;
    v5 = v2 / v1;
    v6 = *result;
    v7 = *result + 4 * v1;
    v8 = *(result + 32);
    v9 = *(result + 44);
    v10 = *(result + 48) - v9;
    v11 = v3 / v4;
    if ((*(result + 40) - *(result + 36)) <= v10)
    {
      LOWORD(v10) = v6[1];
      v16 = LODWORD(v10);
      LOWORD(v9) = *(v7 - 2);
      v17 = LODWORD(v9);
      v18 = *(result + 28) - ((v3 * v3) / v4);
      if (v18 == 0.0)
      {
        v19 = 0.0;
      }

      else
      {
        v19 = (v8 - ((v2 * v3) / v4)) / v18;
      }

      v21 = v5 - (v19 * v11);
      if (v19 != 0.0)
      {
        v5 = v21;
      }

      *(result + 72) = -1082130432;
      *(result + 76) = v19;
      *(result + 80) = v5;
      *&v22 = v5 + (v19 * v16);
      *(&v22 + 1) = v16;
      *(result + 56) = v22;
      *&v13 = v5 + (v19 * v17);
      *(&v13 + 1) = v17;
    }

    else
    {
      LOWORD(v10) = *v6;
      *&v12 = LODWORD(v10);
      LOWORD(v10) = *(v7 - 4);
      *&v13 = LODWORD(v10);
      v14 = *(result + 24) - ((v2 * v2) / v4);
      if (v14 == 0.0)
      {
        v15 = 0.0;
      }

      else
      {
        v15 = (v8 - ((v2 * v3) / v4)) / v14;
      }

      v20 = v11 - (v15 * v5);
      if (v15 == 0.0)
      {
        v20 = v3 / v4;
      }

      *(result + 72) = v15;
      *(result + 76) = -1082130432;
      *(result + 80) = v20;
      *(&v12 + 1) = v20 + (v15 * *&v12);
      *(result + 56) = v12;
      *(&v13 + 1) = v20 + (v15 * *&v13);
    }

    *(result + 64) = v13;
  }

  return result;
}

uint64_t ___ZL13EDLines_Debugv_block_invoke()
{
  v0 = getenv("EDLINES_DEBUG");
  if (v0)
  {
    result = atoi(v0);
  }

  else
  {
    result = EDLines_Debug(void)::v;
  }

  EDLines_Debug(void)::v = result != 0;
  return result;
}

void std::__allocate_at_least[abi:nn200100]<std::allocator<EDChain>>(uint64_t a1, unint64_t a2)
{
  if (!(a2 >> 60))
  {
    operator new();
  }

  std::vector<CI::SWRendererFunctionInputNode>::__throw_length_error[abi:nn200100]();
}

uint64_t std::__split_buffer<std::vector<CI::Perspective::LSR<EDAnchor>>>::~__split_buffer(uint64_t a1)
{
  std::__split_buffer<std::vector<CI::Perspective::LSR<EDAnchor>>>::__destruct_at_end[abi:nn200100](a1, *(a1 + 8));
  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

void std::__split_buffer<std::vector<CI::Perspective::LSR<EDAnchor>>>::__destruct_at_end[abi:nn200100](uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  while (v2 != a2)
  {
    v5 = *(v2 - 24);
    *(a1 + 16) = v2 - 24;
    if (v5)
    {
      *(v2 - 16) = v5;
      operator delete(v5);
      v2 = *(a1 + 16);
    }

    else
    {
      v2 -= 24;
    }
  }
}

void std::__allocate_at_least[abi:nn200100]<std::allocator<CI::Perspective::LSR<EDAnchor>>>(uint64_t a1, unint64_t a2)
{
  if (a2 < 0x2E8BA2E8BA2E8BBLL)
  {
    operator new();
  }

  std::vector<CI::SWRendererFunctionInputNode>::__throw_length_error[abi:nn200100]();
}

void CI::SWContext::SWContext(uint64_t a1, uint64_t a2, uint64_t a3, int a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  if (a4)
  {
    v13 = a4;
    if (CI::format_bits_per_component(a4) > 8)
    {
      goto LABEL_6;
    }

    v14 = ci_logger_api();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&dword_19CC36000, v14, OS_LOG_TYPE_INFO, "Software context does not yet support 8bit working format", buf, 2u);
    }
  }

  v13 = 2056;
LABEL_6:
  CI::Context::Context(a1, a2, a3, v13, a5, a6, a7, 0);
}

void CI::SWContext::~SWContext(CI::SWContext *this)
{
  *this = &unk_1F1033090;
  *(this + 48) = &unk_1F1033318;
  v2 = *(this + 52);
  if (v2)
  {
    CFRelease(v2);
    *(this + 52) = 0;
  }

  v3 = *(this + 49);
  if (v3)
  {
    CI::Object::unref(v3);
  }

  v4 = *(this + 51);
  *(this + 51) = 0;
  if (v4)
  {
    (*(*v4 + 40))(v4);
  }

  *(this + 48) = &unk_1F10334C8;
  atomic_fetch_add(&dword_1ED7C47BC[81], 0xFFFFFFFF);

  CI::Context::~Context(this);
}

{
  CI::SWContext::~SWContext(this);

  JUMPOUT(0x19EAF5590);
}

void non-virtual thunk toCI::SWContext::~SWContext(CI::SWContext *this)
{
  CI::SWContext::~SWContext((this - 384));
}

{
  CI::SWContext::~SWContext((this - 384));

  JUMPOUT(0x19EAF5590);
}

void *CI::SWContext::deviceName(CI::SWContext *this)
{
  if (CI::SWContext::deviceName(void)const::onceToken != -1)
  {
    CI::SWContext::deviceName();
  }

  return &CI::SWContext::deviceName(void)const::name;
}

double CI::SWContext::sampler_transform_for_extent@<D0>(const CGRect *a1@<X1>, double *a2@<X8>)
{
  y = a1->origin.y;
  v4 = 1.0 / a1->size.height;
  v5 = a1->origin.x * -0.0 - y * v4 + 0.0;
  v6 = 1.0 / a1->size.width;
  v7 = y * -0.0 - a1->origin.x * v6;
  *a2 = v6 + 0.0;
  a2[1] = v4 * 0.0 + 0.0;
  a2[2] = v6 * 0.0 + 0.0;
  a2[3] = v4 + 0.0;
  result = v7 + 0.0;
  a2[4] = result;
  a2[5] = v5;
  return result;
}

uint64_t CI::SWContext::format_is_directly_supported_for_input(uint64_t a1, int a2)
{
  if (CI::format_is_ycc_biplanar(a2) || CI::format_is_rgb_biplanar(a2))
  {
    v4 = CI::format_of_plane(a2, 0);
    v5 = CI::format_of_plane(a2, 1);
    LODWORD(v4) = (*(*a1 + 432))(a1, v4);
    return v4 & (*(*a1 + 432))(a1, v5);
  }

  result = 1;
  if (a2 > 1796)
  {
    if (a2 > 2308)
    {
      if ((a2 - 2309) < 4 || a2 == 2567 || a2 == 3079)
      {
        return result;
      }
    }

    else if ((a2 - 1797) < 4 || (a2 - 2053) < 4)
    {
      return result;
    }

    return 0;
  }

  if (((a2 - 257) > 0xA || ((1 << (a2 - 1)) & 0x7F1) == 0) && ((a2 - 773) > 0xC || ((1 << (a2 - 5)) & 0x1803) == 0) && (a2 - 1285) >= 2)
  {
    return 0;
  }

  return result;
}

uint64_t CI::SWContext::format_is_directly_supported_for_output(uint64_t a1, int a2)
{
  result = 1;
  if (a2 > 1796)
  {
    if ((a2 - 1797) < 4 || (a2 - 2053) < 4 || (a2 - 2309) < 4)
    {
      return result;
    }

    return 0;
  }

  if (((a2 - 261) > 5 || a2 == 265) && ((a2 - 773) > 0xC || ((1 << (a2 - 5)) & 0x1803) == 0))
  {
    return 0;
  }

  return result;
}

uint64_t CI::SWContext::bind_texture()
{
  return 0;
}

{
  return 0;
}

uint64_t CI::SWContext::set_bitmap_destination(uint64_t result, CI::Object *this)
{
  if (this)
  {
    *(result + 392) = this;
    return CI::Object::ref(this);
  }

  return result;
}

uint64_t CI::SWContext::set_surface_destination(uint64_t result, IOSurfaceRef buffer)
{
  if (buffer)
  {
    *(result + 400) = buffer;
    IOSurfaceLock(buffer, 0, 0);
    operator new();
  }

  return result;
}

uint64_t CI::SWContext::unset_destination(CI::SWContext *this)
{
  v2 = *(this + 49);
  if (v2)
  {
    CI::Object::unref(v2);
  }

  *(this + 49) = 0;
  result = IOSurfaceUnlock(*(this + 50), 0, 0);
  *(this + 50) = 0;
  return result;
}

void CI::SWContext::render_node(CI::SWContext *this, dispatch_queue_t *a2, const CGRect *a3, const CGRect *a4, const CI::Bitmap *a5)
{
  v84[19] = *MEMORY[0x1E69E9840];
  if (!a2)
  {
    v54 = ci_logger_render();
    if (os_log_type_enabled(v54, OS_LOG_TYPE_ERROR))
    {
      CI::SWContext::render_node();
    }

LABEL_72:
    abort();
  }

  v5 = a5;
  if (!a5)
  {
    v55 = ci_logger_render();
    if (os_log_type_enabled(v55, OS_LOG_TYPE_ERROR))
    {
      CI::SWContext::render_node();
      abort();
    }

    goto LABEL_72;
  }

  if (!(*(a5 + 11) * *(a5 + 10)))
  {
    v56 = ci_logger_render();
    if (os_log_type_enabled(v56, OS_LOG_TYPE_ERROR))
    {
      CI::SWContext::render_node(v5 + 10, v5 + 11, v56);
      abort();
    }

    goto LABEL_72;
  }

  v10 = CI::ProgramNode::mainProgram(a2);
  if (v10)
  {
    v11 = v10;
    if (!CI_NO_RENDER())
    {
      CGRectIntersection(*a3, *a4);
      v63 = this;
      if (*(a2 + 149) == 1)
      {
        MidY = CGRectGetMidY(*a4);
        v13 = MidY + MidY;
        v85 = *a3;
        v81.b = 0.0;
        v81.c = 0.0;
        v81.a = 1.0;
        *&v81.d = xmmword_19CF25100;
        v81.ty = v13;
        v86 = CGRectApplyAffineTransform(v85, &v81);
        CGRectIntersection(v86, *a4);
      }

      v14 = CI::MainProgram::num_arguments(v11);
      dispatch_sync(a2[13], &__block_literal_global_33);
      v64 = a2[16];
      isa = v64->isa;
      v74 = 0;
      v73 = 0;
      v75 = 0u;
      v76 = 0u;
      v77 = 0u;
      v78 = 0u;
      v79 = 0u;
      v80 = 0;
      if (isa > 10)
      {
        HIDWORD(v73) = isa;
        v16 = malloc_type_calloc((isa - 10), 8uLL, 0x80040B8603338uLL);
      }

      else
      {
        v16 = 0;
        HIDWORD(v73) = 10;
      }

      *&v75 = v16;
      if (isa <= 1)
      {
        v17 = 1;
      }

      else
      {
        v17 = isa;
      }

      v74 = v17;
      if (LODWORD(v64->isa) == v14)
      {
        v67 = v5;
        if (v14 > 0)
        {
          v18 = 0;
          *v65 = v14;
          v19 = -80;
          while (1)
          {
            v20 = (*(*v11 + 40))(v11, v18);
            v21 = v18 > 9 ? (v64[2].isa + v19) : &v64[v18 + 3];
            v22 = *v21;
            if (v20 > 39)
            {
              break;
            }

            if ((v20 - 1) >= 4)
            {
              goto LABEL_41;
            }

            if ((*(*v22 + 16))(v22) != 68)
            {
              goto LABEL_68;
            }

            CI::ProgramNode::child_can_sample_nearest(a2, *(v22 + 8));
            CI::ProgramNode::roiKeys_of_child(a2, *a3, *(v22 + 8), __p);
            if (*&__p[0].origin.y == *&__p[0].origin.x)
            {
              v57 = ci_logger_render();
              if (os_log_type_enabled(v57, OS_LOG_TYPE_ERROR))
              {
                CI::SWContext::render_node();
                abort();
              }

              goto LABEL_72;
            }

            *v68 = **&__p[0].origin.x;
            v23 = *(v22 + 3);
            if (!v23)
            {
              v58 = ci_logger_render();
              if (os_log_type_enabled(v58, OS_LOG_TYPE_ERROR))
              {
                CI::SWContext::render_node();
                abort();
              }

              goto LABEL_72;
            }

            v72[0] = 0;
            v72[1] = 0;
            v24 = (*(*v23 + 2))(v23);
            if (v24 > 53)
            {
              if (v24 == 60)
              {
                v90.origin.x = CI::Node::roi(v68[0], v68[1]);
                if (CGRectIsEmpty(v90))
                {
                  operator new();
                }

                v37 = (*(*v63 + 112))(v63);
                intermediate_for_node = CI::TextureManager::get_intermediate_for_node(v37, v68);
                if ((v23[18] & 4) != 0)
                {
                  v39 = (*(*v63 + 112))(v63);
                  (*(*v39 + 72))(v39, intermediate_for_node);
                }

                operator new();
              }

              if (v24 == 54)
              {
                v88.origin.x = CI::Node::roi(v68[0], v68[1]);
                if (!CGRectIsEmpty(v88))
                {
                  operator new();
                }

                v59 = ci_logger_render();
                if (os_log_type_enabled(v59, OS_LOG_TYPE_ERROR))
                {
                  CI::SWContext::render_node();
                  abort();
                }

                goto LABEL_72;
              }
            }

            else
            {
              if (v24 == 35)
              {
                v89.origin.x = CI::Node::roi(v68[0], v68[1]);
                if (!CGRectIsEmpty(v89))
                {
                  v81.a = CI::Node::roi(v68[0], v68[1]);
                  v81.b = v34;
                  v81.c = v35;
                  v81.d = v36;
                  CI::CGNode::cgImageForROI(v23, &v81, &cf);
                  operator new();
                }

                v61 = ci_logger_render();
                if (os_log_type_enabled(v61, OS_LOG_TYPE_ERROR))
                {
                  CI::SWContext::render_node();
                  abort();
                }

                goto LABEL_72;
              }

              if (v24 == 52)
              {
                v87.origin.x = CI::Node::roi(v68[0], v68[1]);
                if (!CGRectIsEmpty(v87))
                {
                  v81.a = CI::Node::roi(v68[0], v68[1]);
                  v81.b = v25;
                  v81.c = v26;
                  v81.d = v27;
                  CI::ProviderNode::surfaceForROI(v23, v63, &v81.a, v72);
                  operator new();
                }

                v60 = ci_logger_render();
                if (os_log_type_enabled(v60, OS_LOG_TYPE_ERROR))
                {
                  CI::SWContext::render_node();
                  abort();
                }

                goto LABEL_72;
              }
            }

            v91.origin.x = CI::Node::roi(v68[0], v68[1]);
            if (!CGRectIsEmpty(v91))
            {
              v40 = ci_logger_render();
              if (os_log_type_enabled(v40, OS_LOG_TYPE_ERROR))
              {
                v41 = (*(*v23 + 13))(v23);
                v42 = *(v23 + 9);
                LODWORD(v81.a) = 136446722;
                *(&v81.a + 4) = "void CI::SWContext::render_node(ProgramNode *, const CGRect &, const CGRect &, const Bitmap *)";
                WORD2(v81.b) = 2080;
                *(&v81.b + 6) = v41;
                HIWORD(v81.c) = 1024;
                LODWORD(v81.d) = v42;
                _os_log_error_impl(&dword_19CC36000, v40, OS_LOG_TYPE_ERROR, "%{public}s: Bad bitmap argument for %s:%d leaf", &v81, 0x1Cu);
              }
            }

            CI::SerialObjectPtrArray::append(&v73, 0);
            v5 = v67;
            if (*&__p[0].origin.x)
            {
              __p[0].origin.y = __p[0].origin.x;
              operator delete(*&__p[0].origin.x);
            }

LABEL_56:
            ++v18;
            v19 += 8;
            if (*v65 == v18)
            {
              goto LABEL_57;
            }
          }

          if ((v20 - 44) < 2)
          {
            if ((*(*v22 + 16))(v22) == 66)
            {
              CI::Vector::affine(v22, &v81.a);
              operator new();
            }

            goto LABEL_68;
          }

          if (v20 == 40)
          {
            if ((*(*v22 + 16))(v22) == 68)
            {
              memset(&v81, 0, 32);
              v81.a = CI::Node::region_of_child(a2, *a3);
              v81.b = v31;
              v81.c = v32;
              v81.d = v33;
              operator new();
            }

            goto LABEL_68;
          }

          if (v20 == 41)
          {
            if ((*(*v22 + 16))(v22) == 68)
            {
              memset(__p, 0, 32);
              __p[0].origin.x = CI::Node::region_of_child(a2, *a3);
              __p[0].origin.y = v28;
              __p[0].size.width = v29;
              __p[0].size.height = v30;
              CI::TextureSampler::transform(v22, v63, __p, &v81);
              operator new();
            }

            goto LABEL_68;
          }

LABEL_41:
          CI::SerialObjectPtrArray::append(&v73, v22);
          goto LABEL_56;
        }

LABEL_57:
        std::basic_stringstream<char,std::char_traits<char>,std::allocator<char>>::basic_stringstream[abi:nn200100](&v81);
        v43 = std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(&v81.c, "CI::SWContextRenderQ", 20);
        v44 = std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(v43, "-", 1);
        v45 = (*(*v63 + 280))(v63);
        v46 = MEMORY[0x19EAF5450](v44, v45);
        v47 = std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(v46, "-", 1);
        MEMORY[0x19EAF5470](v47, *(v63 + 19));
        std::basic_stringstream<char,std::char_traits<char>,std::allocator<char>>::str[abi:nn200100](&v81, v68);
        if (v69 >= 0)
        {
          v48 = v68;
        }

        else
        {
          v48 = v68[0];
        }

        QueuePool<4>::QueuePool(__p, v48);
        if (SHIBYTE(v69) < 0)
        {
          operator delete(v68[0]);
        }

        v68[0] = 0;
        v68[1] = 0;
        v69 = 0;
        v49 = vcvtd_n_u64_f64(ceil(a3->size.height * 0.125), 3uLL);
        v50 = atomic_load(v5 + 2);
        v66 = v50;
        if (v49)
        {
          v51 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
          QueuePool<4>::get_new(__p, v51);
        }

        v52 = atomic_load(v5 + 2);
        if (v50 != v52)
        {
          v62 = ci_logger_render();
          if (os_log_type_enabled(v62, OS_LOG_TYPE_ERROR))
          {
            CI::SWContext::render_node(v66, v52, v62);
            abort();
          }

          goto LABEL_72;
        }

        QueuePool<4>::~QueuePool(__p);
        v81.a = *MEMORY[0x1E69E54D8];
        v53 = *(MEMORY[0x1E69E54D8] + 72);
        *(&v81.a + *(*&v81.a - 24)) = *(MEMORY[0x1E69E54D8] + 64);
        v81.c = v53;
        *&v81.d = MEMORY[0x1E69E5548] + 16;
        if (v83 < 0)
        {
          operator delete(v82);
        }

        *&v81.d = MEMORY[0x1E69E5538] + 16;
        std::locale::~locale(&v81.tx);
        std::iostream::~basic_iostream();
        MEMORY[0x19EAF5520](v84);
      }

LABEL_68:
      CI::SerialObjectPtrArray::~SerialObjectPtrArray(&v73);
    }
  }
}

dispatch_queue_t CI::ProgramNode::mainProgram(dispatch_queue_t *this)
{
  std::chrono::steady_clock::now();
  dispatch_sync(this[13], &__block_literal_global_33);
  std::chrono::steady_clock::now().__d_.__rep_;
  return this[15];
}

double CI::Node::region_of_child(CI::Node *this, CGRect a2)
{
  (*(*this + 384))(__p, a2.origin, *&a2.origin.y, a2.size, *&a2.size.height);
  CI::CGRectArray::unionRect(__p);
  v3 = v2;
  if (__p[0])
  {
    __p[1] = __p[0];
    operator delete(__p[0]);
  }

  return v3;
}

uint64_t std::basic_stringstream<char,std::char_traits<char>,std::allocator<char>>::basic_stringstream[abi:nn200100](uint64_t a1)
{
  *(a1 + 176) = 0;
  v2 = MEMORY[0x1E69E5560] + 24;
  v3 = MEMORY[0x1E69E5560] + 104;
  *(a1 + 128) = MEMORY[0x1E69E5560] + 104;
  v4 = a1 + 16;
  v5 = MEMORY[0x1E69E5560] + 64;
  *(a1 + 16) = MEMORY[0x1E69E5560] + 64;
  v6 = a1 + 24;
  v7 = MEMORY[0x1E69E54D8];
  v8 = *(MEMORY[0x1E69E54D8] + 24);
  v9 = *(MEMORY[0x1E69E54D8] + 16);
  *a1 = v9;
  *(a1 + *(v9 - 24)) = v8;
  *(a1 + 8) = 0;
  v10 = (a1 + *(*a1 - 24));
  std::ios_base::init(v10, (a1 + 24));
  v10[1].__vftable = 0;
  v10[1].__fmtflags_ = -1;
  v11 = v7[5];
  v12 = v7[4];
  *(a1 + 16) = v12;
  *(v4 + *(v12 - 24)) = v11;
  v13 = v7[1];
  *a1 = v13;
  *(a1 + *(v13 - 24)) = v7[6];
  *a1 = v2;
  *(a1 + 128) = v3;
  v14 = MEMORY[0x1E69E5538] + 16;
  *(a1 + 16) = v5;
  *(a1 + 24) = v14;
  MEMORY[0x19EAF54E0](a1 + 32);
  *(a1 + 72) = 0u;
  *(a1 + 56) = 0u;
  *(a1 + 40) = 0u;
  *(a1 + 24) = MEMORY[0x1E69E5548] + 16;
  *(a1 + 88) = 0u;
  *(a1 + 104) = 0u;
  *(a1 + 120) = 24;
  std::stringbuf::__init_buf_ptrs[abi:nn200100](v6);
  return a1;
}

const void *std::basic_stringstream<char,std::char_traits<char>,std::allocator<char>>::str[abi:nn200100]@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  result = std::stringbuf::view[abi:nn200100](a1 + 24);
  if (v4 >= 0x7FFFFFFFFFFFFFF8)
  {
    std::vector<CI::SWRendererFunctionInputNode>::__throw_length_error[abi:nn200100]();
  }

  v5 = v4;
  if (v4 >= 0x17)
  {
    operator new();
  }

  a2[23] = v4;
  if (v4)
  {
    result = memmove(a2, result, v4);
  }

  a2[v5] = 0;
  return result;
}

void QueuePool<4>::get_new(uint64_t a1, uint64_t a2)
{
  v4[0] = 0;
  v4[1] = v4;
  v4[2] = 0x2000000000;
  v4[3] = 0;
  v2 = *(a1 + 8);
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 0x40000000;
  block[2] = ___ZN9QueuePoolILi4EE7get_newEP21dispatch_queue_attr_s_block_invoke;
  block[3] = &unk_1E75C4100;
  block[4] = v4;
  block[5] = a1;
  block[6] = a2;
  dispatch_sync(v2, block);
  operator new();
}

uint64_t CI::SWContext::render_root_node(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  std::basic_stringstream<char,std::char_traits<char>,std::allocator<char>>::basic_stringstream[abi:nn200100](v22);
  v10 = std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(&v23, "CI::SWContext-root", 18);
  v11 = std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(v10, "-", 1);
  v12 = (*(*a1 + 280))(a1);
  v13 = MEMORY[0x19EAF5450](v11, v12);
  v14 = std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(v13, "-", 1);
  MEMORY[0x19EAF5470](v14, a1[19]);
  std::basic_stringstream<char,std::char_traits<char>,std::allocator<char>>::str[abi:nn200100](v22, __p);
  if (v21 >= 0)
  {
    v15 = __p;
  }

  else
  {
    v15 = __p[0];
  }

  v16 = dispatch_queue_create(v15, 0);
  if (v21 < 0)
  {
    operator delete(__p[0]);
  }

  block[0] = MEMORY[0x1E69E9820];
  block[1] = 0x40000000;
  block[2] = ___ZN2CI9SWContext16render_root_nodeEPNS_8TileTaskERKNS_9parentROIEU13block_pointerFvvES7__block_invoke;
  block[3] = &unk_1E75C4058;
  block[6] = a1;
  block[7] = a3;
  block[8] = a2;
  block[4] = a4;
  block[5] = a5;
  dispatch_sync(v16, block);
  dispatch_release(v16);
  v22[0] = *MEMORY[0x1E69E54D8];
  v17 = *(MEMORY[0x1E69E54D8] + 72);
  *(v22 + *(v22[0] - 24)) = *(MEMORY[0x1E69E54D8] + 64);
  v23 = v17;
  v24 = MEMORY[0x1E69E5548] + 16;
  if (v26 < 0)
  {
    operator delete(v25[7].__locale_);
  }

  v24 = MEMORY[0x1E69E5538] + 16;
  std::locale::~locale(v25);
  std::iostream::~basic_iostream();
  return MEMORY[0x19EAF5520](&v27);
}

void ___ZN2CI9SWContext16render_root_nodeEPNS_8TileTaskERKNS_9parentROIEU13block_pointerFvvES7__block_invoke(uint64_t a1)
{
  v28[6] = *MEMORY[0x1E69E9840];
  v3 = *(a1 + 48);
  v2 = *(a1 + 56);
  v4 = *v2;
  v5 = CI::parentROI::roi(v2);
  v7 = v6;
  v9 = v8;
  v11 = v10;
  v25.origin.x = v5;
  v25.origin.y = v6;
  v25.size.width = v8;
  v25.size.height = v10;
  if (CI_VERBOSE_SIGNPOSTS())
  {
    v12 = ci_signpost_log_render();
    v13 = *(v4 + 36) | ((*(*v3 + 280))(v3) << 32);
    if (v13 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v12))
    {
      *buf = 68289026;
      v27 = 256;
      LOWORD(v28[0]) = 2082;
      *(v28 + 2) = CI::Context::programName(v4, v14);
      _os_signpost_emit_with_name_impl(&dword_19CC36000, v12, OS_SIGNPOST_INTERVAL_BEGIN, v13, "render_node", "%{public}.256s", buf, 0x12u);
    }
  }

  v15 = (*(*v3 + 280))(v3);
  TimerBase::TimerBase(buf, v15, *(v4 + 36), "render_node", 0);
  Current = CFAbsoluteTimeGetCurrent();
  v29.origin.x = v5;
  v29.origin.y = v7;
  v29.size.width = v9;
  v29.size.height = v11;
  CI::TileTask::addROIForNode(*(a1 + 64), v4, v29);
  v17 = *(v3 + 49);
  v24.origin.x = 0.0;
  v24.origin.y = 0.0;
  v24.size = vcvtq_f64_u64(v17[5]);
  CI::SWContext::render_node(v3, v4, &v25, &v24, v17);
  (*(*(a1 + 32) + 16))();
  v18 = *(a1 + 64);
  v19 = CFAbsoluteTimeGetCurrent();
  CI::TileTask::incrementTimeForNode(v18, v4, v19 - Current);
  v20 = *(a1 + 64);
  *(v20 + 40) = CFAbsoluteTimeGetCurrent();
  (*(*(a1 + 40) + 16))();
  if (CI_VERBOSE_SIGNPOSTS())
  {
    v21 = ci_signpost_log_render();
    v22 = v28[0];
    if ((v28[0] - 1) <= 0xFFFFFFFFFFFFFFFDLL)
    {
      v23 = v21;
      if (os_signpost_enabled(v21))
      {
        LOWORD(v24.origin.x) = 0;
        _os_signpost_emit_with_name_impl(&dword_19CC36000, v23, OS_SIGNPOST_INTERVAL_END, v22, "render_node", &unk_19CFBCBAE, &v24, 2u);
      }
    }
  }

  TimerBase::~TimerBase(buf);
}

const char *CI::Context::programName(dispatch_queue_t *this, const CI::ProgramNode *a2)
{
  if (!this)
  {
    return "";
  }

  if (CI::ProgramNode::mainProgram(this) && CI::ProgramNode::mainProgram(this)[7].isa)
  {
    return CI::ProgramNode::mainProgram(this)[7].isa;
  }

  return "";
}

void CI::SWContext::render_intermediate_node(void *a1, CFAbsoluteTime *a2, CI::parentROI *this, uint64_t (***a4)(void), uint64_t a5, uint64_t a6)
{
  v46[19] = *MEMORY[0x1E69E9840];
  v10 = *this;
  v11 = CI::parentROI::roi(this);
  v13 = v12;
  v15 = v14;
  v17 = v16;
  if (CI_VERBOSE_SIGNPOSTS())
  {
    v18 = ci_signpost_log_render();
    v19 = *(v10 + 36) | ((*(*a1 + 280))(a1) << 32);
    if (v19 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v18))
    {
      *buf = 68289026;
      *&buf[4] = 256;
      v41 = 2082;
      *v42 = CI::Context::programName(v10, v20);
      _os_signpost_emit_with_name_impl(&dword_19CC36000, v18, OS_SIGNPOST_INTERVAL_BEGIN, v19, "render_node", "%{public}.256s", buf, 0x12u);
    }
  }

  v21 = (*(*a1 + 280))(a1);
  TimerBase::TimerBase(v38, v21, *(v10 + 36), "render_node", 0);
  Current = CFAbsoluteTimeGetCurrent();
  std::basic_stringstream<char,std::char_traits<char>,std::allocator<char>>::basic_stringstream[abi:nn200100](buf);
  v23 = std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(&v42[6], "CI::SWContext-intermediate", 26);
  v24 = std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(v23, "-", 1);
  v25 = (*(*a1 + 280))(a1);
  v26 = MEMORY[0x19EAF5450](v24, v25);
  v27 = std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(v26, "-", 1);
  MEMORY[0x19EAF5470](v27, a1[19]);
  std::basic_stringstream<char,std::char_traits<char>,std::allocator<char>>::str[abi:nn200100](buf, __p);
  if (v37 >= 0)
  {
    v28 = __p;
  }

  else
  {
    v28 = __p[0];
  }

  v29 = dispatch_queue_create(v28, 0);
  if (v37 < 0)
  {
    operator delete(__p[0]);
  }

  v47.origin.x = v11;
  v47.origin.y = v13;
  v47.size.width = v15;
  v47.size.height = v17;
  CI::TileTask::addROIForNode(a2, v10, v47);
  if ((**a4)(a4))
  {
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 0x40000000;
    block[2] = ___ZN2CI9SWContext24render_intermediate_nodeEPNS_8TileTaskERKNS_9parentROIEPNS_14intermediate_tEbU13block_pointerFvvE_block_invoke;
    block[3] = &__block_descriptor_tmp_7_2;
    block[4] = a1;
    block[5] = a4;
    block[6] = v10;
    *&block[7] = v11;
    *&block[8] = v13;
    *&block[9] = v15;
    *&block[10] = v17;
    dispatch_sync(v29, block);
    dispatch_release(v29);
    v30 = CFAbsoluteTimeGetCurrent();
    CI::TileTask::incrementTimeForNode(a2, v10, v30 - Current);
    a2[5] = CFAbsoluteTimeGetCurrent();
    (*(a6 + 16))(a6);
  }

  *buf = *MEMORY[0x1E69E54D8];
  v31 = *(MEMORY[0x1E69E54D8] + 72);
  *&buf[*(*buf - 24)] = *(MEMORY[0x1E69E54D8] + 64);
  *&v42[6] = v31;
  v43 = MEMORY[0x1E69E5548] + 16;
  if (v45 < 0)
  {
    operator delete(v44[7].__locale_);
  }

  v43 = MEMORY[0x1E69E5538] + 16;
  std::locale::~locale(v44);
  std::iostream::~basic_iostream();
  MEMORY[0x19EAF5520](v46);
  if (CI_VERBOSE_SIGNPOSTS())
  {
    v32 = ci_signpost_log_render();
    v33 = v39;
    if (v39 - 1 <= 0xFFFFFFFFFFFFFFFDLL)
    {
      v34 = v32;
      if (os_signpost_enabled(v32))
      {
        *buf = 0;
        _os_signpost_emit_with_name_impl(&dword_19CC36000, v34, OS_SIGNPOST_INTERVAL_END, v33, "render_node", &unk_19CFBCBAE, buf, 2u);
      }
    }
  }

  TimerBase::~TimerBase(v38);
}

void ___ZN2CI9SWContext24render_intermediate_nodeEPNS_8TileTaskERKNS_9parentROIEPNS_14intermediate_tEbU13block_pointerFvvE_block_invoke(uint64_t a1)
{
  v31 = *MEMORY[0x1E69E9840];
  v2 = *(a1 + 32);
  v3 = (***(a1 + 40))(*(a1 + 40));
  CI::Bitmap::Bitmap(v9, v3, 0);
  v9[0] = &unk_1F10333F0;
  v9[2] = &unk_1F1033428;
  v10 = 0;
  v4 = vdupq_n_s32(0x3B808081u);
  v11 = v4.i64[0];
  v12 = v4;
  v13 = v4;
  v17 = v4;
  v18 = v4;
  v15 = v4;
  v16 = v4;
  v14 = v4;
  v5 = vdupq_n_s32(0x37800080u);
  v19 = v5.i64[0];
  v20 = v5;
  v21 = v5;
  v25 = v5;
  v26 = v5;
  v23 = v5;
  v24 = v5;
  v22 = v5;
  v6 = vdupq_n_s32(0x3A802008u);
  v27 = v6.i64[0];
  v29 = v6;
  v30 = v6;
  v28 = v6;
  v7 = *(a1 + 48);
  v8 = (*(**(a1 + 40) + 32))(*(a1 + 40));
  CI::SWContext::render_node(v2, v7, (a1 + 56), v8, v9);
  CI::Bitmap::~Bitmap(v9);
}

void CI::SWContext::after_render(IOSurfaceRef *this)
{
  v2 = ci_signpost_log_render();
  v3 = (*(*this + 35))(this) << 32;
  if (v3 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v2))
  {
    *v9 = 0;
    _os_signpost_emit_with_name_impl(&dword_19CC36000, v2, OS_SIGNPOST_INTERVAL_BEGIN, v3, "after_render", &unk_19CFBCBAE, v9, 2u);
  }

  v4 = (*(*this + 35))(this);
  TimerBase::TimerBase(v9, v4, 0, "after_render", 8);
  IOSurfaceUnlock(this[50], 0, 0);
  this[50] = 0;
  v5 = this[49];
  if (v5)
  {
    CI::Object::unref(v5);
  }

  this[49] = 0;
  v6 = ci_signpost_log_render();
  v7 = v10;
  if (v10 - 1 <= 0xFFFFFFFFFFFFFFFDLL)
  {
    v8 = v6;
    if (os_signpost_enabled(v6))
    {
      *buf = 0;
      _os_signpost_emit_with_name_impl(&dword_19CC36000, v8, OS_SIGNPOST_INTERVAL_END, v7, "after_render", &unk_19CFBCBAE, buf, 2u);
    }
  }

  TimerBase::~TimerBase(v9);
}

void CI::SWTextureManager::~SWTextureManager(dispatch_queue_t *this)
{
  *this = &unk_1F1033360;
  CI::TextureManager::purge_intermediates(this);
  dispatch_sync(this[12], &__block_literal_global_10);
  CI::TextureManager::remove_all(this);

  CI::TextureManager::~TextureManager(this);
}

{
  CI::SWTextureManager::~SWTextureManager(this);

  JUMPOUT(0x19EAF5590);
}

void CI::SWContext::invalidate_switch_dictionary(CI::SWContext *this)
{
  v2 = *(this + 52);
  if (v2)
  {
    CFRelease(v2);
    *(this + 52) = 0;
  }
}

__CFDictionary *CI::SWContext::switch_dictionary(CI::SWContext *this)
{
  result = *(this + 52);
  if (!result)
  {
    Mutable = CFDictionaryCreateMutable(0, 3, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
    *(this + 52) = Mutable;
    __CFDictionary::setValue(Mutable, @"kContextInfoSupportsMPS", 0, v4);
    __CFDictionary::setValue(*(this + 52), @"kContextInfoIsMetal", 0, v5);
    __CFDictionary::setValue(*(this + 52), @"kContextInfoIsSoftware", 1, v6);
    __CFDictionary::setValue(*(this + 52), @"kContextInfoWorkingFormat", *(this + 8));
    v8 = *(this + 3);
    result = *(this + 52);
    if (v8)
    {
      __CFDictionary::setValue(result, @"kContextInfoWorkingSpace", v8, v7);
      return *(this + 52);
    }
  }

  return result;
}

void __CFDictionary::setValue(__CFDictionary *this, __CFDictionary *a2, const __CFString *a3)
{
  valuePtr = a3;
  v5 = CFNumberCreate(0, kCFNumberSInt32Type, &valuePtr);
  __CFDictionary::setValue(this, a2, v5, v6);
  if (v5)
  {
    CFRelease(v5);
  }
}

{
  valuePtr = a3;
  v5 = CFNumberCreate(0, kCFNumberLongType, &valuePtr);
  __CFDictionary::setValue(this, a2, v5, v6);
  if (v5)
  {
    CFRelease(v5);
  }
}

uint64_t CI::SWTextureManager::create_intermediate(uint64_t a1, uint64_t a2, uint64_t a3, CGFloat *a4, uint64_t a5, uint64_t a6, char a7)
{
  if ((a7 & 1) == 0)
  {
    v7 = *a4;
    v8 = a4[1];
    v9 = a4[2];
    v10 = a4[3];
    v13.origin.x = *a4;
    v13.origin.y = v8;
    v13.size.width = v9;
    v13.size.height = v10;
    if (!CGRectIsNull(v13))
    {
      v14.origin.x = v7;
      v14.origin.y = v8;
      v14.size.width = v9;
      v14.size.height = v10;
      if (CGRectIsInfinite(v14) || ((v15.origin.x = v7, v15.origin.y = v8, v15.size.width = v9, v15.size.height = v10, v16 = CGRectInset(v15, 0.000001, 0.000001), v17 = CGRectIntegral(v16), v17.size.width) ? (v12 = v17.size.height == 0) : (v12 = 1), !v12))
      {
        operator new();
      }
    }
  }

  return 0;
}

void CI::TextureManager::convert_to_sRGB()
{
  v0 = ci_logger_render();
  if (os_log_type_enabled(v0, OS_LOG_TYPE_ERROR))
  {
    CI::TextureManager::convert_to_sRGB();
  }
}

{
  OUTLINED_FUNCTION_3();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

unint64_t CI::Context::available_allocation_size(CI::Context *this)
{
  v2 = CI::Context::bytesLimit(this);
  v3 = (*(*this + 112))(this);
  SurfaceCacheNonVolatileSize = (*(*v3 + 48))(v3);
  if (!*(this + 46) && SurfaceCacheNonVolatileSize <= GetSurfaceCacheNonVolatileSize())
  {
    SurfaceCacheNonVolatileSize = GetSurfaceCacheNonVolatileSize();
  }

  if (v2 >= SurfaceCacheNonVolatileSize)
  {
    return v2 - SurfaceCacheNonVolatileSize;
  }

  else
  {
    return 0;
  }
}

__n128 CI::Context::setCTM(CI::Context *this, CGAffineTransform *a2)
{
  result = *&a2->a;
  v3 = *&a2->tx;
  *(this + 7) = *&a2->c;
  *(this + 8) = v3;
  *(this + 6) = result;
  return result;
}

__n128 CI::Context::CTM@<Q0>(CI::Context *this@<X0>, uint64_t a2@<X8>)
{
  v2 = *(this + 7);
  *a2 = *(this + 6);
  *(a2 + 16) = v2;
  result = *(this + 8);
  *(a2 + 32) = result;
  return result;
}

float CI::Context::setQuality(CI::Context *this, float a2)
{
  result = fmaxf(fminf(a2, 1.0), -1.0);
  *(this + 14) = result;
  return result;
}

uint64_t CI::Context::setCacheVolatility(uint64_t this, int a2)
{
  if (a2 < 0)
  {
    v2 = -1;
  }

  else
  {
    v2 = a2;
  }

  if (v2 >= 8)
  {
    v2 = 8;
  }

  *(this + 232) = v2;
  return this;
}

uint64_t CI::Context::bitmap_destination_rowbytes_alignment(uint64_t a1, int a2)
{
  if (CI::format_is_half_float(a2))
  {
    return 8;
  }

  else
  {
    return 4;
  }
}

void CI::BitmapSampler::~BitmapSampler(CI::BitmapSampler *this)
{
  CI::Bitmap::~Bitmap(this);

  JUMPOUT(0x19EAF5590);
}

void non-virtual thunk toCI::BitmapSampler::~BitmapSampler(CI::BitmapSampler *this)
{
  CI::Bitmap::~Bitmap((this - 16));
}

{
  CI::Bitmap::~Bitmap((this - 16));

  JUMPOUT(0x19EAF5590);
}

int32x4_t CI::BitmapSampler::BitmapSampler(CI::BitmapSampler *this, __IOSurface *a2, int a3, char a4, char a5)
{
  v7 = CI::Bitmap::Bitmap(this, a2, a3);
  *v7 = &unk_1F10333F0;
  v8 = vdupq_n_s32(0x3B808081u);
  *(v7 + 2) = &unk_1F1033428;
  *(v7 + 18) = v8.i64[0];
  *(v7 + 10) = v8;
  *(v7 + 11) = v8;
  *(v7 + 15) = v8;
  *(v7 + 16) = v8;
  *(v7 + 13) = v8;
  *(v7 + 14) = v8;
  *(v7 + 12) = v8;
  v9 = vdupq_n_s32(0x37800080u);
  *(v7 + 138) = a4;
  *(v7 + 34) = v9.i64[0];
  *(v7 + 18) = v9;
  *(v7 + 19) = v9;
  *(v7 + 23) = v9;
  *(v7 + 24) = v9;
  *(v7 + 21) = v9;
  *(v7 + 22) = v9;
  *(v7 + 20) = v9;
  result = vdupq_n_s32(0x3A802008u);
  *(v7 + 139) = a5;
  *(v7 + 50) = result.i64[0];
  *(v7 + 27) = result;
  *(v7 + 28) = result;
  *(v7 + 26) = result;
  return result;
}

int32x4_t CI::BitmapSampler::BitmapSampler(CI::BitmapSampler *this, CGImage *a2, char a3, char a4)
{
  v6 = CI::Bitmap::Bitmap(this, a2);
  *v6 = &unk_1F10333F0;
  v7 = vdupq_n_s32(0x3B808081u);
  *(v6 + 2) = &unk_1F1033428;
  *(v6 + 18) = v7.i64[0];
  *(v6 + 10) = v7;
  *(v6 + 11) = v7;
  *(v6 + 15) = v7;
  *(v6 + 16) = v7;
  *(v6 + 13) = v7;
  *(v6 + 14) = v7;
  *(v6 + 12) = v7;
  v8 = vdupq_n_s32(0x37800080u);
  *(v6 + 138) = a3;
  *(v6 + 34) = v8.i64[0];
  *(v6 + 18) = v8;
  *(v6 + 19) = v8;
  *(v6 + 23) = v8;
  *(v6 + 24) = v8;
  *(v6 + 21) = v8;
  *(v6 + 22) = v8;
  *(v6 + 20) = v8;
  result = vdupq_n_s32(0x3A802008u);
  *(v6 + 139) = a4;
  *(v6 + 50) = result.i64[0];
  *(v6 + 27) = result;
  *(v6 + 28) = result;
  *(v6 + 26) = result;
  return result;
}

int32x4_t CI::BitmapSampler::BitmapSampler(CI::BitmapSampler *this, __int8 a2, __int8 a3)
{
  CI::Bitmap::Bitmap(this);
  v5->i64[0] = &unk_1F10333F0;
  v6 = vdupq_n_s32(0x3B808081u);
  v5[1].i64[0] = &unk_1F1033428;
  v5[9].i64[0] = v6.i64[0];
  v5[10] = v6;
  v5[11] = v6;
  v5[15] = v6;
  v5[16] = v6;
  v5[13] = v6;
  v5[14] = v6;
  v5[12] = v6;
  v7 = vdupq_n_s32(0x37800080u);
  v5[8].i8[10] = a2;
  v5[17].i64[0] = v7.i64[0];
  v5[18] = v7;
  v5[19] = v7;
  v5[23] = v7;
  v5[24] = v7;
  v5[21] = v7;
  v5[22] = v7;
  v5[20] = v7;
  result = vdupq_n_s32(0x3A802008u);
  v5[8].i8[11] = a3;
  v5[25].i64[0] = result.i64[0];
  v5[27] = result;
  v5[28] = result;
  v5[26] = result;
  return result;
}

void CI::CGRectArray::unionRect(CGRect **this)
{
  v1 = *MEMORY[0x1E695F050];
  v2 = *(MEMORY[0x1E695F050] + 8);
  v3 = *(MEMORY[0x1E695F050] + 16);
  v4 = *(MEMORY[0x1E695F050] + 24);
  v5 = *this;
  v6 = this[1];
  while (v5 != v6)
  {
    *&v1 = CGRectUnion(*&v1, *v5++);
  }
}

void std::__allocate_at_least[abi:nn200100]<std::allocator<Queue *>>(uint64_t a1, unint64_t a2)
{
  if (!(a2 >> 61))
  {
    operator new();
  }

  std::vector<CI::SWRendererFunctionInputNode>::__throw_length_error[abi:nn200100]();
}

void Queue::~Queue(NSObject **this)
{
  v2 = *this;
  if (v2)
  {
    dispatch_release(v2);
  }

  v3 = this[1];
  if (v3)
  {
    dispatch_release(v3);
  }
}

__n128 CI::TextureManager::tmIntermediate_t::texture@<Q0>(CI::TextureManager::tmIntermediate_t *this@<X0>, __n128 *a2@<X8>)
{
  result = *(this + 8);
  *a2 = result;
  return result;
}

void CI::TextureManager::tmIntermediate_t::~tmIntermediate_t(CI::TextureManager::tmIntermediate_t *this)
{
  *(this + 1) = 0;
  *(this + 2) = 0;
  *this = &unk_1F1033470;
}

{
  *(this + 1) = 0;
  *(this + 2) = 0;
  *this = &unk_1F1033470;
  JUMPOUT(0x19EAF5590);
}

void *CI::TextureManager::tmIntermediate_t::updateSurface(void *this, CFTypeRef cf, int a3)
{
  this[3] = cf;
  if (a3)
  {
    return CFRetain(cf);
  }

  return this;
}

uint64_t CI::Context::bytesLimit(CI::Context *this)
{
  result = *(this + 46) << 20;
  if (!result)
  {
    if (CI_RENDER_MB_LIMIT())
    {
      return CI_RENDER_MB_LIMIT() << 20;
    }

    else
    {
      v3 = *(*this + 496);

      return v3(this);
    }
  }

  return result;
}

void *CI::InstanceCounted<(CI::Type)83>::~InstanceCounted(void *result)
{
  *result = &unk_1F10334C8;
  atomic_fetch_add(&dword_1ED7C47BC[81], 0xFFFFFFFF);
  return result;
}

void CI::InstanceCounted<(CI::Type)83>::~InstanceCounted(void *a1)
{
  *a1 = &unk_1F10334C8;
  atomic_fetch_add(&dword_1ED7C47BC[81], 0xFFFFFFFF);
  JUMPOUT(0x19EAF5590);
}

void std::stringbuf::__init_buf_ptrs[abi:nn200100](uint64_t a1)
{
  *(a1 + 88) = 0;
  v2 = (a1 + 64);
  v3 = *(a1 + 87);
  if (v3 < 0)
  {
    v4 = *(a1 + 64);
    v5 = *(a1 + 72);
  }

  else
  {
    v4 = v2;
    v5 = *(a1 + 87);
  }

  v6 = *(a1 + 96);
  if ((v6 & 8) != 0)
  {
    *(a1 + 88) = v4 + v5;
    *(a1 + 16) = v4;
    *(a1 + 24) = v4;
    *(a1 + 32) = v4 + v5;
  }

  if ((v6 & 0x10) != 0)
  {
    *(a1 + 88) = v4 + v5;
    if ((v3 & 0x80000000) != 0)
    {
      v7 = (*(a1 + 80) & 0x7FFFFFFFFFFFFFFFLL) - 1;
    }

    else
    {
      v7 = 22;
    }

    std::string::resize(v2, v7, 0);
    v8 = *(a1 + 87);
    if (v8 < 0)
    {
      v8 = *(a1 + 72);
    }

    *(a1 + 40) = v4;
    *(a1 + 48) = v4;
    *(a1 + 56) = v4 + v8;
    if ((*(a1 + 96) & 3) != 0)
    {
      if (v5 >> 31)
      {
        v9 = ((v5 - 0x80000000) * 0x200000005uLL) >> 64;
        v10 = 0x7FFFFFFF * ((v9 + ((v5 - 0x80000000 - v9) >> 1)) >> 30);
        v4 = (v4 + v10 + 0x7FFFFFFF);
        v5 = v5 - v10 - 0x7FFFFFFF;
        *(a1 + 48) = v4;
      }

      if (v5)
      {
        *(a1 + 48) = v4 + v5;
      }
    }
  }
}

uint64_t std::stringbuf::view[abi:nn200100](uint64_t a1)
{
  v1 = *(a1 + 96);
  if ((v1 & 0x10) != 0)
  {
    v3 = *(a1 + 48);
    if (*(a1 + 88) < v3)
    {
      *(a1 + 88) = v3;
    }

    return *(a1 + 40);
  }

  else if ((v1 & 8) != 0)
  {
    return *(a1 + 16);
  }

  else
  {
    return 0;
  }
}

uint64_t QueuePool<4>::QueuePool(uint64_t a1, char *a2)
{
  *a1 = 0;
  v4 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
  *(a1 + 8) = dispatch_queue_create("QueuePoolLock", v4);
  std::string::basic_string[abi:nn200100]<0>((a1 + 16), a2);
  *(a1 + 56) = 0u;
  *(a1 + 40) = 0u;
  return a1;
}

uint64_t QueuePool<4>::~QueuePool(uint64_t a1)
{
  for (i = 40; i != 72; i += 8)
  {
    v3 = *(a1 + i);
    if (v3)
    {
      dispatch_release(v3);
    }
  }

  dispatch_release(*(a1 + 8));
  if (*(a1 + 39) < 0)
  {
    operator delete(*(a1 + 16));
  }

  return a1;
}

void ___ZN9QueuePoolILi4EE7get_newEP21dispatch_queue_attr_s_block_invoke(uint64_t a1)
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

uint64_t OUTLINED_FUNCTION_0_6()
{
  v3 = *(v1 + 64);

  return [v0 setBuffer:v3 offset:0 atIndex:0];
}

uint64_t OUTLINED_FUNCTION_1_9(uint64_t a1, uint64_t a2, ...)
{
  va_start(va1, a2);
  va_start(va, a2);
  v6 = va_arg(va1, void);
  v8 = va_arg(va1, void);
  va_arg(va1, void);
  v10 = va_arg(va1, void);
  v9 = v3;

  return [v2 dispatchThreadgroups:va1 threadsPerThreadgroup:va];
}

uint64_t OUTLINED_FUNCTION_2_10()
{
  v3 = *(v0 + 8);

  return [v3 newComputePipelineStateWithFunction:v1 error:0];
}

void CMatrix::CMatrix(CMatrix *this, const CMatrix *a2)
{
  v2 = *a2;
  v3 = *(a2 + 1);
  *this = *a2;
  *(this + 1) = v3;
  memcpy(this + 8, a2 + 8, 8 * v2 * v3);
}

void CMatrix::CMatrix(CMatrix *this, unsigned int a2, unsigned int a3)
{
  *this = a2;
  *(this + 1) = a3;
  if (a2 > 5 || a3 >= 6)
  {
    *this = 0;
  }

  bzero(this + 8, 0xC8uLL);
}

void CMatrix::CMatrix(CMatrix *this, unsigned int a2, unsigned int a3, double a4, uint64_t a5, uint64_t a6, ...)
{
  *this = a2;
  *(this + 1) = a3;
  if (a2 > 5 || a3 >= 6)
  {
    *this = 0;
  }

  bzero(this + 8, 0xC8uLL);
  *(this + 1) = a4;
  v12 = &a5;
  v8 = (*(this + 1) * *this);
  if (v8 >= 2)
  {
    v9 = (this + 16);
    v10 = v8 - 1;
    do
    {
      v11 = v12++;
      *v9++ = *v11;
      --v10;
    }

    while (v10);
  }
}

void CMatrix::CMatrix(CMatrix *this, unsigned int a2, unsigned int a3, const double *a4)
{
  *this = a2;
  *(this + 1) = a3;
  if (a2 > 5 || a3 >= 6)
  {
    *this = 0;
  }

  bzero(this + 8, 0xC8uLL);
  memcpy(this + 8, a4, 8 * *this * *(this + 1));
}

void CMatrix::diagonalMatrix(CMatrix *this@<X0>, double a2@<D0>, _DWORD *a3@<X8>, uint64_t a4, ...)
{
  v5 = this;
  *a3 = this;
  a3[1] = this;
  if (this >= 6)
  {
    *a3 = 0;
  }

  bzero(a3 + 2, 0xC8uLL);
  LODWORD(v8) = *a3;
  v7 = a3[1];
  if (v7)
  {
    v9 = v8 == 0;
  }

  else
  {
    v9 = 1;
  }

  if (v9)
  {
    v10 = &CMatrixRow::operator[]const::zero;
  }

  else
  {
    v10 = (a3 + 2);
  }

  *v10 = a2;
  v16 = &a4;
  if (v5 >= 2)
  {
    if (v8 >= v7)
    {
      v8 = v7;
    }

    else
    {
      v8 = v8;
    }

    v11 = a3 + 4;
    v12 = 1;
    v13 = v7;
    do
    {
      v14 = &v11[2 * v13];
      v15 = v16++;
      if (v12 >= v8)
      {
        v14 = &CMatrixRow::operator[]const::zero;
      }

      *v14 = *v15;
      ++v12;
      v13 += v7;
      v11 += 2;
    }

    while (v5 != v12);
  }
}

void CMatrix::identityMatrix(CMatrix *this@<X0>, unsigned int *a2@<X8>)
{
  v2 = this;
  *a2 = this;
  a2[1] = this;
  if (this >= 6)
  {
    *a2 = 0;
    bzero(a2 + 2, 0xC8uLL);
  }

  else
  {
    bzero(a2 + 2, 0xC8uLL);
    if (!v2)
    {
      return;
    }
  }

  v4 = 0;
  v5 = 0;
  LODWORD(v7) = *a2;
  v6 = a2[1];
  if (*a2 >= v6)
  {
    v7 = v6;
  }

  else
  {
    v7 = v7;
  }

  v8 = vdupq_n_s64(v2 - 1);
  v9 = a2 + 2;
  v10 = a2 + 4;
  v11 = xmmword_19CF22E40;
  v12 = 2 * v6;
  v13 = vdupq_n_s64(2uLL);
  do
  {
    v14 = vmovn_s64(vcgeq_u64(v8, v11));
    if (v14.i8[0])
    {
      v15 = &v9[2 * v4];
      if (v5 >= v7)
      {
        v15 = &CMatrixRow::operator[]const::zero;
      }

      *v15 = 0x3FF0000000000000;
    }

    if (v14.i8[4])
    {
      v16 = &v10[2 * v6];
      if (v5 + 1 >= v7)
      {
        v16 = &CMatrixRow::operator[]const::zero;
      }

      *v16 = 0x3FF0000000000000;
    }

    v5 += 2;
    v10 += 4;
    v11 = vaddq_s64(v11, v13);
    v6 += v12;
    v9 += 4;
    v4 += v12;
  }

  while (((v2 + 1) & 0x1FFFFFFFELL) != v5);
}

unsigned int *CMatrix::operator=(unsigned int *a1, unsigned int *a2)
{
  if (a1 != a2)
  {
    v3 = *a2;
    v4 = a2[1];
    *a1 = *a2;
    a1[1] = v4;
    memcpy(a1 + 2, a2 + 2, 8 * v3 * v4);
  }

  return a1;
}

void CMatrix::operator+(unsigned int *a1@<X0>, _DWORD *a2@<X1>, unsigned int *a3@<X8>)
{
  v4 = *a1;
  if (v4 == *a2 && (v7 = a1[1], v7 == a2[1]))
  {
    *a3 = v4;
    a3[1] = v7;
    if (v4 > 5 || v7 >= 6)
    {
      *a3 = 0;
    }

    bzero(a3 + 2, 0xC8uLL);
    if (v4)
    {
      v9 = 0;
      v10 = 0;
      v11 = 0;
      v12 = *a3;
      v13 = a3[1];
      do
      {
        if (v7)
        {
          v14 = 0;
          v15 = &a3[2 * v9 + 2];
          do
          {
            if (v14 >= v13 || v11 >= v12)
            {
              v17 = &CMatrixRow::operator[]const::zero;
            }

            else
            {
              v17 = v15;
            }

            *v17 = *&a1[2 * v10 + 2 + 2 * v14] + *&a2[2 * v10 + 2 + 2 * v14];
            ++v14;
            v15 += 8;
          }

          while (v7 != v14);
        }

        ++v11;
        v10 += v7;
        v9 += v13;
      }

      while (v11 != v4);
    }
  }

  else
  {
    *a3 = 0;

    bzero(a3 + 2, 0xC8uLL);
  }
}

void CMatrix::operator*(unsigned int *a1@<X0>, _DWORD *a2@<X1>, unsigned int *a3@<X8>)
{
  v4 = a1[1];
  if (v4 == *a2)
  {
    v7 = *a1;
    v8 = a2[1];
    *a3 = v7;
    a3[1] = v8;
    if (v7 > 5 || v8 >= 6)
    {
      *a3 = 0;
    }

    bzero(a3 + 2, 0xC8uLL);
    if (v7)
    {
      v10 = 0;
      v11 = 0;
      v12 = *a3;
      v13 = a3[1];
      do
      {
        if (v8)
        {
          for (i = 0; i != v8; ++i)
          {
            v15 = i >= v13 || v11 >= v12;
            v16 = &a3[2 * (v13 * v11) + 2 + 2 * i];
            if (v15)
            {
              v16 = &CMatrixRow::operator[]const::zero;
            }

            *v16 = 0.0;
            if (v4)
            {
              v17 = 0;
              v18 = 0.0;
              v19 = v4;
              v20 = &a1[2 * v10 + 2];
              do
              {
                v21 = *v20++;
                v18 = v18 + v21 * *&a2[2 * i + 2 + 2 * v17];
                *v16 = v18;
                v17 += v8;
                --v19;
              }

              while (v19);
            }
          }
        }

        ++v11;
        v10 += v4;
      }

      while (v11 != v7);
    }
  }

  else
  {
    *a3 = 0;

    bzero(a3 + 2, 0xC8uLL);
  }
}

void CMatrix::transpose(CMatrix *this@<X0>, unsigned int *a2@<X8>)
{
  v5 = *this;
  v4 = *(this + 1);
  *a2 = v4;
  a2[1] = v5;
  if (v4 > 5 || v5 >= 6)
  {
    *a2 = 0;
  }

  bzero(a2 + 2, 0xC8uLL);
  if (v5)
  {
    v7 = 0;
    v8 = 0;
    v9 = *a2;
    v10 = a2[1];
    do
    {
      if (v4)
      {
        v11 = 0;
        for (i = 0; i != v4; ++i)
        {
          v13 = v8 >= v10 || i >= v9;
          v14 = &a2[2 * v8 + 2 + 2 * v11];
          if (v13)
          {
            v14 = &CMatrixRow::operator[]const::zero;
          }

          *v14 = *(this + v7 + i + 1);
          v11 += v10;
        }
      }

      ++v8;
      v7 += v4;
    }

    while (v8 != v5);
  }
}

void CMatrix::inverse(CMatrix *this@<X0>, unsigned int *a2@<X8>)
{
  v34 = *MEMORY[0x1E69E9840];
  v4 = *(this + 1);
  if (*this != 3 || v4 != 3)
  {
    if (*this != v4)
    {
      CMatrix::transpose(this, v27);
      CMatrix::operator*(v27, this, v26);
      CMatrix::inverse(v25, v26);
      CMatrix::operator*(v25, v27, a2);
      return;
    }

    goto LABEL_8;
  }

  v6 = *(this + 1);
  v7 = *(this + 2);
  v8 = *(this + 3);
  v9 = *(this + 4);
  v10 = *(this + 5);
  v11 = *(this + 6);
  v12 = *(this + 7);
  v13 = *(this + 8);
  v14 = *(this + 9);
  v27[0] = v10 * v14 - v13 * v11;
  v27[1] = v13 * v8 - v7 * v14;
  v27[2] = v7 * v11 - v10 * v8;
  v28 = v12 * v11 - v9 * v14;
  v29 = v6 * v14 - v12 * v8;
  v30 = v9 * v8 - v6 * v11;
  v31 = v9 * v13 - v12 * v10;
  v32 = v12 * v7 - v6 * v13;
  v33 = v6 * v10 - v9 * v7;
  v15 = v7 * v28 + v6 * v27[0] + v8 * v31;
  if (fabs(v15) < 1.0e-10)
  {
LABEL_8:
    *a2 = 0;

    bzero(a2 + 2, 0xC8uLL);
    return;
  }

  *a2 = 0x300000003;
  bzero(a2 + 2, 0xC8uLL);
  v16 = 0;
  v17 = 0;
  v18 = *a2;
  v19 = a2[1];
  v20 = v27;
  do
  {
    v21 = 0;
    v22 = &a2[2 * v16 + 2];
    do
    {
      if (v21 >= v19 || v17 >= v18)
      {
        v24 = &CMatrixRow::operator[]const::zero;
      }

      else
      {
        v24 = v22;
      }

      *v24 = v20[v21++] / v15;
      v22 += 8;
    }

    while (v21 != 3);
    ++v17;
    v20 += 3;
    v16 += v19;
  }

  while (v17 != 3);
}

uint64_t CMatrix::isNearIdentity(CMatrix *this, double a2)
{
  v2 = *this;
  if (v2 != *(this + 1))
  {
    return 0;
  }

  if (v2)
  {
    v3 = 0;
    v4 = 0;
    v5 = this + 8;
    result = 1;
LABEL_4:
    v7 = 0;
    while (1)
    {
      v8 = v4 == v7 ? *&v5[8 * (v2 * v4) + 8 * v4] + -1.0 : *&v5[8 * v3 + 8 * v7];
      if (fabs(v8) >= a2)
      {
        return 0;
      }

      if (v2 == ++v7)
      {
        ++v4;
        v3 += v2;
        if (v4 != v2)
        {
          goto LABEL_4;
        }

        return result;
      }
    }
  }

  return 1;
}

uint64_t OUTLINED_FUNCTION_0_7(void *a1, const char *a2, uint64_t a3)
{

  return [a1 newTextureViewWithPixelFormat:a3 textureType:2 levels:0 slices:1, v3, 1];
}

uint64_t OUTLINED_FUNCTION_4_4()
{
  v3 = *(v0 + 8);

  return [v3 newComputePipelineStateWithFunction:v1 error:0];
}

uint64_t OUTLINED_FUNCTION_5_1()
{

  return [v1 setTexture:v0 atIndex:3];
}

uint64_t OUTLINED_FUNCTION_6_1()
{

  return [v1 setTexture:v0 atIndex:2];
}

uint64_t OUTLINED_FUNCTION_3_4()
{

  return [v1 setTexture:v0 atIndex:1];
}

uint64_t mtlutl_ComputeThreadGroupParameters(uint64_t result, unsigned int a2, _DWORD *a3, _DWORD *a4, unsigned int a5, unsigned int a6)
{
  if ((a5 | result | a2))
  {
    v6 = 1;
  }

  else
  {
    v6 = 1;
    v7 = result;
    do
    {
      v8 = a5;
      a5 >>= 1;
      result = v7 >> 1;
      v9 = a2;
      a2 >>= 1;
      v6 *= 2;
      if ((v8 & 2) != 0)
      {
        break;
      }

      if ((v7 & 2) != 0)
      {
        break;
      }

      v7 >>= 1;
    }

    while ((v9 & 2) == 0);
  }

  if ((a6 | result))
  {
    v10 = 1;
  }

  else
  {
    v10 = 1;
    v11 = a6;
    v12 = result;
    do
    {
      a6 = v11 >> 1;
      result = v12 >> 1;
      v10 *= 2;
      v13 = v11 | v12;
      v11 >>= 1;
      v12 >>= 1;
    }

    while ((v13 & 2) == 0);
  }

  if (a2 >= result)
  {
    v14 = result;
  }

  else
  {
    v14 = a2;
  }

  if (v14)
  {
    if (v14 + 1 > 2)
    {
      v15 = v14 + 1;
    }

    else
    {
      v15 = 2;
    }

    v16 = 1;
    v17 = 1;
    v18 = 1;
    do
    {
      if (!(a5 % v16))
      {
        v19 = 1;
        for (i = a6; ; i /= 7u)
        {
          while (1)
          {
            while (1)
            {
              while ((i & 1) == 0 && 2 * v16 * v19 <= result)
              {
                i >>= 1;
                v19 *= 2;
              }

              if (i != 3 * (i / 3) || 3 * v16 * v19 > result)
              {
                break;
              }

              v19 *= 3;
              i /= 3u;
            }

            if (i != 5 * (i / 5) || 5 * v16 * v19 > result)
            {
              break;
            }

            v19 *= 5;
            i /= 5u;
          }

          if (i % 7 || 7 * v16 * v19 > result)
          {
            break;
          }

          v19 *= 7;
        }

        v24 = v17 * v18;
        if (v19 * v16 >= v17 * v18)
        {
          v18 = v16;
        }

        if (v19 * v16 >= v24)
        {
          v17 = v19;
        }
      }

      ++v16;
    }

    while (v16 != v15);
  }

  else
  {
    v18 = 1;
    v17 = 1;
  }

  *a3 = v18 * v6;
  *a4 = v17 * v10;
  return result;
}

CIImage *CI::Perspective::gradDirImage(CI::Perspective *this, CIImage *a2)
{
  v9[1] = *MEMORY[0x1E69E9840];
  v3 = [(CIKernel *)CIColorKernel kernelWithInternalRepresentation:&CI::_gradientDirection];
  [(CI::Perspective *)this extent];
  v9[0] = this;
  return -[CIColorKernel applyWithExtent:arguments:](v3, "applyWithExtent:arguments:", [MEMORY[0x1E695DEC8] arrayWithObjects:v9 count:1], v4, v5, v6, v7);
}

CIImage *CI::Perspective::gradMagImage(CI::Perspective *this, CIImage *a2)
{
  v9[1] = *MEMORY[0x1E69E9840];
  v3 = [(CIKernel *)CIColorKernel kernelWithInternalRepresentation:&CI::_gradientMagnitude];
  [(CI::Perspective *)this extent];
  v9[0] = this;
  return -[CIColorKernel applyWithExtent:arguments:](v3, "applyWithExtent:arguments:", [MEMORY[0x1E695DEC8] arrayWithObjects:v9 count:1], v4, v5, v6, v7);
}

BOOL CI::Perspective::CIImageToFile(CI::Perspective *this, CIImage *a2, NSString *a3, CGRect a4)
{
  height = a4.size.height;
  width = a4.size.width;
  y = a4.origin.y;
  x = a4.origin.x;
  {
    CI::Perspective::CIImageToFile(CIImage *,NSString *,CGRect)::colorspace = CGColorSpaceCreateDeviceRGB();
  }

  v14.origin.x = x;
  v14.origin.y = y;
  v14.size.width = width;
  v14.size.height = height;
  if (!CGRectIsNull(v14))
  {
    this = [(CI::Perspective *)this imageByCroppingToRect:x, y, width, height];
  }

  v10 = +[CIContext context];
  v11 = [(CIContext *)v10 PNGRepresentationOfImage:this format:2056 colorSpace:CI::Perspective::CIImageToFile(CIImage * options:NSString *, CGRect)::colorspace, MEMORY[0x1E695E0F8]];

  return [(NSData *)v11 writeToFile:a2 atomically:1];
}

uint64_t CI::sw_gradientDirection(uint64_t a1, uint64_t a2, uint64_t a3)
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

double CI::sw_gradientMagnitude(uint64_t a1, uint64_t a2, uint64_t a3)
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

  v8 = vmulq_f32(*v7, *v7).u64[0];
  v8.f32[0] = sqrtf(vaddv_f32(v8));
  *&result = vdupq_lane_s32(v8, 0).u64[0];
  return result;
}

__n64 CI::Perspective::getRotation(CI::Perspective *this, float a2, float a3, float a4)
{
  v6 = __sincosf_stret(a2 * 0.5);
  v33 = vmulq_n_f32(xmmword_19CF28470, v6.__sinval);
  v7 = __sincosf_stret(a3 * 0.5);
  v8 = vmulq_n_f32(xmmword_19CF28480, v7.__sinval);
  v8.i32[3] = LODWORD(v7.__cosval);
  v32 = v8;
  v9 = __sincosf_stret(a4 * 0.5);
  _Q0 = vmulq_n_f32(xmmword_19CF28490, v9.__sinval);
  _Q0.i32[3] = LODWORD(v9.__cosval);
  v11 = vnegq_f32(v32);
  v12 = vtrn2q_s32(v32, vtrn1q_s32(v32, v11));
  v13 = vmlaq_n_f32(vmulq_lane_f32(vextq_s8(v32, v11, 8uLL), *v33.f32, 1), vextq_s8(v12, v12, 8uLL), v33.f32[0]);
  v14 = vrev64q_s32(v32);
  v14.i32[0] = v11.i32[1];
  v14.i32[3] = v11.i32[2];
  v15 = vaddq_f32(vmlaq_laneq_f32(vmulq_n_f32(v32, v6.__cosval), v14, v33, 2), v13);
  v16 = vnegq_f32(_Q0);
  v17 = vtrn2q_s32(_Q0, vtrn1q_s32(_Q0, v16));
  _Q5 = vrev64q_s32(_Q0);
  _Q5.i32[0] = v16.i32[1];
  _Q5.i32[3] = v16.i32[2];
  _Q3 = vaddq_f32(vmlaq_n_f32(vmulq_lane_f32(vextq_s8(_Q0, v16, 8uLL), *v15.f32, 1), vextq_s8(v17, v17, 8uLL), v15.f32[0]), vmlaq_laneq_f32(vmulq_laneq_f32(_Q0, v15, 3), _Q5, v15, 2));
  _S4 = _Q3.i32[1];
  _Q5.i32[0] = _Q3.i32[2];
  __asm { FMLS            S0, S5, V3.S[2] }

  _S7 = _Q3.i32[3];
  __asm { FMLA            S0, S7, V3.S[3] }

  v26 = vmuls_lane_f32(_Q3.f32[2], _Q3, 3);
  __asm
  {
    FMLA            S6, S4, V3.S[1]
    FMLA            S6, S7, V3.S[3]
    FMLA            S18, S5, V3.S[1]
    FMLA            S7, S5, V3.S[2]
  }

  result.n64_f32[1] = -(v26 - (_Q3.f32[0] * _Q3.f32[1])) - (v26 - (_Q3.f32[0] * _Q3.f32[1]));
  __asm { FMLS            S5, S4, V3.S[1] }

  return result;
}

BOOL CI::Perspective::intersect(int32x2_t *a1, int32x2_t *a2, float32x2_t *a3)
{
  v3.i32[0] = *a1;
  v3.i32[1] = HIDWORD(*&a2[1]);
  v4.i32[0] = a1[1];
  v4.i32[1] = HIDWORD(*a2);
  v5 = vsub_f32(v3, v4);
  v4.i32[0] = *a2;
  v8.i32[1] = HIDWORD(*&a1[1]);
  v6.i32[0] = a2[1];
  v6.i32[1] = HIDWORD(*a1);
  v7 = vsub_f32(v8, v6);
  v8.f32[0] = (-v5.f32[1] * v5.f32[0]) + (v7.f32[1] * v7.f32[0]);
  v9 = -v8.f32[0];
  if (v8.f32[0] >= 0.0)
  {
    v9 = (-v5.f32[1] * v5.f32[0]) + (v7.f32[1] * v7.f32[0]);
  }

  v10 = v9;
  if (v10 >= 0.01)
  {
    v11 = vmla_f32(vmul_f32(vzip2_s32(a2[1], a1[1]), vneg_f32(vzip1_s32(*a2, *a1))), vzip2_s32(*a2, *a1), vzip1_s32(a2[1], a1[1]));
    *a3 = vdiv_f32(vmla_f32(vmul_f32(vrev64_s32(v11), vneg_f32(v7)), v11, v5), vdup_lane_s32(v8, 0));
  }

  return v10 >= 0.01;
}

BOOL CI::Perspective::intersect(float *a1, _DWORD *a2, double a3, double a4, int8x16_t a5)
{
  __asm { FMOV            V3.2S, #1.0 }

  v10 = vdiv_f32(_D3, *&a4);
  if (*&a4 == 0.0)
  {
    v14 = INFINITY;
    v13 = -INFINITY;
  }

  else
  {
    v11 = *&a5.i32[2];
    if (*&a4 <= 0.0)
    {
      v12 = *&a5.i32[2];
    }

    else
    {
      v12 = *a5.i32;
    }

    v13 = (v12 - *&a3) * v10.f32[0];
    if (*&a4 <= 0.0)
    {
      v11 = *a5.i32;
    }

    v14 = (v11 - *&a3) * v10.f32[0];
  }

  if (*(&a4 + 1) == 0.0)
  {
    v17 = -COERCE_DOUBLE(0x7F0000007FLL);
  }

  else
  {
    v15 = vextq_s8(a5, a5, 8uLL).u64[0];
    v16 = vzip2_s32(*a5.i8, v15);
    a5.i32[0] = v15.i32[1];
    v17 = COERCE_DOUBLE(vmul_lane_f32(vsub_f32(vbsl_s8(vcltz_s32(vshl_n_s32(vdup_n_s32(*(&a4 + 1) > 0.0), 0x1FuLL)), v16, *a5.i8), vdup_lane_s32(*&a3, 1)), v10, 1));
  }

  if (v13 <= *&v17)
  {
    v18 = *&v17;
  }

  else
  {
    v18 = v13;
  }

  *a1 = v18;
  LODWORD(v17) = HIDWORD(v17);
  if (v14 < *(&v17 + 1))
  {
    *&v17 = v14;
  }

  *a2 = LODWORD(v17);
  return fmaxf(*a1, 0.0) <= *&v17;
}

float CI::Perspective::keystoneV(double a1, double a2, double a3, double a4)
{
  result = -atan2f((-(*(&a2 + 1) - *(&a1 + 1)) * vsub_f32(*&a4, *&a3).f32[0]) + ((*(&a4 + 1) - *(&a3 + 1)) * vsub_f32(*&a2, *&a1).f32[0]), ((*(&a2 + 1) - *(&a1 + 1)) * ((-*(&a4 + 1) * *&a3) + (*&a4 * *(&a3 + 1)))) - ((*(&a4 + 1) - *(&a3 + 1)) * ((-*(&a2 + 1) * *&a1) + (*&a2 * *(&a1 + 1)))));
  if (result < -1.57079633)
  {
    v5 = result + 3.14159265;
    result = v5;
  }

  if (result > 1.57079633)
  {
    return result + -3.14159265;
  }

  return result;
}

float CI::Perspective::keystoneH(double a1, double a2, double a3, double a4)
{
  v4 = vsub_f32(*&a4, *&a3).f32[0];
  v5 = vsub_f32(*&a2, *&a1).f32[0];
  result = -atan2f((v4 * (*(&a2 + 1) - *(&a1 + 1))) - (v5 * (*(&a4 + 1) - *(&a3 + 1))), (v5 * (vmuls_lane_f32(-*&a3, *&a4, 1) + (*&a4 * *(&a3 + 1)))) - (v4 * (vmuls_lane_f32(-*&a1, *&a2, 1) + (*&a2 * *(&a1 + 1)))));
  if (result < -1.57079633)
  {
    v7 = result + 3.14159265;
    result = v7;
  }

  if (result > 1.57079633)
  {
    return result + -3.14159265;
  }

  return result;
}

float CI::Perspective::horizonV(CI::Perspective *a1, double a2, double a3, double a4, double a5, float a6, float a7)
{
  *v7.f32 = CI::Perspective::getRotation(a1, a6, a7, 0.0);
  v10 = vaddq_f32(v9, vmlaq_lane_f32(vmulq_n_f32(v7, *&a2), v8, *&a2, 1));
  v11 = vaddq_f32(v9, vmlaq_lane_f32(vmulq_n_f32(v7, *&a4), v8, *&a4, 1));
  *v10.i8 = vadd_f32(vdiv_f32(*v10.i8, *&vdupq_laneq_s32(v10, 2)), vdiv_f32(*v11.i8, *&vdupq_laneq_s32(v11, 2)));
  v12 = vaddq_f32(v9, vmlaq_lane_f32(vmulq_n_f32(v7, *&a3), v8, *&a3, 1));
  v13 = vaddq_f32(v9, vmlaq_lane_f32(vmulq_n_f32(v7, *&a5), v8, *&a5, 1));
  *v8.f32 = vsub_f32(vmul_f32(*v10.i8, 0x3F0000003F000000), vmul_f32(vadd_f32(vdiv_f32(*v12.i8, *&vdupq_laneq_s32(v12, 2)), vdiv_f32(*v13.i8, *&vdupq_laneq_s32(v13, 2))), 0x3F0000003F000000));
  result = atan2f(v8.f32[1], v8.f32[0]) + -1.57079633;
  if (result < -1.57079633)
  {
    v15 = result + 3.14159265;
    result = v15;
  }

  if (result > 1.57079633)
  {
    return result + -3.14159265;
  }

  return result;
}

float CI::Perspective::horizonH(CI::Perspective *a1, double a2, double a3, double a4, double a5, float a6, float a7)
{
  *v7.f32 = CI::Perspective::getRotation(a1, a6, a7, 0.0);
  v10 = vaddq_f32(v9, vmlaq_lane_f32(vmulq_n_f32(v7, *&a2), v8, *&a2, 1));
  v11 = vaddq_f32(v9, vmlaq_lane_f32(vmulq_n_f32(v7, *&a4), v8, *&a4, 1));
  *v10.i8 = vadd_f32(vdiv_f32(*v10.i8, *&vdupq_laneq_s32(v10, 2)), vdiv_f32(*v11.i8, *&vdupq_laneq_s32(v11, 2)));
  v12 = vaddq_f32(v9, vmlaq_lane_f32(vmulq_n_f32(v7, *&a3), v8, *&a3, 1));
  v13 = vaddq_f32(v9, vmlaq_lane_f32(vmulq_n_f32(v7, *&a5), v8, *&a5, 1));
  *v8.f32 = vsub_f32(vmul_f32(*v10.i8, 0x3F0000003F000000), vmul_f32(vadd_f32(vdiv_f32(*v12.i8, *&vdupq_laneq_s32(v12, 2)), vdiv_f32(*v13.i8, *&vdupq_laneq_s32(v13, 2))), 0x3F0000003F000000));
  result = atan2f(v8.f32[1], v8.f32[0]);
  if (result < -1.57079633)
  {
    v15 = result + 3.14159265;
    result = v15;
  }

  if (result > 1.57079633)
  {
    return result + -3.14159265;
  }

  return result;
}

uint64_t PixelBufferApplyPlaneBlock(CVPixelBufferRef pixelBuffer, uint64_t a2)
{
  result = 4294960635;
  if (pixelBuffer)
  {
    if (a2)
    {
      PlaneCount = CVPixelBufferGetPlaneCount(pixelBuffer);
      result = CVPixelBufferLockBaseAddress(pixelBuffer, 0);
      if (!result)
      {
        if (PlaneCount)
        {
          if ((PlaneCount & 0xFFFFFFFFFFFFFFFELL) == 2)
          {
            for (i = 0; i != PlaneCount; ++i)
            {
              BaseAddressOfPlane = CVPixelBufferGetBaseAddressOfPlane(pixelBuffer, i);
              BytesPerRowOfPlane = CVPixelBufferGetBytesPerRowOfPlane(pixelBuffer, i);
              WidthOfPlane = CVPixelBufferGetWidthOfPlane(pixelBuffer, i);
              HeightOfPlane = CVPixelBufferGetHeightOfPlane(pixelBuffer, i);
              if (BaseAddressOfPlane && BytesPerRowOfPlane && WidthOfPlane)
              {
                if (HeightOfPlane)
                {
                  (*(a2 + 16))(a2, BaseAddressOfPlane, i, WidthOfPlane, HeightOfPlane, BytesPerRowOfPlane);
                }
              }
            }
          }
        }

        else
        {
          BaseAddress = CVPixelBufferGetBaseAddress(pixelBuffer);
          BytesPerRow = CVPixelBufferGetBytesPerRow(pixelBuffer);
          Width = CVPixelBufferGetWidth(pixelBuffer);
          Height = CVPixelBufferGetHeight(pixelBuffer);
          if (BaseAddress && BytesPerRow && Width && Height)
          {
            (*(a2 + 16))(a2, BaseAddress, 0, Width, Height, BytesPerRow);
          }
        }

        CVPixelBufferUnlockBaseAddress(pixelBuffer, 0);
        return 0;
      }
    }
  }

  return result;
}

uint64_t PixelBufferApplyOnePlaneBlock(CVPixelBufferRef pixelBuffer, size_t a2, uint64_t a3)
{
  result = 4294960635;
  if (pixelBuffer && a3)
  {
    PlaneCount = CVPixelBufferGetPlaneCount(pixelBuffer);
    if (a2)
    {
      v8 = PlaneCount == 0;
    }

    else
    {
      v8 = 0;
    }

    v9 = v8;
    if (v9 == PlaneCount - 1 >= a2)
    {
      return 4294960635;
    }

    else
    {
      v10 = PlaneCount;
      result = CVPixelBufferLockBaseAddress(pixelBuffer, 0);
      if (!result)
      {
        if (v10)
        {
          if ((v10 & 0xFFFFFFFFFFFFFFFELL) == 2)
          {
            BaseAddressOfPlane = CVPixelBufferGetBaseAddressOfPlane(pixelBuffer, a2);
            BytesPerRowOfPlane = CVPixelBufferGetBytesPerRowOfPlane(pixelBuffer, a2);
            WidthOfPlane = CVPixelBufferGetWidthOfPlane(pixelBuffer, a2);
            HeightOfPlane = CVPixelBufferGetHeightOfPlane(pixelBuffer, a2);
            if (BaseAddressOfPlane)
            {
              if (BytesPerRowOfPlane && WidthOfPlane)
              {
                if (HeightOfPlane)
                {
                  (*(a3 + 16))(a3, BaseAddressOfPlane, a2, WidthOfPlane, HeightOfPlane, BytesPerRowOfPlane);
                }
              }
            }
          }
        }

        else
        {
          BaseAddress = CVPixelBufferGetBaseAddress(pixelBuffer);
          BytesPerRow = CVPixelBufferGetBytesPerRow(pixelBuffer);
          Width = CVPixelBufferGetWidth(pixelBuffer);
          Height = CVPixelBufferGetHeight(pixelBuffer);
          if (BaseAddress && BytesPerRow && Width && Height)
          {
            (*(a3 + 16))(a3, BaseAddress, 0, Width, Height, BytesPerRow);
          }
        }

        CVPixelBufferUnlockBaseAddress(pixelBuffer, 0);
        return 0;
      }
    }
  }

  return result;
}

uint64_t PixelBufferApplyPlaneReadOnlyBlock(__CVBuffer *a1, uint64_t a2)
{
  PlaneCount = CVPixelBufferGetPlaneCount(a1);
  v5 = CVPixelBufferLockBaseAddress(a1, 1uLL);
  if (!v5)
  {
    if (PlaneCount)
    {
      if ((PlaneCount & 0xFFFFFFFFFFFFFFFELL) == 2)
      {
        for (i = 0; i != PlaneCount; ++i)
        {
          BaseAddressOfPlane = CVPixelBufferGetBaseAddressOfPlane(a1, i);
          BytesPerRowOfPlane = CVPixelBufferGetBytesPerRowOfPlane(a1, i);
          WidthOfPlane = CVPixelBufferGetWidthOfPlane(a1, i);
          HeightOfPlane = CVPixelBufferGetHeightOfPlane(a1, i);
          if (BaseAddressOfPlane && BytesPerRowOfPlane && WidthOfPlane && HeightOfPlane)
          {
            (*(a2 + 16))(a2, BaseAddressOfPlane, i, WidthOfPlane, HeightOfPlane, BytesPerRowOfPlane);
          }
        }
      }
    }

    else
    {
      BaseAddress = CVPixelBufferGetBaseAddress(a1);
      BytesPerRow = CVPixelBufferGetBytesPerRow(a1);
      Width = CVPixelBufferGetWidth(a1);
      Height = CVPixelBufferGetHeight(a1);
      if (BaseAddress && BytesPerRow && Width && Height)
      {
        (*(a2 + 16))(a2, BaseAddress, 0, Width, Height, BytesPerRow);
      }
    }

    CVPixelBufferUnlockBaseAddress(a1, 1uLL);
  }

  return v5;
}

uint64_t PixelBufferApplyOnePlaneReadOnlyBlock(__CVBuffer *a1, size_t a2, uint64_t a3)
{
  PlaneCount = CVPixelBufferGetPlaneCount(a1);
  if (a2)
  {
    v7 = PlaneCount == 0;
  }

  else
  {
    v7 = 0;
  }

  v8 = v7;
  if (v8 == PlaneCount - 1 >= a2)
  {
    return 4294960635;
  }

  v9 = PlaneCount;
  result = CVPixelBufferLockBaseAddress(a1, 1uLL);
  if (!result)
  {
    if (v9)
    {
      if ((v9 & 0xFFFFFFFFFFFFFFFELL) == 2)
      {
        BaseAddressOfPlane = CVPixelBufferGetBaseAddressOfPlane(a1, a2);
        BytesPerRowOfPlane = CVPixelBufferGetBytesPerRowOfPlane(a1, a2);
        WidthOfPlane = CVPixelBufferGetWidthOfPlane(a1, a2);
        HeightOfPlane = CVPixelBufferGetHeightOfPlane(a1, a2);
        if (BaseAddressOfPlane)
        {
          if (BytesPerRowOfPlane && WidthOfPlane)
          {
            if (HeightOfPlane)
            {
              (*(a3 + 16))(a3, BaseAddressOfPlane, a2, WidthOfPlane, HeightOfPlane, BytesPerRowOfPlane);
            }
          }
        }
      }
    }

    else
    {
      BaseAddress = CVPixelBufferGetBaseAddress(a1);
      BytesPerRow = CVPixelBufferGetBytesPerRow(a1);
      Width = CVPixelBufferGetWidth(a1);
      Height = CVPixelBufferGetHeight(a1);
      if (BaseAddress && BytesPerRow && Width && Height)
      {
        (*(a3 + 16))(a3, BaseAddress, 0, Width, Height, BytesPerRow);
      }
    }

    CVPixelBufferUnlockBaseAddress(a1, 1uLL);
    return 0;
  }

  return result;
}

uint64_t GetPixelBufferYCCMatrix(__CVBuffer *a1)
{
  result = CVBufferGetAttachment(a1, *MEMORY[0x1E6965F98], 0);
  if (result)
  {
    v2 = result;
    if (CFEqual(result, *MEMORY[0x1E6965FD0]))
    {
      return 709;
    }

    else if (CFEqual(v2, *MEMORY[0x1E6965FC8]))
    {
      return 601;
    }

    else if (CFEqual(v2, *MEMORY[0x1E6965FF0]))
    {
      return 240;
    }

    else if (CFEqual(v2, *MEMORY[0x1E6965FB0]))
    {
      return 2020;
    }

    else
    {
      return 0;
    }
  }

  return result;
}

double GetPixelBufferCleanAperture(__CVBuffer *a1)
{
  v2 = CVBufferCopyAttachment(a1, *MEMORY[0x1E6965F08], 0);
  if (!v2)
  {
    v2 = CVBufferCopyAttachment(a1, *MEMORY[0x1E6965D70], 0);
    if (!v2)
    {
      return *MEMORY[0x1E695F050];
    }
  }

  v3 = v2;
  CGCFDictionaryGetFloatWithDefault();
  v5 = v4;
  CGCFDictionaryGetFloatWithDefault();
  v7 = v6;
  CGCFDictionaryGetFloatWithDefault();
  v9 = v8;
  CGCFDictionaryGetFloatWithDefault();
  v11 = v10;
  CFRelease(v3);
  if (v9 == 0.0)
  {
    return *MEMORY[0x1E695F050];
  }

  v12 = v11;
  if (v12 == 0.0)
  {
    return *MEMORY[0x1E695F050];
  }

  v13 = v7;
  v14 = v5;
  v15 = v12;
  v16 = v9;
  v17 = v13;
  v18 = v14;
  Width = CVPixelBufferGetWidth(a1);
  Height = CVPixelBufferGetHeight(a1);
  v23.origin.x = floor((Width - v16) * 0.5) + v18;
  v23.origin.y = floor((Height - v15) * 0.5) - v17;
  v25.origin.x = 0.0;
  v25.origin.y = 0.0;
  v23.size.width = v16;
  v23.size.height = v15;
  v25.size.width = Width;
  v25.size.height = Height;
  v24 = CGRectIntersection(v23, v25);
  x = v24.origin.x;
  v26.origin.x = 0.0;
  v26.origin.y = 0.0;
  v26.size.width = Width;
  v26.size.height = Height;
  if (CGRectEqualToRect(v24, v26))
  {
    return *MEMORY[0x1E695F050];
  }

  return x;
}

CGColorSpaceRef CVImageBufferCopyColorSpace(__CVBuffer *a1)
{
  PixelFormatType = CVPixelBufferGetPixelFormatType(a1);
  if ((PixelFormatType & 0xFD000000) == 0x2D000000 || PixelFormatType >> 24 == 124 || PixelFormatType >> 24 == 38)
  {
    v3 = 0;
    if ((PixelFormatType & 0xFFFFFFu) - 4993328 > 6 || ((1 << (PixelFormatType - 48)) & 0x45) == 0)
    {
      v4 = PixelFormatType & 0xFFFFFF | 0x20000000;
      if (v4 != 541863992 && v4 != 541864040)
      {
        goto LABEL_8;
      }
    }
  }

  else
  {
    v3 = 0;
    if (PixelFormatType <= 1279340599)
    {
      if (((PixelFormatType - 1278226488) > 0x30 || ((1 << (PixelFormatType - 56)) & 0x1400000000001) == 0) && ((PixelFormatType - 1278226736) > 6 || ((1 << (PixelFormatType - 48)) & 0x45) == 0))
      {
        goto LABEL_8;
      }
    }

    else
    {
      if (PixelFormatType <= 1279342647)
      {
        if ((PixelFormatType - 1279340600) <= 0x30 && ((1 << (PixelFormatType - 56)) & 0x1400000000001) != 0)
        {
          goto LABEL_9;
        }

        v10 = 1279340854;
      }

      else if (PixelFormatType <= 1717856626)
      {
        if (PixelFormatType == 1279342648)
        {
          goto LABEL_9;
        }

        v10 = 1717855600;
      }

      else
      {
        if (PixelFormatType == 1717856627 || PixelFormatType == 1751410032)
        {
          goto LABEL_9;
        }

        v10 = 1751411059;
      }

      if (PixelFormatType != v10)
      {
LABEL_8:
        v3 = 1;
      }
    }
  }

LABEL_9:
  if (PixelFormatType > 1751410031)
  {
    if (PixelFormatType != 1751411059)
    {
      v5 = 1751410032;
LABEL_14:
      if (PixelFormatType == v5)
      {
        goto LABEL_15;
      }

      if (dyld_program_sdk_at_least())
      {
        Attachment = CVBufferGetAttachment(a1, *MEMORY[0x1E6965CE8], 0);
        if (Attachment)
        {
          ICCBased = Attachment;
          CGColorSpaceRetain(Attachment);
          return ICCBased;
        }

        v11 = CVBufferGetAttachment(a1, *MEMORY[0x1E6965EC8], 0);
        if (v11)
        {
          v12 = v11;
          Length = CFDataGetLength(v11);
          v14 = CGDataProviderCreateWithData(0, v12, Length, 0);
          *buffer = 0;
          v28.location = 16;
          v28.length = 4;
          CFDataGetBytes(v12, v28, buffer);
          v15.i32[0] = *buffer;
          v16 = vmovl_u8(v15).u64[0];
          v17 = vuzp1_s8(v16, v16).u32[0] == 1497453127 ? 1 : 3;
          ICCBased = CGColorSpaceCreateICCBased(v17, 0, v14, 0);
          CFRelease(v14);
          if (ICCBased)
          {
            return ICCBased;
          }
        }
      }

      if (v3)
      {
        Attachments = CVBufferGetAttachments(a1, kCVAttachmentMode_ShouldPropagate);
        if (Attachments)
        {
          ColorSpaceFromAttachments = CVImageBufferCreateColorSpaceFromAttachments(Attachments);
          if (ColorSpaceFromAttachments)
          {
            return ColorSpaceFromAttachments;
          }
        }

        v20 = CVBufferGetAttachment(a1, *MEMORY[0x1E6965E80], 0);
        v21 = CVBufferGetAttachment(a1, *MEMORY[0x1E6965F98], 0);
        v22 = CVBufferGetAttachment(a1, *MEMORY[0x1E6965D88], 0);
        v23 = CVBufferGetAttachment(a1, *MEMORY[0x1E6965F30], 0);
        ColorSpaceFromAttachments = CreateColorSpaceFromInfo(v22, v23, v21, v20);
        if (ColorSpaceFromAttachments)
        {
          return ColorSpaceFromAttachments;
        }

        v24 = MEMORY[0x1E695F1C0];
      }

      else
      {
        v25 = CVBufferGetAttachment(a1, *MEMORY[0x1E6965F30], 0);
        if (v25)
        {
          if (CFEqual(v25, *MEMORY[0x1E6965F60]))
          {
            ColorSpaceFromAttachments = CGColorSpaceCreateWithName(*MEMORY[0x1E695F1A0]);
            if (ColorSpaceFromAttachments)
            {
              return ColorSpaceFromAttachments;
            }
          }
        }

        v24 = MEMORY[0x1E695F128];
      }

      return CGColorSpaceCreateWithName(*v24);
    }
  }

  else if (PixelFormatType != 1717855600)
  {
    v5 = 1717856627;
    goto LABEL_14;
  }

LABEL_15:
  v6 = *MEMORY[0x1E695F0F8];

  return CGColorSpaceCreateWithName(v6);
}

CFDictionaryRef CreateColorAttributesForColorSpace()
{
  keys[3] = *MEMORY[0x1E69E9840];
  v18 = 0;
  v19 = &v18;
  v20 = 0x2000000000;
  v21 = 0;
  v14 = 0;
  v15 = &v14;
  v16 = 0x2000000000;
  v17 = 0;
  v10 = 0;
  v11 = &v10;
  v12 = 0x2000000000;
  v13 = 0;
  v0 = CGColorSpaceCreateWithName(*MEMORY[0x1E695F148]);
  v1 = CGColorConversionInfoIterateColorSpaceFunctionsWithCallbacks();
  CGColorSpaceRelease(v0);
  v2 = 0;
  if (v1)
  {
    memset(keys, 0, 24);
    memset(values, 0, sizeof(values));
    v3 = v19[3];
    if (v3)
    {
      keys[0] = *MEMORY[0x1E6965D88];
      values[0] = v3;
      v4 = 1;
    }

    else
    {
      v4 = 0;
    }

    v5 = v15[3];
    if (v5)
    {
      keys[v4] = *MEMORY[0x1E6965F30];
      values[v4++] = v5;
    }

    v6 = v11 + 6;
    v7 = v11[6];
    if (v7 == 0.0)
    {
      v2 = CFDictionaryCreate(0, keys, values, v4, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
    }

    else
    {
      *v6 = roundf(v7 * 10000.0) / 10000.0;
      v8 = CFNumberCreate(0, kCFNumberFloatType, v6);
      keys[v4] = *MEMORY[0x1E6965E80];
      values[v4] = v8;
      v2 = CFDictionaryCreate(0, keys, values, v4 + 1, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
      if (v8)
      {
        CFRelease(v8);
      }
    }
  }

  _Block_object_dispose(&v10, 8);
  _Block_object_dispose(&v14, 8);
  _Block_object_dispose(&v18, 8);
  return v2;
}

uint64_t __CreateColorAttributesForColorSpace_block_invoke(uint64_t a1, uint64_t a2)
{
  if (*(a2 + 36) != 1)
  {
    return 0;
  }

  v3 = *(a2 + 44);
  if (v3 > 1)
  {
    return 0;
  }

  if (v3 == 1)
  {
    CGColorNxMTransformGetTransform();
    return 0;
  }

  v5 = *(a2 + 28);
  if (v5 > 1)
  {
    return 0;
  }

  if (!v5)
  {
    goto LABEL_11;
  }

  CGColorTRCGetFunction();
  if (v7 == 5)
  {
    return 0;
  }

  if (!*(a2 + 28))
  {
LABEL_11:
    *(*(*(a1 + 32) + 8) + 24) = *MEMORY[0x1E6965F60];
  }

  return 1;
}

BOOL __CreateColorAttributesForColorSpace_block_invoke_2(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t *a5)
{
  v6 = *a5;
  v7 = a4 - 2;
  if (a4 >= 2)
  {
    if (a5[1] != v6)
    {
      return 0;
    }

    v10 = a5 + 2;
    v11 = -1;
    while (v7)
    {
      v12 = *v10++;
      --v11;
      --v7;
      if (v12 != v6)
      {
        return -v11 >= a4;
      }
    }
  }

  CGColorTRCGetFunction();
  v8 = CGColorTRCGetGammaID();
  if (v8 > 6)
  {
    if (v8 <= 9)
    {
      if (v8 == 7)
      {
        v9 = MEMORY[0x1E6965F60];
        goto LABEL_32;
      }

      if (v8 == 8)
      {
        v9 = MEMORY[0x1E6965F70];
        goto LABEL_32;
      }
    }

    else
    {
      switch(v8)
      {
        case 10:
          v9 = MEMORY[0x1E6965F48];
          goto LABEL_32;
        case 12:
          v9 = MEMORY[0x1E6965F40];
          goto LABEL_32;
        case 14:
          v9 = MEMORY[0x1E6965F50];
LABEL_32:
          *(*(*(a1 + 32) + 8) + 24) = *v9;
          return 1;
      }
    }

    goto LABEL_26;
  }

  if (v8 > 1)
  {
    if (v8 == 2)
    {
      *(*(*(a1 + 32) + 8) + 24) = *MEMORY[0x1E6965F80];
      v14 = *(*(a1 + 40) + 8);
      v15 = 1074580685;
    }

    else
    {
      if (v8 != 3)
      {
        goto LABEL_26;
      }

      *(*(*(a1 + 32) + 8) + 24) = *MEMORY[0x1E6965F80];
      v14 = *(*(a1 + 40) + 8);
      v15 = 1072064102;
    }

    *(v14 + 24) = v15;
    return 1;
  }

  if (v8)
  {
    if (v8 == 1)
    {
      v9 = MEMORY[0x1E6965F88];
      goto LABEL_32;
    }

    goto LABEL_26;
  }

  if (!CGColorTRCPureGammaOriginal())
  {
LABEL_26:
    *(*(*(a1 + 32) + 8) + 24) = 0;
    return 1;
  }

  *(*(*(a1 + 32) + 8) + 24) = *MEMORY[0x1E6965F80];
  *(*(*(a1 + 40) + 8) + 24) = 0;
  return 1;
}

uint64_t __CreateColorAttributesForColorSpace_block_invoke_3(uint64_t a1)
{
  v15 = *MEMORY[0x1E69E9840];
  v10 = 0u;
  v11 = 0u;
  v9 = 0u;
  CGColorMatrixGetMatrix();
  v6 = 0u;
  v7 = 0u;
  v8 = 0u;
  v12 = xmmword_19CF2B4D0;
  v13 = xmmword_19CF2B4E0;
  v14 = xmmword_19CF2B4F0;
  if (near_matrix(&v6, &v12) || (v6 = v9, v7 = v10, v8 = v11, v12 = xmmword_19CF2B500, v13 = xmmword_19CF2B510, v14 = xmmword_19CF2B520, near_matrix(&v6, &v12)) || (v6 = v9, v7 = v10, v8 = v11, v12 = xmmword_19CF2B530, v13 = xmmword_19CF2B540, v14 = xmmword_19CF2B550, near_matrix(&v6, &v12)))
  {
    v2 = MEMORY[0x1E6965DB8];
LABEL_5:
    v3 = *v2;
    goto LABEL_6;
  }

  v6 = v9;
  v7 = v10;
  v8 = v11;
  v12 = xmmword_19CF2B560;
  v13 = xmmword_19CF2B570;
  v14 = xmmword_19CF2B580;
  if (near_matrix(&v6, &v12) || (v6 = v9, v7 = v10, v8 = v11, v12 = xmmword_19CF2B590, v13 = xmmword_19CF2B5A0, v14 = xmmword_19CF2B5B0, near_matrix(&v6, &v12)) || (v6 = v9, v7 = v10, v8 = v11, v12 = xmmword_19CF2B5C0, v13 = xmmword_19CF2B5D0, v14 = xmmword_19CF2B5E0, near_matrix(&v6, &v12)))
  {
    v2 = MEMORY[0x1E6965DD0];
    goto LABEL_5;
  }

  v12 = v9;
  v13 = v10;
  v14 = v11;
  if (nearMatrix_Rec2100(&v12, 1.0) || (v12 = v9, v13 = v10, v14 = v11, nearMatrix_Rec2100(&v12, 0.49261)) || (v12 = v9, v13 = v10, v14 = v11, nearMatrix_Rec2100(&v12, 4.9261)))
  {
    v2 = MEMORY[0x1E6965DB0];
    goto LABEL_5;
  }

  v12 = v9;
  v13 = v10;
  v14 = v11;
  if (nearMatrix_DCIP3(&v12, 1.0) || (v12 = v9, v13 = v10, v14 = v11, nearMatrix_DCIP3(&v12, 0.49261)))
  {
    v2 = MEMORY[0x1E6965D98];
    goto LABEL_5;
  }

  v12 = v9;
  v13 = v10;
  v14 = v11;
  v5 = nearMatrix_DCIP3(&v12, 4.9261);
  v3 = *MEMORY[0x1E6965D98];
  if (!v5)
  {
    v3 = 0;
  }

LABEL_6:
  *(*(*(a1 + 32) + 8) + 24) = v3;
  return 1;
}

BOOL nearMatrix_Rec2100(float *a1, float a2)
{
  v15 = *MEMORY[0x1E69E9840];
  v2 = a2;
  v6 = vcvt_f32_f64(vmulq_n_f64(xmmword_19CF2B5F0, v2));
  v3 = v2 * 0.125047;
  v7 = v3;
  v8 = 0;
  v9 = vcvt_f32_f64(vmulq_n_f64(xmmword_19CF2B600, v2));
  v4 = v2 * 0.0456092;
  v10 = v4;
  v11 = 0;
  v12 = vcvt_f32_f64(vmulq_n_f64(xmmword_19CF2B610, v2));
  *&v2 = v2 * 0.796854;
  v13 = LODWORD(v2);
  v14 = 0;
  return near_matrix(a1, &v6);
}

BOOL nearMatrix_DCIP3(float *a1, float a2)
{
  v15 = *MEMORY[0x1E69E9840];
  v2 = a2;
  v6 = vcvt_f32_f64(vmulq_n_f64(xmmword_19CF2B620, v2));
  v3 = v2 * 0.15419;
  v7 = v3;
  v8 = 0;
  v9 = vcvt_f32_f64(vmulq_n_f64(xmmword_19CF2B630, v2));
  v4 = v2 * 0.0629883;
  v10 = v4;
  v11 = 0;
  v12 = vcvt_f32_f64(vmulq_n_f64(xmmword_19CF2B640, v2));
  *&v2 = v2 * 0.78248;
  v13 = LODWORD(v2);
  v14 = 0;
  return near_matrix(a1, &v6);
}

uint64_t nextPointAction(uint64_t result, int a2, uint64_t a3)
{
  v3 = *(a3 + 8);
  v4 = *(result + 8);
  v5 = *a3 - *result;
  v6 = v3 - v4;
  if (*(result + 24) * v6 + v5 * *(result + 16) > 0.0 && *(a3 + 24) * v6 + v5 * *(a3 + 16) > 0.0)
  {
    v7 = v4 * *(a3 + 88) + *(a3 + 84) * *result + *(a3 + 92);
    v8 = v3 * *(result + 36) + *(result + 32) * *a3 + *(result + 40);
    if ((fabsf(v7) + fabsf(v8)) < *(result + 44))
    {
      v9 = (v6 * v6) + (v5 * v5);
      if (v9 < *(result + 48))
      {
        *(result + 48) = v9;
        *(result + 52) = a2;
      }
    }
  }

  return result;
}

float32x2_t regressionMeanAction(float32x2_t *a1, uint64_t a2, float64x2_t *a3)
{
  v3 = vcvt_f32_f64(*a3);
  v4 = a1;
  if (a1->f32[0] > v3.f32[0] || (v4 = a1 + 1, a1[1].f32[0] < v3.f32[0]))
  {
    v4->i32[0] = v3.i32[0];
  }

  v5 = a1 + 1;
  if (a1->f32[1] > v3.f32[1] || (v5 = &a1[1] + 1, a1[1].f32[1] < v3.f32[1]))
  {
    *v5 = v3.i32[1];
  }

  result = vadd_f32(a1[2], v3);
  a1[2] = result;
  ++a1[3].i32[0];
  return result;
}

float32x2_t regressionHorizontalAction(float32x2_t *a1, uint64_t a2, float64x2_t *a3)
{
  result = vsub_f32(vcvt_f32_f64(*a3), *a1);
  a1[1] = vmla_n_f32(a1[1], result, result.f32[0]);
  return result;
}

float32x2_t regressionVerticalAction(float32x2_t *a1, uint64_t a2, float64x2_t *a3)
{
  result = vsub_f32(vcvt_f32_f64(*a3), *a1);
  a1[1] = vmla_lane_f32(a1[1], vrev64_s32(result), result, 1);
  return result;
}

uint64_t lineEquationThroughTwoPoints(float *a1, double a2, double a3, double a4, double a5)
{
  v5 = a4 - a2;
  v6 = a5 - a3;
  v7 = sqrtf((v6 * v6) + (v5 * v5));
  if (v7 == 0.0)
  {
    return 43;
  }

  v8 = 0;
  v9 = 1.0 / v7;
  v10 = v9 * v5;
  v11 = -(v9 * v6);
  *a1 = v11;
  a1[1] = v10;
  v12 = a3 * v10 + v11 * a2;
  a1[2] = -v12;
  return v8;
}

void threadSearchAction(int *a1, uint64_t a2, int *a3)
{
  if (*(a3 + 24) == 1 && (*(a3 + 25) & 1) == 0)
  {
    v5 = 0;
    v20 = *a1;
    v6 = *(a1 + 1);
    v7 = *(a1 + 3);
    v19 = *(a1 + 4);
    v21 = *(a1 + 2);
    v22 = *(v7 + 32) + 96 * *a3;
    v8 = 1;
    do
    {
      v9 = 0;
      do
      {
        v10 = *(v6 + 8);
        if (v10 >= 2 * v9)
        {
          v11 = v5 - v9;
          if (a3[2] >= 2 * (v5 - v9))
          {
            if (*a1 == a2 && v10 < v5 + 3)
            {
              return;
            }

            v13 = v21;
            v14 = v9;
            if (v9)
            {
              while (1)
              {
                v15 = *(v13 + 72);
                if (v15 == -1)
                {
                  break;
                }

                v13 = *(v7 + 32) + 96 * v15;
                if (!--v14)
                {
                  goto LABEL_17;
                }
              }
            }

            else
            {
LABEL_17:
              v16 = v22;
              if (v11 < 1)
              {
LABEL_21:
                if (pointToPointScore(v13, v16) > 0.0)
                {
                  [CIRedEyeRepair3 insertIntoConnectionHopper:v19 index1:v20 drop1:v9 index2:a2 drop2:(v5 - v9) score:?];
                }
              }

              else
              {
                v17 = 0;
                v16 = v22;
                while (1)
                {
                  v18 = *(v16 + 68);
                  if (v18 == -1)
                  {
                    break;
                  }

                  v16 = *(v7 + 32) + 96 * v18;
                  if (++v17 >= v11)
                  {
                    goto LABEL_21;
                  }
                }
              }
            }
          }
        }

        v9 = (v9 + 1);
      }

      while (v9 != v8);
      ++v5;
      ++v8;
    }

    while (v5 != 11);
  }
}

float pointToPointScore(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 8);
  v3 = *(a2 + 8);
  v4 = *a2 - *a1;
  v5 = v3 - v2;
  result = -1.0;
  if (*(a1 + 24) * v5 + v4 * *(a1 + 16) > 0.0)
  {
    result = -2.0;
    if (*(a2 + 24) * v5 + v4 * *(a2 + 16) > 0.0)
    {
      v7 = v2 * *(a2 + 88) + *(a2 + 84) * *a1 + *(a2 + 92);
      v8 = v3 * *(a1 + 88) + *(a1 + 84) * *a2 + *(a1 + 92);
      return sqrtf((v5 * v5) + (v4 * v4)) + (fabsf(v8) + fabsf(v7)) * 0.333;
    }
  }

  return result;
}

void computeLengthAndAngle(uint64_t a1, double *a2)
{
  v3 = *a2 - *a1;
  v4 = a2[1] - *(a1 + 8);
  *(a1 + 16) = sqrtf((v4 * v4) + (v3 * v3));
  v5 = atan2(v4, v3);
  v6 = v5;
  if (v5 < 0.0)
  {
    v7 = 6.28318531;
LABEL_5:
    v5 = v6 + v7;
    goto LABEL_6;
  }

  if (v6 >= 6.28318531)
  {
    v7 = -6.28318531;
    goto LABEL_5;
  }

LABEL_6:
  *(a1 + 20) = v5;
}

float32_t bilinearFloat4LookupComponents(uint64_t a1, float32x2_t *a2, float a3, float a4)
{
  v4 = 0.0;
  v5 = 0.0;
  if (a3 >= 0.0)
  {
    v5 = a3;
    if ((*(a1 + 8) - 1) < a3)
    {
      v5 = (*(a1 + 8) - 1);
    }
  }

  v6 = *(a1 + 12);
  if (a4 >= 0.0)
  {
    v4 = a4;
    if ((v6 - 1) < a4)
    {
      v4 = (v6 - 1);
    }
  }

  v7 = vcvtms_s32_f32(v5);
  v8 = vcvtms_s32_f32(v4);
  if (*(a1 + 8) - 2 < v7)
  {
    v7 = *(a1 + 8) - 2;
  }

  v9 = v6 - 2;
  if (v9 >= v8)
  {
    v9 = v8;
  }

  v10 = v5 - v7;
  v11 = v4 - v9;
  v12 = *(a1 + 16);
  v13 = *(a1 + 28);
  v14 = (*a1 + 4 * v9 * v12 + 4 * v13 * v7);
  v16 = v14[1].f32[0];
  v15 = v14[1].f32[1];
  v17 = (v14 + 4 * v13);
  v19 = v17[1].f32[0];
  v18 = v17[1].f32[1];
  v20 = (v14 + 4 * v12);
  v21 = v20[1].f32[0];
  v22 = (v14 + 4 * v13 + 4 * v12);
  v23 = v22[1].f32[0];
  v24 = vmla_n_f32(*v14, vsub_f32(*v17, *v14), v10);
  v25 = vmla_n_f32(v24, vsub_f32(vmla_n_f32(*v20, vsub_f32(*v22, *v20), v10), v24), v11);
  v26 = COERCE_FLOAT(vmul_f32(v25, v25).i32[1]) + (v25.f32[0] * v25.f32[0]);
  v27 = 0.0;
  if (v26 != 0.0)
  {
    v27 = 1.0 / sqrt(v26);
  }

  v28 = v20[1].f32[1];
  v29 = v22[1].f32[1];
  *a2 = vmul_n_f32(v25, v27);
  a2[1].f32[0] = (v16 + ((v19 - v16) * v10)) + (((v21 + ((v23 - v21) * v10)) - (v16 + ((v19 - v16) * v10))) * v11);
  v30 = (v18 - v15);
  if (v30 >= -3.14159265)
  {
    if (v30 <= 3.14159265)
    {
      goto LABEL_18;
    }

    v31 = v18;
    v32 = -6.28318531;
  }

  else
  {
    v31 = v18;
    v32 = 6.28318531;
  }

  v18 = v31 + v32;
LABEL_18:
  v33 = (v28 - v15);
  if (v33 >= -3.14159265)
  {
    if (v33 <= 3.14159265)
    {
      goto LABEL_23;
    }

    v34 = v28;
    v35 = -6.28318531;
  }

  else
  {
    v34 = v28;
    v35 = 6.28318531;
  }

  v28 = v34 + v35;
LABEL_23:
  v36 = (v29 - v15);
  if (v36 < -3.14159265)
  {
    v37 = v29;
    v38 = 6.28318531;
LABEL_27:
    v29 = v37 + v38;
    goto LABEL_28;
  }

  if (v36 > 3.14159265)
  {
    v37 = v29;
    v38 = -6.28318531;
    goto LABEL_27;
  }

LABEL_28:
  result = (v15 + ((v18 - v15) * v10)) + (((v28 + ((v29 - v28) * v10)) - (v15 + ((v18 - v15) * v10))) * v11);
  a2[1].f32[1] = result;
  return result;
}

float checkpointScore(int a1, uint64_t a2, int a3, uint64_t a4)
{
  v4 = *(a4 + 8);
  v5 = (v4 + 48 * *(a2 + 24 * a1 + 16));
  v6 = *v5;
  v7 = v5[1];
  if (a1 >= 1)
  {
    v8 = a1;
  }

  else
  {
    v8 = a3;
  }

  v9 = (v4 + 48 * *(a2 + 24 * v8 - 8));
  v10 = *v9;
  v11 = v9[1];
  if (a1 + 1 < a3)
  {
    v12 = a1 + 1;
  }

  else
  {
    v12 = 0;
  }

  v13 = (v4 + 48 * *(a2 + 24 * v12 + 16));
  v14 = v6 - v10;
  v15 = v7 - v11;
  v16 = *v13 - v6;
  v17 = v13[1] - v7;
  return sqrtf(sqrtf((v15 * v15) + (v14 * v14)) * sqrtf((v17 * v17) + (v16 * v16)));
}

void histogramBitmap(unsigned __int8 **a1, uint64_t a2, _DWORD *a3, _DWORD *a4, int *a5)
{
  v25 = *MEMORY[0x1E69E9840];
  bzero(v24, 0x400uLL);
  v9 = *(a1 + 3);
  if (v9 >= 1)
  {
    v10 = 0;
    v11 = *a1;
    v12 = *(a1 + 2);
    v13 = *(a1 + 4);
    do
    {
      if (v12 >= 1)
      {
        v14 = *(a1 + 7);
        v15 = v12;
        v16 = v11;
        do
        {
          ++v24[*v16];
          v16 += v14;
          --v15;
        }

        while (v15);
      }

      ++v10;
      v11 += v13;
    }

    while (v10 != v9);
  }

  v17 = 0;
  v18 = 0;
  do
  {
    v18 += v24[v17];
    if (v18 > 4)
    {
      break;
    }

    ++v17;
  }

  while (v17 != 256);
  v19 = 0;
  for (i = 255; i != -1; --i)
  {
    v19 += v24[i];
    if (v19 > 4)
    {
      break;
    }
  }

  v21 = 0;
  v22 = 0;
  v23 = (*(a1 + 2) * v9 + 1) >> 1;
  do
  {
    v22 += v24[v21];
    if (v22 > v23)
    {
      break;
    }

    ++v21;
  }

  while (v21 != 256);
  *a3 = v17;
  *a4 = v21;
  *a5 = i;
}

uint64_t *computeBitmask(uint64_t a1, int a2, int a3, uint64_t a4, uint64_t a5, int a6, float a7, double a8, float a9)
{
  v270[12] = *MEMORY[0x1E69E9840];
  v254 = 0u;
  v255 = 0u;
  v252 = 0u;
  v253 = 0u;
  v250 = 0u;
  v251 = 0u;
  v14 = *(a1 + 12);
  v244 = *(a1 + 8);
  if (a7 >= 0.0)
  {
    v16 = (a7 * a7) * 0.25 * 3.14159265;
    v15 = v16 <= 0.0;
  }

  else
  {
    v15 = 1;
  }

  inited = initBitmask(v244, v14);
  if (!inited)
  {
    puts("computeBitmask: can not allocate bitmask bm");
    return inited;
  }

  v233 = v15;
  v234 = a4;
  v235 = a5;
  v236 = a6;
  v237 = v14;
  v18 = initBitmask(v244, v14);
  if (!v18)
  {
    puts("computeBitmask: can not allocate bitmask bm2");
    v85 = inited;
    goto LABEL_276;
  }

  v20 = v18;
  v266 = 0;
  v267 = 0;
  v265 = 0;
  *__dst = 0u;
  v263 = 0u;
  v264 = 0;
  v256 = 0u;
  v257 = 0u;
  v258 = 0u;
  v259 = 0u;
  v260 = 0u;
  v261 = 0u;
  v21 = a1;
  histogramBitmap(a1, v19, &v266 + 1, &v265 + 1, &v266);
  initBitmap(__dst, *(v21 + 8), *(v21 + 12), *(v21 + 28), 1, *(v21 + 36));
  memmove(__dst[0], *v21, *(v21 + 24));
  applyMaxFilter8(__dst, 11);
  v22 = *(a1 + 16);
  v23 = *(a1 + 28);
  v242 = inited;
  v243 = v20;
  if (a6 != 2)
  {
    v86 = *(a1 + 12);
    if (v86 < 1)
    {
      v81 = 0;
      v84 = 0;
      v83 = 0;
      v82 = 0;
    }

    else
    {
      v87 = 0;
      v82 = 0;
      v83 = 0;
      v81 = 0;
      v88 = *(a1 + 8);
      v89 = __dst[0];
      v90 = *a1;
      v91 = v86 * v88;
      do
      {
        if (v88 >= 1)
        {
          v92 = 0;
          v93 = 0;
          v94 = (v87 - a3) * (v87 - a3);
          do
          {
            if (v90[v92])
            {
              v95 = v89[v92] == v90[v92];
            }

            else
            {
              v95 = 0;
            }

            v96 = v95 && (v94 + (v93 - a2) * (v93 - a2)) < v91;
            if (v96)
            {
              v91 = v94 + (v93 - a2) * (v93 - a2);
            }

            if (v96)
            {
              v81 = v90[v92];
            }

            if (v96)
            {
              v83 = v87;
            }

            if (v96)
            {
              v82 = v93;
            }

            ++v93;
            v92 += v23;
          }

          while (v88 != v93);
        }

        ++v87;
        v90 += v22;
        v89 += v22;
      }

      while (v87 != v86);
      v84 = 0;
    }

    goto LABEL_112;
  }

  memset(v270, 0, 96);
  v269[0] = 0;
  v24 = *(a1 + 12);
  if (v24 < 1)
  {
    goto LABEL_275;
  }

  v25 = 0;
  v26 = *a1;
  v27 = __dst[0];
  v28 = *(a1 + 8);
  v29 = *a1;
  do
  {
    if (v28 >= 1)
    {
      v30 = 0;
      v31 = v27;
      v32 = v29;
      do
      {
        if (v25)
        {
          v33 = *v32;
          v34 = *v31 == v33 && v25 < v24 - 1;
          v35 = !v34 || v30 == 0;
          if (!v35 && v30 < v28 - 1)
          {
            v37 = sqrtf(((v25 - a3) * (v25 - a3) + (v30 - a2) * (v30 - a2)));
            v38 = v33 / fmaxf(v37, 1.0);
            v39 = v269[0];
            if (v269[0] < 1)
            {
              LODWORD(v40) = 0;
            }

            else
            {
              v40 = 0;
              v41 = 3;
              while (*&v269[v41] >= v38)
              {
                ++v40;
                v41 += 6;
                if (v269[0] == v40)
                {
                  v40 = v269[0];
                  goto LABEL_35;
                }
              }

              if (v269[0] > v40)
              {
                v42 = &v270[3 * v269[0]];
                do
                {
                  if (v39 <= 3)
                  {
                    *v42 = *(v42 - 3);
                    v42[2] = *(v42 - 1);
                  }

                  --v39;
                  v42 -= 3;
                }

                while (v39 > v40);
              }

              v40 = v40;
LABEL_35:
              if (v40 > 3)
              {
                goto LABEL_41;
              }

              LODWORD(v39) = v269[0];
            }

            v43 = &v270[3 * v40];
            *v43 = v33;
            v43[1] = v37;
            v43[2] = v38;
            *(v43 + 3) = v25;
            *(v43 + 4) = v30;
            if (v39 < 4)
            {
              v44 = v39 + 1;
            }

            else
            {
              v44 = 4;
            }

            v269[0] = v44;
          }
        }

LABEL_41:
        ++v30;
        v32 += v23;
        v31 += v23;
      }

      while (v30 != v28);
    }

    ++v25;
    v29 += v22;
    v27 += v22;
  }

  while (v25 != v24);
  v45 = v269[0];
  if (v269[0] < 1)
  {
    goto LABEL_275;
  }

  v46 = 0;
  v47 = 0;
  v48 = 0;
  v49 = *(a1 + 8);
  v50 = -1;
  v51 = -10000.0;
  v52 = v270;
  do
  {
    v53 = 0;
    v54 = *(v52 + 4);
    v55 = *(v52 + 3);
    v56 = v54;
    do
    {
      v57 = v53 + v54;
      v58 = (v55 - v53) & ~((v55 - v53) >> 31);
      if (v53 + v55 < v24)
      {
        v59 = v53 + v55 + 1;
      }

      else
      {
        v59 = v24;
      }

      if (v57 < v49)
      {
        v60 = v57 + 1;
      }

      else
      {
        v60 = v49;
      }

      if (v58 >= v59)
      {
        v62 = 255;
      }

      else
      {
        v61 = &v26[v22 * v58];
        v62 = 255;
        do
        {
          if (((v54 - v53) & ~((v54 - v53) >> 31)) < v60)
          {
            v63 = (v23 * (v56 & ~(v56 >> 31)));
            v64 = (v54 - v53) & ~((v54 - v53) >> 31);
            do
            {
              if (v62 >= v61[v63])
              {
                v62 = v61[v63];
              }

              ++v64;
              v63 += v23;
            }

            while (v64 < v60);
          }

          ++v58;
          v61 += v22;
        }

        while (v58 < v59);
      }

      v268[v53++] = v62;
      --v56;
    }

    while (v53 != 11);
    v65 = -1;
    v66 = v268[0];
    for (i = 1; i != 11; ++i)
    {
      v68 = v268[i];
      v69 = v66 - v68;
      if (v69 > v65)
      {
        v65 = v69;
        v47 = i;
      }

      v66 = v68;
    }

    if (v47 <= 10)
    {
      v70 = 10;
    }

    else
    {
      v70 = v47;
    }

    v71 = v70 - v47;
    v72 = v47 - 9;
    inited = v242;
    v73 = &v268[v47 + 1];
    v20 = v243;
    while (v71)
    {
      v74 = *(v73 - 1);
      if (v72)
      {
        v75 = *v73++;
        --v71;
        ++v72;
        if (20 * (v74 - v75) >= v74)
        {
          continue;
        }
      }

      goto LABEL_76;
    }

    v74 = v46;
LABEL_76:
    v76 = *(v52 + 1);
    v77 = *v52 / fmaxf(v74, 1.0);
    *(v52 + 5) = v74;
    v78 = v77 + v76 * -0.05;
    if (v51 < v78)
    {
      v50 = v48;
      v51 = v78;
    }

    ++v48;
    v52 += 3;
    v46 = v74;
  }

  while (v48 != v45);
  if (v51 == -10000.0 || v50 == -1)
  {
    goto LABEL_275;
  }

  v80 = &v270[3 * v50];
  v81 = *v80;
  LODWORD(v266) = *v80;
  v83 = v80[3];
  v82 = v80[4];
  v84 = v80[5];
LABEL_112:
  termBitmap(__dst);
  v97 = v266;
  v98 = HIDWORD(v265);
  if (v266 <= v81)
  {
    v99 = a1;
  }

  else
  {
    LODWORD(v266) = v81;
    v97 = v81;
    v99 = a1;
    if (SHIDWORD(v265) >= v81)
    {
      v98 = v81 - 1;
      HIDWORD(v265) = v81 - 1;
      v97 = v81;
    }
  }

  v100 = (v98 + 2 * v97) / 3;
  if (v100 == v97)
  {
    v101 = v97 - 1;
  }

  else
  {
    v101 = v100;
  }

  computeThresholdedBitmask(v99, inited, v101);
  if (v237 < 1)
  {
    goto LABEL_144;
  }

  v231 = v97;
  LODWORD(v230) = v84;
  v102 = 0;
  v103 = v244;
  v104 = (v237 * v237 + v103 * v103);
  v239 = -1;
  v241 = -1;
  do
  {
    if (v103 >= 1)
    {
      for (j = 0; v103 != j; ++j)
      {
        if (bitValueFromBitmask(inited, j, v102))
        {
          if (!seedFill(inited, v20, j, v102, 0, bitIsSet))
          {
            goto LABEL_273;
          }

          v106 = v20;
          v107 = bitmaskBoundingBitmapRect(v20);
          v109 = v108;
          v110 = bitmaskCentroidUsingBoundingRect(v106, v107, v108);
          v111 = v109;
          v103 = v244;
          closestSetBitInBitmaskUsingBoundingRect(v106, v107, v111, &v267 + 1, &v267, v110, v112);
          v113 = (v267 - a3) * (v267 - a3);
          if ((v113 + ((HIDWORD(v267) - a2) * (HIDWORD(v267) - a2))) < v104)
          {
            if (HIDWORD(v267) == -1)
            {
              v124 = "computeBitmask: centroid closest bit search failed";
LABEL_146:
              puts(v124);
              v125 = inited;
              goto LABEL_147;
            }

            v239 = HIDWORD(v267);
            v241 = v267;
            v104 = v113 + ((HIDWORD(v267) - a2) * (HIDWORD(v267) - a2));
            v106 = v243;
          }

          bitmaskMinus(inited, v106);
          v20 = v106;
        }
      }
    }

    v102 = (v102 + 1);
  }

  while (v102 != v237);
  v114 = v231;
  if (v241 == -1)
  {
LABEL_144:
    v123 = "computeBitmask: connected pieces search failed";
LABEL_274:
    puts(v123);
    goto LABEL_275;
  }

  v115 = v233 | *(v234 + 24);
  v116 = -1;
  *v235 = -1;
  if ((v115 & 1) == 0 && v236 != -1)
  {
    if (v231 < 0)
    {
      goto LABEL_275;
    }

    v117 = a9 * 0.055;
    v118 = rintf(v117 * v117);
    v119 = a9 * 0.23;
    v120 = rintf(v119 * v119);
    v121 = 1;
    while (1)
    {
      LODWORD(v265) = v114;
      if (!((v121 & 1) != 0 ? seedFill(a1, inited, v239, v241, &v265, aboveThreshold) : incrementalSeedFill(a1, inited, v239, v241, &v265, aboveThreshold)))
      {
        goto LABEL_273;
      }

      if (bitmaskArea(inited) >= v118)
      {
        v149 = v114;
        v150 = v114 + 9;
        v248 = v149 + 8;
        v151 = 1;
        while (1)
        {
          v152 = v149;
          LODWORD(v265) = v149;
          if (!((v151 & 1) != 0 ? seedFill(a1, inited, v239, v241, &v265, aboveThreshold) : incrementalSeedFill(a1, inited, v239, v241, &v265, aboveThreshold)))
          {
            goto LABEL_273;
          }

          if (bitmaskArea(inited) > v120)
          {
            v154 = v152;
LABEL_279:
            v199 = v154 & ~(v154 >> 31);
            if (v248 >= v199)
            {
              v200 = 0;
              v201 = 256;
              v202 = -1;
              v203 = -1000000.0;
              do
              {
                LODWORD(v265) = --v150;
                if (v202 == -1)
                {
                  v204 = seedFill(a1, v242, v239, v241, &v265, aboveThreshold);
                }

                else
                {
                  v204 = incrementalSeedFill(a1, v242, v239, v241, &v265, aboveThreshold);
                }

                if (!v204)
                {
                  goto LABEL_310;
                }

                getBitmaskInfoWithSeedPoint(v242, a1, &v256, v239, v241);
                if (v257 <= v120 && v257 >= v118)
                {
                  v206 = (*(&v257 + 2) + *(&v257 + 3)) / 255.0;
                  if ((*(&v257 + 1) + v206) > v203)
                  {
                    v201 = v150;
                    v203 = *(&v257 + 1) + v206;
                    v200 = v257;
                  }

                  v202 = v150;
                }
              }

              while (v150 > v199);
              if (v202 != -1 && v200 <= v120 && v200 >= v118)
              {
                LODWORD(v265) = v201;
                if (!seedFill(a1, v242, v239, v241, &v265, aboveThreshold))
                {
LABEL_310:
                  puts("computeBitmask: seedFill failed");
                  goto LABEL_311;
                }

                getBitmaskInfoWithSeedPoint(v242, a1, &v256, v239, v241);
                HIDWORD(v259) = v81;
                *&v260 = __PAIR64__(v82, v83);
                if (v236 != 2)
                {
                  v207 = 0;
                  v208 = sqrt(v257 / 3.14159265);
                  v209 = v208 + v208;
                  v210 = 0.0;
                  do
                  {
                    v211 = __sincos_stret(v210);
                    cosval = v211.__cosval;
                    *&v269[v207] = cosval;
                    sinval = v211.__sinval;
                    *&v268[v207] = sinval;
                    v210 = v210 + 0.62832;
                    ++v207;
                  }

                  while (v207 != 10);
                  v214 = 0;
                  v215 = 0;
                  v216 = 0;
                  v217 = v209;
                  v218 = v217 * 0.5;
                  do
                  {
                    v219 = v218 * *&v269[v214];
                    v220 = v82 + rintf(v219);
                    if (v220 >= 0)
                    {
                      v221 = v218 * *&v268[v214];
                      v222 = v83 + rintf(v221);
                      if ((v222 & 0x80000000) == 0 && v220 < *(a1 + 8) && v222 < *(a1 + 12))
                      {
                        ++v216;
                        v215 += *(*a1 + *(a1 + 16) * v222 + *(a1 + 28) * v220);
                      }
                    }

                    ++v214;
                  }

                  while (v214 != 10);
                  v230 = rintf(v215 / v216);
                }

                DWORD2(v260) = v230;
                if (BYTE8(v259) != 1)
                {
                  v223 = v259;
                  *(v235 + 40) = v258;
                  *(v235 + 56) = v223;
                  v224 = v261;
                  *(v235 + 72) = v260;
                  *(v235 + 88) = v224;
                  v225 = v257;
                  *(v235 + 8) = v256;
                  *v235 = v201;
                  *(v235 + 24) = v225;
                  *(v235 + 104) = v239;
                  *(v235 + 108) = v241;
                  inited = v242;
                  spreadBitmask(v242, v243, 0);
                  chokeBitmask(v243, v242, 0);
                  v197 = v243;
                  goto LABEL_272;
                }
              }
            }

LABEL_311:
            v125 = v242;
            goto LABEL_147;
          }

          v151 = 0;
          v154 = v152 - 8;
          v149 = v152 - 8;
          if (v152 <= 7)
          {
            goto LABEL_279;
          }
        }
      }

      v121 = 0;
      v34 = v114 <= 7;
      v114 -= 8;
      if (v34)
      {
        goto LABEL_275;
      }
    }
  }

  v126 = 0.0;
  v127 = 0.0;
  v128 = v239;
  if (v236 == -1)
  {
    v127 = 2.0 / *(v234 + 28);
  }

  v129 = HIDWORD(v266);
  if (v231 < SHIDWORD(v266))
  {
    v130 = 0;
    v131 = 256;
    goto LABEL_202;
  }

  v132 = v231;
  v133 = 0;
  v134 = 0;
  v135 = 0;
  v238 = 256;
  v136 = 0.0;
  v245 = HIDWORD(v266);
  while (2)
  {
    v247 = v133;
    v232 = v132;
    LODWORD(v265) = v132;
    v137 = v116;
    if (v116 == -1)
    {
      v138 = v242;
      v139 = v239;
      if (!seedFill(a1, v242, v239, v241, &v265, aboveThreshold))
      {
LABEL_193:
        puts("computeBitmask: seedFill failed");
        v125 = v138;
LABEL_147:
        termBitmask(v125);
        v85 = v243;
        goto LABEL_276;
      }

      getBitmaskInfoWithSeedPoint(v242, a1, &v256, v239, v241);
      v140 = 0.0;
    }

    else
    {
      v138 = v242;
      v139 = v239;
      if (!incrementalSeedFill(a1, v242, v239, v241, &v265, aboveThreshold))
      {
        goto LABEL_193;
      }

      getBitmaskInfoWithSeedPoint(v242, a1, &v256, v239, v241);
      v140 = breakoutScore(&v250, &v256);
    }

    v128 = v139;
    v141 = v134 | (v257 < 1);
    if (!(v134 & 1 | (v257 < 1)))
    {
      v135 = v232;
    }

    v131 = v137;
    v129 = v245;
    if (v236 == 2)
    {
      if (v257 == 1 || BYTE8(v259) == 1)
      {
        v142 = 0.0;
        goto LABEL_176;
      }

      v144 = *(&v257 + 1);
      v145 = fminf(*(&v257 + 2), 100.0) + *(&v257 + 3);
LABEL_175:
      v142 = v144 * v145;
LABEL_176:
      if (v137 == -1 || v142 > v126)
      {
        v146 = v259;
        *(v235 + 40) = v258;
        *(v235 + 56) = v146;
        v147 = v261;
        *(v235 + 72) = v260;
        *(v235 + 88) = v147;
        v148 = v257;
        *(v235 + 8) = v256;
        *v235 = v232;
        v238 = v232;
        v126 = v142;
        *(v235 + 24) = v148;
      }
    }

    else
    {
      if (v236 == -1)
      {
        v143 = 1.0 - (v127 * v257);
        if (v143 < 0.0)
        {
          v143 = 0.0;
        }

        if (v143 > 1.0)
        {
          v143 = 1.0;
        }

        v144 = (v143 * v143) * *(&v257 + 1);
        v145 = *(&v257 + 2) + *(&v257 + 3);
        goto LABEL_175;
      }

      if (v137 != -1 && (v140 > 1.0 || v140 > 0.44 && v140 > v136 * 30.0) && v135 * 0.68 >= v232)
      {
        *v235 = v137;
        v226 = v253;
        *(v235 + 40) = v252;
        *(v235 + 56) = v226;
        v227 = v255;
        *(v235 + 72) = v254;
        *(v235 + 88) = v227;
        v228 = v251;
        *(v235 + 8) = v250;
        v229 = v137;
        *(v235 + 24) = v228;
        inited = v242;
        v20 = v243;
        goto LABEL_214;
      }
    }

    if (BYTE8(v259) != 1)
    {
      v134 |= v141 ^ 1;
      v252 = v258;
      v253 = v259;
      v254 = v260;
      v255 = v261;
      v250 = v256;
      v251 = v257;
      v136 = v136 * 0.2 + v140 * 0.8;
      v116 = v232;
      v133 = v247 + 8;
      v132 = v232 - 8;
      if (v232 - 8 < v245)
      {
        v130 = 0;
        goto LABEL_200;
      }

      continue;
    }

    break;
  }

  v130 = 0;
  if (v236 == -1)
  {
LABEL_200:
    inited = v242;
    v20 = v243;
  }

  else
  {
    inited = v242;
    v20 = v243;
    if (v236 != 2)
    {
      if (v247)
      {
        v155 = v253;
        *(v235 + 40) = v252;
        *(v235 + 56) = v155;
        v156 = v255;
        *(v235 + 72) = v254;
        *(v235 + 88) = v156;
        v157 = v251;
        *(v235 + 8) = v250;
        if (v131 == -1)
        {
          v131 = v232;
        }

        *v235 = v131;
        v130 = 1;
        *(v235 + 24) = v157;
        goto LABEL_202;
      }

LABEL_275:
      termBitmask(inited);
      v85 = v20;
LABEL_276:
      termBitmask(v85);
      return 0;
    }
  }

  v131 = v238;
LABEL_202:
  if (v236 == 2 || v236 == -1)
  {
    if (v131 <= 247)
    {
      v229 = v131 + 8;
    }

    else
    {
      v229 = 255;
    }

    if (v131 <= 8)
    {
      v158 = 8;
    }

    else
    {
      v158 = v131;
    }

    v129 = (v158 - 8);
  }

  else if (v130)
  {
    v229 = v131;
  }

  else
  {
    v229 = v129 + 8;
  }

LABEL_214:
  v249 = v131;
  if (v229 < v129)
  {
    v159 = 0;
    v160 = -1;
    goto LABEL_254;
  }

  v160 = -1;
  v161 = 0.0;
  while (2)
  {
    v162 = v129;
    LODWORD(v265) = v229;
    if (v160 == -1)
    {
      v163 = v239;
      if (!seedFill(a1, inited, v239, v241, &v265, aboveThreshold))
      {
LABEL_249:
        v124 = "computeBitmask: seedFill failed";
        goto LABEL_146;
      }

      getBitmaskInfoWithSeedPoint(inited, a1, &v256, v239, v241);
      v164 = 0.0;
    }

    else
    {
      v163 = v239;
      if (!incrementalSeedFill(a1, inited, v239, v241, &v265, aboveThreshold))
      {
        goto LABEL_249;
      }

      getBitmaskInfoWithSeedPoint(inited, a1, &v256, v239, v241);
      v164 = breakoutScore(&v250, &v256);
    }

    v128 = v163;
    v129 = v162;
    if (v236 == 2)
    {
      if (v257 == 1 || BYTE8(v259) == 1)
      {
        v165 = 0.0;
      }

      else
      {
        v165 = *(&v257 + 1) * (fminf(*(&v257 + 2), 100.0) + *(&v257 + 3));
      }

      goto LABEL_243;
    }

    if (v236 == -1)
    {
      v167 = 1.0 - (v127 * v257);
      if (v167 < 0.0)
      {
        v167 = 0.0;
      }

      if (v167 > 1.0)
      {
        v167 = 1.0;
      }

      v165 = (*(&v257 + 2) + *(&v257 + 3)) * (*(&v257 + 1) * (v167 * v167));
      if (v160 != -1)
      {
LABEL_243:
        if (v165 <= v126)
        {
          goto LABEL_245;
        }
      }

      v168 = v259;
      *(v235 + 40) = v258;
      *(v235 + 56) = v168;
      v169 = v261;
      *(v235 + 72) = v260;
      *(v235 + 88) = v169;
      v170 = v257;
      *(v235 + 8) = v256;
      *v235 = v229;
      v249 = v229;
      v126 = v165;
      *(v235 + 24) = v170;
    }

    else if (v160 != -1)
    {
      v166 = *(&v251 + 3) * 0.6 <= *(&v257 + 3) && v164 <= 1.0;
      if (!v166 || v164 > 0.55 && v164 > v161 * 30.0)
      {
        goto LABEL_252;
      }
    }

LABEL_245:
    if (BYTE8(v259) != 1)
    {
      v252 = v258;
      v253 = v259;
      v254 = v260;
      v255 = v261;
      v250 = v256;
      v251 = v257;
      v161 = v161 * 0.2 + v164 * 0.8;
      v160 = v229;
      v34 = v229-- <= v162;
      if (v34)
      {
        v159 = 0;
        v160 = v162;
        goto LABEL_253;
      }

      continue;
    }

    break;
  }

  v159 = 0;
  if (v236 != -1 && v236 != 2)
  {
LABEL_252:
    v171 = v253;
    *(v235 + 40) = v252;
    *(v235 + 56) = v171;
    v172 = v255;
    *(v235 + 72) = v254;
    *(v235 + 88) = v172;
    v173 = v251;
    *(v235 + 8) = v250;
    *v235 = v160;
    v159 = 1;
    v249 = v160;
    *(v235 + 24) = v173;
  }

LABEL_253:
  v20 = v243;
LABEL_254:
  if (v236 != -1 && v236 != 2 && (v159 & 1) == 0)
  {
    *v235 = v160;
    v174 = v253;
    *(v235 + 40) = v252;
    *(v235 + 56) = v174;
    v175 = v255;
    *(v235 + 72) = v254;
    *(v235 + 88) = v175;
    v176 = v251;
    *(v235 + 8) = v250;
    v249 = v160;
    *(v235 + 24) = v176;
  }

  v177 = v249;
  LODWORD(v265) = v249;
  if (!seedFill(a1, inited, v128, v241, &v265, aboveThreshold))
  {
LABEL_273:
    v123 = "computeBitmask: seedFill failed";
    goto LABEL_274;
  }

  getBitmaskInfoWithSeedPoint(inited, a1, &v256, v128, v241);
  HIDWORD(v259) = v81;
  *&v260 = __PAIR64__(v82, v83);
  if (BYTE8(v259) == 1)
  {
    goto LABEL_275;
  }

  if (v236 != 2)
  {
    v178 = 0;
    v179 = sqrt(v257 / 3.14159265);
    v180 = v179 + v179;
    v181 = 0.0;
    do
    {
      v182 = __sincos_stret(v181);
      v183 = v182.__cosval;
      *&v269[v178] = v183;
      v184 = v182.__sinval;
      *&v268[v178] = v184;
      v181 = v181 + 0.62832;
      ++v178;
    }

    while (v178 != 10);
    v185 = 0;
    v186 = 0;
    v187 = 0;
    v188 = v180;
    v189 = v188 * 0.5;
    v177 = v249;
    do
    {
      v190 = v189 * *&v269[v185];
      v191 = v82 + rintf(v190);
      if (v191 >= 0)
      {
        v192 = v189 * *&v268[v185];
        v193 = v83 + rintf(v192);
        if ((v193 & 0x80000000) == 0 && v191 < *(a1 + 8) && v193 < *(a1 + 12))
        {
          ++v187;
          v186 += *(*a1 + *(a1 + 16) * v193 + *(a1 + 28) * v191);
        }
      }

      ++v185;
    }

    while (v185 != 10);
    v230 = rintf(v186 / v187);
  }

  DWORD2(v260) = v230;
  v194 = v259;
  *(v235 + 40) = v258;
  *(v235 + 56) = v194;
  v195 = v260;
  *(v235 + 88) = v261;
  v196 = v257;
  *(v235 + 8) = v256;
  *(v235 + 24) = v196;
  *v235 = v177;
  *(v235 + 72) = v195;
  *(v235 + 104) = v128;
  *(v235 + 108) = v241;
  spreadBitmask(inited, v20, 0);
  chokeBitmask(v20, inited, 0);
  v197 = v20;
LABEL_272:
  termBitmask(v197);
  return inited;
}

float breakoutScore(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  result = 0.0;
  if (v2 < 6)
  {
    return result;
  }

  v4 = *(a2 + 16) / v2;
  v5 = *(a1 + 20);
  v6 = 0.01;
  if (v5 <= 0.0)
  {
    v7 = 0.01;
  }

  else
  {
    v7 = *(a1 + 20);
  }

  if ((*(a1 + 24) + *(a1 + 28)) != 0.0)
  {
    v6 = *(a1 + 24) + *(a1 + 28);
  }

  v8 = 1.0;
  if (v4 <= 5.0)
  {
    v9 = v4;
    if (v4 > 3.0)
    {
      v10 = (v9 + -3.0) * 0.125 + 0.75;
LABEL_14:
      v8 = v10;
      goto LABEL_15;
    }

    if (v4 > 1.5)
    {
      v10 = (v9 + -1.5) * 0.3333333 + 0.25;
      goto LABEL_14;
    }

    v8 = 0.0;
    if (v9 > 1.1)
    {
      v10 = (v9 + -1.1) * 0.625;
      goto LABEL_14;
    }
  }

LABEL_15:
  v11 = *(a2 + 20);
  v12 = v5;
  v13 = 0.0;
  v14 = (*(a2 + 24) + *(a2 + 28)) / v6;
  if (v12 >= 0.3 || v11 >= 0.3)
  {
    v15 = v11 / v7;
    v13 = 1.0;
    if (v15 >= 0.25)
    {
      v13 = 0.0;
      if (v15 < 0.5)
      {
        v13 = (0.5 - v15) * 4.0;
      }
    }
  }

  v16 = v14;
  v17 = 1.0;
  if (v14 >= 0.61)
  {
    if (v16 >= 0.8)
    {
      v17 = 0.0;
      if (v14 < 2.0)
      {
        v17 = v14 * -0.5;
      }
    }

    else
    {
      v17 = (0.8 - v16) * 5.26316;
    }
  }

  result = (v8 + v13) + v17;
  if (result < 0.0)
  {
    return 0.0;
  }

  return result;
}

void **recomputeBitmask(uint64_t a1, int a2, uint64_t a3, int a4, uint64_t a5)
{
  v11 = *(a1 + 8);
  v10 = *(a1 + 12);
  inited = initBitmask(v11, v10);
  if (!inited)
  {
    puts("recomputeBitmask: can not allocate bitmask bm");
    return inited;
  }

  v13 = initBitmask(v11, v10);
  if (!v13)
  {
    puts("recomputeBitmask: can not allocate bitmask bm2");
    v15 = inited;
LABEL_11:
    termBitmask(v15);
    return 0;
  }

  v14 = v13;
  v17 = a4;
  if (!seedFill(a1, inited, a2, a3, &v17, aboveThreshold))
  {
    puts("recomputeBitmask: seedFill failed");
LABEL_10:
    termBitmask(inited);
    v15 = v14;
    goto LABEL_11;
  }

  if (a5)
  {
    getBitmaskInfo(inited, a1, a5);
    if (*(a5 + 56) == 1)
    {
      goto LABEL_10;
    }
  }

  spreadBitmask(inited, v14, 0);
  chokeBitmask(v14, inited, 0);
  termBitmask(v14);
  return inited;
}

void **extractAlpha(uint64_t a1, uint64_t a2, _BYTE *a3, int *a4)
{
  if (!a2)
  {
    return 0;
  }

  v8 = *(a1 + 8);
  v7 = *(a1 + 12);
  v9 = *(a1 + 16);
  v10 = *(a1 + 28);
  result = malloc_type_malloc(0x28uLL, 0x1010040829CE571uLL);
  if (result)
  {
    v12 = result;
    initBitmap(result, v8, v7, 1, 1, 100.0);
    bzero(*v12, *(v12 + 6));
    inited = initBitmask(v8, v7);
    v133 = v8;
    v134 = v7 - 1;
    v13 = v10 + 2 * v9;
    v112 = a4;
    v113 = v12;
    v146 = v9;
    v132 = 2 * v10;
    v111 = v7;
    v110 = v13;
    if (v7 >= 3)
    {
      v142 = a1;
      v143 = a3;
      v14 = 0;
      v15 = 0;
      v16 = *v12;
      v141 = -v9;
      v140 = v141 - v10;
      v138 = -v10;
      v137 = v9 - v10;
      v144 = v8 - 2;
      v135 = v7 - 2;
      v130 = *v12 + v10 + v9;
      v129 = *v12 + 2 * v10;
      v127 = *v12 + 2 * v10 + 2 * v9;
      v128 = *v12 + v10;
      v126 = *v12 + v13;
      v125 = *v12 + v9;
      v17 = v9 + 2 * v10;
      v123 = *a1 + v9 + v141;
      v124 = *v12 + v17;
      v122 = *a1 + v10;
      v139 = v10 - v9;
      v121 = *a1 + v10 + v9 + v10 - v9;
      v120 = *a1 + v9;
      v119 = *a1 + v17;
      v118 = *a1 + v13;
      v136 = v10 + v9;
      v117 = *a1 + v10 + v9 + v10 + v9;
      v116 = *a1 + v10 + v9;
      v18 = 1;
      v131 = v16;
      v114 = *a1 + 2 * v9;
      v115 = &v16[2 * v9];
      v150 = v10;
      while (v8 <= 2)
      {
        v89 = v18 + 1;
LABEL_81:
        v14 += v9;
        v18 = v89;
        if (v89 == v134)
        {
          goto LABEL_85;
        }
      }

      v147 = v15;
      v19 = v18 - 1;
      v152 = v18 + 1;
      v20 = 1;
      v21 = v144;
      v180 = v116;
      v23 = v117;
      v22 = v118;
      v24 = v114;
      v25 = v119;
      v26 = v120;
      v28 = v121;
      v27 = v122;
      v29 = v123;
      v30 = v124;
      v31 = v125;
      v178 = v115;
      v177 = v126;
      v32 = v127;
      v176 = v131;
      v175 = v128;
      v174 = v129;
      v173 = v130;
      v160 = v18;
      v151 = v18 - 1;
      while (1)
      {
        v162 = v32;
        v163 = v31;
        v164 = v30;
        v165 = v29;
        v171 = v21;
        v155 = *(v29 + v14);
        v166 = v27;
        v156 = *(v27 + v14);
        v33 = v24;
        v34 = v25;
        v35 = v19;
        v36 = v22;
        v37 = v20;
        v38 = bitValueFromBitmask(a2, v20, v35);
        v167 = v28;
        v157 = *(v28 + v14);
        v181 = v26;
        v158 = *(v26 + v14);
        v153 = v37 - 1;
        v39 = bitValueFromBitmask(a2, v37 - 1, v18);
        v40 = bitValueFromBitmask(a2, v37, v18);
        v168 = v34;
        v159 = *(v34 + v14);
        v183 = v37 + 1;
        v41 = bitValueFromBitmask(a2, v37 + 1, v18);
        v169 = v33;
        v170 = v36;
        v42 = *(v33 + v14);
        v43 = *(v36 + v14);
        v154 = v37;
        v44 = bitValueFromBitmask(a2, v37, v152);
        if (v40 != 1)
        {
          break;
        }

        v149 = v42;
        v45 = v181;
        v46 = v164;
        v47 = v163;
        if (v39 + v38 + v41 + v44 == 4)
        {
          v18 = v160;
          v19 = v151;
          v48 = v171;
          v50 = v169;
          v49 = v170;
          v52 = v167;
          v51 = v168;
          v54 = v165;
          v53 = v166;
LABEL_11:
          v55 = v162;
          v10 = v150;
          goto LABEL_12;
        }

        v56 = *(v23 + v14);
        v57 = v157 - (v155 + v149) + 2 * (v159 - v158) + v56;
        v58 = v149 - (v157 + v155) + v56 + 2 * (v43 - v156);
        v59 = v57 * v57 + v58 * v58;
        v18 = v160;
        v10 = v150;
        if (v59)
        {
          v145 = v43;
          v60 = 1.0 / sqrtf(v59);
          v61 = v60 * v57;
          v62 = v60 * v58;
          v63 = v154 + rintf(v61 + v61);
          v64 = v160 + rintf(v62 + v62);
          v65 = v154 - rintf(v61 * 3.0);
          v66 = v160 - rintf(v62 * 3.0);
          if (v63 <= 1)
          {
            v63 = 1;
          }

          if (v63 >= v144)
          {
            v63 = v144;
          }

          if (v64 <= 1)
          {
            v64 = 1;
          }

          if (v64 >= v135)
          {
            v64 = v135;
          }

          if (v65 <= 1)
          {
            v65 = 1;
          }

          if (v65 >= v144)
          {
            v65 = v144;
          }

          if (v66 <= 1)
          {
            v66 = 1;
          }

          if (v66 >= v135)
          {
            v66 = v135;
          }

          v67 = (*v142 + v64 * v146 + v63 * v150);
          v68 = (v67[v140] + v67[v139] + 4 * *v67 + v67[v137] + v67[v136] + 2 * (v67[v138] + v67[v141] + v67[v150] + v67[v146]) + 8) >> 4;
          v69 = (*v142 + v66 * v146 + v65 * v150);
          v70 = (v69[v140] + v69[v139] + 4 * *v69 + v69[v137] + v69[v136] + 2 * (v69[v138] + v69[v141] + v69[v150] + v69[v146]) + 8) >> 4;
          if (v147 <= 399)
          {
            *v143 = v154;
            v143[1] = v160;
            v143[2] = v63;
            v143[3] = v64;
            v143[4] = v65;
            v143[5] = v66;
            v143[6] = v68;
            v143[7] = v70;
            v143 += 8;
            ++v147;
          }

          v19 = v151;
          if (v68 != v70)
          {
            v71 = (16320 / (v68 - v70));
            v72 = ((*(v180 + v14) - v70) * v71 + 32) >> 6;
            if (v72 >= 255)
            {
              v72 = 255;
            }

            *(v173 + v14) = v72 & ~(v72 >> 31);
            setBitInBitmask(inited, v154, v160, 1);
            v73 = ((v155 - v70) * v71 + 32) >> 6;
            if (v73 >= 255)
            {
              v73 = 255;
            }

            v74 = v73 & ~(v73 >> 31);
            if (bitValueFromBitmask(inited, v153, v151))
            {
              v176[v14] = (v74 + v176[v14] + 1) >> 1;
            }

            else
            {
              v176[v14] = v74;
              setBitInBitmask(inited, v153, v151, 1);
            }

            v75 = ((v156 - v70) * v71 + 32) >> 6;
            if (v75 >= 255)
            {
              v75 = 255;
            }

            v76 = v75 & ~(v75 >> 31);
            if (bitValueFromBitmask(inited, v154, v151))
            {
              *(v175 + v14) = (v76 + *(v175 + v14) + 1) >> 1;
            }

            else
            {
              *(v175 + v14) = v76;
              setBitInBitmask(inited, v154, v151, 1);
            }

            v77 = ((v157 - v70) * v71 + 32) >> 6;
            if (v77 >= 255)
            {
              v77 = 255;
            }

            v78 = v77 & ~(v77 >> 31);
            if (bitValueFromBitmask(inited, v183, v151))
            {
              *(v174 + v14) = (v78 + *(v174 + v14) + 1) >> 1;
            }

            else
            {
              *(v174 + v14) = v78;
              setBitInBitmask(inited, v183, v151, 1);
            }

            v79 = ((v158 - v70) * v71 + 32) >> 6;
            if (v79 >= 255)
            {
              v79 = 255;
            }

            v80 = v79 & ~(v79 >> 31);
            if (bitValueFromBitmask(inited, v153, v160))
            {
              *(v163 + v14) = (v80 + *(v163 + v14) + 1) >> 1;
            }

            else
            {
              *(v163 + v14) = v80;
              setBitInBitmask(inited, v153, v160, 1);
            }

            v81 = ((v159 - v70) * v71 + 32) >> 6;
            if (v81 >= 255)
            {
              v81 = 255;
            }

            v82 = v81 & ~(v81 >> 31);
            if (bitValueFromBitmask(inited, v183, v160))
            {
              *(v164 + v14) = (v82 + *(v164 + v14) + 1) >> 1;
            }

            else
            {
              *(v164 + v14) = v82;
              setBitInBitmask(inited, v183, v160, 1);
            }

            v83 = ((v149 - v70) * v71 + 32) >> 6;
            if (v83 >= 255)
            {
              v83 = 255;
            }

            v84 = v83 & ~(v83 >> 31);
            if (bitValueFromBitmask(inited, v153, v152))
            {
              v178[v14] = (v84 + v178[v14] + 1) >> 1;
            }

            else
            {
              v178[v14] = v84;
              setBitInBitmask(inited, v153, v152, 1);
            }

            v85 = ((v145 - v70) * v71 + 32) >> 6;
            if (v85 >= 255)
            {
              v85 = 255;
            }

            v86 = v85 & ~(v85 >> 31);
            if (bitValueFromBitmask(inited, v154, v152))
            {
              *(v177 + v14) = (v86 + *(v177 + v14) + 1) >> 1;
            }

            else
            {
              *(v177 + v14) = v86;
              setBitInBitmask(inited, v154, v152, 1);
            }

            v87 = ((v56 - v70) * v71 + 32) >> 6;
            if (v87 >= 255)
            {
              v87 = 255;
            }

            v88 = v87 & ~(v87 >> 31);
            v55 = v162;
            if (bitValueFromBitmask(inited, v183, v152))
            {
              *(v162 + v14) = (v88 + *(v162 + v14) + 1) >> 1;
            }

            else
            {
              *(v162 + v14) = v88;
              setBitInBitmask(inited, v183, v152, 1);
            }

            v18 = v160;
            v19 = v151;
            v48 = v171;
            v50 = v169;
            v49 = v170;
            v52 = v167;
            v51 = v168;
            v45 = v181;
            v54 = v165;
            v53 = v166;
            goto LABEL_12;
          }

          v18 = v160;
          v48 = v171;
          v50 = v169;
          v49 = v170;
          v51 = v168;
          v45 = v181;
        }

        else
        {
          v19 = v151;
          v48 = v171;
          v50 = v169;
          v49 = v170;
          v51 = v168;
        }

        v53 = v166;
        v52 = v167;
        v54 = v165;
        v55 = v162;
LABEL_12:
        v29 = v54 + v10;
        v27 = v53 + v10;
        v28 = v52 + v10;
        v26 = v45 + v10;
        v25 = v51 + v10;
        v24 = v50 + v10;
        v22 = v49 + v10;
        v23 += v10;
        v173 += v10;
        v174 += v10;
        v175 += v10;
        v176 += v10;
        v32 = v55 + v10;
        v177 += v10;
        v178 += v10;
        v31 = v47 + v10;
        v30 = v46 + v10;
        v180 += v10;
        v20 = v183;
        v21 = v48 - 1;
        if (!v21)
        {
          v8 = v133;
          v9 = v146;
          v15 = v147;
          v89 = v152;
          goto LABEL_81;
        }
      }

      v18 = v160;
      v19 = v151;
      v48 = v171;
      v50 = v33;
      v49 = v170;
      v52 = v167;
      v51 = v168;
      v45 = v181;
      v54 = v165;
      v53 = v166;
      v46 = v164;
      v47 = v163;
      goto LABEL_11;
    }

    v15 = 0;
LABEL_85:
    v148 = v15;
    if (v111 >= 1)
    {
      v90 = 0;
      v91 = *v113;
      do
      {
        if (v8 >= 1)
        {
          v92 = 0;
          v93 = v91;
          do
          {
            if (!bitValueFromBitmask(inited, v92, v90))
            {
              if (bitValueFromBitmask(a2, v92, v90))
              {
                *v93 = -1;
                setBitInBitmask(inited, v92, v90, 1);
              }

              else
              {
                *v93 = 0;
              }
            }

            ++v92;
            v93 += v10;
          }

          while (v8 != v92);
        }

        ++v90;
        v91 += v9;
      }

      while (v90 != v111);
    }

    termBitmask(inited);
    v179 = malloc_type_malloc(2 * v9, 0x100004077774924uLL);
    memmove(v179, *v113, v9);
    if (v111 >= 3)
    {
      v94 = v9;
      v95 = *v113;
      v96 = &v179[v9];
      v97 = *v113 + 2 * v94;
      v98 = *v113 + v110;
      v99 = *v113 + v10 + v94 + v10 + v94;
      v100 = *v113 + v10 + v94;
      v101 = 1;
      v102 = v179;
      do
      {
        v182 = v101;
        v103 = v102;
        v184 = &v95[v94];
        memmove(v96, &v95[v94], v94);
        if (v133 >= 3)
        {
          v104 = 0;
          v105 = v133 - 2;
          do
          {
            v106 = (5100 * ((v103[v104] + v103[v132 + v104] + 4 * v96[v10 + v104] + *(v97 + v104) + v99[v104] + 2 * (v96[v104] + v103[v10 + v104] + v96[v132 + v104] + v98[v104]) + 8) >> 4) - 650752) >> 12;
            if (v106 >= 127)
            {
              LOBYTE(v107) = 127;
            }

            else
            {
              v107 = (5100 * ((v103[v104] + v103[v132 + v104] + 4 * v96[v10 + v104] + *(v97 + v104) + v99[v104] + 2 * (v96[v104] + v103[v10 + v104] + v96[v132 + v104] + v98[v104]) + 8) >> 4) - 650752) >> 12;
            }

            v108 = v107 ^ 0x80;
            if (v106 >= -128)
            {
              v109 = v108;
            }

            else
            {
              v109 = 0;
            }

            v100[v104] = v109;
            v104 += v10;
            --v105;
          }

          while (v105);
        }

        v101 = v182 + 1;
        v94 = v146;
        v97 += v146;
        v98 += v146;
        v99 += v146;
        v100 += v146;
        v102 = v96;
        v96 = v103;
        v95 = v184;
      }

      while (v182 + 1 != v134);
    }

    free(v179);
    result = v113;
    *v112 = v148;
  }

  return result;
}

void featheredOutsize(uint64_t a1, _DWORD *a2, _DWORD *a3, float a4, float a5, float a6)
{
  v110 = *MEMORY[0x1E69E9840];
  v106 = 0;
  *__dst = 0u;
  v105 = 0u;
  v7 = *(a1 + 12);
  if (v7 < 1)
  {
    v22 = 0.0;
    v23 = 0.0;
  }

  else
  {
    v8 = 0;
    v9 = 0;
    v10 = 0;
    v11 = 0;
    v12 = 0;
    v13 = 0;
    v14 = *(a1 + 8);
    v15 = *a1;
    v16 = 1;
    do
    {
      v17 = v13 + 1;
      if (v14 >= 1)
      {
        v18 = 0;
        v19 = v15;
        do
        {
          if (*v19)
          {
            v12 += *v19 | (*v19 << 8);
            if (v13 < v11)
            {
              v11 = v13;
            }

            if (v13 >= v9)
            {
              v9 = v13 + 1;
            }

            if (v18 < v10)
            {
              v10 = v18;
            }

            v20 = v18 + 1;
            if (v18 >= v8)
            {
              v8 = v18 + 1;
            }

            if (v16)
            {
              v11 = v13;
              v10 = v18;
            }

            else
            {
              v20 = v18 + 1;
            }

            if (v16)
            {
              v9 = v13 + 1;
            }

            _ZF = (v16 & 1) == 0;
            v16 = 0;
            if (!_ZF)
            {
              v8 = v18 + 1;
            }

            v18 = v20;
          }

          else
          {
            ++v18;
          }

          v19 += *(a1 + 28);
        }

        while (v18 != v14);
      }

      v15 += *(a1 + 16);
      ++v13;
    }

    while (v17 != v7);
    v22 = v12;
    v23 = ((v8 - v10) * (v9 - v11)) * 0.785398163;
  }

  v24 = rintf(v22 / 65535.0);
  *a3 = rintf(v23);
  *a2 = v24;
  if (v24)
  {
    v25 = sqrt(v24 / 3.14159265);
    *&v25 = v25 + v25;
    v99 = *(a1 + 16);
    v26 = rintf(a5 * 255.0);
    v27 = rintf(a6 * 4096.0);
    v108 = 0;
    v28 = *&v25 * 0.125;
    memset(&v107[10], 0, 32);
    if (v28 >= a4)
    {
      v29 = a4;
    }

    else
    {
      v29 = v28;
    }

    memset(v107, 0, 160);
    v30 = 1;
    v31 = 4;
    __asm
    {
      FMOV            V1.2D, #1.0
      FMOV            V0.2D, #0.5
    }

    v102 = _Q0;
    v103 = _Q1;
    do
    {
      v37 = (v31 + 1) * -0.5;
      v38 = (v37 / v29) * 0.7071067;
      v100 = erff(v38);
      v39 = ((v37 + 1.0) / v29) * 0.7071067;
      v40.f32[0] = erff(v39);
      v40.f32[1] = v100;
      v41 = vcvt_f32_f64(vmulq_f64(vaddq_f64(vcvtq_f64_f32(v40), v103), v102));
      v40.f32[0] = ((v37 + 2.0) / v29) * 0.7071067;
      v42 = (erff(v40.f32[0]) + 1.0) * 0.5;
      ++v30;
      v31 += 2;
    }

    while (((v41.f32[0] - v41.f32[1]) + v41.f32[1]) >= ((v42 - v41.f32[0]) * 0.75));
    v43 = 0;
    v44 = &v109[4 * v30];
    v45 = (v30 + 1);
    v46 = v45;
    do
    {
      v47 = ((v37 + 1.0) / v29) * 0.7071067;
      v101 = erff(v47);
      v48 = (v37 / v29) * 0.7071067;
      v49 = vcvt_f32_f64(vmulq_f64(vaddq_f64(vcvtq_f64_f32(__PAIR64__(COERCE_UNSIGNED_INT(erff(v48)), LODWORD(v101))), v103), v102));
      LODWORD(v50) = vsub_f32(v49, vdup_lane_s32(v49, 1)).u32[0];
      if (!v43)
      {
        v50 = v50 + v41.f32[1];
      }

      *&v44[v43] = v50;
      --v46;
      v43 -= 4;
      v37 = v37 + 1.0;
    }

    while (v46 > 0);
    v51 = 0;
    if (v45 <= 1)
    {
      v52 = 1;
    }

    else
    {
      v52 = v45;
    }

    v53 = 4 * v52;
    do
    {
      *(v107 + v51) = llround(*&v109[v51] * 65536.0);
      v51 += 4;
    }

    while (v53 != v51);
    v54 = v31 & 0x7FFFFFFE;
    v55 = (v31 & 0x7FFFFFFE) - 1;
    initBitmap(__dst, *(a1 + 8), *(a1 + 12), *(a1 + 28), *(a1 + 32), *(a1 + 36));
    memcpy(__dst[0], *a1, *(a1 + 16) * *(a1 + 12));
    v56 = malloc_type_calloc(SLODWORD(__dst[1]), 1uLL, 0x100004077774924uLL);
    v57 = v55 / 2;
    if (SHIDWORD(__dst[1]) >= 1)
    {
      v58 = 0;
      v59 = __dst[0];
      do
      {
        v60 = __dst[1];
        if (SLODWORD(__dst[1]) >= 1)
        {
          v61 = 0;
          v62 = v57 + 1;
          v63 = v56;
          do
          {
            v64 = v61 - v57;
            if (v54 < 3)
            {
              v65 = 0;
            }

            else
            {
              v65 = 0;
              v66 = v107 + v57;
              do
              {
                v67 = *v66--;
                v65 += v67 * v59[v64 & ~(v64 >> 31)];
                ++v64;
              }

              while (v64 < v61);
            }

            if (v64 <= (v61 + v57))
            {
              v68 = v62 - v64;
              v69 = v107;
              do
              {
                if (v64 >= v60)
                {
                  v70 = v60 - 1;
                }

                else
                {
                  v70 = v64;
                }

                v71 = *v69++;
                v65 += v71 * v59[v70];
                ++v64;
                --v68;
              }

              while (v68);
            }

            *v63++ = (v65 + 0x8000) >> 16;
            ++v61;
            v60 = __dst[1];
            ++v62;
          }

          while (v61 < SLODWORD(__dst[1]));
        }

        memcpy(v59, v56, v60);
        ++v58;
        v59 += v105;
      }

      while (v58 < SHIDWORD(__dst[1]));
    }

    free(v56);
    v72 = malloc_type_calloc(SHIDWORD(__dst[1]), 1uLL, 0x100004077774924uLL);
    if (SLODWORD(__dst[1]) >= 1)
    {
      v73 = 0;
      v74 = __dst[0];
      v75 = HIDWORD(__dst[1]);
      do
      {
        if (v75 >= 1)
        {
          v76 = 0;
          v77 = v74;
          do
          {
            v72[v76] = *v77;
            v75 = HIDWORD(__dst[1]);
            v77 += v105;
            ++v76;
          }

          while (v76 < SHIDWORD(__dst[1]));
          if (SHIDWORD(__dst[1]) >= 1)
          {
            v78 = 0;
            v79 = v57 + 1;
            v80 = v74;
            do
            {
              v81 = v78 - v57;
              if (v54 < 3)
              {
                v82 = 0;
              }

              else
              {
                v82 = 0;
                v83 = v107 + v57;
                do
                {
                  v84 = *v83--;
                  v82 += v84 * v72[v81 & ~(v81 >> 31)];
                  ++v81;
                }

                while (v81 < v78);
              }

              if (v81 <= (v78 + v57))
              {
                v85 = v79 - v81;
                v86 = v107;
                do
                {
                  if (v81 >= v75)
                  {
                    v87 = v75 - 1;
                  }

                  else
                  {
                    v87 = v81;
                  }

                  v88 = *v86++;
                  v82 += v88 * v72[v87];
                  ++v81;
                  --v85;
                }

                while (v85);
              }

              *v80 = (v82 + 0x8000) >> 16;
              ++v78;
              v75 = HIDWORD(__dst[1]);
              v80 += v105;
              ++v79;
            }

            while (v78 < SHIDWORD(__dst[1]));
          }
        }

        ++v73;
        ++v74;
      }

      while (v73 < SLODWORD(__dst[1]));
    }

    free(v72);
    v89 = *(a1 + 12);
    if (v89 >= 1)
    {
      v90 = 0;
      v91 = *a1;
      v92 = __dst[0];
      v93 = *(a1 + 8);
      do
      {
        if (v93 >= 1)
        {
          v94 = 0;
          do
          {
            v95 = ((v92[v94] - v26) * v27 + 2048) >> 12;
            if (v95 >= 127)
            {
              LOBYTE(v96) = 127;
            }

            else
            {
              v96 = ((v92[v94] - v26) * v27 + 2048) >> 12;
            }

            v97 = v96 ^ 0x80;
            if (v95 >= -128)
            {
              v98 = v97;
            }

            else
            {
              v98 = 0;
            }

            v91[v94] = v98;
            v93 = *(a1 + 8);
            ++v94;
          }

          while (v94 < v93);
          v89 = *(a1 + 12);
        }

        ++v90;
        v92 += v99;
        v91 += v99;
      }

      while (v90 < v89);
    }

    termBitmap(__dst);
  }
}

void computeRedChannel(unsigned __int8 **a1, uint64_t a2, uint64_t a3, int a4)
{
  v8 = *(a1 + 3);
  v96 = *(a1 + 4);
  v9 = *(a1 + 7);
  v10 = *(a2 + 16);
  v104 = *(a2 + 28);
  v97 = *(a1 + 2);
  initBitmap(a3, v97, v8, 1, 1, 100.0);
  bzero(*a3, *(a3 + 24));
  v94 = v8 - 1;
  v95 = v8;
  if (v8 >= 1)
  {
    v11 = 0;
    v12 = 0;
    v13 = *a2;
    v14 = *a3;
    v91 = -v10;
    v92 = v10;
    v15 = 2 * v9;
    v16 = *a1;
    v17 = *a3 + v9;
    v18 = &(*a1)[v9];
    v102 = *a1;
    v103 = *a3;
    v93 = v9;
    do
    {
      if (v12 == v94)
      {
        v19 = 0;
      }

      else
      {
        v19 = v10;
      }

      v20 = v91;
      if (!v12)
      {
        v20 = 0;
      }

      v100 = v12;
      v98 = v12 & 1;
      if (v12)
      {
        v20 = v19;
      }

      v21 = &v13[v20];
      v22 = *v13;
      v23 = v13[1];
      v24 = *v21;
      v25 = v21[1];
      v101 = v11;
      v99 = v13;
      if (v97 >= 3)
      {
        v26 = 0;
        v27 = v20;
        v28 = v11;
        v29 = v25;
        v30 = v24;
        v31 = v13[1];
        v32 = *v13;
        while (1)
        {
          v33 = *(v16 + v28);
          v34 = ((9 * v22 + v30 + 3 * (v24 + v32) + 8) >> 4) - 128;
          v35 = ((9 * v23 + v29 + 3 * (v25 + v31) + 8) >> 4) - 128;
          v36 = v33 + ((22970 * v35 + 0x2000) >> 14);
          v37 = v33 + ((-11700 * v35 - 5638 * v34 + 0x2000) >> 14);
          v38 = v33 + ((29032 * v34 + 0x2000) >> 14);
          if (v36 >= 255)
          {
            v39 = 255;
          }

          else
          {
            v39 = v36;
          }

          v40 = v39 & ~(v39 >> 31);
          if (v37 >= 255)
          {
            v41 = 255;
          }

          else
          {
            v41 = v37;
          }

          v42 = v41 & ~(v41 >> 31);
          if (v38 >= 255)
          {
            v38 = 255;
          }

          v43 = v38 & ~(v38 >> 31);
          if (a4 <= 2)
          {
            if (a4 == 1)
            {
              if (v42 > v43)
              {
                v43 = v42;
              }

              goto LABEL_38;
            }

            if (a4 != 2)
            {
              goto LABEL_39;
            }

            if (v36 >= 1)
            {
              if (v42 > v43)
              {
                v43 = v42;
              }

              v44 = (v40 - v43) & ~((v40 - v43) >> 31);
              v45 = (v44 * v44) / v40;
              goto LABEL_33;
            }

            LOBYTE(v40) = 0;
          }

          else
          {
            if (a4 == 3)
            {
              v43 = v42 + ((v40 * v42 + 128) >> 8);
LABEL_38:
              v46 = v40 - v43;
LABEL_40:
              v40 = v46 & ~(v46 >> 31);
              goto LABEL_41;
            }

            if (a4 == 4)
            {
              v45 = ((v40 & 0x3FF) << 6) / (v42 + v43 + 1);
LABEL_33:
              if (v45 >= 0xFF)
              {
                LOBYTE(v40) = -1;
              }

              else
              {
                LOBYTE(v40) = v45;
              }

              goto LABEL_41;
            }

            if (a4 != 5)
            {
LABEL_39:
              v46 = v40 - ((v42 + v43 + 1) >> 1);
              goto LABEL_40;
            }
          }

LABEL_41:
          v14[v28] = v40;
          v47 = v18[v28];
          v32 = *v13;
          v31 = v13[1];
          v22 = v13[2];
          v23 = v13[3];
          v30 = v13[v27];
          v29 = v13[v27 + 1];
          v24 = v13[v27 + 2];
          v25 = v13[v27 + 3];
          v48 = ((9 * v32 + v24 + 3 * (v30 + v22) + 8) >> 4) - 128;
          v49 = ((9 * v31 + v25 + 3 * (v29 + v23) + 8) >> 4) - 128;
          v50 = v47 + ((22970 * v49 + 0x2000) >> 14);
          v51 = v47 + ((-11700 * v49 - 5638 * v48 + 0x2000) >> 14);
          v52 = v47 + ((29032 * v48 + 0x2000) >> 14);
          if (v50 >= 255)
          {
            v53 = 255;
          }

          else
          {
            v53 = v47 + ((22970 * v49 + 0x2000) >> 14);
          }

          v54 = v53 & ~(v53 >> 31);
          if (v51 >= 255)
          {
            v55 = 255;
          }

          else
          {
            v55 = v51;
          }

          v56 = v55 & ~(v55 >> 31);
          if (v52 >= 255)
          {
            v52 = 255;
          }

          v57 = v52 & ~(v52 >> 31);
          if (a4 <= 2)
          {
            if (a4 == 1)
            {
              if (v56 <= v57)
              {
                v56 = v57;
              }

              goto LABEL_67;
            }

            if (a4 != 2)
            {
              goto LABEL_68;
            }

            if (v50 >= 1)
            {
              if (v56 <= v57)
              {
                v56 = v57;
              }

              v58 = (v54 - v56) & ~((v54 - v56) >> 31);
              v59 = (v58 * v58) / v54;
              goto LABEL_62;
            }

            LOBYTE(v54) = 0;
          }

          else
          {
            if (a4 == 3)
            {
              v56 += (v54 * v56 + 128) >> 8;
LABEL_67:
              v60 = v54 - v56;
LABEL_69:
              v54 = v60 & ~(v60 >> 31);
              goto LABEL_70;
            }

            if (a4 == 4)
            {
              v59 = ((v54 & 0x3FF) << 6) / (v56 + v57 + 1);
LABEL_62:
              if (v59 >= 0xFF)
              {
                LOBYTE(v54) = -1;
              }

              else
              {
                LOBYTE(v54) = v59;
              }

              goto LABEL_70;
            }

            if (a4 != 5)
            {
LABEL_68:
              v60 = v54 - ((v56 + v57 + 1) >> 1);
              goto LABEL_69;
            }
          }

LABEL_70:
          *(v17 + v28) = v54;
          v13 += v104;
          v26 += 2;
          v28 += v15;
          if (v26 >= v97 - 2)
          {
            v61 = &v14[v28];
            v21 = &v13[v27];
            v62 = (v16 + v28);
            goto LABEL_75;
          }
        }
      }

      v32 = *v13;
      v31 = v13[1];
      v30 = *v21;
      v29 = v21[1];
      v62 = v102;
      v61 = v103;
LABEL_75:
      v63 = *v62;
      v64 = ((9 * v22 + v30 + 3 * (v24 + v32) + 8) >> 4) - 128;
      v65 = ((9 * v23 + v29 + 3 * (v25 + v31) + 8) >> 4) - 128;
      v66 = v63 + ((22970 * v65 + 0x2000) >> 14);
      v67 = v63 + ((-11700 * v65 - 5638 * v64 + 0x2000) >> 14);
      v68 = v63 + ((29032 * v64 + 0x2000) >> 14);
      if (v66 >= 255)
      {
        v69 = 255;
      }

      else
      {
        v69 = v63 + ((22970 * v65 + 0x2000) >> 14);
      }

      v70 = v69 & ~(v69 >> 31);
      if (v67 >= 255)
      {
        v71 = 255;
      }

      else
      {
        v71 = v67;
      }

      v72 = v71 & ~(v71 >> 31);
      if (v68 >= 255)
      {
        v68 = 255;
      }

      v73 = v68 & ~(v68 >> 31);
      if (a4 <= 2)
      {
        v74 = v93;
        if (a4 == 1)
        {
          if (v72 <= v73)
          {
            v72 = v73;
          }

          goto LABEL_101;
        }

        if (a4 != 2)
        {
          goto LABEL_102;
        }

        if (v66 >= 1)
        {
          if (v72 <= v73)
          {
            v72 = v73;
          }

          v75 = (v70 - v72) & ~((v70 - v72) >> 31);
          v76 = (v75 * v75) / v70;
          goto LABEL_96;
        }

        LOBYTE(v70) = 0;
      }

      else
      {
        v74 = v93;
        if (a4 == 3)
        {
          v72 += (v70 * v72 + 128) >> 8;
LABEL_101:
          v77 = v70 - v72;
LABEL_103:
          v70 = v77 & ~(v77 >> 31);
          goto LABEL_104;
        }

        if (a4 == 4)
        {
          v76 = ((v70 & 0x3FF) << 6) / (v72 + v73 + 1);
LABEL_96:
          if (v76 >= 0xFF)
          {
            LOBYTE(v70) = -1;
          }

          else
          {
            LOBYTE(v70) = v76;
          }

          goto LABEL_104;
        }

        if (a4 != 5)
        {
LABEL_102:
          v77 = v70 - ((v72 + v73 + 1) >> 1);
          goto LABEL_103;
        }
      }

LABEL_104:
      *v61 = v70;
      v78 = v62[v74];
      v79 = ((9 * *v13 + *v21 + 3 * (*v21 + *v13) + 8) >> 4) - 128;
      v80 = ((9 * v13[1] + v21[1] + 3 * (v21[1] + v13[1]) + 8) >> 4) - 128;
      v81 = v78 + ((22970 * v80 + 0x2000) >> 14);
      v82 = v78 + ((-11700 * v80 - 5638 * v79 + 0x2000) >> 14);
      v83 = v78 + ((29032 * v79 + 0x2000) >> 14);
      if (v81 >= 255)
      {
        v84 = 255;
      }

      else
      {
        v84 = v78 + ((22970 * v80 + 0x2000) >> 14);
      }

      v85 = v84 & ~(v84 >> 31);
      if (v82 >= 255)
      {
        v86 = 255;
      }

      else
      {
        v86 = v82;
      }

      v87 = v86 & ~(v86 >> 31);
      if (v83 >= 255)
      {
        v83 = 255;
      }

      v88 = v83 & ~(v83 >> 31);
      if (a4 <= 2)
      {
        if (a4 == 1)
        {
          if (v87 <= v88)
          {
            v87 = v88;
          }

          goto LABEL_129;
        }

        if (a4 != 2)
        {
          goto LABEL_130;
        }

        if (v81 >= 1)
        {
          if (v87 <= v88)
          {
            v87 = v88;
          }

          v89 = (v85 - v87) & ~((v85 - v87) >> 31);
          v85 = (v89 * v89) / v85;
          goto LABEL_125;
        }

        LOBYTE(v85) = 0;
      }

      else
      {
        if (a4 == 3)
        {
          v87 += (v85 * v87 + 128) >> 8;
LABEL_129:
          v90 = v85 - v87;
LABEL_131:
          v85 = v90 & ~(v90 >> 31);
          goto LABEL_132;
        }

        if (a4 == 4)
        {
          v85 = ((v85 & 0x3FF) << 6) / (v87 + v88 + 1);
LABEL_125:
          if (v85 >= 0xFF)
          {
            LOBYTE(v85) = -1;
          }

          goto LABEL_132;
        }

        if (a4 != 5)
        {
LABEL_130:
          v90 = v85 - ((v87 + v88 + 1) >> 1);
          goto LABEL_131;
        }
      }

LABEL_132:
      v61[v74] = v85;
      v10 = v92;
      v13 = &v99[v98 * v92];
      v12 = v100 + 1;
      v102 += v96;
      v103 += v96;
      v11 = v101 + v96;
    }

    while (v100 + 1 != v95);
  }
}

float redEyeCancellation(_DWORD *a1, unsigned __int8 **a2, uint64_t *a3, uint64_t *a4, uint64_t *a5, uint64_t a6, _DWORD *a7)
{
  v7 = a1[3];
  if (v7 < 1)
  {
    v75 = 0.0;
  }

  else
  {
    v77 = a7;
    v9 = 0;
    v10 = 0;
    v11 = 0;
    v112 = 0;
    v12 = 0;
    v13 = 0;
    v14 = 0;
    v94 = 0;
    v15 = *(a2 + 4);
    v101 = a1[2];
    v90 = *a5;
    v16 = *a2;
    v17 = a1[7];
    v18 = a1[4];
    v79 = -v15;
    v78 = v7 - 2;
    v99 = 2 * v17;
    v100 = *a3;
    v82 = 2 * v18;
    v98 = *a3 + v17;
    v97 = *a3 + v18;
    v96 = *(a2 + 7);
    v95 = *a3 + v17 + v18;
    v87 = *a4 + v18;
    v88 = *a4 + v17 + v18;
    v89 = *a4;
    v86 = *a4 + v17;
    v113 = 1;
    v110 = *a2;
    v91 = a6;
    v81 = a1[3];
    v80 = v15;
    do
    {
      if (v101 <= 0)
      {
        v74 = v94 + 2;
      }

      else
      {
        if (v94 == v78)
        {
          v19 = 0;
        }

        else
        {
          v19 = v15;
        }

        v20 = &v16[v19];
        v21 = v20[1];
        v22 = *v20;
        v23 = v79;
        if (!v94)
        {
          v23 = 0;
        }

        v24 = &v16[v23];
        v25 = v24[1];
        v26 = *v24;
        v27 = v16[1];
        v111 = v94 | 1;
        v92 = &v110[v23];
        v93 = &v110[v19];
        v28 = 1;
        v83 = v16;
        v84 = v10;
        v29 = *v16;
        v85 = v9;
        v108 = v21;
        v109 = v22;
        v107 = v22;
        v30 = v25;
        v31 = v26;
        v32 = v27;
        v33 = v29;
        do
        {
          v34 = *(v100 + v10) | (*(v100 + v10) << 8);
          v35 = *(v98 + v10);
          v36 = v35 | (v35 << 8);
          v37 = *(v97 + v10);
          v38 = v37 | (v37 << 8);
          v39 = *(v95 + v10);
          v40 = v39 | (v39 << 8);
          if (v36 | v34 | v38 | v40)
          {
            v106 = v21;
            v41 = v28 - 1;
            v42 = (v31 + 9 * v29 + 3 * (v26 + v33) + 8) >> 4;
            v43 = (v30 + 9 * v27 + 3 * (v25 + v32) + 8) >> 4;
            if (*(v100 + v10))
            {
              v44 = (1505792 - 11700 * v43 - 5638 * (v42 - 128)) >> 14;
              if (v44 >= (29032 * (v42 - 128) + 0x2000) >> 14)
              {
                v44 = (29032 * (v42 - 128) + 0x2000) >> 14;
              }

              v45 = *(v89 + v10) + (((*(a6 + ((v44 + *(v89 + v10)) & ~((v44 + *(v89 + v10)) >> 31))) - *(v89 + v10)) * v34 + 0x8000) >> 16);
              *(v89 + v10) = v45 & ~(v45 >> 31);
              v42 += (v34 * (128 - v42) + 0x8000) >> 16;
              v43 += (v34 * (128 - v43) + 0x8000) >> 16;
              v46 = (v34 + v14);
              if (v113)
              {
                v47 = v46;
                v12 = v94;
                v48 = (v28 - 1);
                v112 = v94 | 1;
                v113 = 0;
                v13 = v28;
              }

              else
              {
                LODWORD(v48) = v12;
                LODWORD(v12) = v13;
                LODWORD(v13) = v11;
                v47 = v46;
                if (v94 >= v12)
                {
                  v12 = v12;
                }

                else
                {
                  v12 = v94;
                }

                v49 = v112;
                if (v94 >= v112)
                {
                  v49 = v94 | 1;
                }

                v112 = v49;
                v113 = 0;
                if (v41 >= v48)
                {
                  v48 = v48;
                }

                else
                {
                  v48 = v41;
                }

                if (v41 >= v13)
                {
                  v13 = v28;
                }

                else
                {
                  v13 = v13;
                }
              }
            }

            else
            {
              v48 = v12;
              v12 = v13;
              v13 = v11;
              v47 = v14;
            }

            v50 = &v110[v9];
            v51 = v110[v9];
            v52 = v110[v9 + 1];
            v53 = v110[v9 + 2];
            v54 = v110[v9 + 3];
            v102 = v92[v9];
            v103 = v92[v9 + 1];
            v104 = v92[v9 + 2];
            v105 = v92[v9 + 3];
            v55 = (9 * v51 + v104 + 3 * (v102 + v53) + 8) >> 4;
            v56 = (9 * v52 + v105 + 3 * (v103 + v54) + 8) >> 4;
            if (v35)
            {
              v57 = (1505792 - 11700 * v56 - 5638 * (v55 - 128)) >> 14;
              if (v57 >= (29032 * (v55 - 128) + 0x2000) >> 14)
              {
                v57 = (29032 * (v55 - 128) + 0x2000) >> 14;
              }

              a6 = v91;
              v58 = *(v86 + v10) + (((*(v91 + ((v57 + *(v86 + v10)) & ~((v57 + *(v86 + v10)) >> 31))) - *(v86 + v10)) * v36 + 0x8000) >> 16);
              *(v86 + v10) = v58 & ~(v58 >> 31);
              v55 += ((128 - v55) * v36 + 0x8000) >> 16;
              v56 += ((128 - v56) * v36 + 0x8000) >> 16;
              v14 = (v47 + v36);
              if (v113)
              {
                v11 = (v28 + 1);
                v13 = v94;
                v12 = v28;
                v112 = v94 | 1;
                v113 = 0;
              }

              else
              {
                if (v94 >= v12)
                {
                  v12 = v12;
                }

                else
                {
                  v12 = v94;
                }

                v59 = v112;
                if (v94 >= v112)
                {
                  v59 = v94 | 1;
                }

                v112 = v59;
                v113 = 0;
                if (v28 >= v48)
                {
                  v48 = v48;
                }

                else
                {
                  v48 = v28;
                }

                LODWORD(v11) = v13;
                v13 = v12;
                v12 = v48;
                if (v28 >= v11)
                {
                  v11 = (v28 + 1);
                }

                else
                {
                  v11 = v11;
                }
              }
            }

            else
            {
              a6 = v91;
              v14 = v47;
              v11 = v13;
              v13 = v12;
              v12 = v48;
            }

            v60 = (v107 + 9 * v53 + 3 * (v109 + v51) + 8) >> 4;
            v61 = (v108 + 9 * v54 + 3 * (v106 + v52) + 8) >> 4;
            if (v37)
            {
              v62 = (1505792 - 11700 * v61 - 5638 * (v60 - 128)) >> 14;
              if (v62 >= (29032 * (v60 - 128) + 0x2000) >> 14)
              {
                v62 = (29032 * (v60 - 128) + 0x2000) >> 14;
              }

              v63 = *(v87 + v10) + (((*(a6 + ((v62 + *(v87 + v10)) & ~((v62 + *(v87 + v10)) >> 31))) - *(v87 + v10)) * v38 + 0x8000) >> 16);
              *(v87 + v10) = v63 & ~(v63 >> 31);
              v60 += ((128 - v60) * v38 + 0x8000) >> 16;
              v61 += ((128 - v61) * v38 + 0x8000) >> 16;
              v14 = (v14 + v38);
              if (v113)
              {
                v13 = v111;
                v12 = (v28 - 1);
                v112 = v94 + 2;
                v113 = 0;
                v11 = v28;
              }

              else
              {
                v64 = v112;
                if (v111 >= v13)
                {
                  v13 = v13;
                }

                else
                {
                  v13 = v111;
                }

                if (v111 >= v112)
                {
                  v64 = v94 + 2;
                }

                v112 = v64;
                v113 = 0;
                if (v41 >= v12)
                {
                  v12 = v12;
                }

                else
                {
                  v12 = v41;
                }

                if (v41 >= v11)
                {
                  v11 = v28;
                }

                else
                {
                  v11 = v11;
                }
              }
            }

            v33 = v110[v9];
            v32 = v50[1];
            v29 = v50[2];
            v27 = v50[3];
            v21 = v93[v9 + 3];
            v107 = v93[v9];
            v108 = v93[v9 + 1];
            v109 = v93[v9 + 2];
            v65 = (9 * v33 + v109 + 3 * (v107 + v29) + 8) >> 4;
            v66 = (9 * v32 + v21 + 3 * (v108 + v27) + 8) >> 4;
            if (v39)
            {
              v67 = (1505792 - 11700 * v66 - 5638 * (v65 - 128)) >> 14;
              if (v67 >= (29032 * (v65 - 128) + 0x2000) >> 14)
              {
                v67 = (29032 * (v65 - 128) + 0x2000) >> 14;
              }

              v68 = *(v88 + v10) + (((*(a6 + ((v67 + *(v88 + v10)) & ~((v67 + *(v88 + v10)) >> 31))) - *(v88 + v10)) * v40 + 0x8000) >> 16);
              *(v88 + v10) = v68 & ~(v68 >> 31);
              v65 += ((128 - v65) * v40 + 0x8000) >> 16;
              v66 += ((128 - v66) * v40 + 0x8000) >> 16;
              v14 = (v14 + v40);
              if (v113)
              {
                v11 = (v28 + 1);
                v13 = v111;
                v12 = v28;
                v112 = v94 + 2;
                v113 = 0;
              }

              else
              {
                v69 = v112;
                if (v111 >= v13)
                {
                  v13 = v13;
                }

                else
                {
                  v13 = v111;
                }

                if (v111 >= v112)
                {
                  v69 = v94 + 2;
                }

                v112 = v69;
                v113 = 0;
                if (v28 >= v12)
                {
                  v12 = v12;
                }

                else
                {
                  v12 = v28;
                }

                if (v28 >= v11)
                {
                  v11 = (v28 + 1);
                }

                else
                {
                  v11 = v11;
                }
              }
            }

            v31 = v102;
            v30 = v103;
            v70 = (v42 + v55 + v60 + v65 + 2) >> 2;
            v71 = (v43 + v56 + v61 + v66 + 2) >> 2;
            v72 = (v90 + v9);
            *v72 = v70;
            v72[1] = v71;
            v26 = v104;
            v25 = v105;
          }

          v10 += v99;
          v73 = v28 + 1;
          v28 = (v28 + 2);
          v9 += v96;
        }

        while (v73 < v101);
        v7 = v81;
        v10 = v84;
        v9 = v85;
        v15 = v80;
        v16 = v83;
        v74 = v94 + 2;
      }

      v16 += v15;
      v10 += v82;
      v9 += v15;
      v94 = v74;
    }

    while (v74 < v7);
    v75 = ((v11 - v12) * (v112 - v13)) * 0.785398163;
    a7 = v77;
  }

  result = rintf(v75);
  *a7 = result;
  return result;
}

uint64_t whiteEyeCancellation(int *a1, uint64_t a2, float a3, uint64_t a4, uint64_t a5, unsigned __int8 **a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t *a11, uint64_t a12, uint64_t a13, int *a14, _DWORD *a15)
{
  v17 = a1[3];
  if (v17 < 1)
  {
    v23 = 0.0;
    if (!a9)
    {
      return 0;
    }
  }

  else
  {
    v18 = 0;
    v19 = 0;
    v20 = *a6;
    do
    {
      if (a1[2] >= 1)
      {
        v21 = a1[2];
        v22 = v20;
        do
        {
          v18 += *v22;
          v22 += a1[7];
          --v21;
        }

        while (v21);
      }

      ++v19;
      v20 += a1[4];
    }

    while (v19 != v17);
    v23 = v18;
    if (!a9)
    {
      return 0;
    }
  }

  v202 = a1[2];
  v197 = a1[3];
  v203 = a1[7];
  v196 = a1[4];
  v190 = *(a12 + 28);
  v191 = *(a12 + 16);
  v204 = rintf(v23 / 255.0);
  v24 = bitmaskBoundingBitmapRect(a9);
  v25 = v24;
  v27 = v26;
  v28 = HIDWORD(v24);
  v29 = bitmaskCentroid(a9);
  v31 = v30;
  v32 = v29;
  v33 = 0.0;
  v34 = 0.0;
  v217 = v28;
  if (v25 < v28)
  {
    v35 = 0;
    v212 = rintf(v31);
    v207 = v27 - rintf(v32);
    do
    {
      if (SHIDWORD(v27) > v27)
      {
        v37 = v207;
        v36 = HIDWORD(v27) - v27;
        v38 = v27;
        do
        {
          v39 = bitValueFromBitmask(a9, v38, v25);
          v40 = (v25 - v212) * (v25 - v212) + v37 * v37;
          if (v40 <= v35)
          {
            v40 = v35;
          }

          if (v39)
          {
            v35 = v40;
          }

          ++v38;
          ++v37;
          --v36;
        }

        while (v36);
      }

      ++v25;
    }

    while (v25 != v217);
    v34 = v35;
  }

  v41 = sqrt(v34);
  inited = initBitmask(a1[2], a1[3]);
  v43 = 0;
  v44 = v41 * 12.5663706;
  v45 = rintf(v44);
  if (v45 <= 6)
  {
    LODWORD(v45) = 6;
  }

  v218 = v45;
  v46 = 6.28318531 / v45;
  v47 = v41 * 2.5;
  v48 = -1;
  v213 = rintf(v47);
  v49 = v213;
  do
  {
    v50 = __sincos_stret(v46 * v33);
    if (v48 != -1)
    {
      v51 = rintf(v48 * 1.5);
      if (v48 + 2 > v51)
      {
        LODWORD(v51) = v48 + 2;
      }

      if (v51 >= v213)
      {
        v49 = v213;
      }

      else
      {
        v49 = v51;
      }
    }

    cosval = v50.__cosval;
    sinval = v50.__sinval;
    v54 = bilinearLookup(a1, v32, v31);
    if (v49 < 1)
    {
      v61 = 9;
      v55 = 0x10000;
    }

    else
    {
      v55 = 0x10000;
      v56 = -1;
      v57 = v49;
      v58 = v31;
      v59 = v32;
      do
      {
        if (!bilinearLookupTest(a1, v59, v58))
        {
          break;
        }

        v60 = bilinearLookup(a1, v59, v58);
        if (v60 < v55)
        {
          v55 = v60;
        }

        if (v60 > v56)
        {
          v56 = v60;
        }

        v59 = v59 + cosval;
        v58 = v58 + sinval;
        --v57;
      }

      while (v57);
      v61 = v56 + 10;
    }

    if (v55 < v54)
    {
      v62 = (v61 + 19 * v55) / 20;
      if (v62 == v55)
      {
        v63 = v62 + 1;
      }

      else
      {
        v63 = v62;
      }

      if (v49 < 1)
      {
        v48 = 0;
      }

      else
      {
        v48 = 0;
        v64 = v31;
        v65 = v32;
        while (bilinearLookupTest(a1, v65, v64))
        {
          v66 = bilinearLookup(a1, v65, v64);
          setBitInBitmask(inited, rintf(v65), rintf(v64), 1);
          if (v66 < v63)
          {
            break;
          }

          ++v48;
          v65 = v65 + cosval;
          v64 = v64 + sinval;
          if (v49 == v48)
          {
            v48 = v49;
            break;
          }
        }
      }
    }

    v33 = v33 + 1.0;
    ++v43;
  }

  while (v43 != v218);
  v67 = *(inited + 3);
  if (v67 < 1)
  {
    v68 = 0;
  }

  else
  {
    v68 = 0;
    v69 = 0;
    v70 = *(inited + 2);
    do
    {
      if (v70 >= 1)
      {
        for (i = 0; i < v70; ++i)
        {
          if (bitValueFromBitmask(inited, i, v69))
          {
            ++v68;
          }

          v70 = *(inited + 2);
        }

        v67 = *(inited + 3);
      }

      ++v69;
    }

    while (v69 < v67);
  }

  termBitmask(inited);
  if (v68 - v204 > 2 * v204)
  {
    return 0;
  }

  v73 = bitmaskBoundingBitmapRect(a9);
  v74 = v73;
  v76 = v75;
  v77 = HIDWORD(v73);
  v78 = bitmaskCentroid(a9);
  v80 = v79;
  v81 = v78;
  v82 = 0.0;
  v83 = 0.0;
  v219 = v77;
  if (v74 < v77)
  {
    v84 = 0;
    v214 = rintf(v80);
    v208 = v76 - rintf(v81);
    do
    {
      if (SHIDWORD(v76) > v76)
      {
        v86 = v208;
        v85 = HIDWORD(v76) - v76;
        v87 = v76;
        do
        {
          v88 = bitValueFromBitmask(a9, v87, v74);
          v89 = (v74 - v214) * (v74 - v214) + v86 * v86;
          if (v89 <= v84)
          {
            v89 = v84;
          }

          if (v88)
          {
            v84 = v89;
          }

          ++v87;
          ++v86;
          --v85;
        }

        while (v85);
      }

      ++v74;
    }

    while (v74 != v219);
    v83 = v84;
  }

  v90 = 0;
  v91 = 0;
  v92 = sqrt(v83);
  v93 = v92 * 12.5663706;
  v94 = rintf(v93);
  if (v94 <= 6)
  {
    LODWORD(v94) = 6;
  }

  v209 = v94;
  v95 = v92 * 2.5;
  v205 = 6.28318531 / v94;
  v96 = *(a11 + 4);
  v215 = *(a12 + 16);
  v220 = *(a11 + 7);
  v210 = *(a12 + 28);
  v97 = -1;
  v194 = v96;
  v195 = rintf(v95);
  v98 = v195;
  v200 = v80;
  v198 = v81;
  do
  {
    v99 = __sincos_stret(v205 * v82);
    if (v97 != -1)
    {
      v100 = rintf(v97 * 1.5);
      if (v97 + 2 > v100)
      {
        LODWORD(v100) = v97 + 2;
      }

      if (v100 >= v195)
      {
        v98 = v195;
      }

      else
      {
        v98 = v100;
      }
    }

    v101 = v99.__cosval;
    v102 = v99.__sinval;
    v103 = bilinearLookup(a1, v81, v80);
    if (v98 < 1)
    {
      LOBYTE(v112) = 0;
      LOBYTE(v113) = 0;
      v106 = 0x10000;
      v111 = 9;
    }

    else
    {
      v104 = -1;
      v105 = 0.0;
      v106 = 0x10000;
      v107 = v98;
      v108 = 0.0;
      do
      {
        if (!bilinearLookupTest(a1, v81, v80))
        {
          break;
        }

        v109 = bilinearLookup(a1, v81, v80);
        if (v109 < v106)
        {
          v108 = bilinearCbCrLookup(a2, v81 * 0.5, v80 * 0.5);
          v105 = v110;
          v106 = v109;
        }

        if (v109 > v104)
        {
          v104 = v109;
        }

        v81 = v81 + v101;
        v80 = v80 + v102;
        --v107;
      }

      while (v107);
      v111 = v104 + 10;
      v112 = v108;
      v113 = v105;
      v80 = v200;
      v81 = v198;
      v96 = v194;
    }

    if (v106 < v103)
    {
      v114 = (v111 + 19 * v106) / 20;
      if (v114 == v106)
      {
        v115 = v114 + 1;
      }

      else
      {
        v115 = v114;
      }

      if (v98 < 1)
      {
        v97 = 0;
      }

      else
      {
        v97 = 0;
        v116 = v80;
        v117 = v81;
        while (bilinearLookupTest(a1, v117, v116))
        {
          v118 = bilinearLookup(a1, v117, v116);
          *(*a11 + v96 * rintf(v116) + v220 * rintf(v117)) = v106;
          v119 = (*a12 + v215 * rintf(v116 * 0.5) + v210 * rintf(v117 * 0.5));
          *v119 = v112;
          v119[1] = v113;
          if (v118 < v115)
          {
            break;
          }

          ++v97;
          v117 = v117 + v101;
          v116 = v116 + v102;
          if (v98 == v97)
          {
            v97 = v98;
            break;
          }
        }
      }
    }

    v91 += v106;
    v82 = v82 + 1.0;
    ++v90;
  }

  while (v90 != v209);
  v120 = v197;
  if (a14)
  {
    v121 = *a14;
  }

  else
  {
    v121 = (v91 / v209 + 1) >> 1;
  }

  v201 = v121;
  v122 = a13;
  v123 = *(a13 + 20);
  srandom(0x4853467u);
  if (v197 < 1)
  {
    v143 = 0.0;
    v146 = NAN;
    v145 = NAN;
    v161 = 0.0;
    v148 = v196;
    v131 = v203;
    v132 = v202;
    v154 = a3;
  }

  else
  {
    v223 = 0;
    v221 = 0;
    v211 = 0;
    v216 = 0;
    v124 = 0;
    v125 = 0;
    v199 = rintf((2.0 / v123) * 4096.0);
    v126 = *a6;
    v127 = *a11;
    v128 = 1;
    v129 = 0.0;
    v130 = 0.0;
    v131 = v203;
    v132 = v202;
    do
    {
      v206 = v125 + 1;
      if (v132 >= 1)
      {
        v133 = 0;
        for (j = 0; j != v132; ++j)
        {
          v135 = v126[v133];
          if (v126[v133])
          {
            v136 = *(v127 + v133);
            v137 = v136 + (((v201 - v136 + ((((random() >> 7) - 128) * v199 + 2048) >> 12)) * v135 + 128) >> 8);
            *(v127 + v133) = v137 & ~(v137 >> 31);
            if (v128)
            {
              v223 = j + 1;
              v216 = v125;
              v211 = j;
              v221 = v125 + 1;
            }

            else
            {
              v138 = v216;
              if (v125 < v216)
              {
                v138 = v125;
              }

              v216 = v138;
              v139 = v221;
              if (v125 >= v221)
              {
                v139 = v125 + 1;
              }

              v221 = v139;
              v140 = v211;
              if (j < v211)
              {
                v140 = j;
              }

              v211 = v140;
              v141 = v223;
              if (j >= v223)
              {
                v141 = j + 1;
              }

              v223 = v141;
            }

            v131 = v203;
            v132 = v202;
            v128 = 0;
            v124 += v135;
            v130 = v130 + (v125 * v135);
            v129 = v129 + (j * v135);
          }

          v133 += v131;
        }
      }

      v127 += v196;
      v126 += v196;
      ++v125;
    }

    while (v206 != v197);
    v142 = 0;
    v143 = v124;
    v144 = 1.0 / v124;
    v145 = v144 * v129;
    v146 = v144 * v130;
    v122 = a13;
    v147 = *a6;
    v148 = v196;
    v149 = 2 * v196;
    v150 = &(*a6)[v131];
    v151 = &(*a6)[v196];
    v152 = &(*a6)[v131 + v196];
    v153 = *a12 + 1;
    v120 = v197;
    v154 = a3;
    do
    {
      if (v132 >= 1)
      {
        v155 = 0;
        v156 = 0;
        v157 = v153;
        do
        {
          v158 = v150[v155] + v147[v155] + v151[v155] + v152[v155];
          if (v158 >= 2)
          {
            v159 = (v158 + 2) >> 2;
            v160 = *v157;
            *(v157 - 1) += ((128 - *(v157 - 1)) * v159 + 128) >> 8;
            *v157 = v160 + (((128 - v160) * v159 + 128) >> 8);
          }

          v155 += 2 * v131;
          v156 += 2;
          v157 += v190;
        }

        while (v156 < v132);
      }

      v142 += 2;
      v147 += v149;
      v150 += v149;
      v151 += v149;
      v152 += v149;
      v153 += v191;
    }

    while (v142 < v197);
    v161 = ((v223 - v211) * (v221 - v216)) * 0.785398163;
  }

  result = rintf(v143 / 255.0);
  *a15 = rintf(v161);
  v162 = sqrt(result / 3.14159265);
  *&v162 = v162 + v162;
  v163 = *&v162;
  if (v154 == 0.0)
  {
    if (*(v122 + 24) == 1)
    {
      v164 = v163 * 10.4;
    }

    else
    {
      v164 = (v163 + -4.1) * 10.75;
    }

    v154 = v164;
  }

  if (*(a10 + 20) <= 0.7 || *(a10 + 40) - *(a10 + 36) <= 2 * (*(a10 + 48) - *(a10 + 44)))
  {
    if (*(v122 + 24) == 1)
    {
      v165 = 0.5;
      if (v163 >= 4.7)
      {
        v165 = 1.6 / (v163 + -1.5);
      }
    }

    else
    {
      v165 = 0.1;
    }

    v166 = v154 * 0.0266667;
    v167 = v166 * 0.5;
    v168 = (v166 * 0.5) * 4.0;
    v169 = vcvtps_s32_f32(v168);
    v170 = rintf(v145);
    v171 = rintf(v146);
    v172 = v169 + v171;
    v173 = (v169 + v170) < v132 ? v169 + v170 + 1 : v132;
    v174 = (v171 - v169) & ~((v171 - v169) >> 31);
    v175 = v172 < v120 ? v172 + 1 : v120;
    if (v174 < v175)
    {
      v176 = 1.0 - v165;
      v177 = v176 * v167;
      v178 = v201 + (250 - v201) * (v176 * 0.67 + 0.33);
      v179 = rintf(v178);
      v180 = (v170 - v169) & ~((v170 - v169) >> 31);
      v181 = v177 * v177;
      v182 = 1.0 / (v168 - v177);
      v183 = *a11 + (v174 * v148);
      while (v180 >= v173)
      {
LABEL_165:
        ++v174;
        v183 += v148;
        if (v174 == v175)
        {
          return result;
        }
      }

      v184 = (v183 + v180 * v131);
      v185 = v180;
      while (1)
      {
        v186 = ((v174 - v146) * (v174 - v146)) + ((v185 - v145) * (v185 - v145));
        LOBYTE(v187) = v179;
        if (v186 < v181)
        {
          goto LABEL_163;
        }

        if (v186 < (v168 * v168))
        {
          break;
        }

LABEL_164:
        ++v185;
        v184 += v131;
        if (v173 == v185)
        {
          goto LABEL_165;
        }
      }

      v188 = v182 * (v168 - sqrtf(v186));
      v189 = (v188 * -2.0 + 3.0) * v188 * v188;
      v187 = *v184 + (((v179 - *v184) * rintf(((v188 * (v188 * (v188 * (v188 * (v188 * v188))))) + (v165 * (v189 - (v188 * (v188 * (v188 * (v188 * (v188 * v188)))))))) * 4096.0) + 2048) >> 12);
LABEL_163:
      *v184 = v187;
      goto LABEL_164;
    }
  }

  return result;
}

void **closestConnectedComponent(uint64_t a1, int a2, uint64_t a3, uint64_t a4, int *a5, int *a6)
{
  v10 = *(a1 + 8);
  v11 = *(a1 + 12);
  inited = initBitmask(v10, v11);
  if (!inited)
  {
    puts("closestConnectedComponent: can not allocate bitmask bm");
    return 0;
  }

  v13 = inited;
  v14 = initBitmask(v10, v11);
  if (!v14)
  {
    puts("closestConnectedComponent: can not allocate bitmask bm2");
    goto LABEL_20;
  }

  v15 = initBitmask(v10, v11);
  if (!v15)
  {
    puts("closestConnectedComponent: can not allocate bitmask bm3");
    termBitmask(v13);
    v33 = v14;
    goto LABEL_26;
  }

  v16 = v15;
  v36 = a5;
  v37 = a6;
  v39 = 0;
  computeThresholdedBitmask(a1, v13, a2);
  memmove(*v16, *v13, *(v13 + 12) * *(v13 + 16));
  if (v11 < 1)
  {
LABEL_23:
    termBitmask(v13);
    termBitmask(v14);
    v33 = v16;
    goto LABEL_26;
  }

  v38 = v16;
  v17 = 0;
  v18 = (v10 * v10 + v11 * v11);
  v19 = 0xFFFFFFFFLL;
  v20 = -1;
  while (v10 < 1)
  {
LABEL_15:
    v17 = (v17 + 1);
    if (v17 == v11)
    {
      v16 = v38;
      if (v19 != -1)
      {
        seedFill(v38, v14, v20, v19, 0, bitIsSet);
        v30 = bitmaskBoundingBitmapRect(v14);
        *v36 = (v32 + v31) / 2;
        *v37 = (HIDWORD(v30) + v30) / 2;
        termBitmask(v38);
LABEL_20:
        termBitmask(v13);
        return v14;
      }

      goto LABEL_23;
    }
  }

  v21 = 0;
  while (!bitValueFromBitmask(v13, v21, v17))
  {
LABEL_14:
    if (v10 == ++v21)
    {
      goto LABEL_15;
    }
  }

  if (!seedFill(v13, v14, v21, v17, 0, bitIsSet))
  {
    v34 = "closestConnectedComponent: seedFill failed";
    goto LABEL_25;
  }

  v22 = bitmaskBoundingBitmapRect(v14);
  v24 = v23;
  v25 = bitmaskCentroidUsingBoundingRect(v14, v22, v23);
  v27 = v25 + -v10 * 0.5;
  v28 = v26 + -v11 * 0.5;
  v29 = (v28 * v28) + (v27 * v27);
  if (v29 >= v18)
  {
LABEL_13:
    bitmaskMinus(v13, v14);
    goto LABEL_14;
  }

  closestSetBitInBitmaskUsingBoundingRect(v14, v22, v24, &v39 + 1, &v39, v25, v26);
  v20 = HIDWORD(v39);
  if (HIDWORD(v39) != -1)
  {
    v19 = v39;
    v18 = v29;
    goto LABEL_13;
  }

  v34 = "closestConnectedComponent: centroid closest bit search failed";
LABEL_25:
  puts(v34);
  termBitmask(v13);
  termBitmask(v14);
  v33 = v38;
LABEL_26:
  termBitmask(v33);
  return 0;
}

void *cornealReflectionBitmask(uint64_t a1, uint64_t a2, int a3)
{
  if (!a1 || a3 >= 1 && a3 * 0.6 < bitmaskArea(a1))
  {
    return 0;
  }

  inited = initBitmask(*(a1 + 8), *(a1 + 12));
  if (!inited)
  {
    puts("cornealReflectionBitmask: can not allocate bitmask bm2 intended for spread");
    return inited;
  }

  if (!a2)
  {
    spreadBitmask3(a1, inited, 0);
    return inited;
  }

  v6 = bitmaskBoundingBitmapRect(a1);
  v8 = v7;
  v9 = *(a2 + 16);
  v10 = *(a2 + 28);
  v12 = bitmaskCentroid(a1);
  v13 = 0.0;
  v14 = 0.0;
  v15 = 0.0;
  v16 = 0.0;
  v67 = HIDWORD(v6);
  if (v6 < SHIDWORD(v6))
  {
    v17 = v11;
    v68 = 0;
    v70 = 0;
    v18 = *a2 + v9 * v6;
    v62 = inited;
    v63 = v10 * v8;
    v19 = HIDWORD(v8);
    v20 = 256;
    v21 = v6;
    v66 = v8;
    v64 = v9;
    while (1)
    {
      v65 = v19 - v8;
      if (v19 > v8)
      {
        break;
      }

      v27 = v15;
LABEL_21:
      ++v21;
      v18 += v64;
      v15 = v27;
      LODWORD(v8) = v66;
      if (v21 == HIDWORD(v6))
      {
        v29 = 0;
        do
        {
          if (v19 > v8)
          {
            v30 = v66 - v68;
            v31 = v65;
            v32 = v8;
            do
            {
              v33 = bitValueFromBitmask(a1, v32, v6);
              v34 = (v6 - v70) * (v6 - v70) + v30 * v30;
              if (v34 <= v29)
              {
                v34 = v29;
              }

              if (v33)
              {
                v29 = v34;
              }

              ++v32;
              ++v30;
              --v31;
            }

            while (v31);
          }

          LODWORD(v6) = v6 + 1;
          LODWORD(v8) = v66;
        }

        while (v6 != v67);
        v16 = v29;
        v14 = v68;
        v15 = v70;
        inited = v62;
        goto LABEL_32;
      }
    }

    v22 = v21 - v17;
    v23 = v22 * v22;
    v24 = v63;
    while (bitValueFromBitmask(a1, v8, v21))
    {
      v25 = *(v18 + v24);
      if (v20 <= v25)
      {
        if (v20 != v25)
        {
          break;
        }

        v28 = v8 - v12;
        v27 = v23 + (v28 * v28);
        if (v27 >= v15)
        {
          break;
        }

        v70 = v21;
        v68 = v8;
      }

      else
      {
        v26 = v8 - v12;
        v27 = v23 + (v26 * v26);
        v70 = v21;
        v68 = v8;
        v20 = *(v18 + v24);
      }

LABEL_18:
      LODWORD(v8) = v8 + 1;
      v24 += v10;
      v15 = v27;
      if (v19 == v8)
      {
        goto LABEL_21;
      }
    }

    v27 = v15;
    goto LABEL_18;
  }

LABEL_32:
  v35 = 0;
  v36 = sqrt(v16);
  v37 = v36 * 12.5663706;
  v38 = rintf(v37);
  if (v38 <= 6)
  {
    LODWORD(v38) = 6;
  }

  v71 = v38;
  v39 = 6.28318531 / v38;
  v40 = v36 * 2.5;
  v41 = -1;
  v69 = rintf(v40);
  v42 = v69;
  do
  {
    v43 = __sincos_stret(v39 * v13);
    if (v41 != -1)
    {
      v44 = rintf(v41 * 1.5);
      if (v41 + 2 > v44)
      {
        LODWORD(v44) = v41 + 2;
      }

      if (v44 >= v69)
      {
        v42 = v69;
      }

      else
      {
        v42 = v44;
      }
    }

    v45 = inited;
    cosval = v43.__cosval;
    sinval = v43.__sinval;
    v48 = bilinearLookup(a2, v14, v15);
    if (v42 < 1)
    {
      v50 = 256;
      v49 = -1;
    }

    else
    {
      v49 = -1;
      v50 = 256;
      v51 = v42;
      v52 = v15;
      v53 = v14;
      do
      {
        if (!bilinearLookupTest(a2, v53, v52))
        {
          break;
        }

        v54 = bilinearLookup(a2, v53, v52);
        if (v54 < v50)
        {
          v50 = v54;
        }

        if (v54 > v49)
        {
          v49 = v54;
        }

        v53 = v53 + cosval;
        v52 = v52 + sinval;
        --v51;
      }

      while (v51);
    }

    inited = v45;
    if (v49 > v48)
    {
      v55 = 1717986919 * (v50 + 19 * v49 + 10);
      v56 = (v55 >> 35) + (v55 >> 63);
      if (v42 < 1)
      {
        v41 = 0;
      }

      else
      {
        v41 = 0;
        v57 = v56 - (v56 == v49);
        v58 = v15;
        v59 = v14;
        while (bilinearLookupTest(a2, v59, v58))
        {
          v60 = bilinearLookup(a2, v59, v58);
          setBitInBitmask(v45, rintf(v59), rintf(v58), 1);
          if (v60 > v57)
          {
            break;
          }

          ++v41;
          v59 = v59 + cosval;
          v58 = v58 + sinval;
          if (v42 == v41)
          {
            v41 = v42;
            break;
          }
        }
      }
    }

    v13 = v13 + 1.0;
    ++v35;
  }

  while (v35 != v71);
  spreadBitmask3(v45, a1, 0);
  chokeBitmask(a1, v45, 0);
  return inited;
}

void infillChannelWithBitmask(uint64_t *a1, uint64_t a2, int a3, int a4)
{
  *&v232[468] = *MEMORY[0x1E69E9840];
  v6 = bitmaskBoundingBitmapRect(a2);
  v8 = insetBitmapRect(v6, v7, 0xFFFFFFFFLL, -1);
  v10 = v9;
  v11 = malloc_type_malloc(0x10uLL, 0x10200403A5D3213uLL);
  if (!v11)
  {

    puts("determineOutsidePath: unable to allocate path");
    return;
  }

  v12 = v11;
  v211 = a1;
  *v11 = 0;
  v11[1] = 0;
  v215 = HIDWORD(v8);
  inited = initBitmask(*(a2 + 8), *(a2 + 12));
  *(v12 + 2) = 0;
  if (v8 >= SHIDWORD(v8))
  {
    goto LABEL_33;
  }

  v13 = 0;
  v14 = HIDWORD(v10);
  v210 = v8;
  v218 = v12;
  v219 = HIDWORD(v10);
  v214 = v10;
  do
  {
    if (v10 < v14)
    {
      v220 = v8 - 1;
      v221 = v8 + 1;
      v15 = v10;
      while (1)
      {
        if (bitValueFromBitmask(a2, v15, v8))
        {
          v16 = v15 + 1;
        }

        else
        {
          LODWORD(v227) = bitValueFromBitmask(a2, v15 - 1, v220);
          v225 = bitValueFromBitmask(a2, v15, v220);
          v16 = v15 + 1;
          v223 = bitValueFromBitmask(a2, v15 + 1, v220);
          v17 = bitValueFromBitmask(a2, v15 - 1, v8);
          v18 = bitValueFromBitmask(a2, v15 + 1, v8);
          v19 = bitValueFromBitmask(a2, v15 - 1, v221);
          v20 = bitValueFromBitmask(a2, v15, v221);
          if (v225 + v227 + v223 + v17 + v18 + v19 + v20 + bitValueFromBitmask(a2, v15 + 1, v221))
          {
            v21 = v18;
            ++*(v218 + 2);
            setBitInBitmask(inited, v15, v8, 1);
            v13 = v225;
            if (v225 && v20)
            {
              ++*(v218 + 2);
            }

            else if (v17)
            {
              LODWORD(v14) = v219;
              if (v21)
              {
                ++*(v218 + 2);
              }

              goto LABEL_17;
            }

            LODWORD(v14) = v219;
          }

          else
          {
            LODWORD(v14) = v219;
            v13 = v225;
          }
        }

LABEL_17:
        v15 = v16;
        if (v16 == v14)
        {
          v10 = v214;
          v22 = v8 + 1;
          goto LABEL_20;
        }
      }
    }

    v22 = v8 + 1;
LABEL_20:
    LODWORD(v8) = v22;
  }

  while (v22 != v215);
  v12 = v218;
  v23 = v13 == 0;
  if (!*(v218 + 2))
  {
LABEL_33:
    v34 = "determineOutsidePath: no bits set";
LABEL_34:
    puts(v34);
    termBitmask(inited);
    free(*v12);

    free(v12);
    return;
  }

  v227 = a2;
  v25 = insetBitmapRect(v210, v10, 0xFFFFFFFFLL, -1);
  v26 = HIDWORD(v25);
  if (v25 >= SHIDWORD(v25))
  {
LABEL_31:
    v29 = v10;
    goto LABEL_32;
  }

  v27 = v24;
  v28 = HIDWORD(v24);
LABEL_24:
  while (v27 >= v28)
  {
    LODWORD(v25) = v25 + 1;
    v33 = v23 && v25 < v26;
    v23 = 1;
    if (!v33)
    {
      goto LABEL_31;
    }
  }

  v29 = v10;
  v30 = v27;
  while (1)
  {
    v31 = bitValueFromBitmask(inited, v30, v25);
    v32 = v30 + 1;
    if (v31)
    {
      break;
    }

    ++v30;
    if (v28 == v32)
    {
      LODWORD(v25) = v25 + 1;
      v23 = 1;
      if (v25 >= v26)
      {
LABEL_32:
        LODWORD(v25) = 0;
        v30 = 0;
        goto LABEL_41;
      }

      goto LABEL_24;
    }
  }

  if (!bitValueFromBitmask(inited, v32, v25))
  {
    v34 = "determineOutsidePath: isolated point";
    goto LABEL_34;
  }

LABEL_41:
  v35 = malloc_type_calloc(*(v218 + 2), 8uLL, 0x100004000313F17uLL);
  *v218 = v35;
  if (!v35)
  {
    v34 = "determineOutsidePath: unable to allocate path body";
    goto LABEL_34;
  }

  v36 = v35;
  v37 = 0;
  v38 = v30;
  v39 = v25;
LABEL_43:
  v40 = v37;
  v37 = (v37 + 1) & 3;
  v41 = v36 + 8;
  v42 = v36;
  while (1)
  {
    v36 = v41;
    if (*(v218 + 2) <= &v42[-*v218] >> 3)
    {
      v53 = "determineOutsidePath: overflow";
      goto LABEL_99;
    }

    *(v41 - 2) = v38;
    *(v41 - 1) = v39;
    if (v40 > 1)
    {
      if (v40 == 2)
      {
        --v38;
      }

      else
      {
        --v39;
      }
    }

    else if (v40)
    {
      ++v39;
    }

    else
    {
      ++v38;
    }

    if (!bitValueFromBitmask(inited, v38, v39))
    {
      v53 = "determineOutsidePath: border pixel expected";
      goto LABEL_99;
    }

    if (v38 == v30 && v39 == v25)
    {
      break;
    }

    if (v37 > 1)
    {
      if (v37 == 2)
      {
        v43 = v38 - 1;
        goto LABEL_60;
      }

      v44 = v39 - 1;
    }

    else
    {
      if (!v37)
      {
        v43 = v38 + 1;
LABEL_60:
        v44 = v39;
        goto LABEL_64;
      }

      v44 = v39 + 1;
    }

    v43 = v38;
LABEL_64:
    if (bitValueFromBitmask(inited, v43, v44))
    {
      goto LABEL_43;
    }

    v45 = v40 - 1;
    if (v40 > 1)
    {
      if (v40 != 2)
      {
        v47 = v39 - 1;
        goto LABEL_73;
      }

      v46 = v38 - 1;
    }

    else
    {
      if (v40)
      {
        v47 = v39 + 1;
LABEL_73:
        v46 = v38;
        goto LABEL_74;
      }

      v46 = v38 + 1;
    }

    v47 = v39;
LABEL_74:
    v48 = bitValueFromBitmask(inited, v46, v47);
    v41 = v36 + 8;
    v42 += 8;
    if (!v48)
    {
      v37 = v45 & 3;
      if (v37 > 1)
      {
        if (v37 != 2)
        {
          v50 = v39 - 1;
          goto LABEL_83;
        }

        v49 = v38 - 1;
LABEL_80:
        v50 = v39;
      }

      else
      {
        if ((v45 & 3) == 0)
        {
          v49 = v38 + 1;
          goto LABEL_80;
        }

        v50 = v39 + 1;
LABEL_83:
        v49 = v38;
      }

      if (bitValueFromBitmask(inited, v49, v50))
      {
        goto LABEL_43;
      }

      v37 = v40 ^ 2;
      if ((v40 ^ 2) > 1)
      {
        if (v37 != 2)
        {
          v52 = v39 - 1;
          goto LABEL_93;
        }

        v51 = v38 - 1;
LABEL_90:
        v52 = v39;
      }

      else
      {
        if (!v37)
        {
          v51 = v38 + 1;
          goto LABEL_90;
        }

        v52 = v39 + 1;
LABEL_93:
        v51 = v38;
      }

      if (!bitValueFromBitmask(inited, v51, v52))
      {
        v53 = "determineOutsidePath: nowhere to go";
LABEL_99:
        puts(v53);
        free(*v218);
        free(v218);

        termBitmask(inited);
        return;
      }

      goto LABEL_43;
    }
  }

  termBitmask(inited);
  v54 = 0;
  v55 = 0;
  v56 = 0.0;
  v57 = 1000000000.0;
  v58 = 3.14159265;
  v59 = 18.0;
  v60 = -1.57079633;
  v61 = 0.0001;
  v62 = "_asgDownH";
  v226 = 0.0;
  v63 = v227;
  v64 = v29;
  v65 = v218;
  v66 = v219;
LABEL_104:
  v67 = malloc_type_malloc(0x20uLL, 0x1020040CC5CF236uLL);
  if (!v67)
  {
    puts("determineArcsAtAngleForOutsidePath: unable to allocate arcs");
    goto LABEL_230;
  }

  v68 = v67;
  v69 = v54 * v58 / v59;
  v70 = __sincos_stret(v69);
  if (fabs(v69 + v60) < v61)
  {
    v73 = 1.0;
  }

  else
  {
    cosval = v70.__cosval;
    v56 = cosval;
    sinval = v70.__sinval;
    v73 = sinval;
  }

  *v68 = 0u;
  *(v68 + 1) = 0u;
  v74 = v65[2];
  if (v74 >= 1)
  {
    v75 = 0;
    v76 = 0;
    v77 = 0;
    v78 = *v65;
    v79 = (*v65 + 4);
    while (1)
    {
      v80 = v77;
      if (v77)
      {
        v81 = v77;
      }

      else
      {
        v81 = v74;
      }

      ++v77;
      v82 = &v78[2 * v81];
      if (v77 < v74)
      {
        v83 = v80 + 1;
      }

      else
      {
        v83 = 0;
      }

      v84 = (v56 * *v79) - (*(v79 - 1) * v73);
      v85 = v84 - ((v56 * *(v82 - 1)) - (*(v82 - 2) * v73));
      v86 = ((v56 * v78[2 * v83 + 1]) - (v78[2 * v83] * v73)) - v84;
      if (v85 >= 0.0)
      {
        if (v85 <= 0.0)
        {
          if (v86 >= 0.0 && v86 <= 0.0)
          {
            goto LABEL_126;
          }

          ++v76;
          goto LABEL_125;
        }

        if (v86 < 0.0)
        {
LABEL_118:
          v76 += 2;
LABEL_125:
          *(v68 + 6) = v76;
          *(v68 + 2) = ++v75;
          goto LABEL_126;
        }
      }

      else if (v86 > 0.0)
      {
        goto LABEL_118;
      }

      *(v68 + 6) = ++v76;
LABEL_126:
      v79 += 2;
      if (v74 == v77)
      {
        v87 = v76;
        goto LABEL_129;
      }
    }
  }

  v87 = 0;
LABEL_129:
  v88 = malloc_type_calloc(v87, 0xCuLL, 0x10000403E1C8BA9uLL);
  v68[2] = v88;
  if (!v88)
  {
    v166 = "determineArcsAtAngleForOutsidePath: unable to allocate arc bodies";
    goto LABEL_229;
  }

  v89 = malloc_type_calloc(*(v68 + 2), 0xCuLL, 0x100004005A209FEuLL);
  *v68 = v89;
  if (!v89)
  {
    v166 = "determineArcsAtAngleForOutsidePath: unable to allocate arcs";
    goto LABEL_229;
  }

  v90 = v65[2];
  if (v90 < 1)
  {
LABEL_167:
    v217 = v55;
    v120 = *(v68 + 2);
    v208 = v54;
    v206 = v61;
    v207 = v60;
    v205 = v58;
    if (v120 >= 1)
    {
      for (i = 0; i < v120; ++i)
      {
        if ((v89[2] & 1) == 0)
        {
          v122 = v68[2];
          v123 = v122 + 12 * *v89;
          v124 = v123 + 12 * v89[1] - 12;
          if (v124 > v123)
          {
            v125 = v122 + 12 * *v89 + 12;
            do
            {
              __base = *(v125 - 12);
              v126 = __base;
              v231 = *(v125 - 4);
              v127 = v231;
              v128 = *(v124 + 8);
              *(v125 - 12) = *v124;
              *(v125 - 4) = v128;
              *v124 = v126;
              *(v124 + 8) = v127;
              v124 -= 12;
              v129 = v124 > v125;
              v125 += 12;
            }

            while (v129);
            v120 = *(v68 + 2);
          }
        }

        v89 += 3;
      }
    }

    v130 = -1000000.0;
    v131 = 1000000.0;
    v132 = v210;
    do
    {
      if (v64 < v66)
      {
        v134 = v130;
        v135 = v64;
        do
        {
          if (!bitValueFromBitmask(v63, v135, v132))
          {
            goto LABEL_182;
          }

          v133 = v56 * v132;
          v130 = v133 - (v135 * v73);
          if (v130 < v131)
          {
            v131 = v133 - (v135 * v73);
          }

          if (v130 <= v134)
          {
LABEL_182:
            v130 = v134;
          }

          ++v135;
          v134 = v130;
        }

        while (v66 != v135);
      }

      ++v132;
    }

    while (v132 != v215);
    v228 = 0;
    v229 = 0;
    if (v131 > v130)
    {
      v136 = v68;
      v69 = v226;
      v68 = v217;
      v137 = v57;
      v138 = v208;
      v61 = v206;
      v60 = v207;
      v56 = 0.0;
      v58 = v205;
      v59 = 18.0;
      goto LABEL_223;
    }

    v139 = 0;
    v140 = 0.0;
    v141 = &qword_19CF25000;
    while (1)
    {
      v142 = *(v68 + 2);
      if (v142 < 1)
      {
LABEL_226:
        puts("arcCorrelation: no crossings at f1");
        v137 = 100000000.0;
        v65 = v218;
        goto LABEL_218;
      }

      v143 = v64;
      v144 = 0;
      v145 = v68[2];
      v146 = v131;
      v147 = *v68 + 8;
      do
      {
        v148 = &v145[12 * *(v147 - 2)];
        v149 = *(v141 + 35);
        if (*v148 + v149 <= v146)
        {
          v150 = *(v147 - 1);
          if (v148[3 * v150 - 3] + v149 >= v146)
          {
            v151 = f2AndPixelValueFromBorderPixelsAt(v148, v150, &v229 + 1, v131);
            if (v144 >= 40)
            {
              v164 = "arcCorrelation: too many crossings";
LABEL_217:
              puts(v164);
              v137 = 100000000.0;
              v63 = v227;
              v64 = v143;
              v65 = v218;
              v62 = "_asgDownH";
              goto LABEL_218;
            }

            v152 = &__base + 3 * v144;
            *v152 = *(&v229 + 1);
            v152[1] = v151;
            *(v152 + 8) = *v147;
            ++v144;
            v141 = &qword_19CF25000;
          }
        }

        v147 += 12;
        --v142;
      }

      while (v142);
      if (v144)
      {
        v164 = "arcCorrelation: odd number of crossings";
        goto LABEL_217;
      }

      v63 = v227;
      v64 = v143;
      v62 = "_asgDownH";
      if (!v144)
      {
        goto LABEL_226;
      }

      qsort(&__base, v144, 0xCuLL, crossingCompare);
      if (v144 >= 1)
      {
        v153 = 0;
        p_base = &__base;
        v155 = v232;
        v65 = v218;
        while (1)
        {
          v156 = *(p_base + 8);
          if (v156 == v155[8])
          {
            if (v153 > v144 - 4 || (v157 = v155 + 12, vabds_f32(*v155, *(v155 + 3)) >= 0.01) || v156 == v155[20])
            {
              printf("arcCorrelation: improper crossing pairing at f1 %.2f\n", v131);
              printf("%d crossings:\n", v144);
              v161 = 0;
              v162 = &__base;
              do
              {
                printf("  [%2d] f2 %.2f pix %.2f ", v161, *v162, *(v162 + 1));
                if (*(v162 + 8))
                {
                  v163 = "+";
                }

                else
                {
                  v163 = "-";
                }

                puts(v163);
                ++v161;
                v162 = (v162 + 12);
              }

              while (v144 != v161);
              v137 = 100000000.0;
              v62 = "_asgDownH";
              v61 = v206;
              v60 = v207;
              v56 = 0.0;
              v58 = v205;
              v59 = 18.0;
              v65 = v218;
LABEL_219:
              v138 = v208;
              if (v137 >= v57)
              {
                v136 = v68;
                v69 = v226;
                v68 = v217;
                v137 = v57;
                v66 = v219;
              }

              else
              {
                v136 = v217;
                v165 = v69;
                v66 = v219;
                if (!v217)
                {
                  goto LABEL_224;
                }
              }

LABEL_223:
              freeArcs(v136);
              v165 = v69;
LABEL_224:
              v226 = v165;
              v54 = v138 + 1;
              v57 = v137;
              v55 = v68;
              if (v54 == 18)
              {
                free(*v65);
                free(v65);
                v228 = 0;
                v229 = 0;
                v168 = __sincos_stret(v226);
                v171 = fabs(v226 + v60) < v61;
                if (v171)
                {
                  v172 = 0.0;
                }

                else
                {
                  v169 = v168.__cosval;
                  v172 = v169;
                }

                if (v171)
                {
                  v173 = 1.0;
                }

                else
                {
                  v170 = v168.__sinval;
                  v173 = v170;
                }

                v209 = *(v211 + 7);
                v222 = *(v211 + 4);
                v224 = *v211;
                v174 = v62;
                v175 = v210;
                v176 = v64;
                v177 = *(v174 + 284);
                while (1)
                {
                  if (v176 >= v66)
                  {
                    goto LABEL_274;
                  }

                  v178 = v64;
                  do
                  {
                    if (!bitValueFromBitmask(v227, v178, v175))
                    {
                      goto LABEL_273;
                    }

                    v179 = *(v68 + 2);
                    if (v179 < 1)
                    {
LABEL_283:
                      v204 = "arcInfill: no crossings at f1";
                      goto LABEL_285;
                    }

                    v180 = 0;
                    v181 = (v172 * v175) - (v178 * v173);
                    v182 = (v173 * v175) + (v178 * v172);
                    v183 = v68[2];
                    v184 = v181;
                    v185 = *v68 + 8;
                    do
                    {
                      v186 = &v183[12 * *(v185 - 2)];
                      if (*v186 + -0.01 <= v184)
                      {
                        v187 = *(v185 - 1);
                        if (v186[3 * v187 - 3] + -0.01 >= v184)
                        {
                          v188 = f2AndPixelValueFromBorderPixelsAt(v186, v187, &v229 + 1, v181);
                          if (v180 > 39)
                          {
                            v204 = "arcInfill: too many crossings";
LABEL_285:
                            puts(v204);
                            goto LABEL_286;
                          }

                          v189 = &__base + 3 * v180;
                          *v189 = *(&v229 + 1);
                          v189[1] = v188;
                          *(v189 + 8) = *v185;
                          ++v180;
                        }
                      }

                      v185 += 12;
                      --v179;
                    }

                    while (v179);
                    if (v180)
                    {
                      v204 = "arcInfill: odd number of crossings";
                      goto LABEL_285;
                    }

                    if (!v180)
                    {
                      goto LABEL_283;
                    }

                    qsort(&__base, v180, 0xCuLL, crossingCompare);
                    if (v180 < 1)
                    {
                      goto LABEL_273;
                    }

                    v190 = 0;
                    v191 = &__base;
                    v192 = v232;
                    while (2)
                    {
                      v193 = *(v191 + 8);
                      if (v193 == v192[8])
                      {
                        if (v190 > v180 - 4 || (v194 = v192 + 12, vabds_f32(*v192, *(v192 + 3)) >= v177) || v193 == v192[20])
                        {
                          printf("arcInfill: improper crossing pairing at f1 %.2f\n", v181);
                          printf("%d crossings:\n", v180);
                          v201 = 0;
                          v202 = &__base;
                          do
                          {
                            printf("  [%2d] f2 %.2f pix %.2f ", v201, *v202, *(v202 + 1));
                            if (*(v202 + 8))
                            {
                              v203 = "+";
                            }

                            else
                            {
                              v203 = "-";
                            }

                            puts(v203);
                            ++v201;
                            v202 = (v202 + 12);
                          }

                          while (v180 != v201);
                          goto LABEL_286;
                        }

                        v228 = *v192;
                        v195 = v228;
                        LODWORD(v229) = *(v192 + 2);
                        v196 = v229;
                        *v192 = *v194;
                        *(v192 + 2) = *(v192 + 5);
                        *v194 = v195;
                        *(v192 + 5) = v196;
                        v190 -= 2;
                        v191 -= 6;
                        v192 -= 24;
                        goto LABEL_266;
                      }

                      v197 = *v191;
                      if (*v191 > v182 || (v198 = *v192, v182 > *v192))
                      {
LABEL_266:
                        v190 += 2;
                        v191 += 6;
                        v192 += 24;
                        if (v190 >= v180)
                        {
                          goto LABEL_273;
                        }

                        continue;
                      }

                      break;
                    }

                    v199 = 0.0;
                    if (v198 > v197)
                    {
                      v200 = (v182 - v197) / (v198 - v197);
                      if (v200 >= 0.0)
                      {
                        v199 = v200;
                        if (v200 > 1.0)
                        {
                          v199 = 1.0;
                        }
                      }
                    }

                    *(v224 + (v175 + a4) * v222 + (v178 + a3) * v209) = rintf(v191[1] + ((*(v192 + 1) - v191[1]) * v199));
LABEL_273:
                    ++v178;
                    v66 = v219;
                  }

                  while (v178 != v219);
LABEL_274:
                  ++v175;
                  v176 = v214;
                  if (v175 == v215)
                  {
LABEL_286:
                    v167 = v68;
LABEL_232:
                    freeArcs(v167);
                    return;
                  }
                }
              }

              goto LABEL_104;
            }

            v228 = *v155;
            v158 = v228;
            LODWORD(v229) = *(v155 + 2);
            v159 = v229;
            *v155 = *v157;
            *(v155 + 2) = *(v155 + 5);
            *v157 = v158;
            *(v155 + 5) = v159;
            p_base -= 6;
            v155 -= 24;
          }

          else
          {
            v160 = p_base[1] - *(v155 + 1);
            v140 = v140 + (v160 * v160);
            ++v139;
            v153 += 2;
          }

          p_base += 6;
          v155 += 24;
          if (v153 >= v144)
          {
            goto LABEL_208;
          }
        }
      }

      v65 = v218;
LABEL_208:
      v131 = v131 + 0.5;
      v141 = &qword_19CF25000;
      if (v131 > v130)
      {
        v137 = v140 / v139;
LABEL_218:
        v61 = v206;
        v60 = v207;
        v56 = 0.0;
        v58 = v205;
        v59 = 18.0;
        goto LABEL_219;
      }
    }
  }

  v91 = 0;
  v92 = *(v211 + 4);
  v93 = *(v211 + 7);
  v94 = *v211;
  v95 = v68[2];
  v96 = *v65;
  v97 = v89;
  v98 = v95;
  while (1)
  {
    v99 = v91;
    v100 = &v96[2 * v91];
    v102 = *v100;
    v101 = v100[1];
    v103 = v99 ? v99 : v90;
    v91 = v99 + 1;
    v104 = &v96[2 * v103];
    v105 = v99 + 1 < v90 ? v99 + 1 : 0;
    v106 = (v56 * v101) - (v102 * v73);
    v107 = v106 - ((v56 * *(v104 - 1)) - (*(v104 - 2) * v73));
    v108 = ((v56 * v96[2 * v105 + 1]) - (v96[2 * v105] * v73)) - v106;
    if (v107 <= 0.0 && v108 > 0.0)
    {
      break;
    }

    if (v107 >= 0.0 && v108 < 0.0)
    {
      if ((0xAAAAAAAAAAAAAAABLL * (v97 - v89)) >= *(v68 + 2))
      {
        goto LABEL_234;
      }

      *v97 = -1431655765 * ((v98 - v95) >> 2);
      v97[1] = 0;
      *(v97 + 8) = 0;
      v109 = *(v68 + 6);
      v110 = v98 - 12;
      v111 = v98 - v95;
      v112 = -1;
      do
      {
        if ((0xAAAAAAAAAAAAAAABLL * (v111 >> 2)) >= v109)
        {
          goto LABEL_228;
        }

        *(v110 + 3) = (v56 * v101) - (v102 * v73);
        *(v110 + 4) = (v73 * v101) + (v102 * v56);
        v110 += 12;
        *(v110 + 2) = *(v94 + (v101 + a4) * v92 + (v102 + a3) * v93);
        v97[1] = v112 + 2;
        if (v99 + 1 == v90)
        {
          LODWORD(v99) = 0;
        }

        else
        {
          LODWORD(v99) = v99 + 1;
        }

        v118 = &v96[2 * v99];
        v102 = *v118;
        v101 = v118[1];
        if (v99 + 1 < v90)
        {
          v119 = v99 + 1;
        }

        else
        {
          v119 = 0;
        }

        v115 = v102;
        v116 = v101;
        v117 = (v56 * v101) - (v102 * v73);
        ++v112;
        v111 += 12;
      }

      while ((((v56 * v96[2 * v119 + 1]) - (v96[2 * v119] * v73)) - v117) < 0.0);
LABEL_164:
      if ((0xAAAAAAAAAAAAAAABLL * (v111 >> 2)) >= v109)
      {
        goto LABEL_228;
      }

      *(v110 + 3) = v117;
      *(v110 + 4) = (v73 * v116) + (v115 * v56);
      *(v110 + 5) = *(v94 + (v101 + a4) * v92 + (v102 + a3) * v93);
      v98 = v110 + 24;
      v97[1] = v112 + 2;
      v97 += 3;
    }

    if (v91 == v90)
    {
      goto LABEL_167;
    }
  }

  if ((0xAAAAAAAAAAAAAAABLL * (v97 - v89)) < *(v68 + 2))
  {
    *v97 = -1431655765 * ((v98 - v95) >> 2);
    v97[1] = 0;
    *(v97 + 8) = 1;
    v109 = *(v68 + 6);
    v110 = v98 - 12;
    v111 = v98 - v95;
    v112 = -1;
    while ((0xAAAAAAAAAAAAAAABLL * (v111 >> 2)) < v109)
    {
      *(v110 + 3) = (v56 * v101) - (v102 * v73);
      *(v110 + 4) = (v73 * v101) + (v102 * v56);
      v110 += 12;
      *(v110 + 2) = *(v94 + (v101 + a4) * v92 + (v102 + a3) * v93);
      v97[1] = v112 + 2;
      if (v99 + 1 == v90)
      {
        LODWORD(v99) = 0;
      }

      else
      {
        LODWORD(v99) = v99 + 1;
      }

      v113 = &v96[2 * v99];
      v102 = *v113;
      v101 = v113[1];
      if (v99 + 1 < v90)
      {
        v114 = v99 + 1;
      }

      else
      {
        v114 = 0;
      }

      v115 = v102;
      v116 = v101;
      v117 = (v56 * v101) - (v102 * v73);
      ++v112;
      v111 += 12;
      if ((((v56 * v96[2 * v114 + 1]) - (v96[2 * v114] * v73)) - v117) <= 0.0)
      {
        goto LABEL_164;
      }
    }

LABEL_228:
    v166 = "determineArcsAtAngleForOutsidePath: too many arc bodies";
    goto LABEL_229;
  }

LABEL_234:
  v166 = "determineArcsAtAngleForOutsidePath: too many arcs";
LABEL_229:
  puts(v166);
  freeArcs(v68);
LABEL_230:
  free(*v65);
  free(v65);
  if (v55)
  {
    v167 = v55;
    goto LABEL_232;
  }
}