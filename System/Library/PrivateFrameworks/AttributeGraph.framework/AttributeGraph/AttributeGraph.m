uint64_t AGGraphCreateShared(uint64_t a1)
{
  AGGraphGetTypeID();
  Instance = _CFRuntimeCreateInstance();
  if (!Instance)
  {
    AGGraphCreateShared_cold_2(0, v3);
  }

  v4 = Instance;
  if (!a1)
  {
    operator new();
  }

  if (*(a1 + 88) == 1)
  {
    AG::Graph::Context::from_cf(Instance, v3);
  }

  v5 = *(a1 + 16);
  ++*(v5 + 91);
  AG::Graph::Context::Context((Instance + 16), v5);
  v6 = *(v5 + 91) - 1;
  *(v5 + 91) = v6;
  if (!v6)
  {
    AG::Graph::~Graph(v5);
    MEMORY[0x1B8C7ACE0]();
  }

  *(v4 + 88) = 0;
  return v4;
}

uint64_t AGGraphGetTypeID()
{
  {
    AGGraphGetTypeID::type = _CFRuntimeRegisterClass();
  }

  return AGGraphGetTypeID::type;
}

uint64_t *AG::data::table::ensure_shared(AG::data::table *this)
{
  if (AG::data::table::ensure_shared(void)::once != -1)
  {
    AG::data::table::ensure_shared();
  }

  return &AG::data::_shared_table_bytes;
}

AG::Graph *AG::Graph::Graph(AG::Graph *this)
{
  *(this + 2) = AG::data::table::ensure_shared(this);
  util::UntypedTable::UntypedTable(this + 24, 0, 0, 0, 0);
  *(this + 11) = 0;
  *(this + 12) = 0;
  util::UntypedTable::UntypedTable(this + 104, 0, 0, 0, 0);
  *(this + 168) = 0u;
  *(this + 16) = 0u;
  *(this + 18) = 0u;
  *(this + 43) = 0;
  *(this + 184) = 0u;
  *(this + 200) = 0u;
  *(this + 216) = 0u;
  *(this + 232) = 0u;
  *(this + 248) = 0;
  *(this + 17) = 0u;
  *(this + 19) = 0u;
  *(this + 40) = 0;
  *(this + 44) = 0x200000000;
  *(this + 180) = 0;
  *(this + 91) = 1;
  *(this + 46) = 0;
  *(this + 47) = AGMakeUniqueID();
  *(this + 48) = -1;
  *(this + 106) = 0;
  *(this + 392) = 0u;
  *(this + 408) = 0u;
  if (this == 1)
  {
    AG::Graph::print(1);
    AG::Graph::print_attribute(1, 0);
    AG::Graph::print_stack(1);
    AG::Graph::print_data(1);
    AG::Graph::write_to_file(0, 0, 0);
  }

  if (AG::Graph::Graph(void)::make_keys != -1)
  {
    AG::Graph::Graph();
  }

  v2 = *(this + 24);
  v3 = v2 + 1;
  if (*(this + 25) < v2 + 1)
  {
    AG::vector<std::pair<unsigned int,BOOL>,0ul,unsigned int>::reserve_slow(this + 88, v3);
    v2 = *(this + 24);
    v3 = v2 + 1;
  }

  *(*(this + 11) + 8 * v2) = 0;
  *(this + 24) = v3;
  if ((atomic_load_explicit(&_ZGVZN2AG5GraphC1EvEDC14profiler_flags11trace_flags16trace_subsystemsE, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&_ZGVZN2AG5GraphC1EvEDC14profiler_flags11trace_flags16trace_subsystemsE))
  {
    AG::Graph::Graph(void)::$_1::operator()();
    __cxa_atexit(std::tuple<unsigned int,unsigned int,AG::vector<char const*,0ul,unsigned long>>::~tuple, &_ZZN2AG5GraphC1EvEDC14profiler_flags11trace_flags16trace_subsystemsE, &dword_1B490B000);
    __cxa_guard_release(&_ZGVZN2AG5GraphC1EvEDC14profiler_flags11trace_flags16trace_subsystemsE);
  }

  if (dword_1ED56CDFC || xmmword_1ED56CE08)
  {
    AG::Graph::start_tracing(this, dword_1ED56CDFC);
  }

  if (_ZZN2AG5GraphC1EvEDC14profiler_flags11trace_flags16trace_subsystemsE)
  {
    AG::Graph::start_profiling(this, _ZZN2AG5GraphC1EvEDC14profiler_flags11trace_flags16trace_subsystemsE);
  }

  os_unfair_lock_lock(&AG::Graph::_all_graphs_lock);
  *this = AG::Graph::_all_graphs;
  *(this + 1) = 0;
  AG::Graph::_all_graphs = this;
  if (*this)
  {
    *(*this + 8) = this;
  }

  os_unfair_lock_unlock(&AG::Graph::_all_graphs_lock);
  return this;
}

void sub_1B490C898(_Unwind_Exception *a1)
{
  __cxa_guard_abort(&_ZGVZN2AG5GraphC1EvEDC14profiler_flags11trace_flags16trace_subsystemsE);
  v7 = v1[43];
  if (v7)
  {
    free(v7);
  }

  v8 = v1[39];
  if (v8)
  {
    free(v8);
  }

  v9 = v1[37];
  if (v9)
  {
    free(v9);
  }

  std::unique_ptr<AG::Graph::KeyTable>::reset[abi:ne200100](v4, 0);
  std::unique_ptr<std::unordered_map<AG::Subgraph *,AG::Graph::TreeDataElement>>::~unique_ptr[abi:ne200100]((v5 + 112));
  std::unique_ptr<AG::Graph::ProfileData>::~unique_ptr[abi:ne200100](v3);
  if (*v5)
  {
    free(*v5);
  }

  util::UntypedTable::~UntypedTable((v2 + 16));
  AG::vector<std::unique_ptr<AG::AttributeType,AG::AttributeType::deleter>,0ul,unsigned int>::~vector(v2);
  util::UntypedTable::~UntypedTable((v1 + 3));
  _Unwind_Resume(a1);
}

void AG::data::table::table(AG::data::table *this)
{
  *(this + 56) = 0u;
  *(this + 13) = 0;
  *(this + 44) = 0;
  *(this + 28) = 0u;
  *(this + 72) = 0u;
  *(this + 88) = 0u;
  *(this + 2) = 0x10000000000000;
  v2 = mmap(0, 0x100000uLL, 3, 4098, -1, 0);
  *(this + 1) = v2;
  AGGraphVMRegionBaseAddress = v2;
  if (v2 != -1)
  {
    *this = v2 - 512;
    *(this + 6) = *(this + 5) + 512;
    operator new();
  }

  v3 = *(this + 5);
  v4 = __error();
  AG::precondition_failure("memory allocation failure (%u bytes, %u)", v5, v3, *v4);
}

void sub_1B490CB2C(_Unwind_Exception *a1)
{
  v6 = v3;
  v7 = a1;
  MEMORY[0x1B8C7ACE0](v6, 0x10F0C4018EF910DLL);
  v8 = *v2;
  *v2 = 0;
  if (v8)
  {
    std::default_delete<AG::data::table::malloc_zone>::operator()[abi:ne200100](v2, v8);
  }

  v9 = *(v1 + 88);
  if (v9)
  {
    free(v9);
  }

  v10 = *(v1 + 72);
  if (v10)
  {
    free(v10);
  }

  if (*v4)
  {
    free(*v4);
  }

  _Unwind_Resume(v7);
}

uint64_t util::UntypedTable::UntypedTable(uint64_t this, unint64_t (*a2)(util *this, const void *a2), BOOL (*a3)(util *this, util *a2, const void *a3), void (*a4)(void *), void (*a5)(void *))
{
  if (a2)
  {
    v5 = a2;
  }

  else
  {
    v5 = util::pointer_hash;
  }

  if (a3)
  {
    v6 = a3;
  }

  else
  {
    v6 = util::pointer_compare;
  }

  *this = v5;
  *(this + 8) = v6;
  *(this + 16) = a4;
  *(this + 24) = a5;
  v7 = a3 == 0;
  *(this + 32) = 0;
  *(this + 40) = 0;
  *(this + 48) = 0;
  if (a3 == util::pointer_compare)
  {
    v7 = 1;
  }

  *(this + 56) = 0;
  *(this + 60) = v7;
  return this;
}

void *AG::vector<std::pair<unsigned int,BOOL>,0ul,unsigned int>::reserve_slow(uint64_t a1, unsigned int a2)
{
  if (*(a1 + 12) + (*(a1 + 12) >> 1) <= a2)
  {
    v3 = a2;
  }

  else
  {
    v3 = *(a1 + 12) + (*(a1 + 12) >> 1);
  }

  result = AG::details::realloc_vector<unsigned int,8ul>(*a1, (a1 + 12), v3);
  *a1 = result;
  return result;
}

uint64_t AG::Graph::Graph(void)::$_0::__invoke()
{
  v0 = pthread_key_create(&AG::Graph::_current_update_key, 0);

  return AG::Subgraph::make_current_subgraph_key(v0);
}

AG::Graph::Context *AG::Graph::Context::Context(AG::Graph::Context *this, AG::Graph *a2)
{
  *this = a2;
  *(this + 1) = 0;
  v3 = AGMakeUniqueID();
  *(this + 2) = v3;
  *(this + 24) = 0u;
  *(this + 40) = 0u;
  *(this + 7) = -1;
  *(this + 16) = 0;
  *(this + 68) = 0;
  v4 = *this;
  *(v4 + 364) = *(*this + 364) + 1;
  util::UntypedTable::insert((v4 + 104), v3, this);
  if (*(*this + 176))
  {
    AG::Graph::Context::Context();
  }

  return this;
}

uint64_t util::UntypedTable::insert(util::UntypedTable *this, void *a2, void *a3)
{
  if (!*(this + 4))
  {
    util::UntypedTable::create_buckets(this);
  }

  v6 = (*this)(a2);
  v7 = *(*(this + 4) + 8 * (*(this + 6) & v6));
  if (!v7)
  {
LABEL_7:
    if (*(this + 5) + 1 > (4 << *(this + 14)))
    {
      util::UntypedTable::grow_buckets(this);
    }

    operator new();
  }

  while (v7[3] != v6 || !(*(this + 1))(v7[1], a2))
  {
    v7 = *v7;
    if (!v7)
    {
      goto LABEL_7;
    }
  }

  v8 = *(this + 2);
  if (v8)
  {
    v8(v7[1]);
  }

  v9 = *(this + 3);
  if (v9)
  {
    v9(v7[2]);
  }

  result = 0;
  v7[1] = a2;
  v7[2] = a3;
  return result;
}

unint64_t util::pointer_hash(util *this, const void *a2)
{
  v2 = (this + ~(this << 32)) ^ ((this + ~(this << 32)) >> 22);
  v3 = 9 * ((v2 + ~(v2 << 13)) ^ ((v2 + ~(v2 << 13)) >> 8));
  v4 = (v3 ^ (v3 >> 15)) + ~((v3 ^ (v3 >> 15)) << 27);
  return v4 ^ (v4 >> 31);
}

uint64_t AG::Graph::Context::from_cf(uint64_t a1, const char *a2)
{
  if (*(a1 + 88) == 1)
  {
    AG::Graph::Context::from_cf(a1, a2);
  }

  return a1 + 16;
}

void *AG::details::realloc_vector<unsigned int,8ul>(void *a1, _DWORD *a2, unsigned int a3)
{
  v4 = a1;
  if (a3)
  {
    v5 = malloc_good_size(8 * a3);
    v6 = v5 >> 3;
    if (*a2 != (v5 >> 3))
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

void AGSubgraphCreate2(uint64_t a1, const char *a2)
{
  AG::Graph::Context::from_cf(a1, a2);
  AGSubgraphGetTypeID();
  if (_CFRuntimeCreateInstance())
  {
    operator new();
  }

  AGSubgraphCreate2_cold_1(0, v2);
}

uint64_t AGSubgraphGetTypeID()
{
  {
    AGSubgraphGetTypeID::type = _CFRuntimeRegisterClass();
  }

  return AGSubgraphGetTypeID::type;
}

const char *AG::Graph::Graph(void)::$_1::operator()()
{
  v0 = getenv("AG_DEBUG_SERVER");
  if (v0)
  {
    v1 = strtol(v0, 0, 0);
    AG::DebugServer::start(v1);
  }

  v17 = 0;
  v18 = 0uLL;
  v2 = getenv("AG_PROFILE");
  if (v2)
  {
    v3 = atoi(v2);
  }

  else
  {
    v3 = 0;
  }

  result = getenv("AG_TRACE");
  if (!result)
  {
    v15 = 0;
    v5 = 0;
LABEL_30:
    v7 = 0uLL;
    goto LABEL_31;
  }

  __s = 0;
  result = strtol(result, &__s, 0);
  v5 = result;
  v6 = __s;
  v7 = 0uLL;
  if (!__s)
  {
    v15 = 0;
    goto LABEL_31;
  }

  result = strspn(__s, ", \t\n\f\r");
  v8 = &result[v6];
  if (!result[v6])
  {
    v15 = 0;
    goto LABEL_30;
  }

  do
  {
    v9 = strcspn(v8, ", \t\n\f\r");
    v10 = malloc_type_malloc(v9 + 1, 0x100004077774924uLL);
    memcpy(v10, v8, v9);
    *(v10 + v9) = 0;
    if (!strcasecmp(v10, "enabled"))
    {
      v13 = 1;
LABEL_24:
      v5 |= v13;
      free(v10);
      goto LABEL_25;
    }

    if (!strcasecmp(v10, "full"))
    {
      v13 = 2;
      goto LABEL_24;
    }

    if (!strcasecmp(v10, "backtrace"))
    {
      v13 = 4;
      goto LABEL_24;
    }

    if (!strcasecmp(v10, "prepare"))
    {
      v13 = 8;
      goto LABEL_24;
    }

    if (!strcasecmp(v10, "custom"))
    {
      v13 = 16;
      goto LABEL_24;
    }

    if (!strcasecmp(v10, "all"))
    {
      v13 = 32;
      goto LABEL_24;
    }

    v11 = v18;
    v12 = v18 + 1;
    if (*(&v18 + 1) < (v18 + 1))
    {
      AG::vector<std::unique_ptr<char const,util::free_deleter>,0ul,unsigned long>::reserve_slow(&v17, v12);
      v11 = v18;
      v12 = v18 + 1;
    }

    *(v17 + 8 * v11) = v10;
    *&v18 = v12;
LABEL_25:
    v14 = &v8[v9];
    result = strspn(v14, ", \t\n\f\r");
    v8 = &result[v14];
  }

  while (*v8);
  v15 = v17;
  v7 = v18;
LABEL_31:
  _ZZN2AG5GraphC1EvEDC14profiler_flags11trace_flags16trace_subsystemsE = v3;
  dword_1ED56CDFC = v5;
  qword_1ED56CE00 = v15;
  xmmword_1ED56CE08 = v7;
  return result;
}

void sub_1B490D2E0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10)
{
  if (a10)
  {
    free(a10);
  }

  _Unwind_Resume(exception_object);
}

uint64_t AGGraphTraceEventEnabled(uint64_t a1, const char *a2)
{
  v3 = AG::Graph::Context::from_cf(a1, a2);
  v4 = *(*v3 + 176);
  if (!v4)
  {
    return 0;
  }

  v5 = *(*v3 + 168);
  v6 = 8 * v4 - 8;
  do
  {
    v7 = *v5++;
    result = (*(*v7 + 352))(v7, a2);
    if (result)
    {
      break;
    }

    v9 = v6;
    v6 -= 8;
  }

  while (v9);
  return result;
}

unint64_t AG::Subgraph::Subgraph(unint64_t a1, uint64_t a2, int64x2_t **a3, unsigned int a4)
{
  return AG::Subgraph::Subgraph(a1, a2, a3, a4);
}

{
  *a1 = 0;
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  *(a1 + 24) = (atomic_fetch_add_explicit(&dword_1ED56D748, 1u, memory_order_relaxed) + 1) & 0x7FFFFFFF;
  *(a1 + 28) = 0;
  v7 = *a3;
  *(a1 + 32) = a2;
  *(a1 + 40) = v7;
  *(a1 + 48) = a3[2];
  *(a1 + 56) = 0u;
  *(a1 + 72) = 0u;
  *(a1 + 88) = 0u;
  *(a1 + 104) = 0;
  *(a1 + 105) &= 0xF8u;
  if (a1 == 1)
  {
    AG::Subgraph::print(1, 0);
    v7 = MEMORY[0x29];
  }

  v8 = v7[18].i64[1];
  v9 = v7[19].u32[0];
  v10 = v8;
  if (v9)
  {
    v10 = v7[18].i64[1];
    v11 = v7[19].u32[0];
    do
    {
      v12 = v11 >> 1;
      v13 = (v10 + 8 * (v11 >> 1));
      v15 = *v13;
      v14 = v13 + 1;
      v11 += ~(v11 >> 1);
      if (v15 < a1)
      {
        v10 = v14;
      }

      else
      {
        v11 = v12;
      }
    }

    while (v11);
  }

  v16 = v7[18].i64[1];
  if (v7[19].i32[1] < v9 + 1)
  {
    AG::vector<std::pair<unsigned int,BOOL>,0ul,unsigned int>::reserve_slow(&v7[18].i64[1], v9 + 1);
    v16 = v7[18].i64[1];
    v9 = v7[19].u32[0];
  }

  v17 = v10 - v8;
  if (v9 > (v17 >> 3))
  {
    memmove((v16 + v17 + 8), (v16 + v17), 8 * (v9 - (v17 >> 3)));
    v9 = v7[19].u32[0];
  }

  *(v16 + v17) = a1;
  v7[19].i32[0] = v9 + 1;
  v18 = vaddq_s64(v7[14], vdupq_n_s64(1uLL));
  v7[14] = v18;
  v19 = v7[15].u64[0];
  if (v19 <= v18.i64[0])
  {
    v19 = v18.i64[0];
  }

  v7[15].i64[0] = v19;
  if (AGSubgraphShouldRecordTree())
  {
    if (a4 <= 3)
    {
      v20 = AG::Graph::_current_update_key;
      v21 = *(_ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3)) + 8 * v20);
      if ((v21 & 1) == 0)
      {
        v22 = (v21 & 0xFFFFFFFFFFFFFFFELL);
        if ((v21 & 0xFFFFFFFFFFFFFFFELL) != 0 && *v22 == *(a1 + 40))
        {
          v23 = AG::Graph::UpdateStack::global_top(v22);
          if (v23)
          {
            a4 = *v23;
          }
        }
      }
    }

    v24 = *(a1 + 16);
    if (v24 && (v25 = AG::data::_shared_table_bytes, v26 = (*(AG::data::_shared_table_bytes + v24 + 16) + 7) & 0xFFFFFFF8, v26 + 32 <= *(AG::data::_shared_table_bytes + v24 + 12)))
    {
      *(AG::data::_shared_table_bytes + v24 + 16) = v26 + 32;
      v27 = v26 + v24;
    }

    else
    {
      v27 = AG::data::zone::alloc_slow(a1, 0x20u, 7);
      v25 = AG::data::_shared_table_bytes;
    }

    v28 = v25 + v27;
    *v28 = 0;
    *(v28 + 8) = a4;
    *(v28 + 20) = 0;
    *(v28 + 12) = 0;
    *(v28 + 28) = 0;
    *(a1 + 96) = v27;
  }

  v29 = *a3;
  v30 = v29[11].u32[0];
  if (v30)
  {
    for (i = 8 * v30 - 8; i != -8; i -= 8)
    {
      v33 = *(v29[10].i64[1] + i);
      (*(*v33 + 184))(v33, a1);
    }
  }

  return a1;
}

uint64_t Attribute.init<A>(body:value:flags:update:)(void *a1, unint64_t a2)
{
  CurrentGraphContext = AGSubgraphGetCurrentGraphContext();
  if (CurrentGraphContext)
  {
    v5 = MEMORY[0x1EEE9AC00](CurrentGraphContext);
    v7 = AGGraphInternAttributeType(v5, v6, sub_1B490E54C);
    return AGGraphCreateAttribute(v7, a1, a2);
  }

  else
  {
    sub_1B4949C18();
    MEMORY[0x1B8C7A8D0](0xD000000000000031, 0x80000001B494E940);
    v9 = sub_1B4949D68();
    MEMORY[0x1B8C7A8D0](v9);

    result = sub_1B4949C28();
    __break(1u);
  }

  return result;
}

uint64_t AGSubgraphGetCurrentGraphContext()
{
  v0 = AG::Subgraph::_current_subgraph_key;
  v1 = *(_ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3)) + 8 * v0);
  if (v1)
  {
    return *(v1 + 40);
  }

  else
  {
    return 0;
  }
}

unsigned int *AG::Node::allocate_value(unsigned int *this, AG::Graph *a2, AG::data::zone *a3)
{
  if (!this[2])
  {
    v4 = this;
    v5 = *(*(*(*(a2 + 11) + ((*this >> 5) & 0x7FFFFF8)) + 8) - 8);
    v6 = *(v5 + 64);
    if ((*(this + 7) & 2) != 0)
    {
      v7 = AG::data::zone::alloc_bytes_recycle(a3, 8u, 7);
      this = AG::data::zone::alloc_persistent(a3, v6);
      *(AG::data::_shared_table_bytes + v7) = this;
    }

    else
    {
      if (v6 > 0x10)
      {
        v8 = *(a3 + 4);
        if (v8)
        {
          v9 = (*(AG::data::_shared_table_bytes + v8 + 16) + *(v5 + 80)) & ~*(v5 + 80);
          if ((v9 + v6) <= *(AG::data::_shared_table_bytes + v8 + 12))
          {
            *(AG::data::_shared_table_bytes + v8 + 16) = v9 + v6;
            v7 = v9 + v8;
            goto LABEL_11;
          }
        }

        this = AG::data::zone::alloc_slow(a3, *(v5 + 64), *(v5 + 80));
      }

      else
      {
        this = AG::data::zone::alloc_bytes_recycle(a3, *(v5 + 64), *(v5 + 80));
      }

      v7 = this;
    }

LABEL_11:
    v4[2] = v7;
  }

  return this;
}

uint64_t AGGraphRegisterNamedTraceEvent(const char *a1, char *a2)
{
  os_unfair_lock_lock(&NamedEvents::lock);
  v4 = NamedEvents::names;
  if (!NamedEvents::names)
  {
    operator new();
  }

  v5 = *(NamedEvents::names + 8);
  if (a2)
  {
    a2 = strdup(a2);
  }

  v6 = strdup(a1);
  v7 = v5 + 1;
  if (*(v4 + 12) < (v5 + 1))
  {
    AG::vector<std::pair<unsigned char *,unsigned int>,0ul,unsigned int>::reserve_slow(v4, v7);
    v8 = *(v4 + 8);
    v7 = v8 + 1;
  }

  else
  {
    v8 = v5;
  }

  v9 = (*v4 + 16 * v8);
  *v9 = a2;
  v9[1] = v6;
  *(v4 + 8) = v7;
  os_unfair_lock_unlock(&NamedEvents::lock);
  return v5;
}

void *AG::vector<std::pair<unsigned char *,unsigned int>,0ul,unsigned int>::reserve_slow(uint64_t a1, unsigned int a2)
{
  if (*(a1 + 12) + (*(a1 + 12) >> 1) <= a2)
  {
    v3 = a2;
  }

  else
  {
    v3 = *(a1 + 12) + (*(a1 + 12) >> 1);
  }

  result = AG::details::realloc_vector<unsigned int,16ul>(*a1, (a1 + 12), v3);
  *a1 = result;
  return result;
}

void *AG::details::realloc_vector<unsigned int,16ul>(void *a1, _DWORD *a2, unsigned int a3)
{
  v4 = a1;
  if (a3)
  {
    v5 = malloc_good_size(16 * a3);
    v6 = v5 >> 4;
    if (*a2 != (v5 >> 4))
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

void *util::UntypedTable::create_buckets(void *this)
{
  if (!this[4])
  {
    v1 = this;
    *(this + 14) = 4;
    this[6] = 15;
    this = malloc_type_calloc(0x10uLL, 8uLL, 0x2004093837F09uLL);
    v1[4] = this;
    if (!this)
    {
      util::UntypedTable::create_buckets();
    }
  }

  return this;
}

void sub_1B490DB2C(_Unwind_Exception *a1)
{
  v4 = *(v1 + 64);
  if (v4)
  {
    free(v4);
  }

  AG::indirect_pointer_vector<AG::Subgraph,unsigned long>::~indirect_pointer_vector(v2);
  AG::data::zone::~zone(v1);
  _Unwind_Resume(a1);
}

uint64_t AG::Graph::intern_type(uint64_t a1, void *a2, uint64_t (*a3)(void))
{
  v30 = *MEMORY[0x1E69E9840];
  v6 = util::UntypedTable::lookup((a1 + 24), a2, 0);
  if (!v6)
  {
    v7 = a3();
    v9 = v7;
    v10 = *(*v7 - 8);
    v11 = 7;
    if ((*(v10 + 80) & 0x100000) == 0)
    {
      if (*(v10 + 64) <= 0x80uLL)
      {
        v11 = *(v10 + 80);
      }

      else
      {
        v11 = 7;
      }
    }

    *(v7 + 44) = (v11 + 28) & ~v11;
    if ((atomic_load_explicit(&qword_1ED56D3A0, memory_order_acquire) & 1) == 0)
    {
      AG::Graph::intern_type();
    }

    if (_MergedGlobals_1 == 1 && !*(v9 + 48))
    {
      *(v9 + 48) = AG::LayoutDescriptor::fetch(*(v9 + 8), (*(v9 + 40) & 3), -1);
    }

    v6 = *(a1 + 96);
    if (v6 >= 0xFFFFFF)
    {
      AG::precondition_failure("overflowed max type id: %u", v8, *(a1 + 96));
    }

    v12 = *(a1 + 96);
    if (*(a1 + 100) <= v6)
    {
      AG::vector<std::pair<unsigned int,BOOL>,0ul,unsigned int>::reserve_slow(a1 + 88, v6 + 1);
      v12 = *(a1 + 96);
    }

    *(*(a1 + 88) + 8 * v12) = v9;
    *(a1 + 96) = v12 + 1;
    v13 = util::UntypedTable::insert((a1 + 24), a2, v6);
    if (*(*(*v9 - 8) + 64) >= 0x2000uLL)
    {
      v14 = AG::misc_log(v13);
      v13 = os_log_type_enabled(v14, OS_LOG_TYPE_INFO);
      if (v13)
      {
        v15 = *(*(*(v9 + 8) - 8) + 64);
        v16 = AG::swift::metadata::name(*v9, 0);
        *buf = 67109378;
        v25 = v15;
        v26 = 2080;
        v27 = v16;
        _os_log_impl(&dword_1B490B000, v14, OS_LOG_TYPE_INFO, "large attribute self: %u bytes, %s", buf, 0x12u);
      }
    }

    if (*(*(*(v9 + 8) - 8) + 64) >= 0x2000uLL)
    {
      v17 = AG::misc_log(v13);
      if (os_log_type_enabled(v17, OS_LOG_TYPE_INFO))
      {
        v18 = (v9 + 8);
        v19 = *(*(*(v9 + 8) - 8) + 64);
        v20 = AG::swift::metadata::name(*v9, 0);
        v21 = AG::swift::metadata::name(*v18, 0);
        *buf = 67109634;
        v25 = v19;
        v26 = 2080;
        v27 = v20;
        v28 = 2080;
        v29 = v21;
        _os_log_impl(&dword_1B490B000, v17, OS_LOG_TYPE_INFO, "large attribute value: %u bytes, %s -> %s", buf, 0x1Cu);
      }
    }
  }

  v22 = *MEMORY[0x1E69E9840];
  return v6;
}

uint64_t AG::data::zone::alloc_slow(AG::data::zone *this, unsigned int a2, int a3)
{
  v6 = *(this + 4);
  if (v6)
  {
    v7 = AG::data::_shared_table_bytes + v6;
    v8 = *(AG::data::_shared_table_bytes + v6 + 16);
    v9 = v8 + v6;
    if (((v8 + v6) & 0xFFFFFE00) == v6)
    {
      v10 = *(v7 + 12);
      v11 = v10 - v8;
      v12 = (v9 + 3) & 0xFFFFFFFC;
      v13 = v11 + v9 - v12;
      if (v13 >= 8)
      {
        v14 = (AG::data::_shared_table_bytes + v12);
        v14[1] = v13;
        *v14 = *(this + 5);
        *(this + 5) = v12;
        v10 = *(v7 + 12);
      }

      *(v7 + 16) = v10;
    }
  }

  if (a2 < 0x101)
  {
    v16 = AG::data::table::alloc_page(&AG::data::_shared_table_bytes, this, 512);
    v21 = v16;
    v19 = AG::data::_shared_table_bytes;
    *(AG::data::_shared_table_bytes + v16 + 8) = *(this + 4);
    *(this + 4) = v16;
    v15 = ~a3;
  }

  else
  {
    v15 = ~a3;
    v16 = AG::data::table::alloc_page(&AG::data::_shared_table_bytes, this, (a2 + ((a3 + 24) & ~a3) + 511) & 0xFFFFFE00);
    v18 = *(this + 4);
    if (v18)
    {
      v19 = AG::data::_shared_table_bytes;
      v20 = AG::data::_shared_table_bytes + v18;
      v21 = v16;
      *(AG::data::_shared_table_bytes + v16 + 8) = *(v20 + 8);
      *(v20 + 8) = v16;
    }

    else
    {
      *(this + 4) = v16;
      v19 = AG::data::_shared_table_bytes;
      v21 = v16;
    }
  }

  v22 = v19 + v21;
  v23 = (*(v22 + 16) + a3) & v15;
  if (v23 + a2 > *(v22 + 12))
  {
    AG::precondition_failure("internal error", v17);
  }

  *(v22 + 16) = v23 + a2;
  return v23 + v16;
}

uint64_t AG::Graph::add_attribute(AG::Graph *this, AG::Subgraph *a2, unsigned int a3, const void *a4, unint64_t a5)
{
  v9 = *(*(this + 11) + 8 * a3);
  v10 = *(v9 + 40);
  if ((v10 & 0x10) != 0)
  {
    v11 = this;
  }

  else
  {
    v11 = 0;
  }

  if (a5 | *(*(*(v9 + 8) - 8) + 64))
  {
    v12 = a5;
  }

  else
  {
    v12 = v11;
  }

  v13 = *(*v9 - 8);
  v14 = *(v13 + 80);
  v15 = *(v13 + 64);
  if ((v14 & 0x100000) != 0 || v15 > 0x80)
  {
    v16 = AG::data::zone::alloc_persistent(a2, v15);
    LODWORD(v15) = 8;
    v17 = 7;
  }

  else
  {
    v16 = 0;
    v17 = v14;
  }

  v18 = (((v17 + 28) & ~v17) + v15);
  v19 = v17 | 3;
  if (v18 > 0x10)
  {
    v21 = *(a2 + 4);
    if (v21 && (v22 = (*(AG::data::_shared_table_bytes + v21 + 16) + v19) & ~v19, (v22 + v18) <= *(AG::data::_shared_table_bytes + v21 + 12)))
    {
      *(AG::data::_shared_table_bytes + v21 + 16) = v22 + v18;
      v20 = (v22 + v21);
    }

    else
    {
      v20 = AG::data::zone::alloc_slow(a2, v18, v19);
    }
  }

  else
  {
    v20 = AG::data::zone::alloc_bytes_recycle(a2, v18, v19);
  }

  v23 = AG::data::_shared_table_bytes + v20;
  *v23 = (v10 >> 1) & 4 | (a3 << 8) | v10 & 8;
  *(v23 + 7) = 32;
  *(v23 + 8) = 0;
  *(v23 + 16) = 0;
  *(v23 + 24) = 0;
  if (a3 >= 0x100000)
  {
    AG::Graph::add_attribute(v20, v18);
  }

  v24 = v20;
  v25 = (AG::data::_shared_table_bytes + v20);
  v26 = *v25;
  *v25 |= 0x20u;
  if (v26 & 8) != 0 && (*(*(*(v9 + 8) - 8) + 82))
  {
    v27 = ~*(v9 + 40) & 0x20;
  }

  else
  {
    LOBYTE(v27) = 0;
  }

  v28 = v25[7] & 0xDF | v27;
  v25[7] = v28;
  if (v16)
  {
    v25[7] = v28 | 1;
    *(AG::data::_shared_table_bytes + v20 + *(v9 + 44)) = v16;
  }

  v29 = *(*(v9 + 8) - 8);
  if ((*(v29 + 82) & 0x10) != 0 || *(v29 + 64) >= 0x81uLL)
  {
    v25[7] |= 2u;
  }

  v30 = vaddq_s64(*(this + 200), vdupq_n_s64(1uLL));
  *(this + 200) = v30;
  v31 = *(this + 27);
  if (v31 <= v30.i64[0])
  {
    v31 = v30.i64[0];
  }

  *(this + 27) = v31;
  if (*(*(*v9 - 8) + 64))
  {
    v32 = &v25[*(v9 + 44)];
    if (v25[7])
    {
      v32 = *v32;
    }

    (*(*(*v9 - 8) + 16))(v32, a4);
  }

  if (v12)
  {
    AG::Graph::value_set_internal(this, v24, v25, v12, *(v9 + 8));
  }

  else
  {
    *v25 |= 3u;
    v33 = v25[6];
    v34 = *(a2 + 25);
    if ((v33 & ~HIWORD(v34)) != 0)
    {
      *(a2 + 25) = v34 & 0xFF00FFFF | ((BYTE2(v34) | v33) << 16);
      AG::Subgraph::propagate_dirty_flags(a2);
    }
  }

  AG::Subgraph::add_node(a2, v24);
  return v24;
}

const char *init_should_record_tree(void *a1)
{
  result = getenv("AG_TREE");
  if (result)
  {
    result = atoi(result);
    v2 = result != 0;
  }

  else
  {
    v2 = 0;
  }

  should_record_tree = v2;
  return result;
}

uint64_t sub_1B490E368(uint64_t a1, uint64_t (**a2)(void, void), uint64_t a3, int a4, uint64_t (*a5)(void))
{
  v9 = swift_slowAlloc();
  v10 = a5();
  v11 = a2[5](a1, a2);
  v12 = a2[4](a1, a2);
  v13 = a2[2](a1, a2);
  v14 = AGRetainClosure(v10);
  v16 = v15;
  if (qword_1ED56CD40 != -1)
  {
    swift_once();
  }

  if (v13)
  {
    v17 = v11 | a4 | v12 | 4;
  }

  else
  {
    v17 = v11 | a4 | v12;
  }

  v18 = qword_1ED56CD48;

  *v9 = a1;
  *(v9 + 8) = a3;
  *(v9 + 16) = v14;
  *(v9 + 24) = v16;
  *(v9 + 32) = v18;
  *(v9 + 40) = v17;
  *(v9 + 44) = 0;
  *(v9 + 48) = 0;
  *(v9 + 56) = a1;
  *(v9 + 64) = a2;
  return v9;
}

void *sub_1B490E560()
{
  result = swift_slowAlloc();
  *result = 0;
  result[1] = sub_1B4944004;
  result[2] = sub_1B491C718;
  result[3] = sub_1B4944010;
  result[4] = sub_1B4944080;
  result[5] = sub_1B49440F0;
  result[6] = sub_1B494412C;
  qword_1ED56CD48 = result;
  return result;
}

uint64_t AGSubgraphShouldRecordTree()
{
  if (should_record_tree_once != -1)
  {
    AGSubgraphShouldRecordTree_cold_1();
  }

  return should_record_tree;
}

uint64_t util::UntypedTable::lookup(util::UntypedTable *this, void *a2, void **a3)
{
  if (*(this + 5))
  {
    v6 = (*this)(a2);
    v7 = *(*(this + 4) + 8 * (*(this + 6) & v6));
    if (*(this + 60))
    {
      if (v7)
      {
        while (1)
        {
          v8 = v7[1];
          if (v8 == a2)
          {
            break;
          }

          v7 = *v7;
          if (!v7)
          {
            goto LABEL_12;
          }
        }

        if (!a3)
        {
          return v7[2];
        }

        goto LABEL_18;
      }
    }

    else if (v7)
    {
      v9 = v6;
      while (v7[3] != v9 || !(*(this + 1))(v7[1], a2))
      {
        v7 = *v7;
        if (!v7)
        {
          goto LABEL_12;
        }
      }

      if (!a3)
      {
        return v7[2];
      }

      v8 = v7[1];
LABEL_18:
      *a3 = v8;
      return v7[2];
    }
  }

LABEL_12:
  result = 0;
  if (a3)
  {
    *a3 = 0;
  }

  return result;
}

uint64_t AGGraphCreateAttribute(uint64_t a1, void *a2, unint64_t a3)
{
  v5 = AG::Subgraph::_current_subgraph_key;
  v6 = *(_ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3)) + 8 * v5);
  if (!v6)
  {
    AGGraphCreateAttribute_cold_1(a1, v6);
  }

  v8 = a1;
  v9 = *(v6 + 5);

  return AG::Graph::add_attribute(v9, v6, v8, a2, a3);
}

