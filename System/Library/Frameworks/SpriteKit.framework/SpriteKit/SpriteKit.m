void SKCLightNode::SKCLightNode(SKCLightNode *this)
{
  SKCNode::SKCNode(this);
  *v1 = &unk_282E15728;
  *(v1 + 560) = 0;
  *(v1 + 576) = 0;
  *(v1 + 568) = 0;
  *(v1 + 584) = 1;
  __asm { FMOV            V0.4S, #1.0 }

  *(v1 + 592) = _Q0;
  *(v1 + 608) = xmmword_21C4B84C0;
  *(v1 + 624) = xmmword_21C4B84D0;
  *(v1 + 640) = 0x13F800000;
}

double SKCLightNode::getBatchInfo@<D0>(uint64_t a1@<X8>)
{
  *(a1 + 12) = 1;
  *(a1 + 16) = 0u;
  *(a1 + 32) = 0u;
  *(a1 + 48) = 0u;
  *(a1 + 60) = 0u;
  *&result = 0x300000000;
  *(a1 + 4) = 0x300000000;
  *a1 = 1;
  return result;
}

ShadowInfo *SKCLightNode::addRenderOps(ShadowInfo *result, uint64_t *a2, uint64_t *a3)
{
  v3 = *(result + 72);
  if (v3)
  {
    v5 = *(v3 + 32);
    v4 = *(v3 + 40);
    if (v5 != v4)
    {
      v8 = result;
      v9 = (v4 - v5) >> 3;
      v10 = 4 * v9;
      v11 = 3 * v9;
      if (*(a2[50] + 48) < (2 * v11))
      {
        SKCRendererEnsureBufferCapacity(a2 + 50, 0, 2 * v11);
        SKCRendererGenerateQuadIndexBufferData<unsigned short>(a2 + 50);
        (*(*a2[50] + 24))(a2[50], 0, 0);
      }

      v12 = (v10 + 4);
      v13 = *(v8 + 70);
      if (!v13 || *(v13 + 4) < v12 && ((v14 = *(v8 + 71), *(v8 + 35) = 0u, !v14) || (std::__shared_weak_count::__release_shared[abi:ne200100](v14), (v13 = *(v8 + 70)) == 0)))
      {
        SKCRenderer::getBackingContext(a2[13], &v50);
        v15 = (*(*v50 + 16))(v50, 0, 4, v12);
        std::shared_ptr<jet_buffer_pool>::shared_ptr[abi:ne200100]<jet_buffer_pool,0>(&__p, v15);
      }

      jet_buffer_pool::next_buffer(v13);
      v16 = *(v8 + 70);
      data = jet_buffer_pool::get_data(v16);
      jet_buffer_pool::get_element_size(v16);
      *data = xmmword_21C4B84E0;
      data[1] = xmmword_21C4B84F0;
      data[2] = xmmword_21C4B8500;
      data[3] = xmmword_21C4B8510;
      v18 = *(v8 + 72);
      v19 = *(v18 + 32);
      v20 = *(v18 + 40);
      if (v19 != v20)
      {
        v21 = 4;
        do
        {
          v22 = *v19++;
          *&v23 = v22[1];
          *(&v23 + 1) = 0x3F80000000000000;
          data[v21] = v23;
          *&v23 = *v22;
          *(&v23 + 1) = 0x3F80000000000000;
          data[v21 + 1] = v23;
          v24 = vsub_f32(*v22, *(*(v8 + 72) + 16));
          *&v23 = vmla_n_f32(*v22, v24, 20.0 / sqrtf(COERCE_FLOAT(vmul_f32(v24, v24).i32[1]) + (v24.f32[0] * v24.f32[0])));
          *(&v23 + 1) = 0x3F80000000000000;
          data[v21 + 2] = v23;
          v25 = v22[1];
          *&v23 = vsub_f32(v25, *(*(v8 + 72) + 16));
          *&v26 = vmla_n_f32(v25, *&v23, 20.0 / sqrtf(COERCE_FLOAT(vmul_f32(*&v23, *&v23).i32[1]) + (*&v23 * *&v23)));
          v27 = v21 + 3;
          *(&v26 + 1) = 0x3F80000000000000;
          v21 += 4;
          data[v27] = v26;
        }

        while (v19 != v20);
      }

      jet_buffer_pool::commit_data(*(v8 + 70));
      v28 = *(v8 + 39);
      v29 = *a3;
      v30 = a2[17];
      LODWORD(__p.__r_.__value_.__l.__data_) = 31;
      v31 = *(v29 + 16);
      v47 = v28;
      if (v31 >= *(v29 + 24))
      {
        v32 = std::vector<jet_render_op>::__emplace_back_slow_path<jet_render_opcode>(v29 + 8, &__p);
      }

      else
      {
        *v31 = &unk_282E15828;
        *(v31 + 8) = 31;
        *(v31 + 24) = 0;
        *(v31 + 32) = 0;
        *(v31 + 16) = 0;
        *(v31 + 64) = 0;
        v32 = v31 + 192;
        *(v31 + 96) = 0;
      }

      *(v29 + 16) = v32;
      *(v32 - 80) = v30;
      *(v32 - 64) = xmmword_21C4B8520;
      *(v32 - 48) = 0x2300000000;
      v33 = *a3;
      std::string::basic_string[abi:ne200100]<0>(&__p, "a_position");
      current_buffer = jet_buffer_pool::get_current_buffer(*(v8 + 70));
      jet_command_buffer::set_vertex_buffer(v33, &__p, current_buffer);
      if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(__p.__r_.__value_.__l.__data_);
      }

      jet_command_buffer::use_depth_stencil_mode(*a3, a2[68]);
      jet_command_buffer::set_stencil_reference_value(*a3, 0);
      jet_command_buffer::draw_indexed(*a3, 3, a2[50], 0, 6);
      v35 = a2[83];
      ++*(v35 + 164);
      ++*(v35 + 148);
      v36 = (*(*(v8 + 72) + 40) - *(*(v8 + 72) + 32)) >> 3;
      jet_command_buffer::set_stencil_reference_value(*a3, 1);
      jet_command_buffer::draw_indexed(*a3, 3, a2[50], 6, 6 * v36);
      v37 = a2[83];
      ++*(v37 + 164);
      *(v37 + 148) += v36;
      v38 = *a3;
      v39 = a2[19];
      LODWORD(__p.__r_.__value_.__l.__data_) = 31;
      v40 = *(v38 + 16);
      if (v40 >= *(v38 + 24))
      {
        v41 = std::vector<jet_render_op>::__emplace_back_slow_path<jet_render_opcode>(v38 + 8, &__p);
      }

      else
      {
        *v40 = &unk_282E15828;
        *(v40 + 8) = 31;
        *(v40 + 24) = 0;
        *(v40 + 32) = 0;
        *(v40 + 16) = 0;
        *(v40 + 64) = 0;
        v41 = v40 + 192;
        *(v40 + 96) = 0;
      }

      *(v38 + 16) = v41;
      *(v41 - 80) = v39;
      *(v41 - 64) = xmmword_21C4B8530;
      *(v41 - 48) = 0x230000000FLL;
      v42 = *a3;
      std::string::basic_string[abi:ne200100]<0>(&__p, "a_position");
      v43 = jet_buffer_pool::get_current_buffer(*(v8 + 70));
      jet_command_buffer::set_vertex_buffer(v42, &__p, v43);
      v44 = v47;
      v44.i32[3] = 1.0;
      v48 = vmulq_laneq_f32(v44, v47, 3);
      if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(__p.__r_.__value_.__l.__data_);
      }

      v45 = *a3;
      std::string::basic_string[abi:ne200100]<0>(&__p, "u_color");
      jet_command_buffer::set_fragment_constant_value(v45, &__p, v48);
      if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(__p.__r_.__value_.__l.__data_);
      }

      jet_command_buffer::use_depth_stencil_mode(*a3, a2[70]);
      jet_command_buffer::set_stencil_reference_value(*a3, 0);
      jet_command_buffer::draw_indexed(*a3, 3, a2[50], 0, 6);
      v46 = a2[83];
      ++*(v46 + 164);
      ++*(v46 + 148);
      jet_command_buffer::use_depth_stencil_mode(*a3, 0);
      result = *(v8 + 72);
      if (result)
      {
        ShadowInfo::~ShadowInfo(result);
        result = MEMORY[0x21CF0A160]();
      }

      *(v8 + 72) = 0;
    }
  }

  return result;
}

void sub_21C3E3EA4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16, uint64_t a17, uint64_t a18, uint64_t a19)
{
  if (a16 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t SKCRendererGenerateQuadIndexBufferData<unsigned short>(jet_buffer **a1)
{
  v1 = *a1;
  v2 = *(*a1 + 12);
  v3 = (*(**a1 + 16))(*a1);
  result = jet_buffer::get_element_size(v1);
  if (v2)
  {
    for (i = 0; i != v2; ++i)
    {
      *(v3 + 2 * i) = word_21C4B8570[i % 6] + 4 * (i / 6);
    }
  }

  return result;
}

std::string *jet_command_buffer::set_vertex_buffer(uint64_t a1, std::string *__str, uint64_t a3)
{
  v9 = 5;
  v6 = *(a1 + 16);
  if (v6 >= *(a1 + 24))
  {
    v7 = std::vector<jet_render_op>::__emplace_back_slow_path<jet_render_opcode>(a1 + 8, &v9);
  }

  else
  {
    *v6 = &unk_282E15828;
    *(v6 + 8) = 5;
    *(v6 + 24) = 0;
    *(v6 + 32) = 0;
    *(v6 + 16) = 0;
    *(v6 + 64) = 0;
    v7 = v6 + 192;
    *(v6 + 96) = 0;
  }

  *(a1 + 16) = v7;
  *(v7 - 80) = a3;
  return std::string::operator=((v7 - 176), __str);
}

_BYTE *std::string::basic_string[abi:ne200100]<0>(_BYTE *a1, char *__s)
{
  v4 = strlen(__s);
  if (v4 >= 0x7FFFFFFFFFFFFFF8)
  {
    std::string::__throw_length_error[abi:ne200100]();
  }

  v5 = v4;
  if (v4 >= 0x17)
  {
    operator new();
  }

  a1[23] = v4;
  if (v4)
  {
    memmove(a1, __s, v4);
  }

  a1[v5] = 0;
  return a1;
}

uint64_t jet_command_buffer::use_depth_stencil_mode(uint64_t a1, uint64_t a2)
{
  v6 = 2;
  v4 = *(a1 + 16);
  if (v4 >= *(a1 + 24))
  {
    result = std::vector<jet_render_op>::__emplace_back_slow_path<jet_render_opcode>(a1 + 8, &v6);
  }

  else
  {
    *v4 = &unk_282E15828;
    *(v4 + 8) = 2;
    *(v4 + 24) = 0;
    *(v4 + 32) = 0;
    *(v4 + 16) = 0;
    *(v4 + 64) = 0;
    result = v4 + 192;
    *(v4 + 96) = 0;
  }

  *(a1 + 16) = result;
  *(result - 80) = a2;
  return result;
}

uint64_t jet_command_buffer::set_stencil_reference_value(jet_command_buffer *this, int a2)
{
  v6 = 10;
  v4 = *(this + 2);
  if (v4 >= *(this + 3))
  {
    result = std::vector<jet_render_op>::__emplace_back_slow_path<jet_render_opcode>(this + 8, &v6);
  }

  else
  {
    *v4 = &unk_282E15828;
    *(v4 + 8) = 10;
    *(v4 + 24) = 0;
    *(v4 + 32) = 0;
    *(v4 + 16) = 0;
    *(v4 + 64) = 0;
    result = v4 + 192;
    *(v4 + 96) = 0;
  }

  *(this + 2) = result;
  *(result - 64) = a2;
  return result;
}

uint64_t jet_command_buffer::draw_indexed(uint64_t a1, int a2, uint64_t a3, int a4, int a5)
{
  v12 = 4;
  v10 = *(a1 + 16);
  if (v10 >= *(a1 + 24))
  {
    result = std::vector<jet_render_op>::__emplace_back_slow_path<jet_render_opcode>(a1 + 8, &v12);
  }

  else
  {
    *v10 = &unk_282E15828;
    *(v10 + 8) = 4;
    *(v10 + 24) = 0;
    *(v10 + 32) = 0;
    *(v10 + 16) = 0;
    *(v10 + 64) = 0;
    result = v10 + 192;
    *(v10 + 96) = 0;
  }

  *(a1 + 16) = result;
  *(result - 80) = a3;
  *(result - 64) = a2;
  *(result - 60) = a4;
  *(result - 56) = a5;
  return result;
}

__n128 jet_command_buffer::set_fragment_constant_value(uint64_t a1, std::string *__str, __n128 a3)
{
  v9 = 25;
  v5 = *(a1 + 16);
  if (v5 >= *(a1 + 24))
  {
    v6 = std::vector<jet_render_op>::__emplace_back_slow_path<jet_render_opcode>(a1 + 8, &v9);
  }

  else
  {
    *v5 = &unk_282E15828;
    *(v5 + 8) = 25;
    *(v5 + 24) = 0;
    *(v5 + 32) = 0;
    *(v5 + 16) = 0;
    *(v5 + 64) = 0;
    v6 = v5 + 192;
    *(v5 + 96) = 0;
  }

  *(a1 + 16) = v6;
  std::string::operator=((v6 - 176), __str);
  result = a3;
  *(v6 - 64) = a3;
  return result;
}

void SKCLightNode::generateShadowGeometry(uint64_t a1)
{
  v2 = *(a1 + 576);
  if (v2)
  {
    ShadowInfo::~ShadowInfo(v2);
    MEMORY[0x21CF0A160]();
  }

  *(a1 + 576) = 0;
  operator new();
}

void sub_21C3E4878(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, std::__shared_weak_count *a36)
{
  if (a36)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a36);
  }

  _Unwind_Resume(exception_object);
}

void std::vector<PKCLineSeg *>::push_back[abi:ne200100](uint64_t a1, void *a2)
{
  v5 = *(a1 + 8);
  v4 = *(a1 + 16);
  if (v5 >= v4)
  {
    v7 = (v5 - *a1) >> 3;
    if ((v7 + 1) >> 61)
    {
      std::vector<jet_render_op>::__throw_length_error[abi:ne200100]();
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
      std::__allocate_at_least[abi:ne200100]<std::allocator<PKCLineSeg *>>(a1, v10);
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

void SKCLightNode::~SKCLightNode(SKCLightNode *this)
{
  *this = &unk_282E15728;
  v2 = *(this + 72);
  if (v2)
  {
    ShadowInfo::~ShadowInfo(v2);
    MEMORY[0x21CF0A160]();
  }

  *(this + 72) = 0;
  v3 = *(this + 71);
  if (v3)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v3);
  }

  SKCNode::~SKCNode(this);
}

{
  SKCLightNode::~SKCLightNode(this);

  JUMPOUT(0x21CF0A160);
}

uint64_t std::vector<jet_render_op>::__emplace_back_slow_path<jet_render_opcode>(uint64_t a1, int *a2)
{
  v2 = 0xAAAAAAAAAAAAAAABLL * ((*(a1 + 8) - *a1) >> 6);
  v3 = v2 + 1;
  if (v2 + 1 > 0x155555555555555)
  {
    std::vector<jet_render_op>::__throw_length_error[abi:ne200100]();
  }

  if (0x5555555555555556 * ((*(a1 + 16) - *a1) >> 6) > v3)
  {
    v3 = 0x5555555555555556 * ((*(a1 + 16) - *a1) >> 6);
  }

  if (0xAAAAAAAAAAAAAAABLL * ((*(a1 + 16) - *a1) >> 6) >= 0xAAAAAAAAAAAAAALL)
  {
    v6 = 0x155555555555555;
  }

  else
  {
    v6 = v3;
  }

  v18 = a1;
  if (v6)
  {
    std::__allocate_at_least[abi:ne200100]<std::allocator<jet_render_op>>(a1, v6);
  }

  v7 = 192 * v2;
  v15 = 0;
  v16 = v7;
  *(&v17 + 1) = 0;
  v8 = *a2;
  *v7 = &unk_282E15828;
  *(v7 + 8) = v8;
  *(v7 + 24) = 0;
  *(v7 + 32) = 0;
  *(v7 + 16) = 0;
  *(v7 + 64) = 0;
  *(v7 + 96) = 0;
  *&v17 = 192 * v2 + 192;
  v9 = *(a1 + 8);
  v10 = 192 * v2 + *a1 - v9;
  std::__uninitialized_allocator_relocate[abi:ne200100]<std::allocator<jet_render_op>,jet_render_op*>(a1, *a1, v9, v10);
  v11 = *a1;
  *a1 = v10;
  v12 = *(a1 + 16);
  v14 = v17;
  *(a1 + 8) = v17;
  *&v17 = v11;
  *(&v17 + 1) = v12;
  v15 = v11;
  v16 = v11;
  std::__split_buffer<jet_render_op>::~__split_buffer(&v15);
  return v14;
}

void sub_21C3E4B88(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  std::__split_buffer<jet_render_op>::~__split_buffer(va);
  _Unwind_Resume(a1);
}

void jet_render_op::~jet_render_op(void **this)
{
  jet_render_op::~jet_render_op(this);

  JUMPOUT(0x21CF0A160);
}

{
  *this = &unk_282E15828;
  std::__function::__value_func<void ()(void)>::~__value_func[abi:ne200100]((this + 9));
  std::__function::__value_func<void ()(jet_context *)>::~__value_func[abi:ne200100]((this + 5));
  if (*(this + 39) < 0)
  {
    operator delete(this[2]);
  }
}

uint64_t std::__function::__value_func<void ()(void)>::~__value_func[abi:ne200100](uint64_t a1)
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

uint64_t std::__function::__value_func<void ()(jet_context *)>::~__value_func[abi:ne200100](uint64_t a1)
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

void std::__throw_length_error[abi:ne200100](const char *a1)
{
  exception = __cxa_allocate_exception(0x10uLL);
  std::length_error::length_error[abi:ne200100](exception, a1);
  __cxa_throw(exception, off_27830FBC8, MEMORY[0x277D825F0]);
}

std::logic_error *std::length_error::length_error[abi:ne200100](std::logic_error *a1, const char *a2)
{
  result = std::logic_error::logic_error(a1, a2);
  result->__vftable = (MEMORY[0x277D828E0] + 16);
  return result;
}

void std::__allocate_at_least[abi:ne200100]<std::allocator<jet_render_op>>(uint64_t a1, unint64_t a2)
{
  if (a2 < 0x155555555555556)
  {
    operator new();
  }

  std::__throw_bad_array_new_length[abi:ne200100]();
}

void std::__throw_bad_array_new_length[abi:ne200100]()
{
  exception = __cxa_allocate_exception(8uLL);
  v1 = std::bad_array_new_length::bad_array_new_length(exception);
  __cxa_throw(v1, MEMORY[0x277D82778], MEMORY[0x277D82620]);
}

uint64_t std::__uninitialized_allocator_relocate[abi:ne200100]<std::allocator<jet_render_op>,jet_render_op*>(uint64_t a1, uint64_t (***a2)(void), uint64_t (***a3)(void), uint64_t a4)
{
  if (a2 != a3)
  {
    v6 = a2;
    v7 = 0;
    do
    {
      v8 = a4 + v7 * 8;
      *v8 = &unk_282E15828;
      v9 = &v6[v7];
      *(v8 + 8) = v6[v7 + 1];
      if (SHIBYTE(v6[v7 + 4]) < 0)
      {
        std::string::__init_copy_ctor_external((v8 + 16), v9[2], v9[3]);
      }

      else
      {
        v10 = *(v9 + 1);
        *(v8 + 32) = v9[4];
        *(v8 + 16) = v10;
      }

      std::__function::__value_func<void ()(jet_context *)>::__value_func[abi:ne200100](a4 + v7 * 8 + 40, &v6[v7 + 5]);
      result = std::__function::__value_func<void ()(void)>::__value_func[abi:ne200100](a4 + v7 * 8 + 72, &v6[v7 + 9]);
      v12 = (a4 + v7 * 8);
      v12[7] = *&v6[v7 + 14];
      v13 = *&v6[v7 + 16];
      v14 = *&v6[v7 + 18];
      v15 = *&v6[v7 + 22];
      v12[10] = *&v6[v7 + 20];
      v12[11] = v15;
      v12[8] = v13;
      v12[9] = v14;
      v7 += 24;
    }

    while (&v6[v7] != a3);
    if (v6 != a3)
    {
      v16 = v6;
      v17 = v6;
      do
      {
        v18 = *v17;
        v17 += 24;
        result = (*v18)(v6);
        v16 += 24;
        v6 = v17;
      }

      while (v17 != a3);
    }
  }

  return result;
}

void sub_21C3E4F98(_Unwind_Exception *exception_object)
{
  if (v2)
  {
    v4 = v1 + v2 - 192;
    v5 = -v2;
    v6 = v4;
    v7 = v4;
    do
    {
      v8 = *v7;
      v7 -= 24;
      (*v8)(v6);
      v4 -= 192;
      v6 = v7;
      v5 += 192;
    }

    while (v5);
  }

  _Unwind_Resume(exception_object);
}

void std::string::__init_copy_ctor_external(std::string *this, const std::string::value_type *__s, std::string::size_type __sz)
{
  if (__sz > 0x16)
  {
    if (__sz < 0x7FFFFFFFFFFFFFF8)
    {
      operator new();
    }

    std::string::__throw_length_error[abi:ne200100]();
  }

  *(&this->__r_.__value_.__s + 23) = __sz;
  v3 = __sz + 1;

  memmove(this, __s, v3);
}

uint64_t std::__function::__value_func<void ()(jet_context *)>::__value_func[abi:ne200100](uint64_t a1, uint64_t a2)
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

uint64_t std::__function::__value_func<void ()(void)>::__value_func[abi:ne200100](uint64_t a1, uint64_t a2)
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

uint64_t std::__split_buffer<jet_render_op>::~__split_buffer(uint64_t a1)
{
  v3 = *(a1 + 8);
  for (i = *(a1 + 16); i != v3; i = *(a1 + 16))
  {
    v4 = *(i - 192);
    *(a1 + 16) = i - 192;
    (*v4)();
  }

  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

void ShadowInfo::~ShadowInfo(ShadowInfo *this)
{
  v2 = *(this + 4);
  v3 = *(this + 5);
  if (v2 != v3)
  {
    do
    {
      if (*v2)
      {
        MEMORY[0x21CF0A160](*v2, 0x1000C40E0EAB150);
      }

      ++v2;
    }

    while (v2 != v3);
    v2 = *(this + 4);
  }

  if (v2)
  {
    *(this + 5) = v2;
    operator delete(v2);
  }
}

void std::__shared_weak_count::__release_shared[abi:ne200100](std::__shared_weak_count *a1)
{
  if (!atomic_fetch_add(&a1->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (a1->__on_zero_shared)(a1);

    std::__shared_weak_count::__release_weak(a1);
  }
}

uint64_t jet_buffer::get_element_size(jet_buffer *this)
{
  v1 = *(this + 10) - 1;
  if (v1 > 7)
  {
    v2 = 4;
  }

  else
  {
    v2 = dword_21C4B864C[v1];
  }

  return (*(this + 11) * v2);
}

void sub_21C3E53F4(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    std::shared_ptr<jet_buffer_pool>::shared_ptr[abi:ne200100]<jet_buffer_pool,0>(v1);
  }

  _Unwind_Resume(exception_object);
}

void std::__shared_ptr_pointer<jet_buffer_pool *,std::shared_ptr<jet_buffer_pool>::__shared_ptr_default_delete<jet_buffer_pool,jet_buffer_pool>,std::allocator<jet_buffer_pool>>::~__shared_ptr_pointer(std::__shared_weak_count *a1)
{
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x21CF0A160);
}

uint64_t std::__shared_ptr_pointer<jet_buffer_pool *,std::shared_ptr<jet_buffer_pool>::__shared_ptr_default_delete<jet_buffer_pool,jet_buffer_pool>,std::allocator<jet_buffer_pool>>::__on_zero_shared(uint64_t a1)
{
  result = *(a1 + 24);
  if (result)
  {
    return (*(*result + 16))();
  }

  return result;
}

uint64_t std::__shared_ptr_pointer<jet_buffer_pool *,std::shared_ptr<jet_buffer_pool>::__shared_ptr_default_delete<jet_buffer_pool,jet_buffer_pool>,std::allocator<jet_buffer_pool>>::__get_deleter(uint64_t a1, uint64_t a2)
{
  {
    return a1;
  }

  else
  {
    return 0;
  }
}

BOOL std::type_info::operator==[abi:ne200100](uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 8);
  v3 = *(a2 + 8);
  if (v2 == v3)
  {
    return 1;
  }

  if ((v3 & v2) < 0 != __OFSUB__(v2, v3))
  {
    return strcmp((v2 & 0x7FFFFFFFFFFFFFFFLL), (v3 & 0x7FFFFFFFFFFFFFFFLL)) == 0;
  }

  return 0;
}

uint64_t jet_buffer_pool::get_element_size(jet_buffer_pool *this)
{
  v1 = *(this + 2) - 1;
  if (v1 > 7)
  {
    v2 = 4;
  }

  else
  {
    v2 = dword_21C4B864C[v1];
  }

  return (*(this + 3) * v2);
}

void std::__allocate_at_least[abi:ne200100]<std::allocator<PKCLineSeg *>>(uint64_t a1, unint64_t a2)
{
  if (!(a2 >> 61))
  {
    operator new();
  }

  std::__throw_bad_array_new_length[abi:ne200100]();
}

void sub_21C3E56E8(_Unwind_Exception *a1)
{
  MEMORY[0x21CF0A160](v2, 0x10A1C4099F0538BLL);

  _Unwind_Resume(a1);
}

SKCAction *SKCReferencedAction::setReferencedCAction(SKCReferencedAction *this, SKCAction *a2)
{
  if (a2)
  {
    ++a2->var1;
  }

  result = this->var19;
  if (result)
  {
    v5 = result->var1 - 1;
    result->var1 = v5;
    if (!v5)
    {
      result = (*(result->var0 + 1))(result);
    }
  }

  this->var19 = a2;
  return result;
}

void sub_21C3E5968(_Unwind_Exception *a1)
{
  MEMORY[0x21CF0A160](v3, 0x10A1C4099F0538BLL);

  _Unwind_Resume(a1);
}

void SKCReferencedAction::~SKCReferencedAction(SKCReferencedAction *this)
{
  SKCReferencedAction::~SKCReferencedAction(this);

  JUMPOUT(0x21CF0A160);
}

{
  this->var0 = &unk_282E158D0;
  var19 = this->var19;
  if (var19)
  {
    v3 = var19->var1 - 1;
    var19->var1 = v3;
    if (!v3)
    {
      (*(var19->var0 + 1))(var19);
    }
  }

  this->var19 = 0;

  SKCAction::~SKCAction(this);
}

SKCAction *SKCReferencedAction::setBaseSpeed(SKCReferencedAction *this, float a2)
{
  if (!this->var19)
  {
    [this->var4 _ensureReferencedAction];
  }

  SKCAction::setBaseSpeed(this, a2);
  result = this->var19;
  if (result)
  {
    v4.n128_f32[0] = this->var17 * this->var16;
    v6 = *(result->var0 + 5);

    return v6(v4);
  }

  return result;
}

SKCAction *SKCReferencedAction::setSpeed(SKCReferencedAction *this, float a2)
{
  if (!this->var19)
  {
    [this->var4 _ensureReferencedAction];
  }

  SKCAction::setSpeed(this, a2);
  result = this->var19;
  if (result)
  {
    v4.n128_f32[0] = this->var17 * this->var16;
    v6 = *(result->var0 + 5);

    return v6(v4);
  }

  return result;
}

void SKCReferencedAction::cpp_updateWithTargetForTime(SKCReferencedAction *this, SKCNode *a2, double a3)
{
  var19 = this->var19;
  if (!var19)
  {
    [this->var4 _ensureReferencedAction];
    var19 = this->var19;
  }

  if (var19->var5)
  {
    (*(var19->var0 + 7))(var19, a2, a3);
  }

  else
  {
    SKCAction::updateWithTargetForTime(var19, a2, a3);
  }

  v7 = this->var19;
  if (!v7->var5)
  {
    if (![v7->var4 finished])
    {
      return;
    }

    v7 = this->var19;
    goto LABEL_11;
  }

  if (v7->var11)
  {
LABEL_11:
    v8.n128_f64[0] = (*(v7->var0 + 2))(v7);
    SKCAction::didFinishWithTargetAtTime(this, a2, v8);
    this->var10 = (*(this->var19->var0 + 2))(this->var19);
  }
}

uint64_t SKCReferencedAction::cpp_wasAddedToTargetAtTime(SKCReferencedAction *this, SKCNode *a2, double a3)
{
  if (!this->var19)
  {
    [this->var4 _ensureReferencedAction];
  }

  SKCAction::cpp_wasAddedToTargetAtTime(this, a2, a3);
  var19 = this->var19;

  return SKCAction::wasAddedToTargetAtTime(var19, a2, a3);
}

SKCAction *SKCReferencedAction::cpp_wasRemovedFromTargetAtTime(SKCReferencedAction *this, SKCNode *a2, double a3)
{
  SKCAction::cpp_wasRemovedFromTargetAtTime(this, a2, a3);
  result = this->var19;
  if (result)
  {

    return SKCAction::wasRemovedFromTargetAtTime(result, a2, a3);
  }

  return result;
}

uint64_t SKCReferencedAction::cpp_willStartWithTargetAtTime(SKCReferencedAction *this, SKCNode *a2, double a3)
{
  if (!this->var19)
  {
    [this->var4 _ensureReferencedAction];
  }

  SKCAction::cpp_willStartWithTargetAtTime(this, a2, a3);
  var19 = this->var19;

  return SKCAction::willStartWithTargetAtTime(var19, a2, a3);
}

uint64_t SKCReferencedAction::cpp_wasPausedWithTargetAtTime(SKCReferencedAction *this, SKCNode *a2, double a3)
{
  if (!this->var19)
  {
    [this->var4 _ensureReferencedAction];
  }

  SKCAction::cpp_wasPausedWithTargetAtTime(this, a2, a3);
  var19 = this->var19;

  return SKCAction::wasPausedWithTargetAtTime(var19, a2, a3);
}

uint64_t SKCReferencedAction::cpp_willResumeWithTargetAtTime(SKCReferencedAction *this, SKCNode *a2, double a3)
{
  if (!this->var19)
  {
    [this->var4 _ensureReferencedAction];
  }

  SKCAction::cpp_willResumeWithTargetAtTime(this, a2, a3);
  var19 = this->var19;

  return SKCAction::willResumeWithTargetAtTime(var19, a2, a3);
}

void sub_21C3E6500(_Unwind_Exception *a1)
{
  v3 = v2;
  MEMORY[0x21CF0A160](v3, 0x10A1C4017155BB2);

  _Unwind_Resume(a1);
}

void sub_21C3E7500(_Unwind_Exception *a1)
{
  v4 = v3;

  _Unwind_Resume(a1);
}

void sub_21C3E839C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, void *a15, void *a16, void *a17, void *a18, uint64_t a19, uint64_t a20, uint64_t a21, void *a22, void *a23, void *a24, void *a25, uint64_t a26, char a27, void *a28, uint64_t a29, char a30, void *a31, uint64_t a32, char a33, void *a34)
{
  std::__tree<std::__value_type<unsigned short,double>,std::__map_value_compare<unsigned short,std::__value_type<unsigned short,double>,std::less<unsigned short>,true>,std::allocator<std::__value_type<unsigned short,double>>>::destroy(&a27, a28);
  std::__tree<std::__value_type<unsigned short,double>,std::__map_value_compare<unsigned short,std::__value_type<unsigned short,double>,std::less<unsigned short>,true>,std::allocator<std::__value_type<unsigned short,double>>>::destroy(&a30, a31);
  std::__tree<std::__value_type<unsigned short,SKSpriteNode * {__strong}>,std::__map_value_compare<unsigned short,std::__value_type<unsigned short,SKSpriteNode * {__strong}>,std::less<unsigned short>,true>,std::allocator<std::__value_type<unsigned short,SKSpriteNode * {__strong}>>>::destroy(&a33, a34);

  _Unwind_Resume(a1);
}

void sub_21C3E8AF0(_Unwind_Exception *a1)
{
  v4 = v3;

  _Unwind_Resume(a1);
}

void std::__tree<std::__value_type<unsigned short,SKSpriteNode * {__strong}>,std::__map_value_compare<unsigned short,std::__value_type<unsigned short,SKSpriteNode * {__strong}>,std::less<unsigned short>,true>,std::allocator<std::__value_type<unsigned short,SKSpriteNode * {__strong}>>>::destroy(uint64_t a1, void *a2)
{
  if (a2)
  {
    std::__tree<std::__value_type<unsigned short,SKSpriteNode * {__strong}>,std::__map_value_compare<unsigned short,std::__value_type<unsigned short,SKSpriteNode * {__strong}>,std::less<unsigned short>,true>,std::allocator<std::__value_type<unsigned short,SKSpriteNode * {__strong}>>>::destroy(a1, *a2);
    std::__tree<std::__value_type<unsigned short,SKSpriteNode * {__strong}>,std::__map_value_compare<unsigned short,std::__value_type<unsigned short,SKSpriteNode * {__strong}>,std::less<unsigned short>,true>,std::allocator<std::__value_type<unsigned short,SKSpriteNode * {__strong}>>>::destroy(a1, a2[1]);

    operator delete(a2);
  }
}

void std::__tree<std::__value_type<unsigned short,double>,std::__map_value_compare<unsigned short,std::__value_type<unsigned short,double>,std::less<unsigned short>,true>,std::allocator<std::__value_type<unsigned short,double>>>::destroy(uint64_t a1, void *a2)
{
  if (a2)
  {
    std::__tree<std::__value_type<unsigned short,double>,std::__map_value_compare<unsigned short,std::__value_type<unsigned short,double>,std::less<unsigned short>,true>,std::allocator<std::__value_type<unsigned short,double>>>::destroy(a1, *a2);
    std::__tree<std::__value_type<unsigned short,double>,std::__map_value_compare<unsigned short,std::__value_type<unsigned short,double>,std::less<unsigned short>,true>,std::allocator<std::__value_type<unsigned short,double>>>::destroy(a1, a2[1]);

    operator delete(a2);
  }
}

uint64_t *std::__tree<std::__value_type<unsigned short,SKSpriteNode * {__strong}>,std::__map_value_compare<unsigned short,std::__value_type<unsigned short,SKSpriteNode * {__strong}>,std::less<unsigned short>,true>,std::allocator<std::__value_type<unsigned short,SKSpriteNode * {__strong}>>>::__emplace_unique_key_args<unsigned short,std::piecewise_construct_t const&,std::tuple<unsigned short const&>,std::tuple<>>(uint64_t a1, unsigned __int16 *a2)
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

uint64_t *std::__tree<std::__value_type<unsigned short,SKSpriteNode * {__strong}>,std::__map_value_compare<unsigned short,std::__value_type<unsigned short,SKSpriteNode * {__strong}>,std::less<unsigned short>,true>,std::allocator<std::__value_type<unsigned short,SKSpriteNode * {__strong}>>>::__insert_node_at(uint64_t **a1, uint64_t a2, uint64_t **a3, uint64_t *a4)
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

