__n128 HALS_IOEngine2::GetPhysicalFormatForStreamAtIndex(HALS_IOEngine2 *this, char a2, int a3, CA::StreamDescription *a4)
{
  v12 = 0;
  v13 = &v12;
  v14 = 0x5002000000;
  v15 = __Block_byref_object_copy__53;
  v16 = __Block_byref_object_dispose__54;
  v18 = 0u;
  v19 = 0;
  v17 = 0u;
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 0x40000000;
  v9[2] = ___ZNK14HALS_IOEngine233GetPhysicalFormatForStreamAtIndexEbjRN2CA17StreamDescriptionE_block_invoke;
  v9[3] = &unk_1E86778D0;
  v11 = a2;
  v10 = a3;
  v9[4] = &v12;
  v9[5] = this;
  v5 = (*(*this + 64))(this);
  HALB_CommandGate::ExecuteCommand(v5, v9);
  v6 = v13[9];
  v7 = *(v13 + 7);
  *a4 = *(v13 + 5);
  *(a4 + 1) = v7;
  *(a4 + 4) = v6;
  _Block_object_dispose(&v12, 8);
  return result;
}

void sub_1DE5EDEDC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

__n128 __Block_byref_object_copy__53(uint64_t a1, uint64_t a2)
{
  result = *(a2 + 40);
  v3 = *(a2 + 56);
  *(a1 + 72) = *(a2 + 72);
  *(a1 + 56) = v3;
  *(a1 + 40) = result;
  return result;
}

__n128 ___ZNK14HALS_IOEngine233GetPhysicalFormatForStreamAtIndexEbjRN2CA17StreamDescriptionE_block_invoke(uint64_t a1)
{
  v1 = *(*(a1 + 40) + 808);
  if (v1)
  {
    v2 = *(a1 + 48);
    v4 = (v1 + 24 * *(a1 + 52) + 48);
    v3 = *v4;
    v5 = (v4[1] - *v4) >> 3;
    if (v2 < v5)
    {
      if (v5 <= v2)
      {
        std::vector<std::tuple<unsigned int,void *,unsigned int>>::__throw_out_of_range[abi:ne200100]();
      }

      v6 = *(*(a1 + 32) + 8);
      v7 = *(v3 + 8 * v2);
      result = *(v7 + 120);
      v9 = *(v7 + 136);
      *(v6 + 72) = *(v7 + 152);
      *(v6 + 56) = v9;
      *(v6 + 40) = result;
    }
  }

  return result;
}

__n128 HALS_IOEngine2::GetVirtualFormatForStreamAtIndex(HALS_IOEngine2 *this, char a2, int a3, CA::StreamDescription *a4)
{
  v12 = 0;
  v13 = &v12;
  v14 = 0x5002000000;
  v15 = __Block_byref_object_copy__53;
  v16 = __Block_byref_object_dispose__54;
  v18 = 0u;
  v19 = 0;
  v17 = 0u;
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 0x40000000;
  v9[2] = ___ZNK14HALS_IOEngine232GetVirtualFormatForStreamAtIndexEbjRN2CA17StreamDescriptionE_block_invoke;
  v9[3] = &unk_1E86778A8;
  v11 = a2;
  v10 = a3;
  v9[4] = &v12;
  v9[5] = this;
  v5 = (*(*this + 64))(this);
  HALB_CommandGate::ExecuteCommand(v5, v9);
  v6 = v13[9];
  v7 = *(v13 + 7);
  *a4 = *(v13 + 5);
  *(a4 + 1) = v7;
  *(a4 + 4) = v6;
  _Block_object_dispose(&v12, 8);
  return result;
}

void sub_1DE5EE098(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

__n128 ___ZNK14HALS_IOEngine232GetVirtualFormatForStreamAtIndexEbjRN2CA17StreamDescriptionE_block_invoke(uint64_t a1)
{
  v1 = *(*(a1 + 40) + 808);
  if (v1)
  {
    v2 = *(a1 + 48);
    v4 = (v1 + 24 * *(a1 + 52) + 48);
    v3 = *v4;
    v5 = (v4[1] - *v4) >> 3;
    if (v2 < v5)
    {
      if (v5 <= v2)
      {
        std::vector<std::tuple<unsigned int,void *,unsigned int>>::__throw_out_of_range[abi:ne200100]();
      }

      v6 = *(*(a1 + 32) + 8);
      v7 = *(v3 + 8 * v2);
      result = *(v7 + 40);
      v9 = *(v7 + 56);
      *(v6 + 72) = *(v7 + 72);
      *(v6 + 56) = v9;
      *(v6 + 40) = result;
    }
  }

  return result;
}

uint64_t HALS_IOEngine2::IsStreamAtIndexActive(HALS_IOEngine2 *this, char a2, int a3)
{
  v9 = 0;
  v10 = &v9;
  v11 = 0x2000000000;
  v12 = 0;
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 0x40000000;
  v6[2] = ___ZNK14HALS_IOEngine221IsStreamAtIndexActiveEbj_block_invoke;
  v6[3] = &unk_1E8677858;
  v6[4] = &v9;
  v6[5] = this;
  v8 = a2;
  v7 = a3;
  v3 = (*(*this + 64))(this);
  HALB_CommandGate::ExecuteCommand(v3, v6);
  v4 = *(v10 + 24);
  _Block_object_dispose(&v9, 8);
  return v4;
}

uint64_t ___ZNK14HALS_IOEngine221IsStreamAtIndexActiveEbj_block_invoke(uint64_t result)
{
  v1 = *(*(result + 40) + 808);
  if (v1)
  {
    v2 = *(result + 48);
    v4 = (v1 + 24 * *(result + 52) + 48);
    v3 = *v4;
    v5 = (v4[1] - *v4) >> 3;
    if (v2 >= v5)
    {
      v6 = 0;
    }

    else
    {
      if (v5 <= v2)
      {
        std::vector<std::tuple<unsigned int,void *,unsigned int>>::__throw_out_of_range[abi:ne200100]();
      }

      v6 = *(*(v3 + 8 * v2) + 32);
    }

    *(*(*(result + 32) + 8) + 24) = v6 & 1;
  }

  return result;
}

uint64_t HALS_IOEngine2::GetNumberStreamsVisibleToClient(HALS_IOEngine2 *this, char a2, int a3)
{
  v9 = 0;
  v10 = &v9;
  v11 = 0x2000000000;
  v12 = 0;
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 0x40000000;
  v6[2] = ___ZNK14HALS_IOEngine231GetNumberStreamsVisibleToClientEbj_block_invoke;
  v6[3] = &unk_1E8677830;
  v6[4] = &v9;
  v6[5] = this;
  v8 = a2;
  v7 = a3;
  v3 = (*(*this + 64))(this);
  HALB_CommandGate::ExecuteCommand(v3, v6);
  v4 = *(v10 + 6);
  _Block_object_dispose(&v9, 8);
  return v4;
}

void ___ZNK14HALS_IOEngine231GetNumberStreamsVisibleToClientEbj_block_invoke(uint64_t a1)
{
  v1 = *(*(a1 + 40) + 808);
  if (v1)
  {
    if (*(a1 + 52))
    {
      v3 = *(a1 + 48);
      v4 = HALS_ObjectMap::CopyObjectByObjectID(*v1);
      v6 = v4;
      if (!v4)
      {
        goto LABEL_17;
      }

      v7 = *(v4 + 20);
      if (v7 <= 1701078389)
      {
        v8 = v7 == 1633773415;
        v9 = 1633969526;
      }

      else
      {
        v8 = v7 == 1701078390 || v7 == 1701733488;
        v9 = 1919182198;
      }

      if (!v8 && v7 != v9)
      {
        v15 = *(v4 + 24);
        if (v7 == v15)
        {
          goto LABEL_17;
        }

        if (v15 <= 1701078389)
        {
          v16 = v15 == 1633773415;
          v17 = 1633969526;
        }

        else
        {
          v16 = v15 == 1701078390 || v15 == 1701733488;
          v17 = 1919182198;
        }

        if (!v16 && v15 != v17)
        {
          goto LABEL_17;
        }
      }

      if (!HALS_ReferenceStreamStateManager::GetReferenceStreamStateForClient(*(v4 + 448), v3))
      {
        v12 = v1[9];
        v13 = v1[10];
        if (v12 == v13)
        {
          LODWORD(v10) = 0;
        }

        else
        {
          LODWORD(v10) = 0;
          do
          {
            v14 = *v12++;
            LODWORD(v10) = v10 + (*(v14 + 21) ^ 1);
          }

          while (v12 != v13);
        }
      }

      else
      {
LABEL_17:
        v10 = (v1[10] - v1[9]) >> 3;
      }

      HALS_ObjectMap::ReleaseObject(v6, v5);
    }

    else
    {
      v10 = (v1[7] - v1[6]) >> 3;
    }

    *(*(*(a1 + 32) + 8) + 24) = v10;
  }
}

void HALS_IOEngine2::TransitionContextFromCatchupToRealtime(HALS_IOEngine2 *this, int a2, const HALS_IOEngineInfo *a3)
{
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 0x40000000;
  v4[2] = ___ZN14HALS_IOEngine238TransitionContextFromCatchupToRealtimeEjRK17HALS_IOEngineInfo_block_invoke;
  v4[3] = &__block_descriptor_tmp_48_13385;
  v5 = a2;
  v4[4] = this;
  v4[5] = a3;
  v3 = (*(*this + 64))(this);
  HALB_CommandGate::ExecuteCommand(v3, v4);
}

uint64_t HALS_IOEngine2::IsClockStable(HALS_IOEngine2 *this)
{
  v5 = 0;
  v6 = &v5;
  v7 = 0x2000000000;
  v8 = 1;
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 0x40000000;
  v4[2] = ___ZNK14HALS_IOEngine213IsClockStableEv_block_invoke;
  v4[3] = &unk_1E86777C0;
  v4[4] = &v5;
  v4[5] = this;
  v1 = (*(*this + 64))(this);
  HALB_CommandGate::ExecuteCommand(v1, v4);
  v2 = *(v6 + 24);
  _Block_object_dispose(&v5, 8);
  return v2;
}

void sub_1DE5EE690(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t ___ZNK14HALS_IOEngine213IsClockStableEv_block_invoke(uint64_t result)
{
  v1 = *(*(result + 40) + 808);
  if (v1)
  {
    *(*(*(result + 32) + 8) + 24) = *(v1 + 40);
  }

  return result;
}

uint64_t HALS_IOEngine2::GetClockAlgorithm(HALS_IOEngine2 *this)
{
  v5 = 0;
  v6 = &v5;
  v7 = 0x2000000000;
  v8 = 1768518246;
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 0x40000000;
  v4[2] = ___ZNK14HALS_IOEngine217GetClockAlgorithmEv_block_invoke;
  v4[3] = &unk_1E8677798;
  v4[4] = &v5;
  v4[5] = this;
  v1 = (*(*this + 64))(this);
  HALB_CommandGate::ExecuteCommand(v1, v4);
  v2 = *(v6 + 6);
  _Block_object_dispose(&v5, 8);
  return v2;
}

void sub_1DE5EE798(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t ___ZNK14HALS_IOEngine217GetClockAlgorithmEv_block_invoke(uint64_t result)
{
  v1 = *(*(result + 40) + 808);
  if (v1)
  {
    *(*(*(result + 32) + 8) + 24) = *(v1 + 36);
  }

  return result;
}

uint64_t HALS_IOEngine2::GetLatency(HALS_IOEngine2 *this, char a2)
{
  v7 = 0;
  v8 = &v7;
  v9 = 0x2000000000;
  v10 = 0;
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 0x40000000;
  v5[2] = ___ZNK14HALS_IOEngine210GetLatencyEb_block_invoke;
  v5[3] = &unk_1E8677770;
  v5[4] = &v7;
  v5[5] = this;
  v6 = a2;
  v2 = (*(*this + 64))(this);
  HALB_CommandGate::ExecuteCommand(v2, v5);
  v3 = *(v8 + 6);
  _Block_object_dispose(&v7, 8);
  return v3;
}

uint64_t ___ZNK14HALS_IOEngine210GetLatencyEb_block_invoke(uint64_t result)
{
  v1 = *(*(result + 40) + 808);
  if (v1)
  {
    *(*(*(result + 32) + 8) + 24) = *(v1 + 4 * *(result + 48) + 28);
  }

  return result;
}

uint64_t HALS_IOEngine2::GetRingBufferFrameSize(HALS_IOEngine2 *this)
{
  v5 = 0;
  v6 = &v5;
  v7 = 0x2000000000;
  v8 = 0;
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 0x40000000;
  v4[2] = ___ZNK14HALS_IOEngine222GetRingBufferFrameSizeEv_block_invoke;
  v4[3] = &unk_1E8677720;
  v4[4] = &v5;
  v4[5] = this;
  v1 = (*(*this + 64))(this);
  HALB_CommandGate::ExecuteCommand(v1, v4);
  v2 = *(v6 + 6);
  _Block_object_dispose(&v5, 8);
  return v2;
}

void sub_1DE5EE9A4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t ___ZNK14HALS_IOEngine222GetRingBufferFrameSizeEv_block_invoke(uint64_t result)
{
  v1 = *(*(result + 40) + 808);
  if (v1)
  {
    *(*(*(result + 32) + 8) + 24) = *(v1 + 16);
  }

  return result;
}

double HALS_IOEngine2::GetNominalSampleRate(HALS_IOEngine2 *this)
{
  v5 = 0;
  v6 = &v5;
  v7 = 0x2000000000;
  v8 = 0;
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 0x40000000;
  v4[2] = ___ZNK14HALS_IOEngine220GetNominalSampleRateEv_block_invoke;
  v4[3] = &unk_1E86776F8;
  v4[4] = &v5;
  v4[5] = this;
  v1 = (*(*this + 64))(this);
  HALB_CommandGate::ExecuteCommand(v1, v4);
  v2 = v6[3];
  _Block_object_dispose(&v5, 8);
  return v2;
}

void sub_1DE5EEAAC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

double ___ZNK14HALS_IOEngine220GetNominalSampleRateEv_block_invoke(uint64_t a1)
{
  v1 = *(*(a1 + 40) + 808);
  if (v1)
  {
    result = *(v1 + 8);
    *(*(*(a1 + 32) + 8) + 24) = result;
  }

  return result;
}

uint64_t HALS_IOEngine2::DoAnyQueuesHaveWorkAfterFlush(HALS_IOEngine2 *this)
{
  v1 = atomic_load(this + 97);
  if (v1 & 1) != 0 || (v2 = atomic_load(this + 433), (v2))
  {
    v3 = 1;
  }

  else
  {
    v3 = atomic_load((*(this + 96) + 33));
  }

  return v3 & 1;
}

void HALS_IOEngine2::FlushAllQueues(HALS_IOEngine2 *this)
{
  AMCP::Utility::Dispatch_Queue::flush_all_work((this + 64));
  AMCP::Utility::Dispatch_Queue::flush_all_work((this + 400));
  v2 = *(this + 96);

  AMCP::Utility::Dispatch_Queue::flush_all_work(v2);
}

void HALS_IOEngine2::HogModeOwnerChanged(HALS_IOEngine2 *this, int a2)
{
  v11 = 0;
  v12 = &v11;
  v13 = 0x4002000000;
  v14 = __Block_byref_object_copy__13413;
  v15 = __Block_byref_object_dispose__13414;
  memset(v16, 0, sizeof(v16));
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 0x40000000;
  v10[2] = ___ZN14HALS_IOEngine219HogModeOwnerChangedEi_block_invoke;
  v10[3] = &unk_1E8677650;
  v10[4] = &v11;
  v10[5] = this;
  v3 = (*(*this + 64))(this);
  HALB_CommandGate::ExecuteCommand(v3, v10);
  v4 = v12;
  for (i = v12[5]; i != v4[6]; ++i)
  {
    v6 = *i;
    v7 = *(*(*i + 72) + 4);
    if (v7)
    {
      v8 = *(v6 + 16);
      v9 = **(v6 + 104);
      if (a2 == -1 || v7 == a2)
      {
        (*(v9 + 216))();
      }

      else
      {
        (*(v9 + 200))();
      }
    }

    v4 = v12;
  }

  _Block_object_dispose(&v11, 8);
  v17 = v16;
  std::vector<HALS_Releaser<HALS_IOContext>>::__destroy_vector::operator()[abi:ne200100](&v17);
}

void sub_1DE5EECF8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, ...)
{
  va_start(va, a8);
  _Block_object_dispose(va, 8);
  *(v9 - 40) = v8;
  std::vector<HALS_Releaser<HALS_IOContext>>::__destroy_vector::operator()[abi:ne200100]((v9 - 40));
  _Unwind_Resume(a1);
}

__n128 __Block_byref_object_copy__13413(void *a1, uint64_t a2)
{
  a1[5] = 0;
  a1[6] = 0;
  a1[7] = 0;
  result = *(a2 + 40);
  *(a1 + 5) = result;
  a1[7] = *(a2 + 56);
  *(a2 + 40) = 0;
  *(a2 + 48) = 0;
  *(a2 + 56) = 0;
  return result;
}

void HALS_IOEngine2::DuckIOContextVolumeScalarForClient(HALS_IOEngine2 *this, double a2, double a3)
{
  v13 = 0;
  v14 = 0;
  v15 = 0;
  (*(*this + 256))(this, &v13);
  v6 = v13;
  v7 = v14;
  if (v13 != v14)
  {
    do
    {
      v8 = *v6;
      v9 = (*(**(this + 92) + 256))(*(this + 92), **(*v6 + 72), 0);
      v10 = *(v8 + 13);
      v16[0] = MEMORY[0x1E69E9820];
      v16[1] = 0x40000000;
      v16[2] = ___ZN26HALS_IOContext_Legacy_Impl19RampVolumeForEngineEP13HALS_IOEnginebfdd_block_invoke;
      v16[3] = &__block_descriptor_tmp_17_13703;
      v16[4] = v10;
      v16[5] = this;
      v18 = 0;
      v17 = v9;
      *&v16[6] = a2;
      *&v16[7] = a3;
      v11 = (*(**(v10 + 24) + 64))(*(v10 + 24));
      HALB_CommandGate::ExecuteCommand(v11, v16);
      HALS_ObjectMap::ReleaseObject(v8, v12);
      v6 += 8;
    }

    while (v6 != v7);
    v6 = v13;
  }

  if (v6)
  {
    v14 = v6;
    operator delete(v6);
  }
}

void sub_1DE5EEF38(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void HALS_IOEngine2::SetIOContextVolumeScalarForClient(HALS_IOEngine2 *this, int a2, char a3)
{
  v6 = (*(**(this + 92) + 256))(*(this + 92));
  v13 = 0;
  v14 = 0;
  v15 = 0;
  (*(*this + 256))(this, &v13);
  v8 = v13;
  v9 = v14;
  if (v13 != v14)
  {
    do
    {
      v10 = *v8;
      if (**(*v8 + 72) == a2)
      {
        v11 = *(v10 + 13);
        v16[0] = MEMORY[0x1E69E9820];
        v16[1] = 0x40000000;
        v16[2] = ___ZN26HALS_IOContext_Legacy_Impl18SetVolumeForEngineEP13HALS_IOEnginebf_block_invoke;
        v16[3] = &__block_descriptor_tmp_16_13700;
        v16[4] = v11;
        v16[5] = this;
        v18 = a3;
        v17 = v6;
        v12 = (*(**(v11 + 24) + 64))(*(v11 + 24));
        HALB_CommandGate::ExecuteCommand(v12, v16);
      }

      HALS_ObjectMap::ReleaseObject(v10, v7);
      v8 += 8;
    }

    while (v8 != v9);
    v8 = v13;
  }

  if (v8)
  {
    v14 = v8;
    operator delete(v8);
  }
}

void sub_1DE5EF0F8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void *HALS_IOEngine2::_GetIOContextStreamUsage(void *this, int a2, unsigned int a3, unsigned int *a4, BOOL *a5)
{
  if (a2)
  {
    for (i = this[97]; i != this[98]; ++i)
    {
      v6 = *i;
      if (*(*(*i + 32) + 16) == a2)
      {
        v7 = (*(this[101] + 24 * a3 + 56) - *(this[101] + 24 * a3 + 48)) >> 3;
        if (*a4 >= v7)
        {
          v7 = v7;
        }

        else
        {
          v7 = *a4;
        }

        if (v7)
        {
          v8 = 0;
          v9 = v6 + 24 * a3;
          v10 = *(v9 + 64);
          do
          {
            if (v10 == v8)
            {
              std::vector<std::tuple<unsigned int,void *,unsigned int>>::__throw_out_of_range[abi:ne200100]();
            }

            a5[v8] = (*(*(v9 + 56) + ((v8 >> 3) & 0x1FFFFFFFFFFFFFF8)) >> v8) & 1;
            ++v8;
          }

          while (v7 != v8);
        }

        goto LABEL_7;
      }
    }
  }

  LODWORD(v7) = 0;
LABEL_7:
  *a4 = v7;
  return this;
}

uint64_t HALS_IOEngine2::_SetIOContextStreamUsage(uint64_t result, int a2, unsigned int a3, uint64_t a4, int a5)
{
  if (a2)
  {
    v5 = result;
    v6 = *(result + 776);
    v7 = *(result + 784);
    if (v6 != v7)
    {
      while (1)
      {
        v10 = *v6;
        if (*(*(*v6 + 32) + 16) == a2)
        {
          break;
        }

        if (++v6 == v7)
        {
          return result;
        }
      }

      v11 = v10 + 24 * a3;
      *(v11 + 64) = 0;
      if (*(a4 + 8))
      {
        std::vector<BOOL>::operator=(v11 + 56, a4);
      }

      HALS_IOEngine2::_UpdateTotalStreamUsage(v5, a3, a5);
      v12 = atomic_load((v10 + 48));
      if (v12)
      {
        atomic_store(0, (v10 + 48));
        *(v10 + 104) = 0;
        v14 = *(v10 + 112);
          ;
        }

        *(v10 + 120) = v14;
        HALS_IOEngine2_IOContextInfo::StartIO(v10);
      }

      v15 = *(*v5 + 720);

      return v15(v5);
    }
  }

  return result;
}

uint64_t std::vector<BOOL>::operator=(uint64_t a1, uint64_t a2)
{
  if (a1 != a2)
  {
    v4 = *(a2 + 8);
    if (v4)
    {
      if (v4 > *(a1 + 16) << 6)
      {
        v5 = *a1;
        if (*a1)
        {
          operator delete(v5);
          *a1 = 0;
          *(a1 + 8) = 0;
          *(a1 + 16) = 0;
          v4 = *(a2 + 8);
        }

        std::vector<BOOL>::__vallocate[abi:ne200100](a1, v4);
      }

      memmove(*a1, *a2, (((v4 - 1) >> 3) & 0x1FFFFFFFFFFFFFF8) + 8);
      v6 = *(a2 + 8);
    }

    else
    {
      v6 = 0;
    }

    *(a1 + 8) = v6;
  }

  return a1;
}

void HALS_IOEngine2::CopyAllContexts(uint64_t a1, void **a2)
{
  v18 = 0;
  v19 = &v18;
  v20 = 0x4002000000;
  v21 = __Block_byref_object_copy__20;
  v22 = __Block_byref_object_dispose__21;
  __p = 0;
  v24 = 0;
  v25 = 0;
  v17[0] = MEMORY[0x1E69E9820];
  v17[1] = 0x40000000;
  v17[2] = ___ZNK14HALS_IOEngine215CopyAllContextsERNSt3__16vectorIP14HALS_IOContextNS0_9allocatorIS3_EEEE_block_invoke;
  v17[3] = &unk_1E8677608;
  v17[4] = &v18;
  v17[5] = a1;
  v3 = (*(*a1 + 64))(a1);
  HALB_CommandGate::ExecuteCommand(v3, v17);
  if (v19 + 5 != a2)
  {
    v4 = v19[5];
    v5 = v19[6];
    v6 = v5 - v4;
    v7 = a2[2];
    v8 = *a2;
    if (v7 - *a2 < (v5 - v4))
    {
      v9 = v6 >> 3;
      if (v8)
      {
        a2[1] = v8;
        operator delete(v8);
        v7 = 0;
        *a2 = 0;
        a2[1] = 0;
        a2[2] = 0;
      }

      if (!(v9 >> 61))
      {
        v10 = v7 >> 2;
        if (v7 >> 2 <= v9)
        {
          v10 = v6 >> 3;
        }

        if (v7 >= 0x7FFFFFFFFFFFFFF8)
        {
          v11 = 0x1FFFFFFFFFFFFFFFLL;
        }

        else
        {
          v11 = v10;
        }

        if (!(v11 >> 61))
        {
          std::allocator<HALS_Device *>::allocate_at_least[abi:ne200100](v11);
        }
      }

      std::vector<void *>::__throw_length_error[abi:ne200100]();
    }

    v12 = a2[1];
    v13 = v12 - v8;
    if (v12 - v8 >= v6)
    {
      if (v5 != v4)
      {
        memmove(v8, v4, v5 - v4);
      }

      v16 = &v8[v6];
    }

    else
    {
      if (v12 != v8)
      {
        memmove(*a2, v4, v12 - v8);
        v12 = a2[1];
      }

      v14 = &v4[v13];
      v15 = v5 - &v4[v13];
      if (v15)
      {
        memmove(v12, v14, v15);
      }

      v16 = &v12[v15];
    }

    a2[1] = v16;
  }

  _Block_object_dispose(&v18, 8);
  if (__p)
  {
    v24 = __p;
    operator delete(__p);
  }
}

void sub_1DE5EF5CC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, char a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, void *__p, uint64_t a21)
{
  _Block_object_dispose(&a15, 8);
  if (__p)
  {
    a21 = __p;
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

__n128 __Block_byref_object_copy__20(void *a1, uint64_t a2)
{
  a1[5] = 0;
  a1[6] = 0;
  a1[7] = 0;
  result = *(a2 + 40);
  *(a1 + 5) = result;
  a1[7] = *(a2 + 56);
  *(a2 + 40) = 0;
  *(a2 + 48) = 0;
  *(a2 + 56) = 0;
  return result;
}

void __Block_byref_object_dispose__21(uint64_t a1)
{
  v2 = *(a1 + 40);
  if (v2)
  {
    *(a1 + 48) = v2;
    operator delete(v2);
  }
}

void sub_1DE5EF680(void *a1)
{
  __cxa_begin_catch(a1);

  __cxa_end_catch();
}

void HALS_IOEngine2::MaybeRefreshCompositionOnAllContexts(HALS_IOEngine2 *this, const AudioObjectPropertyAddress **a2, const AudioObjectPropertyAddress *a3)
{
  v27[4] = *MEMORY[0x1E69E9840];
  v16 = 0x676C6F6261657245;
  LODWORD(v17) = 0;
  v4 = *a2;
  v5 = a2[1];
  if (*a2 != v5)
  {
    while (!CAPropertyAddress::IsCongruentAddress(&v16, v4, a3))
    {
      if (++v4 == v5)
      {
        v4 = v5;
        break;
      }
    }
  }

  v6 = *(this + 92);
  v7 = atomic_load((v6 + 776));
  if (v4 != v5 || (v7 & 1) != 0)
  {
    v16 = 0;
    v17 = &v16;
    v18 = 0x4002000000;
    v19 = __Block_byref_object_copy__13413;
    v20 = __Block_byref_object_dispose__13414;
    memset(v21, 0, sizeof(v21));
    v15[0] = MEMORY[0x1E69E9820];
    v15[1] = 0x40000000;
    v15[2] = ___ZN14HALS_IOEngine236MaybeRefreshCompositionOnAllContextsERK21CAPropertyAddressList_block_invoke;
    v15[3] = &unk_1E86775E0;
    v15[4] = &v16;
    v15[5] = this;
    v8 = (*(*this + 64))(this);
    HALB_CommandGate::ExecuteCommand(v8, v15);
    v9 = v17;
    v23 = 0;
    v24 = &v23;
    v25 = 0x2000000000;
    v26 = 0;
    v22[0] = MEMORY[0x1E69E9820];
    v22[1] = 0x40000000;
    v22[2] = ___ZN11HALS_Device27UpdateAndCopyEngineReplacerEv_block_invoke;
    v22[3] = &unk_1E8679400;
    v22[4] = &v23;
    v22[5] = v6;
    v10 = (*(*v6 + 64))(v6);
    HALB_CommandGate::ExecuteCommand(v10, v22);
    v11 = v24[3];
    _Block_object_dispose(&v23, 8);
    if (v11)
    {
      v27[0] = &unk_1F5981AB8;
      v27[1] = v9 + 5;
      v27[3] = v27;
      (*(*v11 + 1000))(v11, v27);
      std::__function::__value_func<void ()(void)>::~__value_func[abi:ne200100](v27);
    }

    else
    {
      for (i = v9[5]; i != v9[6]; i += 8)
      {
        (*(**(*i + 104) + 248))(*(*i + 104));
      }
    }

    HALS_ObjectMap::ReleaseObject(v11, v12);
    _Block_object_dispose(&v16, 8);
    v22[0] = v21;
    std::vector<HALS_Releaser<HALS_IOContext>>::__destroy_vector::operator()[abi:ne200100](v22);
  }

  v13 = *MEMORY[0x1E69E9840];
}

void sub_1DE5EF984(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, ...)
{
  va_start(va, a8);
  std::__function::__value_func<void ()(void)>::~__value_func[abi:ne200100](v10 - 104);
  HALS_ObjectMap::ReleaseObject(v8, v12);
  _Block_object_dispose(va, 8);
  *(v10 - 136) = v9;
  std::vector<HALS_Releaser<HALS_IOContext>>::__destroy_vector::operator()[abi:ne200100]((v10 - 136));
  _Unwind_Resume(a1);
}

uint64_t std::__function::__func<HALS_IOEngine2::MaybeRefreshCompositionOnAllContexts(CAPropertyAddressList const&)::$_0,std::allocator<HALS_IOEngine2::MaybeRefreshCompositionOnAllContexts(CAPropertyAddressList const&)::$_0>,void ()(void)>::target(uint64_t a1, uint64_t a2)
{
  if (std::type_info::operator==[abi:ne200100](*(a2 + 8), "ZN14HALS_IOEngine236MaybeRefreshCompositionOnAllContextsERK21CAPropertyAddressListE3$_0"))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t std::__function::__func<HALS_IOEngine2::MaybeRefreshCompositionOnAllContexts(CAPropertyAddressList const&)::$_0,std::allocator<HALS_IOEngine2::MaybeRefreshCompositionOnAllContexts(CAPropertyAddressList const&)::$_0>,void ()(void)>::operator()(uint64_t result)
{
  v1 = *(result + 8);
  v2 = *v1;
  if (*v1 != *(v1 + 8))
  {
    v3 = result;
    do
    {
      v4 = *v2++;
      result = (*(**(v4 + 104) + 248))(*(v4 + 104));
    }

    while (v2 != *(*(v3 + 8) + 8));
  }

  return result;
}

uint64_t std::__function::__func<HALS_IOEngine2::MaybeRefreshCompositionOnAllContexts(CAPropertyAddressList const&)::$_0,std::allocator<HALS_IOEngine2::MaybeRefreshCompositionOnAllContexts(CAPropertyAddressList const&)::$_0>,void ()(void)>::__clone(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_1F5981AB8;
  a2[1] = v2;
  return result;
}

void HALS_IOEngine2::AssessAllContexts(HALS_IOEngine2 *this)
{
  v5 = 0;
  v6 = &v5;
  v7 = 0x4002000000;
  v8 = __Block_byref_object_copy__13413;
  v9 = __Block_byref_object_dispose__13414;
  memset(v10, 0, sizeof(v10));
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 0x40000000;
  v4[2] = ___ZN14HALS_IOEngine217AssessAllContextsEv_block_invoke;
  v4[3] = &unk_1E86775B8;
  v4[4] = &v5;
  v4[5] = this;
  v1 = (*(*this + 64))(this);
  HALB_CommandGate::ExecuteCommand(v1, v4);
  v2 = v6;
  for (i = v6[5]; i != v2[6]; i += 8)
  {
    (*(**(*i + 104) + 240))(*(*i + 104));
    v2 = v6;
  }

  _Block_object_dispose(&v5, 8);
  v11 = v10;
  std::vector<HALS_Releaser<HALS_IOContext>>::__destroy_vector::operator()[abi:ne200100](&v11);
}

void sub_1DE5EFCC0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, ...)
{
  va_start(va, a8);
  _Block_object_dispose(va, 8);
  *(v9 - 24) = v8;
  std::vector<HALS_Releaser<HALS_IOContext>>::__destroy_vector::operator()[abi:ne200100]((v9 - 24));
  _Unwind_Resume(a1);
}

void HALS_IOEngine2::ResumeAllContexts(unsigned int *a1)
{
  v26 = *MEMORY[0x1E69E9840];
  v2 = a1[4];
  kdebug_trace();
  v18[0] = 0;
  v18[1] = v18;
  v18[2] = 0x4002000000;
  v18[3] = __Block_byref_object_copy__13413;
  v18[4] = __Block_byref_object_dispose__13414;
  memset(v19, 0, sizeof(v19));
  v12 = 0;
  v13 = &v12;
  v14 = 0x3002000000;
  v15 = __Block_byref_object_copy__11;
  v16 = __Block_byref_object_dispose__12;
  v17 = 0;
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 0x40000000;
  v11[2] = ___ZN14HALS_IOEngine217ResumeAllContextsERKNSt3__16vectorIjNS0_9allocatorIjEEEE_block_invoke;
  v11[3] = &unk_1E8677590;
  v11[5] = &v12;
  v11[6] = a1;
  v11[4] = v18;
  v3 = (*(*a1 + 64))(a1);
  HALB_CommandGate::ExecuteCommand(v3, v11);
  v4 = 1;
  v5 = MEMORY[0x1E69E9C10];
  while (1)
  {
    v6 = v13[5];
    v7 = dispatch_time(0, 2000000000);
    if (!dispatch_block_wait(v6, v7))
    {
      break;
    }

    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315650;
      v21 = "HALS_IOEngine2.cpp";
      v22 = 1024;
      v23 = 1140;
      v24 = 1024;
      v25 = 2 * v4;
      _os_log_impl(&dword_1DE1F9000, v5, OS_LOG_TYPE_DEFAULT, "%25s:%-5d  HALS_IOEngine2::ResumeAllContexts: still waiting after %u seconds", buf, 0x18u);
      ++v4;
    }
  }

  v8 = v13[5];
  if (v8)
  {
    _Block_release(v8);
  }

  v9 = a1[4];
  kdebug_trace();
  _Block_object_dispose(&v12, 8);
  _Block_object_dispose(v18, 8);
  v12 = v19;
  std::vector<HALS_Releaser<HALS_IOContext>>::__destroy_vector::operator()[abi:ne200100](&v12);
  v10 = *MEMORY[0x1E69E9840];
}

void sub_1DE5EFFC4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, void **a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va1, a11);
  va_start(va, a11);
  v12 = va_arg(va1, void **);
  v14 = va_arg(va1, void);
  v15 = va_arg(va1, void);
  v16 = va_arg(va1, void);
  v17 = va_arg(va1, void);
  v18 = va_arg(va1, void);
  _Block_object_dispose(va, 8);
  _Block_object_dispose(va1, 8);
  v12 = a4;
  std::vector<HALS_Releaser<HALS_IOContext>>::__destroy_vector::operator()[abi:ne200100](va);
  _Unwind_Resume(a1);
}

void ___ZN14HALS_IOEngine217ResumeAllContextsERKNSt3__16vectorIjNS0_9allocatorIjEEEE_block_invoke(void *a1)
{
  v9 = *MEMORY[0x1E69E9840];
  v2 = a1[6];
  (*(*v2 + 920))(v2, *(a1[4] + 8) + 40);
  if (v2[200])
  {
    --v2[200];
  }

  else if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT))
  {
    v5 = 136315394;
    v6 = "HALS_IOEngine2.cpp";
    v7 = 1024;
    v8 = 1117;
    _os_log_impl(&dword_1DE1F9000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT, "%25s:%-5d  HALS_IOEngine2::ResumeAllContexts: extra resume", &v5, 0x12u);
  }

  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 0x40000000;
  v4[2] = ___ZN14HALS_IOEngine217ResumeAllContextsERKNSt3__16vectorIjNS0_9allocatorIjEEEE_block_invoke_15;
  v4[3] = &unk_1E8677568;
  v4[4] = a1[4];
  v4[5] = v2;
  *(*(a1[5] + 8) + 40) = dispatch_block_create(DISPATCH_BLOCK_ASSIGN_CURRENT, v4);
  AMCP::Utility::Dispatch_Queue::async((v2 + 100), *(*(a1[5] + 8) + 40));
  v3 = *MEMORY[0x1E69E9840];
}

uint64_t ___ZN14HALS_IOEngine217ResumeAllContextsERKNSt3__16vectorIjNS0_9allocatorIjEEEE_block_invoke_15(uint64_t result)
{
  v1 = *(*(result + 32) + 8);
  v2 = *(v1 + 40);
  if (v2 != *(v1 + 48))
  {
    v3 = result;
    v4 = *(result + 40);
    do
    {
      v5 = *v2++;
      result = (*(**(v5 + 104) + 216))(*(v5 + 104), *(v4 + 16));
    }

    while (v2 != *(*(*(v3 + 32) + 8) + 48));
  }

  return result;
}

void HALS_IOEngine2::PauseAllContexts(unsigned int *a1, uint64_t a2)
{
  v28 = *MEMORY[0x1E69E9840];
  v4 = a1[4];
  kdebug_trace();
  v20[0] = 0;
  v20[1] = v20;
  v20[2] = 0x4002000000;
  v20[3] = __Block_byref_object_copy__13413;
  v20[4] = __Block_byref_object_dispose__13414;
  memset(v21, 0, sizeof(v21));
  v14 = 0;
  v15 = &v14;
  v16 = 0x3002000000;
  v17 = __Block_byref_object_copy__11;
  v18 = __Block_byref_object_dispose__12;
  v19 = 0;
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 0x40000000;
  v13[2] = ___ZN14HALS_IOEngine216PauseAllContextsERNSt3__16vectorIjNS0_9allocatorIjEEEE_block_invoke;
  v13[3] = &unk_1E8677540;
  v13[4] = v20;
  v13[5] = &v14;
  v13[6] = a1;
  v13[7] = a2;
  v5 = (*(*a1 + 64))(a1);
  HALB_CommandGate::ExecuteCommand(v5, v13);
  v6 = 1;
  v7 = MEMORY[0x1E69E9C10];
  while (1)
  {
    v8 = v15[5];
    v9 = dispatch_time(0, 2000000000);
    if (!dispatch_block_wait(v8, v9))
    {
      break;
    }

    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315650;
      v23 = "HALS_IOEngine2.cpp";
      v24 = 1024;
      v25 = 1092;
      v26 = 1024;
      v27 = 2 * v6;
      _os_log_impl(&dword_1DE1F9000, v7, OS_LOG_TYPE_DEFAULT, "%25s:%-5d  HALS_IOEngine2::PauseAllContexts: still waiting after %u seconds", buf, 0x18u);
      ++v6;
    }
  }

  v10 = v15[5];
  if (v10)
  {
    _Block_release(v10);
  }

  v11 = a1[4];
  kdebug_trace();
  _Block_object_dispose(&v14, 8);
  _Block_object_dispose(v20, 8);
  v14 = v21;
  std::vector<HALS_Releaser<HALS_IOContext>>::__destroy_vector::operator()[abi:ne200100](&v14);
  v12 = *MEMORY[0x1E69E9840];
}

void sub_1DE5F050C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, void **a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, void **a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, char a27)
{
  _Block_object_dispose(&a21, 8);
  _Block_object_dispose(&a27, 8);
  a21 = a12;
  std::vector<HALS_Releaser<HALS_IOContext>>::__destroy_vector::operator()[abi:ne200100](&a21);
  _Unwind_Resume(a1);
}

void ___ZN14HALS_IOEngine216PauseAllContextsERNSt3__16vectorIjNS0_9allocatorIjEEEE_block_invoke(void *a1)
{
  v2 = a1[6];
  (*(*v2 + 920))(v2, *(a1[4] + 8) + 40);
  ++v2[200];
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 0x40000000;
  block[2] = ___ZN14HALS_IOEngine216PauseAllContextsERNSt3__16vectorIjNS0_9allocatorIjEEEE_block_invoke_2;
  block[3] = &unk_1E8677518;
  block[4] = a1[4];
  block[5] = v2;
  block[6] = a1[7];
  *(*(a1[5] + 8) + 40) = dispatch_block_create(DISPATCH_BLOCK_ASSIGN_CURRENT, block);
  AMCP::Utility::Dispatch_Queue::async((v2 + 100), *(*(a1[5] + 8) + 40));
}

void sub_1DE5F0638(void *a1)
{
  __cxa_begin_catch(a1);

  __cxa_end_catch();
}

void ___ZN14HALS_IOEngine216PauseAllContextsERNSt3__16vectorIjNS0_9allocatorIjEEEE_block_invoke_2(void *a1)
{
  v1 = *(a1[4] + 8);
  v2 = *(v1 + 40);
  if (v2 != *(v1 + 48))
  {
    v4 = a1[5];
    do
    {
      v5 = *v2;
      if ((*(**(*v2 + 104) + 200))(*(*v2 + 104), *(v4 + 16)))
      {
        v6 = a1[6];
        v7 = *(v5 + 16);
        std::vector<unsigned int>::push_back[abi:ne200100](v6, &v7);
      }

      ++v2;
    }

    while (v2 != *(*(a1[4] + 8) + 48));
  }
}

void HALS_IOEngine2::UnregisterIOContext(HALS_IOEngine2 *this, HALS_IOContext *a2)
{
  v3[0] = MEMORY[0x1E69E9820];
  v3[1] = 0x40000000;
  v3[2] = ___ZN14HALS_IOEngine219UnregisterIOContextEP14HALS_IOContext_block_invoke;
  v3[3] = &__block_descriptor_tmp_10_13449;
  v3[4] = this;
  v3[5] = a2;
  v2 = (*(*this + 64))(this);
  HALB_CommandGate::ExecuteCommand(v2, v3);
}

void HALS_IOEngine2::RegisterIOContext(HALS_IOEngine2 *this, HALS_IOContext *a2)
{
  v3[0] = MEMORY[0x1E69E9820];
  v3[1] = 0x40000000;
  v3[2] = ___ZN14HALS_IOEngine217RegisterIOContextEP14HALS_IOContext_block_invoke;
  v3[3] = &__block_descriptor_tmp_13452;
  v3[4] = this;
  v3[5] = a2;
  v2 = (*(*this + 64))(this);
  HALB_CommandGate::ExecuteCommand(v2, v3);
}

uint64_t HALS_IOEngine2::GetMIGDispatchQueue(HALS_IOEngine2 *this)
{
  return *(this + 95);
}

{
  return *(this + 95);
}

void HALS_IOEngine2::_Deactivate(HALS_IOEngine2 *this)
{
  *(this + 2) = 0;
  v5 = 0;
  v6 = 0;
  v7 = 0;
  (*(*this + 920))(this, &v5);
  v2 = v5;
  v3 = v6;
  while (v2 != v3)
  {
    if (*v2)
    {
      (*(*this + 216))(this);
    }

    ++v2;
  }

  v4 = *(this + 101);
  *(this + 101) = 0;
  if (v4)
  {
    std::default_delete<HALS_IOEngine2_DeviceInfo>::operator()[abi:ne200100](v4);
  }

  *(this + 92) = 0;
  v8 = &v5;
  std::vector<HALS_Releaser<HALS_IOContext>>::__destroy_vector::operator()[abi:ne200100](&v8);
}

void sub_1DE5F0978(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, void **a12)
{
  a12 = &a9;
  std::vector<HALS_Releaser<HALS_IOContext>>::__destroy_vector::operator()[abi:ne200100](&a12);
  _Unwind_Resume(a1);
}

uint64_t HALS_IOEngine2::Activate(HALS_IOEngine2 *this, HALS_Object *a2)
{
  HALS_Object::Activate(this, a2);
  v3 = *(*this + 960);

  return v3(this);
}

void HALS_IOEngine2::HALS_IOEngine2(HALS_IOEngine2 *this, HALS_IODevice *a2, uint64_t a3, uint64_t a4, HALS_Object *a5)
{
  v13 = *MEMORY[0x1E69E9840];
  HALS_IOEngine::HALS_IOEngine(this, a2, a3, a4, a5);
  *v7 = &unk_1F5981488;
  *(v7 + 736) = a2;
  *(v7 + 744) = 0u;
  *(v7 + 760) = 0u;
  *(v7 + 776) = 0u;
  *(v7 + 792) = 0;
  *(v7 + 800) = 0;
  *(v7 + 1120) = 0;
  *(v7 + 1128) = 0;
  *(v7 + 1096) = 0u;
  *(v7 + 1110) = 0;
  *(v7 + 804) = 0u;
  *(v7 + 820) = 0u;
  *(v7 + 836) = 0u;
  *(v7 + 852) = 0u;
  *(v7 + 868) = 0u;
  *(v7 + 884) = 0u;
  *(v7 + 900) = 0u;
  *(v7 + 916) = 0u;
  *(v7 + 932) = 0u;
  *(v7 + 948) = 0u;
  *(v7 + 964) = 0u;
  *(v7 + 980) = 0u;
  *(v7 + 996) = 0u;
  *(v7 + 1012) = 0u;
  *(v7 + 1028) = 0u;
  *(v7 + 1044) = 0u;
  *(v7 + 1060) = 0u;
  *(v7 + 1076) = 0u;
  if (g_static_start_options != 1)
  {
    operator new();
  }

  v8 = (*(*a2 + 216))(a2);
  v11 = v8;
  v12 = 1;
  if (v8)
  {
    CFStringGetLength(v8);
    v8 = v11;
  }

  *v10 = 256;
  CACFString::GetCString(v8, (this + 836), v10, v9);
  operator new[]();
}

void sub_1DE5F1088(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, char a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, char a51, uint64_t a52, void *__p, uint64_t a54, int a55, __int16 a56, char a57, char a58)
{
  v64 = *v61;
  if (*v61)
  {
    v60[3].__vftable = v64;
    operator delete(v64);
  }

  v65 = *v62;
  if (*v62)
  {
    v60[1].__shared_weak_owners_ = v65;
    operator delete(v65);
  }

  std::__shared_weak_count::~__shared_weak_count(v60);
  operator delete(v66);
  std::unique_ptr<HALS_IOEngine2_TempBuffer>::reset[abi:ne200100]((v58 + 824), 0);
  std::unique_ptr<HALS_IOEngine2_TempBuffer>::reset[abi:ne200100]((v58 + 816), 0);
  v67 = *(v58 + 808);
  *(v58 + 808) = 0;
  if (v67)
  {
    std::default_delete<HALS_IOEngine2_DeviceInfo>::operator()[abi:ne200100](v67);
  }

  __p = (v58 + 776);
  std::vector<std::unique_ptr<HALS_IOEngine2_IOContextInfo>>::__destroy_vector::operator()[abi:ne200100](&__p);
  std::unique_ptr<AMCP::Utility::Dispatch_Queue>::reset[abi:ne200100](v59, 0);
  std::unique_ptr<AMCP::Utility::Dispatch_Queue>::reset[abi:ne200100]((v58 + 760), 0);
  v68 = *(v58 + 752);
  if (v68)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v68);
  }

  HALS_IOEngine::~HALS_IOEngine(v58);
  _Unwind_Resume(a1);
}

void std::stringbuf::str[abi:ne200100](uint64_t a1, __int128 *a2)
{
  if (*(a1 + 87) < 0)
  {
    operator delete(*(a1 + 64));
  }

  v4 = *a2;
  *(a1 + 80) = *(a2 + 2);
  *(a1 + 64) = v4;
  *(a2 + 23) = 0;
  *a2 = 0;

  std::stringbuf::__init_buf_ptrs[abi:ne200100](a1);
}

void std::vector<std::unique_ptr<HALS_IOEngine2_IOContextInfo>>::__destroy_vector::operator()[abi:ne200100](void ***a1)
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
        std::unique_ptr<HALS_IOEngine2_IOContextInfo>::reset[abi:ne200100](--v4, 0);
      }

      while (v4 != v2);
      v5 = **a1;
    }

    v1[1] = v2;

    operator delete(v5);
  }
}

void HALS_IOEngine2::~HALS_IOEngine2(HALS_IOEngine2 *this)
{
  *this = &unk_1F5981488;
  std::unique_ptr<HALS_IOEngine2_TempBuffer>::reset[abi:ne200100](this + 103, 0);
  std::unique_ptr<HALS_IOEngine2_TempBuffer>::reset[abi:ne200100](this + 102, 0);
  v2 = *(this + 101);
  *(this + 101) = 0;
  if (v2)
  {
    std::default_delete<HALS_IOEngine2_DeviceInfo>::operator()[abi:ne200100](v2);
  }

  v4 = (this + 776);
  std::vector<std::unique_ptr<HALS_IOEngine2_IOContextInfo>>::__destroy_vector::operator()[abi:ne200100](&v4);
  std::unique_ptr<AMCP::Utility::Dispatch_Queue>::reset[abi:ne200100](this + 96, 0);
  std::unique_ptr<AMCP::Utility::Dispatch_Queue>::reset[abi:ne200100](this + 95, 0);
  v3 = *(this + 94);
  if (v3)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v3);
  }

  HALS_IOEngine::~HALS_IOEngine(this);
}

void ___ZN14HALS_IOEngine239ClearOutputStreamsUsedOnlyByThisContextEj_block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = v1[101];
  if (v2)
  {
    v3 = *(a1 + 40);
    v4 = *(v2 + 56) - *(v2 + 48);
    v5 = (v4 >> 3);
    std::vector<int>::vector[abi:ne200100](v18, v5);
    std::vector<int>::vector[abi:ne200100](__p, v5);
    if ((v4 & 0x7FFFFFFF8) != 0)
    {
      v6 = 0;
      v7 = v1[97];
      v8 = v1[98];
      do
      {
        if (v7 != v8)
        {
          v9 = v18[0];
          v10 = __p[0];
          v11 = v7;
          do
          {
            v12 = *v11;
            if (v6 < *(*v11 + 64) && (*(*(v12 + 56) + 8 * (v6 >> 6)) & (1 << v6)) != 0)
            {
              if (*(*(v12 + 32) + 16) == v3)
              {
                v13 = v10;
              }

              else
              {
                v13 = v9;
              }

              ++v13[v6];
            }

            ++v11;
          }

          while (v11 != v8);
        }

        ++v6;
      }

      while (v6 != v5);
      v14 = 0;
      do
      {
        if (*(__p[0] + v14) == 1 && !*(v18[0] + v14))
        {
          v15 = *(*(v1[101] + 48) + 8 * v14);
          v16 = *(v15 + 168);
          if (v16)
          {
            bzero(v16, *(v15 + 176));
          }
        }

        ++v14;
      }

      while (v5 != v14);
    }

    if (__p[0])
    {
      __p[1] = __p[0];
      operator delete(__p[0]);
    }

    if (v18[0])
    {
      v18[1] = v18[0];
      operator delete(v18[0]);
    }
  }
}

void sub_1DE5F14B4(void *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  if (v21)
  {
    operator delete(v21);
  }

  __cxa_begin_catch(a1);

  __cxa_end_catch();
}

void *std::vector<int>::vector[abi:ne200100](void *result, unint64_t a2)
{
  *result = 0;
  result[1] = 0;
  result[2] = 0;
  if (a2)
  {
    std::vector<unsigned int>::__vallocate[abi:ne200100](result, a2);
  }

  return result;
}

void sub_1DE5F1558(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

void HALS_IOEngine2::_GetExternalDriverStreamMixBufferInfoList(HALS_IOEngine2 *this, uint64_t a2)
{
  *this = 0;
  *(this + 1) = 0;
  *(this + 2) = 0;
  v2 = 48;
  do
  {
    v7 = v2;
    for (i = *(a2 + v2); i != *(a2 + v2 + 8); ++i)
    {
      v4 = *i;
      if (!*(*i + 24))
      {
        if (*(v4 + 464))
        {
          v6 = *(v4 + 64) * *(v4 + 36);
          operator new();
        }
      }
    }

    v2 += 24;
  }

  while (v7 != 72);
}

void sub_1DE5F1714(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p)
{
  if (__p)
  {
    *(a11 + 8) = __p;
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t HALB_InstrumentedEvent_RealtimeDuration::markBeginTime(HALB_InstrumentedEvent_RealtimeDuration *this)
{
  ++*(this + 2);
  result = mach_absolute_time();
  *(this + 3) = result;
  *(this + 4) = result;
  return result;
}

void HALB_RealtimeDuration_Collection::enumSubDurations(uint64_t **a1, uint64_t a2)
{
  if (*(a2 + 24))
  {
    v2 = *a1;
    v3 = a1[1];
    if (*a1 != v3)
    {
      do
      {
        v5 = *v2;
        v6 = v2[1];
        if (v6)
        {
          atomic_fetch_add_explicit(&v6->__shared_owners_, 1uLL, memory_order_relaxed);
          v9 = v6;
          atomic_fetch_add_explicit(&v6->__shared_owners_, 1uLL, memory_order_relaxed);
        }

        else
        {
          v9 = 0;
        }

        v8 = v5;
        v7 = *(a2 + 24);
        if (!v7)
        {
          std::__throw_bad_function_call[abi:ne200100]();
        }

        (*(*v7 + 48))(v7, &v8);
        if (v9)
        {
          std::__shared_weak_count::__release_shared[abi:ne200100](v9);
        }

        if (v6)
        {
          std::__shared_weak_count::__release_shared[abi:ne200100](v6);
        }

        v2 += 2;
      }

      while (v2 != v3);
    }
  }
}

void sub_1DE5F1874(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10)
{
  if (a10)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a10);
  }

  if (v10)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v10);
  }

  _Unwind_Resume(exception_object);
}

void HALS_AHPManager::ObjectsPublishedAndDied(HALS_AHPManager *this, HALS_ObjectMap *a2, int a3, const unsigned int *a4, unsigned int a5, const unsigned int *a6, HALS_Client *a7)
{
  v9 = this;
  if (a2 == 1)
  {
    HALS_ObjectMap::RetainObject(this, a2);
    v10 = v9;
  }

  else
  {
    v10 = HALS_ObjectMap::CopyObjectByObjectID(a2);
  }

  v63 = 0;
  v64 = 0;
  v65 = 0;
  if (a5)
  {
    v45 = v9;
    v46 = v10;
    v11 = 0;
    v12 = a5;
    v50 = a5;
    v51 = a6;
    do
    {
      v13 = &a6[v11];
      v14 = HALS_ObjectMap::CopyObjectByObjectID(*v13);
      v16 = v14;
      if (v14)
      {
        v17 = *(v14 + 20);
        if (v17 <= 1701078389)
        {
          v18 = v17 == 1633773415;
          v19 = 1633969526;
        }

        else
        {
          v18 = v17 == 1701078390 || v17 == 1701733488;
          v19 = 1919182198;
        }

        v20 = v18 || v17 == v19;
        if (v20 || (v35 = *(v14 + 24), v17 != v35) && (v35 <= 1701078389 ? (v36 = v35 == 1633773415, v37 = 1633969526) : (v35 != 1701078390 ? (v36 = v35 == 1919182198) : (v36 = 1), v37 = 1701733488), !v36 ? (v38 = v35 == v37) : (v38 = 1), v38))
        {
          v21 = *v13;
          pthread_once(&HALS_ObjectMap::sObjectInfoListInitialized, HALS_ObjectMap::Initialize);
          if (v21)
          {
            v59 = HALS_ObjectMap::sObjectInfoListMutex;
            LODWORD(v60) = HALB_Mutex::Lock(HALS_ObjectMap::sObjectInfoListMutex);
            v52 = 0u;
            if (HALS_ObjectMap::sObjectInfoList)
            {
              v22 = *HALS_ObjectMap::sObjectInfoList;
              v23 = *(HALS_ObjectMap::sObjectInfoList + 8);
              if (*HALS_ObjectMap::sObjectInfoList != v23)
              {
                v24 = 0;
                v52 = 0uLL;
                do
                {
                  if (*(*(v22 + 8) + 28) == v21)
                  {
                    v25 = v24 - v52;
                    v26 = (v24 - v52) >> 2;
                    v27 = v26 + 1;
                    if ((v26 + 1) >> 62)
                    {
                      std::vector<void *>::__throw_length_error[abi:ne200100]();
                    }

                    if (-v52 >> 1 > v27)
                    {
                      v27 = -v52 >> 1;
                    }

                    if (-v52 >= 0x7FFFFFFFFFFFFFFCLL)
                    {
                      v28 = 0x3FFFFFFFFFFFFFFFLL;
                    }

                    else
                    {
                      v28 = v27;
                    }

                    if (v28)
                    {
                      std::allocator<unsigned int>::allocate_at_least[abi:ne200100](v28);
                    }

                    v29 = (v24 - v52) >> 2;
                    v30 = (4 * v26);
                    v31 = (4 * v26 - 4 * v29);
                    *v30 = *(v22 + 16);
                    v24 = v30 + 1;
                    memcpy(v31, v52, v25);
                    if (v52)
                    {
                      operator delete(v52);
                    }

                    *&v32 = v31;
                    *(&v32 + 1) = v24;
                    v52 = v32;
                  }

                  v22 += 24;
                }

                while (v22 != v23);
              }
            }

            HALB_Mutex::Locker::~Locker(&v59);
            v12 = v50;
            a6 = v51;
            v33 = v52;
          }

          else
          {
            v33 = 0uLL;
          }

          v34 = v33;
          std::vector<unsigned int>::__insert_with_size[abi:ne200100]<std::__wrap_iter<unsigned int *>,std::__wrap_iter<unsigned int *>>(&v63, v64, v33, *(&v33 + 1), (*(&v33 + 1) - v33) >> 2);
          if (v34)
          {
            operator delete(v34);
          }
        }

        std::vector<unsigned int>::push_back[abi:ne200100](&v63, v13);
      }

      HALS_ObjectMap::ReleaseObject(v16, v15);
      ++v11;
    }

    while (v11 != v12);
    v40 = v63;
    v39 = v64;
    v9 = v45;
    v10 = v46;
  }

  else
  {
    v39 = 0;
    v40 = 0;
  }

  v59 = 0;
  v60 = &v59;
  v61 = 0x2000000000;
  v62 = 0;
  v53[0] = MEMORY[0x1E69E9820];
  v53[1] = 1174405120;
  v53[2] = ___ZN15HALS_AHPManager23ObjectsPublishedAndDiedEjjPKjjS1_P11HALS_Client_block_invoke;
  v53[3] = &unk_1F5982100;
  v53[5] = v9;
  __p = 0;
  v55 = 0;
  v56 = 0;
  std::vector<unsigned int>::__init_with_size[abi:ne200100]<unsigned int *,unsigned int *>(&__p, v40, v39, (v39 - v40) >> 2);
  v58 = a3;
  v53[4] = &v59;
  v57 = a4;
  v41 = (*(*v9 + 64))(v9);
  HALB_CommandGate::ExecuteCommand(v41, v53);
  if (*(v60 + 24) == 1)
  {
    v42 = *(v9 + 4);
    if (a7)
    {
      v43 = *(a7 + 4);
    }

    else
    {
      v43 = 0;
    }

    *&v66.mSelector = 0x676C6F6264657623;
    v66.mElement = 0;
    HALS_Object::PropertiesChanged(v9, v42, v43, 1, &v66);
  }

  if (__p)
  {
    v55 = __p;
    operator delete(__p);
  }

  _Block_object_dispose(&v59, 8);
  if (v40)
  {
    operator delete(v40);
  }

  HALS_ObjectMap::ReleaseObject(v10, v44);
}

void sub_1DE5F1CF0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, HALS_ObjectMap *a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, void *__p, uint64_t a27)
{
  v32 = v27;
  if (__p)
  {
    operator delete(__p);
  }

  _Block_object_dispose((v28 - 160), 8);
  v31 = *(v28 - 128);
  if (v31)
  {
    operator delete(v31);
  }

  HALS_ObjectMap::ReleaseObject(v32, v30);
  _Unwind_Resume(a1);
}

void ___ZN15HALS_AHPManager23ObjectsPublishedAndDiedEjjPKjjS1_P11HALS_Client_block_invoke(uint64_t a1)
{
  v3 = *(a1 + 40);
  v2 = *(a1 + 48);
  for (i = *(a1 + 56); v2 != i; ++v2)
  {
    v6 = v3[56];
    v5 = v3[57];
    if (v6 != v5)
    {
      while (*v6 != *v2)
      {
        v6 += 4;
        if (v6 == v5)
        {
          v6 = v3[57];
          break;
        }
      }
    }

    if (v5 != v6)
    {
      *(*(*(a1 + 32) + 8) + 24) = 1;
      v7 = v5 - (v6 + 4);
      if (v5 != v6 + 4)
      {
        memmove(v6, v6 + 4, v5 - (v6 + 4));
      }

      v3[57] = &v6[v7];
    }

    v9 = v3[53];
    v8 = v3[54];
    if (v9 != v8)
    {
      while (*v9 != *v2)
      {
        v9 += 4;
        if (v9 == v8)
        {
          v9 = v3[54];
          break;
        }
      }
    }

    if (v8 != v9)
    {
      v10 = v8 - (v9 + 4);
      if (v8 != v9 + 4)
      {
        memmove(v9, v9 + 4, v8 - (v9 + 4));
      }

      v3[54] = &v9[v10];
    }

    v12 = v3[50];
    v11 = v3[51];
    if (v12 != v11)
    {
      while (*v12 != *v2)
      {
        v12 += 4;
        if (v12 == v11)
        {
          v12 = v3[51];
          break;
        }
      }
    }

    if (v11 != v12)
    {
      v13 = v11 - (v12 + 4);
      if (v11 != v12 + 4)
      {
        memmove(v12, v12 + 4, v11 - (v12 + 4));
      }

      v3[51] = &v12[v13];
    }

    v14 = HALS_ObjectMap::CopyObjectByObjectID(*v2);
    v16 = v14;
    if (v14)
    {
      (*(*v14 + 8))(v14);
      HALS_ObjectMap::ObjectIsDead(v16, v17);
    }

    HALS_ObjectMap::ReleaseObject(v16, v15);
  }

  v18 = *(a1 + 80);
  if (v18)
  {
    v19 = 0;
    while (1)
    {
      v20 = *(*(a1 + 72) + 4 * v19);
      v35 = *(*(a1 + 72) + 4 * v19);
      v22 = v3[53];
      v21 = v3[54];
      if (v22 != v21)
      {
        while (*v22 != v20)
        {
          v22 += 4;
          if (v22 == v21)
          {
            v22 = v3[54];
            break;
          }
        }
      }

      if (v21 == v22)
      {
        goto LABEL_56;
      }

      v23 = v21 - (v22 + 4);
      if (v21 != v22 + 4)
      {
        memmove(v22, v22 + 4, v21 - (v22 + 4));
      }

      v3[54] = &v22[v23];
      v24 = HALS_ObjectMap::CopyObjectByObjectID(v20);
      v26 = v24;
      if (v24)
      {
        break;
      }

LABEL_55:
      HALS_ObjectMap::ReleaseObject(v26, v25);
      v18 = *(a1 + 80);
LABEL_56:
      if (++v19 >= v18)
      {
        return;
      }
    }

    v27 = *(v24 + 20);
    if (v27 <= 1701078389)
    {
      if (v27 == 1633773415 || v27 == 1633969526)
      {
        goto LABEL_53;
      }
    }

    else if (v27 == 1701078390 || v27 == 1701733488 || v27 == 1919182198)
    {
      goto LABEL_53;
    }

    v31 = *(v24 + 24);
    if (v27 == v31)
    {
      goto LABEL_54;
    }

    if (v31 <= 1701078389)
    {
      if (v31 != 1633773415 && v31 != 1633969526)
      {
        goto LABEL_54;
      }
    }

    else if (v31 != 1701078390 && v31 != 1919182198 && v31 != 1701733488)
    {
      goto LABEL_54;
    }

LABEL_53:
    *(*(*(a1 + 32) + 8) + 24) = 1;
    std::vector<unsigned int>::push_back[abi:ne200100]((v3 + 56), &v35);
LABEL_54:
    (**v26)(v26);
    goto LABEL_55;
  }
}

void HALS_AHPManager::CreateObject(HALS_AHPManager *this, HALS_Object *a2, HALS_ObjectMap *a3, HALS_Client *a4)
{
  v22 = *MEMORY[0x1E69E9840];
  if (a3 == 1)
  {
    HALS_ObjectMap::RetainObject(this, a2);
    v6 = this;
  }

  else
  {
    v6 = HALS_ObjectMap::CopyObjectByObjectID(a3);
  }

  if (a2 > 1701078389)
  {
    if (a2 != 1701078390 && a2 != 1919182198 && a2 != 1701733488)
    {
      goto LABEL_16;
    }
  }

  else if (a2 != 1633773415 && a2 != 1633969526)
  {
    if (a2 == 1634956402)
    {
      v7 = *(v6 + 5);
      if (v7 <= 1701078389)
      {
        if (v7 == 1633773415)
        {
          goto LABEL_25;
        }

        v8 = 1633969526;
      }

      else
      {
        if (v7 == 1701078390 || v7 == 1701733488)
        {
          goto LABEL_25;
        }

        v8 = 1919182198;
      }

      if (v7 == v8)
      {
        goto LABEL_25;
      }

      v11 = *(v6 + 6);
      if (v7 == v11)
      {
        goto LABEL_43;
      }

      if (v11 <= 1701078389)
      {
        if (v11 == 1633773415)
        {
          goto LABEL_25;
        }

        v12 = 1633969526;
      }

      else
      {
        if (v11 == 1701078390 || v11 == 1701733488)
        {
          goto LABEL_25;
        }

        v12 = 1919182198;
      }

      if (v11 != v12)
      {
LABEL_43:
        if (!os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
        {
          goto LABEL_51;
        }

        *buf = 136315394;
        v19 = "HALS_AHPManager.cpp";
        v20 = 1024;
        v21 = 258;
        v15 = MEMORY[0x1E69E9C10];
        v16 = "%25s:%-5d  HALS_AHPManager::CreateObject: a stream needs to be owned by a device";
        goto LABEL_50;
      }

LABEL_25:
      operator new();
    }

LABEL_16:
    if (!HALB_Info::IsSubClass(a2, 1633907820))
    {
      operator new();
    }

    v9 = *(v6 + 5);
    if (v9 <= 1701078389)
    {
      if (v9 == 1633773415)
      {
        goto LABEL_29;
      }

      v10 = 1633969526;
    }

    else
    {
      if (v9 == 1701078390 || v9 == 1701733488)
      {
        goto LABEL_29;
      }

      v10 = 1919182198;
    }

    if (v9 == v10)
    {
      goto LABEL_29;
    }

    v13 = *(v6 + 6);
    if (v9 == v13)
    {
LABEL_48:
      if (!os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
      {
        goto LABEL_51;
      }

      *buf = 136315394;
      v19 = "HALS_AHPManager.cpp";
      v20 = 1024;
      v21 = 263;
      v15 = MEMORY[0x1E69E9C10];
      v16 = "%25s:%-5d  HALS_AHPManager::CreateObject: a control needs to be owned by a device";
LABEL_50:
      _os_log_impl(&dword_1DE1F9000, v15, OS_LOG_TYPE_ERROR, v16, buf, 0x12u);
LABEL_51:
      exception = __cxa_allocate_exception(0x10uLL);
      *exception = off_1F5991DD8;
      exception[2] = 560947818;
    }

    if (v13 <= 1701078389)
    {
      if (v13 == 1633773415)
      {
        goto LABEL_29;
      }

      v14 = 1633969526;
    }

    else
    {
      if (v13 == 1701078390 || v13 == 1701733488)
      {
        goto LABEL_29;
      }

      v14 = 1919182198;
    }

    if (v13 != v14)
    {
      goto LABEL_48;
    }

LABEL_29:
    operator new();
  }

  operator new();
}

void sub_1DE5F26A0(_Unwind_Exception *a1)
{
  MEMORY[0x1E12C1730](v2, 0x10E1C40337F670ALL);
  HALS_ObjectMap::ReleaseObject(v1, v4);
  _Unwind_Resume(a1);
}

void ___ZN15HALS_AHPManager12CreateObjectEjjP11HALS_Client_block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  std::vector<unsigned int>::push_back[abi:ne200100](v2 + 400, (a1 + 40));

  std::vector<unsigned int>::push_back[abi:ne200100](v2 + 424, (a1 + 40));
}

void HALS_AHPManager::_CopyDeviceList(HALS_AHPManager *this, HALS_DeviceManager::BasicDeviceList *a2)
{
  v2 = *(this + 56);
  for (i = *(this + 57); v2 != i; ++v2)
  {
    v5 = HALS_ObjectMap::CopyObjectByObjectID(*v2);
    v7 = v5;
    if (v5)
    {
      HALS_ObjectMap::RetainObject(v5, v6);
      v9 = *(a2 + 1);
      v8 = *(a2 + 2);
      if (v9 >= v8)
      {
        v11 = (v9 - *a2) >> 3;
        if ((v11 + 1) >> 61)
        {
          std::vector<void *>::__throw_length_error[abi:ne200100]();
        }

        v12 = v8 - *a2;
        v13 = v12 >> 2;
        if (v12 >> 2 <= (v11 + 1))
        {
          v13 = v11 + 1;
        }

        if (v12 >= 0x7FFFFFFFFFFFFFF8)
        {
          v14 = 0x1FFFFFFFFFFFFFFFLL;
        }

        else
        {
          v14 = v13;
        }

        if (v14)
        {
          std::allocator<HALS_Device *>::allocate_at_least[abi:ne200100](v14);
        }

        *(8 * v11) = v7;
        v10 = 8 * v11 + 8;
        v15 = *(a2 + 1) - *a2;
        v16 = (8 * v11 - v15);
        memcpy(v16, *a2, v15);
        v17 = *a2;
        *a2 = v16;
        *(a2 + 1) = v10;
        *(a2 + 2) = 0;
        if (v17)
        {
          operator delete(v17);
        }
      }

      else
      {
        *v9 = v7;
        v10 = (v9 + 1);
      }

      *(a2 + 1) = v10;
    }

    HALS_ObjectMap::ReleaseObject(v7, v6);
  }
}

uint64_t HALS_AHPManager::SetPropertyData(HALS_AHPPlugIn **this, uint64_t a2, const AudioObjectPropertyAddress *a3, uint64_t a4, const void *a5, uint64_t a6, const void *a7, HALS_Client *a8)
{
  if (((*(*this + 13))(this, a2, a3, a8) & 1) == 0)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    *exception = off_1F5991DD8;
    exception[2] = 2003332927;
  }

  v15 = this[49];

  return HALS_AHPPlugIn::ObjectSetPropertyData(v15, a2, a3, a6, a7, a4, a5);
}

void HALS_AHPManager::GetPropertyData(HALS_AHPPlugIn **this, uint64_t a2, AudioObjectPropertyAddress *a3, unsigned int a4, unsigned int *a5, _DWORD *a6, uint64_t a7, const __CFString **a8, HALS_Client *a9)
{
  if (((*(*this + 12))(this, a2, a3, a9) & 1) == 0)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    *exception = off_1F5991DD8;
    exception[2] = 2003332927;
  }

  mSelector = a3->mSelector;
  if (a3->mSelector > 1870098019)
  {
    v18 = mSelector == 1870098020 || mSelector == 1937007734;
    v19 = 1885956452;
  }

  else
  {
    v18 = mSelector == 1650682995 || mSelector == 1668047219;
    v19 = 1869638759;
  }

  if (v18 || mSelector == v19)
  {

    HALS_DeviceManager::GetPropertyData(this, a2, a3, a4, a5, a6, a7, a8, a9);
  }

  else
  {
    *a5 = a4;
    v21 = this[49];

    HALS_AHPPlugIn::ObjectGetPropertyData(v21, a2, a3, a7, a8, a5, a6);
  }
}

uint64_t HALS_AHPManager::GetPropertyDataSize(HALS_AHPPlugIn **this, HALS_Client *a2, AudioObjectPropertyAddress *a3, uint64_t a4, int *a5, HALS_Client *a6)
{
  if (((*(*this + 12))(this, a2, a3, a6) & 1) == 0)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    *exception = off_1F5991DD8;
    exception[2] = 2003332927;
  }

  mSelector = a3->mSelector;
  if (a3->mSelector > 1870098019)
  {
    v13 = mSelector == 1870098020 || mSelector == 1937007734;
    v14 = 1885956452;
  }

  else
  {
    v13 = mSelector == 1650682995 || mSelector == 1668047219;
    v14 = 1869638759;
  }

  if (v13 || mSelector == v14)
  {

    return HALS_DeviceManager::GetPropertyDataSize(this, a2, a3, a4, a5, a6);
  }

  else
  {
    v17 = this[49];

    return HALS_AHPPlugIn::ObjectGetPropertyDataSize(v17, a2, a3, a4, a5);
  }
}

uint64_t HALS_AHPManager::IsPropertySettable(HALS_AHPPlugIn **this, uint64_t a2, AudioObjectPropertyAddress *a3, HALS_Client *a4)
{
  if (((*(*this + 12))(this) & 1) == 0)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    *exception = off_1F5991DD8;
    exception[2] = 2003332927;
  }

  mSelector = a3->mSelector;
  if (a3->mSelector > 1870098019)
  {
    v8 = mSelector == 1870098020 || mSelector == 1937007734;
    v9 = 1885956452;
  }

  else
  {
    v8 = mSelector == 1650682995 || mSelector == 1668047219;
    v9 = 1869638759;
  }

  if (v8 || mSelector == v9)
  {

    return HALS_DeviceManager::IsPropertySettable(this, a2, a3);
  }

  else
  {
    v12 = this[49];

    return HALS_AHPPlugIn::ObjectIsPropertySettable(v12, a2, a3);
  }
}

BOOL HALS_AHPManager::HasProperty(HALS_AHPManager *this, HALS_Client *a2, const AudioObjectPropertyAddress *a3, HALS_Client *a4)
{
  mSelector = a3->mSelector;
  if (a3->mSelector > 1870098019)
  {
    v6 = mSelector == 1870098020 || mSelector == 1937007734;
    v7 = 1885956452;
  }

  else
  {
    v6 = mSelector == 1650682995 || mSelector == 1668047219;
    v7 = 1869638759;
  }

  if (!v6 && mSelector != v7)
  {
    return (*(**(this + 49) + 184))(*(this + 49)) != 0;
  }

  return HALS_DeviceManager::HasProperty(this, a2, a3, a4);
}

uint64_t HALS_AHPManager::GetMIGDispatchQueue(HALS_AHPManager *this)
{
  return *(this + 44);
}

{
  return *(this + 44);
}

uint64_t HALS_AHPManager::_Deactivate(HALS_AHPManager *this)
{
  result = (*(**(this + 49) + 40))(*(this + 49));
  *(this + 2) = 0;
  return result;
}

void HALS_AHPManager::~HALS_AHPManager(HALS_AHPManager *this)
{
  HALS_AHPManager::~HALS_AHPManager(this);

  JUMPOUT(0x1E12C1730);
}

{
  *this = &unk_1F5981FD0;
  v2 = *(this + 43);
  *(this + 42) = 0;
  *(this + 43) = 0;
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  }

  v3 = *(this + 44);
  if (v3)
  {
    AMCP::Utility::Dispatch_Queue::~Dispatch_Queue(v3);
    MEMORY[0x1E12C1730]();
  }

  v4 = *(this + 56);
  if (v4)
  {
    *(this + 57) = v4;
    operator delete(v4);
  }

  v5 = *(this + 53);
  if (v5)
  {
    *(this + 54) = v5;
    operator delete(v5);
  }

  v6 = *(this + 50);
  if (v6)
  {
    *(this + 51) = v6;
    operator delete(v6);
  }

  HALS_AHPPlugIn::~HALS_AHPPlugIn((this + 360));
  v7 = *(this + 43);
  if (v7)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v7);
  }

  *this = &unk_1F597A098;
  CACFString::~CACFString((this + 48));

  HALS_Object::~HALS_Object(this);
}

uint64_t HALS_AHPManager::Activate(HALS_AHPManager *this, HALS_Object *a2)
{
  v16 = *MEMORY[0x1E69E9840];
  HALS_Object::Activate(this, a2);
  result = (*(**(this + 49) + 168))(*(this + 49), *(this + 4));
  if (result)
  {
    v7[0] = BYTE3(result);
    v7[1] = BYTE2(result);
    v7[2] = BYTE1(result);
    v5 = result;
    v7[3] = result;
    v7[4] = 0;
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      *buf = 136315906;
      v9 = "HALS_AHPPlugIn.cpp";
      v10 = 1024;
      v11 = 80;
      v12 = 1024;
      v13 = v5;
      v14 = 2080;
      v15 = v7;
      _os_log_impl(&dword_1DE1F9000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "%25s:%-5d  HALS_AHPPlugIn::Initialize: got an error from the plug-in routine, Error: %d (%s)", buf, 0x22u);
    }

    exception = __cxa_allocate_exception(0x10uLL);
    *exception = off_1F5991DD8;
    exception[2] = v5;
  }

  v4 = *MEMORY[0x1E69E9840];
  return result;
}

void IOContextViewForIOPerformer::update_output_rate_scalar_for_taps(IOContextViewForIOPerformer *this, double a2)
{
  v2 = *(this + 1);
  for (i = *(v2 + 2088); i; i = *i)
  {
    if (*(i + 40) == 1)
    {
      v5 = i[3];
      v6 = *(*(v2 + 24) + 16);
      if (std::__shared_mutex_base::try_lock_shared((v5 + 176)))
      {
        HALS_MultiTap::fetch_writer_state(&v9, v5, v6);
        v7 = v9;
        if (v9)
        {
          os_unfair_lock_lock((v5 + 144));
          v8 = *(v5 + 168);
          os_unfair_lock_unlock((v5 + 144));
          (*(**(v7 + 128) + 32))(*(v7 + 128), a2, v8);
        }

        if (v10)
        {
          std::__shared_weak_count::__release_shared[abi:ne200100](v10);
        }

        std::__shared_mutex_base::unlock_shared((v5 + 176));
      }
    }
  }
}

uint64_t IOContextViewForIOPerformer::dsp_is_enabled(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 8);
  v4 = (a2 & 0x100000000) == 0 || a2 == 1869968496;
  if ((a2 & 0x100000000) == 0 || a2 == 1768845428)
  {
    v5 = *(v2 + 1936) != 0;
    if (!v4)
    {
      goto LABEL_10;
    }

LABEL_12:
    v6 = *(v2 + 1976) != 0;
    return v6 | v5;
  }

  v5 = 0;
  if (v4)
  {
    goto LABEL_12;
  }

LABEL_10:
  v6 = 0;
  return v6 | v5;
}

uint64_t HALS_IOContext_Legacy_Impl::HandleClientTimeout(uint64_t this, int a2)
{
  if (a2)
  {
    if (*(this + 2128))
    {
      return this;
    }

    v2 = 1;
    v3 = 2136;
  }

  else
  {
    if (!*(this + 2128))
    {
      return this;
    }

    v2 = 0;
    v3 = 2144;
  }

  *(this + 2128) = v2;
  *(this + v3) = *(this + 1344);
  return this;
}

void HALS_IOContext_Legacy_Impl::Stop_DeactivateDSP(HALS_IOContext_Legacy_Impl *this)
{
  if (AMCP::Feature_Flags::use_ahal_dsp_hosting_lib(0, 0))
  {
    v2 = *(this + 273);
    if (v2)
    {
      if ((*(**(v2 + 8) + 72))(*(v2 + 8)))
      {
        HALS_DSPHostIntegrationPoint_IOContextPlugin::unlock_processing(*(this + 273));
      }
    }
  }

  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 0x40000000;
  v4[2] = ___ZN26HALS_IOContext_Legacy_Impl18Stop_DeactivateDSPEv_block_invoke;
  v4[3] = &__block_descriptor_tmp_67_13538;
  v4[4] = this;
  v3 = (*(**(this + 3) + 64))(*(this + 3));
  HALB_CommandGate::ExecuteCommand(v3, v4);
}

void ___ZN26HALS_IOContext_Legacy_Impl18Stop_DeactivateDSPEv_block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  v7 = v1 + 312;
  v8 = HALB_Mutex::Lock((v1 + 328));
  v2 = *(v1 + 2176);
  v3 = *v2;
  v4 = v2[1];
  while (v3 != v4)
  {
    v5 = *(v3 + 16);
    v6 = *(v5 + 304);
    if (v6)
    {
      std::function<void ()>::operator()(v6, *(v5 + 316));
    }

    v3 += 24;
  }

  HALB_IOThread::Locker::~Locker(&v7);
}

void sub_1DE5F3578(void *a1)
{
  __cxa_begin_catch(a1);
  __cxa_end_catch();
  JUMPOUT(0x1DE5F3568);
}

BOOL HALS_IOContext_Legacy_Impl::Start_ActivateDSP(HALS_IOContext_Legacy_Impl *this)
{
  v49 = *MEMORY[0x1E69E9840];
  v2 = AMCP::Feature_Flags::use_ahal_dsp_hosting_lib(0, 0);
  if (v2)
  {
    v3 = *(this + 273);
    if (v3)
    {
      v2 = (*(**(v3 + 8) + 72))(*(v3 + 8));
      if ((v2 & 1) == 0)
      {
        HALS_DSPHostIntegrationPoint_IOContextPlugin::lock_processing(*(this + 273));
      }
    }
  }

  v4 = *(this + 247) | *(this + 242);
  v5 = atomic_load(StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics_initialized);
  if ((v5 & 1) == 0)
  {
    AMCP::Log::AMCP_Scope_Registry::initialize(v2);
  }

  v7 = **StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics;
  v6 = *(*StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics + 8);
  if (v4)
  {
    if (v6)
    {
      atomic_fetch_add_explicit(&v6->__shared_owners_, 1uLL, memory_order_relaxed);
      v8 = *v7;
      std::__shared_weak_count::__release_shared[abi:ne200100](v6);
    }

    else
    {
      v8 = *v7;
    }

    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      v10 = *(*(this + 3) + 16);
      HALS_IOContextDescription::HostedDSPDescription::DebugString_DSPTypes(&lpsrc, this + 1832);
      if (v38 >= 0)
      {
        p_lpsrc = &lpsrc;
      }

      else
      {
        p_lpsrc = lpsrc;
      }

      *buf = 136315906;
      *&buf[4] = "HALS_IOContext_Legacy_Impl.cpp";
      *&buf[12] = 1024;
      *&buf[14] = 6067;
      *&buf[18] = 1024;
      *&buf[20] = v10;
      v41 = 2080;
      *v42 = p_lpsrc;
      _os_log_impl(&dword_1DE1F9000, v8, OS_LOG_TYPE_DEFAULT, "%32s:%-5d HALS_IOContext_Legacy_Impl::Start_ActivateDSP [hal_dsp] (Context ID: %d) - HOSTED DSP ENABLED %s", buf, 0x22u);
      if (SHIBYTE(v38) < 0)
      {
        operator delete(lpsrc);
      }
    }

    v12 = *(this + 3);
    v13 = **(v12 + 72);
    v14 = *(v12 + 16);
    v43[0] = 0;
    v43[1] = 0;
    memset(buf, 0, sizeof(buf));
    v41 = 0;
    *&v42[6] = v43;
    v44 = 0u;
    v45 = 0u;
    v46 = 0u;
    v47 = v13;
    v48 = v14;
    lpsrc = 0;
    v37 = &lpsrc;
    v38 = 0x2000000000;
    v39 = 0;
    v32 = 0;
    v33 = &v32;
    v34 = 0x2000000000;
    v35 = buf;
    v31[0] = MEMORY[0x1E69E9820];
    v31[1] = 0x40000000;
    v31[2] = ___ZN26HALS_IOContext_Legacy_Impl17Start_ActivateDSPEv_block_invoke;
    v31[3] = &unk_1E8678198;
    v31[5] = &v32;
    v31[6] = this;
    v31[4] = &lpsrc;
    v15 = (*(*v12 + 64))(v12);
    HALB_CommandGate::ExecuteCommand(v15, v31);
    if (*(v37 + 6))
    {
      v16 = 0;
LABEL_30:
      v25[0] = MEMORY[0x1E69E9820];
      v25[1] = 0x40000000;
      v25[2] = ___ZN26HALS_IOContext_Legacy_Impl17Start_ActivateDSPEv_block_invoke_2;
      v25[3] = &__block_descriptor_tmp_66_13545;
      v25[4] = this;
      v21 = (*(**(this + 3) + 64))(*(this + 3));
      HALB_CommandGate::ExecuteCommand(v21, v25);
      _Block_object_dispose(&v32, 8);
      _Block_object_dispose(&lpsrc, 8);
      HALS_MutationChangeSynchronizer::~HALS_MutationChangeSynchronizer(buf);
      goto LABEL_31;
    }

    HALS_MutationChangeSynchronizer::Wait(*buf, *&buf[8]);
    v17 = *(v37 + 6);
    v16 = v17 == 0;
    v18 = (v17 != 0) | *(v33[3] + 25);
    if ((v17 != 0) | *(v33[3] + 25) & 1)
    {
      if ((*(v33[3] + 25) & 1) == 0)
      {
        goto LABEL_30;
      }
    }

    else
    {
      v27 = 0;
      v28 = &v27;
      v29 = 0x2000000000;
      v30 = 0;
      v26[0] = MEMORY[0x1E69E9820];
      v26[1] = 0x40000000;
      v26[2] = ___ZN26HALS_IOContext_Legacy_Impl17Start_ActivateDSPEv_block_invoke_64;
      v26[3] = &unk_1E86781C0;
      v26[4] = &v27;
      v26[5] = &v32;
      v26[6] = this;
      v19 = (*(**(this + 3) + 64))(*(this + 3));
      HALB_CommandGate::ExecuteCommand(v19, v26);
      v20 = *(v28 + 6);
      _Block_object_dispose(&v27, 8);
      if (v20 != 1685285985)
      {
        goto LABEL_30;
      }
    }

    HALS_IOContext_Legacy_Impl::NotifyChangesDueToDSP(this, (v18 & 1) == 0);
    goto LABEL_30;
  }

  if (v6)
  {
    atomic_fetch_add_explicit(&v6->__shared_owners_, 1uLL, memory_order_relaxed);
    v9 = *v7;
    std::__shared_weak_count::__release_shared[abi:ne200100](v6);
  }

  else
  {
    v9 = *v7;
  }

  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
  {
    v24 = *(*(this + 3) + 16);
    *buf = 136315650;
    *&buf[4] = "HALS_IOContext_Legacy_Impl.cpp";
    *&buf[12] = 1024;
    *&buf[14] = 6061;
    *&buf[18] = 1024;
    *&buf[20] = v24;
    _os_log_debug_impl(&dword_1DE1F9000, v9, OS_LOG_TYPE_DEBUG, "%32s:%-5d HALS_IOContext_Legacy_Impl::Start_ActivateDSP [hal_dsp] >>>> (Context ID: %d) - HOSTED DSP IS NOT ENABLED <<<<", buf, 0x18u);
  }

  v16 = 0;
LABEL_31:
  v22 = *MEMORY[0x1E69E9840];
  return v16;
}

void sub_1DE5F3B6C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, char a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, char a33, uint64_t a34, uint64_t a35, uint64_t a36, char a37)
{
  _Block_object_dispose(&a22, 8);
  _Block_object_dispose(&a33, 8);
  _Block_object_dispose(&a37, 8);
  HALS_MutationChangeSynchronizer::~HALS_MutationChangeSynchronizer((v37 - 192));
  _Unwind_Resume(a1);
}

void ___ZN26HALS_IOContext_Legacy_Impl17Start_ActivateDSPEv_block_invoke(void *a1)
{
  v34 = *MEMORY[0x1E69E9840];
  v2 = a1[6];
  v27 = v2 + 312;
  v28 = HALB_Mutex::Lock((v2 + 328));
  HALS_IOContextHostedDSP::Initialize(*(v2 + 2176), (v2 + 1536), **(*(v2 + 24) + 72), *(*(v2 + 24) + 16));
  v3 = *(v2 + 2176);
  v4 = *(v2 + 1360);
  v5 = *(*(a1[5] + 8) + 24);
  v6 = HALS_IOContextHostedDSP::Negotiate_Internal(v3, (v2 + 1536), v4, v5, 1);
  v7 = v6;
  if (v6 == 1685287013)
  {
    v8 = atomic_load(StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics_initialized);
    if ((v8 & 1) == 0)
    {
      AMCP::Log::AMCP_Scope_Registry::initialize(v6);
    }

    v10 = **StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics;
    v9 = *(*StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics + 8);
    if (v9)
    {
      atomic_fetch_add_explicit(&v9->__shared_owners_, 1uLL, memory_order_relaxed);
      v11 = *v10;
      std::__shared_weak_count::__release_shared[abi:ne200100](v9);
    }

    else
    {
      v11 = *v10;
    }

    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
    {
      *buf = 136315394;
      *&buf[4] = "HALS_IOContextHostedDSP.cpp";
      *&buf[12] = 1024;
      *&buf[14] = 1005;
      _os_log_debug_impl(&dword_1DE1F9000, v11, OS_LOG_TYPE_DEBUG, "%32s:%-5d [hal_dsp] Attempting to negotiate 'bypass' with hosted DSP.", buf, 0x12u);
    }

    v12 = HALS_IOContextHostedDSP::Negotiate_Internal(v3, (v2 + 1536), v4, v5, 5);
    *buf = 0;
    *&buf[16] = 0u;
    *&buf[8] = &buf[16];
    v31 = 0u;
    *__p = 0u;
    v33 = 0u;
    HALS_MutationChangeSynchronizer::SetItinerary(v5, buf);
    if (v12)
    {
      v7 = v12;
    }

    else
    {
      v7 = 1685283449;
    }

    if (__p[1])
    {
      *&v33 = __p[1];
      operator delete(__p[1]);
    }

    v29 = &v31;
    std::vector<MutationItinerary::Device>::__destroy_vector::operator()[abi:ne200100](&v29);
    std::__tree<std::__value_type<applesauce::CF::StringRef,BOOL>,std::__map_value_compare<applesauce::CF::StringRef,std::__value_type<applesauce::CF::StringRef,BOOL>,std::less<applesauce::CF::StringRef>,true>,std::allocator<std::__value_type<applesauce::CF::StringRef,BOOL>>>::destroy(*&buf[16]);
  }

  *(*(a1[4] + 8) + 24) = v7;
  if (!*(*(a1[4] + 8) + 24))
  {
    v13 = atomic_load(StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics_initialized);
    if ((v13 & 1) == 0)
    {
      AMCP::Log::AMCP_Scope_Registry::initialize(v6);
    }

    v15 = **StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics;
    v14 = *(*StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics + 8);
    if (v14)
    {
      atomic_fetch_add_explicit(&v14->__shared_owners_, 1uLL, memory_order_relaxed);
      v16 = *v15;
      std::__shared_weak_count::__release_shared[abi:ne200100](v14);
    }

    else
    {
      v16 = *v15;
    }

    v6 = os_log_type_enabled(v16, OS_LOG_TYPE_DEBUG);
    if (v6)
    {
      *buf = 136315394;
      *&buf[4] = "HALS_IOContext_Legacy_Impl.cpp";
      *&buf[12] = 1024;
      *&buf[14] = 6083;
      _os_log_debug_impl(&dword_1DE1F9000, v16, OS_LOG_TYPE_DEBUG, "%32s:%-5d [hal_dsp] Start DSP - Negotiate ok.", buf, 0x12u);
    }
  }

  v17 = *(*(a1[4] + 8) + 24);
  if (v17 == 1685283449)
  {
    v22 = atomic_load(StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics_initialized);
    if ((v22 & 1) == 0)
    {
      AMCP::Log::AMCP_Scope_Registry::initialize(v6);
    }

    v24 = **StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics;
    v23 = *(*StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics + 8);
    if (v23)
    {
      atomic_fetch_add_explicit(&v23->__shared_owners_, 1uLL, memory_order_relaxed);
      v25 = *v24;
      std::__shared_weak_count::__release_shared[abi:ne200100](v23);
    }

    else
    {
      v25 = *v24;
    }

    if (os_log_type_enabled(v25, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315651;
      *&buf[4] = "HALS_IOContext_Legacy_Impl.cpp";
      *&buf[12] = 1024;
      *&buf[14] = 6090;
      *&buf[18] = 2081;
      *&buf[20] = "[hal_dsp] Start DSP - Negotiated for BYPASS.";
      _os_log_impl(&dword_1DE1F9000, v25, OS_LOG_TYPE_DEFAULT, "%32s:%-5d %{private}s", buf, 0x1Cu);
    }

    goto LABEL_39;
  }

  if (v17 == 1685287789)
  {
    v18 = atomic_load(StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics_initialized);
    if ((v18 & 1) == 0)
    {
      AMCP::Log::AMCP_Scope_Registry::initialize(v6);
    }

    v20 = **StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics;
    v19 = *(*StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics + 8);
    if (v19)
    {
      atomic_fetch_add_explicit(&v19->__shared_owners_, 1uLL, memory_order_relaxed);
      v21 = *v20;
      std::__shared_weak_count::__release_shared[abi:ne200100](v19);
    }

    else
    {
      v21 = *v20;
    }

    if (os_log_type_enabled(v21, OS_LOG_TYPE_DEBUG))
    {
      *buf = 136315394;
      *&buf[4] = "HALS_IOContext_Legacy_Impl.cpp";
      *&buf[12] = 1024;
      *&buf[14] = 6086;
      _os_log_debug_impl(&dword_1DE1F9000, v21, OS_LOG_TYPE_DEBUG, "%32s:%-5d [hal_dsp] Start DSP - Negotiate OK, but same as previous request.", buf, 0x12u);
    }

LABEL_39:
    *(*(a1[4] + 8) + 24) = 0;
  }

  HALB_IOThread::Locker::~Locker(&v27);
  v26 = *MEMORY[0x1E69E9840];
}

void sub_1DE5F4020(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, char a10, uint64_t a11, uint64_t a12, char a13)
{
  if (a2)
  {
    HALB_IOThread::Locker::~Locker(&a10);
    v16 = __cxa_begin_catch(exception_object);
    if (a2 == 2)
    {
      *(*(*(v13 + 32) + 8) + 24) = v16[2];
    }

    else
    {
      *(*(*(v13 + 32) + 8) + 24) = 2003329396;
    }

    __cxa_end_catch();
    JUMPOUT(0x1DE5F3F48);
  }

  _Unwind_Resume(exception_object);
}

void ___ZN26HALS_IOContext_Legacy_Impl17Start_ActivateDSPEv_block_invoke_64(void *a1)
{
  v2 = a1[6];
  v3 = v2 + 312;
  v4 = HALB_Mutex::Lock((v2 + 328));
  *(*(a1[4] + 8) + 24) = HALS_IOContextHostedDSP::Adapt(*(v2 + 2176), (v2 + 1536), *(v2 + 1360), *(*(a1[5] + 8) + 24));
  HALB_IOThread::Locker::~Locker(&v3);
}

void sub_1DE5F413C(void *a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  HALB_IOThread::Locker::~Locker(&a9);
  v12 = __cxa_begin_catch(a1);
  if (a2 == 2)
  {
    *(*(*(v9 + 32) + 8) + 24) = v12[2];
  }

  else
  {
    *(*(*(v9 + 32) + 8) + 24) = 2003329396;
  }

  __cxa_end_catch();
  JUMPOUT(0x1DE5F4128);
}

void HALS_IOContext_Legacy_Impl::NotifyChangesDueToDSP(HALS_IOContext_Legacy_Impl *this, char a2)
{
  v3 = *(this + 3);
  v4 = *(this + 272);
  v6 = *v4;
  v5 = v4[1];
  if (v6 == v5)
  {
    v9 = 0;
  }

  else
  {
    v7 = v6 + 24;
    do
    {
      v8 = *(v7 - 24);
      v9 = v8 == 1768845428;
      v10 = v8 == 1768845428 || v7 == v5;
      v7 += 24;
    }

    while (!v10);
  }

  v11 = **(v3 + 72);
  v12 = *(this + 388);
  v13 = *(v3 + 16);
  pthread_once(&HALS_ObjectMap::sObjectInfoListInitialized, HALS_ObjectMap::Initialize);
  v14 = HALS_ObjectMap::sNormalPriorityQueue;
  v15 = atomic_load((HALS_ObjectMap::sNormalPriorityQueue + 32));
  if (v15)
  {
    atomic_store(1u, (HALS_ObjectMap::sNormalPriorityQueue + 33));
  }

  if (*(v14 + 328) != 1)
  {
    v18 = *v14;
    operator new();
  }

  v20 = v11;
  v21 = v12;
  v22 = v13;
  v23 = v9;
  v24 = a2;
  v16 = *(v14 + 320);
  v17 = *v14;
  v19[0] = MEMORY[0x1E69E9820];
  v19[1] = 0x40000000;
  v19[2] = ___ZNK4AMCP7Utility14Dispatch_Queue5asyncIZN26HALS_IOContext_Legacy_Impl21NotifyChangesDueToDSPEbE3__0EEvOT__block_invoke;
  v19[3] = &__block_descriptor_tmp_177_13546;
  dispatch_group_async(v16, v17, v19);
}

void ___ZN26HALS_IOContext_Legacy_Impl17Start_ActivateDSPEv_block_invoke_2(uint64_t a1)
{
  v1 = *(a1 + 32);
  v7 = v1 + 312;
  v8 = HALB_Mutex::Lock((v1 + 328));
  v2 = *(v1 + 2176);
  v3 = *v2;
  v4 = v2[1];
  while (v3 != v4)
  {
    v5 = *(v3 + 16);
    v6 = *(v5 + 272);
    if (v6)
    {
      std::function<void ()>::operator()(v6, *(v5 + 316));
    }

    v3 += 24;
  }

  HALB_IOThread::Locker::~Locker(&v7);
}

void sub_1DE5F43AC(void *a1)
{
  __cxa_begin_catch(a1);
  __cxa_end_catch();
  JUMPOUT(0x1DE5F439CLL);
}

void applesauce::dispatch::v1::async<HALS_IOContext_Legacy_Impl::NotifyChangesDueToDSP(BOOL)::$_0 &>(dispatch_queue_s *,HALS_IOContext_Legacy_Impl::NotifyChangesDueToDSP(BOOL)::$_0 &)::{lambda(void *)#1}::__invoke(AMCP::Log::AMCP_Scope_Registry *a1)
{
  HALS_IOContext_Legacy_Impl::NotifyChangesDueToDSP(BOOL)::$_0::operator()(a1);
  if (a1)
  {

    JUMPOUT(0x1E12C1730);
  }
}

void sub_1DE5F4430(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    MEMORY[0x1E12C1730](v1, 0x1000C4099076E91);
  }

  _Unwind_Resume(exception_object);
}

void HALS_IOContext_Legacy_Impl::NotifyChangesDueToDSP(BOOL)::$_0::operator()(AMCP::Log::AMCP_Scope_Registry *a1)
{
  v19 = *MEMORY[0x1E69E9840];
  v2 = atomic_load(StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics_initialized);
  if ((v2 & 1) == 0)
  {
    AMCP::Log::AMCP_Scope_Registry::initialize(a1);
  }

  v4 = **StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics;
  v3 = *(*StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics + 8);
  if (v3)
  {
    atomic_fetch_add_explicit(&v3->__shared_owners_, 1uLL, memory_order_relaxed);
    v5 = *v4;
    std::__shared_weak_count::__release_shared[abi:ne200100](v3);
  }

  else
  {
    v5 = *v4;
  }

  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    v11 = *(a1 + 2);
    if (*(a1 + 13))
    {
      v12 = "config and latency";
    }

    else
    {
      v12 = "config";
    }

    *buf = 136315906;
    *&buf[4] = "HALS_IOContext_Legacy_Impl.cpp";
    *&buf[12] = 1024;
    *&buf[14] = 6031;
    v15 = 1024;
    v16 = v11;
    v17 = 2080;
    v18 = v12;
    _os_log_debug_impl(&dword_1DE1F9000, v5, OS_LOG_TYPE_DEBUG, "%32s:%-5d [hal_dsp] Start DSP - (%u) Refresh/notify client due to DSP-related %s change.", buf, 0x22u);
  }

  v7 = HALS_ObjectMap::CopyObjectByObjectID(*a1);
  if (v7)
  {
    v13[0] = 0;
    v13[1] = 0;
    HALS_System::GetInstance(buf, 0, v13);
    v9 = HALS_System::CopyDeviceByObjectID(*buf, *(a1 + 1), v7);
    if (*&buf[8])
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](*&buf[8]);
    }

    HALS_ObjectMap::ReleaseObject(v9, v8);
  }

  HALS_ObjectMap::ReleaseObject(v7, v6);
  v10 = *MEMORY[0x1E69E9840];
}

void sub_1DE5F45D8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  if (a2)
  {
    __clang_call_terminate(exception_object);
  }

  _Unwind_Resume(exception_object);
}

void HALS_IOContext_Legacy_Impl::notify_waiting_tap_consumers_that_producer_has_fully_started(HALS_IOContext_Legacy_Impl *this)
{
  if ((*(this + 1340) & 1) == 0)
  {
    HALB_Guard::Notify((this + 328));
  }
}

void HALS_IOContext_Legacy_Impl::RemoveTap(int8x8_t *a1, unint64_t *a2)
{
  v16 = a1 + 39;
  v17 = HALB_Mutex::Lock(&a1[41]);
  v4 = a1 + 259;
  v5 = std::__hash_table<std::__hash_value_type<HALS_MultiTap *,HALS_IOContext_Legacy_Impl::ActiveTap>,std::__unordered_map_hasher<HALS_MultiTap *,std::__hash_value_type<HALS_MultiTap *,HALS_IOContext_Legacy_Impl::ActiveTap>,std::hash<HALS_MultiTap *>,std::equal_to<HALS_MultiTap *>,true>,std::__unordered_map_equal<HALS_MultiTap *,std::__hash_value_type<HALS_MultiTap *,HALS_IOContext_Legacy_Impl::ActiveTap>,std::equal_to<HALS_MultiTap *>,std::hash<HALS_MultiTap *>,true>,std::allocator<std::__hash_value_type<HALS_MultiTap *,HALS_IOContext_Legacy_Impl::ActiveTap>>>::find<HALS_MultiTap *>(&a1[259], *a2);
  if (v5)
  {
    v6 = v5;
    if (a1[167].i8[4] == 1)
    {
      HALS_MultiTap::writer_stop(*(v5 + 3), *(*&a1[3] + 16));
      atomic_store(0, v6 + 42);
      atomic_store(0, v6 + 41);
    }

    v7 = a1[260];
    v8 = *(v6 + 1);
    v9 = vcnt_s8(v7);
    v9.i16[0] = vaddlv_u8(v9);
    if (v9.u32[0] > 1uLL)
    {
      if (v8 >= *&v7)
      {
        v8 %= *&v7;
      }
    }

    else
    {
      v8 &= *&v7 - 1;
    }

    v10 = *(*v4 + 8 * v8);
    do
    {
      v11 = v10;
      v10 = *v10;
    }

    while (v10 != v6);
    if (v11 == &a1[261])
    {
      goto LABEL_21;
    }

    v12 = v11[1];
    if (v9.u32[0] > 1uLL)
    {
      if (v12 >= *&v7)
      {
        v12 %= *&v7;
      }
    }

    else
    {
      v12 &= *&v7 - 1;
    }

    if (v12 != v8)
    {
LABEL_21:
      if (!*v6)
      {
        goto LABEL_22;
      }

      v13 = *(*v6 + 8);
      if (v9.u32[0] > 1uLL)
      {
        if (v13 >= *&v7)
        {
          v13 %= *&v7;
        }
      }

      else
      {
        v13 &= *&v7 - 1;
      }

      if (v13 != v8)
      {
LABEL_22:
        *(*v4 + 8 * v8) = 0;
      }
    }

    v14 = *v6;
    if (*v6)
    {
      v15 = *(*&v14 + 8);
      if (v9.u32[0] > 1uLL)
      {
        if (v15 >= *&v7)
        {
          v15 %= *&v7;
        }
      }

      else
      {
        v15 &= *&v7 - 1;
      }

      if (v15 != v8)
      {
        *(*v4 + 8 * v15) = v11;
        v14 = *v6;
      }
    }

    *v11 = v14;
    *v6 = 0;
    --*&a1[262];
    v18[0] = v6;
    v18[1] = a1 + 259;
    v19 = 1;
    memset(v20, 0, sizeof(v20));
    std::unique_ptr<std::__hash_node<std::__hash_value_type<HALS_MultiTap *,HALS_IOContext_Legacy_Impl::ActiveTap>,void *>,std::__hash_node_destructor<std::allocator<std::__hash_node<std::__hash_value_type<HALS_MultiTap *,HALS_IOContext_Legacy_Impl::ActiveTap>,void *>>>>::~unique_ptr[abi:ne200100](v18);
  }

  HALB_IOThread::Locker::~Locker(&v16);
}

void *std::__hash_table<std::__hash_value_type<HALS_MultiTap *,HALS_IOContext_Legacy_Impl::ActiveTap>,std::__unordered_map_hasher<HALS_MultiTap *,std::__hash_value_type<HALS_MultiTap *,HALS_IOContext_Legacy_Impl::ActiveTap>,std::hash<HALS_MultiTap *>,std::equal_to<HALS_MultiTap *>,true>,std::__unordered_map_equal<HALS_MultiTap *,std::__hash_value_type<HALS_MultiTap *,HALS_IOContext_Legacy_Impl::ActiveTap>,std::equal_to<HALS_MultiTap *>,std::hash<HALS_MultiTap *>,true>,std::allocator<std::__hash_value_type<HALS_MultiTap *,HALS_IOContext_Legacy_Impl::ActiveTap>>>::find<HALS_MultiTap *>(void *a1, unint64_t a2)
{
  v2 = a1[1];
  if (!*&v2)
  {
    return 0;
  }

  v3 = 0x9DDFEA08EB382D69 * ((8 * (a2 & 0x1FFFFFFF) + 8) ^ HIDWORD(a2));
  v4 = 0x9DDFEA08EB382D69 * (HIDWORD(a2) ^ (v3 >> 47) ^ v3);
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
        if (result[2] == a2)
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

uint64_t std::unique_ptr<std::__hash_node<std::__hash_value_type<HALS_MultiTap *,HALS_IOContext_Legacy_Impl::ActiveTap>,void *>,std::__hash_node_destructor<std::allocator<std::__hash_node<std::__hash_value_type<HALS_MultiTap *,HALS_IOContext_Legacy_Impl::ActiveTap>,void *>>>>::~unique_ptr[abi:ne200100](uint64_t a1)
{
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    if (*(a1 + 16) == 1)
    {
      std::__destroy_at[abi:ne200100]<std::pair<HALS_MultiTap * const,HALS_IOContext_Legacy_Impl::ActiveTap>,0>(v2 + 2);
    }

    operator delete(v2);
  }

  return a1;
}

void std::__destroy_at[abi:ne200100]<std::pair<HALS_MultiTap * const,HALS_IOContext_Legacy_Impl::ActiveTap>,0>(void *a1)
{
  v2 = a1[4];
  if (v2)
  {
    a1[5] = v2;
    operator delete(v2);
  }

  v3 = a1[2];
  if (v3)
  {

    std::__shared_weak_count::__release_shared[abi:ne200100](v3);
  }
}

void HALS_IOContext_Legacy_Impl::AddTap(uint64_t a1, uint64_t *a2)
{
  v16 = *MEMORY[0x1E69E9840];
  if (*a2)
  {
    v8 = a1 + 312;
    v9 = HALB_Mutex::Lock((a1 + 328));
    v3 = *a2;
    operator new();
  }

  v4 = atomic_load(StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics_initialized);
  if ((v4 & 1) == 0)
  {
    AMCP::Log::AMCP_Scope_Registry::initialize(a1);
  }

  v6 = **StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics;
  v5 = *(*StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics + 8);
  if (v5)
  {
    atomic_fetch_add_explicit(&v5->__shared_owners_, 1uLL, memory_order_relaxed);
    v7 = *v6;
    std::__shared_weak_count::__release_shared[abi:ne200100](v5);
  }

  else
  {
    v7 = *v6;
  }

  if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
  {
    buf = 136315650;
    buf_4 = "HALS_IOContext_Legacy_Impl.cpp";
    v12 = 1024;
    v13 = 5930;
    v14 = 2080;
    v15 = "tap.get() != nullptr";
    _os_log_error_impl(&dword_1DE1F9000, v7, OS_LOG_TYPE_ERROR, "%32s:%-5d Assertion Failed: %s Invalid Tap", &buf, 0x1Cu);
  }

  abort();
}

void sub_1DE5F4FE0(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  HALB_IOThread::Locker::~Locker(va);
  _Unwind_Resume(a1);
}

void HALS_IOContext_Legacy_Impl::StartTapOutput(uint64_t a1, uint64_t *a2)
{
  v51 = *MEMORY[0x1E69E9840];
  __p = 0;
  v35 = 0;
  v36 = 0;
  v31 = 0;
  v32 = 0;
  v33 = 0;
  v4 = *(*a2 + 72);
  v5 = *(*a2 + 80);
  v6 = (v4 & 0x100000000) != 0 && *(a1 + 1552) == v4;
  v30 = 0;
  v40[0] = &__p;
  v40[1] = &v31;
  v40[2] = &v30;
  v42 = BYTE4(v4);
  v41 = v4;
  v43 = v5;
  v44 = v6;
  v39[0] = caulk::function_ref<int ()(unsigned int,HALS_IOStackDescription &,unsigned int,unsigned int,HALS_IOStreamInfo &)>::functor_invoker<HALS_IOContext_Legacy_Impl::StartTapOutput(HALS_IOContext_Legacy_Impl::ActiveTap &)::$_0>;
  v39[1] = v40;
  *__x = _ZN5caulk12function_refIFiRN15VisitableVectorI23HALS_IOStackDescriptionE13ItemWithIndexEEE15functor_invokerIZN25HALS_IOContextDescription13ApplyToOutputIJEEEiNS0_IFijRS2_jjR17HALS_IOStreamInfoEEEDpRKT_EUlS5_E_EEiRKNS_7details15erased_callableIS6_EES5_;
  *&__x[8] = v39;
  VisitableVector<HALS_IOStackDescription>::apply<>(*(a1 + 1616), *(a1 + 1624), __x);
  atomic_store(1u, a2 + 18);
  v7 = (__p == v35) | v30;
  *(a2 + 16) = ((__p == v35) | v30 & 1) == 0;
  if ((v7 & 1) == 0)
  {
    NumberStreams = HALS_IOContextDescription::GetNumberStreams(a1 + 1536, 0);
    v9 = (16 * NumberStreams) | 8;
    __x[0] = 0;
    v10 = a2[3];
    v11 = a2[4] - v10;
    if (v9 <= v11)
    {
      if (v9 < v11)
      {
        a2[4] = v10 + v9;
      }
    }

    else
    {
      std::vector<char>::__append(a2 + 1, v9 - v11, __x);
      v10 = a2[3];
    }

    *v10 = NumberStreams;
    v13 = HALS_ObjectMap::CopyObjectByObjectID(*(a1 + 1552));
    if (v13)
    {
      v14 = (v4 & 0x100000000) == 0 || v6;
      if ((v14 & 1) == 0)
      {
        v15 = HALS_ObjectMap::CopyObjectByObjectID(v4);
        v17 = v15;
        if (v15)
        {
          v18 = *(a1 + 1560);
          if (v18)
          {
            v19 = (*(*v15 + 208))(v15);
            v16 = *(v18 + 96);
            if (v16)
            {
              CFStringCompare(v19, v16, 0);
            }
          }
        }

        HALS_ObjectMap::ReleaseObject(v17, v16);
      }

      v20 = *a2;
      v21 = *(*(a1 + 24) + 16);
      (*(*v13 + 224))(v13);
      memset(v29, 0, sizeof(v29));
      std::vector<std::string>::__init_with_size[abi:ne200100]<std::string*,std::string*>(v29, v31, v32, 0xAAAAAAAAAAAAAAABLL * ((v32 - v31) >> 3));
      std::__shared_mutex_base::lock_shared((v20 + 176));
      HALS_MultiTap::fetch_writer_state(&v37, v20, v21);
      if (!v37)
      {
        operator new();
      }

      if (v38)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v38);
      }

      std::__shared_mutex_base::unlock_shared((v20 + 176));
      *buf = v29;
      std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](buf);
      v23 = atomic_load(StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics_initialized);
      if ((v23 & 1) == 0)
      {
        AMCP::Log::AMCP_Scope_Registry::initialize(v22);
      }

      v25 = **StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics;
      v24 = *(*StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics + 8);
      if (v24)
      {
        atomic_fetch_add_explicit(&v24->__shared_owners_, 1uLL, memory_order_relaxed);
        v26 = *v25;
        std::__shared_weak_count::__release_shared[abi:ne200100](v24);
      }

      else
      {
        v26 = *v25;
      }

      if (os_log_type_enabled(v26, OS_LOG_TYPE_ERROR))
      {
        v28 = *(*(a1 + 24) + 16);
        *buf = 136315650;
        *&buf[4] = "HALS_IOContext_Legacy_Impl.cpp";
        v46 = 1024;
        v47 = 5716;
        v48 = 1024;
        v49 = v28;
        _os_log_error_impl(&dword_1DE1F9000, v26, OS_LOG_TYPE_ERROR, "%32s:%-5d Failed to start an ActiveTap for context: %u:", buf, 0x18u);
      }
    }

    HALS_ObjectMap::ReleaseObject(v13, v12);
  }

  v40[0] = &v31;
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](v40);
  if (__p)
  {
    v35 = __p;
    operator delete(__p);
  }

  v27 = *MEMORY[0x1E69E9840];
}

uint64_t _ZN5caulk12function_refIFiRN15VisitableVectorI23HALS_IOStackDescriptionE13ItemWithIndexEEE15functor_invokerIZN25HALS_IOContextDescription13ApplyToOutputIJEEEiNS0_IFijRS2_jjR17HALS_IOStreamInfoEEEDpRKT_EUlS5_E_EEiRKNS_7details15erased_callableIS6_EES5_(uint64_t *a1, uint64_t a2)
{
  v5 = *a1;
  v6 = *(*a2 + 8);
  v7 = *(*a2 + 16);
  if (v7 == v6 || ((v8 = *v6, -1601513229 * ((v6[1] - *v6) >> 3)) ? (v9 = v8 == 0) : (v9 = 1), v9))
  {
    v10 = 0;
  }

  else
  {
    if (!*(v8 + 108) || ((v11 = *(v8 + 112), *(v8 + 120) != v11) ? (v12 = v11 == 0) : (v12 = 1), v12))
    {
      v11 = v8 + 456;
    }

    v10 = *(*v11 + 388);
  }

  v18 = v2;
  v19 = v3;
  v16[0] = a2;
  v16[1] = v5;
  v17 = v10;
  v15 = v16;
  *&v14 = _ZN5caulk12function_refIFiRN15VisitableVectorI18HALS_IOStreamGroupE13ItemWithIndexEEE15functor_invokerIZZN25HALS_IOContextDescription13ApplyToOutputIJEEEiNS0_IFijR23HALS_IOStackDescriptionjjR17HALS_IOStreamInfoEEEDpRKT_ENKUlRNS1_ISB_E13ItemWithIndexEE_clESN_EUlS5_E_EEiRKNS_7details15erased_callableIS6_EES5_;
  *(&v14 + 1) = &v15;
  return VisitableVector<HALS_IOStreamGroup>::apply<>(v6, v7, &v14);
}

uint64_t VisitableVector<HALS_IOStreamGroup>::apply<>(uint64_t a1, uint64_t a2, __int128 *a3)
{
  v8 = *a3;
  v9 = *(a3 + 2);
  if (a1 == a2)
  {
    return 0;
  }

  v4 = a1;
  v5 = 0;
  v6 = 0;
  while (1)
  {
    if (v5)
    {
      ++v6;
    }

    else
    {
      v6 = 0;
    }

    v10[0] = v4;
    v10[1] = v6;
    result = (v8)(&v8 + 8, v10);
    if (result)
    {
      break;
    }

    v4 += 24;
    v5 = 1;
    if (v4 == a2)
    {
      return 0;
    }
  }

  return result;
}

uint64_t _ZN5caulk12function_refIFiRN15VisitableVectorI18HALS_IOStreamGroupE13ItemWithIndexEEE15functor_invokerIZZN25HALS_IOContextDescription13ApplyToOutputIJEEEiNS0_IFijR23HALS_IOStackDescriptionjjR17HALS_IOStreamInfoEEEDpRKT_ENKUlRNS1_ISB_E13ItemWithIndexEE_clESN_EUlS5_E_EEiRKNS_7details15erased_callableIS6_EES5_(uint64_t **a1, uint64_t **a2)
{
  v2 = *a2;
  v3 = **a1;
  *&v5 = _ZN5caulk12function_refIFiRN15VisitableVectorI17HALS_IOStreamInfoE13ItemWithIndexEEE15functor_invokerIZZN25HALS_IOContextDescription13ApplyToOutputIJEEEiNS0_IFijR23HALS_IOStackDescriptionjjRS2_EEEDpRKT_ENKUlRNS1_ISB_E13ItemWithIndexEE_clESM_EUlS5_E_EEiRKNS_7details15erased_callableIS6_EES5_;
  *(&v5 + 1) = v3;
  return VisitableVector<HALS_IOStreamInfo>::apply<>(*v2, v2[1], &v5);
}

uint64_t caulk::function_ref<int ()(unsigned int,HALS_IOStackDescription &,unsigned int,unsigned int,HALS_IOStreamInfo &)>::functor_invoker<HALS_IOContext_Legacy_Impl::StartTapOutput(HALS_IOContext_Legacy_Impl::ActiveTap &)::$_0>(uint64_t **a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v8 = *a1;
  if (*(a6 + 108))
  {
    HALS_IODSPInfo::GetClientFormat(&v45, (a6 + 112));
  }

  else
  {
    v9 = *(a6 + 432);
    *&v45.__first_ = *(a6 + 416);
    *&v45.__end_ = v9;
    v45.__end_cap_.__value_ = *(a6 + 448);
  }

  if (LODWORD(v45.__begin_) != 1819304813 || (BYTE4(v45.__begin_) & 0x40) != 0)
  {
    *v8[2] = 1;
  }

  if (!*(a6 + 108) || (v11 = *(a6 + 112), *(a6 + 120) == v11) || !v11)
  {
    v11 = (a6 + 456);
  }

  v12 = *v11;
  v13 = *(*v11 + 88);
  if (v13)
  {
    DeviceIDFromEngineID = HALS_IOContextDescription::GetDeviceIDFromEngineID(*(v13 + 16));
  }

  else
  {
    DeviceIDFromEngineID = 0;
  }

  if (*(v8 + 28) == 1)
  {
    if (*(v8 + 36) == 1)
    {
      v15 = *(v8 + 8) == a2;
      goto LABEL_21;
    }

    if (*(v8 + 6) == DeviceIDFromEngineID)
    {
      v15 = *(v8 + 8) == *(a6 + 12);
LABEL_21:
      v16 = v15;
      goto LABEL_25;
    }
  }

  v16 = 0;
LABEL_25:
  if (*(a6 + 108))
  {
    HALS_IODSPInfo::GetClientFormat(&v45, (a6 + 112));
  }

  else
  {
    v17 = *(a6 + 432);
    *&v45.__first_ = *(a6 + 416);
    *&v45.__end_ = v17;
    v45.__end_cap_.__value_ = *(a6 + 448);
  }

  first = v45.__first_;
  v43 = *&v45.__begin_;
  end_cap = v45.__end_cap_;
  if (*&v45.__first_ != 0.0)
  {
    v19 = *v8;
    v20 = *(*v8 + 8);
    v21 = *(*v8 + 16);
    if (v20 >= v21)
    {
      v23 = *v19;
      v24 = v20 - *v19;
      v25 = 0x6DB6DB6DB6DB6DB7 * (v24 >> 3) + 1;
      if (v25 > 0x492492492492492)
      {
        std::vector<void *>::__throw_length_error[abi:ne200100]();
      }

      v26 = 0x6DB6DB6DB6DB6DB7 * ((v21 - v23) >> 3);
      if (2 * v26 > v25)
      {
        v25 = 2 * v26;
      }

      if (v26 >= 0x249249249249249)
      {
        v27 = 0x492492492492492;
      }

      else
      {
        v27 = v25;
      }

      if (v27)
      {
        if (v27 <= 0x492492492492492)
        {
          operator new();
        }

        std::__throw_bad_array_new_length[abi:ne200100]();
      }

      v28 = 8 * (v24 >> 3);
      *v28 = DeviceIDFromEngineID;
      *(v28 + 8) = first;
      *(v28 + 16) = v43;
      *(v28 + 32) = end_cap;
      *(v28 + 48) = v16;
      v22 = v28 + 56;
      v29 = v28 - v24;
      memcpy((v28 - v24), v23, v24);
      *v19 = v29;
      *(v19 + 8) = v22;
      *(v19 + 16) = 0;
      if (v23)
      {
        operator delete(v23);
      }
    }

    else
    {
      *v20 = DeviceIDFromEngineID;
      *(v20 + 8) = first;
      *(v20 + 16) = v43;
      *(v20 + 32) = end_cap;
      *(v20 + 48) = v16;
      v22 = v20 + 56;
    }

    *(v19 + 8) = v22;
    v30 = v8[1];
    v32 = *(v30 + 8);
    v31 = *(v30 + 16);
    if (v32 >= v31)
    {
      v34 = 0xAAAAAAAAAAAAAAABLL * ((v32 - *v30) >> 3);
      if (v34 + 1 > 0xAAAAAAAAAAAAAAALL)
      {
        std::vector<void *>::__throw_length_error[abi:ne200100]();
      }

      v35 = 0xAAAAAAAAAAAAAAABLL * ((v31 - *v30) >> 3);
      v36 = 2 * v35;
      if (2 * v35 <= v34 + 1)
      {
        v36 = v34 + 1;
      }

      if (v35 >= 0x555555555555555)
      {
        v37 = 0xAAAAAAAAAAAAAAALL;
      }

      else
      {
        v37 = v36;
      }

      v45.__end_cap_.__value_ = v8[1];
      if (v37)
      {
        std::allocator<std::string>::allocate_at_least[abi:ne200100](v37);
      }

      v45.__first_ = 0;
      v45.__begin_ = (24 * v34);
      v45.__end_ = (24 * v34);
      v45.__end_cap_.__value_ = 0;
      std::string::basic_string[abi:ne200100]<0>((24 * v34), (v12 + 112));
      v33 = v45.__end_ + 1;
      v38 = *(v30 + 8) - *v30;
      v39 = v45.__begin_ - v38;
      memcpy(v45.__begin_ - v38, *v30, v38);
      v40 = *v30;
      *v30 = v39;
      v45.__first_ = v40;
      v45.__begin_ = v40;
      *(v30 + 8) = v33;
      v45.__end_ = v40;
      v41 = *(v30 + 16);
      *(v30 + 16) = v45.__end_cap_.__value_;
      v45.__end_cap_.__value_ = v41;
      std::__split_buffer<std::string>::~__split_buffer(&v45);
    }

    else
    {
      std::string::basic_string[abi:ne200100]<0>(*(v30 + 8), (v12 + 112));
      v33 = v32 + 1;
      *(v30 + 8) = v32 + 1;
    }

    *(v30 + 8) = v33;
  }

  return 0;
}

uint64_t HALS_IOContext_Legacy_Impl::GetHostedDSPInstanceProperties@<X0>(uint64_t result@<X0>, int a2@<W1>, unsigned int a3@<W2>, void *a4@<X8>)
{
  v13 = *MEMORY[0x1E69E9840];
  if (a2 != 1)
  {
    goto LABEL_14;
  }

  v5 = *(result + 2184);
  if (!v5)
  {
    goto LABEL_14;
  }

  v6 = *(v5 + 24);
  if ((*(v6 + 96) & 1) == 0)
  {
    v10 = 0;
LABEL_8:
    v11[0] = &unk_1F5978C10;
    v11[1] = a3;
    v11[2] = &v10;
    v12 = v11;
    v7 = *(v6 + 176);
    v8 = *(v6 + 184);
    while (v7 != v8)
    {
      if (!v12)
      {
        std::__throw_bad_function_call[abi:ne200100]();
      }

      (*(*v12 + 48))(v12, v7);
      v7 += 24;
    }

    result = std::__function::__value_func<void ()(std::pair<std::shared_ptr<AHAL_DSP::IAudioStream>,HALS_DSPHostIntegrationPoint_IOContext::RelativeStreamTopology> const&)>::~__value_func[abi:ne200100](v11);
    if (v10)
    {
      goto LABEL_13;
    }

LABEL_14:
    *a4 = 0;
    a4[1] = 0;
    goto LABEL_15;
  }

  v10 = *(v6 + 92) == a3;
  if (!v10)
  {
    goto LABEL_8;
  }

LABEL_13:
  result = (*(**(v5 + 8) + 32))(*(v5 + 8));
LABEL_15:
  v9 = *MEMORY[0x1E69E9840];
  return result;
}

void HALS_IOContext_Legacy_Impl::GetHostedDSPProcessorPropertySetInterface(HALS_IOContext_Legacy_Impl *this@<X0>, int a2@<W1>, void *a3@<X8>)
{
  if (*(this + 272))
  {
    v8 = 0;
    v9 = &v8;
    v10 = 0x3802000000;
    v11 = __Block_byref_object_copy__58_13560;
    v13 = 0;
    v14 = 0;
    v12 = __Block_byref_object_dispose__59_13561;
    v6[0] = MEMORY[0x1E69E9820];
    v6[1] = 0x40000000;
    v6[2] = ___ZN26HALS_IOContext_Legacy_Impl41GetHostedDSPProcessorPropertySetInterfaceEj_block_invoke;
    v6[3] = &unk_1E8678170;
    v6[4] = &v8;
    v6[5] = this;
    v7 = a2;
    v4 = (*(**(this + 3) + 64))(*(this + 3));
    HALB_CommandGate::ExecuteCommand(v4, v6);
    v5 = v9[6];
    *a3 = v9[5];
    a3[1] = v5;
    if (v5)
    {
      atomic_fetch_add_explicit((v5 + 8), 1uLL, memory_order_relaxed);
    }

    _Block_object_dispose(&v8, 8);
    if (v14)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v14);
    }
  }

  else
  {
    *a3 = 0;
    a3[1] = 0;
  }
}

void sub_1DE5F697C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, char a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, std::__shared_weak_count *a22)
{
  _Block_object_dispose(&a16, 8);
  if (a22)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a22);
  }

  _Unwind_Resume(a1);
}

__n128 __Block_byref_object_copy__58_13560(uint64_t a1, uint64_t a2)
{
  result = *(a2 + 40);
  *(a1 + 40) = result;
  *(a2 + 40) = 0;
  *(a2 + 48) = 0;
  return result;
}

void __Block_byref_object_dispose__59_13561(uint64_t a1)
{
  v1 = *(a1 + 48);
  if (v1)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v1);
  }
}

void ___ZN26HALS_IOContext_Legacy_Impl41GetHostedDSPProcessorPropertySetInterfaceEj_block_invoke(uint64_t a1)
{
  v2 = *(*(a1 + 40) + 2176);
  v3 = *v2;
  v4 = v2[1];
  if (*v2 == v4)
  {
LABEL_9:
    v7 = 0uLL;
    v10 = 0u;
    goto LABEL_11;
  }

  v5 = *(a1 + 48);
  while (1)
  {
    v6 = *(v3 + 16);
    if (*(v6 + 4) == v5 || *(v6 + 8) == v5)
    {
      break;
    }

LABEL_8:
    v3 += 24;
    if (v3 == v4)
    {
      goto LABEL_9;
    }
  }

  (*(**(v6 + 136) + 40))(&v10);
  if (!v10)
  {
    if (*(&v10 + 1))
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](*(&v10 + 1));
    }

    goto LABEL_8;
  }

  v7 = v10;
LABEL_11:
  v8 = *(*(a1 + 32) + 8);
  v10 = 0uLL;
  v9 = *(v8 + 48);
  *(v8 + 40) = v7;
  if (v9)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v9);
    if (*(&v10 + 1))
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](*(&v10 + 1));
    }
  }
}

uint64_t HALS_IOContext_Legacy_Impl::GetSafetyOffset(HALS_IOContext_Legacy_Impl *this, unsigned int a2)
{
  v2 = *(this + 195);
  if (v2 && *(v2 + 88))
  {
    return (*(v2 + 4 * a2 + 400) + *(v2 + 4 * a2 + 392) + *(v2 + 4 * a2 + 416) + *(v2 + 4 * a2 + 424));
  }

  else
  {
    return 0;
  }
}

double HALS_IOContext_Legacy_Impl::GetActualSampleRate(HALS_IOContext_Legacy_Impl *this)
{
  v1 = *(this + 195);
  result = 0.0;
  if (v1)
  {
    if (*(this + 1340) == 1 && (v3 = *(v1 + 368)) != 0)
    {
      v4 = *(v3 + 40 * *(v3 + 192) + 200);
      v5 = 24000000.0 / v4;
      v6 = v4 == 0.0;
      result = 0.0;
      if (!v6)
      {
        return v5;
      }
    }

    else if (*(v1 + 88))
    {
      return *(v1 + 848);
    }
  }

  return result;
}

void HALS_IOContext_Legacy_Impl::GetStreamInfo(uint64_t a1, uint64_t a2, unsigned int a3, unsigned int *a4, int a5)
{
  v9 = a3 / 0x38;
  NumberStreams = HALS_IOContextDescription::GetNumberStreams(a1 + 1536, a5);
  if (NumberStreams >= v9)
  {
    v11 = v9;
  }

  else
  {
    v11 = NumberStreams;
  }

  *a4 = v11;
  if (v11)
  {
    v12 = 0;
    do
    {
      HALS_IOContextDescription::GetStreamInfoAtIndex((a1 + 1536), a5, v12++, a2);
      a2 += 56;
    }

    while (v12 < *a4);
  }
}

void HALS_IOContext_Legacy_Impl::SetIdentifySpeechDeviceToAllowDeviceRestart(HALS_IOContext_Legacy_Impl *this, char a2)
{
  v8 = *MEMORY[0x1E69E9840];
  if (*(this + 1340) != 1)
  {
    *(this + 1376) = a2;
    v2 = *MEMORY[0x1E69E9840];

    HALS_IOContext_Legacy_Impl::UpdatePowerAssertions(this);
  }

  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    v4 = 136315394;
    v5 = "HALS_IOContext_Legacy_Impl.cpp";
    v6 = 1024;
    v7 = 5272;
    _os_log_impl(&dword_1DE1F9000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "%25s:%-5d  HALS_IOContext_Legacy_Impl::_SetPropertyData: can't set kAudioDevicePropertyIdentifySpeechDeviceToAllowDeviceRestart while playing", &v4, 0x12u);
  }

  exception = __cxa_allocate_exception(0x10uLL);
  *exception = off_1F5991DD8;
  exception[2] = 1852797029;
}

void HALS_IOContext_Legacy_Impl::UpdatePowerAssertions(HALS_IOContext_Legacy_Impl *this)
{
  v14 = *MEMORY[0x1E69E9840];
  OS::CF::MutableArray::MutableArray(v11);
  if ((*(this + 1764) & 1) == 0)
  {
    if (std::__count_BOOL[abi:ne200100]<true,std::vector<BOOL>,true>(*(this + 208), 0, *(this + 209)))
    {
      v9 = &unk_1F5991188;
      v10 = @"audio-in";
      OS::CF::MutableArray::AppendValue<OS::CF::String>(cf, @"audio-in");
      OS::CF::UntypedObject::~UntypedObject(&v9);
    }

    if (std::__count_BOOL[abi:ne200100]<true,std::vector<BOOL>,true>(*(this + 205), 0, *(this + 206)))
    {
      v9 = &unk_1F5991188;
      v10 = @"audio-out";
      OS::CF::MutableArray::AppendValue<OS::CF::String>(cf, @"audio-out");
      OS::CF::UntypedObject::~UntypedObject(&v9);
    }

    v2 = *(this + 195);
    if (v2)
    {
      OS::CF::String::String(&v9, (v2 + 112));
      OS::CF::MutableArray::AppendValue<OS::CF::String>(cf, v10);
      OS::CF::UntypedObject::~UntypedObject(&v9);
    }
  }

  v3 = *(this + 1376) ^ 1;
  v4 = *(this + 3);
  v5 = *(*(v4 + 72) + 4) <= 0;
  v6 = *(this + 1756);
  LODWORD(v4) = *(v4 + 16);
  OS::CF::UntypedObject::UntypedObject(&v7, cf);
  v7 = &unk_1F5987290;
  v8 = v3;
  v13 = 0;
  operator new();
}

void sub_1DE5F6F5C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, ...)
{
  va_start(va, a10);
  std::__function::__value_func<void ()(std::shared_ptr<HALS_IOContext_PowerAssertions> const&)>::~__value_func[abi:ne200100](v11 - 72);
  OS::CF::UntypedObject::~UntypedObject(v10);
  OS::CF::UntypedObject::~UntypedObject(va);
  _Unwind_Resume(a1);
}

void HALS_IOContext_Legacy_Impl::DoPowerAssertionTask(void *a1, uint64_t a2)
{
  v18[4] = *MEMORY[0x1E69E9840];
  v2 = a1[175];
  v3 = a1[176];
  if (v3)
  {
    atomic_fetch_add_explicit(&v3->__shared_weak_owners_, 1uLL, memory_order_relaxed);
    v4 = a1[173];
    v10 = v2;
    v11 = v3;
    atomic_fetch_add_explicit(&v3->__shared_weak_owners_, 1uLL, memory_order_relaxed);
  }

  else
  {
    v4 = a1[173];
    v10 = a1[175];
    v11 = 0;
  }

  std::__function::__value_func<void ()(std::shared_ptr<HALS_IOContext_PowerAssertions> const&)>::__value_func[abi:ne200100](v12, a2);
  v5 = atomic_load((v4 + 32));
  if (v5)
  {
    atomic_store(1u, (v4 + 33));
  }

  if (*(v4 + 328) != 1)
  {
    v8 = *v4;
    operator new();
  }

  v16 = v10;
  v17 = v11;
  if (v11)
  {
    atomic_fetch_add_explicit(&v11->__shared_weak_owners_, 1uLL, memory_order_relaxed);
  }

  std::__function::__value_func<void ()(std::shared_ptr<HALS_IOContext_PowerAssertions> const&)>::__value_func[abi:ne200100](v18, v12);
  v6 = *(v4 + 320);
  v7 = *v4;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 1174405120;
  block[2] = ___ZNK4AMCP7Utility14Dispatch_Queue5asyncIZN26HALS_IOContext_Legacy_Impl20DoPowerAssertionTaskENSt3__18functionIFvRKNS4_10shared_ptrI30HALS_IOContext_PowerAssertionsEEEEEE3__0EEvOT__block_invoke;
  block[3] = &__block_descriptor_tmp_162_13568;
  block[4] = v16;
  v14 = v17;
  if (v17)
  {
    atomic_fetch_add_explicit(&v17->__shared_weak_owners_, 1uLL, memory_order_relaxed);
  }

  std::__function::__value_func<void ()(std::shared_ptr<HALS_IOContext_PowerAssertions> const&)>::__value_func[abi:ne200100](v15, v18);
  dispatch_group_async(v6, v7, block);
  std::__function::__value_func<void ()(std::shared_ptr<HALS_IOContext_PowerAssertions> const&)>::~__value_func[abi:ne200100](v15);
  if (v14)
  {
    std::__shared_weak_count::__release_weak(v14);
  }

  std::__function::__value_func<void ()(std::shared_ptr<HALS_IOContext_PowerAssertions> const&)>::~__value_func[abi:ne200100](v18);
  if (v17)
  {
    std::__shared_weak_count::__release_weak(v17);
  }

  std::__function::__value_func<void ()(std::shared_ptr<HALS_IOContext_PowerAssertions> const&)>::~__value_func[abi:ne200100](v12);
  if (v11)
  {
    std::__shared_weak_count::__release_weak(v11);
  }

  if (v3)
  {
    std::__shared_weak_count::__release_weak(v3);
  }

  v9 = *MEMORY[0x1E69E9840];
}

void sub_1DE5F71B0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, char a10, std::__shared_weak_count *a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, std::__shared_weak_count *a21)
{
  if (a2)
  {
    v23 = *(v21 + 8);
    if (v23)
    {
      std::__shared_weak_count::__release_weak(v23);
    }

    __clang_call_terminate(exception_object);
  }

  _Unwind_Resume(exception_object);
}

uint64_t std::__function::__value_func<void ()(std::shared_ptr<HALS_IOContext_PowerAssertions> const&)>::~__value_func[abi:ne200100](uint64_t a1)
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

uint64_t std::__function::__value_func<void ()(std::shared_ptr<HALS_IOContext_PowerAssertions> const&)>::__value_func[abi:ne200100](uint64_t a1, uint64_t a2)
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

uint64_t HALS_IOContext_Legacy_Impl::DoPowerAssertionTask(std::function<void ()(std::shared_ptr<HALS_IOContext_PowerAssertions> const&)>)::$_0::~$_0(uint64_t a1)
{
  std::__function::__value_func<void ()(std::shared_ptr<HALS_IOContext_PowerAssertions> const&)>::~__value_func[abi:ne200100](a1 + 16);
  v2 = *(a1 + 8);
  if (v2)
  {
    std::__shared_weak_count::__release_weak(v2);
  }

  return a1;
}

uint64_t *std::unique_ptr<HALS_IOContext_Legacy_Impl::DoPowerAssertionTask(std::function<void ()(std::shared_ptr<HALS_IOContext_PowerAssertions> const&)>)::$_0,std::default_delete<HALS_IOContext_Legacy_Impl::DoPowerAssertionTask(std::function<void ()(std::shared_ptr<HALS_IOContext_PowerAssertions> const&)>)::$_0>>::~unique_ptr[abi:ne200100](uint64_t *a1)
{
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    std::__function::__value_func<void ()(std::shared_ptr<HALS_IOContext_PowerAssertions> const&)>::~__value_func[abi:ne200100](v2 + 16);
    v3 = *(v2 + 8);
    if (v3)
    {
      std::__shared_weak_count::__release_weak(v3);
    }

    MEMORY[0x1E12C1730](v2, 0x1020C407A7143E5);
  }

  return a1;
}

uint64_t *applesauce::dispatch::v1::async<HALS_IOContext_Legacy_Impl::DoPowerAssertionTask(std::function<void ()(std::shared_ptr<HALS_IOContext_PowerAssertions> const&)>)::$_0 &>(dispatch_queue_s *,HALS_IOContext_Legacy_Impl::DoPowerAssertionTask(std::function<void ()(std::shared_ptr<HALS_IOContext_PowerAssertions> const&)>)::$_0 &)::{lambda(void *)#1}::__invoke(uint64_t *a1)
{
  v2 = a1;
  HALS_IOContext_Legacy_Impl::DoPowerAssertionTask(std::function<void ()(std::shared_ptr<HALS_IOContext_PowerAssertions> const&)>)::$_0::operator()(a1);
  return std::unique_ptr<HALS_IOContext_Legacy_Impl::DoPowerAssertionTask(std::function<void ()(std::shared_ptr<HALS_IOContext_PowerAssertions> const&)>)::$_0,std::default_delete<HALS_IOContext_Legacy_Impl::DoPowerAssertionTask(std::function<void ()(std::shared_ptr<HALS_IOContext_PowerAssertions> const&)>)::$_0>>::~unique_ptr[abi:ne200100](&v2);
}

void sub_1DE5F741C(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  std::unique_ptr<HALS_IOContext_Legacy_Impl::DoPowerAssertionTask(std::function<void ()(std::shared_ptr<HALS_IOContext_PowerAssertions> const&)>)::$_0,std::default_delete<HALS_IOContext_Legacy_Impl::DoPowerAssertionTask(std::function<void ()(std::shared_ptr<HALS_IOContext_PowerAssertions> const&)>)::$_0>>::~unique_ptr[abi:ne200100](va);
  _Unwind_Resume(a1);
}

void HALS_IOContext_Legacy_Impl::DoPowerAssertionTask(std::function<void ()(std::shared_ptr<HALS_IOContext_PowerAssertions> const&)>)::$_0::operator()(uint64_t *a1)
{
  v4 = 0;
  v5 = 0;
  v2 = a1[1];
  if (v2)
  {
    v5 = std::__shared_weak_count::lock(v2);
    if (v5)
    {
      v4 = *a1;
      if (v4)
      {
        v3 = a1[5];
        if (!v3)
        {
          std::__throw_bad_function_call[abi:ne200100]();
        }

        (*(*v3 + 48))(v3, &v4);
      }
    }
  }

  if (v5)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v5);
  }
}

void sub_1DE5F74C0(void *a1)
{
  __cxa_begin_catch(a1);
  __cxa_end_catch();
  JUMPOUT(0x1DE5F749CLL);
}

void sub_1DE5F74CC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10)
{
  if (a10)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a10);
  }

  _Unwind_Resume(exception_object);
}

void __destroy_helper_block_e8_32c137_ZTSZN26HALS_IOContext_Legacy_Impl20DoPowerAssertionTaskENSt3__18functionIFvRKNS0_10shared_ptrI30HALS_IOContext_PowerAssertionsEEEEEE3__0(uint64_t a1)
{
  std::__function::__value_func<void ()(std::shared_ptr<HALS_IOContext_PowerAssertions> const&)>::~__value_func[abi:ne200100](a1 + 48);
  v2 = *(a1 + 40);
  if (v2)
  {

    std::__shared_weak_count::__release_weak(v2);
  }
}

uint64_t __copy_helper_block_e8_32c137_ZTSZN26HALS_IOContext_Legacy_Impl20DoPowerAssertionTaskENSt3__18functionIFvRKNS0_10shared_ptrI30HALS_IOContext_PowerAssertionsEEEEEE3__0(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 16), 1uLL, memory_order_relaxed);
  }

  return std::__function::__value_func<void ()(std::shared_ptr<HALS_IOContext_PowerAssertions> const&)>::__value_func[abi:ne200100](a1 + 48, a2 + 48);
}

void sub_1DE5F7574(_Unwind_Exception *exception_object)
{
  v3 = *(v1 + 40);
  if (v3)
  {
    std::__shared_weak_count::__release_weak(v3);
  }

  _Unwind_Resume(exception_object);
}

uint64_t std::__function::__func<HALS_IOContext_Legacy_Impl::UpdatePowerAssertions(void)::$_0,std::allocator<HALS_IOContext_Legacy_Impl::UpdatePowerAssertions(void)::$_0>,void ()(std::shared_ptr<HALS_IOContext_PowerAssertions> const&)>::target(uint64_t a1, uint64_t a2)
{
  if (std::type_info::operator==[abi:ne200100](*(a2 + 8), "ZN26HALS_IOContext_Legacy_Impl21UpdatePowerAssertionsEvE3$_0"))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void std::__function::__func<HALS_IOContext_Legacy_Impl::UpdatePowerAssertions(void)::$_0,std::allocator<HALS_IOContext_Legacy_Impl::UpdatePowerAssertions(void)::$_0>,void ()(std::shared_ptr<HALS_IOContext_PowerAssertions> const&)>::operator()(uint64_t a1, uint64_t *a2)
{
  v3 = *a2;
  v2 = a2[1];
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 8), 1uLL, memory_order_relaxed);
  }

  v4 = *(a1 + 8);
  v5 = *(a1 + 12);
  v6 = *(a1 + 20);
  v7 = *(a1 + 40);
  v8 = *(a1 + 48);
  v9[2] = &unk_1F5991188;
  v9[3] = @"PreventUserIdleSystemSleep";
  OS::CF::String::String<int>(v9, @"com.apple.audio.context%d.preventuseridlesleep", v4);
  operator new();
}

void sub_1DE5F7858(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, char a11, uint64_t a12, char a13, uint64_t a14, char a15)
{
  OS::CF::UntypedObject::~UntypedObject(&a13);
  OS::CF::UntypedObject::~UntypedObject(&a15);
  MEMORY[0x1E12C1730](v16, 0x10C0C40D06D8F89);
  OS::CF::UntypedObject::~UntypedObject(&a9);
  OS::CF::UntypedObject::~UntypedObject(&a11);
  if (v15)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v15);
  }

  _Unwind_Resume(a1);
}

void *OS::CF::String::String<int>(void *a1, CFStringRef format, uint64_t a3)
{
  v4 = CFStringCreateWithFormat(0, 0, format, a3);
  *a1 = &unk_1F5991188;
  a1[1] = v4;
  return a1;
}

IOPMAssertionID **std::unique_ptr<HALB_PowerAssertion>::reset[abi:ne200100](IOPMAssertionID **result, IOPMAssertionID *a2)
{
  v2 = *result;
  *result = a2;
  if (v2)
  {
    if (*v2)
    {
      IOPMAssertionRelease(*v2);
    }

    OS::CF::UntypedObject::~UntypedObject((v2 + 8));
    OS::CF::UntypedObject::~UntypedObject((v2 + 4));

    JUMPOUT(0x1E12C1730);
  }

  return result;
}

void std::__function::__func<HALS_IOContext_Legacy_Impl::UpdatePowerAssertions(void)::$_0,std::allocator<HALS_IOContext_Legacy_Impl::UpdatePowerAssertions(void)::$_0>,void ()(std::shared_ptr<HALS_IOContext_PowerAssertions> const&)>::destroy_deallocate(uint64_t a1)
{
  OS::CF::UntypedObject::~UntypedObject((a1 + 32));

  operator delete(a1);
}

OS::CF::UntypedObject *std::__function::__func<HALS_IOContext_Legacy_Impl::UpdatePowerAssertions(void)::$_0,std::allocator<HALS_IOContext_Legacy_Impl::UpdatePowerAssertions(void)::$_0>,void ()(std::shared_ptr<HALS_IOContext_PowerAssertions> const&)>::__clone(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_1F59827D8;
  v4 = *(a1 + 8);
  *(a2 + 24) = *(a1 + 24);
  *(a2 + 8) = v4;
  result = OS::CF::UntypedObject::UntypedObject((a2 + 32), *(a1 + 40));
  *(a2 + 32) = &unk_1F5987290;
  *(a2 + 48) = *(a1 + 48);
  return result;
}

void std::__function::__func<HALS_IOContext_Legacy_Impl::UpdatePowerAssertions(void)::$_0,std::allocator<HALS_IOContext_Legacy_Impl::UpdatePowerAssertions(void)::$_0>,void ()(std::shared_ptr<HALS_IOContext_PowerAssertions> const&)>::~__func(void *a1)
{
  *a1 = &unk_1F59827D8;
  OS::CF::UntypedObject::~UntypedObject((a1 + 4));

  JUMPOUT(0x1E12C1730);
}

void *std::__function::__func<HALS_IOContext_Legacy_Impl::UpdatePowerAssertions(void)::$_0,std::allocator<HALS_IOContext_Legacy_Impl::UpdatePowerAssertions(void)::$_0>,void ()(std::shared_ptr<HALS_IOContext_PowerAssertions> const&)>::~__func(void *a1)
{
  *a1 = &unk_1F59827D8;
  OS::CF::UntypedObject::~UntypedObject((a1 + 4));
  return a1;
}

uint64_t HALS_IOContext_Legacy_Impl::CopyIOThreadOSWorkgroup(HALS_IOContext_Legacy_Impl *this)
{
  v7 = *MEMORY[0x1E69E9840];
  HALS_IOThread::GetIOThreadOSWorkgroup(v5, this + 312);
  v2 = caulk::mach::details::retain_os_object(v6, v1);
  caulk::mach::os_workgroup_interval_managed::~os_workgroup_interval_managed(v5);
  v3 = *MEMORY[0x1E69E9840];
  return v2;
}

uint64_t HALS_IOContext_Legacy_Impl::GetIOThreadOSWorkgroup(HALS_IOContext_Legacy_Impl *this)
{
  v6 = *MEMORY[0x1E69E9840];
  HALS_IOThread::GetIOThreadOSWorkgroup(v4, this + 312);
  v1 = v5;
  caulk::mach::os_workgroup_interval_managed::~os_workgroup_interval_managed(v4);
  v2 = *MEMORY[0x1E69E9840];
  return v1;
}

void HALS_IOContext_Legacy_Impl::SetIOThreadOSWorkgroup(HALS_IOContext_Legacy_Impl *this, os_workgroup_s *a2)
{
  v17 = *MEMORY[0x1E69E9840];
  caulk::mach::os_workgroup_interval_managed::from_get(v7, a2);
  v5 = this + 328;
  v6 = HALB_Mutex::Lock((this + 328));
  v12 = MEMORY[0x1E69E3C18] + 16;
  v4 = caulk::mach::details::retain_os_object(v8, v3);
  v14 = v9;
  *v15 = *v10;
  *&v15[9] = *&v10[9];
  v12 = MEMORY[0x1E69E3C20] + 16;
  v13 = v4;
  v16 = v11;
  operator new();
}

void HALS_IOContext_Legacy_Impl::GetIOProcStreamUsage(HALS_IOContext_Legacy_Impl *this, AudioHardwareIOProcStreamUsage *a2, unsigned int *a3, char a4)
{
  v14 = 0;
  v15 = &v14;
  v16 = 0x2000000000;
  v17 = 0;
  v10 = 0;
  v11 = &v10;
  v12 = 0x2000000000;
  v13 = 0;
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 0x40000000;
  v8[2] = ___ZNK26HALS_IOContext_Legacy_Impl20GetIOProcStreamUsageER30AudioHardwareIOProcStreamUsageRjb_block_invoke;
  v8[3] = &unk_1E8678148;
  v9 = a4;
  v8[6] = this;
  v8[7] = a3;
  v8[8] = a2;
  v8[4] = &v14;
  v8[5] = &v10;
  v5 = (*(**(this + 3) + 64))(*(this + 3));
  HALB_CommandGate::ExecuteCommand(v5, v8);
  if (*(v11 + 6))
  {
    exception = __cxa_allocate_exception(0x10uLL);
    v7 = *(v11 + 6);
    *exception = off_1F5991DD8;
    exception[2] = v7;
  }

  *a3 = *(v15 + 6);
  _Block_object_dispose(&v10, 8);
  _Block_object_dispose(&v14, 8);
}

void sub_1DE5F8010(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v11 - 48), 8);
  _Unwind_Resume(a1);
}

uint64_t ___ZNK26HALS_IOContext_Legacy_Impl20GetIOProcStreamUsageER30AudioHardwareIOProcStreamUsageRjb_block_invoke(uint64_t a1)
{
  v15 = *MEMORY[0x1E69E9840];
  v2 = *(a1 + 48);
  result = HALS_IOContextDescription::GetNumberStreams(v2 + 1536, *(a1 + 72));
  *(*(*(a1 + 32) + 8) + 24) = 4 * result + 12;
  if (**(a1 + 56) < *(*(*(a1 + 32) + 8) + 24))
  {
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      v11 = 136315394;
      v12 = "HALS_IOContext_Legacy_Impl.cpp";
      v13 = 1024;
      v14 = 5230;
      _os_log_impl(&dword_1DE1F9000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "%25s:%-5d  HALS_IOContext_Legacy_Impl::GetIOProcStreamUsage: bad property data size for kAudioDevicePropertyIOProcStreamUsage", &v11, 0x12u);
    }

    exception = __cxa_allocate_exception(0x10uLL);
    *exception = off_1F5991DD8;
    exception[2] = 561211770;
  }

  v4 = *(a1 + 64);
  *(v4 + 8) = result;
  if (result)
  {
    v5 = 0;
    v6 = *(a1 + 72);
    v7 = v4 + 12;
    v8 = result;
    do
    {
      result = HALS_IOContextDescription::IsStreamEnabledAtIndex((v2 + 1536), v6, v5);
      *(v7 + 4 * v5++) = result;
    }

    while (v8 != v5);
  }

  v9 = *MEMORY[0x1E69E9840];
  return result;
}

void sub_1DE5F81C8(_Unwind_Exception *a1, int a2)
{
  if (a2)
  {
    v4 = __cxa_begin_catch(a1);
    if (a2 == 2)
    {
      v5 = v4[2];
    }

    else
    {
      v5 = 2003329396;
    }

    *(*(*(v2 + 40) + 8) + 24) = v5;
    __cxa_end_catch();
    JUMPOUT(0x1DE5F80E0);
  }

  _Unwind_Resume(a1);
}

uint64_t HALS_IOContext_Legacy_Impl::SetIOProcStreamUsage(HALS_IOContext_Legacy_Impl *this, const AudioHardwareIOProcStreamUsage *a2, unsigned int a3, int a4)
{
  v20 = *MEMORY[0x1E69E9840];
  if (a3 <= 0xB)
  {
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      *v17 = 136315394;
      *&v17[4] = "HALS_IOContext_Legacy_Impl.cpp";
      v18 = 1024;
      v19 = 5177;
      _os_log_impl(&dword_1DE1F9000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "%25s:%-5d  HALS_IOContext_Legacy_Impl::SetIOProcStreamUsage: bad property data size for kAudioDevicePropertyIOProcStreamUsage", v17, 0x12u);
    }

    exception = __cxa_allocate_exception(0x10uLL);
    *exception = off_1F5991DD8;
    exception[2] = 561211770;
  }

  mNumberStreams = a2->mNumberStreams;
  NumberStreams = HALS_IOContextDescription::GetNumberStreams(this + 1536, a4);
  v10 = (a3 + 0x3FFFFFFF4) >> 2;
  if (mNumberStreams < v10)
  {
    LODWORD(v10) = mNumberStreams;
  }

  if (NumberStreams >= v10)
  {
    v11 = v10;
  }

  else
  {
    v11 = NumberStreams;
  }

  *v17 = this + 312;
  *&v17[8] = HALB_Mutex::Lock((this + 328));
  HALS_IOContextDescription::UnregisterBuffers((this + 1536));
  if (v11)
  {
    v12 = 0;
    mStreamIsOn = a2->mStreamIsOn;
    do
    {
      HALS_IOContextDescription::SetStreamIsEnabledAtIndex(this + 192, a4, v12, mStreamIsOn[v12] != 0);
      ++v12;
    }

    while (v11 != v12);
  }

  if ((a4 & 1) == 0)
  {
    HALS_IOContextDescription::PushStreamUsageToEngines(this + 1536, 1, 0);
  }

  HALS_IOContextDescription::PushStreamUsageToEngines(this + 1536, a4, 0);
  HALS_IOContextDescription::RegisterBuffers((this + 1536));
  HALS_IOContext_Legacy_Impl::_SetProcStreamUsage_ForDSP(this, a4);
  HALS_IOContextDescription::ClearInactiveInputSharedBuffers(this + 1536, *(this + 340));
  HALB_IOThread::Locker::~Locker(v17);
  v14 = *MEMORY[0x1E69E9840];
  return 0;
}

void sub_1DE5F8404(_Unwind_Exception *exception_object, int a2)
{
  if (a2)
  {
    v3 = __cxa_begin_catch(exception_object);
    if (a2 == 2)
    {
      v4 = v3[2];
    }

    __cxa_end_catch();
    JUMPOUT(0x1DE5F8318);
  }

  _Unwind_Resume(exception_object);
}

_DWORD *HALS_IOContext_Legacy_Impl::_SetProcStreamUsage_ForDSP(_DWORD *this, int a2)
{
  if (this[120] != 1735552612)
  {
    v2 = this;
    if (this[120] != 1718185577)
    {
      v3 = 494;
      if (a2)
      {
        v3 = 484;
      }

      if (*&this[v3])
      {
        this = HALS_IOContextDescription::GetNumberActiveStreams((this + 384), a2);
        if (this)
        {
          v4 = *(*(v2 + 3) + 16);
          HALS_IOContext_Legacy_Impl::PauseIO(v2);
          v5 = *(*(v2 + 3) + 16);

          return HALS_IOContext_Legacy_Impl::ResumeIO(v2);
        }
      }
    }
  }

  return this;
}

uint64_t HALS_IOContext_Legacy_Impl::PauseIO(HALS_IOContext_Legacy_Impl *this)
{
  v18 = *MEMORY[0x1E69E9840];
  v2 = (this + 312);
  __p[0] = this + 312;
  LODWORD(__p[1]) = HALB_Mutex::Lock((this + 328));
  *(this + 304) = 1;
  HALB_IOThread::Locker::~Locker(__p);
  os_unfair_recursive_lock_lock_with_options();
  v3 = *(*(this + 3) + 16);
  atomic_load(this + 334);
  kdebug_trace();
  __p[0] = 0;
  __p[1] = 0;
  v16 = 0;
  v13 = v2;
  v14 = HALB_Mutex::Lock((this + 328));
  v4 = (this + 1336);
  v5 = atomic_load(this + 334);
  if (v5 == -1)
  {
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      *buf = 136315394;
      *&buf[4] = "HALS_IOContext_Legacy_Impl.cpp";
      *&buf[12] = 1024;
      *&buf[14] = 803;
      _os_log_impl(&dword_1DE1F9000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "%25s:%-5d  HALS_IOContext_Legacy_Impl::PauseIO: pause count at maximum", buf, 0x12u);
    }

    exception = __cxa_allocate_exception(0x10uLL);
    *exception = off_1F5991DD8;
    exception[2] = 1852797029;
  }

  atomic_fetch_add(v4, 1u);
  v6 = atomic_load(v4);
  if (v6 == 1 && ((v7 = (this + 1512), *(this + 190)) || *v7))
  {
    HALS_IOPrewarmManager::GetState(buf, v7);
    if (__p[0])
    {
      operator delete(__p[0]);
    }

    *__p = *buf;
    v16 = *&buf[16];
    HALB_IOThread::Locker::~Locker(&v13);
    HALS_IOContext_Legacy_Impl::ResetEngineState_Off(this, __p);
    v8 = 1;
  }

  else
  {
    HALB_IOThread::Locker::~Locker(&v13);
    v8 = 0;
  }

  HALB_IOThread::WaitForState(v2, 1735552612);
  if (__p[0])
  {
    operator delete(__p[0]);
  }

  v9 = *(*(this + 3) + 16);
  atomic_load(this + 334);
  kdebug_trace();
  os_unfair_recursive_lock_unlock();
  v10 = *MEMORY[0x1E69E9840];
  return v8;
}

void sub_1DE5F8784(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p)
{
  if (a2)
  {
    if (__p)
    {
      operator delete(__p);
    }

    __cxa_begin_catch(exception_object);
    __cxa_end_catch();
    JUMPOUT(0x1DE5F866CLL);
  }

  _Unwind_Resume(exception_object);
}

uint64_t HALS_IOContext_Legacy_Impl::ResumeIO(HALS_IOContext_Legacy_Impl *this)
{
  v33 = *MEMORY[0x1E69E9840];
  os_unfair_recursive_lock_lock_with_options();
  v2 = *(*(this + 3) + 16);
  atomic_load(this + 334);
  kdebug_trace();
  v21 = this + 312;
  v22 = HALB_Mutex::Lock((this + 328));
  v3 = (this + 1336);
  v4 = atomic_load(this + 334);
  if (v4 && (atomic_fetch_add(v3, 0xFFFFFFFF), (v5 = atomic_load(v3)) == 0) && ((v7 = (this + 1512), *(this + 190)) || *v7))
  {
    HALS_IOPrewarmManager::GetState(buf, v7);
    v20 = *buf;
    HALB_IOThread::Locker::~Locker(&v21);
    v9 = v20;
    if (v20 == *(&v20 + 1))
    {
      v11 = atomic_load(StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics_initialized);
      if ((v11 & 1) == 0)
      {
        AMCP::Log::AMCP_Scope_Registry::initialize(v8);
      }

      v13 = **StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics;
      v12 = *(*StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics + 8);
      if (v12)
      {
        atomic_fetch_add_explicit(&v12->__shared_owners_, 1uLL, memory_order_relaxed);
        v14 = *v13;
        std::__shared_weak_count::__release_shared[abi:ne200100](v12);
      }

      else
      {
        v14 = *v13;
      }

      if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
      {
        *buf = 136315394;
        *&buf[4] = "HALS_IOContext_Legacy_Impl.cpp";
        *&buf[12] = 1024;
        *&buf[14] = 995;
        _os_log_error_impl(&dword_1DE1F9000, v14, OS_LOG_TYPE_ERROR, "%32s:%-5d HALS_IOContext_Legacy_Impl::ResetEngineState_On: Unexpected state for prewarming", buf, 0x12u);
      }
    }

    else
    {
      v10 = *(*(&v20 + 1) - 4);
      while (v9 != (*(&v20 + 1) - 4))
      {
        HALS_IOContext_Legacy_Impl::ChangeEngineState_On(this, *v9++);
      }

      *(this + 275) = v10;
    }

    HALS_IOContext_Legacy_Impl::StartIOThread(&v21, this);
    *buf = v22;
    *&buf[4] = 1;
    *&buf[8] = 850045863;
    *&buf[16] = 0u;
    v30 = 0u;
    v31 = 0u;
    v32 = 0u;
    if ((v21 & 1) == 0)
    {
      if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT))
      {
        v18 = atomic_load(this + 334);
        *v23 = 136315650;
        v24 = "HALS_IOContext_Legacy_Impl.cpp";
        v25 = 1024;
        v26 = 1012;
        v27 = 1024;
        v28 = v18;
        _os_log_impl(&dword_1DE1F9000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT, "%25s:%-5d  HALS_IOContext_Legacy_Impl::ResetEngineState_On: IO is disabled (%d)", v23, 0x18u);
      }

      exception = __cxa_allocate_exception(0x10uLL);
      *exception = off_1F5991DD8;
      exception[2] = 1852797029;
    }

    AMCP::Utility::Mach_Port::~Mach_Port(buf);
    v6 = v20;
  }

  else
  {
    HALB_IOThread::Locker::~Locker(&v21);
    v6 = 0;
  }

  if (v6)
  {
    operator delete(v6);
  }

  v15 = *(*(this + 3) + 16);
  atomic_load(this + 334);
  kdebug_trace();
  result = os_unfair_recursive_lock_unlock();
  v17 = *MEMORY[0x1E69E9840];
  return result;
}

void sub_1DE5F8B30(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, __int128 a9, uint64_t a10, char a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, char a18)
{
  if (a2)
  {
    AMCP::Utility::Mach_Port::~Mach_Port(&a18);
    if (a9)
    {
      operator delete(a9);
    }

    __cxa_begin_catch(exception_object);
    __cxa_end_catch();
    JUMPOUT(0x1DE5F89B8);
  }

  _Unwind_Resume(exception_object);
}

AMCP::Log::AMCP_Scope_Registry *HALS_IOContext_Legacy_Impl::ChangeEngineState_On(uint64_t a1, int a2)
{
  v16 = *MEMORY[0x1E69E9840];
  *(a1 + 1100) = a2;
  v11[0] = HALS_IOContext_Legacy_Impl::StartHardware_Helper;
  v11[1] = a1;
  v10 = &unk_1F5983F68;
  v13[0] = caulk::function_ref<int ()(HALS_IOEngineInfo &)>::functor_invoker<std::__bind<int (&)(HALS_IOContext_Legacy_Impl *,HALS_IOEngineInfo &),HALS_IOContext_Legacy_Impl *,std::placeholders::__ph<1> const&>>;
  v13[1] = v11;
  v12 = &off_1F5983F18;
  v14 = v13;
  *buf = caulk::function_ref<int ()(VisitableVector<std::unique_ptr<HALS_IOEngineInfo>>::ItemWithIndex &)>::functor_invoker<int HALS_IOEngineInfoList::engine_apply<FilterEngineInfoWithoutEngine,FilterIfEngineOnlyNeedsReferenceStream>(caulk::function_ref<int ()(HALS_IOEngineInfo&)>,FilterEngineInfoWithoutEngine,FilterIfEngineOnlyNeedsReferenceStream const&)::{lambda(VisitableVector<std::unique_ptr<HALS_IOEngineInfo>>::ItemWithIndex &)#1}>;
  *&buf[8] = &v14;
  v2 = VisitableVector<std::unique_ptr<HALS_IOEngineInfo>>::do_apply<std::vector<std::unique_ptr<HALS_IOEngineInfo>>,VisitableVector<std::unique_ptr<HALS_IOEngineInfo>>::ItemWithIndex,FilterEngineInfoWithoutEngine,FilterIfEngineOnlyNeedsReferenceStream>(*(a1 + 1568), *(a1 + 1576), buf, &v12, &v10);
  v3 = v2;
  if (v2)
  {
    v4 = atomic_load(StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics_initialized);
    if ((v4 & 1) == 0)
    {
      AMCP::Log::AMCP_Scope_Registry::initialize(v2);
    }

    v6 = **StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics;
    v5 = *(*StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics + 8);
    if (v5)
    {
      atomic_fetch_add_explicit(&v5->__shared_owners_, 1uLL, memory_order_relaxed);
      v7 = *v6;
      std::__shared_weak_count::__release_shared[abi:ne200100](v5);
    }

    else
    {
      v7 = *v6;
    }

    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315394;
      *&buf[4] = "HALS_IOContext_Legacy_Impl.cpp";
      *&buf[12] = 1024;
      *&buf[14] = 1076;
      _os_log_error_impl(&dword_1DE1F9000, v7, OS_LOG_TYPE_ERROR, "%32s:%-5d HALS_IOContext_Legacy_Impl::ChangeEngineState_On: Unexpected error when changing engine prewarming state", buf, 0x12u);
    }
  }

  v8 = *MEMORY[0x1E69E9840];
  return v3;
}

void HALS_IOContext_Legacy_Impl::StartIOThread(HALS_IOContext_Legacy_Impl *this, uint64_t a2)
{
  v84 = *MEMORY[0x1E69E9840];
  v82 = HALS_ObjectMap::CopyObjectByObjectID(**(*(a2 + 24) + 72));
  v4 = (a2 + 312);
  v80 = a2 + 312;
  v81 = HALB_Mutex::Lock((a2 + 328));
  HasBeenDeactivated = HALS_IOThread::HasBeenDeactivated((a2 + 312));
  if (HasBeenDeactivated)
  {
    v39 = atomic_load(StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics_initialized);
    if ((v39 & 1) == 0)
    {
      AMCP::Log::AMCP_Scope_Registry::initialize(HasBeenDeactivated);
    }

    v41 = **StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics;
    v40 = *(*StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics + 8);
    if (v40)
    {
      atomic_fetch_add_explicit(&v40->__shared_owners_, 1uLL, memory_order_relaxed);
      v42 = *v41;
      std::__shared_weak_count::__release_shared[abi:ne200100](v40);
    }

    else
    {
      v42 = *v41;
    }

    if (os_log_type_enabled(v42, OS_LOG_TYPE_ERROR))
    {
      LODWORD(buf[0]) = 136315650;
      *(buf + 4) = "HALS_IOContext_Legacy_Impl.cpp";
      WORD6(buf[0]) = 1024;
      *(buf + 14) = 635;
      WORD1(buf[1]) = 2080;
      *(&buf[1] + 4) = "mIOThread.HasBeenDeactivated() == true";
      _os_log_error_impl(&dword_1DE1F9000, v42, OS_LOG_TYPE_ERROR, "%32s:%-5d Throwing Exception: %s Cannot start IO Thread since it has been deactivated", buf, 0x1Cu);
    }

    AMCP::Utility::With_Realtime_Disabled::With_Realtime_Disabled(&v79);
    __cxa_allocate_exception(0x40uLL);
    v72[4] = off_1F5991DD8;
    v73 = 1852797029;
    *&v74[8] = 1852797029;
    v76 = 0;
    v77 = 0;
    v78 = -1;
    *v74 = &unk_1F598E5D8;
    *&v74[16] = &unk_1F598E600;
    v75 = 0;
    boost::exception_detail::clone_impl<boost::exception_detail::error_info_injector<CAException>>::clone_impl(buf, v74);
    *&buf[2] = "StartIOResult HALS_IOContext_Legacy_Impl::StartIOThread(mach_port_t, mach_port_t, mach_port_t)";
    *(&buf[2] + 1) = "/Library/Caches/com.apple.xbs/Sources/AudioHAL/Source/HAL/Core/IO/HALS_IOContext_Legacy_Impl.cpp";
    LODWORD(buf[3]) = 635;
    applesauce::backtrace::snapshot_N<64>::snapshot_N(&v71);
  }

  *(a2 + 304) = 0;
  if (atomic_load((a2 + 1336)))
  {
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT))
    {
      LODWORD(buf[0]) = 136315394;
      *(buf + 4) = "HALS_IOContext_Legacy_Impl.cpp";
      WORD6(buf[0]) = 1024;
      *(buf + 14) = 728;
      _os_log_impl(&dword_1DE1F9000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT, "%25s:%-5d  HALS_IOContext_Legacy_Impl::StartIOThread: mIODisableCount != 0. IO thread need not be started.", buf, 0x12u);
    }

    *this = 0;
LABEL_6:
    *(this + 12) = 0;
    *(this + 4) = 0;
    *(this + 5) = 0;
    goto LABEL_65;
  }

  if (!*(a2 + 1520) && !*(a2 + 1512))
  {
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT))
    {
      LODWORD(buf[0]) = 136315394;
      *(buf + 4) = "HALS_IOContext_Legacy_Impl.cpp";
      WORD6(buf[0]) = 1024;
      *(buf + 14) = 653;
      _os_log_impl(&dword_1DE1F9000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT, "%25s:%-5d  HALS_IOContext_Legacy_Impl::StartIOThread: Stop interrupted resume - IO thread need not be started.", buf, 0x12u);
    }

    *this = 1;
    goto LABEL_6;
  }

  HALS_IOContextDescription::PushStreamUsageToEngines(a2 + 1536, 1, 1);
  HALS_IOContextDescription::PushStreamUsageToEngines(a2 + 1536, 0, 1);
  v7 = *(a2 + 1560);
  if (!v7)
  {
    if (!os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      goto LABEL_82;
    }

    LODWORD(buf[0]) = 136315394;
    *(buf + 4) = "HALS_IOContext_Legacy_Impl.cpp";
    WORD6(buf[0]) = 1024;
    *(buf + 14) = 670;
    v43 = MEMORY[0x1E69E9C10];
    v44 = "%25s:%-5d  HALS_IOContext_Legacy_Impl::StartIOThread: no master engine info";
    goto LABEL_81;
  }

  if (!*(v7 + 88))
  {
    if (!os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      goto LABEL_82;
    }

    LODWORD(buf[0]) = 136315394;
    *(buf + 4) = "HALS_IOContext_Legacy_Impl.cpp";
    WORD6(buf[0]) = 1024;
    *(buf + 14) = 671;
    v43 = MEMORY[0x1E69E9C10];
    v44 = "%25s:%-5d  HALS_IOContext_Legacy_Impl::StartIOThread: no master engine";
LABEL_81:
    _os_log_impl(&dword_1DE1F9000, v43, OS_LOG_TYPE_ERROR, v44, buf, 0x12u);
LABEL_82:
    exception = __cxa_allocate_exception(0x10uLL);
    *exception = off_1F5991DD8;
    exception[2] = 1852797029;
  }

  v8 = *(*(a2 + 24) + 88);
  if (v8)
  {
    (*(*v8 + 24))(v8, 0);
  }

  v9 = *(a2 + 1360);
  memset(buf + 4, 0, 56);
  v10 = buf[1];
  *(a2 + 44) = buf[0];
  memset(&v74[4], 0, 18);
  *(a2 + 40) = v9;
  *(a2 + 60) = v10;
  *(a2 + 76) = buf[2];
  *(a2 + 88) = *(&buf[2] + 12);
  *(a2 + 104) = 7;
  *(a2 + 152) = 0u;
  *(a2 + 140) = 0u;
  *(a2 + 124) = 0u;
  *(a2 + 108) = 0u;
  *(a2 + 168) = 3;
  *(a2 + 216) = 0u;
  *(a2 + 204) = 0u;
  *(a2 + 188) = 0u;
  *(a2 + 172) = 0u;
  *(a2 + 232) = 3;
  *(a2 + 240) = 0;
  *(a2 + 248) = 0;
  *(a2 + 256) = v9;
  *(a2 + 260) = 0;
  v11 = *v74;
  *(a2 + 282) = *&v74[14];
  *(a2 + 268) = v11;
  LOBYTE(v71) = 0;
  v72[0] = 0;
  RealtimePriorityThreadParameters = HALS_IOContext_Legacy_Impl::GetRealtimePriorityThreadParameters(a2, v9, v72, &v71);
  if (RealtimePriorityThreadParameters)
  {
    v46 = RealtimePriorityThreadParameters;
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      LODWORD(buf[0]) = 136315650;
      *(buf + 4) = "HALS_IOContext_Legacy_Impl.cpp";
      WORD6(buf[0]) = 1024;
      *(buf + 14) = 690;
      WORD1(buf[1]) = 1024;
      DWORD1(buf[1]) = v46;
      _os_log_impl(&dword_1DE1F9000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "%25s:%-5d  HALS_IOContext_Legacy_Impl::GetRealtimePriorityThreadParameters: got an error from calculating the thread parameters, Error: 0x%X", buf, 0x18u);
    }

    v47 = __cxa_allocate_exception(0x10uLL);
    *v47 = off_1F5991DD8;
    v47[2] = v46;
  }

  *(a2 + 1096) = 0;
  v13 = v71;
  *(a2 + 656) = v72[0];
  *(a2 + 664) = v13;
  std::string::operator=((a2 + 720), (a2 + 2032));
  if (g_static_start_options == 1 && *(a2 + 1420))
  {
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT))
    {
      LODWORD(buf[0]) = 136315394;
      *(buf + 4) = "HALS_IOContext_Legacy_Impl.cpp";
      WORD6(buf[0]) = 1024;
      *(buf + 14) = 700;
      _os_log_impl(&dword_1DE1F9000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT, "%25s:%-5d  Throwing exception in response to test configuration", buf, 0x12u);
    }

    v58 = __cxa_allocate_exception(0x10uLL);
    *v58 = off_1F5991DD8;
    v58[2] = 1852797029;
  }

  *v74 = a2 + 328;
  *&v74[8] = HALB_Mutex::Lock((a2 + 328));
  v14 = *(a2 + 400);
  v15 = pthread_self();
  if (v14 != v15)
  {
    v16 = atomic_load(StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics_initialized);
    if ((v16 & 1) == 0)
    {
      AMCP::Log::AMCP_Scope_Registry::initialize(v15);
    }

    v18 = **StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics;
    v17 = *(*StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics + 8);
    if (v17)
    {
      atomic_fetch_add_explicit(&v17->__shared_owners_, 1uLL, memory_order_relaxed);
      v19 = *v18;
      std::__shared_weak_count::__release_shared[abi:ne200100](v17);
    }

    else
    {
      v19 = *v18;
    }

    if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
    {
      LODWORD(buf[0]) = 136315394;
      *(buf + 4) = "HALB_IOThread.cpp";
      WORD6(buf[0]) = 1024;
      *(buf + 14) = 247;
      _os_log_error_impl(&dword_1DE1F9000, v19, OS_LOG_TYPE_ERROR, "%32s:%-5d HALB_IOThread::_Start: this thread ought to lock the lock", buf, 0x12u);
    }
  }

  if (*(a2 + 493))
  {
    v25 = 58;
LABEL_87:
    HALB_Guard::Locker::~Locker(v74);
    goto LABEL_88;
  }

  if (*(a2 + 320) && *(a2 + 492) == 1)
  {
    HALB_IOThread::_WaitForState((a2 + 312), 1735552612);
  }

  *(a2 + 492) = 0;
  if (*(a2 + 496))
  {
    v20 = 0;
    *(a2 + 480) = 2002872692;
    while ((*(a2 + 492) & 1) == 0)
    {
      if (!*(a2 + 496) || v20 > 0x13)
      {
        break;
      }

      v22 = HALB_Guard::WaitFor((a2 + 328), 0x5F5E100uLL);
      ++v20;
      if (*(a2 + 496) && v22 && v22 != 60)
      {
        if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
        {
          LODWORD(buf[0]) = 136315394;
          *(buf + 4) = "HALB_IOThread.cpp";
          WORD6(buf[0]) = 1024;
          *(buf + 14) = 286;
          _os_log_impl(&dword_1DE1F9000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "%25s:%-5d  HALB_IOThread::_Start: wait failed while waiting for IO to become enabled", buf, 0x12u);
        }

        v23 = __cxa_allocate_exception(0x10uLL);
        *v23 = off_1F5991DD8;
        v23[2] = 1852797029;
      }
    }

    if ((*(a2 + 492) & 1) == 0 && *(a2 + 496))
    {
      v60 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT);
      if (v60)
      {
        LODWORD(buf[0]) = 136315394;
        *(buf + 4) = "HALB_IOThread.cpp";
        WORD6(buf[0]) = 1024;
        *(buf + 14) = 290;
        _os_log_impl(&dword_1DE1F9000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT, "%25s:%-5d  HALB_IOThread::_Start: IO is still disabled after waiting", buf, 0x12u);
      }

      v61 = atomic_load(StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics_initialized);
      if ((v61 & 1) == 0)
      {
        AMCP::Log::AMCP_Scope_Registry::initialize(v60);
      }

      v63 = **StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics;
      v62 = *(*StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics + 8);
      if (v62)
      {
        atomic_fetch_add_explicit(&v62->__shared_owners_, 1uLL, memory_order_relaxed);
        v64 = *v63;
        std::__shared_weak_count::__release_shared[abi:ne200100](v62);
      }

      else
      {
        v64 = *v63;
      }

      v66 = atomic_load(StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics_initialized);
      if ((v66 & 1) == 0)
      {
        AMCP::Log::AMCP_Scope_Registry::initialize(v62);
      }

      v67 = **StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics;
      v68 = *(*StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics + 8);
      if (v68)
      {
        atomic_fetch_add_explicit(&v68->__shared_owners_, 1uLL, memory_order_relaxed);
        v69 = os_signpost_id_make_with_pointer(*v67, (a2 + 312));
        std::__shared_weak_count::__release_shared[abi:ne200100](v68);
      }

      else
      {
        v69 = os_signpost_id_make_with_pointer(*v67, (a2 + 312));
      }

      if (v69 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v64))
      {
        LOWORD(buf[0]) = 0;
        _os_signpost_emit_with_name_impl(&dword_1DE1F9000, v64, OS_SIGNPOST_EVENT, v69, "Error", "HALB_IOThread::_Start: IO is still disabled after waiting", buf, 2u);
      }

      *(a2 + 480) = 1735552612;
      HALB_Guard::NotifyAll((a2 + 328));
      v70 = *(a2 + 492);
      v25 = 35;
      goto LABEL_87;
    }
  }

  if ((*(a2 + 492) & 1) != 0 || ((v24 = (*(*v4 + 24))(a2 + 312), v25 = v24, v24 != 37) ? (v26 = v24 == 0) : (v26 = 1), v26))
  {
    v25 = HALB_IOThread::_WaitForState((a2 + 312), 1735354734);
  }

  HALB_Guard::Locker::~Locker(v74);
  if (v25 && v25 != 89)
  {
LABEL_88:
    v48 = atomic_load(StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics_initialized);
    if ((v48 & 1) == 0)
    {
      AMCP::Log::AMCP_Scope_Registry::initialize(v27);
    }

    v50 = **StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics;
    v49 = *(*StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics + 8);
    if (v49)
    {
      atomic_fetch_add_explicit(&v49->__shared_owners_, 1uLL, memory_order_relaxed);
      v51 = *v50;
      std::__shared_weak_count::__release_shared[abi:ne200100](v49);
    }

    else
    {
      v51 = *v50;
    }

    v54 = atomic_load(StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics_initialized);
    if ((v54 & 1) == 0)
    {
      AMCP::Log::AMCP_Scope_Registry::initialize(v49);
    }

    v55 = **StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics;
    v56 = *(*StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics + 8);
    if (v56)
    {
      atomic_fetch_add_explicit(&v56->__shared_owners_, 1uLL, memory_order_relaxed);
      v57 = os_signpost_id_make_with_pointer(*v55, a2);
      std::__shared_weak_count::__release_shared[abi:ne200100](v56);
    }

    else
    {
      v57 = os_signpost_id_make_with_pointer(*v55, a2);
    }

    if (v57 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v51))
    {
      LODWORD(buf[0]) = 67109120;
      DWORD1(buf[0]) = v25;
      _os_signpost_emit_with_name_impl(&dword_1DE1F9000, v51, OS_SIGNPOST_EVENT, v57, "Error", "HALS_IOContext_Legacy_Impl::StartIOThread: got an error from starting the IO thread, Error: 0x%X", buf, 8u);
    }

    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      LODWORD(buf[0]) = 136315650;
      *(buf + 4) = "HALS_IOContext_Legacy_Impl.cpp";
      WORD6(buf[0]) = 1024;
      *(buf + 14) = 710;
      WORD1(buf[1]) = 1024;
      DWORD1(buf[1]) = v25;
      _os_log_impl(&dword_1DE1F9000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "%25s:%-5d  HALS_IOContext_Legacy_Impl::StartIOThread: got an error from starting the IO thread, Error: 0x%X", buf, 0x18u);
    }

    v59 = __cxa_allocate_exception(0x10uLL);
    *v59 = off_1F5991DD8;
    v59[2] = v25;
  }

  v28 = *(a2 + 1096);
  if (v28)
  {
    v74[0] = HIBYTE(*(a2 + 1096));
    v74[1] = BYTE2(v28);
    v74[2] = BYTE1(v28);
    v74[3] = v28;
    v74[4] = 0;
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      LODWORD(buf[0]) = 136315906;
      *(buf + 4) = "HALS_IOContext_Legacy_Impl.cpp";
      WORD6(buf[0]) = 1024;
      *(buf + 14) = 712;
      WORD1(buf[1]) = 1024;
      DWORD1(buf[1]) = v28;
      WORD4(buf[1]) = 2080;
      *(&buf[1] + 10) = v74;
      _os_log_impl(&dword_1DE1F9000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "%25s:%-5d  HALS_IOContext_Legacy_Impl::StartIOThread: the IO thread failed to start, Error: %d (%s)", buf, 0x22u);
    }

    v52 = __cxa_allocate_exception(0x10uLL);
    v53 = *(a2 + 1096);
    *v52 = off_1F5991DD8;
    v52[2] = v53;
  }

  HALS_IOContext_Legacy_Impl::CreateMicrophoneInfo(a2, &v82);
  TapInfo = HALS_IOContext_Legacy_Impl::CreateTapInfo(a2, &v82);
  HALS_IOContext::UpdateInputStreamUsageStatus(TapInfo);
  v30 = *(a2 + 1744);
  if (!v30 || !*(v30 + 8))
  {
LABEL_59:
    v31 = 0;
    goto LABEL_60;
  }

  v31 = *(v30 + 60);
  if (v31)
  {
    if (*(v30 + 16))
    {
      v32 = mach_port_mod_refs(*MEMORY[0x1E69E9A60], *(v30 + 60), 0, 1);
      if (v32)
      {
        v65 = __cxa_allocate_exception(0x20uLL);
        *&buf[0] = &unk_1F5985298;
        MEMORY[0x1E12C10C0](v65, v32, buf, "failed to add the send right");
        __cxa_throw(v65, MEMORY[0x1E69E53B8], MEMORY[0x1E69E52D0]);
      }

      v33 = *(v30 + 16);
      goto LABEL_61;
    }

    goto LABEL_59;
  }

LABEL_60:
  v33 = 0;
LABEL_61:
  v34 = *(*(a2 + 24) + 88);
  if (v34)
  {
    v35 = (*(*v34 + 96))(v34);
  }

  else
  {
    v35 = 0;
  }

  v36 = HALS_IOThread::CopyWorkgroupIntervalPort(v4);
  *this = 1;
  *(this + 1) = v35;
  *(this + 2) = v36;
  *(this + 3) = v31;
  *(this + 2) = v33;
LABEL_65:
  HALB_IOThread::Locker::~Locker(&v80);
  HALS_ObjectMap::ReleaseObject(v82, v37);
  v38 = *MEMORY[0x1E69E9840];
}

void sub_1DE5F9C8C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14, uint64_t a15, std::exception a16, uint64_t a17, char a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, int a25, __int16 a26, char a27, char a28, char a29, uint64_t a30, uint64_t a31)
{
  if (a2)
  {
    std::error_category::~error_category((v31 - 144));
    __clang_call_terminate(exception_object);
  }

  _Unwind_Resume(exception_object);
}

uint64_t HALS_IOContext_Legacy_Impl::GetRealtimePriorityThreadParameters(HALS_IOContext_Legacy_Impl *this, unsigned int a2, unint64_t *a3, BOOL *a4)
{
  v13 = *MEMORY[0x1E69E9840];
  v4 = *(this + 195);
  if (v4 && *(v4 + 88))
  {
    if (!a2)
    {
      if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
      {
        v9 = 136315394;
        v10 = "HALS_IOContext_Legacy_Impl.cpp";
        v11 = 1024;
        v12 = 2767;
        _os_log_impl(&dword_1DE1F9000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "%25s:%-5d  ConfigureThreadForRealtimePriority - inIOBufferFrameSize must be nonzero", &v9, 0x12u);
      }

      exception = __cxa_allocate_exception(0x10uLL);
      *exception = off_1F5991DD8;
      exception[2] = 1852797029;
    }

    result = 0;
    *a3 = (*(*(v4 + 368) + 40 * *(*(v4 + 368) + 192) + 200) * a2);
    *a4 = *(this + 356) == 1;
  }

  else
  {
    result = 4;
  }

  v7 = *MEMORY[0x1E69E9840];
  return result;
}

unint64_t HALS_IOContext_Legacy_Impl::CreateMicrophoneInfo(uint64_t a1, uint64_t *a2)
{
  NumberStreams = HALS_IOContextDescription::GetNumberStreams(a1 + 1536, 1);
  v5 = *(*(a1 + 24) + 16);
  if (*a2)
  {
    v6 = *(*a2 + 16);
  }

  v7 = *(a1 + 1768);
  v8 = *(a1 + 1340);
  active = HALS_IOContext_Legacy_Impl::ActiveInputStreamsSecurelyMuted(a1, 0);
  v10 = *a2;
  if (*a2)
  {
    platform_behaviors = HALS_PlatformBehaviors::get_platform_behaviors(active);
    v12 = (*(*platform_behaviors + 64))(platform_behaviors);
    if (((*(*v12 + 40))(v12) & 0x100) == 0)
    {
      HALS_ClientEntitlements::HasEntitlementWithBooleanValue((v10 + 296), @"com.apple.private.audio.suppress-mic-indicator");
    }

    if (*a2)
    {
      *(*a2 + 332);
    }
  }

  return (NumberStreams - v7) | (v5 << 32);
}

uint64_t HALS_IOContext_Legacy_Impl::CreateTapInfo(uint64_t a1, uint64_t *a2)
{
  v3 = *(a1 + 1768);
  v4 = *(*(a1 + 24) + 16);
  if (*a2)
  {
    v5 = *(*a2 + 16);
  }

  else
  {
    v5 = 0;
  }

  v6 = *(a1 + 1340);
  active = HALS_IOContext_Legacy_Impl::ActiveInputStreamsSecurelyMuted(a1, 1);
  v8 = *a2;
  v9 = 0x10000000000;
  if (!active)
  {
    v9 = 0;
  }

  v10 = 0x100000000;
  if (!v6)
  {
    v10 = 0;
  }

  v11 = v9 | v5 | v10 | ((*a2 == 0) << 48) | ((*a2 != 0) << 56);
  return v3 | (v4 << 32);
}

uint64_t HALS_IOContext_Legacy_Impl::ActiveInputStreamsSecurelyMuted(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 == 1)
    {
      v4 = *(a1 + 1417);
    }

    else
    {
      v4 = 0;
    }
  }

  else
  {
    v4 = *(a1 + 1416);
  }

  v5 = 1;
  if (HALS_IOContextDescription::GetNumberStreams(a1 + 1536, 1) && ((std::__count_BOOL[abi:ne200100]<true,std::vector<BOOL>,true>(*(a1 + 1664), 0, *(a1 + 1672)) != 0) & v4) == 1)
  {
    return (a2 == 0) & *(a1 + 32);
  }

  return v5;
}

uint64_t VisitableVector<std::unique_ptr<HALS_IOEngineInfo>>::do_apply<std::vector<std::unique_ptr<HALS_IOEngineInfo>>,VisitableVector<std::unique_ptr<HALS_IOEngineInfo>>::ItemWithIndex,FilterEngineInfoWithoutEngine,FilterIfEngineOnlyNeedsReferenceStream>(uint64_t a1, uint64_t a2, uint64_t (**a3)(uint64_t, void *), uint64_t a4, uint64_t a5)
{
  if (a1 == a2)
  {
    return 0;
  }

  v16[8] = v5;
  v16[9] = v6;
  v11 = a1;
  v12 = 0;
  v13 = 0;
  while (1)
  {
    if (v12)
    {
      ++v13;
    }

    else
    {
      v13 = 0;
    }

    v16[0] = v11;
    v16[1] = v13;
    if (((*(*a4 + 16))(a4, v16) & 1) == 0 && ((*(*a5 + 16))(a5, v16) & 1) == 0)
    {
      v15[0] = v11;
      v15[1] = v13;
      result = (*a3)((a3 + 1), v15);
      if (result)
      {
        break;
      }
    }

    v11 += 8;
    v12 = 1;
    if (v11 == a2)
    {
      return 0;
    }
  }

  return result;
}

uint64_t caulk::function_ref<int ()(VisitableVector<std::unique_ptr<HALS_IOEngineInfo>>::ItemWithIndex &)>::functor_invoker<int HALS_IOEngineInfoList::engine_apply<FilterEngineInfoWithoutEngine,FilterIfEngineOnlyNeedsReferenceStream>(caulk::function_ref<int ()(HALS_IOEngineInfo&)>,FilterEngineInfoWithoutEngine,FilterIfEngineOnlyNeedsReferenceStream const&)::{lambda(VisitableVector<std::unique_ptr<HALS_IOEngineInfo>>::ItemWithIndex &)#1}>(uint64_t (****a1)(uint64_t, uint64_t), uint64_t **a2)
{
  v2 = *a1;
  v3 = *a2;
  result = (*(***a2 + 16))(**a2);
  if (result)
  {
    v5 = *v3;
    v6 = (*v2 + 1);
    v7 = **v2;

    return v7(v6, v5);
  }

  return result;
}

uint64_t HALS_IOContext_Legacy_Impl::StartHardware_Helper(HALS_IOContext_Legacy_Impl *this, HALS_IOContext_Legacy_Impl *a2, HALS_IOEngineInfo *a3)
{
  v6 = *MEMORY[0x1E69E9840];
  result = *(a2 + 11);
  if (result)
  {
    result = (*(*result + 704))(result, *(this + 3), a3);
  }

  v5 = *MEMORY[0x1E69E9840];
  return result;
}

void HALS_IOContext_Legacy_Impl::ResetEngineState_Off(AMCP::Log::AMCP_Scope_Registry *a1, int **a2)
{
  v18 = *MEMORY[0x1E69E9840];
  if (*a2 == a2[1])
  {
    v4 = atomic_load(StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics_initialized);
    if ((v4 & 1) == 0)
    {
      AMCP::Log::AMCP_Scope_Registry::initialize(a1);
    }

    v6 = **StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics;
    v5 = *(*StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics + 8);
    if (v5)
    {
      atomic_fetch_add_explicit(&v5->__shared_owners_, 1uLL, memory_order_relaxed);
      v7 = *v6;
      std::__shared_weak_count::__release_shared[abi:ne200100](v5);
    }

    else
    {
      v7 = *v6;
    }

    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      v14 = 136315394;
      v15 = "HALS_IOContext_Legacy_Impl.cpp";
      v16 = 1024;
      v17 = 1024;
      _os_log_error_impl(&dword_1DE1F9000, v7, OS_LOG_TYPE_ERROR, "%32s:%-5d HALS_IOContext_Legacy_Impl::ResetEngineState_Off: Unexpected state for prewarming", &v14, 0x12u);
    }
  }

  v8 = *a2;
  v9 = a2[1];
  if (*a2 != v9)
  {
    v12 = *(v9 - 1);
    v10 = v9 - 1;
    v11 = v12;
    a2[1] = v10;
    while (v8 != v10)
    {
      HALS_IOContext_Legacy_Impl::ChangeEngineState_Off(a1, *v8++, 0);
    }

    *(a1 + 275) = v11;
  }

  HALS_IOContext_Legacy_Impl::StopIOThread(a1);
  v13 = *MEMORY[0x1E69E9840];
}

AMCP::Log::AMCP_Scope_Registry *HALS_IOContext_Legacy_Impl::ChangeEngineState_Off(uint64_t a1, int a2, int a3)
{
  v18 = *MEMORY[0x1E69E9840];
  *(a1 + 1100) = a2;
  v12[0] = HALS_IOContext_Legacy_Impl::StopHardware_Helper;
  v12[1] = a1;
  v13 = a3;
  v11 = &unk_1F5983F68;
  v15[0] = caulk::function_ref<int ()(HALS_IOEngineInfo &)>::functor_invoker<std::__bind<int (&)(HALS_IOContext_Legacy_Impl *,HALS_IOEngineInfo &,HALS_IOPrewarmManager::EngineState),HALS_IOContext_Legacy_Impl *,std::placeholders::__ph<1> const&,HALS_IOPrewarmManager::EngineState&>>;
  v15[1] = v12;
  v14 = &off_1F5983F18;
  v16 = v15;
  *buf = caulk::function_ref<int ()(VisitableVector<std::unique_ptr<HALS_IOEngineInfo>>::ItemWithIndex &)>::functor_invoker<int HALS_IOEngineInfoList::engine_apply<FilterEngineInfoWithoutEngine,FilterIfEngineOnlyNeedsReferenceStream>(caulk::function_ref<int ()(HALS_IOEngineInfo&)>,FilterEngineInfoWithoutEngine,FilterIfEngineOnlyNeedsReferenceStream const&)::{lambda(VisitableVector<std::unique_ptr<HALS_IOEngineInfo>>::ItemWithIndex &)#1}>;
  *&buf[8] = &v16;
  v3 = VisitableVector<std::unique_ptr<HALS_IOEngineInfo>>::do_apply<std::vector<std::unique_ptr<HALS_IOEngineInfo>>,VisitableVector<std::unique_ptr<HALS_IOEngineInfo>>::ItemWithIndex,FilterEngineInfoWithoutEngine,FilterIfEngineOnlyNeedsReferenceStream>(*(a1 + 1568), *(a1 + 1576), buf, &v14, &v11);
  v4 = v3;
  if (v3)
  {
    v5 = atomic_load(StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics_initialized);
    if ((v5 & 1) == 0)
    {
      AMCP::Log::AMCP_Scope_Registry::initialize(v3);
    }

    v7 = **StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics;
    v6 = *(*StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics + 8);
    if (v6)
    {
      atomic_fetch_add_explicit(&v6->__shared_owners_, 1uLL, memory_order_relaxed);
      v8 = *v7;
      std::__shared_weak_count::__release_shared[abi:ne200100](v6);
    }

    else
    {
      v8 = *v7;
    }

    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315394;
      *&buf[4] = "HALS_IOContext_Legacy_Impl.cpp";
      *&buf[12] = 1024;
      *&buf[14] = 1086;
      _os_log_error_impl(&dword_1DE1F9000, v8, OS_LOG_TYPE_ERROR, "%32s:%-5d HALS_IOContext_Legacy_Impl::ChangeEngineState_Off: Unexpected error when changing engine prewarming state", buf, 0x12u);
    }
  }

  v9 = *MEMORY[0x1E69E9840];
  return v4;
}

void HALS_IOContext_Legacy_Impl::StopIOThread(HALS_IOContext_Legacy_Impl *this)
{
  v22 = *MEMORY[0x1E69E9840];
  v2 = HALS_ObjectMap::CopyObjectByObjectID(**(*(this + 3) + 72));
  v15 = v2;
  v13 = this + 312;
  v14 = HALB_Mutex::Lock((this + 328));
  v3 = *(*(this + 3) + 88);
  if (v3)
  {
    (*(*v3 + 120))(v3);
  }

  v16 = (this + 328);
  v17 = HALB_Mutex::Lock((this + 328));
  v4 = *(this + 50);
  v5 = pthread_self();
  if (v4 != v5)
  {
    v6 = atomic_load(StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics_initialized);
    if ((v6 & 1) == 0)
    {
      AMCP::Log::AMCP_Scope_Registry::initialize(v5);
    }

    v8 = **StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics;
    v7 = *(*StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics + 8);
    if (v7)
    {
      atomic_fetch_add_explicit(&v7->__shared_owners_, 1uLL, memory_order_relaxed);
      v9 = *v8;
      std::__shared_weak_count::__release_shared[abi:ne200100](v7);
    }

    else
    {
      v9 = *v8;
    }

    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315394;
      v19 = "HALB_IOThread.cpp";
      v20 = 1024;
      v21 = 313;
      _os_log_error_impl(&dword_1DE1F9000, v9, OS_LOG_TYPE_ERROR, "%32s:%-5d HALB_IOThread::_Stop: this thread ought to lock the lock", buf, 0x12u);
    }
  }

  HALB_Guard::NotifyAll((this + 328));
  *(this + 492) = 1;
  if (!HALB_IOThread::IsCurrentThread((this + 312), 1))
  {
    HALB_IOThread::_WaitForState((this + 312), 1735552612);
  }

  HALB_Guard::Locker::~Locker(&v16);
  HALS_IOContext_Legacy_Impl::CreateMicrophoneInfo(this, &v15);
  TapInfo = HALS_IOContext_Legacy_Impl::CreateTapInfo(this, &v15);
  HALS_IOContext::UpdateInputStreamUsageStatus(TapInfo);
  HALB_IOThread::Locker::~Locker(&v13);
  HALS_ObjectMap::ReleaseObject(v2, v11);
  v12 = *MEMORY[0x1E69E9840];
}

void sub_1DE5FA8EC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, char a10, uint64_t a11, uint64_t a12, char a13)
{
  if (!a2)
  {
    _Unwind_Resume(exception_object);
  }

  __clang_call_terminate(exception_object);
}

uint64_t HALS_IOContext_Legacy_Impl::StopHardware_Helper(uint64_t a1, uint64_t a2)
{
  v6 = *MEMORY[0x1E69E9840];
  v3 = *(a2 + 88);
  if (v3)
  {
    (*(*v3 + 712))(v3, *(a1 + 24));
  }

  v4 = *MEMORY[0x1E69E9840];
  return 0;
}

uint64_t HALS_IOContext_Legacy_Impl::GetStreamUsage(uint64_t a1, unsigned int *a2, unsigned int a3, int a4)
{
  v20 = *MEMORY[0x1E69E9840];
  NumberStreams = HALS_IOContextDescription::GetNumberStreams(a1 + 1536, a4);
  v9 = 4 * NumberStreams + 4;
  if (v9 > a3)
  {
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      v16 = 136315394;
      v17 = "HALS_IOContext_Legacy_Impl.cpp";
      v18 = 1024;
      v19 = 5133;
      _os_log_impl(&dword_1DE1F9000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "%25s:%-5d  HALS_IOContext_Legacy_Impl::GetStreamUsage: bad property data size for kAudioIOContextProperty_StreamUsage", &v16, 0x12u);
    }

    exception = __cxa_allocate_exception(0x10uLL);
    *exception = off_1F5991DD8;
    exception[2] = 561211770;
  }

  *a2 = NumberStreams;
  if (NumberStreams)
  {
    v10 = 0;
    v11 = a2 + 1;
    v12 = NumberStreams;
    do
    {
      v11[v10] = HALS_IOContextDescription::IsStreamEnabledAtIndex((a1 + 1536), a4, v10);
      ++v10;
    }

    while (v12 != v10);
  }

  v13 = *MEMORY[0x1E69E9840];
  return v9;
}

uint64_t HALS_IOContext_Legacy_Impl::SetStreamUsage(uint64_t a1, unsigned int *a2, unsigned int a3, int a4)
{
  v23 = *MEMORY[0x1E69E9840];
  if (a3 <= 3)
  {
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      *v20 = 136315394;
      *&v20[4] = "HALS_IOContext_Legacy_Impl.cpp";
      v21 = 1024;
      v22 = 5050;
      _os_log_impl(&dword_1DE1F9000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "%25s:%-5d  HALS_IOContext_Legacy_Impl::SetStreamUsage: bad property data size for kAudioIOContextProperty_StreamUsage", v20, 0x12u);
    }

    exception = __cxa_allocate_exception(0x10uLL);
    *exception = off_1F5991DD8;
    exception[2] = 561211770;
  }

  v8 = *a2;
  NumberStreams = HALS_IOContextDescription::GetNumberStreams(a1 + 1536, a4);
  v10 = (a3 + 0x3FFFFFFFCLL) >> 2;
  if (v8 < v10)
  {
    LODWORD(v10) = v8;
  }

  if (NumberStreams >= v10)
  {
    v11 = v10;
  }

  else
  {
    v11 = NumberStreams;
  }

  *v20 = a1 + 312;
  *&v20[8] = HALB_Mutex::Lock((a1 + 328));
  if (v11)
  {
    v12 = 0;
    v13 = 0;
    do
    {
      while (1)
      {
        IsStreamEnabledAtIndex = HALS_IOContextDescription::IsStreamEnabledAtIndex((a1 + 1536), a4, v12);
        v15 = a2[v12 + 1];
        if (v15 == IsStreamEnabledAtIndex)
        {
          break;
        }

        HALS_IOContextDescription::SetStreamIsEnabledAtIndex((a1 + 1536), a4, v12, v15 != 0);
        v16 = *(*(a1 + 24) + 16);
        kdebug_trace();
        ++v12;
        v13 = 1;
        if (v12 == v11)
        {
          goto LABEL_15;
        }
      }

      ++v12;
    }

    while (v11 != v12);
    if ((v13 & 1) == 0)
    {
      goto LABEL_18;
    }

LABEL_15:
    HALS_IOContextDescription::UnregisterBuffers((a1 + 1536));
    if ((a4 & 1) == 0)
    {
      HALS_IOContextDescription::PushStreamUsageToEngines(a1 + 1536, 1, 0);
    }

    HALS_IOContextDescription::PushStreamUsageToEngines(a1 + 1536, a4, 0);
    HALS_IOContextDescription::RegisterBuffers((a1 + 1536));
    HALS_IOContext_Legacy_Impl::_SetProcStreamUsage_ForDSP(a1, a4);
    HALS_IOContextDescription::ClearInactiveInputSharedBuffers(a1 + 1536, *(a1 + 1360));
  }

LABEL_18:
  HALB_IOThread::Locker::~Locker(v20);
  v17 = *MEMORY[0x1E69E9840];
  return 0;
}

void sub_1DE5FAE24(_Unwind_Exception *exception_object, int a2)
{
  if (!a2)
  {
    _Unwind_Resume(exception_object);
  }

  __clang_call_terminate(exception_object);
}

void sub_1DE5FAE3C(void *a1, int a2)
{
  if (a2)
  {
    v3 = __cxa_begin_catch(a1);
    if (a2 == 2)
    {
      v4 = v3[2];
    }

    __cxa_end_catch();
    JUMPOUT(0x1DE5FAD34);
  }

  JUMPOUT(0x1DE5FAE2CLL);
}

uint64_t HALS_IOContext_Legacy_Impl::GetMasterDevice(HALS_IOContext_Legacy_Impl *this)
{
  v5 = 0;
  v6 = &v5;
  v7 = 0x2000000000;
  v8 = 0;
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 0x40000000;
  v4[2] = ___ZNK26HALS_IOContext_Legacy_Impl15GetMasterDeviceEv_block_invoke;
  v4[3] = &unk_1E8678120;
  v4[4] = &v5;
  v4[5] = this;
  v1 = (*(**(this + 3) + 64))(*(this + 3));
  HALB_CommandGate::ExecuteCommand(v1, v4);
  v2 = *(v6 + 6);
  _Block_object_dispose(&v5, 8);
  return v2;
}

void sub_1DE5FAF80(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t ___ZNK26HALS_IOContext_Legacy_Impl15GetMasterDeviceEv_block_invoke(uint64_t result)
{
  v1 = *(*(result + 40) + 1560);
  if (v1)
  {
    v2 = result;
    result = *(v1 + 88);
    if (result)
    {
      result = (*(*result + 336))(result);
      if (result)
      {
        *(*(*(v2 + 32) + 8) + 24) = *(result + 16);
      }
    }
  }

  return result;
}

void HALS_IOContext_Legacy_Impl::SetIOCycleUsage(HALS_IOContext_Legacy_Impl *this, float a2)
{
  v15 = 0;
  v16 = &v15;
  v17 = 0x2000000000;
  v18 = 0;
  v11 = 0;
  v12 = &v11;
  v13 = 0x2000000000;
  v14 = 0;
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 0x40000000;
  v9[2] = ___ZN26HALS_IOContext_Legacy_Impl15SetIOCycleUsageEf_block_invoke;
  v9[3] = &unk_1E86780F8;
  v9[5] = &v11;
  v9[6] = this;
  v10 = a2;
  v9[4] = &v15;
  v3 = (*(**(this + 3) + 64))(*(this + 3));
  HALB_CommandGate::ExecuteCommand(v3, v9);
  if (*(v12 + 6))
  {
    exception = __cxa_allocate_exception(0x10uLL);
    v8 = *(v12 + 6);
    *exception = off_1F5991DD8;
    exception[2] = v8;
  }

  if (*(v16 + 24) == 1)
  {
    v4 = *(this + 3);
    v5 = *(v4 + 80);
    if (!v5)
    {
      v5 = *(v4 + 16);
    }

    v6 = **(v4 + 72);
    *&v19.mSelector = 0x676C6F626E637963;
    v19.mElement = 0;
    HALS_Object::PropertiesChanged(v4, v5, v6, 1, &v19);
  }

  _Block_object_dispose(&v11, 8);
  _Block_object_dispose(&v15, 8);
}

void sub_1DE5FB19C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v9 - 64), 8);
  _Unwind_Resume(a1);
}

void ___ZN26HALS_IOContext_Legacy_Impl15SetIOCycleUsageEf_block_invoke(uint64_t a1)
{
  v2 = *(a1 + 48);
  v5 = v2 + 312;
  v6 = HALB_Mutex::Lock((v2 + 328));
  v3 = *(a1 + 56);
  *(*(*(a1 + 32) + 8) + 24) = *(v2 + 1368) != v3;
  *(v2 + 1368) = v3;
  v4 = *(*(v2 + 24) + 88);
  if (v4)
  {
    (*(*v4 + 48))(v4, v3);
  }

  HALB_IOThread::Locker::~Locker(&v5);
}

void sub_1DE5FB268(void *a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  HALB_IOThread::Locker::~Locker(&a9);
  v12 = __cxa_begin_catch(a1);
  if (a2 == 2)
  {
    *(*(*(v9 + 40) + 8) + 24) = v12[2];
  }

  else
  {
    *(*(*(v9 + 40) + 8) + 24) = 2003329396;
  }

  __cxa_end_catch();
  JUMPOUT(0x1DE5FB254);
}

void HALS_IOContext_Legacy_Impl::SetBufferFrameSize(HALS_IOContext_Legacy_Impl *this, int a2, char a3)
{
  v17 = 0;
  v18 = &v17;
  v19 = 0x2000000000;
  v20 = 0;
  v13 = 0;
  v14 = &v13;
  v15 = 0x2000000000;
  v16 = 0;
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 0x40000000;
  v11[2] = ___ZN26HALS_IOContext_Legacy_Impl18SetBufferFrameSizeEjb_block_invoke;
  v11[3] = &unk_1E86780D0;
  v11[5] = &v13;
  v11[6] = this;
  v12 = a2;
  v11[4] = &v17;
  v5 = (*(**(this + 3) + 64))(*(this + 3));
  HALB_CommandGate::ExecuteCommand(v5, v11);
  if (*(v14 + 6))
  {
    exception = __cxa_allocate_exception(0x10uLL);
    v10 = *(v14 + 6);
    *exception = off_1F5991DD8;
    exception[2] = v10;
  }

  if (*(v18 + 24) == 1 && (a3 & 1) == 0)
  {
    v6 = *(this + 3);
    v7 = *(v6 + 80);
    if (!v7)
    {
      v7 = *(v6 + 16);
    }

    v8 = **(v6 + 72);
    *&v21.mSelector = 0x676C6F626673697ALL;
    v21.mElement = 0;
    HALS_Object::PropertiesChanged(v6, v7, v8, 1, &v21);
  }

  _Block_object_dispose(&v13, 8);
  _Block_object_dispose(&v17, 8);
}

void sub_1DE5FB454(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v9 - 64), 8);
  _Unwind_Resume(a1);
}

uint64_t ___ZN26HALS_IOContext_Legacy_Impl18SetBufferFrameSizeEjb_block_invoke(uint64_t result)
{
  v1 = *(result + 48);
  *(v1 + 1365) = 1;
  if ((*(v1 + 1364) & 1) == 0)
  {
    v2 = result;
    v3 = *(v1 + 1560);
    v4 = 13.23;
    if (v3 && *(v3 + 88))
    {
      v4 = *(v3 + 848) * 0.0003;
    }

    HALS_IOContextDescription::CalculateMaximumIOBufferFrameSize((v1 + 1536));
    v6 = v5;
    result = HALS_IOContext_Legacy_Impl::_GetDevicesDesiredIOBufferFrameSize(v1, *(v2 + 56));
    v7 = vcvtpd_u64_f64(v4);
    if (result > v7)
    {
      v7 = result;
    }

    if (v7 >= v6)
    {
      v7 = v6;
    }

    *(*(*(v2 + 32) + 8) + 24) = *(v1 + 1360) != v7;
    *(v1 + 1360) = v7;
  }

  return result;
}

void sub_1DE5FB52C(void *a1, int a2)
{
  v4 = __cxa_begin_catch(a1);
  if (a2 == 2)
  {
    *(*(*(v2 + 40) + 8) + 24) = v4[2];
  }

  else
  {
    *(*(*(v2 + 40) + 8) + 24) = 2003329396;
  }

  __cxa_end_catch();
}

uint64_t HALS_IOContext_Legacy_Impl::_GetDevicesDesiredIOBufferFrameSize(HALS_IOContext_Legacy_Impl *this, HALS_IOEngineInfo *a2)
{
  v8 = a2;
  v4 = *(this + 195);
  if (!v4 || !HALS_IOContext_Legacy_Impl::GetDevicesDesiredIOBufferFrameSize_EngineHelper(&v8, v4, a2))
  {
    v6[0] = HALS_IOContext_Legacy_Impl::GetDevicesDesiredIOBufferFrameSize_EngineHelper;
    v6[1] = &v8;
    v7 = a2;
    v10[0] = caulk::function_ref<int ()(HALS_IOEngineInfo &)>::functor_invoker<std::__bind<int (&)(unsigned int &,HALS_IOEngineInfo &,unsigned int),std::reference_wrapper<unsigned int>,std::placeholders::__ph<1> const&,unsigned int &>>;
    v10[1] = v6;
    v9 = &off_1F5983F18;
    v11 = v10;
    v12[0] = caulk::function_ref<int ()(VisitableVector<std::unique_ptr<HALS_IOEngineInfo>>::ItemWithIndex &)>::functor_invoker<int HALS_IOEngineInfoList::engine_apply<FilterEngineInfoWithoutEngine>(caulk::function_ref<int ()(HALS_IOEngineInfo&)>,FilterEngineInfoWithoutEngine const&)::{lambda(VisitableVector<std::unique_ptr<HALS_IOEngineInfo>>::ItemWithIndex &)#1}>;
    v12[1] = &v11;
    VisitableVector<std::unique_ptr<HALS_IOEngineInfo>>::do_apply<std::vector<std::unique_ptr<HALS_IOEngineInfo>>,VisitableVector<std::unique_ptr<HALS_IOEngineInfo>>::ItemWithIndex,FilterEngineInfoWithoutEngine>(*(this + 196), *(this + 197), v12, &v9);
  }

  return v8;
}

unsigned int *HALS_IOContext_Legacy_Impl::GetDevicesDesiredIOBufferFrameSize_EngineHelper(HALS_IOContext_Legacy_Impl *this, unsigned int *a2, HALS_IOEngineInfo *a3)
{
  v9 = a3;
  v7 = *"zsfcbolg";
  v8 = 0;
  result = *(a2 + 11);
  if (result)
  {
    result = (*(*result + 336))(result);
    if (result)
    {
      v5 = result;
      result = (*(*result + 96))(result, result[4], &v7, 0);
      if (result)
      {
        v6 = 0;
        (*(*v5 + 120))(v5, v5[4], &v7, 4, &v6, this, 4, &v9, 0);
        return *this;
      }
    }
  }

  return result;
}

uint64_t VisitableVector<std::unique_ptr<HALS_IOEngineInfo>>::do_apply<std::vector<std::unique_ptr<HALS_IOEngineInfo>>,VisitableVector<std::unique_ptr<HALS_IOEngineInfo>>::ItemWithIndex,FilterEngineInfoWithoutEngine>(uint64_t a1, uint64_t a2, uint64_t (**a3)(uint64_t, void *), uint64_t a4)
{
  if (a1 == a2)
  {
    return 0;
  }

  v14[8] = v4;
  v14[9] = v5;
  v9 = a1;
  v10 = 0;
  v11 = 0;
  while (1)
  {
    if (v10)
    {
      ++v11;
    }

    else
    {
      v11 = 0;
    }

    v14[0] = v9;
    v14[1] = v11;
    if (((*(*a4 + 16))(a4, v14) & 1) == 0)
    {
      v13[0] = v9;
      v13[1] = v11;
      result = (*a3)((a3 + 1), v13);
      if (result)
      {
        break;
      }
    }

    v9 += 8;
    v10 = 1;
    if (v9 == a2)
    {
      return 0;
    }
  }

  return result;
}

uint64_t caulk::function_ref<int ()(VisitableVector<std::unique_ptr<HALS_IOEngineInfo>>::ItemWithIndex &)>::functor_invoker<int HALS_IOEngineInfoList::engine_apply<FilterEngineInfoWithoutEngine>(caulk::function_ref<int ()(HALS_IOEngineInfo&)>,FilterEngineInfoWithoutEngine const&)::{lambda(VisitableVector<std::unique_ptr<HALS_IOEngineInfo>>::ItemWithIndex &)#1}>(uint64_t (****a1)(uint64_t, uint64_t), uint64_t **a2)
{
  v2 = *a1;
  v3 = *a2;
  result = (*(***a2 + 16))(**a2);
  if (result)
  {
    v5 = *v3;
    v6 = (*v2 + 1);
    v7 = **v2;

    return v7(v6, v5);
  }

  return result;
}

void HALS_IOContext_Legacy_Impl::GetBufferFrameSizeRange(HALS_IOContext_Legacy_Impl *this, AudioValueRange *a2, double a3)
{
  if (*(this + 1364))
  {
    LODWORD(a3) = *(this + 340);
    v4 = *&a3;
    a2->mMinimum = v4;
    LODWORD(v4) = *(this + 340);
    v5 = *&v4;
  }

  else
  {
    v6 = *(this + 195);
    v7 = 13.23;
    if (v6 && *(v6 + 88))
    {
      v7 = *(v6 + 848) * 0.0003;
    }

    a2->mMinimum = ceil(v7);
    HALS_IOContextDescription::CalculateMaximumIOBufferFrameSize((this + 1536));
  }

  a2->mMaximum = v5;
}

const void *HALS_IOContext_Legacy_Impl::GetComposition(HALS_IOContext_Legacy_Impl *this)
{
  result = *(this + 193);
  if (result)
  {
    CFRetain(result);
    return *(this + 193);
  }

  return result;
}

void HALS_IOContext_Legacy_Impl::SetComposition(HALS_IOContext_Legacy_Impl *this, CFDictionaryRef theDict)
{
  v45[1] = *MEMORY[0x1E69E9840];
  if (theDict)
  {
    CFRetain(theDict);
  }

  v43 = &unk_1F5991008;
  v44 = theDict;
  OS::CF::DictionaryBase<__CFDictionary const*>::GetValueForKey<OS::CF::Number>(v41, theDict, @"device id");
  v4 = OS::CF::Number::GetValue<unsigned int>(v42, 0);
  v5 = HALS_ObjectMap::CopyObjectByObjectID(v4);
  if (v5)
  {
    v6 = *(v5 + 152);
  }

  else
  {
    v6 = 0x200000001;
  }

  v39[0] = 0;
  v39[1] = v39;
  v39[2] = 0x2000000000;
  v40 = 0;
  v36[0] = 0;
  v36[1] = v36;
  v36[2] = 0x4802000000;
  v36[3] = __Block_byref_object_copy__13617;
  v36[4] = __Block_byref_object_dispose__13618;
  __p = 0u;
  v38 = 0u;
  v20 = 0;
  v21 = &v20;
  v22 = 0x9802000000;
  v23 = __Block_byref_object_copy__51;
  v7 = *(this + 3);
  v8 = *(v7 + 72);
  v24 = __Block_byref_object_dispose__52;
  LODWORD(v8) = *v8;
  v9 = *(v7 + 16);
  v30[0] = 0;
  v30[1] = 0;
  v28 = 0;
  v26 = 0;
  v27 = 0;
  v25 = 0;
  v29 = v30;
  v31 = 0u;
  v32 = 0u;
  v33 = 0u;
  v34 = v8;
  v35 = v9;
  v10 = *(v7 + 16);
  HALS_IOContext_Legacy_Impl::PauseIO(this);
  v18[0] = MEMORY[0x1E69E9820];
  v18[1] = 1174405120;
  v18[2] = ___ZN26HALS_IOContext_Legacy_Impl14SetCompositionEPK14__CFDictionary_block_invoke;
  v18[3] = &unk_1F5982590;
  v18[7] = this;
  OS::CF::UntypedObject::UntypedObject(v19, v44);
  v19[2] = v6;
  v18[4] = &v20;
  v18[5] = v36;
  v19[0] = &unk_1F5991008;
  v18[6] = v39;
  v11 = (*(**(this + 3) + 64))(*(this + 3));
  HALB_CommandGate::ExecuteCommand(v11, v18);
  HALS_MutationChangeSynchronizer::Wait(v21[5], v21[6]);
  v12 = HALS_ObjectMap::CopyObjectByObjectID(**(*(this + 3) + 72));
  if (v12)
  {
    v13 = *(*(this + 3) + 16);
    v15 = HALS_ObjectMap::CopyObjectByObjectID(v13);
    if (v15)
    {
      v16 = 0;
      v45[0] = 1;
      do
      {
        v17 = *(v45 + v16);
        if (HALS_Client::ShouldMuteContext(v12, *(v45 + v16), v13))
        {
          (*(**(v15 + 13) + 592))(*(v15 + 13), v17, 1);
        }

        v16 += 4;
      }

      while (v16 != 8);
    }

    HALS_ObjectMap::ReleaseObject(v15, v14);
  }

  HALS_IOContext_Legacy_Impl::UpdatePowerAssertions(this);
}

void sub_1DE5FBD30(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, char a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, char a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, void *__p, uint64_t a45)
{
  if (!a2)
  {
    _Unwind_Resume(exception_object);
  }

  __clang_call_terminate(exception_object);
}

uint64_t __Block_byref_object_copy__13617(void *a1, uint64_t *a2)
{
  a1[5] = 0;
  a1[6] = 0;
  v3 = a1 + 5;
  a1[7] = 0;
  result = std::vector<CAPropertyAddress>::__init_with_size[abi:ne200100]<CAPropertyAddress*,CAPropertyAddress*>((a1 + 5), a2[5], a2[6], 0xAAAAAAAAAAAAAAABLL * ((a2[6] - a2[5]) >> 2));
  v3[3] = a2[8];
  return result;
}

void __Block_byref_object_dispose__13618(uint64_t a1)
{
  v2 = *(a1 + 40);
  if (v2)
  {
    *(a1 + 48) = v2;
    operator delete(v2);
  }
}

void *__Block_byref_object_copy__51(uint64_t a1, uint64_t a2)
{
  *(a1 + 40) = 0;
  v4 = (a1 + 40);
  *(a1 + 64) = 0;
  v5 = (a1 + 64);
  *(a1 + 80) = 0;
  *(a1 + 72) = a1 + 80;
  v6 = a1 + 72;
  *(a1 + 88) = 0;
  *(a1 + 48) = 0;
  *(a1 + 56) = 0;
  *(a1 + 96) = 0u;
  *(a1 + 112) = 0u;
  *(a1 + 128) = 0u;
  *(a1 + 144) = 0;
  *(a1 + 144) = *(a2 + 144);
  *v5 = *(a2 + 64);
  if (a1 != a2)
  {
    std::__tree<std::__value_type<applesauce::CF::StringRef,BOOL>,std::__map_value_compare<applesauce::CF::StringRef,std::__value_type<applesauce::CF::StringRef,BOOL>,std::less<applesauce::CF::StringRef>,true>,std::allocator<std::__value_type<applesauce::CF::StringRef,BOOL>>>::__assign_multi<std::__tree_const_iterator<std::__value_type<applesauce::CF::StringRef,BOOL>,std::__tree_node<std::__value_type<applesauce::CF::StringRef,BOOL>,void *> *,long>>(v6, *(a2 + 72), (a2 + 80));
    std::vector<MutationItinerary::Device>::__assign_with_size[abi:ne200100]<MutationItinerary::Device*,MutationItinerary::Device*>(a1 + 96, *(a2 + 96), *(a2 + 104), 0xAAAAAAAAAAAAAAABLL * ((*(a2 + 104) - *(a2 + 96)) >> 4));
    std::vector<CAStreamBasicDescription>::__assign_with_size[abi:ne200100]<CAStreamBasicDescription*,CAStreamBasicDescription*>((a1 + 120), *(a2 + 120), *(a2 + 128), 0xCCCCCCCCCCCCCCCDLL * ((*(a2 + 128) - *(a2 + 120)) >> 3));
  }

  if (*(a2 + 40) != *(a2 + 48))
  {
    __assert_rtn("HALS_MutationChangeSynchronizer", "HALS_MutationChangeSynchronizer.cpp", 28, "that.mChangeList.empty()");
  }

  return std::vector<std::unique_ptr<HALB_ChangeSynchronizer>>::clear[abi:ne200100](v4);
}

void sub_1DE5FBF88(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10)
{
  MutationItinerary::~MutationItinerary(v10);
  std::vector<std::unique_ptr<HALB_ChangeSynchronizer>>::__destroy_vector::operator()[abi:ne200100](&a10);
  _Unwind_Resume(a1);
}

void ___ZN26HALS_IOContext_Legacy_Impl14SetCompositionEPK14__CFDictionary_block_invoke(uint64_t a1)
{
  v106 = *MEMORY[0x1E69E9840];
  v2 = *(a1 + 56);
  v87 = v2 + 312;
  v88 = HALB_Mutex::Lock((v2 + 328));
  if (*(v2 + 1765) == 1)
  {
    v4 = *(*(v2 + 24) + 16);
    v5 = *(v2 + 1544);
    *buf = &unk_1F5987CD0;
    *&buf[8] = v4;
    *&buf[24] = buf;
    for_all_taps(v5, buf);
    std::__function::__value_func<BOOL ()(HALS_Releaser<HALS_Tap>)>::~__value_func[abi:ne200100](buf);
  }

  v6 = HALS_IOContextDescription::IsolatedUseCaseID_FromDescription(*(a1 + 72), v3);
  if ((v6 & 0x100000000) != 0)
  {
    v7 = v6;
  }

  else
  {
    v7 = 0;
  }

  v8 = atomic_load(StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics_initialized);
  if ((v8 & 1) == 0)
  {
    AMCP::Log::AMCP_Scope_Registry::initialize(v6);
  }

  v10 = **StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics;
  v9 = *(*StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics + 8);
  if (v9)
  {
    atomic_fetch_add_explicit(&v9->__shared_owners_, 1uLL, memory_order_relaxed);
    v11 = *v10;
    std::__shared_weak_count::__release_shared[abi:ne200100](v9);
  }

  else
  {
    v11 = *v10;
  }

  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
  {
    v12 = "true";
    *buf = 136316930;
    *&buf[4] = "HALS_IOContext_Legacy_Impl.cpp";
    *&buf[12] = 1024;
    *&buf[14] = 4829;
    if (!v7)
    {
      v12 = "false";
    }

    *&buf[18] = 1024;
    *&buf[20] = v7;
    *&buf[24] = 2080;
    *&buf[26] = "false";
    *&buf[34] = 2080;
    *&buf[36] = v12;
    *&buf[44] = 2080;
    *&buf[46] = "false";
    *&buf[54] = 2080;
    *&buf[56] = "false";
    *&buf[64] = 2080;
    *&buf[66] = v12;
    _os_log_impl(&dword_1DE1F9000, v11, OS_LOG_TYPE_DEFAULT, "%32s:%-5d AllowNegotiateAdaptInSetComposition: useCaseID = %d, isServerBuild = %s, isIsolatedUseCase = %s, isSharedDsp = %s, istvos = %s, adaptNow = %s", buf, 0x4Au);
  }

  v13 = *(a1 + 72);
  v85 = *(*(a1 + 32) + 8);
  if (v13)
  {
    CFRetain(v13);
  }

  v86.__r_.__value_.__r.__words[0] = &unk_1F5991008;
  v86.__r_.__value_.__l.__size_ = v13;
  std::__tree<DSP_Host_Types::AudioProcessingType>::destroy(*(v2 + 1928));
  *(v2 + 1920) = v2 + 1928;
  *(v2 + 1928) = 0u;
  std::unique_ptr<DSP_Host_OffloadDictionary>::reset[abi:ne200100]((v2 + 1944), 0);
  std::unique_ptr<DSP_Host_OffloadDictionary>::reset[abi:ne200100]((v2 + 1952), 0);
  std::__tree<DSP_Host_Types::AudioProcessingType>::destroy(*(v2 + 1968));
  *(v2 + 1960) = v2 + 1968;
  *(v2 + 1968) = 0u;
  v14 = (v2 + 1984);
  if (*(v2 + 2008) == 1)
  {
    v15 = *v14;
    if (*v14)
    {
      *(v2 + 1992) = v15;
      operator delete(v15);
    }

    *(v2 + 2008) = 0;
  }

  {
    HALS_IOContextDescription::SetFromCFRepresentation_ProcessDSPTypes(__CFDictionary const*)::isAppleInternal = os_variant_has_internal_diagnostics();
  }

  OS::CF::DictionaryBase<__CFDictionary const*>::GetValueForKey<OS::CF::Number>(v100, v86.__r_.__value_.__l.__size_, @"vocal isolation type");
  if (v101)
  {
    v16 = OS::CF::Number::GetValue<unsigned int>(v101, 0);
    v98 = v16;
    if (AMCP::Feature_Flags::use_ahal_dsp_hosting_lib(0, 0))
    {
      if (v16 == 1)
      {
        v17 = 2;
      }

      else
      {
        if (v16 != 2)
        {
          goto LABEL_33;
        }

        v17 = 3;
      }

      v98 = v17;
    }

    else if (!v16)
    {
      goto LABEL_33;
    }

    v18 = HALS_IOContextDescription::SetFromCFRepresentation_ProcessDSPTypes(__CFDictionary const*)::$_0::operator()(&v98);
    *buf = v18;
    buf[4] = BYTE4(v18);
    if (HIDWORD(v18))
    {
      std::__tree<DSP_Host_Types::AudioProcessingType>::__emplace_unique_key_args<DSP_Host_Types::AudioProcessingType,DSP_Host_Types::AudioProcessingType const&>(v2 + 1920, v18);
    }
  }

LABEL_33:
  OS::CF::DictionaryBase<__CFDictionary const*>::GetValueForKey<OS::CF::Number>(&v98, v86.__r_.__value_.__l.__size_, @"voice activity detection enable");
  if (v99)
  {
    if (OS::CF::Number::GetValue<unsigned int>(v99, 0))
    {
      v96 = 6;
      v19 = HALS_IOContextDescription::SetFromCFRepresentation_ProcessDSPTypes(__CFDictionary const*)::$_0::operator()(&v96);
      *buf = v19;
      buf[4] = BYTE4(v19);
      if (HIDWORD(v19))
      {
        std::__tree<DSP_Host_Types::AudioProcessingType>::__emplace_unique_key_args<DSP_Host_Types::AudioProcessingType,DSP_Host_Types::AudioProcessingType const&>(v2 + 1920, v19);
      }
    }
  }

  v20 = HALS_IOContextDescription::IsolatedUseCaseID_FromDescription(v86.__r_.__value_.__l.__size_, v19);
  v21 = v20;
  if (*(v2 + 1916) == 1)
  {
    *(v2 + 1916) = 0;
  }

  if ((v20 & 0x100000000) != 0)
  {
    if (v20)
    {
      v96 = 7;
      v22 = HALS_IOContextDescription::SetFromCFRepresentation_ProcessDSPTypes(__CFDictionary const*)::$_0::operator()(&v96);
      *buf = v22;
      buf[4] = BYTE4(v22);
      if (HIDWORD(v22))
      {
        std::__tree<DSP_Host_Types::AudioProcessingType>::__emplace_unique_key_args<DSP_Host_Types::AudioProcessingType,DSP_Host_Types::AudioProcessingType const&>(v2 + 1920, v22);
        *(v2 + 1912) = v21;
        *(v2 + 1916) = BYTE4(v21);
      }
    }
  }

  OS::CF::DictionaryBase<__CFDictionary const*>::GetValueForKey<OS::CF::Dictionary>(&v96, v86.__r_.__value_.__l.__size_, @"device dsp offloads input");
  if (v97)
  {
    operator new();
  }

  if ((AMCP::Feature_Flags::force_mock_dsp_type(0, v23) & 1) != 0 || (v25 = AMCP::Feature_Flags::allow_adm_dsp_spatial(0, v24), v25))
  {
    OS::CF::DictionaryBase<__CFDictionary const*>::GetValueForKey<OS::CF::Number>(v94, v86.__r_.__value_.__l.__size_, @"spatialization type");
    if (v95)
    {
      v92 = OS::CF::Number::GetValue<unsigned int>(v95, 0);
      v26 = HALS_IOContextDescription::SetFromCFRepresentation_ProcessDSPTypes(__CFDictionary const*)::$_0::operator()(&v92);
      *buf = v26;
      buf[4] = BYTE4(v26);
      if (HIDWORD(v26))
      {
        std::__tree<DSP_Host_Types::AudioProcessingType>::__emplace_unique_key_args<DSP_Host_Types::AudioProcessingType,DSP_Host_Types::AudioProcessingType const&>(v2 + 1960, v26);
      }
    }

    OS::CF::DictionaryBase<__CFDictionary const*>::GetValueForKey<OS::CF::Dictionary>(&v92, v86.__r_.__value_.__l.__size_, @"spatialization virtual channel layout");
    if (cf)
    {
      Mutable = CFDictionaryCreateMutable(0, 0, MEMORY[0x1E695E9E0], MEMORY[0x1E695E9F0]);
      v90 = Mutable;
      v91 = 257;
      v28 = cf;
      if (cf)
      {
        CFRetain(cf);
        Mutable = v90;
      }

      if (Mutable == v28)
      {
        v28 = Mutable;
      }

      else
      {
        if (Mutable)
        {
          CFRelease(Mutable);
        }

        v90 = v28;
        HIBYTE(v91) = 0;
      }

      LOBYTE(v91) = 1;
      v89 = 0;
      CACFDictionary::GetUInt32(v28, @"number channels", &v89);
      __x = 0;
      std::vector<char>::vector[abi:ne200100](buf, 32);
      v30 = *buf;
      **buf = 0;
      v30[2] = 0;
      v31 = v89;
      if (v89 <= 1)
      {
        v32 = 1;
      }

      else
      {
        v32 = v89;
      }

      v33 = 20 * v32 + 12;
      __x = 0;
      if (v33 <= *&buf[8] - v30)
      {
        if (v33 < *&buf[8] - v30)
        {
          *&buf[8] = v30 + v33;
        }
      }

      else
      {
        std::vector<char>::__append(buf, v33 - (*&buf[8] - v30), &__x);
        v30 = *buf;
        v31 = v89;
      }

      *v30 = 0;
      v30[2] = v31;
      if (v31)
      {
        v34 = v31;
        v35 = v30 + 4;
        do
        {
          *(v35 - 1) = -1;
          *v35 = 0;
          v35[1] = 0;
          v35 = (v35 + 20);
          --v34;
        }

        while (v34);
        v30 = *buf;
      }

      HALS_Device::ConstructLayoutFromDictionary(&v90, v30, v29);
      if (*(v2 + 2008) == 1)
      {
        if (v14 != buf)
        {
          std::vector<char>::__assign_with_size[abi:ne200100]<char *,char *>((v2 + 1984), *buf, *&buf[8], *&buf[8] - *buf);
        }
      }

      else
      {
        *v14 = 0;
        *(v2 + 1992) = 0;
        *(v2 + 2000) = 0;
        std::vector<char>::__init_with_size[abi:ne200100]<char *,char *>(v2 + 1984, *buf, *&buf[8], *&buf[8] - *buf);
        *(v2 + 2008) = 1;
      }

      if (*buf)
      {
        *&buf[8] = *buf;
        operator delete(*buf);
      }

      CACFDictionary::~CACFDictionary(&v90);
    }

    OS::CF::UntypedObject::~UntypedObject(&v92);
    OS::CF::UntypedObject::~UntypedObject(v94);
  }

  only_ios_high_quality_recording = AMCP::Feature_Flags::va_read_only_ios_high_quality_recording(v25);
  if ((only_ios_high_quality_recording & 1) != 0 || AMCP::Feature_Flags::dsp_read_only_macos_high_quality_local_recording(only_ios_high_quality_recording))
  {
    OS::CF::DictionaryBase<__CFDictionary const*>::GetValueForKey<OS::CF::Dictionary>(v94, v86.__r_.__value_.__l.__size_, @"dsp input settings");
    if (v95)
    {
      operator new();
    }

    OS::CF::UntypedObject::~UntypedObject(v94);
  }

  OS::CF::UntypedObject::~UntypedObject(&v96);
  OS::CF::UntypedObject::~UntypedObject(&v98);
  OS::CF::UntypedObject::~UntypedObject(v100);
  OS::CF::UntypedObject::~UntypedObject(&v86);
  if (!(*(v2 + 1976) | *(v2 + 1936)))
  {
    HALS_IOContextHostedDSP::Remove(*(v2 + 2176), (v2 + 1536), *(v2 + 1360), **(*(v2 + 24) + 72), *(*(v2 + 24) + 16), (v85 + 40), v37);
    goto LABEL_132;
  }

  if (v13)
  {
    HALS_IOContextDescription::SetFromCFRepresentation_ClearAllState((v2 + 1536));
    HALS_IOContextDescription::SetFromCFRepresentation_FindMaster((v2 + 1536), v13);
    HALS_IOContextDescription::SetFromCFRepresentation_ProcessInputStreams((v2 + 1536), v13);
    HALS_IOContextDescription::SetFromCFRepresentation_ProcessOutputStreams((v2 + 1536), v13);
    HALS_IOContextDescription::SetFromCFRepresentation_ProcessEngines((v2 + 1536));
    v38 = *(v2 + 1624);
    v39 = *(v2 + 1616);
    std::vector<BOOL>::resize(v2 + 1664, 0xCBEEA4E1A08AD8F3 * ((*(v2 + 1600) - *(v2 + 1592)) >> 3), 1);
    std::vector<BOOL>::resize(v2 + 1640, (v38 - v39) >> 5, 1);
  }

  HALS_IOContextHostedDSP::Initialize(*(v2 + 2176), (v2 + 1536), **(*(v2 + 24) + 72), *(*(v2 + 24) + 16));
  v40 = HALS_IOContextHostedDSP::util_Negotiate_WithFlags(*(v2 + 2176), (v2 + 1536), *(v2 + 1360), 3);
  v41 = v40;
  v42 = atomic_load(StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics_initialized);
  if ((v42 & 1) == 0)
  {
    AMCP::Log::AMCP_Scope_Registry::initialize(v40);
  }

  v44 = **StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics;
  v43 = *(*StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics + 8);
  if (v41 <= 1685286514)
  {
    if (!v41)
    {
      if (v43)
      {
        atomic_fetch_add_explicit(&v43->__shared_owners_, 1uLL, memory_order_relaxed);
        v48 = *v44;
        std::__shared_weak_count::__release_shared[abi:ne200100](v43);
      }

      else
      {
        v48 = *v44;
      }

      v49 = os_log_type_enabled(v48, OS_LOG_TYPE_DEBUG);
      if (v49)
      {
        *buf = 136315394;
        *&buf[4] = "HALS_IOContext_Legacy_Impl.cpp";
        *&buf[12] = 1024;
        *&buf[14] = 4771;
        _os_log_debug_impl(&dword_1DE1F9000, v48, OS_LOG_TYPE_DEBUG, "%32s:%-5d [hal_dsp] Negotiate simulate ok, retaining DSP types in description.", buf, 0x12u);
      }

      goto LABEL_120;
    }

    if (v41 == 1685283449)
    {
      if (v43)
      {
        atomic_fetch_add_explicit(&v43->__shared_owners_, 1uLL, memory_order_relaxed);
        v45 = *v44;
        std::__shared_weak_count::__release_shared[abi:ne200100](v43);
      }

      else
      {
        v45 = *v44;
      }

      v49 = os_log_type_enabled(v45, OS_LOG_TYPE_ERROR);
      if (v49)
      {
        *buf = 136315394;
        *&buf[4] = "HALS_IOContext_Legacy_Impl.cpp";
        *&buf[12] = 1024;
        *&buf[14] = 4765;
        _os_log_error_impl(&dword_1DE1F9000, v45, OS_LOG_TYPE_ERROR, "%32s:%-5d [hal_dsp] Negotiate simulate failed, DSP will process in bypass, retaining DSP types in description.", buf, 0x12u);
      }

      goto LABEL_120;
    }

LABEL_97:
    if (v43)
    {
      atomic_fetch_add_explicit(&v43->__shared_owners_, 1uLL, memory_order_relaxed);
      v47 = *v44;
      std::__shared_weak_count::__release_shared[abi:ne200100](v43);
    }

    else
    {
      v47 = *v44;
    }

    v49 = os_log_type_enabled(v47, OS_LOG_TYPE_DEFAULT);
    if (v49)
    {
      *buf = 136315394;
      *&buf[4] = "HALS_IOContext_Legacy_Impl.cpp";
      *&buf[12] = 1024;
      *&buf[14] = 4774;
      v50 = "%32s:%-5d [hal_dsp] Negotiate simulate has other result, retaining DSP types in description.";
LABEL_119:
      _os_log_impl(&dword_1DE1F9000, v47, OS_LOG_TYPE_DEFAULT, v50, buf, 0x12u);
      goto LABEL_120;
    }

    goto LABEL_120;
  }

  if (v41 != 1685286515)
  {
    if (v41 == 1685287013)
    {
      if (v43)
      {
        atomic_fetch_add_explicit(&v43->__shared_owners_, 1uLL, memory_order_relaxed);
        v46 = *v44;
        std::__shared_weak_count::__release_shared[abi:ne200100](v43);
      }

      else
      {
        v46 = *v44;
      }

      if (os_log_type_enabled(v46, OS_LOG_TYPE_ERROR))
      {
        *buf = 136315394;
        *&buf[4] = "HALS_IOContext_Legacy_Impl.cpp";
        *&buf[12] = 1024;
        *&buf[14] = 4760;
        _os_log_error_impl(&dword_1DE1F9000, v46, OS_LOG_TYPE_ERROR, "%32s:%-5d [hal_dsp] Negotiate simulate failed, dropping DSP types from description.", buf, 0x12u);
      }

      HALS_IOContextDescription::HostedDSPDescription::ResetRequests((v2 + 1832));
      std::__tree<DSP_Host_Types::AudioProcessingType>::destroy(*(v2 + 1928));
      *(v2 + 1920) = v2 + 1928;
      *(v2 + 1928) = 0u;
      std::__tree<DSP_Host_Types::AudioProcessingType>::destroy(*(v2 + 1968));
      *(v2 + 1960) = v2 + 1968;
      *(v2 + 1968) = 0u;
      HALS_IOContextHostedDSP::Remove(*(v2 + 2176), (v2 + 1536), *(v2 + 1360), **(*(v2 + 24) + 72), *(*(v2 + 24) + 16), (v85 + 40), v51);
      goto LABEL_120;
    }

    goto LABEL_97;
  }

  if (v43)
  {
    atomic_fetch_add_explicit(&v43->__shared_owners_, 1uLL, memory_order_relaxed);
    v47 = *v44;
    std::__shared_weak_count::__release_shared[abi:ne200100](v43);
  }

  else
  {
    v47 = *v44;
  }

  v49 = os_log_type_enabled(v47, OS_LOG_TYPE_DEFAULT);
  if (v49)
  {
    *buf = 136315394;
    *&buf[4] = "HALS_IOContext_Legacy_Impl.cpp";
    *&buf[12] = 1024;
    *&buf[14] = 4768;
    v50 = "%32s:%-5d [hal_dsp] Negotiate simulate, no streams to negotiate, retaining DSP types in description.";
    goto LABEL_119;
  }

LABEL_120:
  if (v7)
  {
    v52 = atomic_load(StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics_initialized);
    if ((v52 & 1) == 0)
    {
      AMCP::Log::AMCP_Scope_Registry::initialize(v49);
    }

    v54 = **StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics;
    v53 = *(*StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics + 8);
    if (v53)
    {
      atomic_fetch_add_explicit(&v53->__shared_owners_, 1uLL, memory_order_relaxed);
      v55 = *v54;
      std::__shared_weak_count::__release_shared[abi:ne200100](v53);
    }

    else
    {
      v55 = *v54;
    }

    if (os_log_type_enabled(v55, OS_LOG_TYPE_DEFAULT))
    {
      v56 = "NOT ";
      *&buf[4] = "HALS_IOContext_Legacy_Impl.cpp";
      *buf = 136315650;
      if (!v41)
      {
        v56 = "";
      }

      *&buf[12] = 1024;
      *&buf[14] = 4781;
      *&buf[18] = 2080;
      *&buf[20] = v56;
      _os_log_impl(&dword_1DE1F9000, v55, OS_LOG_TYPE_DEFAULT, "%32s:%-5d [hal_dsp] Negotiate/Adapt during context configuration is %sALLOWED.", buf, 0x1Cu);
    }

    if (!v41)
    {
      memset(buf, 0, 26);
      *&buf[32] = &buf[40];
      memset(&buf[40], 0, 48);
      v104 = 0u;
      v105 = 0;
      HALS_IOContextHostedDSP::util_Negotiate_WithFlags(*(v2 + 2176), (v2 + 1536), *(v2 + 1360), 1);
      HALS_MutationChangeSynchronizer::~HALS_MutationChangeSynchronizer(buf);
    }
  }

LABEL_132:
  HALS_IOContextDescription::SetFromCFRepresentation((v2 + 1536), *(a1 + 72));
  *(v2 + 2064) = *(a1 + 80);
  *(v2 + 2068) = *(a1 + 84);
  HALS_IOContext_Legacy_Impl::AssessIOBufferSize(v2, (*(*(a1 + 40) + 8) + 40));
  v57 = HALS_ObjectMap::CopyObjectByObjectID(*(v2 + 1552));
  v58 = v57;
  if (v57)
  {
    v59 = (*(*v57 + 224))(v57);
    snprintf(buf, 0x12CuLL, "audio IO: %s", v59);
    strlcpy((v2 + 500), buf, 0x40uLL);
  }

  else
  {
    strlcpy((v2 + 500), "audio IO thread", 0x40uLL);
  }

  HALS_ObjectMap::ReleaseObject(v58, v60);
  *(v2 + 1417) = 0;
  v61 = *(v2 + 24);
  v62 = *(v61 + 128);
  if (v62)
  {
    free(v62);
    v63 = (*(**(v61 + 104) + 32))(*(v61 + 104), 1);
    v64 = malloc_type_calloc(1uLL, (16 * v63) | 8u, 0x10800404ACF7207uLL);
    if (v64)
    {
      *v64 = v63;
    }

    *(v61 + 128) = v64;
  }

  v65 = *(v61 + 136);
  if (v65)
  {
    free(v65);
    v66 = (*(**(v61 + 104) + 32))(*(v61 + 104), 0);
    v67 = malloc_type_calloc(1uLL, (16 * v66) | 8u, 0x10800404ACF7207uLL);
    if (v67)
    {
      *v67 = v66;
    }

    *(v61 + 136) = v67;
  }

  if (v7 && *(v2 + 1976) | *(v2 + 1936))
  {
    v68 = HALS_IOContextHostedDSP::Adapt(*(v2 + 2176), (v2 + 1536), *(v2 + 1360), 0);
    v69 = v68;
    v70 = atomic_load(StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics_initialized);
    if ((v70 & 1) == 0)
    {
      AMCP::Log::AMCP_Scope_Registry::initialize(v68);
    }

    v72 = **StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics;
    v71 = *(*StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics + 8);
    if (v71)
    {
      atomic_fetch_add_explicit(&v71->__shared_owners_, 1uLL, memory_order_relaxed);
      v73 = *v72;
      std::__shared_weak_count::__release_shared[abi:ne200100](v71);
    }

    else
    {
      v73 = *v72;
    }

    if (os_log_type_enabled(v73, OS_LOG_TYPE_DEFAULT))
    {
      v74 = bswap32(v69);
      *&buf[1] = v74;
      if ((v74 - 32) > 0x5E || ((v74 >> 8) - 32) > 0x5E || ((v74 << 8 >> 24) - 32) > 0x5E || ((v74 >> 24) - 32) > 0x5E)
      {
        std::to_string(&v86, v69);
      }

      else
      {
        strcpy(&buf[5], "'");
        buf[0] = 39;
        std::string::basic_string[abi:ne200100]<0>(&v86, buf);
      }

      v75 = &v86;
      if ((v86.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
      {
        v75 = v86.__r_.__value_.__r.__words[0];
      }

      *buf = 136315650;
      *&buf[4] = "HALS_IOContext_Legacy_Impl.cpp";
      *&buf[12] = 1024;
      *&buf[14] = 4884;
      *&buf[18] = 2080;
      *&buf[20] = v75;
      _os_log_impl(&dword_1DE1F9000, v73, OS_LOG_TYPE_DEFAULT, "%32s:%-5d Context ADM Adapt results in %s", buf, 0x1Cu);
      if (SHIBYTE(v86.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v86.__r_.__value_.__l.__data_);
      }
    }

    if (v69 == 1685285985)
    {
      HALS_IOContext_Legacy_Impl::NotifyChangesDueToDSP(v2, 1);
    }
  }

  v76 = *(v2 + 24);
  if (*(v2 + 1765) == 1)
  {
    v77 = *(v76 + 16);
    v78 = *(v2 + 1544);
    *buf = &unk_1F5987C50;
    *&buf[8] = v77;
    *&buf[24] = buf;
    for_all_taps(v78, buf);
    std::__function::__value_func<BOOL ()(HALS_Releaser<HALS_Tap>)>::~__value_func[abi:ne200100](buf);
    v76 = *(v2 + 24);
  }

  v79 = (*(**(v76 + 104) + 768))(*(v76 + 104));
  v80 = HALS_ObjectMap::CopyObjectByObjectID(v79);
  v82 = HALS_ObjectMap::CopyObjectByObjectID(**(*(v2 + 24) + 72));
  if (v80)
  {
    *(v2 + 32) = (*(*v80 + 712))(v80, v82);
  }

  HALS_ObjectMap::ReleaseObject(v82, v81);
  HALS_ObjectMap::ReleaseObject(v80, v83);
  HALB_IOThread::Locker::~Locker(&v87);
  v84 = *MEMORY[0x1E69E9840];
}

void sub_1DE5FD0EC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, char a12, uint64_t a13, uint64_t a14, char a15, uint64_t a16, uint64_t a17, char a18, uint64_t a19, char a20, uint64_t a21, char a22, uint64_t a23, char a24, uint64_t a25, char a26, uint64_t a27, char a28, uint64_t a29, uint64_t a30, void *__p, uint64_t a32, int a33, __int16 a34, char a35, char a36)
{
  if (a2)
  {
    OS::CF::UntypedObject::~UntypedObject(&a12);
    HALB_IOThread::Locker::~Locker(&a15);
    v39 = __cxa_begin_catch(exception_object);
    if (a2 == 2)
    {
      *(*(*(v36 + 48) + 8) + 24) = v39[2];
    }

    else
    {
      *(*(*(v36 + 48) + 8) + 24) = 2003329396;
    }

    __cxa_end_catch();
    JUMPOUT(0x1DE5FD028);
  }

  _Unwind_Resume(exception_object);
}

OS::CF::UntypedObject *__copy_helper_block_e8_64c24_ZTSN2OS2CF10DictionaryE(uint64_t a1, uint64_t a2)
{
  result = OS::CF::UntypedObject::UntypedObject((a1 + 64), *(a2 + 72));
  *(a1 + 64) = &unk_1F5991008;
  return result;
}

void HALS_IOContext_Legacy_Impl::AssessIOBufferSize(HALS_IOContext_Legacy_Impl *this, CAPropertyAddressList *a2)
{
  v4 = *(this + 3);
  v5 = *(v4 + 80);
  if (!v5)
  {
    v5 = *(v4 + 16);
  }

  *(a2 + 3) = v5;
  v17 = caulk::function_ref<int ()(unsigned int,HALS_IOStreamInfo &)>::function_invoker;
  v18 = HALS_IOContext_Legacy_Impl::AssessIOBufferSize_InputHelper;
  *&v19 = caulk::function_ref<int ()(VisitableVector<HALS_IOStreamInfo>::ItemWithIndex &)>::functor_invoker<HALS_IOContextDescription::ApplyToInput(caulk::function_ref<int ()(unsigned int,HALS_IOStreamInfo&)>)::$_0>;
  *(&v19 + 1) = &v17;
  v6 = VisitableVector<HALS_IOStreamInfo>::apply<>(*(this + 199), *(this + 200), &v19);
  if (v6 || (v17 = caulk::function_ref<int ()(unsigned int,HALS_IOStackDescription &,unsigned int,unsigned int,HALS_IOStreamInfo &)>::function_invoker, v18 = HALS_IOContext_Legacy_Impl::AssessIOBufferSize_OutputHelper, *&v19 = _ZN5caulk12function_refIFiRN15VisitableVectorI23HALS_IOStackDescriptionE13ItemWithIndexEEE15functor_invokerIZN25HALS_IOContextDescription13ApplyToOutputIJEEEiNS0_IFijRS2_jjR17HALS_IOStreamInfoEEEDpRKT_EUlS5_E_EEiRKNS_7details15erased_callableIS6_EES5_, *(&v19 + 1) = &v17, (v6 = VisitableVector<HALS_IOStackDescription>::apply<>(*(this + 202), *(this + 203), &v19)) != 0))
  {
    if (*(this + 1364) != 1 || *(this + 340) != v6)
    {
      *(this + 1364) = 1;
      *(this + 340) = v6;
      *&v19 = 0x676C6F6266737A23;
      DWORD2(v19) = 0;
      CAPropertyAddressList::AppendUniqueItem(a2, &v19, v7);
      v8 = 0x676C6F626673697ALL;
LABEL_8:
      *&v19 = v8;
      DWORD2(v19) = 0;
      CAPropertyAddressList::AppendUniqueItem(a2, &v19, v7);
    }
  }

  else if (*(this + 1364) == 1)
  {
    *(this + 1364) = 0;
    v8 = 0x676C6F6266737A23;
    goto LABEL_8;
  }

  if ((*(this + 1364) & 1) == 0)
  {
    v9 = *(this + 195);
    v10 = 13.23;
    if (v9 && *(v9 + 88))
    {
      v10 = *(v9 + 848) * 0.0003;
    }

    v11 = vcvtpd_u64_f64(v10);
    HALS_IOContextDescription::CalculateMaximumIOBufferFrameSize((this + 1536));
    v13 = v12;
    DevicesDesiredIOBufferFrameSize = HALS_IOContext_Legacy_Impl::_GetDevicesDesiredIOBufferFrameSize(this, *(this + 340));
    if (DevicesDesiredIOBufferFrameSize <= v11)
    {
      v16 = v11;
    }

    else
    {
      v16 = DevicesDesiredIOBufferFrameSize;
    }

    if (v16 >= v13)
    {
      v16 = v13;
    }

    if (*(this + 340) != v16)
    {
      *(this + 340) = v16;
      *&v19 = 0x676C6F626673697ALL;
      DWORD2(v19) = 0;
      CAPropertyAddressList::AppendUniqueItem(a2, &v19, v15);
    }
  }
}

uint64_t HALS_IOContext_Legacy_Impl::AssessIOBufferSize_OutputHelper(HALS_IOContext_Legacy_Impl *this, unsigned int a2, HALS_IOStackDescription *a3, unsigned int a4, uint64_t a5, HALS_IOStreamInfo *a6)
{
  if (!*(a5 + 108) || ((v7 = *(a5 + 112), *(a5 + 120) != v7) ? (v8 = v7 == 0) : (v8 = 1), v8))
  {
    v7 = a5 + 456;
  }

  result = *(*v7 + 88);
  if (result)
  {
    v10 = *(a5 + 12);
    if (v10 >= (*(*result + 416))(result, *(a5 + 8), a3))
    {
      return 0;
    }

    if (*(a5 + 108))
    {
      HALS_IODSPInfo::GetClientFormat(&v13, (a5 + 112));
    }

    else
    {
      v11 = *(a5 + 432);
      v13 = *(a5 + 416);
      v14 = v11;
      v15 = *(a5 + 448);
    }

    if (DWORD2(v13) == 1819304813)
    {
      return 0;
    }

    else
    {
      if (*(a5 + 108))
      {
        HALS_IODSPInfo::GetClientFormat(&v13, (a5 + 112));
      }

      else
      {
        v12 = *(a5 + 432);
        v13 = *(a5 + 416);
        v14 = v12;
        v15 = *(a5 + 448);
      }

      return DWORD1(v14);
    }
  }

  return result;
}

void sub_1DE5FD6BC(void *a1)
{
  __cxa_begin_catch(a1);
  __cxa_end_catch();
  JUMPOUT(0x1DE5FD678);
}

uint64_t HALS_IOContext_Legacy_Impl::AssessIOBufferSize_InputHelper(HALS_IOContext_Legacy_Impl *this, uint64_t a2, HALS_IOStreamInfo *a3)
{
  if (!*(a2 + 108) || ((v4 = *(a2 + 112), *(a2 + 120) != v4) ? (v5 = v4 == 0) : (v5 = 1), v5))
  {
    v4 = a2 + 456;
  }

  result = *(*v4 + 88);
  if (result)
  {
    v7 = *(a2 + 12);
    if (v7 >= (*(*result + 416))(result, *(a2 + 8), a3))
    {
      return 0;
    }

    if (*(a2 + 108))
    {
      HALS_IODSPInfo::GetClientFormat(&v10, (a2 + 112));
    }

    else
    {
      v8 = *(a2 + 432);
      v10 = *(a2 + 416);
      v11 = v8;
      v12 = *(a2 + 448);
    }

    if (DWORD2(v10) == 1819304813)
    {
      return 0;
    }

    else
    {
      if (*(a2 + 108))
      {
        HALS_IODSPInfo::GetClientFormat(&v10, (a2 + 112));
      }

      else
      {
        v9 = *(a2 + 432);
        v10 = *(a2 + 416);
        v11 = v9;
        v12 = *(a2 + 448);
      }

      return DWORD1(v11);
    }
  }

  return result;
}

void sub_1DE5FD7E0(void *a1)
{
  __cxa_begin_catch(a1);
  __cxa_end_catch();
  JUMPOUT(0x1DE5FD79CLL);
}

void HALS_IOContext_Legacy_Impl::SetMuteState(uint64_t a1, unsigned int a2, char a3)
{
  v6 = a1 + 312;
  v7 = HALB_Mutex::Lock((a1 + 328));
  *(a1 + a2 + 1418) = a3;
  HALB_IOThread::Locker::~Locker(&v6);
}

uint64_t HALS_IOContext_Legacy_Impl::GetTransportState(HALS_IOContext_Legacy_Impl *this)
{
  v1 = *(this + 382);
  if (v1 == 1)
  {
    return 1;
  }

  else
  {
    return 2 * (v1 == 2);
  }
}

uint64_t HALS_IOContext_Legacy_Impl::EnableCaptureFiles(uint64_t a1, int a2)
{
  v3[0] = MEMORY[0x1E69E9820];
  v3[1] = 0x40000000;
  v3[2] = ___ZN26HALS_IOContext_Legacy_Impl18EnableCaptureFilesE17AudioCapturerMode_block_invoke;
  v3[3] = &__block_descriptor_tmp_29_13636;
  v4 = a2;
  v5 = v3;
  v7[0] = caulk::function_ref<int ()(HALS_IOEngineInfo &)>::functor_invoker<int({block_pointer})(HALS_IOEngineInfo &)>;
  v7[1] = &v5;
  v6 = &off_1F5983F18;
  v8 = v7;
  v9[0] = caulk::function_ref<int ()(VisitableVector<std::unique_ptr<HALS_IOEngineInfo>>::ItemWithIndex &)>::functor_invoker<int HALS_IOEngineInfoList::engine_apply<FilterEngineInfoWithoutEngine>(caulk::function_ref<int ()(HALS_IOEngineInfo&)>,FilterEngineInfoWithoutEngine const&)::{lambda(VisitableVector<std::unique_ptr<HALS_IOEngineInfo>>::ItemWithIndex &)#1}>;
  v9[1] = &v8;
  return VisitableVector<std::unique_ptr<HALS_IOEngineInfo>>::do_apply<std::vector<std::unique_ptr<HALS_IOEngineInfo>>,VisitableVector<std::unique_ptr<HALS_IOEngineInfo>>::ItemWithIndex,FilterEngineInfoWithoutEngine>(*(a1 + 1568), *(a1 + 1576), v9, &v6);
}

uint64_t ___ZN26HALS_IOContext_Legacy_Impl18EnableCaptureFilesE17AudioCapturerMode_block_invoke(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 88);
  if (v3)
  {
    (*(*v3 + 600))(v3, *(a1 + 32));
  }

  return 0;
}

uint64_t HALS_IOContext_Legacy_Impl::SleepingIsAllowedChanged(uint64_t this, int a2)
{
  v2 = *(*(this + 24) + 72);
  if (*(v2 + 44) != a2)
  {
    *(v2 + 44) = a2;
    if (a2)
    {
      return HALS_IOContext_Legacy_Impl::ReleasePowerAssertions(this);
    }

    else if (*(this + 1340) == 1)
    {
      return HALS_IOContext_Legacy_Impl::TakePowerAssertions(this);
    }
  }

  return this;
}

void sub_1DE5FDA04(void *a1)
{
  __cxa_begin_catch(a1);

  __cxa_end_catch();
}

uint64_t HALS_IOContext_Legacy_Impl::ReleasePowerAssertions(HALS_IOContext_Legacy_Impl *this)
{
  v7 = *MEMORY[0x1E69E9840];
  v1 = *(this + 1752);
  v4 = &unk_1F59828E8;
  v5 = v1;
  v6 = &v4;
  HALS_IOContext_Legacy_Impl::DoPowerAssertionTask(this, &v4);
  result = std::__function::__value_func<void ()(std::shared_ptr<HALS_IOContext_PowerAssertions> const&)>::~__value_func[abi:ne200100](&v4);
  v3 = *MEMORY[0x1E69E9840];
  return result;
}

void sub_1DE5FDAAC(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  std::__function::__value_func<void ()(std::shared_ptr<HALS_IOContext_PowerAssertions> const&)>::~__value_func[abi:ne200100](va);
  _Unwind_Resume(a1);
}

uint64_t HALS_IOContext_Legacy_Impl::TakePowerAssertions(HALS_IOContext_Legacy_Impl *this)
{
  v8 = *MEMORY[0x1E69E9840];
  v1 = 0x100000000;
  if (!*(this + 1752))
  {
    v1 = 0;
  }

  v2 = v1 | *(this + 388);
  v5 = &unk_1F5982868;
  v6 = v2;
  *(&v6 + 5) = 0;
  HIBYTE(v6) = 0;
  v7 = &v5;
  HALS_IOContext_Legacy_Impl::DoPowerAssertionTask(this, &v5);
  result = std::__function::__value_func<void ()(std::shared_ptr<HALS_IOContext_PowerAssertions> const&)>::~__value_func[abi:ne200100](&v5);
  v4 = *MEMORY[0x1E69E9840];
  return result;
}

void sub_1DE5FDB64(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  std::__function::__value_func<void ()(std::shared_ptr<HALS_IOContext_PowerAssertions> const&)>::~__value_func[abi:ne200100](va);
  _Unwind_Resume(a1);
}

uint64_t std::__function::__func<HALS_IOContext_Legacy_Impl::TakePowerAssertions(void)::$_0,std::allocator<HALS_IOContext_Legacy_Impl::TakePowerAssertions(void)::$_0>,void ()(std::shared_ptr<HALS_IOContext_PowerAssertions> const&)>::target(uint64_t a1, uint64_t a2)
{
  if (std::type_info::operator==[abi:ne200100](*(a2 + 8), "ZN26HALS_IOContext_Legacy_Impl19TakePowerAssertionsEvE3$_0"))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void std::__function::__func<HALS_IOContext_Legacy_Impl::TakePowerAssertions(void)::$_0,std::allocator<HALS_IOContext_Legacy_Impl::TakePowerAssertions(void)::$_0>,void ()(std::shared_ptr<HALS_IOContext_PowerAssertions> const&)>::operator()(uint64_t a1, uint64_t a2)
{
  v4 = *a2;
  v3 = *(a2 + 8);
  if (v3)
  {
    atomic_fetch_add_explicit(&v3->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  v5 = HALS_ObjectMap::CopyObjectByObjectID(*(a1 + 8));
  v6 = v5;
  if (v5)
  {
    v7 = (*(*v5 + 224))(v5);
    std::string::basic_string[abi:ne200100]<0>(__p, v7);
    v8 = *v4;
    v9 = v15 >= 0 ? __p : __p[0];
    OS::CF::String::String<char const*>(v17, @"com.apple.audio.%s.context.preventuseridlesleep", v9);
    HALB_PowerAssertion::Rename(v8, v17);
    OS::CF::UntypedObject::~UntypedObject(v17);
    v10 = v4[1];
    v11 = v15 >= 0 ? __p : __p[0];
    OS::CF::String::String<char const*>(v16, @"com.apple.audio.%s.context.preventuseridledisplaysleep", v11);
    HALB_PowerAssertion::Rename(v10, v16);
    OS::CF::UntypedObject::~UntypedObject(v16);
    if (v15 < 0)
    {
      operator delete(__p[0]);
    }
  }

  v12 = *(a1 + 12);
  HALB_PowerAssertion::Take(*v4);
  if (v12)
  {
    HALB_PowerAssertion::Take(v4[1]);
  }

  HALS_ObjectMap::ReleaseObject(v6, v13);
  if (v3)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v3);
  }
}

void sub_1DE5FDD04(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, char a16, uint64_t a17, char a18)
{
  OS::CF::UntypedObject::~UntypedObject(&a16);
  if (a15 < 0)
  {
    operator delete(__p);
  }

  HALS_ObjectMap::ReleaseObject(v19, v21);
  if (v18)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v18);
  }

  _Unwind_Resume(a1);
}

void *OS::CF::String::String<char const*>(void *a1, CFStringRef format, uint64_t a3)
{
  v4 = CFStringCreateWithFormat(0, 0, format, a3);
  *a1 = &unk_1F5991188;
  a1[1] = v4;
  return a1;
}

uint64_t std::__function::__func<HALS_IOContext_Legacy_Impl::TakePowerAssertions(void)::$_0,std::allocator<HALS_IOContext_Legacy_Impl::TakePowerAssertions(void)::$_0>,void ()(std::shared_ptr<HALS_IOContext_PowerAssertions> const&)>::__clone(uint64_t result, uint64_t a2)
{
  *a2 = &unk_1F5982868;
  *(a2 + 8) = *(result + 8);
  *(a2 + 15) = 0;
  *(a2 + 13) = 0;
  return result;
}

uint64_t std::__function::__func<HALS_IOContext_Legacy_Impl::ReleasePowerAssertions(void)::$_0,std::allocator<HALS_IOContext_Legacy_Impl::ReleasePowerAssertions(void)::$_0>,void ()(std::shared_ptr<HALS_IOContext_PowerAssertions> const&)>::target(uint64_t a1, uint64_t a2)
{
  if (std::type_info::operator==[abi:ne200100](*(a2 + 8), "ZN26HALS_IOContext_Legacy_Impl22ReleasePowerAssertionsEvE3$_0"))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void std::__function::__func<HALS_IOContext_Legacy_Impl::ReleasePowerAssertions(void)::$_0,std::allocator<HALS_IOContext_Legacy_Impl::ReleasePowerAssertions(void)::$_0>,void ()(std::shared_ptr<HALS_IOContext_PowerAssertions> const&)>::operator()(uint64_t a1, uint64_t a2)
{
  v3 = *a2;
  v2 = *(a2 + 8);
  if (v2)
  {
    atomic_fetch_add_explicit(&v2->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  v4 = *(a1 + 8);
  HALB_PowerAssertion::Release(*v3);
  if (v4)
  {
    HALB_PowerAssertion::Release(v3[1]);
  }

  if (v2)
  {

    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  }
}

void sub_1DE5FDF38(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v1);
  }

  _Unwind_Resume(exception_object);
}

uint64_t std::__function::__func<HALS_IOContext_Legacy_Impl::ReleasePowerAssertions(void)::$_0,std::allocator<HALS_IOContext_Legacy_Impl::ReleasePowerAssertions(void)::$_0>,void ()(std::shared_ptr<HALS_IOContext_PowerAssertions> const&)>::__clone(uint64_t result, uint64_t a2)
{
  *a2 = &unk_1F59828E8;
  *(a2 + 8) = *(result + 8);
  return result;
}

BOOL HALS_IOContext_Legacy_Impl::PowerHintChanged(HALS_IOContext_Legacy_Impl *this, int a2)
{
  if (*(this + 1365))
  {
    return 0;
  }

  if (a2 == 1)
  {
    v4 = 4096;
  }

  else
  {
    v4 = 512;
  }

  if (*(this + 1364))
  {
    result = 0;
  }

  else
  {
    v5 = *(this + 195);
    v6 = 13.23;
    if (v5 && *(v5 + 88))
    {
      v6 = *(v5 + 848) * 0.0003;
    }

    HALS_IOContextDescription::CalculateMaximumIOBufferFrameSize((this + 1536));
    v8 = v7;
    DevicesDesiredIOBufferFrameSize = HALS_IOContext_Legacy_Impl::_GetDevicesDesiredIOBufferFrameSize(this, v4);
    v10 = vcvtpd_u64_f64(v6);
    if (DevicesDesiredIOBufferFrameSize > v10)
    {
      v10 = DevicesDesiredIOBufferFrameSize;
    }

    if (v10 >= v8)
    {
      v10 = v8;
    }

    result = *(this + 340) != v10;
    *(this + 340) = v10;
  }

  *(this + 1365) = 0;
  return result;
}

void sub_1DE5FE0BC(void *a1)
{
  __cxa_begin_catch(a1);
  __cxa_end_catch();
  JUMPOUT(0x1DE5FE0A8);
}

void HALS_IOContext_Legacy_Impl::PowerChanged(HALS_IOContext_Legacy_Impl *this, int a2)
{
  v3 = *(this + 343);
  *(this + 343) = a2;
  if (v3 == a2)
  {
    return;
  }

  v5 = *(this + 3);
  if ((a2 & 0xFFFFFFFD) != 0)
  {
    if (a2 == 1)
    {
      v6 = *(*(v5 + 72) + 43);
    }

    else
    {
      if (a2 != 3)
      {
        v8 = 0;
        goto LABEL_11;
      }

      v6 = *(*(v5 + 72) + 42);
    }

    v8 = v6 ^ 1;
LABEL_11:
    *(this + 1377) = v8 & 1;
    goto LABEL_12;
  }

  *(this + 1377) = 1;
  if (a2)
  {
LABEL_12:
    if (!v3)
    {
      v9 = *(v5 + 16);
      HALS_IOContext_Legacy_Impl::ResumeIO(this);
    }

    if (*(this + 1340) == 1 && (*(*(*(this + 3) + 72) + 44) & 1) == 0)
    {
      HALS_IOContext_Legacy_Impl::TakePowerAssertions(this);
    }

    goto LABEL_17;
  }

  HALS_IOContext_Legacy_Impl::ReleasePowerAssertions(this);
  v7 = *(*(this + 3) + 16);
  HALS_IOContext_Legacy_Impl::PauseIO(this);
LABEL_17:

  HALB_Guard::NotifyAll((this + 328));
}

void HALS_IOContext_Legacy_Impl::Server_Internal_StopIOProcID(HALS_IOContext_Legacy_Impl *this, int (*a2)(unsigned int, const AudioTimeStamp *, const AudioBufferList *, const AudioTimeStamp *, AudioBufferList *, const AudioTimeStamp *, void *))
{
  v43 = *MEMORY[0x1E69E9840];
  v4 = this + 312;
  v5 = *(this + 40);
  v6 = pthread_self();
  v7 = pthread_equal(v5, v6);
  if (!v7)
  {
    os_unfair_recursive_lock_lock_with_options();
  }

  v34 = v4;
  v35 = HALB_Mutex::Lock((this + 328));
  v8 = HALS_ObjectMap::CopyObjectByObjectID(*(this + 388));
  v9 = *(this + 195);
  v10 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT);
  if (v8 && v9)
  {
    if (!v10)
    {
      goto LABEL_10;
    }

    v11 = *(*(this + 3) + 16);
    v12 = (*(*v8 + 224))(v8);
    *buf = 136316162;
    *&buf[4] = "HALS_IOContext_Legacy_Impl.cpp";
    *&buf[12] = 1024;
    *&buf[14] = 489;
    v37 = 1024;
    *v38 = v11;
    *&v38[4] = 2082;
    *&v38[6] = v9 + 112;
    *&v38[14] = 2082;
    *&v38[16] = v12;
    v13 = MEMORY[0x1E69E9C10];
    v14 = "%25s:%-5d  HALS_IOContext_Legacy_Impl::Server_Internal_StopIOProcID: %d %{public}s (%{public}s):";
    v15 = 44;
  }

  else
  {
    if (!v10)
    {
      goto LABEL_10;
    }

    v16 = *(*(this + 3) + 16);
    *buf = 136315650;
    *&buf[4] = "HALS_IOContext_Legacy_Impl.cpp";
    *&buf[12] = 1024;
    *&buf[14] = 493;
    v37 = 1024;
    *v38 = v16;
    v13 = MEMORY[0x1E69E9C10];
    v14 = "%25s:%-5d  HALS_IOContext_Legacy_Impl::Server_Internal_StopIOProcID: %d:";
    v15 = 24;
  }

  _os_log_impl(&dword_1DE1F9000, v13, OS_LOG_TYPE_DEFAULT, v14, buf, v15);
LABEL_10:
  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT))
  {
    AMCP::IO_Core::Play_State_Manager::get_debug_string(__p, *(this + 189), *(this + 190));
    if (v42 >= 0)
    {
      v17 = __p;
    }

    else
    {
      v17 = __p[0];
    }

    v18 = *(this + 3);
    v19 = *(v18 + 144);
    v20 = *(v18 + 120);
    v21 = "no";
    if (v20 && *(v20 + 32))
    {
      v21 = "yes";
    }

    *buf = 136316418;
    *&buf[4] = "HALS_IOContext_Legacy_Impl.cpp";
    *&buf[12] = 1024;
    *&buf[14] = 495;
    v37 = 2048;
    *v38 = a2;
    *&v38[8] = 2082;
    *&v38[10] = v17;
    *&v38[18] = 2048;
    *&v38[20] = v19;
    v39 = 2082;
    v40 = v21;
    _os_log_impl(&dword_1DE1F9000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT, "%25s:%-5d  HALS_IOContext_Legacy_Impl::Server_Internal_StopIOProcID: stopping %p state: %{public}s IOProc %p: %{public}s", buf, 0x3Au);
    if (v42 < 0)
    {
      operator delete(__p[0]);
    }
  }

  v22 = *(this + 3);
  if (a2 && *(v22 + 120) && *(v22 + 144) != a2)
  {
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      *buf = 136315394;
      *&buf[4] = "HALS_IOContext_Legacy_Impl.cpp";
      *&buf[12] = 1024;
      *&buf[14] = 500;
      _os_log_impl(&dword_1DE1F9000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "%25s:%-5d  HALS_IOContext_Legacy_Impl::Server_Internal_StopIOProcID: failed to stop because the IOProcID wasn't nullptr or wasn't registered", buf, 0x12u);
    }

    exception = __cxa_allocate_exception(0x10uLL);
    *exception = off_1F5991DD8;
    exception[2] = 1852797029;
  }

  v23 = *(v22 + 16);
  kdebug_trace();
  v24 = HALS_IOPrewarmManager::Stop(this + 189, a2 == 0);
  v26 = v24;
  if (v24 != 2)
  {
    v27 = *(*(this + 3) + 120);
    if (v27)
    {
      if (*(v27 + 32) == 1)
      {
        *(v27 + 32) = 0;
      }
    }
  }

  if (*(this + 190) || !*(this + 382) || *(this + 189))
  {
    v28 = atomic_load(this + 334);
    if (!v28 && (v24 || *(this + 382)))
    {
      if (v7)
      {
        v29 = a2 == 0;
        v30 = this + 1104;
        *buf = &unk_1F5982668;
        *&buf[8] = v29 | (v24 << 32);
        *&v38[4] = buf;
        if (this + 1104 != buf)
        {
          if (*(this + 141) == v30)
          {
            std::__function::__func<HALS_IOContext_Legacy_Impl::Server_Internal_StopIOProcID(int (*)(unsigned int,AudioTimeStamp const*,AudioBufferList const*,AudioTimeStamp const*,AudioBufferList*,AudioTimeStamp const*,void *))::$_0,std::allocator<HALS_IOContext_Legacy_Impl::Server_Internal_StopIOProcID(int (*)(unsigned int,AudioTimeStamp const*,AudioBufferList const*,AudioTimeStamp const*,AudioBufferList*,AudioTimeStamp const*,void *))::$_0>,void ()(HALS_IOContext_Legacy_Impl*)>::__clone(buf, __p);
            (*(**&v38[4] + 32))(*&v38[4]);
            *&v38[4] = 0;
            (*(**(this + 141) + 24))(*(this + 141), buf);
            (*(**(this + 141) + 32))(*(this + 141));
            *(this + 141) = 0;
            *&v38[4] = buf;
            (*(__p[0] + 3))(__p, this + 1104);
            (*(__p[0] + 4))(__p);
          }

          else
          {
            std::__function::__func<HALS_IOContext_Legacy_Impl::Server_Internal_StopIOProcID(int (*)(unsigned int,AudioTimeStamp const*,AudioBufferList const*,AudioTimeStamp const*,AudioBufferList*,AudioTimeStamp const*,void *))::$_0,std::allocator<HALS_IOContext_Legacy_Impl::Server_Internal_StopIOProcID(int (*)(unsigned int,AudioTimeStamp const*,AudioBufferList const*,AudioTimeStamp const*,AudioBufferList*,AudioTimeStamp const*,void *))::$_0>,void ()(HALS_IOContext_Legacy_Impl*)>::__clone(buf, this + 138);
            (*(**&v38[4] + 32))(*&v38[4]);
            *&v38[4] = *(this + 141);
          }

          *(this + 141) = v30;
        }

        std::__function::__value_func<void ()(HALS_IOContext_Legacy_Impl *)>::~__value_func[abi:ne200100](buf);
      }

      else
      {
        HALS_IOContext_Legacy_Impl::ChangeFromPlayingToPrewarming(this, a2 == 0, v24);
      }
    }

    v31 = 0;
  }

  else
  {
    *(this + 275) = a2 == 0;
    HALS_IOContext_Legacy_Impl::StopIOThread(this);
    v31 = 1;
  }

  *(this + 382) = v26;
  HALS_ObjectMap::ReleaseObject(v8, v25);
  HALB_IOThread::Locker::~Locker(&v34);
  if (v31)
  {
    HALS_IOContext_Legacy_Impl::Stop_DeactivateDSP(this);
  }

  if (!v7)
  {
    os_unfair_recursive_lock_unlock();
  }

  v32 = *MEMORY[0x1E69E9840];
}

void sub_1DE5FE7C4(_Unwind_Exception *exception_object, int a2)
{
  if (!a2)
  {
    _Unwind_Resume(exception_object);
  }

  __clang_call_terminate(exception_object);
}

uint64_t std::__function::__value_func<void ()(HALS_IOContext_Legacy_Impl *)>::~__value_func[abi:ne200100](uint64_t a1)
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

void HALS_IOContext_Legacy_Impl::ChangeFromPlayingToPrewarming(uint64_t a1, int a2, int a3)
{
  v43 = *MEMORY[0x1E69E9840];
  v6 = HALB_IOThread::WaitForState((a1 + 312), 1735354734);
  if (HALB_IOThread::IsCurrentThread((a1 + 312), 1))
  {
    v7 = HALS_IOThread::ClearAllSyscallMasks((a1 + 312));
    if (v7)
    {
      v8 = v7;
      v9 = **StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics;
      v10 = *(*StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics + 8);
      if (v10)
      {
        atomic_fetch_add_explicit(&v10->__shared_owners_, 1uLL, memory_order_relaxed);
      }

      v11 = *(v9 + 8);
      v12 = __error();
      v13 = strerror(*v12);
      if (!*MEMORY[0x1E69E3C08])
      {
        goto LABEL_32;
      }

      v14 = caulk::rt_safe_memory_resource::rt_allocate(*MEMORY[0x1E69E3C08]);
      *(v14 + 16) = 0;
      *(v14 + 20) = 16;
      *(v14 + 24) = "HALS_IOContext_Legacy_Impl.cpp";
      *(v14 + 32) = 583;
      *(v14 + 36) = v8;
      *(v14 + 40) = v13;
      *v14 = &unk_1F59826F8;
      *(v14 + 8) = 0;
      caulk::concurrent::messenger::enqueue(v11, v14);
      if (v10)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v10);
      }
    }
  }

  v15 = HALS_IOContext_Legacy_Impl::ChangeEngineState_Off(a1, a2, a3);
  v16 = v15;
  if (v6 && v6 != 89)
  {
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      *buf = 136315650;
      v36 = "HALS_IOContext_Legacy_Impl.cpp";
      v37 = 1024;
      v38 = 594;
      v39 = 1024;
      v40 = v6;
      _os_log_impl(&dword_1DE1F9000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "%25s:%-5d  HALS_IOContext_Legacy_Impl::ChangeFromPlayingToPrewarming: got a kernel error while waiting for the thread to be running, Error: 0x%X", buf, 0x18u);
    }

    exception = __cxa_allocate_exception(0x10uLL);
    *exception = off_1F5991DD8;
    exception[2] = v6;
  }

  v17 = *(a1 + 1096);
  if (v17)
  {
    v30 = HIBYTE(*(a1 + 1096));
    v31 = BYTE2(v17);
    v32 = BYTE1(v17);
    v33 = v17;
    v34 = 0;
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      *buf = 136315906;
      v36 = "HALS_IOContext_Legacy_Impl.cpp";
      v37 = 1024;
      v38 = 596;
      v39 = 1024;
      v40 = v17;
      v41 = 2080;
      v42 = &v30;
      _os_log_impl(&dword_1DE1F9000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "%25s:%-5d  HALS_IOContext_Legacy_Impl::ChangeFromPlayingToPrewarming returned a thread error waiting for IO thread to run, Error: %d (%s)", buf, 0x22u);
    }

    v26 = __cxa_allocate_exception(0x10uLL);
    v27 = *(a1 + 1096);
    *v26 = off_1F5991DD8;
    v26[2] = v27;
  }

  if (v15)
  {
    v30 = HIBYTE(v15);
    v31 = BYTE2(v15);
    v32 = BYTE1(v15);
    v33 = v15;
    v34 = 0;
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      *buf = 136315906;
      v36 = "HALS_IOContext_Legacy_Impl.cpp";
      v37 = 1024;
      v38 = 598;
      v39 = 1024;
      v40 = v16;
      v41 = 2080;
      v42 = &v30;
      _os_log_impl(&dword_1DE1F9000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "%25s:%-5d  HALS_IOContext_Legacy_Impl::ChangeFromPlayingToPrewarming: got an error from ChangeEngineState_Off, possibly indicating a driver failure, Error: %d (%s)", buf, 0x22u);
    }

    v28 = __cxa_allocate_exception(0x10uLL);
    *v28 = off_1F5991DD8;
    v28[2] = v16;
  }

  if (HALS_IOContext::GetAudioCaptureMode(*(a1 + 24)) || !HALB_IOThread::IsCurrentThread((a1 + 312), 1) || !HALS_IOThread::EnableRTSafeSyscallMasks((a1 + 312)))
  {
    goto LABEL_22;
  }

  v18 = **StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics;
  v19 = *(*StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics + 8);
  if (v19)
  {
    atomic_fetch_add_explicit(&v19->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  v20 = *(v18 + 8);
  v21 = __error();
  v22 = strerror(*v21);
  if (!*MEMORY[0x1E69E3C08])
  {
LABEL_32:
    __break(1u);
    return;
  }

  v23 = caulk::rt_safe_memory_resource::rt_allocate(*MEMORY[0x1E69E3C08]);
  *(v23 + 16) = 0;
  *(v23 + 20) = 16;
  *(v23 + 24) = "HALS_IOContext_Legacy_Impl.cpp";
  *(v23 + 32) = 610;
  *(v23 + 36) = v6;
  *(v23 + 40) = v22;
  *v23 = &unk_1F5982750;
  *(v23 + 8) = 0;
  caulk::concurrent::messenger::enqueue(v20, v23);
  if (!v19)
  {
LABEL_22:
    v25 = *MEMORY[0x1E69E9840];
    return;
  }

  v24 = *MEMORY[0x1E69E9840];

  std::__shared_weak_count::__release_shared[abi:ne200100](v19);
}

void sub_1DE5FEDB8(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v1);
  }

  _Unwind_Resume(exception_object);
}

uint64_t caulk::concurrent::details::rt_message_call<HALS_IOContext_Legacy_Impl::ChangeFromPlayingToPrewarming(HALS_IOPrewarmManager::PlayRequest,HALS_IOPrewarmManager::EngineState)::$_1,std::tuple<char const*,int,int,char *>>::perform(uint64_t a1)
{
  v20 = *MEMORY[0x1E69E9840];
  v3 = **StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics;
  v2 = *(*StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics + 8);
  if (v2)
  {
    atomic_fetch_add_explicit(&v2->__shared_owners_, 1uLL, memory_order_relaxed);
    v4 = *v3;
    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  }

  else
  {
    v4 = *v3;
  }

  v5 = *(a1 + 20);
  if (os_log_type_enabled(v4, v5))
  {
    v6 = *(a1 + 24);
    v7 = *(a1 + 32);
    v8 = *(a1 + 36);
    v9 = *(a1 + 40);
    v12 = 136315906;
    v13 = v6;
    v14 = 1024;
    v15 = v7;
    v16 = 1024;
    v17 = v8;
    v18 = 2080;
    v19 = v9;
    _os_log_impl(&dword_1DE1F9000, v4, v5, "%32s:%-5d Failed to set the RT safe syscall masks: %d - %s", &v12, 0x22u);
  }

  caulk::concurrent::message::~message(a1);
  if (!*MEMORY[0x1E69E3C08])
  {
    __break(1u);
  }

  result = caulk::rt_safe_memory_resource::rt_deallocate(*MEMORY[0x1E69E3C08], a1);
  v11 = *MEMORY[0x1E69E9840];
  return result;
}

void caulk::concurrent::details::rt_message_call<HALS_IOContext_Legacy_Impl::ChangeFromPlayingToPrewarming(HALS_IOPrewarmManager::PlayRequest,HALS_IOPrewarmManager::EngineState)::$_1,std::tuple<char const*,int,int,char *>>::~rt_message_call(caulk::concurrent::message *a1)
{
  caulk::concurrent::message::~message(a1);

  JUMPOUT(0x1E12C1730);
}

uint64_t caulk::concurrent::details::rt_message_call<HALS_IOContext_Legacy_Impl::ChangeFromPlayingToPrewarming(HALS_IOPrewarmManager::PlayRequest,HALS_IOPrewarmManager::EngineState)::$_0,std::tuple<char const*,int,int,char *>>::perform(uint64_t a1)
{
  v20 = *MEMORY[0x1E69E9840];
  v3 = **StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics;
  v2 = *(*StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics + 8);
  if (v2)
  {
    atomic_fetch_add_explicit(&v2->__shared_owners_, 1uLL, memory_order_relaxed);
    v4 = *v3;
    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  }

  else
  {
    v4 = *v3;
  }

  v5 = *(a1 + 20);
  if (os_log_type_enabled(v4, v5))
  {
    v6 = *(a1 + 24);
    v7 = *(a1 + 32);
    v8 = *(a1 + 36);
    v9 = *(a1 + 40);
    v12 = 136315906;
    v13 = v6;
    v14 = 1024;
    v15 = v7;
    v16 = 1024;
    v17 = v8;
    v18 = 2080;
    v19 = v9;
    _os_log_impl(&dword_1DE1F9000, v4, v5, "%32s:%-5d Failed to clear the syscall masks: %d - %s", &v12, 0x22u);
  }

  caulk::concurrent::message::~message(a1);
  if (!*MEMORY[0x1E69E3C08])
  {
    __break(1u);
  }

  result = caulk::rt_safe_memory_resource::rt_deallocate(*MEMORY[0x1E69E3C08], a1);
  v11 = *MEMORY[0x1E69E9840];
  return result;
}

void caulk::concurrent::details::rt_message_call<HALS_IOContext_Legacy_Impl::ChangeFromPlayingToPrewarming(HALS_IOPrewarmManager::PlayRequest,HALS_IOPrewarmManager::EngineState)::$_0,std::tuple<char const*,int,int,char *>>::~rt_message_call(caulk::concurrent::message *a1)
{
  caulk::concurrent::message::~message(a1);

  JUMPOUT(0x1E12C1730);
}

uint64_t std::__function::__func<HALS_IOContext_Legacy_Impl::Server_Internal_StopIOProcID(int (*)(unsigned int,AudioTimeStamp const*,AudioBufferList const*,AudioTimeStamp const*,AudioBufferList*,AudioTimeStamp const*,void *))::$_0,std::allocator<HALS_IOContext_Legacy_Impl::Server_Internal_StopIOProcID(int (*)(unsigned int,AudioTimeStamp const*,AudioBufferList const*,AudioTimeStamp const*,AudioBufferList*,AudioTimeStamp const*,void *))::$_0>,void ()(HALS_IOContext_Legacy_Impl*)>::target(uint64_t a1, uint64_t a2)
{
  if (std::type_info::operator==[abi:ne200100](*(a2 + 8), "ZN26HALS_IOContext_Legacy_Impl28Server_Internal_StopIOProcIDEPFijPK14AudioTimeStampPK15AudioBufferListS2_PS3_S2_PvEE3$_0"))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void std::__function::__func<HALS_IOContext_Legacy_Impl::Server_Internal_StopIOProcID(int (*)(unsigned int,AudioTimeStamp const*,AudioBufferList const*,AudioTimeStamp const*,AudioBufferList*,AudioTimeStamp const*,void *))::$_0,std::allocator<HALS_IOContext_Legacy_Impl::Server_Internal_StopIOProcID(int (*)(unsigned int,AudioTimeStamp const*,AudioBufferList const*,AudioTimeStamp const*,AudioBufferList*,AudioTimeStamp const*,void *))::$_0>,void ()(HALS_IOContext_Legacy_Impl*)>::operator()(uint64_t a1, uint64_t *a2)
{
  v2 = *a2;
  HALS_IOContext_Legacy_Impl::ChangeFromPlayingToPrewarming(*a2, *(a1 + 8), *(a1 + 12));
  *(v2 + 1508) = 1;
}

uint64_t std::__function::__func<HALS_IOContext_Legacy_Impl::Server_Internal_StopIOProcID(int (*)(unsigned int,AudioTimeStamp const*,AudioBufferList const*,AudioTimeStamp const*,AudioBufferList*,AudioTimeStamp const*,void *))::$_0,std::allocator<HALS_IOContext_Legacy_Impl::Server_Internal_StopIOProcID(int (*)(unsigned int,AudioTimeStamp const*,AudioBufferList const*,AudioTimeStamp const*,AudioBufferList*,AudioTimeStamp const*,void *))::$_0>,void ()(HALS_IOContext_Legacy_Impl*)>::__clone(uint64_t result, void *a2)
{
  *a2 = &unk_1F5982668;
  a2[1] = *(result + 8);
  return result;
}

caulk::rt_safe_memory_resource *HALS_IOContext_Legacy_Impl::Server_Internal_StartIOProcID(HALS_IOContext_Legacy_Impl *this, int (*a2)(unsigned int, const AudioTimeStamp *, const AudioBufferList *, const AudioTimeStamp *, AudioBufferList *, const AudioTimeStamp *, void *), AudioTimeStamp *a3, unsigned int a4)
{
  v83 = *MEMORY[0x1E69E9840];
  os_unfair_recursive_lock_lock_with_options();
  v78 = this + 312;
  v79 = HALB_Mutex::Lock((this + 328));
  HasBeenDeactivated = HALS_IOThread::HasBeenDeactivated((this + 312));
  if (HasBeenDeactivated)
  {
    v54 = atomic_load(StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics_initialized);
    if ((v54 & 1) == 0)
    {
      AMCP::Log::AMCP_Scope_Registry::initialize(HasBeenDeactivated);
    }

    v56 = **StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics;
    v55 = *(*StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics + 8);
    if (v55)
    {
      atomic_fetch_add_explicit(&v55->__shared_owners_, 1uLL, memory_order_relaxed);
      v57 = *v56;
      std::__shared_weak_count::__release_shared[abi:ne200100](v55);
    }

    else
    {
      v57 = *v56;
    }

    if (os_log_type_enabled(v57, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315650;
      *&buf[4] = "HALS_IOContext_Legacy_Impl.cpp";
      *&buf[12] = 1024;
      *&buf[14] = 353;
      *&buf[18] = 2080;
      *&buf[20] = "mIOThread.HasBeenDeactivated() == true";
      _os_log_error_impl(&dword_1DE1F9000, v57, OS_LOG_TYPE_ERROR, "%32s:%-5d Throwing Exception: %s Cannot start IO Thread since it has been deactivated", buf, 0x1Cu);
    }

    AMCP::Utility::With_Realtime_Disabled::With_Realtime_Disabled(&v77);
    __cxa_allocate_exception(0x40uLL);
    v68.__vftable = off_1F5991DD8;
    v69 = 1852797029;
    LODWORD(v71) = 1852797029;
    v74 = 0;
    v75 = 0;
    v76 = -1;
    __p = &unk_1F598E5D8;
    v72 = &unk_1F598E600;
    v73 = 0;
    boost::exception_detail::clone_impl<boost::exception_detail::error_info_injector<CAException>>::clone_impl(buf, &__p);
    *&buf[32] = "virtual void HALS_IOContext_Legacy_Impl::Server_Internal_StartIOProcID(AudioDeviceIOProcID, AudioTimeStamp *, UInt32)";
    *&buf[40] = "/Library/Caches/com.apple.xbs/Sources/AudioHAL/Source/HAL/Core/IO/HALS_IOContext_Legacy_Impl.cpp";
    LODWORD(v81) = 353;
    applesauce::backtrace::snapshot_N<64>::snapshot_N(v66);
  }

  if (a3)
  {
    v9 = (a4 >> 3) & 1;
  }

  else
  {
    v9 = 0;
  }

  if (v9 == 1)
  {
    NumberStreams = HALS_IOContextDescription::GetNumberStreams(this + 1536, 1);
    if (!NumberStreams)
    {
      goto LABEL_72;
    }

    v11 = 0;
    v12 = 1;
    do
    {
      if (*(this + 209) == v11)
      {
        break;
      }

      if ((*(*(this + 208) + ((v11 >> 3) & 0x1FFFFFFFFFFFFFF8)) >> v11))
      {
        break;
      }

      v12 = ++v11 < NumberStreams;
    }

    while (NumberStreams != v11);
    if (!v12)
    {
LABEL_72:
      v58 = atomic_load(StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics_initialized);
      if ((v58 & 1) == 0)
      {
        AMCP::Log::AMCP_Scope_Registry::initialize(NumberStreams);
      }

      v60 = **StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics;
      v59 = *(*StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics + 8);
      if (v59)
      {
        atomic_fetch_add_explicit(&v59->__shared_owners_, 1uLL, memory_order_relaxed);
        v61 = *v60;
        std::__shared_weak_count::__release_shared[abi:ne200100](v59);
      }

      else
      {
        v61 = *v60;
      }

      if (os_log_type_enabled(v61, OS_LOG_TYPE_ERROR))
      {
        *buf = 136315650;
        *&buf[4] = "HALS_IOContext_Legacy_Impl.cpp";
        *&buf[12] = 1024;
        *&buf[14] = 361;
        *&buf[18] = 2080;
        *&buf[20] = "IsAnyInputStreamEnabled() == false";
        _os_log_error_impl(&dword_1DE1F9000, v61, OS_LOG_TYPE_ERROR, "%32s:%-5d Throwing Exception: %s Cannot start IO for catch up if input streams are disabled", buf, 0x1Cu);
      }

      AMCP::Utility::With_Realtime_Disabled::With_Realtime_Disabled(&v77);
      __cxa_allocate_exception(0x40uLL);
      v68.__vftable = off_1F5991DD8;
      v69 = 1852797029;
      LODWORD(v71) = 1852797029;
      v74 = 0;
      v75 = 0;
      v76 = -1;
      __p = &unk_1F598E5D8;
      v72 = &unk_1F598E600;
      v73 = 0;
      boost::exception_detail::clone_impl<boost::exception_detail::error_info_injector<CAException>>::clone_impl(buf, &__p);
      *&buf[32] = "virtual void HALS_IOContext_Legacy_Impl::Server_Internal_StartIOProcID(AudioDeviceIOProcID, AudioTimeStamp *, UInt32)";
      *&buf[40] = "/Library/Caches/com.apple.xbs/Sources/AudioHAL/Source/HAL/Core/IO/HALS_IOContext_Legacy_Impl.cpp";
      LODWORD(v81) = 361;
      applesauce::backtrace::snapshot_N<64>::snapshot_N(v66);
    }
  }

  v13 = HALS_ObjectMap::CopyObjectByObjectID(*(this + 388));
  v14 = *(this + 195);
  v15 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT);
  if (v13 && v14)
  {
    if (!v15)
    {
      goto LABEL_19;
    }

    v16 = *(*(this + 3) + 16);
    v17 = (*(*v13 + 224))(v13);
    *buf = 136316162;
    *&buf[4] = "HALS_IOContext_Legacy_Impl.cpp";
    *&buf[12] = 1024;
    *&buf[14] = 369;
    *&buf[18] = 1024;
    *&buf[20] = v16;
    *&buf[24] = 2082;
    *&buf[26] = v14 + 112;
    *&buf[34] = 2082;
    *&buf[36] = v17;
    v18 = MEMORY[0x1E69E9C10];
    v19 = "%25s:%-5d  HALS_IOContext_Legacy_Impl::Server_Internal_StartIOProcID: %d %{public}s (%{public}s):";
    v20 = 44;
  }

  else
  {
    if (!v15)
    {
      goto LABEL_19;
    }

    v21 = *(*(this + 3) + 16);
    *buf = 136315650;
    *&buf[4] = "HALS_IOContext_Legacy_Impl.cpp";
    *&buf[12] = 1024;
    *&buf[14] = 373;
    *&buf[18] = 1024;
    *&buf[20] = v21;
    v18 = MEMORY[0x1E69E9C10];
    v19 = "%25s:%-5d  HALS_IOContext_Legacy_Impl::Server_Internal_StartIOProcID: %d:";
    v20 = 24;
  }

  _os_log_impl(&dword_1DE1F9000, v18, OS_LOG_TYPE_DEFAULT, v19, buf, v20);
LABEL_19:
  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT))
  {
    AMCP::IO_Core::Play_State_Manager::get_debug_string(&__p, *(this + 189), *(this + 190));
    if (SHIBYTE(v72) >= 0)
    {
      p_p = &__p;
    }

    else
    {
      p_p = __p;
    }

    v23 = *(this + 3);
    v24 = *(v23 + 144);
    v25 = *(v23 + 120);
    v26 = "no";
    if (v25 && *(v25 + 32))
    {
      v26 = "yes";
    }

    *buf = 136316418;
    *&buf[4] = "HALS_IOContext_Legacy_Impl.cpp";
    *&buf[12] = 1024;
    *&buf[14] = 375;
    *&buf[18] = 2048;
    *&buf[20] = a2;
    *&buf[28] = 2082;
    *&buf[30] = p_p;
    *&buf[38] = 2048;
    *&buf[40] = v24;
    LOWORD(v81) = 2082;
    *(&v81 + 2) = v26;
    _os_log_impl(&dword_1DE1F9000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT, "%25s:%-5d  \t\t\t\tstarting ProcID %p state: %{public}s IOProc %p: %{public}s", buf, 0x3Au);
    if (SHIBYTE(v72) < 0)
    {
      operator delete(__p);
    }
  }

  HALS_IOContext_Legacy_Impl::Start_ActivateDSP(this);
  v27 = *(*(this + 3) + 16);
  kdebug_trace();
  v28 = a2 == 0;
  v29 = HALS_IOPrewarmManager::Start(this + 189, v28);
  v31 = v29;
  if ((v29 - 1) >= 2)
  {
    v33 = atomic_load(StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics_initialized);
    if ((v33 & 1) == 0)
    {
      AMCP::Log::AMCP_Scope_Registry::initialize(v29);
    }

    v35 = **StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics;
    v34 = *(*StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics + 8);
    if (v34)
    {
      atomic_fetch_add_explicit(&v34->__shared_owners_, 1uLL, memory_order_relaxed);
      v36 = *v35;
      std::__shared_weak_count::__release_shared[abi:ne200100](v34);
    }

    else
    {
      v36 = *v35;
    }

    if (os_log_type_enabled(v36, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315394;
      *&buf[4] = "HALS_IOContext_Legacy_Impl.cpp";
      *&buf[12] = 1024;
      *&buf[14] = 384;
      _os_log_error_impl(&dword_1DE1F9000, v36, OS_LOG_TYPE_ERROR, "%32s:%-5d HALS_IOContext_Legacy_Impl::Server_Internal_StartIOProcID: Start failed to change the prewarming state in a reasonable way", buf, 0x12u);
    }
  }

  else if (v29 == 2)
  {
    v32 = *(*(this + 3) + 120);
    if (v32)
    {
      if ((*(v32 + 32) & 1) == 0)
      {
        *(v32 + 32) = 1;
      }
    }
  }

  v37 = *(this + 382);
  if (*(this + 190))
  {
    v38 = 1;
    if (v37)
    {
      goto LABEL_53;
    }
  }

  else
  {
    v38 = *(this + 189) != 0;
    if (v37)
    {
LABEL_53:
      if (!atomic_load(this + 334))
      {
        v47 = HALB_IOThread::WaitForState((this + 312), 1735354734);
        v48 = HALS_IOContext_Legacy_Impl::ChangeEngineState_On(this, v28);
        v49 = v48;
        if (v47 && v47 != 89)
        {
          if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
          {
            *buf = 136315650;
            *&buf[4] = "HALS_IOContext_Legacy_Impl.cpp";
            *&buf[12] = 1024;
            *&buf[14] = 426;
            *&buf[18] = 1024;
            *&buf[20] = v47;
            _os_log_impl(&dword_1DE1F9000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "%25s:%-5d  HALS_IOContext_Legacy_Impl::Server_Internal_StartIOProcID: got a kernel error waiting for IO thread to run, Error: 0x%X", buf, 0x18u);
          }

          exception = __cxa_allocate_exception(0x10uLL);
          *exception = off_1F5991DD8;
          exception[2] = v47;
        }

        v50 = *(this + 274);
        if (v50)
        {
          LOBYTE(__p) = HIBYTE(*(this + 274));
          BYTE1(__p) = BYTE2(v50);
          BYTE2(__p) = BYTE1(v50);
          *(&__p + 3) = v50;
          if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
          {
            *buf = 136315906;
            *&buf[4] = "HALS_IOContext_Legacy_Impl.cpp";
            *&buf[12] = 1024;
            *&buf[14] = 428;
            *&buf[18] = 1024;
            *&buf[20] = v50;
            *&buf[24] = 2080;
            *&buf[26] = &__p;
            _os_log_impl(&dword_1DE1F9000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "%25s:%-5d  HALS_IOContext_Legacy_Impl::Server_Internal_StartIOProcID returned a thread error waiting for IO thread to run, Error: %d (%s)", buf, 0x22u);
          }

          v62 = __cxa_allocate_exception(0x10uLL);
          v63 = *(this + 274);
          *v62 = off_1F5991DD8;
          v62[2] = v63;
        }

        if (v48)
        {
          LOBYTE(__p) = HIBYTE(v48);
          BYTE1(__p) = BYTE2(v48);
          BYTE2(__p) = BYTE1(v48);
          *(&__p + 3) = v48;
          if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
          {
            *buf = 136315906;
            *&buf[4] = "HALS_IOContext_Legacy_Impl.cpp";
            *&buf[12] = 1024;
            *&buf[14] = 430;
            *&buf[18] = 1024;
            *&buf[20] = v49;
            *&buf[24] = 2080;
            *&buf[26] = &__p;
            _os_log_impl(&dword_1DE1F9000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "%25s:%-5d  HALS_IOContext_Legacy_Impl::Server_Internal_StartIOProcID: got an error from ChangeEngineState_On, possibly indicating a driver failure, Error: %d (%s)", buf, 0x22u);
          }

          v64 = __cxa_allocate_exception(0x10uLL);
          *v64 = off_1F5991DD8;
          v64[2] = v49;
        }

        if (v31 != *(this + 382))
        {
          v77 = 0;
          v67[0] = HALS_IOContext_Legacy_Impl::IsAnyEngineMixing_Helper;
          v67[1] = &v77;
          __p = caulk::function_ref<int ()(HALS_IOEngineInfo &)>::functor_invoker<std::__bind<int (&)(BOOL &,HALS_IOEngineInfo &),std::reference_wrapper<BOOL>,std::placeholders::__ph<1> const&>>;
          v71 = v67;
          v68.__vftable = &off_1F5983F18;
          v66[0] = &__p;
          *buf = caulk::function_ref<int ()(VisitableVector<std::unique_ptr<HALS_IOEngineInfo>>::ItemWithIndex &)>::functor_invoker<int HALS_IOEngineInfoList::engine_apply<FilterEngineInfoWithoutEngine>(caulk::function_ref<int ()(HALS_IOEngineInfo&)>,FilterEngineInfoWithoutEngine const&)::{lambda(VisitableVector<std::unique_ptr<HALS_IOEngineInfo>>::ItemWithIndex &)#1}>;
          *&buf[8] = v66;
          VisitableVector<std::unique_ptr<HALS_IOEngineInfo>>::do_apply<std::vector<std::unique_ptr<HALS_IOEngineInfo>>,VisitableVector<std::unique_ptr<HALS_IOEngineInfo>>::ItemWithIndex,FilterEngineInfoWithoutEngine>(*(this + 196), *(this + 197), buf, &v68);
          if ((v77 & 1) == 0)
          {
            *(this + 1341) = 1;
            *(this + 382) = v31;
            HALS_ObjectMap::ReleaseObject(v13, v51);
            HALB_IOThread::Locker::~Locker(&v78);
            HALB_Guard::Notify((this + 328));
            goto LABEL_66;
          }

          *(this + 382) = v31;
          HALS_ObjectMap::ReleaseObject(v13, v51);
LABEL_65:
          HALB_IOThread::Locker::~Locker(&v78);
LABEL_66:
          result = os_unfair_recursive_lock_unlock();
          v53 = *MEMORY[0x1E69E9840];
          return result;
        }
      }

LABEL_64:
      *(this + 382) = v31;
      HALS_ObjectMap::ReleaseObject(v13, v30);
      goto LABEL_65;
    }
  }

  if (!v38)
  {
    goto LABEL_53;
  }

  if (!v9)
  {
    *(this + 356) = 0;
    v52 = *(this + 182);
    if (v52)
    {
      std::function<void ()(IORunningState)>::operator()(v52, 0);
    }

    goto LABEL_63;
  }

  mHostTime = a3->mHostTime;
  *(this + 183) = mHostTime;
  *(this + 356) = 1;
  v40 = *(this + 182);
  if (v40)
  {
    std::function<void ()(IORunningState)>::operator()(v40, 1);
  }

  v41 = **StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics;
  v42 = *(*StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics + 8);
  if (v42)
  {
    atomic_fetch_add_explicit(&v42->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  result = *MEMORY[0x1E69E3C08];
  if (*MEMORY[0x1E69E3C08])
  {
    v44 = *(v41 + 8);
    v45 = caulk::rt_safe_memory_resource::rt_allocate(result);
    *(v45 + 16) = 0;
    *(v45 + 20) = 0;
    *(v45 + 24) = "HALS_IOContext_Legacy_Impl.cpp";
    *(v45 + 32) = 3924;
    *(v45 + 40) = mHostTime;
    *v45 = &unk_1F5983310;
    *(v45 + 8) = 0;
    caulk::concurrent::messenger::enqueue(v44, v45);
    if (v42)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v42);
    }

LABEL_63:
    *(this + 275) = v28;
    HALS_IOContext_Legacy_Impl::StartIOThread(&__p, this);
    *buf = v71;
    *&buf[4] = 1;
    *&buf[8] = 850045863;
    memset(&buf[16], 0, 32);
    v81 = 0u;
    v82 = 0u;
    AMCP::Utility::Mach_Port::~Mach_Port(buf);
    goto LABEL_64;
  }

  __break(1u);
  return result;
}

void sub_1DE600034(int a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *__p, uint64_t a15, uint64_t a16, std::exception a17, uint64_t a18, char a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, int a26, __int16 a27, char a28, char a29, uint64_t a30, uint64_t a31, char a32)
{
  if (__p)
  {
    operator delete(__p);
  }

  if (a9)
  {
    operator delete(a9);
  }

  boost::exception_detail::clone_impl<boost::exception_detail::error_info_injector<CAException>>::~clone_impl(&a32);
  boost::exception_detail::error_info_injector<CAException>::~error_info_injector(&a19);
  std::exception::~exception(&a17);
  if (v33)
  {
    __cxa_free_exception(v32);
  }

  AMCP::Utility::With_Realtime_Disabled::~With_Realtime_Disabled(&a29);
  JUMPOUT(0x1DE6000BCLL);
}

void sub_1DE6000B8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, char a27)
{
  HALB_IOThread::Locker::~Locker(&a27);
  os_unfair_recursive_lock_unlock();
  _Unwind_Resume(a1);
}

uint64_t std::function<void ()(IORunningState)>::operator()(uint64_t a1, int a2)
{
  v3 = a2;
  if (!a1)
  {
    std::__throw_bad_function_call[abi:ne200100]();
  }

  return (*(*a1 + 48))(a1, &v3);
}

uint64_t HALS_IOContext_Legacy_Impl::IsAnyEngineMixing_Helper(HALS_IOContext_Legacy_Impl *this, BOOL *a2, HALS_IOEngineInfo *a3)
{
  v7 = *MEMORY[0x1E69E9840];
  if (*this)
  {
    result = 1;
  }

  else
  {
    if ((*(*a2 + 16))(a2))
    {
      *this = (*(*a2 + 320))(a2);
    }

    result = *this;
  }

  v6 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t caulk::concurrent::details::rt_message_call<HALS_IOContext_Legacy_Impl::SaveAnchorTime(unsigned long long,unsigned int)::$_0,std::tuple<char const*,int,unsigned long long>>::perform(uint64_t a1)
{
  v17 = *MEMORY[0x1E69E9840];
  v3 = **StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics;
  v2 = *(*StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics + 8);
  if (v2)
  {
    atomic_fetch_add_explicit(&v2->__shared_owners_, 1uLL, memory_order_relaxed);
    v4 = *v3;
    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  }

  else
  {
    v4 = *v3;
  }

  v5 = *(a1 + 20);
  if (os_log_type_enabled(v4, v5))
  {
    v6 = *(a1 + 24);
    v7 = *(a1 + 32);
    v8 = *(a1 + 40);
    v11 = 136315650;
    v12 = v6;
    v13 = 1024;
    v14 = v7;
    v15 = 2048;
    v16 = v8;
    _os_log_impl(&dword_1DE1F9000, v4, v5, "%32s:%-5d HALS_IOContext_Legacy_Impl::SaveAnchorTime:  %llu", &v11, 0x1Cu);
  }

  caulk::concurrent::message::~message(a1);
  if (!*MEMORY[0x1E69E3C08])
  {
    __break(1u);
  }

  result = caulk::rt_safe_memory_resource::rt_deallocate(*MEMORY[0x1E69E3C08], a1);
  v10 = *MEMORY[0x1E69E9840];
  return result;
}

void caulk::concurrent::details::rt_message_call<HALS_IOContext_Legacy_Impl::SaveAnchorTime(unsigned long long,unsigned int)::$_0,std::tuple<char const*,int,unsigned long long>>::~rt_message_call(caulk::concurrent::message *a1)
{
  caulk::concurrent::message::~message(a1);

  JUMPOUT(0x1E12C1730);
}

uint64_t HALS_IOContext_Legacy_Impl::TranslateTime(uint64_t this, const AudioTimeStamp *a2, AudioTimeStamp *a3)
{
  v3 = *(this + 1560);
  if (v3)
  {
    if (*(v3 + 88))
    {
      return HALS_IOClock::TranslateTime(*(v3 + 368), a2, a3);
    }
  }

  return this;
}

HALS_IOClock *HALS_IOContext_Legacy_Impl::GetCurrentTime(HALS_IOClock *this, AudioTimeStamp *a2)
{
  v2 = *(this + 195);
  if (v2 && *(v2 + 88))
  {
    this = *(v2 + 368);
    if (this)
    {
      return HALS_IOClock::GetCurrentTime(this, a2);
    }
  }

  return this;
}

uint64_t HALS_IOContext_Legacy_Impl::StopWaitingForTapStart(HALS_IOContext_Legacy_Impl *this)
{
  v1 = this;
  HALS_IOContext_Legacy_Impl::StopIOThread(this);
  v3 = v1 + 312;
  v4 = HALB_Mutex::Lock((v1 + 328));
  LODWORD(v1) = HALB_IOThread::HasBeenStopped((v1 + 312));
  HALB_IOThread::Locker::~Locker(&v3);
  return v1 ^ 1;
}

uint64_t HALS_IOContext_Legacy_Impl::BlockStartOnTapStart(HALS_IOContext_Legacy_Impl *this)
{
  v12[4] = *MEMORY[0x1E69E9840];
  v2 = (this + 312);
  HALB_IOThread::WaitForState((this + 312), 1735552612);
  v9 = v2;
  v10 = HALB_Mutex::Lock((this + 328));
  *(this + 492) = 0;
  while (1)
  {
    v11 = 0;
    v3 = *(this + 193);
    v12[0] = &unk_1F5987BC0;
    v12[1] = &v11 + 1;
    v12[2] = &v11;
    v12[3] = v12;
    v4 = for_all_taps(v3, v12);
    std::__function::__value_func<BOOL ()(HALS_Releaser<HALS_Tap>)>::~__value_func[abi:ne200100](v12);
    if (HIBYTE(v11) == 1 || (v4 & ~v11 & 1) == 0 || (HALB_IOThread::HasBeenStopped(v2) & 1) != 0)
    {
      break;
    }

    v5 = mach_absolute_time();
    HALS_IOContext_Legacy_Impl::IOWorkLoop_SleepUntilWakeTime(this, v5 + 2400000);
  }

  HasBeenStopped = HALB_IOThread::HasBeenStopped(v2);
  HALB_IOThread::Locker::~Locker(&v9);
  result = HasBeenStopped ^ 1u;
  v8 = *MEMORY[0x1E69E9840];
  return result;
}

void sub_1DE6005C8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, char a12)
{
  if (a2)
  {
    HALB_IOThread::Locker::~Locker(&a9);
    __cxa_begin_catch(exception_object);
    __cxa_end_catch();
    JUMPOUT(0x1DE600590);
  }

  _Unwind_Resume(exception_object);
}

void HALS_IOContext_Legacy_Impl::IOWorkLoop_SleepUntilWakeTime(HALS_IOContext_Legacy_Impl *this, unint64_t a2)
{
  v11 = 0;
  v4 = __udivti3();
  HALB_Guard::WaitUntil((this + 328), v4, &v11);
  v5 = mach_absolute_time();
  if (v11)
  {
    v7 = v5;
    if ((HALB_IOThread::HasBeenStopped((this + 312)) & 1) == 0 && v7 < a2)
    {
      HALB_Guard::WaitUntil((this + 328), v4, &v11);
    }
  }

  else
  {
    v8 = *(this + 195);
    v9 = 44100.0;
    if (v8 && *(v8 + 88) && (v9 = *(v8 + 848), v9 <= 0.0))
    {
      LODWORD(v10) = 100;
    }

    else
    {
      LODWORD(v6) = *(this + 340);
      v10 = (v6 / v9 * 0.05 * 1000.0 * 1000.0);
    }

    HALB_Mutex::Unlock((this + 328));
    usleep(v10);

    HALB_Mutex::Lock((this + 328));
  }
}

void HALS_IOContext_Legacy_Impl::WaitForTapStart(HALS_IOContext_Legacy_Impl *this)
{
  v2 = (this + 2112);
  if (*(this + 264))
  {
    HALS_IOContext_Legacy_Impl::StopWaitingForTapStart(this);
    std::thread::join(v2);
  }

  atomic_store(1u, this + 2120);
  v3 = *(*(this + 3) + 16);
  operator new();
}

void sub_1DE600890(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  std::unique_ptr<std::__thread_struct>::~unique_ptr[abi:ne200100](va);
  _Unwind_Resume(a1);
}

uint64_t **std::unique_ptr<std::tuple<std::unique_ptr<std::__thread_struct>,HALS_IOContext_Legacy_Impl::WaitForTapStart(void)::$_0>>::~unique_ptr[abi:ne200100](uint64_t **a1)
{
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    v3 = std::unique_ptr<std::__thread_struct>::~unique_ptr[abi:ne200100](v2);
    MEMORY[0x1E12C1730](v3, 0x1020C403A5D3213);
  }

  return a1;
}

uint64_t std::__thread_proxy[abi:ne200100]<std::tuple<std::unique_ptr<std::__thread_struct>,HALS_IOContext_Legacy_Impl::WaitForTapStart(void)::$_0>>(uint64_t *a1)
{
  v16 = *MEMORY[0x1E69E9840];
  v14 = a1;
  v1 = std::__thread_local_data();
  v2 = *v14;
  *v14 = 0;
  pthread_setspecific(v1->__key_, v2);
  v4 = HALS_ObjectMap::CopyObjectByObjectID(*(v14 + 2));
  if (v4)
  {
    v5 = *(v14 + 2);
    kdebug_trace();
    v6 = (*(**(v4 + 13) + 768))(*(v4 + 13));
    snprintf(__str, 0x12CuLL, "Tap wait thread: %u", v6);
    pthread_setname_np(__str);
    v7 = (*(**(v4 + 13) + 472))(*(v4 + 13));
    v8 = *(v14 + 2);
    kdebug_trace();
    if (v7)
    {
      (*(**(v4 + 13) + 488))(*(v4 + 13));
    }
  }

  HALS_ObjectMap::ReleaseObject(v4, v3);
  v9 = HALS_ObjectMap::CopyObjectByObjectID(*(v14 + 2));
  v11 = v9;
  if (v9)
  {
    (*(**(v9 + 104) + 496))(*(v9 + 104));
  }

  HALS_ObjectMap::ReleaseObject(v11, v10);
  std::unique_ptr<std::tuple<std::unique_ptr<std::__thread_struct>,HALS_IOContext_Legacy_Impl::WaitForTapStart(void)::$_0>>::~unique_ptr[abi:ne200100](&v14);
  v12 = *MEMORY[0x1E69E9840];
  return 0;
}