uint64_t AG::data::table::alloc_page(os_unfair_lock_s *this, AG::data::zone *a2, int a3)
{
  os_unfair_lock_lock(this + 4);
  v7 = a3 + 511;
  v8 = (a3 + 511) >> 9;
  os_unfair_lock_opaque = this[20]._os_unfair_lock_opaque;
  v10 = os_unfair_lock_opaque << 6;
  v11 = this[7]._os_unfair_lock_opaque + v8;
  if (v11 <= os_unfair_lock_opaque << 6 && os_unfair_lock_opaque != 0)
  {
    v13 = 0;
    v14 = *&this[18]._os_unfair_lock_opaque;
    v15 = this[9]._os_unfair_lock_opaque;
    do
    {
      if (v15 + v13 >= os_unfair_lock_opaque)
      {
        v16 = os_unfair_lock_opaque;
      }

      else
      {
        v16 = 0;
      }

      v17 = v15 + v13 - v16;
      v18 = *(v14 + 8 * v17);
      if (v18 == -1)
      {
LABEL_18:
        v17 = v15;
      }

      else
      {
        v19 = ~v18;
LABEL_11:
        v6 = __clz(__rbit64(v19));
        if (v7 >= 0x400)
        {
          v20 = ((v17 << 6) | 1) + v6;
          v21 = v8 - 1;
          while (os_unfair_lock_opaque != v20 >> 6)
          {
            if ((*(v14 + 8 * (v20 >> 6)) >> v20))
            {
              v6 = 1 << v6;
              v19 &= ~v6;
              if (v19)
              {
                goto LABEL_11;
              }

              goto LABEL_18;
            }

            ++v20;
            if (!--v21)
            {
              break;
            }
          }
        }

        v10 = (v17 << 6) | v6;
        this[9]._os_unfair_lock_opaque = v17;
      }

      ++v13;
      v15 = v17;
    }

    while (v13 != os_unfair_lock_opaque);
  }

  if (v7 >= 0x200)
  {
    v22 = 0;
    v23 = v10;
    do
    {
      v24 = v23 >> 6;
      if (this[20]._os_unfair_lock_opaque == v23 >> 6)
      {
        v25 = v23 >> 6;
        if (this[21]._os_unfair_lock_opaque <= v24)
        {
          AG::vector<std::pair<unsigned int,BOOL>,0ul,unsigned int>::reserve_slow(&this[18], v24 + 1);
          v25 = this[20]._os_unfair_lock_opaque;
        }

        *(*&this[18]._os_unfair_lock_opaque + 8 * v25) = 0;
        this[20]._os_unfair_lock_opaque = v25 + 1;
        v26 = this[24]._os_unfair_lock_opaque;
        v6 = v26 + 1;
        if (this[25]._os_unfair_lock_opaque < v6)
        {
          AG::vector<std::pair<unsigned int,BOOL>,0ul,unsigned int>::reserve_slow(&this[22], v6);
          v26 = this[24]._os_unfair_lock_opaque;
          v6 = v26 + 1;
        }

        *(*&this[22]._os_unfair_lock_opaque + 8 * v26) = 0;
        this[24]._os_unfair_lock_opaque = v6;
      }

      else if (!*(*&this[18]._os_unfair_lock_opaque + 8 * v24))
      {
        AG::data::table::make_pages_reusable(this, v23, 0);
      }

      *(*&this[18]._os_unfair_lock_opaque + 8 * v24) |= 1 << v23;
      if (!v22)
      {
        *(*&this[22]._os_unfair_lock_opaque + 8 * v24) |= 1 << v23;
      }

      ++v22;
      ++v23;
    }

    while (v8 != v22);
    v11 = this[7]._os_unfair_lock_opaque + v8;
  }

  v27 = v7 & 0xFFFFFE00;
  this[7]._os_unfair_lock_opaque = v11;
  v28 = this[12]._os_unfair_lock_opaque;
  v29 = this[11]._os_unfair_lock_opaque + v27;
  if (v28 <= v29)
  {
    v28 = this[11]._os_unfair_lock_opaque + v27;
  }

  this[11]._os_unfair_lock_opaque = v29;
  this[12]._os_unfair_lock_opaque = v28;
  while (this[5]._os_unfair_lock_opaque < (v10 + v8) << 9)
  {
    AG::data::table::grow_region(this, v6);
  }

  v30 = *&this->_os_unfair_lock_opaque + (v10 << 9) + 512;
  *(v30 + 8) = 0;
  *(v30 + 12) = v27;
  *v30 = a2;
  *(v30 + 16) = 24;
  os_unfair_lock_unlock(this + 4);
  return (v10 << 9) + 512;
}

uint64_t AG::Graph::value_set_internal(AG::Graph *a1, unsigned int a2, AG::Node *this, unsigned __int8 *a4, uint64_t a5)
{
  if (*(a1 + 44))
  {
    AG::Graph::value_set_internal();
  }

  v11 = *this;
  v12 = *(*(a1 + 11) + ((v11 >> 5) & 0x7FFFFF8));
  v13 = *(v12 + 8);
  if (v13 != a5)
  {
    AG::Graph::value_set_internal(*(v12 + 8));
  }

  if ((v11 & 0x10) != 0)
  {
    v14 = (AG::data::_shared_table_bytes + *(this + 2));
    if ((*(this + 7) & 2) != 0)
    {
      v14 = *v14;
    }

    v15 = *(v12 + 40);
    v16 = (v15 & 3 | 0x80000100);
    v17 = *(v12 + 48);
    if (!v17)
    {
      v17 = AG::LayoutDescriptor::fetch(*(v12 + 8), (v15 & 3 | 0x80000100), 0);
      *(v12 + 48) = v17;
    }

    if (v17 == 1)
    {
      v17 = 0;
    }

    if (AG::LayoutDescriptor::compare(v17, v14, a4, *(*(v13 - 8) + 64), v16))
    {
      return 0;
    }

    if (*(a1 + 44))
    {
      AG::Graph::mark_changed(a1);
    }

    else
    {
      v30 = v13;
      v19 = *(AG::data::_shared_table_bytes + a2 + 20);
      if (v19 < 0x20)
      {
LABEL_30:
        ++*(a1 + 52);
      }

      else
      {
        v20 = 0;
        v31 = AG::data::_shared_table_bytes + *(AG::data::_shared_table_bytes + a2 + 24);
        v21 = v19 >> 5;
        while (1)
        {
          v22 = *(v31 + 4 * v20);
          if ((v22 & 3) != 0)
          {
            break;
          }

          v23 = AG::data::_shared_table_bytes + v22;
          v24 = *(AG::data::_shared_table_bytes + v22 + 12);
          if (v24 >= 0x20)
          {
            v25 = (AG::data::_shared_table_bytes + *(v23 + 16) + 4);
            v26 = 5 * (v24 >> 5);
            while (1)
            {
              v27 = *(v25 - 1);
              v32 = v27;
              if ((v27 & 3) != 0)
              {
                v27 = AG::AttributeID::resolve_slow(&v32, 0);
              }

              if (v27 == a2)
              {
                v28 = *v25;
                if ((*v25 & 0x10) == 0)
                {
                  if ((*(v25 - 4) & 3) == 0)
                  {
                    goto LABEL_28;
                  }

                  v5 = v5 & 0xFFFFFF0000000000 | *(v25 - 1) | (*v25 << 32);
                  if ((AG::Graph::compare_edge_values(a1, v5, v12, v14, a4) & 1) == 0)
                  {
                    break;
                  }
                }
              }

              v25 += 5;
              v26 -= 5;
              if (!v26)
              {
                goto LABEL_29;
              }
            }

            v28 = *v25;
LABEL_28:
            *v25 = v28 | 0x10;
          }

LABEL_29:
          if (++v20 == v21)
          {
            goto LABEL_30;
          }
        }

        AG::Graph::mark_changed(a1);
      }

      v13 = v30;
    }

    (*(*(v13 - 8) + 24))(v14, a4, v13);
  }

  else
  {
    AG::Node::allocate_value(this, a1, *(AG::data::_shared_table_bytes + (a2 & 0xFFFFFE00)));
    *this |= 0x10u;
    AG::Graph::mark_changed(a1, a2, 0, 0, 0);
    v29 = (AG::data::_shared_table_bytes + *(this + 2));
    if ((*(this + 7) & 2) != 0)
    {
      v29 = *v29;
    }

    (*(*(v13 - 8) + 16))(v29, a4, v13);
  }

  return 1;
}

uint64_t AG::data::zone::alloc_bytes_recycle(AG::data::zone *this, unsigned int a2, int a3)
{
  v3 = (this + 20);
  v4 = *(this + 5);
  if (v4)
  {
    v5 = AG::data::_shared_table_bytes;
    v6 = (this + 20);
    while (1)
    {
      v7 = v6;
      v6 = (AG::data::_shared_table_bytes + v4);
      v8 = v6[1];
      if (a2 <= v8)
      {
        v9 = (v4 + a3) & ~a3;
        v10 = v8 + v4 - v9;
        v11 = __OFSUB__(v10, a2);
        v12 = v10 - a2;
        if (v12 < 0 == v11 && a2 - v8 <= 0xFF)
        {
          break;
        }
      }

      v4 = *v6;
      if (!*v6)
      {
        goto LABEL_7;
      }
    }

    *v7 = *v6;
    v16 = v9 + a2;
    if (((v9 + a2) ^ v9) <= 0x1FF)
    {
      v17 = (v16 + 3) & 0xFFFFFFFC;
      v18 = v12 + v16 - v17;
      if (v18 >= 8)
      {
        v19 = (v5 + v17);
        v19[1] = v18;
        *v19 = *v3;
        *v3 = v17;
      }
    }
  }

  else
  {
LABEL_7:
    v13 = *(this + 4);
    if (!v13)
    {
      return AG::data::zone::alloc_slow(this, a2, a3);
    }

    v14 = (*(AG::data::_shared_table_bytes + v13 + 16) + a3) & ~a3;
    if (v14 + a2 > *(AG::data::_shared_table_bytes + v13 + 12))
    {
      return AG::data::zone::alloc_slow(this, a2, a3);
    }

    *(AG::data::_shared_table_bytes + v13 + 16) = v14 + a2;
    return (v14 + v13);
  }

  return v9;
}

void AG::Graph::mark_changed(uint64_t a1, unsigned int a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  if (*(a1 + 176))
  {

    AG::Graph::mark_changed(a1);
  }

  else
  {
    v11 = *(AG::data::_shared_table_bytes + a2 + 20);
    if (v11 < 0x20)
    {
LABEL_18:
      ++*(a1 + 416);
    }

    else
    {
      v12 = 0;
      v21 = AG::data::_shared_table_bytes + *(AG::data::_shared_table_bytes + a2 + 24);
      v13 = v11 >> 5;
      while (1)
      {
        v14 = *(v21 + 4 * v12);
        if ((v14 & 3) != 0)
        {
          break;
        }

        v15 = AG::data::_shared_table_bytes + v14;
        v16 = *(AG::data::_shared_table_bytes + v14 + 12);
        if (v16 >= 0x20)
        {
          v17 = (AG::data::_shared_table_bytes + *(v15 + 16) + 4);
          v18 = 5 * (v16 >> 5);
          while (1)
          {
            v19 = *(v17 - 1);
            v22 = v19;
            if ((v19 & 3) != 0)
            {
              v19 = AG::AttributeID::resolve_slow(&v22, 0);
            }

            if (v19 == a2)
            {
              v20 = *v17;
              if ((*v17 & 0x10) == 0)
              {
                if ((*(v17 - 4) & 3) == 0)
                {
                  goto LABEL_16;
                }

                v5 = v5 & 0xFFFFFF0000000000 | *(v17 - 1) | (*v17 << 32);
                if ((AG::Graph::compare_edge_values(a1, v5, a3, a4, a5) & 1) == 0)
                {
                  break;
                }
              }
            }

            v17 += 5;
            v18 -= 5;
            if (!v18)
            {
              goto LABEL_17;
            }
          }

          v20 = *v17;
LABEL_16:
          *v17 = v20 | 0x10;
        }

LABEL_17:
        if (++v12 == v13)
        {
          goto LABEL_18;
        }
      }

      AG::Graph::mark_changed(a1);
    }
  }
}

void AG::Subgraph::insert_attribute(uint64_t a1, uint64_t a2, int a3)
{
  v3 = a2 & 0xFFFFFE00;
  v4 = a2 & 3;
  if (!a3)
  {
    goto LABEL_12;
  }

  if ((a2 & 3) == 0 && *(AG::data::_shared_table_bytes + a2 + 6))
  {
    LOWORD(v4) = 0;
    v8 = 2;
    goto LABEL_19;
  }

  v5 = AG::data::_shared_table_bytes + (a2 & 0xFFFFFE00);
  v6 = *(v5 + 20);
  if (*(v5 + 20))
  {
    v7 = AG::data::_shared_table_bytes + 4;
    v8 = 2;
    do
    {
      while ((v6 & 3) != 0)
      {
        if ((v6 & 3) != 3 || !v6)
        {
          goto LABEL_13;
        }
      }

      v9 = v6 + v3;
      if (!*(AG::data::_shared_table_bytes + 6 + (v6 + v3)))
      {
        break;
      }

      v6 = *(v7 + v9);
      v8 = v9;
    }

    while (*(v7 + v9));
  }

  else
  {
LABEL_12:
    v8 = 2;
  }

LABEL_13:
  if ((a2 & 3) == 0)
  {
LABEL_19:
    v10 = 4;
    v11 = 0xFFFFFFFFLL;
    goto LABEL_20;
  }

  if (v4 != 1)
  {
    v12 = 0;
    goto LABEL_21;
  }

  v10 = 14;
  v11 = 4294967292;
LABEL_20:
  v12 = (AG::data::_shared_table_bytes + (v11 & a2) + v10);
LABEL_21:
  if ((v8 & 3) == 0)
  {
    v13 = 4;
    v14 = -1;
    goto LABEL_25;
  }

  if ((v8 & 3) == 1)
  {
    v13 = 14;
    v14 = -4;
LABEL_25:
    v15 = (AG::data::_shared_table_bytes + (v14 & v8) + v13);
    goto LABEL_28;
  }

  v16 = AG::data::_shared_table_bytes + (a2 & 0xFFFFFE00);
  v17 = (v16 + 22);
  v15 = (v16 + 20);
  if (!a3)
  {
    v15 = v17;
  }

LABEL_28:
  *v12 = *v15;
  *v15 = ((a2 & 0xFFFC) - v3) | v4;
}

uint64_t *AGSubgraphAddChild2(uint64_t a1, uint64_t a2, char a3)
{
  result = *(a1 + 16);
  if (!result)
  {
    AGSubgraphMove_cold_1(result, a2);
  }

  v5 = *(a2 + 16);
  if (v5)
  {

    return AG::Subgraph::add_child(result, v5, a3);
  }

  return result;
}

void AG::Subgraph::add_node(uint64_t a1, unsigned int a2)
{
  v4 = a2;
  *(AG::data::_shared_table_bytes + a2 + 6) = 0;
  AG::Subgraph::insert_attribute(a1, a2, 1);
  if (*(a1 + 96))
  {
    v5 = *(*(a1 + 40) + 280);
    if (!v5)
    {
      operator new();
    }

    v11[0] = a1;
    v11[2] = v11;
    v6 = std::__hash_table<std::__hash_value_type<AG::Subgraph *,AG::Graph::TreeDataElement>,std::__unordered_map_hasher<AG::Subgraph *,std::__hash_value_type<AG::Subgraph *,AG::Graph::TreeDataElement>,std::hash<AG::Subgraph *>,std::equal_to<AG::Subgraph *>,true>,std::__unordered_map_equal<AG::Subgraph *,std::__hash_value_type<AG::Subgraph *,AG::Graph::TreeDataElement>,std::equal_to<AG::Subgraph *>,std::hash<AG::Subgraph *>,true>,std::allocator<std::__hash_value_type<AG::Subgraph *,AG::Graph::TreeDataElement>>>::__emplace_unique_key_args<AG::Subgraph *,std::piecewise_construct_t const&,std::tuple<AG::Subgraph *&&>,std::tuple<>>(v5, v11);
    v7 = v6[4];
    v8 = v7 + 1;
    if (v6[5] < (v7 + 1))
    {
      v10 = v6;
      AG::vector<std::unique_ptr<char const,util::free_deleter>,0ul,unsigned long>::reserve_slow((v6 + 3), v8);
      v6 = v10;
      v7 = v10[4];
      v8 = v7 + 1;
    }

    v9 = (v6[3] + 8 * v7);
    *v9 = *(a1 + 96);
    v9[1] = a2;
    v6[4] = v8;
    *(v6 + 48) = 0;
  }

  if ((*(a1 + 105) & 4) == 0 && (*(AG::data::_shared_table_bytes + v4) & 8) != 0)
  {
    *(a1 + 105) |= 4u;
    AG::Subgraph::foreach_ancestor<AG::Subgraph::propagate_node_flags(void)::$_0>(a1);
  }

  if (*(*(a1 + 40) + 176))
  {
    AG::Subgraph::add_node();
  }
}

void AG::Graph::intern_type()
{
  if (__cxa_guard_acquire(&qword_1ED56D3A0))
  {
    _MergedGlobals_1 = _ZZN2AG5Graph11intern_typeEmNS_17ClosureFunctionVPIPvJEEEENK3__0clEv();

    __cxa_guard_release(&qword_1ED56D3A0);
  }
}

char *_ZZN2AG5Graph11intern_typeEmNS_17ClosureFunctionVPIPvJEEEENK3__0clEv()
{
  result = getenv("AG_PREFETCH_LAYOUTS");
  if (result)
  {
    return (atoi(result) != 0);
  }

  return result;
}

uint64_t *AG::Subgraph::add_child(AG::Subgraph *this, unint64_t a2, char a3)
{
  v3 = *(this + 5);
  if (*(a2 + 40) != v3)
  {
    AG::Subgraph::add_child(this, a2);
  }

  v8 = (a2 + 56);
  v7 = *(a2 + 56);
  if (v7)
  {
    v11 = v7 & 0xFFFFFFFFFFFFFFFELL;
    v10 = *(v11 + 32);
    if (!v10)
    {
      v10 = v11;
    }

    v9 = &v10[*(v11 + 40)];
  }

  else
  {
    v9 = &v8[v7 != 0];
    v10 = (a2 + 56);
  }

  while (v10 != v9)
  {
    if (*v10 == this)
    {
      AG::Subgraph::add_child(this, a2);
    }

    ++v10;
  }

  if (*(v3 + 176))
  {
    AG::Subgraph::add_child();
  }

  v12 = a3 & 3 | a2;
  v13 = *(this + 18);
  v14 = v13 + 1;
  if (*(this + 19) < v13 + 1)
  {
    AG::vector<std::pair<unsigned int,BOOL>,0ul,unsigned int>::reserve_slow(this + 64, v14);
    v13 = *(this + 18);
    v14 = v13 + 1;
  }

  *(*(this + 8) + 8 * v13) = v12;
  *(this + 18) = v14;
  v15 = *(a2 + 100);
  v16 = v15 | (v15 >> 8);
  v17 = *(this + 25);
  if (((v15 | BYTE1(v15)) & ~(v17 >> 8)) != 0)
  {
    *(this + 25) = v17 & 0xFFFF00FF | ((BYTE1(v17) | v16) << 8);
    v21 = (BYTE1(v17) | v16 | v17);
    AG::Subgraph::foreach_ancestor<AG::Subgraph::propagate_flags(void)::$_0>(this, &v21);
    v15 = *(a2 + 100);
    v17 = *(this + 25);
  }

  v18 = BYTE2(v15) | HIBYTE(v15);
  if ((v18 & ~HIBYTE(v17)) != 0)
  {
    v19 = v18 | HIBYTE(v17);
    *(this + 25) = v17 & 0xFFFFFF | (v19 << 24);
    v22 = v19 | BYTE2(v17);
    AG::Subgraph::foreach_ancestor<AG::Subgraph::propagate_dirty_flags(void)::$_0>(this, &v22);
  }

  if ((*(this + 105) & 4) != 0)
  {
    AG::Subgraph::foreach_ancestor<AG::Subgraph::propagate_node_flags(void)::$_0>(this);
  }

  return AG::indirect_pointer_vector<AG::Subgraph,unsigned long>::push_back(v8, this);
}

uint64_t *AG::indirect_pointer_vector<AG::Subgraph,unsigned long>::push_back(uint64_t *result, uint64_t a2)
{
  v3 = *result;
  if (*result)
  {
    v4 = (v3 & 0xFFFFFFFFFFFFFFFELL);
    v5 = *((v3 & 0xFFFFFFFFFFFFFFFELL) + 40);
    v6 = v5 + 1;
    if (v4[6] < (v5 + 1))
    {
      result = AG::vector<AG::Subgraph *,4ul,unsigned long>::reserve_slow(v4, v6);
      v5 = v4[5];
      v6 = v5 + 1;
    }

    v7 = v4[4];
    if (!v7)
    {
      v7 = v4;
    }

    v7[v5] = a2;
    v4[5] = v6;
  }

  else
  {
    if (v3)
    {
      operator new();
    }

    *result = a2;
  }

  return result;
}

void AG::Graph::propagate_dirty(uint64_t a1)
{
  v1 = MEMORY[0x1EEE9AC00](a1);
  v3 = v2;
  v54 = v1;
  v59 = *MEMORY[0x1E69E9840];
  v57 = 0u;
  v58 = 256;
  if ((v2 & 3) > 1)
  {
    v5 = 0;
    if ((v2 & 3) == 2)
    {
      goto LABEL_73;
    }

    LODWORD(v6) = 0;
    goto LABEL_9;
  }

  if ((v2 & 3) != 0)
  {
    v7 = AG::data::_shared_table_bytes;
    v8 = (AG::data::_shared_table_bytes + (v2 & 0xFFFFFFFC));
    v9 = v8[5];
    v10 = v8[6];
    v11 = *v8;
    v55 = v11;
    if ((v11 & 3) != 0)
    {
      v11 = AG::AttributeID::resolve_slow(&v55, 0);
    }

    v5 = (v7 + v10);
    LODWORD(v6) = v9 >> 5;
    if ((v11 & 3) == 0)
    {
      v4 = (AG::data::_shared_table_bytes + v11);
      goto LABEL_11;
    }

LABEL_9:
    v12 = 0;
    goto LABEL_12;
  }

  v4 = (AG::data::_shared_table_bytes + v2);
  v5 = (AG::data::_shared_table_bytes + v4[6]);
  LODWORD(v6) = v4[5] >> 5;
LABEL_11:
  v12 = *v4;
LABEL_12:
  v52 = v3;
  v53 = v3 & 0xFFFFFE00;
  v6 = v6;
  while (1)
  {
    for (i = v6 - 1; i >= 0; --i)
    {
      v14 = v5[i];
      if ((v14 & 3) != 0)
      {
        if ((v5[i] & 3) != 1)
        {
          continue;
        }

        v15 = AG::data::_shared_table_bytes + (v14 & 0xFFFFFFFC);
        v16 = *(v15 + 8);
        if ((v16 & 1) == 0)
        {
          continue;
        }

        v18 = v15 + 20;
        v17 = *(v15 + 20);
        v19 = AG::data::_shared_table_bytes + *(v18 + 4);
        v20 = v17 >> 5;
        if ((v16 & 2) == 0)
        {
          v21 = v12;
LABEL_26:
          if (v20)
          {
            goto LABEL_27;
          }

          continue;
        }

        if (v17 >= 0x20)
        {
          v31 = *(AG::data::_shared_table_bytes + (v14 & 0xFFFFFE00));
          if (v31)
          {
            v32 = *(v31 + 48);
            if (v32)
            {
              v33 = *(AG::data::_shared_table_bytes + v53);
              if (!v33 || v32 != *(v33 + 48))
              {
                v34 = util::UntypedTable::lookup((v54 + 104), v32, 0);
                if (v34)
                {
                  if (*(v34 + 64) != *(*v34 + 424))
                  {
                    AG::Graph::Context::call_invalidation(v34, v52);
                  }
                }
              }
            }
          }

          v21 = v12;
LABEL_27:
          if (i)
          {
            v28 = *(&v57 + 1);
            if (v58 < *(&v57 + 1) + 1)
            {
              AG::vector<std::pair<AG::ConstOutputEdgeArrayRef,AG::AttributeID>,256ul,unsigned long>::reserve_slow(__dst, *(&v57 + 1) + 1);
              v28 = *(&v57 + 1);
            }

            v29 = v57;
            if (!v57)
            {
              v29 = __dst;
            }

            v30 = &v29[24 * v28];
            *v30 = v19;
            *(v30 + 1) = v20;
            *(v30 + 4) = v21;
            ++*(&v57 + 1);
          }

          else
          {
            v5 = v19;
            v12 = v21;
            i = v20;
          }
        }
      }

      else
      {
        v20 = 0;
        v22 = AG::data::_shared_table_bytes;
        v23 = (AG::data::_shared_table_bytes + v14);
        v24 = *(AG::data::_shared_table_bytes + v14);
        v19 = 0;
        if ((v12 & 4) != 0 && (v24 & 4) == 0)
        {
          v24 |= 4u;
          *v23 = v24;
          v19 = v22 + v23[6];
          v20 = v23[5] >> 5;
        }

        v21 = v24 | v12;
        if (v24)
        {
          goto LABEL_26;
        }

        v25 = *(v54 + 176);
        if (v25)
        {
          for (j = 8 * v25 - 8; j != -8; j -= 8)
          {
            v40 = *(*(v54 + 168) + j);
            (*(*v40 + 256))(v40, v14, 1);
          }

          v24 = *v23;
          v22 = AG::data::_shared_table_bytes;
        }

        *v23 = v24 | 1;
        v26 = *(v23 + 6);
        if (*(v23 + 6))
        {
          v41 = *(v22 + (v14 & 0xFFFFFE00));
          if (v41)
          {
            v42 = *(v41 + 25);
            if ((v26 & ~HIWORD(v42)) != 0)
            {
              *(v41 + 25) = v42 & 0xFF00FFFF | ((BYTE2(v42) | v26) << 16);
              AG::Subgraph::propagate_dirty_flags(v41);
              v22 = AG::data::_shared_table_bytes;
            }
          }
        }

        v27 = v23[5];
        v19 = v22 + v23[6];
        v20 = v27 >> 5;
        if ((*(v23 + 7) & 4) == 0)
        {
          goto LABEL_26;
        }

        if (v27 >= 0x20)
        {
          v35 = *(v22 + (v14 & 0xFFFFFE00));
          if (v35)
          {
            v36 = *(v35 + 48);
            if (v36)
            {
              v37 = *(v22 + v53);
              if (!v37 || v36 != *(v37 + 48))
              {
                v38 = util::UntypedTable::lookup((v54 + 104), v36, 0);
                if (v38)
                {
                  if (*(v38 + 64) != *(*v38 + 424))
                  {
                    AG::Graph::Context::call_invalidation(v38, v52);
                  }
                }
              }
            }
          }

          goto LABEL_27;
        }
      }
    }

    if (!*(&v57 + 1))
    {
      break;
    }

    v43 = v57;
    if (!v57)
    {
      v43 = __dst;
    }

    v44 = &v43[24 * *(&v57 + 1)];
    v5 = *(v44 - 3);
    v6 = *(v44 - 2);
    v12 = *(v44 - 2);
    --*(&v57 + 1);
  }

  v45 = AG::Graph::_current_update_key;
  v46 = *(_ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3)) + 8 * v45);
  if (v46)
  {
    while (1)
    {
      v47 = (v46 & 0xFFFFFFFFFFFFFFFELL);
      v48 = v47[13];
      if (v48)
      {
        break;
      }

LABEL_71:
      v46 = v47[2];
      if (!v46)
      {
        goto LABEL_72;
      }
    }

    v49 = v47 + 4;
    if (v47[12])
    {
      v49 = v47[12];
    }

    v50 = &v49[v48 - 1] + 1;
    while ((*v50 & 4) == 0)
    {
      *v50 |= 4u;
      v50 -= 2;
      if (!--v48)
      {
        goto LABEL_71;
      }
    }
  }