uint64_t std::unique_ptr<std::__tree_node<std::__value_type<unsigned short,SKSpriteNode * {__strong}>,void *>,std::__tree_node_destructor<std::allocator<std::__tree_node<std::__value_type<unsigned short,SKSpriteNode * {__strong}>,void *>>>>::~unique_ptr[abi:ne200100](uint64_t a1)
{
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    if (*(a1 + 16) == 1)
    {
    }

    operator delete(v2);
  }

  return a1;
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

uint64_t *std::__tree<std::__value_type<unsigned short,double>,std::__map_value_compare<unsigned short,std::__value_type<unsigned short,double>,std::less<unsigned short>,true>,std::allocator<std::__value_type<unsigned short,double>>>::__emplace_unique_key_args<unsigned short,std::piecewise_construct_t const&,std::tuple<unsigned short const&>,std::tuple<>>(uint64_t a1, unsigned __int16 *a2)
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

uint64_t *std::__tree<std::__value_type<unsigned int,double>,std::__map_value_compare<unsigned int,std::__value_type<unsigned int,double>,std::less<unsigned int>,true>,std::allocator<std::__value_type<unsigned int,double>>>::__emplace_unique_key_args<unsigned int,std::piecewise_construct_t const&,std::tuple<unsigned int const&>,std::tuple<>>(uint64_t a1, unsigned int *a2)
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

uint64_t **std::__tree<std::__value_type<unsigned short,SKSpriteNode * {__strong}>,std::__map_value_compare<unsigned short,std::__value_type<unsigned short,SKSpriteNode * {__strong}>,std::less<unsigned short>,true>,std::allocator<std::__value_type<unsigned short,SKSpriteNode * {__strong}>>>::__assign_multi<std::__tree_const_iterator<std::__value_type<unsigned short,SKSpriteNode * {__strong}>,std::__tree_node<std::__value_type<unsigned short,SKSpriteNode * {__strong}>,void *> *,long>>(uint64_t **result, void *a2, void *a3)
{
  v5 = result;
  if (result[2])
  {
    v6 = *result;
    v7 = result[1];
    *result = (result + 1);
    v7[2] = 0;
    result[1] = 0;
    result[2] = 0;
    if (v6[1])
    {
      v8 = v6[1];
    }

    else
    {
      v8 = v6;
    }

    v12 = result;
    v13 = v8;
    v14 = v8;
    if (v8)
    {
      v13 = std::__tree<std::__value_type<unsigned short,SKSpriteNode * {__strong}>,std::__map_value_compare<unsigned short,std::__value_type<unsigned short,SKSpriteNode * {__strong}>,std::less<unsigned short>,true>,std::allocator<std::__value_type<unsigned short,SKSpriteNode * {__strong}>>>::_DetachedTreeCache::__detach_next(v8);
      if (a2 != a3)
      {
        v9 = a2;
        do
        {
          *(v8 + 16) = *(v9 + 16);
          objc_storeStrong(v8 + 5, v9[5]);
          std::__tree<std::__value_type<unsigned short,SKSpriteNode * {__strong}>,std::__map_value_compare<unsigned short,std::__value_type<unsigned short,SKSpriteNode * {__strong}>,std::less<unsigned short>,true>,std::allocator<std::__value_type<unsigned short,SKSpriteNode * {__strong}>>>::__node_insert_multi(v5, v8);
          v8 = v13;
          v14 = v13;
          if (v13)
          {
            v13 = std::__tree<std::__value_type<unsigned short,SKSpriteNode * {__strong}>,std::__map_value_compare<unsigned short,std::__value_type<unsigned short,SKSpriteNode * {__strong}>,std::less<unsigned short>,true>,std::allocator<std::__value_type<unsigned short,SKSpriteNode * {__strong}>>>::_DetachedTreeCache::__detach_next(v13);
          }

          v10 = v9[1];
          if (v10)
          {
            do
            {
              a2 = v10;
              v10 = *v10;
            }

            while (v10);
          }

          else
          {
            do
            {
              a2 = v9[2];
              v11 = *a2 == v9;
              v9 = a2;
            }

            while (!v11);
          }

          if (!v8)
          {
            break;
          }

          v9 = a2;
        }

        while (a2 != a3);
      }
    }

    result = std::__tree<std::__value_type<unsigned short,SKSpriteNode * {__strong}>,std::__map_value_compare<unsigned short,std::__value_type<unsigned short,SKSpriteNode * {__strong}>,std::less<unsigned short>,true>,std::allocator<std::__value_type<unsigned short,SKSpriteNode * {__strong}>>>::_DetachedTreeCache::~_DetachedTreeCache[abi:ne200100](&v12);
  }

  if (a2 != a3)
  {
    std::__tree<std::__value_type<unsigned short,SKSpriteNode * {__strong}>,std::__map_value_compare<unsigned short,std::__value_type<unsigned short,SKSpriteNode * {__strong}>,std::less<unsigned short>,true>,std::allocator<std::__value_type<unsigned short,SKSpriteNode * {__strong}>>>::__emplace_multi<std::pair<unsigned short const,SKSpriteNode * {__strong}> const&>();
  }

  return result;
}

void sub_21C3E921C(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  std::__tree<std::__value_type<unsigned short,SKSpriteNode * {__strong}>,std::__map_value_compare<unsigned short,std::__value_type<unsigned short,SKSpriteNode * {__strong}>,std::less<unsigned short>,true>,std::allocator<std::__value_type<unsigned short,SKSpriteNode * {__strong}>>>::_DetachedTreeCache::~_DetachedTreeCache[abi:ne200100](va);
  _Unwind_Resume(a1);
}

uint64_t std::__tree<std::__value_type<unsigned short,SKSpriteNode * {__strong}>,std::__map_value_compare<unsigned short,std::__value_type<unsigned short,SKSpriteNode * {__strong}>,std::less<unsigned short>,true>,std::allocator<std::__value_type<unsigned short,SKSpriteNode * {__strong}>>>::__node_insert_multi(uint64_t **a1, uint64_t a2)
{
  v3 = a1 + 1;
  v4 = a1[1];
  if (v4)
  {
    do
    {
      while (1)
      {
        v3 = v4;
        if (*(a2 + 32) >= *(v4 + 16))
        {
          break;
        }

        v4 = *v4;
        v5 = v3;
        if (!*v3)
        {
          goto LABEL_8;
        }
      }

      v4 = v4[1];
    }

    while (v4);
    v5 = v3 + 1;
  }

  else
  {
    v5 = a1 + 1;
  }

LABEL_8:
  std::__tree<std::__value_type<unsigned short,SKSpriteNode * {__strong}>,std::__map_value_compare<unsigned short,std::__value_type<unsigned short,SKSpriteNode * {__strong}>,std::less<unsigned short>,true>,std::allocator<std::__value_type<unsigned short,SKSpriteNode * {__strong}>>>::__insert_node_at(a1, v3, v5, a2);
  return a2;
}

void *std::__tree<std::__value_type<unsigned short,SKSpriteNode * {__strong}>,std::__map_value_compare<unsigned short,std::__value_type<unsigned short,SKSpriteNode * {__strong}>,std::less<unsigned short>,true>,std::allocator<std::__value_type<unsigned short,SKSpriteNode * {__strong}>>>::_DetachedTreeCache::__detach_next(uint64_t a1)
{
  result = *(a1 + 16);
  if (result)
  {
    v3 = *result;
    if (*result == a1)
    {
      *result = 0;
      while (1)
      {
        v4 = result[1];
        if (!v4)
        {
          break;
        }

        do
        {
          result = v4;
          v4 = *v4;
        }

        while (v4);
      }
    }

    else
    {
      for (result[1] = 0; v3; v3 = result[1])
      {
        do
        {
          result = v3;
          v3 = *v3;
        }

        while (v3);
      }
    }
  }

  return result;
}

uint64_t std::__tree<std::__value_type<unsigned short,SKSpriteNode * {__strong}>,std::__map_value_compare<unsigned short,std::__value_type<unsigned short,SKSpriteNode * {__strong}>,std::less<unsigned short>,true>,std::allocator<std::__value_type<unsigned short,SKSpriteNode * {__strong}>>>::_DetachedTreeCache::~_DetachedTreeCache[abi:ne200100](uint64_t a1)
{
  std::__tree<std::__value_type<unsigned short,SKSpriteNode * {__strong}>,std::__map_value_compare<unsigned short,std::__value_type<unsigned short,SKSpriteNode * {__strong}>,std::less<unsigned short>,true>,std::allocator<std::__value_type<unsigned short,SKSpriteNode * {__strong}>>>::destroy(*a1, *(a1 + 16));
  v2 = *(a1 + 8);
  if (v2)
  {
    v3 = v2[2];
    if (v3)
    {
      do
      {
        v2 = v3;
        v3 = v3[2];
      }

      while (v3);
      *(a1 + 8) = v2;
    }

    std::__tree<std::__value_type<unsigned short,SKSpriteNode * {__strong}>,std::__map_value_compare<unsigned short,std::__value_type<unsigned short,SKSpriteNode * {__strong}>,std::less<unsigned short>,true>,std::allocator<std::__value_type<unsigned short,SKSpriteNode * {__strong}>>>::destroy(*a1, v2);
  }

  return a1;
}

uint64_t **std::__tree<std::__value_type<unsigned short,double>,std::__map_value_compare<unsigned short,std::__value_type<unsigned short,double>,std::less<unsigned short>,true>,std::allocator<std::__value_type<unsigned short,double>>>::__assign_multi<std::__tree_const_iterator<std::__value_type<unsigned short,double>,std::__tree_node<std::__value_type<unsigned short,double>,void *> *,long>>(uint64_t **result, void *a2, void *a3)
{
  v5 = result;
  if (result[2])
  {
    v6 = *result;
    v7 = result[1];
    *result = (result + 1);
    v7[2] = 0;
    result[1] = 0;
    result[2] = 0;
    if (v6[1])
    {
      v8 = v6[1];
    }

    else
    {
      v8 = v6;
    }

    v12 = result;
    v13 = v8;
    v14 = v8;
    if (v8)
    {
      v13 = std::__tree<std::__value_type<unsigned short,SKSpriteNode * {__strong}>,std::__map_value_compare<unsigned short,std::__value_type<unsigned short,SKSpriteNode * {__strong}>,std::less<unsigned short>,true>,std::allocator<std::__value_type<unsigned short,SKSpriteNode * {__strong}>>>::_DetachedTreeCache::__detach_next(v8);
      if (a2 != a3)
      {
        v9 = a2;
        do
        {
          *(v8 + 16) = *(v9 + 16);
          v8[5] = v9[5];
          std::__tree<std::__value_type<unsigned short,SKSpriteNode * {__strong}>,std::__map_value_compare<unsigned short,std::__value_type<unsigned short,SKSpriteNode * {__strong}>,std::less<unsigned short>,true>,std::allocator<std::__value_type<unsigned short,SKSpriteNode * {__strong}>>>::__node_insert_multi(v5, v8);
          v8 = v13;
          v14 = v13;
          if (v13)
          {
            v13 = std::__tree<std::__value_type<unsigned short,SKSpriteNode * {__strong}>,std::__map_value_compare<unsigned short,std::__value_type<unsigned short,SKSpriteNode * {__strong}>,std::less<unsigned short>,true>,std::allocator<std::__value_type<unsigned short,SKSpriteNode * {__strong}>>>::_DetachedTreeCache::__detach_next(v13);
          }

          v10 = v9[1];
          if (v10)
          {
            do
            {
              a2 = v10;
              v10 = *v10;
            }

            while (v10);
          }

          else
          {
            do
            {
              a2 = v9[2];
              v11 = *a2 == v9;
              v9 = a2;
            }

            while (!v11);
          }

          if (!v8)
          {
            break;
          }

          v9 = a2;
        }

        while (a2 != a3);
      }
    }

    result = std::__tree<std::__value_type<unsigned short,double>,std::__map_value_compare<unsigned short,std::__value_type<unsigned short,double>,std::less<unsigned short>,true>,std::allocator<std::__value_type<unsigned short,double>>>::_DetachedTreeCache::~_DetachedTreeCache[abi:ne200100](&v12);
  }

  if (a2 != a3)
  {
    std::__tree<std::__value_type<unsigned short,double>,std::__map_value_compare<unsigned short,std::__value_type<unsigned short,double>,std::less<unsigned short>,true>,std::allocator<std::__value_type<unsigned short,double>>>::__emplace_multi<std::pair<unsigned short const,double> const&>();
  }

  return result;
}

void sub_21C3E9570(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  std::__tree<std::__value_type<unsigned short,double>,std::__map_value_compare<unsigned short,std::__value_type<unsigned short,double>,std::less<unsigned short>,true>,std::allocator<std::__value_type<unsigned short,double>>>::_DetachedTreeCache::~_DetachedTreeCache[abi:ne200100](va);
  _Unwind_Resume(a1);
}

uint64_t std::__tree<std::__value_type<unsigned short,double>,std::__map_value_compare<unsigned short,std::__value_type<unsigned short,double>,std::less<unsigned short>,true>,std::allocator<std::__value_type<unsigned short,double>>>::_DetachedTreeCache::~_DetachedTreeCache[abi:ne200100](uint64_t a1)
{
  std::__tree<std::__value_type<unsigned short,double>,std::__map_value_compare<unsigned short,std::__value_type<unsigned short,double>,std::less<unsigned short>,true>,std::allocator<std::__value_type<unsigned short,double>>>::destroy(*a1, *(a1 + 16));
  v2 = *(a1 + 8);
  if (v2)
  {
    v3 = v2[2];
    if (v3)
    {
      do
      {
        v2 = v3;
        v3 = v3[2];
      }

      while (v3);
      *(a1 + 8) = v2;
    }

    std::__tree<std::__value_type<unsigned short,double>,std::__map_value_compare<unsigned short,std::__value_type<unsigned short,double>,std::less<unsigned short>,true>,std::allocator<std::__value_type<unsigned short,double>>>::destroy(*a1, v2);
  }

  return a1;
}

uint64_t **std::__tree<std::__value_type<unsigned int,double>,std::__map_value_compare<unsigned int,std::__value_type<unsigned int,double>,std::less<unsigned int>,true>,std::allocator<std::__value_type<unsigned int,double>>>::__assign_multi<std::__tree_const_iterator<std::__value_type<unsigned int,double>,std::__tree_node<std::__value_type<unsigned int,double>,void *> *,long>>(uint64_t **result, void *a2, void *a3)
{
  v5 = result;
  if (result[2])
  {
    v6 = *result;
    v7 = result[1];
    *result = (result + 1);
    v7[2] = 0;
    result[1] = 0;
    result[2] = 0;
    if (v6[1])
    {
      v8 = v6[1];
    }

    else
    {
      v8 = v6;
    }

    v12 = result;
    v13 = v8;
    v14 = v8;
    if (v8)
    {
      v13 = std::__tree<std::__value_type<unsigned short,SKSpriteNode * {__strong}>,std::__map_value_compare<unsigned short,std::__value_type<unsigned short,SKSpriteNode * {__strong}>,std::less<unsigned short>,true>,std::allocator<std::__value_type<unsigned short,SKSpriteNode * {__strong}>>>::_DetachedTreeCache::__detach_next(v8);
      if (a2 != a3)
      {
        v9 = a2;
        do
        {
          *(v8 + 8) = *(v9 + 8);
          v8[5] = v9[5];
          std::__tree<std::__value_type<unsigned int,double>,std::__map_value_compare<unsigned int,std::__value_type<unsigned int,double>,std::less<unsigned int>,true>,std::allocator<std::__value_type<unsigned int,double>>>::__node_insert_multi(v5, v8);
          v8 = v13;
          v14 = v13;
          if (v13)
          {
            v13 = std::__tree<std::__value_type<unsigned short,SKSpriteNode * {__strong}>,std::__map_value_compare<unsigned short,std::__value_type<unsigned short,SKSpriteNode * {__strong}>,std::less<unsigned short>,true>,std::allocator<std::__value_type<unsigned short,SKSpriteNode * {__strong}>>>::_DetachedTreeCache::__detach_next(v13);
          }

          v10 = v9[1];
          if (v10)
          {
            do
            {
              a2 = v10;
              v10 = *v10;
            }

            while (v10);
          }

          else
          {
            do
            {
              a2 = v9[2];
              v11 = *a2 == v9;
              v9 = a2;
            }

            while (!v11);
          }

          if (!v8)
          {
            break;
          }

          v9 = a2;
        }

        while (a2 != a3);
      }
    }

    result = std::__tree<std::__value_type<unsigned short,double>,std::__map_value_compare<unsigned short,std::__value_type<unsigned short,double>,std::less<unsigned short>,true>,std::allocator<std::__value_type<unsigned short,double>>>::_DetachedTreeCache::~_DetachedTreeCache[abi:ne200100](&v12);
  }

  if (a2 != a3)
  {
    std::__tree<std::__value_type<unsigned int,double>,std::__map_value_compare<unsigned int,std::__value_type<unsigned int,double>,std::less<unsigned int>,true>,std::allocator<std::__value_type<unsigned int,double>>>::__emplace_multi<std::pair<unsigned int const,double> const&>();
  }

  return result;
}

void sub_21C3E97D8(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  std::__tree<std::__value_type<unsigned short,double>,std::__map_value_compare<unsigned short,std::__value_type<unsigned short,double>,std::less<unsigned short>,true>,std::allocator<std::__value_type<unsigned short,double>>>::_DetachedTreeCache::~_DetachedTreeCache[abi:ne200100](va);
  _Unwind_Resume(a1);
}

uint64_t std::__tree<std::__value_type<unsigned int,double>,std::__map_value_compare<unsigned int,std::__value_type<unsigned int,double>,std::less<unsigned int>,true>,std::allocator<std::__value_type<unsigned int,double>>>::__node_insert_multi(uint64_t **a1, uint64_t a2)
{
  v3 = a1 + 1;
  v4 = a1[1];
  if (v4)
  {
    do
    {
      while (1)
      {
        v3 = v4;
        if (*(a2 + 32) >= *(v4 + 8))
        {
          break;
        }

        v4 = *v4;
        v5 = v3;
        if (!*v3)
        {
          goto LABEL_8;
        }
      }

      v4 = v4[1];
    }

    while (v4);
    v5 = v3 + 1;
  }

  else
  {
    v5 = a1 + 1;
  }

LABEL_8:
  std::__tree<std::__value_type<unsigned short,SKSpriteNode * {__strong}>,std::__map_value_compare<unsigned short,std::__value_type<unsigned short,SKSpriteNode * {__strong}>,std::less<unsigned short>,true>,std::allocator<std::__value_type<unsigned short,SKSpriteNode * {__strong}>>>::__insert_node_at(a1, v3, v5, a2);
  return a2;
}

void sub_21C3EA3B4(_Unwind_Exception *a1)
{
  v6 = v5;

  _Unwind_Resume(a1);
}

void SKCLabelNode::setFontName(id *this, NSString *a2)
{
  objc_storeStrong(this + 73, a2);
  *(this + 713) = 1;

  SKCNode::setDirty(this);
}

void sub_21C3EDF18(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, objc_super a9)
{
  v10 = v9;
  a9.receiver = v10;
  a9.super_class = SKTileMapNode;
  [(_Unwind_Exception *)&a9 dealloc];
  _Unwind_Resume(a1);
}

void *setCorrectAdjacencyDataForTileSetType(void *result, const uint64_t **a2, const uint64_t **a3, SKTileSetType a4, char a5, char a6)
{
  if (a4 >= SKTileSetTypeHexagonalFlat)
  {
    if (a4 == SKTileSetTypeHexagonalPointy)
    {
      *result = 6;
      v6 = &kHexPointyOddRowXOffsets;
      v7 = (a6 & 1) == 0;
      if ((a6 & 1) == 0)
      {
        v6 = &kHexPointyEvenRowXOffsets;
      }

      v8 = &kHexPointyOddRowYOffsets;
      v9 = &kHexPointyEvenRowYOffsets;
    }

    else
    {
      if (a4 != SKTileSetTypeHexagonalFlat)
      {
        return result;
      }

      *result = 6;
      v6 = &kHexFlatOddColumnXOffsets;
      v7 = (a5 & 1) == 0;
      if ((a5 & 1) == 0)
      {
        v6 = &kHexFlatEvenColumnXOffsets;
      }

      v8 = &kHexFlatOddColumnYOffsets;
      v9 = &kHexFlatEvenColumnYOffsets;
    }

    if (v7)
    {
      v8 = v9;
    }

    *a2 = v6;
    *a3 = v8;
  }

  return result;
}

void *std::deque<unsigned int>::push_back(void *result, _DWORD *a2)
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
    v6 = ((v4 - v5) << 7) - 1;
  }

  v7 = result[5];
  v8 = v7 + result[4];
  if (v6 == v8)
  {
    result = std::deque<unsigned int>::__add_back_capacity(result);
    v5 = v3[1];
    v7 = v3[5];
    v8 = v3[4] + v7;
  }

  *(*(v5 + ((v8 >> 7) & 0x1FFFFFFFFFFFFF8)) + 4 * (v8 & 0x3FF)) = *a2;
  v3[5] = v7 + 1;
  return result;
}

void *getHexIndexFromPoint(void *result, int *a2, int *a3, float a4, float a5)
{
  v5 = (a4 * 3.0) * 0.5;
  v6 = COERCE_FLOAT(*result) / v5;
  v7 = vcvtms_s32_f32(v6);
  v8 = (COERCE_FLOAT(*result) - (v5 * floorf(v6)));
  if (v7 >= 0)
  {
    v9 = v7 & 1;
  }

  else
  {
    v9 = -(v7 & 1);
  }

  v10 = (COERCE_FLOAT(HIDWORD(*result)) - ((v9 * a5) * 0.5));
  v11 = vcvtms_s32_f32(v10 / a5);
  v12 = (v10 - (a5 * floorf(v10 / a5)));
  v13 = ((a4 * 0.5) - ((v12 * a4) / a5));
  if (v13 < 0)
  {
    v13 = -v13;
  }

  if (v13 >= v8)
  {
    *a2 = v7 - 1;
    *a3 = v9 + v11;
    if ((a5 * 0.5) <= v12)
    {
      return result;
    }

    v11 = v9 + v11 - 1;
  }

  else
  {
    *a2 = v7;
  }

  *a3 = v11;
  return result;
}

uint64_t std::deque<unsigned int>::~deque[abi:ne200100](void *a1)
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
    v5 = 512;
  }

  else
  {
    if (v4 != 2)
    {
      goto LABEL_9;
    }

    v5 = 1024;
  }

  a1[4] = v5;
LABEL_9:
  while (v2 != v3)
  {
    v6 = *v2++;
    operator delete(v6);
  }

  return std::__split_buffer<unsigned int *>::~__split_buffer(a1);
}

uint64_t std::__split_buffer<unsigned int *>::~__split_buffer(uint64_t a1)
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

void *std::deque<unsigned int>::__add_back_capacity(void *a1)
{
  v1 = a1[4];
  v2 = v1 >= 0x400;
  v3 = v1 - 1024;
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
    std::__allocate_at_least[abi:ne200100]<std::allocator<unsigned int *>>(a1, v9);
  }

  a1[4] = v3;
  v4 = a1[1];
  *&v10 = *v4;
  a1[1] = v4 + 1;
  return std::__split_buffer<unsigned int *>::emplace_back<unsigned int *&>(a1, &v10);
}

void sub_21C3F363C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, uint64_t a13)
{
  operator delete(v13);
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void *std::__split_buffer<unsigned int *>::emplace_back<unsigned int *&>(void *result, void *a2)
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

      std::__allocate_at_least[abi:ne200100]<std::allocator<unsigned int *>>(result, v11);
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

const void **std::__split_buffer<unsigned int *>::emplace_front<unsigned int *>(const void **result, void *a2)
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

      std::__allocate_at_least[abi:ne200100]<std::allocator<unsigned int *>>(result, v9);
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

void *std::__split_buffer<unsigned int *>::emplace_back<unsigned int *>(void *result, void *a2)
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

      std::__allocate_at_least[abi:ne200100]<std::allocator<unsigned int *>>(result[4], v11);
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

const void **std::__split_buffer<unsigned int *>::emplace_front<unsigned int *&>(const void **result, void *a2)
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

      std::__allocate_at_least[abi:ne200100]<std::allocator<unsigned int *>>(result[4], v9);
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

void std::__allocate_at_least[abi:ne200100]<std::allocator<unsigned int *>>(uint64_t a1, unint64_t a2)
{
  if (!(a2 >> 61))
  {
    operator new();
  }

  std::__throw_bad_array_new_length[abi:ne200100]();
}

void *std::__find_segment_if[abi:ne200100]<std::__deque_iterator<unsigned int,unsigned int *,unsigned int &,unsigned int **,long,1024l>,std::__find_segment<unsigned long>,std::__identity>(void *result, _DWORD *a2, void *a3, _DWORD *a4, unint64_t *a5)
{
  v5 = *a5;
  if (result == a3)
  {
    if (HIDWORD(v5))
    {
LABEL_3:
      a2 = a4;
    }

    else if (a2 != a4)
    {
      while (*a2 != v5)
      {
        if (++a2 == a4)
        {
          goto LABEL_3;
        }
      }
    }

    if (result)
    {
      if ((*result + 4096) == a2)
      {
        ++result;
      }
    }

    return result;
  }

  v6 = *result + 4096;
  v7 = HIDWORD(v5);
  if (HIDWORD(v5))
  {
    v8 = 1;
  }

  else
  {
    v8 = v6 == a2;
  }

  if (v8)
  {
    goto LABEL_9;
  }

  while (*a2 != v5)
  {
    if (++a2 == v6)
    {
      goto LABEL_9;
    }
  }

  if (a2 == v6)
  {
LABEL_9:
    while (1)
    {
      v9 = (result + 1);
      if (result + 1 == a3)
      {
        break;
      }

      ++result;
      if (!v7)
      {
        v10 = *v9;
        v11 = 4096;
        while (*v10 != v5)
        {
          ++v10;
          v11 -= 4;
          if (!v11)
          {
            goto LABEL_9;
          }
        }

        return result;
      }
    }

    v12 = result[1];
    if (v7)
    {
LABEL_24:
      v13 = a4;
    }

    else
    {
      if (v12 == a4)
      {
        return v9;
      }

      v13 = result[1];
      while (*v13 != v5)
      {
        if (++v13 == a4)
        {
          goto LABEL_24;
        }
      }
    }

    if (v12 + 1024 == v13)
    {
      return result + 2;
    }

    return v9;
  }

  return result;
}

id PointLight_fsh()
{
  if (PointLight_fsh::once != -1)
  {
    PointLight_fsh_cold_1();
  }

  v1 = PointLight_fsh::shader;

  return v1;
}

id PointLightRectTexture_fsh()
{
  if (PointLightRectTexture_fsh::once != -1)
  {
    PointLightRectTexture_fsh_cold_1();
  }

  v1 = PointLightRectTexture_fsh::shader;

  return v1;
}

id PointLightRectTexture2_fsh()
{
  if (PointLightRectTexture2_fsh::once != -1)
  {
    PointLightRectTexture2_fsh_cold_1();
  }

  v1 = PointLightRectTexture2_fsh::shader;

  return v1;
}

id PointLightAllRectTextures_fsh()
{
  if (PointLightAllRectTextures_fsh::once != -1)
  {
    PointLightAllRectTextures_fsh_cold_1();
  }

  v1 = PointLightAllRectTextures_fsh::shader;

  return v1;
}

void sub_21C3F4A20(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v16 + 32));

  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_21C3F525C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id a10)
{
  v12 = v11;

  _Unwind_Resume(a1);
}

void sub_21C3F5364(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id a10)
{
  v12 = v11;

  _Unwind_Resume(a1);
}

void sub_21C3F5484(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v9 - 48), 8);
  _Unwind_Resume(a1);
}

void sub_21C3F596C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v9 - 48), 8);
  _Unwind_Resume(a1);
}

void sub_21C3F5E58(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v9 - 48), 8);
  _Unwind_Resume(a1);
}

void sub_21C3F6340(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v9 - 48), 8);
  _Unwind_Resume(a1);
}

void sub_21C3F6828(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v9 - 48), 8);
  _Unwind_Resume(a1);
}

void sub_21C3F6D10(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v9 - 48), 8);
  _Unwind_Resume(a1);
}

void sub_21C3F7638(_Unwind_Exception *a1)
{
  if (v5)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v5);
  }

  if (v4)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v4);
  }

  _Unwind_Resume(a1);
}

void sub_21C3F7B4C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, std::__shared_weak_count *a17, uint64_t a18, void *a19, uint64_t a20, void *a21, void *a22)
{
  if (a17)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a17);
  }

  if (v27)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v27);
  }

  _Unwind_Resume(a1);
}

void sub_21C3F7F24(_Unwind_Exception *a1)
{
  v6 = *(v4 - 88);
  if (v6)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v6);
  }

  v7 = *(v4 - 72);
  if (v7)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v7);
  }

  v8 = *(v4 - 56);
  if (v8)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v8);
  }

  if (v3)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v3);
  }

  _Unwind_Resume(a1);
}

void sub_21C3F8270(_Unwind_Exception *a1)
{
  v6 = *(v4 - 72);
  if (v6)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v6);
  }

  if (v1)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v1);
  }

  _Unwind_Resume(a1);
}

void sub_21C3F8414(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, char a11)
{
  if (v11)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v11);
  }

  _Unwind_Resume(exception_object);
}

void sub_21C3F8604(_Unwind_Exception *a1)
{
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  }

  _Unwind_Resume(a1);
}

void sub_21C3F8A4C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, std::__shared_weak_count *a24, uint64_t a25, std::__shared_weak_count *a26, uint64_t a27, std::__shared_weak_count *a28)
{
  if (a24)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a24);
  }

  if (a26)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a26);
  }

  if (a28)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a28);
  }

  if (v29)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v29);
  }

  _Unwind_Resume(a1);
}

void sub_21C3F8B3C(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  glContextUse::~glContextUse(va);
  _Unwind_Resume(a1);
}

void sub_21C3F8D48(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, std::__shared_weak_count *a10, uint64_t a11, std::__shared_weak_count *a12)
{
  if (a10)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a10);
  }

  MEMORY[0x21CF0A160](v13, 0x10A0C40B78ACC54);
  if (a12)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a12);
  }

  _Unwind_Resume(a1);
}

void sub_21C3F8EE8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, std::__shared_weak_count *a12)
{
  if (a12)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a12);
  }

  _Unwind_Resume(a1);
}

void glContextUse::glContextUse(glContextUse *this, EAGLContext *a2)
{
  v3 = a2;
  *this = [MEMORY[0x277CD9388] currentContext];
  v4 = v3;
  *(this + 1) = v4;
  if (*this != v4)
  {
    [MEMORY[0x277CD9388] setCurrentContext:v4];
  }
}

void glContextUse::~glContextUse(glContextUse *this)
{
  v2 = *(this + 1);
  if (*this != v2)
  {
    [MEMORY[0x277CD9388] setCurrentContext:?];
    v2 = *(this + 1);
  }
}

void sub_21C3F9410(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    std::shared_ptr<jet_framebuffer>::shared_ptr[abi:ne200100]<jet_framebuffer,0>(v1);
  }

  _Unwind_Resume(exception_object);
}

void std::__shared_ptr_pointer<jet_framebuffer *,std::shared_ptr<jet_framebuffer>::__shared_ptr_default_delete<jet_framebuffer,jet_framebuffer>,std::allocator<jet_framebuffer>>::~__shared_ptr_pointer(std::__shared_weak_count *a1)
{
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x21CF0A160);
}

uint64_t std::__shared_ptr_pointer<jet_framebuffer *,std::shared_ptr<jet_framebuffer>::__shared_ptr_default_delete<jet_framebuffer,jet_framebuffer>,std::allocator<jet_framebuffer>>::__on_zero_shared(uint64_t a1)
{
  result = *(a1 + 24);
  if (result)
  {
    return (*(*result + 8))();
  }

  return result;
}

uint64_t std::__shared_ptr_pointer<jet_framebuffer *,std::shared_ptr<jet_framebuffer>::__shared_ptr_default_delete<jet_framebuffer,jet_framebuffer>,std::allocator<jet_framebuffer>>::__get_deleter(uint64_t a1, uint64_t a2)
{
  {
    return a1;
  }

  else
  {
    return 0;
  }
}

void sub_21C3F953C(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    std::shared_ptr<jet_texture>::shared_ptr[abi:ne200100]<jet_texture,0>(v1);
  }

  _Unwind_Resume(exception_object);
}

void std::__shared_ptr_pointer<jet_texture *,std::shared_ptr<jet_texture>::__shared_ptr_default_delete<jet_texture,jet_texture>,std::allocator<jet_texture>>::~__shared_ptr_pointer(std::__shared_weak_count *a1)
{
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x21CF0A160);
}

uint64_t std::__shared_ptr_pointer<jet_texture *,std::shared_ptr<jet_texture>::__shared_ptr_default_delete<jet_texture,jet_texture>,std::allocator<jet_texture>>::__on_zero_shared(uint64_t a1)
{
  result = *(a1 + 24);
  if (result)
  {
    return (*(*result + 128))();
  }

  return result;
}

uint64_t std::__shared_ptr_pointer<jet_texture *,std::shared_ptr<jet_texture>::__shared_ptr_default_delete<jet_texture,jet_texture>,std::allocator<jet_texture>>::__get_deleter(uint64_t a1, uint64_t a2)
{
  {
    return a1;
  }

  else
  {
    return 0;
  }
}

void sub_21C3F9668(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    std::shared_ptr<jet_context>::shared_ptr[abi:ne200100]<jet_context_Metal,0>(v1);
  }

  _Unwind_Resume(exception_object);
}

void std::__shared_ptr_pointer<jet_context_Metal *,std::shared_ptr<jet_context>::__shared_ptr_default_delete<jet_context,jet_context_Metal>,std::allocator<jet_context_Metal>>::~__shared_ptr_pointer(std::__shared_weak_count *a1)
{
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x21CF0A160);
}

uint64_t std::__shared_ptr_pointer<jet_context_Metal *,std::shared_ptr<jet_context>::__shared_ptr_default_delete<jet_context,jet_context_Metal>,std::allocator<jet_context_Metal>>::__on_zero_shared(uint64_t a1)
{
  result = *(a1 + 24);
  if (result)
  {
    return (*(*result + 128))();
  }

  return result;
}

uint64_t std::__shared_ptr_pointer<jet_context_Metal *,std::shared_ptr<jet_context>::__shared_ptr_default_delete<jet_context,jet_context_Metal>,std::allocator<jet_context_Metal>>::__get_deleter(uint64_t a1, uint64_t a2)
{
  {
    return a1;
  }

  else
  {
    return 0;
  }
}

void sub_21C3F9794(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    std::shared_ptr<jet_context>::shared_ptr[abi:ne200100]<jet_context_Metal,0>(v1);
  }

  _Unwind_Resume(exception_object);
}

void std::__shared_ptr_pointer<jet_context_OpenGL *,std::shared_ptr<jet_context_OpenGL>::__shared_ptr_default_delete<jet_context_OpenGL,jet_context_OpenGL>,std::allocator<jet_context_OpenGL>>::~__shared_ptr_pointer(std::__shared_weak_count *a1)
{
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x21CF0A160);
}

