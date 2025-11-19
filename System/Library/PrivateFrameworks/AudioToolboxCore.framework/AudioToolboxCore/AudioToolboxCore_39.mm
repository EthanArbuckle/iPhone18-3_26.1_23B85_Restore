void *caulk::inplace_function_detail::rt_vtable<int,void *,AudioUnitPluginDispatch const&,unsigned char const*,unsigned int>::rt_vtable<APMIDIRouter::init(MIDIProtocolID,AudioUnitPluginDispatch const*)::$_6>(caulk::inplace_function_detail::wrapper<APMIDIRouter::init(MIDIProtocolID,AudioUnitPluginDispatch const*)::$_6>)::{lambda(void *,void *)#1}::__invoke(void *result, void *a2)
{
  v2 = a2[1];
  *result = *a2;
  result[1] = v2;
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 8), 1uLL, memory_order_relaxed);
  }

  return result;
}

uint64_t caulk::inplace_function_detail::rt_vtable<int,void *,AudioUnitPluginDispatch const&,unsigned char const*,unsigned int>::rt_vtable<APMIDIRouter::init(MIDIProtocolID,AudioUnitPluginDispatch const*)::$_6>(caulk::inplace_function_detail::wrapper<APMIDIRouter::init(MIDIProtocolID,AudioUnitPluginDispatch const*)::$_6>)::{lambda(void *,void *&&,AudioUnitPluginDispatch const&,unsigned char const*&&,unsigned int &&)#1}::__invoke(int **a1, uint64_t *a2, uint64_t a3, uint64_t *a4, unsigned int *a5)
{
  v14[6] = *MEMORY[0x1E69E9840];
  v5 = *a2;
  v6 = *a4;
  v7 = *a5;
  v12 = 0;
  v11 = *(a3 + 192);
  v8 = *a1;
  v13 = caulk::inplace_function<void ()(MIDI::EventList const*),48ul,8ul,caulk::inplace_function_detail::rt_vtable>::k_wrapper_vtable<APMIDIRouter::init(MIDIProtocolID,AudioUnitPluginDispatch const*)::$_6::operator() const(void *,AudioUnitPluginDispatch const&,unsigned char const*,unsigned int)::{lambda(MIDI::EventList const*)#1}>;
  v14[0] = v5;
  v14[1] = &v11;
  v14[2] = &v12;
  MIDI::LegacyMIDIConverter<MIDI::MIDI_1_to_2_Translator>::convertLegacyDataToEventList(v8, v6, v7, 0, &v13);
  (v13[3])(v14);
  result = v12;
  v10 = *MEMORY[0x1E69E9840];
  return result;
}

void sub_18F88C4EC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11)
{
  if (!a2)
  {
    _Unwind_Resume(exception_object);
  }

  __clang_call_terminate(exception_object);
}

__n128 caulk::inplace_function_detail::rt_vtable<void,MIDI::EventList const*>::rt_vtable<APMIDIRouter::init(MIDIProtocolID,AudioUnitPluginDispatch const*)::$_6::operator() const(void *,AudioUnitPluginDispatch const&,unsigned char const*,unsigned int)::{lambda(MIDI::EventList const*)#1}>(caulk::inplace_function_detail::wrapper<APMIDIRouter::init(MIDIProtocolID,AudioUnitPluginDispatch const*)::$_6::operator() const(void *,AudioUnitPluginDispatch const&,unsigned char const*,unsigned int)::{lambda(MIDI::EventList const*)#1}>)::{lambda(void *,void *)#2}::__invoke(__n128 *a1, __n128 *a2)
{
  result = *a2;
  a1[1].n128_u64[0] = a2[1].n128_u64[0];
  *a1 = result;
  return result;
}

__n128 caulk::inplace_function_detail::rt_vtable<void,MIDI::EventList const*>::rt_vtable<APMIDIRouter::init(MIDIProtocolID,AudioUnitPluginDispatch const*)::$_6::operator() const(void *,AudioUnitPluginDispatch const&,unsigned char const*,unsigned int)::{lambda(MIDI::EventList const*)#1}>(caulk::inplace_function_detail::wrapper<APMIDIRouter::init(MIDIProtocolID,AudioUnitPluginDispatch const*)::$_6::operator() const(void *,AudioUnitPluginDispatch const&,unsigned char const*,unsigned int)::{lambda(MIDI::EventList const*)#1}>)::{lambda(void *,void *)#1}::__invoke(__n128 *a1, __n128 *a2)
{
  result = *a2;
  a1[1].n128_u64[0] = a2[1].n128_u64[0];
  *a1 = result;
  return result;
}

uint64_t caulk::inplace_function_detail::rt_vtable<void,MIDI::EventList const*>::rt_vtable<APMIDIRouter::init(MIDIProtocolID,AudioUnitPluginDispatch const*)::$_6::operator() const(void *,AudioUnitPluginDispatch const&,unsigned char const*,unsigned int)::{lambda(MIDI::EventList const*)#1}>(caulk::inplace_function_detail::wrapper<APMIDIRouter::init(MIDIProtocolID,AudioUnitPluginDispatch const*)::$_6::operator() const(void *,AudioUnitPluginDispatch const&,unsigned char const*,unsigned int)::{lambda(MIDI::EventList const*)#1}>)::{lambda(void *,MIDI::EventList const*&&)#1}::__invoke(uint64_t a1, void *a2)
{
  result = (**(a1 + 8))(*a1, 0, *a2);
  **(a1 + 16) = result;
  return result;
}

void caulk::inplace_function_detail::rt_vtable<int,void *,AudioUnitPluginDispatch const&,unsigned int,unsigned int,unsigned int,unsigned int>::rt_vtable<APMIDIRouter::init(MIDIProtocolID,AudioUnitPluginDispatch const*)::$_5>(caulk::inplace_function_detail::wrapper<APMIDIRouter::init(MIDIProtocolID,AudioUnitPluginDispatch const*)::$_5>)::{lambda(void *)#1}::__invoke(uint64_t a1)
{
  v1 = *(a1 + 8);
  if (v1)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v1);
  }
}

__n128 caulk::inplace_function_detail::rt_vtable<int,void *,AudioUnitPluginDispatch const&,unsigned int,unsigned int,unsigned int,unsigned int>::rt_vtable<APMIDIRouter::init(MIDIProtocolID,AudioUnitPluginDispatch const*)::$_5>(caulk::inplace_function_detail::wrapper<APMIDIRouter::init(MIDIProtocolID,AudioUnitPluginDispatch const*)::$_5>)::{lambda(void *,void *)#2}::__invoke(__n128 *a1, __n128 *a2)
{
  result = *a2;
  *a1 = *a2;
  a2->n128_u64[0] = 0;
  a2->n128_u64[1] = 0;
  return result;
}

void *caulk::inplace_function_detail::rt_vtable<int,void *,AudioUnitPluginDispatch const&,unsigned int,unsigned int,unsigned int,unsigned int>::rt_vtable<APMIDIRouter::init(MIDIProtocolID,AudioUnitPluginDispatch const*)::$_5>(caulk::inplace_function_detail::wrapper<APMIDIRouter::init(MIDIProtocolID,AudioUnitPluginDispatch const*)::$_5>)::{lambda(void *,void *)#1}::__invoke(void *result, void *a2)
{
  v2 = a2[1];
  *result = *a2;
  result[1] = v2;
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 8), 1uLL, memory_order_relaxed);
  }

  return result;
}

uint64_t caulk::inplace_function_detail::rt_vtable<int,void *,AudioUnitPluginDispatch const&,unsigned int,unsigned int,unsigned int,unsigned int>::rt_vtable<APMIDIRouter::init(MIDIProtocolID,AudioUnitPluginDispatch const*)::$_5>(caulk::inplace_function_detail::wrapper<APMIDIRouter::init(MIDIProtocolID,AudioUnitPluginDispatch const*)::$_5>)::{lambda(void *,void *&&,AudioUnitPluginDispatch const&,unsigned int &&,void *&&,void *&&,void *&&)#1}::__invoke(int **a1, uint64_t *a2, uint64_t a3, int *a4, int *a5, int *a6, int *a7)
{
  v21[6] = *MEMORY[0x1E69E9840];
  v7 = *a2;
  v8 = *a4;
  v9 = *a5;
  v10 = *a6;
  v19 = *a7;
  v18 = *(a3 + 192);
  v11 = v8 >> 4;
  if (v11 > 0xF)
  {
    goto LABEL_9;
  }

  if (((1 << v11) & 0x4F00) == 0)
  {
    if (((1 << v11) & 0x3000) != 0)
    {
      v12 = 2;
      goto LABEL_10;
    }

    if (v11 == 15 && v8 > 0xF0u)
    {
      v12 = qword_18F918210[(v8 + 15)];
      goto LABEL_10;
    }

LABEL_9:
    v12 = 0;
    goto LABEL_10;
  }

  v12 = 3;
LABEL_10:
  v17[0] = v8;
  v17[1] = v9;
  v17[2] = v10;
  v16 = 0;
  v13 = *a1;
  v20 = caulk::inplace_function<void ()(MIDI::EventList const*),48ul,8ul,caulk::inplace_function_detail::rt_vtable>::k_wrapper_vtable<APMIDIRouter::init(MIDIProtocolID,AudioUnitPluginDispatch const*)::$_5::operator() const(void *,AudioUnitPluginDispatch const&,unsigned int,unsigned int,unsigned int,unsigned int)::{lambda(MIDI::EventList const*)#1}>;
  v21[0] = v7;
  v21[1] = &v18;
  v21[2] = &v19;
  v21[3] = &v16;
  MIDI::LegacyMIDIConverter<MIDI::MIDI_1_to_2_Translator>::convertLegacyDataToEventList(v13, v17, v12, 0, &v20);
  (v20[3])(v21);
  result = v16;
  v15 = *MEMORY[0x1E69E9840];
  return result;
}

void sub_18F88C700(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13)
{
  if (!a2)
  {
    _Unwind_Resume(exception_object);
  }

  __clang_call_terminate(exception_object);
}

__n128 caulk::inplace_function_detail::rt_vtable<void,MIDI::EventList const*>::rt_vtable<APMIDIRouter::init(MIDIProtocolID,AudioUnitPluginDispatch const*)::$_5::operator() const(void *,AudioUnitPluginDispatch const&,unsigned int,unsigned int,unsigned int,unsigned int)::{lambda(MIDI::EventList const*)#1}>(caulk::inplace_function_detail::wrapper<APMIDIRouter::init(MIDIProtocolID,AudioUnitPluginDispatch const*)::$_5::operator() const(void *,AudioUnitPluginDispatch const&,unsigned int,unsigned int,unsigned int,unsigned int)::{lambda(MIDI::EventList const*)#1}>)::{lambda(void *,void *)#2}::__invoke(_OWORD *a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *a1 = *a2;
  a1[1] = v3;
  return result;
}

__n128 caulk::inplace_function_detail::rt_vtable<void,MIDI::EventList const*>::rt_vtable<APMIDIRouter::init(MIDIProtocolID,AudioUnitPluginDispatch const*)::$_5::operator() const(void *,AudioUnitPluginDispatch const&,unsigned int,unsigned int,unsigned int,unsigned int)::{lambda(MIDI::EventList const*)#1}>(caulk::inplace_function_detail::wrapper<APMIDIRouter::init(MIDIProtocolID,AudioUnitPluginDispatch const*)::$_5::operator() const(void *,AudioUnitPluginDispatch const&,unsigned int,unsigned int,unsigned int,unsigned int)::{lambda(MIDI::EventList const*)#1}>)::{lambda(void *,void *)#1}::__invoke(_OWORD *a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *a1 = *a2;
  a1[1] = v3;
  return result;
}

uint64_t caulk::inplace_function_detail::rt_vtable<void,MIDI::EventList const*>::rt_vtable<APMIDIRouter::init(MIDIProtocolID,AudioUnitPluginDispatch const*)::$_5::operator() const(void *,AudioUnitPluginDispatch const&,unsigned int,unsigned int,unsigned int,unsigned int)::{lambda(MIDI::EventList const*)#1}>(caulk::inplace_function_detail::wrapper<APMIDIRouter::init(MIDIProtocolID,AudioUnitPluginDispatch const*)::$_5::operator() const(void *,AudioUnitPluginDispatch const&,unsigned int,unsigned int,unsigned int,unsigned int)::{lambda(MIDI::EventList const*)#1}>)::{lambda(void *,MIDI::EventList const*&&)#1}::__invoke(uint64_t a1, void *a2)
{
  result = (**(a1 + 8))(*a1, **(a1 + 16), *a2);
  **(a1 + 24) = result;
  return result;
}

void caulk::inplace_function_detail::rt_vtable<int,void *,AudioUnitPluginDispatch const&,unsigned char const*,unsigned int>::rt_vtable<APMIDIRouter::init(MIDIProtocolID,AudioUnitPluginDispatch const*)::$_4>(caulk::inplace_function_detail::wrapper<APMIDIRouter::init(MIDIProtocolID,AudioUnitPluginDispatch const*)::$_4>)::{lambda(void *)#1}::__invoke(uint64_t a1)
{
  v1 = *(a1 + 8);
  if (v1)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v1);
  }
}

__n128 caulk::inplace_function_detail::rt_vtable<int,void *,AudioUnitPluginDispatch const&,unsigned char const*,unsigned int>::rt_vtable<APMIDIRouter::init(MIDIProtocolID,AudioUnitPluginDispatch const*)::$_4>(caulk::inplace_function_detail::wrapper<APMIDIRouter::init(MIDIProtocolID,AudioUnitPluginDispatch const*)::$_4>)::{lambda(void *,void *)#2}::__invoke(__n128 *a1, __n128 *a2)
{
  result = *a2;
  *a1 = *a2;
  a2->n128_u64[0] = 0;
  a2->n128_u64[1] = 0;
  return result;
}

void *caulk::inplace_function_detail::rt_vtable<int,void *,AudioUnitPluginDispatch const&,unsigned char const*,unsigned int>::rt_vtable<APMIDIRouter::init(MIDIProtocolID,AudioUnitPluginDispatch const*)::$_4>(caulk::inplace_function_detail::wrapper<APMIDIRouter::init(MIDIProtocolID,AudioUnitPluginDispatch const*)::$_4>)::{lambda(void *,void *)#1}::__invoke(void *result, void *a2)
{
  v2 = a2[1];
  *result = *a2;
  result[1] = v2;
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 8), 1uLL, memory_order_relaxed);
  }

  return result;
}

uint64_t caulk::inplace_function_detail::rt_vtable<int,void *,AudioUnitPluginDispatch const&,unsigned char const*,unsigned int>::rt_vtable<APMIDIRouter::init(MIDIProtocolID,AudioUnitPluginDispatch const*)::$_4>(caulk::inplace_function_detail::wrapper<APMIDIRouter::init(MIDIProtocolID,AudioUnitPluginDispatch const*)::$_4>)::{lambda(void *,void *&&,AudioUnitPluginDispatch const&,unsigned char const*&&,unsigned int &&)#1}::__invoke(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t *a4, unsigned int *a5)
{
  v13[6] = *MEMORY[0x1E69E9840];
  v5 = *a2;
  v6 = *a4;
  v7 = *a5;
  v11 = 0;
  v10 = *(a3 + 192);
  v12 = caulk::inplace_function<void ()(MIDI::EventList const*),48ul,8ul,caulk::inplace_function_detail::rt_vtable>::k_wrapper_vtable<APMIDIRouter::init(MIDIProtocolID,AudioUnitPluginDispatch const*)::$_4::operator() const(void *,AudioUnitPluginDispatch const&,unsigned char const*,unsigned int)::{lambda(MIDI::EventList const*)#1}>;
  v13[0] = v5;
  v13[1] = &v10;
  v13[2] = &v11;
  MIDI::LegacyMIDIConverter<MIDI::IdentityTranslator>::convertLegacyDataToEventList(v6, v7, 0, &v12);
  (v12[3])(v13);
  result = v11;
  v9 = *MEMORY[0x1E69E9840];
  return result;
}

void sub_18F88C878(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11)
{
  if (!a2)
  {
    _Unwind_Resume(exception_object);
  }

  __clang_call_terminate(exception_object);
}

__n128 caulk::inplace_function_detail::rt_vtable<void,MIDI::EventList const*>::rt_vtable<APMIDIRouter::init(MIDIProtocolID,AudioUnitPluginDispatch const*)::$_4::operator() const(void *,AudioUnitPluginDispatch const&,unsigned char const*,unsigned int)::{lambda(MIDI::EventList const*)#1}>(caulk::inplace_function_detail::wrapper<APMIDIRouter::init(MIDIProtocolID,AudioUnitPluginDispatch const*)::$_4::operator() const(void *,AudioUnitPluginDispatch const&,unsigned char const*,unsigned int)::{lambda(MIDI::EventList const*)#1}>)::{lambda(void *,void *)#2}::__invoke(__n128 *a1, __n128 *a2)
{
  result = *a2;
  a1[1].n128_u64[0] = a2[1].n128_u64[0];
  *a1 = result;
  return result;
}

__n128 caulk::inplace_function_detail::rt_vtable<void,MIDI::EventList const*>::rt_vtable<APMIDIRouter::init(MIDIProtocolID,AudioUnitPluginDispatch const*)::$_4::operator() const(void *,AudioUnitPluginDispatch const&,unsigned char const*,unsigned int)::{lambda(MIDI::EventList const*)#1}>(caulk::inplace_function_detail::wrapper<APMIDIRouter::init(MIDIProtocolID,AudioUnitPluginDispatch const*)::$_4::operator() const(void *,AudioUnitPluginDispatch const&,unsigned char const*,unsigned int)::{lambda(MIDI::EventList const*)#1}>)::{lambda(void *,void *)#1}::__invoke(__n128 *a1, __n128 *a2)
{
  result = *a2;
  a1[1].n128_u64[0] = a2[1].n128_u64[0];
  *a1 = result;
  return result;
}

uint64_t caulk::inplace_function_detail::rt_vtable<void,MIDI::EventList const*>::rt_vtable<APMIDIRouter::init(MIDIProtocolID,AudioUnitPluginDispatch const*)::$_4::operator() const(void *,AudioUnitPluginDispatch const&,unsigned char const*,unsigned int)::{lambda(MIDI::EventList const*)#1}>(caulk::inplace_function_detail::wrapper<APMIDIRouter::init(MIDIProtocolID,AudioUnitPluginDispatch const*)::$_4::operator() const(void *,AudioUnitPluginDispatch const&,unsigned char const*,unsigned int)::{lambda(MIDI::EventList const*)#1}>)::{lambda(void *,MIDI::EventList const*&&)#1}::__invoke(uint64_t a1, void *a2)
{
  result = (**(a1 + 8))(*a1, 0, *a2);
  **(a1 + 16) = result;
  return result;
}

void caulk::inplace_function_detail::rt_vtable<int,void *,AudioUnitPluginDispatch const&,unsigned int,unsigned int,unsigned int,unsigned int>::rt_vtable<APMIDIRouter::init(MIDIProtocolID,AudioUnitPluginDispatch const*)::$_3>(caulk::inplace_function_detail::wrapper<APMIDIRouter::init(MIDIProtocolID,AudioUnitPluginDispatch const*)::$_3>)::{lambda(void *)#1}::__invoke(uint64_t a1)
{
  v1 = *(a1 + 8);
  if (v1)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v1);
  }
}

__n128 caulk::inplace_function_detail::rt_vtable<int,void *,AudioUnitPluginDispatch const&,unsigned int,unsigned int,unsigned int,unsigned int>::rt_vtable<APMIDIRouter::init(MIDIProtocolID,AudioUnitPluginDispatch const*)::$_3>(caulk::inplace_function_detail::wrapper<APMIDIRouter::init(MIDIProtocolID,AudioUnitPluginDispatch const*)::$_3>)::{lambda(void *,void *)#2}::__invoke(__n128 *a1, __n128 *a2)
{
  result = *a2;
  *a1 = *a2;
  a2->n128_u64[0] = 0;
  a2->n128_u64[1] = 0;
  return result;
}

void *caulk::inplace_function_detail::rt_vtable<int,void *,AudioUnitPluginDispatch const&,unsigned int,unsigned int,unsigned int,unsigned int>::rt_vtable<APMIDIRouter::init(MIDIProtocolID,AudioUnitPluginDispatch const*)::$_3>(caulk::inplace_function_detail::wrapper<APMIDIRouter::init(MIDIProtocolID,AudioUnitPluginDispatch const*)::$_3>)::{lambda(void *,void *)#1}::__invoke(void *result, void *a2)
{
  v2 = a2[1];
  *result = *a2;
  result[1] = v2;
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 8), 1uLL, memory_order_relaxed);
  }

  return result;
}

uint64_t caulk::inplace_function_detail::rt_vtable<int,void *,AudioUnitPluginDispatch const&,unsigned int,unsigned int,unsigned int,unsigned int>::rt_vtable<APMIDIRouter::init(MIDIProtocolID,AudioUnitPluginDispatch const*)::$_3>(caulk::inplace_function_detail::wrapper<APMIDIRouter::init(MIDIProtocolID,AudioUnitPluginDispatch const*)::$_3>)::{lambda(void *,void *&&,AudioUnitPluginDispatch const&,unsigned int &&,void *&&,void *&&,void *&&)#1}::__invoke(uint64_t a1, uint64_t *a2, uint64_t a3, _DWORD *a4, int *a5, int *a6, int *a7)
{
  v18[6] = *MEMORY[0x1E69E9840];
  v7 = *a2;
  v8 = *a4;
  v9 = *a5;
  v10 = *a6;
  v16 = *a7;
  v15 = *(a3 + 192);
  v14[0] = v8;
  v14[1] = v9;
  v14[2] = v10;
  v13 = 0;
  v17 = caulk::inplace_function<void ()(MIDI::EventList const*),48ul,8ul,caulk::inplace_function_detail::rt_vtable>::k_wrapper_vtable<APMIDIRouter::init(MIDIProtocolID,AudioUnitPluginDispatch const*)::$_3::operator() const(void *,AudioUnitPluginDispatch const&,unsigned int,unsigned int,unsigned int,unsigned int)::{lambda(MIDI::EventList const*)#1}>;
  v18[0] = v7;
  v18[1] = &v15;
  v18[2] = &v16;
  v18[3] = &v13;
  MIDI::LegacyMIDIConverter<MIDI::IdentityTranslator>::convertLegacyDataToEventList(v14, 3, 0, &v17);
  (v17[3])(v18);
  result = v13;
  v12 = *MEMORY[0x1E69E9840];
  return result;
}

void sub_18F88CA24(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13)
{
  if (!a2)
  {
    _Unwind_Resume(exception_object);
  }

  __clang_call_terminate(exception_object);
}

__n128 caulk::inplace_function_detail::rt_vtable<void,MIDI::EventList const*>::rt_vtable<APMIDIRouter::init(MIDIProtocolID,AudioUnitPluginDispatch const*)::$_3::operator() const(void *,AudioUnitPluginDispatch const&,unsigned int,unsigned int,unsigned int,unsigned int)::{lambda(MIDI::EventList const*)#1}>(caulk::inplace_function_detail::wrapper<APMIDIRouter::init(MIDIProtocolID,AudioUnitPluginDispatch const*)::$_3::operator() const(void *,AudioUnitPluginDispatch const&,unsigned int,unsigned int,unsigned int,unsigned int)::{lambda(MIDI::EventList const*)#1}>)::{lambda(void *,void *)#2}::__invoke(_OWORD *a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *a1 = *a2;
  a1[1] = v3;
  return result;
}

__n128 caulk::inplace_function_detail::rt_vtable<void,MIDI::EventList const*>::rt_vtable<APMIDIRouter::init(MIDIProtocolID,AudioUnitPluginDispatch const*)::$_3::operator() const(void *,AudioUnitPluginDispatch const&,unsigned int,unsigned int,unsigned int,unsigned int)::{lambda(MIDI::EventList const*)#1}>(caulk::inplace_function_detail::wrapper<APMIDIRouter::init(MIDIProtocolID,AudioUnitPluginDispatch const*)::$_3::operator() const(void *,AudioUnitPluginDispatch const&,unsigned int,unsigned int,unsigned int,unsigned int)::{lambda(MIDI::EventList const*)#1}>)::{lambda(void *,void *)#1}::__invoke(_OWORD *a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *a1 = *a2;
  a1[1] = v3;
  return result;
}

uint64_t caulk::inplace_function_detail::rt_vtable<void,MIDI::EventList const*>::rt_vtable<APMIDIRouter::init(MIDIProtocolID,AudioUnitPluginDispatch const*)::$_3::operator() const(void *,AudioUnitPluginDispatch const&,unsigned int,unsigned int,unsigned int,unsigned int)::{lambda(MIDI::EventList const*)#1}>(caulk::inplace_function_detail::wrapper<APMIDIRouter::init(MIDIProtocolID,AudioUnitPluginDispatch const*)::$_3::operator() const(void *,AudioUnitPluginDispatch const&,unsigned int,unsigned int,unsigned int,unsigned int)::{lambda(MIDI::EventList const*)#1}>)::{lambda(void *,MIDI::EventList const*&&)#1}::__invoke(uint64_t a1, void *a2)
{
  result = (**(a1 + 8))(*a1, **(a1 + 16), *a2);
  **(a1 + 24) = result;
  return result;
}

uint64_t caulk::inplace_function_detail::rt_vtable<int,void *,AudioUnitPluginDispatch const&,unsigned char const*,unsigned int>::rt_vtable<APMIDIRouter::init(MIDIProtocolID,AudioUnitPluginDispatch const*)::$_0>(caulk::inplace_function_detail::wrapper<APMIDIRouter::init(MIDIProtocolID,AudioUnitPluginDispatch const*)::$_0>)::{lambda(void *,void *&&,AudioUnitPluginDispatch const&,unsigned char const*&&,unsigned int &&)#1}::__invoke(uint64_t a1, void *a2, uint64_t a3, void *a4, unsigned int *a5)
{
  v5 = *(a3 + 168);
  if (v5)
  {
    return v5(*a2, *a4, *a5);
  }

  else
  {
    return 4294967292;
  }
}

__n128 caulk::inplace_function_detail::rt_vtable<void,MIDI::LegacyPacketList const*>::rt_vtable<APMIDIRouter::handleMIDIEventList(void *,AudioUnitPluginDispatch const&,unsigned int,MIDIEventList const*)::$_1>(caulk::inplace_function_detail::wrapper<APMIDIRouter::handleMIDIEventList(void *,AudioUnitPluginDispatch const&,unsigned int,MIDIEventList const*)::$_1>)::{lambda(void *,void *)#2}::__invoke(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *(a1 + 32) = *(a2 + 32);
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

__n128 caulk::inplace_function_detail::rt_vtable<void,MIDI::LegacyPacketList const*>::rt_vtable<APMIDIRouter::handleMIDIEventList(void *,AudioUnitPluginDispatch const&,unsigned int,MIDIEventList const*)::$_1>(caulk::inplace_function_detail::wrapper<APMIDIRouter::handleMIDIEventList(void *,AudioUnitPluginDispatch const&,unsigned int,MIDIEventList const*)::$_1>)::{lambda(void *,void *)#1}::__invoke(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *(a1 + 32) = *(a2 + 32);
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

uint64_t caulk::inplace_function_detail::rt_vtable<void,MIDI::LegacyPacketList const*>::rt_vtable<APMIDIRouter::handleMIDIEventList(void *,AudioUnitPluginDispatch const&,unsigned int,MIDIEventList const*)::$_1>(caulk::inplace_function_detail::wrapper<APMIDIRouter::handleMIDIEventList(void *,AudioUnitPluginDispatch const&,unsigned int,MIDIEventList const*)::$_1>)::{lambda(void *,MIDI::LegacyPacketList const*&&)#1}::__invoke(uint64_t result, int **a2)
{
  v2 = **a2;
  if (v2)
  {
    v3 = result;
    v4 = (*a2 + 1);
    do
    {
      v5 = v4 + 10;
      v6 = *(v4 + 8);
      if (*(v4 + 10) == 240 && *(v6 + v5 - 1) == 247 && (v7 = *(v3[1] + 168)) != 0)
      {
        result = v7(*v3, v4 + 10);
        *v3[4] = result;
      }

      else
      {
        v11[0] = v4 + 10;
        v11[1] = v6;
        v11[2] = *v4;
        v11[3] = 0;
        while (1)
        {
          v9[1] = 0;
          v10 = 0;
          v9[0] = 0;
          v8 = MIDI::LegacyPacketList::PacketReader::read(v11, &v10, v9);
          result = *v3[4];
          if (!v8 || result)
          {
            break;
          }

          *v3[4] = (*v3[2])(*v3, BYTE2(v9[0]), BYTE1(v9[0]), LOBYTE(v9[0]), (*v3[3] + v10));
        }
      }

      if (result)
      {
        break;
      }

      v4 = (v5 + *(v4 + 8) + 3) & 0xFFFFFFFFFFFFFFFCLL;
      --v2;
    }

    while (v2);
  }

  return result;
}

uint64_t ___ZN12APMIDIRouter17handleSetPropertyEPvRK23AudioUnitPluginDispatchjjjPKvj_block_invoke(uint64_t a1, uint64_t a2, char a3, _DWORD *a4)
{
  v17[102] = *MEMORY[0x1E69E9840];
  v9 = a3;
  v5 = *(a1 + 32);
  v8 = 0;
  v10 = a2;
  v11 = _ZN5caulk16inplace_functionIFvPKN4MIDI16LegacyPacketListEELm48ELm8ENS_23inplace_function_detail9rt_vtableEE16k_wrapper_vtableIZZN12APMIDIRouter17handleSetPropertyEPvRK23AudioUnitPluginDispatchjjjPKvjEUb_E4__13EE;
  *&v12 = &v10;
  *(&v12 + 1) = &v8;
  *&v13 = v5;
  *(&v13 + 1) = &v9;
  v14 = _ZN5caulk16inplace_functionIFvPKN4MIDI16LegacyPacketListEELm48ELm8ENS_23inplace_function_detail9rt_vtableEE16k_wrapper_vtableIZZN12APMIDIRouter17handleSetPropertyEPvRK23AudioUnitPluginDispatchjjjPKvjEUb_E4__13EE;
  v15[0] = v12;
  v15[1] = v13;
  MIDI::MIDIPacketList_Deliverer::MIDIPacketList_Deliverer(v16, &v14);
  (v14[3])(v15);
  MIDI::MIDIPacketList_Deliverer::operator()(v16, a4);
  v16[0] = &unk_1F033BC30;
  (*(v16[1] + 24))(v17);
  (v11[3])(&v12);
  result = v8;
  v7 = *MEMORY[0x1E69E9840];
  return result;
}

void sub_18F88CDFC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27)
{
  if (!a2)
  {
    _Unwind_Resume(exception_object);
  }

  __clang_call_terminate(exception_object);
}

uint64_t ___ZN12APMIDIRouter17handleSetPropertyEPvRK23AudioUnitPluginDispatchjjjPKvj_block_invoke_2(uint64_t a1, uint64_t a2, uint64_t a3, _DWORD *a4)
{
  v4 = a4;
  v132 = *(a1 + 32);
  v5 = *(v132 + 16);
  v6 = *a4;
  if (*a4 != v5)
  {
    v10 = *(a1 + 40);
    if (v5 != kMIDIProtocol_2_0 || v6 != 1)
    {
      v12 = v5 == kMIDIProtocol_1_0 && v6 == 2;
      if (v12 && a4[1])
      {
        v7 = 0;
        v13 = 0;
        v14 = a4 + 2;
        v121 = v10 + 521;
        while (1)
        {
          v128 = v13;
          v15 = v14[2];
          v125 = v14 + 3;
          v127 = v14;
          v135 = v14 + 3;
          v136 = v15;
          v137 = *v14;
          v138 = 0;
          v16 = MIDIEventListInit(&evtlist, kMIDIProtocol_1_0);
          time[0] = 0;
          *words = 0;
          v140 = 0;
          while (MIDI::EventList::PacketReader::read(&v135, time, words))
          {
            v17 = words[0] >> 28;
            if (((1 << v17) & 0xA02F) != 0)
            {
              v16 = MIDIEventListAdd(&evtlist, 0x114uLL, v16, time[0], MIDI::UniversalPacket::word_sizes[v17], words);
              if (!v16)
              {
                if (!v7)
                {
                  v7 = (*(*(v132 + 48) + 16))();
                }

                memset(&evtlist, 0, sizeof(evtlist));
                v18 = MIDIEventListInit(&evtlist, kMIDIProtocol_1_0);
                v19 = time[0];
                v20 = MIDI::UniversalPacket::word_sizes[words[0] >> 28];
                v21 = words;
                goto LABEL_26;
              }
            }

            else if (v17 == 4)
            {
              v23 = HIBYTE(words[0]) & 0xF | 0x20;
              v24 = words[1];
              v25 = BYTE2(words[0]) >> 4;
              if (v25 > 0xB)
              {
                switch(v25)
                {
                  case 0xCu:
                    if (words[0])
                    {
                      v39 = BYTE2(words[0]) << 16;
                      v50 = (v39 - 0x100000) | (v23 << 24);
                      *v142 = (v39 - 0x100000) & 0xFFFFFF80 | (v23 << 24) | (words[1] >> 8) & 0x7F;
                      v51 = v16;
                      v52 = MIDI::UniversalPacket::word_sizes[v50 >> 28];
                      v53 = MIDIEventListAdd(&evtlist, 0x114uLL, v51, time[0], v52, v142);
                      if (v53)
                      {
                        v54 = v53;
                        v40 = time[0];
                      }

                      else
                      {
                        if (!v7)
                        {
                          v7 = (*(*(v132 + 48) + 16))();
                        }

                        memset(&evtlist, 0, sizeof(evtlist));
                        v55 = MIDIEventListInit(&evtlist, kMIDIProtocol_1_0);
                        v40 = time[0];
                        v54 = MIDIEventListAdd(&evtlist, 0x114uLL, v55, time[0], MIDI::UniversalPacket::word_sizes[v142[0] >> 28], v142);
                      }

                      *v142 = v50 | v24 & 0x7F | 0x2000;
                      v56 = MIDIEventListAdd(&evtlist, 0x114uLL, v54, v40, v52, v142);
                      if (v56)
                      {
                        v16 = v56;
                        v4 = a4;
                      }

                      else
                      {
                        v4 = a4;
                        if (!v7)
                        {
                          v7 = (*(*(v132 + 48) + 16))();
                        }

                        memset(&evtlist, 0, sizeof(evtlist));
                        v57 = MIDIEventListInit(&evtlist, kMIDIProtocol_1_0);
                        v16 = MIDIEventListAdd(&evtlist, 0x114uLL, v57, v40, MIDI::UniversalPacket::word_sizes[v142[0] >> 28], v142);
                      }

                      v38 = v23 << 24;
                    }

                    else
                    {
                      v38 = v23 << 24;
                      v39 = BYTE2(words[0]) << 16;
                      v40 = time[0];
                    }

                    *v142 = v39 | HIWORD(v24) & 0x7F00 | v38;
                    v48 = MIDIEventListAdd(&evtlist, 0x114uLL, v16, v40, 1uLL, v142);
                    if (!v48)
                    {
                      if (!v7)
                      {
LABEL_57:
                        v7 = (*(*(v132 + 48) + 16))();
                      }

LABEL_58:
                      memset(&evtlist, 0, sizeof(evtlist));
                      v18 = MIDIEventListInit(&evtlist, kMIDIProtocol_1_0);
                      v19 = time[0];
                      v20 = MIDI::UniversalPacket::word_sizes[v142[0] >> 28];
                      v21 = v142;
LABEL_26:
                      v22 = MIDIEventListAdd(&evtlist, 0x114uLL, v18, v19, v20, v21);
                      goto LABEL_27;
                    }

LABEL_90:
                    v16 = v48;
                    break;
                  case 0xDu:
                    v142[3] = 0;
                    *&v142[1] = 0;
                    v27 = (BYTE2(words[0]) << 16) | (v23 << 24) | (words[1] >> 25 << 8);
                    goto LABEL_55;
                  case 0xEu:
                    v142[3] = 0;
                    *&v142[1] = 0;
                    v27 = (words[1] >> 10) & 0x7F00 | (words[1] >> 25) | (BYTE2(words[0]) << 16) | (v23 << 24);
                    goto LABEL_55;
                }
              }

              else if (v25 - 8 >= 4)
              {
                if (v25 - 2 < 2)
                {
                  v28 = (words[0] >> 16) & 0xF;
                  v29 = &v121[12 * (HIBYTE(words[0]) & 0xF)] + 3 * v28;
                  v30 = (words[0] >> 8) & 0x7F;
                  v130 = words[0] & 0x7F;
                  if ((words[0] & 0x100000) != 0)
                  {
                    v31 = 2;
                  }

                  else
                  {
                    v31 = 1;
                  }

                  if (v31 != *v29 || v30 != v29[1])
                  {
                    v32 = v28 | 0xB0;
LABEL_47:
                    v122 = v31;
                    v123 = BYTE1(words[0]) & 0x7F;
                    if ((words[0] & 0x100000) != 0)
                    {
                      v35 = 25344;
                    }

                    else
                    {
                      v35 = 25856;
                    }

                    v33 = (v23 << 24) | (v32 << 16);
                    *v142 = v35 | v30 | v33;
                    v36 = MIDIEventListAdd(&evtlist, 0x114uLL, v16, time[0], 1uLL, v142);
                    if (v36)
                    {
                      v37 = v36;
                      v34 = time[0];
                    }

                    else
                    {
                      if (!v7)
                      {
                        v7 = (*(*(v132 + 48) + 16))();
                      }

                      memset(&evtlist, 0, sizeof(evtlist));
                      v41 = MIDIEventListInit(&evtlist, kMIDIProtocol_1_0);
                      v34 = time[0];
                      v37 = MIDIEventListAdd(&evtlist, 0x114uLL, v41, time[0], MIDI::UniversalPacket::word_sizes[v142[0] >> 28], v142);
                    }

                    *v142 = (v35 + v33 + v130 - 256);
                    v42 = MIDIEventListAdd(&evtlist, 0x114uLL, v37, v34, 1uLL, v142);
                    if (v42)
                    {
                      v16 = v42;
                      v4 = a4;
                    }

                    else
                    {
                      v4 = a4;
                      if (!v7)
                      {
                        v7 = (*(*(v132 + 48) + 16))();
                      }

                      memset(&evtlist, 0, sizeof(evtlist));
                      v43 = MIDIEventListInit(&evtlist, kMIDIProtocol_1_0);
                      v16 = MIDIEventListAdd(&evtlist, 0x114uLL, v43, v34, MIDI::UniversalPacket::word_sizes[v142[0] >> 28], v142);
                    }

                    *v29 = v122;
                    v29[1] = v123;
                    v29[2] = v130;
                    goto LABEL_68;
                  }

                  v32 = v28 | 0xB0;
                  if (v130 != v29[2])
                  {
                    goto LABEL_47;
                  }

                  v33 = (v32 << 16) | (v23 << 24);
                  v34 = time[0];
LABEL_68:
                  *v142 = v33 | (v24 >> 25) | 0x600;
                  v44 = MIDIEventListAdd(&evtlist, 0x114uLL, v16, v34, 1uLL, v142);
                  if (v44)
                  {
                    v16 = v44;
                  }

                  else
                  {
                    if (!v7)
                    {
                      v7 = (*(*(v132 + 48) + 16))();
                    }

                    memset(&evtlist, 0, sizeof(evtlist));
                    v45 = MIDIEventListInit(&evtlist, kMIDIProtocol_1_0);
                    v16 = MIDIEventListAdd(&evtlist, 0x114uLL, v45, time[0], MIDI::UniversalPacket::word_sizes[v142[0] >> 28], v142);
                  }

                  v46 = (v24 >> 18) & 0x7F;
                  if (v46)
                  {
                    *v142 = v46 | v33 | 0x2600u;
                    v47 = time[0];
                    v48 = MIDIEventListAdd(&evtlist, 0x114uLL, v16, time[0], 1uLL, v142);
                    if (!v48)
                    {
                      if (!v7)
                      {
                        v7 = (*(*(v132 + 48) + 16))();
                      }

                      memset(&evtlist, 0, sizeof(evtlist));
                      v49 = MIDIEventListInit(&evtlist, kMIDIProtocol_1_0);
                      v48 = MIDIEventListAdd(&evtlist, 0x114uLL, v49, v47, MIDI::UniversalPacket::word_sizes[v142[0] >> 28], v142);
                    }

                    goto LABEL_90;
                  }
                }
              }

              else
              {
                v26 = v25 == 9;
                if (words[1] >> 25)
                {
                  v26 = words[1] >> 25;
                }

                v142[3] = 0;
                *&v142[1] = 0;
                v27 = words[0] & 0x7F00 | (BYTE2(words[0]) << 16) | (v23 << 24) | v26;
LABEL_55:
                v142[0] = v27;
                v22 = MIDIEventListAdd(&evtlist, 0x114uLL, v16, time[0], 1uLL, v142);
                if (!v22)
                {
                  if (!v7)
                  {
                    goto LABEL_57;
                  }

                  goto LABEL_58;
                }

LABEL_27:
                v16 = v22;
              }
            }
          }

          if (evtlist.numPackets)
          {
            v58 = v7 == 0;
          }

          else
          {
            v58 = 0;
          }

          if (v58)
          {
            v7 = (*(*(v132 + 48) + 16))();
          }

          v14 = &v125[v127[2]];
          v13 = v128 + 1;
          if ((v128 + 1) >= v4[1])
          {
            return v7;
          }
        }
      }

      return 0;
    }

    if (!a4[1])
    {
      return 0;
    }

    v7 = 0;
    v59 = 0;
    v60 = a4 + 2;
    v124 = *(a1 + 40);
    v126 = v10 + 33;
LABEL_103:
    v61 = v60 + 3;
    v62 = v60[2];
    v135 = v60 + 3;
    v136 = v62;
    v137 = *v60;
    v138 = 0;
    v63 = MIDIEventListInit(&evtlist, kMIDIProtocol_2_0);
    time[1] = 0;
    v134 = 0;
    time[0] = 0;
    while (1)
    {
      while (1)
      {
        if (!MIDI::EventList::PacketReader::read(&v135, &v134, time))
        {
          if (evtlist.numPackets)
          {
            v114 = v7 == 0;
          }

          else
          {
            v114 = 0;
          }

          if (v114)
          {
            v7 = (*(*(v132 + 48) + 16))();
          }

          v60 = &v61[v60[2]];
          if (++v59 >= v4[1])
          {
            return v7;
          }

          goto LABEL_103;
        }

        v64 = LODWORD(time[0]);
        if (LODWORD(time[0]) >> 28 == 2)
        {
          break;
        }

        v63 = MIDIEventListAdd(&evtlist, 0x114uLL, v63, v134, MIDI::UniversalPacket::word_sizes[LODWORD(time[0]) >> 28], time);
        if (!v63)
        {
          if (!v7)
          {
            v7 = (*(*(v132 + 48) + 16))();
          }

          memset(&evtlist, 0, sizeof(evtlist));
          v65 = MIDIEventListInit(&evtlist, kMIDIProtocol_2_0);
          v66 = v134;
          v67 = MIDI::UniversalPacket::word_sizes[LODWORD(time[0]) >> 28];
          v68 = time;
          goto LABEL_207;
        }
      }

      v131 = v61;
      *words = 0;
      v140 = 0;
      v69 = HIBYTE(LODWORD(time[0])) & 0xF;
      v70 = HIBYTE(LODWORD(time[0])) & 0xF | 0x40;
      v71 = BYTE2(time[0]);
      v72 = *(v10 + 32);
      v73 = *v10;
      v74 = BYTE2(time[0]) >> 4;
      if (v72)
      {
        goto LABEL_146;
      }

      if ((v73 & 0xFF0000) != 0)
      {
        if (((v73 ^ LODWORD(time[0])) & 0xF0000) != 0)
        {
          v72 = 1;
          *(v10 + 32) = 1;
        }

        else if (v74 == 11)
        {
          v72 = 1;
          if (BYTE1(v73) > 0x62u)
          {
            switch(BYTE1(v73))
            {
              case 'c':
                v75 = time[0] & 0xFF00;
                v76 = 25088;
                goto LABEL_143;
              case 'd':
                v75 = time[0] & 0xFF00;
                v76 = 25856;
                goto LABEL_143;
              case 'e':
                v75 = time[0] & 0xFF00;
                v76 = 25600;
                goto LABEL_143;
            }
          }

          else
          {
            if (!BYTE1(v73))
            {
              if ((time[0] & 0xFF00) == 0x2000)
              {
                goto LABEL_236;
              }

              goto LABEL_145;
            }

            if (BYTE1(v73) == 32)
            {
              if ((time[0] & 0xFF00) == 0)
              {
                goto LABEL_236;
              }
            }

            else if (BYTE1(v73) == 98)
            {
              v75 = time[0] & 0xFF00;
              v76 = 25344;
LABEL_143:
              if (v75 == v76 || (time[0] & 0xF0DF00) == 0xB00600)
              {
LABEL_236:
                *(v10 + 1) = *time;
                goto LABEL_166;
              }

              goto LABEL_145;
            }
          }
        }

        else
        {
          v72 = (v73 & 0xDF00) != 0 || v74 != 12;
        }
      }

      else
      {
        v72 = 1;
        if ((time[0] & 0xF00000) == 0xB00000 && v74 == 11)
        {
          if (BYTE1(time[0]) - 98 < 4 || BYTE1(time[0]) == 32 || !BYTE1(time[0]))
          {
            *v10 = *time;
            goto LABEL_166;
          }

LABEL_145:
          v72 = 1;
        }
      }

LABEL_146:
      if (BYTE2(v73) && v72)
      {
        *(v10 + 32) = 1;
        *&v142[2] = 0;
        v142[0] = v73 & 0xFF00 | (BYTE2(v73) << 16) & 0x80FFFFFF | ((BYTE3(v64) & 0xF | 0x40) << 24);
        v78 = v73;
        v79 = v73 << 25;
        if (v78 >= 0x41)
        {
          v80 = (v78 & 0x3F) << 19;
          if (v80)
          {
            do
            {
              v79 |= v80;
              v81 = v80 > 0x3F;
              v80 >>= 6;
            }

            while (v81);
          }
        }

        v142[1] = v79;
        v82 = MIDIEventListAdd(&evtlist, 0x114uLL, v63, v134, 2uLL, v142);
        if (!v82)
        {
          if (!v7)
          {
            v7 = (*(*(v132 + 48) + 16))();
          }

          memset(&evtlist, 0, sizeof(evtlist));
          v83 = MIDIEventListInit(&evtlist, kMIDIProtocol_2_0);
          v82 = MIDIEventListAdd(&evtlist, 0x114uLL, v83, v134, MIDI::UniversalPacket::word_sizes[v142[0] >> 28], v142);
        }

        v63 = v82;
        *v10 = 0;
        *&v142[2] = 0;
        v84 = v10[4];
        v69 = BYTE3(v64) & 0xF;
        if (BYTE2(v84))
        {
          LOWORD(v142[0]) = v84 & 0xFF00;
          BYTE2(v142[0]) = BYTE2(v84);
          HIBYTE(v142[0]) = v70;
          v85 = v84;
          v86 = v84 << 25;
          if (v85 >= 0x41)
          {
            v87 = (v85 & 0x3F) << 19;
            if (v87)
            {
              do
              {
                v86 |= v87;
                v81 = v87 > 0x3F;
                v87 >>= 6;
              }

              while (v81);
            }
          }

          v142[1] = v86;
          v88 = v134;
          v89 = MIDIEventListAdd(&evtlist, 0x114uLL, v82, v134, 2uLL, v142);
          if (!v89)
          {
            if (!v7)
            {
              v7 = (*(*(v132 + 48) + 16))();
            }

            memset(&evtlist, 0, sizeof(evtlist));
            v90 = MIDIEventListInit(&evtlist, kMIDIProtocol_2_0);
            v89 = MIDIEventListAdd(&evtlist, 0x114uLL, v90, v88, MIDI::UniversalPacket::word_sizes[v142[0] >> 28], v142);
          }

          v63 = v89;
          v10 = v124;
          v124[4] = 0;
          v71 = BYTE2(v64);
          v69 = BYTE3(v64) & 0xF;
        }

        else
        {
          v71 = BYTE2(v64);
        }

        *(v126 + (v69 << 7) + 8 * ((v64 >> 16) & 0xF)) = 0;
      }

LABEL_166:
      v91 = (v64 >> 8) & 0x7F;
      v92 = v64 & 0x7F;
      if (BYTE2(v64) >> 4 <= 0xAu)
      {
        switch(v74)
        {
          case 8:
            goto LABEL_197;
          case 9:
            if ((v64 & 0x7F) == 0)
            {
              v71 -= 16;
              v92 = 64;
            }

LABEL_197:
            v95 = (v70 << 24) | (v71 << 16) | (v91 << 8);
            words[0] = v95;
            v104 = v92 << 9;
            v61 = v131;
            if (v92 >= 0x41)
            {
              v105 = 8 * (v92 & 0x3F);
              v4 = a4;
              if (v105)
              {
                do
                {
                  v104 |= v105;
                  v81 = v105 > 0x3F;
                  v105 >>= 6;
                }

                while (v81);
              }
            }

            else
            {
              v4 = a4;
            }

            v96 = v104 << 16;
LABEL_202:
            words[1] = v96;
            goto LABEL_203;
          case 10:
            v95 = (v71 << 16) | (v70 << 24) | (v91 << 8);
            words[0] = v95;
            v96 = v64 << 25;
            if (v92 >= 0x41)
            {
              v97 = (v64 & 0x3F) << 19;
              v4 = a4;
              if (v97)
              {
                v61 = v131;
                do
                {
                  v96 |= v97;
                  v81 = v97 > 0x3F;
                  v97 >>= 6;
                }

                while (v81);
                goto LABEL_202;
              }

              goto LABEL_185;
            }

LABEL_184:
            v4 = a4;
LABEL_185:
            v61 = v131;
            goto LABEL_202;
        }

        goto LABEL_186;
      }

      if (BYTE2(v64) >> 4 > 0xCu)
      {
        if (v74 == 13)
        {
          v95 = (v71 << 16) | (v70 << 24);
          words[0] = v95;
          v103 = v64 >> 8 << 25;
          if (v91 >= 0x41)
          {
            v107 = ((v64 >> 8) & 0x3F) << 19;
            v4 = a4;
            v61 = v131;
            if (v107)
            {
              do
              {
                v103 |= v107;
                v81 = v107 > 0x3F;
                v107 >>= 6;
              }

              while (v81);
            }
          }

          else
          {
            v4 = a4;
            v61 = v131;
          }

          words[1] = v103;
          goto LABEL_203;
        }

        if (v74 == 14)
        {
          v95 = (v71 << 16) | (v70 << 24);
          words[0] = v95;
          v98 = v91 | (v92 << 7);
          v96 = v98 << 18;
          if (v98 > 0x2000)
          {
            v108 = 32 * (v98 & 0x1FFF);
            v4 = a4;
            if (v108)
            {
              v61 = v131;
              do
              {
                v96 |= v108;
                v108 >>= 13;
              }

              while (v108);
              goto LABEL_202;
            }

            goto LABEL_185;
          }

          goto LABEL_184;
        }

LABEL_186:
        v95 = words[0];
LABEL_187:
        v4 = a4;
        v61 = v131;
LABEL_203:
        v106 = MIDIEventListAdd(&evtlist, 0x114uLL, v63, v134, MIDI::UniversalPacket::word_sizes[v95 >> 28], words);
        if (v106)
        {
          goto LABEL_208;
        }

        if (!v7)
        {
          v7 = (*(*(v132 + 48) + 16))();
        }

        memset(&evtlist, 0, sizeof(evtlist));
        v65 = MIDIEventListInit(&evtlist, kMIDIProtocol_2_0);
        v66 = v134;
        v67 = MIDI::UniversalPacket::word_sizes[words[0] >> 28];
        v68 = words;
LABEL_207:
        v106 = MIDIEventListAdd(&evtlist, 0x114uLL, v65, v66, v67, v68);
LABEL_208:
        v63 = v106;
      }

      else
      {
        if (v74 != 11)
        {
          v93 = (v126 + (v69 << 7) + 8 * (WORD1(v64) & 0xF));
          if (*v93)
          {
            v94 = *(v10 + 32) ^ 1;
          }

          else
          {
            v94 = 0;
          }

          v95 = v94 | (v71 << 16) | (v70 << 24);
          words[0] = v95;
          HIBYTE(words[1]) = BYTE1(v64) & 0x7F;
          BYTE1(words[1]) = v93[2];
          LOBYTE(words[1]) = v93[3];
          *v93 = 0;
          *v10 = 0u;
          *(v10 + 1) = 0u;
          goto LABEL_187;
        }

        v99 = v71;
        v100 = (v64 >> 16) & 0xF;
        v101 = (v126 + (v69 << 7) + 8 * v100);
        if (((v64 >> 8) & 0x7F) > 0x61)
        {
          v61 = v131;
          if (((v64 >> 8) & 0x7F) > 0x63)
          {
            if (v91 != 100)
            {
              if (v91 != 101)
              {
                goto LABEL_244;
              }

              v101[1] = 1;
              goto LABEL_235;
            }

            v101[1] = 1;
          }

          else
          {
            if (v91 != 98)
            {
              v101[1] = 2;
LABEL_235:
              v101[4] = v92;
              goto LABEL_243;
            }

            v101[1] = 2;
          }

          v101[5] = v92;
        }

        else
        {
          v61 = v131;
          if (((v64 >> 8) & 0x7F) > 0x1F)
          {
            if (v91 != 32)
            {
              if (v91 == 38)
              {
                v102 = v64 & 0x7F;
LABEL_222:
                v101[7] = v102;
                if ((v10[8] & 1) == 0 && v101[1])
                {
                  if (v101[1] == 1)
                  {
                    v109 = 32;
                  }

                  else
                  {
                    v109 = 48;
                  }

                  v95 = (v70 << 24) | ((v109 | v100) << 16) | (v101[4] << 8) | v101[5];
                  words[0] = v95;
                  v110 = v102 | (v101[6] << 7);
                  v111 = v110 << 18;
                  if (v110 > 0x2000 && (v112 = 32 * (v110 & 0x1FFF)) != 0)
                  {
                    v4 = a4;
                    do
                    {
                      v111 |= v112;
                      v112 >>= 13;
                    }

                    while (v112);
                  }

                  else
                  {
                    v4 = a4;
                  }

                  words[1] = v111;
                  *v10 = 0u;
                  *(v10 + 1) = 0u;
                  goto LABEL_203;
                }
              }

LABEL_244:
              v95 = (v99 << 16) | (v70 << 24) | (v91 << 8);
              words[0] = v95;
              v96 = v64 << 25;
              if (v92 >= 0x41 && (v113 = (v64 & 0x3F) << 19) != 0)
              {
                v4 = a4;
                do
                {
                  v96 |= v113;
                  v81 = v113 > 0x3F;
                  v113 >>= 6;
                }

                while (v81);
              }

              else
              {
                v4 = a4;
              }

              goto LABEL_202;
            }

            v101[3] = v92;
          }

          else
          {
            if (v91)
            {
              if (v91 == 6)
              {
                v102 = 0;
                v101[6] = v92;
                goto LABEL_222;
              }

              goto LABEL_244;
            }

            v101[2] = v92;
          }

          *v101 = 1;
        }

LABEL_243:
        if (v10[8])
        {
          goto LABEL_244;
        }

        v4 = a4;
      }
    }
  }

  v7 = a4[1];
  if (!v7)
  {
    return v7;
  }

  if (v7 != 1 || a4[4] > 0x40u)
  {
    v7 = 0;
    v115 = 0;
    v116 = a4 + 2;
    do
    {
      v117 = v116[2];
      v135 = v116 + 3;
      v136 = v117;
      v137 = *v116;
      v138 = 0;
      v118 = MIDIEventListInit(&evtlist, v5);
      *words = 0;
      *v142 = 0uLL;
      while (MIDI::EventList::PacketReader::read(&v135, words, v142))
      {
        v118 = MIDIEventListAdd(&evtlist, 0x114uLL, v118, *words, MIDI::UniversalPacket::word_sizes[v142[0] >> 28], v142);
        if (!v118)
        {
          if (!v7)
          {
            v7 = (*(*(v132 + 48) + 16))();
          }

          memset(&evtlist, 0, sizeof(evtlist));
          v119 = MIDIEventListInit(&evtlist, v5);
          v118 = MIDIEventListAdd(&evtlist, 0x114uLL, v119, *words, MIDI::UniversalPacket::word_sizes[v142[0] >> 28], v142);
        }
      }

      if (evtlist.numPackets)
      {
        v120 = v7 == 0;
      }

      else
      {
        v120 = 0;
      }

      if (v120)
      {
        v7 = (*(*(v132 + 48) + 16))();
      }

      v116 += v116[2] + 3;
      ++v115;
    }

    while (v115 < v4[1]);
    return v7;
  }

  v8 = *(*(v132 + 48) + 16);

  return v8();
}

uint64_t APMIDIRouter::handleSetProperty(void *,AudioUnitPluginDispatch const&,unsigned int,unsigned int,unsigned int,void const*,unsigned int)::$_2::__invoke(uint64_t a1, uint64_t a2, int a3, unsigned int *a4)
{
  v17[6] = *MEMORY[0x1E69E9840];
  v15 = a2;
  v14 = a3;
  v13 = a1;
  v12 = 0;
  if (*a4)
  {
    v5 = 0;
    v6 = (a4 + 1);
    do
    {
      v7 = *(v13 + 88);
      v8 = *(v6 + 8);
      v9 = *v6;
      v16 = caulk::inplace_function<void ()(MIDI::EventList const*),48ul,8ul,caulk::inplace_function_detail::rt_vtable>::k_wrapper_vtable<APMIDIRouter::handleSetProperty(void *,AudioUnitPluginDispatch const&,unsigned int,unsigned int,unsigned int,void const*,unsigned int)::$_2::operator() const(void *,AudioTimeStamp const*,unsigned int,MIDIPacketList const*)::{lambda(MIDIPacket const*)#1}::operator() const(MIDIPacket const*)::{lambda(MIDI::EventList const*)#1}>;
      v17[0] = &v12;
      v17[1] = &v13;
      v17[2] = &v15;
      v17[3] = &v14;
      MIDI::LegacyMIDIConverter<MIDI::MIDI_1_to_2_Translator>::convertLegacyDataToEventList(v7, v6 + 10, v8, v9, &v16);
      (v16[3])(v17);
      v6 = (v6 + 10 + *(v6 + 8) + 3) & 0xFFFFFFFFFFFFFFFCLL;
      ++v5;
    }

    while (v5 < *a4);
    result = v12;
  }

  else
  {
    result = 0;
  }

  v11 = *MEMORY[0x1E69E9840];
  return result;
}

void sub_18F88E410(_Unwind_Exception *a1, int a2)
{
  if (a2)
  {
    __clang_call_terminate(a1);
  }

  _Unwind_Resume(a1);
}

__n128 caulk::inplace_function_detail::rt_vtable<void,MIDI::EventList const*>::rt_vtable<APMIDIRouter::handleSetProperty(void *,AudioUnitPluginDispatch const&,unsigned int,unsigned int,unsigned int,void const*,unsigned int)::$_2::operator() const(void *,AudioTimeStamp const*,unsigned int,MIDIPacketList const*)::{lambda(MIDIPacket const*)#1}::operator() const(MIDIPacket const*)::{lambda(MIDI::EventList const*)#1}>(caulk::inplace_function_detail::wrapper<APMIDIRouter::handleSetProperty(void *,AudioUnitPluginDispatch const&,unsigned int,unsigned int,unsigned int,void const*,unsigned int)::$_2::operator() const(void *,AudioTimeStamp const*,unsigned int,MIDIPacketList const*)::{lambda(MIDIPacket const*)#1}::operator() const(MIDIPacket const*)::{lambda(MIDI::EventList const*)#1}>)::{lambda(void *,void *)#2}::__invoke(_OWORD *a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *a1 = *a2;
  a1[1] = v3;
  return result;
}

__n128 caulk::inplace_function_detail::rt_vtable<void,MIDI::EventList const*>::rt_vtable<APMIDIRouter::handleSetProperty(void *,AudioUnitPluginDispatch const&,unsigned int,unsigned int,unsigned int,void const*,unsigned int)::$_2::operator() const(void *,AudioTimeStamp const*,unsigned int,MIDIPacketList const*)::{lambda(MIDIPacket const*)#1}::operator() const(MIDIPacket const*)::{lambda(MIDI::EventList const*)#1}>(caulk::inplace_function_detail::wrapper<APMIDIRouter::handleSetProperty(void *,AudioUnitPluginDispatch const&,unsigned int,unsigned int,unsigned int,void const*,unsigned int)::$_2::operator() const(void *,AudioTimeStamp const*,unsigned int,MIDIPacketList const*)::{lambda(MIDIPacket const*)#1}::operator() const(MIDIPacket const*)::{lambda(MIDI::EventList const*)#1}>)::{lambda(void *,void *)#1}::__invoke(_OWORD *a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *a1 = *a2;
  a1[1] = v3;
  return result;
}

uint64_t caulk::inplace_function_detail::rt_vtable<void,MIDI::EventList const*>::rt_vtable<APMIDIRouter::handleSetProperty(void *,AudioUnitPluginDispatch const&,unsigned int,unsigned int,unsigned int,void const*,unsigned int)::$_2::operator() const(void *,AudioTimeStamp const*,unsigned int,MIDIPacketList const*)::{lambda(MIDIPacket const*)#1}::operator() const(MIDIPacket const*)::{lambda(MIDI::EventList const*)#1}>(caulk::inplace_function_detail::wrapper<APMIDIRouter::handleSetProperty(void *,AudioUnitPluginDispatch const&,unsigned int,unsigned int,unsigned int,void const*,unsigned int)::$_2::operator() const(void *,AudioTimeStamp const*,unsigned int,MIDIPacketList const*)::{lambda(MIDIPacket const*)#1}::operator() const(MIDIPacket const*)::{lambda(MIDI::EventList const*)#1}>)::{lambda(void *,MIDI::EventList const*&&)#1}::__invoke(uint64_t a1, uint64_t *a2)
{
  v3 = *a2;
  v4 = ***(a1 + 16);
  v5 = **(a1 + 24);
  result = (*(*(**(a1 + 8) + 48) + 16))();
  **a1 = result;
  return result;
}

uint64_t APMIDIRouter::handleSetProperty(void *,AudioUnitPluginDispatch const&,unsigned int,unsigned int,unsigned int,void const*,unsigned int)::$_1::__invoke(uint64_t a1, uint64_t a2, int a3, unsigned int *a4)
{
  v16[6] = *MEMORY[0x1E69E9840];
  v14 = a2;
  v13 = a3;
  v12 = a1;
  v11 = 0;
  if (*a4)
  {
    v5 = 0;
    v6 = (a4 + 1);
    do
    {
      v7 = *(v6 + 8);
      v8 = *v6;
      v15 = caulk::inplace_function<void ()(MIDI::EventList const*),48ul,8ul,caulk::inplace_function_detail::rt_vtable>::k_wrapper_vtable<APMIDIRouter::handleSetProperty(void *,AudioUnitPluginDispatch const&,unsigned int,unsigned int,unsigned int,void const*,unsigned int)::$_1::operator() const(void *,AudioTimeStamp const*,unsigned int,MIDIPacketList const*)::{lambda(MIDIPacket const*)#1}::operator() const(MIDIPacket const*)::{lambda(MIDI::EventList const*)#1}>;
      v16[0] = &v11;
      v16[1] = &v12;
      v16[2] = &v14;
      v16[3] = &v13;
      MIDI::LegacyMIDIConverter<MIDI::IdentityTranslator>::convertLegacyDataToEventList(v6 + 10, v7, v8, &v15);
      (v15[3])(v16);
      v6 = (v6 + 10 + *(v6 + 8) + 3) & 0xFFFFFFFFFFFFFFFCLL;
      ++v5;
    }

    while (v5 < *a4);
    result = v11;
  }

  else
  {
    result = 0;
  }

  v10 = *MEMORY[0x1E69E9840];
  return result;
}

void sub_18F88E5A8(_Unwind_Exception *a1, int a2)
{
  if (a2)
  {
    __clang_call_terminate(a1);
  }

  _Unwind_Resume(a1);
}

__n128 caulk::inplace_function_detail::rt_vtable<void,MIDI::EventList const*>::rt_vtable<APMIDIRouter::handleSetProperty(void *,AudioUnitPluginDispatch const&,unsigned int,unsigned int,unsigned int,void const*,unsigned int)::$_1::operator() const(void *,AudioTimeStamp const*,unsigned int,MIDIPacketList const*)::{lambda(MIDIPacket const*)#1}::operator() const(MIDIPacket const*)::{lambda(MIDI::EventList const*)#1}>(caulk::inplace_function_detail::wrapper<APMIDIRouter::handleSetProperty(void *,AudioUnitPluginDispatch const&,unsigned int,unsigned int,unsigned int,void const*,unsigned int)::$_1::operator() const(void *,AudioTimeStamp const*,unsigned int,MIDIPacketList const*)::{lambda(MIDIPacket const*)#1}::operator() const(MIDIPacket const*)::{lambda(MIDI::EventList const*)#1}>)::{lambda(void *,void *)#2}::__invoke(_OWORD *a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *a1 = *a2;
  a1[1] = v3;
  return result;
}

__n128 caulk::inplace_function_detail::rt_vtable<void,MIDI::EventList const*>::rt_vtable<APMIDIRouter::handleSetProperty(void *,AudioUnitPluginDispatch const&,unsigned int,unsigned int,unsigned int,void const*,unsigned int)::$_1::operator() const(void *,AudioTimeStamp const*,unsigned int,MIDIPacketList const*)::{lambda(MIDIPacket const*)#1}::operator() const(MIDIPacket const*)::{lambda(MIDI::EventList const*)#1}>(caulk::inplace_function_detail::wrapper<APMIDIRouter::handleSetProperty(void *,AudioUnitPluginDispatch const&,unsigned int,unsigned int,unsigned int,void const*,unsigned int)::$_1::operator() const(void *,AudioTimeStamp const*,unsigned int,MIDIPacketList const*)::{lambda(MIDIPacket const*)#1}::operator() const(MIDIPacket const*)::{lambda(MIDI::EventList const*)#1}>)::{lambda(void *,void *)#1}::__invoke(_OWORD *a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *a1 = *a2;
  a1[1] = v3;
  return result;
}

uint64_t caulk::inplace_function_detail::rt_vtable<void,MIDI::EventList const*>::rt_vtable<APMIDIRouter::handleSetProperty(void *,AudioUnitPluginDispatch const&,unsigned int,unsigned int,unsigned int,void const*,unsigned int)::$_1::operator() const(void *,AudioTimeStamp const*,unsigned int,MIDIPacketList const*)::{lambda(MIDIPacket const*)#1}::operator() const(MIDIPacket const*)::{lambda(MIDI::EventList const*)#1}>(caulk::inplace_function_detail::wrapper<APMIDIRouter::handleSetProperty(void *,AudioUnitPluginDispatch const&,unsigned int,unsigned int,unsigned int,void const*,unsigned int)::$_1::operator() const(void *,AudioTimeStamp const*,unsigned int,MIDIPacketList const*)::{lambda(MIDIPacket const*)#1}::operator() const(MIDIPacket const*)::{lambda(MIDI::EventList const*)#1}>)::{lambda(void *,MIDI::EventList const*&&)#1}::__invoke(uint64_t a1, uint64_t *a2)
{
  v3 = *a2;
  v4 = ***(a1 + 16);
  v5 = **(a1 + 24);
  result = (*(*(**(a1 + 8) + 48) + 16))();
  **a1 = result;
  return result;
}

__n128 _ZZN5caulk23inplace_function_detail9rt_vtableIvJPKN4MIDI16LegacyPacketListEEEC1IZZN12APMIDIRouter17handleSetPropertyEPvRK23AudioUnitPluginDispatchjjjPKvjEUb_E4__13EENS0_7wrapperIT_EEENUlS9_S9_E0_8__invokeES9_S9_(_OWORD *a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *a1 = *a2;
  a1[1] = v3;
  return result;
}

__n128 _ZZN5caulk23inplace_function_detail9rt_vtableIvJPKN4MIDI16LegacyPacketListEEEC1IZZN12APMIDIRouter17handleSetPropertyEPvRK23AudioUnitPluginDispatchjjjPKvjEUb_E4__13EENS0_7wrapperIT_EEENUlS9_S9_E_8__invokeES9_S9_(_OWORD *a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *a1 = *a2;
  a1[1] = v3;
  return result;
}

uint64_t _ZZN5caulk23inplace_function_detail9rt_vtableIvJPKN4MIDI16LegacyPacketListEEEC1IZZN12APMIDIRouter17handleSetPropertyEPvRK23AudioUnitPluginDispatchjjjPKvjEUb_E4__13EENS0_7wrapperIT_EEENUlS9_OS5_E_8__invokeES9_SJ_(uint64_t result, uint64_t *a2)
{
  v2 = *a2;
  v3 = *(result + 8);
  v4 = **result;
  v11 = 1;
  v5 = *(result + 16);
  v7 = v4;
  v8 = 0u;
  v9 = 0u;
  v10 = 0u;
  if (!*v3)
  {
    v6 = result;
    result = (*(v5 + 32))(*(v5 + 40), &v7, **(result + 24), v2);
    **(v6 + 8) = result;
  }

  return result;
}

uint64_t APAC::MetadataBitStreamParser::parse(uint64_t a1, unint64_t a2, unsigned int a3, uint64_t a4)
{
  v65[0] = a2;
  v65[1] = a2;
  v6 = a2 + a3;
  v65[2] = v6;
  if ((a2 & 3) != 0)
  {
    v7 = 0;
    v8 = (a2 ^ 3) & 3;
    v9 = a2 + 1;
    v10 = 8 * ((a2 ^ 3) & 3) + 8;
    v11 = a2;
    do
    {
      if (v11 >= v6)
      {
        v12 = 255;
      }

      else
      {
        v12 = *v11;
      }

      v7 = v12 | (v7 << 8);
      ++v11;
    }

    while ((v9++ & 3) != 0);
    v14 = (a2 + v8 + 1);
    v67 = 8 * ((a2 ^ 3) & 3) + 8;
    v65[0] = v14;
    v15 = v7 << ((8 * v8) ^ 0x18);
  }

  else
  {
    v15 = 0;
    v10 = 0;
    v14 = a2;
  }

  if (v10 + 8 * (v6 - v14) <= 15)
  {
    exception = __cxa_allocate_exception(8uLL);
    *exception = "Cannot read metadata.header.syncWords";
    __cxa_throw(exception, MEMORY[0x1E69E53D8], 0);
  }

  v16 = HIWORD(v15);
  v17 = v10 - 16;
  if (v10 - 16 < 0)
  {
    if (v14 >= a2 && ((v6 - v14) & ~((v6 - v14) >> 63) & 0xFFFFFFFC) != 0)
    {
      v15 = bswap32(*v14);
    }

    else
    {
      v19 = 4;
      v20 = v14;
      do
      {
        v21 = 255;
        if (v20 < v6 && v20 >= a2)
        {
          v21 = *v20;
        }

        v15 = v21 | (v15 << 8);
        v20 = (v20 + 1);
        --v19;
      }

      while (v19);
    }

    v22 = v15 << (16 - v10);
    v23 = v10 + 16;
    v65[0] = ++v14;
    v16 |= v15 >> v23;
    if (v23)
    {
      v18 = v22;
    }

    else
    {
      v18 = 0;
    }

    if (v23)
    {
      v17 = v23;
    }

    else
    {
      v17 = 0;
    }
  }

  else
  {
    v18 = v15 << 16;
  }

  v66 = v18;
  *a4 = v16;
  if (v16 != 0xFFFF)
  {
    v59 = "metadata.header.syncWords not recognized";
    goto LABEL_110;
  }

  if (v17 + 8 * (v6 - v14) <= 15)
  {
    v60 = __cxa_allocate_exception(8uLL);
    *v60 = "Cannot read metadata.header.chunkSize";
    __cxa_throw(v60, MEMORY[0x1E69E53D8], 0);
  }

  v24 = HIWORD(v18);
  v25 = v17 - 16;
  v67 = v17 - 16;
  if (v17 - 16 < 0)
  {
    if (v14 >= a2 && ((v6 - v14) & ~((v6 - v14) >> 63) & 0xFFFFFFFC) != 0)
    {
      v18 = bswap32(*v14);
    }

    else
    {
      v27 = 4;
      v28 = v14;
      do
      {
        v29 = v18 << 8;
        v66 = v29;
        v30 = 255;
        if (v28 < v6 && v28 >= a2)
        {
          v30 = *v28;
        }

        v18 = v30 | v29;
        v66 = v18;
        v28 = (v28 + 1);
        --v27;
      }

      while (v27);
    }

    v31 = v18 << (16 - v17);
    v32 = v17 + 16;
    v65[0] = ++v14;
    v24 |= v18 >> v32;
    if (v32)
    {
      v26 = v31;
    }

    else
    {
      v26 = 0;
    }

    if (v32)
    {
      v25 = v32;
    }

    else
    {
      v25 = 0;
    }
  }

  else
  {
    v26 = v18 << 16;
  }

  v66 = v26;
  *(a4 + 2) = v24;
  if (v24 + 4 > a3)
  {
    v59 = "The metadata chunk size exceeds capacity. Early exit.";
    goto LABEL_110;
  }

  if (v25 + 8 * (v6 - v14) <= 7)
  {
    v61 = __cxa_allocate_exception(8uLL);
    *v61 = "Cannot read metadata.header.version.major";
    __cxa_throw(v61, MEMORY[0x1E69E53D8], 0);
  }

  v33 = HIBYTE(v26);
  v34 = v25 - 8;
  v67 = v25 - 8;
  if (v25 - 8 < 0)
  {
    if (v14 >= a2 && ((v6 - v14) & ~((v6 - v14) >> 63) & 0xFFFFFFFC) != 0)
    {
      v26 = bswap32(*v14);
    }

    else
    {
      v36 = 4;
      v37 = v14;
      do
      {
        v38 = v26 << 8;
        v66 = v38;
        v39 = 255;
        if (v37 < v6 && v37 >= a2)
        {
          v39 = *v37;
        }

        v26 = v39 | v38;
        v66 = v26;
        v37 = (v37 + 1);
        --v36;
      }

      while (v36);
    }

    v40 = v26 << (8 - v25);
    v41 = v25 + 24;
    v65[0] = ++v14;
    v33 |= v26 >> v41;
    if (v41)
    {
      v35 = v40;
    }

    else
    {
      v35 = 0;
    }

    if (v41)
    {
      v34 = v41;
    }

    else
    {
      v34 = 0;
    }
  }

  else
  {
    v35 = v26 << 8;
  }

  v66 = v35;
  *(a4 + 4) = v33;
  if (v34 + 8 * (v6 - v14) <= 7)
  {
    v62 = __cxa_allocate_exception(8uLL);
    *v62 = "Cannot read metadata.header.version.minor";
    __cxa_throw(v62, MEMORY[0x1E69E53D8], 0);
  }

  v42 = HIBYTE(v35);
  v43 = v34 - 8;
  v67 = v34 - 8;
  if (v34 - 8 < 0)
  {
    if (v14 >= a2 && ((v6 - v14) & ~((v6 - v14) >> 63) & 0xFFFFFFFC) != 0)
    {
      v35 = bswap32(*v14);
    }

    else
    {
      v45 = 4;
      v46 = v14;
      do
      {
        v47 = v35 << 8;
        v66 = v47;
        v48 = 255;
        if (v46 < v6 && v46 >= a2)
        {
          v48 = *v46;
        }

        v35 = v48 | v47;
        v66 = v35;
        v46 = (v46 + 1);
        --v45;
      }

      while (v45);
    }

    v49 = v35 << (8 - v34);
    v50 = v34 + 24;
    v65[0] = ++v14;
    v42 |= v35 >> v50;
    if (v50)
    {
      v44 = v49;
    }

    else
    {
      v44 = 0;
    }

    if (v50)
    {
      v43 = v50;
    }

    else
    {
      v43 = 0;
    }
  }

  else
  {
    v44 = v35 << 8;
  }

  v66 = v44;
  *(a4 + 5) = v42;
  if (v43 + 8 * (v6 - v14) <= 0)
  {
    v63 = __cxa_allocate_exception(8uLL);
    *v63 = "Cannot read metadata.header.informationFrame";
    __cxa_throw(v63, MEMORY[0x1E69E53D8], 0);
  }

  v51 = v44 >> 31;
  v67 = v43 - 1;
  if (v43 - 1 < 0)
  {
    if (v14 >= a2 && ((v6 - v14) & ~((v6 - v14) >> 63) & 0xFFFFFFFC) != 0)
    {
      v44 = bswap32(*v14);
    }

    else
    {
      v53 = 4;
      v54 = v14;
      do
      {
        v55 = v44 << 8;
        v66 = v55;
        v56 = 255;
        if (v54 < v6 && v54 >= a2)
        {
          v56 = *v54;
        }

        v44 = v56 | v55;
        v66 = v44;
        v54 = (v54 + 1);
        --v53;
      }

      while (v53);
    }

    v52 = v44 << (1 - v43);
    v67 = v43 + 31;
    v65[0] = v14 + 1;
    v51 |= v44 >> (v43 + 31);
    if (v43 == -31)
    {
      v52 = 0;
    }
  }

  else
  {
    v52 = 2 * v44;
  }

  v66 = v52;
  *(a4 + 6) = v51 != 0;
  if (v33 != 1)
  {
    v59 = "Metadata version mismatch";
    goto LABEL_110;
  }

  if (v42 == 3)
  {
    APAC::MetadataBitStreamParser::parseMetadataFrame(a1, a4 + 1451080, v51 != 0, v65);
    return 0;
  }

  if (v42 != 2)
  {
    v59 = "Metadata version not supported";
LABEL_110:
    v64 = __cxa_allocate_exception(8uLL);
    *v64 = v59;
    __cxa_throw(v64, MEMORY[0x1E69E53D8], 0);
  }

  if (v51)
  {
    APAC::MetadataBitStreamParser::parseStaticMetadata(a1, (a4 + 8), v65);
  }

  APAC::MetadataBitStreamParser::parseDynamicMetadata(a1, (a4 + 174192), v65);
  return 0;
}

void sub_18F88ECD4(void *a1, int a2)
{
  if (a2 == 2)
  {
    __cxa_begin_catch(a1);
    __cxa_end_catch();
    JUMPOUT(0x18F88EBACLL);
  }

  __clang_call_terminate(a1);
}

void APAC::MetadataBitStreamParser::parseStaticMetadata(uint64_t a1, BOOL *a2, uint64_t a3)
{
  APAC::MetadataBitStreamParser::parseReferenceScreen(a1, a2, a3);
  APAC::MetadataBitStreamParser::parseCodeBookData(v5, a2 + 424, a3);
  APAC::MetadataBitStreamParser::parseGroupStaticData(v6, a2 + 428, a3);
  APAC::MetadataBitStreamParser::parseSceneComponenentStaticData(v7, a2 + 27864, a3);

  APAC::MetadataBitStreamParser::parseExtendedData(v8, (a2 + 173156), a3);
}

void APAC::MetadataBitStreamParser::parseDynamicMetadata(uint64_t a1, BOOL *a2, uint64_t a3)
{
  APAC::MetadataBitStreamParser::parseGroupDynamicData(a1, a2, a3);
  APAC::MetadataBitStreamParser::parseSceneComponenentDynamicData(a1, a2 + 32516, a3);

  APAC::MetadataBitStreamParser::parseExtendedData(v6, (a2 + 1271024), a3);
}

void APAC::MetadataBitStreamParser::parseMetadataFrame(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v4 = *(a4 + 16);
  v5 = *a4;
  v6 = v4 - *a4;
  v7 = *(a4 + 28);
  if (v7 + 8 * v6 <= 0)
  {
    exception = __cxa_allocate_exception(8uLL);
    v50 = "Cannot read mdFrame.mRendererMetadataPresent";
    goto LABEL_64;
  }

  v11 = *(a4 + 24);
  v12 = v11 >> 31;
  v13 = v7 - 1;
  *(a4 + 28) = v7 - 1;
  if (v7 - 1 < 0)
  {
    v15 = *(a4 + 8);
    if ((v6 & ~(v6 >> 63) & 0xFFFFFFFC) == 0 || v15 > v5)
    {
      v17 = 4;
      v18 = v5;
      do
      {
        v19 = v11 << 8;
        *(a4 + 24) = v19;
        v20 = 255;
        if (v18 < v4 && v18 >= v15)
        {
          v20 = *v18;
        }

        v11 = v20 | v19;
        *(a4 + 24) = v11;
        v18 = (v18 + 1);
        --v17;
      }

      while (v17);
    }

    else
    {
      v11 = bswap32(*v5);
    }

    v21 = v11 << (1 - v7);
    v22 = v7 + 31;
    *(a4 + 28) = v22;
    *a4 = ++v5;
    v12 |= v11 >> v22;
    if (v22)
    {
      v14 = v21;
    }

    else
    {
      v14 = 0;
    }

    if (v22)
    {
      v13 = v22;
    }

    else
    {
      v13 = 0;
    }
  }

  else
  {
    v14 = 2 * v11;
  }

  *(a4 + 24) = v14;
  *(a2 + 1) = v12 != 0;
  if (v12)
  {
    if (a3)
    {
      if (v13 + 8 * (v4 - v5) <= 0)
      {
        exception = __cxa_allocate_exception(8uLL);
        v50 = "Cannot read glbCfg.mHasData";
        goto LABEL_64;
      }

      v23 = v14 >> 31;
      v24 = v13 - 1;
      *(a4 + 28) = v13 - 1;
      if (v13 - 1 < 0)
      {
        v26 = *(a4 + 8);
        if (((v4 - v5) & ~((v4 - v5) >> 63) & 0xFFFFFFFC) != 0 && v26 <= v5)
        {
          v14 = bswap32(*v5);
        }

        else
        {
          v27 = 4;
          v28 = v5;
          do
          {
            v29 = v14 << 8;
            *(a4 + 24) = v29;
            v30 = 255;
            if (v28 < v4 && v28 >= v26)
            {
              v30 = *v28;
            }

            v14 = v30 | v29;
            *(a4 + 24) = v14;
            v28 = (v28 + 1);
            --v27;
          }

          while (v27);
        }

        v32 = v13 + 31;
        v31 = v13 == -31;
        *(a4 + 28) = v13 + 31;
        *a4 = ++v5;
        v23 |= v14 >> (v13 + 31);
        if (v13 == -31)
        {
          v25 = 0;
        }

        else
        {
          v25 = v14 << (1 - v13);
        }

        if (v31)
        {
          v24 = 0;
        }

        else
        {
          v24 = v32;
        }
      }

      else
      {
        v25 = 2 * v14;
      }

      *(a4 + 24) = v25;
      *(a2 + 16) = v23 != 0;
      if (v23)
      {
        APAC::MetadataBitStreamParser::parseGlobalConfig(a1, a2 + 16, 0, a4);
        v4 = *(a4 + 16);
        v5 = *a4;
        v24 = *(a4 + 28);
      }

      if (v24 + 8 * (v4 - v5) <= 10)
      {
        exception = __cxa_allocate_exception(8uLL);
        v50 = "Cannot read mdFrame.mRendererMetadata.mGroupCount";
        goto LABEL_64;
      }

      v33 = *(a4 + 24);
      v34 = v33 >> 21;
      *(a4 + 28) = v24 - 11;
      if (v24 - 11 < 0)
      {
        v36 = *(a4 + 8);
        if (((v4 - v5) & ~((v4 - v5) >> 63) & 0xFFFFFFFC) != 0 && v36 <= v5)
        {
          v33 = bswap32(*v5);
        }

        else
        {
          v37 = 4;
          v38 = v5;
          do
          {
            v39 = v33 << 8;
            *(a4 + 24) = v39;
            v40 = 255;
            if (v38 < v4 && v38 >= v36)
            {
              v40 = *v38;
            }

            v33 = v40 | v39;
            *(a4 + 24) = v33;
            v38 = (v38 + 1);
            --v37;
          }

          while (v37);
        }

        v41 = v33 << (11 - v24);
        v42 = v24 + 21;
        *(a4 + 28) = v42;
        *a4 = v5 + 1;
        v34 |= v33 >> v42;
        if (v42)
        {
          v35 = v41;
        }

        else
        {
          v35 = 0;
        }
      }

      else
      {
        v35 = v33 << 11;
      }

      *(a4 + 24) = v35;
      *(a2 + 8) = v34;
      v43 = v34;
      std::vector<APAC::Metadata::GroupConfig>::resize((a2 + 4784), v43);
      if (v43)
      {
        v45 = 0;
        v46 = 0;
        v47 = 48 * v43;
        while (1)
        {
          v48 = *(a2 + 4784);
          if (0xAAAAAAAAAAAAAAABLL * ((*(a2 + 4792) - v48) >> 4) <= v46)
          {
            break;
          }

          APAC::MetadataBitStreamParser::parseGroupConfig(v44, v48 + v45, 0, a4);
          ++v46;
          v45 += 48;
          if (v47 == v45)
          {
            goto LABEL_60;
          }
        }

        exception = __cxa_allocate_exception(8uLL);
        v50 = "metadata.mMetadataFrame.mRendererMetadata.mGroupConfig does not have enough elements";
LABEL_64:
        *exception = v50;
        __cxa_throw(exception, MEMORY[0x1E69E53D8], 0);
      }
    }

LABEL_60:

    APAC::MetadataBitStreamParser::parseRendererMetadata(a1, a2 + 8, a4);
  }
}

void APAC::MetadataBitStreamParser::parseGlobalConfig(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v8 = *(a4 + 24);
  v7 = *(a4 + 28);
  v9 = v8 >> 21;
  *(a4 + 28) = v7 - 11;
  if (v7 - 11 < 0)
  {
    v12 = *(a4 + 8);
    v11 = *(a4 + 16);
    v13 = *a4;
    if (((v11 - *a4) & ~((v11 - *a4) >> 63) & 0xFFFFFFFC) == 0 || v12 > v13)
    {
      v15 = 4;
      v16 = *a4;
      do
      {
        v17 = v8 << 8;
        *(a4 + 24) = v17;
        v18 = 255;
        if (v16 < v11 && v16 >= v12)
        {
          v18 = *v16;
        }

        v8 = v18 | v17;
        *(a4 + 24) = v8;
        ++v16;
        --v15;
      }

      while (v15);
    }

    else
    {
      v8 = bswap32(*v13);
    }

    v19 = v8 << (11 - v7);
    v20 = v7 + 21;
    *(a4 + 28) = v20;
    *a4 = v13 + 4;
    v9 |= v8 >> v20;
    if (v20)
    {
      v10 = v19;
    }

    else
    {
      v10 = 0;
    }
  }

  else
  {
    v10 = v8 << 11;
  }

  *(a4 + 24) = v10;
  *(a2 + 2) = v9;
  if (v9)
  {
    v21 = 0;
    v22 = v9;
    do
    {
      v24 = *(a4 + 24);
      v23 = *(a4 + 28);
      v25 = v24 >> 21;
      v26 = v23 - 11;
      *(a4 + 28) = v23 - 11;
      if (v23 - 11 < 0)
      {
        v29 = *(a4 + 8);
        v28 = *(a4 + 16);
        v30 = *a4;
        if (((v28 - *a4) & ~((v28 - *a4) >> 63) & 0xFFFFFFFC) == 0 || v29 > v30)
        {
          v32 = 4;
          v33 = *a4;
          do
          {
            v34 = v24 << 8;
            *(a4 + 24) = v34;
            v35 = 255;
            if (v33 < v28 && v33 >= v29)
            {
              v35 = *v33;
            }

            v24 = v35 | v34;
            *(a4 + 24) = v24;
            ++v33;
            --v32;
          }

          while (v32);
        }

        else
        {
          v24 = bswap32(*v30);
        }

        v37 = v23 + 21;
        v36 = v23 == -21;
        *(a4 + 28) = v23 + 21;
        *a4 = v30 + 1;
        v25 |= v24 >> (v23 + 21);
        if (v23 == -21)
        {
          v27 = 0;
        }

        else
        {
          v27 = v24 << (11 - v23);
        }

        if (v36)
        {
          v26 = 0;
        }

        else
        {
          v26 = v37;
        }
      }

      else
      {
        v27 = v24 << 11;
      }

      *(a4 + 24) = v27;
      *(a2 + 4 + 2 * v21) = v25;
      switch(v25)
      {
        case 0u:
          v38 = *(a4 + 16);
          v39 = *a4;
          v40 = v38 - *a4;
          if (v26 + 8 * v40 <= 0)
          {
            exception = __cxa_allocate_exception(8uLL);
            v192 = "Cannot read glbCfg.mApplyPostProcReverb";
LABEL_271:
            *exception = v192;
            __cxa_throw(exception, MEMORY[0x1E69E53D8], 0);
          }

          v41 = v27 >> 31;
          *(a4 + 28) = v26 - 1;
          if (v26 - 1 < 0)
          {
            v105 = v40 & ~(v40 >> 63) & 0xFFFFFFFC;
            v106 = *(a4 + 8);
            if (v105)
            {
              v107 = v106 > v39;
            }

            else
            {
              v107 = 1;
            }

            if (v107)
            {
              v108 = 4;
              v109 = v39;
              do
              {
                v110 = v27 << 8;
                *(a4 + 24) = v110;
                v111 = 255;
                if (v109 < v38 && v109 >= v106)
                {
                  v111 = *v109;
                }

                v27 = v111 | v110;
                *(a4 + 24) = v27;
                v109 = (v109 + 1);
                --v108;
              }

              while (v108);
            }

            else
            {
              v27 = bswap32(*v39);
            }

            v155 = v27 << (1 - v26);
            v156 = v26 + 31;
            *(a4 + 28) = v156;
            *a4 = v39 + 1;
            v41 |= v27 >> v156;
            if (v156)
            {
              v42 = v155;
            }

            else
            {
              v42 = 0;
            }
          }

          else
          {
            v42 = 2 * v27;
          }

          *(a4 + 24) = v42;
          *(a2 + 4100) = v41 != 0;
          break;
        case 1u:
          v56 = *(a4 + 16);
          v57 = *a4;
          v58 = v56 - *a4;
          if (v26 + 8 * v58 <= 0)
          {
            exception = __cxa_allocate_exception(8uLL);
            v192 = "Cannot read glbCfg.mIs6DoF";
            goto LABEL_271;
          }

          v59 = v27 >> 31;
          *(a4 + 28) = v26 - 1;
          if (v26 - 1 < 0)
          {
            v112 = v58 & ~(v58 >> 63) & 0xFFFFFFFC;
            v113 = *(a4 + 8);
            if (v112)
            {
              v114 = v113 > v57;
            }

            else
            {
              v114 = 1;
            }

            if (v114)
            {
              v115 = 4;
              v116 = v57;
              do
              {
                v117 = v27 << 8;
                *(a4 + 24) = v117;
                v118 = 255;
                if (v116 < v56 && v116 >= v113)
                {
                  v118 = *v116;
                }

                v27 = v118 | v117;
                *(a4 + 24) = v27;
                v116 = (v116 + 1);
                --v115;
              }

              while (v115);
            }

            else
            {
              v27 = bswap32(*v57);
            }

            v157 = v27 << (1 - v26);
            v158 = v26 + 31;
            *(a4 + 28) = v158;
            *a4 = v57 + 1;
            v59 |= v27 >> v158;
            if (v158)
            {
              v60 = v157;
            }

            else
            {
              v60 = 0;
            }
          }

          else
          {
            v60 = 2 * v27;
          }

          *(a4 + 24) = v60;
          *(a2 + 4101) = v59 != 0;
          break;
        case 2u:
          v46 = *(a4 + 16);
          v47 = *a4;
          v48 = v46 - *a4;
          if (v26 + 8 * v48 <= 0)
          {
            exception = __cxa_allocate_exception(8uLL);
            v192 = "Cannot read glbCfg.mHasSceneRadiationPattern";
            goto LABEL_271;
          }

          v49 = v27 >> 31;
          *(a4 + 28) = v26 - 1;
          if (v26 - 1 < 0)
          {
            v91 = v48 & ~(v48 >> 63) & 0xFFFFFFFC;
            v92 = *(a4 + 8);
            if (v91)
            {
              v93 = v92 > v47;
            }

            else
            {
              v93 = 1;
            }

            if (v93)
            {
              v94 = 4;
              v95 = v47;
              do
              {
                v96 = v27 << 8;
                *(a4 + 24) = v96;
                v97 = 255;
                if (v95 < v46 && v95 >= v92)
                {
                  v97 = *v95;
                }

                v27 = v97 | v96;
                *(a4 + 24) = v27;
                v95 = (v95 + 1);
                --v94;
              }

              while (v94);
            }

            else
            {
              v27 = bswap32(*v47);
            }

            v151 = v27 << (1 - v26);
            v152 = v26 + 31;
            *(a4 + 28) = v152;
            *a4 = v47 + 1;
            v49 |= v27 >> v152;
            if (v152)
            {
              v50 = v151;
            }

            else
            {
              v50 = 0;
            }
          }

          else
          {
            v50 = 2 * v27;
          }

          *(a4 + 24) = v50;
          *(a2 + 4102) = v49 != 0;
          break;
        case 3u:
          v51 = *(a4 + 16);
          v52 = *a4;
          v53 = v51 - *a4;
          if (v26 + 8 * v53 <= 4)
          {
            exception = __cxa_allocate_exception(8uLL);
            v192 = "Cannot read glbCfg.mTargetPlaybackSystemIndex";
            goto LABEL_271;
          }

          v54 = v27 >> 27;
          *(a4 + 28) = v26 - 5;
          if (v26 - 5 < 0)
          {
            v98 = v53 & ~(v53 >> 63) & 0xFFFFFFFC;
            v99 = *(a4 + 8);
            if (v98)
            {
              v100 = v99 > v52;
            }

            else
            {
              v100 = 1;
            }

            if (v100)
            {
              v101 = 4;
              v102 = v52;
              do
              {
                v103 = v27 << 8;
                *(a4 + 24) = v103;
                v104 = 255;
                if (v102 < v51 && v102 >= v99)
                {
                  v104 = *v102;
                }

                v27 = v104 | v103;
                *(a4 + 24) = v27;
                v102 = (v102 + 1);
                --v101;
              }

              while (v101);
            }

            else
            {
              v27 = bswap32(*v52);
            }

            v153 = v27 << (5 - v26);
            v154 = v26 + 27;
            *(a4 + 28) = v154;
            *a4 = v52 + 1;
            v54 |= v27 >> v154;
            if (v154)
            {
              v55 = v153;
            }

            else
            {
              v55 = 0;
            }
          }

          else
          {
            v55 = 32 * v27;
          }

          *(a4 + 24) = v55;
          *(a2 + 4103) = v54;
          break;
        case 4u:
          APAC::MetadataBitStreamParser::parseAuthoringInformation(a1, (a2 + 4106), a4);
          break;
        case 5u:
          APAC::MetadataBitStreamParser::parseReferenceScreen(a1, a2 + 4116, a4);
          break;
        case 6u:
          a1 = APAC::MetadataBitStreamParser::parseDBMD(a1, (a2 + 4156), a4);
          break;
        case 7u:
          APAC::MetadataBitStreamParser::parseBinauralization(a1, a2 + 4480, a4);
          break;
        case 8u:
          v66 = *(a4 + 16);
          v67 = *a4;
          v68 = v66 - *a4;
          if (v26 + 8 * v68 <= 1)
          {
            exception = __cxa_allocate_exception(8uLL);
            v192 = "Cannot read glbCfg.mHCFilter.mDataLocationIndex";
            goto LABEL_271;
          }

          v69 = v27 >> 30;
          v70 = v26 - 2;
          *(a4 + 28) = v26 - 2;
          if (v26 - 2 < 0)
          {
            v126 = *(a4 + 8);
            if ((v68 & ~(v68 >> 63) & 0xFFFFFFFC) == 0 || v126 > v67)
            {
              v128 = 4;
              v129 = v67;
              do
              {
                v130 = v27 << 8;
                *(a4 + 24) = v130;
                v131 = 255;
                if (v129 < v66 && v129 >= v126)
                {
                  v131 = *v129;
                }

                v27 = v131 | v130;
                *(a4 + 24) = v27;
                v129 = (v129 + 1);
                --v128;
              }

              while (v128);
            }

            else
            {
              v27 = bswap32(*v67);
            }

            v161 = v27 << (2 - v26);
            v162 = v26 + 30;
            *(a4 + 28) = v162;
            *a4 = ++v67;
            v69 |= v27 >> v162;
            if (v162)
            {
              v71 = v161;
            }

            else
            {
              v71 = 0;
            }

            if (v162)
            {
              v70 = v162;
            }

            else
            {
              v70 = 0;
            }
          }

          else
          {
            v71 = 4 * v27;
          }

          *(a4 + 24) = v71;
          *(a2 + 4496) = v69;
          if (v70 + 8 * (v66 - v67) <= 8)
          {
            exception = __cxa_allocate_exception(8uLL);
            v192 = "Cannot read glbCfg.mHCFilter.mCustomData_TableID";
            goto LABEL_271;
          }

          v163 = v71 >> 23;
          v164 = v70 - 9;
          *(a4 + 28) = v70 - 9;
          if (v70 - 9 < 0)
          {
            v166 = *(a4 + 8);
            if (((v66 - v67) & ~((v66 - v67) >> 63) & 0xFFFFFFFC) != 0 && v166 <= v67)
            {
              v71 = bswap32(*v67);
            }

            else
            {
              v167 = 4;
              v168 = v67;
              do
              {
                v169 = v71 << 8;
                *(a4 + 24) = v169;
                v170 = 255;
                if (v168 < v66 && v168 >= v166)
                {
                  v170 = *v168;
                }

                v71 = v170 | v169;
                *(a4 + 24) = v71;
                v168 = (v168 + 1);
                --v167;
              }

              while (v167);
            }

            v172 = v70 + 23;
            v171 = v70 == -23;
            *(a4 + 28) = v70 + 23;
            *a4 = ++v67;
            v163 |= v71 >> (v70 + 23);
            if (v70 == -23)
            {
              v165 = 0;
            }

            else
            {
              v165 = v71 << (9 - v70);
            }

            if (v171)
            {
              v164 = 0;
            }

            else
            {
              v164 = v172;
            }
          }

          else
          {
            v165 = v71 << 9;
          }

          *(a4 + 24) = v165;
          *(a2 + 4498) = v163;
          if (v164 + 8 * (v66 - v67) <= 8)
          {
            exception = __cxa_allocate_exception(8uLL);
            v192 = "Cannot read glbCfg.mHCFilter.mCustomData_EntryID";
            goto LABEL_271;
          }

          v173 = v165 >> 23;
          *(a4 + 28) = v164 - 9;
          if (v164 - 9 < 0)
          {
            v175 = *(a4 + 8);
            if (((v66 - v67) & ~((v66 - v67) >> 63) & 0xFFFFFFFC) != 0 && v175 <= v67)
            {
              v165 = bswap32(*v67);
            }

            else
            {
              v176 = 4;
              v177 = v67;
              do
              {
                v178 = v165 << 8;
                *(a4 + 24) = v178;
                v179 = 255;
                if (v177 < v66 && v177 >= v175)
                {
                  v179 = *v177;
                }

                v165 = v179 | v178;
                *(a4 + 24) = v165;
                v177 = (v177 + 1);
                --v176;
              }

              while (v176);
            }

            v180 = v165 << (9 - v164);
            v181 = v164 + 23;
            *(a4 + 28) = v181;
            *a4 = v67 + 1;
            v173 |= v165 >> v181;
            if (v181)
            {
              v174 = v180;
            }

            else
            {
              v174 = 0;
            }
          }

          else
          {
            v174 = v165 << 9;
          }

          *(a4 + 24) = v174;
          *(a2 + 4500) = v173;
          break;
        case 9u:
          APAC::MetadataBitStreamParser::parseSPAD(a1, a2 + 4504, a3, a4);
          break;
        case 0xAu:
          APAC::MetadataBitStreamParser::parseDistanceAttenuation(a1, a2 + 4648, a4);
          break;
        case 0xBu:
          a1 = APAC::MetadataBitStreamParser::parsePosition(a1, a2 + 4668, a4);
          break;
        case 0xCu:
          APAC::MetadataBitStreamParser::parseGenericRenderingConfig(a1, a2 + 4716, a4);
          break;
        case 0xDu:
          v61 = *(a4 + 16);
          v62 = *a4;
          v63 = v61 - *a4;
          if (v26 + 8 * v63 <= 5)
          {
            exception = __cxa_allocate_exception(8uLL);
            v192 = "Cannot read glbCfg.mContentKind";
            goto LABEL_271;
          }

          v64 = v27 >> 26;
          *(a4 + 28) = v26 - 6;
          if (v26 - 6 < 0)
          {
            v119 = v63 & ~(v63 >> 63) & 0xFFFFFFFC;
            v120 = *(a4 + 8);
            if (v119)
            {
              v121 = v120 > v62;
            }

            else
            {
              v121 = 1;
            }

            if (v121)
            {
              v122 = 4;
              v123 = v62;
              do
              {
                v124 = v27 << 8;
                *(a4 + 24) = v124;
                v125 = 255;
                if (v123 < v61 && v123 >= v120)
                {
                  v125 = *v123;
                }

                v27 = v125 | v124;
                *(a4 + 24) = v27;
                v123 = (v123 + 1);
                --v122;
              }

              while (v122);
            }

            else
            {
              v27 = bswap32(*v62);
            }

            v159 = v27 << (6 - v26);
            v160 = v26 + 26;
            *(a4 + 28) = v160;
            *a4 = v62 + 1;
            v64 |= v27 >> v160;
            if (v160)
            {
              v65 = v159;
            }

            else
            {
              v65 = 0;
            }
          }

          else
          {
            v65 = v27 << 6;
          }

          *(a4 + 24) = v65;
          *(a2 + 4104) = v64;
          break;
        case 0xEu:
          v43 = v27 >> 28;
          v44 = v26 - 4;
          *(a4 + 28) = v26 - 4;
          if (v26 - 4 < 0)
          {
            v76 = *(a4 + 8);
            v75 = *(a4 + 16);
            v77 = *a4;
            if (((v75 - *a4) & ~((v75 - *a4) >> 63) & 0xFFFFFFFC) == 0 || v76 > v77)
            {
              v79 = 4;
              v80 = *a4;
              do
              {
                v81 = v27 << 8;
                *(a4 + 24) = v81;
                v82 = 255;
                if (v80 < v75 && v80 >= v76)
                {
                  v82 = *v80;
                }

                v27 = v82 | v81;
                *(a4 + 24) = v27;
                ++v80;
                --v79;
              }

              while (v79);
            }

            else
            {
              v27 = bswap32(*v77);
            }

            v132 = v27 << (4 - v26);
            v133 = v26 + 28;
            *(a4 + 28) = v133;
            *a4 = v77 + 1;
            v43 |= v27 >> v133;
            if (v133)
            {
              v45 = v132;
            }

            else
            {
              v45 = 0;
            }

            if (v133)
            {
              v44 = v133;
            }

            else
            {
              v44 = 0;
            }
          }

          else
          {
            v45 = 16 * v27;
          }

          *(a4 + 24) = v45;
          v134 = 8 * v43;
          if (8 * v43 - 25 >= 0xFFFFFFE0)
          {
            v136 = v134 + 8;
            v135 = v45 >> (24 - v134);
            v137 = v44 - v136;
            *(a4 + 28) = v44 - v136;
            if (v44 - v136 < 0)
            {
              v140 = *(a4 + 8);
              v139 = *(a4 + 16);
              v141 = *a4;
              if (((v139 - *a4) & ~((v139 - *a4) >> 63) & 0xFFFFFFFC) != 0 && v140 <= v141)
              {
                v45 = bswap32(*v141);
              }

              else
              {
                v182 = 4;
                v183 = *a4;
                do
                {
                  v184 = v45 << 8;
                  *(a4 + 24) = v184;
                  v185 = 255;
                  if (v183 < v139 && v183 >= v140)
                  {
                    v185 = *v183;
                  }

                  v45 = v185 | v184;
                  *(a4 + 24) = v45;
                  ++v183;
                  --v182;
                }

                while (v182);
              }

              *(a4 + 28) = v137 + 32;
              *a4 = v141 + 1;
              v135 |= v45 >> v137;
              if (v137 == -32)
              {
                v138 = 0;
              }

              else
              {
                v138 = v45 << -v137;
              }
            }

            else
            {
              v138 = v45 << v136;
            }

            *(a4 + 24) = v138;
          }

          else
          {
            LOBYTE(v135) = 0;
          }

          *(a2 + 4105) = v135;
          break;
        case 0xFu:
          APAC::MetadataBitStreamParser::parseChannelBedHeadphoneMetadata(a1, (a2 + 4736), a4);
          break;
        default:
          v72 = v27 >> 28;
          v73 = v26 - 4;
          *(a4 + 28) = v26 - 4;
          if (v26 - 4 < 0)
          {
            v84 = *(a4 + 8);
            v83 = *(a4 + 16);
            v85 = *a4;
            if (((v83 - *a4) & ~((v83 - *a4) >> 63) & 0xFFFFFFFC) == 0 || v84 > v85)
            {
              v87 = 4;
              v88 = *a4;
              do
              {
                v89 = v27 << 8;
                *(a4 + 24) = v89;
                v90 = 255;
                if (v88 < v83 && v88 >= v84)
                {
                  v90 = *v88;
                }

                v27 = v90 | v89;
                *(a4 + 24) = v27;
                ++v88;
                --v87;
              }

              while (v87);
            }

            else
            {
              v27 = bswap32(*v85);
            }

            v143 = v26 + 28;
            v142 = v26 == -28;
            *(a4 + 28) = v26 + 28;
            *a4 = v85 + 4;
            v72 |= v27 >> (v26 + 28);
            if (v26 == -28)
            {
              v74 = 0;
            }

            else
            {
              v74 = v27 << (4 - v26);
            }

            if (v142)
            {
              v73 = 0;
            }

            else
            {
              v73 = v143;
            }
          }

          else
          {
            v74 = 16 * v27;
          }

          *(a4 + 24) = v74;
          v144 = 8 * v72 + 8;
          v145 = v144 - v73;
          if (v144 > v73)
          {
            *(a4 + 24) = 0;
            v74 = 0;
            v73 = 0;
            if (v145 >= 0x20)
            {
              *a4 += (v145 >> 3) & 0x1FFFFFFC;
              v144 = v145 & 0x1F;
            }

            else
            {
              v144 = v145;
            }
          }

          if ((v144 - 33) >= 0xFFFFFFE0)
          {
            v146 = v73 - v144;
            *(a4 + 28) = v73 - v144;
            if (v73 - v144 < 0)
            {
              v149 = *(a4 + 8);
              v148 = *(a4 + 16);
              v150 = *a4;
              if (((v148 - *a4) & ~((v148 - *a4) >> 63) & 0xFFFFFFFC) != 0 && v149 <= v150)
              {
                v74 = bswap32(*v150);
              }

              else
              {
                v186 = 4;
                v187 = *a4;
                do
                {
                  v188 = v74 << 8;
                  *(a4 + 24) = v188;
                  v189 = 255;
                  if (v187 < v148 && v187 >= v149)
                  {
                    v189 = *v187;
                  }

                  v74 = v189 | v188;
                  *(a4 + 24) = v74;
                  ++v187;
                  --v186;
                }

                while (v186);
              }

              v147 = v74 << -v146;
              v190 = v146 + 32;
              *(a4 + 28) = v190;
              *a4 = v150 + 4;
              if (!v190)
              {
                v147 = 0;
              }
            }

            else
            {
              v147 = v74 << v144;
            }

            *(a4 + 24) = v147;
          }

          break;
      }

      ++v21;
    }

    while (v21 != v22);
  }
}

void std::vector<APAC::Metadata::GroupConfig>::resize(uint64_t *a1, unint64_t a2)
{
  v3 = *a1;
  v4 = a1[1];
  v5 = 0xAAAAAAAAAAAAAAABLL * ((v4 - *a1) >> 4);
  v6 = a2 - v5;
  if (a2 <= v5)
  {
    if (a2 < v5)
    {
      v11 = v3 + 48 * a2;
      while (v4 != v11)
      {
        v12 = *(v4 - 24);
        if (v12)
        {
          *(v4 - 16) = v12;
          operator delete(v12);
        }

        v4 -= 48;
      }

      a1[1] = v11;
    }
  }

  else
  {
    v7 = a1[2];
    if (0xAAAAAAAAAAAAAAABLL * ((v7 - v4) >> 4) < v6)
    {
      if (a2 <= 0x555555555555555)
      {
        v8 = 0xAAAAAAAAAAAAAAABLL * ((v7 - v3) >> 4);
        v9 = 2 * v8;
        if (2 * v8 <= a2)
        {
          v9 = a2;
        }

        if (v8 >= 0x2AAAAAAAAAAAAAALL)
        {
          v10 = 0x555555555555555;
        }

        else
        {
          v10 = v9;
        }

        if (v10 <= 0x555555555555555)
        {
          operator new();
        }

        std::__throw_bad_array_new_length[abi:ne200100]();
      }

      std::vector<APAC::UI18>::__throw_length_error[abi:ne200100]();
    }

    v13 = 48 * ((48 * v6 - 48) / 0x30) + 48;
    bzero(a1[1], v13);
    a1[1] = v4 + v13;
  }
}

void APAC::MetadataBitStreamParser::parseGroupConfig(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v7 = *(a4 + 24);
  v6 = *(a4 + 28);
  v8 = v7 >> 21;
  v9 = v6 - 11;
  *(a4 + 28) = v6 - 11;
  if (v6 - 11 < 0)
  {
    v13 = *(a4 + 8);
    v11 = *(a4 + 16);
    v14 = *a4;
    if (((v11 - *a4) & ~((v11 - *a4) >> 63) & 0xFFFFFFFC) == 0 || v13 > v14)
    {
      v16 = 4;
      v17 = *a4;
      do
      {
        v18 = v7 << 8;
        *(a4 + 24) = v18;
        v19 = 255;
        if (v17 < v11 && v17 >= v13)
        {
          v19 = *v17;
        }

        v7 = v19 | v18;
        *(a4 + 24) = v7;
        v17 = (v17 + 1);
        --v16;
      }

      while (v16);
    }

    else
    {
      v7 = bswap32(*v14);
    }

    v12 = v14 + 1;
    *a4 = v14 + 1;
    v9 = v6 + 21;
    *(a4 + 28) = v6 + 21;
    v8 |= v7 >> (v6 + 21);
    if (v6 == -21)
    {
      v10 = 0;
      *(a4 + 24) = 0;
    }

    else
    {
      v10 = v7 << (11 - v6);
      *(a4 + 24) = v10;
    }
  }

  else
  {
    v10 = v7 << 11;
    *(a4 + 24) = v10;
    v11 = *(a4 + 16);
    v12 = *a4;
  }

  *a2 = v8;
  if (v9 + 8 * (v11 - v12) <= 0)
  {
    exception = __cxa_allocate_exception(8uLL);
    v138 = "Cannot read gpCfg.mIsGlobal";
    goto LABEL_229;
  }

  v20 = v10 >> 31;
  v21 = v9 - 1;
  *(a4 + 28) = v9 - 1;
  if (v9 - 1 < 0)
  {
    v23 = *(a4 + 8);
    if (((v11 - v12) & ~((v11 - v12) >> 63) & 0xFFFFFFFC) == 0 || v23 > v12)
    {
      v25 = 4;
      v26 = v12;
      do
      {
        v27 = v10 << 8;
        *(a4 + 24) = v27;
        v28 = 255;
        if (v26 < v11 && v26 >= v23)
        {
          v28 = *v26;
        }

        v10 = v28 | v27;
        *(a4 + 24) = v10;
        v26 = (v26 + 1);
        --v25;
      }

      while (v25);
    }

    else
    {
      v10 = bswap32(*v12);
    }

    v30 = v9 + 31;
    v29 = v9 == -31;
    *(a4 + 28) = v9 + 31;
    *a4 = ++v12;
    v20 |= v10 >> (v9 + 31);
    if (v9 == -31)
    {
      v22 = 0;
    }

    else
    {
      v22 = v10 << (1 - v9);
    }

    if (v29)
    {
      v21 = 0;
    }

    else
    {
      v21 = v30;
    }
  }

  else
  {
    v22 = 2 * v10;
  }

  *(a4 + 24) = v22;
  *(a2 + 2) = v20 != 0;
  if (!v20)
  {
    if (v21 + 8 * (v11 - v12) <= 0)
    {
      exception = __cxa_allocate_exception(8uLL);
      v138 = "Cannot read gpCfg.mIsPerASC";
    }

    else
    {
      v31 = v22 >> 31;
      v32 = v21 - 1;
      *(a4 + 28) = v21 - 1;
      if (v21 - 1 < 0)
      {
        v34 = *(a4 + 8);
        if (((v11 - v12) & ~((v11 - v12) >> 63) & 0xFFFFFFFC) != 0 && v34 <= v12)
        {
          v22 = bswap32(*v12);
        }

        else
        {
          v35 = 4;
          v36 = v12;
          do
          {
            v37 = v22 << 8;
            *(a4 + 24) = v37;
            v38 = 255;
            if (v36 < v11 && v36 >= v34)
            {
              v38 = *v36;
            }

            v22 = v38 | v37;
            *(a4 + 24) = v22;
            v36 = (v36 + 1);
            --v35;
          }

          while (v35);
        }

        v39 = v22 << (1 - v21);
        v40 = v21 + 31;
        *a4 = ++v12;
        v31 |= v22 >> v40;
        if (v40)
        {
          v33 = v39;
        }

        else
        {
          v33 = 0;
        }

        if (v40)
        {
          v32 = v40;
        }

        else
        {
          v32 = 0;
        }
      }

      else
      {
        v33 = 2 * v22;
      }

      *(a2 + 3) = v31 != 0;
      v41 = v33 >> 21;
      v42 = v32 - 11;
      *(a4 + 24) = v33;
      *(a4 + 28) = v32 - 11;
      if (v31)
      {
        if (v42 < 0)
        {
          v45 = *(a4 + 8);
          if (((v11 - v12) & ~((v11 - v12) >> 63) & 0xFFFFFFFC) != 0 && v45 <= v12)
          {
            v33 = bswap32(*v12);
          }

          else
          {
            v47 = 4;
            v48 = v12;
            do
            {
              v49 = v33 << 8;
              *(a4 + 24) = v49;
              v50 = 255;
              if (v48 < v11 && v48 >= v45)
              {
                v50 = *v48;
              }

              v33 = v50 | v49;
              *(a4 + 24) = v33;
              v48 = (v48 + 1);
              --v47;
            }

            while (v47);
          }

          v52 = v32 + 21;
          v51 = v32 == -21;
          *(a4 + 28) = v32 + 21;
          *a4 = ++v12;
          v41 |= v33 >> (v32 + 21);
          if (v32 == -21)
          {
            v43 = 0;
          }

          else
          {
            v43 = v33 << (11 - v32);
          }

          if (v51)
          {
            v42 = 0;
          }

          else
          {
            v42 = v52;
          }
        }

        else
        {
          v43 = v33 << 11;
        }

        *(a4 + 24) = v43;
        *(a2 + 4) = v41;
        if (v42 + 8 * (v11 - v12) <= 2)
        {
          exception = __cxa_allocate_exception(8uLL);
          v138 = "Cannot read gpCfg.mASCType";
        }

        else
        {
          v53 = v43 >> 29;
          v54 = v42 - 3;
          *(a4 + 28) = v42 - 3;
          if (v42 - 3 < 0)
          {
            v56 = *(a4 + 8);
            if (((v11 - v12) & ~((v11 - v12) >> 63) & 0xFFFFFFFC) != 0 && v56 <= v12)
            {
              v43 = bswap32(*v12);
            }

            else
            {
              v57 = 4;
              v58 = v12;
              do
              {
                v59 = v43 << 8;
                *(a4 + 24) = v59;
                v60 = 255;
                if (v58 < v11 && v58 >= v56)
                {
                  v60 = *v58;
                }

                v43 = v60 | v59;
                *(a4 + 24) = v43;
                v58 = (v58 + 1);
                --v57;
              }

              while (v57);
            }

            v61 = v43 << (3 - v42);
            v62 = v42 + 29;
            *(a4 + 28) = v62;
            *a4 = ++v12;
            v53 |= v43 >> v62;
            if (v62)
            {
              v55 = v61;
            }

            else
            {
              v55 = 0;
            }

            if (v62)
            {
              v54 = v62;
            }

            else
            {
              v54 = 0;
            }
          }

          else
          {
            v55 = 8 * v43;
          }

          *(a4 + 24) = v55;
          *(a2 + 6) = v53;
          if (v53 == 2)
          {
            v68 = v55 >> 21;
            *(a4 + 28) = v54 - 11;
            if (v54 - 11 < 0)
            {
              v101 = *(a4 + 8);
              if (((v11 - v12) & ~((v11 - v12) >> 63) & 0xFFFFFFFC) != 0 && v101 <= v12)
              {
                v55 = bswap32(*v12);
              }

              else
              {
                v118 = 4;
                v119 = v12;
                do
                {
                  v120 = v55 << 8;
                  *(a4 + 24) = v120;
                  v121 = 255;
                  if (v119 < v11 && v119 >= v101)
                  {
                    v121 = *v119;
                  }

                  v55 = v121 | v120;
                  *(a4 + 24) = v55;
                  v119 = (v119 + 1);
                  --v118;
                }

                while (v118);
              }

              v69 = v55 << (11 - v54);
              v122 = v54 + 21;
              *(a4 + 28) = v122;
              *a4 = v12 + 1;
              v68 |= v55 >> v122;
              if (!v122)
              {
                v69 = 0;
              }
            }

            else
            {
              v69 = v55 << 11;
            }

            *(a4 + 24) = v69;
            *(a2 + 14) = v68;
            return;
          }

          if (v53 != 1)
          {
            if (!v53)
            {
              v63 = v55 >> 21;
              *(a4 + 28) = v54 - 11;
              if (v54 - 11 < 0)
              {
                v102 = *(a4 + 8);
                if (((v11 - v12) & ~((v11 - v12) >> 63) & 0xFFFFFFFC) != 0 && v102 <= v12)
                {
                  v55 = bswap32(*v12);
                }

                else
                {
                  v123 = 4;
                  v124 = v12;
                  do
                  {
                    v125 = v55 << 8;
                    *(a4 + 24) = v125;
                    v126 = 255;
                    if (v124 < v11 && v124 >= v102)
                    {
                      v126 = *v124;
                    }

                    v55 = v126 | v125;
                    *(a4 + 24) = v55;
                    v124 = (v124 + 1);
                    --v123;
                  }

                  while (v123);
                }

                v64 = v55 << (11 - v54);
                v127 = v54 + 21;
                *(a4 + 28) = v127;
                *a4 = v12 + 1;
                v63 |= v55 >> v127;
                if (!v127)
                {
                  v64 = 0;
                }
              }

              else
              {
                v64 = v55 << 11;
              }

              *(a4 + 24) = v64;
              *(a2 + 16) = v63;
            }

            return;
          }

          v65 = v55 >> 21;
          v66 = v54 - 11;
          *(a4 + 28) = v54 - 11;
          if (v54 - 11 < 0)
          {
            v100 = *(a4 + 8);
            if (((v11 - v12) & ~((v11 - v12) >> 63) & 0xFFFFFFFC) != 0 && v100 <= v12)
            {
              v55 = bswap32(*v12);
            }

            else
            {
              v108 = 4;
              v109 = v12;
              do
              {
                v110 = v55 << 8;
                *(a4 + 24) = v110;
                v111 = 255;
                if (v109 < v11 && v109 >= v100)
                {
                  v111 = *v109;
                }

                v55 = v111 | v110;
                *(a4 + 24) = v55;
                v109 = (v109 + 1);
                --v108;
              }

              while (v108);
            }

            v112 = v55 << (11 - v54);
            v113 = v54 + 21;
            *(a4 + 28) = v113;
            *a4 = ++v12;
            v65 |= v55 >> v113;
            if (v113)
            {
              v67 = v112;
            }

            else
            {
              v67 = 0;
            }

            if (v113)
            {
              v66 = v113;
            }

            else
            {
              v66 = 0;
            }
          }

          else
          {
            v67 = v55 << 11;
          }

          *(a4 + 24) = v67;
          *(a2 + 8) = v65;
          if (v66 + 8 * (v11 - v12) > 0)
          {
            v114 = v67 >> 31;
            v115 = v66 - 1;
            *(a4 + 28) = v66 - 1;
            if (v66 - 1 < 0)
            {
              v117 = *(a4 + 8);
              if (((v11 - v12) & ~((v11 - v12) >> 63) & 0xFFFFFFFC) != 0 && v117 <= v12)
              {
                v67 = bswap32(*v12);
              }

              else
              {
                v128 = 4;
                v129 = v12;
                do
                {
                  v130 = v67 << 8;
                  *(a4 + 24) = v130;
                  v131 = 255;
                  if (v129 < v11 && v129 >= v117)
                  {
                    v131 = *v129;
                  }

                  v67 = v131 | v130;
                  *(a4 + 24) = v67;
                  v129 = (v129 + 1);
                  --v128;
                }

                while (v128);
              }

              v116 = v67 << (1 - v66);
              v132 = v66 + 31;
              *(a4 + 28) = v132;
              *a4 = ++v12;
              v114 |= v67 >> v132;
              if (v132)
              {
                v115 = v132;
              }

              else
              {
                v116 = 0;
                v115 = 0;
              }
            }

            else
            {
              v116 = 2 * v67;
            }

            *(a4 + 24) = v116;
            *(a2 + 10) = v114 != 0;
            if (v114)
            {
              v133 = v116 >> 21;
              *(a4 + 28) = v115 - 11;
              if (v115 - 11 < 0)
              {
                AT::TBitstreamReader<unsigned int>::FillCacheFrom(a4, v12);
                *a4 += 4;
                v136 = *(a4 + 24);
                v135 = *(a4 + 28);
                v133 |= v136 >> v135;
                *(a4 + 28) = v135 + 32;
                if (v135 == -32)
                {
                  v134 = 0;
                }

                else
                {
                  v134 = v136 << -v135;
                }
              }

              else
              {
                v134 = v116 << 11;
              }

              *(a4 + 24) = v134;
              *(a2 + 12) = v133;
            }

            return;
          }

          exception = __cxa_allocate_exception(8uLL);
          v138 = "Cannot read gpCfg.mIsObjectInBed";
        }
      }

      else
      {
        if (v42 < 0)
        {
          v46 = *(a4 + 8);
          if (((v11 - v12) & ~((v11 - v12) >> 63) & 0xFFFFFFFC) != 0 && v46 <= v12)
          {
            v33 = bswap32(*v12);
          }

          else
          {
            v70 = 4;
            v71 = v12;
            do
            {
              v72 = v33 << 8;
              *(a4 + 24) = v72;
              v73 = 255;
              if (v71 < v11 && v71 >= v46)
              {
                v73 = *v71;
              }

              v33 = v73 | v72;
              *(a4 + 24) = v33;
              v71 = (v71 + 1);
              --v70;
            }

            while (v70);
          }

          v74 = v33 << (11 - v32);
          v75 = v32 + 21;
          *(a4 + 28) = v75;
          *a4 = ++v12;
          v41 |= v33 >> v75;
          if (v75)
          {
            v44 = v74;
          }

          else
          {
            v44 = 0;
          }

          if (v75)
          {
            v42 = v75;
          }

          else
          {
            v42 = 0;
          }
        }

        else
        {
          v44 = v33 << 11;
        }

        *(a4 + 24) = v44;
        *(a2 + 18) = v41;
        if (v42 + 8 * (v11 - v12) <= 0)
        {
          exception = __cxa_allocate_exception(8uLL);
          v138 = "Cannot read gpCfg.mHasConjunctMembers";
        }

        else
        {
          v76 = v44 >> 31;
          v77 = v42 - 1;
          *(a4 + 28) = v42 - 1;
          if (v42 - 1 < 0)
          {
            v79 = *(a4 + 8);
            if (((v11 - v12) & ~((v11 - v12) >> 63) & 0xFFFFFFFC) != 0 && v79 <= v12)
            {
              v44 = bswap32(*v12);
            }

            else
            {
              v80 = 4;
              v81 = v12;
              do
              {
                v82 = v44 << 8;
                *(a4 + 24) = v82;
                v83 = 255;
                if (v81 < v11 && v81 >= v79)
                {
                  v83 = *v81;
                }

                v44 = v83 | v82;
                *(a4 + 24) = v44;
                v81 = (v81 + 1);
                --v80;
              }

              while (v80);
            }

            v77 = v42 + 31;
            *(a4 + 28) = v42 + 31;
            *a4 = ++v12;
            v76 |= v44 >> (v42 + 31);
            if (v42 == -31)
            {
              v77 = 0;
              v78 = 0;
            }

            else
            {
              v78 = v44 << (1 - v42);
            }
          }

          else
          {
            v78 = 2 * v44;
          }

          *(a4 + 24) = v78;
          *(a2 + 20) = v76 != 0;
          if (v76)
          {
            v84 = v78 >> 21;
            *(a4 + 28) = v77 - 11;
            if (v77 - 11 < 0)
            {
              v99 = *(a4 + 8);
              if (((v11 - v12) & ~((v11 - v12) >> 63) & 0xFFFFFFFC) != 0 && v99 <= v12)
              {
                v78 = bswap32(*v12);
              }

              else
              {
                v103 = 4;
                v104 = v12;
                do
                {
                  v105 = v78 << 8;
                  *(a4 + 24) = v105;
                  v106 = 255;
                  if (v104 < v11 && v104 >= v99)
                  {
                    v106 = *v104;
                  }

                  v78 = v106 | v105;
                  *(a4 + 24) = v78;
                  v104 = (v104 + 1);
                  --v103;
                }

                while (v103);
              }

              v85 = v78 << (11 - v77);
              v107 = v77 + 21;
              *(a4 + 28) = v107;
              *a4 = v12 + 1;
              v84 |= v78 >> v107;
              if (!v107)
              {
                v85 = 0;
              }
            }

            else
            {
              v85 = v78 << 11;
            }

            *(a4 + 24) = v85;
            *(a2 + 22) = v84;
            return;
          }

          v86 = v41;
          v87 = *(a2 + 24);
          v88 = (*(a2 + 32) - v87) >> 1;
          if (v88 >= v86)
          {
            if (v88 > v86 && a3)
            {
              *(a2 + 32) = v87 + 2 * v86;
            }

            if (v86)
            {
              v89 = 0;
              v91 = *(a4 + 8);
              v90 = *(a4 + 16);
              do
              {
                v92 = v78 >> 21;
                *(a4 + 28) = v77 - 11;
                if (v77 - 11 < 0)
                {
                  if (((v90 - v12) & ~((v90 - v12) >> 63) & 0xFFFFFFFC) == 0 || v91 > v12)
                  {
                    v94 = 4;
                    v95 = v12;
                    do
                    {
                      v96 = v78 << 8;
                      *(a4 + 24) = v96;
                      v97 = 255;
                      if (v95 < v90 && v95 >= v91)
                      {
                        v97 = *v95;
                      }

                      v78 = v97 | v96;
                      *(a4 + 24) = v78;
                      v95 = (v95 + 1);
                      --v94;
                    }

                    while (v94);
                  }

                  else
                  {
                    v78 = bswap32(*v12);
                  }

                  v98 = v78 << (11 - v77);
                  v77 += 21;
                  *(a4 + 28) = v77;
                  *a4 = ++v12;
                  v92 |= v78 >> v77;
                  if (v77)
                  {
                    v78 = v98;
                  }

                  else
                  {
                    v78 = 0;
                  }

                  if (!v77)
                  {
                    v77 = 0;
                  }
                }

                else
                {
                  v78 <<= 11;
                  v77 -= 11;
                }

                *(a4 + 24) = v78;
                *(v87 + 2 * v89++) = v92;
              }

              while (v89 != v86);
            }

            return;
          }

          exception = __cxa_allocate_exception(8uLL);
          v138 = "error in parsing GroupConfig -- memberCount > mASCIDList size";
        }
      }
    }

LABEL_229:
    *exception = v138;
    __cxa_throw(exception, MEMORY[0x1E69E53D8], 0);
  }
}

void APAC::MetadataBitStreamParser::parseRendererMetadata(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = *(a3 + 16);
  v4 = *a3;
  v5 = v3 - *a3;
  v6 = *(a3 + 28);
  if (v6 + 8 * v5 <= 10)
  {
    exception = __cxa_allocate_exception(8uLL);
    *exception = "Cannot read rMd.mGroupCount";
    __cxa_throw(exception, MEMORY[0x1E69E53D8], 0);
  }

  v10 = *(a3 + 24);
  v11 = v10 >> 21;
  *(a3 + 28) = v6 - 11;
  if (v6 - 11 < 0)
  {
    v13 = v5 & ~(v5 >> 63) & 0xFFFFFFFC;
    v14 = *(a3 + 8);
    if (v13)
    {
      v15 = v14 > v4;
    }

    else
    {
      v15 = 1;
    }

    if (v15)
    {
      v16 = 4;
      v17 = v4;
      do
      {
        v18 = v10 << 8;
        *(a3 + 24) = v18;
        v19 = 255;
        if (v17 < v3 && v17 >= v14)
        {
          v19 = *v17;
        }

        v10 = v19 | v18;
        *(a3 + 24) = v10;
        v17 = (v17 + 1);
        --v16;
      }

      while (v16);
    }

    else
    {
      v10 = bswap32(*v4);
    }

    v20 = v10 << (11 - v6);
    v21 = v6 + 21;
    *(a3 + 28) = v21;
    *a3 = v4 + 1;
    v11 |= v10 >> v21;
    if (v21)
    {
      v12 = v20;
    }

    else
    {
      v12 = 0;
    }
  }

  else
  {
    v12 = v10 << 11;
  }

  *(a3 + 24) = v12;
  *a2 = v11;
  v22 = v11;
  v23 = *(a2 + 4808);
  v24 = *(a2 + 4800);
  v25 = 0xB81DC085AE2E9061 * (&v23[-v24] >> 3);
  v26 = v22 - v25;
  if (v22 <= v25)
  {
    if (v22 < v25)
    {
      v30 = (v24 + 40200 * v22);
      if (v23 != v30)
      {
        v31 = (v23 - 1248);
        do
        {
          v32 = -40192;
          v33 = v31;
          do
          {
            APAC::Metadata::RendererData::~RendererData(v33);
            v33 = (v34 - 1256);
            v32 += 1256;
          }

          while (v32);
          v23 -= 40200;
          v31 = (v31 - 40200);
        }

        while (v23 != v30);
      }

      *(a2 + 4808) = v30;
    }

    if (v22)
    {
      goto LABEL_38;
    }
  }

  else
  {
    v27 = *(a2 + 4816);
    if (0xB81DC085AE2E9061 * ((v27 - v23) >> 3) < v26)
    {
      v28 = 0x703B810B5C5D20C2 * ((v27 - v24) >> 3);
      if (v28 <= v22)
      {
        v28 = v22;
      }

      if (0xB81DC085AE2E9061 * ((v27 - v24) >> 3) >= 0xD0ABFDC22706)
      {
        v29 = 0x1A157FB844E0CLL;
      }

      else
      {
        v29 = v28;
      }

      if (v29 <= 0x1A157FB844E0CLL)
      {
        operator new();
      }

      std::__throw_bad_array_new_length[abi:ne200100]();
    }

    v35 = &v23[40200 * v26];
    v36 = 40200 * v22 - 8 * (&v23[-v24] >> 3);
    do
    {
      _ZNSt3__116allocator_traitsINS_9allocatorIN4APAC8Metadata9GroupDataEEEE9constructB8ne200100IS4_JEvLi0EEEvRS5_PT_DpOT0_(v23);
      v23 += 40200;
      v36 -= 40200;
    }

    while (v36);
    *(a2 + 4808) = v35;
    if (v22)
    {
LABEL_38:
      v37 = 0;
      do
      {
        APAC::MetadataBitStreamParser::parseGroupData(a1, *(a2 + 4800) + v37, a3);
        v37 += 40200;
      }

      while (40200 * v22 != v37);
    }
  }
}

void APAC::MetadataBitStreamParser::parseGroupData(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = *(a3 + 16);
  v4 = *a3;
  v5 = v3 - *a3;
  v6 = *(a3 + 28);
  if (v6 + 8 * v5 <= 0)
  {
    exception = __cxa_allocate_exception(8uLL);
    v43 = "Cannot read gpData.mHasData";
    goto LABEL_59;
  }

  v9 = *(a3 + 24);
  v10 = v9 >> 31;
  v11 = v6 - 1;
  *(a3 + 28) = v6 - 1;
  if (v6 - 1 < 0)
  {
    v13 = *(a3 + 8);
    if ((v5 & ~(v5 >> 63) & 0xFFFFFFFC) == 0 || v13 > v4)
    {
      v15 = 4;
      v16 = v4;
      do
      {
        v17 = v9 << 8;
        *(a3 + 24) = v17;
        v18 = 255;
        if (v16 < v3 && v16 >= v13)
        {
          v18 = *v16;
        }

        v9 = v18 | v17;
        *(a3 + 24) = v9;
        v16 = (v16 + 1);
        --v15;
      }

      while (v15);
    }

    else
    {
      v9 = bswap32(*v4);
    }

    v19 = v9 << (1 - v6);
    v20 = v6 + 31;
    *(a3 + 28) = v20;
    *a3 = ++v4;
    v10 |= v9 >> v20;
    if (v20)
    {
      v12 = v19;
    }

    else
    {
      v12 = 0;
    }

    if (v20)
    {
      v11 = v20;
    }

    else
    {
      v11 = 0;
    }
  }

  else
  {
    v12 = 2 * v9;
  }

  *(a3 + 24) = v12;
  *a2 = v10 != 0;
  if (v10)
  {
    if (v11 + 8 * (v3 - v4) <= 10)
    {
      exception = __cxa_allocate_exception(8uLL);
      v43 = "Cannot read gpData.mGroupID";
    }

    else
    {
      v21 = v12 >> 21;
      v22 = v11 - 11;
      *(a3 + 28) = v11 - 11;
      if (v11 - 11 < 0)
      {
        v24 = *(a3 + 8);
        if (((v3 - v4) & ~((v3 - v4) >> 63) & 0xFFFFFFFC) != 0 && v24 <= v4)
        {
          v12 = bswap32(*v4);
        }

        else
        {
          v25 = 4;
          v26 = v4;
          do
          {
            v27 = v12 << 8;
            *(a3 + 24) = v27;
            v28 = 255;
            if (v26 < v3 && v26 >= v24)
            {
              v28 = *v26;
            }

            v12 = v28 | v27;
            *(a3 + 24) = v12;
            v26 = (v26 + 1);
            --v25;
          }

          while (v25);
        }

        v29 = v12 << (11 - v11);
        v30 = v11 + 21;
        *(a3 + 28) = v30;
        *a3 = ++v4;
        v21 |= v12 >> v30;
        if (v30)
        {
          v23 = v29;
        }

        else
        {
          v23 = 0;
        }

        if (v30)
        {
          v22 = v30;
        }

        else
        {
          v22 = 0;
        }
      }

      else
      {
        v23 = v12 << 11;
      }

      *(a3 + 24) = v23;
      *(a2 + 2) = v21;
      if (v22 + 8 * (v3 - v4) > 5)
      {
        v31 = v23 >> 26;
        *(a3 + 28) = v22 - 6;
        if (v22 - 6 < 0)
        {
          v33 = *(a3 + 8);
          if (((v3 - v4) & ~((v3 - v4) >> 63) & 0xFFFFFFFC) != 0 && v33 <= v4)
          {
            v23 = bswap32(*v4);
          }

          else
          {
            v34 = 4;
            v35 = v4;
            do
            {
              v36 = v23 << 8;
              *(a3 + 24) = v36;
              v37 = 255;
              if (v35 < v3 && v35 >= v33)
              {
                v37 = *v35;
              }

              v23 = v37 | v36;
              *(a3 + 24) = v23;
              v35 = (v35 + 1);
              --v34;
            }

            while (v34);
          }

          v38 = v23 << (6 - v22);
          v39 = v22 + 26;
          *(a3 + 28) = v39;
          *a3 = v4 + 1;
          v31 |= v23 >> v39;
          if (v39)
          {
            v32 = v38;
          }

          else
          {
            v32 = 0;
          }
        }

        else
        {
          v32 = v23 << 6;
        }

        *(a3 + 24) = v32;
        *(a2 + 4) = v31;
        v40 = v31;
        if (v31)
        {
          v41 = a2 + 8;
          do
          {
            APAC::MetadataBitStreamParser::parseBlockData(a1, v41, a3);
            v41 += 1256;
            --v40;
          }

          while (v40);
        }

        return;
      }

      exception = __cxa_allocate_exception(8uLL);
      v43 = "Cannot read gpData.mNumBlocks";
    }

LABEL_59:
    *exception = v43;
    __cxa_throw(exception, MEMORY[0x1E69E53D8], 0);
  }
}

void APAC::MetadataBitStreamParser::parseBlockData(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = *(a3 + 16);
  v4 = *a3;
  v5 = v3 - *a3;
  v6 = *(a3 + 28);
  if (v6 + 8 * v5 <= 9)
  {
    exception = __cxa_allocate_exception(8uLL);
    v40 = "Cannot read blkMd.mRtime";
    goto LABEL_59;
  }

  v7 = *(a3 + 24);
  v8 = v7 >> 22;
  v9 = v6 - 10;
  *(a3 + 28) = v6 - 10;
  if (v6 - 10 < 0)
  {
    v11 = *(a3 + 8);
    if ((v5 & ~(v5 >> 63) & 0xFFFFFFFC) == 0 || v11 > v4)
    {
      v13 = 4;
      v14 = v4;
      do
      {
        v15 = v7 << 8;
        *(a3 + 24) = v15;
        v16 = 255;
        if (v14 < v3 && v14 >= v11)
        {
          v16 = *v14;
        }

        v7 = v16 | v15;
        *(a3 + 24) = v7;
        v14 = (v14 + 1);
        --v13;
      }

      while (v13);
    }

    else
    {
      v7 = bswap32(*v4);
    }

    v17 = v7 << (10 - v6);
    v18 = v6 + 22;
    *(a3 + 28) = v18;
    *a3 = ++v4;
    v8 |= v7 >> v18;
    if (v18)
    {
      v10 = v17;
    }

    else
    {
      v10 = 0;
    }

    if (v18)
    {
      v9 = v18;
    }

    else
    {
      v9 = 0;
    }
  }

  else
  {
    v10 = v7 << 10;
  }

  *(a3 + 24) = v10;
  *a2 = v8;
  if (v9 + 8 * (v3 - v4) <= 0)
  {
    exception = __cxa_allocate_exception(8uLL);
    v40 = "Cannot read blkMd.mHasInterpolationLength";
    goto LABEL_59;
  }

  v19 = v10 >> 31;
  v20 = v9 - 1;
  *(a3 + 28) = v9 - 1;
  if (v9 - 1 < 0)
  {
    v22 = *(a3 + 8);
    if (((v3 - v4) & ~((v3 - v4) >> 63) & 0xFFFFFFFC) != 0 && v22 <= v4)
    {
      v10 = bswap32(*v4);
    }

    else
    {
      v23 = 4;
      v24 = v4;
      do
      {
        v25 = v10 << 8;
        *(a3 + 24) = v25;
        v26 = 255;
        if (v24 < v3 && v24 >= v22)
        {
          v26 = *v24;
        }

        v10 = v26 | v25;
        *(a3 + 24) = v10;
        v24 = (v24 + 1);
        --v23;
      }

      while (v23);
    }

    v28 = v9 + 31;
    v27 = v9 == -31;
    *(a3 + 28) = v9 + 31;
    *a3 = ++v4;
    v19 |= v10 >> (v9 + 31);
    if (v9 == -31)
    {
      v21 = 0;
    }

    else
    {
      v21 = v10 << (1 - v9);
    }

    if (v27)
    {
      v20 = 0;
    }

    else
    {
      v20 = v28;
    }
  }

  else
  {
    v21 = 2 * v10;
  }

  *(a3 + 24) = v21;
  *(a2 + 2) = v19 != 0;
  if (v19)
  {
    if (v20 + 8 * (v3 - v4) > 10)
    {
      v29 = v21 >> 21;
      *(a3 + 28) = v20 - 11;
      if (v20 - 11 < 0)
      {
        v31 = *(a3 + 8);
        if (((v3 - v4) & ~((v3 - v4) >> 63) & 0xFFFFFFFC) != 0 && v31 <= v4)
        {
          v21 = bswap32(*v4);
        }

        else
        {
          v32 = 4;
          v33 = v4;
          do
          {
            v34 = v21 << 8;
            *(a3 + 24) = v34;
            v35 = 255;
            if (v33 < v3 && v33 >= v31)
            {
              v35 = *v33;
            }

            v21 = v35 | v34;
            *(a3 + 24) = v21;
            v33 = (v33 + 1);
            --v32;
          }

          while (v32);
        }

        v36 = v21 << (11 - v20);
        v37 = v20 + 21;
        *(a3 + 28) = v37;
        *a3 = v4 + 1;
        v29 |= v21 >> v37;
        if (v37)
        {
          v30 = v36;
        }

        else
        {
          v30 = 0;
        }
      }

      else
      {
        v30 = v21 << 11;
      }

      *(a3 + 24) = v30;
      *(a2 + 4) = v29;
      goto LABEL_53;
    }

    exception = __cxa_allocate_exception(8uLL);
    v40 = "Cannot read blkMd.mInterpolationLength";
LABEL_59:
    *exception = v40;
    __cxa_throw(exception, MEMORY[0x1E69E53D8], 0);
  }

LABEL_53:
  v38 = a2 + 8;

  APAC::MetadataBitStreamParser::parseRendererData(a1, v38, 0, a3);
}

void APAC::MetadataBitStreamParser::parseRendererData(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v8 = *(a4 + 24);
  v7 = *(a4 + 28);
  v9 = v8 >> 21;
  *(a4 + 28) = v7 - 11;
  if (v7 - 11 < 0)
  {
    v12 = *(a4 + 8);
    v11 = *(a4 + 16);
    v13 = *a4;
    if (((v11 - *a4) & ~((v11 - *a4) >> 63) & 0xFFFFFFFC) == 0 || v12 > v13)
    {
      v15 = 4;
      v16 = *a4;
      do
      {
        v17 = v8 << 8;
        *(a4 + 24) = v17;
        v18 = 255;
        if (v16 < v11 && v16 >= v12)
        {
          v18 = *v16;
        }

        v8 = v18 | v17;
        *(a4 + 24) = v8;
        v16 = (v16 + 1);
        --v15;
      }

      while (v15);
    }

    else
    {
      v8 = bswap32(*v13);
    }

    v19 = v8 << (11 - v7);
    v20 = v7 + 21;
    *(a4 + 28) = v20;
    *a4 = v13 + 1;
    v9 |= v8 >> v20;
    if (v20)
    {
      v10 = v19;
    }

    else
    {
      v10 = 0;
    }
  }

  else
  {
    v10 = v8 << 11;
  }

  *(a4 + 24) = v10;
  if (v9 >= 0x21)
  {
    exception = __cxa_allocate_exception(8uLL);
    v259 = "error in parsing RendererData -- numParams > ParamIndexList size";
    goto LABEL_387;
  }

  *(a2 + 2) = v9;
  if (v9)
  {
    v21 = 0;
    v22 = v9;
    do
    {
      v24 = *(a4 + 24);
      v23 = *(a4 + 28);
      v25 = v24 >> 21;
      v26 = v23 - 11;
      *(a4 + 28) = v23 - 11;
      if (v23 - 11 < 0)
      {
        v29 = *(a4 + 8);
        v28 = *(a4 + 16);
        v30 = *a4;
        if (((v28 - *a4) & ~((v28 - *a4) >> 63) & 0xFFFFFFFC) == 0 || v29 > v30)
        {
          v32 = 4;
          v33 = *a4;
          do
          {
            v34 = v24 << 8;
            *(a4 + 24) = v34;
            v35 = 255;
            if (v33 < v28 && v33 >= v29)
            {
              v35 = *v33;
            }

            v24 = v35 | v34;
            *(a4 + 24) = v24;
            v33 = (v33 + 1);
            --v32;
          }

          while (v32);
        }

        else
        {
          v24 = bswap32(*v30);
        }

        v37 = v23 + 21;
        v36 = v23 == -21;
        *(a4 + 28) = v23 + 21;
        *a4 = v30 + 1;
        v25 |= v24 >> (v23 + 21);
        if (v23 == -21)
        {
          v27 = 0;
        }

        else
        {
          v27 = v24 << (11 - v23);
        }

        if (v36)
        {
          v26 = 0;
        }

        else
        {
          v26 = v37;
        }
      }

      else
      {
        v27 = v24 << 11;
      }

      *(a4 + 24) = v27;
      *(a2 + 4 + 2 * v21) = v25;
      switch(v25)
      {
        case 0u:
          v38 = a2 + 68;
          goto LABEL_106;
        case 1u:
          APAC::MetadataBitStreamParser::parseObjectSpread(a1, a2 + 116, a4);
          break;
        case 2u:
          v60 = *(a4 + 16);
          v61 = *a4;
          v62 = v60 - *a4;
          if (v26 + 8 * v62 <= 31)
          {
            exception = __cxa_allocate_exception(8uLL);
            v259 = "Cannot read rData.mGain";
            goto LABEL_387;
          }

          *(a4 + 28) = v26 - 32;
          if (v26 - 32 < 0)
          {
            v63 = v62 & ~(v62 >> 63) & 0xFFFFFFFC;
            v64 = *(a4 + 8);
            if (v63)
            {
              v65 = v64 > v61;
            }

            else
            {
              v65 = 1;
            }

            if (v65)
            {
              v66 = 4;
              v67 = v61;
              v203 = v27;
              do
              {
                v68 = v203 << 8;
                *(a4 + 24) = v68;
                v69 = 255;
                if (v67 < v60 && v67 >= v64)
                {
                  v69 = *v67;
                }

                v203 = v69 | v68;
                *(a4 + 24) = v203;
                v67 = (v67 + 1);
                --v66;
              }

              while (v66);
            }

            else
            {
              v203 = bswap32(*v61);
            }

            *a4 = v61 + 1;
            v27 |= v203 >> v26;
            v204 = v203 << -v26;
            if (!v26)
            {
              v204 = 0;
            }

            *(a4 + 24) = v204;
            *(a4 + 28) = v26;
          }

          *(a2 + 132) = v27;
          break;
        case 3u:
          v75 = *(a4 + 16);
          v76 = *a4;
          v77 = v75 - *a4;
          if (v26 + 8 * v77 <= 31)
          {
            exception = __cxa_allocate_exception(8uLL);
            v259 = "Cannot read rData.mObjectDiffuse";
            goto LABEL_387;
          }

          *(a4 + 28) = v26 - 32;
          if (v26 - 32 < 0)
          {
            v78 = v77 & ~(v77 >> 63) & 0xFFFFFFFC;
            v79 = *(a4 + 8);
            if (v78)
            {
              v80 = v79 > v76;
            }

            else
            {
              v80 = 1;
            }

            if (v80)
            {
              v81 = 4;
              v82 = v76;
              v207 = v27;
              do
              {
                v83 = v207 << 8;
                *(a4 + 24) = v83;
                v84 = 255;
                if (v82 < v75 && v82 >= v79)
                {
                  v84 = *v82;
                }

                v207 = v84 | v83;
                *(a4 + 24) = v207;
                v82 = (v82 + 1);
                --v81;
              }

              while (v81);
            }

            else
            {
              v207 = bswap32(*v76);
            }

            *a4 = v76 + 1;
            v27 |= v207 >> v26;
            v208 = v207 << -v26;
            if (!v26)
            {
              v208 = 0;
            }

            *(a4 + 24) = v208;
            *(a4 + 28) = v26;
          }

          *(a2 + 136) = v27;
          break;
        case 4u:
          APAC::MetadataBitStreamParser::parseObjectChannelLock(a1, a2 + 140, a4);
          break;
        case 5u:
          APAC::MetadataBitStreamParser::parseObjectDivergence(a1, a2 + 148, a4);
          break;
        case 6u:
          v96 = *(a4 + 16);
          v97 = *a4;
          v98 = v96 - *a4;
          if (v26 + 8 * v98 <= 0)
          {
            exception = __cxa_allocate_exception(8uLL);
            v259 = "Cannot read rData.mIsScreenSizeAdaptationEnabled";
            goto LABEL_387;
          }

          v99 = v27 >> 31;
          *(a4 + 28) = v26 - 1;
          if (v26 - 1 < 0)
          {
            v170 = v98 & ~(v98 >> 63) & 0xFFFFFFFC;
            v171 = *(a4 + 8);
            if (v170)
            {
              v172 = v171 > v97;
            }

            else
            {
              v172 = 1;
            }

            if (v172)
            {
              v173 = 4;
              v174 = v97;
              do
              {
                v175 = v27 << 8;
                *(a4 + 24) = v175;
                v176 = 255;
                if (v174 < v96 && v174 >= v171)
                {
                  v176 = *v174;
                }

                v27 = v176 | v175;
                *(a4 + 24) = v27;
                v174 = (v174 + 1);
                --v173;
              }

              while (v173);
            }

            else
            {
              v27 = bswap32(*v97);
            }

            v217 = v27 << (1 - v26);
            v218 = v26 + 31;
            *(a4 + 28) = v218;
            *a4 = v97 + 1;
            v99 |= v27 >> v218;
            if (v218)
            {
              v100 = v217;
            }

            else
            {
              v100 = 0;
            }
          }

          else
          {
            v100 = 2 * v27;
          }

          *(a4 + 24) = v100;
          *(a2 + 168) = v99 != 0;
          break;
        case 7u:
          APAC::MetadataBitStreamParser::parseZoneExclusion(a1, (a2 + 172), a4);
          break;
        case 8u:
          v101 = *(a4 + 16);
          v102 = *a4;
          v103 = v101 - *a4;
          if (v26 + 8 * v103 <= 2)
          {
            exception = __cxa_allocate_exception(8uLL);
            v259 = "Cannot read rData.mBinauralizationPreset";
            goto LABEL_387;
          }

          v104 = v27 >> 29;
          *(a4 + 28) = v26 - 3;
          if (v26 - 3 < 0)
          {
            v177 = v103 & ~(v103 >> 63) & 0xFFFFFFFC;
            v178 = *(a4 + 8);
            if (v177)
            {
              v179 = v178 > v102;
            }

            else
            {
              v179 = 1;
            }

            if (v179)
            {
              v180 = 4;
              v181 = v102;
              do
              {
                v182 = v27 << 8;
                *(a4 + 24) = v182;
                v183 = 255;
                if (v181 < v101 && v181 >= v178)
                {
                  v183 = *v181;
                }

                v27 = v183 | v182;
                *(a4 + 24) = v27;
                v181 = (v181 + 1);
                --v180;
              }

              while (v180);
            }

            else
            {
              v27 = bswap32(*v102);
            }

            v219 = v27 << (3 - v26);
            v220 = v26 + 29;
            *(a4 + 28) = v220;
            *a4 = v102 + 1;
            v104 |= v27 >> v220;
            if (v220)
            {
              v105 = v219;
            }

            else
            {
              v105 = 0;
            }
          }

          else
          {
            v105 = 8 * v27;
          }

          *(a4 + 24) = v105;
          *(a2 + 1037) = v104;
          break;
        case 9u:
          APAC::MetadataBitStreamParser::parseSceneReverb(a1, a2 + 568, a4);
          break;
        case 0xAu:
          APAC::MetadataBitStreamParser::parsePostProcReverb(a1, a2 + 780, a4);
          break;
        case 0xBu:
          APAC::MetadataBitStreamParser::parseRadiationPattern(a1, a2 + 792, a3, a4);
          break;
        case 0xCu:
          v54 = *(a4 + 16);
          v55 = *a4;
          v56 = v54 - *a4;
          if (v26 + 8 * v56 <= 0)
          {
            exception = __cxa_allocate_exception(8uLL);
            v259 = "Cannot read rData.mHPVirtualize.mBypass";
            goto LABEL_387;
          }

          v57 = v27 >> 31;
          v58 = v26 - 1;
          *(a4 + 28) = v26 - 1;
          if (v26 - 1 < 0)
          {
            v144 = *(a4 + 8);
            if ((v56 & ~(v56 >> 63) & 0xFFFFFFFC) == 0 || v144 > v55)
            {
              v146 = 4;
              v147 = v55;
              do
              {
                v148 = v27 << 8;
                *(a4 + 24) = v148;
                v149 = 255;
                if (v147 < v54 && v147 >= v144)
                {
                  v149 = *v147;
                }

                v27 = v149 | v148;
                *(a4 + 24) = v27;
                v147 = (v147 + 1);
                --v146;
              }

              while (v146);
            }

            else
            {
              v27 = bswap32(*v55);
            }

            v198 = v26 + 31;
            v197 = v26 == -31;
            *(a4 + 28) = v26 + 31;
            *a4 = ++v55;
            v57 |= v27 >> (v26 + 31);
            if (v26 == -31)
            {
              v59 = 0;
            }

            else
            {
              v59 = v27 << (1 - v26);
            }

            if (v197)
            {
              v58 = 0;
            }

            else
            {
              v58 = v198;
            }
          }

          else
          {
            v59 = 2 * v27;
          }

          *(a4 + 24) = v59;
          *(a2 + 1024) = v57 != 0;
          if (v58 + 8 * (v54 - v55) <= 0)
          {
            exception = __cxa_allocate_exception(8uLL);
            v259 = "Cannot read rData.mHPVirtualize.mHasDRR";
            goto LABEL_387;
          }

          v199 = v59 >> 31;
          v200 = v58 - 1;
          *(a4 + 28) = v58 - 1;
          if (v58 - 1 < 0)
          {
            v202 = *(a4 + 8);
            if (((v54 - v55) & ~((v54 - v55) >> 63) & 0xFFFFFFFC) != 0 && v202 <= v55)
            {
              v59 = bswap32(*v55);
            }

            else
            {
              v225 = 4;
              v226 = v55;
              do
              {
                v227 = v59 << 8;
                *(a4 + 24) = v227;
                v228 = 255;
                if (v226 < v54 && v226 >= v202)
                {
                  v228 = *v226;
                }

                v59 = v228 | v227;
                *(a4 + 24) = v59;
                v226 = (v226 + 1);
                --v225;
              }

              while (v225);
            }

            v229 = v59 << (1 - v58);
            v230 = v58 + 31;
            *(a4 + 28) = v230;
            *a4 = ++v55;
            v199 |= v59 >> v230;
            if (v230)
            {
              v201 = v229;
            }

            else
            {
              v201 = 0;
            }

            if (v230)
            {
              v200 = v230;
            }

            else
            {
              v200 = 0;
            }
          }

          else
          {
            v201 = 2 * v59;
          }

          *(a4 + 24) = v201;
          *(a2 + 1025) = v199 != 0;
          if (!v199)
          {
            break;
          }

          if (v200 + 8 * (v54 - v55) <= 31)
          {
            exception = __cxa_allocate_exception(8uLL);
            v259 = "Cannot read rData.mHPVirtualize.mDRR";
LABEL_387:
            *exception = v259;
            __cxa_throw(exception, MEMORY[0x1E69E53D8], 0);
          }

          *(a4 + 28) = v200 - 32;
          if (v200 - 32 < 0)
          {
            v231 = *(a4 + 8);
            if (((v54 - v55) & ~((v54 - v55) >> 63) & 0xFFFFFFFC) != 0 && v231 <= v55)
            {
              v232 = bswap32(*v55);
            }

            else
            {
              v248 = 4;
              v249 = v55;
              v232 = v201;
              do
              {
                v250 = v232 << 8;
                *(a4 + 24) = v250;
                v251 = 255;
                if (v249 < v54 && v249 >= v231)
                {
                  v251 = *v249;
                }

                v232 = v251 | v250;
                *(a4 + 24) = v232;
                v249 = (v249 + 1);
                --v248;
              }

              while (v248);
            }

            *a4 = v55 + 1;
            v201 |= v232 >> v200;
            v252 = v232 << -v200;
            if (!v200)
            {
              v252 = 0;
            }

            *(a4 + 24) = v252;
            *(a4 + 28) = v200;
          }

          *(a2 + 1028) = v201;
          break;
        case 0xDu:
          v90 = *(a4 + 16);
          v91 = *a4;
          v92 = v90 - *a4;
          if (v26 + 8 * v92 <= 0)
          {
            exception = __cxa_allocate_exception(8uLL);
            v259 = "Cannot read rData.mHeadLock.mHeadLocked";
            goto LABEL_387;
          }

          v93 = v27 >> 31;
          v94 = v26 - 1;
          *(a4 + 28) = v26 - 1;
          if (v26 - 1 < 0)
          {
            v164 = *(a4 + 8);
            if ((v92 & ~(v92 >> 63) & 0xFFFFFFFC) == 0 || v164 > v91)
            {
              v166 = 4;
              v167 = v91;
              do
              {
                v168 = v27 << 8;
                *(a4 + 24) = v168;
                v169 = 255;
                if (v167 < v90 && v167 >= v164)
                {
                  v169 = *v167;
                }

                v27 = v169 | v168;
                *(a4 + 24) = v27;
                v167 = (v167 + 1);
                --v166;
              }

              while (v166);
            }

            else
            {
              v27 = bswap32(*v91);
            }

            v211 = v27 << (1 - v26);
            v212 = v26 + 31;
            *(a4 + 28) = v212;
            *a4 = ++v91;
            v93 |= v27 >> v212;
            if (v212)
            {
              v95 = v211;
            }

            else
            {
              v95 = 0;
            }

            if (v212)
            {
              v94 = v212;
            }

            else
            {
              v94 = 0;
            }
          }

          else
          {
            v95 = 2 * v27;
          }

          *(a4 + 24) = v95;
          *(a2 + 1032) = v93 != 0;
          if (v94 + 8 * (v90 - v91) <= 0)
          {
            exception = __cxa_allocate_exception(8uLL);
            v259 = "Cannot read rData.mHeadLock.mIsExternalized";
            goto LABEL_387;
          }

          v213 = v95 >> 31;
          v214 = v94 - 1;
          *(a4 + 28) = v94 - 1;
          if (v94 - 1 < 0)
          {
            v216 = *(a4 + 8);
            if (((v90 - v91) & ~((v90 - v91) >> 63) & 0xFFFFFFFC) != 0 && v216 <= v91)
            {
              v95 = bswap32(*v91);
            }

            else
            {
              v233 = 4;
              v234 = v91;
              do
              {
                v235 = v95 << 8;
                *(a4 + 24) = v235;
                v236 = 255;
                if (v234 < v90 && v234 >= v216)
                {
                  v236 = *v234;
                }

                v95 = v236 | v235;
                *(a4 + 24) = v95;
                v234 = (v234 + 1);
                --v233;
              }

              while (v233);
            }

            v238 = v94 + 31;
            v237 = v94 == -31;
            *(a4 + 28) = v94 + 31;
            *a4 = ++v91;
            v213 |= v95 >> (v94 + 31);
            if (v94 == -31)
            {
              v215 = 0;
            }

            else
            {
              v215 = v95 << (1 - v94);
            }

            if (v237)
            {
              v214 = 0;
            }

            else
            {
              v214 = v238;
            }
          }

          else
          {
            v215 = 2 * v95;
          }

          *(a4 + 24) = v215;
          *(a2 + 1033) = v213 != 0;
          if (v214 + 8 * (v90 - v91) <= 2)
          {
            exception = __cxa_allocate_exception(8uLL);
            v259 = "Cannot read rData.mHeadLock.mReference";
            goto LABEL_387;
          }

          v239 = v215 >> 29;
          *(a4 + 28) = v214 - 3;
          if (v214 - 3 < 0)
          {
            v241 = *(a4 + 8);
            if (((v90 - v91) & ~((v90 - v91) >> 63) & 0xFFFFFFFC) != 0 && v241 <= v91)
            {
              v215 = bswap32(*v91);
            }

            else
            {
              v242 = 4;
              v243 = v91;
              do
              {
                v244 = v215 << 8;
                *(a4 + 24) = v244;
                v245 = 255;
                if (v243 < v90 && v243 >= v241)
                {
                  v245 = *v243;
                }

                v215 = v245 | v244;
                *(a4 + 24) = v215;
                v243 = (v243 + 1);
                --v242;
              }

              while (v242);
            }

            v246 = v215 << (3 - v214);
            v247 = v214 + 29;
            *(a4 + 28) = v247;
            *a4 = v91 + 1;
            v239 |= v215 >> v247;
            if (v247)
            {
              v240 = v246;
            }

            else
            {
              v240 = 0;
            }
          }

          else
          {
            v240 = 8 * v215;
          }

          *(a4 + 24) = v240;
          *(a2 + 1034) = v239;
          break;
        case 0xEu:
          v49 = *(a4 + 16);
          v50 = *a4;
          v51 = v49 - *a4;
          if (v26 + 8 * v51 <= 0)
          {
            exception = __cxa_allocate_exception(8uLL);
            v259 = "Cannot read rData.mParallax";
            goto LABEL_387;
          }

          v52 = v27 >> 31;
          *(a4 + 28) = v26 - 1;
          if (v26 - 1 < 0)
          {
            v137 = v51 & ~(v51 >> 63) & 0xFFFFFFFC;
            v138 = *(a4 + 8);
            if (v137)
            {
              v139 = v138 > v50;
            }

            else
            {
              v139 = 1;
            }

            if (v139)
            {
              v140 = 4;
              v141 = v50;
              do
              {
                v142 = v27 << 8;
                *(a4 + 24) = v142;
                v143 = 255;
                if (v141 < v49 && v141 >= v138)
                {
                  v143 = *v141;
                }

                v27 = v143 | v142;
                *(a4 + 24) = v27;
                v141 = (v141 + 1);
                --v140;
              }

              while (v140);
            }

            else
            {
              v27 = bswap32(*v50);
            }

            v195 = v27 << (1 - v26);
            v196 = v26 + 31;
            *(a4 + 28) = v196;
            *a4 = v50 + 1;
            v52 |= v27 >> v196;
            if (v196)
            {
              v53 = v195;
            }

            else
            {
              v53 = 0;
            }
          }

          else
          {
            v53 = 2 * v27;
          }

          *(a4 + 24) = v53;
          *(a2 + 1035) = v52 != 0;
          break;
        case 0xFu:
          v70 = *(a4 + 16);
          v71 = *a4;
          v72 = v70 - *a4;
          if (v26 + 8 * v72 <= 2)
          {
            exception = __cxa_allocate_exception(8uLL);
            v259 = "Cannot read rData.mPreferredDoF.mDoFIndex";
            goto LABEL_387;
          }

          v73 = v27 >> 29;
          *(a4 + 28) = v26 - 3;
          if (v26 - 3 < 0)
          {
            v150 = v72 & ~(v72 >> 63) & 0xFFFFFFFC;
            v151 = *(a4 + 8);
            if (v150)
            {
              v152 = v151 > v71;
            }

            else
            {
              v152 = 1;
            }

            if (v152)
            {
              v153 = 4;
              v154 = v71;
              do
              {
                v155 = v27 << 8;
                *(a4 + 24) = v155;
                v156 = 255;
                if (v154 < v70 && v154 >= v151)
                {
                  v156 = *v154;
                }

                v27 = v156 | v155;
                *(a4 + 24) = v27;
                v154 = (v154 + 1);
                --v153;
              }

              while (v153);
            }

            else
            {
              v27 = bswap32(*v71);
            }

            v205 = v27 << (3 - v26);
            v206 = v26 + 29;
            *(a4 + 28) = v206;
            *a4 = v71 + 1;
            v73 |= v27 >> v206;
            if (v206)
            {
              v74 = v205;
            }

            else
            {
              v74 = 0;
            }
          }

          else
          {
            v74 = 8 * v27;
          }

          *(a4 + 24) = v74;
          *(a2 + 1036) = v73;
          break;
        case 0x10u:
          v39 = *(a4 + 16);
          v40 = *a4;
          v41 = v39 - *a4;
          if (v26 + 8 * v41 <= 31)
          {
            exception = __cxa_allocate_exception(8uLL);
            v259 = "Cannot read rData.mFieldOfView.mAzimuth";
            goto LABEL_387;
          }

          *(a4 + 28) = v26 - 32;
          if (v26 - 32 < 0)
          {
            v42 = v41 & ~(v41 >> 63) & 0xFFFFFFFC;
            v43 = *(a4 + 8);
            if (v42)
            {
              v44 = v43 > v40;
            }

            else
            {
              v44 = 1;
            }

            if (v44)
            {
              v45 = 4;
              v46 = v40;
              v193 = v27;
              do
              {
                v47 = v193 << 8;
                *(a4 + 24) = v47;
                v48 = 255;
                if (v46 < v39 && v46 >= v43)
                {
                  v48 = *v46;
                }

                v193 = v48 | v47;
                *(a4 + 24) = v193;
                v46 = (v46 + 1);
                --v45;
              }

              while (v45);
            }

            else
            {
              v193 = bswap32(*v40);
            }

            *a4 = v40 + 1;
            v27 |= v193 >> v26;
            v194 = v193 << -v26;
            if (!v26)
            {
              v194 = 0;
            }

            *(a4 + 24) = v194;
            *(a4 + 28) = v26;
          }

          *(a2 + 1040) = v27;
          break;
        case 0x11u:
          APAC::MetadataBitStreamParser::parseMaskingZone(a1, a2 + 1044, a4);
          break;
        case 0x12u:
          v38 = a2 + 1096;
          goto LABEL_106;
        case 0x13u:
          v106 = *(a4 + 16);
          v107 = *a4;
          v108 = v106 - *a4;
          if (v26 + 8 * v108 <= 31)
          {
            exception = __cxa_allocate_exception(8uLL);
            v259 = "Cannot read rData.mHOA_Radius";
            goto LABEL_387;
          }

          *(a4 + 28) = v26 - 32;
          if (v26 - 32 < 0)
          {
            v109 = v108 & ~(v108 >> 63) & 0xFFFFFFFC;
            v110 = *(a4 + 8);
            if (v109)
            {
              v111 = v110 > v107;
            }

            else
            {
              v111 = 1;
            }

            if (v111)
            {
              v112 = 4;
              v113 = v107;
              v221 = v27;
              do
              {
                v114 = v221 << 8;
                *(a4 + 24) = v114;
                v115 = 255;
                if (v113 < v106 && v113 >= v110)
                {
                  v115 = *v113;
                }

                v221 = v115 | v114;
                *(a4 + 24) = v221;
                v113 = (v113 + 1);
                --v112;
              }

              while (v112);
            }

            else
            {
              v221 = bswap32(*v107);
            }

            *a4 = v107 + 1;
            v27 |= v221 >> v26;
            v222 = v221 << -v26;
            if (!v26)
            {
              v222 = 0;
            }

            *(a4 + 24) = v222;
            *(a4 + 28) = v26;
          }

          *(a2 + 1144) = v27;
          break;
        case 0x14u:
          v38 = a2 + 1148;
LABEL_106:
          a1 = APAC::MetadataBitStreamParser::parsePosition(a1, v38, a4);
          break;
        case 0x15u:
          v85 = *(a4 + 16);
          v86 = *a4;
          v87 = v85 - *a4;
          if (v26 + 8 * v87 <= 0)
          {
            exception = __cxa_allocate_exception(8uLL);
            v259 = "Cannot read rData.mHOA_InteriorOrExterior";
            goto LABEL_387;
          }

          v88 = v27 >> 31;
          *(a4 + 28) = v26 - 1;
          if (v26 - 1 < 0)
          {
            v157 = v87 & ~(v87 >> 63) & 0xFFFFFFFC;
            v158 = *(a4 + 8);
            if (v157)
            {
              v159 = v158 > v86;
            }

            else
            {
              v159 = 1;
            }

            if (v159)
            {
              v160 = 4;
              v161 = v86;
              do
              {
                v162 = v27 << 8;
                *(a4 + 24) = v162;
                v163 = 255;
                if (v161 < v85 && v161 >= v158)
                {
                  v163 = *v161;
                }

                v27 = v163 | v162;
                *(a4 + 24) = v27;
                v161 = (v161 + 1);
                --v160;
              }

              while (v160);
            }

            else
            {
              v27 = bswap32(*v86);
            }

            v209 = v27 << (1 - v26);
            v210 = v26 + 31;
            *(a4 + 28) = v210;
            *a4 = v86 + 1;
            v88 |= v27 >> v210;
            if (v210)
            {
              v89 = v209;
            }

            else
            {
              v89 = 0;
            }
          }

          else
          {
            v89 = 2 * v27;
          }

          *(a4 + 24) = v89;
          *(a2 + 1196) = v88 != 0;
          break;
        case 0x16u:
          APAC::MetadataBitStreamParser::parseHOARenderingMatrix(a1, a2 + 1200, a3, a4);
          break;
        case 0x17u:
          v116 = *(a4 + 16);
          v117 = *a4;
          v118 = v116 - *a4;
          if (v26 + 8 * v118 <= 31)
          {
            exception = __cxa_allocate_exception(8uLL);
            v259 = "Cannot read rData.mNFCRefDist";
            goto LABEL_387;
          }

          *(a4 + 28) = v26 - 32;
          if (v26 - 32 < 0)
          {
            v119 = v118 & ~(v118 >> 63) & 0xFFFFFFFC;
            v120 = *(a4 + 8);
            if (v119)
            {
              v121 = v120 > v117;
            }

            else
            {
              v121 = 1;
            }

            if (v121)
            {
              v122 = 4;
              v123 = v117;
              v223 = v27;
              do
              {
                v124 = v223 << 8;
                *(a4 + 24) = v124;
                v125 = 255;
                if (v123 < v116 && v123 >= v120)
                {
                  v125 = *v123;
                }

                v223 = v125 | v124;
                *(a4 + 24) = v223;
                v123 = (v123 + 1);
                --v122;
              }

              while (v122);
            }

            else
            {
              v223 = bswap32(*v117);
            }

            *a4 = v117 + 1;
            v27 |= v223 >> v26;
            v224 = v223 << -v26;
            if (!v26)
            {
              v224 = 0;
            }

            *(a4 + 24) = v224;
            *(a4 + 28) = v26;
          }

          *(a2 + 1240) = v27;
          break;
        case 0x18u:
          APAC::MetadataBitStreamParser::parsePropagationDelay(a1, a2 + 1244, a4);
          break;
        default:
          v126 = v27 >> 15;
          v127 = v26 - 17;
          *(a4 + 28) = v26 - 17;
          if (v26 - 17 < 0)
          {
            v130 = *(a4 + 8);
            v129 = *(a4 + 16);
            v131 = *a4;
            if (((v129 - *a4) & ~((v129 - *a4) >> 63) & 0xFFFFFFFC) == 0 || v130 > v131)
            {
              v133 = 4;
              v134 = *a4;
              do
              {
                v135 = v27 << 8;
                *(a4 + 24) = v135;
                v136 = 255;
                if (v134 < v129 && v134 >= v130)
                {
                  v136 = *v134;
                }

                v27 = v136 | v135;
                *(a4 + 24) = v27;
                v134 = (v134 + 1);
                --v133;
              }

              while (v133);
            }

            else
            {
              v27 = bswap32(*v131);
            }

            v185 = v26 + 15;
            v184 = v26 == -15;
            *(a4 + 28) = v26 + 15;
            *a4 = v131 + 1;
            v126 |= v27 >> (v26 + 15);
            if (v26 == -15)
            {
              v128 = 0;
            }

            else
            {
              v128 = v27 << (17 - v26);
            }

            if (v184)
            {
              v127 = 0;
            }

            else
            {
              v127 = v185;
            }
          }

          else
          {
            v128 = v27 << 17;
          }

          *(a4 + 24) = v128;
          v186 = 8 * v126 + 8;
          v187 = v186 - v127;
          if (v186 > v127)
          {
            *(a4 + 24) = 0;
            v128 = 0;
            v127 = 0;
            if (v187 >= 0x20)
            {
              *a4 += (v187 >> 3) & 0x1FFFFFFC;
              v186 = v187 & 0x1F;
            }

            else
            {
              v186 = v187;
            }
          }

          if ((v186 - 33) >= 0xFFFFFFE0)
          {
            v188 = v127 - v186;
            *(a4 + 28) = v127 - v186;
            if (v127 - v186 < 0)
            {
              v191 = *(a4 + 8);
              v190 = *(a4 + 16);
              v192 = *a4;
              if (((v190 - *a4) & ~((v190 - *a4) >> 63) & 0xFFFFFFFC) != 0 && v191 <= v192)
              {
                v128 = bswap32(*v192);
              }

              else
              {
                v253 = 4;
                v254 = *a4;
                do
                {
                  v255 = v128 << 8;
                  *(a4 + 24) = v255;
                  v256 = 255;
                  if (v254 < v190 && v254 >= v191)
                  {
                    v256 = *v254;
                  }

                  v128 = v256 | v255;
                  *(a4 + 24) = v128;
                  v254 = (v254 + 1);
                  --v253;
                }

                while (v253);
              }

              v189 = v128 << -v188;
              v257 = v188 + 32;
              *(a4 + 28) = v257;
              *a4 = v192 + 1;
              if (!v257)
              {
                v189 = 0;
              }
            }

            else
            {
              v189 = v128 << v186;
            }

            *(a4 + 24) = v189;
          }

          break;
      }

      ++v21;
    }

    while (v21 != v22);
  }
}

uint64_t APAC::MetadataBitStreamParser::parsePosition(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = *(a3 + 16);
  v4 = *a3;
  v5 = v3 - *a3;
  v6 = *(a3 + 28);
  if (v6 + 8 * v5 <= 0)
  {
    exception = __cxa_allocate_exception(8uLL);
    v76 = "Cannot read pos.mPositionPresent";
    goto LABEL_98;
  }

  v9 = *(a3 + 24);
  v10 = v9 >> 31;
  *(a3 + 28) = v6 - 1;
  if (v6 - 1 < 0)
  {
    v12 = v5 & ~(v5 >> 63) & 0xFFFFFFFC;
    v13 = *(a3 + 8);
    if (v12)
    {
      v14 = v13 > v4;
    }

    else
    {
      v14 = 1;
    }

    if (v14)
    {
      v15 = 4;
      v16 = v4;
      do
      {
        v17 = v9 << 8;
        *(a3 + 24) = v17;
        v18 = 255;
        if (v16 < v3 && v16 >= v13)
        {
          v18 = *v16;
        }

        v9 = v18 | v17;
        *(a3 + 24) = v9;
        ++v16;
        --v15;
      }

      while (v15);
    }

    else
    {
      v9 = bswap32(*v4);
    }

    v19 = v9 << (1 - v6);
    v20 = v6 + 31;
    *(a3 + 28) = v20;
    *a3 = v4 + 4;
    v10 |= v9 >> v20;
    if (v20)
    {
      v11 = v19;
    }

    else
    {
      v11 = 0;
    }
  }

  else
  {
    v11 = 2 * v9;
  }

  *(a3 + 24) = v11;
  *a2 = v10 != 0;
  if (v10)
  {
    Bit = AT::TBitstreamReader<unsigned int>::GetBit(a3);
    *(a2 + 1) = Bit;
    v22 = *(a3 + 16);
    if (Bit)
    {
      v23 = 0;
      v25 = *(a3 + 24);
      v24 = *(a3 + 28);
      v26 = *a3;
      v27 = *(a3 + 8);
      while (v24 + 8 * (v22 - v26) > 31)
      {
        *(a3 + 28) = v24 - 32;
        if (v24 - 32 < 0)
        {
          if (((v22 - v26) & ~((v22 - v26) >> 63) & 0xFFFFFFFC) != 0 && v27 <= v26)
          {
            v29 = bswap32(*v26);
          }

          else
          {
            v30 = 4;
            v31 = v26;
            v29 = v25;
            do
            {
              v32 = v29 << 8;
              *(a3 + 24) = v32;
              v33 = 255;
              if (v31 < v22 && v31 >= v27)
              {
                v33 = *v31;
              }

              v29 = v33 | v32;
              *(a3 + 24) = v29;
              ++v31;
              --v30;
            }

            while (v30);
          }

          v26 += 4;
          *a3 = v26;
          v28 = (v29 >> v24) | v25;
          v25 = v29 << -v24;
          if (!v24)
          {
            v25 = 0;
          }

          *(a3 + 24) = v25;
          *(a3 + 28) = v24;
        }

        else
        {
          v24 -= 32;
          v28 = v25;
        }

        *(a2 + 20 + 4 * v23++) = v28;
        if (v23 == 3)
        {
          goto LABEL_78;
        }
      }

      exception = __cxa_allocate_exception(8uLL);
      v76 = "Cannot read pos.mCoordinate[n]";
LABEL_98:
      *exception = v76;
      __cxa_throw(exception, MEMORY[0x1E69E53D8], 0);
    }

    v34 = *a3;
    v35 = v22 - *a3;
    v36 = *(a3 + 28);
    if (v36 + 8 * v35 <= 31)
    {
      exception = __cxa_allocate_exception(8uLL);
      v76 = "Cannot read pos.mAzimuth";
      goto LABEL_98;
    }

    v37 = *(a3 + 24);
    *(a3 + 28) = v36 - 32;
    if (v36 - 32 < 0)
    {
      v40 = v35 & ~(v35 >> 63);
      v41 = *(a3 + 8);
      if ((v40 & 0xFFFFFFFC) != 0 && v41 <= v34)
      {
        v42 = bswap32(*v34);
      }

      else
      {
        v43 = 4;
        v44 = v34;
        v42 = v37;
        do
        {
          v45 = v42 << 8;
          *(a3 + 24) = v45;
          v46 = 255;
          if (v44 < v22 && v44 >= v41)
          {
            v46 = *v44;
          }

          v42 = v46 | v45;
          *(a3 + 24) = v42;
          ++v44;
          --v43;
        }

        while (v43);
      }

      v34 += 4;
      *a3 = v34;
      v39 = (v42 >> v36) | v37;
      v37 = v42 << -v36;
      if (!v36)
      {
        v37 = 0;
      }

      *(a3 + 24) = v37;
      *(a3 + 28) = v36;
      v35 = v22 - v34;
      v38 = 8 * (v22 - v34);
    }

    else
    {
      v38 = 8 * v35;
      v36 -= 32;
      v39 = v37;
    }

    *(a2 + 4) = v39;
    if (v38 + v36 <= 31)
    {
      exception = __cxa_allocate_exception(8uLL);
      v76 = "Cannot read pos.mElevation";
      goto LABEL_98;
    }

    *(a3 + 28) = v36 - 32;
    if (v36 - 32 < 0)
    {
      v48 = v35 & ~(v35 >> 63);
      v49 = *(a3 + 8);
      if ((v48 & 0xFFFFFFFC) != 0 && v49 <= v34)
      {
        v50 = bswap32(*v34);
      }

      else
      {
        v51 = 4;
        v52 = v34;
        v50 = v37;
        do
        {
          v53 = v50 << 8;
          *(a3 + 24) = v53;
          v54 = 255;
          if (v52 < v22 && v52 >= v49)
          {
            v54 = *v52;
          }

          v50 = v54 | v53;
          *(a3 + 24) = v50;
          ++v52;
          --v51;
        }

        while (v51);
      }

      v34 += 4;
      *a3 = v34;
      v47 = (v50 >> v36) | v37;
      v37 = v50 << -v36;
      if (!v36)
      {
        v37 = 0;
      }

      *(a3 + 24) = v37;
      *(a3 + 28) = v36;
      v35 = v22 - v34;
      v38 = 8 * (v22 - v34);
    }

    else
    {
      v36 -= 32;
      v47 = v37;
    }

    *(a2 + 8) = v47;
    if (v38 + v36 <= 31)
    {
      exception = __cxa_allocate_exception(8uLL);
      v76 = "Cannot read pos.mRadius";
      goto LABEL_98;
    }

    *(a3 + 28) = v36 - 32;
    if (v36 - 32 < 0)
    {
      v55 = v35 & ~(v35 >> 63);
      v56 = *(a3 + 8);
      if ((v55 & 0xFFFFFFFC) != 0 && v56 <= v34)
      {
        v57 = bswap32(*v34);
      }

      else
      {
        v58 = 4;
        v59 = v34;
        v57 = v37;
        do
        {
          v60 = v57 << 8;
          *(a3 + 24) = v60;
          v61 = 255;
          if (v59 < v22 && v59 >= v56)
          {
            v61 = *v59;
          }

          v57 = v61 | v60;
          *(a3 + 24) = v57;
          ++v59;
          --v58;
        }

        while (v58);
      }

      *a3 = v34 + 4;
      v37 |= v57 >> v36;
      v62 = v57 << -v36;
      if (!v36)
      {
        v62 = 0;
      }

      *(a3 + 24) = v62;
      *(a3 + 28) = v36;
    }

    *(a2 + 12) = v37;
  }

LABEL_78:
  result = AT::TBitstreamReader<unsigned int>::GetBit(a3);
  *(a2 + 16) = result;
  if (result)
  {
    v64 = 0;
    v66 = *(a3 + 8);
    v65 = *(a3 + 16);
    v68 = *(a3 + 24);
    v67 = *(a3 + 28);
    v69 = *a3;
    while (v67 + 8 * (v65 - v69) > 31)
    {
      *(a3 + 28) = v67 - 32;
      if (v67 - 32 < 0)
      {
        if (((v65 - v69) & ~((v65 - v69) >> 63) & 0xFFFFFFFC) != 0 && v66 <= v69)
        {
          v71 = bswap32(*v69);
        }

        else
        {
          v72 = 4;
          v73 = v69;
          v71 = v68;
          do
          {
            v74 = v71 << 8;
            *(a3 + 24) = v74;
            result = 255;
            if (v73 < v65 && v73 >= v66)
            {
              result = *v73;
            }

            v71 = result | v74;
            *(a3 + 24) = v71;
            ++v73;
            --v72;
          }

          while (v72);
        }

        v69 += 4;
        *a3 = v69;
        v70 = (v71 >> v67) | v68;
        v68 = v71 << -v67;
        if (!v67)
        {
          v68 = 0;
        }

        *(a3 + 24) = v68;
        *(a3 + 28) = v67;
      }

      else
      {
        v67 -= 32;
        v70 = v68;
      }

      *(a2 + 32 + 4 * v64++) = v70;
      if (v64 == 4)
      {
        return result;
      }
    }

    exception = __cxa_allocate_exception(8uLL);
    v76 = "Cannot read pos.mQuaternion[n]";
    goto LABEL_98;
  }

  return result;
}

void APAC::MetadataBitStreamParser::parseObjectSpread(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = *(a3 + 16);
  v4 = *a3;
  v5 = v3 - *a3;
  v6 = *(a3 + 28);
  if (v6 + 8 * v5 <= 0)
  {
    exception = __cxa_allocate_exception(8uLL);
    v53 = "Cannot read spread.mIsCartesian";
    goto LABEL_86;
  }

  v7 = *(a3 + 24);
  v8 = v7 >> 31;
  v9 = v6 - 1;
  *(a3 + 28) = v6 - 1;
  if (v6 - 1 < 0)
  {
    v11 = *(a3 + 8);
    if ((v5 & ~(v5 >> 63) & 0xFFFFFFFC) == 0 || v11 > v4)
    {
      v13 = 4;
      v14 = v4;
      do
      {
        v15 = v7 << 8;
        *(a3 + 24) = v15;
        v16 = 255;
        if (v14 < v3 && v14 >= v11)
        {
          v16 = *v14;
        }

        v7 = v16 | v15;
        *(a3 + 24) = v7;
        v14 = (v14 + 1);
        --v13;
      }

      while (v13);
    }

    else
    {
      v7 = bswap32(*v4);
    }

    v18 = v6 + 31;
    v17 = v6 == -31;
    *(a3 + 28) = v6 + 31;
    *a3 = ++v4;
    v8 |= v7 >> (v6 + 31);
    if (v6 == -31)
    {
      v10 = 0;
    }

    else
    {
      v10 = v7 << (1 - v6);
    }

    if (v17)
    {
      v9 = 0;
    }

    else
    {
      v9 = v18;
    }
  }

  else
  {
    v10 = 2 * v7;
  }

  *(a3 + 24) = v10;
  *a2 = v8 != 0;
  v19 = v3 - v4;
  if (v9 + 8 * (v3 - v4) <= 31)
  {
    exception = __cxa_allocate_exception(8uLL);
    v53 = "Cannot read spread.mWidth";
    goto LABEL_86;
  }

  *(a3 + 28) = v9 - 32;
  if (v9 - 32 < 0)
  {
    v22 = *(a3 + 8);
    if ((v19 & ~(v19 >> 63) & 0xFFFFFFFC) != 0 && v22 <= v4)
    {
      v23 = bswap32(*v4);
    }

    else
    {
      v24 = 4;
      v25 = v4;
      v23 = v10;
      do
      {
        v26 = v23 << 8;
        *(a3 + 24) = v26;
        v27 = 255;
        if (v25 < v3 && v25 >= v22)
        {
          v27 = *v25;
        }

        v23 = v27 | v26;
        *(a3 + 24) = v23;
        v25 = (v25 + 1);
        --v24;
      }

      while (v24);
    }

    *a3 = ++v4;
    v21 = (v23 >> v9) | v10;
    v10 = v23 << -v9;
    if (!v9)
    {
      v10 = 0;
    }

    *(a3 + 24) = v10;
    *(a3 + 28) = v9;
    v19 = v3 - v4;
    v20 = 8 * (v3 - v4);
  }

  else
  {
    v20 = 8 * v19;
    v9 -= 32;
    v21 = v10;
  }

  *(a2 + 4) = v21;
  if (v20 + v9 <= 31)
  {
    exception = __cxa_allocate_exception(8uLL);
    v53 = "Cannot read spread.mHeight";
    goto LABEL_86;
  }

  *(a3 + 28) = v9 - 32;
  if (v9 - 32 < 0)
  {
    v29 = *(a3 + 8);
    if ((v19 & ~(v19 >> 63) & 0xFFFFFFFC) != 0 && v29 <= v4)
    {
      v30 = bswap32(*v4);
    }

    else
    {
      v31 = 4;
      v32 = v4;
      v30 = v10;
      do
      {
        v33 = v30 << 8;
        *(a3 + 24) = v33;
        v34 = 255;
        if (v32 < v3 && v32 >= v29)
        {
          v34 = *v32;
        }

        v30 = v34 | v33;
        *(a3 + 24) = v30;
        v32 = (v32 + 1);
        --v31;
      }

      while (v31);
    }

    *a3 = ++v4;
    v28 = (v30 >> v9) | v10;
    v10 = v30 << -v9;
    if (!v9)
    {
      v10 = 0;
    }

    *(a3 + 24) = v10;
    *(a3 + 28) = v9;
    v19 = v3 - v4;
    v20 = 8 * (v3 - v4);
  }

  else
  {
    v9 -= 32;
    v28 = v10;
  }

  *(a2 + 8) = v28;
  if ((v20 + v9 < 0) ^ __OFADD__(v20, v9) | (v20 + v9 == 0))
  {
    exception = __cxa_allocate_exception(8uLL);
    v53 = "Cannot read spread.mHasDepth";
    goto LABEL_86;
  }

  v35 = v10 >> 31;
  v36 = v9 - 1;
  *(a3 + 28) = v9 - 1;
  if (v9 - 1 < 0)
  {
    v38 = *(a3 + 8);
    if ((v19 & ~(v19 >> 63) & 0xFFFFFFFC) != 0 && v38 <= v4)
    {
      v10 = bswap32(*v4);
    }

    else
    {
      v39 = 4;
      v40 = v4;
      do
      {
        v41 = v10 << 8;
        *(a3 + 24) = v41;
        v42 = 255;
        if (v40 < v3 && v40 >= v38)
        {
          v42 = *v40;
        }

        v10 = v42 | v41;
        *(a3 + 24) = v10;
        v40 = (v40 + 1);
        --v39;
      }

      while (v39);
    }

    v44 = v9 + 31;
    v43 = v9 == -31;
    *(a3 + 28) = v9 + 31;
    *a3 = ++v4;
    v35 |= v10 >> (v9 + 31);
    if (v9 == -31)
    {
      v37 = 0;
    }

    else
    {
      v37 = v10 << (1 - v9);
    }

    if (v43)
    {
      v36 = 0;
    }

    else
    {
      v36 = v44;
    }
  }

  else
  {
    v37 = 2 * v10;
  }

  *(a3 + 24) = v37;
  *(a2 + 1) = v35 != 0;
  if (v35)
  {
    if (v36 + 8 * (v3 - v4) > 31)
    {
      *(a3 + 28) = v36 - 32;
      if (v36 - 32 < 0)
      {
        v45 = *(a3 + 8);
        if (((v3 - v4) & ~((v3 - v4) >> 63) & 0xFFFFFFFC) != 0 && v45 <= v4)
        {
          v46 = bswap32(*v4);
        }

        else
        {
          v47 = 4;
          v48 = v4;
          v46 = v37;
          do
          {
            v49 = v46 << 8;
            *(a3 + 24) = v49;
            v50 = 255;
            if (v48 < v3 && v48 >= v45)
            {
              v50 = *v48;
            }

            v46 = v50 | v49;
            *(a3 + 24) = v46;
            v48 = (v48 + 1);
            --v47;
          }

          while (v47);
        }

        *a3 = v4 + 1;
        v37 |= v46 >> v36;
        v51 = v46 << -v36;
        if (!v36)
        {
          v51 = 0;
        }

        *(a3 + 24) = v51;
        *(a3 + 28) = v36;
      }

      *(a2 + 12) = v37;
      return;
    }

    exception = __cxa_allocate_exception(8uLL);
    v53 = "Cannot read spread.mDepth";
LABEL_86:
    *exception = v53;
    __cxa_throw(exception, MEMORY[0x1E69E53D8], 0);
  }
}

void APAC::MetadataBitStreamParser::parseObjectChannelLock(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = *(a3 + 16);
  v4 = *a3;
  v5 = v3 - *a3;
  v6 = *(a3 + 28);
  if (v6 + 8 * v5 <= 0)
  {
    exception = __cxa_allocate_exception(8uLL);
    v27 = "Cannot read chLock.mHasMaxDistance";
    goto LABEL_38;
  }

  v7 = *(a3 + 24);
  v8 = v7 >> 31;
  v9 = v6 - 1;
  *(a3 + 28) = v6 - 1;
  if (v6 - 1 < 0)
  {
    v11 = *(a3 + 8);
    if ((v5 & ~(v5 >> 63) & 0xFFFFFFFC) == 0 || v11 > v4)
    {
      v13 = 4;
      v14 = v4;
      do
      {
        v15 = v7 << 8;
        *(a3 + 24) = v15;
        v16 = 255;
        if (v14 < v3 && v14 >= v11)
        {
          v16 = *v14;
        }

        v7 = v16 | v15;
        *(a3 + 24) = v7;
        v14 = (v14 + 1);
        --v13;
      }

      while (v13);
    }

    else
    {
      v7 = bswap32(*v4);
    }

    v18 = v6 + 31;
    v17 = v6 == -31;
    *(a3 + 28) = v6 + 31;
    *a3 = ++v4;
    v8 |= v7 >> (v6 + 31);
    if (v6 == -31)
    {
      v10 = 0;
    }

    else
    {
      v10 = v7 << (1 - v6);
    }

    if (v17)
    {
      v9 = 0;
    }

    else
    {
      v9 = v18;
    }
  }

  else
  {
    v10 = 2 * v7;
  }

  *(a3 + 24) = v10;
  *(a2 + 1) = v8 != 0;
  if (v8)
  {
    if (v9 + 8 * (v3 - v4) > 31)
    {
      *(a3 + 28) = v9 - 32;
      if (v9 - 32 < 0)
      {
        v19 = *(a3 + 8);
        if (((v3 - v4) & ~((v3 - v4) >> 63) & 0xFFFFFFFC) != 0 && v19 <= v4)
        {
          v20 = bswap32(*v4);
        }

        else
        {
          v21 = 4;
          v22 = v4;
          v20 = v10;
          do
          {
            v23 = v20 << 8;
            *(a3 + 24) = v23;
            v24 = 255;
            if (v22 < v3 && v22 >= v19)
            {
              v24 = *v22;
            }

            v20 = v24 | v23;
            *(a3 + 24) = v20;
            v22 = (v22 + 1);
            --v21;
          }

          while (v21);
        }

        *a3 = v4 + 1;
        v10 |= v20 >> v9;
        v25 = v20 << -v9;
        if (!v9)
        {
          v25 = 0;
        }

        *(a3 + 24) = v25;
        *(a3 + 28) = v9;
      }

      *(a2 + 4) = v10;
      return;
    }

    exception = __cxa_allocate_exception(8uLL);
    v27 = "Cannot read chLock.mMaxDistance";
LABEL_38:
    *exception = v27;
    __cxa_throw(exception, MEMORY[0x1E69E53D8], 0);
  }
}

void APAC::MetadataBitStreamParser::parseObjectDivergence(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = *(a3 + 16);
  v4 = *a3;
  v5 = v3 - *a3;
  v6 = *(a3 + 28);
  if (v6 + 8 * v5 <= 31)
  {
    exception = __cxa_allocate_exception(8uLL);
    v44 = "Cannot read objDiv.mDivergence";
    goto LABEL_69;
  }

  v7 = *(a3 + 24);
  *(a3 + 28) = v6 - 32;
  if (v6 - 32 < 0)
  {
    v10 = *(a3 + 8);
    if ((v5 & ~(v5 >> 63) & 0xFFFFFFFC) == 0 || v10 > v4)
    {
      v12 = 4;
      v13 = v4;
      v16 = v7;
      do
      {
        v14 = v16 << 8;
        *(a3 + 24) = v14;
        v15 = 255;
        if (v13 < v3 && v13 >= v10)
        {
          v15 = *v13;
        }

        v16 = v15 | v14;
        *(a3 + 24) = v16;
        v13 = (v13 + 1);
        --v12;
      }

      while (v12);
    }

    else
    {
      v16 = bswap32(*v4);
    }

    *a3 = ++v4;
    v9 = (v16 >> v6) | v7;
    v7 = v16 << -v6;
    if (!v6)
    {
      v7 = 0;
    }

    *(a3 + 24) = v7;
    *(a3 + 28) = v6;
    v5 = v3 - v4;
    v8 = 8 * (v3 - v4);
  }

  else
  {
    v8 = 8 * v5;
    v6 -= 32;
    v9 = v7;
  }

  *a2 = v9;
  if ((v8 + v6 < 0) ^ __OFADD__(v8, v6) | (v8 + v6 == 0))
  {
    exception = __cxa_allocate_exception(8uLL);
    v44 = "Cannot read objDiv.mIsCartesian";
    goto LABEL_69;
  }

  v17 = v7 >> 31;
  v18 = v6 - 1;
  *(a3 + 28) = v6 - 1;
  if (v6 - 1 < 0)
  {
    v20 = *(a3 + 8);
    if ((v5 & ~(v5 >> 63) & 0xFFFFFFFC) == 0 || v20 > v4)
    {
      v22 = 4;
      v23 = v4;
      do
      {
        v24 = v7 << 8;
        *(a3 + 24) = v24;
        v25 = 255;
        if (v23 < v3 && v23 >= v20)
        {
          v25 = *v23;
        }

        v7 = v25 | v24;
        *(a3 + 24) = v7;
        v23 = (v23 + 1);
        --v22;
      }

      while (v22);
    }

    else
    {
      v7 = bswap32(*v4);
    }

    v27 = v6 + 31;
    v26 = v6 == -31;
    *(a3 + 28) = v6 + 31;
    *a3 = ++v4;
    v17 |= v7 >> (v6 + 31);
    if (v6 == -31)
    {
      v19 = 0;
    }

    else
    {
      v19 = v7 << (1 - v6);
    }

    if (v26)
    {
      v18 = 0;
    }

    else
    {
      v18 = v27;
    }
  }

  else
  {
    v19 = 2 * v7;
  }

  *(a3 + 24) = v19;
  *(a2 + 4) = v17 != 0;
  v28 = v3 - v4;
  v29 = v18 + 8 * (v3 - v4);
  if (!v17)
  {
    if (v29 > 31)
    {
      *(a3 + 28) = v18 - 32;
      if (v18 - 32 >= 0)
      {
        v30 = 16;
        goto LABEL_64;
      }

      v32 = *(a3 + 8);
      if ((v28 & ~(v28 >> 63) & 0xFFFFFFFC) == 0 || v32 > v4)
      {
        v38 = 4;
        v30 = 16;
        v39 = v4;
        v33 = v19;
        do
        {
          v40 = v33 << 8;
          *(a3 + 24) = v40;
          v41 = 255;
          if (v39 < v3 && v39 >= v32)
          {
            v41 = *v39;
          }

          v33 = v41 | v40;
          *(a3 + 24) = v33;
          v39 = (v39 + 1);
          --v38;
        }

        while (v38);
        goto LABEL_61;
      }

      v30 = 16;
      goto LABEL_49;
    }

    exception = __cxa_allocate_exception(8uLL);
    v44 = "Cannot read objDiv.mAzimuthRange";
LABEL_69:
    *exception = v44;
    __cxa_throw(exception, MEMORY[0x1E69E53D8], 0);
  }

  if (v29 <= 31)
  {
    exception = __cxa_allocate_exception(8uLL);
    v44 = "Cannot read objDiv.mPositionRange";
    goto LABEL_69;
  }

  *(a3 + 28) = v18 - 32;
  if (v18 - 32 >= 0)
  {
    v30 = 12;
    goto LABEL_64;
  }

  v31 = *(a3 + 8);
  if ((v28 & ~(v28 >> 63) & 0xFFFFFFFC) == 0 || v31 > v4)
  {
    v34 = 4;
    v30 = 12;
    v35 = v4;
    v33 = v19;
    do
    {
      v36 = v33 << 8;
      *(a3 + 24) = v36;
      v37 = 255;
      if (v35 < v3 && v35 >= v31)
      {
        v37 = *v35;
      }

      v33 = v37 | v36;
      *(a3 + 24) = v33;
      v35 = (v35 + 1);
      --v34;
    }

    while (v34);
    goto LABEL_61;
  }

  v30 = 12;
LABEL_49:
  v33 = bswap32(*v4);
LABEL_61:
  *a3 = v4 + 1;
  v19 |= v33 >> v18;
  v42 = v33 << -v18;
  if (!v18)
  {
    v42 = 0;
  }

  *(a3 + 24) = v42;
  *(a3 + 28) = v18;
LABEL_64:
  *(a2 + v30) = v19;
}

void APAC::MetadataBitStreamParser::parseZoneExclusion(uint64_t a1, BOOL *a2, uint64_t a3)
{
  v3 = *(a3 + 16);
  v4 = *a3;
  v5 = v3 - *a3;
  v6 = *(a3 + 28);
  if (v6 + 8 * v5 <= 0)
  {
    exception = __cxa_allocate_exception(8uLL);
    v202 = "Cannot read zoneExclusion.mIsZoneDefined";
    goto LABEL_258;
  }

  v7 = *(a3 + 24);
  v8 = v7 >> 31;
  v9 = v6 - 1;
  *(a3 + 28) = v6 - 1;
  if (v6 - 1 < 0)
  {
    v11 = *(a3 + 8);
    if ((v5 & ~(v5 >> 63) & 0xFFFFFFFC) == 0 || v11 > v4)
    {
      v13 = 4;
      v14 = v4;
      do
      {
        v15 = v7 << 8;
        *(a3 + 24) = v15;
        v16 = 255;
        if (v14 < v3 && v14 >= v11)
        {
          v16 = *v14;
        }

        v7 = v16 | v15;
        *(a3 + 24) = v7;
        v14 = (v14 + 1);
        --v13;
      }

      while (v13);
    }

    else
    {
      v7 = bswap32(*v4);
    }

    v17 = v7 << (1 - v6);
    v18 = v6 + 31;
    *(a3 + 28) = v18;
    *a3 = ++v4;
    v8 |= v7 >> v18;
    if (v18)
    {
      v10 = v17;
    }

    else
    {
      v10 = 0;
    }

    if (v18)
    {
      v9 = v18;
    }

    else
    {
      v9 = 0;
    }
  }

  else
  {
    v10 = 2 * v7;
  }

  *(a3 + 24) = v10;
  *a2 = v8 != 0;
  if (!v8)
  {
    return;
  }

  if (v9 + 8 * (v3 - v4) <= 0)
  {
    exception = __cxa_allocate_exception(8uLL);
    v202 = "Cannot read zoneExclusion.mKeepPreviousZone";
    goto LABEL_258;
  }

  v19 = v10 >> 31;
  v20 = v9 - 1;
  *(a3 + 28) = v9 - 1;
  if (v9 - 1 < 0)
  {
    v22 = *(a3 + 8);
    if (((v3 - v4) & ~((v3 - v4) >> 63) & 0xFFFFFFFC) != 0 && v22 <= v4)
    {
      v10 = bswap32(*v4);
    }

    else
    {
      v23 = 4;
      v24 = v4;
      do
      {
        v25 = v10 << 8;
        *(a3 + 24) = v25;
        v26 = 255;
        if (v24 < v3 && v24 >= v22)
        {
          v26 = *v24;
        }

        v10 = v26 | v25;
        *(a3 + 24) = v10;
        v24 = (v24 + 1);
        --v23;
      }

      while (v23);
    }

    v27 = v10 << (1 - v9);
    v28 = v9 + 31;
    *(a3 + 28) = v28;
    *a3 = ++v4;
    v19 |= v10 >> v28;
    if (v28)
    {
      v21 = v27;
    }

    else
    {
      v21 = 0;
    }

    if (v28)
    {
      v20 = v28;
    }

    else
    {
      v20 = 0;
    }
  }

  else
  {
    v21 = 2 * v10;
  }

  *(a3 + 24) = v21;
  a2[1] = v19 != 0;
  if (v19)
  {
    return;
  }

  if (v20 + 8 * (v3 - v4) <= 0)
  {
    exception = __cxa_allocate_exception(8uLL);
    v202 = "Cannot read zoneExclusion.mIsCartesian";
    goto LABEL_258;
  }

  v29 = v21 >> 31;
  v30 = v20 - 1;
  *(a3 + 28) = v20 - 1;
  if (v20 - 1 < 0)
  {
    v32 = *(a3 + 8);
    if (((v3 - v4) & ~((v3 - v4) >> 63) & 0xFFFFFFFC) != 0 && v32 <= v4)
    {
      v21 = bswap32(*v4);
    }

    else
    {
      v33 = 4;
      v34 = v4;
      do
      {
        v35 = v21 << 8;
        *(a3 + 24) = v35;
        v36 = 255;
        if (v34 < v3 && v34 >= v32)
        {
          v36 = *v34;
        }

        v21 = v36 | v35;
        *(a3 + 24) = v21;
        v34 = (v34 + 1);
        --v33;
      }

      while (v33);
    }

    v37 = v21 << (1 - v20);
    v38 = v20 + 31;
    *(a3 + 28) = v38;
    *a3 = ++v4;
    v29 |= v21 >> v38;
    if (v38)
    {
      v31 = v37;
    }

    else
    {
      v31 = 0;
    }

    if (v38)
    {
      v30 = v38;
    }

    else
    {
      v30 = 0;
    }
  }

  else
  {
    v31 = 2 * v21;
  }

  *(a3 + 24) = v31;
  a2[2] = v29 != 0;
  if (v30 + 8 * (v3 - v4) <= 3)
  {
    exception = __cxa_allocate_exception(8uLL);
    v202 = "Cannot read zoneExclusion.mNumZones";
LABEL_258:
    *exception = v202;
    __cxa_throw(exception, MEMORY[0x1E69E53D8], 0);
  }

  v39 = v31 >> 28;
  *(a3 + 28) = v30 - 4;
  if (v30 - 4 < 0)
  {
    v41 = *(a3 + 8);
    if (((v3 - v4) & ~((v3 - v4) >> 63) & 0xFFFFFFFC) != 0 && v41 <= v4)
    {
      v31 = bswap32(*v4);
    }

    else
    {
      v42 = 4;
      v43 = v4;
      do
      {
        v44 = v31 << 8;
        *(a3 + 24) = v44;
        v45 = 255;
        if (v43 < v3 && v43 >= v41)
        {
          v45 = *v43;
        }

        v31 = v45 | v44;
        *(a3 + 24) = v31;
        v43 = (v43 + 1);
        --v42;
      }

      while (v42);
    }

    v46 = v31 << (4 - v30);
    v47 = v30 + 28;
    *(a3 + 28) = v47;
    *a3 = v4 + 1;
    v39 |= v31 >> v47;
    if (v47)
    {
      v40 = v46;
    }

    else
    {
      v40 = 0;
    }
  }

  else
  {
    v40 = 16 * v31;
  }

  *(a3 + 24) = v40;
  a2[3] = v39;
  v48 = v39;
  if (v39)
  {
    v49 = 0;
    v50 = a2 + 4;
    v51 = a2 + 36;
    v52 = a2 + 19;
    do
    {
      v53 = *(a3 + 16);
      v54 = *a3;
      v55 = v53 - *a3;
      v56 = *(a3 + 28);
      if (v56 + 8 * v55 <= 0)
      {
        exception = __cxa_allocate_exception(8uLL);
        v202 = "Cannot read zoneExclusion.mUsePreDefinedZone[n]";
        goto LABEL_258;
      }

      v57 = *(a3 + 24);
      v58 = v57 >> 31;
      v59 = v56 - 1;
      *(a3 + 28) = v56 - 1;
      if (v56 - 1 < 0)
      {
        v61 = *(a3 + 8);
        if ((v55 & ~(v55 >> 63) & 0xFFFFFFFC) == 0 || v61 > v54)
        {
          v63 = 4;
          v64 = v54;
          do
          {
            v65 = v57 << 8;
            *(a3 + 24) = v65;
            v66 = 255;
            if (v64 < v53 && v64 >= v61)
            {
              v66 = *v64;
            }

            v57 = v66 | v65;
            *(a3 + 24) = v57;
            v64 = (v64 + 1);
            --v63;
          }

          while (v63);
        }

        else
        {
          v57 = bswap32(*v54);
        }

        v68 = v56 + 31;
        v67 = v56 == -31;
        *(a3 + 28) = v56 + 31;
        *a3 = ++v54;
        v58 |= v57 >> (v56 + 31);
        if (v56 == -31)
        {
          v60 = 0;
        }

        else
        {
          v60 = v57 << (1 - v56);
        }

        if (v67)
        {
          v59 = 0;
        }

        else
        {
          v59 = v68;
        }
      }

      else
      {
        v60 = 2 * v57;
      }

      *(a3 + 24) = v60;
      v50[v49] = v58 != 0;
      v69 = v53 - v54;
      v70 = v59 + 8 * (v53 - v54);
      if (v58)
      {
        if (v70 <= 3)
        {
          exception = __cxa_allocate_exception(8uLL);
          v202 = "Cannot read zoneExclusion.mZoneIndex[n]";
          goto LABEL_258;
        }

        v71 = v60 >> 28;
        *(a3 + 28) = v59 - 4;
        if (v59 - 4 < 0)
        {
          v75 = v69 & ~(v69 >> 63);
          v76 = *(a3 + 8);
          if ((v75 & 0xFFFFFFFC) != 0 && v76 <= v54)
          {
            v60 = bswap32(*v54);
          }

          else
          {
            v79 = 4;
            v80 = v54;
            do
            {
              v81 = v60 << 8;
              *(a3 + 24) = v81;
              v82 = 255;
              if (v80 < v53 && v80 >= v76)
              {
                v82 = *v80;
              }

              v60 = v82 | v81;
              *(a3 + 24) = v60;
              v80 = (v80 + 1);
              --v79;
            }

            while (v79);
          }

          v83 = v60 << (4 - v59);
          v84 = v59 + 28;
          *(a3 + 28) = v84;
          *a3 = v54 + 1;
          v71 |= v60 >> v84;
          if (v84)
          {
            v72 = v83;
          }

          else
          {
            v72 = 0;
          }
        }

        else
        {
          v72 = 16 * v60;
        }

        *(a3 + 24) = v72;
        v52[v49] = v71;
      }

      else if (v29)
      {
        if (v70 <= 31)
        {
          exception = __cxa_allocate_exception(8uLL);
          v202 = "Cannot read zoneExclusion.mZone[n].co_tu.cartesian.mMinX";
          goto LABEL_258;
        }

        *(a3 + 28) = v59 - 32;
        if (v59 - 32 < 0)
        {
          v73 = *(a3 + 8);
          if ((v69 & ~(v69 >> 63) & 0xFFFFFFFC) != 0 && v73 <= v54)
          {
            v74 = bswap32(*v54);
          }

          else
          {
            v85 = 4;
            v86 = v54;
            v74 = v60;
            do
            {
              v87 = v74 << 8;
              *(a3 + 24) = v87;
              v88 = 255;
              if (v86 < v53 && v86 >= v73)
              {
                v88 = *v86;
              }

              v74 = v88 | v87;
              *(a3 + 24) = v74;
              v86 = (v86 + 1);
              --v85;
            }

            while (v85);
          }

          *a3 = v54 + 1;
          v60 |= v74 >> v59;
          v89 = v74 << -v59;
          if (!v59)
          {
            v89 = 0;
          }

          *(a3 + 24) = v89;
          *(a3 + 28) = v59;
        }

        v90 = &v51[24 * v49];
        *v90 = v60;
        v91 = *(a3 + 16);
        v92 = *a3;
        v93 = v91 - *a3;
        v94 = *(a3 + 28);
        if (v94 + 8 * v93 <= 31)
        {
          exception = __cxa_allocate_exception(8uLL);
          v202 = "Cannot read zoneExclusion.mZone[n].co_tu.cartesian.mMaxX";
          goto LABEL_258;
        }

        v95 = *(a3 + 24);
        *(a3 + 28) = v94 - 32;
        if (v94 - 32 < 0)
        {
          v96 = v93 & ~(v93 >> 63);
          v97 = *(a3 + 8);
          if ((v96 & 0xFFFFFFFC) != 0 && v97 <= v92)
          {
            v98 = bswap32(*v92);
          }

          else
          {
            v99 = 4;
            v100 = v92;
            v98 = v95;
            do
            {
              v101 = v98 << 8;
              *(a3 + 24) = v101;
              v102 = 255;
              if (v100 < v91 && v100 >= v97)
              {
                v102 = *v100;
              }

              v98 = v102 | v101;
              *(a3 + 24) = v98;
              v100 = (v100 + 1);
              --v99;
            }

            while (v99);
          }

          *a3 = v92 + 1;
          v95 |= v98 >> v94;
          v103 = v98 << -v94;
          if (!v94)
          {
            v103 = 0;
          }

          *(a3 + 24) = v103;
          *(a3 + 28) = v94;
        }

        v90[1] = v95;
        v104 = *(a3 + 16);
        v105 = *a3;
        v106 = v104 - *a3;
        v107 = *(a3 + 28);
        if (v107 + 8 * v106 <= 31)
        {
          exception = __cxa_allocate_exception(8uLL);
          v202 = "Cannot read zoneExclusion.mZone[n].co_tu.cartesian.mMinY";
          goto LABEL_258;
        }

        v108 = *(a3 + 24);
        *(a3 + 28) = v107 - 32;
        if (v107 - 32 < 0)
        {
          v109 = v106 & ~(v106 >> 63);
          v110 = *(a3 + 8);
          if ((v109 & 0xFFFFFFFC) != 0 && v110 <= v105)
          {
            v111 = bswap32(*v105);
          }

          else
          {
            v112 = 4;
            v113 = v105;
            v111 = v108;
            do
            {
              v114 = v111 << 8;
              *(a3 + 24) = v114;
              v115 = 255;
              if (v113 < v104 && v113 >= v110)
              {
                v115 = *v113;
              }

              v111 = v115 | v114;
              *(a3 + 24) = v111;
              v113 = (v113 + 1);
              --v112;
            }

            while (v112);
          }

          *a3 = v105 + 1;
          v108 |= v111 >> v107;
          v116 = v111 << -v107;
          if (!v107)
          {
            v116 = 0;
          }

          *(a3 + 24) = v116;
          *(a3 + 28) = v107;
        }

        v90[2] = v108;
        v117 = *(a3 + 16);
        v118 = *a3;
        v119 = v117 - *a3;
        v120 = *(a3 + 28);
        if (v120 + 8 * v119 <= 31)
        {
          exception = __cxa_allocate_exception(8uLL);
          v202 = "Cannot read zoneExclusion.mZone[n].co_tu.cartesian.mMaxY";
          goto LABEL_258;
        }

        v121 = *(a3 + 24);
        *(a3 + 28) = v120 - 32;
        if (v120 - 32 < 0)
        {
          v122 = v119 & ~(v119 >> 63);
          v123 = *(a3 + 8);
          if ((v122 & 0xFFFFFFFC) != 0 && v123 <= v118)
          {
            v124 = bswap32(*v118);
          }

          else
          {
            v125 = 4;
            v126 = v118;
            v124 = v121;
            do
            {
              v127 = v124 << 8;
              *(a3 + 24) = v127;
              v128 = 255;
              if (v126 < v117 && v126 >= v123)
              {
                v128 = *v126;
              }

              v124 = v128 | v127;
              *(a3 + 24) = v124;
              v126 = (v126 + 1);
              --v125;
            }

            while (v125);
          }

          *a3 = v118 + 1;
          v121 |= v124 >> v120;
          v129 = v124 << -v120;
          if (!v120)
          {
            v129 = 0;
          }

          *(a3 + 24) = v129;
          *(a3 + 28) = v120;
        }

        v90[3] = v121;
        v130 = *(a3 + 16);
        v131 = *a3;
        v132 = v130 - *a3;
        v133 = *(a3 + 28);
        if (v133 + 8 * v132 <= 31)
        {
          exception = __cxa_allocate_exception(8uLL);
          v202 = "Cannot read zoneExclusion.mZone[n].co_tu.cartesian.mMinZ";
          goto LABEL_258;
        }

        v134 = *(a3 + 24);
        *(a3 + 28) = v133 - 32;
        if (v133 - 32 < 0)
        {
          v135 = v132 & ~(v132 >> 63);
          v136 = *(a3 + 8);
          if ((v135 & 0xFFFFFFFC) != 0 && v136 <= v131)
          {
            v137 = bswap32(*v131);
          }

          else
          {
            v138 = 4;
            v139 = v131;
            v137 = v134;
            do
            {
              v140 = v137 << 8;
              *(a3 + 24) = v140;
              v141 = 255;
              if (v139 < v130 && v139 >= v136)
              {
                v141 = *v139;
              }

              v137 = v141 | v140;
              *(a3 + 24) = v137;
              v139 = (v139 + 1);
              --v138;
            }

            while (v138);
          }

          *a3 = v131 + 1;
          v134 |= v137 >> v133;
          v142 = v137 << -v133;
          if (!v133)
          {
            v142 = 0;
          }

          *(a3 + 24) = v142;
          *(a3 + 28) = v133;
        }

        v90[4] = v134;
        v143 = *(a3 + 16);
        v144 = *a3;
        v145 = v143 - *a3;
        v146 = *(a3 + 28);
        if (v146 + 8 * v145 <= 31)
        {
          exception = __cxa_allocate_exception(8uLL);
          v202 = "Cannot read zoneExclusion.mZone[n].co_tu.cartesian.mMaxZ";
          goto LABEL_258;
        }

        v147 = *(a3 + 24);
        *(a3 + 28) = v146 - 32;
        if (v146 - 32 < 0)
        {
          v148 = v145 & ~(v145 >> 63);
          v149 = *(a3 + 8);
          if ((v148 & 0xFFFFFFFC) != 0 && v149 <= v144)
          {
            v150 = bswap32(*v144);
          }

          else
          {
            v151 = 4;
            v152 = v144;
            v150 = v147;
            do
            {
              v153 = v150 << 8;
              *(a3 + 24) = v153;
              v154 = 255;
              if (v152 < v143 && v152 >= v149)
              {
                v154 = *v152;
              }

              v150 = v154 | v153;
              *(a3 + 24) = v150;
              v152 = (v152 + 1);
              --v151;
            }

            while (v151);
          }

          *a3 = v144 + 1;
          v147 |= v150 >> v146;
          v155 = v150 << -v146;
          if (!v146)
          {
            v155 = 0;
          }

          *(a3 + 24) = v155;
          *(a3 + 28) = v146;
        }

        v90[5] = v147;
      }

      else
      {
        if (v70 <= 31)
        {
          exception = __cxa_allocate_exception(8uLL);
          v202 = "Cannot read zoneExclusion.mZone[n].co_tu.spherical.mMinAzimuth";
          goto LABEL_258;
        }

        *(a3 + 28) = v59 - 32;
        if (v59 - 32 < 0)
        {
          v77 = *(a3 + 8);
          if ((v69 & ~(v69 >> 63) & 0xFFFFFFFC) != 0 && v77 <= v54)
          {
            v78 = bswap32(*v54);
          }

          else
          {
            v156 = 4;
            v157 = v54;
            v78 = v60;
            do
            {
              v158 = v78 << 8;
              *(a3 + 24) = v158;
              v159 = 255;
              if (v157 < v53 && v157 >= v77)
              {
                v159 = *v157;
              }

              v78 = v159 | v158;
              *(a3 + 24) = v78;
              v157 = (v157 + 1);
              --v156;
            }

            while (v156);
          }

          *a3 = v54 + 1;
          v60 |= v78 >> v59;
          v160 = v78 << -v59;
          if (!v59)
          {
            v160 = 0;
          }

          *(a3 + 24) = v160;
          *(a3 + 28) = v59;
        }

        v161 = &v51[24 * v49];
        *v161 = v60;
        v162 = *(a3 + 16);
        v163 = *a3;
        v164 = v162 - *a3;
        v165 = *(a3 + 28);
        if (v165 + 8 * v164 <= 31)
        {
          exception = __cxa_allocate_exception(8uLL);
          v202 = "Cannot read zoneExclusion.mZone[n].co_tu.spherical.mMaxAzimuth";
          goto LABEL_258;
        }

        v166 = *(a3 + 24);
        *(a3 + 28) = v165 - 32;
        if (v165 - 32 < 0)
        {
          v167 = v164 & ~(v164 >> 63);
          v168 = *(a3 + 8);
          if ((v167 & 0xFFFFFFFC) != 0 && v168 <= v163)
          {
            v169 = bswap32(*v163);
          }

          else
          {
            v170 = 4;
            v171 = v163;
            v169 = v166;
            do
            {
              v172 = v169 << 8;
              *(a3 + 24) = v172;
              v173 = 255;
              if (v171 < v162 && v171 >= v168)
              {
                v173 = *v171;
              }

              v169 = v173 | v172;
              *(a3 + 24) = v169;
              v171 = (v171 + 1);
              --v170;
            }

            while (v170);
          }

          *a3 = v163 + 1;
          v166 |= v169 >> v165;
          v174 = v169 << -v165;
          if (!v165)
          {
            v174 = 0;
          }

          *(a3 + 24) = v174;
          *(a3 + 28) = v165;
        }

        v161[1] = v166;
        v175 = *(a3 + 16);
        v176 = *a3;
        v177 = v175 - *a3;
        v178 = *(a3 + 28);
        if (v178 + 8 * v177 <= 31)
        {
          exception = __cxa_allocate_exception(8uLL);
          v202 = "Cannot read zoneExclusion.mZone[n].co_tu.spherical.mMinElevation";
          goto LABEL_258;
        }

        v179 = *(a3 + 24);
        *(a3 + 28) = v178 - 32;
        if (v178 - 32 < 0)
        {
          v180 = v177 & ~(v177 >> 63);
          v181 = *(a3 + 8);
          if ((v180 & 0xFFFFFFFC) != 0 && v181 <= v176)
          {
            v182 = bswap32(*v176);
          }

          else
          {
            v183 = 4;
            v184 = v176;
            v182 = v179;
            do
            {
              v185 = v182 << 8;
              *(a3 + 24) = v185;
              v186 = 255;
              if (v184 < v175 && v184 >= v181)
              {
                v186 = *v184;
              }

              v182 = v186 | v185;
              *(a3 + 24) = v182;
              v184 = (v184 + 1);
              --v183;
            }

            while (v183);
          }

          *a3 = v176 + 1;
          v179 |= v182 >> v178;
          v187 = v182 << -v178;
          if (!v178)
          {
            v187 = 0;
          }

          *(a3 + 24) = v187;
          *(a3 + 28) = v178;
        }

        v161[2] = v179;
        v188 = *(a3 + 16);
        v189 = *a3;
        v190 = v188 - *a3;
        v191 = *(a3 + 28);
        if (v191 + 8 * v190 <= 31)
        {
          exception = __cxa_allocate_exception(8uLL);
          v202 = "Cannot read zoneExclusion.mZone[n].co_tu.spherical.mMaxElevation";
          goto LABEL_258;
        }

        v192 = *(a3 + 24);
        *(a3 + 28) = v191 - 32;
        if (v191 - 32 < 0)
        {
          v193 = v190 & ~(v190 >> 63);
          v194 = *(a3 + 8);
          if ((v193 & 0xFFFFFFFC) != 0 && v194 <= v189)
          {
            v195 = bswap32(*v189);
          }

          else
          {
            v196 = 4;
            v197 = v189;
            v195 = v192;
            do
            {
              v198 = v195 << 8;
              *(a3 + 24) = v198;
              v199 = 255;
              if (v197 < v188 && v197 >= v194)
              {
                v199 = *v197;
              }

              v195 = v199 | v198;
              *(a3 + 24) = v195;
              v197 = (v197 + 1);
              --v196;
            }

            while (v196);
          }

          *a3 = v189 + 1;
          v192 |= v195 >> v191;
          v200 = v195 << -v191;
          if (!v191)
          {
            v200 = 0;
          }

          *(a3 + 24) = v200;
          *(a3 + 28) = v191;
        }

        v161[3] = v192;
      }

      ++v49;
    }

    while (v49 != v48);
  }
}

void APAC::MetadataBitStreamParser::parseMaskingZone(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = *(a3 + 16);
  v4 = *a3;
  v5 = v3 - *a3;
  v6 = *(a3 + 28);
  if (v6 + 8 * v5 <= 0)
  {
    exception = __cxa_allocate_exception(8uLL);
    v151 = "Cannot read maskingZone.mIsZoneDefined";
    goto LABEL_257;
  }

  v7 = *(a3 + 24);
  v8 = v7 >> 31;
  v9 = v6 - 1;
  *(a3 + 28) = v6 - 1;
  if (v6 - 1 < 0)
  {
    v11 = *(a3 + 8);
    if ((v5 & ~(v5 >> 63) & 0xFFFFFFFC) == 0 || v11 > v4)
    {
      v13 = 4;
      v14 = v4;
      do
      {
        v15 = v7 << 8;
        *(a3 + 24) = v15;
        v16 = 255;
        if (v14 < v3 && v14 >= v11)
        {
          v16 = *v14;
        }

        v7 = v16 | v15;
        *(a3 + 24) = v7;
        v14 = (v14 + 1);
        --v13;
      }

      while (v13);
    }

    else
    {
      v7 = bswap32(*v4);
    }

    v17 = v7 << (1 - v6);
    v18 = v6 + 31;
    *(a3 + 28) = v18;
    *a3 = ++v4;
    v8 |= v7 >> v18;
    if (v18)
    {
      v10 = v17;
    }

    else
    {
      v10 = 0;
    }

    if (v18)
    {
      v9 = v18;
    }

    else
    {
      v9 = 0;
    }
  }

  else
  {
    v10 = 2 * v7;
  }

  *(a3 + 24) = v10;
  *a2 = v8 != 0;
  if (v8)
  {
    if (v9 + 8 * (v3 - v4) <= 0)
    {
      exception = __cxa_allocate_exception(8uLL);
      v151 = "Cannot read maskingZone.mUsePreDefinedZone";
      goto LABEL_257;
    }

    v19 = v10 >> 31;
    v20 = v9 - 1;
    *(a3 + 28) = v9 - 1;
    if (v9 - 1 < 0)
    {
      v22 = *(a3 + 8);
      if (((v3 - v4) & ~((v3 - v4) >> 63) & 0xFFFFFFFC) != 0 && v22 <= v4)
      {
        v10 = bswap32(*v4);
      }

      else
      {
        v23 = 4;
        v24 = v4;
        do
        {
          v25 = v10 << 8;
          *(a3 + 24) = v25;
          v26 = 255;
          if (v24 < v3 && v24 >= v22)
          {
            v26 = *v24;
          }

          v10 = v26 | v25;
          *(a3 + 24) = v10;
          v24 = (v24 + 1);
          --v23;
        }

        while (v23);
      }

      v28 = v9 + 31;
      v27 = v9 == -31;
      *(a3 + 28) = v9 + 31;
      *a3 = ++v4;
      v19 |= v10 >> (v9 + 31);
      if (v9 == -31)
      {
        v21 = 0;
      }

      else
      {
        v21 = v10 << (1 - v9);
      }

      if (v27)
      {
        v20 = 0;
      }

      else
      {
        v20 = v28;
      }
    }

    else
    {
      v21 = 2 * v10;
    }

    *(a3 + 24) = v21;
    *(a2 + 1) = v19 != 0;
    v29 = v3 - v4;
    v30 = v20 + 8 * (v3 - v4);
    if (v19)
    {
      if (v30 > 3)
      {
        v31 = v21 >> 28;
        *(a3 + 28) = v20 - 4;
        if (v20 - 4 < 0)
        {
          v36 = v29 & ~(v29 >> 63);
          v37 = *(a3 + 8);
          if ((v36 & 0xFFFFFFFC) != 0 && v37 <= v4)
          {
            v21 = bswap32(*v4);
          }

          else
          {
            v39 = 4;
            v40 = v4;
            do
            {
              v41 = v21 << 8;
              *(a3 + 24) = v41;
              v42 = 255;
              if (v40 < v3 && v40 >= v37)
              {
                v42 = *v40;
              }

              v21 = v42 | v41;
              *(a3 + 24) = v21;
              v40 = (v40 + 1);
              --v39;
            }

            while (v39);
          }

          v43 = v21 << (4 - v20);
          v44 = v20 + 28;
          *(a3 + 28) = v44;
          *a3 = v4 + 1;
          v31 |= v21 >> v44;
          if (v44)
          {
            v32 = v43;
          }

          else
          {
            v32 = 0;
          }
        }

        else
        {
          v32 = 16 * v21;
        }

        *(a3 + 24) = v32;
        *(a2 + 3) = v31;
        return;
      }

      exception = __cxa_allocate_exception(8uLL);
      v151 = "Cannot read maskingZone.mZoneIndex";
LABEL_257:
      *exception = v151;
      __cxa_throw(exception, MEMORY[0x1E69E53D8], 0);
    }

    if (v30 <= 0)
    {
      exception = __cxa_allocate_exception(8uLL);
      v151 = "Cannot read maskingZone.mIsCartesian";
      goto LABEL_257;
    }

    v33 = v21 >> 31;
    v34 = v20 - 1;
    *(a3 + 28) = v20 - 1;
    if (v20 - 1 < 0)
    {
      v38 = *(a3 + 8);
      if ((v29 & ~(v29 >> 63) & 0xFFFFFFFC) != 0 && v38 <= v4)
      {
        v21 = bswap32(*v4);
      }

      else
      {
        v45 = 4;
        v46 = v4;
        do
        {
          v47 = v21 << 8;
          *(a3 + 24) = v47;
          v48 = 255;
          if (v46 < v3 && v46 >= v38)
          {
            v48 = *v46;
          }

          v21 = v48 | v47;
          *(a3 + 24) = v21;
          v46 = (v46 + 1);
          --v45;
        }

        while (v45);
      }

      v50 = v20 + 31;
      v49 = v20 == -31;
      *(a3 + 28) = v20 + 31;
      *a3 = ++v4;
      v33 |= v21 >> (v20 + 31);
      if (v20 == -31)
      {
        v35 = 0;
      }

      else
      {
        v35 = v21 << (1 - v20);
      }

      if (v49)
      {
        v34 = 0;
      }

      else
      {
        v34 = v50;
      }
    }

    else
    {
      v35 = 2 * v21;
    }

    *(a3 + 24) = v35;
    *(a2 + 2) = v33 != 0;
    v51 = v3 - v4;
    v52 = 8 * (v3 - v4);
    v53 = v34 + v52;
    if (v33)
    {
      if (v53 <= 31)
      {
        exception = __cxa_allocate_exception(8uLL);
        v151 = "Cannot read maskingZone.mZone.mMinX";
        goto LABEL_257;
      }

      *(a3 + 28) = v34 - 32;
      if (v34 - 32 < 0)
      {
        v56 = v51 & ~(v51 >> 63);
        v57 = *(a3 + 8);
        if ((v56 & 0xFFFFFFFC) != 0 && v57 <= v4)
        {
          v58 = bswap32(*v4);
        }

        else
        {
          v62 = 4;
          v63 = v4;
          v58 = v35;
          do
          {
            v64 = v58 << 8;
            *(a3 + 24) = v64;
            v65 = 255;
            if (v63 < v3 && v63 >= v57)
            {
              v65 = *v63;
            }

            v58 = v65 | v64;
            *(a3 + 24) = v58;
            v63 = (v63 + 1);
            --v62;
          }

          while (v62);
        }

        *a3 = ++v4;
        v54 = (v58 >> v34) | v35;
        v35 = v58 << -v34;
        if (!v34)
        {
          v35 = 0;
        }

        *(a3 + 24) = v35;
        *(a3 + 28) = v34;
        v51 = v3 - v4;
        v52 = 8 * (v3 - v4);
      }

      else
      {
        v34 -= 32;
        v54 = v35;
      }

      *(a2 + 4) = v54;
      if (v52 + v34 <= 31)
      {
        exception = __cxa_allocate_exception(8uLL);
        v151 = "Cannot read maskingZone.mZone.mMaxX";
        goto LABEL_257;
      }

      *(a3 + 28) = v34 - 32;
      if (v34 - 32 < 0)
      {
        v67 = v51 & ~(v51 >> 63);
        v68 = *(a3 + 8);
        if ((v67 & 0xFFFFFFFC) != 0 && v68 <= v4)
        {
          v69 = bswap32(*v4);
        }

        else
        {
          v70 = 4;
          v71 = v4;
          v69 = v35;
          do
          {
            v72 = v69 << 8;
            *(a3 + 24) = v72;
            v73 = 255;
            if (v71 < v3 && v71 >= v68)
            {
              v73 = *v71;
            }

            v69 = v73 | v72;
            *(a3 + 24) = v69;
            v71 = (v71 + 1);
            --v70;
          }

          while (v70);
        }

        *a3 = ++v4;
        v66 = (v69 >> v34) | v35;
        v35 = v69 << -v34;
        if (!v34)
        {
          v35 = 0;
        }

        *(a3 + 24) = v35;
        *(a3 + 28) = v34;
        v51 = v3 - v4;
        v52 = 8 * (v3 - v4);
      }

      else
      {
        v34 -= 32;
        v66 = v35;
      }

      *(a2 + 8) = v66;
      if (v52 + v34 <= 31)
      {
        exception = __cxa_allocate_exception(8uLL);
        v151 = "Cannot read maskingZone.mZone.mMinY";
        goto LABEL_257;
      }

      *(a3 + 28) = v34 - 32;
      if (v34 - 32 < 0)
      {
        v75 = v51 & ~(v51 >> 63);
        v76 = *(a3 + 8);
        if ((v75 & 0xFFFFFFFC) != 0 && v76 <= v4)
        {
          v77 = bswap32(*v4);
        }

        else
        {
          v78 = 4;
          v79 = v4;
          v77 = v35;
          do
          {
            v80 = v77 << 8;
            *(a3 + 24) = v80;
            v81 = 255;
            if (v79 < v3 && v79 >= v76)
            {
              v81 = *v79;
            }

            v77 = v81 | v80;
            *(a3 + 24) = v77;
            v79 = (v79 + 1);
            --v78;
          }

          while (v78);
        }

        *a3 = ++v4;
        v74 = (v77 >> v34) | v35;
        v35 = v77 << -v34;
        if (!v34)
        {
          v35 = 0;
        }

        *(a3 + 24) = v35;
        *(a3 + 28) = v34;
        v51 = v3 - v4;
        v52 = 8 * (v3 - v4);
      }

      else
      {
        v34 -= 32;
        v74 = v35;
      }

      *(a2 + 12) = v74;
      if (v52 + v34 <= 31)
      {
        exception = __cxa_allocate_exception(8uLL);
        v151 = "Cannot read maskingZone.mZone.mMaxY";
        goto LABEL_257;
      }

      *(a3 + 28) = v34 - 32;
      if (v34 - 32 < 0)
      {
        v83 = v51 & ~(v51 >> 63);
        v84 = *(a3 + 8);
        if ((v83 & 0xFFFFFFFC) != 0 && v84 <= v4)
        {
          v85 = bswap32(*v4);
        }

        else
        {
          v86 = 4;
          v87 = v4;
          v85 = v35;
          do
          {
            v88 = v85 << 8;
            *(a3 + 24) = v88;
            v89 = 255;
            if (v87 < v3 && v87 >= v84)
            {
              v89 = *v87;
            }

            v85 = v89 | v88;
            *(a3 + 24) = v85;
            v87 = (v87 + 1);
            --v86;
          }

          while (v86);
        }

        *a3 = ++v4;
        v82 = (v85 >> v34) | v35;
        v35 = v85 << -v34;
        if (!v34)
        {
          v35 = 0;
        }

        *(a3 + 24) = v35;
        *(a3 + 28) = v34;
        v51 = v3 - v4;
        v52 = 8 * (v3 - v4);
      }

      else
      {
        v34 -= 32;
        v82 = v35;
      }

      *(a2 + 16) = v82;
      if (v52 + v34 <= 31)
      {
        exception = __cxa_allocate_exception(8uLL);
        v151 = "Cannot read maskingZone.mZone.mMinZ";
        goto LABEL_257;
      }

      *(a3 + 28) = v34 - 32;
      if (v34 - 32 < 0)
      {
        v91 = v51 & ~(v51 >> 63);
        v92 = *(a3 + 8);
        if ((v91 & 0xFFFFFFFC) != 0 && v92 <= v4)
        {
          v93 = bswap32(*v4);
        }

        else
        {
          v94 = 4;
          v95 = v4;
          v93 = v35;
          do
          {
            v96 = v93 << 8;
            *(a3 + 24) = v96;
            v97 = 255;
            if (v95 < v3 && v95 >= v92)
            {
              v97 = *v95;
            }

            v93 = v97 | v96;
            *(a3 + 24) = v93;
            v95 = (v95 + 1);
            --v94;
          }

          while (v94);
        }

        *a3 = ++v4;
        v90 = (v93 >> v34) | v35;
        v35 = v93 << -v34;
        if (!v34)
        {
          v35 = 0;
        }

        *(a3 + 24) = v35;
        *(a3 + 28) = v34;
        v51 = v3 - v4;
        v52 = 8 * (v3 - v4);
      }

      else
      {
        v34 -= 32;
        v90 = v35;
      }

      *(a2 + 20) = v90;
      if (v52 + v34 <= 31)
      {
        exception = __cxa_allocate_exception(8uLL);
        v151 = "Cannot read maskingZone.mZone.mMaxZ";
        goto LABEL_257;
      }

      *(a3 + 28) = v34 - 32;
      if (v34 - 32 < 0)
      {
        v98 = v51 & ~(v51 >> 63);
        v99 = *(a3 + 8);
        if ((v98 & 0xFFFFFFFC) != 0 && v99 <= v4)
        {
          v100 = bswap32(*v4);
        }

        else
        {
          v101 = 4;
          v102 = v4;
          v100 = v35;
          do
          {
            v103 = v100 << 8;
            *(a3 + 24) = v103;
            v104 = 255;
            if (v102 < v3 && v102 >= v99)
            {
              v104 = *v102;
            }

            v100 = v104 | v103;
            *(a3 + 24) = v100;
            v102 = (v102 + 1);
            --v101;
          }

          while (v101);
        }

        *a3 = v4 + 1;
        v35 |= v100 >> v34;
        v105 = v100 << -v34;
        if (!v34)
        {
          v105 = 0;
        }

        *(a3 + 24) = v105;
        *(a3 + 28) = v34;
      }

      *(a2 + 24) = v35;
    }

    else
    {
      if (v53 <= 31)
      {
        exception = __cxa_allocate_exception(8uLL);
        v151 = "Cannot read maskingZone.mZone.mMinAzimuth";
        goto LABEL_257;
      }

      *(a3 + 28) = v34 - 32;
      if (v34 - 32 < 0)
      {
        v59 = v51 & ~(v51 >> 63);
        v60 = *(a3 + 8);
        if ((v59 & 0xFFFFFFFC) != 0 && v60 <= v4)
        {
          v61 = bswap32(*v4);
        }

        else
        {
          v106 = 4;
          v107 = v4;
          v61 = v35;
          do
          {
            v108 = v61 << 8;
            *(a3 + 24) = v108;
            v109 = 255;
            if (v107 < v3 && v107 >= v60)
            {
              v109 = *v107;
            }

            v61 = v109 | v108;
            *(a3 + 24) = v61;
            v107 = (v107 + 1);
            --v106;
          }

          while (v106);
        }

        *a3 = ++v4;
        v55 = (v61 >> v34) | v35;
        v35 = v61 << -v34;
        if (!v34)
        {
          v35 = 0;
        }

        *(a3 + 24) = v35;
        *(a3 + 28) = v34;
        v51 = v3 - v4;
        v52 = 8 * (v3 - v4);
      }

      else
      {
        v34 -= 32;
        v55 = v35;
      }

      *(a2 + 28) = v55;
      if (v52 + v34 <= 31)
      {
        exception = __cxa_allocate_exception(8uLL);
        v151 = "Cannot read maskingZone.mZone.mMaxAzimuth";
        goto LABEL_257;
      }

      *(a3 + 28) = v34 - 32;
      if (v34 - 32 < 0)
      {
        v111 = v51 & ~(v51 >> 63);
        v112 = *(a3 + 8);
        if ((v111 & 0xFFFFFFFC) != 0 && v112 <= v4)
        {
          v113 = bswap32(*v4);
        }

        else
        {
          v114 = 4;
          v115 = v4;
          v113 = v35;
          do
          {
            v116 = v113 << 8;
            *(a3 + 24) = v116;
            v117 = 255;
            if (v115 < v3 && v115 >= v112)
            {
              v117 = *v115;
            }

            v113 = v117 | v116;
            *(a3 + 24) = v113;
            v115 = (v115 + 1);
            --v114;
          }

          while (v114);
        }

        *a3 = ++v4;
        v110 = (v113 >> v34) | v35;
        v35 = v113 << -v34;
        if (!v34)
        {
          v35 = 0;
        }

        *(a3 + 24) = v35;
        *(a3 + 28) = v34;
        v51 = v3 - v4;
        v52 = 8 * (v3 - v4);
      }

      else
      {
        v34 -= 32;
        v110 = v35;
      }

      *(a2 + 32) = v110;
      if (v52 + v34 <= 31)
      {
        exception = __cxa_allocate_exception(8uLL);
        v151 = "Cannot read maskingZone.mZone.mMinElevation";
        goto LABEL_257;
      }

      *(a3 + 28) = v34 - 32;
      if (v34 - 32 < 0)
      {
        v119 = v51 & ~(v51 >> 63);
        v120 = *(a3 + 8);
        if ((v119 & 0xFFFFFFFC) != 0 && v120 <= v4)
        {
          v121 = bswap32(*v4);
        }

        else
        {
          v122 = 4;
          v123 = v4;
          v121 = v35;
          do
          {
            v124 = v121 << 8;
            *(a3 + 24) = v124;
            v125 = 255;
            if (v123 < v3 && v123 >= v120)
            {
              v125 = *v123;
            }

            v121 = v125 | v124;
            *(a3 + 24) = v121;
            v123 = (v123 + 1);
            --v122;
          }

          while (v122);
        }

        *a3 = ++v4;
        v118 = (v121 >> v34) | v35;
        v35 = v121 << -v34;
        if (!v34)
        {
          v35 = 0;
        }

        *(a3 + 24) = v35;
        *(a3 + 28) = v34;
        v51 = v3 - v4;
        v52 = 8 * (v3 - v4);
      }

      else
      {
        v34 -= 32;
        v118 = v35;
      }

      *(a2 + 36) = v118;
      if (v52 + v34 <= 31)
      {
        exception = __cxa_allocate_exception(8uLL);
        v151 = "Cannot read maskingZone.mZone.mMaxElevation";
        goto LABEL_257;
      }

      *(a3 + 28) = v34 - 32;
      if (v34 - 32 < 0)
      {
        v127 = v51 & ~(v51 >> 63);
        v128 = *(a3 + 8);
        if ((v127 & 0xFFFFFFFC) != 0 && v128 <= v4)
        {
          v129 = bswap32(*v4);
        }

        else
        {
          v130 = 4;
          v131 = v4;
          v129 = v35;
          do
          {
            v132 = v129 << 8;
            *(a3 + 24) = v132;
            v133 = 255;
            if (v131 < v3 && v131 >= v128)
            {
              v133 = *v131;
            }

            v129 = v133 | v132;
            *(a3 + 24) = v129;
            v131 = (v131 + 1);
            --v130;
          }

          while (v130);
        }

        *a3 = ++v4;
        v126 = (v129 >> v34) | v35;
        v35 = v129 << -v34;
        if (!v34)
        {
          v35 = 0;
        }

        *(a3 + 24) = v35;
        *(a3 + 28) = v34;
        v51 = v3 - v4;
        v52 = 8 * (v3 - v4);
      }

      else
      {
        v34 -= 32;
        v126 = v35;
      }

      *(a2 + 40) = v126;
      if (v52 + v34 <= 31)
      {
        exception = __cxa_allocate_exception(8uLL);
        v151 = "Cannot read maskingZone.mZone.mMinDistance";
        goto LABEL_257;
      }

      *(a3 + 28) = v34 - 32;
      if (v34 - 32 < 0)
      {
        v135 = v51 & ~(v51 >> 63);
        v136 = *(a3 + 8);
        if ((v135 & 0xFFFFFFFC) != 0 && v136 <= v4)
        {
          v137 = bswap32(*v4);
        }

        else
        {
          v138 = 4;
          v139 = v4;
          v137 = v35;
          do
          {
            v140 = v137 << 8;
            *(a3 + 24) = v140;
            v141 = 255;
            if (v139 < v3 && v139 >= v136)
            {
              v141 = *v139;
            }

            v137 = v141 | v140;
            *(a3 + 24) = v137;
            v139 = (v139 + 1);
            --v138;
          }

          while (v138);
        }

        *a3 = ++v4;
        v134 = (v137 >> v34) | v35;
        v35 = v137 << -v34;
        if (!v34)
        {
          v35 = 0;
        }

        *(a3 + 24) = v35;
        *(a3 + 28) = v34;
        v51 = v3 - v4;
        v52 = 8 * (v3 - v4);
      }

      else
      {
        v34 -= 32;
        v134 = v35;
      }

      *(a2 + 44) = v134;
      if (v52 + v34 <= 31)
      {
        exception = __cxa_allocate_exception(8uLL);
        v151 = "Cannot read maskingZone.mZone.mMaxDistance";
        goto LABEL_257;
      }

      *(a3 + 28) = v34 - 32;
      if (v34 - 32 < 0)
      {
        v142 = v51 & ~(v51 >> 63);
        v143 = *(a3 + 8);
        if ((v142 & 0xFFFFFFFC) != 0 && v143 <= v4)
        {
          v144 = bswap32(*v4);
        }

        else
        {
          v145 = 4;
          v146 = v4;
          v144 = v35;
          do
          {
            v147 = v144 << 8;
            *(a3 + 24) = v147;
            v148 = 255;
            if (v146 < v3 && v146 >= v143)
            {
              v148 = *v146;
            }

            v144 = v148 | v147;
            *(a3 + 24) = v144;
            v146 = (v146 + 1);
            --v145;
          }

          while (v145);
        }

        *a3 = v4 + 1;
        v35 |= v144 >> v34;
        v149 = v144 << -v34;
        if (!v34)
        {
          v149 = 0;
        }

        *(a3 + 24) = v149;
        *(a3 + 28) = v34;
      }

      *(a2 + 48) = v35;
    }
  }
}