LABEL_72:
  v5 = v57;
LABEL_73:
  if (v5)
  {
    free(v5);
  }

  v51 = *MEMORY[0x1E69E9840];
}

void sub_1B490FA44(_Unwind_Exception *exception_object)
{
  v3 = *(v1 + 6144);
  if (v3)
  {
    free(v3);
  }

  _Unwind_Resume(exception_object);
}

uint64_t AG::LayoutDescriptor::Builder::should_visit_fields(AG::LayoutDescriptor::Builder *this, const AG::swift::metadata *a2, char a3, int a4)
{
  if ((a3 & 1) != 0 || (v6 = AG::LayoutDescriptor::fetch(a2, (*(this + 2) | 0x80000200), 1u, a4)) == 0)
  {
    v9 = a2 - 8;
    if (*(*(a2 - 1) + 82))
    {
      v10 = 2;
    }

    else
    {
      v10 = 3;
    }

    if (*(this + 2) < v10)
    {
      return 1;
    }

    v11 = AG::LayoutDescriptor::equality_override_for_type(a2, a2);
    if (v11)
    {
      v12 = v11;
      v13 = *(this + 4);
      if (v13)
      {
        v14 = (v13 + 16);
      }

      else
      {
        v14 = (this + 40);
      }

      v15 = *(this + 2);
      v16 = *(*v9 + 64);
      v17 = v14[1];
      if (v14[2] < (v17 + 1))
      {
        v32 = v14;
        v34 = v11;
        AG::vector<std::variant<AG::LayoutDescriptor::Builder::DataItem,AG::LayoutDescriptor::Builder::EqualsItem,AG::LayoutDescriptor::Builder::EqualsOverrideItem,AG::LayoutDescriptor::Builder::IndirectItem,AG::LayoutDescriptor::Builder::ExistentialItem,AG::LayoutDescriptor::Builder::HeapRefItem,AG::LayoutDescriptor::Builder::NestedItem,AG::LayoutDescriptor::Builder::EnumItem>,0ul,unsigned long>::reserve_slow(v14, v17 + 1);
        v14 = v32;
        v12 = v34;
        v17 = v32[1];
      }

      result = 0;
      v18 = *v14 + 56 * v17;
      *v18 = v15;
      *(v18 + 8) = v16;
      *(v18 + 16) = a2;
      *(v18 + 24) = v12;
      v19 = 2;
    }

    else
    {
      v26 = AG::swift::metadata::equatable(a2);
      if (!v26)
      {
        return 1;
      }

      v27 = v26;
      v28 = *(this + 4);
      if (v28)
      {
        v14 = (v28 + 16);
      }

      else
      {
        v14 = (this + 40);
      }

      v29 = *(this + 2);
      v30 = *(*v9 + 64);
      v31 = v14[1];
      if (v14[2] < (v31 + 1))
      {
        v33 = v14;
        v36 = v26;
        AG::vector<std::variant<AG::LayoutDescriptor::Builder::DataItem,AG::LayoutDescriptor::Builder::EqualsItem,AG::LayoutDescriptor::Builder::EqualsOverrideItem,AG::LayoutDescriptor::Builder::IndirectItem,AG::LayoutDescriptor::Builder::ExistentialItem,AG::LayoutDescriptor::Builder::HeapRefItem,AG::LayoutDescriptor::Builder::NestedItem,AG::LayoutDescriptor::Builder::EnumItem>,0ul,unsigned long>::reserve_slow(v14, v31 + 1);
        v14 = v33;
        v27 = v36;
        v31 = v33[1];
      }

      result = 0;
      v18 = *v14 + 56 * v31;
      *v18 = v29;
      *(v18 + 8) = v30;
      *(v18 + 16) = a2;
      *(v18 + 24) = v27;
      v19 = 1;
    }

    *(v18 + 48) = v19;
    ++v14[1];
    return result;
  }

  v7 = v6;
  if (v6 == 1)
  {
    AG::LayoutDescriptor::Builder::add_field(this, *(*(a2 - 1) + 64));
    return 0;
  }

  else
  {
    v20 = *(this + 4);
    if (v20)
    {
      v21 = (v20 + 16);
    }

    else
    {
      v21 = (this + 40);
    }

    v22 = *(this + 2);
    v23 = *(*(a2 - 1) + 64);
    v24 = v21[1];
    if (v21[2] < (v24 + 1))
    {
      v35 = v6;
      AG::vector<std::variant<AG::LayoutDescriptor::Builder::DataItem,AG::LayoutDescriptor::Builder::EqualsItem,AG::LayoutDescriptor::Builder::EqualsOverrideItem,AG::LayoutDescriptor::Builder::IndirectItem,AG::LayoutDescriptor::Builder::ExistentialItem,AG::LayoutDescriptor::Builder::HeapRefItem,AG::LayoutDescriptor::Builder::NestedItem,AG::LayoutDescriptor::Builder::EnumItem>,0ul,unsigned long>::reserve_slow(v21, v24 + 1);
      v7 = v35;
      v24 = v21[1];
    }

    result = 0;
    v25 = *v21 + 56 * v24;
    *v25 = v22;
    *(v25 + 8) = v23;
    *(v25 + 16) = v7;
    *(v25 + 48) = 6;
    ++v21[1];
  }

  return result;
}

uint64_t AG::Subgraph::foreach_ancestor<AG::Subgraph::propagate_node_flags(void)::$_0>(uint64_t result)
{
LABEL_1:
  v1 = result;
  v2 = *(result + 56);
  if (v2)
  {
    v3 = *((v2 & 0xFFFFFFFFFFFFFFFELL) + 40);
  }

  else
  {
    v3 = v2 != 0;
  }

  v4 = v3 - 1;
  if (v3 - 1 >= 0)
  {
    do
    {
      result = *(v1 + 56);
      if (result)
      {
        v5 = result & 0xFFFFFFFFFFFFFFFELL;
        if (*((result & 0xFFFFFFFFFFFFFFFELL) + 32))
        {
          v5 = *((result & 0xFFFFFFFFFFFFFFFELL) + 32);
        }

        result = *(v5 + 8 * v4);
      }

      if ((*(result + 105) & 4) == 0)
      {
        *(result + 105) |= 4u;
        if (!v4)
        {
          goto LABEL_1;
        }

        result = AG::Subgraph::foreach_ancestor<AG::Subgraph::propagate_node_flags(void)::$_0>();
      }
    }

    while (v4-- > 0);
  }

  return result;
}

uint64_t AG::Graph::add_indirect_attribute(uint64_t a1, AG::data::zone *this, unsigned int a3, uint64_t a4, unint64_t a5, unsigned __int8 a6, char a7, char a8)
{
  v38 = a3;
  if ((a3 & 3) != 0)
  {
    a3 = AG::AttributeID::resolve_slow(&v38, 4);
  }

  else
  {
    v15 = 0;
  }

  v38 = a3;
  v16 = &v15[a4];
  if (__CFADD__(v15, a4) || v16 >= 0x3FFFFFFF)
  {
    AG::precondition_failure("indirect attribute overflowed: %lu + %lu", v15, v15, a4);
  }

  if (a6)
  {
    v17 = AG::AttributeID::size(&v38);
    if ((v18 & 1) != 0 && v16 + a5 > v17)
    {
      AG::precondition_failure("invalid size for indirect attribute: %d vs %u", v18, a5 - v16, v17);
    }
  }

  v19 = AG::data::_shared_table_bytes;
  v20 = *(AG::data::_shared_table_bytes + (v38 & 0xFFFFFE00));
  if (a8)
  {
    v21 = 0;
    if ((a7 & 1) == 0)
    {
      goto LABEL_10;
    }
  }

  else
  {
    v21 = 2 * (*(v20 + 6) != *(this + 6));
    if ((a7 & 1) == 0)
    {
LABEL_10:
      v22 = AG::data::zone::alloc_bytes_recycle(this, 0x10u, 3);
      v23 = v22;
      v24 = AG::data::_shared_table_bytes;
      v25 = AG::data::_shared_table_bytes + v22;
      v26 = v38;
      *v25 = v38;
      if (v26 < 4)
      {
        v27 = 0;
      }

      else
      {
        v27 = *(*(v24 + (v26 & 0xFFFFFE00)) + 24) & 0x7FFFFFFF;
      }

      *(v25 + 4) = v27;
      *(v25 + 8) = v21 | (4 * v16);
      if ((a6 & (a5 < 0xFFFF)) != 0)
      {
        v30 = a5;
      }

      else
      {
        v30 = -1;
      }

      *(v25 + 12) = v30;
      v31 = v20 != this;
      v32 = this;
      goto LABEL_29;
    }
  }

  v28 = *(this + 4);
  if (v28 && (v29 = (*(AG::data::_shared_table_bytes + v28 + 16) + 3) & 0xFFFFFFFC, v29 + 40 <= *(AG::data::_shared_table_bytes + v28 + 12)))
  {
    *(AG::data::_shared_table_bytes + v28 + 16) = v29 + 40;
    v22 = v29 + v28;
  }

  else
  {
    v22 = AG::data::zone::alloc_slow(this, 0x28u, 3);
    v19 = AG::data::_shared_table_bytes;
  }

  v33 = v19 + v22;
  v34 = v38;
  *v33 = v38;
  if (v34 < 4)
  {
    v35 = 0;
  }

  else
  {
    v35 = *(*(v19 + (v34 & 0xFFFFFE00)) + 24) & 0x7FFFFFFF;
  }

  *(v33 + 4) = v35;
  *(v33 + 8) = v21 | (4 * v16) | 1;
  if ((a6 & (a5 < 0xFFFF)) != 0)
  {
    v36 = a5;
  }

  else
  {
    v36 = -1;
  }

  *(v33 + 12) = v36;
  *(v33 + 16) = 0;
  *(v33 + 24) = 0;
  *(v33 + 28) = *v33;
  *(v33 + 36) = v16;
  AG::Graph::add_input_dependencies(a1, (v22 | 1), v38);
  v32 = this;
  v23 = v22;
  v31 = 1;
LABEL_29:
  AG::Subgraph::add_indirect(v32, v23, v31);
  return v22;
}

unint64_t anonymous namespace::create_offset_attribute(unint64_t a1, const char *a2, unint64_t a3, unsigned __int8 a4)
{
  v7 = a1;
  if (a2)
  {
    if (a2 >= 0x3FFFFFFF)
    {
      AG::precondition_failure("invalid offset: %u, %lu", a2, a1, a2);
    }
  }

  else if (a4)
  {
    v12 = a1;
    if ((a1 & 3) == 1)
    {
      a1 = AG::AttributeID::size(&v12);
      if (v8 == a4 && (v8 & 1) != 0)
      {
        if (a1 == a3)
        {
          return v7;
        }
      }

      else if (v8 == a4)
      {
        return v7;
      }
    }
  }

  v9 = AG::Subgraph::_current_subgraph_key;
  v10 = *(_ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3)) + 8 * v9);
  if (!v10)
  {
    AGGraphCreateAttribute_cold_1(a1, 0);
  }

  return AG::Graph::add_indirect_attribute(v10[5], v10, v7, a2, a3, a4, 0, 0) | 1;
}

unint64_t AG::AttributeID::size(AG::AttributeID *this)
{
  v1 = *this;
  if ((*this & 3) == 1)
  {
    v4 = *(AG::data::_shared_table_bytes + (v1 & 0xFFFFFFFC) + 12);
    if (v4 == 0xFFFF)
    {
      LODWORD(v2) = 0;
    }

    else
    {
      LODWORD(v2) = v4;
    }

    v3 = v2 >> 8;
  }

  else if ((v1 & 3) != 0)
  {
    LOBYTE(v2) = 0;
    v3 = 0;
  }

  else
  {
    v2 = *(*(*(*(*(*(*(AG::data::_shared_table_bytes + (v1 & 0xFFFFFE00)) + 40) + 88) + ((*(AG::data::_shared_table_bytes + v1) >> 5) & 0x7FFFFF8)) + 8) - 8) + 64);
    v3 = v2 >> 8;
  }

  return v2 | (v3 << 8);
}

uint64_t AG::LayoutDescriptor::compare(AG::LayoutDescriptor *this, AG::LayoutDescriptor *a2, unsigned __int8 *a3, char *a4, unint64_t *a5)
{
  v16 = *MEMORY[0x1E69E9840];
  if (a2 == a3)
  {
    v5 = 1;
LABEL_13:
    v10 = *MEMORY[0x1E69E9840];
    return v5;
  }

  if (this)
  {
    *v14 = 0u;
    v15 = 8;
    v5 = AG::LayoutDescriptor::Compare::operator()(v13, this, a2);
    v6 = v14[0];
    if (v14[0])
    {
      v7 = v14[0];
    }

    else
    {
      v7 = v13;
    }

    if (v14[1])
    {
      v8 = 0;
      do
      {
        AG::LayoutDescriptor::Compare::Enum::~Enum(v7);
        ++v8;
        v7 = (v9 + 64);
      }

      while (v8 < v14[1]);
      v6 = v14[0];
    }

    if (v6)
    {
      free(v6);
    }

    goto LABEL_13;
  }

  v12 = *MEMORY[0x1E69E9840];

  return AG::LayoutDescriptor::compare_bytes_top_level(a2, a3, a4, a5, a5);
}

uint64_t AG::Graph::value_set(AG::Graph *a1, const char *a2, uint64_t a3, unsigned __int8 *a4)
{
  v7 = (AG::data::_shared_table_bytes + a2);
  if (*(v7 + 3) >= 0x20u && (*v7 & 0x10) != 0)
  {
    AG::precondition_failure("can only set initial value of computed attributes: %u", a2, a2);
  }

  v8 = a2;
  v9 = AG::Graph::_current_update_key;
  v10 = *(_ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3)) + 8 * v9);
  if ((v10 & 1) == 0)
  {
    v11 = (v10 & 0xFFFFFFFFFFFFFFFELL);
    if (v11)
    {
      if (*v11 == a1)
      {
        AG::Graph::value_set(v7, a2);
      }
    }
  }

  v12 = AG::Graph::value_set_internal(a1, v8, v7, a4, a3);
  if (v12)
  {
    AG::Graph::propagate_dirty(a1);
  }

  return v12;
}

uint64_t AGGraphSetValue(uint64_t a1, char *a2, uint64_t a3)
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

  v5 = a1;
  v6 = *(v3 + 40);

  return AG::Graph::value_set(v6, v5, a3, a2);
}

double AG::absolute_time_to_seconds(AG *this)
{
  {
    AG::absolute_time_to_seconds(unsigned long long)::time_scale = AG::absolute_time_to_seconds(unsigned long long)::$_0::operator()();
  }

  return *&AG::absolute_time_to_seconds(unsigned long long)::time_scale * this;
}

uint64_t AG::LayoutDescriptor::mode_for_type(AG::swift::metadata *a1, uint64_t a2)
{
  if (a1)
  {
    v3 = AG::swift::metadata::descriptor(a1);
    if (v3)
    {
      v4 = v3;
      {
        AG::LayoutDescriptor::compare_heap_objects();
      }

      v6 = *(v5 + 368);
      v7 = *(v5 + 376);
      v8 = &v6[2 * v7];
      while (v7)
      {
        v9 = v7 >> 1;
        v10 = &v6[2 * (v7 >> 1)];
        v12 = *v10;
        v11 = v10 + 2;
        v7 += ~(v7 >> 1);
        if (v4 > v12)
        {
          v6 = v11;
        }

        else
        {
          v7 = v9;
        }
      }

      if (v6 != v8 && *v6 == v4)
      {
        a2 = *(v6 + 2);
      }

      os_unfair_lock_unlock((v5 + 364));
    }
  }

  return a2;
}

void AG::Subgraph::add_indirect(uint64_t a1, int a2, int a3)
{
  AG::Subgraph::insert_attribute(a1, a2 & 0xFFFFFFFE | 1, a3);
  if (*(*(a1 + 40) + 176))
  {
    AG::Subgraph::add_indirect();
  }
}

double AG::current_time(AG *this)
{
  v1 = mach_absolute_time();

  return AG::absolute_time_to_seconds(v1);
}

unint64_t AG::LayoutDescriptor::equality_override_for_type(AG::LayoutDescriptor *this, const AG::swift::metadata *a2)
{
  if (!this)
  {
    return 0;
  }

  v2 = AG::swift::metadata::descriptor(this);
  if (v2)
  {
    {
      AG::LayoutDescriptor::compare_heap_objects();
    }

    v4 = *(v3 + 392);
    v5 = *(v3 + 400);
    v6 = &v4[2 * v5];
    while (v5)
    {
      v7 = v5 >> 1;
      v8 = &v4[2 * (v5 >> 1)];
      v10 = *v8;
      v9 = v8 + 2;
      v5 += ~(v5 >> 1);
      if (v2 > v10)
      {
        v4 = v9;
      }

      else
      {
        v5 = v7;
      }
    }

    if (v4 != v6 && *v4 == v2)
    {
      v2 = v4[1];
    }

    else
    {
      v2 = 0;
    }

    os_unfair_lock_unlock((v3 + 364));
  }

  return v2;
}

uint64_t AG::LayoutDescriptor::Builder::commit(AG::LayoutDescriptor::Builder *this, const AG::swift::metadata *a2)
{
  v27 = *MEMORY[0x1E69E9840];
  v4 = *(this + 6);
  if (*(this + 3))
  {
    v5 = *(this + 5);
    if (v4 != 1)
    {
      goto LABEL_12;
    }
  }

  else
  {
    if (!v4)
    {
      goto LABEL_10;
    }

    if (v4 != 1)
    {
      v5 = *(this + 5);
      goto LABEL_12;
    }

    v5 = *(this + 5);
    if (!*(v5 + 48))
    {
LABEL_10:
      v6 = 1;
      goto LABEL_46;
    }
  }

  if (v5 && *(v5 + 48) == 6 && !*v5)
  {
    v6 = *(v5 + 16);
    goto LABEL_46;
  }

  v4 = 1;
LABEL_12:
  *size = 0u;
  v7 = 512;
  v26 = 512;
  v21 = __dst;
  v22 = 0;
  v23 = 0;
  if (v4)
  {
    v8 = 56 * v4;
    do
    {
      v9 = *(v5 + 48);
      if (v9 == -1)
      {
        std::__throw_bad_variant_access[abi:ne200100]();
      }

      __p.__r_.__value_.__r.__words[0] = &v21;
      (off_1F2CB2F70[v9])(&__p, v5);
      v5 += 56;
      v8 -= 56;
    }

    while (v8);
    v4 = size[1];
    v7 = v26;
  }

  if (v7 < v4 + 1)
  {
    AG::vector<unsigned char,512ul,unsigned long>::reserve_slow(__dst, v4 + 1);
    v4 = size[1];
  }

  v10 = size[0];
  if (!size[0])
  {
    v10 = __dst;
  }

  v10[v4] = 0;
  ++size[1];
  if (*(this + 3))
  {
    if (v23)
    {
      v6 = 0;
      goto LABEL_44;
    }

LABEL_26:
    os_unfair_lock_lock(&AG::LayoutDescriptor::Builder::_lock);
    v11 = size[1];
    if (size[1] < 0x400)
    {
      v12 = AG::LayoutDescriptor::Builder::_avail;
      if (AG::LayoutDescriptor::Builder::_avail >= size[1])
      {
        v6 = AG::LayoutDescriptor::Builder::_buffer;
      }

      else
      {
        AG::LayoutDescriptor::Builder::_avail = 4096;
        v6 = malloc_type_malloc(0x1000uLL, 0x100004077774924uLL);
        AG::LayoutDescriptor::Builder::_buffer = v6;
        v11 = size[1];
        v12 = AG::LayoutDescriptor::Builder::_avail;
      }

      AG::LayoutDescriptor::Builder::_buffer = v6 + v11;
      AG::LayoutDescriptor::Builder::_avail = v12 - v11;
    }

    else
    {
      v6 = malloc_type_malloc(size[1], 0x100004077774924uLL);
    }

    os_unfair_lock_unlock(&AG::LayoutDescriptor::Builder::_lock);
    if (size[0])
    {
      v13 = size[0];
    }

    else
    {
      v13 = __dst;
    }

    v14 = memcpy(v6, v13, size[1]);
    {
      memset(&__p, 0, sizeof(__p));
      AG::LayoutDescriptor::print(&__p, v6);
      if (*(this + 3))
      {
        fprintf(*MEMORY[0x1E69E9848], "== Unknown heap type %p ==\n%s");
      }

      else
      {
        v15 = AG::swift::metadata::name(a2, 0);
        v16 = *MEMORY[0x1E69E9848];
        if (v15)
        {
          v19 = *(*(a2 - 1) + 64);
          fprintf(v16, "== %s, %d bytes ==\n%s");
        }

        else
        {
          fprintf(v16, "== Unknown type %p ==\n%s");
        }
      }

      if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(__p.__r_.__value_.__l.__data_);
      }
    }

    goto LABEL_44;
  }

  v23 |= v22 > *(*(a2 - 1) + 64);
  if ((v23 & 1) == 0)
  {
    goto LABEL_26;
  }

  v6 = 1;
LABEL_44:
  if (size[0])
  {
    free(size[0]);
  }

LABEL_46:
  v17 = *MEMORY[0x1E69E9840];
  return v6;
}

void sub_1B4910A44(_Unwind_Exception *a1)
{
  if (STACK[0x250])
  {
    free(STACK[0x250]);
  }

  _Unwind_Resume(a1);
}

void sub_1B4910B48(_Unwind_Exception *a1)
{
  v5 = v3;
  if (v5)
  {
    v7 = (v4 - 56);
    v8 = -v5;
    do
    {
      util::UntypedTable::~UntypedTable(v7);
      v7 = (v9 - 64);
      v8 += 64;
    }

    while (v8);
  }

  MEMORY[0x1B8C7ACE0](v1, v2);
  _Unwind_Resume(a1);
}

uint64_t sub_1B4910B8C()
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

void AG::anonymous namespace::TypeDescriptorCache::fetch()
{
  if (__cxa_guard_acquire(&qword_1ED56D3B8))
  {
    __cxa_guard_release(&qword_1ED56D3B8);
  }
}

AG *AG::LayoutDescriptor::fetch(AG::LayoutDescriptor *this, const AG::swift::metadata *a2, int a3)
{
  v4 = a2;
  {
    AG::LayoutDescriptor::compare_heap_objects();
  }
}

AG *AG::anonymous namespace::TypeDescriptorCache::fetch(uint64_t a1, AG::swift::metadata *a2, int a3, unsigned int a4, int a5)
{
  v10 = a3;
  os_unfair_lock_lock(a1);
  v11 = a1 + (a4 << 6);
  v31 = 0;
  v12 = util::UntypedTable::lookup((v11 + 8), (v10 | a2), &v31);
  if (v31)
  {
    layout = v12;
    ++*(a1 + 416);
LABEL_24:
    os_unfair_lock_unlock(a1);
    return layout;
  }

  ++*(a1 + 424);
  os_unfair_lock_unlock(a1);
  if (atomic_load_explicit(&qword_1ED56D3B8, memory_order_acquire))
  {
    if ((a3 & 0x200) != 0)
    {
LABEL_17:
      v23 = AG::current_time(v14);
      layout = AG::LayoutDescriptor::make_layout(a2, v10, a4);
      v25 = AG::current_time(layout);
      if (a3 < 0)
      {
        os_unfair_lock_lock(a1);
      }

      else
      {
        v26 = v25;
        {
          v28 = *MEMORY[0x1E69E9848];
          v29 = AG::swift::metadata::name(a2, 0);
          v27 = v26 - v23;
          fprintf(v28, "!! synchronous layout creation for %s: %g ms\n", v29, v27 * 1000.0);
        }

        else
        {
          v27 = v26 - v23;
        }

        os_unfair_lock_lock(a1);
        *(a1 + 440) = v27 + *(a1 + 440);
      }

      util::UntypedTable::insert((v11 + 8), (v10 | a2), layout);
      goto LABEL_24;
    }
  }

  else
  {
    if ((a3 & 0x200) != 0)
    {
      goto LABEL_17;
    }
  }

  if ((_MergedGlobals_2 & 1) == 0)
  {
    goto LABEL_17;
  }

  os_unfair_lock_lock(a1);
  util::UntypedTable::insert((v11 + 8), (v10 | a2), 0);
  v15 = *(a1 + 336);
  if (*(a1 + 344) < (v15 + 1))
  {
    AG::vector<std::pair<char const*,unsigned long>,8ul,unsigned long>::reserve_slow((a1 + 200), v15 + 1);
    v15 = *(a1 + 336);
  }

  v16 = v10 & 0xFF00FFFF | (a4 << 16);
  v17 = *(a1 + 328);
  if (!v17)
  {
    v17 = a1 + 200;
  }

  v18 = v17 + 16 * v15;
  *v18 = a2;
  *(v18 + 8) = v16;
  *(v18 + 12) = a5;
  v19 = *(a1 + 328);
  v20 = *(a1 + 336) + 1;
  *(a1 + 336) = v20;
  if (v19)
  {
    v21 = v19;
  }

  else
  {
    v21 = a1 + 200;
  }

  if ((*(a1 + 360) & 1) == 0)
  {
    *(a1 + 360) = 1;
    global_queue = dispatch_get_global_queue(-2, 0);
  }

  os_unfair_lock_unlock(a1);
  return 0;
}

uint64_t std::__sift_up[abi:ne200100]<std::_ClassicAlgPolicy,std::less<AG::anonymous namespace::TypeDescriptorCache::QueueEntry> &,AG::anonymous namespace::TypeDescriptorCache::QueueEntry*>(uint64_t result, uint64_t a2, uint64_t a3)
{
  v13 = *MEMORY[0x1E69E9840];
  v3 = a3 - 2;
  if (a3 >= 2)
  {
    v4 = v3 >> 1;
    v5 = result + 16 * (v3 >> 1);
    v6 = *(a2 - 4);
    if (*(v5 + 12) < v6)
    {
      v8 = *(a2 - 16);
      v7 = a2 - 16;
      v11 = v8;
      v12 = *(v7 + 8);
      do
      {
        v9 = v7;
        v7 = v5;
        *v9 = *v5;
        if (!v4)
        {
          break;
        }

        v4 = (v4 - 1) >> 1;
        v5 = result + 16 * v4;
      }

      while (*(v5 + 12) < v6);
      *v7 = v11;
      *(v7 + 8) = v12;
      *(v7 + 12) = v6;
    }
  }

  v10 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t AG::LayoutDescriptor::compare_bytes_top_level(AG::LayoutDescriptor *this, unsigned __int8 *a2, char *a3, int a4, unint64_t *a5)
{
  v21 = 0;
  v8 = AG::LayoutDescriptor::compare_bytes(this, a2, a3, &v21, a5);
  v9 = v8;
  if (a4 < 0 && (v8 & 1) == 0)
  {
    v10 = AG::Graph::_current_update_key;
    v11 = *(_ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3)) + 8 * v10);
    if ((v11 & 1) == 0)
    {
      v12 = (v11 & 0xFFFFFFFFFFFFFFFELL);
      if (v12)
      {
        v13 = *v12;
        v14 = *(*v12 + 176);
        if (v14)
        {
          v16 = v12 + 4;
          v18 = v12[12];
          v17 = v12[13];
          if (v18)
          {
            v16 = v18;
          }

          v19 = LODWORD(v16[v17 - 1]);
          v20 = 8 * v14 - 8;
          do
          {
            (*(**(*(v13 + 168) + v20) + 360))(*(*(v13 + 168) + v20), v19, this, a2, v21, 1, 0);
            v20 -= 8;
          }

          while (v20 != -8);
        }
      }
    }
  }

  return v9;
}

uint64_t AG::LayoutDescriptor::compare_bytes(AG::LayoutDescriptor *this, void *a2, char *a3, void *a4, unint64_t *a5)
{
  if (a3 < 8 || ((a2 | this) & 7) != 0)
  {
    v5 = this;
    if (!a3)
    {
      return 1;
    }
  }

  else
  {
    v5 = this;
    while (*a2 == *v5)
    {
      ++a2;
      v5 = (v5 + 8);
      a3 -= 8;
      if (a3 < 8)
      {
        if (a3)
        {
          goto LABEL_11;
        }

        return 1;
      }
    }

    if (!a4)
    {
      return 0;
    }
  }

LABEL_11:
  v6 = v5 - this;
  while (*a2 == *v5)
  {
    a2 = (a2 + 1);
    v5 = (v5 + 1);
    ++v6;
    if (!--a3)
    {
      return 1;
    }
  }

  if (!a4)
  {
    return 0;
  }

  result = 0;
  *a4 = v6;
  return result;
}

double AG::absolute_time_to_seconds(unsigned long long)::$_0::operator()()
{
  if (mach_timebase_info(&info))
  {
    return NAN;
  }

  LODWORD(v0) = info.numer;
  LODWORD(v1) = info.denom;
  return v0 / v1 * 0.000000001;
}

