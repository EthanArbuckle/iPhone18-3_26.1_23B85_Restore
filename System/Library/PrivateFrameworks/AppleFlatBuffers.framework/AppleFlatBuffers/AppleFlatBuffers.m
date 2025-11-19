void sub_240540DCC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, objc_super a9)
{
  a9.super_class = AFBBufRef;
  [(_Unwind_Exception *)&a9 dealloc];
  _Unwind_Resume(a1);
}

void sub_240541124(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13)
{
  if (a13)
  {
    (*(*a13 + 16))(a13);
  }

  _Unwind_Resume(a1);
}

unint64_t apple::aiml::flatbuffers2::FlatBufferBuilder::StartVector(apple::aiml::flatbuffers2::FlatBufferBuilder *this, uint64_t a2, unint64_t a3)
{
  apple::aiml::flatbuffers2::FlatBufferBuilder::NotNested(this);
  *(this + 70) = 1;
  v6 = a3 * a2;
  apple::aiml::flatbuffers2::FlatBufferBuilder::PreAlign(this, v6, 4uLL);

  return apple::aiml::flatbuffers2::FlatBufferBuilder::PreAlign(this, v6, a3);
}

uint64_t apple::aiml::flatbuffers2::FlatBufferBuilder::PushElement<BOOL>(uint64_t a1, char a2)
{
  apple::aiml::flatbuffers2::FlatBufferBuilder::Align(a1, 1uLL);
  v4 = (*(a1 + 48) - apple::aiml::flatbuffers2::vector_downward::ensure_space(a1, 1uLL));
  *(a1 + 48) = v4;
  *v4 = a2;
  return (*(a1 + 32) - v4 + *(a1 + 40));
}

uint64_t apple::aiml::flatbuffers2::FlatBufferBuilder::EndVector(apple::aiml::flatbuffers2::FlatBufferBuilder *this, int a2)
{
  if ((*(this + 70) & 1) == 0)
  {
    apple::aiml::flatbuffers2::FlatBufferBuilder::EndVector();
  }

  *(this + 70) = 0;

  return apple::aiml::flatbuffers2::FlatBufferBuilder::PushElement<int>(this, a2);
}

unint64_t apple::aiml::flatbuffers2::FlatBufferBuilder::ForceVectorAlignment(apple::aiml::flatbuffers2::FlatBufferBuilder *this, uint64_t a2, uint64_t a3, unint64_t a4)
{
  if (a4 - 1 > 0xF || ((a4 + 31) & a4) != 0)
  {
    apple::aiml::flatbuffers2::FlatBufferBuilder::ForceVectorAlignment();
  }

  v6 = a3 * a2;

  return apple::aiml::flatbuffers2::FlatBufferBuilder::PreAlign(this, v6, a4);
}

uint64_t apple::aiml::flatbuffers2::FlatBufferBuilder::PushElement<signed char>(uint64_t a1, char a2)
{
  apple::aiml::flatbuffers2::FlatBufferBuilder::Align(a1, 1uLL);
  v4 = (*(a1 + 48) - apple::aiml::flatbuffers2::vector_downward::ensure_space(a1, 1uLL));
  *(a1 + 48) = v4;
  *v4 = a2;
  return (*(a1 + 32) - *(a1 + 48) + *(a1 + 40));
}

uint64_t apple::aiml::flatbuffers2::FlatBufferBuilder::PushElement<short>(uint64_t a1, __int16 a2)
{
  apple::aiml::flatbuffers2::FlatBufferBuilder::Align(a1, 2uLL);
  v4 = (*(a1 + 48) - apple::aiml::flatbuffers2::vector_downward::ensure_space(a1, 2uLL));
  *(a1 + 48) = v4;
  *v4 = a2;
  return (*(a1 + 32) - v4 + *(a1 + 40));
}

uint64_t apple::aiml::flatbuffers2::FlatBufferBuilder::PushElement<int>(uint64_t a1, int a2)
{
  apple::aiml::flatbuffers2::FlatBufferBuilder::Align(a1, 4uLL);
  v4 = (*(a1 + 48) - apple::aiml::flatbuffers2::vector_downward::ensure_space(a1, 4uLL));
  *(a1 + 48) = v4;
  *v4 = a2;
  return (*(a1 + 32) - v4 + *(a1 + 40));
}

uint64_t apple::aiml::flatbuffers2::FlatBufferBuilder::PushElement<long long>(uint64_t a1, uint64_t a2)
{
  apple::aiml::flatbuffers2::FlatBufferBuilder::Align(a1, 8uLL);
  v4 = (*(a1 + 48) - apple::aiml::flatbuffers2::vector_downward::ensure_space(a1, 8uLL));
  *(a1 + 48) = v4;
  *v4 = a2;
  return (*(a1 + 32) - v4 + *(a1 + 40));
}

uint64_t apple::aiml::flatbuffers2::FlatBufferBuilder::PushElement<float>(uint64_t a1, float a2)
{
  apple::aiml::flatbuffers2::FlatBufferBuilder::Align(a1, 4uLL);
  v4 = (*(a1 + 48) - apple::aiml::flatbuffers2::vector_downward::ensure_space(a1, 4uLL));
  *(a1 + 48) = v4;
  *v4 = a2;
  return (*(a1 + 32) - v4 + *(a1 + 40));
}

uint64_t apple::aiml::flatbuffers2::FlatBufferBuilder::PushElement<double>(uint64_t a1, double a2)
{
  apple::aiml::flatbuffers2::FlatBufferBuilder::Align(a1, 8uLL);
  v4 = (*(a1 + 48) - apple::aiml::flatbuffers2::vector_downward::ensure_space(a1, 8uLL));
  *(a1 + 48) = v4;
  *v4 = a2;
  return (*(a1 + 32) - v4 + *(a1 + 40));
}

