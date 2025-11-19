AG::data::zone *AG::data::vector<AG::InputEdge>::reserve_slow(unsigned int *a1, AG::data::zone *this, unsigned int a3)
{
  v4 = 32 - __clz(a3 - 1);
  v5 = *a1;
  v6 = 5 << *a1;
  if (a3 <= 1)
  {
    v7 = 1;
  }

  else
  {
    v7 = v4;
  }

  v11 = a1[1];
  if ((v5 & 0x1F) != 0)
  {
    v8 = v6;
  }

  else
  {
    v8 = 0;
  }

  result = AG::data::zone::realloc_bytes(this, &v11, v8, 5 << v7, 0);
  v10 = v11;
  *a1 = *a1 & 0xFFFFFFE0 | v7;
  a1[1] = v10;
  return result;
}

uint64_t AG::Subgraph::NodeCache::NodeCache(void)::$_1::__invoke(uint64_t a1, uint64_t a2)
{
  if (a1 == a2)
  {
    v8 = 1;
  }

  else
  {
    v2 = *(a1 + 8);
    if (v2 == *(a2 + 8) && (*a2 ^ *a1) <= 255)
    {
      v3 = *(a1 + 12);
      if (v3)
      {
        v4 = AG::data::_shared_table_bytes;
        v5 = *(AG::data::_shared_table_bytes + (v3 & 0xFFFFFE00));
        v6 = (AG::data::_shared_table_bytes + v3);
        v7 = (v6 + *(*(*(*(v5 + 40) + 88) + ((*v6 >> 5) & 0x7FFFFF8)) + 44));
        if ((*(v6 + 7) & 1) == 0)
        {
          goto LABEL_11;
        }
      }

      else
      {
        v7 = (a1 + 16);
        v4 = AG::data::_shared_table_bytes;
      }

      v9 = *v7;
LABEL_11:
      v10 = *(a2 + 12);
      if (v10)
      {
        v11 = *(v4 + (v10 & 0xFFFFFE00));
        v12 = (v4 + v10);
        v13 = (v12 + *(*(*(*(v11 + 40) + 88) + ((*v12 >> 5) & 0x7FFFFF8)) + 44));
        if ((*(v12 + 7) & 1) == 0)
        {
LABEL_16:
          v15 = (v4 + v2);
          v16 = *v15;
          v17 = v15[1];
          v8 = AGDispatchEquatable();
          return v8 & 1;
        }
      }

      else
      {
        v13 = (a2 + 16);
      }

      v14 = *v13;
      goto LABEL_16;
    }

    v8 = 0;
  }

  return v8 & 1;
}

uint64_t AGGraphGetInputValue(unint64_t a1, const char *a2, uint64_t a3, AG::swift::metadata *a4)
{
  v4 = a4;
  v5 = a3;
  v6 = a2;
  if ((a3 & 4) != 0 || a1 == 2)
  {
    return AGGraphGetValue(a2, a3, a4, a4, a3);
  }

  if ((a1 & 3) != 0)
  {
    AG::precondition_failure("non-direct attribute id: %u", a2, a1);
  }

  if (dword_1ED56D738 <= a1)
  {
    AG::precondition_failure("invalid data offset: %u", a2, a1);
  }

  v8 = *(AG::data::_shared_table_bytes + (a1 & 0xFFFFFE00));
  if (!v8)
  {
    AG::precondition_failure("no graph: %u", a2, a1);
  }

  v9 = *(v8 + 40);
  v35 = 0;
  v36 = a2;
  v10 = a3 & 0xB;
  v11 = AG::data::_shared_table_bytes + a1;
  v12 = *(v11 + 12);
  if (v12 > 0x11F)
  {
    v31 = a1;
    v33 = AG::data::_shared_table_bytes + a1;
    v27 = v9;
    v25 = a3;
    v23 = a2;
    a1 = AG::Graph::index_of_input_slow(v9, v11, a2 | (v10 << 40) | 0xF00000000);
    v9 = v27;
    v4 = a4;
    v6 = v23;
    v5 = v25;
    v13 = a1;
    LODWORD(a1) = v31;
    v11 = v33;
  }

  else
  {
    if (v12 < 0x20)
    {
LABEL_13:
      v13 = -1;
      return AG::Graph::input_value_ref_slow(v9, a1, v6, 0, v5, v4, &v35, v13);
    }

    v13 = 0;
    v14 = v12 >> 5;
    v15 = (*(v11 + 16) + AG::data::_shared_table_bytes + 4);
    while (*(v15 - 1) != a2 || (*v15 & 0xF) != v10)
    {
      ++v13;
      v15 += 5;
      if (v14 == v13)
      {
        goto LABEL_13;
      }
    }
  }

  if (v13 < 0)
  {
    return AG::Graph::input_value_ref_slow(v9, a1, v6, 0, v5, v4, &v35, v13);
  }

  v16 = *(v11 + 16);
  v17 = AG::data::_shared_table_bytes;
  if ((v6 & 3) != 0)
  {
    v32 = a1;
    v28 = v9;
    v30 = v4;
    v26 = v5;
    v22 = v16;
    v24 = v13;
    v34 = AG::data::_shared_table_bytes;
    LODWORD(a1) = AG::AttributeID::resolve_slow(&v36, 3);
    v16 = v22;
    v13 = v24;
    v9 = v28;
    v4 = v30;
    v5 = v26;
    v6 = a1;
    LODWORD(a1) = v32;
    v17 = v34;
  }

  else
  {
    v18 = 0;
  }

  v19 = AG::data::_shared_table_bytes;
  v20 = AG::data::_shared_table_bytes + v6;
  if ((*v20 & 0x11) != 0x10)
  {
    v6 = v36;
    return AG::Graph::input_value_ref_slow(v9, a1, v6, 0, v5, v4, &v35, v13);
  }

  *(v17 + v16 + 5 * v13 + 4) |= 0x20u;
  v21 = (v19 + *(v20 + 8));
  if ((*(v20 + 7) & 2) != 0)
  {
    v21 = *v21;
  }

  return v21 + v18;
}

uint64_t AG::Graph::output_value_ref(uint64_t a1, const char *a2, AG::swift::metadata *a3)
{
  v3 = (AG::data::_shared_table_bytes + a2);
  v4 = *v3;
  if ((v4 & 0xC0) == 0)
  {
    AG::precondition_failure("attribute is not evaluating: %u", a2, a2);
  }

  if ((v4 & 0x10) == 0)
  {
    return 0;
  }

  v6 = *(*(*(a1 + 88) + ((v4 >> 5) & 0x7FFFFF8)) + 8);
  if (v6 != a3)
  {
    AG::Graph::value_set_internal(v6);
  }

  result = AG::data::_shared_table_bytes + v3[2];
  if ((*(v3 + 7) & 2) != 0)
  {
    return *result;
  }

  return result;
}

unint64_t AG::Graph::index_of_input_slow(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = *(a2 + 12);
  v5 = AG::data::_shared_table_bytes + *(a2 + 16);
  v6 = v4 >> 5;
  v7 = 5 * (v4 >> 5);
  if ((*(a2 + 7) & 8) != 0)
  {
    *(a2 + 7) &= ~8u;
    v8 = 126 - 2 * __clz(v6);
    if (v4 >= 0x20)
    {
      v9 = v8;
    }

    else
    {
      v9 = 0;
    }

    std::__introsort<std::_ClassicAlgPolicy,AG::Graph::index_of_input_slow(AG::Node &,AG::InputEdge::Comparator)::$_0 &,AG::InputEdge*,false>(v5, v5 + v7, v9, 1);
  }

  v10 = v5 + v7;
  if (v4 >= 0x20)
  {
    v11 = v5;
    do
    {
      v12 = (v11 + 5 * (v6 >> 1));
      v14 = *v12;
      v13 = v12 + 5;
      v15 = v14 >= a3;
      if (v14 >= a3)
      {
        v6 >>= 1;
      }

      else
      {
        v6 += ~(v6 >> 1);
      }

      if (!v15)
      {
        v11 = v13;
      }
    }

    while (v6);
  }

  else
  {
    v11 = v5;
  }

  if (v11 != v10)
  {
    v16 = v11 - v5;
    while (*v11 == a3)
    {
      if ((*(v11 + 4) & BYTE4(a3)) == BYTE5(a3))
      {
        return 0xCCCCCCCCCCCCCCCDLL * v16;
      }

      v11 += 5;
      v16 += 5;
      if (v11 == v10)
      {
        return -1;
      }
    }
  }

  return -1;
}

uint64_t AG::LayoutDescriptor::compare_indirect(AG::LayoutDescriptor **a1, uint64_t a2, AG::LayoutDescriptor *a3, int a4, const void *a5, const void *a6)
{
  v27[1] = *MEMORY[0x1E69E9840];
  v12 = *(*(a2 - 8) + 64);
  if (v12 <= 0x1000)
  {
    v17 = *(*(a2 - 8) + 64);
    MEMORY[0x1EEE9AC00](a1);
    v13 = (v27 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0));
    bzero(v13, v12);
    MEMORY[0x1EEE9AC00](v18);
    v15 = v13;
    bzero(v13, v12);
  }

  else
  {
    v13 = malloc_type_malloc(*(*(a2 - 8) + 64), 0x100004077774924uLL);
    v14 = malloc_type_malloc(v12, 0x100004077774924uLL);
    v15 = v14;
    if (!v13 || !v14)
    {
      v16 = 0;
LABEL_14:
      free(v15);
      free(v13);
      goto LABEL_15;
    }
  }

  memcpy(v13, a5, v12);
  memcpy(v15, a6, v12);
  v19 = *(*(a2 - 8) + 96);
  v19(v13, a2);
  v19(v15, a2);
  v20 = *v13;
  v21 = *v15;
  if (*v13 == *v15)
  {
    v16 = 1;
  }

  else
  {
    v22 = *(a3 - 1);
    v23 = *(v22 + 80);
    v24 = *a1;
    if (!*a1)
    {
      v24 = AG::LayoutDescriptor::fetch(a3, (a4 & 0xFFFFFEFF), 0);
      *a1 = v24;
      v22 = *(a3 - 1);
    }

    if (v24 == 1)
    {
      v24 = 0;
    }

    v16 = AG::LayoutDescriptor::compare(v24, (v20 + ((v23 + 16) & ~v23)), (v21 + ((v23 + 16) & ~v23)), *(v22 + 64), (a4 & 0xFFFFFEFF));
  }

  if (v12 > 0x1000)
  {
    goto LABEL_14;
  }

LABEL_15:
  v25 = *MEMORY[0x1E69E9840];
  return v16;
}

void sub_1B4918C20(_Unwind_Exception *exception_object)
{
  if (v2 > 0x1000)
  {
    free(v3);
    free(v1);
  }

  _Unwind_Resume(exception_object);
}

_BYTE *AGGraphSetNeedsUpdate(uint64_t a1, const char *a2)
{
  if (*(a1 + 88) == 1)
  {
    AG::Graph::Context::from_cf(a1, a2);
  }

  v3 = (a1 + 16);

  return AG::Graph::Context::set_needs_update(v3);
}

_BYTE *AG::Graph::Context::set_needs_update(_BYTE *this)
{
  if ((this[68] & 1) == 0)
  {
    v1 = this;
    v2 = *this;
    v3 = *(*this + 176);
    if (v3)
    {
      v4 = 8 * v3 - 8;
      do
      {
        this = (*(**(*(v2 + 168) + v4) + 176))(*(*(v2 + 168) + v4), v1);
        v4 -= 8;
      }

      while (v4 != -8);
      v2 = *v1;
    }

    v1[68] = 1;
    *(v2 + 361) = 1;
  }

  return this;
}

uint64_t AGWeakAttributeGetAttribute(unint64_t a1)
{
  v1 = 2;
  v2 = a1;
  if (a1 >= 4)
  {
    v3 = HIDWORD(a1);
    v4 = AG::data::table::raw_page_seed(&AG::data::_shared_table_bytes, (a1 & 0xFFFFFE00));
    if ((BYTE4(v4) & (v3 == v4)) != 0)
    {
      return v2;
    }

    else
    {
      return 2;
    }
  }

  return v1;
}

uint64_t AGGraphGetAttributeGraph(uint64_t a1, char *a2)
{
  if (dword_1ED56D738 <= (a1 & 0xFFFFFFFC))
  {
    AG::precondition_failure("invalid data offset: %u", a2, a1 & 0xFFFFFFFC);
  }

  v3 = *(AG::data::_shared_table_bytes + (a1 & 0xFFFFFE00));
  if (!v3 || (a2 = *(v3 + 48)) == 0 || (v4 = util::UntypedTable::lookup((*(v3 + 40) + 104), a2, 0)) == 0)
  {
    AG::precondition_failure("no graph: %u", a2, a1);
  }

  return v4 - 16;
}

uint64_t AGGraphGetAttributeSubgraph2(int a1, const char *a2)
{
  if (dword_1ED56D738 <= (a1 & 0xFFFFFFFC))
  {
    AG::precondition_failure("invalid data offset: %u", a2, a1 & 0xFFFFFFFC);
  }

  v2 = *(AG::data::_shared_table_bytes + (a1 & 0xFFFFFE00));
  if (!v2)
  {
    AGGraphGetAttributeSubgraph2_cold_1(0, a2);
  }

  return AG::Subgraph::to_cf(v2);
}

uint64_t AG::Subgraph::foreach_ancestor<AG::Subgraph::propagate_dirty_flags(void)::$_0>(uint64_t result, _DWORD *a2)
{
LABEL_1:
  v3 = result;
  v4 = *(result + 56);
  if (v4)
  {
    v5 = *((v4 & 0xFFFFFFFFFFFFFFFELL) + 40);
  }

  else
  {
    v5 = v4 != 0;
  }

  v6 = v5 - 1;
  if (v5 - 1 >= 0)
  {
    do
    {
      result = *(v3 + 56);
      if (result)
      {
        v7 = result & 0xFFFFFFFFFFFFFFFELL;
        if (*((result & 0xFFFFFFFFFFFFFFFELL) + 32))
        {
          v7 = *((result & 0xFFFFFFFFFFFFFFFELL) + 32);
        }

        result = *(v7 + 8 * v6);
      }

      v8 = *(result + 100);
      if ((*a2 & ~HIBYTE(v8)) != 0)
      {
        *(result + 100) = v8 & 0xFFFFFF | ((*a2 | HIBYTE(v8)) << 24);
        if (!v6)
        {
          goto LABEL_1;
        }

        result = AG::Subgraph::foreach_ancestor<AG::Subgraph::propagate_dirty_flags(void)::$_0>();
      }
    }

    while (v6-- > 0);
  }

  return result;
}

unsigned int *AGGraphWithUpdate(char *a1, uint64_t (*a2)(void))
{
  if (a1 == 2)
  {
    v3 = AG::Graph::_current_update_key;
    StatusReg = _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
    v5 = *(StatusReg + 8 * v3);
    v6 = v5 | 1;
    if (!v5)
    {
      v6 = 0;
    }

    *(StatusReg + 8 * v3) = v6;
    result = a2();
    *(StatusReg + 8 * AG::Graph::_current_update_key) = v5;
  }

  else
  {
    if ((a1 & 3) != 0)
    {
      AG::precondition_failure("non-direct attribute id: %u", a2, a2, a1);
    }

    if (dword_1ED56D738 <= a1)
    {
      AG::precondition_failure("invalid data offset: %u", a2, a2, a1);
    }

    v8 = *(AG::data::_shared_table_bytes + (a1 & 0xFFFFFE00));
    if (!v8)
    {
      AG::precondition_failure("no graph: %u", a2, a2, a1);
    }

    v9 = a1;
    v10 = *(v8 + 40);

    return AG::Graph::with_update(v10, v9, a2);
  }

  return result;
}

void *AG::LayoutDescriptor::Compare::Enum::Enum(void *a1, uint64_t a2, int a3, int a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, char a10)
{
  v10 = a2;
  v12 = a9;
  *a1 = a2;
  a1[1] = a5;
  a1[2] = a6;
  a1[3] = a7;
  a1[4] = a8;
  a1[5] = a9;
  *(a1 + 12) = a4;
  *(a1 + 13) = a3;
  v13 = *(a2 - 8);
  *(a1 + 56) = a10;
  v14 = v13;
  if (a3 == 1)
  {
    v15 = (v13 + 16);
    (*(v13 + 16))();
    (*v15)(a1[4], a1[2], *a1);
    v12 = a1[5];
    v10 = *a1;
  }

  (*(v14 + 96))(v12, v10);
  (*(v14 + 96))(a1[4], *a1);
  return a1;
}

void AG::LayoutDescriptor::Compare::Enum::~Enum(AG::LayoutDescriptor::Compare::Enum *this)
{
  v2 = *(*this - 8);
  (*(v2 + 104))(*(this + 5), *(this + 12));
  (*(v2 + 104))(*(this + 4), *(this + 12), *this);
  if (*(this + 13) == 1)
  {
    (*(v2 + 8))(*(this + 5), *this);
    (*(v2 + 8))(*(this + 4), *this);
  }

  if (*(this + 56) == 1)
  {
    free(*(this + 4));
    if (*(this + 56))
    {
      free(*(this + 5));
    }
  }
}

uint64_t util::UntypedTable::for_each(uint64_t this, void (*a2)(const void *, const void *, const void *), const void *a3)
{
  if (*(this + 40))
  {
    v5 = this;
    v6 = 0;
    v7 = *(this + 56);
    do
    {
      for (i = *(*(v5 + 32) + 8 * v6); i; i = *i)
      {
        this = (a2)(i[1], i[2], a3);
      }

      ++v6;
    }

    while (!(v6 >> v7));
  }

  return this;
}

void *util::Table<unsigned long,AG::Graph::Context *>::for_each<AG::Graph::call_update(void)::$_0>(AG::Graph::call_update(void)::$_0 const&)const::{lambda(void const*,void const*,void const*)#1}::__invoke(uint64_t a1, uint64_t a2, void **a3)
{
  if (*(a2 + 68) == 1)
  {
    v3 = *a3;
    v4 = *(a2 + 16);
    v5 = *(*a3 + 17);
    if (*(*a3 + 18) < (v5 + 1))
    {
      result = AG::vector<unsigned long,16ul,unsigned long>::reserve_slow(*a3, v5 + 1);
      v5 = v3[17];
    }

    v6 = v3[16];
    if (!v6)
    {
      v6 = v3;
    }

    v6[v5] = v4;
    ++v3[17];
  }

  return result;
}

void AG::Graph::Context::call_update(AG::Graph::Context *this)
{
  v33 = *MEMORY[0x1E69E9840];
  if (*(this + 68) == 1)
  {
    *(this + 68) = 0;
    if (*(this + 5))
    {
      v2 = *this;
      StatusReg = _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
      v24 = v2;
      v25 = StatusReg - 224;
      v4 = *(StatusReg + 8 * AG::Graph::_current_update_key);
      v5 = atomic_load((v2 + 368));
      v26 = v4;
      v27 = v5;
      v29 = 0;
      v30 = 0;
      v31 = 8;
      v32 = 4;
      if (v4)
      {
        v6 = *((v4 & 0xFFFFFFFFFFFFFFFELL) + 120) & 2;
        v32 = v6 | 4;
        v7 = v6 | 0xC;
      }

      else
      {
        v7 = 12;
      }

      *(v2 + 368) = v25;
      if ((*(v2 + 360) & 1) == 0)
      {
        *(v2 + 360) = 1;
        v32 = v7;
      }

      *(StatusReg + 8 * AG::Graph::_current_update_key) = &v24 + 1;
      v8 = *this;
      v9 = *(*this + 176);
      if (v9)
      {
        for (i = 8 * v9 - 8; i != -8; i -= 8)
        {
          v21 = *(*(v8 + 168) + i);
          (*(*v21 + 96))(v21, this);
        }
      }

      v10 = *(this + 6);
      (*(this + 5))();
      v12 = *(v8 + 176);
      if (v12)
      {
        for (j = 8 * v12 - 8; j != -8; j -= 8)
        {
          v23 = *(*(v8 + 168) + j);
          (*(*v23 + 104))(v23, this);
        }
      }

      v13 = &v28;
      if (v29)
      {
        v13 = v29;
      }

      if (v30)
      {
        v14 = AG::data::_shared_table_bytes;
        v15 = 8 * v30;
        do
        {
          v16 = *v13;
          v13 += 2;
          *(v14 + v16) -= 64;
          v15 -= 8;
        }

        while (v15);
      }

      v17 = v24;
      if (v25 != *(v24 + 368))
      {
        AG::non_fatal_precondition_failure("invalid graph update (access from multiple threads?)", v11);
        v17 = v24;
      }

      v18 = v26;
      *(v17 + 368) = v27;
      *(StatusReg + 8 * AG::Graph::_current_update_key) = v18;
      if ((v32 & 8) != 0)
      {
        *(v17 + 360) = 0;
      }

      if (v29)
      {
        free(v29);
      }
    }
  }

  v19 = *MEMORY[0x1E69E9840];
}

void sub_1B491959C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, char a10)
{
  if (a2)
  {
    __clang_call_terminate(exception_object);
  }

  _Unwind_Resume(exception_object);
}

unint64_t sub_1B49195DC()
{
  result = qword_1ED56CB00[0];
  if (!qword_1ED56CB00[0])
  {
    type metadata accessor for AnyAttribute(255);
    result = swift_getWitnessTable();
    atomic_store(result, qword_1ED56CB00);
  }

  return result;
}

unint64_t AG::Subgraph::add_observer(AG::data::zone *this, uint64_t a2, uint64_t a3)
{
  if (!*(this + 20))
  {
    v6 = *(this + 4);
    if (v6 && (v7 = AG::data::_shared_table_bytes, v8 = (*(AG::data::_shared_table_bytes + v6 + 16) + 7) & 0xFFFFFFF8, v8 + 24 <= *(AG::data::_shared_table_bytes + v6 + 12)))
    {
      *(AG::data::_shared_table_bytes + v6 + 16) = v8 + 24;
      v9 = v8 + v6;
    }

    else
    {
      v9 = AG::data::zone::alloc_slow(this, 0x18u, 7);
      v7 = AG::data::_shared_table_bytes;
    }

    v10 = (v7 + v9);
    *v10 = 0;
    v10[1] = 0;
    v10[2] = 0;
    *(this + 20) = v9;
  }

  v11 = AGMakeUniqueID();
  v12 = (AG::data::_shared_table_bytes + *(this + 20));

  v13 = v12[1];
  if (v12[2] < (v13 + 1))
  {
    AG::vector<std::pair<AG::ClosureFunctionVV<void>,unsigned long>,0ul,unsigned long>::reserve_slow(v12, v13 + 1);
    v13 = v12[1];
  }

  v14 = (*v12 + 24 * v13);
  *v14 = a2;
  v14[1] = a3;
  v14[2] = v11;
  ++v12[1];
  return v11;
}

unint64_t AGSubgraphAddObserver(uint64_t a1, const char *a2, uint64_t a3)
{
  v4 = *(a1 + 16);
  if (!v4)
  {
    AGSubgraphMove_cold_1(v4, a2);
  }

  return AG::Subgraph::add_observer(v4, a2, a3);
}

void *AG::details::realloc_vector<unsigned long,24ul>(void *a1, unint64_t *a2, uint64_t a3)
{
  v4 = a1;
  if (a3)
  {
    v5 = malloc_good_size(24 * a3);
    v6 = v5 / 0x18;
    if (v5 / 0x18 != *a2)
    {
      v7 = malloc_type_realloc(v4, v5, 0x15CB70FBuLL);
      if (!v7)
      {
        AG::precondition_failure("allocation failure", v8);
      }

      v4 = v7;
      *a2 = v6;
    }
  }

  else
  {
    *a2 = 0;
    free(a1);
    return 0;
  }

  return v4;
}

void *AG::vector<std::pair<AG::ClosureFunctionVV<void>,unsigned long>,0ul,unsigned long>::reserve_slow(uint64_t a1, unint64_t a2)
{
  if (*(a1 + 16) + (*(a1 + 16) >> 1) <= a2)
  {
    v3 = a2;
  }

  else
  {
    v3 = *(a1 + 16) + (*(a1 + 16) >> 1);
  }

  result = AG::details::realloc_vector<unsigned long,24ul>(*a1, (a1 + 16), v3);
  *a1 = result;
  return result;
}

AG::Subgraph::NodeCache *AG::Subgraph::NodeCache::NodeCache(AG::Subgraph::NodeCache *this)
{
  util::UntypedTable::UntypedTable(this + 8, 0, 0, 0, 0);
  util::UntypedTable::UntypedTable(this + 72, AG::Subgraph::NodeCache::NodeCache(void)::$_0::__invoke, AG::Subgraph::NodeCache::NodeCache(void)::$_1::__invoke, 0, 0);
  util::UntypedTable::UntypedTable(this + 136, 0, 0, 0, 0);
  return this;
}

void sub_1B491990C(_Unwind_Exception *a1)
{
  util::UntypedTable::~UntypedTable((v1 + 72));
  util::UntypedTable::~UntypedTable((v1 + 8));
  _Unwind_Resume(a1);
}

void AG::Subgraph::update(AG::Graph **this, uint64_t a2)
{
  v3 = this;
  v81 = *MEMORY[0x1E69E9840];
  v4 = this[5];
  if (*(v4 + 361) == 1 && !AG::Graph::thread_is_updating(this[5]))
  {
    AG::Graph::call_update(v4);
  }

  if (*(v3 + 104))
  {
    v5 = *(v3 + 5);
LABEL_6:
    v6 = *MEMORY[0x1E69E9840];

    AG::Graph::invalidate_subgraphs(v5);
    return;
  }

  v5 = *(v3 + 5);
  if (((BYTE2(*(v3 + 25)) | HIBYTE(*(v3 + 25))) & a2) == 0)
  {
    goto LABEL_6;
  }

  v64 = *(v3 + 5);
  v65 = *(v5 + 360);
  *(v5 + 360) = 1;
  v7 = *(v5 + 176);
  if (v7)
  {
    for (i = 8 * v7 - 8; i != -8; i -= 8)
    {
      v57 = *(*(v5 + 168) + i);
      (*(*v57 + 48))(v57, v3, a2);
    }
  }

  v79 = 0u;
  v80 = 256;
  v77 = 32;
  __dst[0] = v3;
  *v76 = xmmword_1B494AB50;
  v62 = atomic_fetch_add(AG::Subgraph::_last_traversal_seed, 1u) + 1;
  *(v3 + 21) = v62;
  is_updating = AG::Graph::thread_is_updating(v5);
  StatusReg = _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
  v66 = v5;
  v67 = StatusReg - 224;
  v11 = *(StatusReg + 8 * AG::Graph::_current_update_key);
  v12 = atomic_load((v5 + 368));
  v68 = v11;
  v69 = v12;
  v71 = 0;
  v72 = 0;
  v13 = 8;
  v73 = 8;
  v74 = 0;
  if (v11)
  {
    v74 = *((v11 & 0xFFFFFFFFFFFFFFFELL) + 120) & 2;
    v13 = v74 | 8;
  }

  *(v5 + 368) = v67;
  if ((*(v5 + 360) & 1) == 0)
  {
    *(v5 + 360) = 1;
    v74 = v13;
  }

  *(StatusReg + 8 * AG::Graph::_current_update_key) = &v66;
  v14 = v76[1];
  if (v76[1])
  {
    v60 = StatusReg;
    v61 = v3;
    v63 = ~a2;
    do
    {
      while (1)
      {
        v15 = v76[0];
        if (!v76[0])
        {
          v15 = __dst;
        }

        v16 = v15[v14-- - 1];
        v76[1] = v14;
        if (!*(v16 + 104))
        {
          break;
        }

        if (!v14)
        {
          goto LABEL_89;
        }
      }

      while (1)
      {
        v17 = *(v16 + 100);
        if ((BYTE2(v17) & a2) == 0)
        {
          break;
        }

        v18 = v17 & 0xFF00FFFF | ((BYTE2(v17) & v63) << 16);
        *(v16 + 100) = v18;
        if (!a2 || (a2 & v18) != 0)
        {
          v19 = *(v16 + 16);
          if (v19)
          {
            v20 = AG::data::_shared_table_bytes;
            do
            {
              v21 = v19;
              v22 = v20 + v19;
              v23 = *(v22 + 20);
              if (*(v22 + 20))
              {
                do
                {
                  v24 = v23 + v21;
                  v25 = (v23 + v21) & 3;
                  if (v25 > 1)
                  {
                    if (v25 != 3)
                    {
                      break;
                    }
                  }

                  else if (v25)
                  {
                    v23 = *(AG::data::_shared_table_bytes + (v24 & 0xFFFFFFFC) + 14);
                    if (a2)
                    {
                      break;
                    }
                  }

                  else
                  {
                    v26 = AG::data::_shared_table_bytes + v24;
                    v23 = *(v26 + 4);
                    if (!a2)
                    {
                      goto LABEL_33;
                    }

                    if (!*(v26 + 6))
                    {
                      break;
                    }

                    if ((*(v26 + 6) & a2) != 0)
                    {
LABEL_33:
                      if (*v26)
                      {
                        v27 = *(&v79 + 1);
                        v8 = (*(&v79 + 1) + 1);
                        if (v80 < *(&v79 + 1) + 1)
                        {
                          AG::vector<AG::data::ptr<AG::Node>,256ul,unsigned long>::reserve_slow(v78, v8);
                          v27 = *(&v79 + 1);
                          v8 = (*(&v79 + 1) + 1);
                        }

                        v28 = v79;
                        if (!v79)
                        {
                          v28 = v78;
                        }

                        *&v28[4 * v27] = v24;
                        *(&v79 + 1) = v8;
                      }
                    }
                  }
                }

                while (v23);
                v20 = AG::data::_shared_table_bytes;
              }

              v19 = *(v20 + v21 + 8);
            }

            while (v19);
          }
        }

        if (!*(&v79 + 1))
        {
          if (*(v16 + 104))
          {
            goto LABEL_88;
          }

          break;
        }

        if (v79)
        {
          v29 = v79;
        }

        else
        {
          v29 = v78;
        }

        v30 = &v29[*(&v79 + 1)];
        do
        {
          while (1)
          {
            v31 = *v29;
            if (!is_updating)
            {
              ++*(v5 + 392);
            }

            v32 = AG::data::_shared_table_bytes;
            if ((*(AG::data::_shared_table_bytes + v31) & 0x11) == 0x10)
            {
              break;
            }

            ++*(v5 + 400);
            v33 = *(v5 + 176);
            if (v33)
            {
              for (j = 8 * v33 - 8; j != -8; j -= 8)
              {
                v38 = *(*(v5 + 168) + j);
                (*(*v38 + 64))(v38, &v66, v31, 0);
              }
            }

            if (AG::Graph::UpdateStack::push(&v66, v31, (v32 + v31), 0, 0))
            {
              v34 = AG::Graph::UpdateStack::update(&v66);
            }

            else
            {
              v34 = 1;
            }

            v35 = *(v5 + 176);
            if (v35)
            {
              for (k = 8 * v35 - 8; k != -8; k -= 8)
              {
                v40 = *(*(v5 + 168) + k);
                (*(*v40 + 72))(v40, &v66, v31, v34);
              }
            }

            v41 = *(v16 + 104);
            ++v29;
            is_updating = 1;
            if (*(v16 + 104))
            {
              v36 = 1;
            }

            else
            {
              v36 = v29 == v30;
            }

            if (v36)
            {
              goto LABEL_72;
            }
          }

          ++v29;
          is_updating = 1;
        }

        while (v29 != v30);
        v41 = *(v16 + 104);
LABEL_72:
        *(&v79 + 1) = 0;
        if (v41)
        {
          goto LABEL_88;
        }
      }

      v42 = *(v16 + 100);
      if ((a2 & HIBYTE(v42)) != 0)
      {
        *(v16 + 100) = v42 & 0xFFFFFF | ((HIBYTE(v42) & v63) << 24);
        v43 = *(v16 + 72);
        if (v43)
        {
          v44 = *(v16 + 64);
          v45 = 8 * v43;
          do
          {
            v46 = *v44 & 0xFFFFFFFFFFFFFFFCLL;
            if (!*(v46 + 104) && ((BYTE2(*(v46 + 100)) | HIBYTE(*(v46 + 100))) & a2) != 0 && *(v46 + 84) != v62)
            {
              v47 = v76[1];
              v8 = v76[1] + 1;
              if (v77 < v76[1] + 1)
              {
                AG::vector<AG::Subgraph const*,32ul,unsigned long>::reserve_slow(__dst, v8);
                v47 = v76[1];
                v8 = v76[1] + 1;
              }

              v48 = v76[0];
              if (!v76[0])
              {
                v48 = __dst;
              }

              v48[v47] = v46;
              v76[1] = v8;
              *(v46 + 84) = v62;
            }

            ++v44;
            v45 -= 8;
          }

          while (v45);
        }
      }

LABEL_88:
      v14 = v76[1];
    }

    while (v76[1]);
LABEL_89:
    v49 = &v70;
    if (v71)
    {
      v49 = v71;
    }

    StatusReg = v60;
    v3 = v61;
    if (v72)
    {
      v50 = AG::data::_shared_table_bytes;
      v51 = 8 * v72;
      do
      {
        v52 = *v49;
        v49 += 2;
        *(v50 + v52) -= 64;
        v51 -= 8;
      }

      while (v51);
    }
  }

  v53 = v66;
  if (v67 != *(v66 + 368))
  {
    AG::non_fatal_precondition_failure("invalid graph update (access from multiple threads?)", v8);
    v53 = v66;
  }

  *(v53 + 368) = v69;
  *(StatusReg + 8 * AG::Graph::_current_update_key) = v68;
  if ((v74 & 8) != 0)
  {
    *(v66 + 360) = 0;
  }

  if (v71)
  {
    free(v71);
  }

  AG::Graph::invalidate_subgraphs(v5);
  v54 = *(v5 + 176);
  if (v54)
  {
    for (m = 8 * v54 - 8; m != -8; m -= 8)
    {
      v59 = *(*(v5 + 168) + m);
      (*(*v59 + 56))(v59, v3);
    }
  }

  if (v76[0])
  {
    free(v76[0]);
  }

  if (v79)
  {
    free(v79);
  }

  if (v64 && (v65 & 1) == 0)
  {
    *(v64 + 360) = 0;
    AG::Graph::invalidate_subgraphs(v64);
  }

  v55 = *MEMORY[0x1E69E9840];
}