uint64_t AG::anonymous namespace::print_layouts(AG::_anonymous_namespace_ *this)
{
  if ((atomic_load_explicit(&qword_1ED56D3B0, memory_order_acquire) & 1) == 0)
  {
  }

  return dword_1ED56D3AC;
}

void AG::anonymous namespace::print_layouts()
{
  if (__cxa_guard_acquire(&qword_1ED56D3B0))
  {

    __cxa_guard_release(&qword_1ED56D3B0);
  }
}

char *AG::anonymous namespace::print_layouts(void)::$_0::operator()()
{
  result = getenv("AG_PRINT_LAYOUTS");
  if (result)
  {

    return atoi(result);
  }

  return result;
}

uint64_t AGGraphGetValue(unint64_t a1, const char *a2, AG::swift::metadata *a3, uint64_t a4, uint64_t a5)
{
  v5 = a3;
  if ((a2 & 4) == 0)
  {
    v6 = AG::Graph::_current_update_key;
    v7 = *(_ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3)) + 8 * v6);
    if ((v7 & 1) == 0)
    {
      v8 = (v7 & 0xFFFFFFFFFFFFFFFELL);
      if ((v7 & 0xFFFFFFFFFFFFFFFELL) != 0)
      {
        v9 = a2;
        v45 = 0;
        v10 = *v8;
        v11 = v8 + 4;
        v13 = v8[12];
        v12 = v8[13];
        if (v13)
        {
          v11 = v13;
        }

        v14 = LODWORD(v11[v12 - 1]);
        v46 = a1;
        v15 = v9 & 0xB;
        v16 = &v14[AG::data::_shared_table_bytes];
        v17 = *&v14[AG::data::_shared_table_bytes + 12];
        if (v17 > 0x11F)
        {
          v34 = a1;
          v40 = v14;
          v42 = v10;
          v36 = v9;
          v32 = &v14[AG::data::_shared_table_bytes];
          a1 = AG::Graph::index_of_input_slow(v10, &v14[AG::data::_shared_table_bytes], a1 | (v15 << 40) | 0xF00000000);
          v14 = v40;
          v10 = v42;
          v9 = v36;
          v5 = a3;
          v18 = a1;
          v16 = v32;
          LODWORD(a1) = v34;
        }

        else
        {
          if (v17 < 0x20)
          {
LABEL_12:
            v18 = -1;
            return AG::Graph::input_value_ref_slow(v10, v14, a1, 0, v9, v5, &v45, v18);
          }

          v18 = 0;
          v19 = v17 >> 5;
          v20 = (*(v16 + 4) + AG::data::_shared_table_bytes + 4);
          while (*(v20 - 1) != a1 || (*v20 & 0xF) != v15)
          {
            ++v18;
            v20 += 5;
            if (v19 == v18)
            {
              goto LABEL_12;
            }
          }
        }

        if ((v18 & 0x8000000000000000) == 0)
        {
          v24 = *(v16 + 4);
          v25 = AG::data::_shared_table_bytes;
          if ((a1 & 3) != 0)
          {
            v41 = v14;
            v43 = v10;
            v39 = v5;
            v37 = v9;
            v33 = *(v16 + 4);
            v35 = v18;
            v31 = AG::data::_shared_table_bytes;
            LODWORD(a1) = AG::AttributeID::resolve_slow(&v46, 3);
            v25 = v31;
            v24 = v33;
            v18 = v35;
            v9 = v37;
            v5 = v39;
            v26 = v30;
            v14 = v41;
            v10 = v43;
          }

          else
          {
            v26 = 0;
          }

          v27 = AG::data::_shared_table_bytes;
          v28 = AG::data::_shared_table_bytes + a1;
          if ((*v28 & 0x11) == 0x10)
          {
            *(v25 + v24 + 5 * v18 + 4) |= 0x20u;
            v29 = (v27 + *(v28 + 8));
            if ((*(v28 + 7) & 2) != 0)
            {
              v29 = *v29;
            }

            return v29 + v26;
          }

          LODWORD(a1) = v46;
        }

        return AG::Graph::input_value_ref_slow(v10, v14, a1, 0, v9, v5, &v45, v18);
      }
    }
  }

  if (dword_1ED56D738 <= (a1 & 0xFFFFFFFC))
  {
    AG::precondition_failure("invalid data offset: %u", a2, a3, a4, a5, a3, a1 & 0xFFFFFFFC);
  }

  v22 = *(AG::data::_shared_table_bytes + (a1 & 0xFFFFFE00));
  if (!v22)
  {
    AG::precondition_failure("no graph: %u", a2, a3, a4, a5, a3, a1);
  }

  v23 = *(v22 + 40);
  v44 = 0;
  return AG::Graph::value_ref(v23, a1, 0, a3, &v44);
}

uint64_t AG::Graph::value_ref(uint64_t result, const char *a2, int a3, AG::swift::metadata *a4, _BYTE *a5)
{
  v7 = a3;
  v8 = a2;
  v9 = result;
  v22 = a2;
  ++*(result + 424);
  if ((a2 & 3) != 0)
  {
    if (a3)
    {
      v21 = 25;
    }

    else
    {
      v21 = 11;
    }

    result = AG::AttributeID::resolve_slow(&v22, v21);
    v8 = result;
    v10 = a2;
    if (v7)
    {
LABEL_3:
      result = 0;
      if (v8 < 4 || (v8 & 3) != 0)
      {
        return result;
      }
    }
  }

  else
  {
    v10 = 0;
    if (a3)
    {
      goto LABEL_3;
    }
  }

  if (*(*(AG::data::_shared_table_bytes + (v8 & 0xFFFFFE00)) + 40) != v9)
  {
    AG::Graph::add_input_dependencies(result, a2);
  }

  v11 = (AG::data::_shared_table_bytes + v8);
  if ((*(*(*(v9 + 11) + ((*v11 >> 5) & 0x7FFFFF8)) + 40) & 0x10) != 0)
  {
    goto LABEL_22;
  }

  v12 = AG::Graph::_current_update_key;
  v13 = *(_ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3)) + 8 * v12);
  if (v13)
  {
    while (1)
    {
      v14 = (v13 & 0xFFFFFFFFFFFFFFFELL);
      if (*v14 == v9)
      {
        break;
      }

      v13 = v14[2];
      if (!v13)
      {
        goto LABEL_10;
      }
    }
  }

  else
  {
LABEL_10:
    ++*(v9 + 49);
  }

  if (v7)
  {
    v15 = AG::data::table::raw_page_seed(&AG::data::_shared_table_bytes, (v8 & 0xFFFFFE00));
    if ((v15 & 0x100000000) != 0)
    {
      v7 = v15 & 0x7FFFFFFF;
    }

    else
    {
      v7 = v15;
    }

    v16 = (v15 & 0x100000000uLL) >> 32;
  }

  else
  {
    LOBYTE(v16) = 0;
  }

  if (AG::Graph::update_attribute(v9, v8, 0))
  {
    *a5 |= 1u;
  }

  if ((v16 & 1) == 0 || (v17 = AG::data::table::raw_page_seed(&AG::data::_shared_table_bytes, (v8 & 0xFFFFFE00)), result = 0, (v17 & 0x100000000) != 0) && v7 == v17)
  {
LABEL_22:
    v18 = *v11;
    if (!v10)
    {
      v19 = *(*(*(v9 + 11) + ((v18 >> 5) & 0x7FFFFF8)) + 8);
      if (v19 != a4)
      {
        AG::Graph::value_set_internal(v19);
      }
    }

    if ((v18 & 0x10) == 0)
    {
      AG::precondition_failure("attribute being read has no value: %u", a2, v8);
    }

    v20 = (AG::data::_shared_table_bytes + v11[2]);
    if ((*(v11 + 7) & 2) != 0)
    {
      v20 = *v20;
    }

    if (v10)
    {
      return &v10[v20 - 1];
    }

    else
    {
      return v20;
    }
  }

  return result;
}

uint64_t AG::LayoutDescriptor::Compare::operator()(void *a1, AG::LayoutDescriptor **a2, const unsigned __int8 *a3, const unsigned __int8 *a4, unint64_t *a5, uint64_t a6, unsigned int a7)
{
  v103 = a4;
  v104 = a3;
  v108 = *MEMORY[0x1E69E9840];
  v7 = a1[65];
  v106 = a1;
  v107 = v7;
  if (a6 == -1)
  {
    v8 = -1;
  }

  else
  {
    v8 = a5 + a6;
  }

  if (v8 <= a5)
  {
LABEL_121:
    v89 = 1;
    goto LABEL_122;
  }

  v9 = a5;
  v10 = a2;
  v12 = a2;
  v102 = v8;
  v99 = a7;
  v100 = (a7 >> 8) & 1;
  while (1)
  {
    v14 = *v12;
    v12 = (v12 + 1);
    v13 = v14;
    if ((v14 - 64) < 0x40)
    {
      v9 += (v13 & 0x3F) + 1;
      goto LABEL_8;
    }

    if (v13 > 12)
    {
      v18 = v13 - 14;
      if ((v13 - 14) < 9)
      {
        goto LABEL_76;
      }

      if (v13 == 23)
      {
        v51 = a1[64];
        if (!v51)
        {
          v51 = a1;
        }

        v52 = a1[65];
        v53 = &v51[8 * v52];
        v54 = *(v53 - 3);
        v55 = *(v53 - 6);
        v56 = *(v53 - 5);
        v59 = v53 - 8;
        v57 = *(v53 - 8);
        v58 = v59[1];
        v60 = (v55 - v58);
        v61 = (v56 - v58);
        v62 = v54 == 1;
        v63 = v103;
        if (v62)
        {
          v63 = v60;
        }

        v103 = v63;
        v64 = v104;
        if (v62)
        {
          v64 = v61;
        }

        v104 = v64;
        v9 = *(*(v57 - 8) + 64) + v58;
        v65 = v52 - 1;
        a1[65] = v65;
        AG::LayoutDescriptor::Compare::Enum::~Enum(&v51[8 * v65]);
        goto LABEL_79;
      }

      v8 = v102;
      if (v13 == 13)
      {
        v18 = 0;
        v19 = 0;
        do
        {
          v20 = *v12;
          v12 = (v12 + 1);
          v18 |= (v20 & 0x7F) << v19;
          v19 += 7;
        }

        while (v20 < 0);
        goto LABEL_76;
      }

      goto LABEL_115;
    }

    if (v13 > 6)
    {
      if (v13 <= 9)
      {
        if (v13 == 7)
        {
          v45 = 0;
          v48 = 0;
          v46 = *(v10 + 1);
          v12 = (v10 + 9);
          do
          {
            v49 = *v12;
            v12 = (v12 + 1);
            v45 |= (v49 & 0x7F) << v48;
            v48 += 7;
          }

          while (v49 < 0);
        }

        else
        {
          if (v13 != 8)
          {
            v18 = 0;
            v21 = 0;
            do
            {
              v22 = *v12;
              v12 = (v12 + 1);
              v18 |= (v22 & 0x7F) << v21;
              v21 += 7;
            }

            while (v22 < 0);
            goto LABEL_34;
          }

          v45 = *(v10 + 5);
          v12 = (v10 + 7);
          v46 = &AG::LayoutDescriptor::base_address[*(v10 + 1)];
        }

        if (v45 >= v8 - v9)
        {
          v50 = v8 - v9;
        }

        else
        {
          v50 = v45;
        }

        if (AG::LayoutDescriptor::Compare::operator()(a1, v46, v104))
        {
          goto LABEL_56;
        }

        goto LABEL_133;
      }

      v18 = v13 - 10;
LABEL_34:
      v26 = *v12++;
      v15 = v26;
      v27 = v26 - 8;
      v28 = *(*(v26 - 1) + 88);
      v29 = &v103[v9];
      v101 = v28(&v103[v9], v26);
      v30 = &v104[v9];
      v17 = v28(&v104[v9], v26);
      if (v101 != v17)
      {
LABEL_128:
        AG::LayoutDescriptor::Compare::failed(v17, v99, v104, v103, v9, *(*(v15 - 1) + 64), v15);
        goto LABEL_133;
      }

      if (v100)
      {
        v34 = 0;
        v32 = v29;
        v33 = v30;
      }

      else
      {
        v31 = *(*v27 + 64);
        if (v31 <= 0x1000)
        {
          MEMORY[0x1EEE9AC00](v17);
          v32 = &v98 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
          bzero(v32, v31);
          MEMORY[0x1EEE9AC00](v66);
          v33 = v32;
          bzero(v32, v31);
          v34 = 0;
        }

        else
        {
          v32 = malloc_type_malloc(v31, 0x100004077774924uLL);
          v33 = malloc_type_malloc(v31, 0x100004077774924uLL);
          v34 = 1;
        }
      }

      v67 = a1[65];
      if (a1[66] < (v67 + 1))
      {
        AG::vector<AG::LayoutDescriptor::Compare::Enum,8ul,unsigned long>::reserve_slow(a1, v67 + 1);
        v67 = a1[65];
      }

      v68 = a1[64];
      if (!v68)
      {
        v68 = a1;
      }

      v97 = v34;
      v69 = v100;
      AG::LayoutDescriptor::Compare::Enum::Enum(&v68[8 * v67], v15, v100 ^ 1, v101, v9, v29, v30, v32, v33, v97);
      v70 = a1[65] + 1;
      a1[65] = v70;
      v71 = a1[64];
      if (!v71)
      {
        v71 = a1;
      }

      v72 = &v71[8 * v70 - 4];
      v73 = (v72[1] - v9);
      v74 = (*v72 - v9);
      v75 = v103;
      if (!v69)
      {
        v75 = v74;
      }

      v76 = v104;
      if (!v69)
      {
        v76 = v73;
      }

      v103 = v75;
      v104 = v76;
LABEL_76:
      v77 = a1[64];
      if (!v77)
      {
        v77 = a1;
      }

      if (v18 == LODWORD(v77[8 * a1[65] - 2]))
      {
        goto LABEL_79;
      }

      v78 = 0;
      v8 = v102;
      while (1)
      {
        while (1)
        {
          while (1)
          {
            while (1)
            {
              v79 = v78;
              v80 = v12;
              v82 = *v12;
              v12 = (v12 + 1);
              v81 = v82;
              if (v82 <= 12)
              {
                break;
              }

              if ((v81 - 14) >= 9)
              {
                if (v81 == 13)
                {
                  if (!v78)
                  {
                    goto LABEL_110;
                  }

                  do
                  {
                    v86 = *v12;
                    v12 = (v12 + 1);
                  }

                  while (v86 < 0);
                }

                else if (v81 == 23)
                {
                  --v78;
                  if (!v79)
                  {
LABEL_110:
                    v12 = v80;
                    goto LABEL_8;
                  }
                }
              }

              else if (!v78)
              {
                goto LABEL_110;
              }
            }

            if (v81 > 7)
            {
              break;
            }

            if (v81 > 3)
            {
              if (v81 == 4)
              {
                v83 = 1;
LABEL_104:
                v12 = (v80 + v83 + 8);
              }

              else if (v81 == 7)
              {
                v12 = (v80 + 9);
                do
                {
                  v85 = *v12;
                  v12 = (v12 + 1);
                }

                while (v85 < 0);
              }
            }

            else
            {
              if ((v81 - 1) < 3)
              {
                v83 = 9;
                goto LABEL_104;
              }

              if (!v81)
              {
                goto LABEL_110;
              }
            }
          }

          if ((v81 - 10) >= 3)
          {
            break;
          }

LABEL_93:
          v12 = (v80 + 9);
          ++v78;
        }

        if (v81 == 8)
        {
          v12 = (v80 + 7);
        }

        else if (v81 == 9)
        {
          do
          {
            v84 = *(v80 + 1);
            v80 = (v80 + 1);
          }

          while (v84 < 0);
          goto LABEL_93;
        }
      }
    }

    if (v13 > 3)
    {
      break;
    }

    if ((v13 - 1) < 2)
    {
      v15 = *(v10 + 1);
      v12 = (v10 + 17);
      v16 = *(*(v15 - 1) + 64) + v9;
      if (v16 <= v8)
      {
        if (v13 == 1)
        {
          v47 = *(v10 + 1);
          v17 = AGDispatchEquatable();
        }

        else
        {
          v17 = (*(v10 + 9))[1](**(v10 + 9), *(v10 + 1), &v104[v9], &v103[v9]);
        }

        if ((v17 & 1) == 0)
        {
          goto LABEL_128;
        }
      }

      else
      {
        v17 = AG::LayoutDescriptor::compare_bytes(&v104[v9], &v103[v9], (v8 - v9), 0, a5);
        if ((v17 & 1) == 0)
        {
          goto LABEL_128;
        }
      }

      v9 = v16;
      goto LABEL_8;
    }

    if (v13 == 3)
    {
      v35 = *(v10 + 1);
      v105 = *(v10 + 9);
      v36 = *(*(v35 - 1) + 64);
      v37 = a1[64];
      if (!v37)
      {
        v37 = a1;
      }

      v38 = v99;
      v39 = AG::LayoutDescriptor::compare_indirect(&v105, v37[8 * a1[65] - 8], v35, v99 & 0x7FFFFFFF, &v104[v9], &v103[v9]);
      *(v10 + 9) = v105;
      if (!v39)
      {
        AG::LayoutDescriptor::Compare::failed(v39, v38, v104, v103, v9, *(*(v35 - 1) + 64), v35);
        goto LABEL_133;
      }

      v12 = (v10 + 17);
      v9 += v36;
LABEL_79:
      v8 = v102;
      goto LABEL_8;
    }

    if (!v13)
    {
      goto LABEL_121;
    }

LABEL_115:
    if ((v13 & 0x80) != 0)
    {
      v87 = v13 & 0x7F;
      if (v8 - v9 >= v87 + 1)
      {
        v50 = v87 + 1;
      }

      else
      {
        v50 = v8 - v9;
      }

      v105 = 0;
      v88 = AG::LayoutDescriptor::compare_bytes(&v104[v9], &v103[v9], v50, &v105, a5);
      if ((v88 & 1) == 0)
      {
        AG::LayoutDescriptor::Compare::failed(v88, v99, v104, v103, v105 + v9, 1, 0);
        goto LABEL_133;
      }

LABEL_56:
      v9 += v50;
    }

LABEL_8:
    v10 = v12;
    if (v9 >= v8)
    {
      goto LABEL_121;
    }
  }

  if ((v13 - 5) < 2)
  {
    v23 = *&v104[v9];
    v24 = *&v103[v9];
    if (v23 == v24 || (v25 = AG::LayoutDescriptor::compare_heap_objects(v23, v24, (v99 & 0x7FFFFFFF), v13 == 6), (v25 & 1) != 0))
    {
      v9 += 8;
      goto LABEL_8;
    }

    AG::LayoutDescriptor::Compare::failed(v25, v99, v104, v103, v9, 8, 0);
    goto LABEL_133;
  }

  if (v13 != 4)
  {
    goto LABEL_115;
  }

  v40 = *v12;
  v41 = *(*(*v12 - 1) + 64);
  v42 = v103;
  v43 = v99;
  v44 = AG::LayoutDescriptor::compare_existential_values(*v12, &v104[v9], &v103[v9], (v99 & 0x7FFFFFFF));
  if (v44)
  {
    v9 += v41;
    v12 = (v10 + 9);
    goto LABEL_79;
  }

  AG::LayoutDescriptor::Compare::failed(v44, v43, v104, v42, v9, *(*(v40 - 1) + 64), v40);
LABEL_133:
  v89 = 0;
LABEL_122:
  v90 = v106;
  v91 = v107;
  while (1)
  {
    v92 = v90[65];
    if (v92 <= v91)
    {
      break;
    }

    v93 = v92 - 1;
    v90[65] = v93;
    v94 = v90[64];
    if (!v94)
    {
      v94 = v90;
    }

    AG::LayoutDescriptor::Compare::Enum::~Enum(&v94[8 * v93]);
  }

  v95 = *MEMORY[0x1E69E9840];
  return v89;
}

uint64_t AG::Graph::value_state(uint64_t a1, const char *a2)
{
  v7 = a2;
  v3 = a2;
  if ((a2 & 3) != 0)
  {
    v3 = AG::AttributeID::resolve_slow(&v7, 2);
  }

  if (*(*(AG::data::_shared_table_bytes + (v3 & 0xFFFFFE00)) + 40) != a1)
  {
    AG::Graph::add_input_dependencies(v3, a2);
  }

  if ((v3 & 3) != 0)
  {
    return 0;
  }

  v5 = AG::data::_shared_table_bytes + v3;
  v6 = *v5 & 3;
  if ((*v5 & 0xC0) != 0)
  {
    v6 = *v5 & 3 | 4;
  }

  return (*v5 >> 1) & 8 | (16 * ((*v5 >> 2) & 1)) & 0xFFFFFF3F | (((*v5 >> 3) & 1) << 6) & 0xFFFFFF7F | v6 & 0xFFFFFF7F | *(v5 + 7) & 0x20 | (((*(v5 + 7) >> 6) & 1) << 7);
}

uint64_t AG::swift::metadata_visitor::visit_field(uint64_t a1, AG::swift::metadata *a2, uint64_t a3, uint64_t a4, unint64_t a5)
{
  v6 = *(a3 + 4);
  v7 = (v6 + a3 + 4);
  if (v6)
  {
    v8 = v7 == 0;
  }

  else
  {
    v8 = 1;
  }

  if (v8)
  {
    return (**a1)(a1);
  }

  v16 = 0;
  v11 = AG::swift::metadata::mangled_type_name_ref(a2, v7, 0, &v16);
  if (!v11)
  {
    return (**a1)(a1);
  }

  v12 = *(v11 - 1);
  if (*(v12 + 64) >= a5)
  {
    v13 = a5;
  }

  else
  {
    v13 = *(v12 + 64);
  }

  if (*v11 == 772)
  {
    v14 = v13;
  }

  else
  {
    v14 = *(v12 + 64);
  }

  return (*(*a1 + 8))(a1, v11, v16, a4, v14);
}

uint64_t AG::LayoutDescriptor::Builder::visit_element(AG::LayoutDescriptor::Builder *this, AG::swift::metadata *a2, int a3, uint64_t a4, uint64_t a5)
{
  if (a5)
  {
    *(this + 2) += a4;
    if (a3)
    {
      AG::LayoutDescriptor::Builder::add_field(this, a5);
    }

    else
    {
      v9 = *(this + 2);
      *(this + 2) = AG::LayoutDescriptor::mode_for_type(a2, v9);
      if (AG::LayoutDescriptor::Builder::should_visit_fields(this, a2, 0, v10))
      {
        v11 = *(this + 4);
        v12 = v11 ? (v11 + 16) : (this + 40);
        v13 = *(v12 + 1);
        if (!v13 || (v14 = *v12 + 56 * v13, v14 == 56) || *(v14 - 8))
        {
          v15 = 0;
          v16 = -1;
        }

        else
        {
          v16 = *(v14 - 56);
          v15 = *(v14 - 48);
        }

        if ((AG::swift::metadata::visit(a2, this) & 1) == 0)
        {
          v17 = *(this + 4);
          if (v17)
          {
            v18 = (v17 + 16);
          }

          else
          {
            v18 = (this + 40);
          }

          for (i = v18[1]; i > v13; i = v18[1])
          {
            v20 = i - 1;
            v18[1] = v20;
            std::__variant_detail::__dtor<std::__variant_detail::__traits<AG::LayoutDescriptor::Builder::DataItem,AG::LayoutDescriptor::Builder::EqualsItem,AG::LayoutDescriptor::Builder::EqualsOverrideItem,AG::LayoutDescriptor::Builder::IndirectItem,AG::LayoutDescriptor::Builder::ExistentialItem,AG::LayoutDescriptor::Builder::HeapRefItem,AG::LayoutDescriptor::Builder::NestedItem,AG::LayoutDescriptor::Builder::EnumItem>,(std::__variant_detail::_Trait)1>::__destroy[abi:ne200100](*v18 + 56 * v20);
          }

          if (i)
          {
            v21 = v16 == -1;
          }

          else
          {
            v21 = 1;
          }

          if (!v21)
          {
            v22 = *v18 + 56 * i;
            if (*(v22 - 8))
            {
              std::__variant_detail::__dtor<std::__variant_detail::__traits<AG::LayoutDescriptor::Builder::DataItem,AG::LayoutDescriptor::Builder::EqualsItem,AG::LayoutDescriptor::Builder::EqualsOverrideItem,AG::LayoutDescriptor::Builder::IndirectItem,AG::LayoutDescriptor::Builder::ExistentialItem,AG::LayoutDescriptor::Builder::HeapRefItem,AG::LayoutDescriptor::Builder::NestedItem,AG::LayoutDescriptor::Builder::EnumItem>,(std::__variant_detail::_Trait)1>::__destroy[abi:ne200100](v22 - 56);
              *(v22 - 56) = v16;
              *(v22 - 48) = v15;
              *(v22 - 8) = 0;
            }

            else
            {
              *(v22 - 56) = v16;
              *(v22 - 48) = v15;
            }
          }

          AG::LayoutDescriptor::Builder::add_field(this, a5);
        }
      }

      *(this + 2) = v9;
    }

    *(this + 2) -= a4;
  }

  return 1;
}

uint64_t AG::LayoutDescriptor::make_layout(AG::swift::metadata *a1, uint64_t a2, int a3)
{
  v11 = &unk_1F2CB2378;
  v12 = AG::LayoutDescriptor::mode_for_type(a1, a2);
  v13 = a3;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  if (a3 == 2)
  {
    v6 = AG::swift::metadata::visit_heap(a1, &v11, 2);
  }

  else if (a3 == 1)
  {
    if ((*a1 - 2048) <= 0xFFFFFFFFFFFFF800 && !AG::LayoutDescriptor::Builder::should_visit_fields(&v11, a1, 1, v5))
    {
      goto LABEL_11;
    }

    v6 = AG::swift::metadata::visit_heap(a1, &v11, 5);
  }

  else
  {
    if (a3)
    {
      goto LABEL_12;
    }

    if (!AG::LayoutDescriptor::Builder::should_visit_fields(&v11, a1, 1, v5))
    {
LABEL_11:
      v7 = AG::LayoutDescriptor::Builder::commit(&v11, a1);
      goto LABEL_13;
    }

    v6 = AG::swift::metadata::visit(a1, &v11);
  }

  if (v6)
  {
    goto LABEL_11;
  }

LABEL_12:
  v7 = 0;
LABEL_13:
  v11 = &unk_1F2CB2378;
  v8 = *(&v15 + 1);
  if (v16)
  {
    v9 = 0;
    do
    {
      std::__variant_detail::__dtor<std::__variant_detail::__traits<AG::LayoutDescriptor::Builder::DataItem,AG::LayoutDescriptor::Builder::EqualsItem,AG::LayoutDescriptor::Builder::EqualsOverrideItem,AG::LayoutDescriptor::Builder::IndirectItem,AG::LayoutDescriptor::Builder::ExistentialItem,AG::LayoutDescriptor::Builder::HeapRefItem,AG::LayoutDescriptor::Builder::NestedItem,AG::LayoutDescriptor::Builder::EnumItem>,(std::__variant_detail::_Trait)1>::__destroy[abi:ne200100](v8);
      ++v9;
      v8 += 56;
    }

    while (v9 < v16);
    v8 = *(&v15 + 1);
  }

  if (v8)
  {
    free(v8);
  }

  return v7;
}

void AG::anonymous namespace::TypeDescriptorCache::drain_queue(AG::_anonymous_namespace_::TypeDescriptorCache *this, void *a2)
{
  v3 = AG::current_time(this);
  os_unfair_lock_lock(this);
  v5 = *(this + 42);
  if (v5)
  {
    v6 = 0;
    do
    {
      if (*(this + 41))
      {
        v7 = *(this + 41);
      }

      else
      {
        v7 = this + 200;
      }

      v8 = *v7;
      v9 = *(v7 + 2);
      if (v5 >= 2)
      {
        v10 = 0;
        v11 = &v7[16 * v5];
        *v26 = *v7;
        v12 = v7;
        do
        {
          v13 = &v12[16 * v10];
          v14 = v13 + 16;
          v15 = (2 * v10) | 1;
          v10 = 2 * v10 + 2;
          if (v10 >= v5)
          {
            v10 = v15;
          }

          else
          {
            v16 = *(v13 + 7);
            v17 = *(v13 + 11);
            v18 = v13 + 32;
            if (v16 >= v17)
            {
              v10 = v15;
            }

            else
            {
              v14 = v18;
            }
          }

          *v12 = *v14;
          v12 = v14;
        }

        while (v10 <= ((v5 - 2) >> 1));
        v19 = v11 - 16;
        if (v14 == v11 - 16)
        {
          *v14 = *v26;
        }

        else
        {
          *v14 = *v19;
          *v19 = *v26;
        }

        v5 = *(this + 42);
      }

      *(this + 42) = v5 - 1;
      v20 = v9;
      v21 = (this + 64 * ((v9 << 8) >> 24) + 8);
      v26[0] = 0;
      v4 = util::UntypedTable::lookup(v21, (v9 | v8), v26);
      if (v4)
      {
        v22 = 1;
      }

      else
      {
        v22 = v26[0] == 0;
      }

      if (!v22)
      {
        os_unfair_lock_unlock(this);
        layout = AG::LayoutDescriptor::make_layout(v8, v9, v9 << 8 >> 24);
        os_unfair_lock_lock(this);
        v4 = util::UntypedTable::insert(v21, (v20 | v8), layout);
        ++v6;
      }

      v5 = *(this + 42);
    }

    while (v5);
  }

  else
  {
    v6 = 0;
  }

  if (*(this + 43))
  {
    v4 = AG::details::realloc_vector<unsigned long,16ul>(*(this + 41), this + 200, 8uLL, this + 43, 0);
    *(this + 41) = v4;
  }

  *(this + 360) = 0;
  v25 = AG::current_time(v4) - v3;
  {
    fprintf(*MEMORY[0x1E69E9848], "## bg queue ran for %g ms, created %u layouts (%u extant). Totals: %g ms async, %g ms sync. %u hits, %u misses.\n", v25 * 1000.0, v6, *(this + 44) + *(this + 28) + *(this + 12), *(this + 54) * 1000.0, *(this + 55) * 1000.0, *(this + 52), *(this + 53));
  }

  *(this + 54) = v25 + *(this + 54);
  os_unfair_lock_unlock(this);
}

uint64_t AG::swift::metadata::equatable(AG::swift::metadata *this)
{
  v1 = *this;
  if (*this > 0x7FFuLL)
  {
    v1 = 0;
  }

  if ((v1 - 512) < 3)
  {
LABEL_6:

    return swift_conformsToProtocol();
  }

  if (v1)
  {
    result = 0;
    if (v1 != 769)
    {
      return result;
    }

    goto LABEL_6;
  }

  {
    AG::swift::metadata::equatable(void)const::nsobject_conformance = AG::swift::metadata::equatable(void)const::$_1::operator()();
  }

  result = swift_conformsToProtocol();
  if (result == AG::swift::metadata::equatable(void)const::nsobject_conformance)
  {
    return 0;
  }

  return result;
}