uint64_t std::__shared_ptr_pointer<jet_context_OpenGL *,std::shared_ptr<jet_context_OpenGL>::__shared_ptr_default_delete<jet_context_OpenGL,jet_context_OpenGL>,std::allocator<jet_context_OpenGL>>::__on_zero_shared(uint64_t a1)
{
  result = *(a1 + 24);
  if (result)
  {
    return (*(*result + 128))();
  }

  return result;
}

uint64_t std::__shared_ptr_pointer<jet_context_OpenGL *,std::shared_ptr<jet_context_OpenGL>::__shared_ptr_default_delete<jet_context_OpenGL,jet_context_OpenGL>,std::allocator<jet_context_OpenGL>>::__get_deleter(uint64_t a1, uint64_t a2)
{
  {
    return a1;
  }

  else
  {
    return 0;
  }
}

void sub_21C3FB8B4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  glContextUse::~glContextUse(va);
  if (v9)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v9);
  }

  _Unwind_Resume(a1);
}

void sub_21C3FBBAC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  if (v12)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v12);
  }

  _Unwind_Resume(exception_object);
}

void sub_21C3FCAAC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, std::__shared_weak_count *a16)
{
  if (a16)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a16);
  }

  _Unwind_Resume(a1);
}

void sub_21C3FD284(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, std::__shared_weak_count *a16, uint64_t a17, std::__shared_weak_count *a18)
{
  if (a16)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a16);
  }

  if (a18)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a18);
  }

  _Unwind_Resume(a1);
}

void sub_21C3FD6D4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, std::__shared_weak_count *a12, uint64_t a13, std::__shared_weak_count *a14, uint64_t a15, std::__shared_weak_count *a16, uint64_t a17, std::__shared_weak_count *a18)
{
  if (a12)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a12);
  }

  if (a14)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a14);
  }

  if (a16)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a16);
  }

  if (a18)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a18);
  }

  _Unwind_Resume(a1);
}

void sub_21C3FDA38(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, std::__shared_weak_count *a14, uint64_t a15, std::__shared_weak_count *a16, uint64_t a17, std::__shared_weak_count *a18)
{
  if (a14)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a14);
  }

  if (a16)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a16);
  }

  if (a18)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a18);
  }

  _Unwind_Resume(exception_object);
}

void sub_21C3FDA88(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  if (!a14)
  {
    JUMPOUT(0x21C3FDA74);
  }

  JUMPOUT(0x21C3FDA70);
}

void sub_21C3FDA98(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16)
{
  if (!a16)
  {
    JUMPOUT(0x21C3FDA80);
  }

  JUMPOUT(0x21C3FDA7CLL);
}

void sub_21C3FDF18(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, std::__shared_weak_count *a14, uint64_t a15, std::__shared_weak_count *a16, uint64_t a17, std::__shared_weak_count *a18)
{
  if (a14)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a14);
  }

  if (a16)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a16);
  }

  if (a18)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a18);
  }

  _Unwind_Resume(exception_object);
}

void sub_21C3FDF68(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  if (!a14)
  {
    JUMPOUT(0x21C3FDF54);
  }

  JUMPOUT(0x21C3FDF50);
}

void sub_21C3FDF78(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16)
{
  if (!a16)
  {
    JUMPOUT(0x21C3FDF60);
  }

  JUMPOUT(0x21C3FDF5CLL);
}

void sub_21C3FE240(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, std::__shared_weak_count *a14, uint64_t a15, std::__shared_weak_count *a16, uint64_t a17, std::__shared_weak_count *a18)
{
  if (a14)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a14);
  }

  if (a16)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a16);
  }

  if (a18)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a18);
  }

  _Unwind_Resume(exception_object);
}

void sub_21C3FE290(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  if (!a14)
  {
    JUMPOUT(0x21C3FE27CLL);
  }

  JUMPOUT(0x21C3FE278);
}

void sub_21C3FE2A0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16)
{
  if (!a16)
  {
    JUMPOUT(0x21C3FE288);
  }

  JUMPOUT(0x21C3FE284);
}

void sub_21C3FE3A0(_Unwind_Exception *a1)
{
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  }

  _Unwind_Resume(a1);
}

void sub_21C3FE5E8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v15 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_21C3FE6F0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id a10)
{
  v12 = v11;

  _Unwind_Resume(a1);
}

void sub_21C3FEBD0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void *a9, uint64_t a10, void *a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, char a24, char *a25)
{
  std::__tree<std::__value_type<SKNode * {__strong},std::vector<UITouch * {__strong}>>,std::__map_value_compare<SKNode * {__strong},std::__value_type<SKNode * {__strong},std::vector<UITouch * {__strong}>>,std::less<SKNode * {__strong}>,true>,std::allocator<std::__value_type<SKNode * {__strong},std::vector<UITouch * {__strong}>>>>::destroy(&a24, a25);

  _Unwind_Resume(a1);
}

id std::vector<UITouch * {__strong}>::push_back[abi:ne200100](void *a1, id *a2)
{
  v5 = a1[1];
  v4 = a1[2];
  if (v5 >= v4)
  {
    v8 = (v5 - *a1) >> 3;
    if ((v8 + 1) >> 61)
    {
      std::vector<jet_render_op>::__throw_length_error[abi:ne200100]();
    }

    v9 = v4 - *a1;
    v10 = v9 >> 2;
    if (v9 >> 2 <= (v8 + 1))
    {
      v10 = v8 + 1;
    }

    if (v9 >= 0x7FFFFFFFFFFFFFF8)
    {
      v11 = 0x1FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v11 = v10;
    }

    v13[4] = a1;
    if (v11)
    {
      std::__allocate_at_least[abi:ne200100]<std::allocator<UITouch * {__strong}>>(a1, v11);
    }

    v12 = (8 * v8);
    v13[0] = 0;
    v13[1] = v12;
    v13[3] = 0;
    *v12 = *a2;
    v13[2] = v12 + 1;
    std::vector<UITouch * {__strong}>::__swap_out_circular_buffer(a1, v13);
    v7 = a1[1];
    result = std::__split_buffer<UITouch * {__strong}>::~__split_buffer(v13);
  }

  else
  {
    result = *a2;
    *v5 = result;
    v7 = v5 + 1;
  }

  a1[1] = v7;
  return result;
}

void sub_21C3FED3C(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  std::__split_buffer<UITouch * {__strong}>::~__split_buffer(va);
  _Unwind_Resume(a1);
}

void sub_21C3FF00C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void *a9, uint64_t a10, void *a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, char a24, char *a25)
{
  std::__tree<std::__value_type<SKNode * {__strong},std::vector<UITouch * {__strong}>>,std::__map_value_compare<SKNode * {__strong},std::__value_type<SKNode * {__strong},std::vector<UITouch * {__strong}>>,std::less<SKNode * {__strong}>,true>,std::allocator<std::__value_type<SKNode * {__strong},std::vector<UITouch * {__strong}>>>>::destroy(&a24, a25);

  _Unwind_Resume(a1);
}

void sub_21C3FF424(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void *a9, uint64_t a10, void *a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, char a34, char *a35)
{
  std::__tree<std::__value_type<SKNode * {__strong},std::vector<UITouch * {__strong}>>,std::__map_value_compare<SKNode * {__strong},std::__value_type<SKNode * {__strong},std::vector<UITouch * {__strong}>>,std::less<SKNode * {__strong}>,true>,std::allocator<std::__value_type<SKNode * {__strong},std::vector<UITouch * {__strong}>>>>::destroy(&a34, a35);

  _Unwind_Resume(a1);
}

void sub_21C3FF86C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void *a9, uint64_t a10, void *a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, char a34, char *a35)
{
  std::__tree<std::__value_type<SKNode * {__strong},std::vector<UITouch * {__strong}>>,std::__map_value_compare<SKNode * {__strong},std::__value_type<SKNode * {__strong},std::vector<UITouch * {__strong}>>,std::less<SKNode * {__strong}>,true>,std::allocator<std::__value_type<SKNode * {__strong},std::vector<UITouch * {__strong}>>>>::destroy(&a34, a35);

  _Unwind_Resume(a1);
}

void sub_21C3FFA60(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, objc_super a9)
{
  v10 = v9;

  a9.super_class = SKView;
  [(_Unwind_Exception *)&a9 dealloc];
  _Unwind_Resume(a1);
}

void sub_21C3FFBD4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id a10)
{
  v11 = v10;

  _Unwind_Resume(a1);
}

void sub_21C400A14(_Unwind_Exception *a1)
{
  v5 = v4;

  _Unwind_Resume(a1);
}

void sub_21C4014A8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10)
{
  if (v10)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v10);
  }

  _Unwind_Resume(exception_object);
}

void sub_21C401D08(_Unwind_Exception *a1)
{
  v3 = v2;

  _Unwind_Resume(a1);
}

void sub_21C401F50(_Unwind_Exception *a1)
{
  v3 = v2;

  _Unwind_Resume(a1);
}

void sub_21C402750(_Unwind_Exception *a1)
{
  v7 = v6;

  _Unwind_Resume(a1);
}

void std::__tree<std::__value_type<SKNode * {__strong},std::vector<UITouch * {__strong}>>,std::__map_value_compare<SKNode * {__strong},std::__value_type<SKNode * {__strong},std::vector<UITouch * {__strong}>>,std::less<SKNode * {__strong}>,true>,std::allocator<std::__value_type<SKNode * {__strong},std::vector<UITouch * {__strong}>>>>::destroy(uint64_t a1, char *a2)
{
  if (a2)
  {
    std::__tree<std::__value_type<SKNode * {__strong},std::vector<UITouch * {__strong}>>,std::__map_value_compare<SKNode * {__strong},std::__value_type<SKNode * {__strong},std::vector<UITouch * {__strong}>>,std::less<SKNode * {__strong}>,true>,std::allocator<std::__value_type<SKNode * {__strong},std::vector<UITouch * {__strong}>>>>::destroy(a1, *a2);
    std::__tree<std::__value_type<SKNode * {__strong},std::vector<UITouch * {__strong}>>,std::__map_value_compare<SKNode * {__strong},std::__value_type<SKNode * {__strong},std::vector<UITouch * {__strong}>>,std::less<SKNode * {__strong}>,true>,std::allocator<std::__value_type<SKNode * {__strong},std::vector<UITouch * {__strong}>>>>::destroy(a1, *(a2 + 1));
    v4 = (a2 + 40);
    std::vector<UITouch * {__strong}>::__destroy_vector::operator()[abi:ne200100](&v4);

    operator delete(a2);
  }
}

void std::vector<UITouch * {__strong}>::__destroy_vector::operator()[abi:ne200100](void ***a1)
{
  v1 = *a1;
  v2 = **a1;
  if (v2)
  {
    v4 = v1[1];
    v5 = **a1;
    if (v4 != v2)
    {
      do
      {
        v6 = *(v4 - 1);
        v4 -= 8;
      }

      while (v4 != v2);
      v5 = **a1;
    }

    v1[1] = v2;

    operator delete(v5);
  }
}

void *std::__tree<std::__value_type<SKNode * {__strong},std::vector<UITouch * {__strong}>>,std::__map_value_compare<SKNode * {__strong},std::__value_type<SKNode * {__strong},std::vector<UITouch * {__strong}>>,std::less<SKNode * {__strong}>,true>,std::allocator<std::__value_type<SKNode * {__strong},std::vector<UITouch * {__strong}>>>>::__emplace_unique_key_args<SKNode * {__strong},std::piecewise_construct_t const&,std::tuple<SKNode * const {__strong}&>,std::tuple<>>(uint64_t a1, unint64_t *a2)
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

void std::vector<UITouch * {__strong}>::__swap_out_circular_buffer(uint64_t a1, void *a2)
{
  v5 = *a1;
  v4 = *(a1 + 8);
  v6 = a2[1] + *a1 - v4;
  if (v4 != *a1)
  {
    v7 = *a1;
    v8 = (a2[1] + *a1 - v4);
    do
    {
      v9 = *v7;
      *v7++ = 0;
      *v8++ = v9;
    }

    while (v7 != v4);
    do
    {
      v10 = *v5++;
    }

    while (v5 != v4);
  }

  a2[1] = v6;
  v11 = *a1;
  *a1 = v6;
  *(a1 + 8) = v11;
  a2[1] = v11;
  v12 = *(a1 + 8);
  *(a1 + 8) = a2[2];
  a2[2] = v12;
  v13 = *(a1 + 16);
  *(a1 + 16) = a2[3];
  a2[3] = v13;
  *a2 = a2[1];
}

void std::__allocate_at_least[abi:ne200100]<std::allocator<UITouch * {__strong}>>(uint64_t a1, unint64_t a2)
{
  if (!(a2 >> 61))
  {
    operator new();
  }

  std::__throw_bad_array_new_length[abi:ne200100]();
}

uint64_t std::__split_buffer<UITouch * {__strong}>::~__split_buffer(uint64_t a1)
{
  v3 = *(a1 + 8);
  for (i = *(a1 + 16); i != v3; i = *(a1 + 16))
  {
    *(a1 + 16) = i - 8;
  }

  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

void sub_21C403224(_Unwind_Exception *a1)
{
  MEMORY[0x21CF0A160](v2, 0x1081C40F32963C4);

  _Unwind_Resume(a1);
}

void sub_21C403510(_Unwind_Exception *a1)
{
  v6 = v5;

  _Unwind_Resume(a1);
}

void sub_21C403A10(_Unwind_Exception *a1)
{
  v5 = v3;

  _Unwind_Resume(a1);
}

void SKCPlaySound::SKCPlaySound(SKCPlaySound *this, SKCAction *a2)
{
  SKCAction::SKCAction(this);
  *v4 = &unk_282E15C68;
  *(v4 + 112) = 0;
  this->var4 = a2->var4;
  *&this->var6 = *&a2->var6;
  this->var12 = a2->var12;
  this->var11 = a2->var11;
  *&this->var8 = *&a2->var8;
  this->var14 = a2->var14;
  this->var5 = 1;
  objc_storeWeak((v4 + 112), 0);
  this->var20 = 0;
}

void SKCPlaySound::~SKCPlaySound(SKCPlaySound *this)
{
  objc_destroyWeak(&this->var19);

  SKCAction::~SKCAction(this);
}

{
  objc_destroyWeak(&this->var19);
  SKCAction::~SKCAction(this);

  JUMPOUT(0x21CF0A160);
}

void SKCPlaySound::cpp_updateWithTargetForTime(SKCPlaySound *this, SKCNode *a2, __n128 a3)
{
  v3 = a3.n128_u64[0];
  if (!this->var20)
  {
    WeakRetained = objc_loadWeakRetained(&this->var19);

    if (WeakRetained)
    {
      this->var20 = 1;
      v7 = objc_loadWeakRetained(&this->var19);
      [v7 play];

      v8 = objc_loadWeakRetained(&this->var19);
      SKCRendererRegisterSoundSource(v8);
    }
  }

  a3.n128_u64[0] = v3;
  if ((COERCE_UNSIGNED_INT(SKCAction::cpp_ratioForTime(this, a3) + -1.0) & 0x60000000) == 0)
  {
    v9.n128_u64[0] = v3;

    SKCAction::didFinishWithTargetAtTime(this, a2, v9);
  }
}

SKCAction *SKCPlaySound::cpp_willStartWithTargetAtTime(SKCPlaySound *this, SKCNode *a2, double a3)
{
  result = SKCAction::cpp_willStartWithTargetAtTime(this, a2, a3);
  this->var20 = 0;
  return result;
}

void sub_21C403F10(_Unwind_Exception *a1)
{
  MEMORY[0x21CF0A160](v2, 0x1081C4082519AB5);

  _Unwind_Resume(a1);
}

void sub_21C4040AC(_Unwind_Exception *a1)
{
  MEMORY[0x21CF0A160](v3, 0x1081C4082519AB5);

  _Unwind_Resume(a1);
}

void SKCCustomAction::SKCCustomAction(SKCCustomAction *this, SKCAction *a2)
{
  SKCAction::SKCAction(this);
  *v3 = &unk_282E15D00;
  *(v3 + 24) = a2->var4;
  *(v3 + 40) = *&a2->var6;
  *(v3 + 72) = *&a2->var11;
  *(v3 + 56) = *&a2->var8;
  *(v3 + 88) = a2->var14;
  *(v3 + 32) = 1;
  *(v3 + 112) = 0;
}

void SKCCustomAction::~SKCCustomAction(SKCCustomAction *this)
{

  SKCAction::~SKCAction(this);
}

{

  SKCAction::~SKCAction(this);

  JUMPOUT(0x21CF0A160);
}

SKCAction *SKCCustomAction::cpp_updateWithTargetForTime(SKCCustomAction *this, SKCNode *a2, __n128 a3)
{
  v3 = a3.n128_u64[0];
  v6.n128_f32[0] = SKCAction::cpp_ratioForTime(this, a3);
  v7 = v6.n128_f32[0];
  result = this->var19;
  if (result)
  {
    result = (result->var3)(result, *(a2 + 1), (v6.n128_f32[0] * this->var2));
  }

  if ((COERCE_UNSIGNED_INT(v7 + -1.0) & 0x60000000) == 0)
  {
    v6.n128_u64[0] = v3;

    return SKCAction::didFinishWithTargetAtTime(this, a2, v6);
  }

  return result;
}

void SKCTransitionNode::SKCTransitionNode(SKCTransitionNode *this)
{
  SKCNode::SKCNode(this);
  *v1 = &unk_282E15D98;
  *(v1 + 560) = 0;
  *(v1 + 568) = 0;
  *(v1 + 576) = 257;
  *(v1 + 592) = 0u;
  *(v1 + 608) = 0u;
  *(v1 + 624) = 0u;
  *(v1 + 640) = 0u;
  *(v1 + 656) = 0u;
  *(v1 + 672) = 0u;
  *(v1 + 688) = 0u;
  *(v1 + 704) = 0u;
  *(v1 + 720) = 0;
}

double SKCTransitionNode::getBatchInfo@<D0>(uint64_t a1@<X8>, uint64_t a2@<X0>)
{
  if (!*(a2 + 600) && (*(a2 + 726) & 1) == 0)
  {
    return SKCNode::getBatchInfo(a1);
  }

  *(a1 + 12) = 1;
  *(a1 + 16) = 0u;
  *(a1 + 32) = 0u;
  *(a1 + 48) = 0u;
  *(a1 + 60) = 0u;
  *&result = 0x300000010;
  *(a1 + 4) = 0x300000010;
  *a1 = 1;
  return result;
}

uint64_t SKCTransitionNode::getMaxBatchRenderElementCount(uint64_t a1)
{
  if (*(a1 + 600) || *(a1 + 726) == 1)
  {
    return 16;
  }

  else
  {
    return 0;
  }
}

uint64_t SKCTransitionNode::addBatchRenderElements(uint64_t a1)
{
  if (*(a1 + 600))
  {
    return 0;
  }

  else
  {
    return SKCNode::addBatchRenderElements();
  }
}

void SKCTransitionNode::addRenderOps(uint64_t a1, int *a2, uint64_t *a3)
{
  v229 = *MEMORY[0x277D85DE8];
  if (*(a1 + 600) || (*(a1 + 726) & 1) != 0)
  {
    v6 = MEMORY[0x277D860B8];
    v190 = *(MEMORY[0x277D860B8] + 16);
    v187 = *MEMORY[0x277D860B8];
    v188 = *(MEMORY[0x277D860B8] + 32);
    v186 = *(MEMORY[0x277D860B8] + 48);
    SKCRenderer::getBackingContext(*(a2 + 13), &v212);
    v7 = (*(*v212 + 136))(v212);
    _Q0.i64[1] = 0xBEAAAAAB3BDA740ELL;
    if (*(&v212 + 1))
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](*(&v212 + 1));
      _Q0.i64[1] = 0xBEAAAAAB3BDA740ELL;
    }

    *&v10 = v188;
    *(&v10 + 1) = 0xBEAAAAAB3BDA740ELL;
    if (v7 == 1)
    {
      v11 = 0;
      v12 = *v6;
      v13 = v6[1];
      v8 = v6[2];
      v14 = v6[3];
      v15.i64[0] = 0;
      v15.i64[1] = __PAIR64__(v14.u32[3], 1.0);
      v204 = v187;
      v205 = v190;
      v206 = v10;
      v207 = v186;
      do
      {
        *(&v212 + v11) = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v12, COERCE_FLOAT(*(&v204 + v11))), v13, *&v204.f32[v11 / 4], 1), v8, *(&v204 + v11), 2), v15, *(&v204 + v11), 3);
        v11 += 16;
      }

      while (v11 != 64);
      v16 = 0;
      v12.i32[0] = 1.0;
      v13.i32[1] = 1.0;
      v8.i32[2] = 0.5;
      v204 = v212;
      v205 = v213;
      v206 = v214;
      v207 = v215;
      do
      {
        *(&v212 + v16) = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v12, COERCE_FLOAT(*(&v204 + v16))), v13, *&v204.f32[v16 / 4], 1), v8, *(&v204 + v16), 2), v14, *(&v204 + v16), 3);
        v16 += 16;
      }

      while (v16 != 64);
      v17 = v213;
      v10 = v214;
      _Q0.i64[1] = *(&v215 + 1);
      v186 = v215;
      v187 = v212;
    }

    else
    {
      v17 = v190;
    }

    v18 = *(a1 + 720);
    if (v18 > 1.0)
    {
      v18 = 1.0;
    }

    v19 = *a2;
    v8.i64[0] = 0;
    v225 = 0u;
    v226 = 0u;
    if (v18 >= 0.0)
    {
      v8.f32[0] = v18;
    }

    v227 = 0uLL;
    v228 = 0uLL;
    DWORD2(v225) = 1065353216;
    __asm { FMOV            V0.2S, #1.0 }

    *&v226 = _Q0.i64[0];
    HIDWORD(v226) = 1065353216;
    v220 = 0uLL;
    v222 = 0x3F80000000000000;
    v223 = 0uLL;
    v224 = 0uLL;
    DWORD2(v220) = 1065353216;
    v221 = _Q0.i64[0];
    v216 = xmmword_21C4B8B00;
    v217 = unk_21C4B8B10;
    v218 = xmmword_21C4B8B20;
    v219 = unk_21C4B8B30;
    v212 = xmmword_21C4B8AC0[0];
    v213 = unk_21C4B8AD0;
    v214 = xmmword_21C4B8AE0;
    v215 = unk_21C4B8AF0;
    v24 = *(a1 + 608);
    v25 = *(a1 + 616);
    if (v25)
    {
      atomic_fetch_add_explicit(&v25->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    v189 = v10;
    v191 = v17;
    v8.f32[0] = v8.f32[0] * (v8.f32[0] * ((v8.f32[0] * -2.0) + 3.0));
    v192 = v8;
    v26 = *(a1 + 624);
    v27 = *(a1 + 632);
    if (v27)
    {
      atomic_fetch_add_explicit(&v27->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    v28 = 1.0 - v8.f32[0];
    v29 = *v6;
    v30 = v6[1];
    v31 = v6[2];
    v32 = v6[3];
    v204 = *v6;
    v205 = v30;
    v33 = v6[3];
    v206 = v6[2];
    v207 = v33;
    v208 = v204;
    v209 = v30;
    __asm { FMOV            V1.4S, #1.0 }

    v179 = _Q1;
    v35 = *(a1 + 560) - 1;
    v210 = v206;
    v211 = v33;
    v183 = v19;
    switch(v35)
    {
      case 0:
        v156 = v32;
        v161 = v31;
        v166 = v30;
        v171 = v29;
        v36 = *(a2 + 55);
        v176 = *(a2 + 54);
        if (v36)
        {
          atomic_fetch_add_explicit(&v36->__shared_owners_, 1uLL, memory_order_relaxed);
        }

        v151 = 1.0 - v8.f32[0];
        if (v27)
        {
          std::__shared_weak_count::__release_shared[abi:ne200100](v27);
          v28 = v151;
        }

        _Q4 = *(a1 + 304);
        _Q1 = v192;
        if (v192.f32[0] >= 0.5)
        {
          v24 = *(a1 + 624);
          v127 = *(a1 + 632);
          v30 = v166;
          v29 = v171;
          v32 = v156;
          v31 = v161;
          if (v127)
          {
            atomic_fetch_add_explicit(&v127->__shared_owners_, 1uLL, memory_order_relaxed);
          }

          v184 = v127;
          if (v25)
          {
            v182 = _Q4;
            std::__shared_weak_count::__release_shared[abi:ne200100](v25);
            v28 = v151;
            v32 = v156;
            _Q4 = v182;
            v31 = v161;
            v30 = v166;
            v29 = v171;
          }

          v39 = 0;
          v40 = v28 + v28;
        }

        else
        {
          v24 = *(a1 + 608);
          v38 = *(a1 + 616);
          v30 = v166;
          v29 = v171;
          v32 = v156;
          v31 = v161;
          if (v38)
          {
            atomic_fetch_add_explicit(&v38->__shared_owners_, 1uLL, memory_order_relaxed);
          }

          v184 = v38;
          if (v25)
          {
            v180 = _Q4;
            std::__shared_weak_count::__release_shared[abi:ne200100](v25);
            _Q4 = v180;
            v32 = v156;
            v31 = v161;
            v30 = v166;
            v29 = v171;
          }

          v39 = 0;
          v40 = v192.f32[0] + v192.f32[0];
        }

        v192.f32[0] = v40;
        v42 = 1;
        goto LABEL_160;
      case 1:
        if (v8.f32[0] <= 0.5)
        {
          v184 = v25;
          v25 = v27;
          v147 = v26;
          v153 = v31;
          v158 = v32;
          v173 = v29;
          v178 = v32;
          v163 = v31;
          v168 = v30;
          v141 = v29;
          v145 = v30;
        }

        else
        {
          v147 = v24;
          v232.columns[0] = v29;
          v232.columns[1] = v30;
          v232.columns[2] = v31;
          v232.columns[3] = v32;
          *v55.i64 = sk_matrix_scale(v232, -1.0, 1.0, 1.0);
          v168 = v6[1];
          v173 = *v6;
          v184 = v27;
          v24 = v26;
          v158 = v6[3];
          v163 = v6[2];
          v178 = v56;
          v153 = v57;
          v141 = v55;
          v145 = v58;
        }

        v128 = v192.f32[0] * 3.14159265;
        v129 = __sincosf_stret(v128);
        v130 = 0;
        v131 = v173;
        v131.i32[0] = LODWORD(v129.__cosval);
        v132 = v163;
        v132.i32[0] = LODWORD(v129.__sinval);
        v132.i32[2] = LODWORD(v129.__cosval);
        v196 = v141;
        v197 = v145;
        v198 = v153;
        v199 = v178;
        do
        {
          v131.f32[2] = -v129.__sinval;
          *&__p[v130 / 2] = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v131, COERCE_FLOAT(*(&v196 + v130 * 4))), v168, *&v196.f32[v130], 1), v132, *(&v196 + v130 * 4), 2), v158, *(&v196 + v130 * 4), 3);
          v130 += 4;
        }

        while (v130 != 16);
        v133 = 0;
        v134.i64[0] = 0;
        v134.i64[1] = __PAIR64__(v158.u32[3], -((vabds_f32(0.5, v192.f32[0]) * -2.0) + 1.0));
        v196 = *__p;
        v197 = v201;
        v198 = v202;
        v199 = v203;
        do
        {
          *&__p[v133 / 2] = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v173, COERCE_FLOAT(*(&v196 + v133 * 4))), v168, *&v196.f32[v133], 1), v163, *(&v196 + v133 * 4), 2), v134, *(&v196 + v133 * 4), 3);
          v133 += 4;
        }

        while (v133 != 16);
        v135 = 0;
        v196 = *__p;
        v197 = v201;
        v198 = v202;
        v199 = v203;
        _Q4 = v179;
        do
        {
          _Q1 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v187, COERCE_FLOAT(*(&v196 + v135))), v191, *&v196.f32[v135 / 4], 1), v189, *(&v196 + v135), 2), v186, *(&v196 + v135), 3);
          *&__p[v135 / 8] = _Q1;
          v135 += 16;
        }

        while (v135 != 64);
        goto LABEL_168;
      case 2:
        if (v8.f32[0] <= 0.5)
        {
          v184 = v25;
          v25 = v27;
          v147 = v26;
          v152 = v31;
          v157 = v32;
          v172 = v29;
          v177 = v32;
          v140 = v29;
          v144 = v30;
          v162 = v31;
          v167 = v30;
        }

        else
        {
          v147 = v24;
          v231.columns[0] = v29;
          v231.columns[1] = v30;
          v231.columns[2] = v31;
          v231.columns[3] = v32;
          *v47.i64 = sk_matrix_scale(v231, 1.0, -1.0, 1.0);
          v167 = v6[1];
          v172 = *v6;
          v184 = v27;
          v24 = v26;
          v157 = v6[3];
          v162 = v6[2];
          v177 = v48;
          v152 = v49;
          v140 = v47;
          v144 = v50;
        }

        v119 = v192.f32[0] * 3.14159265;
        v120 = __sincosf_stret(v119);
        v121 = 0;
        v122 = v167;
        v122.i32[1] = LODWORD(v120.__cosval);
        v122.i32[2] = LODWORD(v120.__sinval);
        v123 = v162;
        v123.f32[1] = -v120.__sinval;
        v123.i32[2] = LODWORD(v120.__cosval);
        v196 = v140;
        v197 = v144;
        v198 = v152;
        v199 = v177;
        do
        {
          *&__p[v121 / 2] = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v172, COERCE_FLOAT(*(&v196 + v121 * 4))), v122, *&v196.f32[v121], 1), v123, *(&v196 + v121 * 4), 2), v157, *(&v196 + v121 * 4), 3);
          v121 += 4;
        }

        while (v121 != 16);
        v124 = 0;
        v125.i64[0] = 0;
        v125.i64[1] = __PAIR64__(v157.u32[3], -((vabds_f32(0.5, v192.f32[0]) * -2.0) + 1.0));
        v196 = *__p;
        v197 = v201;
        v198 = v202;
        v199 = v203;
        do
        {
          *&__p[v124 / 2] = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v172, COERCE_FLOAT(*(&v196 + v124 * 4))), v167, *&v196.f32[v124], 1), v162, *(&v196 + v124 * 4), 2), v125, *(&v196 + v124 * 4), 3);
          v124 += 4;
        }

        while (v124 != 16);
        v126 = 0;
        v196 = *__p;
        v197 = v201;
        v198 = v202;
        v199 = v203;
        _Q4 = v179;
        do
        {
          _Q1 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v187, COERCE_FLOAT(*(&v196 + v126))), v191, *&v196.f32[v126 / 4], 1), v189, *(&v196 + v126), 2), v186, *(&v196 + v126), 3);
          *&__p[v126 / 8] = _Q1;
          v126 += 16;
        }

        while (v126 != 64);
LABEL_168:
        v42 = 0;
        v29 = *__p;
        v30 = v201;
        v39 = 1;
        v192.i32[0] = 1.0;
        v36 = v25;
        v176 = v147;
        goto LABEL_169;
      case 3:
        _Q0.i32[0] = 0;
        v39 = 0;
        _Q1 = v8;
        _Q1.f32[0] = _Q1.f32[0] + _Q1.f32[0];
        goto LABEL_45;
      case 4:
        _Q0.i32[0] = 0;
        v39 = 0;
        _Q1.f32[0] = v8.f32[0] * -2.0;
LABEL_45:
        v54.i32[0] = 0;
        v54.i32[2] = 0;
        v54.i32[1] = _Q1.i32[0];
        goto LABEL_64;
      case 5:
        _Q0.i32[0] = 0;
        v39 = 0;
        _Q1 = v8;
        _Q1.f32[0] = _Q1.f32[0] + _Q1.f32[0];
        goto LABEL_63;
      case 6:
        _Q0.i32[0] = 0;
        v39 = 0;
        _Q1.f32[0] = v8.f32[0] * -2.0;
LABEL_63:
        v54.i32[2] = 0;
        v54.i64[0] = _Q1.u32[0];
LABEL_64:
        _Q1.i32[0] &= 0x60000000u;
        v54.i32[3] = v32.i32[3];
        v204 = v29;
        v205 = v30;
        v206 = v31;
        v207 = vbslq_s8(vdupq_lane_s32(*&vceqq_s32(_Q1, _Q0), 0), v32, v54);
        v42 = 1;
        v192.i32[0] = 1.0;
        v184 = v27;
        v63 = v24;
        v24 = v26;
        v36 = v25;
        v176 = v63;
        goto LABEL_74;
      case 7:
        v176 = v26;
        _Q0.i32[0] = 0;
        v39 = 0;
        _Q1.f32[0] = v28 + v28;
        goto LABEL_71;
      case 8:
        v176 = v26;
        _Q0.i32[0] = 0;
        v39 = 0;
        _Q1.f32[0] = v28 * -2.0;
LABEL_71:
        v65.i32[0] = 0;
        v65.i32[2] = 0;
        v65.i32[1] = _Q1.i32[0];
        goto LABEL_72;
      case 9:
        v176 = v26;
        _Q0.i32[0] = 0;
        v39 = 0;
        _Q1.f32[0] = v28 + v28;
        goto LABEL_69;
      case 10:
        v176 = v26;
        _Q0.i32[0] = 0;
        v39 = 0;
        _Q1.f32[0] = v28 * -2.0;
LABEL_69:
        v65.i32[2] = 0;
        v65.i64[0] = _Q1.u32[0];
LABEL_72:
        _Q1.i32[0] &= 0x60000000u;
        v65.i32[3] = v32.i32[3];
        v62 = vbslq_s8(vdupq_lane_s32(*&vceqq_s32(_Q1, _Q0), 0), v32, v65);
        goto LABEL_73;
      case 11:
        v176 = v26;
        _Q0.i32[0] = 0;
        v39 = 0;
        v46 = v8;
        v44.i64[0] = 0;
        v44.i32[2] = 0;
        v44.i32[3] = v32.i32[3];
        v45 = v44;
        *&v45.i32[1] = *v46.i32 + *v46.i32;
        v46.i32[0] = COERCE_UNSIGNED_INT(*v46.i32 + *v46.i32) & 0x60000000;
        _Q1 = vdupq_lane_s32(*&vceqq_s32(v46, _Q0), 0);
        *v33.i32 = v28 * -2.0;
        goto LABEL_39;
      case 12:
        v176 = v26;
        _Q0.i32[0] = 0;
        v39 = 0;
        v44.i64[0] = 0;
        v44.i32[2] = 0;
        v44.i32[3] = v32.i32[3];
        v45 = v44;
        *&v45.i32[1] = v192.f32[0] * -2.0;
        _Q1.i32[0] = COERCE_UNSIGNED_INT(v192.f32[0] * -2.0) & 0x60000000;
        _Q1 = vdupq_lane_s32(*&vceqq_s32(_Q1, _Q0), 0);
        *v33.i32 = v28 + v28;
LABEL_39:
        v44.i32[1] = v33.i32[0];
        goto LABEL_61;
      case 13:
        v176 = v26;
        _Q0.i32[0] = 0;
        v39 = 0;
        v61 = v8;
        v44.i64[0] = 0;
        v44.i32[2] = 0;
        v44.i32[3] = v32.i32[3];
        v45 = v44;
        *v45.i32 = *v61.i32 + *v61.i32;
        v61.i32[0] = COERCE_UNSIGNED_INT(*v61.i32 + *v61.i32) & 0x60000000;
        _Q1 = vdupq_lane_s32(*&vceqq_s32(v61, _Q0), 0);
        *v33.i32 = v28 * -2.0;
        goto LABEL_60;
      case 14:
        v176 = v26;
        _Q0.i32[0] = 0;
        v39 = 0;
        v44.i64[0] = 0;
        v44.i32[2] = 0;
        v44.i32[3] = v32.i32[3];
        v45 = v44;
        *v45.i32 = v192.f32[0] * -2.0;
        _Q1.i32[0] = COERCE_UNSIGNED_INT(v192.f32[0] * -2.0) & 0x60000000;
        _Q1 = vdupq_lane_s32(*&vceqq_s32(_Q1, _Q0), 0);
        *v33.i32 = v28 + v28;