void sub_1B491A048(_Unwind_Exception *a1, int a2)
{
  if (a2)
  {
    __clang_call_terminate(a1);
  }

  _Unwind_Resume(a1);
}

void AGSubgraphUpdate(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  if (v2)
  {
    AG::Subgraph::update(v2, a2);
  }
}

_DWORD *AG::swift::metadata::nominal_descriptor(AG::swift::metadata *this)
{
  result = AG::swift::metadata::descriptor(this);
  if (result)
  {
    if ((*result & 0x1Fu) - 17 >= 2)
    {
      return 0;
    }
  }

  return result;
}

uint64_t AGGraphGetWeakValue(unint64_t a1, char a2, AG::swift::metadata *a3)
{
  v3 = a1;
  if (a1 < 4)
  {
    return 0;
  }

  v6 = AG::data::table::raw_page_seed(&AG::data::_shared_table_bytes, (a1 & 0xFFFFFE00));
  result = 0;
  if ((v6 & 0x100000000) != 0)
  {
    v8 = HIDWORD(v3);
    if (HIDWORD(v3) == v6)
    {
      if ((a2 & 4) == 0)
      {
        v9 = AG::Graph::_current_update_key;
        v10 = *(_ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3)) + 8 * v9);
        if ((v10 & 1) == 0)
        {
          v11 = (v10 & 0xFFFFFFFFFFFFFFFELL);
          if (v11)
          {
            v42 = 0;
            v12 = *v11;
            v13 = v11 + 4;
            v15 = v11[12];
            v14 = v11[13];
            if (v15)
            {
              v13 = v15;
            }

            v16 = LODWORD(v13[v14 - 1]);
            v43 = v3;
            v17 = a2 & 0xB;
            v18 = &v16[AG::data::_shared_table_bytes];
            v19 = *&v16[AG::data::_shared_table_bytes + 12];
            if (v19 > 0x11F)
            {
              v25 = v12;
              v39 = v16;
              v36 = &v16[AG::data::_shared_table_bytes];
              v26 = AG::Graph::index_of_input_slow(v12, &v16[AG::data::_shared_table_bytes], v3 | (v17 << 40) | 0xF00000000);
              v18 = v36;
              v8 = HIDWORD(v3);
              v16 = v39;
              v20 = v26;
              v12 = v25;
            }

            else
            {
              if (v19 < 0x20)
              {
LABEL_15:
                v20 = -1;
                return AG::Graph::input_value_ref_slow(v12, v16, v3, v8, a2, a3, &v42, v20);
              }

              v20 = 0;
              v21 = v19 >> 5;
              v22 = (*(v18 + 4) + AG::data::_shared_table_bytes + 4);
              while (*(v22 - 1) != v3 || (*v22 & 0xF) != v17)
              {
                ++v20;
                v22 += 5;
                if (v21 == v20)
                {
                  goto LABEL_15;
                }
              }
            }

            if ((v20 & 0x8000000000000000) == 0)
            {
              v27 = *(v18 + 4);
              v28 = AG::data::_shared_table_bytes;
              if ((v3 & 3) != 0)
              {
                v37 = v12;
                v38 = v8;
                v40 = v16;
                v3 = v20;
                v35 = AG::data::_shared_table_bytes;
                v33 = AG::AttributeID::resolve_slow(&v43, 3);
                v20 = v3;
                LODWORD(v3) = v33;
                v28 = v35;
                v12 = v37;
                v29 = v34;
                LODWORD(v8) = v38;
                v16 = v40;
              }

              else
              {
                v29 = 0;
              }

              v30 = AG::data::_shared_table_bytes;
              v31 = AG::data::_shared_table_bytes + v3;
              if ((*v31 & 0x11) == 0x10)
              {
                *(v28 + v27 + 5 * v20 + 4) |= 0x20u;
                v32 = (v30 + *(v31 + 8));
                if ((*(v31 + 7) & 2) != 0)
                {
                  v32 = *v32;
                }

                return v32 + v29;
              }

              LODWORD(v3) = v43;
            }

            return AG::Graph::input_value_ref_slow(v12, v16, v3, v8, a2, a3, &v42, v20);
          }
        }
      }

      if (dword_1ED56D738 <= (v3 & 0xFFFFFFFC))
      {
        AG::precondition_failure("invalid data offset: %u", 0, v3 & 0xFFFFFFFC);
      }

      v23 = *(AG::data::_shared_table_bytes + (v3 & 0xFFFFFE00));
      if (!v23)
      {
        AG::precondition_failure("no graph: %u", 0, v3);
      }

      v24 = *(v23 + 40);
      v41 = 0;
      return AG::Graph::value_ref(v24, v3, SHIDWORD(v3), a3, &v41);
    }
  }

  return result;
}

void AG::Graph::call_update(AG::Graph *this)
{
  v11 = *MEMORY[0x1E69E9840];
  v8 = 0;
  v9 = 0;
  v10 = 16;
  if (*(this + 361) == 1)
  {
    do
    {
      *(this + 361) = 0;
      v6 = v7;
      util::UntypedTable::for_each(this + 104, util::Table<unsigned long,AG::Graph::Context *>::for_each<AG::Graph::call_update(void)::$_0>(AG::Graph::call_update(void)::$_0 const&)const::{lambda(void const*,void const*,void const*)#1}::__invoke, &v6);
      if (v9)
      {
        if (v8)
        {
          v2 = v8;
        }

        else
        {
          v2 = v7;
        }

        v3 = 8 * v9;
        do
        {
          if (*v2)
          {
            v4 = util::UntypedTable::lookup((this + 104), *v2, 0);
            if (v4)
            {
              AG::Graph::Context::call_update(v4);
            }
          }

          ++v2;
          v3 -= 8;
        }

        while (v3);
        v9 = 0;
      }
    }

    while ((*(this + 361) & 1) != 0);
    if (v8)
    {
      free(v8);
    }
  }

  v5 = *MEMORY[0x1E69E9840];
}

void sub_1B491A49C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, void *a27)
{
  if (a27)
  {
    free(a27);
  }

  _Unwind_Resume(exception_object);
}

void AG::Graph::mark_changed(uint64_t a1)
{
  v2 = MEMORY[0x1EEE9AC00](a1);
  v5 = v4;
  v33 = v6;
  v34 = v7;
  v32 = v8;
  v9 = v3;
  v10 = v2;
  v39 = *MEMORY[0x1E69E9840];
  v37 = 0u;
  v38 = 256;
  if ((v3 & 3) != 0)
  {
    if ((v3 & 3) != 1)
    {
      goto LABEL_40;
    }

    v11 = 4294967292;
  }

  else
  {
    v11 = 0xFFFFFFFFLL;
  }

  v12 = AG::data::_shared_table_bytes + *(AG::data::_shared_table_bytes + (v11 & v3) + 24);
  v13 = *(AG::data::_shared_table_bytes + (v11 & v3) + 20) >> 5;
  while (1)
  {
    while (v5 < v13)
    {
      v14 = *(v12 + 4 * v5);
      if ((v14 & 3) != 0)
      {
        if ((*(v12 + 4 * v5) & 3) == 1)
        {
          v15 = (AG::data::_shared_table_bytes + (v14 & 0xFFFFFFFC));
          if (v15[4] != v9)
          {
            v16 = AG::data::_shared_table_bytes + v15[6];
            v17 = v15[5] >> 5;
            if (v5 == v13 - 1)
            {
              v5 = 0;
              v12 = AG::data::_shared_table_bytes + v15[6];
              v13 = v15[5] >> 5;
              v9 = v14;
              continue;
            }

            v18 = *(&v37 + 1);
            if (v38 < *(&v37 + 1) + 1)
            {
              AG::vector<std::pair<AG::ConstOutputEdgeArrayRef,AG::AttributeID>,256ul,unsigned long>::reserve_slow(__dst, *(&v37 + 1) + 1);
              v18 = *(&v37 + 1);
            }

            v19 = v37;
            if (!v37)
            {
              v19 = __dst;
            }

            v20 = &v19[24 * v18];
            *v20 = v16;
            *(v20 + 1) = v17;
            *(v20 + 4) = v14;
            ++*(&v37 + 1);
          }
        }
      }

      else
      {
        v21 = *(AG::data::_shared_table_bytes + v14 + 12);
        if (v21 >= 0x20)
        {
          v22 = 0;
          v23 = v21 >> 5;
          v24 = (AG::data::_shared_table_bytes + *(AG::data::_shared_table_bytes + v14 + 16) + 4);
          while (1)
          {
            v25 = *(v24 - 1);
            v35 = v25;
            if ((v25 & 3) != 0)
            {
              v25 = AG::AttributeID::resolve_slow(&v35, 4u);
            }

            if (v25 == v9 && (*v24 & 0x10) == 0)
            {
              if ((*(v24 - 4) & 3) == 0)
              {
                break;
              }

              v1 = v1 & 0xFFFFFF0000000000 | *(v24 - 1) | (*v24 << 32);
              if ((AG::Graph::compare_edge_values(v10, v1, v32, v33, v34) & 1) == 0)
              {
                break;
              }
            }

            ++v22;
            v24 += 5;
            if (v23 == v22)
            {
              goto LABEL_28;
            }
          }

          v26 = *(v10 + 176);
          if (v26)
          {
            for (i = 8 * v26 - 8; i != -8; i -= 8)
            {
              v28 = *(*(v10 + 168) + i);
              (*(*v28 + 248))(v28, v14, v22, 1);
            }
          }

          *v24 |= 0x10u;
        }
      }

LABEL_28:
      ++v5;
    }

    if (!*(&v37 + 1))
    {
      break;
    }

    v5 = 0;
    v29 = v37;
    if (!v37)
    {
      v29 = __dst;
    }

    v30 = &v29[24 * *(&v37 + 1)];
    v12 = *(v30 - 3);
    v13 = *(v30 - 2);
    v9 = *(v30 - 2);
    --*(&v37 + 1);
  }

  ++*(v10 + 416);
  if (v37)
  {
    free(v37);
  }

LABEL_40:
  v31 = *MEMORY[0x1E69E9840];
}

void sub_1B491A7E4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, char a14)
{
  if (STACK[0x1828])
  {
    free(STACK[0x1828]);
  }

  _Unwind_Resume(exception_object);
}

uint64_t AGGraphAnyInputsChanged(_DWORD *a1, const char *a2)
{
  v3 = AG::Graph::_current_update_key;
  v4 = *(_ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3)) + 8 * v3);
  if ((v4 & 1) != 0 || (v5 = (v4 & 0xFFFFFFFFFFFFFFFELL)) == 0)
  {
    AGGraphRegisterDependency_cold_1(a1, a2);
  }

  v8 = *v5;
  v9 = v5 + 4;
  v11 = v5[12];
  v10 = v5[13];
  if (v11)
  {
    v9 = v11;
  }

  v12 = v9[v10 - 1];

  return AG::Graph::any_inputs_changed(v8, v12, a1, a2);
}

uint64_t AG::Graph::any_inputs_changed(uint64_t a1, unsigned int a2, _DWORD *a3, uint64_t a4)
{
  v4 = AG::data::_shared_table_bytes + a2;
  v5 = *(v4 + 12);
  if (v5 < 0x20)
  {
    return 0;
  }

  v6 = AG::data::_shared_table_bytes + *(v4 + 16);
  v7 = v6 + 5 * (v5 >> 5);
  while (1)
  {
    v8 = *(v6 + 4);
    *(v6 + 4) = v8 | 0x20;
    if ((v8 & 0x10) != 0)
    {
      i = a3;
      if (a4)
      {
        v10 = 4 * a4;
        for (i = a3; *i != *v6; ++i)
        {
          v10 -= 4;
          if (!v10)
          {
            return 1;
          }
        }
      }

      if (i == &a3[a4])
      {
        break;
      }
    }

    v6 += 5;
    if (v6 == v7)
    {
      return 0;
    }
  }

  return 1;
}

void AG::Graph::remove_input_dependencies(uint64_t a1, const char *a2, uint64_t a3)
{
  v3 = a2;
  v11 = a3;
  v5 = a3;
  if ((a3 & 3) != 0)
  {
    v5 = AG::AttributeID::resolve_slow(&v11, 4u);
  }

  if (v5 >= 4 && *(*(AG::data::_shared_table_bytes + (v5 & 0xFFFFFE00)) + 40) != a1)
  {
    AG::Graph::add_input_dependencies(v5, a2);
  }

  if ((v5 & 3) == 1)
  {
    v6 = AG::data::_shared_table_bytes + (v5 & 0xFFFFFFFC);
    v7 = *(v6 + 20);
    if (v7 >= 0x20)
    {
      v8 = v7 >> 5;
      v9 = v8;
      v10 = (AG::data::_shared_table_bytes + *(v6 + 24));
      while (*v10 != v3)
      {
        ++v10;
        if (!--v9)
        {
          goto LABEL_14;
        }
      }

      *v10 = *(AG::data::_shared_table_bytes + *(v6 + 24) + 4 * v8 - 4);
      *(v6 + 20) -= 32;
    }
  }

  else if ((v5 & 3) == 0)
  {
    AG::Graph::remove_output_edge<AG::Node>(a1, v5, v3);
  }

LABEL_14:
  AG::Graph::update_main_refs(a1, v3);
}

void AG::Graph::remove_input(uint64_t a1, unsigned int a2, uint64_t a3)
{
  v6 = AG::data::_shared_table_bytes + a2;
  AG::Graph::remove_input_dependencies(a1, a2, *(AG::data::_shared_table_bytes + *(v6 + 16) + 5 * a3));

  AG::Graph::remove_input_edge(a1, a2, v6, a3);
}

void AGSubgraphApply(uint64_t a1, int a2, void (*a3)(void))
{
  v3 = *(a1 + 16);
  if (v3)
  {
    AG::Subgraph::apply(v3, a2, a3);
  }
}

void *AG::Graph::remove_output_edge<AG::Node>(uint64_t a1, unsigned int a2, int a3)
{
  v3 = AG::data::_shared_table_bytes;
  v4 = AG::data::_shared_table_bytes + a2;
  v5 = *(v4 + 20);
  if (v5 < 0x20)
  {
    goto LABEL_8;
  }

  v6 = v5 >> 5;
  v7 = (AG::data::_shared_table_bytes + *(v4 + 24));
  while (*v7 != a3)
  {
    ++v7;
    if (!--v6)
    {
      goto LABEL_7;
    }
  }

  *v7 = *(AG::data::_shared_table_bytes + *(v4 + 24) + 4 * (v5 >> 5) - 4);
  LODWORD(v5) = *(v4 + 20) - 32;
  *(v4 + 20) = v5;
LABEL_7:
  if (v5 <= 0x1F)
  {
LABEL_8:
    if ((*(v4 + 7) & 0x10) != 0)
    {
      return AG::Subgraph::cache_insert(*(v3 + (a2 & 0xFFFFFE00)), a2);
    }
  }

  return result;
}

void AG::Subgraph::apply(uint64_t a1, int a2, void (*a3)(void))
{
  v34 = *MEMORY[0x1E69E9840];
  if (!*(a1 + 104))
  {
    v5 = a2;
    if ((a2 & (*(a1 + 100) | (*(a1 + 100) >> 8))) != 0)
    {
      v28 = *(a1 + 40);
      v29 = *(v28 + 360);
      v7 = 1;
      *(v28 + 360) = 1;
      v8 = atomic_fetch_add(AG::Subgraph::_last_traversal_seed, 1u) + 1;
      v32 = 0;
      v33 = 32;
      v31 = 0;
      __dst[0] = a1;
      *(a1 + 84) = v8;
      do
      {
        while (1)
        {
          v9 = v31;
          if (!v31)
          {
            v9 = __dst;
          }

          v10 = v9[--v7];
          v32 = v7;
          if (!*(v10 + 104))
          {
            break;
          }

          if (!v7)
          {
            goto LABEL_40;
          }
        }

        if ((a2 & 0x1000000) != 0 || *(v10 + 48) == *(a1 + 48))
        {
          if (!a2 || (v5 & *(v10 + 100)) != 0)
          {
            v11 = *(v10 + 16);
            if (v11)
            {
              v12 = AG::data::_shared_table_bytes;
              do
              {
                v13 = v11;
                v14 = v12 + v11;
                v15 = *(v14 + 20);
                if (*(v14 + 20))
                {
                  do
                  {
                    v16 = v15 + v13;
                    v17 = (v15 + v13) & 3;
                    if (v17 > 1)
                    {
                      if (v17 != 3)
                      {
                        break;
                      }
                    }

                    else if (v17)
                    {
                      v15 = *(AG::data::_shared_table_bytes + (v16 & 0xFFFFFFFC) + 14);
                      if (a2)
                      {
                        break;
                      }
                    }

                    else
                    {
                      v18 = AG::data::_shared_table_bytes + v16;
                      v15 = *(v18 + 4);
                      if (!a2)
                      {
                        goto LABEL_22;
                      }

                      v19 = *(v18 + 6);
                      if (!v19)
                      {
                        break;
                      }

                      if ((v19 & a2) != 0)
                      {
LABEL_22:
                        a3();
                      }
                    }
                  }

                  while (v15);
                  v12 = AG::data::_shared_table_bytes;
                }

                v11 = *(v12 + v13 + 8);
              }

              while (v11);
            }
          }

          v20 = *(v10 + 72);
          if (v20)
          {
            v21 = *(v10 + 64);
            v22 = 8 * v20;
            do
            {
              v23 = *v21 & 0xFFFFFFFFFFFFFFFCLL;
              if ((v5 & (*(v23 + 100) | (*(v23 + 100) >> 8))) != 0 && *(v23 + 84) != v8)
              {
                v24 = v32;
                v25 = v32 + 1;
                if (v33 < v32 + 1)
                {
                  AG::vector<AG::Subgraph const*,32ul,unsigned long>::reserve_slow(__dst, v25);
                  v24 = v32;
                  v25 = v32 + 1;
                }

                v26 = v31;
                if (!v31)
                {
                  v26 = __dst;
                }

                v26[v24] = v23;
                v32 = v25;
                *(v23 + 84) = v8;
              }

              ++v21;
              v22 -= 8;
            }

            while (v22);
          }
        }

        v7 = v32;
      }

      while (v32);
LABEL_40:
      if (v31)
      {
        free(v31);
      }

      if (v28 && (v29 & 1) == 0)
      {
        *(v28 + 360) = 0;
        AG::Graph::invalidate_subgraphs(v28);
      }
    }
  }

  v3 = *MEMORY[0x1E69E9840];
}

void sub_1B491ADC0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, AG::Graph *a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, void *a44)
{
  if (a44)
  {
    free(a44);
  }

  AG::Graph::without_invalidating::~without_invalidating(&a10);
  _Unwind_Resume(a1);
}

void AG::Subgraph::invalidate_and_delete_(AG::Subgraph *this, int a2)
{
  if (a2)
  {
    *(this + 6) |= 0x80000000;
  }

  if (*(this + 104) - 1 >= 3)
  {
    v3 = *(this + 7);
    if (v3)
    {
      v6 = v3 & 0xFFFFFFFFFFFFFFFELL;
      if (*(v6 + 32))
      {
        v5 = *(v6 + 32);
      }

      else
      {
        v5 = v6;
      }

      v4 = &v5[*(v6 + 40)];
    }

    else
    {
      v4 = (this + 8 * (v3 != 0) + 56);
      v5 = (this + 56);
    }

    while (v5 != v4)
    {
      v7 = *v5++;
      AG::Subgraph::remove_child(v7, this, 1);
    }

    AG::indirect_pointer_vector<AG::Subgraph,unsigned long>::clear(this + 7);
    v8 = *(this + 5);
    if ((*(v8 + 360) & 1) != 0 || *(v8 + 184))
    {
      v9 = *(this + 104);
      if (v9 != 1)
      {
        v10 = v8 + 328;
        v11 = *(v8 + 352);
        v12 = v11 + 1;
        if (*(v8 + 356) < v11 + 1)
        {
          AG::vector<AG::Subgraph *,2ul,unsigned int>::reserve_slow((v8 + 328), v12);
          v10 = v8 + 328;
          v11 = *(v8 + 352);
          v9 = *(this + 104);
          v12 = v11 + 1;
        }

        if (*(v8 + 344))
        {
          v10 = *(v8 + 344);
        }

        *(v10 + 8 * v11) = this;
        *(v8 + 352) = v12;
        *(this + 104) = 1;
        if (!v9)
        {
          if (*(v8 + 176))
          {
            AG::Subgraph::graph_destroyed();
          }
        }
      }
    }

    else
    {
      AG::Subgraph::invalidate_now(this, *(this + 5));

      AG::Graph::invalidate_subgraphs(v8);
    }
  }
}

void AG::Graph::remove_input_edge(uint64_t a1, unsigned int a2, uint64_t a3, uint64_t a4)
{
  if (*(a1 + 176))
  {
    AG::Graph::remove_input_edge();
  }

  v8 = *(a3 + 12);
  if (a4 + 1 < v8 >> 5)
  {
    v9 = AG::data::_shared_table_bytes + 5 * a4 + *(a3 + 16);
    v10 = ~a4 + (v8 >> 5);
    v11 = v9;
    do
    {
      v12 = *(v11 + 5);
      v11 += 5;
      *v9 = v12;
      *(v9 + 4) = *(v9 + 9);
      v9 = v11;
      --v10;
    }

    while (v10);
    LODWORD(v8) = *(a3 + 12);
  }

  v13 = v8 - 32;
  *(a3 + 12) = v13;
  if (v13 < 0x20)
  {
    AG::Graph::all_inputs_removed(a1, a2);
  }

  if ((*a3 & 0xC0) != 0)
  {

    AG::Graph::reset_update(a1, a2);
  }
}

void util::UntypedTable::grow_buckets(util::UntypedTable *this)
{
  v1 = *(this + 14);
  if (v1 <= 0x1E)
  {
    v3 = *(this + 4);
    *(this + 14) = v1 + 1;
    v4 = malloc_type_calloc(1 << (v1 + 1), 8uLL, 0x2004093837F09uLL);
    v5 = *(this + 14);
    if (v4)
    {
      v6 = 0;
      v7 = ~(-1 << v5);
      *(this + 6) = v7;
      do
      {
        v8 = v3[v6];
        if (v8)
        {
          do
          {
            v9 = *v8;
            v10 = v8[3] & v7;
            *v8 = v4[v10];
            v4[v10] = v8;
            v8 = v9;
          }

          while (v9);
        }

        ++v6;
      }

      while (!(v6 >> v1));
      *(this + 4) = v4;

      free(v3);
    }

    else
    {
      *(this + 14) = v5 - 1;
    }
  }
}

void AGSubgraphInvalidate(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    AG::Subgraph::invalidate_and_delete_(v1, 0);
  }
}

uint64_t AG::Graph::UpdateStack::push_slow(uint64_t *a1, const char *a2, unsigned int *a3, char a4, int a5)
{
  v9 = *a3;
  v10 = *a3 >> 6;
  if (*a3 >> 6)
  {
    if (a4)
    {
      return 0;
    }

    if (a1)
    {
      v11 = a1;
      while (1)
      {
        v12 = (v11 & 0xFFFFFFFFFFFFFFFELL);
        v13 = v12[13];
        if (v13)
        {
          break;
        }

        v11 = v12[2];
        if (!v11)
        {
          goto LABEL_13;
        }
      }

      v14 = v12 + 4;
      v15 = v12[12];
      if (!v15)
      {
        v15 = v14;
      }

      v16 = &v15[v13];
      if (v16 != 8 && (*(v16 - 4) & 2) == 0)
      {
        AG::Graph::print_cycle(*a1, a2);
        v9 = *a3;
      }
    }

LABEL_13:
    if ((v9 & 0x10) != 0)
    {
      return 0;
    }

    v17 = *(*(*a1 + 88) + 8 * (v9 >> 8));
    v18 = *(*(v17 + 32) + 40);
    if (v18)
    {
      if (*(a3 + 7))
      {
        v28 = *(a3 + *(v17 + 44));
      }

      v19 = a1 + 4;
      v20 = a1[13];
      if (a1[14] < (v20 + 1))
      {
        AG::vector<AG::swift::metadata const*,8ul,unsigned long>::reserve_slow(a1 + 4, v20 + 1);
        v19 = a1 + 4;
        v20 = a1[13];
      }

      if (a1[12])
      {
        v19 = a1[12];
      }

      v21 = &v19[v20];
      *v21 = a2;
      *(v21 + 1) = 0;
      if ((*a3 & 2) != 0 || (*a3 & 0x10) == 0 && a5)
      {
        *(v21 + 1) = 1;
      }

      a1[13] = v20 + 1;
      v18();
      --a1[13];
      v9 = *a3;
      if ((*a3 & 0x10) != 0)
      {
        return 0;
      }
    }

    if (v10 == 3)
    {
      AG::precondition_failure("cyclic graph: %u", a2, a2);
    }
  }

  *a3 = v9 + 64;
  v22 = a1[13];
  if (a1[14] < (v22 + 1))
  {
    AG::vector<AG::swift::metadata const*,8ul,unsigned long>::reserve_slow(a1 + 4, v22 + 1);
    v22 = a1[13];
  }

  v23 = a1[12];
  if (!v23)
  {
    v23 = a1 + 4;
  }

  v24 = &v23[v22];
  *v24 = a2;
  *(v24 + 1) = 0;
  if ((*a3 & 2) != 0 || (v25 = 2, (*a3 & 0x10) == 0) && a5)
  {
    *(v24 + 1) = 1;
    v25 = 3;
  }

  v26 = v22 + 1;
  a1[13] = v26;
  if (v10)
  {
    HIDWORD(v23[v26 - 1]) = v25;
  }

  return 1;
}

void *AG::details::realloc_vector<unsigned long,8ul>(void *__src, void *__dst, size_t a3, size_t *a4, size_t a5)
{
  v7 = __src;
  if (a5 <= a3)
  {
    if (__src)
    {
      v9 = a3;
      memcpy(__dst, __src, 8 * a5);
      free(v7);
      v12 = 0;
LABEL_8:
      *a4 = v9;
      return v12;
    }
  }

  else
  {
    v8 = malloc_good_size(8 * a5);
    v9 = v8 >> 3;
    if (v8 >> 3 != *a4)
    {
      v10 = malloc_type_realloc(v7, v8, 0xC199B67EuLL);
      if (!v10)
      {
        AG::precondition_failure("allocation failure", v11);
      }

      v12 = v10;
      if (!v7)
      {
        memcpy(v10, __dst, 8 * *a4);
      }

      goto LABEL_8;
    }
  }

  return v7;
}

void *AG::indirect_pointer_vector<AG::Subgraph,unsigned long>::clear(void *result)
{
  v1 = result;
  v2 = *result;
  if (*result)
  {
    v3 = v2 & 0xFFFFFFFFFFFFFFFELL;
    if ((v2 & 0xFFFFFFFFFFFFFFFELL) != 0)
    {
      v4 = *(v3 + 32);
      if (v4)
      {
        free(v4);
      }

      result = MEMORY[0x1B8C7ACE0](v3, 0x1080C4034992649);
    }
  }

  *v1 = 0;
  return result;
}