uint64_t AG::swift::metadata::mangled_type_name_ref(AG::swift::metadata *a1, _BYTE *a2, int a3, int *a4)
{
  if (!a2)
  {
    return 0;
  }

  v8 = AG::swift::metadata::descriptor(a1);
  v9 = v8;
  if (!v8 || (*v8 & 0x80) == 0)
  {
    goto LABEL_4;
  }

  v24 = *v8 & 0x1F;
  if ((v24 - 17) >= 2)
  {
    if (v24 != 16)
    {
LABEL_4:
      v10 = 0;
      goto LABEL_5;
    }

    v10 = a1 + 8 * AG::swift::class_type_descriptor::immediate_members_offset(v8);
  }

  else
  {
    v10 = a1 + 16;
  }

LABEL_5:
  v11 = *a2;
  v12 = a2;
  if (*a2)
  {
    v12 = a2;
    do
    {
      if (v11 >= 0x20)
      {
        v13 = 1;
      }

      else
      {
        v13 = 9;
      }

      if (v11 >= 0x18)
      {
        v14 = v13;
      }

      else
      {
        v14 = 5;
      }

      v12 += v14;
      v11 = *v12;
    }

    while (*v12);
  }

  v15 = v12 - a2;
  TypeByMangledNameInContext = swift_getTypeByMangledNameInContext();
  if (TypeByMangledNameInContext)
  {
    v17 = 1;
  }

  else
  {
    v17 = a3 == 0;
  }

  if (!v17)
  {
    memset(&v32, 0, sizeof(v32));
    if (v12 == a2)
    {
      v22 = 0;
      v23 = 0;
    }

    else
    {
      v31 = a4;
      v18 = a2;
      v19 = v12 - a2;
      do
      {
        v21 = *v18++;
        v20 = v21;
        if (v21 == 92)
        {
          std::string::append(&v32, "\\\", 2uLL);
        }

        else
        {
          if (v20 - 32 > 0x5E)
          {
            std::string::push_back(&v32, 92);
            std::string::push_back(&v32, (v20 >> 6) | 0x30);
            std::string::push_back(&v32, (v20 >> 3) & 7 | 0x30);
            LOBYTE(v20) = v20 & 7 | 0x30;
          }

          std::string::push_back(&v32, v20);
        }

        --v19;
      }

      while (v19);
      a4 = v31;
      v22 = v32.__r_.__value_.__r.__words[0];
      v23 = (v32.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0;
    }

    TypeName = swift_getTypeName();
    v27 = &v32;
    if (v23)
    {
      v27 = v22;
    }

    AG::non_fatal_precondition_failure("Swift metadata failure: %s, context %s (%p), args %p", v26, v27, TypeName, v9, v10);
    if (SHIBYTE(v32.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v32.__r_.__value_.__l.__data_);
    }
  }

  if (a4)
  {
    if (TypeByMangledNameInContext)
    {
      *a4 = 0;
      if (v15 >= 3 && a2[v15 - 2] == 88)
      {
        v28 = a2[v15 - 1];
        switch(v28)
        {
          case 'o':
            v29 = 2;
            goto LABEL_47;
          case 'w':
            v29 = 1;
            goto LABEL_47;
          case 'u':
            v29 = 3;
LABEL_47:
            *a4 = v29;
            break;
        }
      }
    }
  }

  return TypeByMangledNameInContext;
}

void sub_1B4912A88(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *__p, uint64_t a15, int a16, __int16 a17, char a18, char a19)
{
  if (a19 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t AG::swift::metadata::visit(AG::swift::metadata *this, AG::swift::metadata_visitor *a2)
{
  v4 = *this;
  if (*this > 0x7FFuLL)
  {
    v4 = 0;
  }

  if (v4 <= 767)
  {
    if ((v4 - 513) >= 2)
    {
      if (v4)
      {
        if (v4 == 512)
        {
          v5 = AG::swift::metadata::descriptor(this);
          if (v5)
          {
            v6 = v5;
            if ((*v5 & 0x1Fu) - 17 <= 1)
            {
              v7 = v5 + 4;
              v8 = v5[4];
              if (v8)
              {
                v9 = v5[6];
                if (v9)
                {
                  if (v5[5])
                  {
                    if ((v8 & 3) == 1)
                    {
                      v10 = *(v7 + (v8 & 0xFFFFFFFFFFFFFFFCLL));
                    }

                    else
                    {
                      v10 = v7 + v8;
                    }

                    v34 = v10 + 16;
                    v35 = (this + 8 * v9 + 4);
                    v36 = 1;
                    do
                    {
                      v37 = v6[5];
                      v19 = v36 - 1 >= v37;
                      if (v36 - 1 >= v37)
                      {
                        break;
                      }

                      v38 = *(v35 - 1);
                      if (v36 >= v37)
                      {
                        v40 = *(*(this - 1) + 64);
                      }

                      else
                      {
                        v39 = *v35;
                      }

                      v41 = (*(*a2 + 16))(a2, this, v34);
                      v34 += 12;
                      ++v35;
                      ++v36;
                    }

                    while ((v41 & 1) != 0);
                    return v19;
                  }
                }
              }
            }
          }
        }

        goto LABEL_58;
      }

      v20 = *(*a2 + 32);
      v21 = a2;
      v22 = this;

      return v20(v21, v22);
    }

    v23 = AG::swift::metadata::descriptor(this);
    if (v23)
    {
      if ((*v23 & 0x1Fu) - 17 <= 1)
      {
        v24 = v23 + 4;
        v25 = v23[4];
        if (v25)
        {
          v26 = (v25 & 3) == 1 ? *(v24 + (v25 & 0xFFFFFFFFFFFFFFFCLL)) : (v24 + v25);
          if ((v23[5] & 0xFFFFFF) != 0)
          {
            v31 = v26[3];
            if (v31)
            {
              v32 = 0;
              for (i = v26 + 4; !i[1] || (*(*a2 + 24))(a2, this, i, v32); i += 3)
              {
                if (v31 == ++v32)
                {
                  return 1;
                }
              }

              return 0;
            }

            return 1;
          }
        }
      }
    }

LABEL_58:
    v28 = **a2;
    goto LABEL_59;
  }

  if (v4 > 769)
  {
    if (v4 == 770)
    {
      v20 = *(*a2 + 48);
      v21 = a2;
      v22 = this;

      return v20(v21, v22);
    }

    if (v4 == 771)
    {
      v20 = *(*a2 + 40);
      v21 = a2;
      v22 = this;

      return v20(v21, v22);
    }

    goto LABEL_58;
  }

  if (v4 != 768)
  {
    v11 = *(this + 1);
    if (v11)
    {
      v12 = (this - 8);
      v13 = this + 48;
      v14 = 1;
      do
      {
        v15 = *(v13 - 3);
        if (v15)
        {
          v16 = *(v13 - 2);
          if (*v15 == 772)
          {
            v17 = v13;
            if (v14 >= v11)
            {
              v17 = (*v12 + 64);
            }

            *v17;
            *(*(v15 - 1) + 64);
          }

          if (!(*(*a2 + 8))(a2))
          {
            return 0;
          }

          v11 = *(this + 1);
        }

        v13 += 16;
      }

      while (v14++ < v11);
    }

    return 1;
  }

  {
    AG::swift::metadata::visit(AG::swift::metadata_visitor &)const::native_object = AG::swift::metadata::mangled_type_name_ref(this, "Bo", 1, 0);
  }

  v27 = *a2;
  if (AG::swift::metadata::visit(AG::swift::metadata_visitor &)const::native_object != this)
  {
    v28 = *v27;
LABEL_59:

    return v28(a2);
  }

  v30 = v27[7];

  return v30(a2, this);
}

uint64_t AG::swift::metadata::descriptor(AG::swift::metadata *this)
{
  v1 = *this;
  if (*this > 0x7FFuLL)
  {
    v1 = 0;
  }

  if ((v1 - 512) >= 3)
  {
    if (!v1 && (*(this + 32) & 3) != 0)
    {
      v2 = *(this + 8);
      if (v2)
      {
        return v2;
      }
    }
  }

  else
  {
    v2 = *(this + 1);
    if (v2)
    {
      return v2;
    }
  }

  return 0;
}

void *AG::LayoutDescriptor::Builder::Emitter<AG::vector<unsigned char,512ul,unsigned long>>::operator()(uint64_t *a1, unint64_t *a2)
{
  result = AG::LayoutDescriptor::Builder::Emitter<AG::vector<unsigned char,512ul,unsigned long>>::enter(a1, a2);
  v5 = *a1;
  v6 = *(*a1 + 520);
  if (*(*a1 + 528) < (v6 + 1))
  {
    result = AG::vector<unsigned char,512ul,unsigned long>::reserve_slow(*a1, v6 + 1);
    v6 = *(v5 + 520);
  }

  v7 = *(v5 + 512);
  if (!v7)
  {
    v7 = v5;
  }

  *(v7 + v6) = 1;
  ++*(v5 + 520);
  v8 = *a1;
  v9 = a2[2];
  v10 = *(*a1 + 520);
  v11 = v10 + 8;
  if (v10 <= 0xFFFFFFFFFFFFFFF7 && *(*a1 + 528) < v11)
  {
    result = AG::vector<unsigned char,512ul,unsigned long>::reserve_slow(*a1, v10 + 8);
  }

  *(v8 + 520) = v11;
  v13 = *(v8 + 512);
  if (!v13)
  {
    v13 = v8;
  }

  *(v13 + v10) = v9;
  v14 = *a1;
  v15 = a2[3];
  v16 = *(*a1 + 520);
  v17 = v16 + 8;
  if (v16 <= 0xFFFFFFFFFFFFFFF7 && *(*a1 + 528) < v17)
  {
    result = AG::vector<unsigned char,512ul,unsigned long>::reserve_slow(*a1, v16 + 8);
  }

  *(v14 + 520) = v17;
  v19 = *(v14 + 512);
  if (!v19)
  {
    v19 = v14;
  }

  *(v19 + v16) = v15;
  a1[1] += a2[1];
  return result;
}

{
  result = AG::LayoutDescriptor::Builder::Emitter<AG::vector<unsigned char,512ul,unsigned long>>::enter(a1, a2);
  v5 = a2[4];
  if (v5)
  {
    v6 = a2[3];
    v7 = v6 + 40 * v5;
    v8 = 1;
    do
    {
      if (v8)
      {
        v9 = 9;
      }

      else
      {
        v9 = 13;
      }

      if (v8)
      {
        v10 = 10;
      }

      else
      {
        v10 = 14;
      }

      if (v8)
      {
        v11 = 12;
      }

      else
      {
        v11 = 22;
      }

      v12 = *v6 + v10;
      v13 = *a1;
      if (v12 <= v11)
      {
        v21 = v13[65];
        if (v13[66] < (v21 + 1))
        {
          result = AG::vector<unsigned char,512ul,unsigned long>::reserve_slow(*a1, v21 + 1);
          v21 = v13[65];
        }

        v22 = v13[64];
        if (!v22)
        {
          v22 = v13;
        }

        *(v22 + v21) = v12;
        ++v13[65];
      }

      else
      {
        v14 = v13[65];
        if (v13[66] < (v14 + 1))
        {
          result = AG::vector<unsigned char,512ul,unsigned long>::reserve_slow(*a1, v14 + 1);
          v14 = v13[65];
        }

        v15 = v13[64];
        if (!v15)
        {
          v15 = v13;
        }

        *(v15 + v14) = v9;
        ++v13[65];
        v16 = *a1;
        v17 = *v6;
        v18 = *(*a1 + 520);
        do
        {
          if (v16[66] < (v18 + 1))
          {
            result = AG::vector<unsigned char,512ul,unsigned long>::reserve_slow(v16, v18 + 1);
            v18 = v16[65];
          }

          v19 = v16[64];
          if (!v19)
          {
            v19 = v16;
          }

          *(v19 + v18) = v17 & 0x7F | ((v17 > 0x7F) << 7);
          v18 = v16[65] + 1;
          v16[65] = v18;
          v20 = v17 > 0x7F;
          v17 >>= 7;
        }

        while (v20);
      }

      if (v8)
      {
        v23 = *a1;
        v24 = a2[2];
        v25 = *(*a1 + 520);
        v26 = v25 + 8;
        if (v25 <= 0xFFFFFFFFFFFFFFF7 && *(*a1 + 528) < v26)
        {
          result = AG::vector<unsigned char,512ul,unsigned long>::reserve_slow(*a1, v25 + 8);
        }

        *(v23 + 520) = v26;
        v28 = *(v23 + 512);
        if (!v28)
        {
          v28 = v23;
        }

        *(v28 + v25) = v24;
      }

      v29 = a1[1];
      v47 = *a1;
      v48 = v29;
      v49 = 0;
      v30 = *(v6 + 24);
      if (v30)
      {
        v31 = *(v6 + 16);
        v32 = 56 * v30;
        do
        {
          v33 = *(v31 + 48);
          if (v33 == -1)
          {
            std::__throw_bad_variant_access[abi:ne200100]();
          }

          v50 = &v47;
          result = (off_1F2CB2F70[v33])(&v50, v31);
          v31 += 56;
          v32 -= 56;
        }

        while (v32);
        v34 = a1[1];
        v29 = v48;
        LOBYTE(v30) = v49;
      }

      else
      {
        v34 = v29;
      }

      v8 = 0;
      *(a1 + 16) = (*(a1 + 16) | v30) & 1 | (v29 > *(*(a2[2] - 8) + 64) + v34);
      v6 += 40;
    }

    while (v6 != v7);
  }

  else
  {
    v35 = *a1;
    v36 = *(*a1 + 520);
    if (*(*a1 + 528) < (v36 + 1))
    {
      result = AG::vector<unsigned char,512ul,unsigned long>::reserve_slow(*a1, v36 + 1);
      v36 = *(v35 + 520);
    }

    v37 = *(v35 + 512);
    if (!v37)
    {
      v37 = v35;
    }

    *(v37 + v36) = 10;
    ++*(v35 + 520);
    v38 = *a1;
    v39 = a2[2];
    v40 = *(*a1 + 520);
    v41 = v40 + 8;
    if (v40 <= 0xFFFFFFFFFFFFFFF7 && *(*a1 + 528) < v41)
    {
      result = AG::vector<unsigned char,512ul,unsigned long>::reserve_slow(*a1, v40 + 8);
    }

    *(v38 + 520) = v41;
    v43 = *(v38 + 512);
    if (!v43)
    {
      v43 = v38;
    }

    *(v43 + v40) = v39;
  }

  v44 = *a1;
  v45 = *(*a1 + 520);
  if (*(*a1 + 528) < (v45 + 1))
  {
    result = AG::vector<unsigned char,512ul,unsigned long>::reserve_slow(*a1, v45 + 1);
    v45 = *(v44 + 520);
  }

  v46 = *(v44 + 512);
  if (!v46)
  {
    v46 = v44;
  }

  *(v46 + v45) = 23;
  ++*(v44 + 520);
  a1[1] += a2[1];
  return result;
}

{
  result = AG::LayoutDescriptor::Builder::Emitter<AG::vector<unsigned char,512ul,unsigned long>>::enter(a1, a2);
  v5 = *a1;
  v6 = *(*a1 + 520);
  if (*(*a1 + 528) < (v6 + 1))
  {
    result = AG::vector<unsigned char,512ul,unsigned long>::reserve_slow(*a1, v6 + 1);
    v6 = *(v5 + 520);
  }

  v7 = *(v5 + 512);
  if (!v7)
  {
    v7 = v5;
  }

  *(v7 + v6) = 3;
  ++*(v5 + 520);
  v8 = *a1;
  v9 = a2[2];
  v10 = *(*a1 + 520);
  v11 = v10 + 8;
  if (v10 <= 0xFFFFFFFFFFFFFFF7 && *(*a1 + 528) < v11)
  {
    result = AG::vector<unsigned char,512ul,unsigned long>::reserve_slow(*a1, v10 + 8);
  }

  *(v8 + 520) = v11;
  v13 = *(v8 + 512);
  if (!v13)
  {
    v13 = v8;
  }

  *(v13 + v10) = v9;
  v14 = *a1;
  v15 = *(*a1 + 520);
  v16 = v15 + 8;
  if (v15 <= 0xFFFFFFFFFFFFFFF7 && *(*a1 + 528) < v16)
  {
    result = AG::vector<unsigned char,512ul,unsigned long>::reserve_slow(*a1, v15 + 8);
  }

  *(v14 + 520) = v16;
  v18 = *(v14 + 512);
  if (!v18)
  {
    v18 = v14;
  }

  *(v18 + v15) = 0;
  a1[1] += a2[1];
  return result;
}

{
  result = AG::LayoutDescriptor::Builder::Emitter<AG::vector<unsigned char,512ul,unsigned long>>::enter(a1, a2);
  v5 = *a1;
  v6 = *(*a1 + 520);
  if (*(*a1 + 528) < (v6 + 1))
  {
    result = AG::vector<unsigned char,512ul,unsigned long>::reserve_slow(*a1, v6 + 1);
    v6 = *(v5 + 520);
  }

  v7 = *(v5 + 512);
  if (!v7)
  {
    v7 = v5;
  }

  *(v7 + v6) = 4;
  ++*(v5 + 520);
  v8 = *a1;
  v9 = a2[2];
  v10 = *(*a1 + 520);
  v11 = v10 + 8;
  if (v10 <= 0xFFFFFFFFFFFFFFF7 && *(*a1 + 528) < v11)
  {
    result = AG::vector<unsigned char,512ul,unsigned long>::reserve_slow(*a1, v10 + 8);
  }

  *(v8 + 520) = v11;
  v13 = *(v8 + 512);
  if (!v13)
  {
    v13 = v8;
  }

  *(v13 + v10) = v9;
  a1[1] += a2[1];
  return result;
}

{
  result = AG::LayoutDescriptor::Builder::Emitter<AG::vector<unsigned char,512ul,unsigned long>>::enter(a1, a2);
  v5 = *a1;
  v6 = *(*a1 + 520);
  if (*(*a1 + 528) < (v6 + 1))
  {
    result = AG::vector<unsigned char,512ul,unsigned long>::reserve_slow(*a1, v6 + 1);
    v6 = *(v5 + 520);
  }

  v7 = *(v5 + 512);
  if (!v7)
  {
    v7 = v5;
  }

  *(v7 + v6) = 2;
  ++*(v5 + 520);
  v8 = *a1;
  v9 = a2[2];
  v10 = *(*a1 + 520);
  v11 = v10 + 8;
  if (v10 <= 0xFFFFFFFFFFFFFFF7 && *(*a1 + 528) < v11)
  {
    result = AG::vector<unsigned char,512ul,unsigned long>::reserve_slow(*a1, v10 + 8);
  }

  *(v8 + 520) = v11;
  v13 = *(v8 + 512);
  if (!v13)
  {
    v13 = v8;
  }

  *(v13 + v10) = v9;
  v14 = *a1;
  v15 = a2[3];
  v16 = *(*a1 + 520);
  v17 = v16 + 8;
  if (v16 <= 0xFFFFFFFFFFFFFFF7 && *(*a1 + 528) < v17)
  {
    result = AG::vector<unsigned char,512ul,unsigned long>::reserve_slow(*a1, v16 + 8);
  }

  *(v14 + 520) = v17;
  v19 = *(v14 + 512);
  if (!v19)
  {
    v19 = v14;
  }

  *(v19 + v16) = v15;
  a1[1] += a2[1];
  return result;
}

void *AG::vector<std::variant<AG::LayoutDescriptor::Builder::DataItem,AG::LayoutDescriptor::Builder::EqualsItem,AG::LayoutDescriptor::Builder::EqualsOverrideItem,AG::LayoutDescriptor::Builder::IndirectItem,AG::LayoutDescriptor::Builder::ExistentialItem,AG::LayoutDescriptor::Builder::HeapRefItem,AG::LayoutDescriptor::Builder::NestedItem,AG::LayoutDescriptor::Builder::EnumItem>,0ul,unsigned long>::reserve_slow(uint64_t a1, unint64_t a2)
{
  if (*(a1 + 16) + (*(a1 + 16) >> 1) <= a2)
  {
    v3 = a2;
  }

  else
  {
    v3 = *(a1 + 16) + (*(a1 + 16) >> 1);
  }

  result = AG::details::realloc_vector<unsigned long,56ul>(*a1, (a1 + 16), v3);
  *a1 = result;
  return result;
}

void *AG::details::realloc_vector<unsigned long,56ul>(void *a1, unint64_t *a2, uint64_t a3)
{
  v4 = a1;
  if (a3)
  {
    v5 = malloc_good_size(56 * a3);
    v6 = v5 / 0x38;
    if (v5 / 0x38 != *a2)
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

_BYTE *AG::LayoutDescriptor::Builder::Emitter<AG::vector<unsigned char,512ul,unsigned long>>::enter(_BYTE *result, unint64_t *a2)
{
  v3 = result;
  if (result[16])
  {
    result[16] = 1;
  }

  else
  {
    v4 = *(result + 1);
    v5 = *a2 >= v4;
    v6 = *a2 - v4;
    result[16] = *a2 < v4;
    if (v5)
    {
      v7 = *result;
      if (v6 >= 0x41)
      {
        v8 = v7[65];
        do
        {
          if (v7[66] < (v8 + 1))
          {
            result = AG::vector<unsigned char,512ul,unsigned long>::reserve_slow(v7, v8 + 1);
            v8 = v7[65];
          }

          v9 = v7[64];
          if (!v9)
          {
            v9 = v7;
          }

          *(v9 + v8) = 127;
          v8 = v7[65] + 1;
          v7[65] = v8;
          v6 -= 64;
        }

        while (v6 > 0x40);
      }

      if (v6)
      {
        v10 = (v6 - 1) | 0x40;
        v11 = v7[65];
        if (v7[66] < (v11 + 1))
        {
          result = AG::vector<unsigned char,512ul,unsigned long>::reserve_slow(v7, v11 + 1);
          v11 = v7[65];
        }

        v12 = v7[64];
        if (!v12)
        {
          v12 = v7;
        }

        *(v12 + v11) = v10;
        ++v7[65];
      }
    }
  }

  *(v3 + 1) = *a2;
  return result;
}

uint64_t std::__variant_detail::__dtor<std::__variant_detail::__traits<AG::LayoutDescriptor::Builder::DataItem,AG::LayoutDescriptor::Builder::EqualsItem,AG::LayoutDescriptor::Builder::EqualsOverrideItem,AG::LayoutDescriptor::Builder::IndirectItem,AG::LayoutDescriptor::Builder::ExistentialItem,AG::LayoutDescriptor::Builder::HeapRefItem,AG::LayoutDescriptor::Builder::NestedItem,AG::LayoutDescriptor::Builder::EnumItem>,(std::__variant_detail::_Trait)1>::__destroy[abi:ne200100](uint64_t result)
{
  v1 = result;
  v2 = *(result + 48);
  if (v2 != -1)
  {
    result = (off_1F2CB2F30[v2])(&v3, result);
  }

  *(v1 + 48) = -1;
  return result;
}

void *AG::details::realloc_vector<unsigned long,16ul>(void *__src, void *__dst, size_t a3, size_t *a4, size_t a5)
{
  v7 = __src;
  if (a5 <= a3)
  {
    if (__src)
    {
      v9 = a3;
      memcpy(__dst, __src, 16 * a5);
      free(v7);
      v12 = 0;
LABEL_8:
      *a4 = v9;
      return v12;
    }
  }

  else
  {
    v8 = malloc_good_size(16 * a5);
    v9 = v8 >> 4;
    if (v8 >> 4 != *a4)
    {
      v10 = malloc_type_realloc(v7, v8, 0xC199B67EuLL);
      if (!v10)
      {
        AG::precondition_failure("allocation failure", v11);
      }

      v12 = v10;
      if (!v7)
      {
        memcpy(v10, __dst, 16 * *a4);
      }

      goto LABEL_8;
    }
  }

  return v7;
}

char *AG::LayoutDescriptor::Builder::Emitter<AG::vector<unsigned char,512ul,unsigned long>>::operator()(uint64_t *a1, uint64_t a2)
{
  AG::LayoutDescriptor::Builder::Emitter<AG::vector<unsigned char,512ul,unsigned long>>::enter(a1, a2);
  v4 = *(a2 + 16);
  result = AG::LayoutDescriptor::length(v4, v5);
  v7 = (result - 1);
  if ((result - 1) > 0x1E)
  {
    v14 = v4 - AG::LayoutDescriptor::base_address;
    if (v4 - AG::LayoutDescriptor::base_address == (v4 - AG::LayoutDescriptor::base_address) && *(a2 + 8) <= 0xFFFEuLL)
    {
      v15 = *a1;
      v16 = *(*a1 + 520);
      if (*(*a1 + 528) < (v16 + 1))
      {
        result = AG::vector<unsigned char,512ul,unsigned long>::reserve_slow(*a1, v16 + 1);
        v14 = v4 - AG::LayoutDescriptor::base_address;
        v16 = *(v15 + 520);
      }

      v17 = *(v15 + 512);
      if (!v17)
      {
        v17 = v15;
      }

      *(v17 + v16) = 8;
      ++*(v15 + 520);
      v18 = *a1;
      v19 = *(*a1 + 520);
      v20 = v19 + 4;
      if (v19 <= 0xFFFFFFFFFFFFFFFBLL && *(*a1 + 528) < v20)
      {
        v46 = v14;
        result = AG::vector<unsigned char,512ul,unsigned long>::reserve_slow(*a1, v19 + 4);
        LODWORD(v14) = v46;
      }

      *(v18 + 520) = v20;
      v22 = *(v18 + 512);
      if (!v22)
      {
        v22 = v18;
      }

      *(v22 + v19) = v14;
      v23 = *a1;
      v24 = *(a2 + 8);
      v25 = *(*a1 + 520);
      v26 = v25 + 2;
      if (v25 <= 0xFFFFFFFFFFFFFFFDLL && v23[66] < v26)
      {
        v45 = *(a2 + 8);
        result = AG::vector<unsigned char,512ul,unsigned long>::reserve_slow(*a1, v25 + 2);
        v24 = v45;
      }

      v23[65] = v26;
      v27 = v23[64];
      if (!v27)
      {
        v27 = v23;
      }

      *(v27 + v25) = v24;
    }

    else
    {
      v28 = *a1;
      v29 = *(*a1 + 520);
      if (*(*a1 + 528) < (v29 + 1))
      {
        result = AG::vector<unsigned char,512ul,unsigned long>::reserve_slow(*a1, v29 + 1);
        v29 = *(v28 + 520);
      }

      v30 = *(v28 + 512);
      if (!v30)
      {
        v30 = v28;
      }

      *(v30 + v29) = 7;
      ++*(v28 + 520);
      v31 = *a1;
      v32 = *(a2 + 16);
      v33 = *(*a1 + 520);
      v34 = v33 + 8;
      if (v33 <= 0xFFFFFFFFFFFFFFF7 && *(*a1 + 528) < v34)
      {
        v44 = *(*a1 + 520);
        result = AG::vector<unsigned char,512ul,unsigned long>::reserve_slow(*a1, v33 + 8);
        v33 = v44;
      }

      *(v31 + 520) = v34;
      v36 = *(v31 + 512);
      if (!v36)
      {
        v36 = v31;
      }

      *(v36 + v33) = v32;
      v37 = *a1;
      v38 = *(a2 + 8);
      v39 = *(*a1 + 520);
      do
      {
        if (v37[66] < (v39 + 1))
        {
          result = AG::vector<unsigned char,512ul,unsigned long>::reserve_slow(v37, v39 + 1);
          v39 = v37[65];
        }

        v40 = v37[64];
        if (!v40)
        {
          v40 = v37;
        }

        *(v40 + v39) = v38 & 0x7F | ((v38 > 0x7F) << 7);
        v39 = v37[65] + 1;
        v37[65] = v39;
        v41 = v38 > 0x7F;
        v38 >>= 7;
      }

      while (v41);
    }
  }

  else
  {
    v8 = *a1;
    v9 = *(*a1 + 520);
    v10 = v9 + v7;
    if (v9 >= v9 + v7)
    {
      v11 = *a1;
    }

    else
    {
      v11 = *a1;
      if (v8[66] < v10)
      {
        v43 = *a1;
        v12 = v9 + v7;
        v13 = *(*a1 + 520);
        AG::vector<unsigned char,512ul,unsigned long>::reserve_slow(v8, v9 + v7);
        v9 = v13;
        v10 = v12;
        v8 = v43;
        v11 = *a1;
        v4 = *(a2 + 16);
      }
    }

    v8[65] = v10;
    v42 = *(v11 + 512);
    if (!v42)
    {
      v42 = v11;
    }

    result = memcpy((v42 + v9), v4, v7);
  }

  a1[1] += *(a2 + 8);
  return result;
}

uint64_t AG::LayoutDescriptor::length(AG::LayoutDescriptor *this, const unsigned __int8 *a2)
{
  v2 = 0;
  v3 = this;
  while (1)
  {
    while (1)
    {
      while (1)
      {
        while (1)
        {
          v4 = v2;
          v5 = v3;
          v7 = *v3;
          v3 = (v3 + 1);
          v6 = v7;
          if (v7 > 12)
          {
            break;
          }

          if (v6 > 7)
          {
            if ((v6 - 10) < 3)
            {
              goto LABEL_14;
            }

            if (v6 == 8)
            {
              v3 = (v5 + 7);
            }

            else if (v6 == 9)
            {
              do
              {
                v9 = *(v5 + 1);
                v5 = (v5 + 1);
              }

              while (v9 < 0);
LABEL_14:
              v3 = (v5 + 9);
              ++v2;
            }
          }

          else if (v6 > 3)
          {
            if (v6 == 4)
            {
              v8 = 1;
LABEL_25:
              v3 = (v5 + v8 + 8);
            }

            else if (v6 == 7)
            {
              v3 = (v5 + 9);
              do
              {
                v10 = *v3;
                v3 = (v3 + 1);
              }

              while (v10 < 0);
            }
          }

          else
          {
            if ((v6 - 1) < 3)
            {
              v8 = 9;
              goto LABEL_25;
            }

            if (!v6)
            {
              return v5 - this + 1;
            }
          }
        }

        if ((v6 - 14) >= 9)
        {
          break;
        }

        if (!v2)
        {
          return v5 - this + 1;
        }
      }

      if (v6 != 13)
      {
        break;
      }

      if (!v2)
      {
        return v5 - this + 1;
      }

      do
      {
        v11 = *v3;
        v3 = (v3 + 1);
      }

      while (v11 < 0);
    }

    if (v6 == 23)
    {
      --v2;
      if (!v4)
      {
        return v5 - this + 1;
      }
    }
  }
}

uint64_t AGSubgraphGetGraph(uint64_t a1, const char *a2)
{
  v2 = *(a1 + 16);
  if (!v2)
  {
    AGSubgraphMove_cold_1(a1, a2);
  }

  v3 = *(v2 + 48);
  if (!v3 || (a1 = util::UntypedTable::lookup((*(v2 + 40) + 104), v3, 0)) == 0)
  {
    AGSubgraphGetGraph_cold_1(a1, v3);
  }

  return AGGraphContextGetGraph(a1);
}

uint64_t AGTypeApplyFields2(AG::swift::metadata *a1, int a2, uint64_t a3, uint64_t a4)
{
  v4 = 0;
  v10[0] = a3;
  v10[1] = a4;
  v8[0] = &unk_1F2CB1E38;
  v8[1] = v10;
  v9 = a2;
  v5 = *a1;
  if (*a1 > 0x7FFuLL)
  {
    v5 = 0;
  }

  if (v5 <= 512)
  {
    if (!v5)
    {
      if (a2)
      {
        return AG::swift::metadata::visit_heap(a1, v8, 1);
      }

      return 0;
    }

    if (v5 != 512)
    {
      return v4;
    }

LABEL_11:
    if ((a2 & 5) == 0)
    {
      return AG::swift::metadata::visit(a1, v8);
    }

    return 0;
  }

  if ((v5 - 513) < 2)
  {
    if ((a2 & 4) == 0)
    {
      return 0;
    }

    return AG::swift::metadata::visit(a1, v8);
  }

  if (v5 == 769)
  {
    goto LABEL_11;
  }

  return v4;
}

uint64_t AGTypeApplyFields2::Visitor::visit_field(uint64_t a1, AG::swift::metadata *a2, uint64_t a3, uint64_t a4)
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

uint64_t sub_1B4913ACC()
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t anonymous namespace::create_indirect_attribute(uint64_t a1, unint64_t a2, unsigned __int8 a3, char a4)
{
  v5 = AG::Subgraph::_current_subgraph_key;
  v6 = *(_ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3)) + 8 * v5);
  if (!v6)
  {
  }

  return AG::Graph::add_indirect_attribute(v6[5], v6, a1, 0, a2, a3, 1, a4) | 1;
}

uint64_t sub_1B4913B60()
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

void AG::Graph::add_input_dependencies(uint64_t a1, const char *a2, uint64_t a3)
{
  v3 = a2;
  v12 = a3;
  v5 = a3;
  if ((a3 & 3) != 0)
  {
    v5 = AG::AttributeID::resolve_slow(&v12, 4);
  }

  if (v5 >= 4 && *(*(AG::data::_shared_table_bytes + (v5 & 0xFFFFFE00)) + 40) != a1)
  {
    AG::Graph::add_input_dependencies(v5, a2);
  }

  if ((v5 & 3) == 1)
  {
    v6 = v5 & 0xFFFFFFFC;
    v7 = AG::data::_shared_table_bytes;
    v8 = AG::data::_shared_table_bytes + v6;
    v9 = *(AG::data::_shared_table_bytes + v6 + 20);
    v10 = v9 >> 5;
    if ((v9 & 0x1F) == 0 || *(AG::data::_shared_table_bytes + v6 + 20) >> 5 >> *(AG::data::_shared_table_bytes + v6 + 20) != 0)
    {
      AG::data::vector<AG::OutputEdge>::reserve_slow((AG::data::_shared_table_bytes + (v5 & 0xFFFFFFFC) + 20), *(AG::data::_shared_table_bytes + (v5 & 0xFFFFFE00)), v10 + 1);
      v7 = AG::data::_shared_table_bytes;
    }

    *(v7 + *(v8 + 24) + 4 * v10) = v3;
    *(v8 + 20) += 32;
  }

  else if ((v5 & 3) == 0)
  {
    AG::Graph::add_output_edge<AG::Node>(a1, v5, v3);
  }

  AG::Graph::update_main_refs(a1, v3);
}

AG::data::zone *AG::data::vector<AG::OutputEdge>::reserve_slow(unsigned int *a1, AG::data::zone *this, unsigned int a3)
{
  v4 = 32 - __clz(a3 - 1);
  v5 = *a1;
  v6 = 4 << *a1;
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

  result = AG::data::zone::realloc_bytes(this, &v11, v8, 4 << v7, 3);
  v10 = v11;
  *a1 = *a1 & 0xFFFFFFE0 | v7;
  a1[1] = v10;
  return result;
}

unsigned int *AG::Graph::add_output_edge<AG::Node>(uint64_t a1, unsigned int a2, int a3)
{
  v4 = AG::data::_shared_table_bytes;
  v5 = AG::data::_shared_table_bytes + a2;
  v7 = *(v5 + 20);
  result = (v5 + 20);
  v8 = v7 >> 5;
  v9 = v8 >> v7;
  if ((v7 & 0x1F) == 0 || v9 != 0)
  {
    result = AG::data::vector<AG::OutputEdge>::reserve_slow(result, *(AG::data::_shared_table_bytes + (a2 & 0xFFFFFE00)), v8 + 1);
    v4 = AG::data::_shared_table_bytes;
  }

  *(v4 + *(v5 + 24) + 4 * v8) = a3;
  *(v5 + 20) += 32;
  return result;
}

uint64_t AG::LayoutDescriptor::Builder::visit_case(AG::LayoutDescriptor::Builder *this, AG::swift::metadata *a2, int *a3, int a4)
{
  if (*(this + 3) > 7uLL)
  {
    return 0;
  }

  v9 = *(this + 4);
  v10 = this + 40;
  if (v9)
  {
    v11 = (v9 + 16);
  }

  else
  {
    v11 = (this + 40);
  }

  if (a4)
  {
    v12 = v11[1];
  }

  else
  {
    v13 = *(*(a2 - 1) + 64);
    *&v57 = *(this + 2);
    *(&v57 + 1) = v13;
    v58 = a2;
    v59 = 0;
    v60 = 0;
    v61 = 0;
    v14 = v11[1];
    if (v11[2] < (v14 + 1))
    {
      AG::vector<std::variant<AG::LayoutDescriptor::Builder::DataItem,AG::LayoutDescriptor::Builder::EqualsItem,AG::LayoutDescriptor::Builder::EqualsOverrideItem,AG::LayoutDescriptor::Builder::IndirectItem,AG::LayoutDescriptor::Builder::ExistentialItem,AG::LayoutDescriptor::Builder::HeapRefItem,AG::LayoutDescriptor::Builder::NestedItem,AG::LayoutDescriptor::Builder::EnumItem>,0ul,unsigned long>::reserve_slow(v11, v14 + 1);
      v14 = v11[1];
    }

    v15 = *v11 + 56 * v14;
    *v15 = v57;
    *(v15 + 16) = a2;
    *(v15 + 24) = 0;
    *(v15 + 32) = 0;
    *(v15 + 40) = 0;
    *(v15 + 48) = 7;
    v12 = v11[1] + 1;
    v11[1] = v12;
  }

  v16 = *v11 + 56 * v12;
  if (*(v16 - 8) != 7)
  {
    std::__throw_bad_variant_access[abi:ne200100]();
  }

  v17 = *(v16 - 24);
  if (*(v16 - 16) < (v17 + 1))
  {
    AG::vector<AG::LayoutDescriptor::Builder::EnumItem::Case,0ul,unsigned long>::reserve_slow(v16 - 32, v17 + 1);
    v17 = *(v16 - 24);
  }

  v18 = *(v16 - 32) + 40 * v17;
  v19 = *(this + 2);
  *v18 = a4;
  *(v18 + 8) = v19;
  *(v18 + 16) = 0;
  *(v18 + 24) = 0;
  *(v18 + 32) = 0;
  v21 = *(v16 - 32);
  v20 = *(v16 - 24);
  *(v16 - 24) = v20 + 1;
  ++*(this + 3);
  *(this + 4) = v21 + 40 * v20;
  v22 = *a3;
  if ((*a3 & 1) != 0 && !*(this + 2))
  {
    AG::LayoutDescriptor::Builder::add_field(this, 8);
LABEL_43:
    if (!*(*(this + 4) + 24))
    {
      v52 = *(v16 - 32);
      v53 = *(v16 - 24) - 1;
      *(v16 - 24) = v53;
      v54 = v52 + 40 * v53;
      v55 = *(v54 + 16);
      if (*(v54 + 24))
      {
        v56 = 0;
        do
        {
          std::__variant_detail::__dtor<std::__variant_detail::__traits<AG::LayoutDescriptor::Builder::DataItem,AG::LayoutDescriptor::Builder::EqualsItem,AG::LayoutDescriptor::Builder::EqualsOverrideItem,AG::LayoutDescriptor::Builder::IndirectItem,AG::LayoutDescriptor::Builder::ExistentialItem,AG::LayoutDescriptor::Builder::HeapRefItem,AG::LayoutDescriptor::Builder::NestedItem,AG::LayoutDescriptor::Builder::EnumItem>,(std::__variant_detail::_Trait)1>::__destroy[abi:ne200100](v55);
          ++v56;
          v55 += 56;
        }

        while (v56 < *(v54 + 24));
        v55 = *(v54 + 16);
      }

      if (v55)
      {
        free(v55);
      }
    }

    result = 1;
    goto LABEL_51;
  }

  v25 = a3[1];
  v24 = a3 + 1;
  v23 = v25;
  if (v25)
  {
    if ((v24 + v23))
    {
      v26 = AG::swift::metadata::mangled_type_name_ref(a2, v24 + v23, 0, 0);
      if (v26)
      {
        v27 = v26;
        if (v22)
        {
          if (*(*(v26 - 8) + 64))
          {
            v47 = *(this + 4);
            v48 = *(this + 2);
            v49 = *(*(a2 - 1) + 64);
            v50 = v47[3];
            if (v47[4] < (v50 + 1))
            {
              AG::vector<std::variant<AG::LayoutDescriptor::Builder::DataItem,AG::LayoutDescriptor::Builder::EqualsItem,AG::LayoutDescriptor::Builder::EqualsOverrideItem,AG::LayoutDescriptor::Builder::IndirectItem,AG::LayoutDescriptor::Builder::ExistentialItem,AG::LayoutDescriptor::Builder::HeapRefItem,AG::LayoutDescriptor::Builder::NestedItem,AG::LayoutDescriptor::Builder::EnumItem>,0ul,unsigned long>::reserve_slow((v47 + 2), v50 + 1);
              v50 = v47[3];
            }

            v51 = v47[2] + 56 * v50;
            *v51 = v48;
            *(v51 + 8) = v49;
            *(v51 + 16) = v27;
            *(v51 + 48) = 3;
            ++v47[3];
          }
        }

        else
        {
          v28 = *(this + 2);
          *(this + 2) = AG::LayoutDescriptor::mode_for_type(a2, v28);
          if (AG::LayoutDescriptor::Builder::should_visit_fields(this, v27, 0, v29))
          {
            v30 = *(this + 4);
            v31 = v30 ? (v30 + 16) : v10;
            v32 = *(v31 + 1);
            if (!v32 || (v33 = *v31 + 56 * v32, v33 == 56) || *(v33 - 8))
            {
              v34 = 0;
              v35 = -1;
            }

            else
            {
              v35 = *(v33 - 56);
              v34 = *(v33 - 48);
            }

            if ((AG::swift::metadata::visit(v27, this) & 1) == 0)
            {
              *&v57 = v32;
              *(&v57 + 1) = v35;
              v58 = v34;
              AG::LayoutDescriptor::Builder::revert(this, &v57);
              v36 = *(this + 4);
              v37 = *(v36 + 24);
              if (v37)
              {
                v38 = *(v36 + 16);
                v39 = 56 * v37;
                do
                {
                  std::__variant_detail::__dtor<std::__variant_detail::__traits<AG::LayoutDescriptor::Builder::DataItem,AG::LayoutDescriptor::Builder::EqualsItem,AG::LayoutDescriptor::Builder::EqualsOverrideItem,AG::LayoutDescriptor::Builder::IndirectItem,AG::LayoutDescriptor::Builder::ExistentialItem,AG::LayoutDescriptor::Builder::HeapRefItem,AG::LayoutDescriptor::Builder::NestedItem,AG::LayoutDescriptor::Builder::EnumItem>,(std::__variant_detail::_Trait)1>::__destroy[abi:ne200100](v38);
                  v38 += 56;
                  v39 -= 56;
                }

                while (v39);
              }

              *(v36 + 24) = 0;
              v40 = *(*(v27 - 1) + 64);
              if (v40)
              {
                v41 = *(this + 4);
                v42 = *(this + 2);
                v43 = v41[3];
                if (v41[4] < (v43 + 1))
                {
                  AG::vector<std::variant<AG::LayoutDescriptor::Builder::DataItem,AG::LayoutDescriptor::Builder::EqualsItem,AG::LayoutDescriptor::Builder::EqualsOverrideItem,AG::LayoutDescriptor::Builder::IndirectItem,AG::LayoutDescriptor::Builder::ExistentialItem,AG::LayoutDescriptor::Builder::HeapRefItem,AG::LayoutDescriptor::Builder::NestedItem,AG::LayoutDescriptor::Builder::EnumItem>,0ul,unsigned long>::reserve_slow((v41 + 2), v43 + 1);
                  v43 = v41[3];
                }

                v44 = v41[2] + 56 * v43;
                *v44 = v42;
                *(v44 + 8) = v40;
                *(v44 + 48) = 0;
                ++v41[3];
              }
            }
          }

          *(this + 2) = v28;
        }

        goto LABEL_43;
      }
    }
  }

  v45 = *v11;
  v46 = v11[1] - 1;
  v11[1] = v46;
  std::__variant_detail::__dtor<std::__variant_detail::__traits<AG::LayoutDescriptor::Builder::DataItem,AG::LayoutDescriptor::Builder::EqualsItem,AG::LayoutDescriptor::Builder::EqualsOverrideItem,AG::LayoutDescriptor::Builder::IndirectItem,AG::LayoutDescriptor::Builder::ExistentialItem,AG::LayoutDescriptor::Builder::HeapRefItem,AG::LayoutDescriptor::Builder::NestedItem,AG::LayoutDescriptor::Builder::EnumItem>,(std::__variant_detail::_Trait)1>::__destroy[abi:ne200100](v45 + 56 * v46);
  result = 0;
LABEL_51:
  --*(this + 3);
  *(this + 4) = v9;
  return result;
}

void *AG::details::realloc_vector<unsigned long,40ul>(void *a1, unint64_t *a2, uint64_t a3)
{
  v4 = a1;
  if (a3)
  {
    v5 = malloc_good_size(40 * a3);
    v6 = v5 / 0x28;
    if (v5 / 0x28 != *a2)
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

void *AG::data::zone::alloc_persistent(AG::data::zone *this, size_t a2)
{
  if (!a2)
  {
    return 0;
  }

  v4 = malloc_type_zone_malloc(AG::data::table::_external_malloc_zone, a2, 0x285CD6CAuLL);
  if (!v4)
  {
    AG::precondition_failure("memory allocation failure (%lu bytes)", v5, a2);
  }

  v6 = v4;
  v7 = *(this + 2);
  v8 = v7 + 1;
  if (*(this + 3) < v7 + 1)
  {
    AG::vector<std::pair<unsigned int,BOOL>,0ul,unsigned int>::reserve_slow(this, v8);
    v7 = *(this + 2);
    v8 = v7 + 1;
  }

  *(*this + 8 * v7) = v6;
  *(this + 2) = v8;
  *(this + 7) += a2;
  v9 = dword_1ED56D750;
  if (dword_1ED56D750 <= (dword_1ED56D74C + a2))
  {
    v9 = dword_1ED56D74C + a2;
  }

  dword_1ED56D74C += a2;
  dword_1ED56D750 = v9;
  return v6;
}

uint64_t AG::LayoutDescriptor::Compare::failed(AG::LayoutDescriptor::Compare *this, int a2, const unsigned __int8 *a3, const unsigned __int8 *a4, uint64_t a5, uint64_t a6, const AG::swift::metadata *a7)
{
  if (a2 < 0)
  {
    v7 = AG::Graph::_current_update_key;
    v8 = *(_ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3)) + 8 * v7);
    if ((v8 & 1) == 0)
    {
      v9 = (v8 & 0xFFFFFFFFFFFFFFFELL);
      if (v9)
      {
        v10 = *v9;
        v11 = *(*v9 + 176);
        if (v11)
        {
          v17 = v9 + 4;
          v19 = v9[12];
          v18 = v9[13];
          if (v19)
          {
            v17 = v19;
          }

          v20 = LODWORD(v17[v18 - 1]);
          v21 = 8 * v11 - 8;
          do
          {
            result = (*(**(*(v10 + 168) + v21) + 360))(*(*(v10 + 168) + v21), v20, a3, a4, a5, a6, a7);
            v21 -= 8;
          }

          while (v21 != -8);
        }
      }
    }
  }

  return result;
}

uint64_t AGGraphGetValueState(char *a1, const char *a2)
{
  if (dword_1ED56D738 <= (a1 & 0xFFFFFFFC))
  {
    AG::precondition_failure("invalid data offset: %u", a2, a1 & 0xFFFFFFFC);
  }

  v2 = *(AG::data::_shared_table_bytes + (a1 & 0xFFFFFE00));
  if (!v2)
  {
    AG::precondition_failure("no graph: %u", a2, a1);
  }

  v3 = a1;
  v4 = *(v2 + 40);

  return AG::Graph::value_state(v4, v3);
}

void AGGraphMutateAttribute(char *a1, const char *a2, char a3, void (*a4)(void *), uint64_t a5)
{
  if ((a1 & 3) != 0)
  {
    AG::precondition_failure("non-direct attribute id: %u", a2, a1);
  }

  if (dword_1ED56D738 <= a1)
  {
    AG::precondition_failure("invalid data offset: %u", a2, a1);
  }

  v5 = *(AG::data::_shared_table_bytes + (a1 & 0xFFFFFE00));
  if (!v5)
  {
    AG::precondition_failure("no graph: %u", a2, a1);
  }

  v7 = a1;
  v8 = *(v5 + 40);

  AG::Graph::attribute_modify(v8, v7, a2, a4, a5, a3 & 1);
}

void AG::Graph::attribute_modify(uint64_t a1, const char *a2, uint64_t a3, void (*a4)(void *), uint64_t a5, int a6)
{
  v6 = (AG::data::_shared_table_bytes + a2);
  v7 = *v6;
  if ((v7 & 0x20) == 0)
  {
    AG::precondition_failure("no self data: %u", a2, a2);
  }

  v9 = *(*(a1 + 88) + ((v7 >> 5) & 0x7FFFFF8));
  if (*v9 != a3)
  {
    AG::precondition_failure("self type mismatch: %u", a2, a2);
  }

  v12 = a2;
  if (*(a1 + 176))
  {
    AG::Graph::attribute_modify();
  }

  v13 = (v6 + *(v9 + 44));
  if (*(v6 + 7))
  {
    v13 = *v13;
  }

  a4(v13);
  if (*(a1 + 176))
  {
    AG::Graph::attribute_modify();
    if (!a6)
    {
      return;
    }
  }

  else if (!a6)
  {
    return;
  }

  *(v6 + 7) |= 0x40u;

  AG::Graph::mark_pending(a1, v12, v6);
}

uint64_t AGGraphGetCounter(uint64_t a1, const char *a2)
{
  if (*(a1 + 88) == 1)
  {
    AG::Graph::Context::from_cf(a1, a2);
  }

  switch(a2)
  {
    case 0:
      result = *(*(a1 + 16) + 200);
      break;
    case 1:
      result = *(*(a1 + 16) + 392);
      break;
    case 2:
      result = *(*(a1 + 16) + 400);
      break;
    case 3:
      result = *(*(a1 + 16) + 416);
      break;
    case 4:
      result = *(a1 + 32);
      break;
    case 5:
      result = *(*(a1 + 16) + 376);
      break;
    case 6:
      LODWORD(result) = AG::Graph::Context::thread_is_updating((a1 + 16));
      goto LABEL_19;
    case 7:
      LODWORD(result) = AG::Graph::thread_is_updating(*(a1 + 16));
LABEL_19:
      result = result;
      break;
    case 8:
      result = *(a1 + 84);
      break;
    case 9:
      result = *(*(a1 + 16) + 361);
      break;
    case 10:
      result = *(*(a1 + 16) + 408);
      break;
    case 11:
      result = *(*(a1 + 16) + 208);
      break;
    case 12:
      result = *(*(a1 + 16) + 224);
      break;
    case 13:
      result = *(*(a1 + 16) + 232);
      break;
    case 14:
      result = *(*(a1 + 16) + 216);
      break;
    case 15:
      result = *(*(a1 + 16) + 240);
      break;
    case 16:
      result = dword_1ED56D74C;
      break;
    case 17:
      result = dword_1ED56D750;
      break;
    default:
      result = 0;
      break;
  }

  return result;
}

BOOL AG::Graph::thread_is_updating(AG::Graph *this)
{
  v1 = AG::Graph::_current_update_key;
  v2 = *(_ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3)) + 8 * v1);
  if (!v2)
  {
    return 0;
  }

  do
  {
    v3 = (v2 & 0xFFFFFFFFFFFFFFFELL);
    v4 = *v3 == this;
    if (*v3 == this)
    {
      break;
    }

    v2 = v3[2];
  }

  while (v2);
  return v4;
}

void _ZNSt3__116__variant_detail12__visitation6__base12__dispatcherIJLm7EEE10__dispatchB8ne200100IOZNS0_6__dtorINS0_8__traitsIJN2AG16LayoutDescriptor7Builder8DataItemENSA_10EqualsItemENSA_18EqualsOverrideItemENSA_12IndirectItemENSA_15ExistentialItemENSA_11HeapRefItemENSA_10NestedItemENSA_8EnumItemEEEELNS0_6_TraitE1EE9__destroyB8ne200100EvEUlRT_E_JRNS0_6__baseILSK_1EJSB_SC_SD_SE_SF_SG_SH_SI_EEEEEEDcSM_DpT0_(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 24);
  if (*(a2 + 32))
  {
    v4 = 0;
    do
    {
      v5 = &v2[40 * v4];
      v6 = *(v5 + 2);
      if (*(v5 + 3))
      {
        v7 = 0;
        do
        {
          std::__variant_detail::__dtor<std::__variant_detail::__traits<AG::LayoutDescriptor::Builder::DataItem,AG::LayoutDescriptor::Builder::EqualsItem,AG::LayoutDescriptor::Builder::EqualsOverrideItem,AG::LayoutDescriptor::Builder::IndirectItem,AG::LayoutDescriptor::Builder::ExistentialItem,AG::LayoutDescriptor::Builder::HeapRefItem,AG::LayoutDescriptor::Builder::NestedItem,AG::LayoutDescriptor::Builder::EnumItem>,(std::__variant_detail::_Trait)1>::__destroy[abi:ne200100](v6);
          ++v7;
          v6 += 56;
        }

        while (v7 < *(v5 + 3));
        v6 = *(v5 + 2);
      }

      if (v6)
      {
        free(v6);
      }

      ++v4;
    }

    while (v4 < *(a2 + 32));
    v2 = *(a2 + 24);
  }

  if (v2)
  {

    free(v2);
  }
}

__n128 AG::LayoutDescriptor::Builder::revert(uint64_t a1, unint64_t *a2)
{
  v2 = *(a1 + 32);
  if (v2)
  {
    v3 = (v2 + 16);
  }

  else
  {
    v3 = (a1 + 40);
  }

  v4 = (a2 + 1);
  for (i = v3[1]; i > *a2; i = v3[1])
  {
    v7 = i - 1;
    v3[1] = v7;
    std::__variant_detail::__dtor<std::__variant_detail::__traits<AG::LayoutDescriptor::Builder::DataItem,AG::LayoutDescriptor::Builder::EqualsItem,AG::LayoutDescriptor::Builder::EqualsOverrideItem,AG::LayoutDescriptor::Builder::IndirectItem,AG::LayoutDescriptor::Builder::ExistentialItem,AG::LayoutDescriptor::Builder::HeapRefItem,AG::LayoutDescriptor::Builder::NestedItem,AG::LayoutDescriptor::Builder::EnumItem>,(std::__variant_detail::_Trait)1>::__destroy[abi:ne200100](*v3 + 56 * v7);
  }

  if (i)
  {
    v9 = v4->n128_u64[0] == -1;
  }

  else
  {
    v9 = 1;
  }

  if (!v9)
  {
    v10 = *v3 + 56 * i;
    v11 = (v10 - 56);
    if (*(v10 - 8))
    {
      std::__variant_detail::__dtor<std::__variant_detail::__traits<AG::LayoutDescriptor::Builder::DataItem,AG::LayoutDescriptor::Builder::EqualsItem,AG::LayoutDescriptor::Builder::EqualsOverrideItem,AG::LayoutDescriptor::Builder::IndirectItem,AG::LayoutDescriptor::Builder::ExistentialItem,AG::LayoutDescriptor::Builder::HeapRefItem,AG::LayoutDescriptor::Builder::NestedItem,AG::LayoutDescriptor::Builder::EnumItem>,(std::__variant_detail::_Trait)1>::__destroy[abi:ne200100](v10 - 56);
      result = *v4;
      *v11 = *v4;
      *(v10 - 8) = 0;
    }

    else
    {
      result = *v4;
      *v11 = *v4;
    }
  }

  return result;
}

void *AG::vector<AG::LayoutDescriptor::Builder::EnumItem::Case,0ul,unsigned long>::reserve_slow(uint64_t a1, unint64_t a2)
{
  if (*(a1 + 16) + (*(a1 + 16) >> 1) <= a2)
  {
    v3 = a2;
  }

  else
  {
    v3 = *(a1 + 16) + (*(a1 + 16) >> 1);
  }

  result = AG::details::realloc_vector<unsigned long,40ul>(*a1, (a1 + 16), v3);
  *a1 = result;
  return result;
}

void *AG::LayoutDescriptor::Builder::Emitter<AG::vector<unsigned char,512ul,unsigned long>>::operator()(uint64_t a1, unint64_t *a2)
{
  result = AG::LayoutDescriptor::Builder::Emitter<AG::vector<unsigned char,512ul,unsigned long>>::enter(a1, a2);
  v5 = *a1;
  v6 = a2[1];
  if (v6 >= 0x81)
  {
    v7 = v5[65];
    do
    {
      if (v5[66] < (v7 + 1))
      {
        result = AG::vector<unsigned char,512ul,unsigned long>::reserve_slow(v5, v7 + 1);
        v7 = v5[65];
      }

      v8 = v5[64];
      if (!v8)
      {
        v8 = v5;
      }

      *(v8 + v7) = -1;
      v7 = v5[65] + 1;
      v5[65] = v7;
      v6 -= 128;
    }

    while (v6 > 0x80);
  }

  if (v6)
  {
    v9 = (v6 - 1) | 0x80;
    v10 = v5[65];
    if (v5[66] < (v10 + 1))
    {
      result = AG::vector<unsigned char,512ul,unsigned long>::reserve_slow(v5, v10 + 1);
      v10 = v5[65];
    }

    v11 = v5[64];
    if (!v11)
    {
      v11 = v5;
    }

    *(v11 + v10) = v9;
    ++v5[65];
  }

  *(a1 + 8) += a2[1];
  return result;
}

uint64_t AGTypeGetKind(uint64_t *a1)
{
  v1 = *a1;
  if (*a1 > 0x7FF)
  {
    v1 = 0;
  }

  if (v1 <= 768)
  {
    if (v1 > 512)
    {
      if (v1 == 513)
      {
        return 3;
      }

      if (v1 == 514)
      {
        return 4;
      }
    }

    else
    {
      if (!v1)
      {
        return 1;
      }

      if (v1 == 512)
      {
        return 2;
      }
    }

    return 0;
  }

  if (v1 > 770)
  {
    if (v1 == 771)
    {
      return 7;
    }

    if (v1 == 772)
    {
      return 8;
    }

    return 0;
  }

  if (v1 == 769)
  {
    return 5;
  }

  else
  {
    return 6;
  }
}

uint64_t AGGraphSetOutputValue(unsigned __int8 *a1, char *a2)
{
  v2 = AG::Graph::_current_update_key;
  v3 = *(_ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3)) + 8 * v2);
  if ((v3 & 1) != 0 || (v4 = (v3 & 0xFFFFFFFFFFFFFFFELL), (v3 & 0xFFFFFFFFFFFFFFFELL) == 0))
  {
    AGGraphRegisterDependency_cold_1(a1, a2);
  }

  v5 = v4 + 4;
  if (v4[12])
  {
    v5 = v4[12];
  }

  v6 = LODWORD(v5[v4[13] - 1]);
  v7 = AG::data::_shared_table_bytes + v6;
  v8 = *(AG::data::_shared_table_bytes + v6);
  if ((v8 & 0xC0) == 0)
  {
    AG::precondition_failure("writing attribute that is not evaluating: %u", a2, v6);
  }

  v11 = *v4;
  v12 = *(*v4 + 176);
  if (v12)
  {
    v31 = 8 * v12 - 8;
    do
    {
      (*(**(*(v11 + 168) + v31) + 272))(*(*(v11 + 168) + v31), v6, a1);
      v31 -= 8;
    }

    while (v31 != -8);
    v8 = *v7;
  }

  v13 = *(*(v11 + 88) + 8 * (v8 >> 8));
  v14 = *(v13 + 8);
  if (v14 != a2)
  {
    AGGraphSetOutputValue_cold_1(*(v13 + 8), a2, v6);
  }

  if ((v8 & 0x10) != 0)
  {
    v15 = (AG::data::_shared_table_bytes + *(v7 + 8));
    if ((*(v7 + 7) & 2) != 0)
    {
      v15 = *v15;
    }

    v16 = *(v13 + 40);
    v17 = (v16 & 3 | 0x80000100);
    v18 = *(v13 + 48);
    if (!v18)
    {
      v18 = AG::LayoutDescriptor::fetch(*(v13 + 8), (v16 & 3 | 0x80000100), 0);
      *(v13 + 48) = v18;
    }

    if (v18 == 1)
    {
      v18 = 0;
    }

    v19 = (v14 - 8);
    result = AG::LayoutDescriptor::compare(v18, v15, a1, *(*(v14 - 1) + 64), v17);
    if ((result & 1) == 0)
    {
      if (*(v11 + 176))
      {
        AG::Graph::mark_changed(v11);
      }

      else
      {
        v34 = v14;
        v21 = *(AG::data::_shared_table_bytes + v6 + 20);
        if (v21 < 0x20)
        {
LABEL_33:
          ++*(v11 + 416);
        }

        else
        {
          v22 = 0;
          v35 = AG::data::_shared_table_bytes + *(AG::data::_shared_table_bytes + v6 + 24);
          v23 = v21 >> 5;
          while (1)
          {
            v24 = *(v35 + 4 * v22);
            if ((v24 & 3) != 0)
            {
              break;
            }

            v25 = AG::data::_shared_table_bytes + v24;
            v26 = *(AG::data::_shared_table_bytes + v24 + 12);
            if (v26 >= 0x20)
            {
              v27 = (AG::data::_shared_table_bytes + *(v25 + 16) + 4);
              v28 = 5 * (v26 >> 5);
              while (1)
              {
                v29 = *(v27 - 1);
                v36 = v29;
                if ((v29 & 3) != 0)
                {
                  v29 = AG::AttributeID::resolve_slow(&v36, 0);
                }

                if (v29 == v6)
                {
                  v30 = *v27;
                  if ((*v27 & 0x10) == 0)
                  {
                    if ((*(v27 - 4) & 3) == 0)
                    {
                      goto LABEL_31;
                    }

                    v19 = v19 & 0xFFFFFF0000000000 | *(v27 - 1) | (*v27 << 32);
                    if ((AG::Graph::compare_edge_values(v11, v19, v13, v15, a1) & 1) == 0)
                    {
                      break;
                    }
                  }
                }

                v27 += 5;
                v28 -= 5;
                if (!v28)
                {
                  goto LABEL_32;
                }
              }

              v30 = *v27;
LABEL_31:
              *v27 = v30 | 0x10;
            }

LABEL_32:
            if (++v22 == v23)
            {
              goto LABEL_33;
            }
          }

          AG::Graph::mark_changed(v11);
        }

        v14 = v34;
      }

      return (*(*(v14 - 1) + 24))(v15, a1, v14);
    }
  }

  else
  {
    AG::Node::allocate_value(v7, v11, *(AG::data::_shared_table_bytes + (v6 & 0xFFFFFE00)));
    *v7 |= 0x10u;
    AG::Graph::mark_changed(v11, v6, 0, 0, 0);
    v32 = (AG::data::_shared_table_bytes + *(v7 + 8));
    if ((*(v7 + 7) & 2) != 0)
    {
      v32 = *v32;
    }

    v33 = *(*(v14 - 1) + 16);

    return v33(v32, a1, v14);
  }

  return result;
}