LABEL_60:
        v44.i32[0] = v33.i32[0];
LABEL_61:
        v33.i32[0] &= 0x60000000u;
        v62 = vbslq_s8(vdupq_lane_s32(*&vceqq_s32(v33, _Q0), 0), v32, v44);
        v32 = vbslq_s8(_Q1, v32, v45);
LABEL_73:
        v204 = v29;
        v205 = v30;
        v206 = v31;
        v207 = v62;
        v42 = 1;
        v192.i32[0] = 1.0;
        v184 = v25;
        v36 = v27;
LABEL_74:
        v28 = 1.0;
        goto LABEL_75;
      case 15:
        v39 = 0;
        v212 = xmmword_21C4B84E0;
        v213 = xmmword_21C4B84F0;
        v214 = xmmword_21C4B8A90;
        v215 = xmmword_21C4B8AA0;
        *&v220 = 0;
        *(&v220 + 1) = 1065353216;
        v221 = 0x3F0000003F800000;
        v216 = xmmword_21C4B8AA0;
        v217 = xmmword_21C4B8A90;
        _Q1 = xmmword_21C4B8500;
        v218 = xmmword_21C4B8500;
        v219 = xmmword_21C4B8510;
        v222 = 0x3F00000000000000;
        *&v223 = 0x3F00000000000000;
        *(&v223 + 1) = 0x3F0000003F800000;
        *&v224 = _Q0.i64[0];
        v51 = vtrn2q_s32(vrev64q_s32(0), v32);
        v52 = v51;
        *&v52.i32[1] = -v192.f32[0];
        *(&v224 + 1) = 0x3F80000000000000;
        v204 = v29;
        v205 = v30;
        v51.i32[1] = v192.i32[0];
        v206 = v31;
        v207 = v52;
        v208 = v29;
        v209 = v30;
        v42 = 2;
        v192.i32[0] = 1.0;
        v184 = v27;
        v53 = v24;
        v24 = v26;
        v36 = v25;
        v176 = v53;
        v28 = 1.0;
        v210 = v31;
        v211 = v51;
        goto LABEL_75;
      case 16:
        v39 = 0;
        v212 = xmmword_21C4B84E0;
        v213 = xmmword_21C4B8A50;
        v214 = xmmword_21C4B8A60;
        v215 = xmmword_21C4B8510;
        *&v220 = 0;
        *(&v220 + 1) = 1056964608;
        v221 = 0x3F8000003F000000;
        v216 = xmmword_21C4B8A50;
        v217 = xmmword_21C4B84F0;
        v218 = xmmword_21C4B8500;
        v219 = xmmword_21C4B8A60;
        v222 = 0x3F80000000000000;
        *&v223 = 1056964608;
        *(&v223 + 1) = 1065353216;
        *&v224 = _Q0.i64[0];
        _Q1.i64[0] = 0;
        _Q1.i32[2] = 0;
        _Q1.i32[3] = v32.i32[3];
        v41 = _Q1;
        v41.f32[0] = -v192.f32[0];
        *(&v224 + 1) = 0x3F8000003F000000;
        v204 = v29;
        v205 = v30;
        _Q1.i32[0] = v192.i32[0];
        v206 = v31;
        v207 = v41;
        v208 = v29;
        v209 = v30;
        v42 = 2;
        v192.i32[0] = 1.0;
        v184 = v27;
        v43 = v24;
        v24 = v26;
        v36 = v25;
        v176 = v43;
        goto LABEL_67;
      case 17:
        v176 = v26;
        v39 = 0;
        v212 = xmmword_21C4B84E0;
        v213 = xmmword_21C4B84F0;
        v214 = xmmword_21C4B8A90;
        v215 = xmmword_21C4B8AA0;
        *&v220 = 0;
        *(&v220 + 1) = 1065353216;
        v221 = 0x3F0000003F800000;
        v216 = xmmword_21C4B8AA0;
        v217 = xmmword_21C4B8A90;
        v218 = xmmword_21C4B8500;
        v219 = xmmword_21C4B8510;
        v222 = 0x3F00000000000000;
        *&v223 = 0x3F00000000000000;
        *(&v223 + 1) = 0x3F0000003F800000;
        *&v224 = _Q0.i64[0];
        *(&v224 + 1) = 0x3F80000000000000;
        _Q1 = vtrn2q_s32(vrev64q_s32(0), v32);
        v59 = _Q1;
        v59.f32[1] = -v28;
        v204 = v29;
        v205 = v30;
        v206 = v31;
        v207 = v59;
        _Q1.f32[1] = 1.0 - v192.f32[0];
        goto LABEL_66;
      case 18:
        v176 = v26;
        v39 = 0;
        v212 = xmmword_21C4B84E0;
        v213 = xmmword_21C4B8A50;
        v214 = xmmword_21C4B8A60;
        v215 = xmmword_21C4B8510;
        *&v220 = 0;
        *(&v220 + 1) = 1056964608;
        v221 = 0x3F8000003F000000;
        v216 = xmmword_21C4B8A50;
        v217 = xmmword_21C4B84F0;
        v218 = xmmword_21C4B8500;
        v219 = xmmword_21C4B8A60;
        v222 = 0x3F80000000000000;
        *&v223 = 1056964608;
        *(&v223 + 1) = 1065353216;
        *&v224 = _Q0.i64[0];
        *(&v224 + 1) = 0x3F8000003F000000;
        _Q1.i64[0] = 0;
        _Q1.i32[2] = 0;
        _Q1.i32[3] = v32.i32[3];
        v64 = _Q1;
        v64.f32[0] = -v28;
        v204 = v29;
        v205 = v30;
        v206 = v31;
        v207 = v64;
        _Q1.f32[0] = 1.0 - v192.f32[0];
LABEL_66:
        v208 = v29;
        v209 = v30;
        v42 = 2;
        v192.i32[0] = 1.0;
        v184 = v25;
        v36 = v27;
LABEL_67:
        v28 = 1.0;
        v210 = v31;
        v211 = _Q1;
        goto LABEL_75;
      case 19:
        v155 = 1.0 - v8.f32[0];
        v94 = 0;
        v185 = 1.0 - fminf(fmaxf(v8.f32[0] + -0.4, 0.0), 1.0);
        v212 = xmmword_21C4B84E0;
        v213 = xmmword_21C4B8A50;
        v214 = xmmword_21C4B8A60;
        v215 = xmmword_21C4B8510;
        *&v220 = 0;
        *(&v220 + 1) = 1056964608;
        v221 = 0x3F8000003F000000;
        v216 = xmmword_21C4B8A50;
        v217 = xmmword_21C4B84F0;
        v218 = xmmword_21C4B8500;
        v219 = xmmword_21C4B8A60;
        v222 = 0x3F80000000000000;
        *&v223 = 1056964608;
        *(&v223 + 1) = 1065353216;
        *&v224 = _Q0.i64[0];
        *(&v224 + 1) = 0x3F8000003F000000;
        v95.i64[0] = 1065353216;
        v95.i32[2] = 0;
        v160 = v32;
        v95.i32[3] = v32.i32[3];
        v196 = v204;
        v197 = v205;
        v198 = v206;
        v199 = v207;
        do
        {
          *&__p[v94 / 2] = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v29, COERCE_FLOAT(*(&v196 + v94 * 4))), v30, *&v196.f32[v94], 1), v31, *(&v196 + v94 * 4), 2), v95, *(&v196 + v94 * 4), 3);
          v94 += 4;
        }

        while (v94 != 16);
        v181 = v95;
        v142 = v201;
        v146 = *__p;
        v138 = v202;
        v149 = v203;
        v204 = *__p;
        v205 = v201;
        v206 = v202;
        v207 = v203;
        v193 = v8.f32[0] * 0.75;
        v170 = v30;
        v175 = v29;
        v165 = v31;
        v96 = __sincosf_stret(v193 + v193);
        v97 = 0;
        v98 = v175;
        v98.i32[0] = LODWORD(v96.__cosval);
        v99 = v165;
        v99.i32[0] = LODWORD(v96.__sinval);
        v99.i32[2] = LODWORD(v96.__cosval);
        v196 = v146;
        v197 = v142;
        v198 = v138;
        v199 = v149;
        v100 = v160;
        do
        {
          v98.f32[2] = -v96.__sinval;
          *&__p[v97 / 2] = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v98, COERCE_FLOAT(*(&v196 + v97 * 4))), v170, *&v196.f32[v97], 1), v99, *(&v196 + v97 * 4), 2), v160, *(&v196 + v97 * 4), 3);
          v97 += 4;
        }

        while (v97 != 16);
        v101 = 0;
        v102.i64[0] = 3212836864;
        v102.i32[2] = 0;
        v102.i32[3] = v160.i32[3];
        v196 = *__p;
        v197 = v201;
        v198 = v202;
        v199 = v203;
        do
        {
          *&__p[v101 / 2] = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v175, COERCE_FLOAT(*(&v196 + v101 * 4))), v170, *&v196.f32[v101], 1), v165, *(&v196 + v101 * 4), 2), v102, *(&v196 + v101 * 4), 3);
          v101 += 4;
        }

        while (v101 != 16);
        v103 = 0;
        v204 = *__p;
        v205 = v201;
        v206 = v202;
        v207 = v203;
        v100.i32[1] = 0;
        v104 = v100;
        v196 = *__p;
        v197 = v201;
        v198 = v202;
        v199 = v203;
        do
        {
          v104.f32[2] = v193 * -0.5;
          v104.f32[0] = -v193;
          *&__p[v103 / 2] = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v175, COERCE_FLOAT(*(&v196 + v103 * 4))), v170, *&v196.f32[v103], 1), v165, *(&v196 + v103 * 4), 2), v104, *(&v196 + v103 * 4), 3);
          v103 += 4;
        }

        while (v103 != 16);
        v105 = 0;
        v196 = *__p;
        v197 = v201;
        v198 = v202;
        v199 = v203;
        do
        {
          *&__p[v105 / 2] = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v187, COERCE_FLOAT(*(&v196 + v105 * 4))), v191, *&v196.f32[v105], 1), v189, *(&v196 + v105 * 4), 2), v186, *(&v196 + v105 * 4), 3);
          v105 += 4;
        }

        while (v105 != 16);
        v150 = v100;
        v106 = 0;
        v204 = *__p;
        v205 = v201;
        v206 = v202;
        v207 = v203;
        v196 = v208;
        v197 = v209;
        v198 = v210;
        v199 = v211;
        do
        {
          *&__p[v106 / 2] = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v175, COERCE_FLOAT(*(&v196 + v106 * 4))), v170, *&v196.f32[v106], 1), v165, *(&v196 + v106 * 4), 2), v102, *(&v196 + v106 * 4), 3);
          v106 += 4;
        }

        while (v106 != 16);
        v139 = v201;
        v143 = *__p;
        v136 = v203;
        v137 = v202;
        v208 = *__p;
        v209 = v201;
        v210 = v202;
        v211 = v203;
        v107 = __sincosf_stret(v193 * -2.0);
        v108 = 0;
        v109 = v175;
        v109.i32[0] = LODWORD(v107.__cosval);
        v110 = v165;
        v110.i32[0] = LODWORD(v107.__sinval);
        v110.i32[2] = LODWORD(v107.__cosval);
        v196 = v143;
        v197 = v139;
        v198 = v137;
        v199 = v136;
        do
        {
          v109.f32[2] = -v107.__sinval;
          *&__p[v108 / 2] = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v109, COERCE_FLOAT(*(&v196 + v108 * 4))), v170, *&v196.f32[v108], 1), v110, *(&v196 + v108 * 4), 2), v160, *(&v196 + v108 * 4), 3);
          v108 += 4;
        }

        while (v108 != 16);
        v111 = 0;
        v196 = *__p;
        v197 = v201;
        v198 = v202;
        v199 = v203;
        v112 = v150;
        do
        {
          *&__p[v111 / 2] = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v175, COERCE_FLOAT(*(&v196 + v111 * 4))), v170, *&v196.f32[v111], 1), v165, *(&v196 + v111 * 4), 2), v181, *(&v196 + v111 * 4), 3);
          v111 += 4;
        }

        while (v111 != 16);
        v113 = 0;
        v208 = *__p;
        v209 = v201;
        v210 = v202;
        v211 = v203;
        v112.f32[0] = v193;
        v196 = *__p;
        v197 = v201;
        v198 = v202;
        v199 = v203;
        do
        {
          v112.f32[2] = v193 * -0.5;
          *&__p[v113 / 2] = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v175, COERCE_FLOAT(*(&v196 + v113 * 4))), v170, *&v196.f32[v113], 1), v165, *(&v196 + v113 * 4), 2), v112, *(&v196 + v113 * 4), 3);
          v113 += 4;
        }

        while (v113 != 16);
        v114 = 0;
        v196 = *__p;
        v197 = v201;
        v198 = v202;
        v199 = v203;
        do
        {
          *&__p[v114 / 2] = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v187, COERCE_FLOAT(*(&v196 + v114 * 4))), v191, *&v196.f32[v114], 1), v189, *(&v196 + v114 * 4), 2), v186, *(&v196 + v114 * 4), 3);
          v114 += 4;
        }

        while (v114 != 16);
        v115 = 0;
        v208 = *__p;
        v209 = v201;
        v210 = v202;
        v211 = v203;
        v116.i64[0] = 0;
        v116.i64[1] = __PAIR64__(v160.u32[3], v155 * -4.0);
        v196 = v175;
        v197 = v170;
        v198 = v165;
        v199 = v160;
        do
        {
          *&__p[v115 / 2] = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v175, COERCE_FLOAT(*(&v196 + v115 * 4))), v170, *&v196.f32[v115], 1), v165, *(&v196 + v115 * 4), 2), v116, *(&v196 + v115 * 4), 3);
          v115 += 4;
        }

        while (v115 != 16);
        v117 = v24;
        v118 = 0;
        __asm { FMOV            V4.4S, #1.0 }

        _Q4.f32[0] = v185;
        _Q4.f32[1] = v185;
        v196 = *__p;
        v197 = v201;
        v198 = v202;
        v199 = v203;
        do
        {
          _Q1 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v187, COERCE_FLOAT(*(&v196 + v118))), v191, *&v196.f32[v118 / 4], 1), v189, *(&v196 + v118), 2), v186, *(&v196 + v118), 3);
          *&__p[v118 / 8] = _Q1;
          v118 += 16;
        }

        while (v118 != 64);
        v39 = 0;
        _Q4.f32[2] = v185;
        v29 = *__p;
        v30 = v201;
        v42 = 2;
        v192.i32[0] = 1.0;
        v184 = v27;
        v24 = v26;
        v36 = v25;
        v176 = v117;
LABEL_169:
        v28 = 1.0;
        v31 = v202;
        v32 = v203;
        goto LABEL_76;
      case 20:
        v176 = v26;
        if ((*(a2 + 581) & 8) != 0)
        {
          v39 = 0;
          v42 = 1;
          v184 = v25;
          v192.i32[0] = 1.0;
          v28 = 1.0;
LABEL_171:
          v36 = v27;
LABEL_75:
          _Q4 = v179;
        }

        else
        {
          v154 = 1.0 - v8.f32[0];
          v159 = v32;
          v148 = v24;
          v164 = v31;
          v169 = v30;
          v174 = v29;
          v194[0] = MEMORY[0x277D85DD0];
          v194[1] = 3221225472;
          v194[2] = ___ZN17SKCTransitionNode12addRenderOpsEP13SKCRenderInfoRKNSt3__110shared_ptrI18jet_command_bufferEE_block_invoke;
          v194[3] = &__block_descriptor_44_e69_v24__0_shared_ptr_jet_context____jet_context_____shared_weak_count__8l;
          v194[4] = a1;
          v195 = v8.i32[0];
          SKCPerformResourceOperation(v194);
          v24 = *(a1 + 640);
          v30 = v169;
          v29 = v174;
          v32 = v159;
          v31 = v164;
          _Q4 = v179;
          v28 = v154;
          if (v24)
          {
            v60 = *(a1 + 648);
            if (v60)
            {
              atomic_fetch_add_explicit(&v60->__shared_owners_, 1uLL, memory_order_relaxed);
            }

            v184 = v60;
            if (v25)
            {
              std::__shared_weak_count::__release_shared[abi:ne200100](v25);
              _Q4 = v179;
              v32 = v159;
              v31 = v164;
              v30 = v169;
              v29 = v174;
            }

            v42 = 0;
            v39 = 1;
            v36 = v27;
            v192.i32[0] = 1.0;
LABEL_160:
            v28 = 1.0;
          }

          else
          {
            v39 = 0;
            v42 = 1;
            v184 = v25;
            v24 = v148;
            v36 = v27;
          }
        }

LABEL_76:
        v66 = 6 * (v183 >> 2);
        v67 = 4 * v42;
        if (*(a1 + 727) == 1)
        {
          for (i = 0; i != 32; i += 8)
          {
            *(&v225 + i + 4) = 1.0 - *(&v225 + i + 4);
          }

          if ((v39 & 1) == 0)
          {
            if (v67 <= 1)
            {
              v69 = 1;
            }

            else
            {
              v69 = v67;
            }

            v70 = &v220 + 1;
            do
            {
              *v70 = 1.0 - *v70;
              v70 += 2;
              --v69;
            }

            while (v69);
          }
        }

        v71 = 0;
        _Q1.f32[0] = v28 * 255.0;
        v72 = vcvtq_s32_f32(vmulq_f32(vmulq_n_f32(_Q4, v192.f32[0]), vdupq_n_s32(0x437F0000u)));
        _Q1.i32[0] = vuzp1_s8(vdup_lane_s16(vmovn_s32(vcvtq_s32_f32(_Q1)), 0), *v72.i8).u32[0];
        do
        {
          *(*(a2 + 3) + 16 * (v71 + *a2)) = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v29, COERCE_FLOAT(xmmword_21C4B8AC0[v71])), v30, *&xmmword_21C4B8AC0[v71], 1), v31, xmmword_21C4B8AC0[v71], 2), v32, xmmword_21C4B8AC0[v71], 3);
          *(*(a2 + 2) + 8 * (v71 + *a2)) = *(&v225 + v71);
          *(*(a2 + 1) + 4 * (v71++ + *a2)) = _Q1.i32[0];
        }

        while (v71 != 4);
        if ((v39 & 1) == 0)
        {
          v73 = 0;
          v74 = vmovn_s32(v72);
          if (v67 <= 1)
          {
            v75 = 1;
          }

          else
          {
            v75 = v67;
          }

          v76 = vuzp1_s8(v74, v74).u32[0];
          do
          {
            v77 = &v204 + 4 * (v73 >> 2);
            *(*(a2 + 3) + 16 * (v73 + *a2 + 4)) = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(*v77, COERCE_FLOAT(*(&v212 + v73))), v77[1], *(&v212 + v73), 1), v77[2], *(&v212 + v73), 2), v77[3], *(&v212 + v73), 3);
            *(*(a2 + 2) + 8 * (v73 + *a2 + 4)) = *(&v220 + v73);
            *(*(a2 + 1) + 4 * (v73++ + *a2 + 4)) = v76;
          }

          while (v75 != v73);
        }

        v78 = *a3;
        v79 = *(a2 + 21);
        LODWORD(__p[0]) = 31;
        v80 = *(v78 + 16);
        if (v80 >= *(v78 + 24))
        {
          v81 = std::vector<jet_render_op>::__emplace_back_slow_path<jet_render_opcode>(v78 + 8, __p);
        }

        else
        {
          *v80 = &unk_282E15828;
          *(v80 + 8) = 31;
          *(v80 + 24) = 0;
          *(v80 + 32) = 0;
          *(v80 + 16) = 0;
          *(v80 + 64) = 0;
          v81 = v80 + 192;
          *(v80 + 96) = 0;
        }

        *(v78 + 16) = v81;
        *(v81 - 80) = v79;
        *(v81 - 64) = xmmword_21C4B8530;
        *(v81 - 48) = 0x230000000FLL;
        v82 = *a3;
        std::string::basic_string[abi:ne200100]<0>(__p, "a_position");
        jet_command_buffer::set_vertex_buffer(v82, __p, *(a2 + 41));
        if (v201.i8[7] < 0)
        {
          operator delete(__p[0]);
        }

        v83 = *a3;
        std::string::basic_string[abi:ne200100]<0>(__p, "a_color");
        jet_command_buffer::set_vertex_buffer(v83, __p, *(a2 + 42));
        if (v201.i8[7] < 0)
        {
          operator delete(__p[0]);
        }

        v84 = *a3;
        std::string::basic_string[abi:ne200100]<0>(__p, "a_tex_coord");
        jet_command_buffer::set_vertex_buffer(v84, __p, *(a2 + 43));
        if (v201.i8[7] < 0)
        {
          operator delete(__p[0]);
        }

        v85 = *a3;
        std::string::basic_string[abi:ne200100]<0>(__p, "u_texture");
        jet_command_buffer::set_fragment_texture(v85, __p, v24);
        if (v201.i8[7] < 0)
        {
          operator delete(__p[0]);
        }

        v86 = *a3;
        std::string::basic_string[abi:ne200100]<0>(__p, "u_texture");
        jet_command_buffer::set_fragment_sampler(v86, __p, *(a2 + 60));
        if (v201.i8[7] < 0)
        {
          operator delete(__p[0]);
        }

        jet_command_buffer::draw_indexed(*a3, 3, *(a2 + 50), v66, 6);
        v87 = *(a2 + 83);
        v88 = v87[43];
        v89 = v66 + 6;
        if (v88 <= v66 + 6)
        {
          v88 = v66 + 6;
        }

        v87[43] = v88;
        ++v87[41];
        ++v87[37];
        if ((v39 & 1) == 0)
        {
          v90 = *a3;
          std::string::basic_string[abi:ne200100]<0>(__p, "u_texture");
          jet_command_buffer::set_fragment_texture(v90, __p, v176);
          if (v201.i8[7] < 0)
          {
            operator delete(__p[0]);
          }

          v91 = *a3;
          std::string::basic_string[abi:ne200100]<0>(__p, "u_texture");
          jet_command_buffer::set_fragment_sampler(v91, __p, *(a2 + 60));
          if (v201.i8[7] < 0)
          {
            operator delete(__p[0]);
          }

          jet_command_buffer::draw_indexed(*a3, 3, *(a2 + 50), v89, 6 * v42);
          v92 = *(a2 + 83);
          v93 = v92[43];
          if (v93 <= 6 * v42 + v89)
          {
            v93 = 6 * v42 + v89;
          }

          v92[43] = v93;
          ++v92[41];
          v92[37] += v42;
        }

        *a2 += v67 + 4;
        if (v36)
        {
          std::__shared_weak_count::__release_shared[abi:ne200100](v36);
        }

        if (v184)
        {
          std::__shared_weak_count::__release_shared[abi:ne200100](v184);
        }

        break;
      default:
        v176 = v26;
        v39 = 0;
        v42 = 1;
        v184 = v25;
        goto LABEL_171;
    }
  }

  else
  {

    SKCNode::addRenderOps();
  }
}

void sub_21C4061B0(_Unwind_Exception *a1)
{
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  }

  if (v1)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v1);
  }

  _Unwind_Resume(a1);
}

double sk_matrix_scale(simd_float4x4 a1, float32_t a2, float32_t a3, float32_t a4)
{
  v4 = 0;
  v6 = *MEMORY[0x277D860B8];
  v7 = *(MEMORY[0x277D860B8] + 16);
  v8 = *(MEMORY[0x277D860B8] + 32);
  v5 = *(MEMORY[0x277D860B8] + 48);
  v6.f32[0] = a2;
  v7.f32[1] = a3;
  v8.f32[2] = a4;
  v10[2] = a1.columns[2];
  v10[3] = a1.columns[3];
  do
  {
    *(&v11 + v4 * 16) = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v6, COERCE_FLOAT(v10[v4])), v7, *&v10[v4], 1), v8, v10[v4], 2), v5, v10[v4], 3);
    ++v4;
  }

  while (v4 != 4);
  return *&v11;
}

void ___ZN17SKCTransitionNode12addRenderOpsEP13SKCRenderInfoRKNSt3__110shared_ptrI18jet_command_bufferEE_block_invoke(uint64_t a1, void *a2)
{
  v4 = *(a1 + 32);
  v5 = (*(**a2 + 48))(*a2, *(v4 + 608));
  v6 = (*(**a2 + 48))(*a2, *(v4 + 624));
  v7 = *(v4 + 568);
  [v7 setValue:v5 forKey:@"inputImage"];
  [v7 setValue:v6 forKey:@"inputTargetImage"];
  v8 = [MEMORY[0x277CCABB0] numberWithDouble:*(a1 + 40)];
  [v7 setValue:v8 forKey:@"inputTime"];

  v9 = [v7 valueForKey:@"outputImage"];
  if (v9)
  {
    v10 = (*(**a2 + 40))(*a2, v9);
    std::shared_ptr<jet_texture>::shared_ptr[abi:ne200100]<jet_texture,0>(&v12, v10);
  }

  v11 = *(v4 + 648);
  *(v4 + 640) = 0u;
  if (v11)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v11);
  }
}

std::string *jet_command_buffer::set_fragment_texture(uint64_t a1, std::string *__str, uint64_t a3)
{
  v9 = 8;
  v6 = *(a1 + 16);
  if (v6 >= *(a1 + 24))
  {
    v7 = std::vector<jet_render_op>::__emplace_back_slow_path<jet_render_opcode>(a1 + 8, &v9);
  }

  else
  {
    *v6 = &unk_282E15828;
    *(v6 + 8) = 8;
    *(v6 + 24) = 0;
    *(v6 + 32) = 0;
    *(v6 + 16) = 0;
    *(v6 + 64) = 0;
    v7 = v6 + 192;
    *(v6 + 96) = 0;
  }

  *(a1 + 16) = v7;
  *(v7 - 80) = a3;
  return std::string::operator=((v7 - 176), __str);
}

std::string *jet_command_buffer::set_fragment_sampler(uint64_t a1, std::string *__str, uint64_t a3)
{
  v9 = 30;
  v6 = *(a1 + 16);
  if (v6 >= *(a1 + 24))
  {
    v7 = std::vector<jet_render_op>::__emplace_back_slow_path<jet_render_opcode>(a1 + 8, &v9);
  }

  else
  {
    *v6 = &unk_282E15828;
    *(v6 + 8) = 30;
    *(v6 + 24) = 0;
    *(v6 + 32) = 0;
    *(v6 + 16) = 0;
    *(v6 + 64) = 0;
    v7 = v6 + 192;
    *(v6 + 96) = 0;
  }

  *(a1 + 16) = v7;
  *(v7 - 80) = a3;
  return std::string::operator=((v7 - 176), __str);
}

char *SKCTransitionNode::addRenderableChildren(char *result, uint64_t a2, uint64_t a3)
{
  if (!*(result + 75))
  {
    return SKCNode::addRenderableChildren(result, a2, a3);
  }

  return result;
}

void SKCTransitionNode::ensure_framebuffers(uint64_t a1, uint64_t a2, __n128 a3)
{
  v22 = a3.n128_u32[3];
  v5 = a3.n128_u32[2];
  if (*(a1 + 576) != 1 || (*(a1 + 724) & 1) == 0)
  {
    v6 = *(a1 + 608);
    if (!v6)
    {
      goto LABEL_11;
    }

    if ((**v6)(v6) < a3.n128_u32[2] || (*(**(a1 + 608) + 8))(*(a1 + 608)) < v22)
    {
      v7 = *(a1 + 616);
      v8 = 0uLL;
      *(a1 + 608) = 0u;
      if (v7)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v7);
        v8 = 0uLL;
      }

      v9 = *(a1 + 664);
      *(a1 + 656) = v8;
      if (v9)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v9);
      }
    }

    if (!*(a1 + 608))
    {
LABEL_11:
      SKCRenderer::getBackingContext(*(a2 + 104), &v23);
      texture_2d = jet_context::create_texture_2d();
      std::shared_ptr<jet_texture>::shared_ptr[abi:ne200100]<jet_texture,0>(&v24, texture_2d);
    }
  }

  if (*(a1 + 577) != 1 || (*(a1 + 725) & 1) == 0)
  {
    v11 = *(a1 + 624);
    if (!v11)
    {
      goto LABEL_22;
    }

    if ((**v11)(v11) < v5 || (*(**(a1 + 624) + 8))(*(a1 + 624)) < v22)
    {
      v12 = *(a1 + 632);
      v13 = 0uLL;
      *(a1 + 624) = 0u;
      if (v12)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v12);
        v13 = 0uLL;
      }

      v14 = *(a1 + 680);
      *(a1 + 672) = v13;
      if (v14)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v14);
      }
    }

    if (!*(a1 + 624))
    {
LABEL_22:
      SKCRenderer::getBackingContext(*(a2 + 104), &v23);
      v15 = jet_context::create_texture_2d();
      std::shared_ptr<jet_texture>::shared_ptr[abi:ne200100]<jet_texture,0>(&v24, v15);
    }
  }

  if (!*(a1 + 688))
  {
    SKCRenderer::getBackingContext(*(a2 + 104), &v23);
    v16 = (*(*v23 + 112))(v23);
    std::shared_ptr<jet_framebuffer>::shared_ptr[abi:ne200100]<jet_framebuffer,0>(&v24, v16);
  }

  v17 = *(a1 + 704);
  if (!v17)
  {
    SKCRenderer::getBackingContext(*(a2 + 104), &v23);
    v18 = (*(*v23 + 112))(v23);
    std::shared_ptr<jet_framebuffer>::shared_ptr[abi:ne200100]<jet_framebuffer,0>(&v24, v18);
  }

  v19 = *(a1 + 688);
  v19[2] = *(a1 + 608);
  v20 = *(a1 + 656);
  v19[26] = v20;
  v19[29] = v20;
  v17[2] = *(a1 + 624);
  v21 = *(a1 + 672);
  v17[26] = v21;
  v17[29] = v21;
}

void sub_21C406A64(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, std::__shared_weak_count *a12)
{
  if (a12)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a12);
  }

  _Unwind_Resume(exception_object);
}

uint64_t SKCTransitionNode::addRequistePasses(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (*(a1 + 600) && *(a1 + 726) != 1)
  {
    SKCTransitionNode::ensure_framebuffers(a1, a2, *(*(*a3 + 16) + 48));
    operator new();
  }

  return SKCNode::addRequistePasses();
}

void sub_21C406DD8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, std::__shared_weak_count *a12, uint64_t a13, std::__shared_weak_count *a14, uint64_t a15, std::__shared_weak_count *a16)
{
  if (a12)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a12);
  }

  if (a14)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a14);
  }

  if (a16)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a16);
  }

  v18 = *(v16 - 40);
  if (v18)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v18);
  }

  _Unwind_Resume(exception_object);
}

void SKCTransitionNode::setInputTextures(void *a1, uint64_t *a2, uint64_t *a3)
{
  v6 = *a2;
  v5 = a2[1];
  if (v5)
  {
    atomic_fetch_add_explicit((v5 + 8), 1uLL, memory_order_relaxed);
  }

  a1[76] = v6;
  v7 = a1[77];
  a1[77] = v5;
  if (v7)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v7);
  }

  v9 = *a3;
  v8 = a3[1];
  if (v8)
  {
    atomic_fetch_add_explicit((v8 + 8), 1uLL, memory_order_relaxed);
  }

  a1[78] = v9;
  v10 = a1[79];
  a1[79] = v8;
  if (v10)
  {

    std::__shared_weak_count::__release_shared[abi:ne200100](v10);
  }
}

void SKCTransitionNode::~SKCTransitionNode(SKCTransitionNode *this)
{
  *this = &unk_282E15D98;
  *(this + 37) = 0u;
  v2 = *(this + 71);
  *(this + 71) = 0;

  v3 = *(this + 89);
  if (v3)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v3);
  }

  v4 = *(this + 87);
  if (v4)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v4);
  }

  v5 = *(this + 85);
  if (v5)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v5);
  }

  v6 = *(this + 83);
  if (v6)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v6);
  }

  v7 = *(this + 81);
  if (v7)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v7);
  }

  v8 = *(this + 79);
  if (v8)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v8);
  }

  v9 = *(this + 77);
  if (v9)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v9);
  }

  SKCNode::~SKCNode(this);
}

{
  SKCTransitionNode::~SKCTransitionNode(this);

  JUMPOUT(0x21CF0A160);
}

void SKCRenderSortGroup::~SKCRenderSortGroup(SKCRenderSortGroup *this)
{
  SKCRenderSortGroup::~SKCRenderSortGroup(this);

  JUMPOUT(0x21CF0A160);
}

{
  *this = &unk_282E15E98;
  v2 = (this + 32);
  v3 = *(this + 5);
  if (v3 != (this + 32))
  {
    do
    {
      v4 = v3[2];
      if (v4)
      {
        MEMORY[0x21CF0A160](v4, 0x1020C40601E13ABLL);
      }

      v3 = v3[1];
    }

    while (v3 != v2);
  }

  std::__list_imp<SKCRenderSortInfo *>::clear(v2);
  v5 = *(this + 15);
  if (v5)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v5);
  }

  v6 = *(this + 13);
  if (v6)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v6);
  }

  v7 = *(this + 11);
  if (v7)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v7);
  }

  std::__list_imp<SKCRenderSortInfo *>::clear(this + 7);
  std::__list_imp<SKCRenderSortInfo *>::clear(v2);
  v8 = *(this + 1);
  if (v8)
  {
    *(this + 2) = v8;
    operator delete(v8);
  }
}

void *std::__list_imp<SKCRenderSortInfo *>::clear(void *result)
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

void std::shared_ptr<SKCRenderPass>::shared_ptr[abi:ne200100]<SKCRenderPass,0>(void *a1, uint64_t a2)
{
  *a1 = a2;
  v2 = a2;
  operator new();
}

void sub_21C407248(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  std::unique_ptr<SKCRenderPass>::~unique_ptr[abi:ne200100](va);
  _Unwind_Resume(a1);
}

uint64_t **std::unique_ptr<SKCRenderPass>::~unique_ptr[abi:ne200100](uint64_t **a1)
{
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    std::__list_imp<std::shared_ptr<SKCRenderSortGroup>>::clear(v2 + 3);
    std::__list_imp<std::shared_ptr<SKCRenderSortGroup>>::clear(v2);
    MEMORY[0x21CF0A160](v2, 0x1020C405F2492B9);
  }

  return a1;
}

void std::__shared_ptr_pointer<SKCRenderPass *,std::shared_ptr<SKCRenderPass>::__shared_ptr_default_delete<SKCRenderPass,SKCRenderPass>,std::allocator<SKCRenderPass>>::~__shared_ptr_pointer(std::__shared_weak_count *a1)
{
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x21CF0A160);
}