void AG::Subgraph::invalidate_now(AG::Subgraph *this, AG::Graph *a2)
{
  v81 = *MEMORY[0x1E69E9840];
  *(a2 + 360) = 1;
  v78 = 0;
  v79 = 0;
  v80 = 16;
  v74 = 0;
  v75 = 0;
  v76 = 16;
  v3 = *(this + 104);
  if (v3 != 2)
  {
    *(this + 104) = 2;
    if (!v3)
    {
      v5 = *(a2 + 44);
      if (v5)
      {
        v72 = 8 * v5 - 8;
        do
        {
          (*(**(*(a2 + 21) + v72) + 192))(*(*(a2 + 21) + v72), this);
          v72 -= 8;
        }

        while (v72 != -8);
      }
    }

    AG::Subgraph::clear_object(this);
    v6 = v75;
    v7 = v75 + 1;
    if (v76 < v75 + 1)
    {
      AG::vector<unsigned long,16ul,unsigned long>::reserve_slow(v73, v7);
      v6 = v75;
      v7 = v75 + 1;
    }

    v8 = v74;
    if (!v74)
    {
      v8 = v73;
    }

    *&v8[8 * v6] = this;
    v75 = v7;
    if (v7)
    {
      while (1)
      {
        v9 = v74;
        if (!v74)
        {
          v9 = v73;
        }

        v10 = *&v9[8 * v7 - 8];
        v75 = v7 - 1;
        v11 = *(a2 + 44);
        if (v11)
        {
          for (i = 8 * v11 - 8; i != -8; i -= 8)
          {
            v48 = *(*(a2 + 21) + i);
            (*(*v48 + 200))(v48, v10);
          }
        }

        AG::Subgraph::notify_observers(v10);
        AG::Graph::remove_subgraph(a2, v10);
        *(v10 + 24) |= 0x80000000;
        v12 = v79;
        v13 = v79 + 1;
        if (v80 < v79 + 1)
        {
          AG::vector<unsigned long,16ul,unsigned long>::reserve_slow(__dst, v13);
          v12 = v79;
          v13 = v79 + 1;
        }

        v14 = v78;
        if (!v78)
        {
          v14 = __dst;
        }

        *&v14[8 * v12] = v10;
        v79 = v13;
        v15 = *(v10 + 72);
        if (v15)
        {
          break;
        }

LABEL_63:
        *(v10 + 72) = 0;
        v7 = v75;
        if (!v75)
        {
          goto LABEL_68;
        }
      }

      v16 = *(v10 + 64);
      v17 = &v16[v15];
      while (1)
      {
        v18 = *v16 & 0xFFFFFFFFFFFFFFFCLL;
        v19 = (v18 + 56);
        v20 = *(v18 + 56);
        if (*(v18 + 48) == *(this + 6))
        {
          if (v20)
          {
            v28 = v20 & 0xFFFFFFFFFFFFFFFELL;
            v22 = *(v28 + 32);
            if (!v22)
            {
              v22 = v28;
            }

            v21 = &v22[*(v28 + 40)];
          }

          else
          {
            v21 = &v19[v20 != 0];
            v22 = (v18 + 56);
          }

          while (v22 != v21)
          {
            v29 = *v22;
            if (*v22 != v10)
            {
              v30 = *(v29 + 72);
              if (v30)
              {
                v31 = 8 * v30;
                v32 = *(v29 + 64);
                while ((*v32 & 0xFFFFFFFFFFFFFFFCLL) != v18)
                {
                  ++v32;
                  v31 -= 8;
                  if (!v31)
                  {
                    goto LABEL_43;
                  }
                }

                v33 = v30 - 1;
                *v32 = *(*(v29 + 64) + 8 * v33);
                *(v29 + 72) = v33;
              }
            }

LABEL_43:
            ++v22;
          }

          AG::indirect_pointer_vector<AG::Subgraph,unsigned long>::clear(v19);
          v34 = *(v18 + 104);
          if (v34 != 2)
          {
            *(v18 + 104) = 2;
            if (!v34)
            {
              v35 = *(a2 + 44);
              if (v35)
              {
                v46 = 8 * v35 - 8;
                do
                {
                  (*(**(*(a2 + 21) + v46) + 192))(*(*(a2 + 21) + v46), v18);
                  v46 -= 8;
                }

                while (v46 != -8);
              }
            }

            AG::Subgraph::clear_object(v18);
            v36 = v75;
            v37 = v75 + 1;
            if (v76 < v75 + 1)
            {
              AG::vector<unsigned long,16ul,unsigned long>::reserve_slow(v73, v37);
              v36 = v75;
              v37 = v75 + 1;
            }

            v38 = v74;
            if (!v74)
            {
              v38 = v73;
            }

            *&v38[8 * v36] = v18;
            v75 = v37;
          }

          goto LABEL_58;
        }

        v23 = 0;
        v24 = 0;
        v25 = v20 & 0xFFFFFFFFFFFFFFFELL;
        if (v20)
        {
          break;
        }

LABEL_22:
        if (!v24 && v20)
        {
          if (v10 != v20)
          {
            goto LABEL_31;
          }

          v39 = *(v18 + 56);
          v40 = (v18 + 56);
          v41 = (v18 + 56);
          goto LABEL_54;
        }

LABEL_58:
        if (++v16 == v17)
        {
          goto LABEL_63;
        }
      }

      while (1)
      {
        v26 = *(v25 + 40);
        if (v24 >= v26)
        {
          goto LABEL_58;
        }

        v27 = *(v25 + 32) ? *(v25 + 32) : v20 & 0xFFFFFFFFFFFFFFFELL;
        v39 = *(v27 + 8 * v24);
        if (v39 == v10)
        {
          break;
        }

LABEL_31:
        ++v24;
        v23 -= 8;
        if ((v20 & 1) == 0)
        {
          goto LABEL_22;
        }
      }

      v40 = (v27 - v23);
      v42 = v27 + 8 * v26;
      v43 = *(v42 - 8);
      v41 = (v42 - 8);
      v20 = v43;
LABEL_54:
      *v40 = v20;
      *v41 = v39;
      v44 = *v19;
      if (*v19)
      {
        v45 = *((v44 & 0xFFFFFFFFFFFFFFFELL) + 40);
      }

      else
      {
        v45 = v44 != 0;
      }

      AG::indirect_pointer_vector<AG::Subgraph,unsigned long>::resize(v19, v45 - 1);
      goto LABEL_58;
    }
  }

LABEL_68:
  if (v78)
  {
    v49 = v78;
  }

  else
  {
    v49 = __dst;
  }

  if (!v79)
  {
    goto LABEL_120;
  }

  v50 = &v49[8 * v79];
  do
  {
    v51 = *(*v49 + 16);
    if (v51)
    {
      v52 = AG::data::_shared_table_bytes;
      do
      {
        v53 = v51;
        v54 = v52 + v51;
        v55 = *(v54 + 20);
        if (*(v54 + 20))
        {
          do
          {
            v56 = (v55 + v53);
            if (((v55 + v53) & 3u) > 1)
            {
              if (((v55 + v53) & 3) != 3)
              {
                v58 = 1;
                goto LABEL_85;
              }
            }

            else if (((v55 + v53) & 3) != 0)
            {
              v57 = v56 & 0xFFFFFFFC;
              v55 = *(AG::data::_shared_table_bytes + v57 + 14);
              AG::Graph::remove_indirect_node(a2, v57);
            }

            else
            {
              v55 = *(AG::data::_shared_table_bytes + v56 + 4);
              AG::Graph::remove_node(a2, v56);
            }
          }

          while (v55);
          v58 = 0;
LABEL_85:
          v52 = AG::data::_shared_table_bytes;
          if (v58)
          {
            break;
          }
        }

        v51 = *(v52 + v53 + 8);
      }

      while (v51);
    }

    v49 += 8;
  }

  while (v49 != v50);
  if (v78)
  {
    v59 = v78;
  }

  else
  {
    v59 = __dst;
  }

  if (!v79)
  {
    goto LABEL_120;
  }

  v60 = &v59[8 * v79];
  do
  {
    v61 = *(*v59 + 16);
    if (!v61)
    {
      goto LABEL_111;
    }

    v62 = AG::data::_shared_table_bytes;
    while (2)
    {
      v63 = v61;
      v64 = v62 + v61;
      v65 = *(v64 + 20);
      if (!*(v64 + 20))
      {
        goto LABEL_110;
      }

      do
      {
        while (1)
        {
          v66 = (v65 + v63);
          if (((v65 + v63) & 3u) > 1)
          {
            if (((v65 + v63) & 3) != 3)
            {
              v68 = 1;
              goto LABEL_109;
            }

            goto LABEL_103;
          }

          if (((v65 + v63) & 3) != 0)
          {
            break;
          }

          v67 = AG::data::_shared_table_bytes + v66;
          v65 = *(v67 + 4);
          if ((v66 & 3) == 0)
          {
            AG::Node::destroy(v67, a2);
            goto LABEL_106;
          }

LABEL_103:
          if (!v65)
          {
            goto LABEL_107;
          }
        }

        v65 = *(AG::data::_shared_table_bytes + (v66 & 0xFFFFFFFC) + 14);
        if ((v66 & 3) != 0)
        {
          goto LABEL_103;
        }

        AG::Node::destroy((AG::data::_shared_table_bytes + v66), a2);
LABEL_106:
        --*(a2 + 25);
      }

      while (v65);
LABEL_107:
      v68 = 0;
LABEL_109:
      v62 = AG::data::_shared_table_bytes;
      if ((v68 & 1) == 0)
      {
LABEL_110:
        v61 = *(v62 + v63 + 8);
        if (!v61)
        {
          break;
        }

        continue;
      }

      break;
    }

LABEL_111:
    v59 += 8;
  }

  while (v59 != v60);
  if (v78)
  {
    v69 = v78;
  }

  else
  {
    v69 = __dst;
  }

  if (v79)
  {
    v70 = 8 * v79;
    do
    {
      if (*v69)
      {
        AG::Subgraph::~Subgraph(*v69);
        MEMORY[0x1B8C7ACE0]();
      }

      ++v69;
      v70 -= 8;
    }

    while (v70);
  }

LABEL_120:
  *(a2 + 360) = 0;
  if (v74)
  {
    free(v74);
  }

  if (v78)
  {
    free(v78);
  }

  v71 = *MEMORY[0x1E69E9840];
}

void sub_1B491BAC4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, void *a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, void *a44)
{
  if (a25)
  {
    free(a25);
  }

  if (a44)
  {
    free(a44);
  }

  _Unwind_Resume(exception_object);
}

void *AG::vector<AG::swift::metadata const*,8ul,unsigned long>::reserve_slow(void *__dst, size_t a2)
{
  if (*(__dst + 10) + (*(__dst + 10) >> 1) <= a2)
  {
    v3 = a2;
  }

  else
  {
    v3 = *(__dst + 10) + (*(__dst + 10) >> 1);
  }

  result = AG::details::realloc_vector<unsigned long,8ul>(*(__dst + 8), __dst, 8uLL, __dst + 10, v3);
  *(__dst + 8) = result;
  return result;
}

void AG::Subgraph::clear_object(AG::Subgraph *this)
{
  v2 = *(this + 4);
  if (v2)
  {
    v2[2] = 0;
    *(this + 4) = 0;
    v3 = AG::Subgraph::_current_subgraph_key;
    StatusReg = _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
    if (*(StatusReg + 8 * v3) == this)
    {
      *(StatusReg + 8 * v3) = 0;
      CFRelease(v2);
    }
  }
}

unint64_t AG::Graph::index_of_input(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = *(a2 + 12);
  if (v3 > 0x11F)
  {
    return AG::Graph::index_of_input_slow(a1, a2, a3);
  }

  if (v3 < 0x20)
  {
    return -1;
  }

  result = 0;
  v5 = v3 >> 5;
  for (i = (*(a2 + 16) + AG::data::_shared_table_bytes + 4); *(i - 1) != a3 || (*i & BYTE4(a3)) != BYTE5(a3); i += 5)
  {
    if (v5 == ++result)
    {
      return -1;
    }
  }

  return result;
}

uint64_t *AG::Graph::remove_subgraph(AG::Graph *this, AG::Subgraph *a2)
{
  v4 = *(this + 37);
  v5 = *(this + 76);
  v6 = v4;
  if (v5)
  {
    v6 = v4;
    v7 = *(this + 76);
    do
    {
      v8 = v7 >> 1;
      v9 = &v6[v7 >> 1];
      v11 = *v9;
      v10 = (v9 + 1);
      v7 += ~(v7 >> 1);
      if (v11 < a2)
      {
        v6 = v10;
      }

      else
      {
        v7 = v8;
      }
    }

    while (v7);
  }

  if (v6 != &v4[v5] && *v6 == a2)
  {
    v15 = v6 - v4;
    v16 = (v5 - 1);
    *(this + 76) = v16;
    if (v16 != v15 >> 3)
    {
      v4 = (v4 + v15);
      v14 = v16 - (v15 >> 3);
      goto LABEL_18;
    }
  }

  else if (v5)
  {
    v12 = 0;
    while (*v4 != a2)
    {
      ++v4;
      v12 += 8;
      if (8 * v5 == v12)
      {
        goto LABEL_19;
      }
    }

    v13 = (v5 - 1);
    *(this + 76) = v13;
    if (v13 != v12 >> 3)
    {
      v14 = v13 - (v12 >> 3);
LABEL_18:
      memmove(v4, v4 + 1, 8 * v14);
    }
  }

LABEL_19:
  result = *(this + 35);
  if (result)
  {
    v23 = a2;
    result = std::__hash_table<std::__hash_value_type<AG::Subgraph *,AG::Graph::TreeDataElement>,std::__unordered_map_hasher<AG::Subgraph *,std::__hash_value_type<AG::Subgraph *,AG::Graph::TreeDataElement>,std::hash<AG::Subgraph *>,std::equal_to<AG::Subgraph *>,true>,std::__unordered_map_equal<AG::Subgraph *,std::__hash_value_type<AG::Subgraph *,AG::Graph::TreeDataElement>,std::equal_to<AG::Subgraph *>,std::hash<AG::Subgraph *>,true>,std::allocator<std::__hash_value_type<AG::Subgraph *,AG::Graph::TreeDataElement>>>::find<AG::Subgraph *>(result, &v23);
    if (result)
    {
      result = std::__hash_table<std::__hash_value_type<AG::Subgraph *,AG::Graph::TreeDataElement>,std::__unordered_map_hasher<AG::Subgraph *,std::__hash_value_type<AG::Subgraph *,AG::Graph::TreeDataElement>,std::hash<AG::Subgraph *>,std::equal_to<AG::Subgraph *>,true>,std::__unordered_map_equal<AG::Subgraph *,std::__hash_value_type<AG::Subgraph *,AG::Graph::TreeDataElement>,std::equal_to<AG::Subgraph *>,std::hash<AG::Subgraph *>,true>,std::allocator<std::__hash_value_type<AG::Subgraph *,AG::Graph::TreeDataElement>>>::erase(*(this + 35), result);
    }
  }

  if (*(a2 + 105))
  {
    *(a2 + 105) &= ~1u;
    v18 = *(this + 39);
    v19 = *(this + 80);
    v20 = v18;
    if (v19)
    {
      v21 = 8 * v19;
      v20 = *(this + 39);
      while (*v20 != a2)
      {
        ++v20;
        v21 -= 8;
        if (!v21)
        {
          v20 = &v18[v19];
          break;
        }
      }
    }

    v22 = v19 - 1;
    *v20 = v18[v22];
    *(this + 80) = v22;
  }

  --*(this + 28);
  return result;
}

uint64_t AG::Subgraph::notify_observers(uint64_t this)
{
  v1 = *(this + 80);
  if (v1)
  {
    v2 = (AG::data::_shared_table_bytes + v1);
    v3 = *(AG::data::_shared_table_bytes + v1 + 8);
    if (v3)
    {
      v4 = *v2;
      v5 = *v2 + 24 * v3;
      do
      {
        v6 = *(v4 + 8);
        (*v4)();
        v7 = *(v4 + 8);

        v4 += 24;
      }

      while (v4 != v5);
      v2[1] = 0;
    }
  }

  return this;
}

uint64_t AGTypeGetEnumTag(AG::swift::metadata *a1, uint64_t a2)
{
  v2 = *(a1 - 1);
  if ((*(v2 + 82) & 0x20) == 0)
  {
    AGTypeGetEnumTag_cold_1(a1);
  }

  return (*(v2 + 88))(a2, a1);
}

void *AG::Graph::remove_node(uint64_t a1, char *a2)
{
  v2 = AG::data::_shared_table_bytes;
  v3 = AG::data::_shared_table_bytes + a2;
  if ((*v3 & 0xC0) != 0)
  {
    AG::precondition_failure("deleting updating attribute: %u\n", a2, a2);
  }

  v5 = a2;
  v6 = *(v3 + 12);
  if (v6 >= 0x20)
  {
    v7 = (AG::data::_shared_table_bytes + *(v3 + 16));
    v8 = 5 * (v6 >> 5);
    do
    {
      v9 = *v7;
      v7 = (v7 + 5);
      AG::Graph::remove_removed_input(a1, v5, v9);
      v8 -= 5;
    }

    while (v8);
    v2 = AG::data::_shared_table_bytes;
  }

  v10 = *(v3 + 20);
  if (v10 >= 0x20)
  {
    v11 = (v2 + *(v3 + 24));
    v12 = 4 * (v10 >> 5);
    do
    {
      v13 = *v11++;
      AG::Graph::remove_removed_output(a1, v5, v13);
      v12 -= 4;
    }

    while (v12);
  }

  result = *(a1 + 256);
  if (result)
  {
    v15 = *v3 >> 8;

    return AG::Graph::ProfileData::remove_node(result, v5, v15);
  }

  return result;
}

uint64_t AGTypeProjectEnumData(AG::swift::metadata *a1, uint64_t a2)
{
  v3 = *(a1 - 1);
  if ((*(v3 + 82) & 0x20) == 0)
  {
    AGTypeGetEnumTag_cold_1(a1);
  }

  v4 = *(v3 + 96);

  return v4(a2, a1);
}

uint64_t AGTypeInjectEnumTag(AG::swift::metadata *a1, uint64_t a2, uint64_t a3)
{
  v4 = *(a1 - 1);
  if ((*(v4 + 82) & 0x20) == 0)
  {
    AGTypeGetEnumTag_cold_1(a1);
  }

  v5 = *(v4 + 104);

  return v5(a3, a2, a1);
}

uint64_t AG::Graph::remove_removed_output(uint64_t a1, int a2, unsigned int a3)
{
  if (*(*(AG::data::_shared_table_bytes + (a3 & 0xFFFFFE00)) + 104) == 2)
  {
    return 0;
  }

  if ((a3 & 3) != 1)
  {
    if ((a3 & 3) == 0)
    {
      v5 = AG::data::_shared_table_bytes + a3;
      v6 = *(v5 + 12);
      if (v6 >= 0x20)
      {
        v7 = 0;
        v9 = (AG::data::_shared_table_bytes + *(v5 + 16));
        v10 = v6 >> 5;
        while (1)
        {
          v12 = *v9;
          v9 = (v9 + 5);
          v25 = v12;
          if (AG::AttributeID::traverses(&v25, a2, 4))
          {
            break;
          }

          if (v10 == ++v7)
          {
            return 0;
          }
        }

        AG::Graph::remove_input_edge(a1, a3, v5, v7);
        return 1;
      }
    }

    return 0;
  }

  v13 = AG::data::_shared_table_bytes + (a3 & 0xFFFFFFFC);
  if (*v13 != a2)
  {
    v19 = *(v13 + 16);
    if (v19)
    {
      v20 = v19 == a2;
    }

    else
    {
      v20 = 0;
    }

    if (v20)
    {
      if (*(a1 + 176))
      {
        AG::Graph::remove_removed_output();
      }

      *(v13 + 16) = 0;
      return 1;
    }

    return 0;
  }

  if ((*(v13 + 8) & 1) != 0 && (v14 = *(v13 + 28), (v14 & 0xFFFFFFFC) != 0))
  {
    v15 = AG::data::table::raw_page_seed(&AG::data::_shared_table_bytes, (*(v13 + 28) & 0xFFFFFE00));
    v16 = 0;
    v17 = 0;
    v18 = 2;
    if ((v15 & 0x100000000) != 0 && HIDWORD(v14) == v15)
    {
      v18 = *(v13 + 28);
      v17 = *(v13 + 32);
      v16 = *(v13 + 36);
    }
  }

  else
  {
    v17 = 0;
    v16 = 0;
    v18 = 2;
  }

  v22 = v18;
  if (*(a1 + 176))
  {
    v24 = v16;
    AG::Graph::remove_removed_output();
    v16 = v24;
  }

  AG::IndirectNode::modify(v13, v22 | (v17 << 32), v16);
  if (v22 < 4)
  {
    return 1;
  }

  v23 = AG::data::table::raw_page_seed(&AG::data::_shared_table_bytes, (v22 & 0xFFFFFE00));
  result = 1;
  if ((v23 & 0x100000000) != 0 && v17 == v23)
  {
    AG::Graph::add_input_dependencies(a1, a3, v22);
    return 1;
  }

  return result;
}

uint64_t AG::Graph::remove_removed_input(uint64_t result, int a2, unsigned int a3)
{
  v4 = result;
  while (1)
  {
    if ((a3 & 3) != 1)
    {
      if ((a3 & 3) == 0 && *(*(AG::data::_shared_table_bytes + (a3 & 0xFFFFFE00)) + 104) != 2)
      {

        return AG::Graph::remove_output_edge<AG::Node>(v4, a3, a2);
      }

      return result;
    }

    v5 = AG::data::_shared_table_bytes + (a3 & 0xFFFFFFFC);
    if (*(v5 + 8))
    {
      break;
    }

    result = AG::data::table::raw_page_seed(&AG::data::_shared_table_bytes, (*v5 & 0xFFFFFE00));
    if ((result & 0x100000000) == 0 || *(v5 + 4) != (result & 0x7FFFFFFF))
    {
      return result;
    }

    a3 = *v5;
  }

  if (*(*(AG::data::_shared_table_bytes + (a3 & 0xFFFFFE00)) + 104) != 2)
  {
    v6 = *(v5 + 20);
    if (v6 >= 0x20)
    {
      v7 = v6 >> 5;
      v8 = v7;
      for (i = (AG::data::_shared_table_bytes + *(v5 + 24)); *i != a2; ++i)
      {
        if (!--v8)
        {
          return result;
        }
      }

      *i = *(AG::data::_shared_table_bytes + *(v5 + 24) + 4 * v7 - 4);
      *(v5 + 20) -= 32;
    }
  }

  return result;
}

void AG::Graph::remove_indirect_node(uint64_t a1, unsigned int a2)
{
  v34 = *MEMORY[0x1E69E9840];
  v4 = AG::data::_shared_table_bytes + a2;
  v5 = *v4;
  if (*(v4 + 8))
  {
    v10 = a2 & 0xFFFFFFFE;
    AG::Graph::remove_removed_input(a1, a2 & 0xFFFFFFFE | 1, v5);
    v11 = *(v4 + 16);
    if (v11)
    {
      AG::Graph::remove_removed_input(a1, v10 | 1, v11);
    }

    v12 = *(v4 + 20);
    if (v12 >= 0x20)
    {
      v13 = (AG::data::_shared_table_bytes + *(v4 + 24));
      v14 = 4 * (v12 >> 5);
      do
      {
        v15 = *v13++;
        AG::Graph::remove_removed_output(a1, v10 | 1, v15);
        v14 -= 4;
      }

      while (v14);
    }
  }

  else
  {
    v6 = AG::data::table::raw_page_seed(&AG::data::_shared_table_bytes, (v5 & 0xFFFFFE00));
    if ((v6 & 0x100000000) != 0 && *(v4 + 4) == (v6 & 0x7FFFFFFF))
    {
      v7 = v4;
      do
      {
        v8 = *v7;
        if (*(*(AG::data::_shared_table_bytes + (v8 & 0xFFFFFE00)) + 104) == 2)
        {
          break;
        }

        if ((*v7 & 3) != 1)
        {
          if ((v8 & 3) != 0)
          {
            break;
          }

LABEL_18:
          v19 = (AG::data::_shared_table_bytes + v8 + 20);
          v17 = *v19;
          v18 = v19[1];
          v31 = 0;
          v32 = 0;
          v33 = 8;
          if (v17 >= 0x20)
          {
            v20 = (AG::data::_shared_table_bytes + v18);
            v21 = a2 & 0xFFFFFFFE;
            v22 = 4 * (v17 >> 5);
            do
            {
              v23 = *v20;
              if (AG::Graph::remove_removed_output(a1, v21 | 1, *v20))
              {
                v24 = v32;
                v25 = v32 + 1;
                if (v33 < v32 + 1)
                {
                  AG::vector<AG::AttributeID,8ul,unsigned long>::reserve_slow(v30, v25);
                  v24 = v32;
                  v25 = v32 + 1;
                }

                v26 = v31;
                if (!v31)
                {
                  v26 = v30;
                }

                *&v26[4 * v24] = v23;
                v32 = v25;
              }

              ++v20;
              v22 -= 4;
            }

            while (v22);
            v27 = v31;
            if (v31)
            {
              v28 = v31;
            }

            else
            {
              v28 = v30;
            }

            if (v32)
            {
              v29 = 4 * v32;
              do
              {
                AG::Graph::remove_removed_input(a1, *v28++, v21 | 1);
                v29 -= 4;
              }

              while (v29);
              v27 = v31;
            }

            if (v27)
            {
              free(v27);
            }
          }

          break;
        }

        v8 = v8 & 0xFFFFFFFC;
        v7 = (AG::data::_shared_table_bytes + v8);
        if (*(AG::data::_shared_table_bytes + v8 + 8))
        {
          goto LABEL_18;
        }

        v9 = AG::data::table::raw_page_seed(&AG::data::_shared_table_bytes, (*v4 & 0xFFFFFE00));
      }

      while ((v9 & 0x100000000) != 0 && *(v4 + 4) == (v9 & 0x7FFFFFFF));
    }
  }

  v16 = *MEMORY[0x1E69E9840];
}

void sub_1B491C5DC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *a13)
{
  if (a13)
  {
    free(a13);
  }

  _Unwind_Resume(exception_object);
}

unsigned int *AG::Node::destroy(unsigned int *this, AG::Graph *a2)
{
  v2 = this;
  v3 = *this;
  v4 = *(*(a2 + 11) + ((v3 >> 5) & 0x7FFFFF8));
  if ((v3 & 0x10) != 0)
  {
    v5 = (AG::data::_shared_table_bytes + this[2]);
    if ((*(v2 + 7) & 2) != 0)
    {
      v5 = *v5;
    }

    this = (*(*(*(v4 + 8) - 8) + 8))(v5);
    LODWORD(v3) = *v2;
  }

  if ((v3 & 0x20) != 0)
  {
    if ((*(v4 + 40) & 4) != 0)
    {
      v6 = (v2 + *(v4 + 44));
      if (*(v2 + 7))
      {
        v6 = *v6;
      }

      (*(*(v4 + 32) + 16))(v4, v6);
    }

    v7 = *(*(*v4 - 8) + 8);
    v8 = (v2 + *(v4 + 44));
    if (*(v2 + 7))
    {
      v8 = *v8;
    }

    return v7(v8);
  }

  return this;
}

void anonymous namespace::subgraph_type_id(void)::$_0::__invoke<void const*>(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    AG::Subgraph::clear_object(*(a1 + 16));

    AG::Subgraph::invalidate_and_delete_(v1, 0);
  }
}

uint64_t sub_1B491C7A4(uint64_t a1, uint64_t a2, uint64_t a3, void *a4, uint64_t a5)
{
  v8 = *(a5 + 8);
  swift_getAssociatedTypeWitness();
  return AGGraphInternAttributeType(a1, a4, sub_1B490E54C);
}

uint64_t AGSubgraphRemoveChild(uint64_t a1, uint64_t a2)
{
  result = *(a1 + 16);
  if (!result)
  {
    AGSubgraphMove_cold_1(result, a2);
  }

  v4 = *(a2 + 16);
  if (v4)
  {

    return AG::Subgraph::remove_child(result, v4, 0);
  }

  return result;
}

void AG::Subgraph::~Subgraph(AG::Subgraph *this)
{
  if (*(this + 20))
  {
    AG::Subgraph::notify_observers(this);
    v2 = *(AG::data::_shared_table_bytes + *(this + 20));
    if (v2)
    {
      free(v2);
    }
  }

  v3 = *(this + 23);
  if (v3)
  {
    AG::Subgraph::NodeCache::~NodeCache((AG::data::_shared_table_bytes + v3));
  }

  v4 = *(this + 8);
  if (v4)
  {
    free(v4);
  }

  v5 = *(this + 7);
  if (v5)
  {
    v6 = v5 & 0xFFFFFFFFFFFFFFFELL;
    if ((v5 & 0xFFFFFFFFFFFFFFFELL) != 0)
    {
      v7 = *(v6 + 32);
      if (v7)
      {
        free(v7);
      }

      MEMORY[0x1B8C7ACE0](v6, 0x1080C4034992649);
    }
  }

  AG::data::zone::clear(this);
  v8 = *this;
  if (*(this + 2))
  {
    v9 = 0;
    do
    {
      std::unique_ptr<void,AG::data::table::malloc_zone_deleter>::reset[abi:ne200100](v8, 0);
      ++v9;
      ++v8;
    }

    while (v9 < *(this + 2));
    v8 = *this;
  }

  if (v8)
  {
    free(v8);
  }
}

uint64_t AG::Subgraph::remove_child(uint64_t this, AG::Subgraph *a2, char a3)
{
  v4 = this;
  v5 = (a2 + 56);
  v6 = *(a2 + 7);
  if (v6)
  {
    v8 = (v6 & 0xFFFFFFFFFFFFFFFELL);
    if (*((v6 & 0xFFFFFFFFFFFFFFFELL) + 32))
    {
      v8 = *((v6 & 0xFFFFFFFFFFFFFFFELL) + 32);
    }

    v7 = &v8[*((v6 & 0xFFFFFFFFFFFFFFFELL) + 40)];
  }

  else
  {
    v7 = &v5[v6 != 0];
    v8 = (a2 + 56);
  }

  while (v8 != v7)
  {
    if (*v8 == this)
    {
      if (v6)
      {
        v12 = v6 & 0xFFFFFFFFFFFFFFFELL;
        v13 = *(v12 + 40);
        if (*(v12 + 32))
        {
          v12 = *(v12 + 32);
        }

        v6 = *(v12 + 8 * v13 - 8);
      }

      *v8 = v6;
      if (*v5)
      {
        --*((*v5 & 0xFFFFFFFFFFFFFFFELL) + 40);
      }

      else
      {
        *v5 = 0;
      }

      break;
    }

    ++v8;
  }

  if ((a3 & 1) == 0)
  {
    this = *(*(this + 40) + 176);
    if (this)
    {
      this = AG::Subgraph::remove_child();
    }
  }

  v9 = *(v4 + 72);
  if (v9)
  {
    v10 = 8 * v9;
    for (i = *(v4 + 64); (*i & 0xFFFFFFFFFFFFFFFCLL) != a2; ++i)
    {
      v10 -= 8;
      if (!v10)
      {
        return this;
      }
    }

    v14 = v9 - 1;
    *i = *(*(v4 + 64) + 8 * v14);
    *(v4 + 72) = v14;
  }

  return this;
}

void AG::data::zone::clear(void ***this)
{
  v2 = *(this + 2);
  if (v2)
  {
    v3 = *this;
    v4 = 8 * v2;
    do
    {
      std::unique_ptr<void,AG::data::table::malloc_zone_deleter>::reset[abi:ne200100](v3++, 0);
      v4 -= 8;
    }

    while (v4);
  }

  *(this + 2) = 0;
  *(this + 7) = 0;
  os_unfair_lock_lock(&unk_1ED56D730);
  while (1)
  {
    v5 = *(this + 4);
    if (!v5)
    {
      break;
    }

    *(this + 4) = *(AG::data::_shared_table_bytes + v5 + 8);
    AG::data::table::dealloc_page_locked(&AG::data::_shared_table_bytes, v5);
  }

  os_unfair_lock_unlock(&unk_1ED56D730);
}

void AG::data::table::dealloc_page_locked(AG::data::table *this, unsigned int a2)
{
  v2 = *(*this + a2 + 12);
  *(this + 7) -= v2 >> 9;
  *(this + 11) -= v2 & 0xFFFFFE00;
  if (v2 >= 0x200)
  {
    v4 = 0;
    v5 = (a2 >> 9) - 1;
    v6 = -(v2 >> 9);
    do
    {
      v7 = *(this + 9);
      v8 = (*(v7 + 8 * (v5 >> 6)) & ~(1 << v5)) == 0;
      *(v7 + 8 * (v5 >> 6)) &= ~(1 << v5);
      if (v8)
      {
        AG::data::table::make_pages_reusable(this, v5, 1);
        if (!v4)
        {
LABEL_8:
          *(*(this + 11) + 8 * (v5 >> 6)) &= ~(1 << v5);
        }
      }

      else if (!v4)
      {
        goto LABEL_8;
      }

      ++v5;
      --v4;
    }

    while (v6 != v4);
  }
}