uint64_t sub_1B49153D8()
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t AG::AttributeID::resolve_slow(AG::AttributeID *this, const char *a2)
{
  v2 = a2;
  v4 = *this;
  v5 = *this & 3;
  if (v5 == 1)
  {
    v6 = 0;
    do
    {
      if (v6)
      {
        v7 = 1;
      }

      else
      {
        v7 = (v2 & 8) == 0;
      }

      if (!v7)
      {
        v6 = 1;
      }

      v8 = AG::data::_shared_table_bytes + (v4 & 0xFFFFFFFC);
      if (*(v8 + 8))
      {
        if ((v2 & 4) != 0)
        {
          return v4;
        }

        if (v2)
        {
          a2 = *(v8 + 16);
          if (a2)
          {
            v9 = *(AG::data::_shared_table_bytes + (a2 & 0xFFFFFE00));
            if (v9)
            {
              AG::Graph::update_attribute(*(v9 + 40), a2, 0);
            }
          }
        }
      }

      if ((v2 & 0x10) != 0)
      {
        v10 = AG::data::table::raw_page_seed(&AG::data::_shared_table_bytes, (*v8 & 0xFFFFFE00));
        if ((v10 & 0x100000000) == 0 || *(v8 + 4) != (v10 & 0x7FFFFFFF))
        {
          if ((v2 & 2) != 0)
          {
            AG::precondition_failure("invalid indirect ref: %u", a2, *this);
          }

          return 2;
        }
      }

      v6 += *(v8 + 8) >> 2;
      v4 = *v8;
      v5 = *v8 & 3;
    }

    while (v5 == 1);
    if ((v2 & 2) != 0)
    {
      goto LABEL_21;
    }
  }

  else if ((a2 & 2) != 0)
  {
LABEL_21:
    if (v5)
    {
      AG::precondition_failure("invalid attribute id: %u", a2, *this);
    }
  }

  return v4;
}