unint64_t apple::aiml::flatbuffers2::FlatBufferBuilder::ForceStringAlignment(apple::aiml::flatbuffers2::FlatBufferBuilder *this, uint64_t a2, unint64_t a3)
{
  if (a3 - 1 > 0xF || ((a3 + 31) & a3) != 0)
  {
    apple::aiml::flatbuffers2::FlatBufferBuilder::ForceStringAlignment();
  }

  v5 = a2 + 1;

  return apple::aiml::flatbuffers2::FlatBufferBuilder::PreAlign(this, v5, a3);
}

uint64_t apple::aiml::flatbuffers2::FlatBufferBuilder::CreateString(apple::aiml::flatbuffers2::FlatBufferBuilder *this, const char *a2, unint64_t a3)
{
  apple::aiml::flatbuffers2::FlatBufferBuilder::NotNested(this);
  apple::aiml::flatbuffers2::FlatBufferBuilder::PreAlign(this, a3 + 1, 4uLL);
  v6 = (*(this + 6) - apple::aiml::flatbuffers2::vector_downward::ensure_space(this, 1uLL));
  *(this + 6) = v6;
  *v6 = 0;
  if (a3)
  {
    v7 = (*(this + 6) - apple::aiml::flatbuffers2::vector_downward::ensure_space(this, a3));
    *(this + 6) = v7;
    memcpy(v7, a2, a3);
  }

  apple::aiml::flatbuffers2::FlatBufferBuilder::PushElement<int>(this, a3);
  return (*(this + 8) - *(this + 12) + *(this + 10));
}

void *std::vector<apple::aiml::flatbuffers2::Offset<apple::aiml::flatbuffers2::String>>::reserve(void *result, unint64_t a2)
{
  if (a2 > (result[2] - *result) >> 2)
  {
    if (!(a2 >> 62))
    {
      v2 = result[1] - *result;
      std::__allocate_at_least[abi:ne200100]<std::allocator<apple::aiml::flatbuffers2::Offset<apple::aiml::flatbuffers2::String>>>(result, a2);
    }

    std::vector<apple::aiml::flatbuffers2::Offset<apple::aiml::flatbuffers2::String>>::__throw_length_error[abi:ne200100]();
  }

  return result;
}

void apple::aiml::flatbuffers2::vector_downward::~vector_downward(apple::aiml::flatbuffers2::vector_downward *this)
{
  v2 = *(this + 5);
  if (v2)
  {
    v3 = *this;
    if (*this)
    {
      v4 = *(this + 4);
      (*(*v3 + 24))(v3);
    }

    else
    {
      MEMORY[0x245CC3990](v2, 0x1000C8077774924);
    }
  }

  *(this + 5) = 0;
  if (*(this + 8) == 1 && *this)
  {
    (*(**this + 8))(*this);
  }

  *this = 0;
  *(this + 8) = 0;
}

void apple::aiml::flatbuffers2::DefaultAllocator::deallocate(apple::aiml::flatbuffers2::DefaultAllocator *this, unsigned __int8 *a2)
{
  if (a2)
  {
    JUMPOUT(0x245CC3990);
  }
}

char *apple::aiml::flatbuffers2::Allocator::reallocate_downward(apple::aiml::flatbuffers2::Allocator *this, unsigned __int8 *a2, unint64_t a3, unint64_t a4, size_t a5, size_t a6)
{
  if (a4 <= a3)
  {
    apple::aiml::flatbuffers2::Allocator::reallocate_downward();
  }

  v12 = (*(*this + 16))(this, a4);
  memcpy(&v12[a4 - a5], &a2[a3 - a5], a5);
  memcpy(v12, a2, a6);
  (*(*this + 24))(this, a2, a3);
  return v12;
}

void apple::aiml::flatbuffers2::FlatBufferBuilder::~FlatBufferBuilder(apple::aiml::flatbuffers2::FlatBufferBuilder *this)
{
  v2 = *(this + 11);
  if (v2)
  {
    std::__tree<apple::aiml::flatbuffers2::Offset<apple::aiml::flatbuffers2::String>,apple::aiml::flatbuffers2::FlatBufferBuilder::StringOffsetCompare,std::allocator<apple::aiml::flatbuffers2::Offset<apple::aiml::flatbuffers2::String>>>::destroy(*(this + 11), *(v2 + 8));
    MEMORY[0x245CC39B0](v2, 0x1060C40C2B13FB5);
  }

  apple::aiml::flatbuffers2::vector_downward::~vector_downward(this);
}

void std::__tree<apple::aiml::flatbuffers2::Offset<apple::aiml::flatbuffers2::String>,apple::aiml::flatbuffers2::FlatBufferBuilder::StringOffsetCompare,std::allocator<apple::aiml::flatbuffers2::Offset<apple::aiml::flatbuffers2::String>>>::destroy(uint64_t a1, void *a2)
{
  if (a2)
  {
    std::__tree<apple::aiml::flatbuffers2::Offset<apple::aiml::flatbuffers2::String>,apple::aiml::flatbuffers2::FlatBufferBuilder::StringOffsetCompare,std::allocator<apple::aiml::flatbuffers2::Offset<apple::aiml::flatbuffers2::String>>>::destroy(a1, *a2);
    std::__tree<apple::aiml::flatbuffers2::Offset<apple::aiml::flatbuffers2::String>,apple::aiml::flatbuffers2::FlatBufferBuilder::StringOffsetCompare,std::allocator<apple::aiml::flatbuffers2::Offset<apple::aiml::flatbuffers2::String>>>::destroy(a1, a2[1]);

    operator delete(a2);
  }
}

uint64_t apple::aiml::flatbuffers2::FlatBufferBuilder::NotNested(uint64_t this)
{
  if (*(this + 70) == 1)
  {
    apple::aiml::flatbuffers2::FlatBufferBuilder::NotNested();
  }

  if (*(this + 64))
  {
    apple::aiml::flatbuffers2::FlatBufferBuilder::NotNested();
  }

  return this;
}