void AG::Subgraph::NodeCache::~NodeCache(AG::Subgraph::NodeCache *this)
{
  util::UntypedTable::for_each(this + 136, util::Table<AG::data::ptr<AG::Node>,AG::Subgraph::NodeCache::Item *>::for_each<AG::Subgraph::NodeCache::~()::$_0>(AG::Subgraph::NodeCache::~()::$_0 const&)const::{lambda(void const*,void const*,void const*)#1}::__invoke, &v2);
  util::UntypedTable::~UntypedTable((this + 136));
  util::UntypedTable::~UntypedTable((this + 72));
  util::UntypedTable::~UntypedTable((this + 8));
}

void util::Table<AG::data::ptr<AG::Node>,AG::Subgraph::NodeCache::Item *>::for_each<AG::Subgraph::NodeCache::~()::$_0>(AG::Subgraph::NodeCache::~()::$_0 const&)const::{lambda(void const*,void const*,void const*)#1}::__invoke(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    JUMPOUT(0x1B8C7ACE0);
  }
}

void util::UntypedTable::~UntypedTable(util::UntypedTable *this)
{
  if (*(this + 5))
  {
    v2 = 0;
    v3 = *(this + 14);
    do
    {
      v4 = *(*(this + 4) + 8 * v2);
      if (v4)
      {
        do
        {
          v5 = *v4;
          v6 = *(this + 2);
          if (v6)
          {
            v6(v4[1]);
          }

          v7 = *(this + 3);
          if (v7)
          {
            v7(v4[2]);
          }

          MEMORY[0x1B8C7ACE0](v4, 0x10A0C405421CD5ELL);
          v4 = v5;
        }

        while (v5);
      }

      ++v2;
    }

    while (!(v2 >> v3));
  }

  v8 = *(this + 4);
  if (v8)
  {
    free(v8);
  }
}

unint64_t AG::Graph::input_value_add(uint64_t a1, const char *a2, unsigned int a3, char a4)
{
  if (dword_1ED56D738 <= (a3 & 0xFFFFFFFC))
  {
    AG::precondition_failure("invalid data offset: %u", a2, a3 & 0xFFFFFFFC);
  }

  v5 = a4 & 9;
  v6 = a2;
  v7 = AG::data::_shared_table_bytes + a2;
  v8 = a3;
  v9 = *(v7 + 12);
  if (v9 <= 0x11F)
  {
    if (v9 >= 0x20)
    {
      result = 0;
      v11 = v9 >> 5;
      v12 = (*(v7 + 16) + AG::data::_shared_table_bytes + 4);
      while (*(v12 - 1) != a3 || (*v12 & 0xD) != v5)
      {
        ++result;
        v12 += 5;
        if (v11 == result)
        {
          goto LABEL_8;
        }
      }

LABEL_9:
      if ((result & 0x8000000000000000) != 0)
      {
        return result;
      }

      goto LABEL_10;
    }

LABEL_8:
    result = AG::Graph::add_input(a1, v6, v8, 0, v5);
    goto LABEL_9;
  }

  result = AG::Graph::index_of_input_slow(a1, v7, a3 | (v5 << 40) | 0xD00000000);
  if ((result & 0x8000000000000000) != 0)
  {
    goto LABEL_8;
  }

LABEL_10:
  v13 = AG::data::_shared_table_bytes + 5 * result + *&v6[AG::data::_shared_table_bytes + 16];
  *(v13 + 4) |= 0x20u;
  return result;
}

void std::unique_ptr<void,AG::data::table::malloc_zone_deleter>::reset[abi:ne200100](void **a1, void *a2)
{
  v3 = *a1;
  *a1 = a2;
  if (v3)
  {
    malloc_zone_free(AG::data::table::_external_malloc_zone, v3);
  }
}

unint64_t AGGraphRegisterDependency(uint64_t a1, const char *a2)
{
  v3 = AG::Graph::_current_update_key;
  v4 = *(_ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3)) + 8 * v3);
  if ((v4 & 1) != 0 || (v5 = (v4 & 0xFFFFFFFFFFFFFFFELL), (v4 & 0xFFFFFFFFFFFFFFFELL) == 0))
  {
    AGGraphRegisterDependency_cold_1(a1, a2);
  }

  v6 = a2;
  v7 = *v5;
  v8 = v5 + 4;
  v10 = v5[12];
  v9 = v5[13];
  if (v10)
  {
    v8 = v10;
  }

  v11 = LODWORD(v8[v9 - 1]);

  return AG::Graph::input_value_add(v7, v11, a1, v6);
}

void AG::Graph::Context::~Context(void **this)
{
  v2 = *this;
  v3 = *(*this + 44);
  if (v3)
  {
    for (i = 8 * v3 - 8; i != -8; i -= 8)
    {
      v15 = *(v2[21] + i);
      (*(*v15 + 168))(v15, this);
    }

    v2 = *this;
  }

  if (util::UntypedTable::remove((v2 + 13), this[2]) && this[7] != -1)
  {
    v4 = *this;
    v16 = &v17;
    v17 = -1;
    util::UntypedTable::for_each((v4 + 13), util::Table<unsigned long,AG::Graph::Context *>::for_each<AG::Graph::update_deadline(void)::$_0>(AG::Graph::update_deadline(void)::$_0 const&)const::{lambda(void const*,void const*,void const*)#1}::__invoke, &v16);
    v4[48] = v17;
  }

  v5 = *this;
  if (*(*this + 91) != 1)
  {
    v6 = *(v5 + 360);
    *(v5 + 360) = 1;
    v7 = v5[76];
    if (!v7)
    {
      goto LABEL_12;
    }

    v8 = *(v5 + 37);
    v9 = 8 * v7;
    do
    {
      if (*(*v8 + 6) == this[2])
      {
        AG::Subgraph::invalidate_and_delete_(*v8, 1);
      }

      ++v8;
      v9 -= 8;
    }

    while (v9);
    if (v5)
    {
LABEL_12:
      if ((v6 & 1) == 0)
      {
        *(v5 + 360) = 0;
        AG::Graph::invalidate_subgraphs(v5);
      }
    }
  }

  v10 = *this;
  v11 = *(*this + 91) - 1;
  *(v10 + 91) = v11;
  if (v10 && !v11)
  {
    AG::Graph::~Graph(v10);
    MEMORY[0x1B8C7ACE0]();
  }

  v12 = this[4];

  v13 = this[6];
}

uint64_t AG::LayoutDescriptor::compare_existential_values(AG::LayoutDescriptor *this, const AG::swift::existential_type_metadata *a2, unsigned __int8 *a3, const unsigned __int8 *a4)
{
  LODWORD(v4) = a4;
  result = AG::swift::existential_type_metadata::dynamic_type(this, a2);
  if (result)
  {
    v9 = result;
    if (result == AG::swift::existential_type_metadata::dynamic_type(this, a3))
    {
      v10 = AG::swift::existential_type_metadata::project_value(this, a2);
      v11 = AG::swift::existential_type_metadata::project_value(this, a3);
      if (v10 == v11)
      {
        return 1;
      }

      else
      {
        v12 = v11;
        if (v11 == a3 && v10 == a2)
        {
          v4 = v4;
        }

        else
        {
          v4 = v4 & 0xFFFFFEFF;
        }

        v14 = AG::LayoutDescriptor::fetch(v9, v4, 0);
        if (v14 == 1)
        {
          v14 = 0;
        }

        v15 = *(*(v9 - 1) + 64);

        return AG::LayoutDescriptor::compare(v14, v10, v12, v15, v4);
      }
    }

    else
    {
      return 0;
    }
  }

  return result;
}

uint64_t util::UntypedTable::remove_ptr(util::UntypedTable *this, void *a2)
{
  if (!*(this + 5))
  {
    return 0;
  }

  v4 = *(this + 4) + 8 * (*(this + 6) & (*this)(a2));
  do
  {
    v5 = v4;
    v4 = *v4;
    if (!v4)
    {
      return 0;
    }
  }

  while (*(v4 + 8) != a2);
  *v5 = *v4;
  v6 = *(this + 2);
  if (v6)
  {
    v6(*(v4 + 8));
  }

  v7 = *(this + 3);
  if (v7)
  {
    v7(*(v4 + 16));
  }

  MEMORY[0x1B8C7ACE0](v4, 0x10A0C405421CD5ELL);
  --*(this + 5);
  return 1;
}

uint64_t util::UntypedTable::remove(util::UntypedTable *this, void *a2)
{
  if (!*(this + 5))
  {
    return 0;
  }

  if (*(this + 60) == 1)
  {

    return util::UntypedTable::remove_ptr(this, a2);
  }

  v5 = (*this)(a2);
  v6 = (*(this + 4) + 8 * (*(this + 6) & v5));
  v7 = *v6;
  if (!*v6)
  {
    return 0;
  }

  v8 = v5;
  while (1)
  {
    v9 = v7;
    if (v7[3] == v8)
    {
      if ((*(this + 1))(v7[1], a2))
      {
        break;
      }
    }

    v7 = *v9;
    v6 = v9;
    if (!*v9)
    {
      return 0;
    }
  }

  *v6 = *v9;
  v10 = *(this + 2);
  if (v10)
  {
    v10(v9[1]);
  }

  v11 = *(this + 3);
  if (v11)
  {
    v11(v9[2]);
  }

  MEMORY[0x1B8C7ACE0](v9, 0x10A0C405421CD5ELL);
  --*(this + 5);
  return 1;
}

void AGGraphInvalidate(uint64_t a1)
{
  if ((*(a1 + 88) & 1) == 0)
  {
    AG::Graph::Context::~Context((a1 + 16));
    *(a1 + 88) = 1;
  }
}

void anonymous namespace::graph_type_id(void)::$_0::__invoke<void const*>(uint64_t a1)
{
  if ((*(a1 + 88) & 1) == 0)
  {
    AG::Graph::Context::~Context((a1 + 16));
  }
}

uint64_t AG::Graph::compare_edge_values(uint64_t a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  result = 0;
  if (a3 && (a2 & 3) == 1)
  {
    v6 = *(AG::data::_shared_table_bytes + (a2 & 0xFFFFFFFC) + 12);
    if (v6 == 0xFFFF)
    {
      v7 = 0;
    }

    else
    {
      v7 = *(AG::data::_shared_table_bytes + (a2 & 0xFFFFFFFC) + 12);
    }

    if (v6 == 0xFFFF)
    {
      return 0;
    }

    if (*(AG::data::_shared_table_bytes + (a2 & 0xFFFFFFFC) + 12))
    {
      v20 = a2;
      AG::AttributeID::resolve_slow(&v20, 0);
      v12 = *(a3 + 8);
      v13 = v11;
      if (!v11 && *(*(v12 - 1) + 64) == v7)
      {
        return 0;
      }

      v14 = *(a3 + 40) & 3 | 0x100;
      v15 = *(a3 + 48);
      if (!v15)
      {
        v19 = v11;
        v18 = *(a3 + 40) & 3 | 0x100;
        v17 = AG::LayoutDescriptor::fetch(v12, v18, 0);
        v14 = v18;
        v13 = v19;
        v15 = v17;
        *(a3 + 48) = v17;
      }

      if (v15 == 1)
      {
        v16 = 0;
      }

      else
      {
        v16 = v15;
      }

      return AG::LayoutDescriptor::compare_partial(v16, &v13[a4], &v13[a5], v13, v7, v14);
    }

    else
    {
      return 1;
    }
  }

  return result;
}

uint64_t AG::LayoutDescriptor::Builder::visit_function(AG::LayoutDescriptor::Builder *this, uint64_t a2)
{
  if (*(a2 + 10))
  {
    return 0;
  }

  if (!*(this + 2))
  {
    return 0;
  }

  AG::LayoutDescriptor::Builder::add_field(this, 8);
  v4 = *(this + 4);
  if (v4)
  {
    v5 = (v4 + 16);
  }

  else
  {
    v5 = (this + 40);
  }

  v6 = *(this + 2) + 8;
  v7 = v5[1];
  if (v5[2] < (v7 + 1))
  {
    v9 = v5;
    v10 = v6;
    AG::vector<std::variant<AG::LayoutDescriptor::Builder::DataItem,AG::LayoutDescriptor::Builder::EqualsItem,AG::LayoutDescriptor::Builder::EqualsOverrideItem,AG::LayoutDescriptor::Builder::IndirectItem,AG::LayoutDescriptor::Builder::ExistentialItem,AG::LayoutDescriptor::Builder::HeapRefItem,AG::LayoutDescriptor::Builder::NestedItem,AG::LayoutDescriptor::Builder::EnumItem>,0ul,unsigned long>::reserve_slow(v5, v7 + 1);
    v6 = v10;
    v5 = v9;
    v7 = v9[1];
  }

  v8 = *v5 + 56 * v7;
  *v8 = v6;
  *(v8 + 8) = 8;
  result = 1;
  *(v8 + 16) = 1;
  *(v8 + 48) = 5;
  ++v5[1];
  return result;
}

uint64_t AG::LayoutDescriptor::compare_partial(AG::LayoutDescriptor *this, AG::LayoutDescriptor *a2, unsigned __int8 *a3, const unsigned __int8 *a4, char *a5, unsigned int a6)
{
  v25 = *MEMORY[0x1E69E9840];
  if (a2 == a3)
  {
    v14 = 1;
    goto LABEL_22;
  }

  v7 = a5;
  if (this)
  {
    partial = AG::LayoutDescriptor::find_partial(this, a4, a5);
    if (partial)
    {
      v12 = partial;
      v13 = v11;
      if (!v11)
      {
        goto LABEL_9;
      }

      if (AG::LayoutDescriptor::compare_bytes_top_level(a2, a3, v11, a6, a5))
      {
        if (v7 >= v13)
        {
          v7 -= v13;
        }

        else
        {
          v7 = 0;
        }

LABEL_9:
        *v23 = 0u;
        v24 = 8;
        v14 = AG::LayoutDescriptor::Compare::operator()(v22, v12, a2, a3, v13, v7, a6);
        v15 = v23[0];
        if (v23[0])
        {
          v16 = v23[0];
        }

        else
        {
          v16 = v22;
        }

        if (v23[1])
        {
          v17 = 0;
          do
          {
            AG::LayoutDescriptor::Compare::Enum::~Enum(v16);
            ++v17;
            v16 = (v18 + 64);
          }

          while (v17 < v23[1]);
          v15 = v23[0];
        }

        if (v15)
        {
          free(v15);
        }

        goto LABEL_22;
      }

      v14 = 0;
LABEL_22:
      v21 = *MEMORY[0x1E69E9840];
      return v14;
    }
  }

  v19 = *MEMORY[0x1E69E9840];

  return AG::LayoutDescriptor::compare_bytes_top_level(a2, a3, v7, a6, a5);
}

uint64_t AG::Graph::value_set(uint64_t result, const char *a2)
{
  if (*(result + 20) > 0x1Fu || (*result & 0xC0) != 0)
  {
    AG::precondition_failure("setting value during update: %u", a2, a2);
  }

  return result;
}

double AGSubgraphRemoveObserver(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  if (v2)
  {
    *&result = AG::Subgraph::remove_observer(v2, a2).n128_u64[0];
  }

  return result;
}

__n128 AG::Subgraph::remove_observer(AG::Subgraph *this, uint64_t a2)
{
  v2 = *(this + 20);
  if (v2)
  {
    v3 = (AG::data::_shared_table_bytes + v2);
    v4 = *(AG::data::_shared_table_bytes + v2 + 8);
    if (v4)
    {
      v5 = 0;
      v6 = *v3;
      while (*(v6 + v5 + 16) != a2)
      {
        v5 += 24;
        if (!--v4)
        {
          return result;
        }
      }

      v7 = *(v6 + v5 + 8);

      v8 = (*v3 + v5);
      v9 = *v3 + 24 * v3[1];
      result = *v8;
      *v8 = *(v9 - 24);
      *(v9 - 24) = result;
      v11 = v8[1].n128_u64[0];
      v8[1].n128_u64[0] = *(v9 - 8);
      *(v9 - 8) = v11;
      --v3[1];
    }
  }

  return result;
}

void AG::Graph::indirect_attribute_set(uint64_t a1, const char *a2, unsigned int a3, char a4)
{
  v4 = a3;
  v5 = a2;
  v19 = a3;
  if ((*(AG::data::_shared_table_bytes + a2 + 8) & 1) == 0)
  {
    AG::precondition_failure("not an indirect attribute: %u", a2, a2 | 1);
  }

  if (*(*(AG::data::_shared_table_bytes + (a2 & 0xFFFFFE00)) + 40) != *(*(AG::data::_shared_table_bytes + (a3 & 0xFFFFFE00)) + 40))
  {
    AG::Graph::add_input_dependencies(a1, a2);
  }

  if (*(a1 + 176))
  {
    AG::Graph::indirect_attribute_set();
  }

  if ((v4 & 3) != 0)
  {
    v17 = AG::AttributeID::resolve_slow(&v19, 4);
    v8 = v18;
    v4 = v17;
  }

  else
  {
    v8 = 0;
  }

  v19 = v4;
  v9 = (AG::data::_shared_table_bytes + v5);
  v10 = *v9;
  if (v4 == *v9)
  {
    if (v8 == v9[2] >> 2)
    {
      return;
    }
  }

  else
  {
    AG::Graph::remove_input_dependencies(a1, (v5 & 0xFFFFFFFE | 1), *v9);
    v4 = v19;
  }

  if (v4 < 4)
  {
    v11 = 0;
  }

  else
  {
    v11 = (*(*(AG::data::_shared_table_bytes + (v4 & 0xFFFFFE00)) + 24) & 0x7FFFFFFF) << 32;
  }

  AG::IndirectNode::modify(v9, v11 | v4, v8);
  v12 = v19;
  if (a4)
  {
    v15 = 0;
  }

  else
  {
    v13 = *(AG::data::_shared_table_bytes + (v19 & 0xFFFFFE00));
    if (v13)
    {
      v13 = *(v13 + 48);
    }

    v14 = *(AG::data::_shared_table_bytes + (v5 & 0xFFFFFE00));
    if (v14)
    {
      v14 = *(v14 + 48);
    }

    v15 = 2 * (v13 != v14);
  }

  v9[2] = v9[2] & 0xFFFFFFFD | v15;
  v16 = v5 & 0xFFFFFFFE;
  if (v12 != v10)
  {
    AG::Graph::add_input_dependencies(a1, (v16 | 1), v12);
  }

  AG::Graph::mark_changed(a1);
  AG::Graph::propagate_dirty(a1);
}

uint64_t AGTypeApplyFields2::Visitor::visit_case(uint64_t a1, AG::swift::metadata *a2, uint64_t a3, unsigned int a4)
{
  v8 = *(a3 + 4);
  if (v8)
  {
    v9 = (v8 + a3 + 4);
  }

  else
  {
    v9 = 0;
  }

  v10 = AG::swift::metadata::mangled_type_name_ref(a2, v9, 1, 0);
  if (v10)
  {
    v11 = v10;
    v12 = *(a1 + 8);
    v13 = *(a3 + 8);
    if (v13)
    {
      v14 = (v13 + a3 + 8);
    }

    else
    {
      v14 = "";
    }

    v15 = *(v12 + 8);
    return (*v12)(v14, a4, v11) & 1;
  }

  else
  {
    v17 = **a1;

    return v17(a1);
  }
}

void AGGraphSetIndirectAttribute2(uint64_t a1, const char *a2, char a3)
{
  if ((a1 & 3) != 1 || (v4 = (a1 & 0xFFFFFFFC), (v5 = *(AG::data::_shared_table_bytes + (a1 & 0xFFFFFE00))) == 0))
  {
    AG::precondition_failure("invalid indirect attribute: %u", a2, a1);
  }

  v6 = *(v5 + 40);
  if (a2 == 2)
  {

    AG::Graph::indirect_attribute_reset(v6, v4, 0, a3);
  }

  else
  {

    AG::Graph::indirect_attribute_set(v6, v4, a2, a3);
  }
}

unsigned __int8 *AG::LayoutDescriptor::find_partial(unsigned __int8 *this, const unsigned __int8 *a2, unint64_t a3)
{
  if (a2)
  {
    v3 = 0;
    v4 = 0;
    do
    {
      v5 = this;
      v7 = *this++;
      v6 = v7;
      if ((v7 - 64) >= 0x40)
      {
        if (v6 > 12)
        {
          if ((v6 - 14) < 9)
          {
            goto LABEL_22;
          }

          if (v6 != 23)
          {
            if (v6 == 13)
            {
              do
              {
                v9 = *this++;
              }

              while (v9 < 0);
              goto LABEL_22;
            }

            goto LABEL_81;
          }

          v21 = *(*(v4 - 8) + 64);
          v4 = 0;
          goto LABEL_58;
        }

        if (v6 > 6)
        {
          if (v6 > 9)
          {
            goto LABEL_21;
          }

          if (v6 == 7)
          {
            v22 = 0;
            v25 = 0;
            v24 = *(v5 + 1);
            v23 = v5 + 9;
            do
            {
              v26 = *v23++;
              v22 |= (v26 & 0x7F) << v25;
              v25 += 7;
            }

            while (v26 < 0);
          }

          else
          {
            if (v6 != 8)
            {
              do
              {
                v10 = *this++;
              }

              while (v10 < 0);
LABEL_21:
              v11 = *this;
              this += 8;
              v4 = v11;
LABEL_22:
              v12 = 0;
              v13 = this;
              while (1)
              {
                while (1)
                {
                  while (1)
                  {
LABEL_23:
                    while (1)
                    {
                      v14 = v12;
                      this = v13;
                      v16 = *v13++;
                      v15 = v16;
                      if (v16 <= 12)
                      {
                        break;
                      }

                      if ((v15 - 14) >= 9)
                      {
                        if (v15 == 13)
                        {
                          if (!v12)
                          {
                            goto LABEL_5;
                          }

                          do
                          {
                            v20 = *v13++;
                          }

                          while (v20 < 0);
                        }

                        else if (v15 == 23)
                        {
                          --v12;
                          if (!v14)
                          {
                            goto LABEL_5;
                          }
                        }
                      }

                      else if (!v12)
                      {
                        goto LABEL_5;
                      }
                    }

                    if (v15 <= 7)
                    {
                      break;
                    }

                    if ((v15 - 10) < 3)
                    {
                      goto LABEL_35;
                    }

                    if (v15 != 8)
                    {
                      if (v15 != 9)
                      {
                        continue;
                      }

                      do
                      {
                        v18 = *++this;
                      }

                      while (v18 < 0);
LABEL_35:
                      v13 = this + 9;
                      ++v12;
                      continue;
                    }

                    v13 = this + 7;
                  }

                  if (v15 > 3)
                  {
                    break;
                  }

                  if ((v15 - 1) < 3)
                  {
                    v17 = 9;
LABEL_46:
                    v13 = &this[v17 + 8];
                    goto LABEL_23;
                  }

                  if (!v15)
                  {
                    goto LABEL_5;
                  }
                }

                if (v15 == 4)
                {
                  v17 = 1;
                  goto LABEL_46;
                }

                if (v15 == 7)
                {
                  v13 = this + 9;
                  do
                  {
                    v19 = *v13++;
                  }

                  while (v19 < 0);
                }
              }
            }

            v22 = *(v5 + 5);
            v23 = v5 + 7;
            v24 = &AG::LayoutDescriptor::base_address[*(v5 + 1)];
          }

          v27 = v22 + v3;
          v28 = &a2[-v3];
          v29 = v22 - v28;
          v30 = v29 >= a3;
          if (v29 < a3)
          {
            v31 = v23;
          }

          else
          {
            v31 = v24;
          }

          if (v30)
          {
            v32 = 0;
          }

          else
          {
            v32 = v27;
          }

          if (v30)
          {
            v33 = v28;
          }

          else
          {
            v33 = a2;
          }

          if (v27 > a2)
          {
            this = v31;
          }

          else
          {
            this = v23;
          }

          if (v27 > a2)
          {
            v3 = v32;
          }

          else
          {
            v3 = v27;
          }

          if (v27 > a2)
          {
            a2 = v33;
          }
        }

        else
        {
          if (v6 <= 3)
          {
            if ((v6 - 1) >= 3)
            {
              if (!v6)
              {
                return 0;
              }

LABEL_81:
              if ((v6 & 0x80) != 0)
              {
                v3 += (v6 & 0x7F) + 1;
              }

              continue;
            }

            v8 = *(v5 + 1);
            this = (v5 + 17);
LABEL_57:
            v21 = *(*(v8 - 8) + 64);
LABEL_58:
            v3 += v21;
            continue;
          }

          if ((v6 - 5) >= 2)
          {
            if (v6 != 4)
            {
              goto LABEL_81;
            }

            v8 = *(v5 + 1);
            this = (v5 + 9);
            goto LABEL_57;
          }

          v3 += 8;
        }
      }

      else
      {
        v3 += (v6 & 0x3F) + 1;
      }

LABEL_5:
      ;
    }

    while (v3 < a2);
  }

  return this;
}

void *AG::LayoutDescriptor::Builder::Emitter<AG::vector<unsigned char,512ul,unsigned long>>::operator()(uint64_t *a1, uint64_t a2)
{
  result = AG::LayoutDescriptor::Builder::Emitter<AG::vector<unsigned char,512ul,unsigned long>>::enter(a1, a2);
  v5 = *a1;
  v6 = *(a2 + 16);
  v7 = *(*a1 + 520);
  if (*(*a1 + 528) < (v7 + 1))
  {
    result = AG::vector<unsigned char,512ul,unsigned long>::reserve_slow(*a1, v7 + 1);
    v7 = *(v5 + 520);
  }

  if (v6)
  {
    v8 = 6;
  }

  else
  {
    v8 = 5;
  }

  v9 = *(v5 + 512);
  if (!v9)
  {
    v9 = v5;
  }

  *(v9 + v7) = v8;
  ++*(v5 + 520);
  a1[1] += *(a2 + 8);
  return result;
}

uint64_t AGGraphGetAttributeSubgraph(int a1, const char *a2)
{
  result = AGGraphGetAttributeSubgraph2(a1, a2);
  if (!result)
  {
    AGGraphGetAttributeSubgraph_cold_1(0, v3);
  }

  return result;
}

uint64_t AG::IndirectNode::modify(uint64_t result, uint64_t a2, int a3)
{
  *result = a2;
  *(result + 8) = *(result + 8) & 3 | (4 * a3);
  return result;
}

uint64_t AGGraphGetAttributeInfo(uint64_t a1, const char *a2)
{
  if ((a1 & 3) != 0)
  {
    AG::precondition_failure("non-direct attribute id: %u", a2, a1);
  }

  if (dword_1ED56D738 <= a1)
  {
    AG::precondition_failure("invalid data offset: %u", a2, a1);
  }

  v2 = *(AG::data::_shared_table_bytes + (a1 & 0xFFFFFE00));
  if (!v2)
  {
    AG::precondition_failure("no graph: %u", a2, a1);
  }

  v3 = *(v2 + 40);
  v5 = 0;
  return AG::Graph::attribute_ref(v3, a1, &v5);
}

uint64_t AG::swift::existential_type_metadata::dynamic_type(AG::swift::existential_type_metadata *this, void *a2)
{
  v2 = *(this + 2);
  if ((v2 & 0x3F000000) != 0)
  {
    v3 = 2;
  }

  else
  {
    v3 = v2 >= 0;
  }

  if (!v3)
  {
    return a2[3];
  }

  if (v3 == 2)
  {
    return 0;
  }

  return MEMORY[0x1EEE6BF60](*a2);
}

void *AG::swift::existential_type_metadata::project_value(AG::swift::existential_type_metadata *this, void *a2)
{
  v2 = *(this + 2);
  if ((v2 & 0x3F000000) != 0)
  {
    v3 = 2;
  }

  else
  {
    v3 = v2 >= 0;
  }

  if (v3 == 2)
  {
    return 0;
  }

  if (v3 != 1)
  {
    v4 = *(*(a2[3] - 8) + 80);
    if ((v4 & 0x20000) != 0)
    {
      return (*a2 + ((v4 + 16) & ~v4));
    }
  }

  return a2;
}

uint64_t sub_1B491E254(uint64_t a1)
{
  v2 = *(a1 + 16);
  v3 = *(v2 - 1);
  v4 = *(v3 + 64);
  MEMORY[0x1EEE9AC00](a1);
  v6 = &v14 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *v1;
  v9 = *(v1 + 1);
  v8 = *(v1 + 2);
  Value = AGGraphGetValue(v7, 0, v2, v10, v11);
  (*(v3 + 16))(v6, Value, v2);
  v9(v6);
  return (*(v3 + 8))(v6, v2);
}

uint64_t AG::Graph::attribute_ref(uint64_t a1, unsigned int a2, void *a3)
{
  v3 = (AG::data::_shared_table_bytes + a2);
  result = *(*(a1 + 88) + ((*v3 >> 5) & 0x7FFFFF8));
  if (a3)
  {
    v5 = (v3 + *(result + 44));
    if (*(v3 + 7))
    {
      v5 = *v5;
    }

    *a3 = v5;
  }

  return result;
}

uint64_t sub_1B491E3B8()
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

void AG::Graph::value_mark(uint64_t a1, const char *a2)
{
  v2 = a2;
  v4 = (AG::data::_shared_table_bytes + a2);
  v5 = *v4;
  v6 = *(*(a1 + 88) + ((v5 >> 5) & 0x7FFFFF8));
  v7 = AG::Graph::_current_update_key;
  v8 = *(_ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3)) + 8 * v7);
  if ((v8 & 1) == 0)
  {
    v9 = (v8 & 0xFFFFFFFFFFFFFFFELL);
    if (v9)
    {
      if (*v9 == a1 && ((v5 & 0xC0) != 0 || v4[5] >= 0x20))
      {
        AG::precondition_failure("setting value during update: %u", a2, a2);
      }
    }
  }

  if (*(a1 + 176))
  {
    AG::Graph::value_mark();
  }

  if ((*(v6 + 40) & 0x10) != 0)
  {
    AG::Graph::mark_changed(a1, v2, 0, 0, 0);
  }

  else
  {
    *(v4 + 7) |= 0x40u;
    v10 = *v4;
    if ((*v4 & 1) == 0)
    {
      v11 = *(a1 + 176);
      if (v11)
      {
        v16 = 8 * v11 - 8;
        do
        {
          (*(**(*(a1 + 168) + v16) + 256))(*(*(a1 + 168) + v16), v2, 1);
          v16 -= 8;
        }

        while (v16 != -8);
        v10 = *v4;
      }

      v10 |= 1u;
      *v4 = v10;
    }

    if ((v10 & 2) == 0)
    {
      v12 = *(a1 + 176);
      if (v12)
      {
        v17 = 8 * v12 - 8;
        do
        {
          (*(**(*(a1 + 168) + v17) + 264))(*(*(a1 + 168) + v17), v2, 1);
          v17 -= 8;
        }

        while (v17 != -8);
        v10 = *v4;
      }

      *v4 = v10 | 2;
    }

    v13 = *(v4 + 6);
    if (*(v4 + 6))
    {
      v14 = *(AG::data::_shared_table_bytes + (v2 & 0xFFFFFE00));
      if (v14)
      {
        v15 = *(v14 + 25);
        if ((v13 & ~HIWORD(v15)) != 0)
        {
          *(v14 + 25) = v15 & 0xFF00FFFF | ((BYTE2(v15) | v13) << 16);
          AG::Subgraph::propagate_dirty_flags(v14);
        }
      }
    }
  }

  AG::Graph::propagate_dirty(a1);
}

void AGGraphInvalidateValue(char *a1, const char *a2)
{
  if ((a1 & 3) != 0)
  {
    AG::precondition_failure("non-direct attribute id: %u", a2, a1);
  }

  if (dword_1ED56D738 <= a1)
  {
    AG::precondition_failure("invalid data offset: %u", a2, a1);
  }

  v2 = *(AG::data::_shared_table_bytes + (a1 & 0xFFFFFE00));
  if (!v2)
  {
    AG::precondition_failure("no graph: %u", a2, a1);
  }

  v3 = a1;
  v4 = *(v2 + 40);

  AG::Graph::value_mark(v4, v3);
}