AG::data::zone *AG::data::zone::realloc_bytes(AG::data::zone *this, _DWORD *a2, unsigned int a3, unsigned int a4, int a5)
{
  if (a4 > a3)
  {
    v7 = this;
    if (*a2 && (v8 = AG::data::_shared_table_bytes + (*a2 & 0xFFFFFE00), v9 = *a2 & 0x1FF, v10 = *(v8 + 16), v10 == v9 + a3) && *(v8 + 12) - v9 >= a4)
    {
      *(v8 + 16) = a4 - a3 + v10;
    }

    else
    {
      this = AG::data::zone::alloc_bytes_recycle(this, a4, a5);
      v11 = this;
      v12 = *a2;
      if (v12)
      {
        this = memcpy((AG::data::_shared_table_bytes + this), (AG::data::_shared_table_bytes + v12), a3);
        v13 = (*a2 + 3) & 0xFFFFFFFC;
        v14 = *a2 - v13 + a3;
        if (v14 >= 8)
        {
          v15 = (AG::data::_shared_table_bytes + v13);
          v15[1] = v14;
          *v15 = *(v7 + 5);
          *(v7 + 5) = v13;
        }
      }

      *a2 = v11;
    }
  }

  return this;
}

void AG::Graph::update_main_refs(uint64_t a1, unsigned int a2)
{
  v60 = *MEMORY[0x1E69E9840];
  v58 = 0u;
  v59 = 64;
  if ((a2 & 3) == 1)
  {
    v11 = AG::data::_shared_table_bytes + (a2 & 0xFFFFFFFC);
    if (*(v11 + 8))
    {
      v12 = *(v11 + 24);
      v13 = *(v11 + 20) >> 5;
      __dst[0] = AG::data::_shared_table_bytes + v12;
      __dst[1] = v13;
      v14 = 1;
LABEL_24:
      *(&v58 + 1) = v14;
    }
  }

  else
  {
    if ((a2 & 3) != 0)
    {
      goto LABEL_62;
    }

    v4 = (AG::data::_shared_table_bytes + a2);
    v5 = *v4;
    v6 = *(*(a1 + 88) + ((v5 >> 5) & 0x7FFFFF8));
    if ((*(*(*(v6 + 8) - 8) + 82) & 1) != 0 && (*(v6 + 40) & 0x20) == 0)
    {
      if ((v5 & 8) != 0)
      {
LABEL_63:
        v55 = *(v4 + 7);
        v16 = v4 + 7;
        v15 = v55;
        if ((v55 & 0x20) != 0)
        {
          goto LABEL_25;
        }

        v18 = 32;
        goto LABEL_19;
      }

      v7 = v4[3];
      if (v7 >= 0x20)
      {
        v8 = (AG::data::_shared_table_bytes + v4[4]);
        v9 = 5 * (v7 >> 5);
        do
        {
          v56 = *v8;
          v10 = v56;
          if ((v56 & 3) != 0)
          {
            v10 = AG::AttributeID::resolve_slow(&v56, 0x10u);
          }

          if ((v10 & 3) == 0 && (*(AG::data::_shared_table_bytes + v10 + 7) & 0x20) != 0)
          {
            goto LABEL_63;
          }

          v8 = (v8 + 5);
          v9 -= 5;
        }

        while (v9);
      }
    }

    v17 = *(v4 + 7);
    v16 = v4 + 7;
    v15 = v17;
    if ((v17 & 0x20) != 0)
    {
      v18 = 0;
LABEL_19:
      v19 = a2;
      *v16 = v15 & 0xDF | v18;
      v20 = AG::data::_shared_table_bytes;
      v21 = *(AG::data::_shared_table_bytes + v19 + 20);
      v22 = *(AG::data::_shared_table_bytes + v19 + 24);
      v23 = *(&v58 + 1);
      if (v59 < *(&v58 + 1) + 1)
      {
        AG::vector<AG::ConstOutputEdgeArrayRef,64ul,unsigned long>::reserve_slow(__dst, *(&v58 + 1) + 1);
        v23 = *(&v58 + 1);
      }

      v24 = v58;
      if (!v58)
      {
        v24 = __dst;
      }

      v25 = &v24[2 * v23];
      *v25 = v20 + v22;
      v25[1] = v21 >> 5;
      v14 = *(&v58 + 1) + 1;
      goto LABEL_24;
    }
  }

LABEL_25:
  v26 = *(&v58 + 1);
  if (*(&v58 + 1))
  {
    while (1)
    {
      v27 = v58;
      if (!v58)
      {
        v27 = __dst;
      }

      v28 = &v27[2 * v26];
      v30 = *(v28 - 2);
      v29 = *(v28 - 1);
      *(&v58 + 1) = --v26;
      v31 = v29 - 1;
      if (v29 - 1 >= 0)
      {
        break;
      }

LABEL_59:
      if (!v26)
      {
        goto LABEL_60;
      }
    }

    while (1)
    {
      while (1)
      {
        v32 = *(v30 + 4 * v31);
        if ((*(v30 + 4 * v31) & 3) != 1)
        {
          break;
        }

        v40 = AG::data::_shared_table_bytes;
        v41 = AG::data::_shared_table_bytes + (v32 & 0xFFFFFFFC);
        if ((*(v41 + 8) & 1) == 0)
        {
          goto LABEL_54;
        }

LABEL_47:
        v46 = *(v41 + 20);
        if (v46 < 0x20)
        {
          goto LABEL_54;
        }

        v47 = *(v41 + 24);
        v48 = v40 + v47;
        v49 = v46 >> 5;
        if (v31)
        {
          v50 = *(&v58 + 1);
          if (v59 < *(&v58 + 1) + 1)
          {
            AG::vector<AG::ConstOutputEdgeArrayRef,64ul,unsigned long>::reserve_slow(__dst, *(&v58 + 1) + 1);
            v50 = *(&v58 + 1);
          }

          v51 = v58;
          if (!v58)
          {
            v51 = __dst;
          }

          v52 = &v51[2 * v50];
          *v52 = v48;
          v52[1] = v49;
          ++*(&v58 + 1);
          goto LABEL_54;
        }

        v31 = v49 - 1;
        v30 = v40 + v47;
      }

      if ((v32 & 3) == 0)
      {
        v33 = AG::data::_shared_table_bytes + v32;
        v34 = *(AG::data::_shared_table_bytes + v32);
        v35 = *(*(a1 + 88) + ((v34 >> 5) & 0x7FFFFF8));
        if ((*(*(*(v35 + 8) - 8) + 82) & 1) != 0 && (*(v35 + 40) & 0x20) == 0)
        {
          if ((v34 & 8) != 0)
          {
            goto LABEL_56;
          }

          v36 = *(v33 + 12);
          if (v36 >= 0x20)
          {
            v37 = (AG::data::_shared_table_bytes + *(v33 + 16));
            v38 = 5 * (v36 >> 5);
            while (1)
            {
              v56 = *v37;
              v39 = v56;
              if ((v56 & 3) != 0)
              {
                v39 = AG::AttributeID::resolve_slow(&v56, 0x10u);
              }

              if ((v39 & 3) == 0 && (*(AG::data::_shared_table_bytes + v39 + 7) & 0x20) != 0)
              {
                break;
              }

              v37 = (v37 + 5);
              v38 -= 5;
              if (!v38)
              {
                goto LABEL_44;
              }
            }

LABEL_56:
            v53 = *(v33 + 7);
            v43 = (v33 + 7);
            v42 = v53;
            if ((v53 & 0x20) != 0)
            {
              goto LABEL_54;
            }

            v45 = 32;
LABEL_46:
            *v43 = v42 & 0xDF | v45;
            v40 = AG::data::_shared_table_bytes;
            v41 = AG::data::_shared_table_bytes + v32;
            goto LABEL_47;
          }
        }

LABEL_44:
        v44 = *(v33 + 7);
        v43 = (v33 + 7);
        v42 = v44;
        if ((v44 & 0x20) != 0)
        {
          v45 = 0;
          goto LABEL_46;
        }
      }

LABEL_54:
      if ((--v31 & 0x8000000000000000) != 0)
      {
        v26 = *(&v58 + 1);
        goto LABEL_59;
      }
    }
  }

LABEL_60:
  if (v58)
  {
    free(v58);
  }

LABEL_62:
  v54 = *MEMORY[0x1E69E9840];
}

void sub_1B4915A54(_Unwind_Exception *exception_object)
{
  v3 = *(v1 + 1024);
  if (v3)
  {
    free(v3);
  }

  _Unwind_Resume(exception_object);
}

void AG::Graph::indirect_attribute_set_dependency(uint64_t a1, const char *a2, unsigned int a3)
{
  v3 = a2;
  if (a3 < 4)
  {
    v5 = AG::data::_shared_table_bytes;
    if (*(AG::data::_shared_table_bytes + a2 + 8))
    {
      v6 = 0;
      v7 = a2;
      goto LABEL_9;
    }

LABEL_19:
    AG::precondition_failure("not an indirect attribute: %u", a2, a2 | 1);
  }

  if ((a3 & 3) != 0)
  {
    AG::Graph::indirect_attribute_set_dependency(a1, a2);
  }

  v5 = AG::data::_shared_table_bytes;
  v8 = *(AG::data::_shared_table_bytes + (a2 & 0xFFFFFE00));
  v9 = *(AG::data::_shared_table_bytes + (a3 & 0xFFFFFE00));
  if (v8 != v9)
  {
    AG::Graph::indirect_attribute_set_dependency(a1, a2);
  }

  if ((*(AG::data::_shared_table_bytes + a2 + 8) & 1) == 0)
  {
    goto LABEL_19;
  }

  if (*(v8 + 40) != *(v9 + 40))
  {
    AG::Graph::indirect_attribute_set_dependency(a1, a2);
  }

  v7 = a2;
  v6 = a3;
LABEL_9:
  v10 = *(a1 + 176);
  if (v10)
  {
    v13 = a3;
    v14 = 8 * v10 - 8;
    do
    {
      (*(**(*(a1 + 168) + v14) + 304))(*(*(a1 + 168) + v14), v7, v13);
      v14 -= 8;
    }

    while (v14 != -8);
    v5 = AG::data::_shared_table_bytes;
  }

  v11 = v5 + v7;
  v12 = *(v11 + 16);
  if (v6 != v12)
  {
    if (v12)
    {
      AG::Graph::remove_output_edge<AG::Node>(a1, v12, v3 & 0xFFFFFFFE | 1);
    }

    *(v11 + 16) = v6;
    if (v6)
    {
      AG::Graph::add_output_edge<AG::Node>(a1, v6, v3 & 0xFFFFFFFE | 1);
      if (*(AG::data::_shared_table_bytes + v6))
      {

        AG::Graph::propagate_dirty(a1);
      }
    }
  }
}

void AGGraphSetIndirectDependency(uint64_t a1, const char *a2)
{
  if ((a1 & 3) != 1 || (v3 = (a1 & 0xFFFFFFFC), (v4 = *(AG::data::_shared_table_bytes + (a1 & 0xFFFFFE00))) == 0))
  {
    AG::precondition_failure("invalid indirect attribute: %u", a2, a1);
  }

  v5 = *(v4 + 40);

  AG::Graph::indirect_attribute_set_dependency(v5, v3, a2);
}

uint64_t AGCompareValues(AG::LayoutDescriptor *a1, unsigned __int8 *a2, AG::LayoutDescriptor *this, AG::swift::metadata *a4)
{
  v8 = AG::LayoutDescriptor::fetch(this, a4, 0);
  if (v8 == 1)
  {
    v8 = 0;
  }

  v9 = *(*(this - 1) + 64);

  return AG::LayoutDescriptor::compare(v8, a1, a2, v9, a4);
}

uint64_t AG::data::table::raw_page_seed(uint64_t a1, const char *a2)
{
  v2 = a2;
  if (*(a1 + 24) <= a2)
  {
    AG::precondition_failure("invalid data offset: %u", a2, a2);
  }

  os_unfair_lock_lock((a1 + 16));
  v4 = (v2 >> 9) - 1;
  if (v4 >> 6 < *(a1 + 96) && ((*(*(a1 + 88) + 8 * (v4 >> 6)) >> v4) & 1) != 0)
  {
    v5 = *(*(*a1 + v2) + 24) & 0xFFFFFF00;
    v6 = *(*(*a1 + v2) + 24);
    v7 = 0x100000000;
  }

  else
  {
    v7 = 0;
    v6 = 0;
    v5 = 0;
  }

  os_unfair_lock_unlock((a1 + 16));
  return v7 | v5 | v6;
}

unint64_t sub_1B4915DE8()
{
  result = qword_1ED56CD18;
  if (!qword_1ED56CD18)
  {
    type metadata accessor for Flags(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED56CD18);
  }

  return result;
}

void sub_1B4915E40(uint64_t a1, unint64_t *a2)
{
  if (!*a2)
  {
    ForeignTypeMetadata = swift_getForeignTypeMetadata();
    if (!v4)
    {
      atomic_store(ForeignTypeMetadata, a2);
    }
  }
}

uint64_t sub_1B4915E8C(unint64_t *a1, void (*a2)(uint64_t))
{
  result = *a1;
  if (!result)
  {
    a2(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

void AG::Graph::invalidate_subgraphs(AG::Graph *this)
{
  v24 = *MEMORY[0x1E69E9840];
  if ((*(this + 360) & 1) == 0 && !*(this + 23))
  {
    if (*(this + 80))
    {
      v3 = 0;
      do
      {
        v4 = *(*(this + 39) + 8 * v3);
        *(v4 + 105) |= 2u;
        AG::Subgraph::cache_collect(v4);
        v5 = *(v4 + 105);
        *(v4 + 105) = v5 & 0xFD;
        if (v5)
        {
          ++v3;
          v6 = *(this + 80);
        }

        else
        {
          v7 = *(this + 39);
          v6 = *(this + 80) - 1;
          v8 = *(v7 + 8 * v3);
          *(v7 + 8 * v3) = *(v7 + 8 * v6);
          *(v7 + 8 * v6) = v8;
          *(this + 80) = v6;
        }
      }

      while (v3 < v6);
    }

    if (*(this + 88))
    {
      v22 = 0;
      v9 = 0x200000000;
      v23 = 0x200000000;
      v10 = pthread_main_np();
      v11 = *(this + 88);
      if (v11)
      {
        v12 = v10;
        do
        {
          v13 = *(this + 43);
          if (!v13)
          {
            v13 = this + 328;
          }

          v14 = v11 - 1;
          v15 = *&v13[8 * v14];
          *(this + 88) = v14;
          if (!v12 && (*(v15 + 105) & 4) != 0)
          {
            v16 = v23;
            v17 = v23 + 1;
            if (HIDWORD(v23) < (v23 + 1))
            {
              AG::vector<AG::Subgraph *,2ul,unsigned int>::reserve_slow(&__dst, v17);
              v16 = v23;
              v17 = v23 + 1;
            }

            p_dst = v22;
            if (!v22)
            {
              p_dst = &__dst;
            }

            *(p_dst + v16) = v15;
            LODWORD(v23) = v17;
          }

          else
          {
            AG::Subgraph::invalidate_now(v15, this);
          }

          v11 = *(this + 88);
        }

        while (v11);
        v19 = v22;
        v9 = v23;
      }

      else
      {
        v19 = 0;
      }

      v22 = *(this + 43);
      *(this + 43) = v19;
      v20 = *(this + 89);
      LODWORD(v23) = 0;
      HIDWORD(v23) = v20;
      *(this + 44) = v9;
      AG::vector<AG::Subgraph *,2ul,unsigned int>::swap_inline(&__dst, (this + 328));
      if (v22)
      {
        free(v22);
      }
    }
  }

  v2 = *MEMORY[0x1E69E9840];
}

void sub_1B491614C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *a12)
{
  if (a12)
  {
    free(a12);
  }

  _Unwind_Resume(exception_object);
}

uint64_t _s14AttributeGraph3MapV5flagsSo20AGAttributeTypeFlagsVvgZ_0()
{
  type metadata accessor for Flags(0);
  sub_1B4915DE8();
  sub_1B4916294();
  sub_1B4949D58();
  return v1;
}

uint64_t sub_1B49161BC()
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

unint64_t sub_1B4916294()
{
  result = qword_1ED56CD08;
  if (!qword_1ED56CD08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED56CD08);
  }

  return result;
}

void AG::precondition_failure(AG *this, const char *a2, ...)
{
  va_start(va, a2);
  va_copy(&v6[1], va);
  v6[0] = 0;
  v2 = vasprintf(v6, this, va);
  if (v6[0])
  {
    v3 = AG::error_log(v2);
    if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315138;
      *&buf[4] = v6[0];
      _os_log_error_impl(&dword_1B490B000, v3, OS_LOG_TYPE_ERROR, "precondition failure: %s", buf, 0xCu);
    }

    AG::Graph::trace_assertion_failure(1, "precondition failure: %s", v4, v6[0]);
    if (!qword_1EB8A4728)
    {
      *buf = 0;
      asprintf(buf, "AttributeGraph precondition failure: %s.\n", v6[0]);
      qword_1EB8A4728 = *buf;
    }

    free(v6[0]);
  }

  abort();
}

void AG::Subgraph::add_indirect()
{
  OUTLINED_FUNCTION_0();
  do
  {
    v1 = OUTLINED_FUNCTION_1();
    (*(v2 + 288))(v1, v0);
    OUTLINED_FUNCTION_7();
  }

  while (!v3);
}

uint64_t AG::swift::metadata::equatable(void)const::$_1::operator()()
{
  if (!objc_getClass("NSObject") || !swift_getObjCClassMetadata())
  {
    return 0;
  }

  return swift_conformsToProtocol();
}

void AG::Subgraph::set_flags(uint64_t a1, unsigned int a2, unsigned __int8 a3)
{
  v3 = (AG::data::_shared_table_bytes + a2);
  if (v3[6] != a3)
  {
    v5 = a3;
    if (a3 && v3[6])
    {
      v3[6] = a3;
    }

    else
    {
      v6 = a2;
      AG::Subgraph::unlink_attribute(a1, a2);
      v3[6] = v5;
      AG::Subgraph::insert_attribute(v7, v6, 1);
    }

    v8 = *(a1 + 100);
    if ((v5 & ~v8) != 0)
    {
      *(a1 + 100) = v8 | v5;
      v10 = (v8 | v5 | BYTE1(v8));
      AG::Subgraph::foreach_ancestor<AG::Subgraph::propagate_flags(void)::$_0>(a1, &v10);
    }

    if (*v3)
    {
      v9 = *(a1 + 100);
      if ((v5 & ~HIWORD(v9)) != 0)
      {
        *(a1 + 100) = v9 & 0xFF00FFFF | ((BYTE2(v9) | v5) << 16);
        v11 = (BYTE2(v9) | v5) | HIBYTE(v9);
        AG::Subgraph::foreach_ancestor<AG::Subgraph::propagate_dirty_flags(void)::$_0>(a1, &v11);
      }
    }
  }
}

void AG::Subgraph::unlink_attribute(uint64_t a1, uint64_t a2)
{
  v2 = AG::data::_shared_table_bytes + (a2 & 0xFFFFFE00);
  v5 = *(v2 + 20);
  v3 = (v2 + 20);
  v4 = v5;
  if (v5)
  {
    v6 = 2;
    do
    {
      while ((v4 & 3u) > 1)
      {
        if ((v4 & 3) != 3 || !v4)
        {
          goto LABEL_13;
        }
      }

      v7 = v4 + (a2 & 0xFFFFFE00);
      if ((v4 & 3) != 0)
      {
        if (v7 == a2)
        {
          break;
        }

        v8 = (AG::data::_shared_table_bytes + 14 + (v7 & 0xFFFFFFFC));
      }

      else
      {
        if (v7 == a2)
        {
          break;
        }

        v8 = (AG::data::_shared_table_bytes + 4 + v7);
      }

      v4 = *v8;
      v6 = v7;
    }

    while (v4);
LABEL_13:
    if ((v6 & 3) != 0)
    {
      if ((v6 & 3) != 1)
      {
        goto LABEL_18;
      }

      v9 = 14;
      v10 = -4;
    }

    else
    {
      v9 = 4;
      v10 = -1;
    }

    v3 = (AG::data::_shared_table_bytes + v9 + (v10 & v6));
  }

LABEL_18:
  v11 = 4294967292;
  if ((a2 & 3) == 0)
  {
    v11 = 0xFFFFFFFFLL;
  }

  v12 = 14;
  if ((a2 & 3) == 0)
  {
    v12 = 4;
  }

  v13 = AG::data::_shared_table_bytes + (v11 & a2);
  *v3 = *(v13 + v12);
  *(v13 + v12) = 0;
}

void *AG::vector<std::pair<char const*,unsigned long>,8ul,unsigned long>::reserve_slow(void *__dst, size_t a2)
{
  if (*(__dst + 18) + (*(__dst + 18) >> 1) <= a2)
  {
    v3 = a2;
  }

  else
  {
    v3 = *(__dst + 18) + (*(__dst + 18) >> 1);
  }

  result = AG::details::realloc_vector<unsigned long,16ul>(*(__dst + 16), __dst, 8uLL, __dst + 18, v3);
  *(__dst + 16) = result;
  return result;
}

uint64_t AG::Subgraph::foreach_ancestor<AG::Subgraph::propagate_flags(void)::$_0>(uint64_t result, _DWORD *a2)
{
  for (i = result; ; i = result)
  {
    v4 = *(i + 56);
    v5 = (v4 & 1) != 0 ? *((v4 & 0xFFFFFFFFFFFFFFFELL) + 40) : v4 != 0;
    v6 = v5 - 1;
    if (v5 - 1 < 0)
    {
      break;
    }

    while (1)
    {
      result = *(i + 56);
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
      if (((~(v8 >> 8) | 0xFFFFFF00) & *a2) == 0)
      {
        goto LABEL_13;
      }

      *(result + 100) = v8 & 0xFFFF00FF | ((BYTE1(v8) | *a2) << 8);
      if (!v6)
      {
        break;
      }

      result = AG::Subgraph::foreach_ancestor<AG::Subgraph::propagate_flags(void)::$_0>();
LABEL_13:
      if (v6-- <= 0)
      {
        return result;
      }
    }
  }

  return result;
}

void AG::Graph::mark_pending(uint64_t a1, unsigned int a2, int *a3)
{
  v6 = *a3;
  if ((*a3 & 2) == 0)
  {
    v7 = *(a1 + 176);
    if (v7)
    {
      v9 = 8 * v7 - 8;
      do
      {
        (*(**(*(a1 + 168) + v9) + 264))(*(*(a1 + 168) + v9), a2, 1);
        v9 -= 8;
      }

      while (v9 != -8);
      v6 = *a3;
    }

    v6 |= 2u;
    *a3 = v6;
  }

  if ((v6 & 1) == 0)
  {
    v8 = *(a1 + 176);
    if (v8)
    {
      v10 = 8 * v8 - 8;
      do
      {
        (*(**(*(a1 + 168) + v10) + 256))(*(*(a1 + 168) + v10), a2, 1);
        v10 -= 8;
      }

      while (v10 != -8);
      v6 = *a3;
    }

    *a3 = v6 | 1;
    if (*(a3 + 6))
    {
      AG::Graph::mark_pending(a2, *(a3 + 6));
    }

    AG::Graph::propagate_dirty(a1);
  }
}

void AGGraphSetFlags(char *a1, const char *a2)
{
  if ((a1 & 3) != 0)
  {
    AG::precondition_failure("non-direct attribute id: %u", a2, a1);
  }

  v3 = a2;
  v4 = a1;
  v5 = *(AG::data::_shared_table_bytes + (a1 & 0xFFFFFE00));

  AG::Subgraph::set_flags(v5, v4, v3);
}

void *AG::LayoutDescriptor::Builder::add_field(void *this, uint64_t a2)
{
  if (a2)
  {
    v3 = this[4];
    if (v3)
    {
      v4 = (v3 + 16);
    }

    else
    {
      v4 = this + 5;
    }

    v5 = v4[1];
    if (!v5 || (v6 = *v4 + 56 * v5, v6 == 56) || *(v6 - 8) || (v7 = *(v6 - 48), v7 + *(v6 - 56) != this[2]))
    {
      v8 = this[2];
      if (v4[2] < (v5 + 1))
      {
        this = AG::vector<std::variant<AG::LayoutDescriptor::Builder::DataItem,AG::LayoutDescriptor::Builder::EqualsItem,AG::LayoutDescriptor::Builder::EqualsOverrideItem,AG::LayoutDescriptor::Builder::IndirectItem,AG::LayoutDescriptor::Builder::ExistentialItem,AG::LayoutDescriptor::Builder::HeapRefItem,AG::LayoutDescriptor::Builder::NestedItem,AG::LayoutDescriptor::Builder::EnumItem>,0ul,unsigned long>::reserve_slow(v4, v5 + 1);
        v5 = v4[1];
      }

      v9 = *v4 + 56 * v5;
      *v9 = v8;
      *(v9 + 8) = a2;
      *(v9 + 48) = 0;
      ++v4[1];
    }

    else
    {
      *(v6 - 48) = v7 + a2;
    }
  }

  return this;
}

uint64_t AG::Subgraph::cache_fetch(AG::Graph **this, uint64_t a2, void *a3, const void *a4, uint64_t (*a5)(AG::Graph *))
{
  v10 = *(this + 23);
  if (!v10)
  {
    v11 = *(this + 4);
    if (v11 && (v12 = AG::data::_shared_table_bytes, v13 = (*(AG::data::_shared_table_bytes + v11 + 16) + 7) & 0xFFFFFFF8, v13 + 200 <= *(AG::data::_shared_table_bytes + v11 + 12)))
    {
      *(AG::data::_shared_table_bytes + v11 + 16) = v13 + 200;
      v14 = v13 + v11;
    }

    else
    {
      v14 = AG::data::zone::alloc_slow(this, 0xC8u, 7);
      v12 = AG::data::_shared_table_bytes;
    }

    v10 = v14;
    AG::Subgraph::NodeCache::NodeCache((v12 + v14));
    *(this + 23) = v14;
  }

  v15 = AG::data::_shared_table_bytes + v10;
  v16 = util::UntypedTable::lookup((AG::data::_shared_table_bytes + v10 + 8), a3, 0);
  if (!v16)
  {
    v17 = AG::swift::metadata::equatable(a3);
    if (!v17)
    {
      AG::Subgraph::cache_fetch(a3);
    }

    v18 = v17;
    v19 = a5(this[5]);
    v20 = *(this + 4);
    if (v20 && (v21 = AG::data::_shared_table_bytes, v22 = (*(AG::data::_shared_table_bytes + v20 + 16) + 7) & 0xFFFFFFF8, v22 + 40 <= *(AG::data::_shared_table_bytes + v20 + 12)))
    {
      *(AG::data::_shared_table_bytes + v20 + 16) = v22 + 40;
      v16 = v22 + v20;
    }

    else
    {
      v16 = AG::data::zone::alloc_slow(this, 0x28u, 7);
      v21 = AG::data::_shared_table_bytes;
    }

    v23 = v21 + v16;
    *v23 = a3;
    *(v23 + 8) = v18;
    *(v23 + 16) = 0;
    *(v23 + 24) = 0;
    *(v23 + 32) = v19;
    util::UntypedTable::insert((v15 + 8), a3, v16);
  }

  v24 = a2 << 8;
  v40 = v24;
  v41 = v16;
  v42 = 0;
  v43 = a4;
  v25 = util::UntypedTable::lookup((v15 + 72), &v40, 0);
  if (v25)
  {
    v26 = v25;
    v27 = *v25;
    if (*v25)
    {
      v28 = AG::data::_shared_table_bytes + v16;
      v29 = *(v25 + 2);
      v30 = *(v25 + 3);
      if (v29)
      {
        v31 = *(v25 + 2);
      }

      else
      {
        v31 = AG::data::_shared_table_bytes + v16;
      }

      *(v31 + 24) = v30;
      if (v30)
      {
        v28 = v30;
      }

      *(v28 + 16) = v29;
    }
  }

  else
  {
    if (!a5)
    {
      return 0;
    }

    v32 = AG::data::_shared_table_bytes;
    v33 = AG::data::_shared_table_bytes + v16;
    v26 = *(v33 + 24);
    if (!v26 || (v34 = *v26, v34 < 2))
    {
      AG::Graph::add_attribute(this[5], this, *(v33 + 32), a4, 0);
      operator new();
    }

    v35 = *(v26 + 2);
    v36 = *(v26 + 3);
    if (v35)
    {
      v37 = *(v26 + 2);
    }

    else
    {
      v37 = AG::data::_shared_table_bytes + v16;
    }

    *(v37 + 24) = v36;
    if (v36)
    {
      v33 = v36;
    }

    *(v33 + 16) = v35;
    if (v34 != 255)
    {
      util::UntypedTable::remove_ptr((v15 + 72), v26);
      v32 = AG::data::_shared_table_bytes;
    }

    v38 = v26[3];
    AG::Graph::remove_all_inputs(this[5], v26[3]);
    *(v32 + v38) |= 3u;
    AG::Node::update_self((v32 + v38), this[5], a4);
    *v26 = *v26 | v24;
    util::UntypedTable::insert((v15 + 72), v26, v26);
    v27 = *v26;
  }

  *v26 = v27 & 0xFFFFFFFFFFFFFF00;
  return v26[3];
}