uint64_t std::__shared_ptr_pointer<SKCRenderPass *,std::shared_ptr<SKCRenderPass>::__shared_ptr_default_delete<SKCRenderPass,SKCRenderPass>,std::allocator<SKCRenderPass>>::__get_deleter(uint64_t a1, uint64_t a2)
{
  {
    return a1;
  }

  else
  {
    return 0;
  }
}

void std::default_delete<SKCRenderPass>::operator()[abi:ne200100](uint64_t a1, uint64_t *a2)
{
  if (a2)
  {
    std::__list_imp<std::shared_ptr<SKCRenderSortGroup>>::clear(a2 + 3);
    std::__list_imp<std::shared_ptr<SKCRenderSortGroup>>::clear(a2);

    JUMPOUT(0x21CF0A160);
  }
}

void std::__list_imp<std::shared_ptr<SKCRenderSortGroup>>::clear(uint64_t *a1)
{
  if (a1[2])
  {
    v2 = a1[1];
    v3 = *(*a1 + 8);
    v4 = *v2;
    *(v4 + 8) = v3;
    *v3 = v4;
    a1[2] = 0;
    if (v2 != a1)
    {
      do
      {
        v5 = v2[1];
        v6 = v2[3];
        if (v6)
        {
          std::__shared_weak_count::__release_shared[abi:ne200100](v6);
        }

        operator delete(v2);
        v2 = v5;
      }

      while (v5 != a1);
    }
  }
}

void sub_21C407474(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    std::shared_ptr<SKCRenderSortGroup>::shared_ptr[abi:ne200100]<SKCRenderSortGroup,0>(v1);
  }

  _Unwind_Resume(exception_object);
}

void std::__shared_ptr_pointer<SKCRenderSortGroup *,std::shared_ptr<SKCRenderSortGroup>::__shared_ptr_default_delete<SKCRenderSortGroup,SKCRenderSortGroup>,std::allocator<SKCRenderSortGroup>>::~__shared_ptr_pointer(std::__shared_weak_count *a1)
{
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x21CF0A160);
}

uint64_t std::__shared_ptr_pointer<SKCRenderSortGroup *,std::shared_ptr<SKCRenderSortGroup>::__shared_ptr_default_delete<SKCRenderSortGroup,SKCRenderSortGroup>,std::allocator<SKCRenderSortGroup>>::__on_zero_shared(uint64_t a1)
{
  result = *(a1 + 24);
  if (result)
  {
    return (*(*result + 8))();
  }

  return result;
}

uint64_t std::__shared_ptr_pointer<SKCRenderSortGroup *,std::shared_ptr<SKCRenderSortGroup>::__shared_ptr_default_delete<SKCRenderSortGroup,SKCRenderSortGroup>,std::allocator<SKCRenderSortGroup>>::__get_deleter(uint64_t a1, uint64_t a2)
{
  {
    return a1;
  }

  else
  {
    return 0;
  }
}

void SKCCropNode::SKCCropNode(SKCCropNode *this)
{
  SKCNode::SKCNode(this);
  *v1 = &unk_282E15FB8;
  *(v1 + 560) = 0;
  *(v1 + 688) = 0;
  *(v1 + 568) = 0u;
  *(v1 + 584) = 0u;
  *(v1 + 600) = 0u;
  *(v1 + 616) = 0u;
  *(v1 + 632) = 0u;
  *(v1 + 648) = 0u;
  *(v1 + 664) = 0;
}

void SKCCropNode::checkShouldUseStencilMethod(SKCCropNode *this, SKCRenderInfo *a2)
{
  v3 = *(this + 688);
  if (v3 == 1)
  {
    *(this + 560) = 0;
  }

  else
  {
    v4 = *(this + 71);
    if (!v4 || (*(a2 + 580) & 0x80) != 0)
    {
      *(this + 560) = 1;
    }

    else
    {
      v8 = 0;
      v9 = &v8;
      v10 = 0x2020000000;
      if (*(a2 + 576))
      {
        LOBYTE(v3) = 1;
      }

      v11 = v3;
      if (v3 & 1) != 0 || (v7[0] = MEMORY[0x277D85DD0], v7[1] = 3221225472, v7[2] = ___ZN11SKCCropNode27checkShouldUseStencilMethodEP13SKCRenderInfo_block_invoke, v7[3] = &unk_27830FDA8, v7[4] = &v8, SKCNode::walkDown(v4, v7, 1, 1), (v9[3]))
      {
        v5 = 0;
      }

      else
      {
        v6[0] = MEMORY[0x277D85DD0];
        v6[1] = 3221225472;
        v6[2] = ___ZN11SKCCropNode27checkShouldUseStencilMethodEP13SKCRenderInfo_block_invoke_2;
        v6[3] = &unk_27830FDA8;
        v6[4] = &v8;
        SKCNode::walkDown(this, v6, 0, 1);
        v5 = *(v9 + 24) ^ 1;
      }

      *(this + 560) = v5 & 1;
      _Block_object_dispose(&v8, 8);
    }
  }
}

uint64_t ___ZN11SKCCropNode27checkShouldUseStencilMethodEP13SKCRenderInfo_block_invoke(uint64_t a1, SKCNode *a2, _BYTE *a3)
{
  result = maskNodeRequiresAlphaMask(a2);
  if (result)
  {
    *(*(*(a1 + 32) + 8) + 24) = 1;
    *a3 = 1;
  }

  return result;
}

uint64_t maskNodeRequiresAlphaMask(SKCNode *a1)
{
  if (!a1)
  {
    return 0;
  }

  if (v2)
  {
    if (!v2[74])
    {
      return 0;
    }
  }

  {
    if (!v4)
    {
      if (!v4)
      {
        return 0;
      }
    }

    if (!v4[72])
    {
      return 0;
    }
  }

  return 1;
}

SKCEffectNode *___ZN11SKCCropNode27checkShouldUseStencilMethodEP13SKCRenderInfo_block_invoke_2(SKCEffectNode *result, void *lpsrc, _BYTE *a3)
{
  if (lpsrc)
  {
    v5 = result;
    {
      *(*(*(v5 + 4) + 8) + 24) = 1;
      *a3 = 1;
    }
  }

  return result;
}

void SKCCropNode::setMaskNode(SKCNode *this, SKCNode *a2)
{
  v2 = *(this + 71);
  if (v2)
  {
    *(v2 + 80) = 0;
  }

  *(this + 71) = a2;
  if (a2)
  {
    *(a2 + 10) = this;
  }

  SKCNode::setDirty(this);
}

uint64_t SKCCropNode::update(SKCCropNode *this, double a2, float a3)
{
  SKCNode::update(this, a2, 1.0);
  result = *(this + 71);
  if (result)
  {
    result = (*(*result + 152))(result, a2, 1.0);
    *(this + 69) |= *(*(this + 71) + 276) | *(*(this + 71) + 272);
  }

  return result;
}

double SKCCropNode::getBatchInfo@<D0>(uint64_t a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  if (!*(a2 + 568) || (*(a3 + 580) & 0x80) != 0 || *(a2 + 560) == 1)
  {
    return SKCNode::getBatchInfo(a1);
  }

  v4 = *(a2 + 656);
  *(a1 + 16) = 0u;
  *(a1 + 32) = 0u;
  v5 = 296;
  if (*(a2 + 689))
  {
    v5 = 312;
  }

  *a1 = 0;
  *(a1 + 48) = 0uLL;
  *(a1 + 60) = 0uLL;
  v6 = *(a3 + v5);
  *(a1 + 32) = *(a2 + 608);
  *(a1 + 40) = v4;
  *(a1 + 24) = v6;
  *(a1 + 12) = 0;
  *&result = 0x300000004;
  *(a1 + 4) = 0x300000004;
  return result;
}

uint64_t SKCCropNode::getMaxBatchRenderElementCount(uint64_t a1)
{
  if (*(a1 + 560))
  {
    return 0;
  }

  else
  {
    return 4;
  }
}

uint64_t SKCCropNode::addBatchRenderElements(uint64_t a1, float32x4_t *a2, float32x4_t a3)
{
  v26 = *MEMORY[0x277D85DE8];
  if (!*(a1 + 568) || a2[36].i8[4] < 0 || *(a1 + 560) == 1)
  {

    return SKCNode::addBatchRenderElements();
  }

  else
  {
    v4 = 0;
    a3.f32[0] = fminf(fmaxf(*(a1 + 324) * a2[6].f32[0], 0.0), 1.0) * 255.0;
    *a3.f32 = vdup_lane_s16(vmovn_s32(vcvtq_s32_f32(a3)), 0);
    v5 = *(a1 + 672);
    *(&v6 + 1) = 0x3F80000000000000;
    *&v7 = *(a1 + 672);
    *(&v7 + 1) = 0x3F80000000000000;
    v8 = xmmword_21C4B84C0;
    *&v8 = *&v5 + COERCE_FLOAT(*(a1 + 680));
    v9 = v8;
    DWORD1(v9) = DWORD1(v7);
    *(&v8 + 1) = *(&v7 + 1) + *(&v5 + 3);
    v22 = v7;
    v23 = v9;
    LODWORD(v6) = v5;
    *(&v6 + 1) = *(&v7 + 1) + *(&v5 + 3);
    v24 = v8;
    v25 = v6;
    v10 = a2[2];
    v11 = a2[3];
    v12 = a2[4];
    v13 = a2[5];
    do
    {
      *(&v22 + v4) = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v10, COERCE_FLOAT(*(&v22 + v4))), v11, *(&v22 + v4), 1), v12, *(&v22 + v4), 2), v13, *(&v22 + v4), 3);
      v4 += 16;
    }

    while (v4 != 64);
    v14 = v23;
    *(a2[1].i64[1] + 16 * a2->u32[0]) = v22;
    *(a2[1].i64[1] + 16 * (a2->i32[0] + 1)) = v14;
    v15 = v25;
    *(a2[1].i64[1] + 16 * (a2->i32[0] + 2)) = v24;
    *(a2[1].i64[1] + 16 * (a2->i32[0] + 3)) = v15;
    *(a2[1].i64[0] + 8 * a2->u32[0]) = 0;
    *(a2[1].i64[0] + 8 * (a2->i32[0] + 1)) = 1065353216;
    __asm { FMOV            V1.2S, #1.0 }

    *(a2[1].i64[0] + 8 * (a2->i32[0] + 2)) = _D1;
    *(a2[1].i64[0] + 8 * (a2->i32[0] + 3)) = 0x3F80000000000000;
    v21 = vuzp1_s8(*a3.f32, *a3.f32).u32[0];
    *(a2->i64[1] + 4 * a2->u32[0]) = v21;
    *(a2->i64[1] + 4 * (a2->i32[0] + 1)) = v21;
    *(a2->i64[1] + 4 * (a2->i32[0] + 2)) = v21;
    *(a2->i64[1] + 4 * (a2->i32[0] + 3)) = v21;
    return 4;
  }
}

void SKCCropNode::addRenderableChildren(SKCCropNode *a1, SKCRenderInfo *a2, uint64_t a3)
{
  SKCCropNode::checkShouldUseStencilMethod(a1, a2);
  if (!*(a1 + 71) || (*(a2 + 580) & 0x80) != 0)
  {

    SKCNode::addRenderableChildren(a1, a2, a3);
  }
}

void SKCCropNode::ensure_framebuffers(uint64_t a1, uint64_t a2)
{
  v40 = 0;
  v41 = &v40;
  v42 = 0x7012000000;
  v43 = __Block_byref_object_copy_;
  v44 = __Block_byref_object_dispose_;
  v45 = "";
  v46 = SKCBoundingBoxEmpty;
  v47 = *algn_21C4B92D0;
  v48 = xmmword_21C4B92E0;
  v49 = unk_21C4B92F0;
  v39[0] = MEMORY[0x277D85DD0];
  v39[1] = 3221225472;
  v39[2] = ___ZN11SKCCropNode19ensure_framebuffersEP13SKCRenderInfoDv4_j_block_invoke;
  v39[3] = &unk_27830FDA8;
  v39[4] = &v40;
  SKCNode::walkChildren(a1, v39, 0, 1);
  v4 = v41;
  if (*(a1 + 689) == 1)
  {
    v38.columns[0] = SKCNode::getAccumulatedBoundingBox(*(a1 + 568));
    v38.columns[1] = v5;
    v38.columns[2] = v6;
    v38.columns[3] = v7;
    v8 = SKCBoundingBoxUnion(&v4[3], &v38);
  }

  else
  {
    v38.columns[0] = SKCNode::getAccumulatedBoundingBox(*(a1 + 568));
    v38.columns[1] = v12;
    v38.columns[2] = v13;
    v38.columns[3] = v14;
    *v8.i64 = SKCBoundingBoxIntersection(&v4[3], &v38);
  }

  v15 = v41;
  v41[3] = v8;
  v15[4] = v9;
  v15[5] = v10;
  v15[6] = v11;
  AABB = SKCBoundingBoxGetAABB(&v15[3]);
  v34 = vmaxnm_f32(*&vextq_s8(AABB, AABB, 8uLL), vdup_n_s32(0x3DCCCCCDu));
  *&AABB.u32[2] = v34;
  *(a1 + 672) = AABB;
  SKCRenderer::getBackingContext(*(a2 + 104), &v38);
  v17 = (*(*v38.columns[0].i64[0] + 152))(v38.columns[0].i64[0], 0);
  v18 = vrndp_f32(v34);
  v19.n128_u64[0] = vmaxnm_f32(vadd_f32(v18, v18), 0x4000000040000000);
  v20 = v17;
  if (v19.n128_f32[0] > v17)
  {
    v21 = v19.n128_f32[0] - v20;
    v19.n128_f32[0] = v17;
    *(a1 + 680) = *(a1 + 680) + (v21 * -0.5);
  }

  v22 = v19.n128_f32[1];
  if (v19.n128_f32[1] > v20)
  {
    v19.n128_f32[1] = v17;
    *(a1 + 684) = *(a1 + 684) + ((v22 - v20) * -0.5);
  }

  v35 = v19;
  v23 = *(a1 + 608);
  if (!v23)
  {
    goto LABEL_18;
  }

  v24 = (**v23)(v23);
  if (v35.n128_f32[0] > v24 || v35.n128_f32[1] > (*(**(a1 + 608) + 8))(*(a1 + 608), v24, v35))
  {
    v25 = *(a1 + 616);
    v26 = 0uLL;
    *(a1 + 608) = 0u;
    if (v25)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v25);
      v26 = 0uLL;
    }

    v27 = *(a1 + 664);
    *(a1 + 656) = v26;
    if (v27)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v27);
    }

    v28 = *(a1 + 632);
    *(a1 + 624) = 0u;
    if (v28)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v28);
    }
  }

  if (!*(a1 + 608))
  {
LABEL_18:
    SKCRenderer::getBackingContext(*(a2 + 104), &v36);
    texture_2d = jet_context::create_texture_2d();
    std::shared_ptr<jet_texture>::shared_ptr[abi:ne200100]<jet_texture,0>(&v37, texture_2d);
  }

  v30 = *(a1 + 592);
  if (!v30)
  {
    SKCRenderer::getBackingContext(*(a2 + 104), &v36);
    v31 = (*(*v36 + 112))(v36);
    std::shared_ptr<jet_framebuffer>::shared_ptr[abi:ne200100]<jet_framebuffer,0>(&v37, v31);
  }

  v30[2] = *(a1 + 608);
  v32 = *(a1 + 624);
  v30[26] = v32;
  v30[29] = v32;
  v33 = *(a1 + 640);
  v33[2] = *(a1 + 656);
  v33[26] = v32;
  v33[29] = v32;
  if (v38.columns[0].i64[1])
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v38.columns[0].i64[1]);
  }

  _Block_object_dispose(&v40, 8);
}

void sub_21C40826C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, std::__shared_weak_count *a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, char a29)
{
  if (a16)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a16);
  }

  _Block_object_dispose(&a29, 8);
  _Unwind_Resume(a1);
}

__n128 __Block_byref_object_copy_(uint64_t a1, uint64_t a2)
{
  result = *(a2 + 48);
  v3 = *(a2 + 64);
  v4 = *(a2 + 96);
  *(a1 + 80) = *(a2 + 80);
  *(a1 + 96) = v4;
  *(a1 + 48) = result;
  *(a1 + 64) = v3;
  return result;
}

void ___ZN11SKCCropNode19ensure_framebuffersEP13SKCRenderInfoDv4_j_block_invoke(uint64_t a1, char **this)
{
  v3 = *(*(a1 + 32) + 8);
  v12.columns[0] = SKCNode::getAccumulatedBoundingBox(this);
  v12.columns[1] = v4;
  v12.columns[2] = v5;
  v12.columns[3] = v6;
  v7 = SKCBoundingBoxUnion((v3 + 48), &v12);
  v8 = *(*(a1 + 32) + 8);
  *(v8 + 48) = v7;
  *(v8 + 64) = v9;
  *(v8 + 80) = v10;
  *(v8 + 96) = v11;
}

uint64_t SKCCropNode::addRequistePasses(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 568) && (*(a2 + 580) & 0x80) == 0 && *(a1 + 560) != 1)
  {
    SKCCropNode::ensure_framebuffers(a1, a2);
    (***(a1 + 608))(*(a1 + 608));
    (*(**(a1 + 608) + 8))(*(a1 + 608));
    operator new();
  }

  return SKCNode::addRequistePasses();
}

void sub_21C4086C0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, std::__shared_weak_count *a14)
{
  if (a14)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a14);
  }

  _Unwind_Resume(exception_object);
}

uint64_t SKCCropNode::addSubGroups(uint64_t result, float32x4_t *a2)
{
  v3 = result;
  if (!*(result + 568) || a2[36].i8[4] < 0)
  {

    return SKCNode::addSubGroups();
  }

  else if (*(result + 560) == 1)
  {
    v31 = 0;
    v32 = &v31;
    v33 = 0x7012000000;
    v34 = __Block_byref_object_copy_;
    v37 = SKCBoundingBoxEmpty;
    v38 = *algn_21C4B92D0;
    v39 = xmmword_21C4B92E0;
    v35 = __Block_byref_object_dispose_;
    v36 = "";
    v40 = unk_21C4B92F0;
    v30[0] = MEMORY[0x277D85DD0];
    v30[1] = 3221225472;
    v30[2] = ___ZN11SKCCropNode12addSubGroupsEP13SKCRenderInfoPNSt3__14listINS2_10shared_ptrI18SKCRenderSortGroupEENS2_9allocatorIS6_EEEE_block_invoke;
    v30[3] = &unk_27830FDA8;
    v30[4] = &v31;
    SKCNode::walkChildren(result, v30, 0, 1);
    v4 = v32;
    v42.columns[0] = SKCNode::getAccumulatedBoundingBox(*(v3 + 568));
    v42.columns[1] = v5;
    v42.columns[2] = v6;
    v42.columns[3] = v7;
    v8 = SKCBoundingBoxUnion(&v4[3], &v42);
    v9 = v32;
    v32[3] = v8;
    v9[4] = v10;
    v9 += 3;
    v9[2] = v11;
    v9[3] = v12;
    *&v13 = SKCBoundingBoxGetVerts(v9);
    v14 = 0;
    v15 = a2[2];
    v16 = a2[3];
    v17 = a2[4];
    v18 = a2[5];
    v41[0] = v13;
    v41[1] = v19;
    v41[2] = v20;
    v41[3] = v21;
    do
    {
      v42.columns[v14] = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v15, COERCE_FLOAT(v41[v14])), v16, *&v41[v14], 1), v17, v41[v14], 2), v18, v41[v14], 3);
      ++v14;
    }

    while (v14 != 4);
    v28 = v42.columns[2];
    v29 = v42.columns[0];
    v26 = v42.columns[1];
    v27 = v42.columns[3];
    SKCRenderer::getBackingContext(a2[6].i64[1], v41);
    v22 = *(v3 + 576);
    if (!v22)
    {
      v23 = (*(**&v41[0] + 16))(*&v41[0], 0, 4, 6);
      std::shared_ptr<jet_buffer_pool>::shared_ptr[abi:ne200100]<jet_buffer_pool,0>(&v42, v23);
    }

    jet_buffer_pool::next_buffer(v22);
    v24 = *(v3 + 576);
    data = jet_buffer_pool::get_data(v24);
    jet_buffer_pool::get_element_size(v24);
    *data = v29;
    data[1] = v26;
    data[2] = v28;
    data[3] = v28;
    data[4] = v27;
    data[5] = v29;
    operator new();
  }

  return result;
}

void sub_21C408ED4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, char a27)
{
  v29 = *(v27 - 200);
  if (v29)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v29);
  }

  _Block_object_dispose(&a27, 8);
  _Unwind_Resume(a1);
}

void ___ZN11SKCCropNode12addSubGroupsEP13SKCRenderInfoPNSt3__14listINS2_10shared_ptrI18SKCRenderSortGroupEENS2_9allocatorIS6_EEEE_block_invoke(uint64_t a1, char **this)
{
  v3 = *(*(a1 + 32) + 8);
  v12.columns[0] = SKCNode::getAccumulatedBoundingBox(this);
  v12.columns[1] = v4;
  v12.columns[2] = v5;
  v12.columns[3] = v6;
  v7 = SKCBoundingBoxUnion((v3 + 48), &v12);
  v8 = *(*(a1 + 32) + 8);
  *(v8 + 48) = v7;
  *(v8 + 64) = v9;
  *(v8 + 80) = v10;
  *(v8 + 96) = v11;
}

void SKCCropNode::~SKCCropNode(SKCCropNode *this)
{
  *this = &unk_282E15FB8;
  v2 = *(this + 71);
  if (v2 && *(v2 + 80) == this)
  {
    *(v2 + 80) = 0;
  }

  v3 = *(this + 83);
  if (v3)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v3);
  }

  v4 = *(this + 81);
  if (v4)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v4);
  }

  v5 = *(this + 79);
  if (v5)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v5);
  }

  v6 = *(this + 77);
  if (v6)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v6);
  }

  v7 = *(this + 75);
  if (v7)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v7);
  }

  v8 = *(this + 73);
  if (v8)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v8);
  }

  SKCNode::~SKCNode(this);
}

{
  SKCCropNode::~SKCCropNode(this);

  JUMPOUT(0x21CF0A160);
}

void jet_command_buffer::jet_command_buffer(jet_command_buffer *this, unint64_t a2)
{
  *this = &unk_282E160B8;
  *(this + 1) = 0;
  *(this + 2) = 0;
  *(this + 3) = 0;
  std::vector<jet_render_op>::reserve(this + 1, a2);
}

void sub_21C4091B0(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  std::vector<jet_render_op>::__destroy_vector::operator()[abi:ne200100](va);
  _Unwind_Resume(a1);
}

void *std::vector<jet_render_op>::reserve(void *result, unint64_t a2)
{
  if (0xAAAAAAAAAAAAAAABLL * ((result[2] - *result) >> 6) < a2)
  {
    if (a2 < 0x155555555555556)
    {
      std::__allocate_at_least[abi:ne200100]<std::allocator<jet_render_op>>(result, a2);
    }

    std::vector<jet_render_op>::__throw_length_error[abi:ne200100]();
  }

  return result;
}

void sub_21C409290(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  std::__split_buffer<jet_render_op>::~__split_buffer(va);
  _Unwind_Resume(a1);
}

void jet_command_buffer::~jet_command_buffer(jet_command_buffer *this)
{
  *this = &unk_282E160B8;
  v1 = (this + 8);
  std::vector<jet_render_op>::__destroy_vector::operator()[abi:ne200100](&v1);
}

{
  *this = &unk_282E160B8;
  v2 = (this + 8);
  std::vector<jet_render_op>::__destroy_vector::operator()[abi:ne200100](&v2);
  MEMORY[0x21CF0A160](this, 0xA1C4030951706);
}

void std::vector<jet_render_op>::__destroy_vector::operator()[abi:ne200100](void ***a1)
{
  v1 = *a1;
  v2 = **a1;
  if (v2)
  {
    v4 = v1[1];
    v5 = **a1;
    if (v4 != v2)
    {
      v6 = v4 - 192;
      v7 = v4 - 192;
      v8 = v4 - 192;
      do
      {
        v9 = *v8;
        v8 -= 192;
        (*v9)(v7);
        v6 -= 192;
        v10 = v7 == v2;
        v7 = v8;
      }

      while (!v10);
      v5 = **a1;
    }

    v1[1] = v2;

    operator delete(v5);
  }
}

void sub_21C409490(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    std::shared_ptr<jet_command_buffer>::shared_ptr[abi:ne200100]<jet_command_buffer,0>(v1);
  }

  _Unwind_Resume(exception_object);
}

void std::__shared_ptr_pointer<jet_command_buffer *,std::shared_ptr<jet_command_buffer>::__shared_ptr_default_delete<jet_command_buffer,jet_command_buffer>,std::allocator<jet_command_buffer>>::~__shared_ptr_pointer(std::__shared_weak_count *a1)
{
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x21CF0A160);
}

uint64_t std::__shared_ptr_pointer<jet_command_buffer *,std::shared_ptr<jet_command_buffer>::__shared_ptr_default_delete<jet_command_buffer,jet_command_buffer>,std::allocator<jet_command_buffer>>::__on_zero_shared(uint64_t a1)
{
  result = *(a1 + 24);
  if (result)
  {
    return (*(*result + 8))();
  }

  return result;
}

uint64_t std::__shared_ptr_pointer<jet_command_buffer *,std::shared_ptr<jet_command_buffer>::__shared_ptr_default_delete<jet_command_buffer,jet_command_buffer>,std::allocator<jet_command_buffer>>::__get_deleter(uint64_t a1, uint64_t a2)
{
  {
    return a1;
  }

  else
  {
    return 0;
  }
}

void sub_21C4097F8(_Unwind_Exception *a1)
{
  MEMORY[0x21CF0A160](v2, 0x1081C403602C3BFLL);

  _Unwind_Resume(a1);
}

void sub_21C409930(_Unwind_Exception *a1)
{
  v4 = v3;

  _Unwind_Resume(a1);
}

SKAction *__cdecl +[SKAction runBlock:](id a1, SEL a2, dispatch_block_t block)
{
  v3 = [SKRunBlock runBlock:block queue:0];

  return v3;
}

SKAction *__cdecl +[SKAction runBlock:queue:](id a1, SEL a2, dispatch_block_t block, dispatch_queue_t queue)
{
  v4 = [SKRunBlock runBlock:block queue:queue];

  return v4;
}

void sub_21C40BE7C(_Unwind_Exception *a1)
{
  v5 = v4;

  _Unwind_Resume(a1);
}

uint64_t std::deque<SKAction * {__strong}>::~deque[abi:ne200100](void *a1)
{
  v2 = a1[1];
  v3 = a1[2];
  if (v3 == v2)
  {
    v4 = a1 + 5;
    v3 = a1[1];
  }

  else
  {
    v4 = a1 + 5;
    v5 = a1[4];
    v6 = &v2[v5 >> 9];
    v7 = (*v6 + 8 * (v5 & 0x1FF));
    v8 = *(v2 + (((a1[5] + v5) >> 6) & 0x3FFFFFFFFFFFFF8)) + 8 * ((a1[5] + v5) & 0x1FF);
    if (v7 != v8)
    {
      do
      {
        v9 = *v7++;

        if (v7 - *v6 == 4096)
        {
          v10 = v6[1];
          ++v6;
          v7 = v10;
        }
      }

      while (v7 != v8);
      v2 = a1[1];
      v3 = a1[2];
    }
  }

  *v4 = 0;
  v11 = v3 - v2;
  if (v11 >= 3)
  {
    do
    {
      operator delete(*v2);
      v3 = a1[2];
      v2 = (a1[1] + 8);
      a1[1] = v2;
      v11 = v3 - v2;
    }

    while (v11 > 2);
  }

  if (v11 == 1)
  {
    v12 = 256;
  }

  else
  {
    if (v11 != 2)
    {
      goto LABEL_16;
    }

    v12 = 512;
  }

  a1[4] = v12;
LABEL_16:
  while (v2 != v3)
  {
    v13 = *v2++;
    operator delete(v13);
  }

  return std::__split_buffer<unsigned int *>::~__split_buffer(a1);
}

id std::deque<SKAction * {__strong}>::push_back(void *a1, id *a2)
{
  v4 = a1[1];
  v5 = a1[2];
  v6 = ((v5 - v4) << 6) - 1;
  if (v5 == v4)
  {
    v6 = 0;
  }

  if (v6 == a1[5] + a1[4])
  {
    std::deque<SKAction * {__strong}>::__add_back_capacity(a1);
    v4 = a1[1];
    v5 = a1[2];
  }

  if (v5 == v4)
  {
    v8 = 0;
  }

  else
  {
    v7 = a1[5] + a1[4];
    v8 = (*(v4 + ((v7 >> 6) & 0x3FFFFFFFFFFFFF8)) + 8 * (v7 & 0x1FF));
  }

  result = *a2;
  *v8 = result;
  ++a1[5];
  return result;
}

void *std::deque<SKAction * {__strong}>::__add_back_capacity(void *a1)
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
    std::__allocate_at_least[abi:ne200100]<std::allocator<UITouch * {__strong}>>(a1, v9);
  }

  a1[4] = v3;
  v4 = a1[1];
  *&v10 = *v4;
  a1[1] = v4 + 1;
  return std::__split_buffer<SKAction * {__strong}*>::emplace_back<SKAction * {__strong}*&>(a1, &v10);
}