uint64_t AG::Subgraph::cache_collect(uint64_t this)
{
  *(this + 105) &= ~1u;
  v3 = *(this + 92);
  if (v3)
  {
    if (!*(this + 104))
    {
      v4[2] = v1;
      v4[3] = v2;
      v4[0] = this;
      v4[1] = AG::data::_shared_table_bytes + v3;
      return util::UntypedTable::for_each(AG::data::_shared_table_bytes + v3 + 8, util::Table<AG::swift::metadata const*,AG::data::ptr<AG::Subgraph::NodeCache::Type>>::for_each<AG::Subgraph::cache_collect(void)::$_0>(AG::Subgraph::cache_collect(void)::$_0 const&)const::{lambda(void const*,void const*,void const*)#1}::__invoke, v4);
    }
  }

  return this;
}

uint64_t util::Table<AG::swift::metadata const*,AG::data::ptr<AG::Subgraph::NodeCache::Type>>::for_each<AG::Subgraph::cache_collect(void)::$_0>(AG::Subgraph::cache_collect(void)::$_0 const&)const::{lambda(void const*,void const*,void const*)#1}::__invoke(uint64_t a1, unsigned int a2, uint64_t *a3)
{
  v3 = *(AG::data::_shared_table_bytes + a2 + 16);
  if (v3)
  {
    v5 = *a3;
    do
    {
      v6 = ~*v3;
      if (*v3 == 0xFF)
      {
        break;
      }

      v7 = *v3 + 1;
      *v3 = v7;
      if (v7 == 0xFF)
      {
        util::UntypedTable::remove_ptr((a3[1] + 72), v3);
        v8 = v3[3];
        v9 = AG::data::_shared_table_bytes;
        AG::Node::destroy_self((AG::data::_shared_table_bytes + v8), *(v5 + 40));
        AG::Node::destroy_value((v9 + v8), *(v5 + 40));
        result = AG::Graph::remove_all_inputs(*(v5 + 40), v3[3]);
      }

      else
      {
        *(v5 + 105) |= 1u;
      }

      v3 = *(v3 + 2);
    }

    while (v3);
  }

  return result;
}

uint64_t AG::LayoutDescriptor::Builder::visit_existential(AG::LayoutDescriptor::Builder *this, const AG::swift::existential_type_metadata *a2)
{
  v2 = *(this + 2);
  if (!v2)
  {
    return 0;
  }

  if (v2 == 1 && AG::swift::existential_type_metadata::representation(a2) == 1)
  {
    return 0;
  }

  v6 = *(this + 4);
  if (v6)
  {
    v7 = (v6 + 16);
  }

  else
  {
    v7 = (this + 40);
  }

  v8 = *(this + 2);
  v9 = *(*(a2 - 1) + 64);
  v10 = v7[1];
  if (v7[2] < (v10 + 1))
  {
    AG::vector<std::variant<AG::LayoutDescriptor::Builder::DataItem,AG::LayoutDescriptor::Builder::EqualsItem,AG::LayoutDescriptor::Builder::EqualsOverrideItem,AG::LayoutDescriptor::Builder::IndirectItem,AG::LayoutDescriptor::Builder::ExistentialItem,AG::LayoutDescriptor::Builder::HeapRefItem,AG::LayoutDescriptor::Builder::NestedItem,AG::LayoutDescriptor::Builder::EnumItem>,0ul,unsigned long>::reserve_slow(v7, v10 + 1);
    v10 = v7[1];
  }

  v11 = *v7 + 56 * v10;
  *v11 = v8;
  *(v11 + 8) = v9;
  *(v11 + 16) = a2;
  *(v11 + 48) = 4;
  ++v7[1];
  return 1;
}

uint64_t AG::Graph::Context::thread_is_updating(AG::Graph::Context *this)
{
  v1 = AG::Graph::_current_update_key;
  v2 = *(_ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3)) + 8 * v1);
  if (!v2)
  {
    return 0;
  }

  while (1)
  {
    v3 = (v2 & 0xFFFFFFFFFFFFFFFELL);
    if (*v3 == *this)
    {
      break;
    }

    v2 = v3[2];
    if (!v2)
    {
      return 0;
    }
  }

  return AG::Graph::is_context_updating(*this, *(this + 2));
}

uint64_t AGTypeApplyMutableEnumData(AG::swift::metadata *a1, void **a2, void (*a3)(void, AG::swift::metadata *, unint64_t))
{
  v4 = *(a1 - 1);
  if ((*(v4 + 82) & 0x20) == 0)
  {
    AGTypeGetEnumTag_cold_1(a1);
  }

  v7 = (*(v4 + 88))(a2, a1);
  result = AG::swift::metadata::nominal_descriptor(a1);
  if (result)
  {
    v9 = result + 16;
    v10 = *(result + 16);
    if (v10 && ((v10 & 3) != 1 ? (v11 = v10 + v9) : (v11 = *((v10 & 0xFFFFFFFFFFFFFFFCLL) + v9)), v7 < (*(result + 20) & 0xFFFFFFu) && (v12 = v11 + 12 * v7, v15 = *(v12 + 20), v14 = v12 + 20, v13 = v15, v15)))
    {
      result = AG::swift::metadata::mangled_type_name_ref_cached(a1, (v13 + v14), 0);
      if (result)
      {
        v16 = result;
        (*(*(a1 - 1) + 96))(a2, a1);
        v17 = a2;
        if (*(v14 - 4))
        {
          AG::swift::metadata::copy_on_write_heap_object(v16, a2);
          v17 = *a2 + ((*(*(v16 - 1) + 80) + 16) & ~*(*(v16 - 1) + 80));
        }

        a3(v7, v16, v17);
        (*(*(a1 - 1) + 104))(a2, v7, a1);
        return 1;
      }
    }

    else
    {
      return 0;
    }
  }

  return result;
}

_BYTE *AG::swift::metadata::mangled_type_name_ref_cached(AG::swift::metadata *a1, _BYTE *a2, _DWORD *a3)
{
  v3 = a2;
  if (a2)
  {
    {
      operator new();
    }

    v10[0] = a1;
    v10[1] = v3;
    v6 = AG::swift::metadata::mangled_type_name_ref_cached(char const*,AG::swift::metadata::ref_kind *)const::cache;
    os_unfair_lock_lock(AG::swift::metadata::mangled_type_name_ref_cached(char const*,AG::swift::metadata::ref_kind *)const::cache);
    v7 = util::UntypedTable::lookup((AG::swift::metadata::mangled_type_name_ref_cached(char const*,AG::swift::metadata::ref_kind *)const::cache + 8), v10, 0);
    if (!v7)
    {
      os_unfair_lock_unlock(v6);
      v9 = 0;
      AG::swift::metadata::mangled_type_name_ref(a1, v3, 1, &v9);
      os_unfair_lock_lock(AG::swift::metadata::mangled_type_name_ref_cached(char const*,AG::swift::metadata::ref_kind *)const::cache);
      operator new();
    }

    if (a3)
    {
      *a3 = *(v7 + 8);
    }

    v3 = *v7;
    os_unfair_lock_unlock(v6);
  }

  return v3;
}

void sub_1B491EDC8(_Unwind_Exception *a1)
{
  MEMORY[0x1B8C7ACE0](v1, 0x1080C401B43D839);
  _Unwind_Resume(a1);
}

unsigned int *AG::Graph::with_update(uint64_t a1, unsigned int a2, void (*a3)(void))
{
  v19 = *MEMORY[0x1E69E9840];
  StatusReg = _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
  v9 = a1;
  v10 = StatusReg - 224;
  v11 = *(StatusReg + 8 * AG::Graph::_current_update_key);
  v4 = atomic_load((a1 + 368));
  v12 = v4;
  v15 = 0;
  v16 = 0;
  v5 = 8;
  v17 = 8;
  v18 = 0;
  if (v11)
  {
    v18 = *((v11 & 0xFFFFFFFFFFFFFFFELL) + 120) & 2;
    v5 = v18 | 8;
  }

  *(a1 + 368) = v10;
  if ((*(a1 + 360) & 1) == 0)
  {
    *(a1 + 360) = 1;
    v18 = v5;
  }

  *(StatusReg + 8 * AG::Graph::_current_update_key) = &v9;
  v13 = a2;
  v14 = (*(AG::data::_shared_table_bytes + a2) >> 1) & 1;
  v16 = 1;
  a3();
  result = _ZZN2AG5Graph11with_updateENS_4data3ptrINS_4NodeEEENS_17ClosureFunctionVVIvJEEEEN13scoped_updateD1Ev(&v9, v6);
  v8 = *MEMORY[0x1E69E9840];
  return result;
}

void sub_1B491EF68(_Unwind_Exception *a1, const char *a2, uint64_t a3, ...)
{
  va_start(va, a3);
  _ZZN2AG5Graph11with_updateENS_4data3ptrINS_4NodeEEENS_17ClosureFunctionVVIvJEEEEN13scoped_updateD1Ev(va, a2);
  _Unwind_Resume(a1);
}

unsigned int *_ZZN2AG5Graph11with_updateENS_4data3ptrINS_4NodeEEENS_17ClosureFunctionVVIvJEEEEN13scoped_updateD1Ev(unsigned int *a1, const char *a2)
{
  v3 = a1 + 8;
  v4 = *(a1 + 13);
  if (*(a1 + 12))
  {
    v3 = *(a1 + 12);
  }

  *(a1 + 13) = v4 - 1;
  if (v4 != 1)
  {
    v5 = AG::data::_shared_table_bytes;
    v6 = 8 * v4 - 8;
    do
    {
      v7 = *v3;
      v3 += 2;
      *(v5 + v7) -= 64;
      v6 -= 8;
    }

    while (v6);
  }

  v8 = *a1;
  if (*(a1 + 1) != *(*a1 + 368))
  {
    AG::non_fatal_precondition_failure("invalid graph update (access from multiple threads?)", a2);
    v8 = *a1;
  }

  *(v8 + 368) = *(a1 + 3);
  v9 = *(a1 + 2);
  v10 = AG::Graph::_current_update_key;
  *(_ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3)) + 8 * v10) = v9;
  if ((a1[30] & 8) != 0)
  {
    *(*a1 + 360) = 0;
  }

  v11 = *(a1 + 12);
  if (v11)
  {
    free(v11);
  }

  return a1;
}

uint64_t AG::LayoutDescriptor::compare_heap_objects(AG::swift::metadata **this, unsigned __int8 *a2, const void *a3, int a4)
{
  if (this == a2)
  {
    return 1;
  }

  result = 0;
  if (this >= 1 && a2 >= 1)
  {
    v7 = *this;
    if (*this != *a2)
    {
      return 0;
    }

    v8 = a3;
    if (a4)
    {
      v9 = 2;
    }

    else
    {
      v9 = 1;
    }

    {
      v12 = *this;
      v11 = v9;
      AG::LayoutDescriptor::compare_heap_objects();
      v9 = v11;
      v7 = v12;
    }

    if (v10 >= 2)
    {

      return AG::LayoutDescriptor::compare(v10, this, a2, 0xFFFFFFFFFFFFFFFFLL, (v8 & 0xFFFFFEFF));
    }

    else
    {
      return 0;
    }
  }

  return result;
}

void *AG::vector<AG::ConstOutputEdgeArrayRef,64ul,unsigned long>::reserve_slow(void *__dst, size_t a2)
{
  if (*(__dst + 130) + (*(__dst + 130) >> 1) <= a2)
  {
    v3 = a2;
  }

  else
  {
    v3 = *(__dst + 130) + (*(__dst + 130) >> 1);
  }

  result = AG::details::realloc_vector<unsigned long,16ul>(*(__dst + 128), __dst, 0x40uLL, __dst + 130, v3);
  *(__dst + 128) = result;
  return result;
}

__int128 *AG::vector<AG::Subgraph *,2ul,unsigned int>::swap_inline(__int128 *result, __int128 *a2)
{
  v7 = *MEMORY[0x1E69E9840];
  v2 = *(a2 + 2);
  v3 = *(result + 2);
  if (v2)
  {
    v4 = v3 == 0;
  }

  else
  {
    v4 = 1;
  }

  if (v4)
  {
    v5 = *a2;
    *a2 = *result;
    *result = v5;
    if (v3)
    {
      if (v2)
      {
        goto LABEL_8;
      }
    }

    else
    {
      *(result + 2) = 0;
      if (v2)
      {
        goto LABEL_8;
      }
    }

    *(a2 + 2) = 0;
  }

LABEL_8:
  v6 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t AG::Graph::is_context_updating(AG::Graph *this, uint64_t a2)
{
  v2 = AG::Graph::_current_update_key;
  for (i = *(_ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3)) + 8 * v2); i; i = v4[2])
  {
    v4 = (i & 0xFFFFFFFFFFFFFFFELL);
    v5 = v4[13];
    v6 = 8 * v5 - 8;
    v7 = v5 + 1;
    while (--v7)
    {
      v8 = v4[12];
      if (!v8)
      {
        v8 = v4 + 4;
      }

      v9 = *(AG::data::_shared_table_bytes + (*(v8 + v6) & 0xFFFFFE00));
      if (v9)
      {
        v9 = *(v9 + 48);
      }

      v6 -= 8;
      if (v9 == a2)
      {
        return 1;
      }
    }
  }

  return 0;
}

__n128 AGGraphWithMainThreadHandler(uint64_t a1, const char *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  if (*(a1 + 88) == 1)
  {
    AG::Graph::Context::from_cf(a1, a2);
  }

  v5 = *(a1 + 16);
  v7 = *(v5 + 184);
  *(v5 + 184) = a4;
  *(v5 + 192) = a5;
  (a2)();
  result = v7;
  *(v5 + 184) = v7;
  return result;
}

uint64_t AG::swift::metadata::visit_heap(AG::swift::metadata *this, AG::swift::metadata_visitor *a2, char a3)
{
  v3 = *this;
  if (*this > 0x7FFuLL)
  {
    v3 = 0;
  }

  if (v3 == 1280)
  {
    if ((a3 & 4) != 0)
    {
      v5 = *(this + 2);
      if (v5)
      {
        return (*(*a2 + 8))(a2, v5, 0, (*(*(v5 - 8) + 80) + *(this + 2)) & ~*(*(v5 - 8) + 80), *(*(v5 - 8) + 64));
      }
    }
  }

  else if (v3 == 1024)
  {
    if ((a3 & 2) != 0)
    {
      return AG::swift::metadata::visit_heap_locals(this, a2);
    }
  }

  else if (!v3 && (a3 & 1) != 0)
  {
    return AG::swift::metadata::visit_heap_class(this, a2);
  }

  return (**a2)(a2);
}

uint64_t AG::swift::metadata::visit_heap_locals(AG::swift::metadata *this, AG::swift::metadata_visitor *a2)
{
  v3 = *(this + 2);
  if (!v3 || v3[1] || (v9 = *(this + 2), !v9))
  {
    v4 = **a2;
    v5 = *a2;
    v6 = a2;

    return v4(v6);
  }

  if (v3[2])
  {
    v10 = 0;
    while (1)
    {
      {
        AG::swift::metadata::visit_heap_locals(AG::swift::metadata_visitor &)const::pointer_type = AG::swift::metadata::mangled_type_name_ref(this, "Bp", 1, 0);
      }

      v11 = *a2;
      if (!AG::swift::metadata::visit_heap_locals(AG::swift::metadata_visitor &)const::pointer_type)
      {
        break;
      }

      result = (v11[1])(a2, AG::swift::metadata::visit_heap_locals(AG::swift::metadata_visitor &)const::pointer_type, 3, v9, 8);
      if (!result)
      {
        return result;
      }

      v9 += 8;
      if (++v10 >= v3[2])
      {
        goto LABEL_16;
      }
    }

    v4 = *v11;
    v6 = a2;

    return v4(v6);
  }

LABEL_16:
  if (!*v3)
  {
    return 1;
  }

  v12 = v3 + 3;
  v13 = 3;
  while (1)
  {
    v19 = 0;
    v14 = v3[v13];
    v15 = v14 ? v12 + v14 : 0;
    v16 = AG::swift::metadata::mangled_type_name_ref(this, v15, 0, &v19);
    if (!v16)
    {
      break;
    }

    v17 = (v9 + *(*(v16 - 8) + 80)) & ~*(*(v16 - 8) + 80);
    v18 = *(*(v16 - 8) + 64);
    result = (*(*a2 + 8))(a2, v16, v19, v17, v18);
    if (result)
    {
      ++v13;
      v9 = v17 + v18;
      ++v12;
      if (v13 - 3 < *v3)
      {
        continue;
      }
    }

    return result;
  }

  return (**a2)(a2);
}

uint64_t sub_1B491F6DC(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 8))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

void *AG::details::realloc_vector<unsigned int,8ul>(void *__src, void *__dst, unsigned int a3, _DWORD *a4, unsigned int a5)
{
  v7 = __src;
  if (a5 <= a3)
  {
    if (__src)
    {
      LODWORD(v9) = a3;
      memcpy(__dst, __src, 8 * a5);
      free(v7);
      v12 = 0;
LABEL_8:
      *a4 = v9;
      return v12;
    }
  }

  else
  {
    v8 = malloc_good_size(8 * a5);
    v9 = v8 >> 3;
    if (*a4 != (v8 >> 3))
    {
      v10 = malloc_type_realloc(v7, v8, 0xC199B67EuLL);
      if (!v10)
      {
        AG::precondition_failure("allocation failure", v11);
      }

      v12 = v10;
      if (!v7)
      {
        memcpy(v10, __dst, 8 * *a4);
      }

      goto LABEL_8;
    }
  }

  return v7;
}

void *AG::vector<AG::Subgraph *,2ul,unsigned int>::reserve_slow(void *__dst, unsigned int a2)
{
  if (*(__dst + 7) + (*(__dst + 7) >> 1) <= a2)
  {
    v3 = a2;
  }

  else
  {
    v3 = *(__dst + 7) + (*(__dst + 7) >> 1);
  }

  result = AG::details::realloc_vector<unsigned int,8ul>(*(__dst + 2), __dst, 2u, __dst + 7, v3);
  *(__dst + 2) = result;
  return result;
}

uint64_t sub_1B491F828(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *result = (a2 - 1);
    if (!a3)
    {
      return result;
    }

    v3 = 1;
  }

  else
  {
    if (!a3)
    {
      return result;
    }

    v3 = 0;
  }

  *(result + 8) = v3;
  return result;
}

uint64_t AG::AttributeID::traverses(int *a1, int a2, char a3)
{
  while (1)
  {
    v3 = *a1;
    if ((*a1 & 3) != 1)
    {
      return v3 == a2;
    }

    if (v3 == a2)
    {
      break;
    }

    a1 = (AG::data::_shared_table_bytes + (v3 & 0xFFFFFFFC));
    if (a3 & 4) != 0 && (a1[2])
    {
      return v3 == a2;
    }
  }

  return 1;
}

uint64_t AG::Graph::all_inputs_removed(uint64_t result, unsigned int a2)
{
  v2 = (AG::data::_shared_table_bytes + a2);
  *(v2 + 7) &= 0xF3u;
  v3 = *v2;
  if ((v3 & 8) != 0 && (*(*(*(result + 88) + ((v3 >> 5) & 0x7FFFFF8)) + 40) & 8) == 0)
  {
    *v2 = v3 & 0xFFFFFFF7;
  }

  return result;
}

void *AG::Graph::Context::call_invalidation(void *result, uint64_t a2)
{
  *(result + 16) = *(*result + 424);
  if (result[3])
  {
    v3 = result;
    v4 = AG::Graph::_current_update_key;
    StatusReg = _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
    v6 = *(StatusReg + 8 * v4);
    v7 = v6 | 1;
    if (!v6)
    {
      v7 = 0;
    }

    *(StatusReg + 8 * v4) = v7;
    v8 = *result;
    v9 = *(*result + 176);
    if (v9)
    {
      for (i = 8 * v9 - 8; i != -8; i -= 8)
      {
        v13 = *(*(v8 + 168) + i);
        (*(*v13 + 112))(v13, v3, a2);
      }
    }

    v10 = v3[4];
    result = (v3[3])(a2);
    v11 = *(v8 + 176);
    if (v11)
    {
      v14 = a2;
      for (j = 8 * v11 - 8; j != -8; j -= 8)
      {
        v16 = *(*(v8 + 168) + j);
        result = (*(*v16 + 120))(v16, v3, v14);
      }
    }

    *(StatusReg + 8 * AG::Graph::_current_update_key) = v6;
  }

  return result;
}

uint64_t AGGraphGetCurrentAttribute()
{
  v0 = AG::Graph::_current_update_key;
  v1 = *(_ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3)) + 8 * v0);
  result = 2;
  if ((v1 & 1) == 0)
  {
    v3 = v1 & 0xFFFFFFFFFFFFFFFELL;
    if (v3)
    {
      v4 = v3 + 32;
      v6 = *(v3 + 96);
      v5 = *(v3 + 104);
      if (v6)
      {
        v4 = v6;
      }

      return *(v4 + 8 * v5 - 8);
    }
  }

  return result;
}

void AG::Graph::value_set_internal(AG::swift::metadata *a1)
{
  OUTLINED_FUNCTION_6(a1);
  v3 = OUTLINED_FUNCTION_5();
  AG::precondition_failure("invalid value type for attribute: %u (saw %s, expected %s)", v4, v1, v2, v3);
}

uint64_t OUTLINED_FUNCTION_6(AG::swift::metadata *a1)
{

  return AG::swift::metadata::name(a1, 0);
}

void *AG::vector<std::pair<AG::ConstOutputEdgeArrayRef,AG::AttributeID>,256ul,unsigned long>::reserve_slow(void *__dst, unint64_t a2)
{
  if (*(__dst + 770) + (*(__dst + 770) >> 1) <= a2)
  {
    v3 = a2;
  }

  else
  {
    v3 = *(__dst + 770) + (*(__dst + 770) >> 1);
  }

  result = AG::details::realloc_vector<unsigned long,24ul>(*(__dst + 768), __dst, 0x100uLL, __dst + 770, v3);
  *(__dst + 768) = result;
  return result;
}

void *AG::details::realloc_vector<unsigned long,24ul>(void *__src, void *__dst, unint64_t a3, unint64_t *a4, unint64_t a5)
{
  v7 = __src;
  if (a5 <= a3)
  {
    if (__src)
    {
      v9 = a3;
      memcpy(__dst, __src, 24 * a5);
      free(v7);
      v12 = 0;
LABEL_8:
      *a4 = v9;
      return v12;
    }
  }

  else
  {
    v8 = malloc_good_size(24 * a5);
    v9 = v8 / 0x18;
    if (v8 / 0x18 != *a4)
    {
      v10 = malloc_type_realloc(v7, v8, 0xC199B67EuLL);
      if (!v10)
      {
        AG::precondition_failure("allocation failure", v11);
      }

      v12 = v10;
      if (!v7)
      {
        memcpy(v10, __dst, 24 * *a4);
      }

      goto LABEL_8;
    }
  }

  return v7;
}

AG::Subgraph *AG::Graph::mark_pending(int a1, unsigned __int8 a2)
{
  result = *(AG::data::_shared_table_bytes + (a1 & 0xFFFFFE00));
  if (result)
  {
    return AG::Subgraph::add_dirty_flags(result, a2);
  }

  return result;
}

AG::Subgraph *AG::Subgraph::add_dirty_flags(AG::Subgraph *this, unsigned __int8 a2)
{
  v2 = *(this + 25);
  if ((a2 & ~HIWORD(v2)) != 0)
  {
    *(this + 25) = v2 & 0xFF00FFFF | ((BYTE2(v2) | a2) << 16);
    return AG::Subgraph::propagate_dirty_flags(this);
  }

  return this;
}

void *AG::Subgraph::cache_insert(void *result, unsigned int a2)
{
  if (!*(result + 104))
  {
    v2 = (AG::data::_shared_table_bytes + a2);
    if ((*(v2 + 7) & 0x10) != 0)
    {
      v3 = *v2;
      if ((v3 & 0xC0) == 0 && v2[5] <= 0x1F)
      {
        v4 = result;
        v5 = a2;
        v6 = AG::data::_shared_table_bytes + *(result + 23);
        v7 = AG::data::_shared_table_bytes + util::UntypedTable::lookup((v6 + 8), **(*(result[5] + 88) + ((v3 >> 5) & 0x7FFFFF8)), 0);
        result = util::UntypedTable::lookup((v6 + 136), v5, 0);
        ++*result;
        v8 = *(v7 + 16);
        result[2] = v8;
        result[3] = 0;
        *(v7 + 16) = result;
        if (!v8)
        {
          v8 = v7;
        }

        *(v8 + 24) = result;
        v9 = *(v4 + 105);
        if ((v9 & 1) == 0)
        {
          if ((*(v4 + 105) & 2) == 0)
          {
            v10 = v4[5];
            v11 = *(v10 + 320);
            v12 = v11 + 1;
            if (*(v10 + 324) < v11 + 1)
            {
              result = AG::vector<std::pair<unsigned int,BOOL>,0ul,unsigned int>::reserve_slow(v10 + 312, v12);
              v11 = *(v10 + 320);
              v12 = v11 + 1;
            }

            *(*(v10 + 312) + 8 * v11) = v4;
            *(v10 + 320) = v12;
            v9 = *(v4 + 105);
          }

          *(v4 + 105) = v9 | 1;
        }
      }
    }
  }

  return result;
}

uint64_t AGGraphAddInput(char *a1, const char *a2, uint64_t a3)
{
  if ((a1 & 3) != 0)
  {
    AG::precondition_failure("non-direct attribute id: %u", a2, a1);
  }

  if (dword_1ED56D738 <= a1)
  {
    AG::precondition_failure("invalid data offset: %u", a2, a1);
  }

  v3 = *(AG::data::_shared_table_bytes + (a1 & 0xFFFFFE00));
  if (!v3)
  {
    AG::precondition_failure("no graph: %u", a2, a1);
  }

  if (dword_1ED56D738 <= (a2 & 0xFFFFFFFC))
  {
    AG::precondition_failure("invalid data offset: %u", a2, a2 & 0xFFFFFFFC);
  }

  v4 = *(AG::data::_shared_table_bytes + (a2 & 0xFFFFFE00));
  if (!v4 || (v5 = *(v3 + 40), *(v4 + 40) != v5))
  {
    AG::precondition_failure("accessing attribute in a different namespace: %u", a2, a2);
  }

  return AG::Graph::add_input(v5, a1, a2, 0, a3);
}

void AG::data::table::make_pages_reusable(AG::data::table *this, int a2, int a3)
{
  v5 = *(this + 1);
  v6 = (a2 << 9) & 0xFFFF8000;
  if (a3)
  {
    v7 = 7;
  }

  else
  {
    v7 = 8;
  }

  madvise((v5 + v6), 0x8000uLL, v7);
  if ((atomic_load_explicit(&qword_1ED56D390, memory_order_acquire) & 1) == 0)
  {
    AG::data::table::make_pages_reusable();
  }

  if (_MergedGlobals_0 == 1)
  {
    if (a3)
    {
      v8 = 0;
    }

    else
    {
      v8 = 3;
    }

    mprotect((v5 + v6), 0x8000uLL, v8);
  }

  if (a3)
  {
    v9 = 0x8000;
  }

  else
  {
    v9 = -32768;
  }

  *(this + 8) += v9;
}

uint64_t sub_1B491FF08()
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

void AG::data::table::make_pages_reusable()
{
  if (__cxa_guard_acquire(&qword_1ED56D390))
  {
    _MergedGlobals_0 = AG::data::table::make_pages_reusable(unsigned int,BOOL)::$_0::operator()();

    __cxa_guard_release(&qword_1ED56D390);
  }
}

char *AG::data::table::make_pages_reusable(unsigned int,BOOL)::$_0::operator()()
{
  result = getenv("AG_UNMAP_REUSABLE");
  if (result)
  {
    return (atoi(result) != 0);
  }

  return result;
}

uint64_t AG::misc_log(AG *this)
{
  if ((atomic_load_explicit(&qword_1ED56D3E0, memory_order_acquire) & 1) == 0)
  {
    AG::misc_log();
  }

  return _MergedGlobals_4;
}

void AGGraphSetOutputValue_cold_1(AG::swift::metadata *a1, AG::swift::metadata *a2, uint64_t a3)
{
  v5 = AG::swift::metadata::name(a1, 0);
  v6 = AG::swift::metadata::name(a2, 0);
  AG::precondition_failure("invalid value type for attribute: %u (saw %s, expected %s)", v7, a3, v5, v6);
}

void AG::misc_log()
{
  if (__cxa_guard_acquire(&qword_1ED56D3E0))
  {
    _MergedGlobals_4 = os_log_create("com.apple.attributegraph", "misc");

    __cxa_guard_release(&qword_1ED56D3E0);
  }
}

void *AG::vector<AG::Subgraph const*,32ul,unsigned long>::reserve_slow(void *__dst, size_t a2)
{
  if (*(__dst + 34) + (*(__dst + 34) >> 1) <= a2)
  {
    v3 = a2;
  }

  else
  {
    v3 = *(__dst + 34) + (*(__dst + 34) >> 1);
  }

  result = AG::details::realloc_vector<unsigned long,8ul>(*(__dst + 32), __dst, 0x20uLL, __dst + 34, v3);
  *(__dst + 32) = result;
  return result;
}

uint64_t AGGraphClearUpdate()
{
  v0 = AG::Graph::_current_update_key;
  StatusReg = _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
  result = *(StatusReg + 8 * v0);
  if (result)
  {
    v3 = (*(StatusReg + 8 * v0) & 1) == 0;
  }

  else
  {
    v3 = 0;
  }

  if (v3)
  {
    *(StatusReg + 8 * v0) = result | 1;
  }

  return result;
}

void *AG::data::table::grow_region(AG::data::table *this, const char *a2)
{
  v2 = *(this + 5);
  v3 = 4 * v2;
  if (v3 <= v2)
  {
    AG::data::table::grow_region(this, a2);
  }

  target_address = mmap(0, 4 * v2, 3, 4098, -1, 0);
  if (target_address == -1)
  {
    AG::data::table::grow_region(v3);
  }

  cur_protection = 0;
  v11 = 0;
  result = vm_remap(*MEMORY[0x1E69E9A60], &target_address, *(this + 5), 0, 0x4000, *MEMORY[0x1E69E9A60], *(this + 1), 0, &cur_protection, &v11, 2u);
  if (result)
  {
    AG::precondition_failure("vm_remap failure: 0x%x", v6, result);
  }

  v7 = *(this + 16);
  v8 = v7 + 1;
  if (*(this + 17) < v7 + 1)
  {
    result = AG::vector<std::pair<unsigned char *,unsigned int>,0ul,unsigned int>::reserve_slow(this + 56, v8);
    v7 = *(this + 16);
    v8 = v7 + 1;
  }

  v9 = *(this + 7) + 16 * v7;
  *v9 = *(this + 1);
  *(v9 + 8) = *(this + 5);
  *(this + 16) = v8;
  v10 = target_address;
  AGGraphVMRegionBaseAddress = target_address;
  *this = target_address - 512;
  *(this + 1) = v10;
  *(this + 5) = v3;
  *(this + 6) = v3 + 512;
  return result;
}

void *std::__hash_table<std::__hash_value_type<AG::Subgraph *,AG::Graph::TreeDataElement>,std::__unordered_map_hasher<AG::Subgraph *,std::__hash_value_type<AG::Subgraph *,AG::Graph::TreeDataElement>,std::hash<AG::Subgraph *>,std::equal_to<AG::Subgraph *>,true>,std::__unordered_map_equal<AG::Subgraph *,std::__hash_value_type<AG::Subgraph *,AG::Graph::TreeDataElement>,std::equal_to<AG::Subgraph *>,std::hash<AG::Subgraph *>,true>,std::allocator<std::__hash_value_type<AG::Subgraph *,AG::Graph::TreeDataElement>>>::find<AG::Subgraph *>(void *a1, void *a2)
{
  v2 = a1[1];
  if (!*&v2)
  {
    return 0;
  }

  v3 = 0x9DDFEA08EB382D69 * ((8 * (*a2 & 0x1FFFFFFFLL) + 8) ^ HIDWORD(*a2));
  v4 = 0x9DDFEA08EB382D69 * (HIDWORD(*a2) ^ (v3 >> 47) ^ v3);
  v5 = 0x9DDFEA08EB382D69 * (v4 ^ (v4 >> 47));
  v6 = vcnt_s8(v2);
  v6.i16[0] = vaddlv_u8(v6);
  if (v6.u32[0] > 1uLL)
  {
    v7 = v5;
    if (v5 >= *&v2)
    {
      v7 = v5 % *&v2;
    }
  }

  else
  {
    v7 = v5 & (*&v2 - 1);
  }

  v8 = *(*a1 + 8 * v7);
  if (!v8)
  {
    return 0;
  }

  result = *v8;
  if (*v8)
  {
    do
    {
      v10 = result[1];
      if (v10 == v5)
      {
        if (result[2] == *a2)
        {
          return result;
        }
      }

      else
      {
        if (v6.u32[0] > 1uLL)
        {
          if (v10 >= *&v2)
          {
            v10 %= *&v2;
          }
        }

        else
        {
          v10 &= *&v2 - 1;
        }

        if (v10 != v7)
        {
          return 0;
        }
      }

      result = *result;
    }

    while (result);
  }

  return result;
}