unint64_t apple::aiml::flatbuffers2::FlatBufferBuilder::PreAlign(apple::aiml::flatbuffers2::FlatBufferBuilder *this, uint64_t a2, unint64_t a3)
{
  if (*(this + 9) < a3)
  {
    *(this + 9) = a3;
  }

  return apple::aiml::flatbuffers2::vector_downward::fill(this, (a3 - 1) & (-a2 - (*(this + 8) - *(this + 12) + *(this + 10))));
}

unint64_t apple::aiml::flatbuffers2::vector_downward::fill(apple::aiml::flatbuffers2::vector_downward *this, unint64_t a2)
{
  result = apple::aiml::flatbuffers2::vector_downward::ensure_space(this, a2);
  *(this + 6) -= result;
  if (a2)
  {
    v5 = 0;
    do
    {
      *(*(this + 6) + v5++) = 0;
    }

    while (a2 != v5);
  }

  return result;
}

unint64_t apple::aiml::flatbuffers2::vector_downward::ensure_space(apple::aiml::flatbuffers2::vector_downward *this, unint64_t a2)
{
  v2 = *(this + 6);
  v3 = *(this + 7);
  if (v2 < v3 || (v5 = *(this + 5), v3 < v5))
  {
    apple::aiml::flatbuffers2::vector_downward::ensure_space();
  }

  if (v2 - v3 < a2)
  {
    apple::aiml::flatbuffers2::vector_downward::reallocate(this, a2);
    v5 = *(this + 5);
    v2 = *(this + 6);
  }

  if ((*(this + 8) - v2 + v5) >= 0x7FFFFFFF)
  {
    apple::aiml::flatbuffers2::vector_downward::ensure_space();
  }

  return a2;
}

char *apple::aiml::flatbuffers2::vector_downward::reallocate(apple::aiml::flatbuffers2::vector_downward *this, unint64_t a2)
{
  v5 = *(this + 4);
  v4 = *(this + 5);
  v6 = &v4[v5 - *(this + 6)];
  v7 = *(this + 7) - v4;
  if (v5)
  {
    v8 = v5 >> 1;
  }

  else
  {
    v8 = *(this + 2);
  }

  if (v8 > a2)
  {
    a2 = v8;
  }

  v9 = (*(this + 3) + v5 + a2 - 1) & -*(this + 3);
  *(this + 4) = v9;
  v10 = *this;
  if (v4)
  {
    if (v10)
    {
      result = (*(*v10 + 32))(v10);
    }

    else
    {
      v13 = &unk_28525FFB0;
      result = apple::aiml::flatbuffers2::Allocator::reallocate_downward(&v13, v4, v5, v9, v6, v7);
    }
  }

  else
  {
    if (!v10)
    {
      v13 = &unk_28525FFB0;
      operator new[]();
    }

    result = (*(*v10 + 16))(v10, v9);
  }

  v12 = &result[*(this + 4) - v6];
  *(this + 5) = result;
  *(this + 6) = v12;
  *(this + 7) = &result[v7];
  return result;
}

unint64_t apple::aiml::flatbuffers2::FlatBufferBuilder::Align(apple::aiml::flatbuffers2::FlatBufferBuilder *this, unint64_t a2)
{
  if (*(this + 9) < a2)
  {
    *(this + 9) = a2;
  }

  return apple::aiml::flatbuffers2::vector_downward::fill(this, (a2 - 1) & -(*(this + 8) - *(this + 12) + *(this + 10)));
}

uint64_t apple::aiml::flatbuffers2::FlatBufferBuilder::CreateVector<apple::aiml::flatbuffers2::String>(apple::aiml::flatbuffers2::FlatBufferBuilder *a1, uint64_t a2, uint64_t a3)
{
  apple::aiml::flatbuffers2::FlatBufferBuilder::StartVector(a1, a3, 4uLL);
  if (a3)
  {
    v6 = a2 - 4;
    v7 = a3;
    do
    {
      v8 = v7 - 1;
      v9 = apple::aiml::flatbuffers2::FlatBufferBuilder::ReferTo(a1, *(v6 + 4 * v7));
      apple::aiml::flatbuffers2::FlatBufferBuilder::PushElement<int>(a1, v9);
      v7 = v8;
    }

    while (v8);
  }

  return apple::aiml::flatbuffers2::FlatBufferBuilder::EndVector(a1, a3);
}

uint64_t apple::aiml::flatbuffers2::FlatBufferBuilder::ReferTo(apple::aiml::flatbuffers2::FlatBufferBuilder *this, unsigned int a2)
{
  apple::aiml::flatbuffers2::FlatBufferBuilder::Align(this, 4uLL);
  if (!a2 || (v4 = *(this + 8) - *(this + 12) + *(this + 10), v5 = v4 >= a2, v6 = v4 - a2, !v5))
  {
    apple::aiml::flatbuffers2::FlatBufferBuilder::ReferTo();
  }

  return v6 + 4;
}

void std::__throw_length_error[abi:ne200100](const char *a1)
{
  exception = __cxa_allocate_exception(0x10uLL);
  std::length_error::length_error[abi:ne200100](exception, a1);
  __cxa_throw(exception, off_278CAA628, MEMORY[0x277D825F0]);
}

std::logic_error *std::length_error::length_error[abi:ne200100](std::logic_error *a1, const char *a2)
{
  result = std::logic_error::logic_error(a1, a2);
  result->__vftable = (MEMORY[0x277D828E0] + 16);
  return result;
}