void sub_21C40C4FC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, uint64_t a13)
{
  operator delete(v13);
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void *std::__split_buffer<SKAction * {__strong}*>::emplace_back<SKAction * {__strong}*&>(void *result, void *a2)
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

      std::__allocate_at_least[abi:ne200100]<std::allocator<UITouch * {__strong}>>(result, v11);
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

const void **std::__split_buffer<SKAction * {__strong}*>::emplace_front<SKAction * {__strong}*>(const void **result, void *a2)
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

      std::__allocate_at_least[abi:ne200100]<std::allocator<UITouch * {__strong}>>(result, v9);
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

void *std::__split_buffer<SKAction * {__strong}*>::emplace_back<SKAction * {__strong}*>(void *result, void *a2)
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

      std::__allocate_at_least[abi:ne200100]<std::allocator<UITouch * {__strong}>>(result[4], v11);
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

const void **std::__split_buffer<SKAction * {__strong}*>::emplace_front<SKAction * {__strong}*&>(const void **result, void *a2)
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

      std::__allocate_at_least[abi:ne200100]<std::allocator<UITouch * {__strong}>>(result[4], v9);
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

uint64_t std::deque<SKAction * {__strong}>::pop_back(void *a1)
{
  v2 = a1[5] + a1[4] - 1;

  --a1[5];

  return std::deque<SKAction * {__strong}>::__maybe_remove_back_spare[abi:ne200100](a1, 1);
}

uint64_t std::deque<SKAction * {__strong}>::__maybe_remove_back_spare[abi:ne200100](void *a1, int a2)
{
  v3 = a1[1];
  v2 = a1[2];
  if (v2 == v3)
  {
    v4 = 0;
  }

  else
  {
    v4 = ((v2 - v3) << 6) - 1;
  }

  v5 = v4 - (a1[5] + a1[4]);
  if (v5 < 0x200)
  {
    a2 = 1;
  }

  if (v5 < 0x400)
  {
    v7 = a2;
  }

  else
  {
    v7 = 0;
  }

  if ((v7 & 1) == 0)
  {
    operator delete(*(v2 - 8));
    a1[2] -= 8;
  }

  return v7 ^ 1u;
}

void sub_21C40CB88(_Unwind_Exception *a1)
{
  MEMORY[0x21CF0A160](v2, 0x1081C4074C3173BLL);

  _Unwind_Resume(a1);
}

id std::vector<SKTexture * {__strong}>::push_back[abi:ne200100](void *a1, id *a2)
{
  v5 = a1[1];
  v4 = a1[2];
  if (v5 >= v4)
  {
    v8 = (v5 - *a1) >> 3;
    if ((v8 + 1) >> 61)
    {
      std::vector<jet_render_op>::__throw_length_error[abi:ne200100]();
    }

    v9 = v4 - *a1;
    v10 = v9 >> 2;
    if (v9 >> 2 <= (v8 + 1))
    {
      v10 = v8 + 1;
    }

    if (v9 >= 0x7FFFFFFFFFFFFFF8)
    {
      v11 = 0x1FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v11 = v10;
    }

    v13[4] = a1;
    if (v11)
    {
      std::__allocate_at_least[abi:ne200100]<std::allocator<UITouch * {__strong}>>(a1, v11);
    }

    v12 = (8 * v8);
    v13[0] = 0;
    v13[1] = v12;
    v13[3] = 0;
    *v12 = *a2;
    v13[2] = v12 + 1;
    std::vector<UITouch * {__strong}>::__swap_out_circular_buffer(a1, v13);
    v7 = a1[1];
    result = std::__split_buffer<UITouch * {__strong}>::~__split_buffer(v13);
  }

  else
  {
    result = *a2;
    *v5 = result;
    v7 = v5 + 1;
  }

  a1[1] = v7;
  return result;
}

void sub_21C40D00C(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  std::__split_buffer<UITouch * {__strong}>::~__split_buffer(va);
  _Unwind_Resume(a1);
}

void SKCAnimate::~SKCAnimate(SKCAnimate *this)
{
  SKCAnimate::~SKCAnimate(this);

  JUMPOUT(0x21CF0A160);
}

{
  *this = &unk_282E161A0;
  v2 = (this + 112);
  v3 = *(this + 14);
  for (i = *(this + 15); i != v3; i -= 8)
  {
    v5 = *(i - 8);
  }

  *(this + 15) = v3;

  v6 = v2;
  std::vector<UITouch * {__strong}>::__destroy_vector::operator()[abi:ne200100](&v6);
  SKCAction::~SKCAction(this);
}

void SKCAnimate::cpp_updateWithTargetForTime(SKCAction *this, SKCNode *a2, __n128 a3)
{
  v3 = a3.n128_u64[0];
  v6 = SKCAction::cpp_ratioForTime(this, a3);
  var0 = this[1].var0;
  v8 = (*&this[1].var1 - var0) >> 3;
  v9 = (v6 * v8);
  if (v8 <= v9)
  {
    v10 = 0;
    if (!a2)
    {
      goto LABEL_22;
    }
  }

  else
  {
    v10 = var0[v9];
    if (!a2)
    {
      goto LABEL_22;
    }
  }

  if (v11)
  {
    v12 = v11;
    if (v8 <= v9)
    {
      if (LOBYTE(this[1].var7) == 1)
      {
        v13 = *&this[1].var5;
        if (BYTE2(this[1].var7) == 1)
        {
          SKCSpriteNode::setSecondaryTexture(v11, v13);
        }

        else
        {
          SKCSpriteNode::setPrimaryTexture(v11, v13);
        }

        if (BYTE1(this[1].var7) == 1)
        {
          v14.n128_u64[0] = *&this[1].var6;
          v19 = v14;
          SKCNode::setSize(v12, &v19);
        }
      }

      else
      {
        v15 = *&this[1].var1;
        if (v15 == this[1].var0)
        {
          std::vector<SKTexture * {__strong}>::__throw_out_of_range[abi:ne200100]();
        }

        v16 = *(v15 - 1);

        v10 = v16;
      }

      v14.n128_u64[0] = v3;
      SKCAction::didFinishWithTargetAtTime(this, a2, v14);
    }

    if (v10)
    {
      if (BYTE2(this[1].var7) == 1)
      {
        SKCSpriteNode::setSecondaryTexture(v12, v10);
      }

      else
      {
        SKCSpriteNode::setPrimaryTexture(v12, v10);
      }

      if (BYTE1(this[1].var7) == 1)
      {
        [(SKTexture *)v10 size];
        *&v17 = v17;
        *&v18 = v18;
        v19 = __PAIR64__(LODWORD(v18), LODWORD(v17));
        SKCNode::setSize(v12, &v19);
      }
    }
  }

LABEL_22:
}

__n128 SKCAnimate::cpp_wasRemovedFromTargetAtTime(SKCAnimate *this, SKCNode *lpsrc, double a3)
{
  if (lpsrc)
  {
    if (v4)
    {
      if (*(this + 160) == 1)
      {
        v6 = v4;
        v7 = *(this + 18);
        if (*(this + 162) == 1)
        {
          SKCSpriteNode::setSecondaryTexture(v4, v7);
        }

        else
        {
          SKCSpriteNode::setPrimaryTexture(v4, v7);
        }

        if (*(this + 161) == 1)
        {
          result = v6[21];
          *(this + 19) = result.n128_u64[0];
        }
      }
    }
  }

  return result;
}

__n128 SKCAnimate::cpp_willStartWithTargetAtTime(SKCAnimate *this, SKCNode *a2, double a3)
{
  SKCAction::cpp_willStartWithTargetAtTime(this, a2, a3);
  if (a2)
  {
    if (v6)
    {
      if (*(this + 160) == 1)
      {
        v7 = v6;
        v8 = 75;
        if (*(this + 162))
        {
          v8 = 76;
        }

        objc_storeStrong(this + 18, v6->n128_u64[v8]);
        if (*(this + 161) == 1)
        {
          result = v7[21];
          *(this + 19) = result.n128_u64[0];
        }
      }
    }
  }

  return result;
}

void std::__throw_out_of_range[abi:ne200100](const char *a1)
{
  exception = __cxa_allocate_exception(0x10uLL);
  std::out_of_range::out_of_range[abi:ne200100](exception, a1);
  __cxa_throw(exception, off_27830FBD0, MEMORY[0x277D825F8]);
}

std::logic_error *std::out_of_range::out_of_range[abi:ne200100](std::logic_error *a1, const char *a2)
{
  result = std::logic_error::logic_error(a1, a2);
  result->__vftable = (MEMORY[0x277D828E8] + 16);
  return result;
}

void sub_21C40DE70(_Unwind_Exception *a1)
{
  MEMORY[0x21CF0A160](v2, 0x1081C40C35AEBB7);

  _Unwind_Resume(a1);
}

void sub_21C40E84C(_Unwind_Exception *a1)
{
  v5 = v3;

  _Unwind_Resume(a1);
}

void SKCAnimateMesh::~SKCAnimateMesh(SKCAnimateMesh *this)
{
  SKCAnimateMesh::~SKCAnimateMesh(this);

  JUMPOUT(0x21CF0A160);
}

{
  this->var0 = &unk_282E16238;
  var21 = this->var21;
  this->var21 = 0;

  var20 = this->var20;
  this->var20 = 0;

  var19 = this->var19;
  this->var19 = 0;

  SKCAction::~SKCAction(this);
}

void SKCAnimateMesh::cpp_updateWithTargetForTime(SKCAnimateMesh *this, id *a2, __n128 a3)
{
  v3 = a3.n128_f64[0];
  v6 = SKCAction::cpp_ratioForTime(this, a3);
  v9 = a2[1];
  if (v9 && (objc_opt_respondsToSelector() & 1) != 0)
  {
    v7 = SKCAnimateMesh::meshForRatio(this, v6);
    [v9 setWarpGeometry:v7];
  }

  SKCAction::ratioForTime(this, v3);
  if ((COERCE_UNSIGNED_INT(v8 + -1.0) & 0x60000000) == 0)
  {
    (*(this->var0 + 13))(this, a2, v3);
  }
}

void SKCAnimateMesh::cpp_wasRemovedFromTargetAtTime(SKCAnimateMesh *this, id *a2, double a3)
{
  SKCAction::cpp_wasRemovedFromTargetAtTime(this, a2, a3);
  v5 = a2[1];
  if (v5 && (objc_opt_respondsToSelector() & 1) != 0 && this->var22)
  {
    [v5 setWarpGeometry:this->var21];
  }
}

uint64_t SKCAnimateMesh::cpp_willStartWithTargetAtTime(SKCAnimateMesh *this, id *a2, double a3)
{
  SKCAction::cpp_willStartWithTargetAtTime(this, a2, a3);
  v5 = a2[1];
  if (v5)
  {
    v9 = v5;
    if (objc_opt_respondsToSelector())
    {
      v6 = [v9 warpGeometry];
      var21 = this->var21;
      this->var21 = v6;
    }
  }

  return MEMORY[0x2821F9730]();
}

void SKCAnimateMesh::cpp_didFinishWithTargetAtTime(SKCAnimateMesh *this, id *a2, double a3)
{
  SKCAction::cpp_didFinishWithTargetAtTime(this, a2, a3);
  v5 = a2[1];
  if (v5 && (objc_opt_respondsToSelector() & 1) != 0 && this->var22)
  {
    [v5 setWarpGeometry:this->var21];
  }
}

id SKCAnimateMesh::meshForRatio(SKCAnimateMesh *this, float a2)
{
  v4 = objc_autoreleasePoolPush();
  v31 = 0.0;
  v29 = 0;
  v30 = 0;
  SKCAnimateMesh::choosewarpsForRatio(this, &v30, &v29, &v31, a2);
  v5 = v30;
  v6 = v29;
  v7 = [v5 numberOfColumns];
  if (v7 == [v6 numberOfColumns] && (v8 = objc_msgSend(v5, "numberOfRows"), v8 == objc_msgSend(v6, "numberOfRows")))
  {
    v9 = v31;
    v10 = [v5 vertexCount];
    _ZNSt3__16vectorIDv2_fNS_9allocatorIS1_EEEC2B8ne200100Em(v28, v10);
    _ZNSt3__16vectorIDv2_fNS_9allocatorIS1_EEEC2B8ne200100Em(__p, v10);
    if (v10 >= 1)
    {
      v12 = 0;
      *v11.i32 = 1.0 - v9;
      v13 = vdup_lane_s32(v11, 0);
      v14 = v10 & 0x7FFFFFFF;
      do
      {
        v15 = *([v5 sourcePositions] + 8 * v12);
        v16 = [v6 sourcePositions];
        *(v28[0] + v12) = vmla_f32(vmul_n_f32(*(v16 + 8 * v12), v31), v13, v15);
        ++v12;
      }

      while (v14 != v12);
      v17 = 0;
      do
      {
        v18 = *([v5 destPositions] + 8 * v17);
        v19 = [v6 destPositions];
        *(__p[0] + v17) = vmla_f32(vmul_n_f32(*(v19 + 8 * v17), v31), v13, v18);
        ++v17;
      }

      while (v14 != v17);
    }

    v20 = [SKWarpGeometryGrid alloc];
    v21 = [v5 numberOfColumns];
    v22 = [v5 numberOfRows];
    v23 = [(SKWarpGeometryGrid *)v20 initWithColumns:v21 rows:v22 sourcePositions:v28[0] destPositions:__p[0]];

    if (__p[0])
    {
      __p[1] = __p[0];
      operator delete(__p[0]);
    }

    if (v28[0])
    {
      v28[1] = v28[0];
      operator delete(v28[0]);
    }

    v24 = 1;
    v25 = v23;
  }

  else
  {

    v24 = 0;
    v25 = 0;
  }

  objc_autoreleasePoolPop(v4);
  if (v24)
  {
    v6 = v25;
  }

  return v6;
}

void sub_21C40EF24(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void SKCAnimateMesh::choosewarpsForRatio(uint64_t a1, void *a2, void *a3, float *a4, float a5)
{
  v10 = *(a1 + 56);
  v40 = *(a1 + 128);
  v11 = [*(a1 + 112) lastObject];
  v12 = [*(a1 + 120) lastObject];
  [v12 floatValue];
  v14 = v13;

  v15 = [*(a1 + 120) count];
  v16 = v15;
  v17 = v10 * a5;
  if (v15 < 1)
  {
    goto LABEL_9;
  }

  v18 = 0;
  v19 = v15 & 0x7FFFFFFF;
  while (1)
  {
    v20 = [*(a1 + 120) objectAtIndexedSubscript:v18];
    [v20 floatValue];
    v22 = v21;

    if (v17 < v22)
    {
      break;
    }

    if (v19 == ++v18)
    {
      LODWORD(v18) = v16;
      break;
    }
  }

  if (v18)
  {
    v23 = *(a1 + 120);
    if (v18 == v16)
    {
      v24 = [v23 lastObject];
      [v24 floatValue];
      v26 = v25;

      v27 = [*(a1 + 112) lastObject];
      v28 = v40;
      v40 = v27;
    }

    else
    {
      v32 = [v23 objectAtIndexedSubscript:v18 - 1];
      [v32 floatValue];
      v26 = v33;

      v34 = [*(a1 + 112) objectAtIndexedSubscript:v18 - 1];

      v35 = [*(a1 + 120) objectAtIndexedSubscript:v18];
      [v35 floatValue];
      v14 = v36;

      v37 = [*(a1 + 112) objectAtIndexedSubscript:v18];
      v28 = v11;
      v11 = v37;
      v40 = v34;
    }
  }

  else
  {
LABEL_9:
    v29 = [*(a1 + 120) objectAtIndexedSubscript:0];
    [v29 floatValue];
    v14 = v30;

    v31 = [*(a1 + 112) objectAtIndexedSubscript:0];
    v26 = 0.0;
    v28 = v11;
    v11 = v31;
  }

  *a2 = v40;
  v38 = v11;
  *a3 = v11;
  v39 = 1.0;
  if ((v14 - v26) > 0.0)
  {
    v39 = (v17 - v26) / (v14 - v26);
  }

  *a4 = v39;
}

void *_ZNSt3__16vectorIDv2_fNS_9allocatorIS1_EEEC2B8ne200100Em(void *result, unint64_t a2)
{
  *result = 0;
  result[1] = 0;
  result[2] = 0;
  if (a2)
  {
    _ZNSt3__16vectorIDv2_fNS_9allocatorIS1_EEE11__vallocateB8ne200100Em(result, a2);
  }

  return result;
}

void sub_21C40F28C(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

void _ZNSt3__16vectorIDv2_fNS_9allocatorIS1_EEE11__vallocateB8ne200100Em(uint64_t a1, unint64_t a2)
{
  if (!(a2 >> 61))
  {
    _ZNSt3__119__allocate_at_leastB8ne200100INS_9allocatorIDv2_fEEEENS_19__allocation_resultINS_16allocator_traitsIT_E7pointerEEERS6_m(a1, a2);
  }

  std::vector<jet_render_op>::__throw_length_error[abi:ne200100]();
}

void _ZNSt3__119__allocate_at_leastB8ne200100INS_9allocatorIDv2_fEEEENS_19__allocation_resultINS_16allocator_traitsIT_E7pointerEEERS6_m(uint64_t a1, unint64_t a2)
{
  if (!(a2 >> 61))
  {
    operator new();
  }

  std::__throw_bad_array_new_length[abi:ne200100]();
}

void SKCAction::SKCAction(SKCAction *this)
{
  this->var0 = &unk_282E162D0;
  this->var1 = 0;
  *(&this->var3 + 4) = 0;
  *&this->var2 = 0;
  *(&this->var4 + 1) = 0;
  *&this->var6 = xmmword_21C4B9070;
  *&this->var8 = 0;
  this->var10 = -1.0;
  *&this->var11 = 0;
  this->var13 = 0;
  this->var14 = 0;
  this->var15 = 0.0;
  __asm { FMOV            V0.2S, #1.0 }

  *&this->var16 = _D0;
  this->var18 = 1.0;
}

void SKCAction::SKCAction(SKCAction *this, const SKCAction *a2)
{
  this->var0 = &unk_282E162D0;
  this->var1 = 0;
  this->var2 = 0.0;
  this->var3 = MEMORY[0x21CF0AB10](a2->var3);
  this->var4 = 0;
  this->var5 = 1;
  *&this->var6 = *&a2->var6;
  *&this->var8 = *&a2->var8;
  this->var10 = -1.0;
  *&this->var11 = *&a2->var11;
  this->var15 = 0.0;
  this->var13 = 0;
  this->var14 = 0;
  __asm { FMOV            V0.2S, #1.0 }

  *&this->var16 = _D0;
  this->var18 = 1.0;
}

void SKCAction::~SKCAction(SKCAction *this)
{
  this->var0 = &unk_282E162D0;
}

{
  this->var0 = &unk_282E162D0;
}

{
  this->var0 = &unk_282E162D0;

  JUMPOUT(0x21CF0A160);
}

void SKCAction::cpp_adjustedTime(SKCAction *this, __n128 a2)
{
  a2.n128_f64[0] = a2.n128_f64[0] - this->var6;
  a2.n128_f32[0] = a2.n128_f64[0];
  var2 = this->var2;
  if ((LODWORD(var2) & 0x60000000) != 0)
  {
    v3 = this->var2;
  }

  else
  {
    v3 = 0.000001;
  }

  if (((LODWORD(var2) | a2.n128_u32[0]) & 0x60000000) == 0)
  {
    a2.n128_f32[0] = 0.000001;
  }

  var14 = this->var14;
  a2.n128_f32[0] = fminf(fmaxf(a2.n128_f32[0] / v3, 0.0), 1.0);
  if (var14 == 1)
  {
    a2.n128_f32[0] = fminf(fmaxf(a2.n128_f32[0] * (a2.n128_f32[0] * (2.0 - a2.n128_f32[0])), 0.0), 1.0);
  }

  else if (var14 == 2)
  {
    a2.n128_f32[0] = fminf(fmaxf((-((2.0 - (1.0 - a2.n128_f32[0])) * (1.0 - a2.n128_f32[0])) * (1.0 - a2.n128_f32[0])) + 1.0, 0.0), 1.0);
  }

  else
  {
    v5 = fminf(fmaxf(a2.n128_f32[0] * (a2.n128_f32[0] * ((a2.n128_f32[0] * -2.0) + 3.0)), 0.0), 1.0);
    if (var14 == 3)
    {
      a2.n128_f32[0] = v5;
    }
  }

  var3 = this->var3;
  if (var3)
  {
    fminf(fmaxf(var3[2](a2), 0.0), 1.0);
  }
}

float SKCAction::cpp_ratioForTime(SKCAction *this, __n128 a2)
{
  a2.n128_f64[0] = a2.n128_f64[0] - this->var6;
  a2.n128_f32[0] = a2.n128_f64[0];
  var2 = this->var2;
  v3 = var2;
  if ((LODWORD(var2) & 0x60000000) == 0)
  {
    var2 = 0.000001;
  }

  if (((LODWORD(v3) | a2.n128_u32[0]) & 0x60000000) == 0)
  {
    a2.n128_f32[0] = 0.000001;
  }

  var14 = this->var14;
  a2.n128_f32[0] = fminf(fmaxf(this->var15 + (this->var18 * (a2.n128_f32[0] / var2)), 0.0), 1.0);
  if (var14 == 1)
  {
    a2.n128_f32[0] = fminf(fmaxf(a2.n128_f32[0] * (a2.n128_f32[0] * (2.0 - a2.n128_f32[0])), 0.0), 1.0);
  }

  else if (var14 == 2)
  {
    a2.n128_f32[0] = fminf(fmaxf((-((2.0 - (1.0 - a2.n128_f32[0])) * (1.0 - a2.n128_f32[0])) * (1.0 - a2.n128_f32[0])) + 1.0, 0.0), 1.0);
  }

  else
  {
    v5 = fminf(fmaxf(a2.n128_f32[0] * (a2.n128_f32[0] * ((a2.n128_f32[0] * -2.0) + 3.0)), 0.0), 1.0);
    if (var14 == 3)
    {
      a2.n128_f32[0] = v5;
    }
  }

  var3 = this->var3;
  if (var3)
  {
    a2.n128_f32[0] = fminf(fmaxf(var3[2](a2), 0.0), 1.0);
  }

  return a2.n128_f32[0];
}

void SKCAction::cpp_updateWithTargetForTime(SKCAction *this, SKCNode *a2, __n128 a3)
{
  v3 = a3.n128_u64[0];
  if ((COERCE_UNSIGNED_INT(SKCAction::cpp_ratioForTime(this, a3) + -1.0) & 0x60000000) == 0)
  {
    v6.n128_u64[0] = v3;

    SKCAction::didFinishWithTargetAtTime(this, a2, v6);
  }
}

SKCAction *SKCAction::didFinishWithTargetAtTime(SKCAction *this, SKCNode *a2, __n128 a3)
{
  v3 = a3.n128_u64[0];
  v5 = this;
  if (!this->var11)
  {
    this->var11 = 1;
    this = this->var13;
    if (this)
    {
      this = (this->var3)();
    }
  }

  if (v5->var5)
  {
    v6 = *(v5->var0 + 13);
    a3.n128_u64[0] = v3;

    return v6(v5, a2, a3);
  }

  return this;
}

SKCAction *SKCAction::cpp_wasAddedToTargetAtTime(SKCAction *this, SKCNode *a2, double a3)
{
  v3 = this;
  this->var11 = 0;
  this->var18 = this->var17 * this->var16;
  var8 = this->var8;
  var9 = this->var9;
  if ((LODWORD(var9) & 0x60000000) != 0)
  {
    v6 = var9 * 0.5;
    v7 = var8 - v6;
    v8 = v6 + var8;
    this = rand();
    var8 = v7 + (vcvts_n_f32_s32(this, 0x1FuLL) * (v8 - v7));
    if (var8 < 0.0)
    {
      var8 = 0.0;
    }
  }

  v3->var2 = var8;
  return this;
}

SKCAction *SKCAction::cpp_willStartWithTargetAtTime(SKCAction *this, SKCNode *a2, double a3)
{
  this->var6 = a3;
  this->var15 = 0.0;
  *&this->var11 = 256;
  return this;
}

double SKCAction::cpp_willResumeWithTargetAtTime(SKCAction *this, SKCNode *a2, double result)
{
  var7 = this->var7;
  if (var7 > 0.0)
  {
    result = result - var7 + this->var6;
    this->var6 = result;
    this->var7 = -1.0;
  }

  return result;
}

uint64_t SKCAction::reverse(SKCAction *this)
{
  v1 = [this->var4 reversedAction];
  v2 = [v1 caction];

  return v2;
}

uint64_t SKCAction::copy(SKCAction *this)
{
  v1 = [this->var4 copy];
  v2 = [v1 caction];

  return v2;
}

uint64_t SKCAction::updateWithTargetForTime(SKCAction *this, SKCNode *a2, double a3)
{
  if (this->var5)
  {
    return (*(this->var0 + 7))(this, a2, a3);
  }

  else
  {
    return [this->var4 updateWithTarget:*(a2 + 1) forTime:a3];
  }
}

uint64_t SKCAction::wasAddedToTargetAtTime(SKCAction *this, SKCNode *a2, double a3)
{
  this->var10 = -1.0;
  if (this->var5)
  {
    return (*(this->var0 + 8))(this, a2, a3);
  }

  else
  {
    return [this->var4 wasAddedToTarget:*(a2 + 1) atTime:a3];
  }
}

uint64_t SKCAction::wasRemovedFromTargetAtTime(SKCAction *this, SKCNode *a2, double a3)
{
  if (this->var5)
  {
    return (*(this->var0 + 9))(this, a2, a3);
  }

  else
  {
    return [this->var4 wasRemovedFromTarget:*(a2 + 1) atTime:a3];
  }
}

uint64_t SKCAction::willStartWithTargetAtTime(SKCAction *this, SKCNode *a2, double a3)
{
  this->var10 = -1.0;
  if (this->var5)
  {
    return (*(this->var0 + 10))(this, a2, a3);
  }

  else
  {
    return [this->var4 willStartWithTarget:*(a2 + 1) atTime:a3];
  }
}

uint64_t SKCAction::wasPausedWithTargetAtTime(SKCAction *this, SKCNode *a2, double a3)
{
  if (this->var5)
  {
    return (*(this->var0 + 11))(this, a2, a3);
  }

  else
  {
    return [this->var4 wasPausedWithTarget:*(a2 + 1) atTime:a3];
  }
}

uint64_t SKCAction::willResumeWithTargetAtTime(SKCAction *this, SKCNode *a2, double a3)
{
  if (this->var5)
  {
    return (*(this->var0 + 12))(this, a2, a3);
  }

  else
  {
    return [this->var4 willResumeWithTarget:*(a2 + 1) atTime:a3];
  }
}

float SKCAction::setSpeed(SKCAction *this, float a2)
{
  v4 = skCurrentTime();
  var6 = this->var6;
  v5.n128_u64[0] = *&this->var7;
  if (v5.n128_f64[0] > var6)
  {
    this->var6 = var6 + v4 - v5.n128_f64[0];
    this->var7 = v4;
  }

  v5.n128_f64[0] = v4;
  this->var15 = SKCAction::cpp_ratioForTime(this, v5);
  this->var6 = v4;
  result = this->var16 * a2;
  this->var17 = a2;
  this->var18 = result;
  return result;
}

float SKCAction::setBaseSpeed(SKCAction *this, float a2)
{
  v4 = skCurrentTime();
  var6 = this->var6;
  v5.n128_u64[0] = *&this->var7;
  if (v5.n128_f64[0] > var6)
  {
    this->var6 = var6 + v4 - v5.n128_f64[0];
    this->var7 = v4;
  }

  v5.n128_f64[0] = v4;
  v7 = SKCAction::cpp_ratioForTime(this, v5);
  this->var6 = v4;
  this->var15 = v7;
  this->var16 = a2;
  result = this->var17 * a2;
  this->var18 = result;
  return result;
}

double SKCAction::finishTime(SKCAction *this)
{
  result = this->var10;
  if (result < 0.0)
  {
    return this->var6 + (this->var2 * ((1.0 - this->var15) / this->var18));
  }

  return result;
}

void sub_21C410D4C(_Unwind_Exception *a1)
{
  MEMORY[0x21CF0A160](v2, 0x1081C4060FE593ELL);

  _Unwind_Resume(a1);
}

void SKCColorize::SKCColorize(SKCColorize *this, SKCAction *a2)
{
  SKCAction::SKCAction(this);
  *v3 = &unk_282E16360;
  *(v3 + 40) = *&a2->var6;
  *(v3 + 72) = *&a2->var11;
  *(v3 + 56) = *&a2->var8;
  *(v3 + 88) = a2->var14;
  *(v3 + 32) = 1;
}

void SKCColorize::~SKCColorize(SKCColorize *this)
{
  SKCAction::~SKCAction(this);

  JUMPOUT(0x21CF0A160);
}

void SKCColorize::cpp_updateWithTargetForTime(SKCColorize *this, float32x4_t *a2, __n128 a3)
{
  v3 = a3.n128_u64[0];
  v7 = SKCAction::cpp_ratioForTime(this, a3);
  v13 = v7;
  if ((BYTE4(this[1].var3) & 1) == 0)
  {
    v8 = *(a2->i64[0] + 184);
    v12 = vmlaq_n_f32(vnegq_f32(*&this->var21.var3), *&this[1].var0, v7);
    v14 = vaddq_f32(v12, a2[19]);
    v8(a2, &v14);
    v7 = v13;
    v6 = vaddq_f32(v12, *&this->var21.var3);
    *&this->var21.var3 = v6;
  }

  v9 = *&this[1].var3;
  if ((LODWORD(v9) & 0x60000000) != 0)
  {
    var2 = this->var23.var2;
    v11 = -(var2 - (v7 * v9));
    v14.f32[0] = a2[20].f32[0] - (var2 - (v7 * v9));
    (*(a2->i64[0] + 192))(a2, &v14);
    v7 = v13;
    this->var23.var2 = v11 + this->var23.var2;
  }

  if ((COERCE_UNSIGNED_INT(v7 + -1.0) & 0x60000000) == 0)
  {
    v6.n128_u64[0] = v3;
    SKCAction::didFinishWithTargetAtTime(this, a2, v6);
  }
}

float32x4_t SKCColorize::cpp_willStartWithTargetAtTime(SKCColorize *this, float32x4_t *a2, double a3)
{
  SKCAction::cpp_willStartWithTargetAtTime(this, a2, a3);
  this->var23.var2 = 0.0;
  *&this->var21.var3 = 0;
  *&this->var23.var0 = 0;
  *&this[1].var3 = this->var20 - a2[20].f32[0];
  result = vsubq_f32(this->var19, a2[19]);
  *&this[1].var0 = result;
  return result;
}

void sub_21C4117D8(_Unwind_Exception *a1)
{
  MEMORY[0x21CF0A160](v2, 0x1081C40AE107041);

  _Unwind_Resume(a1);
}

void SKCFade::~SKCFade(SKCFade *this)
{
  SKCAction::~SKCAction(this);

  JUMPOUT(0x21CF0A160);
}

void SKCFade::cpp_updateWithTargetForTime(SKCFade *this, SKCNode *a2, __n128 a3)
{
  v3 = a3.n128_u64[0];
  v6 = SKCAction::cpp_ratioForTime(this, a3);
  v7 = v6;
  if (this->var22)
  {
    v8 = v6 * this->var19;
    v11 = v8 + (*(a2 + 81) - this->var21);
    SKCNode::setAlpha(a2, &v11);
    this->var21 = v8;
  }

  else
  {
    v10 = (v6 * this->var19) + (this->var21 * (1.0 - v6));
    SKCNode::setAlpha(a2, &v10);
  }

  if ((COERCE_UNSIGNED_INT(v7 + -1.0) & 0x60000000) == 0)
  {
    v9.n128_u64[0] = v3;
    SKCAction::didFinishWithTargetAtTime(this, a2, v9);
  }
}

SKCAction *SKCFade::cpp_willStartWithTargetAtTime(SKCFade *this, SKCNode *a2, double a3)
{
  result = SKCAction::cpp_willStartWithTargetAtTime(this, a2, a3);
  v6 = 0.0;
  if (!this->var22)
  {
    v6 = *(a2 + 81);
  }

  this->var21 = v6;
  return result;
}

void sub_21C412148(_Unwind_Exception *a1)
{
  MEMORY[0x21CF0A160](v2, 0x10A1C40D98AE659);

  _Unwind_Resume(a1);
}

void SKCGroup::addCAction(SKCGroup *this, SKCAction *a2)
{
  if (a2)
  {
    ++a2->var1;
    operator new();
  }
}

void SKCGroup::~SKCGroup(SKCAction *this)
{
  SKCGroup::~SKCGroup(this);

  JUMPOUT(0x21CF0A160);
}

{
  this->var0 = &unk_282E16490;
  v2 = this + 1;
  for (i = *&this[1].var1; i != v2; i = *&i->var1)
  {
    var3 = i->var3;
    v5 = var3[2] - 1;
    var3[2] = v5;
    if (var3)
    {
      v6 = v5 == 0;
    }

    else
    {
      v6 = 0;
    }

    if (v6)
    {
      (*(*var3 + 8))(var3);
    }
  }

  std::__list_imp<SKCRenderSortInfo *>::clear(v2);
  std::__list_imp<SKCRenderSortInfo *>::clear(v2);

  SKCAction::~SKCAction(this);
}

void SKCGroup::setBaseSpeed(SKCAction *this, float a2)
{
  SKCAction::setBaseSpeed(this, a2);
  v3 = *&this[1].var1;
  if (v3 != &this[1])
  {
    v4 = this->var16 * this->var17;
    do
    {
      (*(**(v3 + 16) + 40))(*(v3 + 16), v4);
      v3 = *(v3 + 8);
    }

    while (v3 != &this[1]);
  }
}

void SKCGroup::setSpeed(SKCAction *this, float a2)
{
  SKCAction::setSpeed(this, a2);
  v3 = *&this[1].var1;
  if (v3 != &this[1])
  {
    v4 = this->var16 * this->var17;
    do
    {
      (*(**(v3 + 16) + 40))(*(v3 + 16), v4);
      v3 = *(v3 + 8);
    }

    while (v3 != &this[1]);
  }
}

uint64_t SKCGroup::cpp_updateWithTargetForTime(SKCAction *this, SKCNode *a2, __n128 a3)
{
  SKCAction::cpp_adjustedTime(this, a3);
  v6 = v5.n128_f64[0];
  v7 = *&this[1].var1;
  if (v7 == &this[1])
  {
    goto LABEL_13;
  }

  v8 = 1;
  do
  {
    var3 = v7->var3;
    if (var3->var5)
    {
      if (var3->var11)
      {
        goto LABEL_6;
      }

LABEL_5:
      SKCAction::updateWithTargetForTime(var3, a2, v6);
      goto LABEL_6;
    }

    if (([var3->var4 finished] & 1) == 0)
    {
      goto LABEL_5;
    }

LABEL_6:
    if (var3->var5)
    {
      result = var3->var11;
    }

    else
    {
      result = [var3->var4 finished];
    }

    v8 &= result;
    v7 = *&v7->var1;
  }

  while (v7 != &this[1]);
  if (v8)
  {
LABEL_13:
    v5.n128_f64[0] = v6;

    return SKCAction::didFinishWithTargetAtTime(this, a2, v5);
  }

  return result;
}

SKCAction *SKCGroup::cpp_wasAddedToTargetAtTime(SKCAction *this, SKCNode *a2, double a3)
{
  result = SKCAction::cpp_wasAddedToTargetAtTime(this, a2, a3);
  v7 = &this[1];
  for (i = *&this[1].var1; i != v7; i = *(i + 8))
  {
    result = SKCAction::wasAddedToTargetAtTime(*(i + 16), a2, a3);
  }

  return result;
}

void SKCGroup::cpp_wasRemovedFromTargetAtTime(SKCAction *this, SKCNode *a2, double a3)
{
  SKCAction::cpp_wasRemovedFromTargetAtTime(this, a2, a3);
  v6.n128_f64[0] = a3;
  SKCAction::cpp_adjustedTime(this, v6);
  v8 = &this[1];
  v9 = *&this[1].var1;
  if (v9 != v8)
  {
    v10 = v7;
    do
    {
      SKCAction::wasRemovedFromTargetAtTime(*(v9 + 16), a2, v10);
      v9 = *(v9 + 8);
    }

    while (v9 != v8);
  }
}

void SKCGroup::cpp_willStartWithTargetAtTime(SKCAction *this, SKCNode *a2, double a3)
{
  SKCAction::cpp_willStartWithTargetAtTime(this, a2, a3);
  v6.n128_f64[0] = a3;
  SKCAction::cpp_adjustedTime(this, v6);
  v8 = &this[1];
  v9 = *&this[1].var1;
  if (v9 != v8)
  {
    v10 = v7;
    do
    {
      SKCAction::willStartWithTargetAtTime(*(v9 + 16), a2, v10);
      v9 = *(v9 + 8);
    }

    while (v9 != v8);
  }
}

void SKCGroup::cpp_wasPausedWithTargetAtTime(SKCAction *this, SKCNode *a2, double a3)
{
  SKCAction::cpp_wasPausedWithTargetAtTime(this, a2, a3);
  v6.n128_f64[0] = a3;
  SKCAction::cpp_adjustedTime(this, v6);
  v8 = &this[1];
  v9 = *&this[1].var1;
  if (v9 != v8)
  {
    v10 = v7;
    do
    {
      SKCAction::wasPausedWithTargetAtTime(*(v9 + 16), a2, v10);
      v9 = *(v9 + 8);
    }

    while (v9 != v8);
  }
}

void SKCGroup::cpp_willResumeWithTargetAtTime(SKCAction *this, SKCNode *a2, double a3)
{
  SKCAction::cpp_willResumeWithTargetAtTime(this, a2, a3);
  v6.n128_f64[0] = a3;
  SKCAction::cpp_adjustedTime(this, v6);
  v8 = &this[1];
  v9 = *&this[1].var1;
  if (v9 != v8)
  {
    v10 = v7;
    do
    {
      SKCAction::willResumeWithTargetAtTime(*(v9 + 16), a2, v10);
      v9 = *(v9 + 8);
    }

    while (v9 != v8);
  }
}

void sub_21C4134C4(_Unwind_Exception *a1)
{
  v4 = v3;

  _Unwind_Resume(a1);
}

void sub_21C413808(_Unwind_Exception *a1)
{
  v4 = v3;

  _Unwind_Resume(a1);
}

void sub_21C413EA4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id a10)
{
  v12 = v11;

  _Unwind_Resume(a1);
}

void sub_21C4141D8(_Unwind_Exception *a1)
{
  v6 = v4;

  _Unwind_Resume(a1);
}

__n128 createV3fFromData(NSData *a1)
{
  v1 = a1;
  v2 = v1;
  v10 = 0u;
  if (v1)
  {
    v3 = [(NSData *)v1 bytes];
    v4 = [(NSData *)v2 length]>> 2;
    if (v4)
    {
      if (v4 < 1)
      {
        v8 = 0uLL;
      }

      else
      {
        v5 = 0;
        if (v4 >= 3)
        {
          v4 = 3;
        }

        else
        {
          v4 = v4;
        }

        v6 = 0uLL;
        do
        {
          v7 = bswap32(*(v3 + 4 * v5));
          v11 = v6;
          *(&v11 & 0xFFFFFFFFFFFFFFF3 | (4 * (v5 & 3))) = v7;
          v8 = v11;
          HIDWORD(v8) = HIDWORD(v6);
          ++v5;
          v6 = v8;
        }

        while (v4 != v5);
      }

      v10 = v8;
    }
  }

  return v10;
}

void sub_21C4145A8(_Unwind_Exception *a1)
{
  v7 = v5;

  _Unwind_Resume(a1);
}

void sub_21C416A44(_Unwind_Exception *a1)
{
  MEMORY[0x21CF0A160](v2, 0x1081C40F5A01273);

  _Unwind_Resume(a1);
}

void sub_21C416E10(_Unwind_Exception *a1)
{
  v4 = v3;

  _Unwind_Resume(a1);
}

void SKCMove::SKCMove(SKCMove *this, SKCAction *a2)
{
  SKCAction::SKCAction(this);
  *v3 = &unk_282E16538;
  *(v3 + 40) = *&a2->var6;
  *(v3 + 72) = *&a2->var11;
  *(v3 + 56) = *&a2->var8;
  *(v3 + 88) = a2->var14;
  *(v3 + 32) = 1;
}

void SKCMove::~SKCMove(SKCMove *this)
{
  SKCAction::~SKCAction(this);

  JUMPOUT(0x21CF0A160);
}

void SKCMove::cpp_updateWithTargetForTime(SKCMove *this, __n128 *a2, __n128 a3)
{
  v3 = a3.n128_u64[0];
  v6 = SKCAction::cpp_ratioForTime(this, a3);
  Translation = SKCNode::getTranslation(a2);
  v7 = SKCNode::getTranslation(a2);
  v8 = v7.n128_f32[1];
  if (this->var24)
  {
    v7.n128_f32[0] = v6 - this->var19;
    if (this->var25)
    {
      v9 = v7.n128_f32[0] * this->var21.var0;
      v10 = Translation;
      v10.n128_f32[0] = Translation.n128_f32[0] + v9;
      Translation = v10;
      this->var20.var0 = this->var20.var0 - v9;
    }

    if (this->var26)
    {
      v7.n128_f32[0] = v7.n128_f32[0] * this->var21.var1;
      v8 = v7.n128_f32[1] + v7.n128_f32[0];
      this->var20.var1 = this->var20.var1 - v7.n128_f32[0];
    }
  }

  else
  {
    if (this->var23)
    {
      goto LABEL_12;
    }

    if (this->var25)
    {
      v7.n128_f32[0] = (v6 * this->var21.var0) + (this->var20.var0 * (1.0 - v6));
      Translation = v7;
    }

    if (this->var26)
    {
      v8 = (v6 * this->var21.var1) + (this->var20.var1 * (1.0 - v6));
    }
  }

  SKCNode::setTranslation(a2, Translation, v8);
LABEL_12:
  this->var19 = v6;
  if ((COERCE_UNSIGNED_INT(v6 + -1.0) & 0x60000000) == 0)
  {
    if (this->var24)
    {
      v7.n128_f32[0] = Translation.n128_f32[0] + this->var20.var0;
      SKCNode::setTranslation(a2, v7, v8 + this->var20.var1);
      this->var20.var0 = 0.0;
      this->var20.var1 = 0.0;
    }

    else if (!this->var23)
    {
      SKCNode::getTranslation(a2);
      SKCNode::getTranslation(a2);
      SKCNode::setTranslation(a2, Translation, v8);
    }

    v7.n128_u64[0] = v3;

    SKCAction::didFinishWithTargetAtTime(this, a2, v7);
  }
}

void SKCMove::cpp_willStartWithTargetAtTime(SKCMove *this, SKCNode *a2, double a3)
{
  SKCAction::cpp_willStartWithTargetAtTime(this, a2, a3);
  this->var19 = 0.0;
  {
    NSLog(&cfstr_SksceneAnimati.isa);
  }

  if (this->var24)
  {
    this->var20 = this->var21;
  }

  else
  {
    v5 = SKCNode::getTranslation(a2).n128_u32[0];
    this->var20 = __PAIR64__(SKCNode::getTranslation(a2).n128_u32[1], v5);
  }
}

void SKCAudioNode::SKCAudioNode(SKCAudioNode *this)
{
  SKCNode::SKCNode(this);
  *v1 = &unk_282E165E0;
  *(v1 + 560) = 0u;
  *(v1 + 576) = 0u;
  *(v1 + 592) = 257;
}

void SKCAudioNode::update(id *this, double a2, float a3)
{
  SKCNode::update(this, a2, 1.0);
  if (*(this + 593) == 1)
  {
    if (this[73])
    {
      v5 = 0uLL;
      SKCNode::resolveWorldPositionRotationAndScale(this, &v5, 0, 0);
      LODWORD(v4) = DWORD1(v5);
      [this[73] setPosition:{*&v5, v4, 0.0}];
    }
  }
}

BOOL SKCAudioNode::getNeedsUpdate(SKCAudioNode *this)
{
  if (SKCNode::getNeedsUpdate(this))
  {
    return 1;
  }

  if (*(this + 172))
  {
    return 0;
  }

  return (*(this + 171) & 0x60) != 0;
}

void SKCAudioNode::setPaused(id *this, char a2)
{
  SKCNode::setPaused(this, a2);
  if (*(this + 592) == 1)
  {
    v3 = this[73];
    if (v3)
    {
      v4 = [v3 engine];
      v5 = [v4 isRunning];

      if (v5)
      {
        [this[73] play];
      }
    }
  }
}

void sub_21C417B0C(void *a1, int a2)
{
  v5 = objc_begin_catch(a1);
  if (a2 == 2)
  {
    v6 = [v5 reason];
    NSLog(&stru_282E19138.isa, v6);
  }

  objc_end_catch();
}

void SKCAudioNode::~SKCAudioNode(id *this)
{

  SKCNode::~SKCNode(this);
}

{
  SKCAudioNode::~SKCAudioNode(this);

  JUMPOUT(0x21CF0A160);
}

void sub_21C417EA0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, char a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, id a20)
{
  _Block_object_dispose(&a15, 8);

  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__0(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void SKCTileMapNode::SKCTileMapNode(SKCTileMapNode *this)
{
  SKCNode::SKCNode(this);
  *v1 = &unk_282E166E0;
  *(v1 + 560) = 0;
  *(v1 + 564) = 1;
  *(v1 + 568) = 0u;
  *(v1 + 584) = 0u;
  *(v1 + 600) = 1065353216;
  *(v1 + 608) = 0;
  *(v1 + 612) = 8224;
  *(v1 + 616) = xmmword_21C4B9120;
  *(v1 + 632) = -1;
  *(v1 + 648) = 0u;
  *(v1 + 640) = v1 + 648;
}

void SKCTileMapNode::~SKCTileMapNode(SKCTileMapNode *this)
{
  *this = &unk_282E166E0;
  v2 = *(this + 80);
  v3 = (this + 648);
  if (v2 != (this + 648))
  {
    do
    {
      free(*(v2[5] + 192));
      v4 = v2[1];
      if (v4)
      {
        do
        {
          v5 = v4;
          v4 = *v4;
        }

        while (v4);
      }

      else
      {
        do
        {
          v5 = v2[2];
          v6 = *v5 == v2;
          v2 = v5;
        }

        while (!v6);
      }

      v2 = v5;
    }

    while (v5 != v3);
  }

  std::__tree<std::__value_type<unsigned short,double>,std::__map_value_compare<unsigned short,std::__value_type<unsigned short,double>,std::less<unsigned short>,true>,std::allocator<std::__value_type<unsigned short,double>>>::destroy(this + 640, *(this + 81));
  *(this + 80) = v3;
  *v3 = 0u;
  std::__tree<std::__value_type<unsigned short,double>,std::__map_value_compare<unsigned short,std::__value_type<unsigned short,double>,std::less<unsigned short>,true>,std::allocator<std::__value_type<unsigned short,double>>>::destroy(this + 640, 0);

  SKCNode::~SKCNode(this);
}

{
  SKCTileMapNode::~SKCTileMapNode(this);

  JUMPOUT(0x21CF0A160);
}

double SKCTileMapNode::getBatchInfo@<D0>(uint64_t a1@<X8>)
{
  *(a1 + 12) = 1;
  *(a1 + 16) = 0u;
  *(a1 + 32) = 0u;
  *(a1 + 48) = 0u;
  *(a1 + 60) = 0u;
  *&result = 0x300000000;
  *(a1 + 4) = 0x300000000;
  *a1 = 1;
  return result;
}

double SKCTileMapNode::getBoundingBox(float32x4_t *this)
{
  (*(this->i64[0] + 104))(this);
  v6 = 0;
  v7.i64[0] = 0x3F0000003F000000;
  v7.i64[1] = 0x3F0000003F000000;
  v8 = this[21];
  v7.i64[0] = vmulq_f32(vsubq_f32(v7, this[22]), v8).u64[0];
  v9 = *algn_21C4B92D0;
  v7.i64[1] = *(&SKCBoundingBoxEmpty + 1);
  *&v9 = 0.5 * v8.f32[0];
  v10 = vmuls_lane_f32(0.5, *v8.f32, 1);
  v11 = xmmword_21C4B92E0;
  *(&v11 + 1) = v10;
  v13[0] = v7;
  v13[1] = v9;
  v13[2] = v11;
  v13[3] = unk_21C4B92F0;
  do
  {
    *(&v14 + v6 * 16) = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v2, COERCE_FLOAT(v13[v6])), v3, *&v13[v6], 1), v4, v13[v6], 2), v5, v13[v6], 3);
    ++v6;
  }

  while (v6 != 4);
  return *&v14;
}

void SKCTileMapNode::update(id *this, double a2, float a3)
{
  SKCNode::update(this, a2, a3);
  if ((*(this + 172) & 1) == 0)
  {
    v6 = *(this + 42);
    v7 = this[1];
    v8 = [v7 tileSet];

    if (v8)
    {
      v9 = *(this + 81);
      v10 = *(this + 150);
      if (v9 != v10)
      {
        *(this + 150) = v9;
      }

      v11 = this[80];
      if (v11 != (this + 81))
      {
        v12 = v6 * a3;
        while (1)
        {
          v13 = *(v11 + 5);
          if ((*(v13 + 4) & 4) != 0 && *(v13 + 8))
          {
            if (v9 != v10)
            {
              *(v13 + 4) |= 1u;
            }

            v14 = *(v13 + 168);
            if (v14)
            {
              break;
            }
          }

LABEL_31:
          v38 = *(v11 + 1);
          if (v38)
          {
            do
            {
              v39 = v38;
              v38 = *v38;
            }

            while (v38);
          }

          else
          {
            do
            {
              v39 = *(v11 + 2);
              v40 = *v39 == v11;
              v11 = v39;
            }

            while (!v40);
          }

          v11 = v39;
          if (v39 == (this + 81))
          {
            goto LABEL_37;
          }
        }

        while (1)
        {
          v15 = *(v14 + 8);
          v16 = [v7 tileSet];
          v17 = [v16 tileDefinitions];
          v18 = [v17 count];

          if (v18 > v15)
          {
            break;
          }

LABEL_30:
          v14 = *v14;
          if (!v14)
          {
            goto LABEL_31;
          }
        }

        v19 = [v7 tileSet];
        v20 = [v19 tileDefinitions];
        v21 = [v20 objectAtIndexedSubscript:v15];

        [v21 lastTargetTime];
        if (a2 - v22 < 0.00000011920929)
        {
          if ([v21 frameDidChange])
          {
            SKCNode::setDirty(this);
            *(v13 + 4) |= 2u;
            if ([v21 nextFrameAffectsVertexBuffer])
            {
              *(v13 + 4) |= 1u;
            }
          }

          goto LABEL_29;
        }

        [v21 setFrameDidChange:0];
        v23 = [v21 textures];
        v24 = [v23 count];

        [v21 lastTargetTime];
        v26 = v25;
        [v21 setLastTargetTime:a2];
        [v21 currentFrameTime];
        v27 = a2 - v26;
        *&v29 = v28 + (v27 * v12);
        [v21 setCurrentFrameTime:v29];
        [v21 currentFrameTime];
        LODWORD(v26) = v30;
        [v21 timePerFrame];
        if (v31 >= *&v26)
        {
LABEL_29:

          goto LABEL_30;
        }

        [v21 setCurrentFrameTime:0.0];
        v32 = [v21 currentFrameIndex];
        [v21 setCurrentFrameIndex:{(objc_msgSend(v21, "currentFrameIndex") + 1) % v24}];
        [v21 setFrameDidChange:1];
        SKCNode::setDirty(this);
        *(v13 + 4) |= 2u;
        [v21 setNextFrameAffectsVertexBuffer:0];
        v33 = [v21 textures];
        v34 = [v33 objectAtIndexedSubscript:v32];

        v35 = [v21 textures];
        v36 = [v35 objectAtIndexedSubscript:{objc_msgSend(v21, "currentFrameIndex")}];

        if (v34)
        {
          [v34 _backingTexture];
          if (v36)
          {
            goto LABEL_20;
          }
        }

        else
        {
          v43 = 0;
          v44 = 0;
          if (v36)
          {
LABEL_20:
            [v36 _backingTexture];
            v37 = v43 == v41;
            if (v42)
            {
              std::__shared_weak_count::__release_shared[abi:ne200100](v42);
            }

            goto LABEL_24;
          }
        }

        v37 = v43 == 0;
LABEL_24:
        if (v44)
        {
          std::__shared_weak_count::__release_shared[abi:ne200100](v44);
        }

        if (!v37)
        {
          [v21 setNextFrameAffectsVertexBuffer:1];
          *(v13 + 4) |= 1u;
        }

        goto LABEL_29;
      }
    }

LABEL_37:
  }
}

void SKCTileMapNode::addRenderOps(uint64_t a1, SKCRenderInfo *a2, uint64_t *a3)
{
  v3 = a2;
  RenderData = SKCTileMapNode::_generateRenderData(a1, a2);
  if (!RenderData)
  {
    return;
  }

  v6 = v3[52];
  if (!v6 || *(v6 + 48) <= (6 * RenderData))
  {
    v7 = (6 * RenderData) | 1u;
    SKCRenderer::getBackingContext(v3[13], &__p);
    v8 = (*(*__p.__r_.__value_.__l.__data_ + 8))(__p.__r_.__value_.__r.__words[0], 4, 1, v7, 0);
    std::shared_ptr<jet_buffer>::shared_ptr[abi:ne200100]<jet_buffer,0>(&v81, v8);
  }

  v9 = (v3 + 4);
  v82 = vld4q_f32(v9);
  v74 = v82;
  v76 = v3;
  if (*(a1 + 568))
  {
    {
      SKCTileMapNode::addRenderOps(SKCRenderInfo *,std::shared_ptr<jet_command_buffer> const&)::baseTime = skCurrentTime();
    }

    v10 = skCurrentTime() - *&SKCTileMapNode::addRenderOps(SKCRenderInfo *,std::shared_ptr<jet_command_buffer> const&)::baseTime;
    v11 = fmodf(v10, 43200.0);
    v12 = *(a1 + 568);
    if (v12)
    {
      [v12 _backingProgramWithTransform];
      if (__p.__r_.__value_.__l.__size_)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](__p.__r_.__value_.__l.__size_);
      }

      if (__p.__r_.__value_.__r.__words[0])
      {
        v13 = *(a1 + 568);
        if (v13)
        {
          [v13 _backingProgramWithTransform];
          size = __p.__r_.__value_.__l.__size_;
          v14 = __p.__r_.__value_.__r.__words[0];
        }

        else
        {
          size = 0;
          v14 = 0;
        }

LABEL_21:
        v17 = 0;
        goto LABEL_22;
      }
    }
  }

  else
  {
    v11 = 0.0;
  }

  v16 = *(a1 + 560);
  if (v16 && SKCRenderer::requireLighting(v3[13], v16))
  {
    v14 = v3[29];
    size = v3[30];
    v17 = 1;
    if (size)
    {
      atomic_fetch_add_explicit((size + 8), 1uLL, memory_order_relaxed);
    }

    goto LABEL_22;
  }

  v14 = v3[25];
  size = v3[26];
  if (!size)
  {
    goto LABEL_21;
  }

  v17 = 0;
  atomic_fetch_add_explicit((size + 8), 1uLL, memory_order_relaxed);