void AG::Graph::remove_input_edge()
{
  OUTLINED_FUNCTION_3();
  do
  {
    v3 = OUTLINED_FUNCTION_2(*v1);
    (*(v4 + 240))(v3, v2, v0);
    OUTLINED_FUNCTION_4();
  }

  while (!v5);
}

unsigned int *AG::Node::destroy_self(unsigned int *this, AG::Graph *a2)
{
  v3 = *this;
  if ((v3 & 0x20) != 0)
  {
    v4 = this;
    *this = v3 & 0xFFFFFFDF;
    v5 = *(*(a2 + 11) + ((v3 >> 5) & 0x7FFFFF8));
    if ((*(v5 + 40) & 4) != 0)
    {
      v6 = (this + *(v5 + 44));
      if (*(this + 7))
      {
        v6 = *v6;
      }

      (*(*(v5 + 32) + 16))(v5, v6);
    }

    v7 = *(*(*v5 - 8) + 8);
    v8 = (v4 + *(v5 + 44));
    if (*(v4 + 7))
    {
      v8 = *v8;
    }

    return v7(v8);
  }

  return this;
}

unsigned int *AG::Node::destroy_value(unsigned int *this, AG::Graph *a2)
{
  v2 = *this;
  if ((v2 & 0x10) != 0)
  {
    *this = v2 & 0xFFFFFFEF;
    v3 = *(*(*(*(a2 + 11) + ((v2 >> 5) & 0x7FFFFF8)) + 8) - 8);
    v4 = (AG::data::_shared_table_bytes + this[2]);
    if ((*(this + 7) & 2) != 0)
    {
      v4 = *v4;
    }

    return (*(v3 + 8))(v4);
  }

  return this;
}

void *AG::vector<unsigned long,16ul,unsigned long>::reserve_slow(void *__dst, size_t a2)
{
  if (*(__dst + 18) + (*(__dst + 18) >> 1) <= a2)
  {
    v3 = a2;
  }

  else
  {
    v3 = *(__dst + 18) + (*(__dst + 18) >> 1);
  }

  result = AG::details::realloc_vector<unsigned long,8ul>(*(__dst + 16), __dst, 0x10uLL, __dst + 18, v3);
  *(__dst + 16) = result;
  return result;
}

uint64_t AG::Graph::remove_all_inputs(uint64_t a1, unsigned int a2)
{
  v3 = a2;
  v4 = AG::data::_shared_table_bytes + a2;
  v5 = *(v4 + 12);
  if (v5 >= 0x20)
  {
    v6 = (v5 >> 5) - 1;
    v7 = (5 * (v5 >> 5) + *(v4 + 16) + AG::data::_shared_table_bytes - 5);
    do
    {
      v8 = *v7;
      v7 = (v7 - 5);
      AG::Graph::remove_input_dependencies(a1, v3, v8);
      AG::Graph::remove_input_edge(a1, v3, v4, v6--);
    }

    while (v6 != -1);
  }

  return AG::Graph::all_inputs_removed(a1, v3);
}

void *AGTupleElementType(void *result, const char *a2)
{
  if (*result == 769)
  {
    if (result[1] > a2)
    {
      return result[2 * a2 + 3];
    }

LABEL_5:
    AG::precondition_failure("index out of range: %d", a2, a2);
  }

  if (a2)
  {
    goto LABEL_5;
  }

  return result;
}

uint64_t AGGraphGetContext(uint64_t a1, const char *a2)
{
  if (*(a1 + 88) == 1)
  {
    AG::Graph::Context::from_cf(a1, a2);
  }

  return *(a1 + 24);
}

void AG::Subgraph::graph_destroyed()
{
  OUTLINED_FUNCTION_0();
  do
  {
    v1 = OUTLINED_FUNCTION_1();
    (*(v2 + 192))(v1, v0);
    OUTLINED_FUNCTION_7();
  }

  while (!v3);
}

void *AG::vector<unsigned char,512ul,unsigned long>::reserve_slow(void *__dst, size_t a2)
{
  if (*(__dst + 66) + (*(__dst + 66) >> 1) <= a2)
  {
    v3 = a2;
  }

  else
  {
    v3 = *(__dst + 66) + (*(__dst + 66) >> 1);
  }

  result = AG::details::realloc_vector<unsigned long,1ul>(*(__dst + 64), __dst, 0x200uLL, __dst + 66, v3);
  *(__dst + 64) = result;
  return result;
}

void *AG::details::realloc_vector<unsigned long,1ul>(void *__src, void *__dst, size_t a3, size_t *a4, size_t __n)
{
  v7 = __src;
  if (__n <= a3)
  {
    if (__src)
    {
      v9 = a3;
      memcpy(__dst, __src, __n);
      free(v7);
      v12 = 0;
LABEL_8:
      *a4 = v9;
      return v12;
    }
  }

  else
  {
    v8 = malloc_good_size(__n);
    if (v8 != *a4)
    {
      v9 = v8;
      v10 = malloc_type_realloc(v7, v8, 0xC199B67EuLL);
      if (!v10)
      {
        AG::precondition_failure("allocation failure", v11);
      }

      v12 = v10;
      if (!v7)
      {
        memcpy(v10, __dst, *a4);
      }

      goto LABEL_8;
    }
  }

  return v7;
}

uint64_t AG::Graph::indirect_attribute_reset(uint64_t a1, const char *a2, char a3, char a4)
{
  v4 = a2;
  v5 = AG::data::_shared_table_bytes + a2;
  if ((*(v5 + 8) & 1) == 0)
  {
    AG::precondition_failure("not an indirect attribute: %u", a2, a2 | 1);
  }

  v9 = *v5;
  v10 = *(v5 + 28);
  if ((v10 & 0xFFFFFFFC) != 0 && (v11 = AG::data::table::raw_page_seed(&AG::data::_shared_table_bytes, (*(v5 + 28) & 0xFFFFFE00)), (v11 & 0x100000000) != 0) && HIDWORD(v10) == v11)
  {
    v13 = *(v5 + 28);
    v12 = *(v5 + 32);
    v14 = *(v5 + 36);
  }

  else
  {
    result = 0;
    if (a3)
    {
      return result;
    }

    v12 = 0;
    v14 = 0;
    v13 = 2;
  }

  v16 = 2;
  if (v9 >= 4)
  {
    v17 = AG::data::table::raw_page_seed(&AG::data::_shared_table_bytes, (v9 & 0xFFFFFE00));
    if ((BYTE4(v17) & (HIDWORD(v9) == v17)) != 0)
    {
      v16 = v9;
    }

    else
    {
      v16 = 2;
    }
  }

  v18 = 2;
  if (v13 >= 4)
  {
    v19 = AG::data::table::raw_page_seed(&AG::data::_shared_table_bytes, (v13 & 0xFFFFFE00));
    if ((BYTE4(v19) & (v12 == v19)) != 0)
    {
      v18 = v13;
    }

    else
    {
      v18 = 2;
    }
  }

  v20 = *(a1 + 176);
  if (v20)
  {
    AG::Graph::indirect_attribute_reset(v18, v20, (a1 + 168), v4);
  }

  if (v16 != v18)
  {
    AG::Graph::remove_input_dependencies(a1, (v4 & 0xFFFFFFFE | 1), v16);
  }

  AG::IndirectNode::modify(v5, v13 | (v12 << 32), v14);
  if (v18 >= 4)
  {
    if (a4)
    {
      v23 = 0;
    }

    else
    {
      v21 = *(AG::data::_shared_table_bytes + (v18 & 0xFFFFFE00));
      if (v21)
      {
        v21 = *(v21 + 48);
      }

      v22 = *(AG::data::_shared_table_bytes + (v4 & 0xFFFFFE00));
      if (v22)
      {
        v22 = *(v22 + 48);
      }

      v23 = 2 * (v21 != v22);
    }

    *(v5 + 8) = *(v5 + 8) & 0xFFFFFFFD | v23;
  }

  v24 = v4 & 0xFFFFFFFE;
  if (v16 != v18)
  {
    AG::Graph::add_input_dependencies(a1, (v24 | 1), v18);
  }

  AG::Graph::mark_changed(a1);
  AG::Graph::propagate_dirty(a1);
  return 1;
}

void AGTupleWithBuffer(uint64_t a1, uint64_t a2, void (*a3)(uint64_t, char *))
{
  v9[1] = *MEMORY[0x1E69E9840];
  v5 = *(*(a1 - 8) + 72) * a2;
  if (v5 <= 0x1000)
  {
    MEMORY[0x1EEE9AC00](a1);
    v7 = v9 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
    bzero(v7, v5);
  }

  else
  {
    v7 = malloc_type_malloc(v5, 0x100004077774924uLL);
    if (!v7)
    {
      AG::precondition_failure("memory allocation failure", v6);
    }
  }

  a3(a1, v7);
  if (v5 > 0x1000)
  {
    free(v7);
  }

  v8 = *MEMORY[0x1E69E9840];
}

uint64_t AGGraphSetUpdate(uint64_t result)
{
  v1 = AG::Graph::_current_update_key;
  *(_ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3)) + 8 * v1) = result;
  return result;
}

void AGSubgraphSetCurrent(void *a1)
{
  v1 = AG::Subgraph::_current_subgraph_key;
  StatusReg = _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
  v3 = *(StatusReg + 8 * v1);
  if (!a1)
  {
    *(StatusReg + 8 * v1) = 0;
    if (!v3)
    {
      return;
    }

    goto LABEL_7;
  }

  v4 = a1[2];
  *(StatusReg + 8 * v1) = v4;
  if (v4)
  {
    CFRetain(a1);
  }

  if (v3)
  {
LABEL_7:
    v5 = *(v3 + 32);
    if (v5)
    {

      CFRelease(v5);
    }
  }
}

void AG::Graph::UpdateStack::update(char a1, AG::Graph **a2)
{
  if ((a1 & 1) != 0 && *(*a2 + 48) != -1)
  {
    v2 = AG::Graph::passed_deadline_slow(*a2);
    if (v2)
    {
      AG::Graph::UpdateStack::cancel(v2);
    }
  }
}

uint64_t AG::Graph::passed_deadline_slow(AG::Graph *this)
{
  if (!*(this + 48))
  {
    return 1;
  }

  if (mach_absolute_time() < *(this + 48))
  {
    return 0;
  }

  v3 = *(this + 44);
  if (v3)
  {
    AG::Graph::passed_deadline_slow(v3, this + 21);
  }

  *(this + 48) = 0;
  return 1;
}

uint64_t sub_1B4920C74@<X0>(unint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  result = AGWeakAttributeGetAttribute(*a1);
  if (result == 2)
  {
    v4 = 0;
  }

  else
  {
    v4 = result;
  }

  *a2 = v4;
  *(a2 + 4) = result == 2;
  return result;
}

uint64_t sub_1B4920CC0()
{
  v1 = *v0;
  v2 = v0[1];
  sub_1B4949CE8();
  return sub_1B4949CE8();
}

_DWORD *sub_1B4920D60@<X0>(_DWORD *result@<X0>, uint64_t a2@<X8>)
{
  *a2 = *result;
  *(a2 + 4) = 0;
  return result;
}

uint64_t sub_1B4920DB4(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 16))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1B4920DD4(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *result = (a2 - 1);
    *(result + 8) = 0;
    if (!a3)
    {
      return result;
    }

    v3 = 1;
  }

  else
  {
    if (!a3)
    {
      return result;
    }

    v3 = 0;
  }

  *(result + 16) = v3;
  return result;
}

uint64_t sub_1B4920E28(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = *MEMORY[0x1E69E9840];
  v4 = *MEMORY[0x1E69E9840];

  return sub_1B49408F4(a1, a2, a3, a4);
}

__n128 sub_1B4920E8C(__n128 *a1, __n128 *a2)
{
  result = *a1;
  *a2 = *a1;
  return result;
}

uint64_t sub_1B4920ED8@<X0>(unsigned int *a1@<X0>, const char *a2@<X1>, uint64_t a3@<X8>)
{
  result = AGGraphGetIndirectDependency(*a1, a2);
  if (result == 2)
  {
    v5 = 0;
  }

  else
  {
    v5 = result;
  }

  *a3 = v5;
  *(a3 + 4) = result == 2;
  return result;
}

void sub_1B4920F20(uint64_t a1, unsigned int *a2)
{
  if (*(a1 + 4))
  {
    v2 = &AGAttributeNil;
  }

  else
  {
    v2 = a1;
  }

  AGGraphSetIndirectDependency(*a2, *v2);
}