void std::__allocate_at_least[abi:ne200100]<std::allocator<apple::aiml::flatbuffers2::Offset<apple::aiml::flatbuffers2::String>>>(uint64_t a1, unint64_t a2)
{
  if (!(a2 >> 62))
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

void *apple::aiml::flatbuffers2::objc_apple::PageAlignedMemmove::PageAlignedMemmove(void *this, uint64_t a2)
{
  *this = &unk_285260020;
  this[1] = a2;
  return this;
}

void apple::aiml::flatbuffers2::objc_apple::PageAlignedMemmove::sync(apple::aiml::flatbuffers2::objc_apple::PageAlignedMemmove *this, unsigned __int8 **a2, unint64_t *a3)
{
  if (*a2 && *a2 % *MEMORY[0x277D85FA0])
  {
    apple::aiml::flatbuffers2::objc_apple::PageAlignedMemmove::sync();
  }

  *a2 = 0;
  *a3 = 0;
}

uint64_t apple::aiml::flatbuffers2::objc_apple::PageAlignedMemmove::memmove_down(apple::aiml::flatbuffers2::objc_apple::PageAlignedMemmove *this, unint64_t __dst, const unsigned __int8 *__src, size_t a4)
{
  if (__src <= __dst)
  {
    apple::aiml::flatbuffers2::objc_apple::PageAlignedMemmove::memmove_down();
  }

  v8 = 0;
  v9 = *(this + 1);
  v10 = MEMORY[0x277D85FA0];
  v11 = *MEMORY[0x277D85FA0];
  if (v9 <= *MEMORY[0x277D85FA0])
  {
    v9 = *MEMORY[0x277D85FA0];
  }

  v12 = (v11 - 1 + v9) / v11 * v11;
  v13 = (v11 - 1 + __dst) / v11 * v11;
  v25 = 0;
  v26 = 0;
  v14 = v13 > __dst;
  v15 = v13 - __dst;
  if (v14)
  {
    v8 = v15 >= a4 ? a4 : v15;
    memmove(__dst, __src, v8);
    v16 = *v10;
    v17 = __dst / *v10 * *v10;
    v25 = v16;
    v26 = v17;
    if (v16 >= v12)
    {
      if (v17 > __dst)
      {
        apple::aiml::flatbuffers2::objc_apple::PageAlignedMemmove::memmove_down();
      }

      if (v17 + v16 < __dst + v8)
      {
        apple::aiml::flatbuffers2::objc_apple::PageAlignedMemmove::memmove_down();
      }

      (**this)(this, &v26, &v25);
    }
  }

  if (v8 < a4)
  {
    v18 = *v10;
    do
    {
      v19 = (__dst + v8);
      if ((__dst + v8) % v18)
      {
        apple::aiml::flatbuffers2::objc_apple::PageAlignedMemmove::memmove_down();
      }

      v20 = v25;
      if (v12 <= v25)
      {
        apple::aiml::flatbuffers2::objc_apple::PageAlignedMemmove::memmove_down();
      }

      if (v12 - v25 >= a4 - v8)
      {
        v21 = a4 - v8;
      }

      else
      {
        v21 = v12 - v25;
      }

      if (!v21)
      {
        apple::aiml::flatbuffers2::objc_apple::PageAlignedMemmove::memmove_down();
      }

      memmove((__dst + v8), &__src[v8], v21);
      v22 = v26;
      if (!v26)
      {
        v26 = (__dst + v8);
        v22 = (__dst + v8);
      }

      v18 = *v10;
      v23 = v20 + (v21 + *v10 - 1) / *v10 * *v10;
      v25 = v23;
      if (v23 >= v12)
      {
        if (v22 > v19)
        {
          apple::aiml::flatbuffers2::objc_apple::PageAlignedMemmove::memmove_down();
        }

        if (&v22[v23] < &v19[v21])
        {
          apple::aiml::flatbuffers2::objc_apple::PageAlignedMemmove::memmove_down();
        }

        (**this)(this, &v26, &v25);
        v18 = *v10;
      }

      v8 += v21;
    }

    while (v8 < a4);
  }

  return (**this)(this, &v26, &v25);
}

uint64_t apple::aiml::flatbuffers2::objc_apple::PageAlignedMemmove::memmove_up(apple::aiml::flatbuffers2::objc_apple::PageAlignedMemmove *this, unsigned __int8 *a2, unsigned __int8 *a3, unint64_t a4)
{
  if (a3 >= a2)
  {
    apple::aiml::flatbuffers2::objc_apple::PageAlignedMemmove::memmove_up();
  }

  v7 = 0;
  v8 = *(this + 1);
  v9 = *MEMORY[0x277D85FA0];
  if (v8 <= *MEMORY[0x277D85FA0])
  {
    v8 = *MEMORY[0x277D85FA0];
  }

  v10 = (v9 + v8 - 1) / v9 * v9;
  v22 = 0;
  v23 = 0;
  v11 = &a2[a4];
  v12 = &a2[a4] / v9 * v9;
  if (&a2[a4] % v9 != 0 && &a2[a4] >= v12)
  {
    v7 = &a2[a4] % v9 >= a4 ? a4 : &a2[a4] % v9;
    memmove(&v11[-v7], &a3[a4 - v7], v7);
    v23 = v12;
    v13 = *MEMORY[0x277D85FA0];
    v22 = v13;
    if (v13 >= v10)
    {
      if (&v11[-v7] < v12)
      {
        apple::aiml::flatbuffers2::objc_apple::PageAlignedMemmove::memmove_up();
      }

      if (v12 + v13 < v11)
      {
        apple::aiml::flatbuffers2::objc_apple::PageAlignedMemmove::memmove_up();
      }

      (**this)(this, &v23, &v22);
    }
  }

  if (v7 < a4)
  {
    v14 = &a3[a4];
    v15 = *MEMORY[0x277D85FA0];
    do
    {
      v16 = &v11[-v7];
      if (&v11[-v7] % v15)
      {
        apple::aiml::flatbuffers2::objc_apple::PageAlignedMemmove::memmove_up();
      }

      v17 = v22;
      if (v10 <= v22)
      {
        apple::aiml::flatbuffers2::objc_apple::PageAlignedMemmove::memmove_up();
      }

      if (v10 - v22 >= a4 - v7)
      {
        v18 = a4 - v7;
      }

      else
      {
        v18 = v10 - v22;
      }

      if (!v18)
      {
        apple::aiml::flatbuffers2::objc_apple::PageAlignedMemmove::memmove_up();
      }

      memmove(&v16[-v18], &v14[-v7 - v18], v18);
      v15 = *MEMORY[0x277D85FA0];
      v19 = &v16[-v18] / *MEMORY[0x277D85FA0] * *MEMORY[0x277D85FA0];
      v20 = v17 + (v18 + *MEMORY[0x277D85FA0] - 1) / *MEMORY[0x277D85FA0] * *MEMORY[0x277D85FA0];
      v22 = v20;
      v23 = v19;
      if (v20 >= v10)
      {
        if (&v16[-v18] < v19)
        {
          apple::aiml::flatbuffers2::objc_apple::PageAlignedMemmove::memmove_up();
        }

        if (v19 + v20 < v16)
        {
          apple::aiml::flatbuffers2::objc_apple::PageAlignedMemmove::memmove_up();
        }

        (**this)(this, &v23, &v22);
        v15 = *MEMORY[0x277D85FA0];
      }

      v7 += v18;
    }

    while (v7 < a4);
  }

  return (**this)(this, &v23, &v22);
}

apple::aiml::flatbuffers2::objc_apple::PageAlignedMemmove *apple::aiml::flatbuffers2::objc_apple::PageAlignedMemmove::memmove(apple::aiml::flatbuffers2::objc_apple::PageAlignedMemmove *this, unsigned __int8 *a2, unsigned __int8 *a3, unint64_t a4)
{
  if (a2 != a3 && a4)
  {
    if (a2 <= a3)
    {
      return apple::aiml::flatbuffers2::objc_apple::PageAlignedMemmove::memmove_down(this, a2, a3, a4);
    }

    else
    {
      return apple::aiml::flatbuffers2::objc_apple::PageAlignedMemmove::memmove_up(this, a2, a3, a4);
    }
  }

  return this;
}

void *apple::aiml::flatbuffers2::objc_apple::MemmoveWithMsync::MemmoveWithMsync(void *this, uint64_t a2)
{
  *this = &unk_285260070;
  this[1] = a2;
  return this;
}

unint64_t apple::aiml::flatbuffers2::objc_apple::MemmoveWithMsync::sync(apple::aiml::flatbuffers2::objc_apple::MemmoveWithMsync *this, unsigned __int8 **a2, unint64_t *a3)
{
  result = *a2;
  if (*a2)
  {
    if (result % *MEMORY[0x277D85FA0])
    {
      apple::aiml::flatbuffers2::objc_apple::MemmoveWithMsync::sync();
    }

    if (*a3)
    {
      result = msync(result, *a3, 16);
      if (result)
      {
        apple::aiml::flatbuffers2::objc_apple::MemmoveWithMsync::sync();
      }
    }

    *a2 = 0;
    *a3 = 0;
  }

  return result;
}

__n128 apple::aiml::flatbuffers2::objc_apple::MappedFileAllocator::MappedFileAllocator(uint64_t a1, __n128 *a2, uint64_t *a3)
{
  *a1 = &unk_28525FFE8;
  result = *a2;
  *(a1 + 24) = a2[1].n128_u64[0];
  *(a1 + 8) = result;
  v4 = *a3;
  *a3 = 0;
  *(a1 + 32) = v4;
  *(a1 + 40) = -1;
  *(a1 + 84) = 0;
  *(a1 + 48) = -1;
  *(a1 + 56) = 0;
  *(a1 + 64) = 0;
  *(a1 + 72) = 0;
  *(a1 + 80) = 0;
  return result;
}

uint64_t apple::aiml::flatbuffers2::objc_apple::MappedFileAllocator::init(apple::aiml::flatbuffers2::objc_apple::MappedFileAllocator *this, const char *a2, int a3, int *a4)
{
  if (*(this + 80) == 1)
  {
    apple::aiml::flatbuffers2::objc_apple::MappedFileAllocator::init();
  }

  if (*(this + 2) == 1)
  {
    result = 0;
    if (a4)
    {
      *a4 = *(this + 6);
    }
  }

  else
  {
    v7 = open_dprotected_np(a2, 1538, a3, 0, 420);
    *(this + 10) = v7;
    if (v7 < 0)
    {
      if (a4)
      {
        *a4 = *__error();
      }

      result = 0;
      *(this + 80) = 1;
    }

    else
    {
      return 1;
    }
  }

  return result;
}

void apple::aiml::flatbuffers2::objc_apple::MappedFileAllocator::~MappedFileAllocator(apple::aiml::flatbuffers2::objc_apple::MappedFileAllocator *this)
{
  *this = &unk_28525FFE8;
  v2 = *(this + 6);
  if (v2 != -1)
  {
    munmap(v2, *(this + 7));
  }

  v3 = *(this + 10);
  if ((v3 & 0x80000000) == 0)
  {
    close(v3);
  }

  v4 = *(this + 4);
  *(this + 4) = 0;
  if (v4)
  {
    (*(*v4 + 16))(v4);
  }
}

{
  apple::aiml::flatbuffers2::objc_apple::MappedFileAllocator::~MappedFileAllocator(this);

  JUMPOUT(0x245CC39B0);
}

uint64_t apple::aiml::flatbuffers2::objc_apple::MappedFileAllocator::allocate(apple::aiml::flatbuffers2::objc_apple::MappedFileAllocator *this, uint64_t a2)
{
  if (*(this + 80) == 1)
  {
    apple::aiml::flatbuffers2::objc_apple::MappedFileAllocator::allocate();
  }

  if (*(this + 2) == 3)
  {
    v3 = *(this + 21);
    if (v3 == *(this + 7))
    {
      exception = __cxa_allocate_exception(0x20uLL);
      std::string::basic_string[abi:ne200100]<0>(&v7, "(Test mode) allocation failure");
      apple::aiml::flatbuffers2::objc_apple::AllocatorException::AllocatorException(exception, &v7);
    }

    *(this + 21) = v3 + 1;
  }

  if (*(this + 8))
  {
    v5 = __cxa_allocate_exception(0x20uLL);
    std::string::basic_string[abi:ne200100]<0>(&v7, "Only one region can be allocated from the mmap");
    apple::aiml::flatbuffers2::objc_apple::AllocatorException::AllocatorException(v5, &v7);
  }

  (*(*this + 32))(this, 0, *(this + 9), a2, 0, 0);
  return *(this + 8);
}

void sub_240552024(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  if (v16)
  {
    __cxa_free_exception(v15);
  }

  _Unwind_Resume(exception_object);
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

void apple::aiml::flatbuffers2::objc_apple::AllocatorException::~AllocatorException(std::exception *this)
{
  this->__vftable = &unk_285260048;
  if (SHIBYTE(this[3].__vftable) < 0)
  {
    operator delete(this[1].__vftable);
  }

  std::exception::~exception(this);
}

{
  this->__vftable = &unk_285260048;
  if (SHIBYTE(this[3].__vftable) < 0)
  {
    operator delete(this[1].__vftable);
  }

  std::exception::~exception(this);

  JUMPOUT(0x245CC39B0);
}

uint64_t apple::aiml::flatbuffers2::objc_apple::MappedFileAllocator::deallocate(uint64_t this, unsigned __int8 *a2)
{
  if (*(this + 80) == 1)
  {
    apple::aiml::flatbuffers2::objc_apple::MappedFileAllocator::deallocate();
  }

  *(this + 64) = 0;
  *(this + 72) = 0;
  return this;
}

unint64_t apple::aiml::flatbuffers2::objc_apple::MappedFileAllocator::reallocate_downward(apple::aiml::flatbuffers2::objc_apple::MappedFileAllocator *this, unsigned __int8 *a2, uint64_t a3, unint64_t a4, unint64_t a5, unint64_t a6)
{
  v22 = *MEMORY[0x277D85DE8];
  if (*(this + 80) == 1)
  {
    apple::aiml::flatbuffers2::objc_apple::MappedFileAllocator::reallocate_downward();
  }

  if (a6 + a5 > a4)
  {
    apple::aiml::flatbuffers2::objc_apple::MappedFileAllocator::reallocate_downward();
  }

  if (*(this + 2) == 4)
  {
    v11 = *(this + 21);
    if (v11 == *(this + 7))
    {
      exception = __cxa_allocate_exception(0x20uLL);
      std::string::basic_string[abi:ne200100]<0>(__str, "(Test mode) realloc failure");
      apple::aiml::flatbuffers2::objc_apple::AllocatorException::AllocatorException(exception, __str);
    }

    *(this + 21) = v11 + 1;
  }

  v12 = *(this + 8);
  if (*(this + 4) != __PAIR128__(a3, a2))
  {
    snprintf(__str, 0x200uLL, "Mismatched region reallocation (exp %p, act %p)", *(this + 8), a2);
    v18 = __cxa_allocate_exception(0x20uLL);
    std::string::basic_string[abi:ne200100]<0>(&v20, __str);
    apple::aiml::flatbuffers2::objc_apple::AllocatorException::AllocatorException(v18, &v20);
  }

  v13 = *(this + 7);
  if (v13 < a4)
  {
    apple::aiml::flatbuffers2::objc_apple::MappedFileAllocator::increase_map_size(this, a4);
    v13 = *(this + 7);
    v12 = *(this + 8);
  }

  v14 = *(this + 6) + v13;
  v15 = v14 - a4;
  if (v12)
  {
    apple::aiml::flatbuffers2::objc_apple::MappedFileAllocator::memmove_downward(this, v12, a3, (v14 - a4), a4, a5, a6);
  }

  *(this + 8) = v15;
  *(this + 9) = a4;
  v16 = *MEMORY[0x277D85DE8];
  return v15;
}

void sub_240552388(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, int a13, __int16 a14, char a15, char a16, void *__p, uint64_t a18, int a19, __int16 a20, char a21, char a22)
{
  if (a22 < 0)
  {
    operator delete(__p);
    if ((v23 & 1) == 0)
    {
LABEL_6:
      _Unwind_Resume(a1);
    }
  }

  else if (!v23)
  {
    goto LABEL_6;
  }

  __cxa_free_exception(v22);
  goto LABEL_6;
}

char *apple::aiml::flatbuffers2::objc_apple::MappedFileAllocator::increase_map_size(apple::aiml::flatbuffers2::objc_apple::MappedFileAllocator *this, unint64_t a2)
{
  v24 = *MEMORY[0x277D85DE8];
  v4 = *(this + 6);
  if (v4 != -1)
  {
    if (msync(*(this + 6), *(this + 7), 16))
    {
      v16 = *__error();
      v17 = strerror(v16);
      snprintf(__str, 0x200uLL, "Unable to sync memory to disk: %s (%d)", v17, v16);
      exception = __cxa_allocate_exception(0x20uLL);
      std::string::basic_string[abi:ne200100]<0>(&v22, __str);
      apple::aiml::flatbuffers2::objc_apple::AllocatorException::AllocatorException(exception, &v22);
    }

    if (munmap(*(this + 6), *(this + 7)))
    {
      v19 = *__error();
      v20 = strerror(v19);
      snprintf(__str, 0x200uLL, "Unable to release memory mapping: %s (%d)", v20, v19);
      v21 = __cxa_allocate_exception(0x20uLL);
      std::string::basic_string[abi:ne200100]<0>(&v22, __str);
      apple::aiml::flatbuffers2::objc_apple::AllocatorException::AllocatorException(v21, &v22);
    }
  }

  v5 = *(this + 7);
  if (v5 <= a2)
  {
    v5 = a2;
  }

  v6 = (v5 + *MEMORY[0x277D85FA0] - 1) / *MEMORY[0x277D85FA0] * *MEMORY[0x277D85FA0];
  *(this + 7) = v6;
  if (ftruncate(*(this + 10), v6))
  {
    v10 = *__error();
    v11 = strerror(v10);
    snprintf(__str, 0x200uLL, "Unable to extend file: %s (%d)", v11, v10);
    v12 = __cxa_allocate_exception(0x20uLL);
    std::string::basic_string[abi:ne200100]<0>(&v22, __str);
    apple::aiml::flatbuffers2::objc_apple::AllocatorException::AllocatorException(v12, &v22);
  }

  result = mmap(0, *(this + 7), 3, 1, *(this + 10), 0);
  *(this + 6) = result;
  if (result == -1)
  {
    v13 = *__error();
    v14 = strerror(v13);
    snprintf(__str, 0x200uLL, "Unable to map file: %s (%d)", v14, v13);
    v15 = __cxa_allocate_exception(0x20uLL);
    std::string::basic_string[abi:ne200100]<0>(&v22, __str);
    apple::aiml::flatbuffers2::objc_apple::AllocatorException::AllocatorException(v15, &v22);
  }

  v8 = *(this + 8);
  if (v8)
  {
    *(this + 8) = &result[v8 - v4];
  }

  v9 = *MEMORY[0x277D85DE8];
  return result;
}

void sub_2405526C0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16)
{
  if (a16 < 0)
  {
    operator delete(__p);
    if ((v17 & 1) == 0)
    {
LABEL_6:
      _Unwind_Resume(a1);
    }
  }

  else if (!v17)
  {
    goto LABEL_6;
  }

  __cxa_free_exception(v16);
  goto LABEL_6;
}

apple::aiml::flatbuffers2::objc_apple::PageAlignedMemmove *apple::aiml::flatbuffers2::objc_apple::MappedFileAllocator::memmove_downward(apple::aiml::flatbuffers2::objc_apple::MappedFileAllocator *this, unsigned __int8 *a2, uint64_t a3, unsigned __int8 *a4, uint64_t a5, unint64_t a6, unint64_t a7)
{
  v14 = *(this + 4);
  if (a4 <= a2)
  {
    apple::aiml::flatbuffers2::objc_apple::PageAlignedMemmove::memmove(v14, a4, a2, a7);
    v15 = *(this + 4);
    v16 = &a4[a5 - a6];
    v17 = &a2[a3 - a6];
    v18 = a6;
  }

  else
  {
    apple::aiml::flatbuffers2::objc_apple::PageAlignedMemmove::memmove(v14, &a4[a5 - a6], &a2[a3 - a6], a6);
    v15 = *(this + 4);
    v16 = a4;
    v17 = a2;
    v18 = a7;
  }

  return apple::aiml::flatbuffers2::objc_apple::PageAlignedMemmove::memmove(v15, v16, v17, v18);
}

uint64_t apple::aiml::flatbuffers2::objc_apple::MappedFileAllocator::truncate_to_region(apple::aiml::flatbuffers2::objc_apple::MappedFileAllocator *this, unsigned __int8 *a2, unint64_t a3, int *a4)
{
  if (*(this + 80) == 1)
  {
    apple::aiml::flatbuffers2::objc_apple::MappedFileAllocator::truncate_to_region();
  }

  v8 = *(this + 6);
  if (v8 == -1)
  {
    if (a4)
    {
      result = 0;
      v10 = 2;
      goto LABEL_9;
    }

    return 0;
  }

  if (v8 > a2 || &a2[a3] > &v8[*(this + 7)])
  {
    if (a4)
    {
      result = 0;
      v10 = 22;
LABEL_9:
      *a4 = v10;
      return result;
    }

    return 0;
  }

  *(this + 80) = 1;
  if (*(this + 2) == 2)
  {
    if (a4)
    {
      result = 0;
      v10 = *(this + 6);
      goto LABEL_9;
    }

    return 0;
  }

  apple::aiml::flatbuffers2::objc_apple::PageAlignedMemmove::memmove(*(this + 4), v8, a2, a3);
  if (msync(*(this + 6), (a3 + *MEMORY[0x277D85FA0] - 1) / *MEMORY[0x277D85FA0] * *MEMORY[0x277D85FA0], 16) || munmap(*(this + 6), *(this + 7)))
  {
    if (a4)
    {
      v11 = __error();
      result = 0;
      v10 = *v11;
      goto LABEL_9;
    }

    return 0;
  }

  *(this + 6) = -1;
  v12 = ftruncate(*(this + 10), a3);
  if (a4 && v12)
  {
    *a4 = *__error();
  }

  v13 = close(*(this + 10));
  if (a4)
  {
    if (v13)
    {
      *a4 = *__error();
    }
  }

  *(this + 10) = -1;
  return 1;
}

void *apple::aiml::flatbuffers2::objc_apple::AllocatorException::AllocatorException(void *a1, __int128 *a2)
{
  *a1 = &unk_285260048;
  v3 = (a1 + 1);
  if (*(a2 + 23) < 0)
  {
    std::string::__init_copy_ctor_external(v3, *a2, *(a2 + 1));
  }

  else
  {
    v4 = *a2;
    v3->__r_.__value_.__r.__words[2] = *(a2 + 2);
    *&v3->__r_.__value_.__l.__data_ = v4;
  }

  return a1;
}

uint64_t apple::aiml::flatbuffers2::objc_apple::AllocatorException::what(apple::aiml::flatbuffers2::objc_apple::AllocatorException *this)
{
  result = this + 8;
  if (*(this + 31) < 0)
  {
    return *result;
  }

  return result;
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

uint64_t AFBIsValidUTF8(uint64_t a1)
{
  v1 = 0;
  while (1)
  {
    v2 = v1;
    v3 = v1 + 1;
    v4 = *(a1 + v1);
    v5 = v4;
    if ((v4 & 0x80000000) == 0)
    {
      goto LABEL_19;
    }

    if (v3 == -1)
    {
      return 0;
    }

    if (v4 >= 0xE0u)
    {
      break;
    }

    if (v4 < 0xC2u)
    {
      return 0;
    }

    v8 = v4 & 0x1F;
LABEL_17:
    v11 = *(a1 + v3) ^ 0x80;
    if (v11 > 0x3F)
    {
      return 0;
    }

    v5 = v11 | (v8 << 6);
    LODWORD(v3) = v3 + 1;
LABEL_19:
    v1 = v3;
    if (!v5)
    {
      return 1;
    }
  }

  if (v4 <= 0xEFu)
  {
    v6 = v4 & 0xF;
    if (((a00000000000000[v6] >> (*(a1 + v3) >> 5)) & 1) == 0)
    {
      return 0;
    }

    v7 = *(a1 + v3) & 0x3F;
    goto LABEL_15;
  }

  if (v4 <= 0xF4u)
  {
    v9 = v4 - 240;
    v3 = *(a1 + v3);
    if ((byte_240553E53[v3 >> 4] >> (v4 + 16)))
    {
      v10 = v2 + 2;
      if (v2 != -3)
      {
        v7 = *(a1 + v10) ^ 0x80;
        if (v7 <= 0x3F)
        {
          LODWORD(v6) = v3 & 0x3F | (v9 << 6);
          LODWORD(v3) = v10;
LABEL_15:
          LODWORD(v3) = v3 + 1;
          if (v3 == -1)
          {
            return 0;
          }

          v8 = v7 | (v6 << 6);
          goto LABEL_17;
        }
      }
    }
  }

  return 0;
}

void apple::aiml::flatbuffers2::FlatBufferBuilder::NotNested()
{
  __assert_rtn("NotNested", "flatbuffers.h", 1434, "!num_field_loc");
}

{
  __assert_rtn("NotNested", "flatbuffers.h", 1432, "!nested");
}

void apple::aiml::flatbuffers2::vector_downward::ensure_space()
{
  __assert_rtn("ensure_space", "flatbuffers.h", 992, "size() < FLATBUFFERS_MAX_BUFFER_SIZE");
}

{
  __assert_rtn("ensure_space", "flatbuffers.h", 988, "cur_ >= scratch_ && scratch_ >= buf_");
}

void apple::aiml::flatbuffers2::objc_apple::PageAlignedMemmove::memmove_down()
{
  __assert_rtn("memmove_down", "AFBMappedFileAllocator.mm", 73, "src > dest");
}

{
  __assert_rtn("memmove_down", "AFBMappedFileAllocator.mm", 91, "aligned_dirty_start + aligned_bytes_dirtied >= dest + bytes_this_time");
}

{
  __assert_rtn("memmove_down", "AFBMappedFileAllocator.mm", 90, "aligned_dirty_start <= dest");
}

{
  __assert_rtn("memmove_down", "AFBMappedFileAllocator.mm", 102, "dest + bytes_transferred == page_align_rounddown(dest + bytes_transferred)");
}

{
  __assert_rtn("memmove_down", "AFBMappedFileAllocator.mm", 104, "max_dirty_size > aligned_bytes_dirtied");
}

{
  __assert_rtn("memmove_down", "AFBMappedFileAllocator.mm", 114, "aligned_dirty_start + aligned_bytes_dirtied >= dest + bytes_transferred + bytes_this_time");
}

{
  __assert_rtn("memmove_down", "AFBMappedFileAllocator.mm", 113, "aligned_dirty_start <= dest + bytes_transferred");
}

{
  __assert_rtn("memmove_down", "AFBMappedFileAllocator.mm", 106, "bytes_this_time != 0");
}

void apple::aiml::flatbuffers2::objc_apple::PageAlignedMemmove::memmove_up()
{
  __assert_rtn("memmove_up", "AFBMappedFileAllocator.mm", 129, "src < dest");
}

{
  __assert_rtn("memmove_up", "AFBMappedFileAllocator.mm", 147, "aligned_dirty_start + aligned_bytes_dirtied >= dest + size");
}

{
  __assert_rtn("memmove_up", "AFBMappedFileAllocator.mm", 146, "aligned_dirty_start <= dest + size - bytes_this_time");
}

{
  __assert_rtn("memmove_up", "AFBMappedFileAllocator.mm", 158, "dest + size - bytes_transferred == page_align_rounddown(dest + size - bytes_transferred)");
}

{
  __assert_rtn("memmove_up", "AFBMappedFileAllocator.mm", 160, "max_dirty_size > aligned_bytes_dirtied");
}

{
  __assert_rtn("memmove_up", "AFBMappedFileAllocator.mm", 168, "aligned_dirty_start + aligned_bytes_dirtied >= dest + size - bytes_transferred");
}

{
  __assert_rtn("memmove_up", "AFBMappedFileAllocator.mm", 167, "aligned_dirty_start <= dest + size - bytes_transferred - bytes_this_time");
}

{
  __assert_rtn("memmove_up", "AFBMappedFileAllocator.mm", 162, "bytes_this_time != 0");
}

void apple::aiml::flatbuffers2::objc_apple::MemmoveWithMsync::sync()
{
  __assert_rtn("sync", "AFBMappedFileAllocator.mm", 195, "page_align_rounddown(aligned_dirty_start) == aligned_dirty_start");
}

{
  __assert_rtn("sync", "AFBMappedFileAllocator.mm", 198, "rc == 0");
}

void apple::aiml::flatbuffers2::objc_apple::MappedFileAllocator::reallocate_downward()
{
  __assert_rtn("reallocate_downward", "AFBMappedFileAllocator.mm", 275, "in_use_back + in_use_front <= new_size");
}

{
  __assert_rtn("reallocate_downward", "AFBMappedFileAllocator.mm", 274, "!file_complete");
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