LABEL_22:
  v18 = *a3;
  BackingBlendMode = SKBlendModeGetBackingBlendMode(*(a1 + 288));
  LODWORD(__p.__r_.__value_.__l.__data_) = 31;
  v20 = *(v18 + 16);
  if (v20 >= *(v18 + 24))
  {
    v21 = std::vector<jet_render_op>::__emplace_back_slow_path<jet_render_opcode>(v18 + 8, &__p);
  }

  else
  {
    *v20 = &unk_282E15828;
    *(v20 + 8) = 31;
    *(v20 + 24) = 0;
    *(v20 + 32) = 0;
    *(v20 + 16) = 0;
    *(v20 + 64) = 0;
    v21 = v20 + 192;
    *(v20 + 96) = 0;
  }

  *(v18 + 16) = v21;
  *(v21 - 80) = v14;
  *(v21 - 64) = BackingBlendMode;
  *(v21 - 60) = xmmword_21C4B9130;
  *(v21 - 44) = 3;
  if (v17)
  {
    *&__p.__r_.__value_.__l.__data_ = 0uLL;
    SKCNode::resolveWorldPositionRotationAndScale(a1, 0, &__p, 0);
    v22 = *&__p.__r_.__value_.__r.__words[1];
    v23 = v3[13];
    v24 = *(a1 + 560);
    v25 = a3[1];
    v79 = *a3;
    v80 = v25;
    if (v25)
    {
      atomic_fetch_add_explicit(&v25->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    SKCRenderer::setLightingUniforms(v23, v24, &v79, v22);
    if (v80)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v80);
    }
  }

  if (*(a1 + 568))
  {
    v26 = *a3;
    std::string::basic_string[abi:ne200100]<0>(&__p, "u_time");
    jet_command_buffer::set_fragment_constant_value(v26, &__p, v11);
    if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__p.__r_.__value_.__l.__data_);
    }
  }

  v27 = *a3;
  std::string::basic_string[abi:ne200100]<0>(&__p, "u_color");
  jet_command_buffer::set_vertex_constant_value(v27, &__p, *(a1 + 576));
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  v28 = *a3;
  std::string::basic_string[abi:ne200100]<0>(&__p, "u_transform");
  jet_command_buffer::set_vertex_constant_value(v28, &__p, v74.val[0], v74.val[1], v74.val[2], v74.val[3]);
  v67 = size;
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  v29 = *(a1 + 640);
  v68 = (a1 + 648);
  if (v29 != (a1 + 648))
  {
    while (1)
    {
      v75 = v29[5];
      if ((*(v75 + 4) & 4) != 0)
      {
        if (*(v75 + 8))
        {
          v30 = *(v75 + 128);
          if (v30)
          {
            break;
          }
        }
      }

LABEL_85:
      v64 = v29[1];
      if (v64)
      {
        do
        {
          v65 = v64;
          v64 = *v64;
        }

        while (v64);
      }

      else
      {
        do
        {
          v65 = v29[2];
          v66 = *v65 == v29;
          v29 = v65;
        }

        while (!v66);
      }

      v29 = v65;
      if (v65 == v68)
      {
        goto LABEL_91;
      }
    }

    while (1)
    {
      v31 = v30[3];
      v32 = v30[4];
      v33 = v30[5];
      v34 = v31;
      v35 = v32;
      v36 = HIDWORD(v33);
      if (HIDWORD(v33))
      {
        break;
      }

LABEL_75:

      v30 = *v30;
      if (!v30)
      {
        goto LABEL_85;
      }
    }

    if (v34)
    {
      [v34 _backingTexture];
      v73 = __p.__r_.__value_.__l.__size_;
      v37 = __p.__r_.__value_.__r.__words[0];
      v38 = [v34 filteringMode];
      v39 = 58;
      if (v38 == 1)
      {
        v39 = 60;
      }

      v40 = &v3[v39];
      v42 = *v40;
      v41 = v40[1];
      if (v41)
      {
LABEL_46:
        atomic_fetch_add_explicit(&v41->__shared_owners_, 1uLL, memory_order_relaxed);
      }
    }

    else
    {
      v37 = v3[54];
      v61 = v3[55];
      if (v61)
      {
        atomic_fetch_add_explicit(&v61->__shared_owners_, 1uLL, memory_order_relaxed);
      }

      v73 = v61;
      v42 = v3[58];
      v41 = v3[59];
      if (v41)
      {
        goto LABEL_46;
      }
    }

    v72 = v41;
    v69 = v33;
    if (v35)
    {
      [v35 _backingTexture];
      v71 = __p.__r_.__value_.__l.__size_;
      v43 = __p.__r_.__value_.__r.__words[0];
      v44 = [v35 filteringMode];
      v45 = 58;
      if (v44 == 1)
      {
        v45 = 60;
      }

      v46 = &v76[v45];
      v47 = v46[1];
      v70 = *v46;
      if (!v47)
      {
        goto LABEL_52;
      }
    }

    else
    {
      v43 = v3[56];
      v62 = v3[57];
      if (v62)
      {
        atomic_fetch_add_explicit(&v62->__shared_owners_, 1uLL, memory_order_relaxed);
      }

      v63 = v3[58];
      v47 = v3[59];
      v70 = v63;
      v71 = v62;
      if (!v47)
      {
        goto LABEL_52;
      }
    }

    atomic_fetch_add_explicit(&v47->__shared_owners_, 1uLL, memory_order_relaxed);
LABEL_52:
    std::vector<std::shared_ptr<jet_buffer>>::push_back[abi:ne200100](v76 + 84, v76 + 26);
    v48 = *a3;
    std::string::basic_string[abi:ne200100]<0>(&__p, "u_texture");
    jet_command_buffer::set_fragment_texture(v48, &__p, v37);
    if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__p.__r_.__value_.__l.__data_);
    }

    v49 = *a3;
    std::string::basic_string[abi:ne200100]<0>(&__p, "u_texture");
    jet_command_buffer::set_fragment_sampler(v49, &__p, v42);
    if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__p.__r_.__value_.__l.__data_);
    }

    v50 = *a3;
    std::string::basic_string[abi:ne200100]<0>(&__p, "a_position");
    current_buffer = jet_buffer_pool::get_current_buffer(*(v75 + 80));
    jet_command_buffer::set_vertex_buffer(v50, &__p, current_buffer);
    if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__p.__r_.__value_.__l.__data_);
    }

    v52 = *a3;
    std::string::basic_string[abi:ne200100]<0>(&__p, "a_tex_coord");
    v53 = jet_buffer_pool::get_current_buffer(*(v75 + 96));
    jet_command_buffer::set_vertex_buffer(v52, &__p, v53);
    if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__p.__r_.__value_.__l.__data_);
    }

    v54 = *a3;
    std::string::basic_string[abi:ne200100]<0>(&__p, "u_texture2");
    jet_command_buffer::set_fragment_texture(v54, &__p, v43);
    if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__p.__r_.__value_.__l.__data_);
    }

    v55 = *a3;
    std::string::basic_string[abi:ne200100]<0>(&__p, "u_texture2");
    jet_command_buffer::set_fragment_sampler(v55, &__p, v70);
    if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__p.__r_.__value_.__l.__data_);
    }

    v56 = *a3;
    v57 = v76[52];
    LODWORD(__p.__r_.__value_.__l.__data_) = 4;
    v58 = *(v56 + 16);
    if (v58 >= *(v56 + 24))
    {
      v59 = std::vector<jet_render_op>::__emplace_back_slow_path<jet_render_opcode>(v56 + 8, &__p);
    }

    else
    {
      *v58 = &unk_282E15828;
      *(v58 + 8) = 4;
      *(v58 + 24) = 0;
      *(v58 + 32) = 0;
      *(v58 + 16) = 0;
      *(v58 + 64) = 0;
      v59 = v58 + 192;
      *(v58 + 96) = 0;
    }

    *(v56 + 16) = v59;
    *(v59 - 80) = v57;
    *(v59 - 64) = 3;
    *(v59 - 60) = 6 * v69;
    *(v59 - 56) = 6 * v36;
    v60 = v76[83];
    ++*(v60 + 164);
    *(v60 + 148) += 6 * v36 / 6u;
    if (v47)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v47);
    }

    if (v71)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v71);
    }

    v3 = v76;
    if (v72)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v72);
    }

    if (v73)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v73);
    }

    goto LABEL_75;
  }

LABEL_91:
  if (v67)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v67);
  }
}