uint64_t anonymous namespace::read_cached_attribute(const char *a1, void *a2, const void *a3, AG::swift::metadata *a4, char a5, unsigned int a6, _BYTE *a7, int a8, uint64_t (*a9)(AG::Graph *), uint64_t a10)
{
  v13 = AG::Graph::_current_update_key;
  StatusReg = _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
  v15 = *(StatusReg + 8 * v13);
  if (v15)
  {
    v16 = 0;
  }

  else
  {
    v16 = v15 & 0xFFFFFFFFFFFFFFFELL;
  }

  if (a6 >= 4)
  {
    if (dword_1ED56D738 <= (a6 & 0xFFFFFFFC))
    {
      AG::precondition_failure("invalid data offset: %u", a1, a2, a3, a6 & 0xFFFFFFFC);
    }

    v17 = a6 & 0xFFFFFE00;
LABEL_11:
    v19 = (AG::data::_shared_table_bytes + v17);
    goto LABEL_12;
  }

  if (v16)
  {
    v18 = v16 + 32;
    if (*(v16 + 96))
    {
      v18 = *(v16 + 96);
    }

    v17 = *(v18 + 8 * *(v16 + 104) - 8) & 0xFFFFFE00;
    goto LABEL_11;
  }

  v19 = (StatusReg + 8 * AG::Subgraph::_current_subgraph_key);
LABEL_12:
  v20 = *v19;
  if (!*v19)
  {
    AGGraphGetAttributeSubgraph_cold_1(a1, a1);
  }

  v21 = v20[5];
  v22 = AG::Subgraph::cache_fetch(*v19, a1, a2, a3, a9);
  if (!v22)
  {
    return 0;
  }

  v23 = v22;
  if (!v16)
  {
    v33 = AG::Graph::value_ref(v21, v22, 0, a4, a7);
    AG::Subgraph::cache_insert(v20, v23);
    return v33;
  }

  v24 = (a5 & 1) == 0;
  v25 = v16 + 32;
  if (*(v16 + 96))
  {
    v25 = *(v16 + 96);
  }

  v26 = *(v25 + 8 * *(v16 + 104) - 8);
  v47 = v22;
  v27 = &v26[AG::data::_shared_table_bytes];
  v28 = *&v26[AG::data::_shared_table_bytes + 12];
  if (v28 > 0x11F)
  {
    v29 = AG::Graph::index_of_input_slow(v21, &v26[AG::data::_shared_table_bytes], v22 | (v24 << 40) | 0xF00000000);
  }

  else
  {
    if (v28 < 0x20)
    {
LABEL_23:
      v29 = -1;
      return AG::Graph::input_value_ref_slow(v21, v26, v23, 0, v24, a4, a7, v29);
    }

    v29 = 0;
    v30 = v28 >> 5;
    v31 = (*(v27 + 4) + AG::data::_shared_table_bytes + 4);
    while (*(v31 - 1) != v22 || (*v31 & 0xF) != v24)
    {
      ++v29;
      v31 += 5;
      if (v30 == v29)
      {
        goto LABEL_23;
      }
    }
  }

  if ((v29 & 0x8000000000000000) != 0)
  {
    return AG::Graph::input_value_ref_slow(v21, v26, v23, 0, v24, a4, a7, v29);
  }

  v34 = *(v27 + 4);
  v35 = AG::data::_shared_table_bytes;
  if ((v23 & 3) != 0)
  {
    v46 = v29;
    v44 = AG::data::_shared_table_bytes;
    v45 = AG::AttributeID::resolve_slow(&v47, 3);
    v35 = v44;
    v29 = v46;
    v23 = v45;
  }

  else
  {
    v36 = 0;
  }

  v37 = AG::data::_shared_table_bytes;
  v38 = AG::data::_shared_table_bytes + v23;
  if ((*v38 & 0x11) != 0x10)
  {
    v23 = v47;
    return AG::Graph::input_value_ref_slow(v21, v26, v23, 0, v24, a4, a7, v29);
  }

  v39 = v35 + v34 + 5 * v29;
  v42 = *(v39 + 4);
  v40 = (v39 + 4);
  v41 = v42;
  if ((v42 & 0x10) != 0)
  {
    *a7 |= 1u;
    v41 = *v40;
    v37 = AG::data::_shared_table_bytes;
  }

  *v40 = v41 | 0x20;
  v43 = (v37 + *(v38 + 8));
  if ((*(v38 + 7) & 2) != 0)
  {
    v43 = *v43;
  }

  return v43 + v36;
}

uint64_t AGGraphReadCachedAttribute(const char *a1, void *a2, const void *a3, AG::swift::metadata *a4, char a5, unsigned int a6, _BYTE *a7, uint64_t (*a8)(AG::Graph *), uint64_t a9)
{
  v11 = 0;
  if (a7)
  {
    *a7 = v11 & 1;
  }

  return result;
}

uint64_t static Rule<>._cachedValue(options:owner:hashValue:bodyPtr:update:)(char a1, uint64_t a2, const char *a3, const void *a4, uint64_t a5, uint64_t a6, void *a7, uint64_t a8, uint64_t a9)
{
  if ((a2 & 0x100000000) != 0)
  {
    v16 = 2;
  }

  else
  {
    v16 = a2;
  }

  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v20 = a7;
  v21 = a8;
  v22 = a9;
  v23 = a5;
  v24 = a6;
  return AGGraphReadCachedAttribute(a3, a7, a4, AssociatedTypeWitness, a1, v16, 0, sub_1B491CB58, v19);
}

uint64_t AG::Graph::input_value_ref_slow(uint64_t result, const char *a2, uint64_t a3, int a4, char a5, AG::swift::metadata *a6, _BYTE *a7, uint64_t a8)
{
  v11 = a3;
  v12 = result;
  v32 = a3;
  v13 = a2;
  v14 = AG::data::_shared_table_bytes + a2;
  if ((a5 & 2) != 0)
  {
    result = AG::Graph::index_of_input(result, AG::data::_shared_table_bytes + a2, a3 | ((a5 & 9) << 40) | 0xD00000000);
    a8 = result;
  }

  if (a4)
  {
    v15 = 17;
  }

  else
  {
    v15 = 3;
  }

  if ((a8 & 0x8000000000000000) == 0)
  {
    goto LABEL_18;
  }

  if (dword_1ED56D738 <= (v11 & 0xFFFFFFFC))
  {
    AG::precondition_failure("invalid data offset: %u", a2, v11 & 0xFFFFFFFC);
  }

  v16 = *(AG::data::_shared_table_bytes + (v11 & 0xFFFFFE00));
  if (!v16 || *(v16 + 40) != v12)
  {
    AG::precondition_failure("accessing attribute in a different namespace: %u", a2, v11);
  }

  if ((*v14 & 1) == 0)
  {
    if ((v11 & 3) != 0)
    {
      result = AG::AttributeID::resolve_slow(&v32, v15);
      LODWORD(v11) = result;
      if (a4)
      {
        goto LABEL_13;
      }
    }

    else if (a4)
    {
LABEL_13:
      result = 0;
      if (v11 < 4 || (v11 & 3) != 0)
      {
        return result;
      }
    }

    if (*(*(AG::data::_shared_table_bytes + (v11 & 0xFFFFFE00)) + 40) != v12)
    {
      AG::Graph::add_input_dependencies(result, a2);
    }

    AG::Graph::update_attribute(v12, v11, 0);
    LODWORD(v11) = v32;
  }

  result = AG::Graph::add_input(v12, v13, v11, a4 != 0, a5 & 9);
  a8 = result;
  if (result < 0)
  {
    return 0;
  }

LABEL_18:
  v17 = AG::data::_shared_table_bytes + *(v14 + 16);
  v18 = 5 * a8;
  v19 = (v17 + 5 * a8);
  *(v19 + 4) = v19[1] & 0xF7 | a5 & 1 | (a5 | *(v19 + 4)) & 8 | 0x20;
  v20 = *v19;
  v31 = v20;
  if ((v20 & 3) != 0)
  {
    result = AG::AttributeID::resolve_slow(&v31, (v15 | 8));
    v21 = a2;
    v20 = result;
    if (a4)
    {
LABEL_20:
      if (v20 < 4 || (v20 & 3) != 0)
      {
        return 0;
      }
    }
  }

  else
  {
    v21 = 0;
    if (a4)
    {
      goto LABEL_20;
    }
  }

  if (*(*(AG::data::_shared_table_bytes + (v20 & 0xFFFFFE00)) + 40) != v12)
  {
    AG::Graph::add_input_dependencies(result, a2);
  }

  v29 = v14;
  v23 = (AG::data::_shared_table_bytes + v20);
  if ((*v23 & 0x11) != 0x10)
  {
    if (a4)
    {
      v24 = AG::data::table::raw_page_seed(&AG::data::_shared_table_bytes, (v20 & 0xFFFFFE00));
      AG::Graph::update_attribute(v12, v20, 0);
      if ((v24 & 0x100000000) != 0)
      {
        v25 = AG::data::table::raw_page_seed(&AG::data::_shared_table_bytes, (v20 & 0xFFFFFE00));
        result = 0;
        if ((v25 & 0x100000000) == 0 || (v24 & 0x7FFFFFFF) != v25)
        {
          return result;
        }
      }
    }

    else
    {
      AG::Graph::update_attribute(v12, v20, 0);
    }

    v17 = AG::data::_shared_table_bytes + *&v13[AG::data::_shared_table_bytes + 16];
  }

  if ((*(v17 + v18 + 4) & 0x10) != 0)
  {
    *a7 |= 1u;
  }

  if (a5 & 2) != 0 && (*(v23 + 7) & 0x20) != 0 && (*(*(a6 - 1) + 82))
  {
    *v29 |= 8u;
    *a7 |= 2u;
  }

  v26 = *v23;
  if (!v21)
  {
    v27 = *(*(*(v12 + 11) + ((v26 >> 5) & 0x7FFFFF8)) + 8);
    if (v27 != a6)
    {
      AG::Graph::value_set_internal(v27);
    }
  }

  if ((v26 & 0x10) == 0)
  {
    AG::precondition_failure("attribute being read has no value: %u", a2, v20);
  }

  v28 = (AG::data::_shared_table_bytes + v23[2]);
  if ((*(v23 + 7) & 2) != 0)
  {
    v28 = *v28;
  }

  if (v21)
  {
    return &v21[v28 - 1];
  }

  else
  {
    return v28;
  }
}

uint64_t AG::Graph::add_input(uint64_t a1, const char *a2, uint64_t a3, int a4, uint64_t a5)
{
  v40 = a3;
  v9 = a3;
  if ((a3 & 3) == 0)
  {
    if (a4)
    {
      goto LABEL_3;
    }

LABEL_6:
    if (v9 <= 3)
    {
      AG::precondition_failure("reading from invalid source attribute: %u", a2, v40);
    }

    goto LABEL_7;
  }

  v9 = AG::AttributeID::resolve_slow(&v40, 0x10);
  if (!a4)
  {
    goto LABEL_6;
  }

LABEL_3:
  if (v9 < 4)
  {
    return -1;
  }

LABEL_7:
  if (v9 == a2)
  {
    AG::precondition_failure("cyclic edge: %u -> %u", a2, a2, a2);
  }

  v11 = v9 & 0xFFFFFE00;
  v12 = AG::data::_shared_table_bytes;
  if (*(*(AG::data::_shared_table_bytes + v11) + 40) != a1)
  {
    AG::Graph::add_input_dependencies(v9, &AG::data::_shared_table_bytes);
  }

  v13 = *(a1 + 176);
  v14 = a2;
  if (v13)
  {
    v39 = 8 * v13 - 8;
    do
    {
      (*(**(*(a1 + 168) + v39) + 232))(*(*(a1 + 168) + v39), a2, v40, a5);
      v39 -= 8;
    }

    while (v39 != -8);
    v12 = AG::data::_shared_table_bytes;
  }

  v15 = v12 + a2;
  if ((a5 & 8) == 0)
  {
    v16 = *(v12 + (a2 & 0xFFFFFE00));
    if (v16)
    {
      v16 = *(v16 + 48);
    }

    v17 = *(v12 + v11);
    if (v17)
    {
      v17 = *(v17 + 48);
    }

    if (v16 != v17)
    {
      *(v15 + 7) |= 4u;
    }
  }

  v18 = v40;
  v19 = *v15 & 1;
  v20 = a5 & 0xD | (16 * v19);
  if ((*(v15 + 7) & 8) != 0)
  {
    v10 = *(v15 + 12) >> 5;
    v35 = AG::data::_shared_table_bytes;
    if ((*(v15 + 12) & 0x1F) == 0 || *(v15 + 12) >> 5 >> *(v15 + 12) != 0)
    {
      AG::data::vector<AG::InputEdge>::reserve_slow((v15 + 12), *(AG::data::_shared_table_bytes + (a2 & 0xFFFFFE00)), v10 + 1);
      v35 = AG::data::_shared_table_bytes;
    }

    v37 = v35 + *(v15 + 16) + 5 * v10;
    *v37 = v18;
    *(v37 + 4) = v20;
    *(v15 + 12) += 32;
    *(v15 + 7) |= 8u;
  }

  else
  {
    v21 = AG::data::_shared_table_bytes;
    v23 = *(v15 + 12);
    v22 = *(v15 + 16);
    v24 = AG::data::_shared_table_bytes + v22;
    v25 = v23 >> 5;
    v26 = (AG::data::_shared_table_bytes + v22);
    if (v23 >= 0x20)
    {
      v26 = (AG::data::_shared_table_bytes + v22);
      v27 = v23 >> 5;
      do
      {
        v28 = v27 >> 1;
        v29 = &v26[5 * (v27 >> 1)];
        v31 = *v29;
        v30 = v29 + 5;
        v27 += ~(v27 >> 1);
        if (v31 < v40)
        {
          v26 = v30;
        }

        else
        {
          v27 = v28;
        }
      }

      while (v27);
    }

    v32 = &v26[-v24];
    v10 = 0xCCCCCCCCCCCCCCCDLL * &v26[-v24];
    if ((v23 & 0x1F) == 0 || v25 >> v23)
    {
      AG::data::vector<AG::InputEdge>::reserve_slow((v15 + 12), *(AG::data::_shared_table_bytes + (a2 & 0xFFFFFE00)), v25 + 1);
      v22 = *(v15 + 16);
      v21 = AG::data::_shared_table_bytes;
    }

    v33 = v21 + v22;
    if (v25 > v10)
    {
      memmove(&v32[v33 + 5], &v32[v33], 5 * (v25 - v10));
    }

    v34 = &v32[v33];
    *v34 = v18;
    v34[4] = v20;
    *(v15 + 12) += 32;
  }

  AG::Graph::add_input_dependencies(a1, v14, v40);
  if ((*v15 & 0xC0) != 0)
  {
    AG::Graph::reset_update(a1, v14);
  }

  if (v19 && *(a1 + 176))
  {
    AG::Graph::add_input();
  }

  return v10;
}

uint64_t AGGraphGetOutputValue(AG::swift::metadata *a1, const char *a2)
{
  v3 = AG::Graph::_current_update_key;
  v4 = *(_ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3)) + 8 * v3);
  if ((v4 & 1) != 0 || (v5 = (v4 & 0xFFFFFFFFFFFFFFFELL)) == 0)
  {
    AGGraphRegisterDependency_cold_1(a1, a2);
  }

  v7 = *v5;
  v8 = v5 + 4;
  v10 = v5[12];
  v9 = v5[13];
  if (v10)
  {
    v8 = v10;
  }

  v11 = LODWORD(v8[v9 - 1]);

  return AG::Graph::output_value_ref(v7, v11, a1);
}

void AG::Graph::reset_update(uint64_t a1, int a2)
{
  v2 = AG::Graph::_current_update_key;
  for (i = *(_ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3)) + 8 * v2); i; i = v4[2])
  {
    v4 = (i & 0xFFFFFFFFFFFFFFFELL);
    v5 = v4 + 4;
    v6 = v4[13];
    if (v4[12])
    {
      v5 = v4[12];
    }

    if (v6)
    {
      v7 = 8 * v6;
      v8 = v5 + 1;
      do
      {
        if (*(v8 - 1) == a2)
        {
          *v8 &= 0xFu;
        }

        v8 += 2;
        v7 -= 8;
      }

      while (v7);
    }
  }
}

uint64_t AG::Graph::update_attribute(AG::Graph *this, unsigned int a2, uint64_t a3)
{
  v37 = *MEMORY[0x1E69E9840];
  if (*(this + 361) == 1 && !AG::Graph::thread_is_updating(this))
  {
    AG::Graph::call_update(this);
  }

  v6 = (AG::data::_shared_table_bytes + a2);
  v7 = *v6;
  if ((*v6 & 0x11) == 0x10)
  {
    v8 = 0;
  }

  else
  {
    ++*(this + 50);
    if ((v7 & 4) != 0)
    {
      ++*(this + 51);
    }

    StatusReg = _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
    v28 = this;
    v29 = StatusReg - 224;
    v10 = *(StatusReg + 8 * AG::Graph::_current_update_key);
    v11 = atomic_load(this + 46);
    v30 = v10;
    v31 = v11;
    v33 = 0;
    v34 = 0;
    v35 = 8;
    v36 = a3;
    v12 = a3;
    if (v10)
    {
      v12 = *((v10 & 0xFFFFFFFFFFFFFFFELL) + 120) & 2 | a3;
      v36 = v12;
    }

    *(this + 46) = v29;
    if ((*(this + 360) & 1) == 0)
    {
      *(this + 360) = 1;
      v36 = v12 | 8;
    }

    *(StatusReg + 8 * AG::Graph::_current_update_key) = &v28 | (a3 >> 2) & 1;
    v13 = *(this + 44);
    if (v13)
    {
      for (i = 8 * v13 - 8; i != -8; i -= 8)
      {
        v25 = *(*(this + 21) + i);
        (*(*v25 + 64))(v25, &v28, a2, a3);
      }
    }

    if (AG::Graph::UpdateStack::push(&v28, a2, v6, 0, 1))
    {
      v8 = AG::Graph::UpdateStack::update(&v28);
    }

    else
    {
      v8 = 1;
    }

    v15 = *(this + 44);
    if (v15)
    {
      for (j = 8 * v15 - 8; j != -8; j -= 8)
      {
        v27 = *(*(this + 21) + j);
        (*(*v27 + 72))(v27, &v28, a2, v8);
      }
    }

    v16 = &v32;
    if (v33)
    {
      v16 = v33;
    }

    if (v34)
    {
      v17 = AG::data::_shared_table_bytes;
      v18 = 8 * v34;
      do
      {
        v19 = *v16;
        v16 += 2;
        *(v17 + v19) -= 64;
        v18 -= 8;
      }

      while (v18);
    }

    v20 = v28;
    if (v29 != *(v28 + 46))
    {
      AG::non_fatal_precondition_failure("invalid graph update (access from multiple threads?)", v14);
      v20 = v28;
    }

    v21 = v30;
    *(v20 + 368) = v31;
    *(StatusReg + 8 * AG::Graph::_current_update_key) = v21;
    if ((v36 & 8) != 0)
    {
      *(v20 + 360) = 0;
    }

    if (v33)
    {
      free(v33);
    }
  }

  v22 = *MEMORY[0x1E69E9840];
  return v8;
}

void sub_1B4917BC0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, char a10)
{
  if (a2)
  {
    __clang_call_terminate(exception_object);
  }

  _Unwind_Resume(exception_object);
}

uint64_t AG::Graph::UpdateStack::push(uint64_t *a1, unsigned int a2, unsigned int *a3, char a4, int a5)
{
  v5 = a1[13];
  if (v5 == a1[14] || (*a3 & 0xC0) != 0)
  {
    return AG::Graph::UpdateStack::push_slow(a1, a2, a3, a4, a5);
  }

  *a3 |= 0x40u;
  v6 = a1[12];
  if (!v6)
  {
    v6 = a1 + 4;
  }

  v7 = &v6[v5];
  *v7 = a2;
  *(v7 + 1) = 0;
  if ((*a3 & 2) != 0 || (*a3 & 0x10) == 0 && a5)
  {
    *(v7 + 1) = 1;
  }

  a1[13] = v5 + 1;
  return 1;
}

uint64_t AG::Graph::UpdateStack::update(AG::Graph::UpdateStack *this)
{
  v74 = this + 32;
LABEL_2:
  while (2)
  {
    v2 = *(this + 13);
    while (1)
    {
      v3 = *(this + 12);
      if (!v3)
      {
        v3 = v74;
      }

      v4 = &v3[8 * v2];
      v5 = (AG::data::_shared_table_bytes + *(v4 - 2));
      if ((*(this + 120) & 2) != 0)
      {
        AG::Graph::UpdateStack::update((*(v4 - 1) & 8) == 0, this);
      }

      else if ((*(v4 - 1) & 8) == 0)
      {
        goto LABEL_7;
      }

      if ((*(v4 - 4) & 8) != 0)
      {
        break;
      }

LABEL_7:
      v6 = v5[3];
      v7 = AG::data::_shared_table_bytes + v5[4];
      v8 = *(v4 - 1);
      v9 = v8 >= 0x10 && (*(v4 - 1) & 1) == 0;
      if (v9 && (*(v7 + 5 * (v8 >> 4) - 1) & 0x10) != 0)
      {
        LODWORD(v8) = v8 | 1;
        *(v4 - 1) = v8;
      }

      v10 = v6 >> 5;
      if ((v6 >> 5) > v8 >> 4)
      {
        v11 = v8 >> 4;
        do
        {
          v12 = (v7 + 5 * v11);
          v13 = *v12;
          v14 = *(v12 + 4);
          if ((v13 & 3) == 0)
          {
            goto LABEL_127;
          }

          while ((v13 & 3) == 1)
          {
            v16 = AG::data::_shared_table_bytes;
            v17 = (AG::data::_shared_table_bytes + (v13 & 0xFFFFFFFC));
            v13 = *v17;
            if (v17[2])
            {
              v18 = v17[4];
              if (v18)
              {
                if ((*(AG::data::_shared_table_bytes + v18) & 0x11) != 0x10)
                {
                  *(v4 - 1) = v8 & 0xF | (16 * v11);
                  AG::Graph::UpdateStack::push(this, v18, (v16 + v18), 0, 0);
                  goto LABEL_2;
                }
              }
            }
          }

          if ((v13 & 3) == 0)
          {
LABEL_127:
            if ((v14 & 0x10) != 0)
            {
              LODWORD(v8) = v8 | 1;
              *(v4 - 1) = v8;
            }

            v15 = AG::data::_shared_table_bytes;
            if ((*(AG::data::_shared_table_bytes + v13) & 0x11) != 0x10)
            {
              if ((v14 & 1) == 0 && !*(*(AG::data::_shared_table_bytes + (v13 & 0xFFFFFE00)) + 104))
              {
                *(v4 - 1) = (v8 & 0xF | (16 * v11)) + 16;
                if (AG::Graph::UpdateStack::push(this, v13, (v15 + v13), 1, 1))
                {
                  goto LABEL_2;
                }

                LODWORD(v8) = *(v4 - 1);
              }

              LODWORD(v8) = v8 | 1;
              *(v4 - 1) = v8;
            }
          }

          ++v11;
        }

        while (v11 != v10);
      }

      if (v8)
      {
        v20 = *this;
        if (*(*this + 184) && (*v5 & 8) != 0)
        {
          *v75 = this;
          v76 = 1;
          AG::Graph::call_main_handler(v20, v75, AG::Graph::dispatch_main(AG::Graph::UpdateStack &)::$_0::__invoke);
          ++*(v20 + 408);
          return v76;
        }

        v21 = *(v20 + 176);
        if (v21)
        {
          v60 = 8 * v21 - 8;
          do
          {
            (*(**(*(v20 + 168) + v60) + 80))(*(*(v20 + 168) + v60), *(v4 - 2));
            v60 -= 8;
          }

          while (v60 != -8);
          v20 = *this;
        }

        v22 = *(v20 + 416);
        v23 = *(*(v20 + 88) + ((*v5 >> 5) & 0x7FFFFF8));
        v24 = (v5 + *(v23 + 44));
        if (*(v5 + 7))
        {
          v24 = *v24;
        }

        v25 = *(v23 + 24);
        (*(v23 + 16))(v24, *(v4 - 2));
        v26 = *v5;
        if ((v26 & 0x10) == 0)
        {
          if (*(*(*(v23 + 8) - 8) + 64))
          {
            v65 = **(*(*this + 88) + ((v26 >> 5) & 0x7FFFFF8));
            v66 = *(v4 - 2);
            v67 = AG::swift::metadata::name(v65, 0);
            AG::precondition_failure("attribute failed to set an initial value: %u, %s", v68, v66, v67);
          }

          AGGraphSetOutputValue(v75, *(v23 + 8));
        }

        v27 = *this;
        v28 = *(*this + 416);
        v29 = *(*this + 176);
        if (v29)
        {
          v61 = 8 * v29 - 8;
          do
          {
            (*(**(*(v27 + 168) + v61) + 88))(*(*(v27 + 168) + v61), *(v4 - 2), v22 != v28);
            v61 -= 8;
          }

          while (v61 != -8);
        }

        v7 = AG::data::_shared_table_bytes + v5[4];
        LODWORD(v10) = v5[3] >> 5;
        result = v22 != v28;
        LODWORD(v8) = *(v4 - 1);
      }

      else
      {
        result = 0;
      }

      v10 = v10;
      if (v8)
      {
        if ((v8 & 0xC) == 0)
        {
          if (v10)
          {
            do
            {
              while (1)
              {
                v44 = 5 * v10--;
                v45 = (v44 + v7 - 1);
                v46 = *v45;
                if ((*v45 & 0x10) != 0)
                {
                  v48 = *this;
                  v49 = *(*this + 176);
                  v43 = *v45;
                  if (v49)
                  {
                    v71 = result;
                    v42 = 8 * v49 - 8;
                    do
                    {
                      v73 = v42;
                      (*(**(*(v48 + 168) + v42) + 248))(*(*(v48 + 168) + v42), *(v4 - 2), v10, 0);
                      v42 = v73 - 8;
                    }

                    while (v73);
                    v43 = *v45;
                    result = v71;
                  }

                  v47 = v43 & 0xEF;
                }

                else
                {
                  v47 = *(v44 + v7 - 1);
                }

                *v45 = v47 & 0xDF;
                if (v46 & 0x20 | v47 & 4)
                {
                  break;
                }

                v41 = result;
                AG::Graph::remove_input(*this, *(v4 - 2), v10);
                result = v41;
                if (!v10)
                {
                  goto LABEL_83;
                }
              }
            }

            while (v10);
          }

LABEL_83:
          v40 = *v5 - 64;
          *v5 = v40;
LABEL_84:
          if ((*(v5 + 7) & 0x40) != 0)
          {
            *(v5 + 7) &= ~0x40u;
          }

          if (v40)
          {
            v50 = *this;
            v51 = *(*this + 176);
            if (v51)
            {
              v62 = result;
              v63 = 8 * v51 - 8;
              do
              {
                (*(**(*(v50 + 168) + v63) + 256))(*(*(v50 + 168) + v63), *(v4 - 2), 0);
                v63 -= 8;
              }

              while (v63 != -8);
              v40 = *v5;
              result = v62;
            }

            v40 &= ~1u;
          }

          v40 &= (v40 >> 1) | 0xFFFFFFFB;
          *v5 = v40;
          if ((v40 & 2) == 0)
          {
            goto LABEL_92;
          }

LABEL_90:
          v52 = *this;
          v53 = *(*this + 176);
          if (v53)
          {
            v58 = result;
            v59 = 8 * v53 - 8;
            do
            {
              (*(**(*(v52 + 168) + v59) + 264))(*(*(v52 + 168) + v59), *(v4 - 2), 0);
              v59 -= 8;
            }

            while (v59 != -8);
            v40 = *v5;
            result = v58;
          }

          *v5 = v40 & 0xFFFFFFFD;
          goto LABEL_92;
        }
      }

      else if ((v8 & 0xC) == 0)
      {
        goto LABEL_83;
      }

      v30 = (v8 & 8) == 0;
      if (v10)
      {
        do
        {
          --v10;
          v34 = v7 + 5 * v10;
          *v75 = *v34;
          v35 = *v75;
          if ((v75[0] & 3) != 0)
          {
            v69 = result;
            v35 = AG::AttributeID::resolve_slow(v75, 0);
            result = v69;
          }

          if (v35 & 3) != 0 || (*(AG::data::_shared_table_bytes + v35))
          {
            v30 = 0;
          }

          else
          {
            v36 = *(v4 - 1);
            if ((v36 & 1) != 0 && (v36 & 8) == 0)
            {
              v33 = *(v34 + 4);
              if ((v33 & 0x10) != 0)
              {
                v37 = *this;
                v38 = *(*this + 176);
                if (v38)
                {
                  v70 = result;
                  v32 = 8 * v38 - 8;
                  do
                  {
                    v72 = v32;
                    (*(**(*(v37 + 168) + v32) + 248))(*(*(v37 + 168) + v32), *(v4 - 2), v10, 0);
                    v32 = v72 - 8;
                  }

                  while (v72);
                  v33 = *(v34 + 4);
                  result = v70;
                }

                *(v34 + 4) = v33 & 0xEF;
              }
            }
          }

          if ((*(v4 - 1) & 9) == 1)
          {
            v39 = *(v34 + 4);
            *(v34 + 4) = v39 & 0xDF;
            if ((v39 & 0x24) == 0)
            {
              v31 = result;
              AG::Graph::remove_input(*this, *(v4 - 2), v10);
              result = v31;
            }
          }
        }

        while (v10);
      }

      v40 = *v5 - 64;
      *v5 = v40;
      if (v30)
      {
        goto LABEL_84;
      }

      if ((v40 & 2) != 0)
      {
        goto LABEL_90;
      }

LABEL_92:
      v2 = *(this + 13) - 1;
      *(this + 13) = v2;
      if (!v2)
      {
        return result;
      }
    }

    if (*(this + 120))
    {
      return 2;
    }

    v54 = *v5;
    if ((v54 & 0x10) == 0)
    {
      v55 = *(*(*this + 88) + ((v54 >> 5) & 0x7FFFFF8));
      v56 = *(*(v55 + 32) + 40);
      if (v56)
      {
        v57 = (v5 + *(v55 + 44));
        if (*(v5 + 7))
        {
          v57 = *v57;
        }

        v56(v55, v57);
        result = 1;
      }

      else
      {
        result = 0;
      }

      v5 = (AG::data::_shared_table_bytes + *(v4 - 2));
      LODWORD(v54) = *v5;
      if ((*v5 & 0x10) != 0)
      {
        goto LABEL_120;
      }

      goto LABEL_7;
    }

    result = 0;
LABEL_120:
    v64 = *(this + 13) - 1;
    *(this + 13) = v64;
    *v5 = v54 - 64;
    if (v64)
    {
      continue;
    }

    return result;
  }
}