uint64_t sub_1B4920F44@<X0>(unsigned int *a1@<X0>, const char *a2@<X1>, _DWORD *a3@<X8>)
{
  result = AGGraphGetFlags(*a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1B4920F9C(uint64_t a1, int *a2, uint64_t a3, uint64_t a4)
{
  v6 = *MEMORY[0x1E69E9840];
  result = sub_1B4941D6C(a1, a2, a3, a4, sub_1B4942BE4);
  v5 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t sub_1B4921008(uint64_t a1, int *a2, uint64_t a3, uint64_t a4)
{
  v6 = *MEMORY[0x1E69E9840];
  result = sub_1B4941D6C(a1, a2, a3, a4, sub_1B4942BE4);
  v5 = *MEMORY[0x1E69E9840];
  return result;
}

void *sub_1B49210A8@<X0>(void *result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v4 = *(a2 + a3 - 8);
  if (v4 == *result)
  {
    return (*(*(v4 - 8) + 16))(a4, result[1]);
  }

  __break(1u);
  return result;
}

uint64_t sub_1B49210F0(uint64_t result, void *a2, uint64_t a3, uint64_t a4)
{
  v4 = *(a3 + a4 - 8);
  if (v4 == *a2)
  {
    return (*(*(v4 - 8) + 24))(a2[1], result);
  }

  __break(1u);
  return result;
}

uint64_t sub_1B4921154@<X0>(uint64_t a1@<X0>, const char **a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v5 = *(a2 + a3 - 8);
  v6 = *(a1 + 8);
  v7 = AGTupleElementOffsetChecked(*a1, *a2, v5);
  v8 = *(*(v5 - 1) + 16);

  return v8(a4, v6 + v7, v5);
}

uint64_t sub_1B49211D8(uint64_t a1, uint64_t a2, const char **a3, uint64_t a4)
{
  v5 = *(a3 + a4 - 8);
  v6 = *(a2 + 8);
  v7 = AGTupleElementOffsetChecked(*a2, *a3, v5);
  v8 = *(*(v5 - 1) + 24);
  v9 = v6 + v7;

  return v8(v9, a1, v5);
}

uint64_t sub_1B492126C@<X0>(unsigned int *a1@<X0>, _DWORD *a2@<X8>)
{
  result = AGGraphGetIndirectAttribute(*a1);
  *a2 = result;
  return result;
}

uint64_t sub_1B49212C0@<X0>(unsigned int *a1@<X0>, const char *a2@<X1>, uint64_t a3@<X8>)
{
  result = AGGraphGetIndirectDependency(*a1, a2);
  if (result == 2)
  {
    v5 = 0;
  }

  else
  {
    v5 = result;
  }

  *a3 = v5;
  *(a3 + 4) = result == 2;
  return result;
}

void sub_1B4921308(uint64_t a1, unsigned int *a2)
{
  if (*(a1 + 4))
  {
    v2 = &AGAttributeNil;
  }

  else
  {
    v2 = a1;
  }

  AGGraphSetIndirectDependency(*a2, *v2);
}

uint64_t sub_1B492133C(uint64_t a1, _DWORD *a2, uint64_t a3, uint64_t a4)
{
  v6 = *MEMORY[0x1E69E9840];
  result = sub_1B49452B4(a1, a2, a3, a4, sub_1B4945C64);
  v5 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t sub_1B49213A8(uint64_t a1, _DWORD *a2, uint64_t a3, uint64_t a4)
{
  v6 = *MEMORY[0x1E69E9840];
  result = sub_1B49452B4(a1, a2, a3, a4, sub_1B4945C64);
  v5 = *MEMORY[0x1E69E9840];
  return result;
}

__n128 sub_1B4921448@<Q0>(__n128 *a1@<X8>)
{
  result = *v1;
  *a1 = *v1;
  return result;
}

uint64_t sub_1B4921458(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = *MEMORY[0x1E69E9840];
  v4 = *MEMORY[0x1E69E9840];

  return sub_1B4947258(a1, a2, a3, a4);
}

__n128 sub_1B492155C(__n128 *a1, __n128 *a2)
{
  result = *a1;
  *a2 = *a1;
  return result;
}

int *sub_1B4921568@<X0>(int *result@<X0>, uint64_t a2@<X8>)
{
  v2 = *result;
  v3 = *result == 2;
  if (*result == 2)
  {
    v2 = 0;
  }

  *a2 = v2;
  *(a2 + 4) = v3;
  return result;
}

uint64_t sub_1B4921590(uint64_t result, int *a2)
{
  if (*(result + 4))
  {
    v2 = &AGAttributeNil;
  }

  else
  {
    v2 = result;
  }

  *a2 = *v2;
  return result;
}

uint64_t AG::Graph::TraceRecorder::TraceRecorder(uint64_t a1, uint64_t a2, int a3, const char **a4, uint64_t a5)
{
  v19 = *MEMORY[0x1E69E9840];
  *a1 = &unk_1F2CB1ED8;
  v10 = AGMakeUniqueID();
  *a1 = &unk_1F2CB2058;
  *(a1 + 8) = v10;
  *(a1 + 16) = &unk_1F2CB21E0;
  *(a1 + 24) = a2;
  AG::Encoder::Encoder(a1 + 32);
  *(a1 + 112) = 0;
  *(a1 + 104) = a3;
  *(a1 + 120) = 0;
  *(a1 + 128) = 0;
  *(a1 + 240) = 0;
  *(a1 + 216) = 0;
  *(a1 + 224) = 0;
  *(a1 + 228) = 1;
  *(a1 + 248) = 0;
  if (a5)
  {
    v11 = *(a1 + 120);
    v12 = 8 * a5;
    do
    {
      v13 = strdup(*a4);
      v14 = v11 + 1;
      if (*(a1 + 128) < v11 + 1)
      {
        AG::vector<std::unique_ptr<char const,util::free_deleter>,0ul,unsigned long>::reserve_slow(a1 + 112, v14);
        v11 = *(a1 + 120);
        v14 = v11 + 1;
      }

      *(*(a1 + 112) + 8 * v11) = v13;
      *(a1 + 120) = v14;
      ++a4;
      v11 = v14;
      v12 -= 8;
    }

    while (v12);
  }

  array = AGGraphCreate;
  backtrace_image_offsets(&array, &image_offsets, 1);
  uuid_copy((a1 + 200), image_offsets.uuid);
  v15 = *MEMORY[0x1E69E9840];
  return a1;
}

void sub_1B49217C4(_Unwind_Exception *a1)
{
  if (*v3)
  {
    free(*v3);
  }

  v5 = *(v1 + 216);
  *(v1 + 216) = 0;
  if (v5)
  {
    MEMORY[0x1B8C7ACE0](v5, 0x1000C4077774924);
  }

  util::UntypedTable::~UntypedTable((v2 + 24));
  AG::vector<std::unique_ptr<char const,util::free_deleter>,0ul,unsigned long>::~vector(v2);
  AG::Encoder::~Encoder((v1 + 32));
  _Unwind_Resume(a1);
}

void AG::Graph::TraceRecorder::~TraceRecorder(AG::Graph::TraceRecorder *this)
{
  AG::Encoder::flush(this + 4);
  v2 = *(this + 30);
  if (v2)
  {
    free(v2);
  }

  v3 = *(this + 27);
  *(this + 27) = 0;
  if (v3)
  {
    MEMORY[0x1B8C7ACE0](v3, 0x1000C4077774924);
  }

  util::UntypedTable::~UntypedTable((this + 136));
  v5 = *(this + 14);
  v4 = *(this + 15);
  if (v4)
  {
    for (i = 0; i < v4; ++i)
    {
      v7 = v5[i];
      v5[i] = 0;
      if (v7)
      {
        free(v7);
        v4 = *(this + 15);
      }
    }

    v5 = *(this + 14);
  }

  if (v5)
  {
    free(v5);
  }

  v8 = *(this + 10);
  if (v8)
  {
    free(v8);
  }

  v9 = *(this + 7);
  if (v9)
  {
    free(v9);
  }
}

{
  AG::Graph::TraceRecorder::~TraceRecorder(this);

  JUMPOUT(0x1B8C7ACE0);
}

void AG::Graph::TraceRecorder::field_timestamp(AG::Graph::TraceRecorder *this, AG::Encoder *a2)
{
  v3 = AG::current_time(this);
  if (v3 != 0.0)
  {
    v4 = *&v3;
    AG::Encoder::encode_varint(a2, 0x11uLL);

    AG::Encoder::encode_fixed64(a2, v4);
  }
}

void AG::Graph::TraceRecorder::field_backtrace(AG::Graph::TraceRecorder *this, AG::Encoder *a2, uint64_t a3, int a4)
{
  v67 = *MEMORY[0x1E69E9840];
  if ((a4 & ~*(this + 26)) == 0)
  {
    v65 = 0u;
    v64 = 0u;
    v63 = 0u;
    v62 = 0u;
    v61 = 0u;
    v60 = 0u;
    v59 = 0u;
    v58 = 0u;
    v57 = 0u;
    v56 = 0u;
    v55 = 0u;
    v54 = 0u;
    v53 = 0u;
    v52 = 0u;
    v51 = 0u;
    v50 = 0u;
    v49 = 0u;
    v48 = 0u;
    v47 = 0u;
    v46 = 0u;
    v45 = 0u;
    v44 = 0u;
    v43 = 0u;
    v42 = 0u;
    v41 = 0u;
    v40 = 0u;
    v39 = 0u;
    v38 = 0u;
    v37 = 0u;
    v36 = 0u;
    v35 = 0u;
    *array = 0u;
    v7 = backtrace(array, 64);
    backtrace_image_offsets(array, &image_offsets, v7);
    if ((atomic_load_explicit(&qword_1ED56D380, memory_order_acquire) & 1) == 0)
    {
      AG::Graph::TraceRecorder::field_backtrace();
    }

    if (v7 >= 1)
    {
      v8 = _MergedGlobals;
      if (_MergedGlobals >= 1)
      {
        p_image_offsets = &image_offsets;
        v10 = array;
        v11 = 1;
        v26 = (8 * a3) | 2;
        v12 = v7;
        do
        {
          if (p_image_offsets->offset && !uuid_is_null(p_image_offsets->uuid) && uuid_compare(p_image_offsets->uuid, this + 200))
          {
            AG::Encoder::encode_varint(a2, v26);
            AG::Encoder::begin_length_delimited(a2);
            *out = 0;
            v13 = util::UntypedTable::lookup((this + 136), p_image_offsets, out);
            if (*out)
            {
              v14 = v13;
            }

            else
            {
              v14 = *(this + 44);
              v15 = malloc_type_malloc(0x10uLL, 0x1000040451B5BE8uLL);
              *v15 = *p_image_offsets->uuid;
              util::UntypedTable::insert((this + 136), v15, v14);
              v16 = *v10;
              AG::Encoder::encode_varint(a2, 0x1AuLL);
              AG::Encoder::begin_length_delimited(a2);
              memset(out, 0, sizeof(out));
              uuid_unparse(v15, out);
              AG::Encoder::encode_varint(a2, 0xAuLL);
              AG::Encoder::encode_data(a2, out, 0x24uLL);
              if (dladdr(v16, &v27))
              {
                dli_fname = v27.dli_fname;
                if (v27.dli_fname)
                {
                  v18 = strlen(v27.dli_fname);
                  if (v18)
                  {
                    v19 = v18;
                    AG::Encoder::encode_varint(a2, 0x12uLL);
                    AG::Encoder::encode_data(a2, dli_fname, v19);
                  }
                }

                dli_fbase = v27.dli_fbase;
                if (v27.dli_fbase)
                {
                  AG::Encoder::encode_varint(a2, 0x18uLL);
                  AG::Encoder::encode_varint(a2, dli_fbase);
                  v21 = ~*MEMORY[0x1E69E9AB8];
                  size = 0;
                  address = v21 & v27.dli_fbase;
                  object_name = 0;
                  infoCnt = 9;
                  v22 = mach_vm_region(*MEMORY[0x1E69E9A60], &address, &size, 9, info, &infoCnt, &object_name);
                  if (object_name)
                  {
                    mach_port_deallocate(*MEMORY[0x1E69E9A60], object_name);
                  }

                  if (!v22)
                  {
                    v23 = size;
                    if (size)
                    {
                      AG::Encoder::encode_varint(a2, 0x20uLL);
                      AG::Encoder::encode_varint(a2, v23);
                    }
                  }
                }
              }

              AG::Encoder::end_length_delimited(a2);
            }

            if (v14)
            {
              AG::Encoder::encode_varint(a2, 8uLL);
              AG::Encoder::encode_varint(a2, v14);
            }

            offset = p_image_offsets->offset;
            if (offset)
            {
              AG::Encoder::encode_varint(a2, 0x10uLL);
              AG::Encoder::encode_varint(a2, offset);
            }

            AG::Encoder::end_length_delimited(a2);
            --v8;
          }

          if (v11 >= v12)
          {
            break;
          }

          ++p_image_offsets;
          ++v10;
          ++v11;
        }

        while (v8 > 0);
      }
    }
  }

  v25 = *MEMORY[0x1E69E9840];
}

uint64_t AG::Graph::TraceRecorder::field_backtrace(AG::Encoder &,unsigned long,unsigned int)::$_0::operator()()
{
  v0 = getenv("AG_TRACE_STACK_FRAMES");
  if (!v0)
  {
    return 8;
  }

  return atoi(v0);
}

uint64_t (***AG::Graph::TraceRecorder::encode_stack(uint64_t (***this)(void *, void *)))(void *, void *)
{
  v1 = AG::Graph::_current_update_key;
  v2 = *(_ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3)) + 8 * v1);
  if (v2)
  {
    v3 = this;
    AG::Encoder::encode_varint(this + 4, 0x2AuLL);
    AG::Encoder::begin_length_delimited(v3 + 4);
    do
    {
      v4 = v2 & 0xFFFFFFFFFFFFFFFELL;
      v5 = *((v2 & 0xFFFFFFFFFFFFFFFELL) + 104);
      if (v5)
      {
        v6 = 8 * v5 - 4;
        do
        {
          AG::Encoder::encode_varint(v3 + 4, 0xAuLL);
          AG::Encoder::begin_length_delimited(v3 + 4);
          v7 = *(v4 + 96);
          if (v7)
          {
            v8 = *(v4 + 96);
          }

          else
          {
            v8 = v4 + 32;
          }

          v9 = *(v8 + v6 - 4);
          if (v9)
          {
            AG::Encoder::encode_varint(v3 + 4, 8uLL);
            AG::Encoder::encode_varint(v3 + 4, v9);
            v7 = *(v4 + 96);
          }

          if (v7)
          {
            v10 = v7;
          }

          else
          {
            v10 = v4 + 32;
          }

          if (*(v10 + v6))
          {
            AG::Encoder::encode_varint(v3 + 4, 0x10uLL);
            AG::Encoder::encode_varint(v3 + 4, 1uLL);
            v7 = *(v4 + 96);
          }

          if (!v7)
          {
            v7 = v4 + 32;
          }

          if ((*(v7 + v6) & 2) != 0)
          {
            AG::Encoder::encode_varint(v3 + 4, 0x18uLL);
            AG::Encoder::encode_varint(v3 + 4, 1uLL);
          }

          --v5;
          AG::Encoder::end_length_delimited(v3 + 4);
          v6 -= 8;
        }

        while (v5);
      }

      v2 = *(v4 + 16);
    }

    while (v2);

    return AG::Encoder::end_length_delimited(v3 + 4);
  }

  return this;
}

uint64_t (***AG::Graph::TraceRecorder::encode_types(uint64_t (***this)(void *, void *)))(void *, void *)
{
  v1 = *(this[3] + 24);
  v2 = *(this + 57);
  if (v1 > v2)
  {
    v3 = this;
    do
    {
      v4 = *(v3[3][11] + v2);
      AG::Encoder::encode_varint(v3 + 4, 0x1AuLL);
      AG::Encoder::begin_length_delimited(v3 + 4);
      if (v2)
      {
        AG::Encoder::encode_varint(v3 + 4, 8uLL);
        AG::Encoder::encode_varint(v3 + 4, v2);
      }

      v5 = AG::swift::metadata::name(*v4, 0);
      v6 = strlen(v5);
      if (v6)
      {
        v7 = v6;
        AG::Encoder::encode_varint(v3 + 4, 0x12uLL);
        AG::Encoder::encode_data((v3 + 4), v5, v7);
      }

      v8 = AG::swift::metadata::name(*(v4 + 8), 0);
      v9 = strlen(v8);
      if (v9)
      {
        v10 = v9;
        AG::Encoder::encode_varint(v3 + 4, 0x1AuLL);
        AG::Encoder::encode_data((v3 + 4), v8, v10);
      }

      v11 = *(*(*v4 - 8) + 64);
      if (v11)
      {
        AG::Encoder::encode_varint(v3 + 4, 0x20uLL);
        AG::Encoder::encode_varint(v3 + 4, v11);
      }

      v12 = *(*(*(v4 + 8) - 8) + 64);
      if (v12)
      {
        AG::Encoder::encode_varint(v3 + 4, 0x28uLL);
        AG::Encoder::encode_varint(v3 + 4, v12);
      }

      v13 = *(v4 + 40);
      if (v13)
      {
        AG::Encoder::encode_varint(v3 + 4, 0x30uLL);
        AG::Encoder::encode_varint(v3 + 4, v13);
      }

      this = AG::Encoder::end_length_delimited(v3 + 4);
      v2 = *(v3 + 57) + 1;
      *(v3 + 57) = v2;
    }

    while (v1 > v2);
  }

  return this;
}

uint64_t AG::Graph::TraceRecorder::encode_keys(uint64_t this)
{
  v1 = *(*(this + 24) + 288);
  if (v1)
  {
    v2 = this;
    v3 = *(v1 + 8);
    for (i = *(this + 232); v3 > i; *(v2 + 232) = i)
    {
      this = AG::Graph::key_name(*(v2 + 24), i);
      if (this)
      {
        v5 = this;
        v6 = *(v2 + 232);
        AG::Encoder::encode_varint((v2 + 32), 0x22uLL);
        AG::Encoder::begin_length_delimited((v2 + 32));
        if (v6)
        {
          AG::Encoder::encode_varint((v2 + 32), 8uLL);
          AG::Encoder::encode_varint((v2 + 32), v6);
        }

        v7 = strlen(v5);
        if (v7)
        {
          v8 = v7;
          AG::Encoder::encode_varint((v2 + 32), 0x12uLL);
          AG::Encoder::encode_data((v2 + 32), v5, v8);
        }

        this = AG::Encoder::end_length_delimited((v2 + 32));
      }

      i = (*(v2 + 232) + 1);
    }
  }

  return this;
}

uint64_t (***AG::Graph::TraceRecorder::encode_snapshot(uint64_t (***this)(void *, void *)))(void *, void *)
{
  if ((this[13] & 0x10) == 0)
  {
    v1 = this;
    AG::Graph::TraceRecorder::encode_types(this);
    AG::Graph::TraceRecorder::encode_keys(v1);
    AG::Encoder::encode_varint((v1 + 32), 0xAuLL);
    AG::Encoder::begin_length_delimited((v1 + 32));
    AG::Encoder::encode_varint((v1 + 32), 8uLL);
    v2 = AG::Encoder::encode_varint((v1 + 32), 0x11uLL);
    AG::Graph::TraceRecorder::field_timestamp(v2, (v1 + 32));
    AG::Encoder::end_length_delimited((v1 + 32));
    v3 = *(v1 + 24);
    v4 = *(v3 + 304);
    if (v4)
    {
      v5 = *(v3 + 296);
      v6 = 8 * v4;
      do
      {
        v7 = *v5;
        if (!*(*v5 + 104))
        {
          AG::Encoder::encode_varint((v1 + 32), 0x12uLL);
          AG::Encoder::begin_length_delimited((v1 + 32));
          AG::Subgraph::encode(v7, (v1 + 32));
          AG::Encoder::end_length_delimited((v1 + 32));
        }

        ++v5;
        v6 -= 8;
      }

      while (v6);
    }

    AG::Graph::TraceRecorder::encode_stack(v1);
    AG::Encoder::encode_varint((v1 + 32), 0xAuLL);
    AG::Encoder::begin_length_delimited((v1 + 32));
    AG::Encoder::encode_varint((v1 + 32), 8uLL);
    v8 = AG::Encoder::encode_varint((v1 + 32), 0x12uLL);
    AG::Graph::TraceRecorder::field_timestamp(v8, (v1 + 32));

    return AG::Encoder::end_length_delimited((v1 + 32));
  }

  return this;
}

uint64_t AG::Graph::TraceRecorder::flush_encoder(const char **this, AG::Encoder *a2)
{
  v23 = *MEMORY[0x1E69E9840];
  if (this[28])
  {
    result = open(this[27], 9, 438);
    v5 = result;
  }

  else
  {
    *(this + 224) = 1;
    v6 = getenv("AG_TRACE_FILE");
    if (v6)
    {
      v7 = v6;
    }

    else
    {
      v7 = "trace";
    }

    v8 = "";
    v9 = "";
    if (*v7 != 47)
    {
      v10 = getenv("TMPDIR");
      if (!v10 || (v9 = v10, !*v10))
      {
        v9 = "/tmp";
      }

      if (v9[strlen(v9) - 1] != 47)
      {
        v8 = "/";
      }
    }

    v11 = 1;
    while (1)
    {
      *buf = 0;
      asprintf(buf, "%s%s%s-%04d.ag-trace", v9, v8, v7, v11);
      v5 = open(*buf, 2569, 438);
      if ((v5 & 0x80000000) == 0)
      {
        break;
      }

      free(*buf);
      v12 = __error();
      if (*v12 == 17 && v11++ != 999)
      {
        continue;
      }

      goto LABEL_20;
    }

    v12 = this[27];
    this[27] = *buf;
    if (v12)
    {
      v12 = MEMORY[0x1B8C7ACE0](v12, 0x1000C4077774924);
    }

LABEL_20:
    if (this[27])
    {
      v14 = AG::misc_log(v12);
      if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
      {
        v15 = this[27];
        *buf = 136315138;
        *&buf[4] = v15;
        _os_log_impl(&dword_1B490B000, v14, OS_LOG_TYPE_DEFAULT, "created trace file %s", buf, 0xCu);
      }

      v16 = *MEMORY[0x1E69E9848];
      v17 = this[27];
      getpid();
      result = fprintf(v16, "created trace file %s (pid %d)\n");
    }

    else
    {
      result = fprintf(*MEMORY[0x1E69E9848], "failed to create trace file: %s%s%s-XXXX.ag-trace\n");
    }
  }

  if (v5 == -1)
  {
    goto LABEL_35;
  }

  v18 = *(a2 + 4);
  if (!v18)
  {
    goto LABEL_34;
  }

  v19 = *(a2 + 3);
  while (1)
  {
    v20 = write(v5, v19, v18);
    if (v20 < 0)
    {
      break;
    }

    v19 += v20;
    v18 -= v20;
LABEL_31:
    if (!v18)
    {
      goto LABEL_34;
    }
  }

  if (*__error() == 4)
  {
    goto LABEL_31;
  }

  unlink(this[27]);
LABEL_34:
  result = close(v5);
LABEL_35:
  v21 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t (***AG::Graph::TraceRecorder::begin_trace(AG::Graph::TraceRecorder *this, AG::Graph *a2))(void *, void *)
{
  AG::Encoder::encode_varint(this + 4, 0xAuLL);
  AG::Encoder::begin_length_delimited(this + 4);
  AG::Encoder::encode_varint(this + 4, 8uLL);
  v3 = AG::Encoder::encode_varint(this + 4, 1uLL);
  AG::Graph::TraceRecorder::field_timestamp(v3, (this + 32));

  return AG::Encoder::end_length_delimited(this + 4);
}

uint64_t (***AG::Graph::TraceRecorder::end_trace(AG::Graph::TraceRecorder *this, AG::Graph *a2))(void *, void *)
{
  AG::Encoder::encode_varint(this + 4, 0xAuLL);
  AG::Encoder::begin_length_delimited(this + 4);
  AG::Encoder::encode_varint(this + 4, 8uLL);
  v3 = AG::Encoder::encode_varint(this + 4, 2uLL);
  AG::Graph::TraceRecorder::field_timestamp(v3, (this + 32));
  AG::Encoder::end_length_delimited(this + 4);

  return AG::Graph::TraceRecorder::encode_snapshot(this);
}

uint64_t *AG::Graph::TraceRecorder::sync_trace(AG::Graph::TraceRecorder *this)
{
  AG::Graph::TraceRecorder::encode_snapshot(this);

  return AG::Encoder::flush(this + 4);
}

void AG::Graph::TraceRecorder::log_message_v(AG::Graph::TraceRecorder *this, const char *a2, va_list a3)
{
  v10 = 0;
  v11 = a3;
  if (__PAIR64__(*(a2 + 1), *a2) == 0x7300000025 && !a2[2])
  {
    v9 = v11;
    v11 += 8;
    v5 = *v9;
    v10 = v5;
    v4 = 1;
    if (!v5)
    {
      return;
    }
  }

  else
  {
    vasprintf(&v10, a2, a3);
    v4 = 0;
    v5 = v10;
    if (!v10)
    {
      return;
    }
  }

  AG::Encoder::encode_varint(this + 4, 0xAuLL);
  AG::Encoder::begin_length_delimited(this + 4);
  AG::Encoder::encode_varint(this + 4, 8uLL);
  v6 = AG::Encoder::encode_varint(this + 4, 0x33uLL);
  AG::Graph::TraceRecorder::field_timestamp(v6, (this + 32));
  AG::Graph::TraceRecorder::field_backtrace(this, (this + 32), 8, 4);
  v7 = strlen(v5);
  if (v7)
  {
    v8 = v7;
    AG::Encoder::encode_varint(this + 4, 0x4AuLL);
    AG::Encoder::encode_data((this + 32), v5, v8);
  }

  AG::Encoder::end_length_delimited(this + 4);
  AG::Graph::TraceRecorder::encode_stack(this);
  if ((v4 & 1) == 0)
  {
    free(v10);
  }
}

uint64_t (***AG::Graph::TraceRecorder::begin_update(uint64_t (***this)(void *, void *), AG::Subgraph *a2, unsigned int a3))(void *, void *)
{
  if ((this[13] & 0x10) == 0)
  {
    v5 = this;
    AG::Encoder::encode_varint(this + 4, 0xAuLL);
    AG::Encoder::begin_length_delimited(v5 + 4);
    AG::Encoder::encode_varint(v5 + 4, 8uLL);
    v6 = AG::Encoder::encode_varint(v5 + 4, 3uLL);
    AG::Graph::TraceRecorder::field_timestamp(v6, (v5 + 4));
    v7 = *(a2 + 6);
    v8 = v7 & 0x7FFFFFFF;
    if ((v7 & 0x7FFFFFFF) != 0)
    {
      AG::Encoder::encode_varint(v5 + 4, 0x18uLL);
      AG::Encoder::encode_varint(v5 + 4, v8);
    }

    if (a3)
    {
      AG::Encoder::encode_varint(v5 + 4, 0x20uLL);
      AG::Encoder::encode_varint(v5 + 4, a3);
    }

    AG::Graph::TraceRecorder::field_backtrace(v5, (v5 + 4), 8, 68);

    return AG::Encoder::end_length_delimited(v5 + 4);
  }

  return this;
}

uint64_t (***AG::Graph::TraceRecorder::end_update(uint64_t (***this)(void *, void *), AG::Subgraph *a2))(void *, void *)
{
  if ((this[13] & 0x10) == 0)
  {
    v3 = this;
    AG::Encoder::encode_varint(this + 4, 0xAuLL);
    AG::Encoder::begin_length_delimited(v3 + 4);
    AG::Encoder::encode_varint(v3 + 4, 8uLL);
    v4 = AG::Encoder::encode_varint(v3 + 4, 4uLL);
    AG::Graph::TraceRecorder::field_timestamp(v4, (v3 + 4));
    v5 = *(a2 + 6);
    v6 = v5 & 0x7FFFFFFF;
    if ((v5 & 0x7FFFFFFF) != 0)
    {
      AG::Encoder::encode_varint(v3 + 4, 0x18uLL);
      AG::Encoder::encode_varint(v3 + 4, v6);
    }

    AG::Graph::TraceRecorder::field_backtrace(v3, (v3 + 4), 8, 68);

    return AG::Encoder::end_length_delimited(v3 + 4);
  }

  return this;
}

uint64_t (***AG::Graph::TraceRecorder::begin_update(uint64_t (***result)(void *, void *), uint64_t a2, unsigned int a3, unsigned int a4))(void *, void *)
{
  if ((result[13] & 0x10) == 0)
  {
    v6 = result;
    AG::Encoder::encode_varint(result + 4, 0xAuLL);
    AG::Encoder::begin_length_delimited(v6 + 4);
    AG::Encoder::encode_varint(v6 + 4, 8uLL);
    v7 = AG::Encoder::encode_varint(v6 + 4, 5uLL);
    AG::Graph::TraceRecorder::field_timestamp(v7, (v6 + 4));
    if (a3)
    {
      AG::Encoder::encode_varint(v6 + 4, 0x18uLL);
      AG::Encoder::encode_varint(v6 + 4, a3);
    }

    if (a4)
    {
      AG::Encoder::encode_varint(v6 + 4, 0x20uLL);
      AG::Encoder::encode_varint(v6 + 4, a4);
    }

    AG::Graph::TraceRecorder::field_backtrace(v6, (v6 + 4), 8, 68);

    return AG::Encoder::end_length_delimited(v6 + 4);
  }

  return result;
}

uint64_t (***AG::Graph::TraceRecorder::end_update(uint64_t (***result)(void *, void *), uint64_t a2, unsigned int a3, int a4))(void *, void *)
{
  if ((result[13] & 0x10) == 0)
  {
    v6 = result;
    AG::Encoder::encode_varint(result + 4, 0xAuLL);
    AG::Encoder::begin_length_delimited(v6 + 4);
    AG::Encoder::encode_varint(v6 + 4, 8uLL);
    v7 = AG::Encoder::encode_varint(v6 + 4, 6uLL);
    AG::Graph::TraceRecorder::field_timestamp(v7, (v6 + 4));
    if (a3)
    {
      AG::Encoder::encode_varint(v6 + 4, 0x18uLL);
      AG::Encoder::encode_varint(v6 + 4, a3);
    }

    if (a4 == 1)
    {
      AG::Encoder::encode_varint(v6 + 4, 0x20uLL);
      AG::Encoder::encode_varint(v6 + 4, 1uLL);
    }

    AG::Graph::TraceRecorder::field_backtrace(v6, (v6 + 4), 8, 68);

    return AG::Encoder::end_length_delimited(v6 + 4);
  }

  return result;
}

uint64_t (***AG::Graph::TraceRecorder::begin_update(uint64_t (***result)(void *, void *), unsigned int a2))(void *, void *)
{
  if ((result[13] & 0x10) == 0)
  {
    v3 = result;
    AG::Encoder::encode_varint(result + 4, 0xAuLL);
    AG::Encoder::begin_length_delimited(v3 + 4);
    AG::Encoder::encode_varint(v3 + 4, 8uLL);
    v4 = AG::Encoder::encode_varint(v3 + 4, 7uLL);
    AG::Graph::TraceRecorder::field_timestamp(v4, (v3 + 4));
    if (a2)
    {
      AG::Encoder::encode_varint(v3 + 4, 0x18uLL);
      AG::Encoder::encode_varint(v3 + 4, a2);
    }

    AG::Graph::TraceRecorder::field_backtrace(v3, (v3 + 4), 8, 68);

    return AG::Encoder::end_length_delimited(v3 + 4);
  }

  return result;
}

uint64_t (***AG::Graph::TraceRecorder::end_update(uint64_t (***result)(void *, void *), unsigned int a2, int a3))(void *, void *)
{
  if ((result[13] & 0x10) == 0)
  {
    v5 = result;
    AG::Encoder::encode_varint(result + 4, 0xAuLL);
    AG::Encoder::begin_length_delimited(v5 + 4);
    AG::Encoder::encode_varint(v5 + 4, 8uLL);
    v6 = AG::Encoder::encode_varint(v5 + 4, 8uLL);
    AG::Graph::TraceRecorder::field_timestamp(v6, (v5 + 4));
    if (a2)
    {
      AG::Encoder::encode_varint(v5 + 4, 0x18uLL);
      AG::Encoder::encode_varint(v5 + 4, a2);
    }

    if (a3)
    {
      AG::Encoder::encode_varint(v5 + 4, 0x20uLL);
      AG::Encoder::encode_varint(v5 + 4, 1uLL);
    }

    AG::Graph::TraceRecorder::field_backtrace(v5, (v5 + 4), 8, 68);

    return AG::Encoder::end_length_delimited(v5 + 4);
  }

  return result;
}

uint64_t (***AG::Graph::TraceRecorder::begin_update(uint64_t (***this)(void *, void *), AG::Graph::Context *a2))(void *, void *)
{
  if ((this[13] & 0x10) == 0)
  {
    v3 = this;
    AG::Encoder::encode_varint(this + 4, 0xAuLL);
    AG::Encoder::begin_length_delimited(v3 + 4);
    AG::Encoder::encode_varint(v3 + 4, 8uLL);
    v4 = AG::Encoder::encode_varint(v3 + 4, 9uLL);
    AG::Graph::TraceRecorder::field_timestamp(v4, (v3 + 4));
    v5 = *(a2 + 4);
    if (v5)
    {
      AG::Encoder::encode_varint(v3 + 4, 0x18uLL);
      AG::Encoder::encode_varint(v3 + 4, v5);
    }

    AG::Graph::TraceRecorder::field_backtrace(v3, (v3 + 4), 8, 68);

    return AG::Encoder::end_length_delimited(v3 + 4);
  }

  return this;
}

uint64_t (***AG::Graph::TraceRecorder::end_update(uint64_t (***this)(void *, void *), AG::Graph::Context *a2))(void *, void *)
{
  if ((this[13] & 0x10) == 0)
  {
    v3 = this;
    AG::Encoder::encode_varint(this + 4, 0xAuLL);
    AG::Encoder::begin_length_delimited(v3 + 4);
    AG::Encoder::encode_varint(v3 + 4, 8uLL);
    v4 = AG::Encoder::encode_varint(v3 + 4, 0xAuLL);
    AG::Graph::TraceRecorder::field_timestamp(v4, (v3 + 4));
    v5 = *(a2 + 4);
    if (v5)
    {
      AG::Encoder::encode_varint(v3 + 4, 0x18uLL);
      AG::Encoder::encode_varint(v3 + 4, v5);
    }

    AG::Graph::TraceRecorder::field_backtrace(v3, (v3 + 4), 8, 68);

    return AG::Encoder::end_length_delimited(v3 + 4);
  }

  return this;
}

uint64_t (***AG::Graph::TraceRecorder::begin_invalidation(uint64_t (***result)(void *, void *), uint64_t a2, unsigned int a3))(void *, void *)
{
  if ((result[13] & 0x12) == 2)
  {
    v6 = result;
    AG::Encoder::encode_varint(result + 4, 0xAuLL);
    AG::Encoder::begin_length_delimited(v6 + 4);
    AG::Encoder::encode_varint(v6 + 4, 8uLL);
    v7 = AG::Encoder::encode_varint(v6 + 4, 0xBuLL);
    AG::Graph::TraceRecorder::field_timestamp(v7, (v6 + 4));
    if (a3)
    {
      AG::Encoder::encode_varint(v6 + 4, 0x18uLL);
      AG::Encoder::encode_varint(v6 + 4, a3);
    }

    v8 = *(a2 + 16);
    if (v8)
    {
      AG::Encoder::encode_varint(v6 + 4, 0x20uLL);
      AG::Encoder::encode_varint(v6 + 4, v8);
    }

    AG::Graph::TraceRecorder::field_backtrace(v6, (v6 + 4), 8, 68);

    return AG::Encoder::end_length_delimited(v6 + 4);
  }

  return result;
}

uint64_t (***AG::Graph::TraceRecorder::end_invalidation(uint64_t (***result)(void *, void *), uint64_t a2, unsigned int a3))(void *, void *)
{
  if ((result[13] & 0x12) == 2)
  {
    v6 = result;
    AG::Encoder::encode_varint(result + 4, 0xAuLL);
    AG::Encoder::begin_length_delimited(v6 + 4);
    AG::Encoder::encode_varint(v6 + 4, 8uLL);
    v7 = AG::Encoder::encode_varint(v6 + 4, 0xCuLL);
    AG::Graph::TraceRecorder::field_timestamp(v7, (v6 + 4));
    if (a3)
    {
      AG::Encoder::encode_varint(v6 + 4, 0x18uLL);
      AG::Encoder::encode_varint(v6 + 4, a3);
    }

    v8 = *(a2 + 16);
    if (v8)
    {
      AG::Encoder::encode_varint(v6 + 4, 0x20uLL);
      AG::Encoder::encode_varint(v6 + 4, v8);
    }

    AG::Graph::TraceRecorder::field_backtrace(v6, (v6 + 4), 8, 68);

    return AG::Encoder::end_length_delimited(v6 + 4);
  }

  return result;
}

uint64_t (***AG::Graph::TraceRecorder::begin_modify(uint64_t (***result)(void *, void *), unsigned int a2))(void *, void *)
{
  if ((result[13] & 0x12) == 2)
  {
    v4 = result;
    AG::Encoder::encode_varint(result + 4, 0xAuLL);
    AG::Encoder::begin_length_delimited(v4 + 4);
    AG::Encoder::encode_varint(v4 + 4, 8uLL);
    v5 = AG::Encoder::encode_varint(v4 + 4, 0xDuLL);
    AG::Graph::TraceRecorder::field_timestamp(v5, (v4 + 4));
    if (a2)
    {
      AG::Encoder::encode_varint(v4 + 4, 0x18uLL);
      AG::Encoder::encode_varint(v4 + 4, a2);
    }

    AG::Graph::TraceRecorder::field_backtrace(v4, (v4 + 4), 8, 68);

    return AG::Encoder::end_length_delimited(v4 + 4);
  }

  return result;
}

uint64_t (***AG::Graph::TraceRecorder::end_modify(uint64_t (***result)(void *, void *), int a2))(void *, void *)
{
  if ((result[13] & 0x12) == 2)
  {
    v4 = result;
    AG::Encoder::encode_varint(result + 4, 0xAuLL);
    AG::Encoder::begin_length_delimited(v4 + 4);
    AG::Encoder::encode_varint(v4 + 4, 8uLL);
    v5 = AG::Encoder::encode_varint(v4 + 4, 0xEuLL);
    AG::Graph::TraceRecorder::field_timestamp(v5, (v4 + 4));
    if (a2 || (v4[13] & 0x10) != 0)
    {
      AG::Encoder::encode_varint(v4 + 4, 0x18uLL);
      AG::Encoder::encode_varint(v4 + 4, 1uLL);
    }

    AG::Graph::TraceRecorder::field_backtrace(v4, (v4 + 4), 8, 68);

    return AG::Encoder::end_length_delimited(v4 + 4);
  }

  return result;
}

uint64_t (***AG::Graph::TraceRecorder::begin_event(uint64_t (***result)(void *, void *), unsigned int a2, unsigned int a3))(void *, void *)
{
  if ((result[13] & 0x10) == 0)
  {
    v5 = result;
    AG::Encoder::encode_varint(result + 4, 0xAuLL);
    AG::Encoder::begin_length_delimited(v5 + 4);
    AG::Encoder::encode_varint(v5 + 4, 8uLL);
    v6 = AG::Encoder::encode_varint(v5 + 4, 0xFuLL);
    AG::Graph::TraceRecorder::field_timestamp(v6, (v5 + 4));
    if (a2)
    {
      AG::Encoder::encode_varint(v5 + 4, 0x18uLL);
      AG::Encoder::encode_varint(v5 + 4, a2);
    }

    if (a3)
    {
      AG::Encoder::encode_varint(v5 + 4, 0x20uLL);
      AG::Encoder::encode_varint(v5 + 4, a3);
    }

    AG::Graph::TraceRecorder::field_backtrace(v5, (v5 + 4), 8, 68);

    return AG::Encoder::end_length_delimited(v5 + 4);
  }

  return result;
}

uint64_t (***AG::Graph::TraceRecorder::end_event(uint64_t (***result)(void *, void *), unsigned int a2, unsigned int a3))(void *, void *)
{
  if ((result[13] & 0x10) == 0)
  {
    v5 = result;
    AG::Encoder::encode_varint(result + 4, 0xAuLL);
    AG::Encoder::begin_length_delimited(v5 + 4);
    AG::Encoder::encode_varint(v5 + 4, 8uLL);
    v6 = AG::Encoder::encode_varint(v5 + 4, 0x10uLL);
    AG::Graph::TraceRecorder::field_timestamp(v6, (v5 + 4));
    if (a2)
    {
      AG::Encoder::encode_varint(v5 + 4, 0x18uLL);
      AG::Encoder::encode_varint(v5 + 4, a2);
    }

    if (a3)
    {
      AG::Encoder::encode_varint(v5 + 4, 0x20uLL);
      AG::Encoder::encode_varint(v5 + 4, a3);
    }

    AG::Graph::TraceRecorder::field_backtrace(v5, (v5 + 4), 8, 68);

    return AG::Encoder::end_length_delimited(v5 + 4);
  }

  return result;
}

uint64_t (***AG::Graph::TraceRecorder::created(uint64_t (***this)(void *, void *), AG::Graph::Context *a2))(void *, void *)
{
  if ((this[13] & 0x10) == 0)
  {
    v3 = this;
    AG::Encoder::encode_varint(this + 4, 0xAuLL);
    AG::Encoder::begin_length_delimited(v3 + 4);
    AG::Encoder::encode_varint(v3 + 4, 8uLL);
    AG::Encoder::encode_varint(v3 + 4, 0x20uLL);
    v4 = *(a2 + 2);
    if (v4)
    {
      AG::Encoder::encode_varint(v3 + 4, 0x18uLL);
      AG::Encoder::encode_varint(v3 + 4, v4);
    }

    AG::Graph::TraceRecorder::field_backtrace(v3, (v3 + 4), 8, 4);

    return AG::Encoder::end_length_delimited(v3 + 4);
  }

  return this;
}

uint64_t (***AG::Graph::TraceRecorder::destroy(uint64_t (***this)(void *, void *), AG::Graph::Context *a2))(void *, void *)
{
  if ((this[13] & 0x10) == 0)
  {
    v3 = this;
    AG::Encoder::encode_varint(this + 4, 0xAuLL);
    AG::Encoder::begin_length_delimited(v3 + 4);
    AG::Encoder::encode_varint(v3 + 4, 8uLL);
    AG::Encoder::encode_varint(v3 + 4, 0x21uLL);
    v4 = *(a2 + 2);
    if (v4)
    {
      AG::Encoder::encode_varint(v3 + 4, 0x18uLL);
      AG::Encoder::encode_varint(v3 + 4, v4);
    }

    AG::Graph::TraceRecorder::field_backtrace(v3, (v3 + 4), 8, 4);

    return AG::Encoder::end_length_delimited(v3 + 4);
  }

  return this;
}

uint64_t (***AG::Graph::TraceRecorder::needs_update(uint64_t (***this)(void *, void *), AG::Graph::Context *a2))(void *, void *)
{
  if ((this[13] & 0x12) == 2)
  {
    v4 = this;
    AG::Encoder::encode_varint(this + 4, 0xAuLL);
    AG::Encoder::begin_length_delimited(v4 + 4);
    AG::Encoder::encode_varint(v4 + 4, 8uLL);
    AG::Encoder::encode_varint(v4 + 4, 0x22uLL);
    v5 = *(a2 + 2);
    if (v5)
    {
      AG::Encoder::encode_varint(v4 + 4, 0x18uLL);
      AG::Encoder::encode_varint(v4 + 4, v5);
    }

    AG::Graph::TraceRecorder::field_backtrace(v4, (v4 + 4), 8, 68);

    return AG::Encoder::end_length_delimited(v4 + 4);
  }

  return this;
}

uint64_t (***AG::Graph::TraceRecorder::created(uint64_t (***this)(void *, void *), AG::Subgraph *a2))(void *, void *)
{
  if ((this[13] & 0x10) == 0)
  {
    v3 = this;
    AG::Encoder::encode_varint(this + 4, 0xAuLL);
    AG::Encoder::begin_length_delimited(v3 + 4);
    AG::Encoder::encode_varint(v3 + 4, 8uLL);
    AG::Encoder::encode_varint(v3 + 4, 0x23uLL);
    v4 = *(a2 + 6);
    v5 = v4 & 0x7FFFFFFF;
    if ((v4 & 0x7FFFFFFF) != 0)
    {
      AG::Encoder::encode_varint(v3 + 4, 0x18uLL);
      AG::Encoder::encode_varint(v3 + 4, v5);
    }

    v6 = *(a2 + 6);
    if (v6)
    {
      AG::Encoder::encode_varint(v3 + 4, 0x20uLL);
      AG::Encoder::encode_varint(v3 + 4, v6);
    }

    AG::Graph::TraceRecorder::field_backtrace(v3, (v3 + 4), 8, 4);

    return AG::Encoder::end_length_delimited(v3 + 4);
  }

  return this;
}

uint64_t (***AG::Graph::TraceRecorder::invalidate(uint64_t (***this)(void *, void *), AG::Subgraph *a2))(void *, void *)
{
  if ((this[13] & 0x10) == 0)
  {
    v3 = this;
    AG::Encoder::encode_varint(this + 4, 0xAuLL);
    AG::Encoder::begin_length_delimited(v3 + 4);
    AG::Encoder::encode_varint(v3 + 4, 8uLL);
    AG::Encoder::encode_varint(v3 + 4, 0x24uLL);
    v4 = *(a2 + 6);
    v5 = v4 & 0x7FFFFFFF;
    if ((v4 & 0x7FFFFFFF) != 0)
    {
      AG::Encoder::encode_varint(v3 + 4, 0x18uLL);
      AG::Encoder::encode_varint(v3 + 4, v5);
    }

    AG::Graph::TraceRecorder::field_backtrace(v3, (v3 + 4), 8, 4);
    AG::Encoder::end_length_delimited(v3 + 4);
    AG::Encoder::encode_varint(v3 + 4, 0x12uLL);
    AG::Encoder::begin_length_delimited(v3 + 4);
    AG::Subgraph::encode(a2, v3 + 4);

    return AG::Encoder::end_length_delimited(v3 + 4);
  }

  return this;
}

uint64_t (***AG::Graph::TraceRecorder::destroy(uint64_t (***this)(void *, void *), AG::Subgraph *a2))(void *, void *)
{
  if ((this[13] & 0x10) == 0)
  {
    v3 = this;
    AG::Encoder::encode_varint(this + 4, 0xAuLL);
    AG::Encoder::begin_length_delimited(v3 + 4);
    AG::Encoder::encode_varint(v3 + 4, 8uLL);
    AG::Encoder::encode_varint(v3 + 4, 0x35uLL);
    v4 = *(a2 + 6);
    v5 = v4 & 0x7FFFFFFF;
    if ((v4 & 0x7FFFFFFF) != 0)
    {
      AG::Encoder::encode_varint(v3 + 4, 0x18uLL);
      AG::Encoder::encode_varint(v3 + 4, v5);
    }

    AG::Graph::TraceRecorder::field_backtrace(v3, (v3 + 4), 8, 4);

    return AG::Encoder::end_length_delimited(v3 + 4);
  }

  return this;
}

uint64_t (***AG::Graph::TraceRecorder::add_child(uint64_t (***this)(void *, void *), AG::Subgraph *a2, AG::Subgraph *a3))(void *, void *)
{
  if ((this[13] & 0x10) == 0)
  {
    v5 = this;
    AG::Encoder::encode_varint(this + 4, 0xAuLL);
    AG::Encoder::begin_length_delimited(v5 + 4);
    AG::Encoder::encode_varint(v5 + 4, 8uLL);
    AG::Encoder::encode_varint(v5 + 4, 0x25uLL);
    v6 = *(a2 + 6);
    v7 = v6 & 0x7FFFFFFF;
    if ((v6 & 0x7FFFFFFF) != 0)
    {
      AG::Encoder::encode_varint(v5 + 4, 0x18uLL);
      AG::Encoder::encode_varint(v5 + 4, v7);
    }

    v8 = *(a3 + 6);
    v9 = v8 & 0x7FFFFFFF;
    if ((v8 & 0x7FFFFFFF) != 0)
    {
      AG::Encoder::encode_varint(v5 + 4, 0x20uLL);
      AG::Encoder::encode_varint(v5 + 4, v9);
    }

    AG::Graph::TraceRecorder::field_backtrace(v5, (v5 + 4), 8, 68);

    return AG::Encoder::end_length_delimited(v5 + 4);
  }

  return this;
}

uint64_t (***AG::Graph::TraceRecorder::remove_child(uint64_t (***this)(void *, void *), AG::Subgraph *a2, AG::Subgraph *a3))(void *, void *)
{
  if ((this[13] & 0x10) == 0)
  {
    v5 = this;
    AG::Encoder::encode_varint(this + 4, 0xAuLL);
    AG::Encoder::begin_length_delimited(v5 + 4);
    AG::Encoder::encode_varint(v5 + 4, 8uLL);
    AG::Encoder::encode_varint(v5 + 4, 0x26uLL);
    v6 = *(a2 + 6);
    v7 = v6 & 0x7FFFFFFF;
    if ((v6 & 0x7FFFFFFF) != 0)
    {
      AG::Encoder::encode_varint(v5 + 4, 0x18uLL);
      AG::Encoder::encode_varint(v5 + 4, v7);
    }

    v8 = *(a3 + 6);
    v9 = v8 & 0x7FFFFFFF;
    if ((v8 & 0x7FFFFFFF) != 0)
    {
      AG::Encoder::encode_varint(v5 + 4, 0x20uLL);
      AG::Encoder::encode_varint(v5 + 4, v9);
    }

    AG::Graph::TraceRecorder::field_backtrace(v5, (v5 + 4), 8, 68);

    return AG::Encoder::end_length_delimited(v5 + 4);
  }

  return this;
}

uint64_t (***AG::Graph::TraceRecorder::added(uint64_t (***result)(void *, void *), unsigned int a2))(void *, void *)
{
  if ((result[13] & 0x10) == 0)
  {
    v3 = result;
    AG::Encoder::encode_varint(result + 4, 0xAuLL);
    AG::Encoder::begin_length_delimited(v3 + 4);
    AG::Encoder::encode_varint(v3 + 4, 8uLL);
    AG::Encoder::encode_varint(v3 + 4, 0x27uLL);
    v4 = a2;
    if (a2)
    {
      AG::Encoder::encode_varint(v3 + 4, 0x18uLL);
      AG::Encoder::encode_varint(v3 + 4, a2);
    }

    v5 = AG::data::_shared_table_bytes;
    v6 = *(*(AG::data::_shared_table_bytes + (a2 & 0xFFFFFE00)) + 24);
    v7 = v6 & 0x7FFFFFFF;
    if ((v6 & 0x7FFFFFFF) != 0)
    {
      AG::Encoder::encode_varint(v3 + 4, 0x20uLL);
      AG::Encoder::encode_varint(v3 + 4, v7);
      v5 = AG::data::_shared_table_bytes;
    }

    v8 = *(v5 + v4);
    if (v8 >= 0x100)
    {
      v9 = v8 >> 8;
      AG::Encoder::encode_varint(v3 + 4, 0x28uLL);
      AG::Encoder::encode_varint(v3 + 4, v9);
    }

    AG::Graph::TraceRecorder::field_backtrace(v3, (v3 + 4), 8, 4);

    return AG::Encoder::end_length_delimited(v3 + 4);
  }

  return result;
}

{
  if ((result[13] & 0x10) == 0)
  {
    v3 = result;
    AG::Encoder::encode_varint(result + 4, 0xAuLL);
    AG::Encoder::begin_length_delimited(v3 + 4);
    AG::Encoder::encode_varint(v3 + 4, 8uLL);
    AG::Encoder::encode_varint(v3 + 4, 0x2CuLL);
    AG::Encoder::encode_varint(v3 + 4, 0x18uLL);
    AG::Encoder::encode_varint(v3 + 4, a2 & 0xFFFFFFFE | 1);
    v4 = AG::data::_shared_table_bytes;
    v5 = *(*(AG::data::_shared_table_bytes + (a2 & 0xFFFFFE00)) + 24);
    v6 = v5 & 0x7FFFFFFF;
    if ((v5 & 0x7FFFFFFF) != 0)
    {
      AG::Encoder::encode_varint(v3 + 4, 0x20uLL);
      AG::Encoder::encode_varint(v3 + 4, v6);
      v4 = AG::data::_shared_table_bytes;
    }

    v7 = a2;
    v8 = *(v4 + a2);
    if (v8)
    {
      AG::Encoder::encode_varint(v3 + 4, 0x28uLL);
      AG::Encoder::encode_varint(v3 + 4, v8);
      v4 = AG::data::_shared_table_bytes;
    }

    v9 = *(v4 + v7 + 8);
    if (v9 >= 4)
    {
      v10 = v9 >> 2;
      AG::Encoder::encode_varint(v3 + 4, 0x30uLL);
      AG::Encoder::encode_varint(v3 + 4, v10);
    }

    AG::Graph::TraceRecorder::field_backtrace(v3, (v3 + 4), 8, 4);

    return AG::Encoder::end_length_delimited(v3 + 4);
  }

  return result;
}

uint64_t (***AG::Graph::TraceRecorder::add_edge(uint64_t (***result)(void *, void *), unsigned int a2, unsigned int a3))(void *, void *)
{
  if ((result[13] & 0x10) == 0)
  {
    v5 = result;
    AG::Encoder::encode_varint(result + 4, 0xAuLL);
    AG::Encoder::begin_length_delimited(v5 + 4);
    AG::Encoder::encode_varint(v5 + 4, 8uLL);
    AG::Encoder::encode_varint(v5 + 4, 0x2FuLL);
    if (a2)
    {
      AG::Encoder::encode_varint(v5 + 4, 0x18uLL);
      AG::Encoder::encode_varint(v5 + 4, a2);
    }

    if (a3)
    {
      AG::Encoder::encode_varint(v5 + 4, 0x20uLL);
      AG::Encoder::encode_varint(v5 + 4, a3);
    }

    AG::Graph::TraceRecorder::field_backtrace(v5, (v5 + 4), 8, 4);

    return AG::Encoder::end_length_delimited(v5 + 4);
  }

  return result;
}

uint64_t (***AG::Graph::TraceRecorder::remove_edge(uint64_t (***result)(void *, void *), unsigned int a2, uint64_t a3))(void *, void *)
{
  if ((result[13] & 0x10) == 0)
  {
    v3 = result;
    v4 = a2;
    v5 = *(AG::data::_shared_table_bytes + *(AG::data::_shared_table_bytes + a2 + 16) + 5 * a3);
    AG::Encoder::encode_varint(result + 4, 0xAuLL);
    AG::Encoder::begin_length_delimited(v3 + 4);
    AG::Encoder::encode_varint(v3 + 4, 8uLL);
    AG::Encoder::encode_varint(v3 + 4, 0x30uLL);
    if (v4)
    {
      AG::Encoder::encode_varint(v3 + 4, 0x18uLL);
      AG::Encoder::encode_varint(v3 + 4, v4);
    }

    if (v5)
    {
      AG::Encoder::encode_varint(v3 + 4, 0x20uLL);
      AG::Encoder::encode_varint(v3 + 4, v5);
    }

    AG::Graph::TraceRecorder::field_backtrace(v3, (v3 + 4), 8, 4);

    return AG::Encoder::end_length_delimited(v3 + 4);
  }

  return result;
}

uint64_t (***AG::Graph::TraceRecorder::set_edge_pending(uint64_t (***result)(void *, void *), unsigned int a2, uint64_t a3, int a4))(void *, void *)
{
  if ((result[13] & 0x12) == 2)
  {
    v6 = result;
    v7 = a2;
    v8 = *(AG::data::_shared_table_bytes + *(AG::data::_shared_table_bytes + a2 + 16) + 5 * a3);
    AG::Encoder::encode_varint(result + 4, 0xAuLL);
    AG::Encoder::begin_length_delimited(v6 + 4);
    AG::Encoder::encode_varint(v6 + 4, 8uLL);
    AG::Encoder::encode_varint(v6 + 4, 0x31uLL);
    if (v7)
    {
      AG::Encoder::encode_varint(v6 + 4, 0x18uLL);
      AG::Encoder::encode_varint(v6 + 4, v7);
    }

    if (v8)
    {
      AG::Encoder::encode_varint(v6 + 4, 0x20uLL);
      AG::Encoder::encode_varint(v6 + 4, v8);
    }

    if (a4)
    {
      AG::Encoder::encode_varint(v6 + 4, 0x28uLL);
      AG::Encoder::encode_varint(v6 + 4, 1uLL);
    }

    AG::Graph::TraceRecorder::field_backtrace(v6, (v6 + 4), 8, 68);

    return AG::Encoder::end_length_delimited(v6 + 4);
  }

  return result;
}

uint64_t (***AG::Graph::TraceRecorder::set_dirty(uint64_t (***result)(void *, void *), unsigned int a2, int a3))(void *, void *)
{
  if ((result[13] & 0x12) == 2)
  {
    v6 = result;
    AG::Encoder::encode_varint(result + 4, 0xAuLL);
    AG::Encoder::begin_length_delimited(v6 + 4);
    AG::Encoder::encode_varint(v6 + 4, 8uLL);
    AG::Encoder::encode_varint(v6 + 4, 0x28uLL);
    if (a2)
    {
      AG::Encoder::encode_varint(v6 + 4, 0x18uLL);
      AG::Encoder::encode_varint(v6 + 4, a2);
    }

    if (a3)
    {
      AG::Encoder::encode_varint(v6 + 4, 0x20uLL);
      AG::Encoder::encode_varint(v6 + 4, 1uLL);
    }

    AG::Graph::TraceRecorder::field_backtrace(v6, (v6 + 4), 8, 68);

    return AG::Encoder::end_length_delimited(v6 + 4);
  }

  return result;
}

uint64_t (***AG::Graph::TraceRecorder::set_pending(uint64_t (***result)(void *, void *), unsigned int a2, int a3))(void *, void *)
{
  if ((result[13] & 0x12) == 2)
  {
    v6 = result;
    AG::Encoder::encode_varint(result + 4, 0xAuLL);
    AG::Encoder::begin_length_delimited(v6 + 4);
    AG::Encoder::encode_varint(v6 + 4, 8uLL);
    AG::Encoder::encode_varint(v6 + 4, 0x29uLL);
    if (a2)
    {
      AG::Encoder::encode_varint(v6 + 4, 0x18uLL);
      AG::Encoder::encode_varint(v6 + 4, a2);
    }

    if (a3)
    {
      AG::Encoder::encode_varint(v6 + 4, 0x20uLL);
      AG::Encoder::encode_varint(v6 + 4, 1uLL);
    }

    AG::Graph::TraceRecorder::field_backtrace(v6, (v6 + 4), 8, 68);

    return AG::Encoder::end_length_delimited(v6 + 4);
  }

  return result;
}

uint64_t (***AG::Graph::TraceRecorder::set_value(uint64_t (***result)(void *, void *), unsigned int a2))(void *, void *)
{
  if ((result[13] & 0x12) == 2)
  {
    v4 = result;
    AG::Encoder::encode_varint(result + 4, 0xAuLL);
    AG::Encoder::begin_length_delimited(v4 + 4);
    AG::Encoder::encode_varint(v4 + 4, 8uLL);
    AG::Encoder::encode_varint(v4 + 4, 0x2AuLL);
    if (a2)
    {
      AG::Encoder::encode_varint(v4 + 4, 0x18uLL);
      AG::Encoder::encode_varint(v4 + 4, a2);
    }

    AG::Graph::TraceRecorder::field_backtrace(v4, (v4 + 4), 8, 68);

    return AG::Encoder::end_length_delimited(v4 + 4);
  }

  return result;
}

uint64_t (***AG::Graph::TraceRecorder::mark_value(uint64_t (***result)(void *, void *), unsigned int a2))(void *, void *)
{
  if ((result[13] & 0x12) == 2)
  {
    v4 = result;
    AG::Encoder::encode_varint(result + 4, 0xAuLL);
    AG::Encoder::begin_length_delimited(v4 + 4);
    AG::Encoder::encode_varint(v4 + 4, 8uLL);
    AG::Encoder::encode_varint(v4 + 4, 0x2BuLL);
    if (a2)
    {
      AG::Encoder::encode_varint(v4 + 4, 0x18uLL);
      AG::Encoder::encode_varint(v4 + 4, a2);
    }

    AG::Graph::TraceRecorder::field_backtrace(v4, (v4 + 4), 8, 68);

    return AG::Encoder::end_length_delimited(v4 + 4);
  }

  return result;
}

uint64_t (***AG::Graph::TraceRecorder::set_source(uint64_t (***result)(void *, void *), unsigned int a2))(void *, void *)
{
  if ((result[13] & 0x10) == 0)
  {
    v3 = result;
    v4 = (AG::data::_shared_table_bytes + a2);
    v6 = *v4;
    v5 = v4[1];
    AG::Encoder::encode_varint(result + 4, 0xAuLL);
    AG::Encoder::begin_length_delimited(v3 + 4);
    AG::Encoder::encode_varint(v3 + 4, 8uLL);
    AG::Encoder::encode_varint(v3 + 4, 0x2DuLL);
    AG::Encoder::encode_varint(v3 + 4, 0x18uLL);
    AG::Encoder::encode_varint(v3 + 4, a2 & 0xFFFFFFFE | 1);
    if (v6)
    {
      AG::Encoder::encode_varint(v3 + 4, 0x20uLL);
      AG::Encoder::encode_varint(v3 + 4, v6);
    }

    if (v5)
    {
      AG::Encoder::encode_varint(v3 + 4, 0x28uLL);
      AG::Encoder::encode_varint(v3 + 4, v5);
    }

    AG::Graph::TraceRecorder::field_backtrace(v3, (v3 + 4), 8, 4);

    return AG::Encoder::end_length_delimited(v3 + 4);
  }

  return result;
}

uint64_t (***AG::Graph::TraceRecorder::set_dependency(uint64_t (***result)(void *, void *), unsigned int a2))(void *, void *)
{
  if ((result[13] & 0x10) == 0)
  {
    v3 = result;
    v4 = *(AG::data::_shared_table_bytes + a2 + 16);
    AG::Encoder::encode_varint(result + 4, 0xAuLL);
    AG::Encoder::begin_length_delimited(v3 + 4);
    AG::Encoder::encode_varint(v3 + 4, 8uLL);
    AG::Encoder::encode_varint(v3 + 4, 0x2EuLL);
    AG::Encoder::encode_varint(v3 + 4, 0x18uLL);
    AG::Encoder::encode_varint(v3 + 4, a2 & 0xFFFFFFFE | 1);
    if (v4)
    {
      AG::Encoder::encode_varint(v3 + 4, 0x20uLL);
      AG::Encoder::encode_varint(v3 + 4, v4);
    }

    AG::Graph::TraceRecorder::field_backtrace(v3, (v3 + 4), 8, 4);

    return AG::Encoder::end_length_delimited(v3 + 4);
  }

  return result;
}

uint64_t (***AG::Graph::TraceRecorder::set_deadline(uint64_t (***this)(void *, void *), unint64_t a2))(void *, void *)
{
  if ((this[13] & 0x10) == 0)
  {
    v3 = this;
    AG::Encoder::encode_varint(this + 4, 0xAuLL);
    AG::Encoder::begin_length_delimited(v3 + 4);
    AG::Encoder::encode_varint(v3 + 4, 8uLL);
    v4 = AG::Encoder::encode_varint(v3 + 4, 0x37uLL);
    AG::Graph::TraceRecorder::field_timestamp(v4, (v3 + 4));
    if (a2)
    {
      AG::Encoder::encode_varint(v3 + 4, 0x18uLL);
      AG::Encoder::encode_varint(v3 + 4, a2);
    }

    v5 = HIDWORD(a2);
    if (v5)
    {
      AG::Encoder::encode_varint(v3 + 4, 0x20uLL);
      AG::Encoder::encode_varint(v3 + 4, v5);
    }

    AG::Graph::TraceRecorder::field_backtrace(v3, (v3 + 4), 8, 4);

    return AG::Encoder::end_length_delimited(v3 + 4);
  }

  return this;
}

uint64_t (***AG::Graph::TraceRecorder::passed_deadline(uint64_t (***this)(void *, void *)))(void *, void *)
{
  if ((this[13] & 0x10) == 0)
  {
    v1 = this;
    AG::Encoder::encode_varint(this + 4, 0xAuLL);
    AG::Encoder::begin_length_delimited(v1 + 4);
    AG::Encoder::encode_varint(v1 + 4, 8uLL);
    v2 = AG::Encoder::encode_varint(v1 + 4, 0x38uLL);
    AG::Graph::TraceRecorder::field_timestamp(v2, (v1 + 4));
    AG::Graph::TraceRecorder::field_backtrace(v1, (v1 + 4), 8, 4);
    AG::Encoder::end_length_delimited(v1 + 4);

    return AG::Graph::TraceRecorder::encode_stack(v1);
  }

  return this;
}

uint64_t (***AG::Graph::TraceRecorder::mark_profile(AG::Graph::TraceRecorder *this, AG::Graph *a2, unsigned int a3))(void *, void *)
{
  AG::Encoder::encode_varint(this + 4, 0xAuLL);
  AG::Encoder::begin_length_delimited(this + 4);
  AG::Encoder::encode_varint(this + 4, 8uLL);
  v5 = AG::Encoder::encode_varint(this + 4, 0x32uLL);
  AG::Graph::TraceRecorder::field_timestamp(v5, (this + 32));
  if (a3)
  {
    AG::Encoder::encode_varint(this + 4, 0x18uLL);
    AG::Encoder::encode_varint(this + 4, a3);
  }

  AG::Graph::TraceRecorder::field_backtrace(this, (this + 32), 8, 4);

  return AG::Encoder::end_length_delimited(this + 4);
}

uint64_t (***AG::Graph::TraceRecorder::custom_event(void *a1, uint64_t a2, const char *a3))(void *, void *)
{
  AG::Encoder::encode_varint(a1 + 4, 0xAuLL);
  AG::Encoder::begin_length_delimited(a1 + 4);
  AG::Encoder::encode_varint(a1 + 4, 8uLL);
  v5 = AG::Encoder::encode_varint(a1 + 4, 0x34uLL);
  AG::Graph::TraceRecorder::field_timestamp(v5, (a1 + 4));
  AG::Graph::TraceRecorder::field_backtrace(a1, (a1 + 4), 8, 4);
  v6 = strlen(a3);
  if (v6)
  {
    v7 = v6;
    AG::Encoder::encode_varint(a1 + 4, 0x4AuLL);
    AG::Encoder::encode_data((a1 + 4), a3, v7);
  }

  return AG::Encoder::end_length_delimited(a1 + 4);
}

uint64_t (***AG::Graph::TraceRecorder::named_event(AG::Graph::TraceRecorder *this, AG::Graph::Context *a2, uint64_t a3, unint64_t a4, unsigned int *a5, const __CFData *a6, unsigned int a7))(void *, void *)
{
  v11 = a3;
  result = AG::Graph::TraceRecorder::named_event_enabled(this, a3);
  if (result)
  {
    AG::Encoder::encode_varint(this + 4, 0xAuLL);
    AG::Encoder::begin_length_delimited(this + 4);
    AG::Encoder::encode_varint(this + 4, 8uLL);
    v14 = AG::Encoder::encode_varint(this + 4, 0x36uLL);
    if (v11)
    {
      AG::Encoder::encode_varint(this + 4, 0x50uLL);
      v14 = AG::Encoder::encode_varint(this + 4, v11);
    }

    AG::Graph::TraceRecorder::field_timestamp(v14, (this + 32));
    if ((a7 & 0x80000000) != 0)
    {
      AG::Graph::TraceRecorder::field_backtrace(this, (this + 32), 8, 4);
      a7 &= ~0x80000000;
    }

    if (a7)
    {
      AG::Encoder::encode_varint(this + 4, 0x18uLL);
      AG::Encoder::encode_varint(this + 4, a7);
    }

    if (a4)
    {
      if (a4 >= 4)
      {
        v15 = 4;
      }

      else
      {
        v15 = a4;
      }

      v16 = 32;
      do
      {
        v18 = *a5++;
        v17 = v18;
        if (v18)
        {
          AG::Encoder::encode_varint(this + 4, v16);
          AG::Encoder::encode_varint(this + 4, v17);
        }

        v16 += 8;
        --v15;
      }

      while (v15);
    }

    if (a6)
    {
      BytePtr = CFDataGetBytePtr(a6);
      Length = CFDataGetLength(a6);
      if (Length)
      {
        v21 = Length;
        AG::Encoder::encode_varint(this + 4, 0x4AuLL);
        AG::Encoder::encode_data((this + 32), BytePtr, v21);
      }
    }

    return AG::Encoder::end_length_delimited(this + 4);
  }

  return result;
}

uint64_t AG::Graph::TraceRecorder::named_event_enabled(AG::Graph::TraceRecorder *this, uint64_t a2)
{
  v4 = this + 240;
  v5 = *(this + 30);
  v6 = *(this + 62);
  v7 = &v5[2 * v6];
  if (v6)
  {
    do
    {
      v8 = v6 >> 1;
      v9 = &v5[2 * (v6 >> 1)];
      v11 = *v9;
      v10 = v9 + 2;
      v6 += ~(v6 >> 1);
      if (v11 < a2)
      {
        v5 = v10;
      }

      else
      {
        v6 = v8;
      }
    }

    while (v6);
  }

  if (v5 != v7 && *v5 == a2)
  {
    v12 = *(v5 + 4);
    return v12 & 1;
  }

  TraceEventName = AGGraphGetTraceEventName(a2);
  if (!TraceEventName)
  {
    AG::precondition_failure("invalid named trace event: %u", v14, a2);
  }

  v15 = TraceEventName;
  TraceEventSubsystem = AGGraphGetTraceEventSubsystem(a2);
  if (!TraceEventSubsystem || (*(this + 26) & 0x20) != 0)
  {
    goto LABEL_17;
  }

  v17 = (*(this + 26) & 0x20u) >> 5;
  v18 = *(this + 15);
  if (v18)
  {
    v19 = *(this + 14);
    v20 = 8 * v18;
    while (strcasecmp(*v19, TraceEventSubsystem))
    {
      ++v19;
      v20 -= 8;
      if (!v20)
      {
        goto LABEL_18;
      }
    }

LABEL_17:
    v17 = 1;
  }

LABEL_18:
  v21 = *(this + 30);
  v22 = v5 - v21;
  v23 = v22 >> 3;
  v24 = *(this + 62);
  if (*(this + 63) < v24 + 1)
  {
    AG::vector<std::pair<unsigned int,BOOL>,0ul,unsigned int>::reserve_slow(v4, v24 + 1);
    v21 = *(this + 30);
    v24 = *(this + 62);
  }

  if (v24 > v23)
  {
    memmove((v21 + v22 + 8), (v21 + v22), 8 * (v24 - v23));
    v24 = *(this + 62);
  }

  v25 = v21 + v22;
  *v25 = a2;
  *(v25 + 4) = v17;
  *(this + 62) = v24 + 1;
  if (v17)
  {
    AG::Encoder::encode_varint(this + 4, 0x32uLL);
    AG::Encoder::begin_length_delimited(this + 4);
    if (a2)
    {
      AG::Encoder::encode_varint(this + 4, 8uLL);
      AG::Encoder::encode_varint(this + 4, a2);
    }

    v26 = strlen(v15);
    if (v26)
    {
      v27 = v26;
      AG::Encoder::encode_varint(this + 4, 0x12uLL);
      AG::Encoder::encode_data((this + 32), v15, v27);
    }

    if (TraceEventSubsystem)
    {
      v28 = strlen(TraceEventSubsystem);
      if (v28)
      {
        v29 = v28;
        AG::Encoder::encode_varint(this + 4, 0x1AuLL);
        AG::Encoder::encode_data((this + 32), TraceEventSubsystem, v29);
      }
    }

    AG::Encoder::end_length_delimited(this + 4);
    v12 = 1;
  }

  else
  {
    v12 = 0;
  }

  return v12 & 1;
}

uint64_t AG::Graph::start_tracing(uint64_t result, char a2)
{
  if ((a2 & 1) != 0 && !*(result + 272))
  {
    operator new();
  }

  return result;
}

uint64_t AG::Graph::prepare_trace(uint64_t a1, uint64_t a2, int a3)
{
  v40 = a2;
  result = util::UntypedTable::for_each(a1 + 104, util::Table<unsigned long,AG::Graph::Context *>::for_each<AG::Graph::prepare_trace(AG::Trace &,BOOL)::$_0>(AG::Graph::prepare_trace(AG::Trace &,BOOL)::$_0 const&)const::{lambda(void const*,void const*,void const*)#1}::__invoke, &v40);
  v33 = a1;
  v6 = *(a1 + 304);
  if (!v6)
  {
    return result;
  }

  v7 = 0;
LABEL_3:
  v8 = *(v33 + 296);
  v35 = &v8[v6];
LABEL_4:
  v36 = v8;
  v37 = *v8;
  if (*(*v8 + 104))
  {
    goto LABEL_5;
  }

  if (a3)
  {
    result = AG::Subgraph::to_cf(v37);
    if (!result)
    {
      goto LABEL_5;
    }
  }

  if ((v7 - 2) < 2)
  {
    v9 = 1;
    v39 = 22;
    while (1)
    {
      v38 = v9;
      v10 = *(v37 + 4);
      if (!v10)
      {
        goto LABEL_53;
      }

      v11 = AG::data::_shared_table_bytes;
      while (2)
      {
        v12 = v11 + v10;
        v13 = *(v12 + v39);
        v14 = v10;
        if (!*(v12 + v39))
        {
          goto LABEL_52;
        }

        do
        {
          v15 = (v13 + v14);
          if (((v13 + v14) & 3u) > 1)
          {
            if (((v13 + v14) & 3) != 3)
            {
              v28 = 1;
              goto LABEL_51;
            }
          }

          else
          {
            if (((v13 + v14) & 3) != 0)
            {
              v16 = (AG::data::_shared_table_bytes + (v15 & 0xFFFFFFFC) + 14);
            }

            else
            {
              v16 = (AG::data::_shared_table_bytes + v15 + 4);
            }

            v13 = *v16;
            if ((v15 & 3) == 1)
            {
              v19 = v15 & 0xFFFFFFFC;
              if (v7 == 3)
              {
                v26 = AG::data::_shared_table_bytes + v19;
                result = (*(*a2 + 296))(a2, v19, *(AG::data::_shared_table_bytes + v19));
                if ((*(v26 + 8) & 1) != 0 && *(v26 + 16))
                {
                  result = (*(*a2 + 304))(a2, v19);
                }
              }

              else if (v7 == 2)
              {
                result = (*(*a2 + 288))(a2, v19);
              }
            }

            else
            {
              if ((v15 & 3) != 0)
              {
                continue;
              }

              v17 = (AG::data::_shared_table_bytes + v15);
              if (v7 != 3)
              {
                if (v7 != 2)
                {
                  continue;
                }

                result = (*(*a2 + 224))(a2, v15);
                v18 = *v17;
                if (*v17)
                {
                  result = (*(*a2 + 256))(a2, v15, 1);
                  v18 = *v17;
                  if ((*v17 & 2) == 0)
                  {
                    goto LABEL_29;
                  }
                }

                else if ((v18 & 2) == 0)
                {
LABEL_29:
                  if ((v18 & 0x10) == 0)
                  {
                    continue;
                  }

                  goto LABEL_45;
                }

                result = (*(*a2 + 264))(a2, v15, 1);
                if ((*v17 & 0x10) == 0)
                {
                  continue;
                }

LABEL_45:
                v27 = (AG::data::_shared_table_bytes + v17[2]);
                if ((*(v17 + 7) & 2) != 0)
                {
                  v27 = *v27;
                }

                result = (*(*a2 + 272))(a2, v15, v27);
                continue;
              }

              v20 = v17[3];
              if (v20 >= 0x20)
              {
                v21 = 0;
                v22 = v17[4];
                v23 = v20 >> 5;
                v24 = (AG::data::_shared_table_bytes + v22 + 4);
                do
                {
                  v25 = *v24;
                  result = (*(*a2 + 232))(a2, v15, *(v24 - 1), *v24 & 4);
                  if ((v25 & 0x10) != 0)
                  {
                    result = (*(*a2 + 248))(a2, v15, v21, 1);
                  }

                  v24 += 5;
                  ++v21;
                }

                while (v23 != v21);
              }
            }
          }
        }

        while (v13);
        v28 = 0;
LABEL_51:
        v11 = AG::data::_shared_table_bytes;
        if ((v28 & 1) == 0)
        {
LABEL_52:
          v10 = *(v11 + v14 + 8);
          if (!v10)
          {
            break;
          }

          continue;
        }

        break;
      }

LABEL_53:
      v9 = 0;
      v39 = 20;
      if ((v38 & 1) == 0)
      {
LABEL_5:
        v8 = v36 + 1;
        if (v36 + 1 == v35)
        {
          v6 = *(v33 + 304);
          do
          {
            ++v7;
          }

          while (!*(v33 + 304));
          goto LABEL_3;
        }

        goto LABEL_4;
      }
    }
  }

  if (v7 == 1)
  {
    v29 = *(v37 + 18);
    if (v29)
    {
      v30 = *(v37 + 8);
      v31 = 8 * v29;
      do
      {
        v32 = *v30++;
        result = (*(*a2 + 208))(a2, v37, v32 & 0xFFFFFFFFFFFFFFFCLL);
        v31 -= 8;
      }

      while (v31);
    }

    goto LABEL_5;
  }

  if (!v7)
  {
    result = (*(*a2 + 184))(a2, v37);
    goto LABEL_5;
  }

  return result;
}

void AG::Graph::trace_assertion_failure(AG::Graph *this, uint64_t a2, const char *a3, ...)
{
  va_start(va, a3);
  v4 = this;
  v5 = os_unfair_lock_trylock(&AG::Graph::_all_graphs_lock);
  va_copy(v10, va);
  for (i = AG::Graph::_all_graphs; i; i = *i)
  {
    v9 = v10;
    v7 = *(i + 176);
    if (v7)
    {
      AG::Graph::trace_assertion_failure(v7, (i + 168), &v9, a2);
      if (v4)
      {
LABEL_4:
        v8 = *(i + 272);
        if (v8)
        {
          AG::Graph::remove_trace(i, *(v8 + 8));
          *(i + 272) = 0;
        }
      }
    }

    else if (v4)
    {
      goto LABEL_4;
    }
  }

  if (v5)
  {
    os_unfair_lock_unlock(&AG::Graph::_all_graphs_lock);
  }
}

_DWORD *AG::Graph::stop_tracing(_DWORD *this)
{
  v1 = *(this + 34);
  if (v1)
  {
    v2 = this;
    this = AG::Graph::remove_trace(this, *(v1 + 8));
    *(v2 + 34) = 0;
  }

  return this;
}

uint64_t AG::Graph::sync_tracing(AG::Graph *this)
{
  result = *(this + 44);
  if (result)
  {
    return AG::Graph::sync_tracing(result, this + 21);
  }

  return result;
}

CFStringRef AG::Graph::copy_trace_path(AG::Graph *this)
{
  v1 = *(this + 34);
  if (v1 && (v2 = *(v1 + 216)) != 0)
  {
    return CFStringCreateWithCString(0, v2, 0x8000100u);
  }

  else
  {
    return 0;
  }
}

void AG::Graph::all_start_tracing(char a1)
{
  os_unfair_lock_lock(&AG::Graph::_all_graphs_lock);
  for (i = &AG::Graph::_all_graphs; ; AG::Graph::start_tracing(i, a1))
  {
    i = *i;
    if (!i)
    {
      break;
    }
  }

  os_unfair_lock_unlock(&AG::Graph::_all_graphs_lock);
}

void AG::Graph::all_stop_tracing(AG::Graph *this)
{
  os_unfair_lock_lock(&AG::Graph::_all_graphs_lock);
  for (i = AG::Graph::_all_graphs; i; i = *i)
  {
    v2 = *(i + 272);
    if (v2)
    {
      AG::Graph::remove_trace(i, *(v2 + 8));
      *(i + 272) = 0;
    }
  }

  os_unfair_lock_unlock(&AG::Graph::_all_graphs_lock);
}

void AG::Graph::all_sync_tracing(AG::Graph *this)
{
  os_unfair_lock_lock(&AG::Graph::_all_graphs_lock);
  for (i = AG::Graph::_all_graphs; i; i = *i)
  {
    v2 = *(i + 176);
    if (v2)
    {
      v3 = 8 * v2 - 8;
      do
      {
        (*(**(*(i + 168) + v3) + 32))(*(*(i + 168) + v3));
        v3 -= 8;
      }

      while (v3 != -8);
    }
  }

  os_unfair_lock_unlock(&AG::Graph::_all_graphs_lock);
}

CFStringRef AG::Graph::all_copy_trace_path(AG::Graph *this)
{
  os_unfair_lock_lock(&AG::Graph::_all_graphs_lock);
  if (AG::Graph::_all_graphs && (v1 = *(AG::Graph::_all_graphs + 272)) != 0 && (v2 = *(v1 + 216)) != 0)
  {
    v3 = CFStringCreateWithCString(0, v2, 0x8000100u);
  }

  else
  {
    v3 = 0;
  }

  os_unfair_lock_unlock(&AG::Graph::_all_graphs_lock);
  return v3;
}

void AG::Encoder::~Encoder(AG::Encoder *this)
{
  v2 = *(this + 6);
  if (v2)
  {
    free(v2);
  }

  v3 = *(this + 3);
  if (v3)
  {
    free(v3);
  }
}