uint64_t SKCTileMapNode::_generateRenderData(id *this, SKCRenderInfo *a2)
{
  v3 = this;
  v461 = *MEMORY[0x277D85DE8];
  v4 = this[1];
  v373 = a2;
  SKCRenderer::getBackingContext(*(a2 + 13), &v454);
  v3[38].i32[2] = 0;
  v5 = v3[40].i64[0];
  v371 = &v3[40].i64[1];
  if (v5 != &v3[40].u32[2])
  {
    v403 = v4;
    v368 = (&v3[37].u64[1] + 4);
    __asm { FMOV            V0.4S, #1.0 }

    v396 = _Q0;
    __asm { FMOV            V0.4S, #-1.0 }

    v369 = _Q0;
    __asm { FMOV            V0.2S, #1.0 }

    v397 = _Q0;
    v446 = v3;
    while (1)
    {
      v12 = 0;
      v375 = v5;
      v13 = v5[2].i64[1];
      v391 = v13->i32[0];
      v14 = v3[38].u8[4];
      v15 = v3[38].u8[5];
      v447 = v13[12].i64[0];
      v16 = v13[2];
      v453.columns[0] = v13[1];
      v453.columns[1] = v16;
      v17 = v13[4];
      v451 = v13;
      v453.columns[2] = v13[3];
      v453.columns[3] = v17;
      *&v18 = vmlsq_f32(v453.columns[0], v3[21], v3[22]).u64[0];
      *(&v18 + 1) = v453.columns[0].i64[1];
      v19 = *(v373 + 2);
      v20 = *(v373 + 3);
      v21 = *(v373 + 4);
      v22 = *(v373 + 5);
      v456[0] = v18;
      v456[1] = v453.columns[1];
      v456[2] = v453.columns[2];
      v456[3] = v453.columns[3];
      do
      {
        *(&v457 + v12 * 16) = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v19, COERCE_FLOAT(v456[v12])), v20, *&v456[v12], 1), v21, v456[v12], 2), v22, v456[v12], 3);
        ++v12;
      }

      while (v12 != 4);
      v453.columns[0] = v457;
      v453.columns[1] = v458;
      v453.columns[2] = v459;
      v453.columns[3] = v460;
      *v23.i64 = SKCBoundingBoxGetVerts(&v453);
      v453.columns[0] = v23;
      v453.columns[1] = v24;
      v453.columns[2] = v25;
      v453.columns[3] = v26;
      IsVisible = quadIsVisible(&v453);
      v28 = v3[35].u8[4];
      v29 = v451->i8[4];
      if (IsVisible & 1 | ((v28 & 1) == 0))
      {
        break;
      }

      v451->i8[4] = v29 & 0xFB;
      if (v28 && (v29 & 8) == 0)
      {
        v52 = v451;
        v53 = v451[5].i64[1];
        v451[5].i64[0] = 0;
        v451[5].i64[1] = 0;
        if (v53)
        {
          std::__shared_weak_count::__release_shared[abi:ne200100](v53);
          v52 = v451;
        }

        v54 = v52[6].i64[1];
        v52[6].i64[0] = 0;
        v52[6].i64[1] = 0;
        if (v54)
        {
          std::__shared_weak_count::__release_shared[abi:ne200100](v54);
          v52 = v451;
        }

        std::__hash_table<std::__hash_value_type<unsigned long long,SKCTileMapNodeRenderBatch>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,SKCTileMapNodeRenderBatch>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,SKCTileMapNodeRenderBatch>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,SKCTileMapNodeRenderBatch>>>::clear(&v52[7]);
        v55 = v52->i8[4] | 8;
LABEL_296:
        v52->i8[4] = v55;
      }

LABEL_297:
      v363 = v375;
      v364 = v375->i64[1];
      if (v364)
      {
        do
        {
          v365 = v364;
          v364 = v364->i64[0];
        }

        while (v364);
      }

      else
      {
        do
        {
          v365 = v363[2];
          _ZF = v365->i64[0] == v363;
          v363 = v365;
        }

        while (!_ZF);
      }

      v5 = v365;
      if (v365 == v371)
      {
        if (v3[38].i32[2])
        {
          v366 = v3[38].u8[5] * v3[38].u8[4];
        }

        else
        {
          v366 = 0;
        }

        v4 = v403;
        goto LABEL_308;
      }
    }

    if (IsVisible)
    {
      v29 |= 4u;
      v451->i8[4] = v29;
      ++v3[38].i32[2];
    }

    if ((v29 & 8) != 0)
    {
      v29 = v29 & 0xF4 | 3;
      v451->i8[4] = v29;
    }

    if ((v29 & 3) == 0)
    {
      goto LABEL_297;
    }

    std::__hash_table<std::__hash_value_type<unsigned long long,SKCTileMapNodeRenderBatch>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,SKCTileMapNodeRenderBatch>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,SKCTileMapNodeRenderBatch>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,SKCTileMapNodeRenderBatch>>>::clear(&v451[7]);
    v439 = (v15 * v14);
    if (v439)
    {
      v30 = 0;
      while (1)
      {
        v31 = *(v451[12].i64[0] + v30);
        if (v31 != 0x7FFFFFFF)
        {
          break;
        }

LABEL_23:
        v30 += 4;
        if (4 * v439 == v30)
        {
          goto LABEL_46;
        }
      }

      if (*(v451[12].i64[0] + v30) != 0xFFFF)
      {
        v32 = [v403 tileSet];
        if (!v32)
        {
          goto LABEL_21;
        }

        v33 = [v403 tileSet];
        v34 = [v33 tileDefinitions];
        if (v34)
        {
          v35 = [v403 tileSet];
          v36 = [v35 tileDefinitions];
          v37 = [v36 count] > v31;

          if (v37)
          {
            v38 = [v403 tileSet];
            v39 = [v38 tileDefinitions];
            v32 = [v39 objectAtIndexedSubscript:v31];

            v40 = [v32 currentFrameIndex];
            v41 = [v32 textures];
            if ([v41 count] <= v40)
            {
              v43 = 0;
            }

            else
            {
              v42 = [v32 textures];
              v43 = [v42 objectAtIndexedSubscript:v40];
            }

            v45 = [v32 normalTextures];
            if ([v45 count] <= v40)
            {
              v44 = 0;
            }

            else
            {
              v46 = [v32 normalTextures];
              v44 = [v46 objectAtIndexedSubscript:v40];
            }

            if (v43)
            {
              [(SKTexture *)v43 _backingTexture];
              x = v457.x;
              if (*&v457.y)
              {
                std::__shared_weak_count::__release_shared[abi:ne200100](*&v457.y);
              }

              if (x != 0.0)
              {
                *&v456[0] = generateBatchID(v43, v44);
                if (std::__hash_table<std::__hash_value_type<unsigned long long,SKCTileMapNodeRenderBatch>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,SKCTileMapNodeRenderBatch>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,SKCTileMapNodeRenderBatch>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,SKCTileMapNodeRenderBatch>>>::find<unsigned long long>(v451[7].i64, v456))
                {
                  *&v457.x = v456;
                  v48 = std::__hash_table<std::__hash_value_type<unsigned long long,SKCTileMapNodeRenderBatch>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,SKCTileMapNodeRenderBatch>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,SKCTileMapNodeRenderBatch>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,SKCTileMapNodeRenderBatch>>>::__emplace_unique_key_args<unsigned long long,std::piecewise_construct_t const&,std::tuple<unsigned long long const&>,std::tuple<>>(v451[7].i64, v456);
                  ++*(v48 + 11);
                }

                else
                {
                  v49 = v43;
                  v50 = v44;
                  *&v457.x = v456;
                  v51 = std::__hash_table<std::__hash_value_type<unsigned long long,SKCTileMapNodeRenderBatch>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,SKCTileMapNodeRenderBatch>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,SKCTileMapNodeRenderBatch>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,SKCTileMapNodeRenderBatch>>>::__emplace_unique_key_args<unsigned long long,std::piecewise_construct_t const&,std::tuple<unsigned long long const&>,std::tuple<>>(v451[7].i64, v456);
                  objc_storeStrong(v51 + 3, v43);
                  objc_storeStrong(v51 + 4, v44);
                  v51[5] = 0x100000000;
                }

                if ([v32 frameDidChange])
                {
                  *(v451[12].i64[0] + v30) = v31 | 0x80000000;
                }
              }
            }

            goto LABEL_22;
          }
        }

        else
        {
        }
      }

      v32 = 0;
LABEL_21:
      v43 = 0;
      v44 = 0;
LABEL_22:

      v3 = v446;
      goto LABEL_23;
    }

LABEL_46:
    v56 = v451->i32[2];
    if (!v56)
    {
      goto LABEL_297;
    }

    v57 = (4 * v56);
    v58 = v451[5].i64[0];
    if (!v58 || *(v58 + 16) < v57)
    {
      v59 = (*(*v454 + 16))(v454, 0, 4, v57);
      std::shared_ptr<jet_buffer_pool>::shared_ptr[abi:ne200100]<jet_buffer_pool,0>(&v457, v59);
    }

    v60 = v451[6].i64[0];
    if (!v60 || *(v60 + 16) < v57)
    {
      v61 = (*(*v454 + 16))(v454, 0, 2, v57);
      std::shared_ptr<jet_buffer_pool>::shared_ptr[abi:ne200100]<jet_buffer_pool,0>(&v457, v61);
    }

    v62 = v451[5].i64[0];
    data = jet_buffer_pool::get_data(v62);
    jet_buffer_pool::get_element_size(v62);
    v63 = v451[6].i64[0];
    v398 = jet_buffer_pool::get_data(v63);
    jet_buffer_pool::get_element_size(v63);
    v64 = v451[8].i64[0];
    if (v64)
    {
      v65 = 0;
      do
      {
        v66 = v64[3];
        *&v457.x = v64[2];
        *&v457.y = v66;
        v67 = v64[4];
        v68 = v67;
        v69 = v64[5];
        v458.i64[0] = v68;
        v458.i64[1] = v69;
        y = v457.y;
        v71 = *&v457.y;
        v72 = v68;
        *&v456[0] = &v457;
        v73 = std::__hash_table<std::__hash_value_type<unsigned long long,SKCTileMapNodeRenderBatch>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,SKCTileMapNodeRenderBatch>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,SKCTileMapNodeRenderBatch>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,SKCTileMapNodeRenderBatch>>>::__emplace_unique_key_args<unsigned long long,std::piecewise_construct_t const&,std::tuple<unsigned long long const&>,std::tuple<>>(v451[7].i64, &v457);
        objc_storeStrong(v73 + 3, *&y);
        objc_storeStrong(v73 + 4, v67);
        v73[5] = v65;

        v65 += HIDWORD(v69);
        v64 = *v64;
      }

      while (v64);
    }

    v3 = v446;
    v399 = v446[22].u64[0];
    v74 = vmlaq_n_f32(v396, vaddq_f32(vminnmq_f32(vmaxnmq_f32(v446[19], 0), v396), v369), fminf(fmaxf(v446[20].f32[0], 0.0), 1.0));
    v75 = vmuls_lane_f32(v446[20].f32[1], v74, 3);
    v74.i32[3] = 1.0;
    v446[36] = vmulq_n_f32(v74, fminf(fmaxf(*(v373 + 24) * v75, 0.0), 1.0));
    v76 = v446[37].i64[0];
    __asm { FMOV            V0.2D, #0.5 }

    v394 = _Q0;
    if ((v76 - 2) >= 2)
    {
      if (v76)
      {
        if (v76 != 1)
        {
          goto LABEL_292;
        }

        v78 = v446[37].u32[3];
        v79 = v446[38].i32[0];
        [v403 tileSize];
        v81 = v80;
        [v403 tileSize];
        LOBYTE(v83) = v446[38].i8[4];
        if (!v83)
        {
          goto LABEL_292;
        }

        v84 = 0;
        v85.f32[0] = v81;
        v86 = v82;
        v87 = v446[21];
        v88 = COERCE_FLOAT(HIDWORD(v446[21].i64[0]));
        v89 = v85.f32[0] * 0.5 / v87.f32[0];
        v388 = v89;
        v90 = -v86 * 0.5 / v88;
        v91 = v86 * 0.5 / v88;
        v385 = v91;
        v85.f32[1] = v86;
        v400 = v446[38].i32[0] - 1;
        *v92.f32 = vdiv_f32(vdiv_f32(v85, *v87.f32), v85);
        v380 = (~v391 >> 16);
        v382 = v391;
        v92.i64[1] = v397;
        v392 = v92;
        v378 = v78 / (v79 + v78);
        while (1)
        {
          v93 = v83;
          if (v84 >= v83)
          {
            goto LABEL_132;
          }

          v94 = v400;
          v376 = v84;
          if (v400 >= v3[38].u8[5])
          {
LABEL_129:
            v93 = v83;
            v3 = v446;
            goto LABEL_131;
          }

          while (1)
          {
            v95 = v84 + v93 * v94;
            v96 = *(v451[12].i64[0] + 4 * v95);
            if (v96 == 0xFFFF || ([v403 tileSet], (v97 = objc_claimAutoreleasedReturnValue()) == 0))
            {
LABEL_69:
              v109 = 0;
              v99 = 0;
              v105 = 0;
              goto LABEL_77;
            }

            v98 = [v403 tileSet];
            v99 = [v98 tileDefinitions];
            if (v99)
            {
              v100 = [v403 tileSet];
              v101 = [v100 tileDefinitions];
              v102 = [v101 count] > v96;

              if (!v102)
              {
                goto LABEL_69;
              }

              v103 = [v403 tileSet];
              v104 = [v103 tileDefinitions];
              v105 = [v104 objectAtIndexedSubscript:v96];

              LODWORD(v104) = [v105 currentFrameIndex];
              v106 = [v105 textures];
              v107 = v104;
              if ([v106 count] <= v104)
              {
                v99 = 0;
              }

              else
              {
                v108 = [v105 textures];
                v99 = [v108 objectAtIndexedSubscript:v107];
              }

              v97 = [v105 normalTextures];
              if ([v97 count] <= v107)
              {
                v109 = 0;
                goto LABEL_76;
              }

              v98 = [v105 normalTextures];
              v109 = [v98 objectAtIndexedSubscript:v107];
            }

            else
            {
              v109 = 0;
              v105 = 0;
            }

LABEL_76:
LABEL_77:
            BatchID = generateBatchID(v99, v109);
            if (std::__hash_table<std::__hash_value_type<unsigned long long,SKCTileMapNodeRenderBatch>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,SKCTileMapNodeRenderBatch>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,SKCTileMapNodeRenderBatch>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,SKCTileMapNodeRenderBatch>>>::find<unsigned long long>(v451[7].i64, &BatchID))
            {
              v425 = v95;
              *&v457.x = &BatchID;
              v110 = std::__hash_table<std::__hash_value_type<unsigned long long,SKCTileMapNodeRenderBatch>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,SKCTileMapNodeRenderBatch>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,SKCTileMapNodeRenderBatch>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,SKCTileMapNodeRenderBatch>>>::__emplace_unique_key_args<unsigned long long,std::piecewise_construct_t const&,std::tuple<unsigned long long const&>,std::tuple<>>(v451[7].i64, &BatchID);
              v111 = v110[3];
              v429 = v110[4];
              v112 = v110[5];
              [(SKTexture *)v99 textureRect];
              v113 = v462.origin.x;
              v114 = v462.origin.y;
              width = v462.size.width;
              height = v462.size.height;
              MinX = CGRectGetMinX(v462);
              v463.origin.x = v113;
              v463.origin.y = v114;
              v463.size.width = width;
              v463.size.height = height;
              MaxX = CGRectGetMaxX(v463);
              v464.origin.x = v113;
              v464.origin.y = v114;
              v464.size.width = width;
              v464.size.height = height;
              MinY = CGRectGetMinY(v464);
              v465.origin.x = v113;
              v465.origin.y = v114;
              v465.size.width = width;
              v465.size.height = height;
              MaxY = CGRectGetMaxY(v465);
              [(SKTexture *)v99 cropOffset];
              v457.x = v121;
              v457.y = v122;
              v440 = sk_vector_make(&v457);
              [(SKTexture *)v99 cropScale];
              v457.x = v123;
              v457.y = v124;
              v419 = sk_vector_make(&v457);
              if (v99)
              {
                [(SKTexture *)v99 _backingTexture];
                v125 = v109;
                v126 = v94;
                v127 = v457.x;
              }

              else
              {
                v125 = v109;
                v126 = v94;
                v127 = 0.0;
                v457.x = 0.0;
                v457.y = 0.0;
              }

              v128 = MinX;
              v129 = MaxX;
              v130 = MinY;
              v131 = MaxY;
              if ((*(**&v127 + 24))(COERCE_CGFLOAT(*&v127)) == 1)
              {
                v128 = v128 * (***&v457.x)(*&v457.x);
                v129 = v129 * (***&v457.x)(*&v457.x);
                v130 = v130 * (*(**&v457.x + 8))(*&v457.x);
                v131 = v131 * (*(**&v457.x + 8))(*&v457.x);
              }

              v132 = [(SKTexture *)v99 isFlipped];
              if (v132)
              {
                v133 = v131;
              }

              else
              {
                v133 = v130;
              }

              v448 = v133;
              if (!v132)
              {
                v130 = v131;
              }

              v416 = v446[21];
              v134 = [v105 flipVertically];
              v94 = v126;
              *v135.i8 = v440;
              if (v134)
              {
                *&v135.i32[1] = -v440.f32[1];
                v410 = v130;
                v413 = v135;
              }

              else
              {
                v410 = v448;
                v413 = v135;
                v448 = v130;
              }

              v136 = [v105 flipHorizontally];
              if (v136)
              {
                v137 = v129;
              }

              else
              {
                v137 = v128;
              }

              v433 = v137;
              if (v136)
              {
                v138 = v128;
              }

              else
              {
                v138 = v129;
              }

              v441 = v138;
              if (v136)
              {
                v139 = -1;
              }

              else
              {
                v139 = 0;
              }

              [(SKTexture *)v99 size];
              v404 = v141;
              v407 = v140;
              v109 = v125;
              [v105 size];
              v144 = HIDWORD(v112) + v112;
              v145 = v451->i8[4];
              if (v145)
              {
                v146 = 0;
                v149.i64[0] = v416.i64[0];
                *v147.f32 = v419;
                v148.i64[1] = v396.i64[1];
                v147.i64[1] = v397;
                v149.i64[1] = v396.i64[1];
                v150 = v413;
                *v150.i32 = -*v413.i32;
                v151.f64[0] = v407;
                v151.f64[1] = v404;
                v152 = vbslq_s8(vdupq_n_s32(v139), v150, v413);
                v153 = v142;
                v148.f32[0] = v153;
                v154 = v143;
                v148.f32[1] = v154;
                v155 = vmulq_f32(v147, v148);
                v156 = vmul_f32(v419, vcvt_f32_f64(v151));
                v157 = vcvtq_f64_f32(v156);
                *v158.f32 = vcvt_f32_f64(vdivq_f64(vaddq_f64(vmulq_f64(vsubq_f64(v151, v157), v394), vcvtq_f64_f32(vmul_f32(*v152.i8, v156))), v157));
                *&v157.f64[0] = vextq_s8(v152, v152, 8uLL).u64[0];
                v158.i64[1] = *&v157.f64[0];
                LOBYTE(v157.f64[0]) = v446[38].i8[4];
                *v152.i32 = v382;
                v152.i8[0] = v446[38].i8[5];
                v159 = __PAIR64__(v378 + (((((v380 * v152.u32[0]) + v126) * v385) + (((v382 * LODWORD(v157.f64[0])) + v84) * v90)) + v90), ((((v380 * v152.u32[0]) + v126) * v388) + (((v382 * LODWORD(v157.f64[0])) + v84) * v388)) + 0.0);
                do
                {
                  *(data + 16 * (4 * v144) + v146 * 16) = vmulq_f32(v149, vsubq_f32(vaddq_f32(v159, vmulq_f32(v392, vmulq_f32(v155, vaddq_f32(v158, xmmword_21C4B91A0[v146])))), v399));
                  ++v146;
                }

                while (v146 != 4);
                v145 = v451->i8[4];
              }

              if ((v145 & 2) != 0)
              {
                if ([(SKTexture *)v99 _needsExtrusionWorkaround])
                {
                  v160 = (***&v457.x)(*&v457.x);
                  v161 = (*(**&v457.x + 8))(*&v457.x);
                  v162 = 0.25 / v160;
                  v163 = 0.25 / v161;
                  if (v433 >= v441)
                  {
                    v164 = -v162;
                  }

                  else
                  {
                    v164 = 0.25 / v160;
                  }

                  *&v165 = v433 + v164;
                  if ((v433 + v164) >= v441)
                  {
                    v162 = -v162;
                  }

                  *&v166 = v441 - v162;
                  v167 = -v163;
                  if (v410 >= v448)
                  {
                    v168 = -v163;
                  }

                  else
                  {
                    v168 = 0.25 / v161;
                  }

                  v169 = v410 + v168;
                  if ((v410 + v168) < v448)
                  {
                    v167 = 0.25 / v161;
                  }

                  v170 = v448 - v167;
                }

                else
                {
                  v170 = v448;
                  *&v165 = v433;
                  *&v166 = v441;
                  v169 = v410;
                }

                v171 = __PAIR64__(LODWORD(v169), v165);
                v172 = __PAIR64__(LODWORD(v169), v166);
                *(&v166 + 1) = v170;
                *(&v165 + 1) = v170;
                if (v99)
                {
                  v420 = __PAIR64__(LODWORD(v169), v166);
                  v449 = __PAIR64__(LODWORD(v169), v165);
                  v434 = v165;
                  v442 = v166;
                  if ([(SKTexture *)v99 isRotated])
                  {
                    v171 = v434;
                    v173 = v442;
                    v172 = v449;
                    v166 = v420;
                  }

                  else
                  {
                    v171 = v449;
                    v172 = v420;
                    v166 = v442;
                    v173 = v434;
                  }
                }

                else
                {
                  v173 = v165;
                }

                *(v398 + 8 * (4 * v144)) = v171;
                *(v398 + 8 * ((4 * v144) | 1u)) = v172;
                *(v398 + 8 * ((4 * v144) | 2u)) = v166;
                *(v398 + 8 * ((4 * v144) | 3u)) = v173;
                *(v451[12].i64[0] + 4 * v425) &= ~0x80000000;
              }

              *&v456[0] = &BatchID;
              v174 = std::__hash_table<std::__hash_value_type<unsigned long long,SKCTileMapNodeRenderBatch>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,SKCTileMapNodeRenderBatch>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,SKCTileMapNodeRenderBatch>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,SKCTileMapNodeRenderBatch>>>::__emplace_unique_key_args<unsigned long long,std::piecewise_construct_t const&,std::tuple<unsigned long long const&>,std::tuple<>>(v451[7].i64, &BatchID);
              ++*(v174 + 11);
              if (*&v457.y)
              {
                std::__shared_weak_count::__release_shared[abi:ne200100](*&v457.y);
              }
            }

            ++v84;
            v3 = v446;
            v83 = v446[38].u8[4];
            if (v84 >= v83)
            {
              break;
            }

            ++v94;
            v93 = v446[38].u8[4];
            if (v94 >= v446[38].u8[5])
            {
              goto LABEL_129;
            }
          }

          v93 = v446[38].u8[4];
LABEL_131:
          v84 = v376;
LABEL_132:
          if (v400 < 1)
          {
            ++v84;
          }

          v400 -= v400 > 0;
          if (v84 >= v93)
          {
LABEL_292:
            v362 = v451->i8[4];
            if (v362)
            {
              jet_buffer_pool::commit_data(v451[5].i64[0]);
              v362 = v451->i8[4] & 0xFE;
              v451->i8[4] = v362;
            }

            if ((v362 & 2) != 0)
            {
              v52 = v451;
              jet_buffer_pool::commit_data(v451[6].i64[0]);
              v55 = v451->i8[4] & 0xFD;
              goto LABEL_296;
            }

            goto LABEL_297;
          }
        }
      }

      v186 = v439;
      if (!v439)
      {
        goto LABEL_292;
      }

      v187.i64[0] = v368->u32[0];
      v187.i64[1] = HIDWORD(*v368);
      __asm { FMOV            V2.2D, #1.0 }

      v189 = vcvt_f32_f64(vdivq_f64(_Q2, vcvtq_f64_u64(v187)));
      v379 = ~v391 >> 16;
      v381 = v391;
      *v190.f32 = vdiv_f32(v189, vdiv_f32(*v446[21].f32, vcvt_f32_u32(*v368)));
      v190.i64[1] = v397;
      v384 = v190;
      while (1)
      {
        v191 = v186 - 1;
        v192 = *(v447 + 4 * (v186 - 1));
        if (v192 != 0x7FFFFFFF)
        {
          break;
        }

LABEL_212:
        v269 = v186 <= 1;
        v186 = v191;
        if (v269)
        {
          goto LABEL_292;
        }
      }

      v443 = v186;
      v417 = v3[38].u8[4];
      v414 = v3[38].u8[5];
      if (*(v447 + 4 * (v186 - 1)) != 0xFFFF)
      {
        v193 = [v403 tileSet];
        if (v193)
        {
          v194 = [v403 tileSet];
          v195 = [v194 tileDefinitions];
          if (!v195)
          {
            v205 = 0;
            v201 = 0;
            goto LABEL_152;
          }

          v196 = [v403 tileSet];
          v197 = [v196 tileDefinitions];
          v198 = [v197 count] > v192;

          if (v198)
          {
            v199 = [v403 tileSet];
            v200 = [v199 tileDefinitions];
            v201 = [v200 objectAtIndexedSubscript:v192];

            v202 = [v201 currentFrameIndex];
            v203 = [v201 textures];
            if ([v203 count] <= v202)
            {
              v195 = 0;
            }

            else
            {
              v204 = [v201 textures];
              v195 = [v204 objectAtIndexedSubscript:v202];
            }

            v193 = [v201 normalTextures];
            if ([v193 count] <= v202)
            {
              v205 = 0;
              goto LABEL_154;
            }

            v194 = [v201 normalTextures];
            v205 = [v194 objectAtIndexedSubscript:v202];

LABEL_152:
LABEL_154:

LABEL_155:
            v206 = [v201 rotation];
            BatchID = generateBatchID(v195, v205);
            if (!std::__hash_table<std::__hash_value_type<unsigned long long,SKCTileMapNodeRenderBatch>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,SKCTileMapNodeRenderBatch>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,SKCTileMapNodeRenderBatch>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,SKCTileMapNodeRenderBatch>>>::find<unsigned long long>(v451[7].i64, &BatchID))
            {
LABEL_211:

              v3 = v446;
              v186 = v443;
              goto LABEL_212;
            }

            v207 = v191;
            *&v457.x = &BatchID;
            v208 = std::__hash_table<std::__hash_value_type<unsigned long long,SKCTileMapNodeRenderBatch>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,SKCTileMapNodeRenderBatch>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,SKCTileMapNodeRenderBatch>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,SKCTileMapNodeRenderBatch>>>::__emplace_unique_key_args<unsigned long long,std::piecewise_construct_t const&,std::tuple<unsigned long long const&>,std::tuple<>>(v451[7].i64, &BatchID);
            v408 = v208[3];
            v411 = v208[4];
            v209 = v208[5];
            [(SKTexture *)v195 textureRect];
            v210 = v466.origin.x;
            v211 = v466.origin.y;
            v212 = v466.size.width;
            v213 = v466.size.height;
            v214 = CGRectGetMinX(v466);
            v467.origin.x = v210;
            v467.origin.y = v211;
            v467.size.width = v212;
            v467.size.height = v213;
            v215 = CGRectGetMaxX(v467);
            v468.origin.x = v210;
            v468.origin.y = v211;
            v468.size.width = v212;
            v468.size.height = v213;
            v216 = CGRectGetMinY(v468);
            v469.origin.x = v210;
            v469.origin.y = v211;
            v469.size.width = v212;
            v469.size.height = v213;
            v217 = CGRectGetMaxY(v469);
            [(SKTexture *)v195 cropOffset];
            v457.x = v218;
            v457.y = v219;
            *v220.f32 = sk_vector_make(&v457);
            v426 = v220;
            [(SKTexture *)v195 cropScale];
            v457.x = v221;
            v457.y = v222;
            v421 = sk_vector_make(&v457);
            if (v195)
            {
              [(SKTexture *)v195 _backingTexture];
              v223 = *&v456[0];
            }

            else
            {
              v223 = 0;
              v456[0] = 0uLL;
            }

            v224 = v214;
            v225 = v215;
            v226 = v216;
            v227 = v217;
            if ((*(*v223 + 24))(v223) == 1)
            {
              v224 = v224 * (***&v456[0])(*&v456[0]);
              v225 = v225 * (***&v456[0])(*&v456[0]);
              v226 = v226 * (*(**&v456[0] + 8))(*&v456[0]);
              v227 = v227 * (*(**&v456[0] + 8))(*&v456[0]);
            }

            v228 = [(SKTexture *)v195 isFlipped];
            *v229.f32 = v421;
            v435 = v426;
            v229.i64[1] = v397;
            if (v228)
            {
              v230 = v226;
            }

            else
            {
              v230 = v227;
            }

            v430 = v230;
            if (v228)
            {
              v226 = v227;
            }

            switch(v206)
            {
              case 3:
                v231.i64[1] = v426.i64[1];
                v231.i32[0] = v426.i32[1];
                v231.f32[1] = -v426.f32[0];
                break;
              case 2:
                v393 = v229;
                v232.i64[0] = vnegq_f32(v426).u64[0];
                v232.i64[1] = v426.i64[1];
                v435 = v232;
                goto LABEL_174;
              case 1:
                v231.i64[1] = v426.i64[1];
                v231.f32[0] = -v426.f32[1];
                v231.i32[1] = v426.i32[0];
                break;
              default:
LABEL_173:
                v393 = v229;
LABEL_174:
                v422 = v446[21];
                if ([v201 flipVertically])
                {
                  if ((v206 & 0xFFFFFFFFFFFFFFFDLL) != 0)
                  {
                    v233 = v435;
                    v233.f32[0] = -v435.f32[0];
                    v234 = v430;
                    v430 = v226;
                    v435 = v233;
                    v427 = v224;
                    v224 = v225;
                    goto LABEL_180;
                  }

                  v235 = v435;
                  v235.i32[1] = vnegq_f32(v435).i32[1];
                  v435 = v235;
                  v234 = v226;
                }

                else
                {
                  v234 = v430;
                  v430 = v226;
                }

                v427 = v225;
LABEL_180:
                if ([v201 flipHorizontally])
                {
                  if ((v206 & 0xFFFFFFFFFFFFFFFDLL) == 0)
                  {
                    v270 = v435;
                    v270.f32[0] = -v435.f32[0];
                    v435 = v270;
                    v405 = v234;
                    v401 = v224;
                    goto LABEL_185;
                  }

                  v236 = v435;
                  v236.i32[1] = vnegq_f32(v435).i32[1];
                  v405 = v430;
                  v430 = v234;
                  v435 = v236;
                }

                else
                {
                  v405 = v234;
                }

                v401 = v427;
                v427 = v224;
LABEL_185:
                [(SKTexture *)v195 size];
                v387 = v238;
                v389 = v237;
                [v201 size];
                v241 = HIDWORD(v209) + v209;
                v191 = v207;
                v242.i64[0] = v422.i64[0];
                if (v451->i8[4])
                {
                  v243 = 0;
                  v244.i64[1] = v396.i64[1];
                  v242.i64[1] = v396.i64[1];
                  v245.f64[0] = v389;
                  v245.f64[1] = v387;
                  *&v246 = v239;
                  *&v247 = v240;
                  v244.i64[0] = __PAIR64__(v247, v246);
                  v248 = vmul_f32(*v393.f32, vcvt_f32_f64(v245));
                  v249 = vcvtq_f64_f32(v248);
                  v252 = vmulq_f64(vsubq_f64(v245, v249), v394);
                  *v250.f32 = vcvt_f32_f64(vdivq_f64(vaddq_f64(v252, vcvtq_f64_f32(vmul_f32(*v435.f32, v248))), v249));
                  v250.i64[1] = vextq_s8(v435, v435, 8uLL).u64[0];
                  v252.f32[0] = (v207 % v417 + v381 * v417);
                  v251 = vmulq_f32(v393, v244);
                  v252.f32[1] = (v207 / v417 + v379 * v414);
                  *v252.f32 = vmul_f32(*v252.f32, v189);
                  do
                  {
                    *(data + 16 * (4 * v241) + v243 * 16) = vmulq_f32(v242, vsubq_f32(vaddq_f32(v252, vmulq_f32(v384, vmulq_f32(v251, vaddq_f32(v250, xmmword_21C4B91A0[v243])))), v399));
                    ++v243;
                  }

                  while (v243 != 4);
                }

                if (v192 < 0 || (v451->i8[4] & 1) != 0)
                {
                  if ([(SKTexture *)v195 _needsExtrusionWorkaround])
                  {
                    v253 = (***&v456[0])(*&v456[0]);
                    v254 = (*(**&v456[0] + 8))(*&v456[0]);
                    v255 = 0.25 / v253;
                    v256 = 0.25 / v254;
                    if (v427 >= v401)
                    {
                      v257 = -v255;
                    }

                    else
                    {
                      v257 = 0.25 / v253;
                    }

                    *&v258 = v427 + v257;
                    if ((v427 + v257) >= v401)
                    {
                      v255 = -v255;
                    }

                    *&v259 = v401 - v255;
                    v260 = -v256;
                    if (v430 >= v405)
                    {
                      v261 = -v256;
                    }

                    else
                    {
                      v261 = 0.25 / v254;
                    }

                    v262 = v430 + v261;
                    if ((v430 + v261) < v405)
                    {
                      v260 = 0.25 / v254;
                    }

                    v263 = v405 - v260;
                  }

                  else
                  {
                    *&v258 = v427;
                    v262 = v430;
                    v263 = v405;
                    *&v259 = v401;
                  }

                  *&v457.x = __PAIR64__(LODWORD(v262), v258);
                  *&v457.y = __PAIR64__(LODWORD(v262), v259);
                  *(&v259 + 1) = v263;
                  *(&v258 + 1) = v263;
                  v458.i64[0] = v259;
                  v458.i64[1] = v258;
                  if (v195 && [(SKTexture *)v195 isRotated])
                  {
                    v264 = (&SKCTileMapNode::_generateRenderData(SKCRenderInfo *)::rotationIndexOffsets + 16 * v206);
                    v265 = 4 * v241;
                    *(v398 + 8 * (4 * v241)) = *(&v457.x + v264[3]);
                    *(v398 + 8 * ((4 * v241) | 1u)) = *(&v457.x + *v264);
                    *(v398 + 8 * ((4 * v241) | 2u)) = *(&v457.x + v264[1]);
                    v266 = v264 + 2;
                  }

                  else
                  {
                    v267 = (&SKCTileMapNode::_generateRenderData(SKCRenderInfo *)::rotationIndexOffsets + 16 * v206);
                    v265 = 4 * v241;
                    *(v398 + 8 * (4 * v241)) = *(&v457.x + *v267);
                    *(v398 + 8 * ((4 * v241) | 1u)) = *(&v457.x + v267[1]);
                    *(v398 + 8 * ((4 * v241) | 2u)) = *(&v457.x + v267[2]);
                    v266 = v267 + 3;
                  }

                  *(v398 + 8 * (v265 | 3u)) = *(&v457.x + *v266);
                  *(v451[12].i64[0] + 4 * v207) &= ~0x80000000;
                }

                *&v457.x = &BatchID;
                v268 = std::__hash_table<std::__hash_value_type<unsigned long long,SKCTileMapNodeRenderBatch>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,SKCTileMapNodeRenderBatch>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,SKCTileMapNodeRenderBatch>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,SKCTileMapNodeRenderBatch>>>::__emplace_unique_key_args<unsigned long long,std::piecewise_construct_t const&,std::tuple<unsigned long long const&>,std::tuple<>>(v451[7].i64, &BatchID);
                ++*(v268 + 11);
                if (*(&v456[0] + 1))
                {
                  std::__shared_weak_count::__release_shared[abi:ne200100](*(&v456[0] + 1));
                }

                goto LABEL_211;
            }

            v435 = v231;
            v229.i64[0] = __PAIR64__(v421.u32[0], v421.u32[1]);
            goto LABEL_173;
          }
        }
      }

      v205 = 0;
      v195 = 0;
      v201 = 0;
      goto LABEL_155;
    }

    [v403 tileSize];
    v176 = v175;
    [v403 tileSize];
    v177.f32[0] = v176;
    *&v179 = v178;
    v180 = v446[21];
    v181 = __PAIR64__(v179, v177.u32[0]);
    v182 = vdiv_f32(__PAIR64__(v179, v177.u32[0]), *v180.f32);
    v183 = *&v179 * 0.5;
    v177.f32[1] = v183;
    v184 = vmul_f32(v177, 0x3FC000003F000000);
    if (v446[37].i64[0] == 2)
    {
      v386 = (1.5 * v184.f32[0]) / v180.f32[0];
      v185.i32[1] = v182.i32[1];
      v185.i32[0] = 0;
      v372 = v185;
      v383 = v183 / COERCE_FLOAT(HIDWORD(v446[21].i64[0]));
    }

    else
    {
      v372 = vdiv_f32(v184, *v180.f32);
      v383 = 0.0;
      v386 = v182.f32[0];
    }

    v271 = v446[38].u8[5];
    if (!v446[38].i8[5])
    {
      goto LABEL_292;
    }

    v370 = ~v391 >> 16;
    *v272.f32 = vdiv_f32(v182, v181);
    v272.i64[1] = v397;
    v273 = v446[38].u8[4];
    v377 = v272;
    while (1)
    {
      v274 = v271 - 1;
      if (v273)
      {
        break;
      }

LABEL_290:
      v269 = v271 < 2;
      v271 = v274;
      if (v269)
      {
        goto LABEL_292;
      }
    }

    v374 = v271;
    v275 = 0;
    v276 = v274 + v370 * v3[38].u8[5];
    if (v276 >= 0)
    {
      v277 = v276 & 1;
    }

    else
    {
      v277 = -(v276 & 1);
    }

    v390 = v372.f32[0] * v277;
    v278 = v274;
    v402 = v271 - 1;
    while (1)
    {
      v279 = v275 + v273 * v274;
      v280 = *(v451[12].i64[0] + 4 * v279);
      if (v280 != 0xFFFF)
      {
        v281 = [v403 tileSet];
        if (v281)
        {
          v282 = [v403 tileSet];
          v283 = [v282 tileDefinitions];
          if (!v283)
          {
            v450 = 0;
            v293 = 0;
            goto LABEL_235;
          }

          v284 = [v403 tileSet];
          v285 = [v284 tileDefinitions];
          v286 = [v285 count] > v280;

          if (v286)
          {
            v287 = [v403 tileSet];
            v288 = [v287 tileDefinitions];
            v450 = [v288 objectAtIndexedSubscript:v280];

            LODWORD(v288) = [v450 currentFrameIndex];
            v289 = [v450 textures];
            v290 = v288;
            if ([v289 count] <= v288)
            {
              v283 = 0;
            }

            else
            {
              v291 = [v450 textures];
              v283 = [v291 objectAtIndexedSubscript:v290];
            }

            v281 = [v450 normalTextures];
            if ([v281 count] <= v290)
            {
              v293 = 0;
            }

            else
            {
              v282 = [v450 normalTextures];
              v293 = [v282 objectAtIndexedSubscript:v290];
LABEL_235:
            }

            v292 = v293;
            goto LABEL_238;
          }
        }
      }

      v450 = 0;
      v283 = 0;
      v292 = 0;
LABEL_238:
      v294 = v292;
      BatchID = generateBatchID(v283, v292);
      if (std::__hash_table<std::__hash_value_type<unsigned long long,SKCTileMapNodeRenderBatch>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,SKCTileMapNodeRenderBatch>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,SKCTileMapNodeRenderBatch>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,SKCTileMapNodeRenderBatch>>>::find<unsigned long long>(v451[7].i64, &BatchID))
      {
        *&v457.x = &BatchID;
        v295 = std::__hash_table<std::__hash_value_type<unsigned long long,SKCTileMapNodeRenderBatch>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,SKCTileMapNodeRenderBatch>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,SKCTileMapNodeRenderBatch>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,SKCTileMapNodeRenderBatch>>>::__emplace_unique_key_args<unsigned long long,std::piecewise_construct_t const&,std::tuple<unsigned long long const&>,std::tuple<>>(v451[7].i64, &BatchID);
        v296 = v279;
        v297 = v295[3];
        v428 = v295[4];
        v298 = v295[5];
        v299 = v446[38].i8[4];
        [(SKTexture *)v283 textureRect];
        v300 = v470.origin.x;
        v301 = v470.origin.y;
        v302 = v470.size.width;
        v303 = v470.size.height;
        v304 = CGRectGetMinX(v470);
        v471.origin.x = v300;
        v471.origin.y = v301;
        v471.size.width = v302;
        v471.size.height = v303;
        v305 = CGRectGetMaxX(v471);
        v472.origin.x = v300;
        v472.origin.y = v301;
        v472.size.width = v302;
        v472.size.height = v303;
        v306 = CGRectGetMinY(v472);
        v473.origin.x = v300;
        v473.origin.y = v301;
        v473.size.width = v302;
        v473.size.height = v303;
        v307 = CGRectGetMaxY(v473);
        [(SKTexture *)v283 cropOffset];
        v457.x = v308;
        v457.y = v309;
        v436 = sk_vector_make(&v457);
        [(SKTexture *)v283 cropScale];
        v457.x = v310;
        v457.y = v311;
        v423 = sk_vector_make(&v457);
        if (v283)
        {
          [(SKTexture *)v283 _backingTexture];
          v312 = v457.x;
        }

        else
        {
          v312 = 0.0;
          v457.x = 0.0;
          v457.y = 0.0;
        }

        v313 = v304;
        v314 = v305;
        v315 = v306;
        v316 = v307;
        if ((*(**&v312 + 24))(COERCE_CGFLOAT(*&v312)) == 1)
        {
          v313 = v313 * (***&v457.x)(*&v457.x);
          v314 = v314 * (***&v457.x)(*&v457.x);
          v315 = v315 * (*(**&v457.x + 8))(*&v457.x);
          v316 = v316 * (*(**&v457.x + 8))(*&v457.x);
        }

        v317 = [(SKTexture *)v283 isFlipped];
        if (v317)
        {
          v318 = v316;
        }

        else
        {
          v318 = v315;
        }

        v444 = v318;
        if (!v317)
        {
          v315 = v316;
        }

        v418 = v446[21];
        v319 = [v450 flipVertically];
        v274 = v402;
        *v320.i8 = v436;
        if (v319)
        {
          *&v320.i32[1] = -v436.f32[1];
          v412 = v315;
          v415 = v320;
        }

        else
        {
          v412 = v444;
          v415 = v320;
          v444 = v315;
        }

        v321 = [v450 flipHorizontally];
        if (v321)
        {
          v322 = v314;
        }

        else
        {
          v322 = v313;
        }

        v431 = v322;
        if (v321)
        {
          v323 = v313;
        }

        else
        {
          v323 = v314;
        }

        v437 = v323;
        if (v321)
        {
          v324 = -1;
        }

        else
        {
          v324 = 0;
        }

        [(SKTexture *)v283 size];
        v406 = v326;
        v409 = v325;
        [v450 size];
        v329 = HIDWORD(v298) + v298;
        v330 = v451->i8[4];
        if (v330)
        {
          v331 = 0;
          v334.i64[0] = v418.i64[0];
          *v332.f32 = v423;
          v333.i64[1] = v396.i64[1];
          v332.i64[1] = v397;
          v334.i64[1] = v396.i64[1];
          v335 = v415;
          *v335.i32 = -*v415.i32;
          v336.f64[0] = v409;
          v336.f64[1] = v406;
          v337 = vbslq_s8(vdupq_n_s32(v324), v335, v415);
          v338 = v327;
          v333.f32[0] = v338;
          v339 = v328;
          v333.f32[1] = v339;
          v340 = vmulq_f32(v332, v333);
          v341 = vmul_f32(v423, vcvt_f32_f64(v336));
          v342 = vcvtq_f64_f32(v341);
          *v343.f32 = vcvt_f32_f64(vdivq_f64(vaddq_f64(vmulq_f64(vsubq_f64(v336, v342), v394), vcvtq_f64_f32(vmul_f32(*v337.i8, v341))), v342));
          v344 = vextq_s8(v337, v337, 8uLL).u64[0];
          v343.i64[1] = v344;
          LOBYTE(v344) = v446[38].i8[4];
          v345 = v391;
          LOBYTE(v345) = v446[38].i8[5];
          v346.i64[1] = 0;
          do
          {
            v346.f32[1] = (v383 * ((v275 + v391 * v299) & 1)) + (((v370 * LODWORD(v345)) + v278) * v372.f32[1]);
            v346.f32[0] = v390 + (((v391 * v344) + v275) * v386);
            *(data + 16 * (4 * v329) + v331 * 16) = vmulq_f32(v334, vsubq_f32(vaddq_f32(v346, vmulq_f32(v377, vmulq_f32(v340, vaddq_f32(v343, xmmword_21C4B91A0[v331])))), v399));
            ++v331;
          }

          while (v331 != 4);
          v330 = v451->i8[4];
        }

        if ((v330 & 2) != 0)
        {
          if ([(SKTexture *)v283 _needsExtrusionWorkaround])
          {
            v347 = (***&v457.x)(*&v457.x);
            v348 = (*(**&v457.x + 8))(*&v457.x);
            v349 = 0.25 / v347;
            v350 = 0.25 / v348;
            if (v431 >= v437)
            {
              v351 = -v349;
            }

            else
            {
              v351 = 0.25 / v347;
            }

            *&v352 = v431 + v351;
            if ((v431 + v351) >= v437)
            {
              v349 = -v349;
            }

            *&v353 = v437 - v349;
            v354 = -v350;
            if (v412 >= v444)
            {
              v355 = -v350;
            }

            else
            {
              v355 = 0.25 / v348;
            }

            v356 = v412 + v355;
            if ((v412 + v355) < v444)
            {
              v354 = 0.25 / v348;
            }

            v357 = v444 - v354;
          }

          else
          {
            *&v353 = v437;
            v357 = v444;
            *&v352 = v431;
            v356 = v412;
          }

          v358 = __PAIR64__(LODWORD(v356), v352);
          v359 = __PAIR64__(LODWORD(v356), v353);
          *(&v353 + 1) = v357;
          *(&v352 + 1) = v357;
          if (v283)
          {
            v424 = __PAIR64__(LODWORD(v356), v353);
            v438 = v353;
            v445 = __PAIR64__(LODWORD(v356), v352);
            v432 = v352;
            if ([(SKTexture *)v283 isRotated])
            {
              v358 = v432;
              v360 = v438;
              v359 = v445;
              v353 = v424;
            }

            else
            {
              v358 = v445;
              v359 = v424;
              v353 = v438;
              v360 = v432;
            }
          }

          else
          {
            v360 = v352;
          }

          *(v398 + 8 * (4 * v329)) = v358;
          *(v398 + 8 * ((4 * v329) | 1u)) = v359;
          *(v398 + 8 * ((4 * v329) | 2u)) = v353;
          *(v398 + 8 * ((4 * v329) | 3u)) = v360;
          *(v451[12].i64[0] + 4 * v296) &= ~0x80000000;
        }

        *&v456[0] = &BatchID;
        v361 = std::__hash_table<std::__hash_value_type<unsigned long long,SKCTileMapNodeRenderBatch>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,SKCTileMapNodeRenderBatch>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,SKCTileMapNodeRenderBatch>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,SKCTileMapNodeRenderBatch>>>::__emplace_unique_key_args<unsigned long long,std::piecewise_construct_t const&,std::tuple<unsigned long long const&>,std::tuple<>>(v451[7].i64, &BatchID);
        ++*(v361 + 11);
        if (*&v457.y)
        {
          std::__shared_weak_count::__release_shared[abi:ne200100](*&v457.y);
        }
      }

      ++v275;
      v273 = v446[38].u8[4];
      if (v275 >= v273)
      {
        v3 = v446;
        v271 = v374;
        goto LABEL_290;
      }
    }
  }

  v366 = 0;
LABEL_308:
  if (v455)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v455);
  }

  return v366;
}