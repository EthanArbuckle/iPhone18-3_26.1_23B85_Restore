void std::vector<Phase::Controller::VoicePoolBufferEntry>::clear[abi:ne200100](uint64_t *a1)
{
  v2 = *a1;
  for (i = a1[1]; i != v2; i -= 40)
  {
    if (*(i - 9) < 0)
    {
      operator delete(*(i - 32));
    }
  }

  a1[1] = v2;
}

uint64_t std::vector<Phase::Controller::VoicePoolBufferEntry>::__emplace_back_slow_path<Phase::Controller::VoicePoolBufferEntry>(uint64_t *a1, uint64_t a2)
{
  v2 = 0xCCCCCCCCCCCCCCCDLL * ((a1[1] - *a1) >> 3);
  v3 = v2 + 1;
  if (v2 + 1 > 0x666666666666666)
  {
    std::vector<Phase::Controller::DVM23::SubmixController *>::__throw_length_error[abi:ne200100]();
  }

  if (0x999999999999999ALL * ((a1[2] - *a1) >> 3) > v3)
  {
    v3 = 0x999999999999999ALL * ((a1[2] - *a1) >> 3);
  }

  if (0xCCCCCCCCCCCCCCCDLL * ((a1[2] - *a1) >> 3) >= 0x333333333333333)
  {
    v5 = 0x666666666666666;
  }

  else
  {
    v5 = v3;
  }

  v17[4] = a1;
  if (v5)
  {
    if (v5 <= 0x666666666666666)
    {
      operator new();
    }

    std::__throw_bad_array_new_length[abi:ne200100]();
  }

  v6 = 40 * v2;
  *v6 = *a2;
  *(v6 + 8) = *(a2 + 8);
  v7 = *(a2 + 24);
  v8 = *(a2 + 32);
  *(a2 + 16) = 0;
  *(a2 + 24) = 0;
  *(a2 + 8) = 0;
  *(v6 + 24) = v7;
  *(v6 + 32) = v8;
  v10 = *a1;
  v9 = a1[1];
  v11 = v6 + *a1 - v9;
  if (*a1 != v9)
  {
    v12 = *a1;
    v13 = v6 + *a1 - v9;
    do
    {
      *v13 = *v12;
      v14 = *(v12 + 8);
      *(v13 + 24) = *(v12 + 24);
      *(v13 + 8) = v14;
      *(v12 + 16) = 0;
      *(v12 + 24) = 0;
      *(v12 + 8) = 0;
      *(v13 + 32) = *(v12 + 32);
      v12 += 40;
      v13 += 40;
    }

    while (v12 != v9);
    do
    {
      if (*(v10 + 31) < 0)
      {
        operator delete(*(v10 + 8));
      }

      v10 += 40;
    }

    while (v10 != v9);
    v10 = *a1;
  }

  *a1 = v11;
  a1[1] = v6 + 40;
  v15 = a1[2];
  a1[2] = 0;
  v17[2] = v10;
  v17[3] = v15;
  v17[0] = v10;
  v17[1] = v10;
  std::__split_buffer<Phase::Controller::VoicePoolBufferEntry>::~__split_buffer(v17);
  return v6 + 40;
}

uint64_t std::__split_buffer<Phase::Controller::VoicePoolBufferEntry>::~__split_buffer(uint64_t a1)
{
  v3 = *(a1 + 8);
  v2 = *(a1 + 16);
  if (v2 != v3)
  {
    do
    {
      v4 = v2 - 40;
      *(a1 + 16) = v2 - 40;
      if (*(v2 - 9) < 0)
      {
        operator delete(*(v2 - 32));
        v4 = *(a1 + 16);
      }

      v2 = v4;
    }

    while (v4 != v3);
  }

  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

uint64_t std::__function::__value_func<Phase::DspLayer23::VoicePool * ()(Phase::DspLayer23::VoiceEngine *,int)>::~__value_func[abi:ne200100](uint64_t a1)
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

Phase::DspLayer23::VoicePoolParallel *Phase::DspLayer23::VoicePoolParallel::VoicePoolParallel(Phase::DspLayer23::VoicePoolParallel *this, int a2, int a3, uint64_t a4)
{
  v7 = Phase::DspLayer23::VoicePool::VoicePool(this, a2, a3);
  *v7 = &unk_284D38780;
  v8 = (a4 + 127) & 0xFFFFFFFFFFFFFF80;
  *(v7 + 37) = 0u;
  *(v7 + 76) = v8;
  v9 = (((a2 + 3) & 0xFFFFFFFC) + 4);
  *(v7 + 77) = v9;
  v10 = malloc_type_aligned_alloc(0x80uLL, (v9 >> 2) * v8, 0x100004077774924uLL);
  *(this + 78) = v10;
  bzero(v10, (*(this + 77) >> 2) * *(this + 76));
  return this;
}

void Phase::DspLayer23::VoicePool::~VoicePool(void **this)
{
  *this = &unk_284D38690;
  free(this[69]);
  free(this[1]);
  free(this[2]);
}

void Phase::DspLayer23::VoicePoolParallel::~VoicePoolParallel(Phase::DspLayer23::VoicePoolParallel *this)
{
  *this = &unk_284D38780;
  if (*(this + 77) >= 4uLL)
  {
    v2 = 0;
    do
    {
      v3 = (*(this + 78) + *(this + 76) * v2);
      (**v3)(v3);
      ++v2;
    }

    while (v2 < *(this + 77) >> 2);
  }

  free(*(this + 78));
  *this = &unk_284D38690;
  free(*(this + 69));
  free(*(this + 1));
  free(*(this + 2));
}

uint64_t Phase::DspLayer23::VoicePoolParallel::PlayVoice(Phase::DspLayer23::VoicePoolParallel *this, unint64_t a2)
{
  v4 = this + 32;
  v5 = *(this + ((51 * (a2 ^ 0x25)) & 0x3F) + 4);
  if (!v5)
  {
    goto LABEL_7;
  }

  while (*v5 < a2)
  {
    v5 = v5[2];
    if (!v5)
    {
      goto LABEL_7;
    }
  }

  if (*v5 == a2)
  {
    v6 = v5[1];
  }

  else
  {
LABEL_7:
    v6 = -1;
  }

  if ((*(*this + 216))(this, v6))
  {
    v7 = *(this + 74);
    v8 = Phase::DspLayer23::BackedMapList<unsigned long long,unsigned long,true,64ull>::Put(v4, a2);
    if (v8)
    {
      v9 = (this + 592);
      *v8 = v7;
      v10 = *(this + 74);
      v11 = *(this + 78) + *(this + 76) * (v10 >> 2);
      (*(*v11 + 16))(v11, v10 & 3, a2);
      (*(*v11 + 32))(v11, v10 & 3);
LABEL_19:
      result = 0;
      ++*v9;
      return result;
    }

    return 1;
  }

  else
  {
    if ((*(*this + 208))(this, v6))
    {
      v12 = *(this + 78);
      v13 = *(this + 76);
      v14 = v12 + v13 * (v6 >> 2);
      v15 = *(this + 74);
      v16 = v12 + (v15 >> 2) * v13;
      (*(*v14 + 104))(v14, v6 & 3, v16, v15 & 3);
      v17 = Phase::DspLayer23::BackedMapList<unsigned long long,unsigned long,true,64ull>::Put(v4, a2);
      if (v17)
      {
        *v17 = v15;
      }

      v9 = (this + 592);
      (*(*v16 + 40))(v16, v15 & 3);
      v18 = *(this + 75);
      v19 = *(this + 77) - v18;
      if (v6 > v19)
      {
        v20 = v19 & 3;
        v21 = *(this + 78) + *(this + 76) * (v19 >> 2);
        v22 = Phase::DspLayer23::BackedMapList<unsigned long long,unsigned long,true,64ull>::Put(v4, *(v21 + 8 * v20 + 32));
        if (v22)
        {
          *v22 = v6;
        }

        (*(*v21 + 104))(v21, v20, v14, v6 & 3);
        v18 = *(this + 75);
      }

      *(this + 75) = v18 - 1;
      goto LABEL_19;
    }

    return 3;
  }
}

uint64_t Phase::DspLayer23::VoicePoolParallel::PauseVoice(Phase::DspLayer23::VoicePoolParallel *this, unint64_t a2)
{
  v4 = this + 32;
  v5 = *(this + ((51 * (a2 ^ 0x25)) & 0x3F) + 4);
  if (!v5)
  {
    goto LABEL_7;
  }

  while (*v5 < a2)
  {
    v5 = v5[2];
    if (!v5)
    {
      goto LABEL_7;
    }
  }

  if (*v5 == a2)
  {
    v6 = v5[1];
  }

  else
  {
LABEL_7:
    v6 = -1;
  }

  if ((*(*this + 200))(this, v6))
  {
    v7 = *(this + 78) + *(this + 76) * (v6 >> 2);
    (*(*v7 + 48))(v7, v6 & 3);
    v8 = *(this + 77) + ~*(this + 75);
    v9 = *(this + 78) + *(this + 76) * (v8 >> 2);
    v10 = Phase::DspLayer23::BackedMapList<unsigned long long,unsigned long,true,64ull>::Put(v4, a2);
    if (v10)
    {
      *v10 = v8;
    }

    (*(*v7 + 104))(v7, v6 & 3, v9, v8 & 3);
    v11 = *(this + 74) - 1;
    if (v6 < v11)
    {
      v12 = v11 & 3;
      v13 = *(this + 78) + *(this + 76) * (v11 >> 2);
      v14 = Phase::DspLayer23::BackedMapList<unsigned long long,unsigned long,true,64ull>::Put(v4, *(v13 + 8 * v12 + 32));
      if (v14)
      {
        *v14 = v6;
      }

      (*(*v13 + 104))(v13, v12, v7, v6 & 3);
      v11 = *(this + 74) - 1;
    }

    result = 0;
    ++*(this + 75);
    *(this + 74) = v11;
  }

  else if ((*(*this + 208))(this, v6))
  {
    return 4;
  }

  else
  {
    return 2;
  }

  return result;
}

uint64_t Phase::DspLayer23::VoicePoolParallel::StopVoice(Phase::DspLayer23::VoicePoolParallel *this, unint64_t a2)
{
  v4 = this + 32;
  v5 = *(this + ((51 * (a2 ^ 0x25)) & 0x3F) + 4);
  if (!v5)
  {
    goto LABEL_7;
  }

  while (*v5 < a2)
  {
    v5 = v5[2];
    if (!v5)
    {
      goto LABEL_7;
    }
  }

  if (*v5 == a2)
  {
    v6 = v5[1];
  }

  else
  {
LABEL_7:
    v6 = -1;
  }

  if ((*(*this + 200))(this, v6))
  {
    v7 = *(this + 78) + *(this + 76) * (v6 >> 2);
    (*(*v7 + 56))(v7, v6 & 3);
    Phase::DspLayer23::BackedMapList<unsigned long long,unsigned long,true,64ull>::Pop(v4, a2);
    v8 = *(this + 74) - 1;
    if (v6 < v8)
    {
      v9 = v8 & 3;
      v10 = *(this + 78) + *(this + 76) * (v8 >> 2);
      v11 = Phase::DspLayer23::BackedMapList<unsigned long long,unsigned long,true,64ull>::Put(v4, *(v10 + 8 * v9 + 32));
      if (v11)
      {
        *v11 = v6;
      }

      (*(*v10 + 104))(v10, v9, v7, v6 & 3);
      v8 = *(this + 74) - 1;
    }

    result = 0;
    *(this + 74) = v8;
  }

  else if ((*(*this + 208))(this, v6))
  {
    v13 = *(this + 78) + *(this + 76) * (v6 >> 2);
    (*(*v13 + 56))(v13, v6 & 3);
    Phase::DspLayer23::BackedMapList<unsigned long long,unsigned long,true,64ull>::Pop(v4, a2);
    v14 = *(this + 75);
    v15 = *(this + 77) - v14;
    if (v6 > v15)
    {
      v16 = v15 & 3;
      v17 = *(this + 78) + *(this + 76) * (v15 >> 2);
      v18 = Phase::DspLayer23::BackedMapList<unsigned long long,unsigned long,true,64ull>::Put(v4, *(v17 + 8 * v16 + 32));
      if (v18)
      {
        *v18 = v6;
      }

      (*(*v17 + 104))(v17, v16, v13, v6 & 3);
      v14 = *(this + 75);
    }

    result = 0;
    *(this + 75) = v14 - 1;
  }

  else
  {
    return 2;
  }

  return result;
}

unint64_t *Phase::DspLayer23::BackedMapList<unsigned long long,unsigned long,true,64ull>::Pop(uint64_t a1, unint64_t a2)
{
  v2 = (a1 + 8 * ((51 * (a2 ^ 0x25)) & 0x3F));
  v3 = *v2;
  if (!*v2)
  {
    return 0;
  }

  v4 = *v3;
  if (*v3 < a2)
  {
    while (1)
    {
      v5 = v3;
      v3 = v3[2];
      if (!v3)
      {
        return 0;
      }

      v4 = *v3;
      if (*v3 >= a2)
      {
        goto LABEL_7;
      }
    }
  }

  v5 = 0;
LABEL_7:
  if (v4 != a2)
  {
    return 0;
  }

  if (v5)
  {
    v2 = (v5 + 2);
  }

  *v2 = v3[2];
  v3[2] = *(a1 + 512);
  *(a1 + 512) = v3;
  --*(a1 + 528);
  return v3 + 1;
}

uint64_t Phase::DspLayer23::VoicePoolParallel::MoveVoiceTo(Phase::DspLayer23::VoicePoolParallel *this, unint64_t a2, Phase::DspLayer23::VoicePool *a3)
{
  v6 = (51 * (a2 ^ 0x25)) & 0x3F;
  v7 = *(this + v6 + 4);
  if (!v7)
  {
    goto LABEL_7;
  }

  while (*v7 < a2)
  {
    v7 = v7[2];
    if (!v7)
    {
      goto LABEL_7;
    }
  }

  if (*v7 == a2)
  {
    v8 = v7[1];
  }

  else
  {
LABEL_7:
    v8 = -1;
  }

  if ((*(*this + 216))(this, v8))
  {
    return 2;
  }

  result = (*(*a3 + 16))(a3, a2);
  if (!result)
  {
    if ((*(*this + 208))(this, v8))
    {
      (*(*a3 + 24))(a3, a2);
    }

    v11 = *(a3 + v6 + 4);
    if (!v11)
    {
      goto LABEL_19;
    }

    while (*v11 < a2)
    {
      v11 = v11[2];
      if (!v11)
      {
        goto LABEL_19;
      }
    }

    if (*v11 == a2)
    {
      v12 = v11[1];
    }

    else
    {
LABEL_19:
      v12 = -1;
    }

    v10 = *(this + 78) + *(this + 76) * (v8 >> 2);
    (*(*v10 + 104))(v10, v8 & 3, *(a3 + 78) + *(a3 + 76) * (v12 >> 2), v12 & 3);
    (*(*this + 32))(this, a2);
    return 0;
  }

  return result;
}

uint64_t Phase::DspLayer23::VoicePoolParallel::InputVoiceConnections(Phase::DspLayer23::VoicePoolParallel *this, unint64_t a2)
{
  v3 = *(this + ((51 * (a2 ^ 0x25)) & 0x3F) + 4);
  if (!v3)
  {
    goto LABEL_7;
  }

  while (*v3 < a2)
  {
    v3 = v3[2];
    if (!v3)
    {
      goto LABEL_7;
    }
  }

  if (*v3 == a2)
  {
    v4 = v3[1];
  }

  else
  {
LABEL_7:
    v4 = -1;
  }

  if ((*(*this + 216))(this, v4))
  {
    return 0;
  }

  v6 = *(*(*(this + 78) + *(this + 76) * (v4 >> 2)) + 64);

  return v6();
}

uint64_t Phase::DspLayer23::VoicePoolParallel::OutputVoiceConnections(Phase::DspLayer23::VoicePoolParallel *this, unint64_t a2)
{
  v3 = *(this + ((51 * (a2 ^ 0x25)) & 0x3F) + 4);
  if (!v3)
  {
    goto LABEL_7;
  }

  while (*v3 < a2)
  {
    v3 = v3[2];
    if (!v3)
    {
      goto LABEL_7;
    }
  }

  if (*v3 == a2)
  {
    v4 = v3[1];
  }

  else
  {
LABEL_7:
    v4 = -1;
  }

  if ((*(*this + 216))(this, v4))
  {
    return 0;
  }

  v6 = *(*(*(this + 78) + *(this + 76) * (v4 >> 2)) + 72);

  return v6();
}

uint64_t Phase::DspLayer23::VoicePoolParallel::InputAudioConnections(Phase::DspLayer23::VoicePoolParallel *this, unint64_t a2)
{
  v3 = *(this + ((51 * (a2 ^ 0x25)) & 0x3F) + 4);
  if (!v3)
  {
    goto LABEL_7;
  }

  while (*v3 < a2)
  {
    v3 = v3[2];
    if (!v3)
    {
      goto LABEL_7;
    }
  }

  if (*v3 == a2)
  {
    v4 = v3[1];
  }

  else
  {
LABEL_7:
    v4 = -1;
  }

  if ((*(*this + 216))(this, v4))
  {
    return 0;
  }

  v6 = *(*(*(this + 78) + *(this + 76) * (v4 >> 2)) + 80);

  return v6();
}

uint64_t Phase::DspLayer23::VoicePoolParallel::SetOutputBuffer(Phase::DspLayer23::VoicePoolParallel *this, unint64_t a2, int a3, float *a4)
{
  v5 = *(this + ((51 * (a2 ^ 0x25)) & 0x3F) + 4);
  if (!v5)
  {
    goto LABEL_7;
  }

  while (*v5 < a2)
  {
    v5 = v5[2];
    if (!v5)
    {
      goto LABEL_7;
    }
  }

  if (*v5 == a2)
  {
    v6 = v5[1];
  }

  else
  {
LABEL_7:
    v6 = -1;
  }

  if ((*(*this + 216))(this, v6))
  {
    return 2;
  }

  v8 = *(*(*(this + 78) + *(this + 76) * (v6 >> 2)) + 88);

  return v8();
}

uint64_t Phase::DspLayer23::VoicePoolParallel::GetOutputBuffer(Phase::DspLayer23::VoicePoolParallel *this, unint64_t a2)
{
  v3 = *(this + ((51 * (a2 ^ 0x25)) & 0x3F) + 4);
  if (!v3)
  {
    goto LABEL_7;
  }

  while (*v3 < a2)
  {
    v3 = v3[2];
    if (!v3)
    {
      goto LABEL_7;
    }
  }

  if (*v3 == a2)
  {
    v4 = v3[1];
  }

  else
  {
LABEL_7:
    v4 = -1;
  }

  if ((*(*this + 216))(this, v4))
  {
    return 0;
  }

  v6 = *(*(*(this + 78) + *(this + 76) * (v4 >> 2)) + 96);

  return v6();
}

uint64_t Phase::DspLayer23::VoicePoolParallel::SetParameter(Phase::DspLayer23::VoicePoolParallel *this, unint64_t a2, double a3)
{
  v5 = *(this + ((51 * (a2 ^ 0x25)) & 0x3F) + 4);
  if (!v5)
  {
    goto LABEL_7;
  }

  while (*v5 < a2)
  {
    v5 = v5[2];
    if (!v5)
    {
      goto LABEL_7;
    }
  }

  if (*v5 == a2)
  {
    v6 = v5[1];
  }

  else
  {
LABEL_7:
    v6 = -1;
  }

  if ((*(*this + 216))(this, v6))
  {
    return 2;
  }

  v9 = *(*(*(this + 78) + *(this + 76) * (v6 >> 2)) + 112);
  v7.n128_f64[0] = a3;

  return v9(v7);
}

uint64_t Phase::DspLayer23::VoicePoolParallel::UpdateParameters(Phase::DspLayer23::VoicePoolParallel *this, unint64_t a2)
{
  v3 = *(this + ((51 * (a2 ^ 0x25)) & 0x3F) + 4);
  if (!v3)
  {
    goto LABEL_7;
  }

  while (*v3 < a2)
  {
    v3 = v3[2];
    if (!v3)
    {
      goto LABEL_7;
    }
  }

  if (*v3 == a2)
  {
    v4 = v3[1];
  }

  else
  {
LABEL_7:
    v4 = -1;
  }

  if ((*(*this + 216))(this, v4))
  {
    return 2;
  }

  v6 = *(*(*(this + 78) + *(this + 76) * (v4 >> 2)) + 120);

  return v6();
}

uint64_t Phase::DspLayer23::VoicePoolParallel::SetData(Phase::DspLayer23::VoicePoolParallel *this, unint64_t a2, unint64_t a3, void *a4)
{
  v5 = *(this + ((51 * (a2 ^ 0x25)) & 0x3F) + 4);
  if (!v5)
  {
    goto LABEL_7;
  }

  while (*v5 < a2)
  {
    v5 = v5[2];
    if (!v5)
    {
      goto LABEL_7;
    }
  }

  if (*v5 == a2)
  {
    v6 = v5[1];
  }

  else
  {
LABEL_7:
    v6 = -1;
  }

  if ((*(*this + 216))(this, v6))
  {
    return 9;
  }

  v8 = *(*(*(this + 78) + *(this + 76) * (v6 >> 2)) + 128);

  return v8();
}

uint64_t Phase::DspLayer23::VoicePoolParallel::GetData(Phase::DspLayer23::VoicePoolParallel *this, unint64_t a2, uint64_t a3)
{
  v5 = *(this + ((51 * (a2 ^ 0x25)) & 0x3F) + 4);
  if (!v5)
  {
    goto LABEL_7;
  }

  while (*v5 < a2)
  {
    v5 = v5[2];
    if (!v5)
    {
      goto LABEL_7;
    }
  }

  if (*v5 == a2)
  {
    v6 = v5[1];
  }

  else
  {
LABEL_7:
    v6 = -1;
  }

  if ((*(*this + 216))(this, v6))
  {
    return 0;
  }

  v8 = *(this + 78) + *(this + 76) * (v6 >> 2);
  return (*(*v8 + 136))(v8, v6 & 3, a3);
}

std::chrono::duration<long long, std::ratio<1, 1000000000>>::rep Phase::DspLayer23::VoicePoolParallel::Process(Phase::DspLayer23::VoicePoolParallel *this, uint64_t a2)
{
  v4.__d_.__rep_ = std::chrono::steady_clock::now().__d_.__rep_;
  v5 = *(this + 74);
  if (v5)
  {
    v6 = v5 - 5;
    if (v5 < 5)
    {
      v8 = 0;
    }

    else
    {
      v7 = 0;
      v8 = (v6 >> 2) + 1;
      v9 = v6 & 0xFC;
      do
      {
        v10 = *(this + 78) + *(this + 76) * v7;
        (*(*v10 + 144))(v10, a2, 15);
        ++v7;
      }

      while (v8 != v7);
      LOBYTE(v5) = v5 - v9 - 4;
    }

    v11 = *(this + 78) + *(this + 76) * v8;
    (*(*v11 + 144))(v11, a2, ~(-1 << v5));
  }

  result = std::chrono::steady_clock::now().__d_.__rep_;
  *(this + 73) = result - v4.__d_.__rep_;
  return result;
}

unint64_t *Phase::DspLayer23::BackedMapList<unsigned long long,unsigned long,true,64ull>::Put(uint64_t a1, unint64_t a2)
{
  v2 = (a1 + 8 * ((51 * (a2 ^ 0x25)) & 0x3F));
  v3 = *v2;
  if (*v2)
  {
    v4 = *v3;
    if (*v3 >= a2)
    {
      v5 = 0;
LABEL_8:
      if (v4 == a2)
      {
        return v3 + 1;
      }
    }

    else
    {
      while (1)
      {
        v5 = v3;
        v3 = v3[2];
        if (!v3)
        {
          break;
        }

        v4 = *v3;
        if (*v3 >= a2)
        {
          goto LABEL_8;
        }
      }
    }
  }

  else
  {
    v5 = 0;
  }

  v7 = *(a1 + 512);
  if (!v7)
  {
    return 0;
  }

  *(a1 + 512) = v7[2];
  *v7 = a2;
  v7[2] = v3;
  if (v5)
  {
    v2 = (v5 + 2);
  }

  *v2 = v7;
  ++*(a1 + 528);
  return v7 + 1;
}

void Phase::Controller::VoicePoolRegistry::VoicePoolRegistry(Phase::Controller::VoicePoolRegistry *this)
{
  v1 = *MEMORY[0x277D85DE8];
  *this = 0u;
  *(this + 1) = 0u;
  *(this + 8) = 1065353216;
  Phase::DspLayer23::VPBiquadFilter::GetNewRegistryEntry(this);
}

void sub_23A52FA6C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *a14, uint64_t a15, int a16, __int16 a17, char a18, char a19, void *a20, uint64_t a21, int a22, __int16 a23, char a24, char a25, uint64_t a26, void *__p, uint64_t a28, int a29, __int16 a30, char a31, char a32, uint64_t a33, char a34)
{
  if (a32 < 0)
  {
    operator delete(__p);
  }

  std::__hash_table<std::__hash_value_type<Phase::DspLayer23::KernelType,std::unique_ptr<Phase::Controller::VoicePoolEntry const>>,std::__unordered_map_hasher<Phase::DspLayer23::KernelType,std::__hash_value_type<Phase::DspLayer23::KernelType,std::unique_ptr<Phase::Controller::VoicePoolEntry const>>,std::hash<Phase::DspLayer23::KernelType>,std::equal_to<Phase::DspLayer23::KernelType>,true>,std::__unordered_map_equal<Phase::DspLayer23::KernelType,std::__hash_value_type<Phase::DspLayer23::KernelType,std::unique_ptr<Phase::Controller::VoicePoolEntry const>>,std::equal_to<Phase::DspLayer23::KernelType>,std::hash<Phase::DspLayer23::KernelType>,true>,std::allocator<std::__hash_value_type<Phase::DspLayer23::KernelType,std::unique_ptr<Phase::Controller::VoicePoolEntry const>>>>::~__hash_table(v34);
  _Unwind_Resume(a1);
}

void **Phase::Controller::VoicePoolRegistry::AddVoicePoolEntry(int8x8_t *this, const Phase::Controller::VoicePoolEntry *a2)
{
  v2 = *(a2 + 3);
  v3 = this[1];
  if (!*&v3)
  {
    goto LABEL_18;
  }

  v4 = vcnt_s8(v3);
  v4.i16[0] = vaddlv_u8(v4);
  if (v4.u32[0] > 1uLL)
  {
    v5 = *(a2 + 3);
    if (*&v3 <= v2)
    {
      v5 = v2 % *&v3;
    }
  }

  else
  {
    v5 = (*&v3 - 1) & v2;
  }

  v6 = *(*this + 8 * v5);
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

  if (v7[2] != v2)
  {
    goto LABEL_17;
  }

  return std::unique_ptr<Phase::Controller::VoicePoolEntry const>::reset[abi:ne200100](v7 + 3, a2);
}

void sub_23A530190(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void **a9, char a10)
{
  std::unique_ptr<std::__hash_node<std::__hash_value_type<Phase::DspLayer23::KernelType,std::unique_ptr<Phase::Controller::VoicePoolEntry const>>,void *>,std::__hash_node_destructor<std::allocator<std::__hash_node<std::__hash_value_type<Phase::DspLayer23::KernelType,std::unique_ptr<Phase::Controller::VoicePoolEntry const>>,void *>>>>::~unique_ptr[abi:ne200100](&a10);
  std::unique_ptr<Phase::Controller::VoicePoolEntry const>::reset[abi:ne200100](&a9, 0);
  _Unwind_Resume(a1);
}

void *Phase::Controller::VoicePoolRegistry::CreateVoicePoolInstance(void *a1, unint64_t a2, uint64_t a3, int a4)
{
  v8 = a2;
  result = std::__hash_table<std::__hash_value_type<unsigned long long,Phase::Controller::Parameter<double>>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,Phase::Controller::Parameter<double>>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,Phase::Controller::Parameter<double>>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,Phase::Controller::Parameter<double>>>>::find<unsigned long long>(a1, &v8);
  if (result)
  {
    v7 = result[3];
    if (v7)
    {
      return std::function<Phase::DspLayer23::VoicePool * ()(Phase::DspLayer23::VoiceEngine *,int)>::operator()(v7 + 104, a3, a4);
    }

    else
    {
      return 0;
    }
  }

  return result;
}

uint64_t std::__hash_table<std::__hash_value_type<Phase::DspLayer23::KernelType,std::unique_ptr<Phase::Controller::VoicePoolEntry const>>,std::__unordered_map_hasher<Phase::DspLayer23::KernelType,std::__hash_value_type<Phase::DspLayer23::KernelType,std::unique_ptr<Phase::Controller::VoicePoolEntry const>>,std::hash<Phase::DspLayer23::KernelType>,std::equal_to<Phase::DspLayer23::KernelType>,true>,std::__unordered_map_equal<Phase::DspLayer23::KernelType,std::__hash_value_type<Phase::DspLayer23::KernelType,std::unique_ptr<Phase::Controller::VoicePoolEntry const>>,std::equal_to<Phase::DspLayer23::KernelType>,std::hash<Phase::DspLayer23::KernelType>,true>,std::allocator<std::__hash_value_type<Phase::DspLayer23::KernelType,std::unique_ptr<Phase::Controller::VoicePoolEntry const>>>>::~__hash_table(uint64_t a1)
{
  std::__hash_table<std::__hash_value_type<Phase::DspLayer23::KernelType,std::unique_ptr<Phase::Controller::VoicePoolEntry const>>,std::__unordered_map_hasher<Phase::DspLayer23::KernelType,std::__hash_value_type<Phase::DspLayer23::KernelType,std::unique_ptr<Phase::Controller::VoicePoolEntry const>>,std::hash<Phase::DspLayer23::KernelType>,std::equal_to<Phase::DspLayer23::KernelType>,true>,std::__unordered_map_equal<Phase::DspLayer23::KernelType,std::__hash_value_type<Phase::DspLayer23::KernelType,std::unique_ptr<Phase::Controller::VoicePoolEntry const>>,std::equal_to<Phase::DspLayer23::KernelType>,std::hash<Phase::DspLayer23::KernelType>,true>,std::allocator<std::__hash_value_type<Phase::DspLayer23::KernelType,std::unique_ptr<Phase::Controller::VoicePoolEntry const>>>>::__deallocate_node(a1, *(a1 + 16));
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    operator delete(v2);
  }

  return a1;
}

void std::__hash_table<std::__hash_value_type<Phase::DspLayer23::KernelType,std::unique_ptr<Phase::Controller::VoicePoolEntry const>>,std::__unordered_map_hasher<Phase::DspLayer23::KernelType,std::__hash_value_type<Phase::DspLayer23::KernelType,std::unique_ptr<Phase::Controller::VoicePoolEntry const>>,std::hash<Phase::DspLayer23::KernelType>,std::equal_to<Phase::DspLayer23::KernelType>,true>,std::__unordered_map_equal<Phase::DspLayer23::KernelType,std::__hash_value_type<Phase::DspLayer23::KernelType,std::unique_ptr<Phase::Controller::VoicePoolEntry const>>,std::equal_to<Phase::DspLayer23::KernelType>,std::hash<Phase::DspLayer23::KernelType>,true>,std::allocator<std::__hash_value_type<Phase::DspLayer23::KernelType,std::unique_ptr<Phase::Controller::VoicePoolEntry const>>>>::__deallocate_node(uint64_t a1, void ***a2)
{
  if (a2)
  {
    v2 = a2;
    do
    {
      v3 = *v2;
      std::unique_ptr<Phase::Controller::VoicePoolEntry const>::reset[abi:ne200100](v2 + 3, 0);
      operator delete(v2);
      v2 = v3;
    }

    while (v3);
  }
}

void Phase::DspLayer23::VPConvolver<1>::~VPConvolver(Phase::DspLayer23::VoicePoolSerial *a1)
{
  Phase::DspLayer23::VoicePoolSerial::~VoicePoolSerial(a1);

  JUMPOUT(0x23EE864A0);
}

void **Phase::DspLayer23::ConvolverSlice<1>::~ConvolverSlice(void **a1)
{
  free(a1[62]);
  free(a1[44]);
  free(a1[28]);
  return a1;
}

void Phase::DspLayer23::ConvolverSlice<1>::~ConvolverSlice(void **a1)
{
  free(a1[62]);
  free(a1[44]);
  free(a1[28]);

  JUMPOUT(0x23EE86490);
}

uint64_t Phase::DspLayer23::SliceSerial::StartVoice(Phase::DspLayer23::SliceSerial *this, uint64_t a2)
{
  (*(*this + 24))(this);
  *(this + 4) = a2;
  *(this + 5) = 0;
  return 1;
}

double Phase::DspLayer23::ConvolverSlice<1>::Reset(uint64_t a1)
{
  *(a1 + 232) = 0;
  *(a1 + 360) = 0;
  *(a1 + 552) = 0;
  result = 0.0;
  *(a1 + 504) = 0u;
  *(a1 + 520) = 0u;
  *(a1 + 32) = -1;
  return result;
}

uint64_t Phase::DspLayer23::ConvolverSlice<1>::OnStop(uint64_t result)
{
  v1 = *(result + 520);
  if (v1)
  {
    atomic_store(0, (v1 + 12));
  }

  v2 = *(result + 528);
  if (v2)
  {
    atomic_store(0, (v2 + 12));
  }

  return result;
}

double Phase::DspLayer23::ConvolverSlice<1>::MoveStateTo(uint64_t a1, uint64_t a2)
{
  *(a2 + 32) = *(a1 + 32);
  v2 = *(a2 + 224);
  v3 = *(a1 + 176);
  v5 = *(a1 + 128);
  v4 = *(a1 + 144);
  *(a2 + 160) = *(a1 + 160);
  *(a2 + 176) = v3;
  *(a2 + 128) = v5;
  *(a2 + 144) = v4;
  v6 = *(a1 + 224);
  v7 = *(a1 + 240);
  v8 = *(a1 + 208);
  *(a2 + 192) = *(a1 + 192);
  *(a2 + 208) = v8;
  *(a2 + 224) = v6;
  *(a2 + 240) = v7;
  *(a1 + 224) = v2;
  *(a1 + 232) = 0;
  v9 = *(a2 + 496);
  v11 = *(a1 + 480);
  v10 = *(a1 + 496);
  v12 = *(a1 + 448);
  *(a2 + 464) = *(a1 + 464);
  *(a2 + 480) = v11;
  *(a2 + 448) = v12;
  v14 = *(a1 + 416);
  v13 = *(a1 + 432);
  *(a2 + 400) = *(a1 + 400);
  *(a2 + 416) = v14;
  *(a2 + 432) = v13;
  *(a2 + 496) = v10;
  *(a2 + 384) = *(a1 + 384);
  *(a1 + 496) = v9;
  *(a1 + 504) = 0;
  v15 = *(a2 + 352);
  v16 = *(a1 + 304);
  v17 = *(a1 + 272);
  *(a2 + 288) = *(a1 + 288);
  *(a2 + 304) = v16;
  *(a2 + 272) = v17;
  v18 = *(a1 + 336);
  v19 = *(a1 + 352);
  v20 = *(a1 + 368);
  *(a2 + 320) = *(a1 + 320);
  *(a2 + 336) = v18;
  *(a2 + 352) = v19;
  *(a2 + 368) = v20;
  *(a2 + 256) = *(a1 + 256);
  *(a1 + 352) = v15;
  *(a1 + 360) = 0;
  *(a2 + 512) = *(a1 + 512);
  *(a2 + 520) = *(a1 + 520);
  *(a2 + 528) = *(a1 + 528);
  *(a2 + 536) = *(a1 + 536);
  *(a2 + 544) = *(a1 + 544);
  *(a2 + 552) = *(a1 + 552);
  *(a2 + 561) = *(a1 + 561);
  *(a2 + 562) = *(a1 + 562);
  *(a2 + 560) = *(a1 + 560);
  *(a1 + 552) = 0;
  result = 0.0;
  *(a1 + 520) = 0u;
  return result;
}

void Phase::DspLayer23::ConvolverSlice<1>::Process(uint64_t a1, int a2)
{
  v58 = *MEMORY[0x277D85DE8];
  v4 = a2;
  v5 = 4 * a2;
  MEMORY[0x28223BE20](a1);
  v7 = (&v50 - v6);
  bzero(&v50 - v6, v5);
  v8 = Phase::DspLayer23::AudioConnections::Sum((a1 + 384), v4, v7);
  v9 = *(a1 + 552);
  if (!v9)
  {
    if (*(a1 + 560) == 1)
    {
      v15 = **(Phase::Logger::GetInstance(v8) + 160);
      if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
      {
        v16 = *(a1 + 32);
        *buf = 136315906;
        *&buf[4] = "VPConvolver.hpp";
        v54 = 1024;
        v55 = 233;
        v56 = 1024;
        *v57 = 1;
        *&v57[4] = 2048;
        *&v57[6] = v16;
        _os_log_impl(&dword_23A302000, v15, OS_LOG_TYPE_ERROR, "%25s:%-5d Convolver1x%d[%llx] buffer exchanger is nullptr. Output will be silent.", buf, 0x22u);
      }

      *(a1 + 560) = 0;
    }

    goto LABEL_45;
  }

  v10 = v8;
  *(a1 + 560) = 1;
  v11 = atomic_exchange(v9, 0);
  if (v11)
  {
    v12 = *v11;
    if (*v11)
    {
      v13 = *(a1 + 520);
      if (v13)
      {
        v14 = *v13;
        if (v12 == *v13)
        {
LABEL_34:
          *(a1 + 561) = 1;
          goto LABEL_35;
        }
      }

      else
      {
        v14 = 0;
      }

      atomic_store(1u, (v11 + 12));
      v17 = *(v11 + 8);
      (*(*v12 + 40))(v12);
      v8 = (*(*v12 + 56))(v12);
      if (v8 == 128)
      {
        v8 = (*(*v12 + 64))(v12);
        if (v8 == 1)
        {
          v18 = *(a1 + 528);
          if (v18)
          {
            atomic_store(0, (v18 + 12));
          }

          *(a1 + 528) = *(a1 + 520);
          *(a1 + 520) = v11;
          v8 = Phase::DspLayer23::SliceSerial::CallbackToVoiceEngine<Phase::DspLayer::IConvolver *>(*(a1 + 16), *(a1 + 32), v12);
          if (v14)
          {
            (*(*v12 + 104))(v12, v14);
            v19 = v17 + 127;
            if (v17 >= 0)
            {
              v19 = v17;
            }

            v20 = (v19 & 0xFFFFFF80) + 128;
            if ((v17 & 0x7F) != 0)
            {
              v21 = v20;
            }

            else
            {
              v21 = v17;
            }

            if ((v21 & 0x7F) != 0)
            {
              __assert_rtn("SwapConvolverInternal", "VPConvolver.hpp", 199, "(numCrossfadeFrames % DspLayer::kCanonicalConvolverBlockSize) == 0");
            }

            if (*(a1 + 544) >= 1)
            {
              v22 = _os_log_pack_size();
              Instance = Phase::Logger::GetInstance(v22);
              if (caulk::deferred_logger::create_message(*(Instance + 1248), v22 + 88, 0))
              {
                v24 = _os_log_pack_fill();
                v25 = *(a1 + 16);
                v26 = *(a1 + 32);
                v27 = *(a1 + 548);
                v28 = *(a1 + 544);
                v29 = *(*(v25 + 576) + 96);
                *v24 = 67110400;
                *(v24 + 4) = 1;
                *(v24 + 8) = 2048;
                *(v24 + 10) = v25;
                *(v24 + 18) = 2048;
                *(v24 + 20) = v26;
                *(v24 + 28) = 1024;
                *(v24 + 30) = v27;
                *(v24 + 34) = 1024;
                *(v24 + 36) = v28;
                *(v24 + 40) = 2048;
                *(v24 + 42) = v29;
                Phase::Logger::GetInstance(v24);
                caulk::concurrent::messenger::enqueue();
              }
            }

            *(a1 + 536) = 1065353216;
            *(a1 + 540) = -1.0 / (v21 - 1);
            *(a1 + 544) = v21;
            v30 = (*(*v12 + 72))(v12);
            v31 = (*(*v12 + 40))(v12);
            if (v31 <= (*(*v12 + 56))(v12))
            {
              v33 = 0;
            }

            else
            {
              v32 = (*(*v12 + 80))(v12, (v30 - 1));
              v33 = (*(*v32 + 56))(v32);
            }

            *(a1 + 548) = v33;
            v8 = (*(*v14 + 40))(v14);
          }

          goto LABEL_34;
        }
      }
    }

    if (*(a1 + 561) == 1)
    {
      v34 = **(Phase::Logger::GetInstance(v8) + 160);
      if (os_log_type_enabled(v34, OS_LOG_TYPE_ERROR))
      {
        v35 = *(a1 + 32);
        *buf = 136315906;
        *&buf[4] = "VPConvolver.hpp";
        v54 = 1024;
        v55 = 253;
        v56 = 1024;
        *v57 = 1;
        *&v57[4] = 2048;
        *&v57[6] = v35;
        _os_log_impl(&dword_23A302000, v34, OS_LOG_TYPE_ERROR, "%25s:%-5d Convolver1x%d[%llx] failed to swap buffer. Output will be silent.", buf, 0x22u);
      }

      *(a1 + 561) = 0;
    }

    goto LABEL_45;
  }

LABEL_35:
  v36 = *(a1 + 520);
  if (!v36)
  {
    if (*(a1 + 562) == 1)
    {
      v40 = **(Phase::Logger::GetInstance(v8) + 160);
      if (os_log_type_enabled(v40, OS_LOG_TYPE_ERROR))
      {
        v41 = *(a1 + 32);
        *buf = 136315906;
        *&buf[4] = "VPConvolver.hpp";
        v54 = 1024;
        v55 = 271;
        v56 = 2048;
        *v57 = a1;
        *&v57[8] = 2048;
        *&v57[10] = v41;
        _os_log_impl(&dword_23A302000, v40, OS_LOG_TYPE_ERROR, "%25s:%-5d ConvolverVoicePool: slice%p (vid %llu) mConvolverBufferActive == nullptr. Output will be silent. \n", buf, 0x26u);
      }

      *(a1 + 562) = 0;
    }

LABEL_45:
    vDSP_vclr(*(a1 + 512), 1, v4);
    return;
  }

  *(a1 + 562) = 1;
  v37 = *v36;
  v38 = *(a1 + 528);
  if (v38 && (v39 = *v38) != 0)
  {
    if (*(a1 + 548) < 1)
    {
      (*(*v37 + 24))(v37, v10, a1 + 512);
      v42 = 1.0 - *(a1 + 536);
      __Step = -*(a1 + 540);
      *buf = v42;
      vDSP_vrampmul(*(a1 + 512), 1, buf, &__Step, *(a1 + 512), 1, v4);
      MEMORY[0x28223BE20](v43);
      bzero(&v50 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), v5);
      *buf = &v50 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
      (*(*v39 + 24))(v39, v10, buf);
      v44 = *(a1 + 536);
      v51 = *(a1 + 540);
      __Step = v44;
      vDSP_vrampmuladd(*buf, 1, &__Step, &v51, *(a1 + 512), 1, v4);
      v45 = v51;
      *(a1 + 536) = __Step;
      *(a1 + 540) = v45;
      v46 = *(a1 + 544);
      v47 = __OFSUB__(v46, a2);
      v48 = v46 - a2;
      *(a1 + 544) = v48;
      if ((v48 < 0) ^ v47 | (v48 == 0))
      {
        v49 = *(a1 + 528);
        if (v49)
        {
          atomic_store(0, (v49 + 12));
        }

        *(a1 + 528) = 0;
        *(a1 + 536) = 0;
        *(a1 + 544) = 0;
      }
    }

    else
    {
      MEMORY[0x28223BE20](v8);
      bzero(&v50 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), v5);
      *buf = &v50 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
      (*(*v39 + 24))(v39, v10, a1 + 512);
      (*(*v37 + 24))(v37, v10, buf);
      *(a1 + 548) -= a2;
    }
  }

  else
  {
    (*(*v37 + 24))(v37, v10, a1 + 512);
  }
}

size_t Phase::DspLayer23::SliceSerial::CallbackToVoiceEngine<Phase::DspLayer::IConvolver *>(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v12 = *MEMORY[0x277D85DE8];
  v9 = 0;
  v10[0] = 112;
  v11 = a3;
  v8[0] = &v9;
  v8[1] = 20;
  result = strlen(v10);
  v8[2] = ((result >> 2 << 34) + 0xC00000000) >> 32;
  v8[3] = 0;
  v6 = *(a1 + 576);
  v7 = *(v6 + 184);
  if (v7)
  {
    return v7(*(v6 + 192), a1, a2, v8);
  }

  return result;
}

void Phase::DspLayer23::VPConvolver<2>::~VPConvolver(Phase::DspLayer23::VoicePoolSerial *a1)
{
  Phase::DspLayer23::VoicePoolSerial::~VoicePoolSerial(a1);

  JUMPOUT(0x23EE864A0);
}

uint64_t Phase::DspLayer23::ConvolverSlice<2>::~ConvolverSlice(uint64_t a1)
{
  free(*(a1 + 624));
  for (i = 480; i != 224; i -= 128)
  {
    free(*(a1 + i));
  }

  free(*(a1 + 224));
  return a1;
}

void Phase::DspLayer23::ConvolverSlice<2>::~ConvolverSlice(uint64_t a1)
{
  free(*(a1 + 624));
  for (i = 480; i != 224; i -= 128)
  {
    free(*(a1 + i));
  }

  free(*(a1 + 224));

  JUMPOUT(0x23EE86490);
}

double Phase::DspLayer23::ConvolverSlice<2>::Reset(uint64_t a1)
{
  *(a1 + 232) = 0;
  *(a1 + 360) = 0;
  *(a1 + 488) = 0;
  *(a1 + 688) = 0;
  *(a1 + 664) = 0;
  result = 0.0;
  *(a1 + 632) = 0u;
  *(a1 + 648) = 0u;
  *(a1 + 32) = -1;
  return result;
}

uint64_t Phase::DspLayer23::ConvolverSlice<2>::OnStop(uint64_t result)
{
  v1 = *(result + 656);
  if (v1)
  {
    atomic_store(0, (v1 + 12));
  }

  v2 = *(result + 664);
  if (v2)
  {
    atomic_store(0, (v2 + 12));
  }

  return result;
}

double Phase::DspLayer23::ConvolverSlice<2>::MoveStateTo(uint64_t a1, uint64_t a2)
{
  *(a2 + 32) = *(a1 + 32);
  v2 = *(a2 + 224);
  v3 = *(a1 + 176);
  v5 = *(a1 + 128);
  v4 = *(a1 + 144);
  *(a2 + 160) = *(a1 + 160);
  *(a2 + 176) = v3;
  *(a2 + 128) = v5;
  *(a2 + 144) = v4;
  v6 = *(a1 + 224);
  v7 = *(a1 + 240);
  v8 = *(a1 + 208);
  *(a2 + 192) = *(a1 + 192);
  *(a2 + 208) = v8;
  *(a2 + 224) = v6;
  *(a2 + 240) = v7;
  *(a1 + 224) = v2;
  *(a1 + 232) = 0;
  v9 = *(a2 + 624);
  v11 = *(a1 + 608);
  v10 = *(a1 + 624);
  v12 = *(a1 + 576);
  *(a2 + 592) = *(a1 + 592);
  *(a2 + 608) = v11;
  *(a2 + 576) = v12;
  v14 = *(a1 + 544);
  v13 = *(a1 + 560);
  *(a2 + 528) = *(a1 + 528);
  *(a2 + 544) = v14;
  *(a2 + 560) = v13;
  *(a2 + 624) = v10;
  *(a2 + 512) = *(a1 + 512);
  *(a1 + 624) = v9;
  *(a1 + 632) = 0;
  v15 = *(a2 + 352);
  v16 = *(a1 + 272);
  v17 = *(a1 + 304);
  *(a2 + 288) = *(a1 + 288);
  *(a2 + 304) = v17;
  *(a2 + 272) = v16;
  v18 = *(a1 + 352);
  v19 = *(a1 + 368);
  v20 = *(a1 + 336);
  *(a2 + 320) = *(a1 + 320);
  *(a2 + 336) = v20;
  *(a2 + 352) = v18;
  *(a2 + 368) = v19;
  *(a2 + 256) = *(a1 + 256);
  *(a1 + 352) = v15;
  *(a1 + 360) = 0;
  *(a2 + 640) = *(a1 + 640);
  v21 = *(a2 + 480);
  v22 = *(a1 + 400);
  v23 = *(a1 + 432);
  *(a2 + 416) = *(a1 + 416);
  *(a2 + 432) = v23;
  *(a2 + 400) = v22;
  v25 = *(a1 + 448);
  v24 = *(a1 + 464);
  v26 = *(a1 + 496);
  *(a2 + 480) = *(a1 + 480);
  *(a2 + 496) = v26;
  *(a2 + 448) = v25;
  *(a2 + 464) = v24;
  *(a2 + 384) = *(a1 + 384);
  *(a1 + 480) = v21;
  *(a1 + 488) = 0;
  *(a2 + 648) = *(a1 + 648);
  *(a2 + 656) = *(a1 + 656);
  *(a2 + 672) = *(a1 + 672);
  *(a2 + 680) = *(a1 + 680);
  *(a2 + 688) = *(a1 + 688);
  *(a2 + 697) = *(a1 + 697);
  *(a2 + 698) = *(a1 + 698);
  *(a2 + 696) = *(a1 + 696);
  *(a1 + 688) = 0;
  result = 0.0;
  *(a1 + 656) = 0u;
  return result;
}

void Phase::DspLayer23::ConvolverSlice<2>::Process(uint64_t a1, int a2)
{
  v64 = *MEMORY[0x277D85DE8];
  v4 = a2;
  MEMORY[0x28223BE20](a1);
  v6 = (&v58 - v5);
  bzero(&v58 - v5, v7);
  v8 = Phase::DspLayer23::AudioConnections::Sum((a1 + 512), v4, v6);
  v9 = *(a1 + 688);
  if (!v9)
  {
    if (*(a1 + 696) == 1)
    {
      v15 = **(Phase::Logger::GetInstance(v8) + 160);
      if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
      {
        v16 = *(a1 + 32);
        *buf = 136315906;
        *&buf[4] = "VPConvolver.hpp";
        *&buf[12] = 1024;
        *&buf[14] = 233;
        v62 = 1024;
        *v63 = 2;
        *&v63[4] = 2048;
        *&v63[6] = v16;
        _os_log_impl(&dword_23A302000, v15, OS_LOG_TYPE_ERROR, "%25s:%-5d Convolver1x%d[%llx] buffer exchanger is nullptr. Output will be silent.", buf, 0x22u);
      }

      *(a1 + 696) = 0;
    }

    goto LABEL_45;
  }

  v10 = v8;
  *(a1 + 696) = 1;
  v11 = atomic_exchange(v9, 0);
  if (v11)
  {
    v12 = *v11;
    if (*v11)
    {
      v13 = *(a1 + 656);
      if (v13)
      {
        v14 = *v13;
        if (v12 == *v13)
        {
LABEL_34:
          *(a1 + 697) = 1;
          goto LABEL_35;
        }
      }

      else
      {
        v14 = 0;
      }

      atomic_store(1u, (v11 + 12));
      v17 = *(v11 + 8);
      (*(*v12 + 40))(v12);
      v8 = (*(*v12 + 56))(v12);
      if (v8 == 128)
      {
        v8 = (*(*v12 + 64))(v12);
        if (v8 == 2)
        {
          v18 = *(a1 + 664);
          if (v18)
          {
            atomic_store(0, (v18 + 12));
          }

          *(a1 + 664) = *(a1 + 656);
          *(a1 + 656) = v11;
          v8 = Phase::DspLayer23::SliceSerial::CallbackToVoiceEngine<Phase::DspLayer::IConvolver *>(*(a1 + 16), *(a1 + 32), v12);
          if (v14)
          {
            (*(*v12 + 104))(v12, v14);
            v19 = v17 + 127;
            if (v17 >= 0)
            {
              v19 = v17;
            }

            v20 = (v19 & 0xFFFFFF80) + 128;
            if ((v17 & 0x7F) != 0)
            {
              v21 = v20;
            }

            else
            {
              v21 = v17;
            }

            if ((v21 & 0x7F) != 0)
            {
              __assert_rtn("SwapConvolverInternal", "VPConvolver.hpp", 199, "(numCrossfadeFrames % DspLayer::kCanonicalConvolverBlockSize) == 0");
            }

            if (*(a1 + 680) >= 1)
            {
              v22 = _os_log_pack_size();
              Instance = Phase::Logger::GetInstance(v22);
              if (caulk::deferred_logger::create_message(*(Instance + 1248), v22 + 88, 0))
              {
                v24 = _os_log_pack_fill();
                v25 = *(a1 + 16);
                v26 = *(a1 + 32);
                v27 = *(a1 + 684);
                v28 = *(a1 + 680);
                v29 = *(*(v25 + 576) + 96);
                *v24 = 67110400;
                *(v24 + 4) = 2;
                *(v24 + 8) = 2048;
                *(v24 + 10) = v25;
                *(v24 + 18) = 2048;
                *(v24 + 20) = v26;
                *(v24 + 28) = 1024;
                *(v24 + 30) = v27;
                *(v24 + 34) = 1024;
                *(v24 + 36) = v28;
                *(v24 + 40) = 2048;
                *(v24 + 42) = v29;
                Phase::Logger::GetInstance(v24);
                caulk::concurrent::messenger::enqueue();
              }
            }

            *(a1 + 672) = 1065353216;
            *(a1 + 676) = -1.0 / (v21 - 1);
            *(a1 + 680) = v21;
            v30 = (*(*v12 + 72))(v12);
            v31 = (*(*v12 + 40))(v12);
            if (v31 <= (*(*v12 + 56))(v12))
            {
              v33 = 0;
            }

            else
            {
              v32 = (*(*v12 + 80))(v12, (v30 - 1));
              v33 = (*(*v32 + 56))(v32);
            }

            *(a1 + 684) = v33;
            v8 = (*(*v14 + 40))(v14);
          }

          goto LABEL_34;
        }
      }
    }

    if (*(a1 + 697) == 1)
    {
      v34 = **(Phase::Logger::GetInstance(v8) + 160);
      if (os_log_type_enabled(v34, OS_LOG_TYPE_ERROR))
      {
        v35 = *(a1 + 32);
        *buf = 136315906;
        *&buf[4] = "VPConvolver.hpp";
        *&buf[12] = 1024;
        *&buf[14] = 253;
        v62 = 1024;
        *v63 = 2;
        *&v63[4] = 2048;
        *&v63[6] = v35;
        _os_log_impl(&dword_23A302000, v34, OS_LOG_TYPE_ERROR, "%25s:%-5d Convolver1x%d[%llx] failed to swap buffer. Output will be silent.", buf, 0x22u);
      }

      *(a1 + 697) = 0;
    }

    goto LABEL_45;
  }

LABEL_35:
  v36 = *(a1 + 656);
  if (!v36)
  {
    if (*(a1 + 698) == 1)
    {
      v43 = **(Phase::Logger::GetInstance(v8) + 160);
      if (os_log_type_enabled(v43, OS_LOG_TYPE_ERROR))
      {
        v44 = *(a1 + 32);
        *buf = 136315906;
        *&buf[4] = "VPConvolver.hpp";
        *&buf[12] = 1024;
        *&buf[14] = 271;
        v62 = 2048;
        *v63 = a1;
        *&v63[8] = 2048;
        *&v63[10] = v44;
        _os_log_impl(&dword_23A302000, v43, OS_LOG_TYPE_ERROR, "%25s:%-5d ConvolverVoicePool: slice%p (vid %llu) mConvolverBufferActive == nullptr. Output will be silent. \n", buf, 0x26u);
      }

      *(a1 + 698) = 0;
    }

LABEL_45:
    vDSP_vclr(*(a1 + 640), 1, v4);
    vDSP_vclr(*(a1 + 648), 1, v4);
    return;
  }

  *(a1 + 698) = 1;
  v37 = *v36;
  v38 = *(a1 + 664);
  if (v38 && (v39 = *v38) != 0)
  {
    if (*(a1 + 684) < 1)
    {
      v45 = a1 + 664;
      (*(*v37 + 24))(v37, v10, a1 + 640);
      v46 = 0;
      v47 = 1;
      do
      {
        v48 = v47;
        v49 = 1.0 - *(a1 + 672);
        __Step = -*(a1 + 676);
        *buf = v49;
        vDSP_vrampmul(*(a1 + 640 + 8 * v46), 1, buf, &__Step, *(a1 + 640 + 8 * v46), 1, v4);
        v47 = 0;
        v46 = 1;
      }

      while ((v48 & 1) != 0);
      MEMORY[0x28223BE20](v50);
      v52 = &v58 - v51;
      bzero(&v58 - v51, v53);
      *buf = v52;
      *&buf[8] = &v52[4 * v4];
      (*(*v39 + 24))(v39, v10, buf);
      v54 = *(a1 + 672);
      v59 = *(a1 + 676);
      __Step = v54;
      vDSP_vrampmuladd(*buf, 1, &__Step, &v59, *(a1 + 640), 1, v4);
      v55 = *(a1 + 672);
      v59 = *(a1 + 676);
      __Step = v55;
      vDSP_vrampmuladd(*&buf[8], 1, &__Step, &v59, *(a1 + 648), 1, v4);
      v56 = v59;
      *(a1 + 672) = __Step;
      *(a1 + 676) = v56;
      v57 = *(a1 + 680) - a2;
      *(a1 + 680) = v57;
      if (v57 < 1)
      {
        if (*v45)
        {
          atomic_store(0, (*v45 + 12));
        }

        *v45 = 0;
        *(a1 + 672) = 0;
        *(a1 + 680) = 0;
      }
    }

    else
    {
      MEMORY[0x28223BE20](v8);
      v41 = &v58 - v40;
      bzero(&v58 - v40, v42);
      *buf = v41;
      *&buf[8] = &v41[4 * v4];
      (*(*v39 + 24))(v39, v10, a1 + 640);
      (*(*v37 + 24))(v37, v10, buf);
      *(a1 + 684) -= a2;
    }
  }

  else
  {
    (*(*v37 + 24))(v37, v10, a1 + 640);
  }
}

void Phase::DspLayer23::VPConvolver<3>::~VPConvolver(Phase::DspLayer23::VoicePoolSerial *a1)
{
  Phase::DspLayer23::VoicePoolSerial::~VoicePoolSerial(a1);

  JUMPOUT(0x23EE864A0);
}

uint64_t Phase::DspLayer23::ConvolverSlice<3>::~ConvolverSlice(uint64_t a1)
{
  free(*(a1 + 752));
  for (i = 608; i != 224; i -= 128)
  {
    free(*(a1 + i));
  }

  free(*(a1 + 224));
  return a1;
}

void Phase::DspLayer23::ConvolverSlice<3>::~ConvolverSlice(uint64_t a1)
{
  free(*(a1 + 752));
  for (i = 608; i != 224; i -= 128)
  {
    free(*(a1 + i));
  }

  free(*(a1 + 224));

  JUMPOUT(0x23EE86490);
}

double Phase::DspLayer23::ConvolverSlice<3>::Reset(uint64_t a1)
{
  *(a1 + 232) = 0;
  *(a1 + 360) = 0;
  *(a1 + 488) = 0;
  *(a1 + 616) = 0;
  *(a1 + 824) = 0;
  result = 0.0;
  *(a1 + 760) = 0u;
  *(a1 + 776) = 0u;
  *(a1 + 792) = 0u;
  *(a1 + 32) = -1;
  return result;
}

uint64_t Phase::DspLayer23::ConvolverSlice<3>::OnStop(uint64_t result)
{
  v1 = *(result + 792);
  if (v1)
  {
    atomic_store(0, (v1 + 12));
  }

  v2 = *(result + 800);
  if (v2)
  {
    atomic_store(0, (v2 + 12));
  }

  return result;
}

double Phase::DspLayer23::ConvolverSlice<3>::MoveStateTo(uint64_t a1, uint64_t a2)
{
  v2 = 0;
  *(a2 + 32) = *(a1 + 32);
  v3 = *(a2 + 224);
  v4 = *(a1 + 176);
  v6 = *(a1 + 128);
  v5 = *(a1 + 144);
  *(a2 + 160) = *(a1 + 160);
  *(a2 + 176) = v4;
  *(a2 + 128) = v6;
  *(a2 + 144) = v5;
  v7 = *(a1 + 224);
  v8 = *(a1 + 240);
  v9 = *(a1 + 208);
  *(a2 + 192) = *(a1 + 192);
  *(a2 + 208) = v9;
  *(a2 + 224) = v7;
  *(a2 + 240) = v8;
  *(a1 + 224) = v3;
  *(a1 + 232) = 0;
  v10 = *(a2 + 752);
  v11 = *(a1 + 656);
  v12 = *(a1 + 688);
  *(a2 + 672) = *(a1 + 672);
  *(a2 + 688) = v12;
  *(a2 + 656) = v11;
  v14 = *(a1 + 736);
  v13 = *(a1 + 752);
  v15 = *(a1 + 720);
  *(a2 + 704) = *(a1 + 704);
  *(a2 + 720) = v15;
  *(a2 + 736) = v14;
  *(a2 + 752) = v13;
  *(a2 + 640) = *(a1 + 640);
  *(a1 + 752) = v10;
  *(a1 + 760) = 0;
  v16 = 768;
  do
  {
    v17 = a1 + v2;
    v18 = (a2 + v2);
    v19 = *(a2 + v2 + 352);
    v20 = *(a1 + v2 + 304);
    v22 = *(a1 + v2 + 256);
    v21 = *(a1 + v2 + 272);
    v18[18] = *(a1 + v2 + 288);
    v18[19] = v20;
    v18[16] = v22;
    v18[17] = v21;
    v23 = *(a1 + v2 + 352);
    v24 = *(a1 + v2 + 368);
    v25 = *(a1 + v2 + 336);
    v18[20] = *(a1 + v2 + 320);
    v18[21] = v25;
    v18[22] = v23;
    v18[23] = v24;
    *(v17 + 352) = v19;
    v26 = *(a1 + v16);
    *(v17 + 360) = 0;
    *(a2 + v16) = v26;
    v2 += 128;
    v16 += 8;
  }

  while (v2 != 384);
  *(a2 + 792) = *(a1 + 792);
  *(a2 + 800) = *(a1 + 800);
  *(a2 + 808) = *(a1 + 808);
  *(a2 + 816) = *(a1 + 816);
  *(a2 + 824) = *(a1 + 824);
  *(a2 + 834) = *(a1 + 834);
  *(a2 + 832) = *(a1 + 832);
  *(a1 + 824) = 0;
  result = 0.0;
  *(a1 + 792) = 0u;
  return result;
}

void Phase::DspLayer23::ConvolverSlice<3>::Process(uint64_t a1, int a2)
{
  v63 = *MEMORY[0x277D85DE8];
  v4 = a2;
  MEMORY[0x28223BE20](a1);
  v6 = (&v59 - v5);
  bzero(&v59 - v5, v7);
  v8 = Phase::DspLayer23::AudioConnections::Sum((a1 + 640), v4, v6);
  v9 = *(a1 + 824);
  if (!v9)
  {
    if (*(a1 + 832) == 1)
    {
      v15 = **(Phase::Logger::GetInstance(v8) + 160);
      if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
      {
        v16 = *(a1 + 32);
        *buf = 136315906;
        *&buf[4] = "VPConvolver.hpp";
        *&buf[12] = 1024;
        *&buf[14] = 233;
        *&buf[18] = 1024;
        *&buf[20] = 3;
        *&buf[24] = 2048;
        *&buf[26] = v16;
        _os_log_impl(&dword_23A302000, v15, OS_LOG_TYPE_ERROR, "%25s:%-5d Convolver1x%d[%llx] buffer exchanger is nullptr. Output will be silent.", buf, 0x22u);
      }

      *(a1 + 832) = 0;
    }

    goto LABEL_45;
  }

  v10 = v8;
  *(a1 + 832) = 1;
  v11 = atomic_exchange(v9, 0);
  if (v11)
  {
    v12 = *v11;
    if (*v11)
    {
      v13 = *(a1 + 792);
      if (v13)
      {
        v14 = *v13;
        if (v12 == *v13)
        {
LABEL_34:
          *(a1 + 833) = 1;
          goto LABEL_35;
        }
      }

      else
      {
        v14 = 0;
      }

      atomic_store(1u, (v11 + 12));
      v17 = *(v11 + 8);
      (*(*v12 + 40))(v12);
      v8 = (*(*v12 + 56))(v12);
      if (v8 == 128)
      {
        v8 = (*(*v12 + 64))(v12);
        if (v8 == 3)
        {
          v18 = *(a1 + 800);
          if (v18)
          {
            atomic_store(0, (v18 + 12));
          }

          *(a1 + 800) = *(a1 + 792);
          *(a1 + 792) = v11;
          v8 = Phase::DspLayer23::SliceSerial::CallbackToVoiceEngine<Phase::DspLayer::IConvolver *>(*(a1 + 16), *(a1 + 32), v12);
          if (v14)
          {
            (*(*v12 + 104))(v12, v14);
            v19 = v17 + 127;
            if (v17 >= 0)
            {
              v19 = v17;
            }

            v20 = (v19 & 0xFFFFFF80) + 128;
            if ((v17 & 0x7F) != 0)
            {
              v21 = v20;
            }

            else
            {
              v21 = v17;
            }

            if ((v21 & 0x7F) != 0)
            {
              __assert_rtn("SwapConvolverInternal", "VPConvolver.hpp", 199, "(numCrossfadeFrames % DspLayer::kCanonicalConvolverBlockSize) == 0");
            }

            if (*(a1 + 816) >= 1)
            {
              v22 = _os_log_pack_size();
              Instance = Phase::Logger::GetInstance(v22);
              if (caulk::deferred_logger::create_message(*(Instance + 1248), v22 + 88, 0))
              {
                v24 = _os_log_pack_fill();
                v25 = *(a1 + 16);
                v26 = *(a1 + 32);
                v27 = *(a1 + 820);
                v28 = *(a1 + 816);
                v29 = *(*(v25 + 576) + 96);
                *v24 = 67110400;
                *(v24 + 4) = 3;
                *(v24 + 8) = 2048;
                *(v24 + 10) = v25;
                *(v24 + 18) = 2048;
                *(v24 + 20) = v26;
                *(v24 + 28) = 1024;
                *(v24 + 30) = v27;
                *(v24 + 34) = 1024;
                *(v24 + 36) = v28;
                *(v24 + 40) = 2048;
                *(v24 + 42) = v29;
                Phase::Logger::GetInstance(v24);
                caulk::concurrent::messenger::enqueue();
              }
            }

            *(a1 + 808) = 1065353216;
            *(a1 + 812) = -1.0 / (v21 - 1);
            *(a1 + 816) = v21;
            v30 = (*(*v12 + 72))(v12);
            v31 = (*(*v12 + 40))(v12);
            if (v31 <= (*(*v12 + 56))(v12))
            {
              v33 = 0;
            }

            else
            {
              v32 = (*(*v12 + 80))(v12, (v30 - 1));
              v33 = (*(*v32 + 56))(v32);
            }

            *(a1 + 820) = v33;
            v8 = (*(*v14 + 40))(v14);
          }

          goto LABEL_34;
        }
      }
    }

    if (*(a1 + 833) == 1)
    {
      v34 = **(Phase::Logger::GetInstance(v8) + 160);
      if (os_log_type_enabled(v34, OS_LOG_TYPE_ERROR))
      {
        v35 = *(a1 + 32);
        *buf = 136315906;
        *&buf[4] = "VPConvolver.hpp";
        *&buf[12] = 1024;
        *&buf[14] = 253;
        *&buf[18] = 1024;
        *&buf[20] = 3;
        *&buf[24] = 2048;
        *&buf[26] = v35;
        _os_log_impl(&dword_23A302000, v34, OS_LOG_TYPE_ERROR, "%25s:%-5d Convolver1x%d[%llx] failed to swap buffer. Output will be silent.", buf, 0x22u);
      }

      *(a1 + 833) = 0;
    }

    goto LABEL_45;
  }

LABEL_35:
  v36 = *(a1 + 792);
  if (!v36)
  {
    if (*(a1 + 834) == 1)
    {
      v43 = **(Phase::Logger::GetInstance(v8) + 160);
      if (os_log_type_enabled(v43, OS_LOG_TYPE_ERROR))
      {
        v44 = *(a1 + 32);
        *buf = 136315906;
        *&buf[4] = "VPConvolver.hpp";
        *&buf[12] = 1024;
        *&buf[14] = 271;
        *&buf[18] = 2048;
        *&buf[20] = a1;
        *&buf[28] = 2048;
        *&buf[30] = v44;
        _os_log_impl(&dword_23A302000, v43, OS_LOG_TYPE_ERROR, "%25s:%-5d ConvolverVoicePool: slice%p (vid %llu) mConvolverBufferActive == nullptr. Output will be silent. \n", buf, 0x26u);
      }

      *(a1 + 834) = 0;
    }

LABEL_45:
    v45 = 0;
    v46 = a1 + 768;
    do
    {
      vDSP_vclr(*(v46 + v45), 1, v4);
      v45 += 8;
    }

    while (v45 != 24);
    return;
  }

  *(a1 + 834) = 1;
  v37 = *v36;
  v38 = *(a1 + 800);
  if (v38 && (v39 = *v38) != 0)
  {
    if (*(a1 + 820) < 1)
    {
      v47 = a1 + 800;
      v48 = a1 + 768;
      (*(*v37 + 24))(v37, v10, a1 + 768);
      for (i = 0; i != 24; i += 8)
      {
        v50 = 1.0 - *(a1 + 808);
        __Step = -*(a1 + 812);
        *buf = v50;
        vDSP_vrampmul(*(v48 + i), 1, buf, &__Step, *(v48 + i), 1, v4);
      }

      MEMORY[0x28223BE20](v51);
      v53 = &v59 - v52;
      bzero(&v59 - v52, v54);
      *buf = v53;
      *&buf[8] = &v53[4 * v4];
      *&buf[16] = &v53[8 * v4];
      (*(*v39 + 24))(v39, v10, buf);
      for (j = 0; j != 24; j += 8)
      {
        v56 = *(a1 + 808);
        v60 = *(a1 + 812);
        __Step = v56;
        vDSP_vrampmuladd(*&buf[j], 1, &__Step, &v60, *(v48 + j), 1, v4);
      }

      v57 = v60;
      *(a1 + 808) = __Step;
      *(a1 + 812) = v57;
      v58 = *(a1 + 816) - a2;
      *(a1 + 816) = v58;
      if (v58 < 1)
      {
        if (*v47)
        {
          atomic_store(0, (*v47 + 12));
        }

        *v47 = 0;
        *(a1 + 808) = 0;
        *(a1 + 816) = 0;
      }
    }

    else
    {
      MEMORY[0x28223BE20](v8);
      v41 = &v59 - v40;
      bzero(&v59 - v40, v42);
      *buf = v41;
      *&buf[8] = &v41[4 * v4];
      *&buf[16] = &v41[8 * v4];
      (*(*v39 + 24))(v39, v10, a1 + 768);
      (*(*v37 + 24))(v37, v10, buf);
      *(a1 + 820) -= a2;
    }
  }

  else
  {
    (*(*v37 + 24))(v37, v10, a1 + 768);
  }
}

void Phase::DspLayer23::VPConvolver<4>::~VPConvolver(Phase::DspLayer23::VoicePoolSerial *a1)
{
  Phase::DspLayer23::VoicePoolSerial::~VoicePoolSerial(a1);

  JUMPOUT(0x23EE864A0);
}

uint64_t Phase::DspLayer23::ConvolverSlice<4>::~ConvolverSlice(uint64_t a1)
{
  free(*(a1 + 880));
  for (i = 736; i != 224; i -= 128)
  {
    free(*(a1 + i));
  }

  free(*(a1 + 224));
  return a1;
}

void Phase::DspLayer23::ConvolverSlice<4>::~ConvolverSlice(uint64_t a1)
{
  free(*(a1 + 880));
  for (i = 736; i != 224; i -= 128)
  {
    free(*(a1 + i));
  }

  free(*(a1 + 224));

  JUMPOUT(0x23EE86490);
}

double Phase::DspLayer23::ConvolverSlice<4>::Reset(uint64_t a1)
{
  *(a1 + 232) = 0;
  *(a1 + 360) = 0;
  *(a1 + 488) = 0;
  *(a1 + 616) = 0;
  *(a1 + 744) = 0;
  *(a1 + 960) = 0;
  *(a1 + 936) = 0;
  result = 0.0;
  *(a1 + 888) = 0u;
  *(a1 + 904) = 0u;
  *(a1 + 920) = 0u;
  *(a1 + 32) = -1;
  return result;
}

uint64_t Phase::DspLayer23::ConvolverSlice<4>::OnStop(uint64_t result)
{
  v1 = *(result + 928);
  if (v1)
  {
    atomic_store(0, (v1 + 12));
  }

  v2 = *(result + 936);
  if (v2)
  {
    atomic_store(0, (v2 + 12));
  }

  return result;
}

double Phase::DspLayer23::ConvolverSlice<4>::MoveStateTo(uint64_t a1, uint64_t a2)
{
  v2 = 0;
  *(a2 + 32) = *(a1 + 32);
  v3 = *(a2 + 224);
  v4 = *(a1 + 176);
  v6 = *(a1 + 128);
  v5 = *(a1 + 144);
  *(a2 + 160) = *(a1 + 160);
  *(a2 + 176) = v4;
  *(a2 + 128) = v6;
  *(a2 + 144) = v5;
  v7 = *(a1 + 224);
  v8 = *(a1 + 240);
  v9 = *(a1 + 208);
  *(a2 + 192) = *(a1 + 192);
  *(a2 + 208) = v9;
  *(a2 + 224) = v7;
  *(a2 + 240) = v8;
  *(a1 + 224) = v3;
  *(a1 + 232) = 0;
  v10 = *(a2 + 880);
  v11 = *(a1 + 784);
  v12 = *(a1 + 816);
  *(a2 + 800) = *(a1 + 800);
  *(a2 + 816) = v12;
  *(a2 + 784) = v11;
  v14 = *(a1 + 864);
  v13 = *(a1 + 880);
  v15 = *(a1 + 848);
  *(a2 + 832) = *(a1 + 832);
  *(a2 + 848) = v15;
  *(a2 + 864) = v14;
  *(a2 + 880) = v13;
  *(a2 + 768) = *(a1 + 768);
  *(a1 + 880) = v10;
  *(a1 + 888) = 0;
  v16 = 896;
  do
  {
    v17 = a1 + v2;
    v18 = (a2 + v2);
    v19 = *(a2 + v2 + 352);
    v20 = *(a1 + v2 + 304);
    v22 = *(a1 + v2 + 256);
    v21 = *(a1 + v2 + 272);
    v18[18] = *(a1 + v2 + 288);
    v18[19] = v20;
    v18[16] = v22;
    v18[17] = v21;
    v23 = *(a1 + v2 + 352);
    v24 = *(a1 + v2 + 368);
    v25 = *(a1 + v2 + 336);
    v18[20] = *(a1 + v2 + 320);
    v18[21] = v25;
    v18[22] = v23;
    v18[23] = v24;
    *(v17 + 352) = v19;
    v26 = *(a1 + v16);
    *(v17 + 360) = 0;
    *(a2 + v16) = v26;
    v2 += 128;
    v16 += 8;
  }

  while (v2 != 512);
  *(a2 + 928) = *(a1 + 928);
  *(a2 + 944) = *(a1 + 944);
  *(a2 + 952) = *(a1 + 952);
  *(a2 + 960) = *(a1 + 960);
  *(a2 + 970) = *(a1 + 970);
  *(a2 + 968) = *(a1 + 968);
  *(a1 + 960) = 0;
  result = 0.0;
  *(a1 + 928) = 0u;
  return result;
}

void Phase::DspLayer23::ConvolverSlice<4>::Process(uint64_t a1, int a2)
{
  v65 = *MEMORY[0x277D85DE8];
  v4 = a2;
  MEMORY[0x28223BE20](a1);
  v6 = (&v61 - v5);
  bzero(&v61 - v5, v7);
  v8 = Phase::DspLayer23::AudioConnections::Sum((a1 + 768), v4, v6);
  v9 = *(a1 + 960);
  if (!v9)
  {
    if (*(a1 + 968) == 1)
    {
      v15 = **(Phase::Logger::GetInstance(v8) + 160);
      if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
      {
        v16 = *(a1 + 32);
        *buf = 136315906;
        *&buf[4] = "VPConvolver.hpp";
        *&buf[12] = 1024;
        *&buf[14] = 233;
        *&buf[18] = 1024;
        *&buf[20] = 4;
        *&buf[24] = 2048;
        *&buf[26] = v16;
        _os_log_impl(&dword_23A302000, v15, OS_LOG_TYPE_ERROR, "%25s:%-5d Convolver1x%d[%llx] buffer exchanger is nullptr. Output will be silent.", buf, 0x22u);
      }

      *(a1 + 968) = 0;
    }

    goto LABEL_47;
  }

  v10 = v8;
  *(a1 + 968) = 1;
  v11 = atomic_exchange(v9, 0);
  if (v11)
  {
    v12 = *v11;
    if (*v11)
    {
      v13 = *(a1 + 928);
      if (v13)
      {
        v14 = *v13;
        if (v12 == *v13)
        {
LABEL_34:
          *(a1 + 969) = 1;
          goto LABEL_35;
        }
      }

      else
      {
        v14 = 0;
      }

      atomic_store(1u, (v11 + 12));
      v17 = *(v11 + 8);
      (*(*v12 + 40))(v12);
      v8 = (*(*v12 + 56))(v12);
      if (v8 == 128)
      {
        v8 = (*(*v12 + 64))(v12);
        if (v8 == 4)
        {
          v18 = *(a1 + 936);
          if (v18)
          {
            atomic_store(0, (v18 + 12));
          }

          *(a1 + 936) = *(a1 + 928);
          *(a1 + 928) = v11;
          v8 = Phase::DspLayer23::SliceSerial::CallbackToVoiceEngine<Phase::DspLayer::IConvolver *>(*(a1 + 16), *(a1 + 32), v12);
          if (v14)
          {
            (*(*v12 + 104))(v12, v14);
            v19 = v17 + 127;
            if (v17 >= 0)
            {
              v19 = v17;
            }

            v20 = (v19 & 0xFFFFFF80) + 128;
            if ((v17 & 0x7F) != 0)
            {
              v21 = v20;
            }

            else
            {
              v21 = v17;
            }

            if ((v21 & 0x7F) != 0)
            {
              __assert_rtn("SwapConvolverInternal", "VPConvolver.hpp", 199, "(numCrossfadeFrames % DspLayer::kCanonicalConvolverBlockSize) == 0");
            }

            if (*(a1 + 952) >= 1)
            {
              v22 = _os_log_pack_size();
              Instance = Phase::Logger::GetInstance(v22);
              if (caulk::deferred_logger::create_message(*(Instance + 1248), v22 + 88, 0))
              {
                v24 = _os_log_pack_fill();
                v25 = *(a1 + 16);
                v26 = *(a1 + 32);
                v27 = *(a1 + 956);
                v28 = *(a1 + 952);
                v29 = *(*(v25 + 576) + 96);
                *v24 = 67110400;
                *(v24 + 4) = 4;
                *(v24 + 8) = 2048;
                *(v24 + 10) = v25;
                *(v24 + 18) = 2048;
                *(v24 + 20) = v26;
                *(v24 + 28) = 1024;
                *(v24 + 30) = v27;
                *(v24 + 34) = 1024;
                *(v24 + 36) = v28;
                *(v24 + 40) = 2048;
                *(v24 + 42) = v29;
                Phase::Logger::GetInstance(v24);
                caulk::concurrent::messenger::enqueue();
              }
            }

            *(a1 + 944) = 1065353216;
            *(a1 + 948) = -1.0 / (v21 - 1);
            *(a1 + 952) = v21;
            v30 = (*(*v12 + 72))(v12);
            v31 = (*(*v12 + 40))(v12);
            if (v31 <= (*(*v12 + 56))(v12))
            {
              v33 = 0;
            }

            else
            {
              v32 = (*(*v12 + 80))(v12, (v30 - 1));
              v33 = (*(*v32 + 56))(v32);
            }

            *(a1 + 956) = v33;
            v8 = (*(*v14 + 40))(v14);
          }

          goto LABEL_34;
        }
      }
    }

    if (*(a1 + 969) == 1)
    {
      v34 = **(Phase::Logger::GetInstance(v8) + 160);
      if (os_log_type_enabled(v34, OS_LOG_TYPE_ERROR))
      {
        v35 = *(a1 + 32);
        *buf = 136315906;
        *&buf[4] = "VPConvolver.hpp";
        *&buf[12] = 1024;
        *&buf[14] = 253;
        *&buf[18] = 1024;
        *&buf[20] = 4;
        *&buf[24] = 2048;
        *&buf[26] = v35;
        _os_log_impl(&dword_23A302000, v34, OS_LOG_TYPE_ERROR, "%25s:%-5d Convolver1x%d[%llx] failed to swap buffer. Output will be silent.", buf, 0x22u);
      }

      *(a1 + 969) = 0;
    }

    goto LABEL_47;
  }

LABEL_35:
  v36 = *(a1 + 928);
  if (!v36)
  {
    if (*(a1 + 970) == 1)
    {
      v44 = **(Phase::Logger::GetInstance(v8) + 160);
      if (os_log_type_enabled(v44, OS_LOG_TYPE_ERROR))
      {
        v45 = *(a1 + 32);
        *buf = 136315906;
        *&buf[4] = "VPConvolver.hpp";
        *&buf[12] = 1024;
        *&buf[14] = 271;
        *&buf[18] = 2048;
        *&buf[20] = a1;
        *&buf[28] = 2048;
        *&buf[30] = v45;
        _os_log_impl(&dword_23A302000, v44, OS_LOG_TYPE_ERROR, "%25s:%-5d ConvolverVoicePool: slice%p (vid %llu) mConvolverBufferActive == nullptr. Output will be silent. \n", buf, 0x26u);
      }

      *(a1 + 970) = 0;
    }

LABEL_47:
    v46 = 0;
    v47 = a1 + 896;
    do
    {
      vDSP_vclr(*(v47 + v46), 1, v4);
      v46 += 8;
    }

    while (v46 != 32);
    return;
  }

  *(a1 + 970) = 1;
  v37 = *v36;
  v38 = *(a1 + 936);
  if (v38 && (v39 = *v38) != 0)
  {
    if (*(a1 + 956) < 1)
    {
      v48 = a1 + 936;
      v49 = a1 + 896;
      (*(*v37 + 24))(v37, v10, a1 + 896);
      for (i = 0; i != 32; i += 8)
      {
        v51 = 1.0 - *(a1 + 944);
        __Step = -*(a1 + 948);
        *buf = v51;
        vDSP_vrampmul(*(v49 + i), 1, buf, &__Step, *(v49 + i), 1, v4);
      }

      MEMORY[0x28223BE20](v52);
      v54 = &v61 - 4 * v53;
      bzero(v54, v55);
      v56 = 0;
      memset(buf, 0, 32);
      do
      {
        *&buf[v56] = v54;
        v56 += 8;
        v54 += 4 * v4;
      }

      while (v56 != 32);
      (*(*v39 + 24))(v39, v10, buf);
      for (j = 0; j != 32; j += 8)
      {
        v58 = *(a1 + 944);
        v62 = *(a1 + 948);
        __Step = v58;
        vDSP_vrampmuladd(*&buf[j], 1, &__Step, &v62, *(v49 + j), 1, v4);
      }

      v59 = v62;
      *(a1 + 944) = __Step;
      *(a1 + 948) = v59;
      v60 = *(a1 + 952) - a2;
      *(a1 + 952) = v60;
      if (v60 < 1)
      {
        if (*v48)
        {
          atomic_store(0, (*v48 + 12));
        }

        *v48 = 0;
        *(a1 + 944) = 0;
        *(a1 + 952) = 0;
      }
    }

    else
    {
      MEMORY[0x28223BE20](v8);
      v41 = &v61 - 4 * v40;
      bzero(v41, v42);
      v43 = 0;
      memset(buf, 0, 32);
      do
      {
        *&buf[v43] = v41;
        v43 += 8;
        v41 += 4 * v4;
      }

      while (v43 != 32);
      (*(*v39 + 24))(v39, v10, a1 + 896);
      (*(*v37 + 24))(v37, v10, buf);
      *(a1 + 956) -= a2;
    }
  }

  else
  {
    (*(*v37 + 24))(v37, v10, a1 + 896);
  }
}

void Phase::DspLayer23::VPConvolver<5>::~VPConvolver(Phase::DspLayer23::VoicePoolSerial *a1)
{
  Phase::DspLayer23::VoicePoolSerial::~VoicePoolSerial(a1);

  JUMPOUT(0x23EE864A0);
}

uint64_t Phase::DspLayer23::ConvolverSlice<5>::~ConvolverSlice(uint64_t a1)
{
  free(*(a1 + 1008));
  for (i = 864; i != 224; i -= 128)
  {
    free(*(a1 + i));
  }

  free(*(a1 + 224));
  return a1;
}

void Phase::DspLayer23::ConvolverSlice<5>::~ConvolverSlice(uint64_t a1)
{
  free(*(a1 + 1008));
  for (i = 864; i != 224; i -= 128)
  {
    free(*(a1 + i));
  }

  free(*(a1 + 224));

  JUMPOUT(0x23EE86490);
}

double Phase::DspLayer23::ConvolverSlice<5>::Reset(uint64_t a1)
{
  *(a1 + 232) = 0;
  *(a1 + 360) = 0;
  *(a1 + 488) = 0;
  *(a1 + 616) = 0;
  *(a1 + 744) = 0;
  *(a1 + 872) = 0;
  *(a1 + 1096) = 0;
  result = 0.0;
  *(a1 + 1016) = 0u;
  *(a1 + 1032) = 0u;
  *(a1 + 1048) = 0u;
  *(a1 + 1064) = 0u;
  *(a1 + 32) = -1;
  return result;
}

uint64_t Phase::DspLayer23::ConvolverSlice<5>::OnStop(uint64_t result)
{
  v1 = *(result + 1064);
  if (v1)
  {
    atomic_store(0, (v1 + 12));
  }

  v2 = *(result + 1072);
  if (v2)
  {
    atomic_store(0, (v2 + 12));
  }

  return result;
}

double Phase::DspLayer23::ConvolverSlice<5>::MoveStateTo(uint64_t a1, uint64_t a2)
{
  v2 = 0;
  *(a2 + 32) = *(a1 + 32);
  v3 = *(a2 + 224);
  v4 = *(a1 + 176);
  v6 = *(a1 + 128);
  v5 = *(a1 + 144);
  *(a2 + 160) = *(a1 + 160);
  *(a2 + 176) = v4;
  *(a2 + 128) = v6;
  *(a2 + 144) = v5;
  v7 = *(a1 + 224);
  v8 = *(a1 + 240);
  v9 = *(a1 + 208);
  *(a2 + 192) = *(a1 + 192);
  *(a2 + 208) = v9;
  *(a2 + 224) = v7;
  *(a2 + 240) = v8;
  *(a1 + 224) = v3;
  *(a1 + 232) = 0;
  v10 = *(a2 + 1008);
  v11 = *(a1 + 912);
  v12 = *(a1 + 944);
  *(a2 + 928) = *(a1 + 928);
  *(a2 + 944) = v12;
  *(a2 + 912) = v11;
  v14 = *(a1 + 992);
  v13 = *(a1 + 1008);
  v15 = *(a1 + 976);
  *(a2 + 960) = *(a1 + 960);
  *(a2 + 976) = v15;
  *(a2 + 992) = v14;
  *(a2 + 1008) = v13;
  *(a2 + 896) = *(a1 + 896);
  *(a1 + 1008) = v10;
  *(a1 + 1016) = 0;
  v16 = 1024;
  do
  {
    v17 = a1 + v2;
    v18 = (a2 + v2);
    v19 = *(a2 + v2 + 352);
    v20 = *(a1 + v2 + 304);
    v22 = *(a1 + v2 + 256);
    v21 = *(a1 + v2 + 272);
    v18[18] = *(a1 + v2 + 288);
    v18[19] = v20;
    v18[16] = v22;
    v18[17] = v21;
    v23 = *(a1 + v2 + 352);
    v24 = *(a1 + v2 + 368);
    v25 = *(a1 + v2 + 336);
    v18[20] = *(a1 + v2 + 320);
    v18[21] = v25;
    v18[22] = v23;
    v18[23] = v24;
    *(v17 + 352) = v19;
    v26 = *(a1 + v16);
    *(v17 + 360) = 0;
    *(a2 + v16) = v26;
    v2 += 128;
    v16 += 8;
  }

  while (v2 != 640);
  *(a2 + 1064) = *(a1 + 1064);
  *(a2 + 1072) = *(a1 + 1072);
  *(a2 + 1080) = *(a1 + 1080);
  *(a2 + 1088) = *(a1 + 1088);
  *(a2 + 1096) = *(a1 + 1096);
  *(a2 + 1106) = *(a1 + 1106);
  *(a2 + 1104) = *(a1 + 1104);
  *(a1 + 1096) = 0;
  result = 0.0;
  *(a1 + 1064) = 0u;
  return result;
}

void Phase::DspLayer23::ConvolverSlice<5>::Process(uint64_t a1, int a2)
{
  v65 = *MEMORY[0x277D85DE8];
  v4 = a2;
  MEMORY[0x28223BE20](a1);
  v6 = (&v61 - v5);
  bzero(&v61 - v5, v7);
  v8 = Phase::DspLayer23::AudioConnections::Sum((a1 + 896), v4, v6);
  v9 = *(a1 + 1096);
  if (!v9)
  {
    if (*(a1 + 1104) == 1)
    {
      v15 = **(Phase::Logger::GetInstance(v8) + 160);
      if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
      {
        v16 = *(a1 + 32);
        *buf = 136315906;
        *&buf[4] = "VPConvolver.hpp";
        *&buf[12] = 1024;
        *&buf[14] = 233;
        *&buf[18] = 1024;
        *&buf[20] = 5;
        *&buf[24] = 2048;
        *&buf[26] = v16;
        _os_log_impl(&dword_23A302000, v15, OS_LOG_TYPE_ERROR, "%25s:%-5d Convolver1x%d[%llx] buffer exchanger is nullptr. Output will be silent.", buf, 0x22u);
      }

      *(a1 + 1104) = 0;
    }

    goto LABEL_47;
  }

  v10 = v8;
  *(a1 + 1104) = 1;
  v11 = atomic_exchange(v9, 0);
  if (v11)
  {
    v12 = *v11;
    if (*v11)
    {
      v13 = *(a1 + 1064);
      if (v13)
      {
        v14 = *v13;
        if (v12 == *v13)
        {
LABEL_34:
          *(a1 + 1105) = 1;
          goto LABEL_35;
        }
      }

      else
      {
        v14 = 0;
      }

      atomic_store(1u, (v11 + 12));
      v17 = *(v11 + 8);
      (*(*v12 + 40))(v12);
      v8 = (*(*v12 + 56))(v12);
      if (v8 == 128)
      {
        v8 = (*(*v12 + 64))(v12);
        if (v8 == 5)
        {
          v18 = *(a1 + 1072);
          if (v18)
          {
            atomic_store(0, (v18 + 12));
          }

          *(a1 + 1072) = *(a1 + 1064);
          *(a1 + 1064) = v11;
          v8 = Phase::DspLayer23::SliceSerial::CallbackToVoiceEngine<Phase::DspLayer::IConvolver *>(*(a1 + 16), *(a1 + 32), v12);
          if (v14)
          {
            (*(*v12 + 104))(v12, v14);
            v19 = v17 + 127;
            if (v17 >= 0)
            {
              v19 = v17;
            }

            v20 = (v19 & 0xFFFFFF80) + 128;
            if ((v17 & 0x7F) != 0)
            {
              v21 = v20;
            }

            else
            {
              v21 = v17;
            }

            if ((v21 & 0x7F) != 0)
            {
              __assert_rtn("SwapConvolverInternal", "VPConvolver.hpp", 199, "(numCrossfadeFrames % DspLayer::kCanonicalConvolverBlockSize) == 0");
            }

            if (*(a1 + 1088) >= 1)
            {
              v22 = _os_log_pack_size();
              Instance = Phase::Logger::GetInstance(v22);
              if (caulk::deferred_logger::create_message(*(Instance + 1248), v22 + 88, 0))
              {
                v24 = _os_log_pack_fill();
                v25 = *(a1 + 16);
                v26 = *(a1 + 32);
                v27 = *(a1 + 1092);
                v28 = *(a1 + 1088);
                v29 = *(*(v25 + 576) + 96);
                *v24 = 67110400;
                *(v24 + 4) = 5;
                *(v24 + 8) = 2048;
                *(v24 + 10) = v25;
                *(v24 + 18) = 2048;
                *(v24 + 20) = v26;
                *(v24 + 28) = 1024;
                *(v24 + 30) = v27;
                *(v24 + 34) = 1024;
                *(v24 + 36) = v28;
                *(v24 + 40) = 2048;
                *(v24 + 42) = v29;
                Phase::Logger::GetInstance(v24);
                caulk::concurrent::messenger::enqueue();
              }
            }

            *(a1 + 1080) = 1065353216;
            *(a1 + 1084) = -1.0 / (v21 - 1);
            *(a1 + 1088) = v21;
            v30 = (*(*v12 + 72))(v12);
            v31 = (*(*v12 + 40))(v12);
            if (v31 <= (*(*v12 + 56))(v12))
            {
              v33 = 0;
            }

            else
            {
              v32 = (*(*v12 + 80))(v12, (v30 - 1));
              v33 = (*(*v32 + 56))(v32);
            }

            *(a1 + 1092) = v33;
            v8 = (*(*v14 + 40))(v14);
          }

          goto LABEL_34;
        }
      }
    }

    if (*(a1 + 1105) == 1)
    {
      v34 = **(Phase::Logger::GetInstance(v8) + 160);
      if (os_log_type_enabled(v34, OS_LOG_TYPE_ERROR))
      {
        v35 = *(a1 + 32);
        *buf = 136315906;
        *&buf[4] = "VPConvolver.hpp";
        *&buf[12] = 1024;
        *&buf[14] = 253;
        *&buf[18] = 1024;
        *&buf[20] = 5;
        *&buf[24] = 2048;
        *&buf[26] = v35;
        _os_log_impl(&dword_23A302000, v34, OS_LOG_TYPE_ERROR, "%25s:%-5d Convolver1x%d[%llx] failed to swap buffer. Output will be silent.", buf, 0x22u);
      }

      *(a1 + 1105) = 0;
    }

    goto LABEL_47;
  }

LABEL_35:
  v36 = *(a1 + 1064);
  if (!v36)
  {
    if (*(a1 + 1106) == 1)
    {
      v44 = **(Phase::Logger::GetInstance(v8) + 160);
      if (os_log_type_enabled(v44, OS_LOG_TYPE_ERROR))
      {
        v45 = *(a1 + 32);
        *buf = 136315906;
        *&buf[4] = "VPConvolver.hpp";
        *&buf[12] = 1024;
        *&buf[14] = 271;
        *&buf[18] = 2048;
        *&buf[20] = a1;
        *&buf[28] = 2048;
        *&buf[30] = v45;
        _os_log_impl(&dword_23A302000, v44, OS_LOG_TYPE_ERROR, "%25s:%-5d ConvolverVoicePool: slice%p (vid %llu) mConvolverBufferActive == nullptr. Output will be silent. \n", buf, 0x26u);
      }

      *(a1 + 1106) = 0;
    }

LABEL_47:
    v46 = 0;
    v47 = a1 + 1024;
    do
    {
      vDSP_vclr(*(v47 + v46), 1, v4);
      v46 += 8;
    }

    while (v46 != 40);
    return;
  }

  *(a1 + 1106) = 1;
  v37 = *v36;
  v38 = *(a1 + 1072);
  if (v38 && (v39 = *v38) != 0)
  {
    if (*(a1 + 1092) < 1)
    {
      v48 = a1 + 1072;
      v49 = a1 + 1024;
      (*(*v37 + 24))(v37, v10, a1 + 1024);
      for (i = 0; i != 40; i += 8)
      {
        v51 = 1.0 - *(a1 + 1080);
        __Step = -*(a1 + 1084);
        *buf = v51;
        vDSP_vrampmul(*(v49 + i), 1, buf, &__Step, *(v49 + i), 1, v4);
      }

      MEMORY[0x28223BE20](v52);
      v54 = &v61 - v53;
      bzero(&v61 - v53, v55);
      v56 = 0;
      memset(buf, 0, sizeof(buf));
      do
      {
        *&buf[v56] = v54;
        v56 += 8;
        v54 += 4 * v4;
      }

      while (v56 != 40);
      (*(*v39 + 24))(v39, v10, buf);
      for (j = 0; j != 40; j += 8)
      {
        v58 = *(a1 + 1080);
        v62 = *(a1 + 1084);
        __Step = v58;
        vDSP_vrampmuladd(*&buf[j], 1, &__Step, &v62, *(v49 + j), 1, v4);
      }

      v59 = v62;
      *(a1 + 1080) = __Step;
      *(a1 + 1084) = v59;
      v60 = *(a1 + 1088) - a2;
      *(a1 + 1088) = v60;
      if (v60 < 1)
      {
        if (*v48)
        {
          atomic_store(0, (*v48 + 12));
        }

        *v48 = 0;
        *(a1 + 1080) = 0;
        *(a1 + 1088) = 0;
      }
    }

    else
    {
      MEMORY[0x28223BE20](v8);
      v41 = &v61 - v40;
      bzero(&v61 - v40, v42);
      v43 = 0;
      memset(buf, 0, sizeof(buf));
      do
      {
        *&buf[v43] = v41;
        v43 += 8;
        v41 += 4 * v4;
      }

      while (v43 != 40);
      (*(*v39 + 24))(v39, v10, a1 + 1024);
      (*(*v37 + 24))(v37, v10, buf);
      *(a1 + 1092) -= a2;
    }
  }

  else
  {
    (*(*v37 + 24))(v37, v10, a1 + 1024);
  }
}

void Phase::DspLayer23::VPConvolver<6>::~VPConvolver(Phase::DspLayer23::VoicePoolSerial *a1)
{
  Phase::DspLayer23::VoicePoolSerial::~VoicePoolSerial(a1);

  JUMPOUT(0x23EE864A0);
}

uint64_t Phase::DspLayer23::ConvolverSlice<6>::~ConvolverSlice(uint64_t a1)
{
  free(*(a1 + 1136));
  for (i = 992; i != 224; i -= 128)
  {
    free(*(a1 + i));
  }

  free(*(a1 + 224));
  return a1;
}

void Phase::DspLayer23::ConvolverSlice<6>::~ConvolverSlice(uint64_t a1)
{
  free(*(a1 + 1136));
  for (i = 992; i != 224; i -= 128)
  {
    free(*(a1 + i));
  }

  free(*(a1 + 224));

  JUMPOUT(0x23EE86490);
}

double Phase::DspLayer23::ConvolverSlice<6>::Reset(uint64_t a1)
{
  v1 = 0;
  *(a1 + 232) = 0;
  *(a1 + 1192) = 0;
  *(a1 + 1144) = 0u;
  *(a1 + 1160) = 0u;
  *(a1 + 1176) = 0u;
  do
  {
    *(a1 + 360 + v1) = 0;
    v1 += 128;
  }

  while (v1 != 768);
  *(a1 + 1232) = 0;
  result = 0.0;
  *(a1 + 1200) = 0u;
  *(a1 + 32) = -1;
  return result;
}

uint64_t Phase::DspLayer23::ConvolverSlice<6>::OnStop(uint64_t result)
{
  v1 = *(result + 1200);
  if (v1)
  {
    atomic_store(0, (v1 + 12));
  }

  v2 = *(result + 1208);
  if (v2)
  {
    atomic_store(0, (v2 + 12));
  }

  return result;
}

double Phase::DspLayer23::ConvolverSlice<6>::MoveStateTo(uint64_t a1, uint64_t a2)
{
  v2 = 0;
  *(a2 + 32) = *(a1 + 32);
  v3 = *(a2 + 224);
  v4 = *(a1 + 176);
  v6 = *(a1 + 128);
  v5 = *(a1 + 144);
  *(a2 + 160) = *(a1 + 160);
  *(a2 + 176) = v4;
  *(a2 + 128) = v6;
  *(a2 + 144) = v5;
  v7 = *(a1 + 224);
  v8 = *(a1 + 240);
  v9 = *(a1 + 208);
  *(a2 + 192) = *(a1 + 192);
  *(a2 + 208) = v9;
  *(a2 + 224) = v7;
  *(a2 + 240) = v8;
  *(a1 + 224) = v3;
  *(a1 + 232) = 0;
  v10 = *(a2 + 1136);
  v11 = *(a1 + 1040);
  v12 = *(a1 + 1056);
  *(a2 + 1072) = *(a1 + 1072);
  *(a2 + 1056) = v12;
  *(a2 + 1040) = v11;
  v13 = *(a1 + 1136);
  v14 = *(a1 + 1104);
  v15 = *(a1 + 1120);
  *(a2 + 1088) = *(a1 + 1088);
  *(a2 + 1120) = v15;
  *(a2 + 1104) = v14;
  *(a2 + 1136) = v13;
  *(a2 + 1024) = *(a1 + 1024);
  *(a1 + 1136) = v10;
  *(a1 + 1144) = 0;
  v16 = 1152;
  do
  {
    v17 = a1 + v2;
    v18 = (a2 + v2);
    v19 = *(a2 + v2 + 352);
    v20 = *(a1 + v2 + 304);
    v22 = *(a1 + v2 + 256);
    v21 = *(a1 + v2 + 272);
    v18[18] = *(a1 + v2 + 288);
    v18[19] = v20;
    v18[16] = v22;
    v18[17] = v21;
    v23 = *(a1 + v2 + 352);
    v24 = *(a1 + v2 + 368);
    v25 = *(a1 + v2 + 336);
    v18[20] = *(a1 + v2 + 320);
    v18[21] = v25;
    v18[22] = v23;
    v18[23] = v24;
    *(v17 + 352) = v19;
    v26 = *(a1 + v16);
    *(v17 + 360) = 0;
    *(a2 + v16) = v26;
    v2 += 128;
    v16 += 8;
  }

  while (v2 != 768);
  *(a2 + 1200) = *(a1 + 1200);
  *(a2 + 1216) = *(a1 + 1216);
  *(a2 + 1224) = *(a1 + 1224);
  *(a2 + 1232) = *(a1 + 1232);
  *(a2 + 1242) = *(a1 + 1242);
  *(a2 + 1240) = *(a1 + 1240);
  *(a1 + 1232) = 0;
  result = 0.0;
  *(a1 + 1200) = 0u;
  return result;
}

void Phase::DspLayer23::ConvolverSlice<6>::Process(uint64_t a1, int a2)
{
  v65 = *MEMORY[0x277D85DE8];
  v4 = a2;
  MEMORY[0x28223BE20](a1);
  v6 = (&v61 - v5);
  bzero(&v61 - v5, v7);
  v8 = Phase::DspLayer23::AudioConnections::Sum((a1 + 1024), v4, v6);
  v9 = *(a1 + 1232);
  if (!v9)
  {
    if (*(a1 + 1240) == 1)
    {
      v15 = **(Phase::Logger::GetInstance(v8) + 160);
      if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
      {
        v16 = *(a1 + 32);
        *buf = 136315906;
        *&buf[4] = "VPConvolver.hpp";
        *&buf[12] = 1024;
        *&buf[14] = 233;
        *&buf[18] = 1024;
        *&buf[20] = 6;
        *&buf[24] = 2048;
        *&buf[26] = v16;
        _os_log_impl(&dword_23A302000, v15, OS_LOG_TYPE_ERROR, "%25s:%-5d Convolver1x%d[%llx] buffer exchanger is nullptr. Output will be silent.", buf, 0x22u);
      }

      *(a1 + 1240) = 0;
    }

    goto LABEL_47;
  }

  v10 = v8;
  *(a1 + 1240) = 1;
  v11 = atomic_exchange(v9, 0);
  if (v11)
  {
    v12 = *v11;
    if (*v11)
    {
      v13 = *(a1 + 1200);
      if (v13)
      {
        v14 = *v13;
        if (v12 == *v13)
        {
LABEL_34:
          *(a1 + 1241) = 1;
          goto LABEL_35;
        }
      }

      else
      {
        v14 = 0;
      }

      atomic_store(1u, (v11 + 12));
      v17 = *(v11 + 8);
      (*(*v12 + 40))(v12);
      v8 = (*(*v12 + 56))(v12);
      if (v8 == 128)
      {
        v8 = (*(*v12 + 64))(v12);
        if (v8 == 6)
        {
          v18 = *(a1 + 1208);
          if (v18)
          {
            atomic_store(0, (v18 + 12));
          }

          *(a1 + 1208) = *(a1 + 1200);
          *(a1 + 1200) = v11;
          v8 = Phase::DspLayer23::SliceSerial::CallbackToVoiceEngine<Phase::DspLayer::IConvolver *>(*(a1 + 16), *(a1 + 32), v12);
          if (v14)
          {
            (*(*v12 + 104))(v12, v14);
            v19 = v17 + 127;
            if (v17 >= 0)
            {
              v19 = v17;
            }

            v20 = (v19 & 0xFFFFFF80) + 128;
            if ((v17 & 0x7F) != 0)
            {
              v21 = v20;
            }

            else
            {
              v21 = v17;
            }

            if ((v21 & 0x7F) != 0)
            {
              __assert_rtn("SwapConvolverInternal", "VPConvolver.hpp", 199, "(numCrossfadeFrames % DspLayer::kCanonicalConvolverBlockSize) == 0");
            }

            if (*(a1 + 1224) >= 1)
            {
              v22 = _os_log_pack_size();
              Instance = Phase::Logger::GetInstance(v22);
              if (caulk::deferred_logger::create_message(*(Instance + 1248), v22 + 88, 0))
              {
                v24 = _os_log_pack_fill();
                v25 = *(a1 + 16);
                v26 = *(a1 + 32);
                v27 = *(a1 + 1228);
                v28 = *(a1 + 1224);
                v29 = *(*(v25 + 576) + 96);
                *v24 = 67110400;
                *(v24 + 4) = 6;
                *(v24 + 8) = 2048;
                *(v24 + 10) = v25;
                *(v24 + 18) = 2048;
                *(v24 + 20) = v26;
                *(v24 + 28) = 1024;
                *(v24 + 30) = v27;
                *(v24 + 34) = 1024;
                *(v24 + 36) = v28;
                *(v24 + 40) = 2048;
                *(v24 + 42) = v29;
                Phase::Logger::GetInstance(v24);
                caulk::concurrent::messenger::enqueue();
              }
            }

            *(a1 + 1216) = 1065353216;
            *(a1 + 1220) = -1.0 / (v21 - 1);
            *(a1 + 1224) = v21;
            v30 = (*(*v12 + 72))(v12);
            v31 = (*(*v12 + 40))(v12);
            if (v31 <= (*(*v12 + 56))(v12))
            {
              v33 = 0;
            }

            else
            {
              v32 = (*(*v12 + 80))(v12, (v30 - 1));
              v33 = (*(*v32 + 56))(v32);
            }

            *(a1 + 1228) = v33;
            v8 = (*(*v14 + 40))(v14);
          }

          goto LABEL_34;
        }
      }
    }

    if (*(a1 + 1241) == 1)
    {
      v34 = **(Phase::Logger::GetInstance(v8) + 160);
      if (os_log_type_enabled(v34, OS_LOG_TYPE_ERROR))
      {
        v35 = *(a1 + 32);
        *buf = 136315906;
        *&buf[4] = "VPConvolver.hpp";
        *&buf[12] = 1024;
        *&buf[14] = 253;
        *&buf[18] = 1024;
        *&buf[20] = 6;
        *&buf[24] = 2048;
        *&buf[26] = v35;
        _os_log_impl(&dword_23A302000, v34, OS_LOG_TYPE_ERROR, "%25s:%-5d Convolver1x%d[%llx] failed to swap buffer. Output will be silent.", buf, 0x22u);
      }

      *(a1 + 1241) = 0;
    }

    goto LABEL_47;
  }

LABEL_35:
  v36 = *(a1 + 1200);
  if (!v36)
  {
    if (*(a1 + 1242) == 1)
    {
      v44 = **(Phase::Logger::GetInstance(v8) + 160);
      if (os_log_type_enabled(v44, OS_LOG_TYPE_ERROR))
      {
        v45 = *(a1 + 32);
        *buf = 136315906;
        *&buf[4] = "VPConvolver.hpp";
        *&buf[12] = 1024;
        *&buf[14] = 271;
        *&buf[18] = 2048;
        *&buf[20] = a1;
        *&buf[28] = 2048;
        *&buf[30] = v45;
        _os_log_impl(&dword_23A302000, v44, OS_LOG_TYPE_ERROR, "%25s:%-5d ConvolverVoicePool: slice%p (vid %llu) mConvolverBufferActive == nullptr. Output will be silent. \n", buf, 0x26u);
      }

      *(a1 + 1242) = 0;
    }

LABEL_47:
    v46 = 0;
    v47 = a1 + 1152;
    do
    {
      vDSP_vclr(*(v47 + v46), 1, v4);
      v46 += 8;
    }

    while (v46 != 48);
    return;
  }

  *(a1 + 1242) = 1;
  v37 = *v36;
  v38 = *(a1 + 1208);
  if (v38 && (v39 = *v38) != 0)
  {
    if (*(a1 + 1228) < 1)
    {
      v48 = a1 + 1208;
      v49 = a1 + 1152;
      (*(*v37 + 24))(v37, v10, a1 + 1152);
      for (i = 0; i != 48; i += 8)
      {
        v51 = 1.0 - *(a1 + 1216);
        __Step = -*(a1 + 1220);
        *buf = v51;
        vDSP_vrampmul(*(v49 + i), 1, buf, &__Step, *(v49 + i), 1, v4);
      }

      MEMORY[0x28223BE20](v52);
      v54 = &v61 - v53;
      bzero(&v61 - v53, v55);
      v56 = 0;
      memset(buf, 0, 48);
      do
      {
        *&buf[v56] = v54;
        v56 += 8;
        v54 += 4 * v4;
      }

      while (v56 != 48);
      (*(*v39 + 24))(v39, v10, buf);
      for (j = 0; j != 48; j += 8)
      {
        v58 = *(a1 + 1216);
        v62 = *(a1 + 1220);
        __Step = v58;
        vDSP_vrampmuladd(*&buf[j], 1, &__Step, &v62, *(v49 + j), 1, v4);
      }

      v59 = v62;
      *(a1 + 1216) = __Step;
      *(a1 + 1220) = v59;
      v60 = *(a1 + 1224) - a2;
      *(a1 + 1224) = v60;
      if (v60 < 1)
      {
        if (*v48)
        {
          atomic_store(0, (*v48 + 12));
        }

        *v48 = 0;
        *(a1 + 1216) = 0;
        *(a1 + 1224) = 0;
      }
    }

    else
    {
      MEMORY[0x28223BE20](v8);
      v41 = &v61 - v40;
      bzero(&v61 - v40, v42);
      v43 = 0;
      memset(buf, 0, 48);
      do
      {
        *&buf[v43] = v41;
        v43 += 8;
        v41 += 4 * v4;
      }

      while (v43 != 48);
      (*(*v39 + 24))(v39, v10, a1 + 1152);
      (*(*v37 + 24))(v37, v10, buf);
      *(a1 + 1228) -= a2;
    }
  }

  else
  {
    (*(*v37 + 24))(v37, v10, a1 + 1152);
  }
}

void Phase::DspLayer23::VPConvolver<7>::~VPConvolver(Phase::DspLayer23::VoicePoolSerial *a1)
{
  Phase::DspLayer23::VoicePoolSerial::~VoicePoolSerial(a1);

  JUMPOUT(0x23EE864A0);
}

uint64_t Phase::DspLayer23::ConvolverSlice<7>::~ConvolverSlice(uint64_t a1)
{
  free(*(a1 + 1264));
  for (i = 1120; i != 224; i -= 128)
  {
    free(*(a1 + i));
  }

  free(*(a1 + 224));
  return a1;
}

void Phase::DspLayer23::ConvolverSlice<7>::~ConvolverSlice(uint64_t a1)
{
  free(*(a1 + 1264));
  for (i = 1120; i != 224; i -= 128)
  {
    free(*(a1 + i));
  }

  free(*(a1 + 224));

  JUMPOUT(0x23EE86490);
}

double Phase::DspLayer23::ConvolverSlice<7>::Reset(uint64_t a1)
{
  *(a1 + 232) = 0;
  *(a1 + 1272) = 0u;
  *(a1 + 1288) = 0u;
  *(a1 + 1304) = 0u;
  *(a1 + 1320) = 0u;
  v1 = xmmword_23A554B70;
  v2 = (a1 + 488);
  v3 = 8;
  v4 = vdupq_n_s64(7uLL);
  v5 = vdupq_n_s64(2uLL);
  do
  {
    if (vmovn_s64(vcgtq_u64(v4, v1)).u8[0])
    {
      *(v2 - 16) = 0;
    }

    if (vmovn_s64(vcgtq_u64(vdupq_n_s64(7uLL), *&v1)).i32[1])
    {
      *v2 = 0;
    }

    v1 = vaddq_s64(v1, v5);
    v2 += 32;
    v3 -= 2;
  }

  while (v3);
  *(a1 + 1368) = 0;
  result = 0.0;
  *(a1 + 1336) = 0u;
  *(a1 + 32) = -1;
  return result;
}

uint64_t Phase::DspLayer23::ConvolverSlice<7>::OnStop(uint64_t result)
{
  v1 = *(result + 1336);
  if (v1)
  {
    atomic_store(0, (v1 + 12));
  }

  v2 = *(result + 1344);
  if (v2)
  {
    atomic_store(0, (v2 + 12));
  }

  return result;
}

double Phase::DspLayer23::ConvolverSlice<7>::MoveStateTo(uint64_t a1, uint64_t a2)
{
  v2 = 0;
  *(a2 + 32) = *(a1 + 32);
  v3 = *(a2 + 224);
  v4 = *(a1 + 176);
  v6 = *(a1 + 128);
  v5 = *(a1 + 144);
  *(a2 + 160) = *(a1 + 160);
  *(a2 + 176) = v4;
  *(a2 + 128) = v6;
  *(a2 + 144) = v5;
  v7 = *(a1 + 224);
  v8 = *(a1 + 240);
  v9 = *(a1 + 208);
  *(a2 + 192) = *(a1 + 192);
  *(a2 + 208) = v9;
  *(a2 + 224) = v7;
  *(a2 + 240) = v8;
  *(a1 + 224) = v3;
  *(a1 + 232) = 0;
  v10 = *(a2 + 1264);
  v11 = *(a1 + 1168);
  v12 = *(a1 + 1184);
  *(a2 + 1200) = *(a1 + 1200);
  *(a2 + 1184) = v12;
  *(a2 + 1168) = v11;
  v13 = *(a1 + 1264);
  v14 = *(a1 + 1232);
  v15 = *(a1 + 1248);
  *(a2 + 1216) = *(a1 + 1216);
  *(a2 + 1248) = v15;
  *(a2 + 1232) = v14;
  *(a2 + 1264) = v13;
  *(a2 + 1152) = *(a1 + 1152);
  *(a1 + 1264) = v10;
  *(a1 + 1272) = 0;
  v16 = 1280;
  do
  {
    v17 = a1 + v2;
    v18 = (a2 + v2);
    v19 = *(a2 + v2 + 352);
    v20 = *(a1 + v2 + 304);
    v22 = *(a1 + v2 + 256);
    v21 = *(a1 + v2 + 272);
    v18[18] = *(a1 + v2 + 288);
    v18[19] = v20;
    v18[16] = v22;
    v18[17] = v21;
    v23 = *(a1 + v2 + 352);
    v24 = *(a1 + v2 + 368);
    v25 = *(a1 + v2 + 336);
    v18[20] = *(a1 + v2 + 320);
    v18[21] = v25;
    v18[22] = v23;
    v18[23] = v24;
    *(v17 + 352) = v19;
    v26 = *(a1 + v16);
    *(v17 + 360) = 0;
    *(a2 + v16) = v26;
    v2 += 128;
    v16 += 8;
  }

  while (v2 != 896);
  *(a2 + 1336) = *(a1 + 1336);
  *(a2 + 1344) = *(a1 + 1344);
  *(a2 + 1352) = *(a1 + 1352);
  *(a2 + 1360) = *(a1 + 1360);
  *(a2 + 1368) = *(a1 + 1368);
  *(a2 + 1378) = *(a1 + 1378);
  *(a2 + 1376) = *(a1 + 1376);
  *(a1 + 1368) = 0;
  result = 0.0;
  *(a1 + 1336) = 0u;
  return result;
}

void Phase::DspLayer23::ConvolverSlice<7>::Process(uint64_t a1, int a2)
{
  v66 = *MEMORY[0x277D85DE8];
  v4 = a2;
  MEMORY[0x28223BE20](a1);
  v6 = (&v61 - v5);
  bzero(&v61 - v5, v7);
  v8 = Phase::DspLayer23::AudioConnections::Sum((a1 + 1152), v4, v6);
  v9 = *(a1 + 1368);
  if (!v9)
  {
    if (*(a1 + 1376) == 1)
    {
      v15 = **(Phase::Logger::GetInstance(v8) + 160);
      if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
      {
        v16 = *(a1 + 32);
        *buf = 136315906;
        *&buf[4] = "VPConvolver.hpp";
        *&buf[12] = 1024;
        *&buf[14] = 233;
        *&buf[18] = 1024;
        *&buf[20] = 7;
        *&buf[24] = 2048;
        *&buf[26] = v16;
        _os_log_impl(&dword_23A302000, v15, OS_LOG_TYPE_ERROR, "%25s:%-5d Convolver1x%d[%llx] buffer exchanger is nullptr. Output will be silent.", buf, 0x22u);
      }

      *(a1 + 1376) = 0;
    }

    goto LABEL_47;
  }

  v10 = v8;
  *(a1 + 1376) = 1;
  v11 = atomic_exchange(v9, 0);
  if (v11)
  {
    v12 = *v11;
    if (*v11)
    {
      v13 = *(a1 + 1336);
      if (v13)
      {
        v14 = *v13;
        if (v12 == *v13)
        {
LABEL_34:
          *(a1 + 1377) = 1;
          goto LABEL_35;
        }
      }

      else
      {
        v14 = 0;
      }

      atomic_store(1u, (v11 + 12));
      v17 = *(v11 + 8);
      (*(*v12 + 40))(v12);
      v8 = (*(*v12 + 56))(v12);
      if (v8 == 128)
      {
        v8 = (*(*v12 + 64))(v12);
        if (v8 == 7)
        {
          v18 = *(a1 + 1344);
          if (v18)
          {
            atomic_store(0, (v18 + 12));
          }

          *(a1 + 1344) = *(a1 + 1336);
          *(a1 + 1336) = v11;
          v8 = Phase::DspLayer23::SliceSerial::CallbackToVoiceEngine<Phase::DspLayer::IConvolver *>(*(a1 + 16), *(a1 + 32), v12);
          if (v14)
          {
            (*(*v12 + 104))(v12, v14);
            v19 = v17 + 127;
            if (v17 >= 0)
            {
              v19 = v17;
            }

            v20 = (v19 & 0xFFFFFF80) + 128;
            if ((v17 & 0x7F) != 0)
            {
              v21 = v20;
            }

            else
            {
              v21 = v17;
            }

            if ((v21 & 0x7F) != 0)
            {
              __assert_rtn("SwapConvolverInternal", "VPConvolver.hpp", 199, "(numCrossfadeFrames % DspLayer::kCanonicalConvolverBlockSize) == 0");
            }

            if (*(a1 + 1360) >= 1)
            {
              v22 = _os_log_pack_size();
              Instance = Phase::Logger::GetInstance(v22);
              if (caulk::deferred_logger::create_message(*(Instance + 1248), v22 + 88, 0))
              {
                v24 = _os_log_pack_fill();
                v25 = *(a1 + 16);
                v26 = *(a1 + 32);
                v27 = *(a1 + 1364);
                v28 = *(a1 + 1360);
                v29 = *(*(v25 + 576) + 96);
                *v24 = 67110400;
                *(v24 + 4) = 7;
                *(v24 + 8) = 2048;
                *(v24 + 10) = v25;
                *(v24 + 18) = 2048;
                *(v24 + 20) = v26;
                *(v24 + 28) = 1024;
                *(v24 + 30) = v27;
                *(v24 + 34) = 1024;
                *(v24 + 36) = v28;
                *(v24 + 40) = 2048;
                *(v24 + 42) = v29;
                Phase::Logger::GetInstance(v24);
                caulk::concurrent::messenger::enqueue();
              }
            }

            *(a1 + 1352) = 1065353216;
            *(a1 + 1356) = -1.0 / (v21 - 1);
            *(a1 + 1360) = v21;
            v30 = (*(*v12 + 72))(v12);
            v31 = (*(*v12 + 40))(v12);
            if (v31 <= (*(*v12 + 56))(v12))
            {
              v33 = 0;
            }

            else
            {
              v32 = (*(*v12 + 80))(v12, (v30 - 1));
              v33 = (*(*v32 + 56))(v32);
            }

            *(a1 + 1364) = v33;
            v8 = (*(*v14 + 40))(v14);
          }

          goto LABEL_34;
        }
      }
    }

    if (*(a1 + 1377) == 1)
    {
      v34 = **(Phase::Logger::GetInstance(v8) + 160);
      if (os_log_type_enabled(v34, OS_LOG_TYPE_ERROR))
      {
        v35 = *(a1 + 32);
        *buf = 136315906;
        *&buf[4] = "VPConvolver.hpp";
        *&buf[12] = 1024;
        *&buf[14] = 253;
        *&buf[18] = 1024;
        *&buf[20] = 7;
        *&buf[24] = 2048;
        *&buf[26] = v35;
        _os_log_impl(&dword_23A302000, v34, OS_LOG_TYPE_ERROR, "%25s:%-5d Convolver1x%d[%llx] failed to swap buffer. Output will be silent.", buf, 0x22u);
      }

      *(a1 + 1377) = 0;
    }

    goto LABEL_47;
  }

LABEL_35:
  v36 = *(a1 + 1336);
  if (!v36)
  {
    if (*(a1 + 1378) == 1)
    {
      v44 = **(Phase::Logger::GetInstance(v8) + 160);
      if (os_log_type_enabled(v44, OS_LOG_TYPE_ERROR))
      {
        v45 = *(a1 + 32);
        *buf = 136315906;
        *&buf[4] = "VPConvolver.hpp";
        *&buf[12] = 1024;
        *&buf[14] = 271;
        *&buf[18] = 2048;
        *&buf[20] = a1;
        *&buf[28] = 2048;
        *&buf[30] = v45;
        _os_log_impl(&dword_23A302000, v44, OS_LOG_TYPE_ERROR, "%25s:%-5d ConvolverVoicePool: slice%p (vid %llu) mConvolverBufferActive == nullptr. Output will be silent. \n", buf, 0x26u);
      }

      *(a1 + 1378) = 0;
    }

LABEL_47:
    v46 = 0;
    v47 = a1 + 1280;
    do
    {
      vDSP_vclr(*(v47 + v46), 1, v4);
      v46 += 8;
    }

    while (v46 != 56);
    return;
  }

  *(a1 + 1378) = 1;
  v37 = *v36;
  v38 = *(a1 + 1344);
  if (v38 && (v39 = *v38) != 0)
  {
    if (*(a1 + 1364) < 1)
    {
      v48 = a1 + 1344;
      v49 = a1 + 1280;
      (*(*v37 + 24))(v37, v10, a1 + 1280);
      for (i = 0; i != 56; i += 8)
      {
        v51 = 1.0 - *(a1 + 1352);
        __Step = -*(a1 + 1356);
        *buf = v51;
        vDSP_vrampmul(*(v49 + i), 1, buf, &__Step, *(v49 + i), 1, v4);
      }

      MEMORY[0x28223BE20](v52);
      v54 = &v61 - v53;
      bzero(&v61 - v53, v55);
      v56 = 0;
      v65 = 0;
      memset(buf, 0, sizeof(buf));
      do
      {
        *&buf[v56] = v54;
        v56 += 8;
        v54 += 4 * v4;
      }

      while (v56 != 56);
      (*(*v39 + 24))(v39, v10, buf);
      for (j = 0; j != 56; j += 8)
      {
        v58 = *(a1 + 1352);
        v62 = *(a1 + 1356);
        __Step = v58;
        vDSP_vrampmuladd(*&buf[j], 1, &__Step, &v62, *(v49 + j), 1, v4);
      }

      v59 = v62;
      *(a1 + 1352) = __Step;
      *(a1 + 1356) = v59;
      v60 = *(a1 + 1360) - a2;
      *(a1 + 1360) = v60;
      if (v60 < 1)
      {
        if (*v48)
        {
          atomic_store(0, (*v48 + 12));
        }

        *v48 = 0;
        *(a1 + 1352) = 0;
        *(a1 + 1360) = 0;
      }
    }

    else
    {
      MEMORY[0x28223BE20](v8);
      v41 = &v61 - v40;
      bzero(&v61 - v40, v42);
      v43 = 0;
      v65 = 0;
      memset(buf, 0, sizeof(buf));
      do
      {
        *&buf[v43] = v41;
        v43 += 8;
        v41 += 4 * v4;
      }

      while (v43 != 56);
      (*(*v39 + 24))(v39, v10, a1 + 1280);
      (*(*v37 + 24))(v37, v10, buf);
      *(a1 + 1364) -= a2;
    }
  }

  else
  {
    (*(*v37 + 24))(v37, v10, a1 + 1280);
  }
}

void Phase::DspLayer23::VPConvolver<8>::~VPConvolver(Phase::DspLayer23::VoicePoolSerial *a1)
{
  Phase::DspLayer23::VoicePoolSerial::~VoicePoolSerial(a1);

  JUMPOUT(0x23EE864A0);
}

uint64_t Phase::DspLayer23::ConvolverSlice<8>::~ConvolverSlice(uint64_t a1)
{
  free(*(a1 + 1392));
  for (i = 1248; i != 224; i -= 128)
  {
    free(*(a1 + i));
  }

  free(*(a1 + 224));
  return a1;
}

void Phase::DspLayer23::ConvolverSlice<8>::~ConvolverSlice(uint64_t a1)
{
  free(*(a1 + 1392));
  for (i = 1248; i != 224; i -= 128)
  {
    free(*(a1 + i));
  }

  free(*(a1 + 224));

  JUMPOUT(0x23EE86490);
}

double Phase::DspLayer23::ConvolverSlice<8>::Reset(uint64_t a1)
{
  v1 = 0;
  *(a1 + 232) = 0;
  *(a1 + 1464) = 0;
  *(a1 + 1400) = 0u;
  *(a1 + 1416) = 0u;
  *(a1 + 1432) = 0u;
  *(a1 + 1448) = 0u;
  do
  {
    *(a1 + 360 + v1) = 0;
    v1 += 128;
  }

  while (v1 != 1024);
  *(a1 + 1504) = 0;
  result = 0.0;
  *(a1 + 1472) = 0u;
  *(a1 + 32) = -1;
  return result;
}

uint64_t Phase::DspLayer23::ConvolverSlice<8>::OnStop(uint64_t result)
{
  v1 = *(result + 1472);
  if (v1)
  {
    atomic_store(0, (v1 + 12));
  }

  v2 = *(result + 1480);
  if (v2)
  {
    atomic_store(0, (v2 + 12));
  }

  return result;
}

double Phase::DspLayer23::ConvolverSlice<8>::MoveStateTo(uint64_t a1, uint64_t a2)
{
  v2 = 0;
  *(a2 + 32) = *(a1 + 32);
  v3 = *(a2 + 224);
  v4 = *(a1 + 176);
  v6 = *(a1 + 128);
  v5 = *(a1 + 144);
  *(a2 + 160) = *(a1 + 160);
  *(a2 + 176) = v4;
  *(a2 + 128) = v6;
  *(a2 + 144) = v5;
  v7 = *(a1 + 224);
  v8 = *(a1 + 240);
  v9 = *(a1 + 208);
  *(a2 + 192) = *(a1 + 192);
  *(a2 + 208) = v9;
  *(a2 + 224) = v7;
  *(a2 + 240) = v8;
  *(a1 + 224) = v3;
  *(a1 + 232) = 0;
  v10 = *(a2 + 1392);
  v11 = *(a1 + 1296);
  v12 = *(a1 + 1312);
  *(a2 + 1328) = *(a1 + 1328);
  *(a2 + 1312) = v12;
  *(a2 + 1296) = v11;
  v13 = *(a1 + 1392);
  v14 = *(a1 + 1360);
  v15 = *(a1 + 1376);
  *(a2 + 1344) = *(a1 + 1344);
  *(a2 + 1376) = v15;
  *(a2 + 1360) = v14;
  *(a2 + 1392) = v13;
  *(a2 + 1280) = *(a1 + 1280);
  *(a1 + 1392) = v10;
  *(a1 + 1400) = 0;
  v16 = 1408;
  do
  {
    v17 = a1 + v2;
    v18 = (a2 + v2);
    v19 = *(a2 + v2 + 352);
    v20 = *(a1 + v2 + 304);
    v22 = *(a1 + v2 + 256);
    v21 = *(a1 + v2 + 272);
    v18[18] = *(a1 + v2 + 288);
    v18[19] = v20;
    v18[16] = v22;
    v18[17] = v21;
    v23 = *(a1 + v2 + 352);
    v24 = *(a1 + v2 + 368);
    v25 = *(a1 + v2 + 336);
    v18[20] = *(a1 + v2 + 320);
    v18[21] = v25;
    v18[22] = v23;
    v18[23] = v24;
    *(v17 + 352) = v19;
    v26 = *(a1 + v16);
    *(v17 + 360) = 0;
    *(a2 + v16) = v26;
    v2 += 128;
    v16 += 8;
  }

  while (v2 != 1024);
  *(a2 + 1472) = *(a1 + 1472);
  *(a2 + 1488) = *(a1 + 1488);
  *(a2 + 1496) = *(a1 + 1496);
  *(a2 + 1504) = *(a1 + 1504);
  *(a2 + 1514) = *(a1 + 1514);
  *(a2 + 1512) = *(a1 + 1512);
  *(a1 + 1504) = 0;
  result = 0.0;
  *(a1 + 1472) = 0u;
  return result;
}

void Phase::DspLayer23::ConvolverSlice<8>::Process(uint64_t a1, int a2)
{
  v66 = *MEMORY[0x277D85DE8];
  v4 = a2;
  MEMORY[0x28223BE20](a1);
  v6 = (&v61 - v5);
  bzero(&v61 - v5, v7);
  v8 = Phase::DspLayer23::AudioConnections::Sum((a1 + 1280), v4, v6);
  v9 = *(a1 + 1504);
  if (!v9)
  {
    if (*(a1 + 1512) == 1)
    {
      v15 = **(Phase::Logger::GetInstance(v8) + 160);
      if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
      {
        v16 = *(a1 + 32);
        *buf = 136315906;
        *&buf[4] = "VPConvolver.hpp";
        *&buf[12] = 1024;
        *&buf[14] = 233;
        *&buf[18] = 1024;
        *&buf[20] = 8;
        *&buf[24] = 2048;
        *&buf[26] = v16;
        _os_log_impl(&dword_23A302000, v15, OS_LOG_TYPE_ERROR, "%25s:%-5d Convolver1x%d[%llx] buffer exchanger is nullptr. Output will be silent.", buf, 0x22u);
      }

      *(a1 + 1512) = 0;
    }

    goto LABEL_47;
  }

  v10 = v8;
  *(a1 + 1512) = 1;
  v11 = atomic_exchange(v9, 0);
  if (v11)
  {
    v12 = *v11;
    if (*v11)
    {
      v13 = *(a1 + 1472);
      if (v13)
      {
        v14 = *v13;
        if (v12 == *v13)
        {
LABEL_34:
          *(a1 + 1513) = 1;
          goto LABEL_35;
        }
      }

      else
      {
        v14 = 0;
      }

      atomic_store(1u, (v11 + 12));
      v17 = *(v11 + 8);
      (*(*v12 + 40))(v12);
      v8 = (*(*v12 + 56))(v12);
      if (v8 == 128)
      {
        v8 = (*(*v12 + 64))(v12);
        if (v8 == 8)
        {
          v18 = *(a1 + 1480);
          if (v18)
          {
            atomic_store(0, (v18 + 12));
          }

          *(a1 + 1480) = *(a1 + 1472);
          *(a1 + 1472) = v11;
          v8 = Phase::DspLayer23::SliceSerial::CallbackToVoiceEngine<Phase::DspLayer::IConvolver *>(*(a1 + 16), *(a1 + 32), v12);
          if (v14)
          {
            (*(*v12 + 104))(v12, v14);
            v19 = v17 + 127;
            if (v17 >= 0)
            {
              v19 = v17;
            }

            v20 = (v19 & 0xFFFFFF80) + 128;
            if ((v17 & 0x7F) != 0)
            {
              v21 = v20;
            }

            else
            {
              v21 = v17;
            }

            if ((v21 & 0x7F) != 0)
            {
              __assert_rtn("SwapConvolverInternal", "VPConvolver.hpp", 199, "(numCrossfadeFrames % DspLayer::kCanonicalConvolverBlockSize) == 0");
            }

            if (*(a1 + 1496) >= 1)
            {
              v22 = _os_log_pack_size();
              Instance = Phase::Logger::GetInstance(v22);
              if (caulk::deferred_logger::create_message(*(Instance + 1248), v22 + 88, 0))
              {
                v24 = _os_log_pack_fill();
                v25 = *(a1 + 16);
                v26 = *(a1 + 32);
                v27 = *(a1 + 1500);
                v28 = *(a1 + 1496);
                v29 = *(*(v25 + 576) + 96);
                *v24 = 67110400;
                *(v24 + 4) = 8;
                *(v24 + 8) = 2048;
                *(v24 + 10) = v25;
                *(v24 + 18) = 2048;
                *(v24 + 20) = v26;
                *(v24 + 28) = 1024;
                *(v24 + 30) = v27;
                *(v24 + 34) = 1024;
                *(v24 + 36) = v28;
                *(v24 + 40) = 2048;
                *(v24 + 42) = v29;
                Phase::Logger::GetInstance(v24);
                caulk::concurrent::messenger::enqueue();
              }
            }

            *(a1 + 1488) = 1065353216;
            *(a1 + 1492) = -1.0 / (v21 - 1);
            *(a1 + 1496) = v21;
            v30 = (*(*v12 + 72))(v12);
            v31 = (*(*v12 + 40))(v12);
            if (v31 <= (*(*v12 + 56))(v12))
            {
              v33 = 0;
            }

            else
            {
              v32 = (*(*v12 + 80))(v12, (v30 - 1));
              v33 = (*(*v32 + 56))(v32);
            }

            *(a1 + 1500) = v33;
            v8 = (*(*v14 + 40))(v14);
          }

          goto LABEL_34;
        }
      }
    }

    if (*(a1 + 1513) == 1)
    {
      v34 = **(Phase::Logger::GetInstance(v8) + 160);
      if (os_log_type_enabled(v34, OS_LOG_TYPE_ERROR))
      {
        v35 = *(a1 + 32);
        *buf = 136315906;
        *&buf[4] = "VPConvolver.hpp";
        *&buf[12] = 1024;
        *&buf[14] = 253;
        *&buf[18] = 1024;
        *&buf[20] = 8;
        *&buf[24] = 2048;
        *&buf[26] = v35;
        _os_log_impl(&dword_23A302000, v34, OS_LOG_TYPE_ERROR, "%25s:%-5d Convolver1x%d[%llx] failed to swap buffer. Output will be silent.", buf, 0x22u);
      }

      *(a1 + 1513) = 0;
    }

    goto LABEL_47;
  }

LABEL_35:
  v36 = *(a1 + 1472);
  if (!v36)
  {
    if (*(a1 + 1514) == 1)
    {
      v44 = **(Phase::Logger::GetInstance(v8) + 160);
      if (os_log_type_enabled(v44, OS_LOG_TYPE_ERROR))
      {
        v45 = *(a1 + 32);
        *buf = 136315906;
        *&buf[4] = "VPConvolver.hpp";
        *&buf[12] = 1024;
        *&buf[14] = 271;
        *&buf[18] = 2048;
        *&buf[20] = a1;
        *&buf[28] = 2048;
        *&buf[30] = v45;
        _os_log_impl(&dword_23A302000, v44, OS_LOG_TYPE_ERROR, "%25s:%-5d ConvolverVoicePool: slice%p (vid %llu) mConvolverBufferActive == nullptr. Output will be silent. \n", buf, 0x26u);
      }

      *(a1 + 1514) = 0;
    }

LABEL_47:
    v46 = 0;
    v47 = a1 + 1408;
    do
    {
      vDSP_vclr(*(v47 + v46), 1, v4);
      v46 += 8;
    }

    while (v46 != 64);
    return;
  }

  *(a1 + 1514) = 1;
  v37 = *v36;
  v38 = *(a1 + 1480);
  if (v38 && (v39 = *v38) != 0)
  {
    if (*(a1 + 1500) < 1)
    {
      v48 = a1 + 1480;
      v49 = a1 + 1408;
      (*(*v37 + 24))(v37, v10, a1 + 1408);
      for (i = 0; i != 64; i += 8)
      {
        v51 = 1.0 - *(a1 + 1488);
        __Step = -*(a1 + 1492);
        *buf = v51;
        vDSP_vrampmul(*(v49 + i), 1, buf, &__Step, *(v49 + i), 1, v4);
      }

      MEMORY[0x28223BE20](v52);
      v54 = &v61 - 4 * v53;
      bzero(v54, v55);
      v56 = 0;
      v65 = 0u;
      memset(buf, 0, sizeof(buf));
      do
      {
        *&buf[v56] = v54;
        v56 += 8;
        v54 += 4 * v4;
      }

      while (v56 != 64);
      (*(*v39 + 24))(v39, v10, buf);
      for (j = 0; j != 64; j += 8)
      {
        v58 = *(a1 + 1488);
        v62 = *(a1 + 1492);
        __Step = v58;
        vDSP_vrampmuladd(*&buf[j], 1, &__Step, &v62, *(v49 + j), 1, v4);
      }

      v59 = v62;
      *(a1 + 1488) = __Step;
      *(a1 + 1492) = v59;
      v60 = *(a1 + 1496) - a2;
      *(a1 + 1496) = v60;
      if (v60 < 1)
      {
        if (*v48)
        {
          atomic_store(0, (*v48 + 12));
        }

        *v48 = 0;
        *(a1 + 1488) = 0;
        *(a1 + 1496) = 0;
      }
    }

    else
    {
      MEMORY[0x28223BE20](v8);
      v41 = &v61 - 4 * v40;
      bzero(v41, v42);
      v43 = 0;
      v65 = 0u;
      memset(buf, 0, sizeof(buf));
      do
      {
        *&buf[v43] = v41;
        v43 += 8;
        v41 += 4 * v4;
      }

      while (v43 != 64);
      (*(*v39 + 24))(v39, v10, a1 + 1408);
      (*(*v37 + 24))(v37, v10, buf);
      *(a1 + 1500) -= a2;
    }
  }

  else
  {
    (*(*v37 + 24))(v37, v10, a1 + 1408);
  }
}

void Phase::DspLayer23::VPConvolver<9>::~VPConvolver(Phase::DspLayer23::VoicePoolSerial *a1)
{
  Phase::DspLayer23::VoicePoolSerial::~VoicePoolSerial(a1);

  JUMPOUT(0x23EE864A0);
}

uint64_t Phase::DspLayer23::ConvolverSlice<9>::~ConvolverSlice(uint64_t a1)
{
  free(*(a1 + 1520));
  for (i = 1376; i != 224; i -= 128)
  {
    free(*(a1 + i));
  }

  free(*(a1 + 224));
  return a1;
}

void Phase::DspLayer23::ConvolverSlice<9>::~ConvolverSlice(uint64_t a1)
{
  free(*(a1 + 1520));
  for (i = 1376; i != 224; i -= 128)
  {
    free(*(a1 + i));
  }

  free(*(a1 + 224));

  JUMPOUT(0x23EE86490);
}

double Phase::DspLayer23::ConvolverSlice<9>::Reset(uint64_t a1)
{
  *(a1 + 232) = 0;
  *(a1 + 1528) = 0u;
  *(a1 + 1544) = 0u;
  *(a1 + 1560) = 0u;
  *(a1 + 1576) = 0u;
  *(a1 + 1592) = 0u;
  v1 = xmmword_23A554B70;
  v2 = (a1 + 488);
  v3 = 10;
  v4 = vdupq_n_s64(9uLL);
  v5 = vdupq_n_s64(2uLL);
  do
  {
    if (vmovn_s64(vcgtq_u64(v4, v1)).u8[0])
    {
      *(v2 - 16) = 0;
    }

    if (vmovn_s64(vcgtq_u64(vdupq_n_s64(9uLL), *&v1)).i32[1])
    {
      *v2 = 0;
    }

    v1 = vaddq_s64(v1, v5);
    v2 += 32;
    v3 -= 2;
  }

  while (v3);
  *(a1 + 1640) = 0;
  result = 0.0;
  *(a1 + 1608) = 0u;
  *(a1 + 32) = -1;
  return result;
}

uint64_t Phase::DspLayer23::ConvolverSlice<9>::OnStop(uint64_t result)
{
  v1 = *(result + 1608);
  if (v1)
  {
    atomic_store(0, (v1 + 12));
  }

  v2 = *(result + 1616);
  if (v2)
  {
    atomic_store(0, (v2 + 12));
  }

  return result;
}

double Phase::DspLayer23::ConvolverSlice<9>::MoveStateTo(uint64_t a1, uint64_t a2)
{
  v2 = 0;
  *(a2 + 32) = *(a1 + 32);
  v3 = *(a2 + 224);
  v4 = *(a1 + 176);
  v6 = *(a1 + 128);
  v5 = *(a1 + 144);
  *(a2 + 160) = *(a1 + 160);
  *(a2 + 176) = v4;
  *(a2 + 128) = v6;
  *(a2 + 144) = v5;
  v7 = *(a1 + 224);
  v8 = *(a1 + 240);
  v9 = *(a1 + 208);
  *(a2 + 192) = *(a1 + 192);
  *(a2 + 208) = v9;
  *(a2 + 224) = v7;
  *(a2 + 240) = v8;
  *(a1 + 224) = v3;
  *(a1 + 232) = 0;
  v10 = *(a2 + 1520);
  v11 = *(a1 + 1424);
  v12 = *(a1 + 1440);
  *(a2 + 1456) = *(a1 + 1456);
  *(a2 + 1440) = v12;
  *(a2 + 1424) = v11;
  v13 = *(a1 + 1520);
  v14 = *(a1 + 1488);
  v15 = *(a1 + 1504);
  *(a2 + 1472) = *(a1 + 1472);
  *(a2 + 1504) = v15;
  *(a2 + 1488) = v14;
  *(a2 + 1520) = v13;
  *(a2 + 1408) = *(a1 + 1408);
  *(a1 + 1520) = v10;
  *(a1 + 1528) = 0;
  v16 = 1536;
  do
  {
    v17 = a1 + v2;
    v18 = (a2 + v2);
    v19 = *(a2 + v2 + 352);
    v20 = *(a1 + v2 + 304);
    v22 = *(a1 + v2 + 256);
    v21 = *(a1 + v2 + 272);
    v18[18] = *(a1 + v2 + 288);
    v18[19] = v20;
    v18[16] = v22;
    v18[17] = v21;
    v23 = *(a1 + v2 + 352);
    v24 = *(a1 + v2 + 368);
    v25 = *(a1 + v2 + 336);
    v18[20] = *(a1 + v2 + 320);
    v18[21] = v25;
    v18[22] = v23;
    v18[23] = v24;
    *(v17 + 352) = v19;
    v26 = *(a1 + v16);
    *(v17 + 360) = 0;
    *(a2 + v16) = v26;
    v2 += 128;
    v16 += 8;
  }

  while (v2 != 1152);
  *(a2 + 1608) = *(a1 + 1608);
  *(a2 + 1616) = *(a1 + 1616);
  *(a2 + 1624) = *(a1 + 1624);
  *(a2 + 1632) = *(a1 + 1632);
  *(a2 + 1640) = *(a1 + 1640);
  *(a2 + 1650) = *(a1 + 1650);
  *(a2 + 1648) = *(a1 + 1648);
  *(a1 + 1640) = 0;
  result = 0.0;
  *(a1 + 1608) = 0u;
  return result;
}

void Phase::DspLayer23::ConvolverSlice<9>::Process(uint64_t a1, int a2)
{
  v67 = *MEMORY[0x277D85DE8];
  v4 = a2;
  MEMORY[0x28223BE20](a1);
  v6 = (&v61 - v5);
  bzero(&v61 - v5, v7);
  v8 = Phase::DspLayer23::AudioConnections::Sum((a1 + 1408), v4, v6);
  v9 = *(a1 + 1640);
  if (!v9)
  {
    if (*(a1 + 1648) == 1)
    {
      v15 = **(Phase::Logger::GetInstance(v8) + 160);
      if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
      {
        v16 = *(a1 + 32);
        *buf = 136315906;
        *&buf[4] = "VPConvolver.hpp";
        *&buf[12] = 1024;
        *&buf[14] = 233;
        *&buf[18] = 1024;
        *&buf[20] = 9;
        *&buf[24] = 2048;
        *&buf[26] = v16;
        _os_log_impl(&dword_23A302000, v15, OS_LOG_TYPE_ERROR, "%25s:%-5d Convolver1x%d[%llx] buffer exchanger is nullptr. Output will be silent.", buf, 0x22u);
      }

      *(a1 + 1648) = 0;
    }

    goto LABEL_47;
  }

  v10 = v8;
  *(a1 + 1648) = 1;
  v11 = atomic_exchange(v9, 0);
  if (v11)
  {
    v12 = *v11;
    if (*v11)
    {
      v13 = *(a1 + 1608);
      if (v13)
      {
        v14 = *v13;
        if (v12 == *v13)
        {
LABEL_34:
          *(a1 + 1649) = 1;
          goto LABEL_35;
        }
      }

      else
      {
        v14 = 0;
      }

      atomic_store(1u, (v11 + 12));
      v17 = *(v11 + 8);
      (*(*v12 + 40))(v12);
      v8 = (*(*v12 + 56))(v12);
      if (v8 == 128)
      {
        v8 = (*(*v12 + 64))(v12);
        if (v8 == 9)
        {
          v18 = *(a1 + 1616);
          if (v18)
          {
            atomic_store(0, (v18 + 12));
          }

          *(a1 + 1616) = *(a1 + 1608);
          *(a1 + 1608) = v11;
          v8 = Phase::DspLayer23::SliceSerial::CallbackToVoiceEngine<Phase::DspLayer::IConvolver *>(*(a1 + 16), *(a1 + 32), v12);
          if (v14)
          {
            (*(*v12 + 104))(v12, v14);
            v19 = v17 + 127;
            if (v17 >= 0)
            {
              v19 = v17;
            }

            v20 = (v19 & 0xFFFFFF80) + 128;
            if ((v17 & 0x7F) != 0)
            {
              v21 = v20;
            }

            else
            {
              v21 = v17;
            }

            if ((v21 & 0x7F) != 0)
            {
              __assert_rtn("SwapConvolverInternal", "VPConvolver.hpp", 199, "(numCrossfadeFrames % DspLayer::kCanonicalConvolverBlockSize) == 0");
            }

            if (*(a1 + 1632) >= 1)
            {
              v22 = _os_log_pack_size();
              Instance = Phase::Logger::GetInstance(v22);
              if (caulk::deferred_logger::create_message(*(Instance + 1248), v22 + 88, 0))
              {
                v24 = _os_log_pack_fill();
                v25 = *(a1 + 16);
                v26 = *(a1 + 32);
                v27 = *(a1 + 1636);
                v28 = *(a1 + 1632);
                v29 = *(*(v25 + 576) + 96);
                *v24 = 67110400;
                *(v24 + 4) = 9;
                *(v24 + 8) = 2048;
                *(v24 + 10) = v25;
                *(v24 + 18) = 2048;
                *(v24 + 20) = v26;
                *(v24 + 28) = 1024;
                *(v24 + 30) = v27;
                *(v24 + 34) = 1024;
                *(v24 + 36) = v28;
                *(v24 + 40) = 2048;
                *(v24 + 42) = v29;
                Phase::Logger::GetInstance(v24);
                caulk::concurrent::messenger::enqueue();
              }
            }

            *(a1 + 1624) = 1065353216;
            *(a1 + 1628) = -1.0 / (v21 - 1);
            *(a1 + 1632) = v21;
            v30 = (*(*v12 + 72))(v12);
            v31 = (*(*v12 + 40))(v12);
            if (v31 <= (*(*v12 + 56))(v12))
            {
              v33 = 0;
            }

            else
            {
              v32 = (*(*v12 + 80))(v12, (v30 - 1));
              v33 = (*(*v32 + 56))(v32);
            }

            *(a1 + 1636) = v33;
            v8 = (*(*v14 + 40))(v14);
          }

          goto LABEL_34;
        }
      }
    }

    if (*(a1 + 1649) == 1)
    {
      v34 = **(Phase::Logger::GetInstance(v8) + 160);
      if (os_log_type_enabled(v34, OS_LOG_TYPE_ERROR))
      {
        v35 = *(a1 + 32);
        *buf = 136315906;
        *&buf[4] = "VPConvolver.hpp";
        *&buf[12] = 1024;
        *&buf[14] = 253;
        *&buf[18] = 1024;
        *&buf[20] = 9;
        *&buf[24] = 2048;
        *&buf[26] = v35;
        _os_log_impl(&dword_23A302000, v34, OS_LOG_TYPE_ERROR, "%25s:%-5d Convolver1x%d[%llx] failed to swap buffer. Output will be silent.", buf, 0x22u);
      }

      *(a1 + 1649) = 0;
    }

    goto LABEL_47;
  }

LABEL_35:
  v36 = *(a1 + 1608);
  if (!v36)
  {
    if (*(a1 + 1650) == 1)
    {
      v44 = **(Phase::Logger::GetInstance(v8) + 160);
      if (os_log_type_enabled(v44, OS_LOG_TYPE_ERROR))
      {
        v45 = *(a1 + 32);
        *buf = 136315906;
        *&buf[4] = "VPConvolver.hpp";
        *&buf[12] = 1024;
        *&buf[14] = 271;
        *&buf[18] = 2048;
        *&buf[20] = a1;
        *&buf[28] = 2048;
        *&buf[30] = v45;
        _os_log_impl(&dword_23A302000, v44, OS_LOG_TYPE_ERROR, "%25s:%-5d ConvolverVoicePool: slice%p (vid %llu) mConvolverBufferActive == nullptr. Output will be silent. \n", buf, 0x26u);
      }

      *(a1 + 1650) = 0;
    }

LABEL_47:
    v46 = 0;
    v47 = a1 + 1536;
    do
    {
      vDSP_vclr(*(v47 + v46), 1, v4);
      v46 += 8;
    }

    while (v46 != 72);
    return;
  }

  *(a1 + 1650) = 1;
  v37 = *v36;
  v38 = *(a1 + 1616);
  if (v38 && (v39 = *v38) != 0)
  {
    if (*(a1 + 1636) < 1)
    {
      v48 = a1 + 1616;
      v49 = a1 + 1536;
      (*(*v37 + 24))(v37, v10, a1 + 1536);
      for (i = 0; i != 72; i += 8)
      {
        v51 = 1.0 - *(a1 + 1624);
        __Step = -*(a1 + 1628);
        *buf = v51;
        vDSP_vrampmul(*(v49 + i), 1, buf, &__Step, *(v49 + i), 1, v4);
      }

      MEMORY[0x28223BE20](v52);
      v54 = &v61 - v53;
      bzero(&v61 - v53, v55);
      v56 = 0;
      v66 = 0;
      v65 = 0u;
      memset(buf, 0, sizeof(buf));
      do
      {
        *&buf[v56] = v54;
        v56 += 8;
        v54 += 4 * v4;
      }

      while (v56 != 72);
      (*(*v39 + 24))(v39, v10, buf);
      for (j = 0; j != 72; j += 8)
      {
        v58 = *(a1 + 1624);
        v62 = *(a1 + 1628);
        __Step = v58;
        vDSP_vrampmuladd(*&buf[j], 1, &__Step, &v62, *(v49 + j), 1, v4);
      }

      v59 = v62;
      *(a1 + 1624) = __Step;
      *(a1 + 1628) = v59;
      v60 = *(a1 + 1632) - a2;
      *(a1 + 1632) = v60;
      if (v60 < 1)
      {
        if (*v48)
        {
          atomic_store(0, (*v48 + 12));
        }

        *v48 = 0;
        *(a1 + 1624) = 0;
        *(a1 + 1632) = 0;
      }
    }

    else
    {
      MEMORY[0x28223BE20](v8);
      v41 = &v61 - v40;
      bzero(&v61 - v40, v42);
      v43 = 0;
      v66 = 0;
      v65 = 0u;
      memset(buf, 0, sizeof(buf));
      do
      {
        *&buf[v43] = v41;
        v43 += 8;
        v41 += 4 * v4;
      }

      while (v43 != 72);
      (*(*v39 + 24))(v39, v10, a1 + 1536);
      (*(*v37 + 24))(v37, v10, buf);
      *(a1 + 1636) -= a2;
    }
  }

  else
  {
    (*(*v37 + 24))(v37, v10, a1 + 1536);
  }
}

void Phase::DspLayer23::VPConvolver<10>::~VPConvolver(Phase::DspLayer23::VoicePoolSerial *a1)
{
  Phase::DspLayer23::VoicePoolSerial::~VoicePoolSerial(a1);

  JUMPOUT(0x23EE864A0);
}

uint64_t Phase::DspLayer23::ConvolverSlice<10>::~ConvolverSlice(uint64_t a1)
{
  free(*(a1 + 1648));
  for (i = 1504; i != 224; i -= 128)
  {
    free(*(a1 + i));
  }

  free(*(a1 + 224));
  return a1;
}

void Phase::DspLayer23::ConvolverSlice<10>::~ConvolverSlice(uint64_t a1)
{
  free(*(a1 + 1648));
  for (i = 1504; i != 224; i -= 128)
  {
    free(*(a1 + i));
  }

  free(*(a1 + 224));

  JUMPOUT(0x23EE86490);
}

double Phase::DspLayer23::ConvolverSlice<10>::Reset(uint64_t a1)
{
  *(a1 + 232) = 0;
  *(a1 + 1736) = 0;
  *(a1 + 1656) = 0u;
  *(a1 + 1672) = 0u;
  *(a1 + 1688) = 0u;
  *(a1 + 1704) = 0u;
  v1 = 360;
  *(a1 + 1720) = 0u;
  do
  {
    *(a1 + v1) = 0;
    v1 += 128;
  }

  while (v1 != 1640);
  *(a1 + 1776) = 0;
  result = 0.0;
  *(a1 + 1744) = 0u;
  *(a1 + 32) = -1;
  return result;
}

uint64_t Phase::DspLayer23::ConvolverSlice<10>::OnStop(uint64_t result)
{
  v1 = *(result + 1744);
  if (v1)
  {
    atomic_store(0, (v1 + 12));
  }

  v2 = *(result + 1752);
  if (v2)
  {
    atomic_store(0, (v2 + 12));
  }

  return result;
}

double Phase::DspLayer23::ConvolverSlice<10>::MoveStateTo(uint64_t a1, uint64_t a2)
{
  v2 = 0;
  *(a2 + 32) = *(a1 + 32);
  v3 = *(a2 + 224);
  v4 = *(a1 + 176);
  v6 = *(a1 + 128);
  v5 = *(a1 + 144);
  *(a2 + 160) = *(a1 + 160);
  *(a2 + 176) = v4;
  *(a2 + 128) = v6;
  *(a2 + 144) = v5;
  v7 = *(a1 + 224);
  v8 = *(a1 + 240);
  v9 = *(a1 + 208);
  *(a2 + 192) = *(a1 + 192);
  *(a2 + 208) = v9;
  *(a2 + 224) = v7;
  *(a2 + 240) = v8;
  *(a1 + 224) = v3;
  *(a1 + 232) = 0;
  v10 = *(a2 + 1648);
  v11 = *(a1 + 1552);
  v12 = *(a1 + 1568);
  *(a2 + 1584) = *(a1 + 1584);
  *(a2 + 1568) = v12;
  *(a2 + 1552) = v11;
  v13 = *(a1 + 1648);
  v14 = *(a1 + 1616);
  v15 = *(a1 + 1632);
  *(a2 + 1600) = *(a1 + 1600);
  *(a2 + 1632) = v15;
  *(a2 + 1616) = v14;
  *(a2 + 1648) = v13;
  *(a2 + 1536) = *(a1 + 1536);
  *(a1 + 1648) = v10;
  *(a1 + 1656) = 0;
  v16 = 1664;
  do
  {
    v17 = a1 + v2;
    v18 = (a2 + v2);
    v19 = *(a2 + v2 + 352);
    v20 = *(a1 + v2 + 304);
    v22 = *(a1 + v2 + 256);
    v21 = *(a1 + v2 + 272);
    v18[18] = *(a1 + v2 + 288);
    v18[19] = v20;
    v18[16] = v22;
    v18[17] = v21;
    v23 = *(a1 + v2 + 352);
    v24 = *(a1 + v2 + 368);
    v25 = *(a1 + v2 + 336);
    v18[20] = *(a1 + v2 + 320);
    v18[21] = v25;
    v18[22] = v23;
    v18[23] = v24;
    *(v17 + 352) = v19;
    v26 = *(a1 + v16);
    *(v17 + 360) = 0;
    *(a2 + v16) = v26;
    v2 += 128;
    v16 += 8;
  }

  while (v2 != 1280);
  *(a2 + 1744) = *(a1 + 1744);
  *(a2 + 1760) = *(a1 + 1760);
  *(a2 + 1768) = *(a1 + 1768);
  *(a2 + 1776) = *(a1 + 1776);
  *(a2 + 1786) = *(a1 + 1786);
  *(a2 + 1784) = *(a1 + 1784);
  *(a1 + 1776) = 0;
  result = 0.0;
  *(a1 + 1744) = 0u;
  return result;
}

void Phase::DspLayer23::ConvolverSlice<10>::Process(uint64_t a1, int a2)
{
  v67 = *MEMORY[0x277D85DE8];
  v4 = a2;
  MEMORY[0x28223BE20](a1);
  v6 = (&v61 - v5);
  bzero(&v61 - v5, v7);
  v8 = Phase::DspLayer23::AudioConnections::Sum((a1 + 1536), v4, v6);
  v9 = *(a1 + 1776);
  if (!v9)
  {
    if (*(a1 + 1784) == 1)
    {
      v15 = **(Phase::Logger::GetInstance(v8) + 160);
      if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
      {
        v16 = *(a1 + 32);
        *buf = 136315906;
        *&buf[4] = "VPConvolver.hpp";
        *&buf[12] = 1024;
        *&buf[14] = 233;
        *&buf[18] = 1024;
        *&buf[20] = 10;
        *&buf[24] = 2048;
        *&buf[26] = v16;
        _os_log_impl(&dword_23A302000, v15, OS_LOG_TYPE_ERROR, "%25s:%-5d Convolver1x%d[%llx] buffer exchanger is nullptr. Output will be silent.", buf, 0x22u);
      }

      *(a1 + 1784) = 0;
    }

    goto LABEL_47;
  }

  v10 = v8;
  *(a1 + 1784) = 1;
  v11 = atomic_exchange(v9, 0);
  if (v11)
  {
    v12 = *v11;
    if (*v11)
    {
      v13 = *(a1 + 1744);
      if (v13)
      {
        v14 = *v13;
        if (v12 == *v13)
        {
LABEL_34:
          *(a1 + 1785) = 1;
          goto LABEL_35;
        }
      }

      else
      {
        v14 = 0;
      }

      atomic_store(1u, (v11 + 12));
      v17 = *(v11 + 8);
      (*(*v12 + 40))(v12);
      v8 = (*(*v12 + 56))(v12);
      if (v8 == 128)
      {
        v8 = (*(*v12 + 64))(v12);
        if (v8 == 10)
        {
          v18 = *(a1 + 1752);
          if (v18)
          {
            atomic_store(0, (v18 + 12));
          }

          *(a1 + 1752) = *(a1 + 1744);
          *(a1 + 1744) = v11;
          v8 = Phase::DspLayer23::SliceSerial::CallbackToVoiceEngine<Phase::DspLayer::IConvolver *>(*(a1 + 16), *(a1 + 32), v12);
          if (v14)
          {
            (*(*v12 + 104))(v12, v14);
            v19 = v17 + 127;
            if (v17 >= 0)
            {
              v19 = v17;
            }

            v20 = (v19 & 0xFFFFFF80) + 128;
            if ((v17 & 0x7F) != 0)
            {
              v21 = v20;
            }

            else
            {
              v21 = v17;
            }

            if ((v21 & 0x7F) != 0)
            {
              __assert_rtn("SwapConvolverInternal", "VPConvolver.hpp", 199, "(numCrossfadeFrames % DspLayer::kCanonicalConvolverBlockSize) == 0");
            }

            if (*(a1 + 1768) >= 1)
            {
              v22 = _os_log_pack_size();
              Instance = Phase::Logger::GetInstance(v22);
              if (caulk::deferred_logger::create_message(*(Instance + 1248), v22 + 88, 0))
              {
                v24 = _os_log_pack_fill();
                v25 = *(a1 + 16);
                v26 = *(a1 + 32);
                v27 = *(a1 + 1772);
                v28 = *(a1 + 1768);
                v29 = *(*(v25 + 576) + 96);
                *v24 = 67110400;
                *(v24 + 4) = 10;
                *(v24 + 8) = 2048;
                *(v24 + 10) = v25;
                *(v24 + 18) = 2048;
                *(v24 + 20) = v26;
                *(v24 + 28) = 1024;
                *(v24 + 30) = v27;
                *(v24 + 34) = 1024;
                *(v24 + 36) = v28;
                *(v24 + 40) = 2048;
                *(v24 + 42) = v29;
                Phase::Logger::GetInstance(v24);
                caulk::concurrent::messenger::enqueue();
              }
            }

            *(a1 + 1760) = 1065353216;
            *(a1 + 1764) = -1.0 / (v21 - 1);
            *(a1 + 1768) = v21;
            v30 = (*(*v12 + 72))(v12);
            v31 = (*(*v12 + 40))(v12);
            if (v31 <= (*(*v12 + 56))(v12))
            {
              v33 = 0;
            }

            else
            {
              v32 = (*(*v12 + 80))(v12, (v30 - 1));
              v33 = (*(*v32 + 56))(v32);
            }

            *(a1 + 1772) = v33;
            v8 = (*(*v14 + 40))(v14);
          }

          goto LABEL_34;
        }
      }
    }

    if (*(a1 + 1785) == 1)
    {
      v34 = **(Phase::Logger::GetInstance(v8) + 160);
      if (os_log_type_enabled(v34, OS_LOG_TYPE_ERROR))
      {
        v35 = *(a1 + 32);
        *buf = 136315906;
        *&buf[4] = "VPConvolver.hpp";
        *&buf[12] = 1024;
        *&buf[14] = 253;
        *&buf[18] = 1024;
        *&buf[20] = 10;
        *&buf[24] = 2048;
        *&buf[26] = v35;
        _os_log_impl(&dword_23A302000, v34, OS_LOG_TYPE_ERROR, "%25s:%-5d Convolver1x%d[%llx] failed to swap buffer. Output will be silent.", buf, 0x22u);
      }

      *(a1 + 1785) = 0;
    }

    goto LABEL_47;
  }

LABEL_35:
  v36 = *(a1 + 1744);
  if (!v36)
  {
    if (*(a1 + 1786) == 1)
    {
      v44 = **(Phase::Logger::GetInstance(v8) + 160);
      if (os_log_type_enabled(v44, OS_LOG_TYPE_ERROR))
      {
        v45 = *(a1 + 32);
        *buf = 136315906;
        *&buf[4] = "VPConvolver.hpp";
        *&buf[12] = 1024;
        *&buf[14] = 271;
        *&buf[18] = 2048;
        *&buf[20] = a1;
        *&buf[28] = 2048;
        *&buf[30] = v45;
        _os_log_impl(&dword_23A302000, v44, OS_LOG_TYPE_ERROR, "%25s:%-5d ConvolverVoicePool: slice%p (vid %llu) mConvolverBufferActive == nullptr. Output will be silent. \n", buf, 0x26u);
      }

      *(a1 + 1786) = 0;
    }

LABEL_47:
    v46 = 0;
    v47 = a1 + 1664;
    do
    {
      vDSP_vclr(*(v47 + v46), 1, v4);
      v46 += 8;
    }

    while (v46 != 80);
    return;
  }

  *(a1 + 1786) = 1;
  v37 = *v36;
  v38 = *(a1 + 1752);
  if (v38 && (v39 = *v38) != 0)
  {
    if (*(a1 + 1772) < 1)
    {
      v48 = a1 + 1752;
      v49 = a1 + 1664;
      (*(*v37 + 24))(v37, v10, a1 + 1664);
      for (i = 0; i != 80; i += 8)
      {
        v51 = 1.0 - *(a1 + 1760);
        __Step = -*(a1 + 1764);
        *buf = v51;
        vDSP_vrampmul(*(v49 + i), 1, buf, &__Step, *(v49 + i), 1, v4);
      }

      MEMORY[0x28223BE20](v52);
      v54 = &v61 - v53;
      bzero(&v61 - v53, v55);
      v56 = 0;
      v65 = 0u;
      v66 = 0u;
      memset(buf, 0, sizeof(buf));
      do
      {
        *&buf[v56] = v54;
        v56 += 8;
        v54 += 4 * v4;
      }

      while (v56 != 80);
      (*(*v39 + 24))(v39, v10, buf);
      for (j = 0; j != 80; j += 8)
      {
        v58 = *(a1 + 1760);
        v62 = *(a1 + 1764);
        __Step = v58;
        vDSP_vrampmuladd(*&buf[j], 1, &__Step, &v62, *(v49 + j), 1, v4);
      }

      v59 = v62;
      *(a1 + 1760) = __Step;
      *(a1 + 1764) = v59;
      v60 = *(a1 + 1768) - a2;
      *(a1 + 1768) = v60;
      if (v60 < 1)
      {
        if (*v48)
        {
          atomic_store(0, (*v48 + 12));
        }

        *v48 = 0;
        *(a1 + 1760) = 0;
        *(a1 + 1768) = 0;
      }
    }

    else
    {
      MEMORY[0x28223BE20](v8);
      v41 = &v61 - v40;
      bzero(&v61 - v40, v42);
      v43 = 0;
      v65 = 0u;
      v66 = 0u;
      memset(buf, 0, sizeof(buf));
      do
      {
        *&buf[v43] = v41;
        v43 += 8;
        v41 += 4 * v4;
      }

      while (v43 != 80);
      (*(*v39 + 24))(v39, v10, a1 + 1664);
      (*(*v37 + 24))(v37, v10, buf);
      *(a1 + 1772) -= a2;
    }
  }

  else
  {
    (*(*v37 + 24))(v37, v10, a1 + 1664);
  }
}

void Phase::DspLayer23::VPConvolver<11>::~VPConvolver(Phase::DspLayer23::VoicePoolSerial *a1)
{
  Phase::DspLayer23::VoicePoolSerial::~VoicePoolSerial(a1);

  JUMPOUT(0x23EE864A0);
}

uint64_t Phase::DspLayer23::ConvolverSlice<11>::~ConvolverSlice(uint64_t a1)
{
  free(*(a1 + 1776));
  for (i = 1632; i != 224; i -= 128)
  {
    free(*(a1 + i));
  }

  free(*(a1 + 224));
  return a1;
}

void Phase::DspLayer23::ConvolverSlice<11>::~ConvolverSlice(uint64_t a1)
{
  free(*(a1 + 1776));
  for (i = 1632; i != 224; i -= 128)
  {
    free(*(a1 + i));
  }

  free(*(a1 + 224));

  JUMPOUT(0x23EE86490);
}

double Phase::DspLayer23::ConvolverSlice<11>::Reset(uint64_t a1)
{
  *(a1 + 232) = 0;
  *(a1 + 1784) = 0u;
  *(a1 + 1800) = 0u;
  *(a1 + 1816) = 0u;
  *(a1 + 1832) = 0u;
  *(a1 + 1848) = 0u;
  *(a1 + 1864) = 0u;
  v1 = xmmword_23A554B70;
  v2 = (a1 + 488);
  v3 = 12;
  v4 = vdupq_n_s64(0xBuLL);
  v5 = vdupq_n_s64(2uLL);
  do
  {
    if (vmovn_s64(vcgtq_u64(v4, v1)).u8[0])
    {
      *(v2 - 16) = 0;
    }

    if (vmovn_s64(vcgtq_u64(vdupq_n_s64(0xBuLL), *&v1)).i32[1])
    {
      *v2 = 0;
    }

    v1 = vaddq_s64(v1, v5);
    v2 += 32;
    v3 -= 2;
  }

  while (v3);
  *(a1 + 1912) = 0;
  result = 0.0;
  *(a1 + 1880) = 0u;
  *(a1 + 32) = -1;
  return result;
}

uint64_t Phase::DspLayer23::ConvolverSlice<11>::OnStop(uint64_t result)
{
  v1 = *(result + 1880);
  if (v1)
  {
    atomic_store(0, (v1 + 12));
  }

  v2 = *(result + 1888);
  if (v2)
  {
    atomic_store(0, (v2 + 12));
  }

  return result;
}

double Phase::DspLayer23::ConvolverSlice<11>::MoveStateTo(uint64_t a1, uint64_t a2)
{
  v2 = 0;
  *(a2 + 32) = *(a1 + 32);
  v3 = *(a2 + 224);
  v4 = *(a1 + 176);
  v6 = *(a1 + 128);
  v5 = *(a1 + 144);
  *(a2 + 160) = *(a1 + 160);
  *(a2 + 176) = v4;
  *(a2 + 128) = v6;
  *(a2 + 144) = v5;
  v7 = *(a1 + 224);
  v8 = *(a1 + 240);
  v9 = *(a1 + 208);
  *(a2 + 192) = *(a1 + 192);
  *(a2 + 208) = v9;
  *(a2 + 224) = v7;
  *(a2 + 240) = v8;
  *(a1 + 224) = v3;
  *(a1 + 232) = 0;
  v10 = *(a2 + 1776);
  v11 = *(a1 + 1680);
  v12 = *(a1 + 1696);
  *(a2 + 1712) = *(a1 + 1712);
  *(a2 + 1696) = v12;
  *(a2 + 1680) = v11;
  v13 = *(a1 + 1776);
  v14 = *(a1 + 1744);
  v15 = *(a1 + 1760);
  *(a2 + 1728) = *(a1 + 1728);
  *(a2 + 1760) = v15;
  *(a2 + 1744) = v14;
  *(a2 + 1776) = v13;
  *(a2 + 1664) = *(a1 + 1664);
  *(a1 + 1776) = v10;
  *(a1 + 1784) = 0;
  v16 = 1792;
  do
  {
    v17 = a1 + v2;
    v18 = (a2 + v2);
    v19 = *(a2 + v2 + 352);
    v20 = *(a1 + v2 + 304);
    v22 = *(a1 + v2 + 256);
    v21 = *(a1 + v2 + 272);
    v18[18] = *(a1 + v2 + 288);
    v18[19] = v20;
    v18[16] = v22;
    v18[17] = v21;
    v23 = *(a1 + v2 + 352);
    v24 = *(a1 + v2 + 368);
    v25 = *(a1 + v2 + 336);
    v18[20] = *(a1 + v2 + 320);
    v18[21] = v25;
    v18[22] = v23;
    v18[23] = v24;
    *(v17 + 352) = v19;
    v26 = *(a1 + v16);
    *(v17 + 360) = 0;
    *(a2 + v16) = v26;
    v2 += 128;
    v16 += 8;
  }

  while (v2 != 1408);
  *(a2 + 1880) = *(a1 + 1880);
  *(a2 + 1888) = *(a1 + 1888);
  *(a2 + 1896) = *(a1 + 1896);
  *(a2 + 1904) = *(a1 + 1904);
  *(a2 + 1912) = *(a1 + 1912);
  *(a2 + 1922) = *(a1 + 1922);
  *(a2 + 1920) = *(a1 + 1920);
  *(a1 + 1912) = 0;
  result = 0.0;
  *(a1 + 1880) = 0u;
  return result;
}

void Phase::DspLayer23::ConvolverSlice<11>::Process(uint64_t a1, int a2)
{
  v68 = *MEMORY[0x277D85DE8];
  v4 = a2;
  MEMORY[0x28223BE20](a1);
  v6 = (&v61 - v5);
  bzero(&v61 - v5, v7);
  v8 = Phase::DspLayer23::AudioConnections::Sum((a1 + 1664), v4, v6);
  v9 = *(a1 + 1912);
  if (!v9)
  {
    if (*(a1 + 1920) == 1)
    {
      v15 = **(Phase::Logger::GetInstance(v8) + 160);
      if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
      {
        v16 = *(a1 + 32);
        *buf = 136315906;
        *&buf[4] = "VPConvolver.hpp";
        *&buf[12] = 1024;
        *&buf[14] = 233;
        *&buf[18] = 1024;
        *&buf[20] = 11;
        *&buf[24] = 2048;
        *&buf[26] = v16;
        _os_log_impl(&dword_23A302000, v15, OS_LOG_TYPE_ERROR, "%25s:%-5d Convolver1x%d[%llx] buffer exchanger is nullptr. Output will be silent.", buf, 0x22u);
      }

      *(a1 + 1920) = 0;
    }

    goto LABEL_47;
  }

  v10 = v8;
  *(a1 + 1920) = 1;
  v11 = atomic_exchange(v9, 0);
  if (v11)
  {
    v12 = *v11;
    if (*v11)
    {
      v13 = *(a1 + 1880);
      if (v13)
      {
        v14 = *v13;
        if (v12 == *v13)
        {
LABEL_34:
          *(a1 + 1921) = 1;
          goto LABEL_35;
        }
      }

      else
      {
        v14 = 0;
      }

      atomic_store(1u, (v11 + 12));
      v17 = *(v11 + 8);
      (*(*v12 + 40))(v12);
      v8 = (*(*v12 + 56))(v12);
      if (v8 == 128)
      {
        v8 = (*(*v12 + 64))(v12);
        if (v8 == 11)
        {
          v18 = *(a1 + 1888);
          if (v18)
          {
            atomic_store(0, (v18 + 12));
          }

          *(a1 + 1888) = *(a1 + 1880);
          *(a1 + 1880) = v11;
          v8 = Phase::DspLayer23::SliceSerial::CallbackToVoiceEngine<Phase::DspLayer::IConvolver *>(*(a1 + 16), *(a1 + 32), v12);
          if (v14)
          {
            (*(*v12 + 104))(v12, v14);
            v19 = v17 + 127;
            if (v17 >= 0)
            {
              v19 = v17;
            }

            v20 = (v19 & 0xFFFFFF80) + 128;
            if ((v17 & 0x7F) != 0)
            {
              v21 = v20;
            }

            else
            {
              v21 = v17;
            }

            if ((v21 & 0x7F) != 0)
            {
              __assert_rtn("SwapConvolverInternal", "VPConvolver.hpp", 199, "(numCrossfadeFrames % DspLayer::kCanonicalConvolverBlockSize) == 0");
            }

            if (*(a1 + 1904) >= 1)
            {
              v22 = _os_log_pack_size();
              Instance = Phase::Logger::GetInstance(v22);
              if (caulk::deferred_logger::create_message(*(Instance + 1248), v22 + 88, 0))
              {
                v24 = _os_log_pack_fill();
                v25 = *(a1 + 16);
                v26 = *(a1 + 32);
                v27 = *(a1 + 1908);
                v28 = *(a1 + 1904);
                v29 = *(*(v25 + 576) + 96);
                *v24 = 67110400;
                *(v24 + 4) = 11;
                *(v24 + 8) = 2048;
                *(v24 + 10) = v25;
                *(v24 + 18) = 2048;
                *(v24 + 20) = v26;
                *(v24 + 28) = 1024;
                *(v24 + 30) = v27;
                *(v24 + 34) = 1024;
                *(v24 + 36) = v28;
                *(v24 + 40) = 2048;
                *(v24 + 42) = v29;
                Phase::Logger::GetInstance(v24);
                caulk::concurrent::messenger::enqueue();
              }
            }

            *(a1 + 1896) = 1065353216;
            *(a1 + 1900) = -1.0 / (v21 - 1);
            *(a1 + 1904) = v21;
            v30 = (*(*v12 + 72))(v12);
            v31 = (*(*v12 + 40))(v12);
            if (v31 <= (*(*v12 + 56))(v12))
            {
              v33 = 0;
            }

            else
            {
              v32 = (*(*v12 + 80))(v12, (v30 - 1));
              v33 = (*(*v32 + 56))(v32);
            }

            *(a1 + 1908) = v33;
            v8 = (*(*v14 + 40))(v14);
          }

          goto LABEL_34;
        }
      }
    }

    if (*(a1 + 1921) == 1)
    {
      v34 = **(Phase::Logger::GetInstance(v8) + 160);
      if (os_log_type_enabled(v34, OS_LOG_TYPE_ERROR))
      {
        v35 = *(a1 + 32);
        *buf = 136315906;
        *&buf[4] = "VPConvolver.hpp";
        *&buf[12] = 1024;
        *&buf[14] = 253;
        *&buf[18] = 1024;
        *&buf[20] = 11;
        *&buf[24] = 2048;
        *&buf[26] = v35;
        _os_log_impl(&dword_23A302000, v34, OS_LOG_TYPE_ERROR, "%25s:%-5d Convolver1x%d[%llx] failed to swap buffer. Output will be silent.", buf, 0x22u);
      }

      *(a1 + 1921) = 0;
    }

    goto LABEL_47;
  }

LABEL_35:
  v36 = *(a1 + 1880);
  if (!v36)
  {
    if (*(a1 + 1922) == 1)
    {
      v44 = **(Phase::Logger::GetInstance(v8) + 160);
      if (os_log_type_enabled(v44, OS_LOG_TYPE_ERROR))
      {
        v45 = *(a1 + 32);
        *buf = 136315906;
        *&buf[4] = "VPConvolver.hpp";
        *&buf[12] = 1024;
        *&buf[14] = 271;
        *&buf[18] = 2048;
        *&buf[20] = a1;
        *&buf[28] = 2048;
        *&buf[30] = v45;
        _os_log_impl(&dword_23A302000, v44, OS_LOG_TYPE_ERROR, "%25s:%-5d ConvolverVoicePool: slice%p (vid %llu) mConvolverBufferActive == nullptr. Output will be silent. \n", buf, 0x26u);
      }

      *(a1 + 1922) = 0;
    }

LABEL_47:
    v46 = 0;
    v47 = a1 + 1792;
    do
    {
      vDSP_vclr(*(v47 + v46), 1, v4);
      v46 += 8;
    }

    while (v46 != 88);
    return;
  }

  *(a1 + 1922) = 1;
  v37 = *v36;
  v38 = *(a1 + 1888);
  if (v38 && (v39 = *v38) != 0)
  {
    if (*(a1 + 1908) < 1)
    {
      v48 = a1 + 1888;
      v49 = a1 + 1792;
      (*(*v37 + 24))(v37, v10, a1 + 1792);
      for (i = 0; i != 88; i += 8)
      {
        v51 = 1.0 - *(a1 + 1896);
        __Step = -*(a1 + 1900);
        *buf = v51;
        vDSP_vrampmul(*(v49 + i), 1, buf, &__Step, *(v49 + i), 1, v4);
      }

      MEMORY[0x28223BE20](v52);
      v54 = &v61 - v53;
      bzero(&v61 - v53, v55);
      v56 = 0;
      v67 = 0;
      v65 = 0u;
      v66 = 0u;
      memset(buf, 0, sizeof(buf));
      do
      {
        *&buf[v56] = v54;
        v56 += 8;
        v54 += 4 * v4;
      }

      while (v56 != 88);
      (*(*v39 + 24))(v39, v10, buf);
      for (j = 0; j != 88; j += 8)
      {
        v58 = *(a1 + 1896);
        v62 = *(a1 + 1900);
        __Step = v58;
        vDSP_vrampmuladd(*&buf[j], 1, &__Step, &v62, *(v49 + j), 1, v4);
      }

      v59 = v62;
      *(a1 + 1896) = __Step;
      *(a1 + 1900) = v59;
      v60 = *(a1 + 1904) - a2;
      *(a1 + 1904) = v60;
      if (v60 < 1)
      {
        if (*v48)
        {
          atomic_store(0, (*v48 + 12));
        }

        *v48 = 0;
        *(a1 + 1896) = 0;
        *(a1 + 1904) = 0;
      }
    }

    else
    {
      MEMORY[0x28223BE20](v8);
      v41 = &v61 - v40;
      bzero(&v61 - v40, v42);
      v43 = 0;
      v67 = 0;
      v65 = 0u;
      v66 = 0u;
      memset(buf, 0, sizeof(buf));
      do
      {
        *&buf[v43] = v41;
        v43 += 8;
        v41 += 4 * v4;
      }

      while (v43 != 88);
      (*(*v39 + 24))(v39, v10, a1 + 1792);
      (*(*v37 + 24))(v37, v10, buf);
      *(a1 + 1908) -= a2;
    }
  }

  else
  {
    (*(*v37 + 24))(v37, v10, a1 + 1792);
  }
}

void Phase::DspLayer23::VPConvolver<12>::~VPConvolver(Phase::DspLayer23::VoicePoolSerial *a1)
{
  Phase::DspLayer23::VoicePoolSerial::~VoicePoolSerial(a1);

  JUMPOUT(0x23EE864A0);
}

uint64_t Phase::DspLayer23::ConvolverSlice<12>::~ConvolverSlice(uint64_t a1)
{
  free(*(a1 + 1904));
  for (i = 1760; i != 224; i -= 128)
  {
    free(*(a1 + i));
  }

  free(*(a1 + 224));
  return a1;
}

void Phase::DspLayer23::ConvolverSlice<12>::~ConvolverSlice(uint64_t a1)
{
  free(*(a1 + 1904));
  for (i = 1760; i != 224; i -= 128)
  {
    free(*(a1 + i));
  }

  free(*(a1 + 224));

  JUMPOUT(0x23EE86490);
}

double Phase::DspLayer23::ConvolverSlice<12>::Reset(uint64_t a1)
{
  *(a1 + 232) = 0;
  *(a1 + 2008) = 0;
  *(a1 + 1912) = 0u;
  *(a1 + 1928) = 0u;
  *(a1 + 1944) = 0u;
  *(a1 + 1960) = 0u;
  v1 = 360;
  *(a1 + 1976) = 0u;
  *(a1 + 1992) = 0u;
  do
  {
    *(a1 + v1) = 0;
    v1 += 128;
  }

  while (v1 != 1896);
  *(a1 + 2048) = 0;
  result = 0.0;
  *(a1 + 2016) = 0u;
  *(a1 + 32) = -1;
  return result;
}

uint64_t Phase::DspLayer23::ConvolverSlice<12>::OnStop(uint64_t result)
{
  v1 = *(result + 2016);
  if (v1)
  {
    atomic_store(0, (v1 + 12));
  }

  v2 = *(result + 2024);
  if (v2)
  {
    atomic_store(0, (v2 + 12));
  }

  return result;
}

double Phase::DspLayer23::ConvolverSlice<12>::MoveStateTo(uint64_t a1, uint64_t a2)
{
  v2 = 0;
  *(a2 + 32) = *(a1 + 32);
  v3 = *(a2 + 224);
  v4 = *(a1 + 176);
  v6 = *(a1 + 128);
  v5 = *(a1 + 144);
  *(a2 + 160) = *(a1 + 160);
  *(a2 + 176) = v4;
  *(a2 + 128) = v6;
  *(a2 + 144) = v5;
  v7 = *(a1 + 224);
  v8 = *(a1 + 240);
  v9 = *(a1 + 208);
  *(a2 + 192) = *(a1 + 192);
  *(a2 + 208) = v9;
  *(a2 + 224) = v7;
  *(a2 + 240) = v8;
  *(a1 + 224) = v3;
  *(a1 + 232) = 0;
  v10 = *(a2 + 1904);
  v11 = *(a1 + 1808);
  v12 = *(a1 + 1824);
  *(a2 + 1840) = *(a1 + 1840);
  *(a2 + 1824) = v12;
  *(a2 + 1808) = v11;
  v13 = *(a1 + 1904);
  v14 = *(a1 + 1872);
  v15 = *(a1 + 1888);
  *(a2 + 1856) = *(a1 + 1856);
  *(a2 + 1888) = v15;
  *(a2 + 1872) = v14;
  *(a2 + 1904) = v13;
  *(a2 + 1792) = *(a1 + 1792);
  *(a1 + 1904) = v10;
  *(a1 + 1912) = 0;
  v16 = 1920;
  do
  {
    v17 = a1 + v2;
    v18 = (a2 + v2);
    v19 = *(a2 + v2 + 352);
    v20 = *(a1 + v2 + 304);
    v22 = *(a1 + v2 + 256);
    v21 = *(a1 + v2 + 272);
    v18[18] = *(a1 + v2 + 288);
    v18[19] = v20;
    v18[16] = v22;
    v18[17] = v21;
    v23 = *(a1 + v2 + 352);
    v24 = *(a1 + v2 + 368);
    v25 = *(a1 + v2 + 336);
    v18[20] = *(a1 + v2 + 320);
    v18[21] = v25;
    v18[22] = v23;
    v18[23] = v24;
    *(v17 + 352) = v19;
    v26 = *(a1 + v16);
    *(v17 + 360) = 0;
    *(a2 + v16) = v26;
    v2 += 128;
    v16 += 8;
  }

  while (v2 != 1536);
  *(a2 + 2016) = *(a1 + 2016);
  *(a2 + 2032) = *(a1 + 2032);
  *(a2 + 2040) = *(a1 + 2040);
  *(a2 + 2048) = *(a1 + 2048);
  *(a2 + 2058) = *(a1 + 2058);
  *(a2 + 2056) = *(a1 + 2056);
  *(a1 + 2048) = 0;
  result = 0.0;
  *(a1 + 2016) = 0u;
  return result;
}

void Phase::DspLayer23::ConvolverSlice<12>::Process(uint64_t a1, int a2)
{
  v68 = *MEMORY[0x277D85DE8];
  v4 = a2;
  MEMORY[0x28223BE20](a1);
  v6 = (&v61 - v5);
  bzero(&v61 - v5, v7);
  v8 = Phase::DspLayer23::AudioConnections::Sum((a1 + 1792), v4, v6);
  v9 = *(a1 + 2048);
  if (!v9)
  {
    if (*(a1 + 2056) == 1)
    {
      v15 = **(Phase::Logger::GetInstance(v8) + 160);
      if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
      {
        v16 = *(a1 + 32);
        *buf = 136315906;
        *&buf[4] = "VPConvolver.hpp";
        *&buf[12] = 1024;
        *&buf[14] = 233;
        *&buf[18] = 1024;
        *&buf[20] = 12;
        *&buf[24] = 2048;
        *&buf[26] = v16;
        _os_log_impl(&dword_23A302000, v15, OS_LOG_TYPE_ERROR, "%25s:%-5d Convolver1x%d[%llx] buffer exchanger is nullptr. Output will be silent.", buf, 0x22u);
      }

      *(a1 + 2056) = 0;
    }

    goto LABEL_47;
  }

  v10 = v8;
  *(a1 + 2056) = 1;
  v11 = atomic_exchange(v9, 0);
  if (v11)
  {
    v12 = *v11;
    if (*v11)
    {
      v13 = *(a1 + 2016);
      if (v13)
      {
        v14 = *v13;
        if (v12 == *v13)
        {
LABEL_34:
          *(a1 + 2057) = 1;
          goto LABEL_35;
        }
      }

      else
      {
        v14 = 0;
      }

      atomic_store(1u, (v11 + 12));
      v17 = *(v11 + 8);
      (*(*v12 + 40))(v12);
      v8 = (*(*v12 + 56))(v12);
      if (v8 == 128)
      {
        v8 = (*(*v12 + 64))(v12);
        if (v8 == 12)
        {
          v18 = *(a1 + 2024);
          if (v18)
          {
            atomic_store(0, (v18 + 12));
          }

          *(a1 + 2024) = *(a1 + 2016);
          *(a1 + 2016) = v11;
          v8 = Phase::DspLayer23::SliceSerial::CallbackToVoiceEngine<Phase::DspLayer::IConvolver *>(*(a1 + 16), *(a1 + 32), v12);
          if (v14)
          {
            (*(*v12 + 104))(v12, v14);
            v19 = v17 + 127;
            if (v17 >= 0)
            {
              v19 = v17;
            }

            v20 = (v19 & 0xFFFFFF80) + 128;
            if ((v17 & 0x7F) != 0)
            {
              v21 = v20;
            }

            else
            {
              v21 = v17;
            }

            if ((v21 & 0x7F) != 0)
            {
              __assert_rtn("SwapConvolverInternal", "VPConvolver.hpp", 199, "(numCrossfadeFrames % DspLayer::kCanonicalConvolverBlockSize) == 0");
            }

            if (*(a1 + 2040) >= 1)
            {
              v22 = _os_log_pack_size();
              Instance = Phase::Logger::GetInstance(v22);
              if (caulk::deferred_logger::create_message(*(Instance + 1248), v22 + 88, 0))
              {
                v24 = _os_log_pack_fill();
                v25 = *(a1 + 16);
                v26 = *(a1 + 32);
                v27 = *(a1 + 2044);
                v28 = *(a1 + 2040);
                v29 = *(*(v25 + 576) + 96);
                *v24 = 67110400;
                *(v24 + 4) = 12;
                *(v24 + 8) = 2048;
                *(v24 + 10) = v25;
                *(v24 + 18) = 2048;
                *(v24 + 20) = v26;
                *(v24 + 28) = 1024;
                *(v24 + 30) = v27;
                *(v24 + 34) = 1024;
                *(v24 + 36) = v28;
                *(v24 + 40) = 2048;
                *(v24 + 42) = v29;
                Phase::Logger::GetInstance(v24);
                caulk::concurrent::messenger::enqueue();
              }
            }

            *(a1 + 2032) = 1065353216;
            *(a1 + 2036) = -1.0 / (v21 - 1);
            *(a1 + 2040) = v21;
            v30 = (*(*v12 + 72))(v12);
            v31 = (*(*v12 + 40))(v12);
            if (v31 <= (*(*v12 + 56))(v12))
            {
              v33 = 0;
            }

            else
            {
              v32 = (*(*v12 + 80))(v12, (v30 - 1));
              v33 = (*(*v32 + 56))(v32);
            }

            *(a1 + 2044) = v33;
            v8 = (*(*v14 + 40))(v14);
          }

          goto LABEL_34;
        }
      }
    }

    if (*(a1 + 2057) == 1)
    {
      v34 = **(Phase::Logger::GetInstance(v8) + 160);
      if (os_log_type_enabled(v34, OS_LOG_TYPE_ERROR))
      {
        v35 = *(a1 + 32);
        *buf = 136315906;
        *&buf[4] = "VPConvolver.hpp";
        *&buf[12] = 1024;
        *&buf[14] = 253;
        *&buf[18] = 1024;
        *&buf[20] = 12;
        *&buf[24] = 2048;
        *&buf[26] = v35;
        _os_log_impl(&dword_23A302000, v34, OS_LOG_TYPE_ERROR, "%25s:%-5d Convolver1x%d[%llx] failed to swap buffer. Output will be silent.", buf, 0x22u);
      }

      *(a1 + 2057) = 0;
    }

    goto LABEL_47;
  }

LABEL_35:
  v36 = *(a1 + 2016);
  if (!v36)
  {
    if (*(a1 + 2058) == 1)
    {
      v44 = **(Phase::Logger::GetInstance(v8) + 160);
      if (os_log_type_enabled(v44, OS_LOG_TYPE_ERROR))
      {
        v45 = *(a1 + 32);
        *buf = 136315906;
        *&buf[4] = "VPConvolver.hpp";
        *&buf[12] = 1024;
        *&buf[14] = 271;
        *&buf[18] = 2048;
        *&buf[20] = a1;
        *&buf[28] = 2048;
        *&buf[30] = v45;
        _os_log_impl(&dword_23A302000, v44, OS_LOG_TYPE_ERROR, "%25s:%-5d ConvolverVoicePool: slice%p (vid %llu) mConvolverBufferActive == nullptr. Output will be silent. \n", buf, 0x26u);
      }

      *(a1 + 2058) = 0;
    }

LABEL_47:
    v46 = 0;
    v47 = a1 + 1920;
    do
    {
      vDSP_vclr(*(v47 + v46), 1, v4);
      v46 += 8;
    }

    while (v46 != 96);
    return;
  }

  *(a1 + 2058) = 1;
  v37 = *v36;
  v38 = *(a1 + 2024);
  if (v38 && (v39 = *v38) != 0)
  {
    if (*(a1 + 2044) < 1)
    {
      v48 = a1 + 2024;
      v49 = a1 + 1920;
      (*(*v37 + 24))(v37, v10, a1 + 1920);
      for (i = 0; i != 96; i += 8)
      {
        v51 = 1.0 - *(a1 + 2032);
        __Step = -*(a1 + 2036);
        *buf = v51;
        vDSP_vrampmul(*(v49 + i), 1, buf, &__Step, *(v49 + i), 1, v4);
      }

      MEMORY[0x28223BE20](v52);
      v54 = &v61 - 4 * v53;
      bzero(v54, v55);
      v56 = 0;
      v66 = 0u;
      v67 = 0u;
      v65 = 0u;
      memset(buf, 0, sizeof(buf));
      do
      {
        *&buf[v56] = v54;
        v56 += 8;
        v54 += 4 * v4;
      }

      while (v56 != 96);
      (*(*v39 + 24))(v39, v10, buf);
      for (j = 0; j != 96; j += 8)
      {
        v58 = *(a1 + 2032);
        v62 = *(a1 + 2036);
        __Step = v58;
        vDSP_vrampmuladd(*&buf[j], 1, &__Step, &v62, *(v49 + j), 1, v4);
      }

      v59 = v62;
      *(a1 + 2032) = __Step;
      *(a1 + 2036) = v59;
      v60 = *(a1 + 2040) - a2;
      *(a1 + 2040) = v60;
      if (v60 < 1)
      {
        if (*v48)
        {
          atomic_store(0, (*v48 + 12));
        }

        *v48 = 0;
        *(a1 + 2032) = 0;
        *(a1 + 2040) = 0;
      }
    }

    else
    {
      MEMORY[0x28223BE20](v8);
      v41 = &v61 - 4 * v40;
      bzero(v41, v42);
      v43 = 0;
      v66 = 0u;
      v67 = 0u;
      v65 = 0u;
      memset(buf, 0, sizeof(buf));
      do
      {
        *&buf[v43] = v41;
        v43 += 8;
        v41 += 4 * v4;
      }

      while (v43 != 96);
      (*(*v39 + 24))(v39, v10, a1 + 1920);
      (*(*v37 + 24))(v37, v10, buf);
      *(a1 + 2044) -= a2;
    }
  }

  else
  {
    (*(*v37 + 24))(v37, v10, a1 + 1920);
  }
}

void Phase::DspLayer23::VPMatrixMixer<1>::~VPMatrixMixer(Phase::DspLayer23::VoicePoolSerial *a1)
{
  Phase::DspLayer23::VoicePoolSerial::~VoicePoolSerial(a1);

  JUMPOUT(0x23EE864A0);
}

void **Phase::DspLayer23::MatrixMixerSlice<1>::~MatrixMixerSlice(void **a1)
{
  free(a1[62]);
  free(a1[44]);
  free(a1[28]);
  return a1;
}

void Phase::DspLayer23::MatrixMixerSlice<1>::~MatrixMixerSlice(void **a1)
{
  free(a1[62]);
  free(a1[44]);
  free(a1[28]);

  JUMPOUT(0x23EE86490);
}

double Phase::DspLayer23::MatrixMixerSlice<1>::Reset(uint64_t a1)
{
  *(a1 + 232) = 0;
  *(a1 + 360) = 0;
  *(a1 + 504) = 0;
  *(a1 + 512) = 0;
  __asm { FMOV            V0.2S, #1.0 }

  *(a1 + 520) = result;
  return result;
}

__n128 Phase::DspLayer23::MatrixMixerSlice<1>::MoveStateTo(uint64_t a1, uint64_t a2)
{
  *(a2 + 32) = *(a1 + 32);
  v2 = *(a2 + 224);
  v3 = *(a1 + 176);
  v5 = *(a1 + 128);
  v4 = *(a1 + 144);
  *(a2 + 160) = *(a1 + 160);
  *(a2 + 176) = v3;
  *(a2 + 128) = v5;
  *(a2 + 144) = v4;
  v6 = *(a1 + 224);
  v7 = *(a1 + 240);
  v8 = *(a1 + 208);
  *(a2 + 192) = *(a1 + 192);
  *(a2 + 208) = v8;
  *(a2 + 224) = v6;
  *(a2 + 240) = v7;
  *(a1 + 224) = v2;
  *(a1 + 232) = 0;
  v9 = *(a2 + 496);
  v10 = *(a1 + 400);
  v11 = *(a1 + 432);
  *(a2 + 416) = *(a1 + 416);
  *(a2 + 432) = v11;
  *(a2 + 400) = v10;
  v13 = *(a1 + 480);
  v12 = *(a1 + 496);
  v14 = *(a1 + 464);
  *(a2 + 448) = *(a1 + 448);
  *(a2 + 464) = v14;
  *(a2 + 480) = v13;
  *(a2 + 496) = v12;
  *(a2 + 384) = *(a1 + 384);
  *(a1 + 496) = v9;
  *(a1 + 504) = 0;
  v15 = *(a2 + 352);
  v16 = *(a1 + 320);
  v17 = *(a1 + 336);
  v18 = *(a1 + 352);
  *(a2 + 368) = *(a1 + 368);
  *(a2 + 320) = v16;
  *(a2 + 336) = v17;
  v20 = *(a1 + 288);
  v19 = *(a1 + 304);
  *(a2 + 272) = *(a1 + 272);
  *(a2 + 288) = v20;
  *(a2 + 304) = v19;
  *(a2 + 352) = v18;
  result = *(a1 + 256);
  *(a2 + 256) = result;
  *(a1 + 352) = v15;
  *(a1 + 360) = 0;
  *(a2 + 512) = *(a1 + 512);
  *(a2 + 520) = *(a1 + 520);
  *(a2 + 524) = *(a1 + 524);
  return result;
}

uint64_t Phase::DspLayer23::MatrixMixerSlice<1>::Process(uint64_t a1, int a2)
{
  v9[1] = *MEMORY[0x277D85DE8];
  v3 = a2;
  MEMORY[0x28223BE20](a1);
  v5 = (v9 - v4);
  bzero(v9 - v4, v6);
  v7 = Phase::DspLayer23::AudioConnections::Sum((a1 + 384), v3, v5);
  return MEMORY[0x23EE87290](v7, 1, a1 + 524, *(a1 + 512), 1, v3);
}

uint64_t Phase::DspLayer23::MatrixMixerSlice<1>::SetParameter(uint64_t a1, uint64_t a2, double a3)
{
  v3 = a3;
  *(a1 + 4 * a2 + 520) = v3;
  return 0;
}

void Phase::DspLayer23::VPMatrixMixer<2>::~VPMatrixMixer(Phase::DspLayer23::VoicePoolSerial *a1)
{
  Phase::DspLayer23::VoicePoolSerial::~VoicePoolSerial(a1);

  JUMPOUT(0x23EE864A0);
}

uint64_t Phase::DspLayer23::MatrixMixerSlice<2>::~MatrixMixerSlice(uint64_t a1)
{
  free(*(a1 + 624));
  for (i = 480; i != 224; i -= 128)
  {
    free(*(a1 + i));
  }

  free(*(a1 + 224));
  return a1;
}

void Phase::DspLayer23::MatrixMixerSlice<2>::~MatrixMixerSlice(uint64_t a1)
{
  free(*(a1 + 624));
  for (i = 480; i != 224; i -= 128)
  {
    free(*(a1 + i));
  }

  free(*(a1 + 224));

  JUMPOUT(0x23EE86490);
}

__n128 Phase::DspLayer23::MatrixMixerSlice<2>::Reset(__n128 *a1)
{
  a1[14].n128_u64[1] = 0;
  a1[22].n128_u64[1] = 0;
  a1[39].n128_u64[1] = 0;
  a1[40].n128_u64[1] = 0;
  a1[40].n128_u64[0] = 0;
  a1[30].n128_u64[1] = 0;
  __asm { FMOV            V0.4S, #1.0 }

  a1[41] = result;
  return result;
}

__n128 Phase::DspLayer23::MatrixMixerSlice<2>::MoveStateTo(uint64_t a1, uint64_t a2)
{
  *(a2 + 32) = *(a1 + 32);
  v2 = *(a2 + 224);
  v3 = *(a1 + 176);
  v5 = *(a1 + 128);
  v4 = *(a1 + 144);
  *(a2 + 160) = *(a1 + 160);
  *(a2 + 176) = v3;
  *(a2 + 128) = v5;
  *(a2 + 144) = v4;
  v6 = *(a1 + 224);
  v7 = *(a1 + 240);
  v8 = *(a1 + 208);
  *(a2 + 192) = *(a1 + 192);
  *(a2 + 208) = v8;
  *(a2 + 224) = v6;
  *(a2 + 240) = v7;
  *(a1 + 224) = v2;
  *(a1 + 232) = 0;
  v9 = *(a2 + 624);
  v10 = *(a1 + 528);
  v11 = *(a1 + 560);
  *(a2 + 544) = *(a1 + 544);
  *(a2 + 560) = v11;
  *(a2 + 528) = v10;
  v13 = *(a1 + 608);
  v12 = *(a1 + 624);
  v14 = *(a1 + 592);
  *(a2 + 576) = *(a1 + 576);
  *(a2 + 592) = v14;
  *(a2 + 608) = v13;
  *(a2 + 624) = v12;
  *(a2 + 512) = *(a1 + 512);
  *(a1 + 624) = v9;
  *(a1 + 632) = 0;
  v15 = *(a2 + 352);
  v16 = *(a1 + 320);
  v17 = *(a1 + 336);
  v18 = *(a1 + 352);
  *(a2 + 368) = *(a1 + 368);
  *(a2 + 320) = v16;
  *(a2 + 336) = v17;
  v20 = *(a1 + 288);
  v19 = *(a1 + 304);
  *(a2 + 272) = *(a1 + 272);
  *(a2 + 288) = v20;
  *(a2 + 304) = v19;
  *(a2 + 352) = v18;
  *(a2 + 256) = *(a1 + 256);
  *(a1 + 352) = v15;
  *(a1 + 360) = 0;
  v21 = *(a2 + 480);
  v22 = *(a1 + 400);
  v23 = *(a1 + 432);
  *(a2 + 416) = *(a1 + 416);
  *(a2 + 432) = v23;
  *(a2 + 400) = v22;
  v24 = *(a1 + 480);
  v25 = *(a1 + 496);
  v26 = *(a1 + 464);
  *(a2 + 448) = *(a1 + 448);
  *(a2 + 464) = v26;
  *(a2 + 480) = v24;
  *(a2 + 496) = v25;
  *(a2 + 384) = *(a1 + 384);
  *(a1 + 480) = v21;
  *(a1 + 488) = 0;
  result = *(a1 + 640);
  *(a2 + 640) = result;
  *(a2 + 656) = *(a1 + 656);
  *(a2 + 664) = *(a1 + 664);
  return result;
}

uint64_t Phase::DspLayer23::MatrixMixerSlice<2>::Process(uint64_t a1, int a2)
{
  v9[1] = *MEMORY[0x277D85DE8];
  v3 = a2;
  MEMORY[0x28223BE20](a1);
  v5 = (v9 - v4);
  bzero(v9 - v4, v6);
  v7 = Phase::DspLayer23::AudioConnections::Sum((a1 + 512), v3, v5);
  MEMORY[0x23EE87290](v7, 1, a1 + 664, *(a1 + 640), 1, v3);
  return MEMORY[0x23EE87290](v7, 1, a1 + 668, *(a1 + 648), 1, v3);
}

uint64_t Phase::DspLayer23::MatrixMixerSlice<2>::SetParameter(uint64_t a1, uint64_t a2, double a3)
{
  v3 = a3;
  *(a1 + 4 * a2 + 656) = v3;
  return 0;
}

void Phase::DspLayer23::VPMatrixMixer<3>::~VPMatrixMixer(Phase::DspLayer23::VoicePoolSerial *a1)
{
  Phase::DspLayer23::VoicePoolSerial::~VoicePoolSerial(a1);

  JUMPOUT(0x23EE864A0);
}

uint64_t Phase::DspLayer23::MatrixMixerSlice<3>::~MatrixMixerSlice(uint64_t a1)
{
  free(*(a1 + 752));
  for (i = 608; i != 224; i -= 128)
  {
    free(*(a1 + i));
  }

  free(*(a1 + 224));
  return a1;
}

void Phase::DspLayer23::MatrixMixerSlice<3>::~MatrixMixerSlice(uint64_t a1)
{
  free(*(a1 + 752));
  for (i = 608; i != 224; i -= 128)
  {
    free(*(a1 + i));
  }

  free(*(a1 + 224));

  JUMPOUT(0x23EE86490);
}

void Phase::DspLayer23::MatrixMixerSlice<3>::Reset(uint64_t a1)
{
  *(a1 + 232) = 0;
  *(a1 + 760) = 0u;
  *(a1 + 776) = 0u;
  memset_pattern16((a1 + 792), &unk_23A597970, 0xCuLL);
  memset_pattern16((a1 + 804), &unk_23A597970, 0xCuLL);
  *(a1 + 360) = 0;
  *(a1 + 488) = 0;
  *(a1 + 616) = 0;
}

__n128 Phase::DspLayer23::MatrixMixerSlice<3>::MoveStateTo(uint64_t a1, uint64_t a2)
{
  *(a2 + 32) = *(a1 + 32);
  v2 = *(a2 + 224);
  v3 = *(a1 + 176);
  v5 = *(a1 + 128);
  v4 = *(a1 + 144);
  *(a2 + 160) = *(a1 + 160);
  *(a2 + 176) = v3;
  *(a2 + 128) = v5;
  *(a2 + 144) = v4;
  v6 = *(a1 + 224);
  v7 = *(a1 + 240);
  v8 = *(a1 + 208);
  *(a2 + 192) = *(a1 + 192);
  *(a2 + 208) = v8;
  *(a2 + 224) = v6;
  *(a2 + 240) = v7;
  *(a1 + 224) = v2;
  *(a1 + 232) = 0;
  v9 = *(a2 + 752);
  v10 = *(a1 + 656);
  v11 = *(a1 + 688);
  *(a2 + 672) = *(a1 + 672);
  *(a2 + 688) = v11;
  *(a2 + 656) = v10;
  v13 = *(a1 + 736);
  v12 = *(a1 + 752);
  v14 = *(a1 + 720);
  *(a2 + 704) = *(a1 + 704);
  *(a2 + 720) = v14;
  *(a2 + 736) = v13;
  *(a2 + 752) = v12;
  *(a2 + 640) = *(a1 + 640);
  *(a1 + 752) = v9;
  *(a1 + 760) = 0;
  v15 = a1 + 360;
  v16 = (a2 + 352);
  v17 = 3;
  do
  {
    v18 = *v16;
    v19 = *(v15 - 88);
    v20 = *(v15 - 56);
    v21 = *(v15 - 104);
    *(v16 - 4) = *(v15 - 72);
    *(v16 - 3) = v20;
    *(v16 - 6) = v21;
    *(v16 - 5) = v19;
    v22 = *(v15 - 8);
    v23 = *(v15 - 24);
    v24 = *(v15 + 8);
    *(v16 - 2) = *(v15 - 40);
    *(v16 - 1) = v23;
    *v16 = v22;
    *(v16 + 1) = v24;
    v16 += 16;
    *(v15 - 8) = v18;
    *v15 = 0;
    v15 += 128;
    --v17;
  }

  while (v17);
  result = *(a1 + 768);
  *(a2 + 784) = *(a1 + 784);
  *(a2 + 768) = result;
  v26 = *(a1 + 792);
  *(a2 + 800) = *(a1 + 800);
  *(a2 + 792) = v26;
  v27 = *(a1 + 804);
  *(a2 + 812) = *(a1 + 812);
  *(a2 + 804) = v27;
  return result;
}

uint64_t Phase::DspLayer23::MatrixMixerSlice<3>::Process(uint64_t a1, int a2)
{
  v13[1] = *MEMORY[0x277D85DE8];
  v3 = a2;
  MEMORY[0x28223BE20](a1);
  v5 = (v13 - v4);
  bzero(v13 - v4, v6);
  v7 = Phase::DspLayer23::AudioConnections::Sum((a1 + 640), v3, v5);
  v8 = a1 + 804;
  v9 = (a1 + 768);
  v10 = 3;
  do
  {
    v11 = *v9++;
    result = MEMORY[0x23EE87290](v7, 1, v8, v11, 1, v3);
    v8 += 4;
    --v10;
  }

  while (v10);
  return result;
}

uint64_t Phase::DspLayer23::MatrixMixerSlice<3>::SetParameter(uint64_t a1, uint64_t a2, double a3)
{
  v3 = a3;
  *(a1 + 4 * a2 + 792) = v3;
  return 0;
}

uint64_t Phase::DspLayer23::MatrixMixerSlice<3>::UpdateParameters(uint64_t a1)
{
  *(a1 + 804) = *(a1 + 792);
  *(a1 + 812) = *(a1 + 800);
  return 0;
}

void Phase::DspLayer23::VPMatrixMixer<4>::~VPMatrixMixer(Phase::DspLayer23::VoicePoolSerial *a1)
{
  Phase::DspLayer23::VoicePoolSerial::~VoicePoolSerial(a1);

  JUMPOUT(0x23EE864A0);
}

uint64_t Phase::DspLayer23::MatrixMixerSlice<4>::~MatrixMixerSlice(uint64_t a1)
{
  free(*(a1 + 880));
  for (i = 736; i != 224; i -= 128)
  {
    free(*(a1 + i));
  }

  free(*(a1 + 224));
  return a1;
}

void Phase::DspLayer23::MatrixMixerSlice<4>::~MatrixMixerSlice(uint64_t a1)
{
  free(*(a1 + 880));
  for (i = 736; i != 224; i -= 128)
  {
    free(*(a1 + i));
  }

  free(*(a1 + 224));

  JUMPOUT(0x23EE86490);
}

void Phase::DspLayer23::MatrixMixerSlice<4>::Reset(uint64_t a1)
{
  *(a1 + 232) = 0;
  *(a1 + 920) = 0;
  *(a1 + 888) = 0u;
  *(a1 + 904) = 0u;
  memset_pattern16((a1 + 928), &unk_23A597970, 0x10uLL);
  memset_pattern16((a1 + 944), &unk_23A597970, 0x10uLL);
  *(a1 + 360) = 0;
  *(a1 + 488) = 0;
  *(a1 + 616) = 0;
  *(a1 + 744) = 0;
}

__n128 Phase::DspLayer23::MatrixMixerSlice<4>::MoveStateTo(uint64_t a1, uint64_t a2)
{
  *(a2 + 32) = *(a1 + 32);
  v2 = *(a2 + 224);
  v3 = *(a1 + 176);
  v5 = *(a1 + 128);
  v4 = *(a1 + 144);
  *(a2 + 160) = *(a1 + 160);
  *(a2 + 176) = v3;
  *(a2 + 128) = v5;
  *(a2 + 144) = v4;
  v6 = *(a1 + 224);
  v7 = *(a1 + 240);
  v8 = *(a1 + 208);
  *(a2 + 192) = *(a1 + 192);
  *(a2 + 208) = v8;
  *(a2 + 224) = v6;
  *(a2 + 240) = v7;
  *(a1 + 224) = v2;
  *(a1 + 232) = 0;
  v9 = *(a2 + 880);
  v10 = *(a1 + 784);
  v11 = *(a1 + 816);
  *(a2 + 800) = *(a1 + 800);
  *(a2 + 816) = v11;
  *(a2 + 784) = v10;
  v13 = *(a1 + 864);
  v12 = *(a1 + 880);
  v14 = *(a1 + 848);
  *(a2 + 832) = *(a1 + 832);
  *(a2 + 848) = v14;
  *(a2 + 864) = v13;
  *(a2 + 880) = v12;
  *(a2 + 768) = *(a1 + 768);
  *(a1 + 880) = v9;
  *(a1 + 888) = 0;
  v15 = a1 + 360;
  v16 = (a2 + 352);
  v17 = 4;
  do
  {
    v18 = *v16;
    v19 = *(v15 - 88);
    v20 = *(v15 - 56);
    v21 = *(v15 - 104);
    *(v16 - 4) = *(v15 - 72);
    *(v16 - 3) = v20;
    *(v16 - 6) = v21;
    *(v16 - 5) = v19;
    v22 = *(v15 - 8);
    v23 = *(v15 - 24);
    v24 = *(v15 + 8);
    *(v16 - 2) = *(v15 - 40);
    *(v16 - 1) = v23;
    *v16 = v22;
    *(v16 + 1) = v24;
    v16 += 16;
    *(v15 - 8) = v18;
    *v15 = 0;
    v15 += 128;
    --v17;
  }

  while (v17);
  v25 = *(a1 + 912);
  *(a2 + 896) = *(a1 + 896);
  *(a2 + 912) = v25;
  *(a2 + 928) = *(a1 + 928);
  result = *(a1 + 944);
  *(a2 + 944) = result;
  return result;
}

uint64_t Phase::DspLayer23::MatrixMixerSlice<4>::Process(uint64_t a1, int a2)
{
  v13[1] = *MEMORY[0x277D85DE8];
  v3 = a2;
  MEMORY[0x28223BE20](a1);
  v5 = (v13 - v4);
  bzero(v13 - v4, v6);
  v7 = Phase::DspLayer23::AudioConnections::Sum((a1 + 768), v3, v5);
  v8 = a1 + 944;
  v9 = (a1 + 896);
  v10 = 4;
  do
  {
    v11 = *v9++;
    result = MEMORY[0x23EE87290](v7, 1, v8, v11, 1, v3);
    v8 += 4;
    --v10;
  }

  while (v10);
  return result;
}

uint64_t Phase::DspLayer23::MatrixMixerSlice<4>::SetParameter(uint64_t a1, uint64_t a2, double a3)
{
  v3 = a3;
  *(a1 + 4 * a2 + 928) = v3;
  return 0;
}

void Phase::DspLayer23::VPMatrixMixer<5>::~VPMatrixMixer(Phase::DspLayer23::VoicePoolSerial *a1)
{
  Phase::DspLayer23::VoicePoolSerial::~VoicePoolSerial(a1);

  JUMPOUT(0x23EE864A0);
}

uint64_t Phase::DspLayer23::MatrixMixerSlice<5>::~MatrixMixerSlice(uint64_t a1)
{
  free(*(a1 + 1008));
  for (i = 864; i != 224; i -= 128)
  {
    free(*(a1 + i));
  }

  free(*(a1 + 224));
  return a1;
}

void Phase::DspLayer23::MatrixMixerSlice<5>::~MatrixMixerSlice(uint64_t a1)
{
  free(*(a1 + 1008));
  for (i = 864; i != 224; i -= 128)
  {
    free(*(a1 + i));
  }

  free(*(a1 + 224));

  JUMPOUT(0x23EE86490);
}

void Phase::DspLayer23::MatrixMixerSlice<5>::Reset(uint64_t a1)
{
  *(a1 + 232) = 0;
  *(a1 + 1016) = 0u;
  *(a1 + 1032) = 0u;
  *(a1 + 1048) = 0u;
  memset_pattern16((a1 + 1064), &unk_23A597970, 0x14uLL);
  memset_pattern16((a1 + 1084), &unk_23A597970, 0x14uLL);
  *(a1 + 360) = 0;
  *(a1 + 488) = 0;
  *(a1 + 616) = 0;
  *(a1 + 744) = 0;
  *(a1 + 872) = 0;
}

__n128 Phase::DspLayer23::MatrixMixerSlice<5>::MoveStateTo(uint64_t a1, uint64_t a2)
{
  *(a2 + 32) = *(a1 + 32);
  v2 = *(a2 + 224);
  v3 = *(a1 + 176);
  v5 = *(a1 + 128);
  v4 = *(a1 + 144);
  *(a2 + 160) = *(a1 + 160);
  *(a2 + 176) = v3;
  *(a2 + 128) = v5;
  *(a2 + 144) = v4;
  v6 = *(a1 + 224);
  v7 = *(a1 + 240);
  v8 = *(a1 + 208);
  *(a2 + 192) = *(a1 + 192);
  *(a2 + 208) = v8;
  *(a2 + 224) = v6;
  *(a2 + 240) = v7;
  *(a1 + 224) = v2;
  *(a1 + 232) = 0;
  v9 = *(a2 + 1008);
  v10 = *(a1 + 912);
  v11 = *(a1 + 944);
  *(a2 + 928) = *(a1 + 928);
  *(a2 + 944) = v11;
  *(a2 + 912) = v10;
  v13 = *(a1 + 992);
  v12 = *(a1 + 1008);
  v14 = *(a1 + 976);
  *(a2 + 960) = *(a1 + 960);
  *(a2 + 976) = v14;
  *(a2 + 992) = v13;
  *(a2 + 1008) = v12;
  *(a2 + 896) = *(a1 + 896);
  *(a1 + 1008) = v9;
  *(a1 + 1016) = 0;
  v15 = a1 + 360;
  v16 = (a2 + 352);
  v17 = 5;
  do
  {
    v18 = *v16;
    v19 = *(v15 - 88);
    v20 = *(v15 - 56);
    v21 = *(v15 - 104);
    *(v16 - 4) = *(v15 - 72);
    *(v16 - 3) = v20;
    *(v16 - 6) = v21;
    *(v16 - 5) = v19;
    v22 = *(v15 - 8);
    v23 = *(v15 - 24);
    v24 = *(v15 + 8);
    *(v16 - 2) = *(v15 - 40);
    *(v16 - 1) = v23;
    *v16 = v22;
    *(v16 + 1) = v24;
    v16 += 16;
    *(v15 - 8) = v18;
    *v15 = 0;
    v15 += 128;
    --v17;
  }

  while (v17);
  v25 = *(a1 + 1024);
  v26 = *(a1 + 1040);
  *(a2 + 1056) = *(a1 + 1056);
  *(a2 + 1040) = v26;
  *(a2 + 1024) = v25;
  v27 = *(a1 + 1064);
  *(a2 + 1080) = *(a1 + 1080);
  *(a2 + 1064) = v27;
  result = *(a1 + 1084);
  *(a2 + 1100) = *(a1 + 1100);
  *(a2 + 1084) = result;
  return result;
}

uint64_t Phase::DspLayer23::MatrixMixerSlice<5>::Process(uint64_t a1, int a2)
{
  v13[1] = *MEMORY[0x277D85DE8];
  v3 = a2;
  MEMORY[0x28223BE20](a1);
  v5 = (v13 - v4);
  bzero(v13 - v4, v6);
  v7 = Phase::DspLayer23::AudioConnections::Sum((a1 + 896), v3, v5);
  v8 = a1 + 1084;
  v9 = (a1 + 1024);
  v10 = 5;
  do
  {
    v11 = *v9++;
    result = MEMORY[0x23EE87290](v7, 1, v8, v11, 1, v3);
    v8 += 4;
    --v10;
  }

  while (v10);
  return result;
}

uint64_t Phase::DspLayer23::MatrixMixerSlice<5>::SetParameter(uint64_t a1, uint64_t a2, double a3)
{
  v3 = a3;
  *(a1 + 4 * a2 + 1064) = v3;
  return 0;
}

uint64_t Phase::DspLayer23::MatrixMixerSlice<5>::UpdateParameters(uint64_t a1)
{
  *(a1 + 1100) = *(a1 + 1080);
  *(a1 + 1084) = *(a1 + 1064);
  return 0;
}

void Phase::DspLayer23::VPMatrixMixer<6>::~VPMatrixMixer(Phase::DspLayer23::VoicePoolSerial *a1)
{
  Phase::DspLayer23::VoicePoolSerial::~VoicePoolSerial(a1);

  JUMPOUT(0x23EE864A0);
}

uint64_t Phase::DspLayer23::MatrixMixerSlice<6>::~MatrixMixerSlice(uint64_t a1)
{
  free(*(a1 + 1136));
  for (i = 992; i != 224; i -= 128)
  {
    free(*(a1 + i));
  }

  free(*(a1 + 224));
  return a1;
}

void Phase::DspLayer23::MatrixMixerSlice<6>::~MatrixMixerSlice(uint64_t a1)
{
  free(*(a1 + 1136));
  for (i = 992; i != 224; i -= 128)
  {
    free(*(a1 + i));
  }

  free(*(a1 + 224));

  JUMPOUT(0x23EE86490);
}

void Phase::DspLayer23::MatrixMixerSlice<6>::Reset(uint64_t a1)
{
  *(a1 + 232) = 0;
  *(a1 + 1192) = 0;
  *(a1 + 1144) = 0u;
  *(a1 + 1160) = 0u;
  *(a1 + 1176) = 0u;
  memset_pattern16((a1 + 1200), &unk_23A597970, 0x18uLL);
  memset_pattern16((a1 + 1224), &unk_23A597970, 0x18uLL);
  for (i = 0; i != 768; i += 128)
  {
    *(a1 + 360 + i) = 0;
  }
}

__n128 Phase::DspLayer23::MatrixMixerSlice<6>::MoveStateTo(uint64_t a1, uint64_t a2)
{
  *(a2 + 32) = *(a1 + 32);
  v2 = *(a2 + 224);
  v3 = *(a1 + 176);
  v5 = *(a1 + 128);
  v4 = *(a1 + 144);
  *(a2 + 160) = *(a1 + 160);
  *(a2 + 176) = v3;
  *(a2 + 128) = v5;
  *(a2 + 144) = v4;
  v6 = *(a1 + 224);
  v7 = *(a1 + 240);
  v8 = *(a1 + 208);
  *(a2 + 192) = *(a1 + 192);
  *(a2 + 208) = v8;
  *(a2 + 224) = v6;
  *(a2 + 240) = v7;
  *(a1 + 224) = v2;
  *(a1 + 232) = 0;
  v9 = *(a2 + 1136);
  v10 = *(a1 + 1040);
  v11 = *(a1 + 1056);
  *(a2 + 1072) = *(a1 + 1072);
  *(a2 + 1056) = v11;
  *(a2 + 1040) = v10;
  v12 = *(a1 + 1136);
  v13 = *(a1 + 1104);
  v14 = *(a1 + 1120);
  *(a2 + 1088) = *(a1 + 1088);
  *(a2 + 1120) = v14;
  *(a2 + 1104) = v13;
  *(a2 + 1136) = v12;
  *(a2 + 1024) = *(a1 + 1024);
  *(a1 + 1136) = v9;
  *(a1 + 1144) = 0;
  v15 = a1 + 360;
  v16 = (a2 + 352);
  v17 = 6;
  do
  {
    v18 = *v16;
    v19 = *(v15 - 88);
    v20 = *(v15 - 56);
    v21 = *(v15 - 104);
    *(v16 - 4) = *(v15 - 72);
    *(v16 - 3) = v20;
    *(v16 - 6) = v21;
    *(v16 - 5) = v19;
    v22 = *(v15 - 8);
    v23 = *(v15 - 24);
    v24 = *(v15 + 8);
    *(v16 - 2) = *(v15 - 40);
    *(v16 - 1) = v23;
    *v16 = v22;
    *(v16 + 1) = v24;
    v16 += 16;
    *(v15 - 8) = v18;
    *v15 = 0;
    v15 += 128;
    --v17;
  }

  while (v17);
  v25 = *(a1 + 1152);
  v26 = *(a1 + 1168);
  *(a2 + 1184) = *(a1 + 1184);
  *(a2 + 1168) = v26;
  *(a2 + 1152) = v25;
  v27 = *(a1 + 1200);
  *(a2 + 1216) = *(a1 + 1216);
  *(a2 + 1200) = v27;
  result = *(a1 + 1224);
  *(a2 + 1240) = *(a1 + 1240);
  *(a2 + 1224) = result;
  return result;
}

uint64_t Phase::DspLayer23::MatrixMixerSlice<6>::Process(uint64_t a1, int a2)
{
  v13[1] = *MEMORY[0x277D85DE8];
  v3 = a2;
  MEMORY[0x28223BE20](a1);
  v5 = (v13 - v4);
  bzero(v13 - v4, v6);
  v7 = Phase::DspLayer23::AudioConnections::Sum((a1 + 1024), v3, v5);
  v8 = a1 + 1224;
  v9 = (a1 + 1152);
  v10 = 6;
  do
  {
    v11 = *v9++;
    result = MEMORY[0x23EE87290](v7, 1, v8, v11, 1, v3);
    v8 += 4;
    --v10;
  }

  while (v10);
  return result;
}

uint64_t Phase::DspLayer23::MatrixMixerSlice<6>::SetParameter(uint64_t a1, uint64_t a2, double a3)
{
  v3 = a3;
  *(a1 + 4 * a2 + 1200) = v3;
  return 0;
}

uint64_t Phase::DspLayer23::MatrixMixerSlice<6>::UpdateParameters(uint64_t a1)
{
  *(a1 + 1224) = *(a1 + 1200);
  *(a1 + 1240) = *(a1 + 1216);
  return 0;
}

void Phase::DspLayer23::VPMatrixMixer<7>::~VPMatrixMixer(Phase::DspLayer23::VoicePoolSerial *a1)
{
  Phase::DspLayer23::VoicePoolSerial::~VoicePoolSerial(a1);

  JUMPOUT(0x23EE864A0);
}

uint64_t Phase::DspLayer23::MatrixMixerSlice<7>::~MatrixMixerSlice(uint64_t a1)
{
  free(*(a1 + 1264));
  for (i = 1120; i != 224; i -= 128)
  {
    free(*(a1 + i));
  }

  free(*(a1 + 224));
  return a1;
}

void Phase::DspLayer23::MatrixMixerSlice<7>::~MatrixMixerSlice(uint64_t a1)
{
  free(*(a1 + 1264));
  for (i = 1120; i != 224; i -= 128)
  {
    free(*(a1 + i));
  }

  free(*(a1 + 224));

  JUMPOUT(0x23EE86490);
}

void Phase::DspLayer23::MatrixMixerSlice<7>::Reset(uint64_t a1)
{
  *(a1 + 232) = 0;
  v2 = a1 + 1364;
  *(a1 + 1272) = 0u;
  *(a1 + 1288) = 0u;
  *(a1 + 1304) = 0u;
  *(a1 + 1320) = 0u;
  memset_pattern16((a1 + 1336), &unk_23A597970, 0x1CuLL);
  v3 = 0;
  v4 = (a1 + 360);
  do
  {
    *v4 = 0;
    v4 += 16;
    *(v2 + v3) = 1065353216;
    v3 += 4;
  }

  while (v3 != 28);
}

__n128 Phase::DspLayer23::MatrixMixerSlice<7>::MoveStateTo(uint64_t a1, uint64_t a2)
{
  *(a2 + 32) = *(a1 + 32);
  v2 = *(a2 + 224);
  v3 = *(a1 + 176);
  v5 = *(a1 + 128);
  v4 = *(a1 + 144);
  *(a2 + 160) = *(a1 + 160);
  *(a2 + 176) = v3;
  *(a2 + 128) = v5;
  *(a2 + 144) = v4;
  v6 = *(a1 + 224);
  v7 = *(a1 + 240);
  v8 = *(a1 + 208);
  *(a2 + 192) = *(a1 + 192);
  *(a2 + 208) = v8;
  *(a2 + 224) = v6;
  *(a2 + 240) = v7;
  *(a1 + 224) = v2;
  *(a1 + 232) = 0;
  v9 = *(a2 + 1264);
  v10 = *(a1 + 1168);
  v11 = *(a1 + 1184);
  *(a2 + 1200) = *(a1 + 1200);
  *(a2 + 1184) = v11;
  *(a2 + 1168) = v10;
  v12 = *(a1 + 1264);
  v13 = *(a1 + 1232);
  v14 = *(a1 + 1248);
  *(a2 + 1216) = *(a1 + 1216);
  *(a2 + 1248) = v14;
  *(a2 + 1232) = v13;
  *(a2 + 1264) = v12;
  *(a2 + 1152) = *(a1 + 1152);
  *(a1 + 1264) = v9;
  *(a1 + 1272) = 0;
  v15 = a1 + 360;
  v16 = (a2 + 352);
  v17 = 7;
  do
  {
    v18 = *v16;
    v19 = *(v15 - 88);
    v20 = *(v15 - 56);
    v21 = *(v15 - 104);
    *(v16 - 4) = *(v15 - 72);
    *(v16 - 3) = v20;
    *(v16 - 6) = v21;
    *(v16 - 5) = v19;
    v22 = *(v15 - 8);
    v23 = *(v15 - 24);
    v24 = *(v15 + 8);
    *(v16 - 2) = *(v15 - 40);
    *(v16 - 1) = v23;
    *v16 = v22;
    *(v16 + 1) = v24;
    v16 += 16;
    *(v15 - 8) = v18;
    *v15 = 0;
    v15 += 128;
    --v17;
  }

  while (v17);
  v25 = *(a1 + 1280);
  v26 = *(a1 + 1296);
  v27 = *(a1 + 1312);
  *(a2 + 1328) = *(a1 + 1328);
  *(a2 + 1312) = v27;
  *(a2 + 1296) = v26;
  *(a2 + 1280) = v25;
  v28 = *(a1 + 1336);
  *(a2 + 1348) = *(a1 + 1348);
  *(a2 + 1336) = v28;
  result = *(a1 + 1364);
  *(a2 + 1376) = *(a1 + 1376);
  *(a2 + 1364) = result;
  return result;
}

uint64_t Phase::DspLayer23::MatrixMixerSlice<7>::Process(uint64_t a1, int a2)
{
  v13[1] = *MEMORY[0x277D85DE8];
  v3 = a2;
  MEMORY[0x28223BE20](a1);
  v5 = (v13 - v4);
  bzero(v13 - v4, v6);
  v7 = Phase::DspLayer23::AudioConnections::Sum((a1 + 1152), v3, v5);
  v8 = a1 + 1364;
  v9 = (a1 + 1280);
  v10 = 7;
  do
  {
    v11 = *v9++;
    result = MEMORY[0x23EE87290](v7, 1, v8, v11, 1, v3);
    v8 += 4;
    --v10;
  }

  while (v10);
  return result;
}

uint64_t Phase::DspLayer23::MatrixMixerSlice<7>::SetParameter(uint64_t a1, uint64_t a2, double a3)
{
  v3 = a3;
  *(a1 + 4 * a2 + 1336) = v3;
  return 0;
}

uint64_t Phase::DspLayer23::MatrixMixerSlice<7>::UpdateParameters(_OWORD *a1)
{
  *(a1 + 1364) = *(a1 + 1336);
  a1[86] = *(a1 + 1348);
  return 0;
}

void Phase::DspLayer23::VPMatrixMixer<8>::~VPMatrixMixer(Phase::DspLayer23::VoicePoolSerial *a1)
{
  Phase::DspLayer23::VoicePoolSerial::~VoicePoolSerial(a1);

  JUMPOUT(0x23EE864A0);
}

uint64_t Phase::DspLayer23::MatrixMixerSlice<8>::~MatrixMixerSlice(uint64_t a1)
{
  free(*(a1 + 1392));
  for (i = 1248; i != 224; i -= 128)
  {
    free(*(a1 + i));
  }

  free(*(a1 + 224));
  return a1;
}

void Phase::DspLayer23::MatrixMixerSlice<8>::~MatrixMixerSlice(uint64_t a1)
{
  free(*(a1 + 1392));
  for (i = 1248; i != 224; i -= 128)
  {
    free(*(a1 + i));
  }

  free(*(a1 + 224));

  JUMPOUT(0x23EE86490);
}

void Phase::DspLayer23::MatrixMixerSlice<8>::Reset(uint64_t a1)
{
  *(a1 + 232) = 0;
  v2 = a1 + 1504;
  *(a1 + 1464) = 0;
  *(a1 + 1400) = 0u;
  *(a1 + 1416) = 0u;
  *(a1 + 1432) = 0u;
  *(a1 + 1448) = 0u;
  memset_pattern16((a1 + 1472), &unk_23A597970, 0x20uLL);
  v3 = 0;
  v4 = (a1 + 360);
  do
  {
    *v4 = 0;
    v4 += 16;
    *(v2 + v3) = 1065353216;
    v3 += 4;
  }

  while (v3 != 32);
}

__n128 Phase::DspLayer23::MatrixMixerSlice<8>::MoveStateTo(uint64_t a1, uint64_t a2)
{
  *(a2 + 32) = *(a1 + 32);
  v2 = *(a2 + 224);
  v3 = *(a1 + 176);
  v5 = *(a1 + 128);
  v4 = *(a1 + 144);
  *(a2 + 160) = *(a1 + 160);
  *(a2 + 176) = v3;
  *(a2 + 128) = v5;
  *(a2 + 144) = v4;
  v6 = *(a1 + 224);
  v7 = *(a1 + 240);
  v8 = *(a1 + 208);
  *(a2 + 192) = *(a1 + 192);
  *(a2 + 208) = v8;
  *(a2 + 224) = v6;
  *(a2 + 240) = v7;
  *(a1 + 224) = v2;
  *(a1 + 232) = 0;
  v9 = *(a2 + 1392);
  v10 = *(a1 + 1296);
  v11 = *(a1 + 1312);
  *(a2 + 1328) = *(a1 + 1328);
  *(a2 + 1312) = v11;
  *(a2 + 1296) = v10;
  v12 = *(a1 + 1392);
  v13 = *(a1 + 1360);
  v14 = *(a1 + 1376);
  *(a2 + 1344) = *(a1 + 1344);
  *(a2 + 1376) = v14;
  *(a2 + 1360) = v13;
  *(a2 + 1392) = v12;
  *(a2 + 1280) = *(a1 + 1280);
  *(a1 + 1392) = v9;
  *(a1 + 1400) = 0;
  v15 = a1 + 360;
  v16 = (a2 + 352);
  v17 = 8;
  do
  {
    v18 = *v16;
    v19 = *(v15 - 88);
    v20 = *(v15 - 56);
    v21 = *(v15 - 104);
    *(v16 - 4) = *(v15 - 72);
    *(v16 - 3) = v20;
    *(v16 - 6) = v21;
    *(v16 - 5) = v19;
    v22 = *(v15 - 8);
    v23 = *(v15 - 24);
    v24 = *(v15 + 8);
    *(v16 - 2) = *(v15 - 40);
    *(v16 - 1) = v23;
    *v16 = v22;
    *(v16 + 1) = v24;
    v16 += 16;
    *(v15 - 8) = v18;
    *v15 = 0;
    v15 += 128;
    --v17;
  }

  while (v17);
  v25 = *(a1 + 1408);
  v26 = *(a1 + 1424);
  v27 = *(a1 + 1440);
  *(a2 + 1456) = *(a1 + 1456);
  *(a2 + 1440) = v27;
  *(a2 + 1424) = v26;
  *(a2 + 1408) = v25;
  v28 = *(a1 + 1472);
  *(a2 + 1488) = *(a1 + 1488);
  *(a2 + 1472) = v28;
  result = *(a1 + 1504);
  *(a2 + 1520) = *(a1 + 1520);
  *(a2 + 1504) = result;
  return result;
}

uint64_t Phase::DspLayer23::MatrixMixerSlice<8>::Process(uint64_t a1, int a2)
{
  v13[1] = *MEMORY[0x277D85DE8];
  v3 = a2;
  MEMORY[0x28223BE20](a1);
  v5 = (v13 - v4);
  bzero(v13 - v4, v6);
  v7 = Phase::DspLayer23::AudioConnections::Sum((a1 + 1280), v3, v5);
  v8 = a1 + 1504;
  v9 = (a1 + 1408);
  v10 = 8;
  do
  {
    v11 = *v9++;
    result = MEMORY[0x23EE87290](v7, 1, v8, v11, 1, v3);
    v8 += 4;
    --v10;
  }

  while (v10);
  return result;
}

uint64_t Phase::DspLayer23::MatrixMixerSlice<8>::SetParameter(uint64_t a1, uint64_t a2, double a3)
{
  v3 = a3;
  *(a1 + 4 * a2 + 1472) = v3;
  return 0;
}

uint64_t Phase::DspLayer23::MatrixMixerSlice<8>::UpdateParameters(_OWORD *a1)
{
  a1[94] = a1[92];
  a1[95] = a1[93];
  return 0;
}

void Phase::DspLayer23::VPMatrixMixer<9>::~VPMatrixMixer(Phase::DspLayer23::VoicePoolSerial *a1)
{
  Phase::DspLayer23::VoicePoolSerial::~VoicePoolSerial(a1);

  JUMPOUT(0x23EE864A0);
}

uint64_t Phase::DspLayer23::MatrixMixerSlice<9>::~MatrixMixerSlice(uint64_t a1)
{
  free(*(a1 + 1520));
  for (i = 1376; i != 224; i -= 128)
  {
    free(*(a1 + i));
  }

  free(*(a1 + 224));
  return a1;
}

void Phase::DspLayer23::MatrixMixerSlice<9>::~MatrixMixerSlice(uint64_t a1)
{
  free(*(a1 + 1520));
  for (i = 1376; i != 224; i -= 128)
  {
    free(*(a1 + i));
  }

  free(*(a1 + 224));

  JUMPOUT(0x23EE86490);
}

uint64_t Phase::DspLayer23::MatrixMixerSlice<9>::Reset(uint64_t result)
{
  v1 = 0;
  *(result + 232) = 0;
  v2 = (result + 1644);
  *(result + 1528) = 0u;
  *(result + 1544) = 0u;
  *(result + 1560) = 0u;
  *(result + 1576) = 0u;
  *(result + 1592) = 0u;
  do
  {
    *(result + 360 + v1) = 0;
    *(v2 - 9) = 1065353216;
    *v2++ = 1065353216;
    v1 += 128;
  }

  while (v1 != 1152);
  return result;
}

__n128 Phase::DspLayer23::MatrixMixerSlice<9>::MoveStateTo(uint64_t a1, uint64_t a2)
{
  *(a2 + 32) = *(a1 + 32);
  v2 = *(a2 + 224);
  v3 = *(a1 + 176);
  v5 = *(a1 + 128);
  v4 = *(a1 + 144);
  *(a2 + 160) = *(a1 + 160);
  *(a2 + 176) = v3;
  *(a2 + 128) = v5;
  *(a2 + 144) = v4;
  v6 = *(a1 + 224);
  v7 = *(a1 + 240);
  v8 = *(a1 + 208);
  *(a2 + 192) = *(a1 + 192);
  *(a2 + 208) = v8;
  *(a2 + 224) = v6;
  *(a2 + 240) = v7;
  *(a1 + 224) = v2;
  *(a1 + 232) = 0;
  v9 = *(a2 + 1520);
  v10 = *(a1 + 1424);
  v11 = *(a1 + 1440);
  *(a2 + 1456) = *(a1 + 1456);
  *(a2 + 1440) = v11;
  *(a2 + 1424) = v10;
  v12 = *(a1 + 1520);
  v13 = *(a1 + 1488);
  v14 = *(a1 + 1504);
  *(a2 + 1472) = *(a1 + 1472);
  *(a2 + 1504) = v14;
  *(a2 + 1488) = v13;
  *(a2 + 1520) = v12;
  *(a2 + 1408) = *(a1 + 1408);
  *(a1 + 1520) = v9;
  *(a1 + 1528) = 0;
  v15 = a1 + 360;
  v16 = (a2 + 352);
  v17 = 9;
  do
  {
    v18 = *v16;
    v19 = *(v15 - 88);
    v20 = *(v15 - 56);
    v21 = *(v15 - 104);
    *(v16 - 4) = *(v15 - 72);
    *(v16 - 3) = v20;
    *(v16 - 6) = v21;
    *(v16 - 5) = v19;
    v22 = *(v15 - 8);
    v23 = *(v15 - 24);
    v24 = *(v15 + 8);
    *(v16 - 2) = *(v15 - 40);
    *(v16 - 1) = v23;
    *v16 = v22;
    *(v16 + 1) = v24;
    v16 += 16;
    *(v15 - 8) = v18;
    *v15 = 0;
    v15 += 128;
    --v17;
  }

  while (v17);
  *(a2 + 1536) = *(a1 + 1536);
  v25 = *(a1 + 1552);
  v26 = *(a1 + 1568);
  v27 = *(a1 + 1584);
  *(a2 + 1600) = *(a1 + 1600);
  *(a2 + 1584) = v27;
  *(a2 + 1568) = v26;
  *(a2 + 1552) = v25;
  v28 = *(a1 + 1608);
  v29 = *(a1 + 1624);
  *(a2 + 1640) = *(a1 + 1640);
  *(a2 + 1608) = v28;
  *(a2 + 1624) = v29;
  result = *(a1 + 1644);
  v31 = *(a1 + 1660);
  *(a2 + 1676) = *(a1 + 1676);
  *(a2 + 1644) = result;
  *(a2 + 1660) = v31;
  return result;
}

uint64_t Phase::DspLayer23::MatrixMixerSlice<9>::Process(uint64_t a1, int a2)
{
  v13[1] = *MEMORY[0x277D85DE8];
  v3 = a2;
  MEMORY[0x28223BE20](a1);
  v5 = (v13 - v4);
  bzero(v13 - v4, v6);
  v7 = Phase::DspLayer23::AudioConnections::Sum((a1 + 1408), v3, v5);
  v8 = a1 + 1644;
  v9 = (a1 + 1536);
  v10 = 9;
  do
  {
    v11 = *v9++;
    result = MEMORY[0x23EE87290](v7, 1, v8, v11, 1, v3);
    v8 += 4;
    --v10;
  }

  while (v10);
  return result;
}

uint64_t Phase::DspLayer23::MatrixMixerSlice<9>::SetParameter(uint64_t a1, uint64_t a2, double a3)
{
  v3 = a3;
  *(a1 + 4 * a2 + 1608) = v3;
  return 0;
}

uint64_t Phase::DspLayer23::MatrixMixerSlice<9>::UpdateParameters(uint64_t a1)
{
  *(a1 + 1676) = *(a1 + 1640);
  v1 = *(a1 + 1624);
  *(a1 + 1644) = *(a1 + 1608);
  *(a1 + 1660) = v1;
  return 0;
}

void Phase::DspLayer23::VPMatrixMixer<10>::~VPMatrixMixer(Phase::DspLayer23::VoicePoolSerial *a1)
{
  Phase::DspLayer23::VoicePoolSerial::~VoicePoolSerial(a1);

  JUMPOUT(0x23EE864A0);
}

uint64_t Phase::DspLayer23::MatrixMixerSlice<10>::~MatrixMixerSlice(uint64_t a1)
{
  free(*(a1 + 1648));
  for (i = 1504; i != 224; i -= 128)
  {
    free(*(a1 + i));
  }

  free(*(a1 + 224));
  return a1;
}

void Phase::DspLayer23::MatrixMixerSlice<10>::~MatrixMixerSlice(uint64_t a1)
{
  free(*(a1 + 1648));
  for (i = 1504; i != 224; i -= 128)
  {
    free(*(a1 + i));
  }

  free(*(a1 + 224));

  JUMPOUT(0x23EE86490);
}

uint64_t Phase::DspLayer23::MatrixMixerSlice<10>::Reset(uint64_t result)
{
  v1 = 0;
  *(result + 232) = 0;
  v2 = (result + 1784);
  *(result + 1736) = 0;
  *(result + 1656) = 0u;
  *(result + 1672) = 0u;
  *(result + 1688) = 0u;
  *(result + 1704) = 0u;
  *(result + 1720) = 0u;
  do
  {
    *(result + 360 + v1) = 0;
    *(v2 - 10) = 1065353216;
    *v2++ = 1065353216;
    v1 += 128;
  }

  while (v1 != 1280);
  return result;
}

__n128 Phase::DspLayer23::MatrixMixerSlice<10>::MoveStateTo(uint64_t a1, uint64_t a2)
{
  *(a2 + 32) = *(a1 + 32);
  v2 = *(a2 + 224);
  v3 = *(a1 + 176);
  v5 = *(a1 + 128);
  v4 = *(a1 + 144);
  *(a2 + 160) = *(a1 + 160);
  *(a2 + 176) = v3;
  *(a2 + 128) = v5;
  *(a2 + 144) = v4;
  v6 = *(a1 + 224);
  v7 = *(a1 + 240);
  v8 = *(a1 + 208);
  *(a2 + 192) = *(a1 + 192);
  *(a2 + 208) = v8;
  *(a2 + 224) = v6;
  *(a2 + 240) = v7;
  *(a1 + 224) = v2;
  *(a1 + 232) = 0;
  v9 = *(a2 + 1648);
  v10 = *(a1 + 1552);
  v11 = *(a1 + 1568);
  *(a2 + 1584) = *(a1 + 1584);
  *(a2 + 1568) = v11;
  *(a2 + 1552) = v10;
  v12 = *(a1 + 1648);
  v13 = *(a1 + 1616);
  v14 = *(a1 + 1632);
  *(a2 + 1600) = *(a1 + 1600);
  *(a2 + 1632) = v14;
  *(a2 + 1616) = v13;
  *(a2 + 1648) = v12;
  *(a2 + 1536) = *(a1 + 1536);
  *(a1 + 1648) = v9;
  *(a1 + 1656) = 0;
  v15 = a1 + 360;
  v16 = (a2 + 352);
  v17 = 10;
  do
  {
    v18 = *v16;
    v19 = *(v15 - 88);
    v20 = *(v15 - 56);
    v21 = *(v15 - 104);
    *(v16 - 4) = *(v15 - 72);
    *(v16 - 3) = v20;
    *(v16 - 6) = v21;
    *(v16 - 5) = v19;
    v22 = *(v15 - 8);
    v23 = *(v15 - 24);
    v24 = *(v15 + 8);
    *(v16 - 2) = *(v15 - 40);
    *(v16 - 1) = v23;
    *v16 = v22;
    *(v16 + 1) = v24;
    v16 += 16;
    *(v15 - 8) = v18;
    *v15 = 0;
    v15 += 128;
    --v17;
  }

  while (v17);
  *(a2 + 1664) = *(a1 + 1664);
  v25 = *(a1 + 1680);
  v26 = *(a1 + 1696);
  v27 = *(a1 + 1712);
  *(a2 + 1728) = *(a1 + 1728);
  *(a2 + 1712) = v27;
  *(a2 + 1696) = v26;
  *(a2 + 1680) = v25;
  v28 = *(a1 + 1744);
  v29 = *(a1 + 1760);
  *(a2 + 1776) = *(a1 + 1776);
  *(a2 + 1760) = v29;
  *(a2 + 1744) = v28;
  result = *(a1 + 1784);
  v31 = *(a1 + 1800);
  *(a2 + 1816) = *(a1 + 1816);
  *(a2 + 1784) = result;
  *(a2 + 1800) = v31;
  return result;
}

uint64_t Phase::DspLayer23::MatrixMixerSlice<10>::Process(uint64_t a1, int a2)
{
  v13[1] = *MEMORY[0x277D85DE8];
  v3 = a2;
  MEMORY[0x28223BE20](a1);
  v5 = (v13 - v4);
  bzero(v13 - v4, v6);
  v7 = Phase::DspLayer23::AudioConnections::Sum((a1 + 1536), v3, v5);
  v8 = a1 + 1784;
  v9 = (a1 + 1664);
  v10 = 10;
  do
  {
    v11 = *v9++;
    result = MEMORY[0x23EE87290](v7, 1, v8, v11, 1, v3);
    v8 += 4;
    --v10;
  }

  while (v10);
  return result;
}

uint64_t Phase::DspLayer23::MatrixMixerSlice<10>::SetParameter(uint64_t a1, uint64_t a2, double a3)
{
  v3 = a3;
  *(a1 + 4 * a2 + 1744) = v3;
  return 0;
}

uint64_t Phase::DspLayer23::MatrixMixerSlice<10>::UpdateParameters(uint64_t a1)
{
  v1 = *(a1 + 1760);
  *(a1 + 1784) = *(a1 + 1744);
  *(a1 + 1800) = v1;
  *(a1 + 1816) = *(a1 + 1776);
  return 0;
}

void Phase::DspLayer23::VPMatrixMixer<11>::~VPMatrixMixer(Phase::DspLayer23::VoicePoolSerial *a1)
{
  Phase::DspLayer23::VoicePoolSerial::~VoicePoolSerial(a1);

  JUMPOUT(0x23EE864A0);
}

uint64_t Phase::DspLayer23::MatrixMixerSlice<11>::~MatrixMixerSlice(uint64_t a1)
{
  free(*(a1 + 1776));
  for (i = 1632; i != 224; i -= 128)
  {
    free(*(a1 + i));
  }

  free(*(a1 + 224));
  return a1;
}

void Phase::DspLayer23::MatrixMixerSlice<11>::~MatrixMixerSlice(uint64_t a1)
{
  free(*(a1 + 1776));
  for (i = 1632; i != 224; i -= 128)
  {
    free(*(a1 + i));
  }

  free(*(a1 + 224));

  JUMPOUT(0x23EE86490);
}

uint64_t Phase::DspLayer23::MatrixMixerSlice<11>::Reset(uint64_t result)
{
  v1 = 0;
  *(result + 232) = 0;
  v2 = (result + 1924);
  *(result + 1784) = 0u;
  *(result + 1800) = 0u;
  *(result + 1816) = 0u;
  *(result + 1832) = 0u;
  *(result + 1848) = 0u;
  *(result + 1864) = 0u;
  do
  {
    *(result + 360 + v1) = 0;
    *(v2 - 11) = 1065353216;
    *v2++ = 1065353216;
    v1 += 128;
  }

  while (v1 != 1408);
  return result;
}

__n128 Phase::DspLayer23::MatrixMixerSlice<11>::MoveStateTo(uint64_t a1, uint64_t a2)
{
  *(a2 + 32) = *(a1 + 32);
  v2 = *(a2 + 224);
  v3 = *(a1 + 176);
  v5 = *(a1 + 128);
  v4 = *(a1 + 144);
  *(a2 + 160) = *(a1 + 160);
  *(a2 + 176) = v3;
  *(a2 + 128) = v5;
  *(a2 + 144) = v4;
  v6 = *(a1 + 224);
  v7 = *(a1 + 240);
  v8 = *(a1 + 208);
  *(a2 + 192) = *(a1 + 192);
  *(a2 + 208) = v8;
  *(a2 + 224) = v6;
  *(a2 + 240) = v7;
  *(a1 + 224) = v2;
  *(a1 + 232) = 0;
  v9 = *(a2 + 1776);
  v10 = *(a1 + 1680);
  v11 = *(a1 + 1696);
  *(a2 + 1712) = *(a1 + 1712);
  *(a2 + 1696) = v11;
  *(a2 + 1680) = v10;
  v12 = *(a1 + 1776);
  v13 = *(a1 + 1744);
  v14 = *(a1 + 1760);
  *(a2 + 1728) = *(a1 + 1728);
  *(a2 + 1760) = v14;
  *(a2 + 1744) = v13;
  *(a2 + 1776) = v12;
  *(a2 + 1664) = *(a1 + 1664);
  *(a1 + 1776) = v9;
  *(a1 + 1784) = 0;
  v15 = a1 + 360;
  v16 = (a2 + 352);
  v17 = 11;
  do
  {
    v18 = *v16;
    v19 = *(v15 - 88);
    v20 = *(v15 - 56);
    v21 = *(v15 - 104);
    *(v16 - 4) = *(v15 - 72);
    *(v16 - 3) = v20;
    *(v16 - 6) = v21;
    *(v16 - 5) = v19;
    v22 = *(v15 - 8);
    v23 = *(v15 - 24);
    v24 = *(v15 + 8);
    *(v16 - 2) = *(v15 - 40);
    *(v16 - 1) = v23;
    *v16 = v22;
    *(v16 + 1) = v24;
    v16 += 16;
    *(v15 - 8) = v18;
    *v15 = 0;
    v15 += 128;
    --v17;
  }

  while (v17);
  v25 = *(a1 + 1792);
  *(a2 + 1808) = *(a1 + 1808);
  *(a2 + 1792) = v25;
  v26 = *(a1 + 1824);
  v27 = *(a1 + 1840);
  v28 = *(a1 + 1856);
  *(a2 + 1872) = *(a1 + 1872);
  *(a2 + 1856) = v28;
  *(a2 + 1840) = v27;
  *(a2 + 1824) = v26;
  v29 = *(a1 + 1880);
  v30 = *(a1 + 1896);
  *(a2 + 1908) = *(a1 + 1908);
  *(a2 + 1880) = v29;
  *(a2 + 1896) = v30;
  result = *(a1 + 1924);
  v32 = *(a1 + 1940);
  *(a2 + 1952) = *(a1 + 1952);
  *(a2 + 1924) = result;
  *(a2 + 1940) = v32;
  return result;
}

uint64_t Phase::DspLayer23::MatrixMixerSlice<11>::Process(uint64_t a1, int a2)
{
  v13[1] = *MEMORY[0x277D85DE8];
  v3 = a2;
  MEMORY[0x28223BE20](a1);
  v5 = (v13 - v4);
  bzero(v13 - v4, v6);
  v7 = Phase::DspLayer23::AudioConnections::Sum((a1 + 1664), v3, v5);
  v8 = a1 + 1924;
  v9 = (a1 + 1792);
  v10 = 11;
  do
  {
    v11 = *v9++;
    result = MEMORY[0x23EE87290](v7, 1, v8, v11, 1, v3);
    v8 += 4;
    --v10;
  }

  while (v10);
  return result;
}

uint64_t Phase::DspLayer23::MatrixMixerSlice<11>::SetParameter(uint64_t a1, uint64_t a2, double a3)
{
  v3 = a3;
  *(a1 + 4 * a2 + 1880) = v3;
  return 0;
}

uint64_t Phase::DspLayer23::MatrixMixerSlice<11>::UpdateParameters(_OWORD *a1)
{
  v1 = *(a1 + 1896);
  *(a1 + 1924) = *(a1 + 1880);
  *(a1 + 1940) = v1;
  a1[122] = *(a1 + 1908);
  return 0;
}

void Phase::DspLayer23::VPMatrixMixer<12>::~VPMatrixMixer(Phase::DspLayer23::VoicePoolSerial *a1)
{
  Phase::DspLayer23::VoicePoolSerial::~VoicePoolSerial(a1);

  JUMPOUT(0x23EE864A0);
}

uint64_t Phase::DspLayer23::MatrixMixerSlice<12>::~MatrixMixerSlice(uint64_t a1)
{
  free(*(a1 + 1904));
  for (i = 1760; i != 224; i -= 128)
  {
    free(*(a1 + i));
  }

  free(*(a1 + 224));
  return a1;
}

void Phase::DspLayer23::MatrixMixerSlice<12>::~MatrixMixerSlice(uint64_t a1)
{
  free(*(a1 + 1904));
  for (i = 1760; i != 224; i -= 128)
  {
    free(*(a1 + i));
  }

  free(*(a1 + 224));

  JUMPOUT(0x23EE86490);
}

uint64_t Phase::DspLayer23::MatrixMixerSlice<12>::Reset(uint64_t result)
{
  v1 = 0;
  *(result + 232) = 0;
  *(result + 2008) = 0;
  v2 = (result + 2064);
  *(result + 1912) = 0u;
  *(result + 1928) = 0u;
  *(result + 1944) = 0u;
  *(result + 1960) = 0u;
  *(result + 1976) = 0u;
  *(result + 1992) = 0u;
  do
  {
    *(result + 360 + v1) = 0;
    *(v2 - 12) = 1065353216;
    *v2++ = 1065353216;
    v1 += 128;
  }

  while (v1 != 1536);
  return result;
}

__n128 Phase::DspLayer23::MatrixMixerSlice<12>::MoveStateTo(uint64_t a1, uint64_t a2)
{
  *(a2 + 32) = *(a1 + 32);
  v2 = *(a2 + 224);
  v3 = *(a1 + 176);
  v5 = *(a1 + 128);
  v4 = *(a1 + 144);
  *(a2 + 160) = *(a1 + 160);
  *(a2 + 176) = v3;
  *(a2 + 128) = v5;
  *(a2 + 144) = v4;
  v6 = *(a1 + 224);
  v7 = *(a1 + 240);
  v8 = *(a1 + 208);
  *(a2 + 192) = *(a1 + 192);
  *(a2 + 208) = v8;
  *(a2 + 224) = v6;
  *(a2 + 240) = v7;
  *(a1 + 224) = v2;
  *(a1 + 232) = 0;
  v9 = *(a2 + 1904);
  v10 = *(a1 + 1808);
  v11 = *(a1 + 1824);
  *(a2 + 1840) = *(a1 + 1840);
  *(a2 + 1824) = v11;
  *(a2 + 1808) = v10;
  v12 = *(a1 + 1904);
  v13 = *(a1 + 1872);
  v14 = *(a1 + 1888);
  *(a2 + 1856) = *(a1 + 1856);
  *(a2 + 1888) = v14;
  *(a2 + 1872) = v13;
  *(a2 + 1904) = v12;
  *(a2 + 1792) = *(a1 + 1792);
  *(a1 + 1904) = v9;
  *(a1 + 1912) = 0;
  v15 = a1 + 360;
  v16 = (a2 + 352);
  v17 = 12;
  do
  {
    v18 = *v16;
    v19 = *(v15 - 88);
    v20 = *(v15 - 56);
    v21 = *(v15 - 104);
    *(v16 - 4) = *(v15 - 72);
    *(v16 - 3) = v20;
    *(v16 - 6) = v21;
    *(v16 - 5) = v19;
    v22 = *(v15 - 8);
    v23 = *(v15 - 24);
    v24 = *(v15 + 8);
    *(v16 - 2) = *(v15 - 40);
    *(v16 - 1) = v23;
    *v16 = v22;
    *(v16 + 1) = v24;
    v16 += 16;
    *(v15 - 8) = v18;
    *v15 = 0;
    v15 += 128;
    --v17;
  }

  while (v17);
  v25 = *(a1 + 1920);
  *(a2 + 1936) = *(a1 + 1936);
  *(a2 + 1920) = v25;
  v26 = *(a1 + 1952);
  v27 = *(a1 + 1968);
  v28 = *(a1 + 1984);
  *(a2 + 2000) = *(a1 + 2000);
  *(a2 + 1984) = v28;
  *(a2 + 1968) = v27;
  *(a2 + 1952) = v26;
  v29 = *(a1 + 2016);
  v30 = *(a1 + 2032);
  *(a2 + 2048) = *(a1 + 2048);
  *(a2 + 2032) = v30;
  *(a2 + 2016) = v29;
  result = *(a1 + 2064);
  v32 = *(a1 + 2080);
  *(a2 + 2096) = *(a1 + 2096);
  *(a2 + 2080) = v32;
  *(a2 + 2064) = result;
  return result;
}

uint64_t Phase::DspLayer23::MatrixMixerSlice<12>::Process(uint64_t a1, int a2)
{
  v13[1] = *MEMORY[0x277D85DE8];
  v3 = a2;
  MEMORY[0x28223BE20](a1);
  v5 = (v13 - v4);
  bzero(v13 - v4, v6);
  v7 = Phase::DspLayer23::AudioConnections::Sum((a1 + 1792), v3, v5);
  v8 = a1 + 2064;
  v9 = (a1 + 1920);
  v10 = 12;
  do
  {
    v11 = *v9++;
    result = MEMORY[0x23EE87290](v7, 1, v8, v11, 1, v3);
    v8 += 4;
    --v10;
  }

  while (v10);
  return result;
}

uint64_t Phase::DspLayer23::MatrixMixerSlice<12>::SetParameter(uint64_t a1, uint64_t a2, double a3)
{
  v3 = a3;
  *(a1 + 4 * a2 + 2016) = v3;
  return 0;
}

uint64_t Phase::DspLayer23::MatrixMixerSlice<12>::UpdateParameters(_OWORD *a1)
{
  a1[129] = a1[126];
  a1[130] = a1[127];
  a1[131] = a1[128];
  return 0;
}

uint64_t std::unique_ptr<std::__hash_node<std::__hash_value_type<Phase::DspLayer23::KernelType,std::unique_ptr<Phase::Controller::VoicePoolEntry const>>,void *>,std::__hash_node_destructor<std::allocator<std::__hash_node<std::__hash_value_type<Phase::DspLayer23::KernelType,std::unique_ptr<Phase::Controller::VoicePoolEntry const>>,void *>>>>::~unique_ptr[abi:ne200100](uint64_t a1)
{
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    if (*(a1 + 16) == 1)
    {
      std::unique_ptr<Phase::Controller::VoicePoolEntry const>::reset[abi:ne200100](v2 + 3, 0);
    }

    operator delete(v2);
  }

  return a1;
}

void **std::unique_ptr<Phase::Controller::VoicePoolEntry const>::reset[abi:ne200100](void ***a1, void **a2)
{
  result = *a1;
  *a1 = a2;
  if (result)
  {
    Phase::Controller::VoicePoolEntry::~VoicePoolEntry(result);

    JUMPOUT(0x23EE864A0);
  }

  return result;
}

Phase::DspLayer23::VoicePoolSerial *Phase::DspLayer23::VoicePoolSerial::VoicePoolSerial(Phase::DspLayer23::VoicePoolSerial *this, int a2, int a3, uint64_t a4)
{
  v7 = Phase::DspLayer23::VoicePool::VoicePool(this, a2, a3);
  *v7 = &unk_284D3B570;
  v8 = a2 + 1;
  *(v7 + 74) = v8;
  v9 = (a4 + 127) & 0xFFFFFFFFFFFFFF80;
  *(v7 + 75) = v9;
  v10 = malloc_type_aligned_alloc(0x80uLL, v9 * v8, 0x100004077774924uLL);
  *(this + 76) = v10;
  *(this + 616) = 0u;
  bzero(v10, *(this + 75) * *(this + 74));
  return this;
}

void Phase::DspLayer23::VoicePoolSerial::~VoicePoolSerial(Phase::DspLayer23::VoicePoolSerial *this)
{
  *this = &unk_284D3B570;
  if (*(this + 74))
  {
    v2 = 0;
    do
    {
      v3 = (*(this + 76) + *(this + 75) * v2);
      (**v3)(v3);
      ++v2;
    }

    while (*(this + 74) > v2);
  }

  free(*(this + 76));
  *this = &unk_284D38690;
  free(*(this + 69));
  free(*(this + 1));
  free(*(this + 2));
}

uint64_t Phase::DspLayer23::VoicePoolSerial::PlayVoice(Phase::DspLayer23::VoicePoolSerial *this, unint64_t a2)
{
  v4 = this + 32;
  v5 = *(this + ((51 * (a2 ^ 0x25)) & 0x3F) + 4);
  if (!v5)
  {
    goto LABEL_7;
  }

  while (*v5 < a2)
  {
    v5 = v5[2];
    if (!v5)
    {
      goto LABEL_7;
    }
  }

  if (*v5 == a2)
  {
    v6 = v5[1];
  }

  else
  {
LABEL_7:
    v6 = -1;
  }

  if ((*(*this + 216))(this, v6))
  {
    v7 = *(this + 77);
    v8 = Phase::DspLayer23::BackedMapList<unsigned long long,unsigned long,true,64ull>::Put(v4, a2);
    if (v8)
    {
      v9 = (this + 616);
      *v8 = v7;
      v10 = *(this + 76) + *(this + 75) * *(this + 77);
      (*(*v10 + 16))(v10, a2);
      (*(*v10 + 32))(v10);
LABEL_19:
      result = 0;
      ++*v9;
      return result;
    }

    return 1;
  }

  else
  {
    if ((*(*this + 208))(this, v6))
    {
      v11 = *(this + 76);
      v12 = *(this + 75);
      v13 = v11 + v12 * v6;
      v14 = v11 + *(this + 77) * v12;
      (*(*v13 + 104))(v13, v14);
      (*(*v14 + 40))(v14);
      v15 = *(this + 77);
      v16 = Phase::DspLayer23::BackedMapList<unsigned long long,unsigned long,true,64ull>::Put(v4, a2);
      if (v16)
      {
        *v16 = v15;
      }

      v9 = (this + 616);
      v17 = *(this + 78);
      v18 = *(this + 74) - v17;
      if (v6 > v18)
      {
        v19 = (*(this + 76) + *(this + 75) * v18);
        v20 = Phase::DspLayer23::BackedMapList<unsigned long long,unsigned long,true,64ull>::Put(v4, v19[4]);
        if (v20)
        {
          *v20 = v6;
        }

        (*(*v19 + 104))(v19, v13);
        v17 = *(this + 78);
      }

      *(this + 78) = v17 - 1;
      goto LABEL_19;
    }

    return 3;
  }
}

uint64_t Phase::DspLayer23::VoicePoolSerial::PauseVoice(Phase::DspLayer23::VoicePoolSerial *this, unint64_t a2)
{
  v4 = this + 32;
  v5 = *(this + ((51 * (a2 ^ 0x25)) & 0x3F) + 4);
  if (!v5)
  {
    goto LABEL_7;
  }

  while (*v5 < a2)
  {
    v5 = v5[2];
    if (!v5)
    {
      goto LABEL_7;
    }
  }

  if (*v5 == a2)
  {
    v6 = v5[1];
  }

  else
  {
LABEL_7:
    v6 = -1;
  }

  if ((*(*this + 200))(this, v6))
  {
    v7 = (*(this + 76) + *(this + 75) * v6);
    (*(*v7 + 48))(v7);
    v8 = *(this + 74) + ~*(this + 78);
    (*(*v7 + 104))(v7, *(this + 76) + *(this + 75) * v8);
    v9 = Phase::DspLayer23::BackedMapList<unsigned long long,unsigned long,true,64ull>::Put(v4, a2);
    if (v9)
    {
      *v9 = v8;
    }

    v10 = vaddq_s64(*(this + 616), xmmword_23A5983A0);
    *(this + 616) = v10;
    if (v6 >= v10.i64[0])
    {
      return 0;
    }

    else
    {
      v11 = *(this + 76) + *(this + 75) * v10.i64[0];
      (*(*v11 + 104))(v11, v7);
      result = Phase::DspLayer23::BackedMapList<unsigned long long,unsigned long,true,64ull>::Put(v4, v7[4]);
      if (result)
      {
        v13 = result;
        result = 0;
        *v13 = v6;
      }
    }
  }

  else if ((*(*this + 208))(this, v6))
  {
    return 4;
  }

  else
  {
    return 2;
  }

  return result;
}

uint64_t Phase::DspLayer23::VoicePoolSerial::StopVoice(Phase::DspLayer23::VoicePoolSerial *this, unint64_t a2)
{
  v4 = this + 32;
  v5 = *(this + ((51 * (a2 ^ 0x25)) & 0x3F) + 4);
  if (!v5)
  {
    goto LABEL_7;
  }

  while (*v5 < a2)
  {
    v5 = v5[2];
    if (!v5)
    {
      goto LABEL_7;
    }
  }

  if (*v5 == a2)
  {
    v6 = v5[1];
  }

  else
  {
LABEL_7:
    v6 = -1;
  }

  if ((*(*this + 200))(this, v6))
  {
    v7 = (*(this + 76) + *(this + 75) * v6);
    (*(*v7 + 56))(v7);
    Phase::DspLayer23::BackedMapList<unsigned long long,unsigned long,true,64ull>::Pop(v4, a2);
    v8 = *(this + 77) - 1;
    *(this + 77) = v8;
    if (v6 >= v8)
    {
      return 0;
    }

    else
    {
      v9 = *(this + 76) + *(this + 75) * v8;
      (*(*v9 + 104))(v9, v7);
      result = Phase::DspLayer23::BackedMapList<unsigned long long,unsigned long,true,64ull>::Put(v4, v7[4]);
      if (result)
      {
        v11 = result;
        result = 0;
        *v11 = v6;
      }
    }
  }

  else if ((*(*this + 208))(this, v6))
  {
    v12 = (*(this + 76) + *(this + 75) * v6);
    (*(*v12 + 56))(v12);
    Phase::DspLayer23::BackedMapList<unsigned long long,unsigned long,true,64ull>::Pop(v4, a2);
    v13 = *(this + 74) - *(this + 78);
    if (v6 > v13)
    {
      v14 = *(this + 76) + *(this + 75) * v13;
      (*(*v14 + 104))(v14, v12);
      v15 = Phase::DspLayer23::BackedMapList<unsigned long long,unsigned long,true,64ull>::Put(v4, v12[4]);
      if (v15)
      {
        *v15 = v6;
      }
    }

    result = 0;
    --*(this + 78);
  }

  else
  {
    return 2;
  }

  return result;
}

uint64_t Phase::DspLayer23::VoicePoolSerial::MoveVoiceTo(Phase::DspLayer23::VoicePoolSerial *this, unint64_t a2, Phase::DspLayer23::VoicePool *a3)
{
  v6 = (51 * (a2 ^ 0x25)) & 0x3F;
  v7 = *(this + v6 + 4);
  if (!v7)
  {
    goto LABEL_7;
  }

  while (*v7 < a2)
  {
    v7 = v7[2];
    if (!v7)
    {
      goto LABEL_7;
    }
  }

  if (*v7 == a2)
  {
    v8 = v7[1];
  }

  else
  {
LABEL_7:
    v8 = -1;
  }

  if ((*(*this + 216))(this, v8))
  {
    return 2;
  }

  result = (*(*a3 + 16))(a3, a2);
  if (!result)
  {
    if ((*(*this + 208))(this, v8))
    {
      (*(*a3 + 24))(a3, a2);
    }

    v11 = *(a3 + v6 + 4);
    if (!v11)
    {
      goto LABEL_19;
    }

    while (*v11 < a2)
    {
      v11 = v11[2];
      if (!v11)
      {
        goto LABEL_19;
      }
    }

    if (*v11 == a2)
    {
      v12 = v11[1];
    }

    else
    {
LABEL_19:
      v12 = -1;
    }

    v10 = *(this + 76) + *(this + 75) * v8;
    (*(*v10 + 104))(v10, *(a3 + 76) + *(a3 + 75) * v12);
    (*(*this + 32))(this, a2);
    return 0;
  }

  return result;
}

uint64_t Phase::DspLayer23::VoicePoolSerial::InputVoiceConnections(Phase::DspLayer23::VoicePoolSerial *this, unint64_t a2)
{
  v3 = *(this + ((51 * (a2 ^ 0x25)) & 0x3F) + 4);
  if (!v3)
  {
    goto LABEL_7;
  }

  while (*v3 < a2)
  {
    v3 = v3[2];
    if (!v3)
    {
      goto LABEL_7;
    }
  }

  if (*v3 == a2)
  {
    v4 = v3[1];
  }

  else
  {
LABEL_7:
    v4 = -1;
  }

  if ((*(*this + 216))(this, v4))
  {
    return 0;
  }

  v6 = *(*(*(this + 76) + *(this + 75) * v4) + 64);

  return v6();
}

uint64_t Phase::DspLayer23::VoicePoolSerial::OutputVoiceConnections(Phase::DspLayer23::VoicePoolSerial *this, unint64_t a2)
{
  v3 = *(this + ((51 * (a2 ^ 0x25)) & 0x3F) + 4);
  if (!v3)
  {
    goto LABEL_7;
  }

  while (*v3 < a2)
  {
    v3 = v3[2];
    if (!v3)
    {
      goto LABEL_7;
    }
  }

  if (*v3 == a2)
  {
    v4 = v3[1];
  }

  else
  {
LABEL_7:
    v4 = -1;
  }

  if ((*(*this + 216))(this, v4))
  {
    return 0;
  }

  v6 = *(*(*(this + 76) + *(this + 75) * v4) + 72);

  return v6();
}

uint64_t Phase::DspLayer23::VoicePoolSerial::InputAudioConnections(Phase::DspLayer23::VoicePoolSerial *this, unint64_t a2)
{
  v3 = *(this + ((51 * (a2 ^ 0x25)) & 0x3F) + 4);
  if (!v3)
  {
    goto LABEL_7;
  }

  while (*v3 < a2)
  {
    v3 = v3[2];
    if (!v3)
    {
      goto LABEL_7;
    }
  }

  if (*v3 == a2)
  {
    v4 = v3[1];
  }

  else
  {
LABEL_7:
    v4 = -1;
  }

  if ((*(*this + 216))(this, v4))
  {
    return 0;
  }

  v6 = *(*(*(this + 76) + *(this + 75) * v4) + 80);

  return v6();
}

uint64_t Phase::DspLayer23::VoicePoolSerial::SetOutputBuffer(Phase::DspLayer23::VoicePoolSerial *this, unint64_t a2, int a3, float *a4)
{
  v5 = *(this + ((51 * (a2 ^ 0x25)) & 0x3F) + 4);
  if (!v5)
  {
    goto LABEL_7;
  }

  while (*v5 < a2)
  {
    v5 = v5[2];
    if (!v5)
    {
      goto LABEL_7;
    }
  }

  if (*v5 == a2)
  {
    v6 = v5[1];
  }

  else
  {
LABEL_7:
    v6 = -1;
  }

  if ((*(*this + 216))(this, v6))
  {
    return 2;
  }

  v8 = *(*(*(this + 76) + *(this + 75) * v6) + 88);

  return v8();
}

uint64_t Phase::DspLayer23::VoicePoolSerial::GetOutputBuffer(Phase::DspLayer23::VoicePoolSerial *this, unint64_t a2)
{
  v3 = *(this + ((51 * (a2 ^ 0x25)) & 0x3F) + 4);
  if (!v3)
  {
    goto LABEL_7;
  }

  while (*v3 < a2)
  {
    v3 = v3[2];
    if (!v3)
    {
      goto LABEL_7;
    }
  }

  if (*v3 == a2)
  {
    v4 = v3[1];
  }

  else
  {
LABEL_7:
    v4 = -1;
  }

  if ((*(*this + 216))(this, v4))
  {
    return 0;
  }

  v6 = *(*(*(this + 76) + *(this + 75) * v4) + 96);

  return v6();
}

std::chrono::duration<long long, std::ratio<1, 1000000000>>::rep Phase::DspLayer23::VoicePoolSerial::Process(Phase::DspLayer23::VoicePoolSerial *this, uint64_t a2)
{
  v4.__d_.__rep_ = std::chrono::steady_clock::now().__d_.__rep_;
  if (*(this + 77))
  {
    v5 = 0;
    do
    {
      v6 = *(this + 76) + *(this + 75) * v5;
      (*(*v6 + 112))(v6, a2);
      ++v5;
    }

    while (v5 < *(this + 77));
  }

  result = std::chrono::steady_clock::now().__d_.__rep_;
  *(this + 73) = result - v4.__d_.__rep_;
  return result;
}

uint64_t Phase::DspLayer23::VoicePoolSerial::SetData(Phase::DspLayer23::VoicePoolSerial *this, unint64_t a2, unint64_t a3, void *a4)
{
  v5 = *(this + ((51 * (a2 ^ 0x25)) & 0x3F) + 4);
  if (!v5)
  {
    goto LABEL_7;
  }

  while (*v5 < a2)
  {
    v5 = v5[2];
    if (!v5)
    {
      goto LABEL_7;
    }
  }

  if (*v5 == a2)
  {
    v6 = v5[1];
  }

  else
  {
LABEL_7:
    v6 = -1;
  }

  if ((*(*this + 216))(this, v6))
  {
    return 2;
  }

  v8 = *(*(*(this + 76) + *(this + 75) * v6) + 120);

  return v8();
}

uint64_t Phase::DspLayer23::VoicePoolSerial::GetData(Phase::DspLayer23::VoicePoolSerial *this, unint64_t a2, uint64_t a3)
{
  v5 = *(this + ((51 * (a2 ^ 0x25)) & 0x3F) + 4);
  if (!v5)
  {
    goto LABEL_7;
  }

  while (*v5 < a2)
  {
    v5 = v5[2];
    if (!v5)
    {
      goto LABEL_7;
    }
  }

  if (*v5 == a2)
  {
    v6 = v5[1];
  }

  else
  {
LABEL_7:
    v6 = -1;
  }

  if ((*(*this + 216))(this, v6))
  {
    return 0;
  }

  v8 = *(this + 76) + *(this + 75) * v6;
  return (*(*v8 + 128))(v8, a3);
}

uint64_t Phase::DspLayer23::VoicePoolSerial::SetParameter(Phase::DspLayer23::VoicePoolSerial *this, unint64_t a2, double a3)
{
  v5 = *(this + ((51 * (a2 ^ 0x25)) & 0x3F) + 4);
  if (!v5)
  {
    goto LABEL_7;
  }

  while (*v5 < a2)
  {
    v5 = v5[2];
    if (!v5)
    {
      goto LABEL_7;
    }
  }

  if (*v5 == a2)
  {
    v6 = v5[1];
  }

  else
  {
LABEL_7:
    v6 = -1;
  }

  if ((*(*this + 216))(this, v6))
  {
    return 2;
  }

  v9 = *(*(*(this + 76) + *(this + 75) * v6) + 136);
  v7.n128_f64[0] = a3;

  return v9(v7);
}

uint64_t Phase::DspLayer23::VoicePoolSerial::UpdateParameters(Phase::DspLayer23::VoicePoolSerial *this, unint64_t a2)
{
  v3 = *(this + ((51 * (a2 ^ 0x25)) & 0x3F) + 4);
  if (!v3)
  {
    goto LABEL_7;
  }

  while (*v3 < a2)
  {
    v3 = v3[2];
    if (!v3)
    {
      goto LABEL_7;
    }
  }

  if (*v3 == a2)
  {
    v4 = v3[1];
  }

  else
  {
LABEL_7:
    v4 = -1;
  }

  if ((*(*this + 216))(this, v4))
  {
    return 2;
  }

  v6 = *(*(*(this + 76) + *(this + 75) * v4) + 144);

  return v6();
}

float *Phase::DspLayer23::SliceParallel::BusInConnections(Phase::DspLayer23::SliceParallel *this, int a2, float **a3, int a4, float **a5)
{
  HIDWORD(v8) = a2 - 1;
  LODWORD(v8) = a2 - 1;
  v7 = v8 >> 1;
  if (v7 > 2)
  {
    if (v7 == 3)
    {
      a5[3] = Phase::DspLayer23::ZERO_BUFFER;
      v10 = a4;
    }

    else
    {
      if (v7 != 7)
      {
        goto LABEL_13;
      }

      v10 = a4;
      a5[3] = Phase::DspLayer23::AudioConnections::Sum(a3 + 48, a4, a5[3]);
    }

    a5[2] = Phase::DspLayer23::AudioConnections::Sum(a3 + 32, v10, a5[2]);
    goto LABEL_11;
  }

  if (v7)
  {
    if (v7 == 1)
    {
      v9 = Phase::DspLayer23::ZERO_BUFFER;
      a5[2] = Phase::DspLayer23::ZERO_BUFFER;
      a5[3] = v9;
      v10 = a4;
LABEL_11:
      a5[1] = Phase::DspLayer23::AudioConnections::Sum(a3 + 16, v10, a5[1]);
      goto LABEL_12;
    }

LABEL_13:
    __assert_rtn("BusInConnections", "VoicePoolSliceParallel.cpp", 58, "false && Unknown lanes-in-use mask.");
  }

  v11 = Phase::DspLayer23::ZERO_BUFFER;
  a5[2] = Phase::DspLayer23::ZERO_BUFFER;
  a5[3] = v11;
  a5[1] = v11;
  v10 = a4;
LABEL_12:
  result = Phase::DspLayer23::AudioConnections::Sum(a3, v10, *a5);
  *a5 = result;
  return result;
}

uint64_t Phase::DspLayer23::SliceParallel::StartVoice(Phase::DspLayer23::SliceParallel *this, uint64_t a2, uint64_t a3)
{
  (*(*this + 24))(this);
  v6 = this + 8 * a2;
  *(v6 + 4) = a3;
  *(v6 + 8) = 0;
  return 1;
}

void sub_23A541234(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, void *a10, void *a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, void *a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, const void *a26)
{
  __cxa_end_catch();
  applesauce::CF::DictionaryRef::~DictionaryRef(&a26);

  _Unwind_Resume(a1);
}

uint64_t std::unique_ptr<std::__hash_node<std::__hash_value_type<unsigned int,std::unordered_map<PHASEExternalStreamVoiceBandwidthType,applesauce::CF::DictionaryRef>>,void *>,std::__hash_node_destructor<std::allocator<std::__hash_node<std::__hash_value_type<unsigned int,std::unordered_map<PHASEExternalStreamVoiceBandwidthType,applesauce::CF::DictionaryRef>>,void *>>>>::~unique_ptr[abi:ne200100](uint64_t a1)
{
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    if (*(a1 + 16) == 1)
    {
      std::__hash_table<std::__hash_value_type<PHASEExternalStreamVoiceBandwidthType,applesauce::CF::DictionaryRef>,std::__unordered_map_hasher<PHASEExternalStreamVoiceBandwidthType,std::__hash_value_type<PHASEExternalStreamVoiceBandwidthType,applesauce::CF::DictionaryRef>,std::hash<PHASEExternalStreamVoiceBandwidthType>,std::equal_to<PHASEExternalStreamVoiceBandwidthType>,true>,std::__unordered_map_equal<PHASEExternalStreamVoiceBandwidthType,std::__hash_value_type<PHASEExternalStreamVoiceBandwidthType,applesauce::CF::DictionaryRef>,std::equal_to<PHASEExternalStreamVoiceBandwidthType>,std::hash<PHASEExternalStreamVoiceBandwidthType>,true>,std::allocator<std::__hash_value_type<PHASEExternalStreamVoiceBandwidthType,applesauce::CF::DictionaryRef>>>::~__hash_table(v2 + 24);
    }

    operator delete(v2);
  }

  return a1;
}

uint64_t std::__hash_table<std::__hash_value_type<PHASEExternalStreamVoiceBandwidthType,applesauce::CF::DictionaryRef>,std::__unordered_map_hasher<PHASEExternalStreamVoiceBandwidthType,std::__hash_value_type<PHASEExternalStreamVoiceBandwidthType,applesauce::CF::DictionaryRef>,std::hash<PHASEExternalStreamVoiceBandwidthType>,std::equal_to<PHASEExternalStreamVoiceBandwidthType>,true>,std::__unordered_map_equal<PHASEExternalStreamVoiceBandwidthType,std::__hash_value_type<PHASEExternalStreamVoiceBandwidthType,applesauce::CF::DictionaryRef>,std::equal_to<PHASEExternalStreamVoiceBandwidthType>,std::hash<PHASEExternalStreamVoiceBandwidthType>,true>,std::allocator<std::__hash_value_type<PHASEExternalStreamVoiceBandwidthType,applesauce::CF::DictionaryRef>>>::~__hash_table(uint64_t a1)
{
  v2 = *(a1 + 16);
  if (v2)
  {
    do
    {
      v3 = *v2;
      std::__destroy_at[abi:ne200100]<std::pair<PHASEExternalStreamVoiceBandwidthType const,applesauce::CF::DictionaryRef>,0>(v2[3]);
      operator delete(v2);
      v2 = v3;
    }

    while (v3);
  }

  v4 = *a1;
  *a1 = 0;
  if (v4)
  {
    operator delete(v4);
  }

  return a1;
}

void std::__destroy_at[abi:ne200100]<std::pair<PHASEExternalStreamVoiceBandwidthType const,applesauce::CF::DictionaryRef>,0>(const void *a1)
{
  if (a1)
  {
    CFRelease(a1);
  }
}

uint64_t std::unique_ptr<std::__hash_node<std::__hash_value_type<PHASEExternalStreamVoiceBandwidthType,applesauce::CF::DictionaryRef>,void *>,std::__hash_node_destructor<std::allocator<std::__hash_node<std::__hash_value_type<PHASEExternalStreamVoiceBandwidthType,applesauce::CF::DictionaryRef>,void *>>>>::~unique_ptr[abi:ne200100](uint64_t a1)
{
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    if (*(a1 + 16) == 1)
    {
      std::__destroy_at[abi:ne200100]<std::pair<PHASEExternalStreamVoiceBandwidthType const,applesauce::CF::DictionaryRef>,0>(v2[3]);
    }

    operator delete(v2);
  }

  return a1;
}

void Phase::DspLayer23::VPBiquadFilter::GetNewRegistryEntry(Phase::DspLayer23::VPBiquadFilter *this)
{
  v2 = *MEMORY[0x277D85DE8];
  v1 = malloc_type_malloc(0x118uLL, 0x1050040B063AAFAuLL);
  *v1 = "b0";
  *(v1 + 1) = 0;
  *(v1 + 1) = xmmword_23A5983B0;
  *(v1 + 2) = xmmword_23A5983C0;
  *(v1 + 6) = 0x3FF0000000000000;
  *(v1 + 7) = "b1";
  *(v1 + 8) = 1;
  *(v1 + 72) = xmmword_23A5983B0;
  *(v1 + 88) = xmmword_23A5983C0;
  *(v1 + 13) = 0;
  *(v1 + 14) = "b2";
  *(v1 + 15) = 2;
  *(v1 + 8) = xmmword_23A5983B0;
  *(v1 + 9) = xmmword_23A5983C0;
  *(v1 + 20) = 0;
  *(v1 + 21) = "a1";
  *(v1 + 22) = 3;
  *(v1 + 184) = xmmword_23A5983B0;
  *(v1 + 200) = xmmword_23A5983C0;
  *(v1 + 27) = 0;
  *(v1 + 28) = "a2";
  *(v1 + 29) = 4;
  *(v1 + 15) = xmmword_23A5983B0;
  *(v1 + 16) = xmmword_23A5983C0;
  *(v1 + 34) = 0;
  operator new();
}

void sub_23A5416DC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, uint64_t a16, uint64_t a17, int a18, __int16 a19, char a20, char a21, char a22)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void Phase::DspLayer23::VPBiquadFilter::~VPBiquadFilter(Phase::DspLayer23::VPBiquadFilter *this)
{
  Phase::DspLayer23::VoicePoolSerial::~VoicePoolSerial(this);

  JUMPOUT(0x23EE864A0);
}

void Phase::DspLayer23::BiquadFilterSerialSlice::~BiquadFilterSerialSlice(Phase::DspLayer23::BiquadFilterSerialSlice *this)
{
  Phase::DspLayer23::BiquadFilterSerialSlice::~BiquadFilterSerialSlice(this);

  JUMPOUT(0x23EE86490);
}

{
  *this = &unk_284D3B750;
  vDSP_biquad_DestroySetup(*(this + 65));
  free(*(this + 62));
  free(*(this + 44));
  free(*(this + 28));
}

double Phase::DspLayer23::BiquadFilterSerialSlice::Reset(Phase::DspLayer23::BiquadFilterSerialSlice *this)
{
  *(this + 29) = 0;
  *(this + 45) = 0;
  *(this + 63) = 0;
  *(this + 64) = 0;
  *(this + 66) = 0x3FF0000000000000;
  result = 0.0;
  *(this + 536) = 0u;
  *(this + 552) = 0u;
  *(this + 568) = 0u;
  return result;
}

__n128 Phase::DspLayer23::BiquadFilterSerialSlice::MoveStateTo(Phase::DspLayer23::BiquadFilterSerialSlice *this, Phase::DspLayer23::SliceSerial *a2)
{
  v2 = *(a2 + 28);
  v3 = *(this + 11);
  v5 = *(this + 8);
  v4 = *(this + 9);
  *(a2 + 10) = *(this + 10);
  *(a2 + 11) = v3;
  *(a2 + 8) = v5;
  *(a2 + 9) = v4;
  v6 = *(this + 14);
  v7 = *(this + 15);
  v8 = *(this + 13);
  *(a2 + 12) = *(this + 12);
  *(a2 + 13) = v8;
  *(a2 + 14) = v6;
  *(a2 + 15) = v7;
  *(this + 28) = v2;
  *(this + 29) = 0;
  v9 = *(a2 + 62);
  v10 = *(this + 25);
  v11 = *(this + 27);
  *(a2 + 26) = *(this + 26);
  *(a2 + 27) = v11;
  *(a2 + 25) = v10;
  v13 = *(this + 30);
  v12 = *(this + 31);
  v14 = *(this + 29);
  *(a2 + 28) = *(this + 28);
  *(a2 + 29) = v14;
  *(a2 + 30) = v13;
  *(a2 + 31) = v12;
  *(a2 + 24) = *(this + 24);
  *(this + 62) = v9;
  *(this + 63) = 0;
  v15 = *(a2 + 44);
  v16 = *(this + 20);
  v17 = *(this + 21);
  v18 = *(this + 22);
  *(a2 + 23) = *(this + 23);
  *(a2 + 20) = v16;
  *(a2 + 21) = v17;
  v20 = *(this + 18);
  v19 = *(this + 19);
  *(a2 + 17) = *(this + 17);
  *(a2 + 18) = v20;
  *(a2 + 19) = v19;
  *(a2 + 22) = v18;
  *(a2 + 16) = *(this + 16);
  *(this + 44) = v15;
  *(this + 45) = 0;
  *(a2 + 64) = *(this + 64);
  *(a2 + 4) = *(this + 4);
  v21 = *(this + 33);
  *(a2 + 136) = *(this + 136);
  *(a2 + 33) = v21;
  result = *(this + 568);
  *(a2 + 568) = result;
  return result;
}

void Phase::DspLayer23::BiquadFilterSerialSlice::Process(Phase::DspLayer23::BiquadFilterSerialSlice *this, int a2)
{
  v8[1] = *MEMORY[0x277D85DE8];
  v3 = a2;
  MEMORY[0x28223BE20](this);
  v5 = (v8 - v4);
  bzero(v8 - v4, v6);
  v7 = Phase::DspLayer23::AudioConnections::Sum(this + 48, v3, v5);
  vDSP_biquad(*(this + 65), this + 142, v7, 1, *(this + 64), 1, v3);
}

void Phase::DspLayer23::VPBiquadFilterParallel::GetNewRegistryEntry(Phase::DspLayer23::VPBiquadFilterParallel *this)
{
  v2 = *MEMORY[0x277D85DE8];
  v1 = malloc_type_malloc(0x118uLL, 0x1050040B063AAFAuLL);
  *v1 = "b0";
  *(v1 + 1) = 0;
  *(v1 + 1) = xmmword_23A5983B0;
  *(v1 + 2) = xmmword_23A5983C0;
  *(v1 + 6) = 0x3FF0000000000000;
  *(v1 + 7) = "b1";
  *(v1 + 8) = 1;
  *(v1 + 72) = xmmword_23A5983B0;
  *(v1 + 88) = xmmword_23A5983C0;
  *(v1 + 13) = 0;
  *(v1 + 14) = "b2";
  *(v1 + 15) = 2;
  *(v1 + 8) = xmmword_23A5983B0;
  *(v1 + 9) = xmmword_23A5983C0;
  *(v1 + 20) = 0;
  *(v1 + 21) = "a1";
  *(v1 + 22) = 3;
  *(v1 + 184) = xmmword_23A5983B0;
  *(v1 + 200) = xmmword_23A5983C0;
  *(v1 + 27) = 0;
  *(v1 + 28) = "a2";
  *(v1 + 29) = 4;
  *(v1 + 15) = xmmword_23A5983B0;
  *(v1 + 16) = xmmword_23A5983C0;
  *(v1 + 34) = 0;
  operator new();
}

void sub_23A541DC8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, uint64_t a16, uint64_t a17, int a18, __int16 a19, char a20, char a21, char a22)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void Phase::DspLayer23::VPBiquadFilterParallel::~VPBiquadFilterParallel(Phase::DspLayer23::VPBiquadFilterParallel *this)
{
  Phase::DspLayer23::VoicePoolParallel::~VoicePoolParallel(this);

  JUMPOUT(0x23EE864A0);
}

void Phase::DspLayer23::BiquadFilterParallelSlice::~BiquadFilterParallelSlice(Phase::DspLayer23::BiquadFilterParallelSlice *this)
{
  *this = &unk_284D3B930;
  for (i = 1648; i != 1136; i -= 128)
  {
    free(*(this + i));
  }

  for (j = 1120; j != 608; j -= 128)
  {
    free(*(this + j));
  }

  do
  {
    free(*(this + j));
    j -= 128;
  }

  while (j != 96);
}

{
  *this = &unk_284D3B930;
  for (i = 1648; i != 1136; i -= 128)
  {
    free(*(this + i));
  }

  for (j = 1120; j != 608; j -= 128)
  {
    free(*(this + j));
  }

  do
  {
    free(*(this + j));
    j -= 128;
  }

  while (j != 96);

  JUMPOUT(0x23EE86490);
}

double Phase::DspLayer23::BiquadFilterParallelSlice::Reset(Phase::DspLayer23::BiquadFilterParallelSlice *this, uint64_t a2)
{
  v2 = (this + 128 * a2);
  v2[29] = 0;
  v2[159] = 0;
  v2[93] = 0;
  *(this + a2 + 208) = 0;
  result = 0.0;
  *(this + 110) = 0u;
  *(this + 109) = 0u;
  *(this + 108) = 0u;
  *(this + 107) = 0u;
  *(this + 106) = 0u;
  *(this + 112) = 0u;
  *(this + 111) = 0u;
  return result;
}

uint64_t Phase::DspLayer23::BiquadFilterParallelSlice::SetParameter(Phase::DspLayer23::BiquadFilterParallelSlice *this, uint64_t a2, uint64_t a3, double a4)
{
  v4 = a4;
  *(this + 4 * a3 + a2 + 424) = v4;
  return 0;
}

float *Phase::DspLayer23::BiquadFilterParallelSlice::Process(Phase::DspLayer23::BiquadFilterParallelSlice *this, int a2, int a3)
{
  v46[1] = *MEMORY[0x277D85DE8];
  MEMORY[0x28223BE20](this);
  v7 = v46 - 4 * v6;
  bzero(v7, v8);
  v9 = Phase::DspLayer23::AudioConnections::Sum(this + 144, a2, v7);
  v10 = Phase::DspLayer23::AudioConnections::Sum(this + 160, a2, &v7[4 * a2]);
  v11 = Phase::DspLayer23::AudioConnections::Sum(this + 176, a2, &v7[8 * a2]);
  result = Phase::DspLayer23::AudioConnections::Sum(this + 192, a2, &v7[12 * a2]);
  v13 = *(this + 111);
  v14 = *(this + 112);
  if (a2 >= 1)
  {
    HIDWORD(v16) = a3 - 1;
    LODWORD(v16) = a3 - 1;
    v15 = v16 >> 1;
    if (v15 > 7 || ((1 << v15) & 0x8B) == 0)
    {
      __assert_rtn("BusOutPerBlock", "VoicePoolSliceParallel.hpp", 209, "false && Invalid lanes-in-use mask.");
    }

    v17 = 0;
    v18 = 0;
    v19 = *(this + 106);
    v20 = *(this + 107);
    v21 = *(this + 108);
    v22 = vnegq_f32(*(this + 109));
    v23 = vnegq_f32(*(this + 110));
    while (1)
    {
      v24 = *&v9[v17];
      v25 = *&v10[v17];
      v26 = *&v11[v17];
      v27 = *&result[v17];
      v28 = vtrn1q_s32(v24, v26);
      v29 = vtrn2q_s32(v24, v26);
      v30 = vtrn1q_s32(v25, v27);
      v31 = vtrn2q_s32(v25, v27);
      v32 = vmlaq_f32(vmlaq_f32(vzip1q_s32(v28, v30), v13, v22), v14, v23);
      v33 = vmlaq_f32(vmlaq_f32(vmulq_f32(v20, v13), v32, v19), v14, v21);
      v34 = vzip2q_s32(v28, v30);
      v35 = vmlaq_f32(vmlaq_f32(vzip1q_s32(v29, v31), v32, v22), v13, v23);
      v36 = vmlaq_f32(vmlaq_f32(vmulq_f32(v20, v32), v35, v19), v13, v21);
      v37 = vzip2q_s32(v29, v31);
      v14 = vmlaq_f32(vmlaq_f32(v34, v35, v22), v32, v23);
      v38 = vmlaq_f32(vmlaq_f32(vmulq_f32(v20, v35), v14, v19), v32, v21);
      v13 = vmlaq_f32(vmlaq_f32(v37, v14, v22), v35, v23);
      v39 = vmlaq_f32(vmlaq_f32(vmulq_f32(v20, v14), v13, v19), v35, v21);
      v40 = vtrn1q_s32(v33, v38);
      v41 = vtrn2q_s32(v33, v38);
      v42 = vtrn1q_s32(v36, v39);
      v43 = vtrn2q_s32(v36, v39);
      if (v15 == 1)
      {
        goto LABEL_10;
      }

      if (v15 == 3)
      {
        goto LABEL_9;
      }

      if (v15 == 7)
      {
        break;
      }

LABEL_11:
      v45 = (*(this + 208) + v17 * 4);
      vst2_f32(v45, v40);
      v18 += 4;
      v17 += 4;
      if (v18 >= a2)
      {
        goto LABEL_12;
      }
    }

    *(*(this + 211) + v17 * 4) = vzip2q_s32(v41, v43);
LABEL_9:
    *(*(this + 210) + v17 * 4) = vzip2q_s32(v40, v42);
LABEL_10:
    v44 = (*(this + 209) + v17 * 4);
    vst2_f32(v44, v41);
    goto LABEL_11;
  }

LABEL_12:
  *(this + 111) = v13;
  *(this + 112) = v14;
  return result;
}

void Phase::DspLayer23::VPGainControl::GetNewRegistryEntry(Phase::DspLayer23::VPGainControl *this)
{
  v2 = *MEMORY[0x277D85DE8];
  v1 = malloc_type_malloc(0x38uLL, 0x1050040B063AAFAuLL);
  *v1 = "Gain";
  v1[1] = 0;
  *(v1 + 1) = xmmword_23A5983D0;
  *(v1 + 2) = xmmword_23A5983E0;
  v1[6] = 0x3FF0000000000000;
  operator new();
}

void sub_23A54267C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, uint64_t a16, uint64_t a17, int a18, __int16 a19, char a20, char a21, char a22)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void Phase::DspLayer23::VPGainControl::~VPGainControl(Phase::DspLayer23::VPGainControl *this)
{
  Phase::DspLayer23::VoicePoolSerial::~VoicePoolSerial(this);

  JUMPOUT(0x23EE864A0);
}

void Phase::DspLayer23::GainControlSlice::~GainControlSlice(void **this)
{
  free(this[62]);
  free(this[44]);
  free(this[28]);
}

{
  free(this[62]);
  free(this[44]);
  free(this[28]);

  JUMPOUT(0x23EE86490);
}

void *Phase::DspLayer23::GainControlSlice::Reset(void *this)
{
  this[29] = 0;
  this[45] = 0;
  this[65] = 0;
  this[63] = 0;
  this[64] = 0;
  return this;
}

__n128 Phase::DspLayer23::GainControlSlice::MoveStateTo(__n128 *this, __n128 *a2)
{
  a2[2].n128_u64[0] = this[2].n128_u64[0];
  a2[32].n128_u32[3] = this[32].n128_u32[3];
  v2 = a2[14].n128_u64[0];
  v3 = this[11];
  v5 = this[8];
  v4 = this[9];
  a2[10] = this[10];
  a2[11] = v3;
  a2[8] = v5;
  a2[9] = v4;
  v6 = this[14];
  v7 = this[15];
  v8 = this[13];
  a2[12] = this[12];
  a2[13] = v8;
  a2[14] = v6;
  a2[15] = v7;
  this[14].n128_u64[0] = v2;
  this[14].n128_u64[1] = 0;
  v9 = a2[22].n128_u64[0];
  v10 = this[22];
  v12 = this[20];
  v11 = this[21];
  a2[23] = this[23];
  a2[20] = v12;
  a2[21] = v11;
  v13 = this[17];
  v14 = this[19];
  a2[18] = this[18];
  a2[19] = v14;
  a2[17] = v13;
  a2[22] = v10;
  a2[16] = this[16];
  this[22].n128_u64[0] = v9;
  this[22].n128_u64[1] = 0;
  v15 = a2[31].n128_u64[0];
  v16 = this[28];
  v18 = this[30];
  v17 = this[31];
  a2[29] = this[29];
  a2[30] = v18;
  a2[28] = v16;
  v20 = this[26];
  v19 = this[27];
  a2[25] = this[25];
  a2[26] = v20;
  a2[27] = v19;
  a2[31] = v17;
  result = this[24];
  a2[24] = result;
  this[31].n128_u64[0] = v15;
  this[31].n128_u64[1] = 0;
  a2[32].n128_u64[0] = this[32].n128_u64[0];
  return result;
}

uint64_t Phase::DspLayer23::GainControlSlice::Process(float **this, int a2)
{
  v9[1] = *MEMORY[0x277D85DE8];
  v3 = a2;
  MEMORY[0x28223BE20](this);
  v5 = (v9 - v4);
  bzero(v9 - v4, v6);
  v7 = Phase::DspLayer23::AudioConnections::Sum(this + 48, v3, v5);
  return MEMORY[0x23EE87290](v7, 1, this + 524, this[64], 1, v3);
}

float Phase::DspLayer23::GainControlSlice::SetParameter(Phase::DspLayer23::GainControlSlice *this, uint64_t a2, double a3)
{
  if (!a2)
  {
    *&a3 = a3;
    *(this + 130) = LODWORD(a3);
  }

  return *&a3;
}

void Phase::DspLayer23::VPLinearFade::GetNewRegistryEntry(Phase::DspLayer23::VPLinearFade *this)
{
  v2 = *MEMORY[0x277D85DE8];
  v1 = malloc_type_malloc(0xA8uLL, 0x1050040B063AAFAuLL);
  *v1 = "Duration";
  *(v1 + 1) = 0;
  *(v1 + 1) = xmmword_23A598370;
  *(v1 + 2) = xmmword_23A554FF0;
  *(v1 + 6) = 0;
  *(v1 + 7) = "Start";
  *(v1 + 8) = 1;
  *(v1 + 72) = xmmword_23A598370;
  *(v1 + 88) = xmmword_23A554FF0;
  *(v1 + 13) = 0;
  *(v1 + 14) = "End";
  *(v1 + 15) = 2;
  *(v1 + 8) = xmmword_23A598370;
  *(v1 + 9) = xmmword_23A554FF0;
  *(v1 + 20) = 0x3FF0000000000000;
  operator new();
}

void sub_23A542CD8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, uint64_t a16, uint64_t a17, int a18, __int16 a19, char a20, char a21, char a22)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void Phase::DspLayer23::VPLinearFade::~VPLinearFade(Phase::DspLayer23::VPLinearFade *this)
{
  Phase::DspLayer23::VoicePoolSerial::~VoicePoolSerial(this);

  JUMPOUT(0x23EE864A0);
}

void Phase::DspLayer23::LinearFadeSlice::~LinearFadeSlice(void **this)
{
  free(this[62]);
  free(this[44]);
  free(this[28]);
}

{
  free(this[62]);
  free(this[44]);
  free(this[28]);

  JUMPOUT(0x23EE86490);
}

double Phase::DspLayer23::LinearFadeSlice::Reset(Phase::DspLayer23::LinearFadeSlice *this)
{
  *(this + 29) = 0;
  *(this + 45) = 0;
  *(this + 63) = 0;
  *(this + 64) = 0;
  __asm { FMOV            V0.2S, #1.0 }

  *(this + 65) = result;
  *(this + 66) = 0;
  *(this + 67) = result;
  *(this + 68) = 0x7FFFFFFF00000000;
  return result;
}

float Phase::DspLayer23::LinearFadeSlice::MoveStateTo(Phase::DspLayer23::LinearFadeSlice *this, Phase::DspLayer23::SliceSerial *a2)
{
  *(a2 + 4) = *(this + 4);
  v2 = *(a2 + 28);
  v3 = *(this + 11);
  v5 = *(this + 8);
  v4 = *(this + 9);
  *(a2 + 10) = *(this + 10);
  *(a2 + 11) = v3;
  *(a2 + 8) = v5;
  *(a2 + 9) = v4;
  v6 = *(this + 14);
  v7 = *(this + 15);
  v8 = *(this + 13);
  *(a2 + 12) = *(this + 12);
  *(a2 + 13) = v8;
  *(a2 + 14) = v6;
  *(a2 + 15) = v7;
  *(this + 28) = v2;
  *(this + 29) = 0;
  v9 = *(a2 + 44);
  v10 = *(this + 22);
  v12 = *(this + 20);
  v11 = *(this + 21);
  *(a2 + 23) = *(this + 23);
  *(a2 + 20) = v12;
  *(a2 + 21) = v11;
  v13 = *(this + 17);
  v14 = *(this + 19);
  *(a2 + 18) = *(this + 18);
  *(a2 + 19) = v14;
  *(a2 + 17) = v13;
  *(a2 + 22) = v10;
  *(a2 + 16) = *(this + 16);
  *(this + 44) = v9;
  *(this + 45) = 0;
  v15 = *(a2 + 62);
  v16 = *(this + 28);
  v18 = *(this + 30);
  v17 = *(this + 31);
  *(a2 + 29) = *(this + 29);
  *(a2 + 30) = v18;
  *(a2 + 28) = v16;
  v20 = *(this + 26);
  v19 = *(this + 27);
  *(a2 + 25) = *(this + 25);
  *(a2 + 26) = v20;
  *(a2 + 27) = v19;
  *(a2 + 31) = v17;
  *(a2 + 24) = *(this + 24);
  *(this + 62) = v15;
  *(this + 63) = 0;
  *(a2 + 64) = *(this + 64);
  *(a2 + 65) = *(this + 65);
  *(a2 + 66) = *(this + 66);
  *(a2 + 67) = *(this + 67);
  result = *(this + 136);
  *(a2 + 136) = result;
  *(a2 + 137) = *(this + 137);
  return result;
}

float Phase::DspLayer23::LinearFadeSlice::Process(Phase::DspLayer23::LinearFadeSlice *this, int a2)
{
  v13[1] = *MEMORY[0x277D85DE8];
  v4 = a2;
  MEMORY[0x28223BE20](this);
  v6 = (v13 - v5);
  bzero(v13 - v5, v7);
  v8 = Phase::DspLayer23::AudioConnections::Sum(this + 48, v4, v6);
  vDSP_vrampmul(v8, 1, this + 134, this + 136, *(this + 64), 1, v4);
  v10 = *(this + 137);
  v11 = __OFSUB__(v10, a2);
  v12 = v10 - a2;
  *(this + 137) = v12;
  if ((v12 < 0) ^ v11 | (v12 == 0))
  {
    result = *(this + 135);
    *(this + 134) = result;
    *(this + 68) = 0x7FFFFFFF00000000;
  }

  return result;
}

uint64_t Phase::DspLayer23::LinearFadeSlice::SetParameter(Phase::DspLayer23::LinearFadeSlice *this, uint64_t a2, double a3)
{
  if (a2 == 2)
  {
    result = 0;
    v6 = a3;
    *(this + 131) = v6;
  }

  else if (a2 == 1)
  {
    result = 0;
    v5 = a3;
    *(this + 130) = v5;
    *(this + 5) |= 2uLL;
  }

  else if (a2)
  {
    return 8;
  }

  else
  {
    result = 0;
    *(this + 66) = a3;
  }

  return result;
}

uint64_t Phase::DspLayer23::LinearFadeSlice::UpdateParameters(Phase::DspLayer23::LinearFadeSlice *this)
{
  v1 = *(*(this + 2) + 576);
  v2 = *(this + 66) * *(v1 + 80);
  if (v2 >= 1.0)
  {
    if ((*(this + 40) & 2) != 0)
    {
      *(this + 134) = *(this + 130);
    }

    v4 = *(this + 131);
    *(this + 135) = v4;
    v5 = v2;
    *(this + 137) = v2;
    v6 = *(v1 + 72);
    if (v2 % v6)
    {
      v5 = v6 + v6 * (v2 / v6);
      *(this + 137) = v5;
    }

    *(this + 136) = (v4 - *(this + 134)) / v5;
  }

  else
  {
    v3 = *(this + 131);
    *(this + 134) = v3;
    *(this + 135) = v3;
    *(this + 68) = 0x7FFFFFFF00000000;
  }

  *(this + 5) = 0;
  return 0;
}

void Phase::DspLayer23::VPOscillator::GetNewRegistryEntry(Phase::DspLayer23::VPOscillator *this)
{
  v2 = *MEMORY[0x277D85DE8];
  v1 = malloc_type_malloc(0x70uLL, 0x1050040B063AAFAuLL);
  *v1 = "Frequency";
  *(v1 + 1) = 0;
  *(v1 + 1) = xmmword_23A5983D0;
  *(v1 + 2) = xmmword_23A5983F0;
  *(v1 + 6) = 0;
  *(v1 + 7) = "Phase";
  *(v1 + 8) = 1;
  *(v1 + 72) = xmmword_23A5983D0;
  *(v1 + 88) = xmmword_23A598400;
  *(v1 + 13) = 0;
  operator new();
}

void sub_23A54344C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, uint64_t a16, uint64_t a17, int a18, __int16 a19, char a20, char a21, char a22)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void Phase::DspLayer23::VPOscillator::~VPOscillator(Phase::DspLayer23::VPOscillator *this)
{
  Phase::DspLayer23::VoicePoolParallel::~VoicePoolParallel(this);

  JUMPOUT(0x23EE864A0);
}

void Phase::DspLayer23::OscillatorSlice::~OscillatorSlice(Phase::DspLayer23::OscillatorSlice *this)
{
  for (i = 1120; i != 96; i -= 128)
  {
    free(*(this + i));
  }
}

{
  for (i = 1120; i != 96; i -= 128)
  {
    free(*(this + i));
  }

  JUMPOUT(0x23EE86490);
}

float Phase::DspLayer23::OscillatorSlice::Reset(Phase::DspLayer23::OscillatorSlice *this, uint64_t a2)
{
  *(this + 16 * a2 + 29) = 0;
  *(this + a2 + 144) = 0;
  v4 = a2 + 4;
  *(this + a2 + 148) = 0;
  *(this + 16 * a2 + 93) = 0;
  v5 = (this + 8 * a2);
  v5[152] = 0x407B800000000000;
  v5[156] = 0;
  v5[8] = 0;
  v6 = tan(1382.30077 / *(*(*(this + 2) + 576) + 80));
  v7 = (v6 + v6) / (v6 * v6 + 1.0);
  *&v6 = v6;
  *(this + a2 + 320) = LODWORD(v6);
  result = v7;
  *(this + v4 + 320) = result;
  *(this + a2 + 328) = 1065353216;
  *(this + v4 + 328) = 0;
  return result;
}

float Phase::DspLayer23::OscillatorSlice::MoveStateTo(Phase::DspLayer23::OscillatorSlice *this, uint64_t a2, Phase::DspLayer23::SliceParallel *a3, uint64_t a4)
{
  v4 = (this + 8 * a2);
  v5 = (a3 + 8 * a4);
  v5[4] = v4[4];
  v5[8] = v4[8];
  v6 = this + 128 * a2 + 128;
  v7 = a3 + 128 * a4 + 128;
  v8 = *(v7 + 12);
  v9 = *(v6 + 3);
  v11 = *v6;
  v10 = *(v6 + 1);
  *(v7 + 2) = *(v6 + 2);
  *(v7 + 3) = v9;
  *v7 = v11;
  *(v7 + 1) = v10;
  v12 = *(v6 + 6);
  v13 = *(v6 + 7);
  v14 = *(v6 + 5);
  *(v7 + 4) = *(v6 + 4);
  *(v7 + 5) = v14;
  *(v7 + 6) = v12;
  *(v7 + 7) = v13;
  *(v6 + 12) = v8;
  *(v6 + 13) = 0;
  v15 = this + 128 * a2 + 640;
  v16 = a3 + 128 * a4 + 640;
  v17 = *(v16 + 12);
  v18 = *(v15 + 6);
  v20 = *(v15 + 4);
  v19 = *(v15 + 5);
  *(v16 + 7) = *(v15 + 7);
  *(v16 + 4) = v20;
  *(v16 + 5) = v19;
  v21 = *(v15 + 1);
  v22 = *(v15 + 3);
  *(v16 + 2) = *(v15 + 2);
  *(v16 + 3) = v22;
  *(v16 + 1) = v21;
  *(v16 + 6) = v18;
  *v16 = *v15;
  *(v15 + 12) = v17;
  *(v15 + 13) = 0;
  *(a3 + a4 + 144) = *(this + a2 + 144);
  *(a3 + a4 + 148) = *(this + a2 + 148);
  v5[152] = v4[152];
  LODWORD(v21) = *(this + a2 + 320);
  v5[156] = v4[156];
  *(a3 + a4 + 320) = v21;
  *(a3 + a4 + 324) = *(this + a2 + 324);
  *(a3 + a4 + 328) = *(this + a2 + 328);
  result = *(this + a2 + 332);
  *(a3 + a4 + 332) = result;
  return result;
}

uint64_t Phase::DspLayer23::OscillatorSlice::SetParameter(Phase::DspLayer23::OscillatorSlice *this, uint64_t a2, uint64_t a3, double a4)
{
  if (!a3)
  {
    v5 = 1216;
    goto LABEL_5;
  }

  if (a3 == 1)
  {
    v5 = 1248;
LABEL_5:
    result = 0;
    v7 = this + 8 * a2;
    *&v7[v5] = a4;
    *(v7 + 8) |= 1 << a3;
    return result;
  }

  return 8;
}

uint64_t Phase::DspLayer23::OscillatorSlice::UpdateParameters(Phase::DspLayer23::OscillatorSlice *this, uint64_t a2)
{
  v4 = (this + 8 * a2);
  v5 = 8 * a2;
  v6 = tan(v4[152] * 3.14159265 / *(*(*(this + 2) + 576) + 80));
  v7 = (v6 + v6) / (v6 * v6 + 1.0);
  *&v6 = v6;
  *(this + a2 + 320) = LODWORD(v6);
  *&v6 = v7;
  *(this + a2 + 324) = LODWORD(v6);
  if ((*(this + v5 + 64) & 2) != 0)
  {
    v8 = __sincos_stret(v4[156]);
    cosval = v8.__cosval;
    *(this + a2 + 328) = cosval;
    sinval = v8.__sinval;
    *(this + a2 + 332) = sinval;
  }

  *(this + a2 + 8) = 0;
  return 0;
}

float32x4_t *Phase::DspLayer23::OscillatorSlice::Process(float32x4_t *this, int a2, int a3)
{
  v3 = this[82];
  v4 = this[83];
  if (a2 >= 1)
  {
    HIDWORD(v6) = a3 - 1;
    LODWORD(v6) = a3 - 1;
    v5 = v6 >> 1;
    if (v5 > 7 || ((1 << v5) & 0x8B) == 0)
    {
      __assert_rtn("BusOutPerBlock", "VoicePoolSliceParallel.hpp", 209, "false && Invalid lanes-in-use mask.");
    }

    v7 = 0;
    v8 = 0;
    v9 = this[81];
    v10 = vnegq_f32(this[80]);
    v11 = a2;
    while (1)
    {
      v12 = vmlaq_f32(v3, v4, v10);
      v13 = vmlaq_f32(v4, v12, v9);
      v14 = vmlaq_f32(v12, v13, v10);
      v15 = vmlaq_f32(v14, v13, v10);
      v16 = vmlaq_f32(v13, v15, v9);
      v17 = vmlaq_f32(v15, v16, v10);
      v18 = vtrn1q_s32(v3, v17);
      v19 = vtrn2q_s32(v3, v17);
      v20 = vmlaq_f32(v17, v16, v10);
      v21 = vtrn1q_s32(v4, v16);
      v22 = vtrn2q_s32(v4, v16);
      v23 = vmlaq_f32(v16, v20, v9);
      v24 = vmlaq_f32(v20, v23, v10);
      v25 = vtrn1q_s32(v14, v24);
      v26 = vtrn2q_s32(v14, v24);
      v27 = vtrn1q_s32(v13, v23);
      v28 = vtrn2q_s32(v13, v23);
      v29 = vzip1q_s32(v21, v27);
      v30 = vzip1q_s32(v22, v28);
      if (v5 == 1)
      {
        v34 = (this + 1160);
        v35 = this + 72;
      }

      else
      {
        v31 = vzip2q_s32(v21, v27);
        if (v5 == 3)
        {
          v32 = this + 73;
          v33 = (this + 1160);
          v34 = this + 72;
        }

        else
        {
          if (v5 != 7)
          {
            v36 = this + 72;
            goto LABEL_14;
          }

          *(this[73].i64[1] + v7) = vzip2q_s32(v22, v28);
          *(this[73].i64[0] + v7) = v31;
          v31 = v30;
          v30 = v29;
          v29 = vzip2q_s32(v19, v26);
          v32 = (this + 1160);
          v33 = this + 72;
          v34 = (this + 1208);
        }

        *(v32->i64[0] + v7) = v31;
        *(v33->i64[0] + v7) = v30;
        v30 = v29;
        v29 = vzip2q_s32(v18, v25);
        v35 = this + 75;
      }

      *(v34->i64[0] + v7) = v30;
      *(v35->i64[0] + v7) = v29;
      v29 = vzip1q_s32(v19, v26);
      v36 = (this + 1192);
LABEL_14:
      v37 = vmlaq_f32(v24, v23, v10);
      v38 = vmlaq_f32(v23, v37, v9);
      v39 = vmlaq_f32(v37, v38, v10);
      *(v36->i64[0] + v7) = v29;
      v40 = (this[74].i64[0] + v7);
      v8 += 4;
      vst2_f32(v40, v18);
      v7 += 16;
      v3 = v39;
      v4 = v38;
      if (v8 >= v11)
      {
        goto LABEL_17;
      }
    }
  }

  v38 = this[83];
  v39 = this[82];
LABEL_17:
  this[82] = v39;
  this[83] = v38;
  return this;
}

void Phase::DspLayer23::VPPullStreamSampler::GetNewRegistryEntry(Phase::DspLayer23::VPPullStreamSampler *this)
{
  v2 = *MEMORY[0x277D85DE8];
  v1 = malloc_type_malloc(0xA8uLL, 0x1050040B063AAFAuLL);
  *v1 = "Gain";
  *(v1 + 1) = 0;
  *(v1 + 1) = xmmword_23A598370;
  *(v1 + 2) = xmmword_23A598420;
  *(v1 + 6) = 0x3FF0000000000000;
  *(v1 + 7) = "Gain Interpolation Duration";
  *(v1 + 8) = 1;
  *(v1 + 72) = xmmword_23A598370;
  *(v1 + 88) = xmmword_23A598430;
  *(v1 + 13) = 0x3F91111120000000;
  *(v1 + 14) = "Gain Damping Constant";
  *(v1 + 15) = 2;
  *(v1 + 8) = xmmword_23A598370;
  *(v1 + 9) = xmmword_23A598440;
  *(v1 + 20) = 0x3FF0000000000000;
  operator new();
}

void sub_23A543DDC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, uint64_t a16, int a17, __int16 a18, char a19, char a20, uint64_t a21, uint64_t a22, int a23, __int16 a24, char a25, char a26, char a27)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void Phase::DspLayer23::VPPullStreamSampler::~VPPullStreamSampler(Phase::DspLayer23::VPPullStreamSampler *this)
{
  Phase::DspLayer23::VoicePoolParallel::~VoicePoolParallel(this);

  JUMPOUT(0x23EE864A0);
}

void Phase::DspLayer23::PullStreamSamplerSlice::~PullStreamSamplerSlice(Phase::DspLayer23::PullStreamSamplerSlice *this)
{
  for (i = 608; i != 96; i -= 128)
  {
    free(*(this + i));
  }
}

{
  for (i = 608; i != 96; i -= 128)
  {
    free(*(this + i));
  }

  JUMPOUT(0x23EE86490);
}

uint64_t Phase::DspLayer23::PullStreamSamplerSlice::Reset(uint64_t this, uint64_t a2)
{
  *(this + (a2 << 7) + 232) = 0;
  v2 = (this + 8 * a2);
  v2[80] = 0;
  v3 = (this + 4 * a2);
  v3[176] = 1015580809;
  v3[180] = 1065353216;
  v3[184] = 1065353216;
  v3[188] = 0;
  v3[192] = 0;
  v3[196] = 1065353216;
  v3[200] = 1065353216;
  v3[204] = 0;
  v3[208] = 0;
  v2[106] = 0;
  v2[110] = 0;
  v2[84] = 0;
  return this;
}

uint64_t Phase::DspLayer23::PullStreamSamplerSlice::OnPlay(uint64_t this, uint64_t a2)
{
  v2 = *(*(this + 16) + 576);
  v3 = *(v2 + 104);
  *(this + 4 * a2 + 832) = v3;
  if (v3 >= 1)
  {
    v4 = *(v2 + 176);
    v5 = this + 8 * a2;
    *(v5 + 848) = Phase::DspLayer23::ZERO_BUFFER;
    *(v5 + 880) = v4;
  }

  return this;
}

uint64_t Phase::DspLayer23::PullStreamSamplerSlice::OnResume(uint64_t this, uint64_t a2)
{
  v2 = *(*(this + 16) + 576);
  v3 = *(v2 + 104);
  *(this + 4 * a2 + 832) = v3;
  if (v3 >= 1)
  {
    v4 = *(v2 + 176);
    v5 = this + 8 * a2;
    *(v5 + 848) = Phase::DspLayer23::ZERO_BUFFER;
    *(v5 + 880) = v4;
  }

  return this;
}

float Phase::DspLayer23::PullStreamSamplerSlice::MoveStateTo(Phase::DspLayer23::PullStreamSamplerSlice *this, uint64_t a2, Phase::DspLayer23::SliceParallel *a3, uint64_t a4)
{
  v4 = (this + 8 * a2);
  v5 = (a3 + 8 * a4);
  v5[4] = v4[4];
  v6 = this + 128 * a2;
  v7 = a3 + 128 * a4;
  v8 = *(v7 + 28);
  v9 = *(v6 + 11);
  v11 = *(v6 + 8);
  v10 = *(v6 + 9);
  *(v7 + 10) = *(v6 + 10);
  *(v7 + 11) = v9;
  *(v7 + 8) = v11;
  *(v7 + 9) = v10;
  v12 = *(v6 + 14);
  v13 = *(v6 + 15);
  v14 = *(v6 + 13);
  *(v7 + 12) = *(v6 + 12);
  *(v7 + 13) = v14;
  *(v7 + 14) = v12;
  *(v7 + 15) = v13;
  *(v6 + 28) = v8;
  *(v6 + 29) = 0;
  v5[80] = v4[80];
  v5[106] = v4[106];
  v5[110] = v4[110];
  v5[84] = v4[84];
  v15 = this + 4 * a2;
  v16 = a3 + 4 * a4;
  *(v16 + 176) = *(v15 + 176);
  *(v16 + 180) = *(v15 + 180);
  *(v16 + 184) = *(v15 + 184);
  *(v16 + 188) = *(v15 + 188);
  *(v16 + 192) = *(v15 + 192);
  *(v16 + 196) = *(v15 + 196);
  *(v16 + 200) = *(v15 + 200);
  result = *(v15 + 204);
  *(v16 + 204) = result;
  *(v16 + 208) = *(v15 + 208);
  return result;
}

uint64_t Phase::DspLayer23::PullStreamSamplerSlice::SetParameter(Phase::DspLayer23::PullStreamSamplerSlice *this, uint64_t a2, unint64_t a3, double a4)
{
  if (a3 > 2)
  {
    return 8;
  }

  result = 0;
  v6 = a4;
  *(this + 4 * a2 + qword_23A598460[a3]) = v6;
  return result;
}

uint64_t Phase::DspLayer23::PullStreamSamplerSlice::UpdateParameters(Phase::DspLayer23::PullStreamSamplerSlice *this, uint64_t a2)
{
  v2 = (this + 4 * a2);
  v3 = v2[176];
  v4 = v2[180];
  if (v3 >= 0.001)
  {
    v7 = 6.2832 / v3;
    v2[188] = v7 * v7;
    v6 = v7 * (v2[184] + v2[184]);
    v5 = 192;
  }

  else
  {
    v2[204] = 0.0;
    v5 = 200;
    v6 = v4;
  }

  v2[v5] = v6;
  v2[196] = v4;
  return 0;
}

uint64_t Phase::DspLayer23::PullStreamSamplerSlice::SetData(Phase::DspLayer23::PullStreamSamplerSlice *this, uint64_t a2, uint64_t a3, void *a4, uint64_t a5)
{
  if (a3 == 1)
  {
    result = 0;
    *(this + a2 + 84) = a4;
  }

  else if (a3)
  {
    return 9;
  }

  else
  {
    result = 0;
    v7 = this + 8 * a2;
    *(v7 + 106) = a4;
    *(v7 + 110) = a5;
  }

  return result;
}

uint64_t Phase::DspLayer23::PullStreamSamplerSlice::GetData(Phase::DspLayer23::PullStreamSamplerSlice *this, uint64_t a2, uint64_t a3)
{
  if (a3 == 1)
  {
    return *(this + a2 + 84);
  }

  if (a3)
  {
    return 0;
  }

  return *(this + a2 + 106);
}

int8x16_t Phase::DspLayer23::PullStreamSamplerSlice::Process(Phase::DspLayer23::PullStreamSamplerSlice *this, int a2, int a3)
{
  v56 = *(this + 48);
  v57 = *(this + 49);
  v58 = *(this + 47);
  v59 = *(this + 51);
  v60 = *(this + 50);
  v6 = *(*(*(this + 2) + 576) + 88);
  v61 = *(this + 52);
  v7 = vandq_s8(vceqzq_s32(v61), xmmword_23A598450);
  v8 = vorrq_s8(vextq_s8(v7, v7, 8uLL), v7);
  v9 = vorrq_s8(vdupq_laneq_s32(v8, 3), v8).u64[0];
  v10 = v9.i32[0] & a3;
  if ((v9.i32[0] & a3) != 0)
  {
    v11 = 204;
    v12 = this;
    v13 = this;
    do
    {
      if (v10)
      {
        Phase::Controller::SamplerState::RenderAndSetNextSamplerBuffer(*(v13 + 84), *(this + 2), *(v13 + 4), 0);
        v14 = *(v12 + 176);
        v9.i32[0] = *(v12 + 180);
        if (v14 >= 0.001)
        {
          v17 = 6.2832 / v14;
          *(v12 + 188) = v17 * v17;
          v16 = v17 * (*(v12 + 184) + *(v12 + 184));
          v15 = 768;
        }

        else
        {
          *(v12 + 204) = 0;
          v15 = 800;
          v16 = *v9.i32;
        }

        *(v12 + v15) = v16;
        *(v12 + 196) = v9.i32[0];
      }

      if ((v11 - 204) > 2)
      {
        break;
      }

      ++v11;
      v13 = (v13 + 8);
      v12 = (v12 + 4);
      v18 = v10 > 1;
      v10 >>= 1;
    }

    while (v18);
  }

  if (a2 >= 1)
  {
    HIDWORD(v20) = a3 - 1;
    LODWORD(v20) = a3 - 1;
    v19 = v20 >> 1;
    if (v19 > 7 || ((1 << v19) & 0x8B) == 0)
    {
      __assert_rtn("BufInPerBlock", "VoicePoolSliceParallel.hpp", 369, "false && Invalid lanes-in-use mask.");
    }

    v21 = 0;
    v22 = 0;
    *v9.i32 = v6;
    v23 = vdupq_lane_s32(v9, 0);
    v24 = vnegq_f32(v56);
    v25.i64[0] = 0x400000004;
    v25.i64[1] = 0x400000004;
    v27 = v60;
    v26 = v61;
    v28 = v59;
    while (1)
    {
      v29 = 0uLL;
      if (v19 == 1)
      {
        v30 = 0uLL;
      }

      else
      {
        if (v19 != 3)
        {
          v30 = 0uLL;
          v31 = 0uLL;
          if (v19 != 7)
          {
            goto LABEL_21;
          }

          v29 = *(*(this + 109) + 4 * v26.i32[3]);
        }

        v30 = *(*(this + 108) + 4 * v26.i32[2]);
      }

      v31 = *(*(this + 107) + 4 * v26.i32[1]);
LABEL_21:
      v32 = *(*(this + 106) + 4 * v26.i32[0]);
      v33 = vtrn1q_s32(v32, v30);
      v34 = vtrn2q_s32(v32, v30);
      v35 = vtrn1q_s32(v31, v29);
      v36 = vtrn2q_s32(v31, v29);
      v37 = vzip1q_s32(v33, v35);
      v38 = vzip2q_s32(v33, v35);
      v39 = vmlaq_f32(v28, v23, vmlaq_f32(vmulq_f32(v28, v24), vsubq_f32(v57, v27), v58));
      v40 = vmulq_f32(v27, v37);
      v41 = vmlaq_f32(v27, v23, v39);
      v42 = vmlaq_f32(v39, v23, vmlaq_f32(vmulq_f32(v39, v24), vsubq_f32(v57, v41), v58));
      v43 = vmulq_f32(v41, vzip1q_s32(v34, v36));
      v44 = vmlaq_f32(v41, v23, v42);
      v45 = vmlaq_f32(v42, v23, vmlaq_f32(vmulq_f32(v42, v24), vsubq_f32(v57, v44), v58));
      v46 = vmulq_f32(v44, v38);
      v47 = vmlaq_f32(v44, v23, v45);
      v48 = vmulq_f32(v47, vzip2q_s32(v34, v36));
      v49 = vtrn1q_s32(v40, v46);
      v50 = vtrn2q_s32(v40, v46);
      v51 = vtrn1q_s32(v43, v48);
      v52 = vtrn2q_s32(v43, v48);
      if (v19 > 2)
      {
        if (v19 != 3)
        {
          if (v19 != 7)
          {
LABEL_34:
            __assert_rtn("BusOutPerBlock", "VoicePoolSliceParallel.hpp", 209, "false && Invalid lanes-in-use mask.");
          }

          *(*(this + 83) + v21) = vzip2q_s32(v50, v52);
        }

        *(*(this + 82) + v21) = vzip2q_s32(v49, v51);
        goto LABEL_29;
      }

      if (v19)
      {
        if (v19 != 1)
        {
          goto LABEL_34;
        }

LABEL_29:
        v53 = (*(this + 81) + v21);
        vst2_f32(v53, v50);
      }

      v28 = vmlaq_f32(v45, v23, vmlaq_f32(vmulq_f32(v45, v24), vsubq_f32(v57, v47), v58));
      v27 = vmlaq_f32(v47, v23, v28);
      v54 = (*(this + 80) + v21);
      vst2_f32(v54, v49);
      v26 = vaddq_s32(v26, v25);
      v22 += 4;
      v21 += 16;
      if (v22 >= a2)
      {
        goto LABEL_33;
      }
    }
  }

  v27 = v60;
  v26 = v61;
  v28 = v59;
LABEL_33:
  *(this + 50) = v27;
  *(this + 51) = v28;
  result = vbicq_s8(v26, vceqq_s32(v26, vuzp1q_s32(*(this + 55), *(this + 56))));
  *(this + 52) = result;
  return result;
}

BOOL Phase::Controller::SamplerState::RenderAndSetNextSamplerBuffer(Phase::Controller::SamplerState *this, Phase::DspLayer23::VoicePool *a2, unint64_t a3, uint64_t a4)
{
  v8 = *(a2 + 72);
  v9 = *(v8 + 120);
  v10 = *(v8 + 128);
  v11 = *(v8 + 168);
  v33 = 0;
  v31 = 0u;
  v32 = 0u;
  v30 = 0u;
  v12 = *(v8 + 104);
  v29 = *(v8 + 112) + v12;
  LODWORD(v33) = 1;
  if ((v11 & 2) != 0)
  {
    *&v30 = v9 + (v12 / *(v8 + 80) * 24000000.0);
    LODWORD(v33) = 3;
    v13 = 7;
    if ((v11 & 4) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_5;
  }

  v13 = 5;
  if ((v11 & 4) != 0)
  {
LABEL_5:
    *(&v30 + 1) = v10;
    LODWORD(v33) = v13;
  }

LABEL_6:
  v14 = *(this + 3);
  v34 = a3;
  v15 = std::__hash_table<std::__hash_value_type<unsigned long long,int>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,int>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,int>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,int>>>::find<unsigned long long>(v14, &v34);
  if (v15)
  {
    v16 = v15[3];
    v17 = *(v15 + 32);
    *(v15 + 32) = 0;
  }

  else
  {
    v16 = 0;
    v17 = 0;
  }

  v18 = *(a2 + 72);
  v19 = *(v18 + 176);
  v20 = *(v18 + 72);
  if (v19 <= v20)
  {
    v19 = v20;
  }

  v21 = vcvtmd_u64_f64(v19 / v20) * v20;
  v22 = *(*(this + 2) + 12);
  if (v21 >= v22 >> 2)
  {
    v23 = v22 >> 2;
  }

  else
  {
    v23 = v21;
  }

  if ((v17 & 1) == 0)
  {
    if (!(*this)(*(this + 1), &v29, v23, *(this + 2)))
    {
      if (*(this + 7) >= v23)
      {
        v28 = v23;
      }

      else
      {
        v28 = *(this + 7);
      }

      (*(*a2 + 160))(a2, a3, a4, *(this + 6), v28);
      return 0;
    }

    v24 = *(this + 3);
    v34 = a3;
    v25 = std::__hash_table<std::__hash_value_type<unsigned long long,int>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,int>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,int>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,int>>>::find<unsigned long long>(v24, &v34);
    if (!v25 || (v16 = v25[3], v26 = *(v25 + 32), *(v25 + 32) = 0, (v26 & 1) == 0))
    {
      __assert_rtn("RenderAndSetNextSamplerBuffer", "SamplerState.hpp", 93, "bufferState.second == true");
    }
  }

  if (v16)
  {
    return (*(*a2 + 160))(a2, a3, a4, v16, v23) == 0;
  }

  return 0;
}

void Phase::DspLayer23::VPPushStreamSampler::GetNewRegistryEntry(Phase::DspLayer23::VPPushStreamSampler *this)
{
  v7 = *MEMORY[0x277D85DE8];
  v1 = malloc_type_malloc(0x1F8uLL, 0x1050040B063AAFAuLL);
  *v1 = "Rate";
  *(v1 + 1) = 0;
  *(v1 + 1) = xmmword_23A5983B0;
  *(v1 + 2) = xmmword_23A554D10;
  *(v1 + 6) = 0x3FF0000000000000;
  *(v1 + 7) = "Gain";
  *(v1 + 8) = 1;
  *(v1 + 72) = xmmword_23A598370;
  *(v1 + 88) = xmmword_23A598420;
  *(v1 + 13) = 0x3FF0000000000000;
  *(v1 + 14) = "ReferenceHF";
  *(v1 + 15) = 2;
  *(v1 + 8) = xmmword_23A598370;
  *(v1 + 9) = xmmword_23A598480;
  *(v1 + 20) = 0x40B3880000000000;
  *(v1 + 21) = "GainHF";
  *(v1 + 22) = 3;
  *(v1 + 184) = xmmword_23A598370;
  *(v1 + 200) = xmmword_23A554FF0;
  *(v1 + 27) = 0x3FF0000000000000;
  *(v1 + 28) = "ReferenceLF";
  *(v1 + 29) = 4;
  *(v1 + 15) = xmmword_23A598370;
  *(v1 + 16) = xmmword_23A598480;
  *(v1 + 34) = 0x407F400000000000;
  *(v1 + 35) = "GainLF";
  *(v1 + 36) = 5;
  *(v1 + 296) = xmmword_23A598370;
  *(v1 + 39) = 0;
  __asm { FMOV            V2.2D, #1.0 }

  *(v1 + 20) = _Q2;
  *(v1 + 42) = "SeekPointInSeconds";
  *(v1 + 43) = 6;
  *(v1 + 22) = xmmword_23A5983B0;
  *(v1 + 23) = xmmword_23A598490;
  *(v1 + 48) = 0;
  *(v1 + 49) = "Gain Interpolation Duration";
  *(v1 + 50) = 7;
  *(v1 + 408) = xmmword_23A598370;
  *(v1 + 53) = 0;
  *(v1 + 27) = xmmword_23A5984A0;
  *(v1 + 56) = "Gain Damping Constant";
  *(v1 + 57) = 8;
  *(v1 + 29) = xmmword_23A598370;
  *(v1 + 30) = xmmword_23A598440;
  *(v1 + 62) = 0x3FF0000000000000;
  operator new();
}

void sub_23A544BC0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, uint64_t a16, int a17, __int16 a18, char a19, char a20, uint64_t a21, uint64_t a22, int a23, __int16 a24, char a25, char a26, char a27)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void Phase::DspLayer23::VPPushStreamSampler::~VPPushStreamSampler(Phase::DspLayer23::VPPushStreamSampler *this)
{
  Phase::DspLayer23::VoicePoolParallel::~VoicePoolParallel(this);

  JUMPOUT(0x23EE864A0);
}

void Phase::DspLayer23::PushStreamSamplerSlice::~PushStreamSamplerSlice(Phase::DspLayer23::PushStreamSamplerSlice *this)
{
  for (i = 608; i != 96; i -= 128)
  {
    free(*(this + i));
  }
}

{
  for (i = 608; i != 96; i -= 128)
  {
    free(*(this + i));
  }

  JUMPOUT(0x23EE86490);
}

uint64_t Phase::DspLayer23::PushStreamSamplerSlice::Reset(Phase::DspLayer23::PushStreamSamplerSlice *this, uint64_t a2)
{
  *(this + 16 * a2 + 29) = 0;
  v2 = (this + 8 * a2);
  v2[80] = 0;
  v2[88] = 0x3FF0000000000000;
  v3 = (this + 4 * a2);
  v3[184] = 1065353216;
  v3[188] = 1167867904;
  v3[192] = 1065353216;
  v3[196] = 1140457472;
  v3[200] = 1065353216;
  v3[204] = 1015580809;
  v3[208] = 1065353216;
  v2[106] = 0;
  v2[110] = 0;
  v2[84] = 0;
  v3[320] = 0;
  v4 = 4 * a2 + 16;
  *(this + v4 + 1344) = 0;
  *(this + a2 + 336) = 0;
  v3[324] = 0;
  *(this + v4 + 1376) = 0;
  *(this + a2 + 344) = 0;
  v3[328] = 0;
  *(this + v4 + 1408) = 0;
  *(this + a2 + 352) = 0;
  v3[332] = 0;
  *(this + v4 + 1440) = 0;
  *(this + a2 + 360) = 0;
  v2[156] = 0xBFF0000000000000;
  v3[368] = 1065353216;
  v3[372] = 0;
  return Phase::DspLayer23::PushStreamSamplerSlice::UpdateParameters(this, a2);
}

float Phase::DspLayer23::PushStreamSamplerSlice::MoveStateTo(Phase::DspLayer23::PushStreamSamplerSlice *this, uint64_t a2, Phase::DspLayer23::SliceParallel *a3, uint64_t a4)
{
  v4 = (this + 8 * a2);
  v5 = (a3 + 8 * a4);
  v5[4] = v4[4];
  v5[8] = v4[8];
  v6 = this + 128 * a2;
  v7 = a3 + 128 * a4;
  v8 = *(v7 + 28);
  v9 = *(v6 + 11);
  v11 = *(v6 + 8);
  v10 = *(v6 + 9);
  *(v7 + 10) = *(v6 + 10);
  *(v7 + 11) = v9;
  *(v7 + 8) = v11;
  *(v7 + 9) = v10;
  v12 = *(v6 + 14);
  v13 = *(v6 + 15);
  v14 = *(v6 + 13);
  *(v7 + 12) = *(v6 + 12);
  *(v7 + 13) = v14;
  *(v7 + 14) = v12;
  *(v7 + 15) = v13;
  *(v6 + 28) = v8;
  *(v6 + 29) = 0;
  v5[80] = v4[80];
  v5[88] = v4[88];
  v15 = this + 4 * a2;
  v16 = a3 + 4 * a4;
  *(v16 + 184) = *(v15 + 184);
  *(v16 + 188) = *(v15 + 188);
  *(v16 + 192) = *(v15 + 192);
  *(v16 + 196) = *(v15 + 196);
  *(v16 + 200) = *(v15 + 200);
  *(v16 + 204) = *(v15 + 204);
  *(v16 + 208) = *(v15 + 208);
  v5[106] = v4[106];
  v5[110] = v4[110];
  v5[84] = v4[84];
  *(v16 + 228) = *(v15 + 228);
  *(v16 + 232) = *(v15 + 232);
  *(v16 + 236) = *(v15 + 236);
  *(v16 + 240) = *(v15 + 240);
  *(v16 + 244) = *(v15 + 244);
  *(v16 + 248) = *(v15 + 248);
  *(v16 + 252) = *(v15 + 252);
  *(v16 + 256) = *(v15 + 256);
  *(v16 + 260) = *(v15 + 260);
  *(v16 + 264) = *(v15 + 264);
  *(v16 + 268) = *(v15 + 268);
  *(v16 + 272) = *(v15 + 272);
  *(v16 + 276) = *(v15 + 276);
  v5[140] = v4[140];
  *(v16 + 288) = *(v15 + 288);
  *(v16 + 292) = *(v15 + 292);
  v5[148] = v4[148];
  v5[152] = v4[152];
  *&v12 = v4[156];
  *(v16 + 328) = *(v15 + 328);
  *(a3 + a4 + 336) = *(this + a2 + 336);
  v17 = 4 * a2 + 16;
  v18 = 4 * a4 + 16;
  *(a3 + v18 + 1344) = *(this + v17 + 1344);
  LODWORD(v13) = *(this + a2 + 344);
  v5[156] = v12;
  *(a3 + a4 + 344) = v13;
  v19 = *(v15 + 320);
  *(a3 + v18 + 1376) = *(this + v17 + 1376);
  LODWORD(v12) = *(this + a2 + 352);
  *(v16 + 320) = v19;
  *(a3 + a4 + 352) = v12;
  LODWORD(v5) = *(v15 + 324);
  *(a3 + v18 + 1408) = *(this + v17 + 1408);
  LODWORD(v12) = *(this + a2 + 360);
  *(v16 + 324) = v5;
  *(a3 + a4 + 360) = v12;
  *(a3 + v18 + 1440) = *(this + v17 + 1440);
  *(v16 + 368) = *(v15 + 368);
  result = *(v15 + 372);
  *(v16 + 372) = result;
  return result;
}

uint64_t Phase::DspLayer23::PushStreamSamplerSlice::SetParameter(Phase::DspLayer23::PushStreamSamplerSlice *this, uint64_t a2, uint64_t a3, double a4)
{
  result = 8;
  if (a3 <= 3)
  {
    if (a3 > 1)
    {
      result = 0;
      v8 = a4;
      if (a3 == 2)
      {
        *(this + a2 + 188) = v8;
      }

      else
      {
        *(this + a2 + 192) = v8;
      }
    }

    else if (a3)
    {
      if (a3 == 1)
      {
        result = 0;
        v7 = a4;
        *(this + a2 + 184) = v7;
      }
    }

    else
    {
      result = 0;
      *(this + a2 + 88) = a4;
    }
  }

  else if (a3 <= 5)
  {
    result = 0;
    v9 = a4;
    if (a3 == 4)
    {
      *(this + a2 + 196) = v9;
    }

    else
    {
      *(this + a2 + 200) = v9;
    }
  }

  else
  {
    switch(a3)
    {
      case 6:
        v10 = *(*(*(this + 2) + 576) + 80) * a4;
        if (v10 >= 0.0 && (v11 = (this + 8 * a2), v10 <= (*(v11 + 110) - 1)))
        {
          result = 0;
          v11[156] = v10;
        }

        else
        {
          return 10;
        }

        break;
      case 7:
        result = 0;
        v12 = a4;
        *(this + a2 + 204) = v12;
        break;
      case 8:
        result = 0;
        v6 = a4;
        *(this + a2 + 208) = v6;
        break;
    }
  }

  return result;
}

uint64_t Phase::DspLayer23::PushStreamSamplerSlice::UpdateParameters(Phase::DspLayer23::PushStreamSamplerSlice *this, uint64_t a2)
{
  v2 = (this + 8 * a2);
  v2[148] = v2[106];
  v3 = v2[110];
  v2[152] = v3;
  v4 = (this + 4 * a2);
  v38 = v4[192];
  v40 = v4[188];
  v5 = *(*(*(this + 2) + 576) + 88);
  v6 = v4[200];
  v7 = v4[196];
  v42 = v2[88];
  v8 = v4[204];
  v41 = *(v4 + 184);
  if (v8 >= 0.001)
  {
    v13 = 6.2832 / v8;
    v9 = v13 * v13;
    v12 = v13 * (v4[208] + v4[208]);
    v10 = 292;
    v11 = 288;
  }

  else
  {
    v9 = 0.0;
    v10 = 368;
    v11 = 372;
    v12 = v4[184];
  }

  v4[v11] = v9;
  v4[v10] = v12;
  v14 = log10f(fmaxf(v6, 0.00001));
  v15 = __exp10f(v14 * 0.5);
  v16 = v5 * v7 * 6.28318548;
  v17 = __sincosf_stret(v16);
  v35 = (v15 + -1.0) * v17.__cosval;
  v18 = (v15 + 1.0) + v35;
  v19 = sqrtf(__exp10f(v14) + 1.0);
  v33 = log10f(fmaxf(v38, 0.00001));
  v20 = __exp10f(v33 * 0.5);
  v21 = v20 + -1.0;
  v22 = ((v19 * 1.1892) - (v21 * v21)) * v17.__sinval;
  v23 = 1.0 / (v22 + v18);
  v37 = (((v15 + -1.0) + ((v15 + 1.0) * v17.__cosval)) * -2.0) * v23;
  v39 = (v18 - v22) * v23;
  v24 = (v15 + 1.0) - v35;
  v36 = (v15 * (v24 - v22)) * v23;
  v34 = ((v15 + v15) * ((v15 + -1.0) - ((v15 + 1.0) * v17.__cosval))) * v23;
  v25 = (v15 * (v22 + v24)) * v23;
  v26 = v5 * v40 * 6.28318548;
  v27 = __sincosf_stret(v26);
  v28 = (v20 + -1.0) * v27.__cosval;
  v29 = (v20 + 1.0) - v28;
  v30 = ((sqrtf(__exp10f(v33) + 1.0) * 1.1892) - (v21 * v21)) * v27.__sinval;
  v31 = 1.0 / (v30 + v29);
  *(v4 + 228) = v3;
  *(v4 + 232) = v3 - 1;
  v4[236] = (v20 * (v30 + ((v20 + 1.0) + v28))) * v31;
  v4[240] = ((v20 * -2.0) * ((v20 + -1.0) + ((v20 + 1.0) * v27.__cosval))) * v31;
  v4[244] = (v20 * (((v20 + 1.0) + v28) - v30)) * v31;
  v4[248] = (((v20 + -1.0) - ((v20 + 1.0) * v27.__cosval)) + ((v20 + -1.0) - ((v20 + 1.0) * v27.__cosval))) * v31;
  v4[252] = (v29 - v30) * v31;
  v4[256] = v25;
  v4[260] = v34;
  v4[264] = v36;
  v4[268] = v37;
  v4[272] = v39;
  *(v4 + 276) = v41;
  v2[140] = v42;
  return 0;
}

uint64_t Phase::DspLayer23::PushStreamSamplerSlice::SetData(Phase::DspLayer23::VoicePool **this, uint64_t a2, uint64_t a3, Phase::Controller::SamplerState *a4, Phase::DspLayer23::VoicePool *a5)
{
  if (a3 == 1)
  {
    v9 = &this[a2];
    v9[84] = a4;
    Phase::Controller::SamplerState::RenderAndSetNextSamplerBuffer(a4, this[2], v9[4], 0);
    Phase::DspLayer23::PushStreamSamplerSlice::UpdateParameters(this, a2);
    return 0;
  }

  else if (a3)
  {
    return 9;
  }

  else
  {
    result = 0;
    v8 = &this[a2];
    v8[106] = a4;
    v8[110] = a5;
  }

  return result;
}

uint64_t Phase::DspLayer23::PushStreamSamplerSlice::GetData(Phase::DspLayer23::PushStreamSamplerSlice *this, uint64_t a2, uint64_t a3)
{
  if (a3 == 1)
  {
    return *(this + a2 + 84);
  }

  if (a3)
  {
    return 0;
  }

  return *(this + a2 + 106);
}

int8x16_t Phase::DspLayer23::PushStreamSamplerSlice::Process(Phase::DspLayer23::PushStreamSamplerSlice *this, int a2, int a3, int8x16_t result)
{
  if (a2 >= 1)
  {
    HIDWORD(v6) = a3 - 1;
    LODWORD(v6) = a3 - 1;
    v5 = v6 >> 1;
    if (v5 > 7 || ((1 << v5) & 0x8B) == 0)
    {
LABEL_38:
      __assert_rtn("BufInSingleSample", "VoicePoolSliceParallel.hpp", 324, "false && Invalid lanes-in-use mask.");
    }

    v8 = 0;
    v84 = *(this + 57);
    v92 = *(this + 58);
    v81 = *(this + 60);
    v82 = *(this + 59);
    v79 = *(this + 66);
    v80 = *(this + 65);
    v71 = *(this + 71);
    v72 = *(this + 70);
    v78 = *(this + 64);
    v76 = vnegq_f32(*(this + 62));
    v77 = *(this + 61);
    v74 = vnegq_f32(*(this + 67));
    v75 = vnegq_f32(*(this + 63));
    v73 = vnegq_f32(*(this + 68));
    v9 = a2;
    v10 = *(this + 78);
    v11 = *(this + 79);
    result = *(this + 80);
    __asm { FMOV            V1.2D, #-1.0 }

    v83 = _Q1;
    v17 = *(this + 148);
    do
    {
      v18 = vuzp1q_s32(vceqq_f64(v10, v83), vceqq_f64(v11, v83));
      v19 = vbicq_s8(v10, vzip1q_s32(v18, v18));
      v20 = vbicq_s8(v11, vzip2q_s32(v18, v18));
      v21 = vorrq_s8(vandq_s8(v84, vceqzq_s32(result)), result);
      v22.i64[0] = v21.i32[2];
      v22.i64[1] = v21.i32[3];
      v23 = vcvtq_f64_s64(v22);
      v22.i64[0] = v21.i32[0];
      v22.i64[1] = v21.i32[1];
      v24 = vandq_s8(vuzp1q_s32(vcgeq_f64(v19, vcvtq_f64_s64(v22)), vcgeq_f64(v20, v23)), v21);
      v22.i64[0] = v24.i32[0];
      v22.i64[1] = v24.i32[1];
      v26 = vcvtq_f64_s64(v22);
      v22.i64[0] = v24.i32[2];
      v22.i64[1] = v24.i32[3];
      v95 = v20;
      v96 = v19;
      v93 = vsubq_f64(v19, v26);
      v94 = vsubq_f64(v20, vcvtq_f64_s64(v22));
      v86 = vrndq_f64(v94);
      v87 = vrndq_f64(v93);
      v97 = vuzp1q_s32(vcvtq_s64_f64(v87), vcvtq_s64_f64(v86));
      v25 = vminq_s32(vmaxq_s32(v97, 0), v92);
      LODWORD(v26.f64[0]) = *(v17 + 4 * v25.i32[0]);
      switch(v5)
      {
        case 1:
          v25.i32[3] = 0;
          v25.i32[0] = *(v17 + 4 * v25.i32[0]);
          *(v25.i64 + 4) = *(*(this + 149) + 4 * v25.i32[1]);
          break;
        case 3:
          v25.i32[0] = *(v17 + 4 * v25.i32[0]);
          v25.i32[1] = *(*(this + 149) + 4 * v25.i32[1]);
          v25.i64[1] = *(*(this + 150) + 4 * v25.i32[2]);
          break;
        case 7:
          HIDWORD(v26.f64[0]) = *(*(this + 149) + 4 * v25.i32[1]);
          LODWORD(v26.f64[1]) = *(*(this + 150) + 4 * v25.i32[2]);
          HIDWORD(v26.f64[1]) = *(*(this + 151) + 4 * v25.i32[3]);
          goto LABEL_13;
        default:
          v25 = *(v17 + 4 * v25.i32[0]);
          break;
      }

      v26 = v25;
LABEL_13:
      v28.i64[0] = -1;
      v28.i64[1] = -1;
      v90 = *(this + 82);
      v91 = v26;
      v88 = *(this + 81);
      v89 = vaddq_s32(v21, v28);
      v29.i64[0] = v89.i32[2];
      v29.i64[1] = v89.i32[3];
      v30 = vcvtq_f64_s64(v29);
      v29.i64[0] = v89.i32[0];
      v29.i64[1] = v89.i32[1];
      v85 = vuzp1q_s32(vcgeq_f64(v19, vcvtq_f64_s64(v29)), vcgeq_f64(v20, v30));
      v31 = vandq_s8(v85, vandq_s8(vceqzq_s32(*(this + 83)), xmmword_23A598450));
      v32 = vorrq_s8(vextq_s8(v31, v31, 8uLL), v31);
      v33 = vorrq_s8(vdupq_laneq_s32(v32, 3), v32).u32[0] & a3;
      if (v33)
      {
        v34 = 0;
        do
        {
          if (v33)
          {
            Phase::Controller::SamplerState::RenderAndSetNextSamplerBuffer(*(this + v34 + 84), *(this + 2), *(this + v34 + 4), 0);
            Phase::DspLayer23::PushStreamSamplerSlice::UpdateParameters(this, v34);
          }

          if (v34 > 2)
          {
            break;
          }

          ++v34;
          v35 = v33 > 1;
          v33 >>= 1;
        }

        while (v35);
        result = *(this + 80);
      }

      v36 = vceqq_s32(v89, v97);
      v37 = vbslq_s8(vandq_s8(vceqzq_s32(v88), v36), v91, v90);
      v38 = vuzp1q_s32(*(this + 76), *(this + 77));
      v39.i64[0] = -1;
      v39.i64[1] = -1;
      v40 = vminq_s32(v97, vaddq_s32(v38, v39));
      if (v5 > 2)
      {
        if (v5 == 3)
        {
          v17 = *(this + 148);
          v53 = *(this + 149);
          v54 = *(this + 150);
          v55.i64[0] = 0x100000001;
          v55.i64[1] = 0x100000001;
          v46 = vminq_s32(vbicq_s8(vmaxq_s32(vaddq_s32(v97, v55), 0), v36), v92);
          v56 = (v53 + 4 * v40.i32[1]);
          v57 = v46.i32[2];
          v58 = (v53 + 4 * v46.i32[1]);
          v59 = (v17 + 4 * v46.i32[0]);
          v46.i32[0] = *(v17 + 4 * v40.i32[0]);
          v46.i32[1] = *v56;
          v46.i32[2] = *(v54 + 4 * v40.i32[2]);
          v45 = vbslq_s8(v36, v37, v46);
          v46.i32[0] = *v59;
          v46.i32[1] = *v58;
          v46.i32[2] = *(v54 + 4 * v57);
        }

        else
        {
          if (v5 != 7)
          {
            goto LABEL_38;
          }

          v17 = *(this + 148);
          v47 = *(this + 149);
          v48 = *(this + 150);
          v49 = *(this + 151);
          v50.i64[0] = 0x100000001;
          v50.i64[1] = 0x100000001;
          v51 = vminq_s32(vbicq_s8(vmaxq_s32(vaddq_s32(v97, v50), 0), v36), v92);
          v40.i32[0] = *(v17 + 4 * v40.i32[0]);
          v40.i32[1] = *(v47 + 4 * v40.i32[1]);
          v40.i32[2] = *(v48 + 4 * v40.i32[2]);
          v40.i32[3] = *(v49 + 4 * v40.i32[3]);
          v45 = vbslq_s8(v36, v37, v40);
          v46.i32[0] = *(v17 + 4 * v51.i32[0]);
          v46.i32[1] = *(v47 + 4 * v51.i32[1]);
          v46.i32[2] = *(v48 + 4 * v51.i32[2]);
          v46.i32[3] = *(v49 + 4 * v51.i32[3]);
        }
      }

      else if (v5)
      {
        if (v5 != 1)
        {
          goto LABEL_38;
        }

        v17 = *(this + 148);
        v41 = *(this + 149);
        v42.i64[0] = 0x100000001;
        v42.i64[1] = 0x100000001;
        v46 = vminq_s32(vbicq_s8(vmaxq_s32(vaddq_s32(v97, v42), 0), v36), v92);
        v43 = v46.i32[1];
        v44 = v46.i32[0];
        v46.i32[0] = *(v17 + 4 * v40.i32[0]);
        v46.i32[1] = *(v41 + 4 * v40.i32[1]);
        v45 = vbslq_s8(v36, v37, v46);
        v46.i32[0] = *(v17 + 4 * v44);
        v46.i32[1] = *(v41 + 4 * v43);
      }

      else
      {
        v17 = *(this + 148);
        v40.i32[0] = *(v17 + 4 * v40.i32[0]);
        v45 = vbslq_s8(v36, v37, v40);
        v52.i64[0] = 0x100000001;
        v52.i64[1] = 0x100000001;
        v46 = vminq_s32(vbicq_s8(vmaxq_s32(vaddq_s32(v97, v52), 0), v36), v92);
        v46.i32[0] = *(v17 + 4 * v46.i32[0]);
      }

      v60 = vmlaq_f32(v45, vsubq_f32(v46, v45), vcvt_hight_f32_f64(vcvt_f32_f64(vsubq_f64(v93, v87)), vsubq_f64(v94, v86)));
      v61 = vmlaq_f32(vmlaq_f32(vmlaq_f32(vmlaq_f32(vmulq_f32(v81, *(this + 84)), v60, v82), *(this + 85), v77), *(this + 86), v76), *(this + 87), v75);
      v62 = vmlaq_f32(vmlaq_f32(vmlaq_f32(vmlaq_f32(vmulq_f32(v80, *(this + 88)), v61, v78), *(this + 89), v79), *(this + 90), v74), *(this + 91), v73);
      v63 = *(*(*(this + 2) + 576) + 88);
      v64 = *(this + 92);
      v65 = vmlaq_n_f32(*(this + 93), vmlaq_f32(vmulq_f32(*(this + 93), vnegq_f32(*(this + 73))), vsubq_f32(*(this + 69), v64), *(this + 72)), v63);
      v66 = vmlaq_n_f32(v64, v65, v63);
      *(this + 92) = v66;
      *(this + 93) = v65;
      v67 = vmulq_f32(v62, v66);
      if (v5 > 2)
      {
        if (v5 != 3)
        {
          *(*(this + 83) + 4 * v8) = v67.i32[3];
        }

        *(*(this + 82) + 4 * v8) = v67.i32[2];
LABEL_35:
        *(*(this + 81) + 4 * v8) = v67.i32[1];
        goto LABEL_36;
      }

      if (v5)
      {
        goto LABEL_35;
      }

LABEL_36:
      v68.i64[0] = result.i32[2];
      v68.i64[1] = result.i32[3];
      *(*(this + 80) + 4 * v8) = v67.i32[0];
      v69 = vcvtq_f64_s64(v68);
      v68.i64[0] = result.i32[0];
      v68.i64[1] = result.i32[1];
      v10 = vaddq_f64(v72, v93);
      *(this + 78) = v10;
      v11 = vaddq_f64(v71, v94);
      *(this + 79) = v11;
      result = vbslq_s8(vuzp1q_s32(vcgeq_f64(v96, vcvtq_f64_s64(v68)), vcgeq_f64(v95, v69)), v38, result);
      *(this + 80) = result;
      *(this + 81) = v36;
      *(this + 82) = v37;
      v70.i64[0] = 0x100000001;
      v70.i64[1] = 0x100000001;
      *(this + 83) = vandq_s8(v85, v70);
      *(this + 85) = *(this + 84);
      *(this + 84) = v60;
      *(this + 87) = *(this + 86);
      *(this + 86) = v61;
      *(this + 89) = *(this + 88);
      *(this + 88) = v61;
      *(this + 91) = *(this + 90);
      *(this + 90) = v62;
      ++v8;
    }

    while (v8 != v9);
  }

  return result;
}

void Phase::DspLayer23::VPResidentSampler::GetNewRegistryEntry(Phase::DspLayer23::VPResidentSampler *this)
{
  v7 = *MEMORY[0x277D85DE8];
  v1 = malloc_type_malloc(0x1F8uLL, 0x1050040B063AAFAuLL);
  *v1 = "Rate";
  *(v1 + 1) = 0;
  *(v1 + 1) = xmmword_23A5983B0;
  *(v1 + 2) = xmmword_23A554D10;
  *(v1 + 6) = 0x3FF0000000000000;
  *(v1 + 7) = "Gain";
  *(v1 + 8) = 1;
  *(v1 + 72) = xmmword_23A598370;
  *(v1 + 88) = xmmword_23A598420;
  *(v1 + 13) = 0x3FF0000000000000;
  *(v1 + 14) = "ReferenceHF";
  *(v1 + 15) = 2;
  *(v1 + 8) = xmmword_23A598370;
  *(v1 + 9) = xmmword_23A598480;
  *(v1 + 20) = 0x40B3880000000000;
  *(v1 + 21) = "GainHF";
  *(v1 + 22) = 3;
  *(v1 + 184) = xmmword_23A598370;
  *(v1 + 200) = xmmword_23A5984C0;
  *(v1 + 27) = 0x3FF0000000000000;
  *(v1 + 28) = "ReferenceLF";
  *(v1 + 29) = 4;
  *(v1 + 15) = xmmword_23A598370;
  *(v1 + 16) = xmmword_23A598480;
  *(v1 + 34) = 0x407F400000000000;
  *(v1 + 35) = "GainLF";
  *(v1 + 36) = 5;
  *(v1 + 296) = xmmword_23A598370;
  *(v1 + 39) = 0x3EE4F8B580000000;
  __asm { FMOV            V2.2D, #1.0 }

  *(v1 + 20) = _Q2;
  *(v1 + 42) = "SeekPointInSeconds";
  *(v1 + 43) = 6;
  *(v1 + 22) = xmmword_23A5983B0;
  *(v1 + 23) = xmmword_23A598490;
  *(v1 + 48) = 0;
  *(v1 + 49) = "Gain Interpolation Duration";
  *(v1 + 50) = 7;
  *(v1 + 408) = xmmword_23A598370;
  *(v1 + 53) = 0;
  *(v1 + 27) = xmmword_23A5984A0;
  *(v1 + 56) = "Gain Damping Constant";
  *(v1 + 57) = 8;
  *(v1 + 29) = xmmword_23A598370;
  *(v1 + 30) = xmmword_23A598440;
  *(v1 + 62) = 0x3FF0000000000000;
  operator new();
}

void sub_23A546058(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, uint64_t a16, int a17, __int16 a18, char a19, char a20, uint64_t a21, uint64_t a22, int a23, __int16 a24, char a25, char a26, char a27)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void Phase::DspLayer23::VPResidentSampler::~VPResidentSampler(Phase::DspLayer23::VPResidentSampler *this)
{
  Phase::DspLayer23::VoicePoolParallel::~VoicePoolParallel(this);

  JUMPOUT(0x23EE864A0);
}

void Phase::DspLayer23::ResidentSamplerSlice::~ResidentSamplerSlice(Phase::DspLayer23::ResidentSamplerSlice *this)
{
  for (i = 608; i != 96; i -= 128)
  {
    free(*(this + i));
  }
}

{
  for (i = 608; i != 96; i -= 128)
  {
    free(*(this + i));
  }

  JUMPOUT(0x23EE86490);
}

uint64_t Phase::DspLayer23::ResidentSamplerSlice::Reset(Phase::DspLayer23::ResidentSamplerSlice *this, uint64_t a2)
{
  v2 = (this + 8 * a2);
  v2[8] = 0;
  v2[88] = 0x3FF0000000000000;
  v3 = (this + 4 * a2);
  v3[184] = 1065353216;
  v3[188] = 1167867904;
  v3[192] = 1065353216;
  v3[196] = 1140457472;
  v3[200] = 1065353216;
  v2[102] = 0;
  v3[212] = 1015580809;
  v3[216] = 1065353216;
  v2[110] = 0;
  v2[114] = 0;
  *(this + a2 + 336) = 0;
  v4 = 4 * a2 + 16;
  *(this + v4 + 1344) = 0;
  *(this + a2 + 344) = 0;
  v2[84] = 0;
  *(this + v4 + 1376) = 0;
  *(this + a2 + 352) = 0;
  v2[164] = 0;
  *(this + v4 + 1408) = 0;
  *(this + a2 + 360) = 0;
  *(this + v4 + 1440) = 0;
  v3[368] = 1065353216;
  v3[372] = 0;
  return Phase::DspLayer23::ResidentSamplerSlice::UpdateParameters(this, a2);
}

float Phase::DspLayer23::ResidentSamplerSlice::MoveStateTo(Phase::DspLayer23::ResidentSamplerSlice *this, uint64_t a2, Phase::DspLayer23::SliceParallel *a3, uint64_t a4)
{
  v4 = (this + 8 * a2);
  v5 = (a3 + 8 * a4);
  v5[4] = v4[4];
  v5[8] = v4[8];
  v6 = this + 128 * a2;
  v7 = a3 + 128 * a4;
  v8 = *(v7 + 28);
  v9 = *(v6 + 11);
  v11 = *(v6 + 8);
  v10 = *(v6 + 9);
  *(v7 + 10) = *(v6 + 10);
  *(v7 + 11) = v9;
  *(v7 + 8) = v11;
  *(v7 + 9) = v10;
  v12 = *(v6 + 14);
  v13 = *(v6 + 15);
  v14 = *(v6 + 13);
  *(v7 + 12) = *(v6 + 12);
  *(v7 + 13) = v14;
  *(v7 + 14) = v12;
  *(v7 + 15) = v13;
  *(v6 + 28) = v8;
  *(v6 + 29) = 0;
  v5[80] = v4[80];
  v15 = this + 4 * a2;
  v16 = a3 + 4 * a4;
  *(v16 + 184) = *(v15 + 184);
  *(v16 + 188) = *(v15 + 188);
  *(v16 + 192) = *(v15 + 192);
  *(v16 + 196) = *(v15 + 196);
  *(v16 + 200) = *(v15 + 200);
  *(v16 + 212) = *(v15 + 212);
  *(v16 + 216) = *(v15 + 216);
  v5[110] = v4[110];
  v5[114] = v4[114];
  v5[84] = v4[84];
  *(v16 + 236) = *(v15 + 236);
  *(v16 + 240) = *(v15 + 240);
  *(v16 + 244) = *(v15 + 244);
  *(v16 + 248) = *(v15 + 248);
  *(v16 + 252) = *(v15 + 252);
  *(v16 + 256) = *(v15 + 256);
  *(v16 + 260) = *(v15 + 260);
  *(v16 + 264) = *(v15 + 264);
  *(v16 + 268) = *(v15 + 268);
  *(v16 + 272) = *(v15 + 272);
  *(v16 + 276) = *(v15 + 276);
  *(v16 + 280) = *(v15 + 280);
  *(v16 + 284) = *(v15 + 284);
  *(v16 + 304) = *(v15 + 304);
  *(v16 + 308) = *(v15 + 308);
  v5[156] = v4[156];
  *(a3 + a4 + 336) = *(this + a2 + 336);
  v17 = 4 * a2 + 16;
  v18 = v4[160];
  v19 = 4 * a4 + 16;
  *(a3 + v19 + 1344) = *(this + v17 + 1344);
  LODWORD(v12) = *(this + a2 + 344);
  v5[160] = v18;
  *(a3 + a4 + 344) = v12;
  *(a3 + v19 + 1376) = *(this + v17 + 1376);
  *(a3 + a4 + 352) = *(this + a2 + 352);
  LODWORD(v12) = *(this + v17 + 1408);
  v5[88] = v4[88];
  v5[102] = v4[102];
  v5[144] = v4[144];
  v5[148] = v4[148];
  *&v13 = v4[164];
  *(a3 + v19 + 1408) = v12;
  LODWORD(v12) = *(this + a2 + 360);
  v5[164] = v13;
  *(a3 + a4 + 360) = v12;
  *(a3 + v19 + 1440) = *(this + v17 + 1440);
  *(v16 + 368) = *(v15 + 368);
  result = *(v15 + 372);
  *(v16 + 372) = result;
  return result;
}

uint64_t Phase::DspLayer23::ResidentSamplerSlice::SetParameter(Phase::DspLayer23::ResidentSamplerSlice *this, uint64_t a2, uint64_t a3, double a4)
{
  result = 8;
  if (a3 <= 3)
  {
    if (a3 > 1)
    {
      result = 0;
      v8 = a4;
      if (a3 == 2)
      {
        *(this + a2 + 188) = v8;
      }

      else
      {
        *(this + a2 + 192) = v8;
      }
    }

    else if (a3)
    {
      if (a3 == 1)
      {
        result = 0;
        v7 = a4;
        *(this + a2 + 184) = v7;
      }
    }

    else
    {
      result = 0;
      *(this + a2 + 88) = a4;
    }
  }

  else if (a3 <= 5)
  {
    result = 0;
    v9 = a4;
    if (a3 == 4)
    {
      *(this + a2 + 196) = v9;
    }

    else
    {
      *(this + a2 + 200) = v9;
    }
  }

  else
  {
    switch(a3)
    {
      case 6:
        if (a4 < 0.0)
        {
          return 10;
        }

        v10 = *(*(*(this + 2) + 576) + 80) * a4;
        v11 = (this + 8 * a2);
        if (v10 >= *(v11 + 114))
        {
          return 10;
        }

        else
        {
          result = 0;
          v11[102] = a4;
          *(v11 + 8) |= 0x40uLL;
        }

        break;
      case 7:
        result = 0;
        v12 = a4;
        *(this + a2 + 212) = v12;
        break;
      case 8:
        result = 0;
        v6 = a4;
        *(this + a2 + 216) = v6;
        break;
    }
  }

  return result;
}

uint64_t Phase::DspLayer23::ResidentSamplerSlice::UpdateParameters(Phase::DspLayer23::ResidentSamplerSlice *this, uint64_t a2)
{
  v3 = this + 8 * a2;
  *(v3 + 156) = *(v3 + 110);
  v4 = *(v3 + 114);
  *(v3 + 160) = v4;
  v5 = (this + 4 * a2);
  v41 = v5[192];
  v43 = v5[188];
  v6 = *(*(this + 2) + 576);
  v7 = *(v6 + 88);
  v8 = v5[200];
  v9 = v5[196];
  v10 = v5[184];
  v11 = this + 64;
  if ((*(this + 8 * a2 + 64) & 0x40) != 0)
  {
    *(v3 + 164) = *(v3 + 102) * *(v6 + 80);
  }

  v45 = *(v3 + 88);
  v12 = v5[212];
  v44 = v10;
  if (v12 >= 0.001)
  {
    v17 = 6.2832 / v12;
    v13 = v17 * v17;
    v16 = v17 * (v5[216] + v5[216]);
    v14 = 308;
    v15 = 304;
  }

  else
  {
    v13 = 0.0;
    v14 = 368;
    v15 = 372;
    v16 = v10;
  }

  v5[v15] = v13;
  v5[v14] = v16;
  v18 = log10f(v8);
  v19 = __exp10f(v18 * 0.5);
  v20 = v7 * v9 * 6.28318548;
  v21 = __sincosf_stret(v20);
  v22 = (v19 + -1.0) * v21.__cosval;
  v23 = (v19 + 1.0) + v22;
  v38 = sqrtf(__exp10f(v18) + 1.0);
  v36 = log10f(v41);
  v24 = __exp10f(v36 * 0.5);
  v25 = v24 + -1.0;
  v26 = ((v38 * 1.1892) - (v25 * v25)) * v21.__sinval;
  v27 = 1.0 / (v26 + v23);
  v40 = (((v19 + -1.0) + ((v19 + 1.0) * v21.__cosval)) * -2.0) * v27;
  v42 = (v23 - v26) * v27;
  v39 = (v19 * (((v19 + 1.0) - v22) - v26)) * v27;
  v37 = ((v19 + v19) * ((v19 + -1.0) - ((v19 + 1.0) * v21.__cosval))) * v27;
  v28 = (v19 * (v26 + ((v19 + 1.0) - v22))) * v27;
  v29 = v7 * v43 * 6.28318548;
  v30 = __sincosf_stret(v29);
  v31 = (v24 + -1.0) * v30.__cosval;
  v32 = (v24 + 1.0) - v31;
  v33 = ((sqrtf(__exp10f(v36) + 1.0) * 1.1892) - (v25 * v25)) * v30.__sinval;
  v34 = 1.0 / (v33 + v32);
  *(v5 + 236) = v4;
  *(v5 + 240) = v4 - 1;
  v5[244] = (v24 * (v33 + ((v24 + 1.0) + v31))) * v34;
  v5[248] = ((v24 * -2.0) * ((v24 + -1.0) + ((v24 + 1.0) * v30.__cosval))) * v34;
  v5[252] = (v24 * (((v24 + 1.0) + v31) - v33)) * v34;
  v5[256] = (((v24 + -1.0) - ((v24 + 1.0) * v30.__cosval)) + ((v24 + -1.0) - ((v24 + 1.0) * v30.__cosval))) * v34;
  v5[260] = (v32 - v33) * v34;
  v5[264] = v28;
  v5[268] = v37;
  v5[272] = v39;
  v5[276] = v40;
  v5[280] = v42;
  v5[284] = v44;
  *(v3 + 144) = v45;
  *(v3 + 148) = v4;
  *&v11[8 * a2] = 0;
  return 0;
}

uint64_t Phase::DspLayer23::ResidentSamplerSlice::SetData(Phase::DspLayer23::ResidentSamplerSlice *this, uint64_t a2, uint64_t a3, void *a4, uint64_t a5)
{
  v5 = (this + 8 * a2);
  if (!a3)
  {
    goto LABEL_4;
  }

  if (a3 == 1)
  {
    v5[84] = a4;
    a5 = a4[4];
    a4 = a4[2];
LABEL_4:
    result = 0;
    v5[110] = a4;
    v5[114] = a5;
    return result;
  }

  return 9;
}

uint64_t Phase::DspLayer23::ResidentSamplerSlice::GetData(Phase::DspLayer23::ResidentSamplerSlice *this, uint64_t a2, uint64_t a3)
{
  if (a3 == 1)
  {
    return *(this + a2 + 84);
  }

  if (a3)
  {
    return 0;
  }

  return *(this + a2 + 110);
}

float64x2_t Phase::DspLayer23::ResidentSamplerSlice::Process(Phase::DspLayer23::ResidentSamplerSlice *this, int a2, int a3, float64x2_t result)
{
  v88 = *MEMORY[0x277D85DE8];
  if (a2 >= 1)
  {
    v60 = a3 - 1;
    HIDWORD(v5) = a3 - 1;
    LODWORD(v5) = a3 - 1;
    v4 = v5 >> 1;
    if (v4 > 7 || ((1 << v4) & 0x8B) == 0)
    {
LABEL_37:
      __assert_rtn("BufInSingleSample", "VoicePoolSliceParallel.hpp", 324, "false && Invalid lanes-in-use mask.");
    }

    v7 = 0;
    v72 = *(this + 61);
    v73 = *(this + 59);
    v70 = *(this + 66);
    v71 = *(this + 62);
    v68 = *(this + 68);
    v69 = *(this + 67);
    v61 = *(this + 73);
    v62 = *(this + 72);
    v81 = *(this + 74);
    v82 = *(this + 60);
    v66 = vnegq_f32(*(this + 64));
    v67 = *(this + 63);
    v64 = vnegq_f32(*(this + 69));
    v65 = vnegq_f32(*(this + 65));
    v63 = vnegq_f32(*(this + 70));
    v80 = *(this + 75);
    v8 = a2;
    result = *(this + 82);
    v9 = *(this + 83);
    do
    {
      v10 = vrndq_f64(result);
      v11 = vrndq_f64(v9);
      v12 = vuzp1q_s32(vcvtq_s64_f64(v10), vcvtq_s64_f64(v11));
      v13 = vminq_s32(vmaxq_s32(v12, 0), v82);
      v14 = *(this + 156);
      v15.i32[0] = *(v14 + 4 * v13.i32[0]);
      if (v4 == 1)
      {
        v32 = *(this + 157);
        v33.i64[0] = 0x100000001;
        v33.i64[1] = 0x100000001;
        v34 = vaddq_s32(v12, v33);
        v33.i32[3] = 0;
        v34.i64[0] = vminq_s32(vmaxq_s32(vbslq_s8(vcgtq_s32(v73, v34), v34, vsubq_s32(v73, v34)), 0), v82).u64[0];
        v33.i32[0] = *(v14 + 4 * v13.i32[0]);
        *(v33.i64 + 4) = *(v32 + 4 * v13.i32[1]);
        v13.i32[0] = *(v14 + 4 * v34.i32[0]);
        v13.i32[1] = *(v32 + 4 * v34.i32[1]);
        v15 = v33;
      }

      else
      {
        if (v4 == 3)
        {
          v22 = *(this + 157);
          v23.i64[0] = 0x100000001;
          v23.i64[1] = 0x100000001;
          v24 = vaddq_s32(v12, v23);
          v25 = vminq_s32(vmaxq_s32(vbslq_s8(vcgtq_s32(v73, v24), v24, vsubq_s32(v73, v24)), 0), v82);
          v26 = v25.i32[2];
          v27 = (v14 + 4 * v25.i32[0]);
          v28 = (v22 + 4 * v13.i32[1]);
          v29 = (v22 + 4 * v25.i32[1]);
          v30 = *(this + 158);
          v31.i32[0] = v15.i32[0];
          v31.i32[1] = *v28;
          v31.i64[1] = *(v30 + 4 * v13.i32[2]);
          v13.i32[0] = *v27;
          v13.i32[1] = *v29;
          v13.i32[2] = *(v30 + 4 * v26);
        }

        else
        {
          if (v4 == 7)
          {
            v16 = *(this + 157);
            v17 = *(this + 158);
            v18 = *(this + 159);
            v19.i64[0] = 0x100000001;
            v19.i64[1] = 0x100000001;
            v20 = vaddq_s32(v12, v19);
            v21 = vminq_s32(vmaxq_s32(vbslq_s8(vcgtq_s32(v73, v20), v20, vsubq_s32(v73, v20)), 0), v82);
            v15.i32[1] = *(v16 + 4 * v13.i32[1]);
            v15.i32[2] = *(v17 + 4 * v13.i32[2]);
            v15.i32[3] = *(v18 + 4 * v13.i32[3]);
            v13.i32[0] = *(v14 + 4 * v21.i32[0]);
            v13.i32[1] = *(v16 + 4 * v21.i32[1]);
            v13.i32[2] = *(v17 + 4 * v21.i32[2]);
            v13.i32[3] = *(v18 + 4 * v21.i32[3]);
            goto LABEL_14;
          }

          if (v60)
          {
            goto LABEL_37;
          }

          v35.i64[0] = 0x100000001;
          v35.i64[1] = 0x100000001;
          v36 = vaddq_s32(v12, v35);
          v13 = vminq_s32(vmaxq_s32(vbslq_s8(vcgtq_s32(v73, v36), v36, vsubq_s32(v73, v36)), 0), v82);
          v31 = v15.u32[0];
          v13.i32[0] = *(v14 + 4 * v13.i32[0]);
        }

        v15 = v31;
      }

LABEL_14:
      v37 = vmlaq_f32(v15, vsubq_f32(v13, v15), vcvt_hight_f32_f64(vcvt_f32_f64(vsubq_f64(result, v10)), vsubq_f64(v9, v11)));
      v79 = vmlaq_f32(vmlaq_f32(vmlaq_f32(vmlaq_f32(vmulq_f32(v71, *(this + 84)), v37, v72), *(this + 85), v67), *(this + 86), v66), *(this + 87), v65);
      v38 = vmlaq_f32(vmlaq_f32(vmlaq_f32(vmlaq_f32(vmulq_f32(v69, *(this + 88)), v79, v70), *(this + 89), v68), *(this + 90), v64), *(this + 91), v63);
      v39 = *(*(*(this + 2) + 576) + 88);
      v40 = *(this + 92);
      v41 = vmlaq_n_f32(*(this + 93), vmlaq_f32(vmulq_f32(*(this + 93), vnegq_f32(*(this + 77))), vsubq_f32(*(this + 71), v40), *(this + 76)), v39);
      v42 = vmlaq_n_f32(v40, v41, v39);
      *(this + 92) = v42;
      *(this + 93) = v41;
      v78 = v38;
      v43 = vmulq_f32(v38, v42);
      if (v4 > 2)
      {
        if (v4 != 3)
        {
          if (v4 != 7)
          {
LABEL_38:
            __assert_rtn("BusOutSingleSample", "VoicePoolSliceParallel.hpp", 243, "false && Invalid lanes-in-use mask.");
          }

          *(*(this + 83) + 4 * v7) = v43.i32[3];
        }

        *(*(this + 82) + 4 * v7) = v43.i32[2];
        goto LABEL_22;
      }

      if (v4)
      {
        if (v4 != 1)
        {
          goto LABEL_38;
        }

LABEL_22:
        *(*(this + 81) + 4 * v7) = v43.i32[1];
      }

      *(*(this + 80) + 4 * v7) = v43.i32[0];
      v76 = vaddq_f64(v62, result);
      v77 = vaddq_f64(v61, v9);
      v75 = vuzp1q_s32(vcgeq_f64(v76, v81), vcgeq_f64(v77, v80));
      v44 = vandq_s8(v75, xmmword_23A598450);
      v45 = vorrq_s8(vextq_s8(v44, v44, 8uLL), v44);
      v46 = vorrq_s8(vdupq_laneq_s32(v45, 3), v45).u32[0] & a3;
      if (v46)
      {
        v47 = 0;
        v48 = this;
        v83 = v37;
        do
        {
          if (v46)
          {
            v49 = *(v48 + 84);
            if (v49)
            {
              v50 = *(v49 + 40);
              if (v50 < 2)
              {
                if (v50 == 1)
                {
                  *(v49 + 40) = 0;
                  v52 = *(v49 + 48);
                  v51 = *(v49 + 56);
                  *(v48 + 110) = v52;
                  *(v48 + 114) = v51;
                  Phase::DspLayer23::ResidentSamplerSlice::UpdateParameters(this, v47);
                  v53 = *(v48 + 4);
                  v54 = *(v48 + 156);
                  v55 = *(this + 2);
                  v85 = 0;
                  v86[0] = 112;
                  v87 = v54;
                  v84[0] = &v85;
                  v84[1] = 20;
                  v84[2] = ((strlen(v86) >> 2 << 34) + 0xC00000000) >> 32;
                  v84[3] = 0;
                  v56 = *(v55 + 576);
                  v57 = *(v56 + 184);
                  if (v57)
                  {
                    v57(*(v56 + 192), v55, v53, v84);
                  }

                  v37 = v83;
                }
              }

              else
              {
                *(v49 + 40) = v50 - 1;
              }
            }
          }

          if (v47 > 2)
          {
            break;
          }

          ++v47;
          v48 = (v48 + 8);
          v58 = v46 > 1;
          v46 >>= 1;
        }

        while (v58);
      }

      v59 = v75;
      result = vbslq_s8(vzip1q_s32(v59, v59), vsubq_f64(v76, v81), v76);
      *(this + 82) = result;
      v9 = vbslq_s8(vzip2q_s32(v59, v59), vsubq_f64(v77, v80), v77);
      *(this + 83) = v9;
      *(this + 85) = *(this + 84);
      *(this + 84) = v37;
      *(this + 87) = *(this + 86);
      *(this + 86) = v79;
      *(this + 89) = *(this + 88);
      *(this + 88) = v79;
      *(this + 91) = *(this + 90);
      *(this + 90) = v78;
      ++v7;
    }

    while (v7 != v8);
  }

  return result;
}

void Phase::DspLayer23::VPSpringGain::GetNewRegistryEntry(Phase::DspLayer23::VPSpringGain *this)
{
  v2 = *MEMORY[0x277D85DE8];
  v1 = malloc_type_malloc(0xA8uLL, 0x1050040B063AAFAuLL);
  *v1 = "Interpolation Duration (seconds)";
  *(v1 + 1) = 0;
  *(v1 + 1) = xmmword_23A5983D0;
  *(v1 + 2) = xmmword_23A5983E0;
  *(v1 + 6) = 0x3FF0000000000000;
  *(v1 + 7) = "Target Value";
  *(v1 + 8) = 1;
  *(v1 + 72) = xmmword_23A5983D0;
  *(v1 + 88) = xmmword_23A5983E0;
  *(v1 + 13) = 0x3FF0000000000000;
  *(v1 + 14) = "Damping Constant";
  *(v1 + 15) = 2;
  *(v1 + 8) = xmmword_23A5983D0;
  *(v1 + 9) = xmmword_23A5983E0;
  *(v1 + 20) = 0x3FF0000000000000;
  operator new();
}

void sub_23A5472B0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, uint64_t a16, uint64_t a17, int a18, __int16 a19, char a20, char a21, char a22)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void Phase::DspLayer23::VPSpringGain::~VPSpringGain(Phase::DspLayer23::VPSpringGain *this)
{
  Phase::DspLayer23::VoicePoolParallel::~VoicePoolParallel(this);

  JUMPOUT(0x23EE864A0);
}

void Phase::DspLayer23::SpringGainSlice::~SpringGainSlice(Phase::DspLayer23::SpringGainSlice *this)
{
  for (i = 1648; i != 1136; i -= 128)
  {
    free(*(this + i));
  }

  for (j = 1120; j != 608; j -= 128)
  {
    free(*(this + j));
  }

  do
  {
    free(*(this + j));
    j -= 128;
  }

  while (j != 96);
}

{
  for (i = 1648; i != 1136; i -= 128)
  {
    free(*(this + i));
  }

  for (j = 1120; j != 608; j -= 128)
  {
    free(*(this + j));
  }

  do
  {
    free(*(this + j));
    j -= 128;
  }

  while (j != 96);

  JUMPOUT(0x23EE86490);
}

uint64_t Phase::DspLayer23::SpringGainSlice::Reset(uint64_t this, uint64_t a2)
{
  v2 = (this + (a2 << 7));
  v2[29] = 0;
  v2[93] = 0;
  v2[159] = 0;
  *(this + 8 * a2 + 1664) = 0;
  v3 = (this + 4 * a2);
  v3[424] = 1015580809;
  v3[428] = 1065353216;
  v3[432] = 1065353216;
  v3[436] = 0;
  v3[440] = 0;
  v3[444] = 1065353216;
  v3[448] = 1065353216;
  v3[452] = 0;
  return this;
}

float Phase::DspLayer23::SpringGainSlice::MoveStateTo(Phase::DspLayer23::SpringGainSlice *this, uint64_t a2, Phase::DspLayer23::SliceParallel *a3, uint64_t a4)
{
  v4 = this + 8 * a2;
  v5 = a3 + 8 * a4;
  *(v5 + 4) = *(v4 + 4);
  v6 = a3 + 128 * a4;
  v7 = *(v6 + 28);
  v8 = this + 128 * a2;
  v9 = *(v8 + 11);
  v11 = *(v8 + 8);
  v10 = *(v8 + 9);
  *(v6 + 10) = *(v8 + 10);
  *(v6 + 11) = v9;
  *(v6 + 8) = v11;
  *(v6 + 9) = v10;
  v12 = *(v8 + 14);
  v13 = *(v8 + 15);
  v14 = *(v8 + 13);
  *(v6 + 12) = *(v8 + 12);
  *(v6 + 13) = v14;
  *(v6 + 14) = v12;
  *(v6 + 15) = v13;
  *(v8 + 28) = v7;
  *(v8 + 29) = 0;
  v15 = *(v6 + 92);
  v16 = *(v8 + 46);
  v18 = *(v8 + 44);
  v17 = *(v8 + 45);
  *(v6 + 47) = *(v8 + 47);
  *(v6 + 44) = v18;
  *(v6 + 45) = v17;
  v19 = *(v8 + 41);
  v20 = *(v8 + 43);
  *(v6 + 42) = *(v8 + 42);
  *(v6 + 43) = v20;
  *(v6 + 41) = v19;
  *(v6 + 46) = v16;
  *(v6 + 40) = *(v8 + 40);
  *(v8 + 92) = v15;
  *(v8 + 93) = 0;
  v21 = *(v6 + 158);
  v22 = *(v8 + 79);
  v23 = *(v8 + 76);
  v24 = *(v8 + 77);
  *(v6 + 78) = *(v8 + 78);
  *(v6 + 77) = v24;
  *(v6 + 76) = v23;
  v25 = *(v8 + 75);
  v26 = *(v8 + 74);
  *(v6 + 73) = *(v8 + 73);
  *(v6 + 74) = v26;
  *(v6 + 75) = v25;
  *(v6 + 79) = v22;
  *(v6 + 72) = *(v8 + 72);
  *(v8 + 158) = v21;
  *(v8 + 159) = 0;
  *(v5 + 208) = *(v4 + 208);
  v27 = this + 4 * a2;
  v28 = a3 + 4 * a4;
  *(v28 + 424) = *(v27 + 424);
  *(v28 + 428) = *(v27 + 428);
  *(v28 + 432) = *(v27 + 432);
  *(v28 + 436) = *(v27 + 436);
  *(v28 + 440) = *(v27 + 440);
  *(v28 + 444) = *(v27 + 444);
  *(v28 + 448) = *(v27 + 448);
  result = *(v27 + 452);
  *(v28 + 452) = result;
  return result;
}

uint64_t Phase::DspLayer23::SpringGainSlice::SetParameter(Phase::DspLayer23::SpringGainSlice *this, uint64_t a2, unint64_t a3, double a4)
{
  if (a3 > 2)
  {
    return 8;
  }

  result = 0;
  v6 = a4;
  *(this + 4 * a3 + a2 + 424) = v6;
  return result;
}

uint64_t Phase::DspLayer23::SpringGainSlice::UpdateParameters(Phase::DspLayer23::SpringGainSlice *this, uint64_t a2)
{
  v2 = (this + 4 * a2);
  v3 = v2[424];
  v4 = v2[428];
  if (v3 >= 0.001)
  {
    v7 = 6.2832 / v3;
    v2[436] = v7 * v7;
    v6 = v7 * (v2[432] + v2[432]);
    v5 = 440;
  }

  else
  {
    v2[452] = 0.0;
    v5 = 448;
    v6 = v4;
  }

  v2[v5] = v6;
  v2[444] = v4;
  return 0;
}

float *Phase::DspLayer23::SpringGainSlice::Process(Phase::DspLayer23::SpringGainSlice *this, int a2, int a3)
{
  v56 = *MEMORY[0x277D85DE8];
  MEMORY[0x28223BE20](this);
  v7 = &v51 - 4 * v6;
  bzero(v7, v8);
  v52 = v7;
  v53 = &v7[4 * a2];
  v54 = &v7[8 * a2];
  v55 = &v7[12 * a2];
  result = Phase::DspLayer23::SliceParallel::BusInConnections(this, a3, this + 144, a2, &v52);
  v10 = *(this + 113);
  v11 = *(this + 112);
  if (a2 >= 1)
  {
    HIDWORD(v13) = a3 - 1;
    LODWORD(v13) = a3 - 1;
    v12 = v13 >> 1;
    if (v12 > 7 || ((1 << v12) & 0x8B) == 0)
    {
      __assert_rtn("BusOutPerBlock", "VoicePoolSliceParallel.hpp", 209, "false && Invalid lanes-in-use mask.");
    }

    v14 = 0;
    v15 = 0;
    v16 = *(this + 109);
    v17 = *(this + 111);
    v18 = *(*(*(this + 2) + 576) + 88);
    *&v18 = v18;
    v19 = vdupq_lane_s32(*&v18, 0);
    v20 = vnegq_f32(*(this + 110));
    v21 = v52;
    v22 = v53;
    v23 = v54;
    v24 = v55;
    while (1)
    {
      v25 = *&v21[v14 / 4];
      v26 = *&v22[v14];
      v27 = *&v23[v14];
      v28 = *&v24[v14];
      v29 = vtrn1q_s32(v25, v27);
      v30 = vtrn2q_s32(v25, v27);
      v31 = vtrn1q_s32(v26, v28);
      v32 = vtrn2q_s32(v26, v28);
      v33 = vzip1q_s32(v29, v31);
      v34 = vzip2q_s32(v29, v31);
      v35 = vmlaq_f32(v10, v19, vmlaq_f32(vmulq_f32(v10, v20), vsubq_f32(v17, v11), v16));
      v36 = vmulq_f32(v11, v33);
      v37 = vmlaq_f32(v11, v19, v35);
      v38 = vmlaq_f32(v35, v19, vmlaq_f32(vmulq_f32(v35, v20), vsubq_f32(v17, v37), v16));
      v39 = vmulq_f32(v37, vzip1q_s32(v30, v32));
      v40 = vmlaq_f32(v37, v19, v38);
      v41 = vmlaq_f32(v38, v19, vmlaq_f32(vmulq_f32(v38, v20), vsubq_f32(v17, v40), v16));
      v42 = vmulq_f32(v40, v34);
      v43 = vmlaq_f32(v40, v19, v41);
      v44 = vmulq_f32(vzip2q_s32(v30, v32), v43);
      v45 = vtrn1q_s32(v36, v42);
      v46 = vtrn2q_s32(v36, v42);
      v47 = vtrn1q_s32(v39, v44);
      v48 = vtrn2q_s32(v39, v44);
      if (v12 == 1)
      {
        goto LABEL_10;
      }

      if (v12 == 3)
      {
        goto LABEL_9;
      }

      if (v12 == 7)
      {
        break;
      }

LABEL_11:
      v10 = vmlaq_f32(v41, v19, vmlaq_f32(vmulq_f32(v41, v20), vsubq_f32(v17, v43), v16));
      v11 = vmlaq_f32(v43, v19, v10);
      v50 = (*(this + 208) + v14);
      vst2_f32(v50, v45);
      v15 += 4;
      v14 += 16;
      if (v15 >= a2)
      {
        goto LABEL_12;
      }
    }

    *(*(this + 211) + v14) = vzip2q_s32(v46, v48);
LABEL_9:
    *(*(this + 210) + v14) = vzip2q_s32(v45, v47);
LABEL_10:
    v49 = (*(this + 209) + v14);
    vst2_f32(v49, v46);
    goto LABEL_11;
  }

LABEL_12:
  *(this + 113) = v10;
  *(this + 112) = v11;
  return result;
}

void Phase::DspLayer23::VPTapper::GetNewRegistryEntry(Phase::DspLayer23::VPTapper *this)
{
  v2 = *MEMORY[0x277D85DE8];
  v1 = malloc_type_malloc(0x38uLL, 0x1050040B063AAFAuLL);
  *v1 = "Start Position";
  v1[1] = 0;
  *(v1 + 1) = xmmword_23A5983D0;
  *(v1 + 2) = xmmword_23A5984D0;
  v1[6] = 0;
  operator new();
}

void sub_23A547CDC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, uint64_t a16, int a17, __int16 a18, char a19, char a20, uint64_t a21, uint64_t a22, int a23, __int16 a24, char a25, char a26, char a27)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void Phase::DspLayer23::VPTapper::~VPTapper(Phase::DspLayer23::VPTapper *this)
{
  Phase::DspLayer23::VoicePoolSerial::~VoicePoolSerial(this);

  JUMPOUT(0x23EE864A0);
}

void Phase::DspLayer23::TapperSlice::~TapperSlice(void **this)
{
  free(this[51]);
  free(this[46]);
  free(this[28]);
}

{
  free(this[51]);
  free(this[46]);
  free(this[28]);

  JUMPOUT(0x23EE86490);
}

void Phase::DspLayer23::TapperSlice::Reset(Phase::DspLayer23::TapperSlice *this)
{
  *(this + 29) = 0;
  *(this + 5) = 0;
  *(this + 56) = 0;
  *(this + 53) = 0;
  *(this + 54) = 0;
  *(this + 440) = 0;
  *(this + 376) = 0u;
  *(this + 392) = 0u;
  bzero(*(this + 51), 4 * *(this + 52));
}

void *Phase::DspLayer23::TapperSlice::MoveStateTo(Phase::DspLayer23::TapperSlice *this, Phase::DspLayer23::SliceSerial *a2)
{
  *(a2 + 2) = *(this + 2);
  v4 = *(a2 + 28);
  v5 = *(this + 11);
  v7 = *(this + 8);
  v6 = *(this + 9);
  *(a2 + 10) = *(this + 10);
  *(a2 + 11) = v5;
  *(a2 + 8) = v7;
  *(a2 + 9) = v6;
  v8 = *(this + 14);
  v9 = *(this + 15);
  v10 = *(this + 13);
  *(a2 + 12) = *(this + 12);
  *(a2 + 13) = v10;
  *(a2 + 14) = v8;
  *(a2 + 15) = v9;
  *(this + 28) = v4;
  *(this + 29) = 0;
  v11 = *(a2 + 46);
  v13 = *(this + 22);
  v12 = *(this + 23);
  v14 = *(this + 20);
  *(a2 + 21) = *(this + 21);
  *(a2 + 22) = v13;
  *(a2 + 20) = v14;
  v16 = *(this + 18);
  v15 = *(this + 19);
  *(a2 + 17) = *(this + 17);
  *(a2 + 18) = v16;
  *(a2 + 19) = v15;
  *(a2 + 23) = v12;
  *(a2 + 16) = *(this + 16);
  *(this + 46) = v11;
  *(this + 47) = 0;
  v17 = *(this + 51);
  *(a2 + 50) = *(this + 50);
  *(a2 + 57) = *(this + 57);
  v18 = *(this + 49);
  *(a2 + 48) = *(this + 48);
  *(a2 + 49) = v18;
  *(this + 48) = 0;
  *(this + 49) = 0;
  result = memcpy(*(a2 + 51), v17, 4 * *(a2 + 52));
  v20 = *(this + 54);
  *(a2 + 53) = *(this + 53);
  *(a2 + 54) = v20;
  *(a2 + 440) = *(this + 440);
  return result;
}

uint64_t Phase::DspLayer23::TapperSlice::Process(Phase::DspLayer23::TapperSlice *this, int a2)
{
  v24[1] = *MEMORY[0x277D85DE8];
  v3 = *(this + 48);
  v4 = *(*(*(this + 2) + 576) + 176);
  v5 = a2;
  MEMORY[0x28223BE20](this);
  v7 = (&v22 - v6);
  bzero(&v22 - v6, v8);
  v9 = Phase::DspLayer23::AudioConnections::Sum(this + 32, v5, v7);
  result = Phase::DspLayer23::BasicReblocker<float>::Write(this + 408, v9, v5);
  v11 = *(this + 53);
  v12 = *(this + 54);
  if (v11 > v12)
  {
LABEL_2:
    v12 = *(this + 52);
    goto LABEL_4;
  }

  if (v11 >= v12)
  {
    if ((*(this + 440) & 1) == 0)
    {
      v13 = (this + 448);
      v14 = *(this + 56);
      goto LABEL_18;
    }

    goto LABEL_2;
  }

LABEL_4:
  v13 = (this + 448);
  v14 = *(this + 56);
  v15 = v12 - v11;
  if (v15)
  {
    v16 = (*(this + 51) + 4 * v11);
    do
    {
      if (v4 <= v14)
      {
        break;
      }

      if (v4 - v14 >= v15)
      {
        v17 = v15;
      }

      else
      {
        v17 = v4 - v14;
      }

      result = memcpy((v3 + 4 * v14), v16, 4 * v17);
      v14 = *(this + 56) + v17;
      *(this + 56) = v14;
      v18 = *(this + 52);
      v19 = *(this + 53) + v17;
      if (v19 == v18)
      {
        v19 = 0;
      }

      *(this + 53) = v19;
      *(this + 440) = 0;
      v20 = *(this + 54);
      if (v19 <= v20)
      {
        v18 = *(this + 54);
        if (v19 >= v20)
        {
          break;
        }
      }

      v16 = (*(this + 51) + 4 * v19);
      v15 = v18 - v19;
    }

    while (v15);
  }

LABEL_18:
  if (v14 == v4)
  {
    v21 = *(*(this + 57) + 24);
    v23 = v4;
    v24[0] = v3;
    if (!v21)
    {
      std::__throw_bad_function_call[abi:ne200100]();
    }

    result = (*(*v21 + 48))(v21, v24, &v23);
    *v13 = 0;
  }

  return result;
}

uint64_t Phase::DspLayer23::TapperSlice::SetData(Phase::DspLayer23::TapperSlice *this, uint64_t a2, void *a3, uint64_t a4)
{
  if (a2 == 1)
  {
    result = 0;
    *(this + 57) = a3;
  }

  else if (a2)
  {
    return 9;
  }

  else
  {
    result = 0;
    *(this + 48) = a3;
    *(this + 49) = a4;
  }

  return result;
}

uint64_t Phase::DspLayer23::TapperSlice::SetParameter(Phase::DspLayer23::TapperSlice *this, char a2, double a3)
{
  *(this + 50) = a3;
  *(this + 5) |= 1 << a2;
  return 0;
}

uint64_t Phase::DspLayer23::TapperSlice::UpdateParameters(Phase::DspLayer23::TapperSlice *this)
{
  if (*(this + 40))
  {
    v2 = *(this + 49);
    *(this + 56) = *(this + 50);
    bzero(*(this + 48), 4 * v2);
    *(this + 53) = 0;
    *(this + 54) = 0;
    *(this + 440) = 0;
    bzero(*(this + 51), 4 * *(this + 52));
  }

  *(this + 5) = 0;
  return 0;
}

void Phase::DspLayer23::VPVoiceEngineOutput::GetNewRegistryEntry(Phase::DspLayer23::VPVoiceEngineOutput *this)
{
  v2 = *MEMORY[0x277D85DE8];
  v1 = malloc_type_malloc(0x38uLL, 0x1050040B063AAFAuLL);
  *v1 = "Output";
  v1[1] = 0;
  *(v1 + 1) = xmmword_23A5983D0;
  *(v1 + 2) = xmmword_23A5984E0;
  v1[6] = 0;
  operator new();
}

void sub_23A548544(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, char a15)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void Phase::DspLayer23::VPVoiceEngineOutput::~VPVoiceEngineOutput(Phase::DspLayer23::VPVoiceEngineOutput *this)
{
  Phase::DspLayer23::VoicePoolSerial::~VoicePoolSerial(this);

  JUMPOUT(0x23EE864A0);
}

void Phase::DspLayer23::VoiceEngineOutputSlice::~VoiceEngineOutputSlice(void **this)
{
  free(this[46]);
  free(this[28]);
}

{
  free(this[46]);
  free(this[28]);

  JUMPOUT(0x23EE86490);
}

uint64_t Phase::DspLayer23::VoiceEngineOutputSlice::Reset(uint64_t this)
{
  *(this + 232) = 0;
  *(this + 376) = 0;
  *(this + 384) = -1;
  *(this + 392) = 0;
  return this;
}

void Phase::DspLayer23::VoiceEngineOutputSlice::OnStop(Phase::DspLayer23::VoiceEngineOutputSlice *this)
{
  v2 = *(this + 49);
  if (v2)
  {
    bzero(v2, 4 * *(*(*(this + 2) + 576) + 72));
  }
}

__n128 Phase::DspLayer23::VoiceEngineOutputSlice::MoveStateTo(__n128 *this, __n128 *a2)
{
  a2[2].n128_u64[0] = this[2].n128_u64[0];
  v2 = a2[14].n128_u64[0];
  v3 = this[11];
  v5 = this[8];
  v4 = this[9];
  a2[10] = this[10];
  a2[11] = v3;
  a2[8] = v5;
  a2[9] = v4;
  v6 = this[14];
  v7 = this[15];
  v8 = this[13];
  a2[12] = this[12];
  a2[13] = v8;
  a2[14] = v6;
  a2[15] = v7;
  this[14].n128_u64[0] = v2;
  this[14].n128_u64[1] = 0;
  v9 = a2[23].n128_u64[0];
  v10 = this[17];
  v11 = this[19];
  a2[18] = this[18];
  a2[19] = v11;
  a2[17] = v10;
  v13 = this[22];
  v12 = this[23];
  v14 = this[21];
  a2[20] = this[20];
  a2[21] = v14;
  a2[22] = v13;
  a2[23] = v12;
  result = this[16];
  a2[16] = result;
  this[23].n128_u64[0] = v9;
  this[23].n128_u64[1] = 0;
  a2[24].n128_u32[0] = this[24].n128_u32[0];
  a2[24].n128_u64[1] = this[24].n128_u64[1];
  return result;
}

float *Phase::DspLayer23::VoiceEngineOutputSlice::Process(float **this, int a2)
{
  v3 = a2;
  if (this[47] < 2)
  {
    v7 = Phase::DspLayer23::AudioConnections::Sum(this + 32, a2, 0);
    v8 = this[49];

    return memcpy(v8, v7, 4 * v3);
  }

  else
  {
    v4 = this[49];
    v5 = this + 32;

    return Phase::DspLayer23::AudioConnections::Sum(v5, a2, v4);
  }
}

uint64_t Phase::DspLayer23::VoiceEngineOutputSlice::SetParameter(Phase::DspLayer23::VoiceEngineOutputSlice *this, uint64_t a2, double a3)
{
  if (a2)
  {
    return 8;
  }

  if (*(*(*(this + 2) + 576) + 24) <= a3)
  {
    return 10;
  }

  result = 0;
  *(this + 96) = a3;
  return result;
}

void Phase::SpatialModeler::CombineMetadataScaled_EnergyDomain(uint64_t a1, uint64_t a2, uint64_t a3, char a4, float a5, float a6)
{
  v74[4] = *MEMORY[0x277D85DE8];
  v6 = *(a1 + 204);
  if (v6 != *(a2 + 204))
  {
    v14 = **(Phase::Logger::GetInstance(a1) + 1264);
    if (!os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      return;
    }

    *buf = 136315394;
    *&buf[4] = "XfadeDirectionalMetadata.cpp";
    *&buf[12] = 1024;
    *&buf[14] = 27;
    v15 = "%25s:%-5d CombineMetadataScaled: mDirectionType mismatch.";
LABEL_18:
    _os_log_impl(&dword_23A302000, v14, OS_LOG_TYPE_ERROR, v15, buf, 0x12u);
    return;
  }

  *(a3 + 204) = v6;
  v12 = *(a1 + 104);
  if (v12)
  {
    v13 = v12[1];
  }

  else
  {
    v13 = 0;
  }

  v16 = *(a2 + 104);
  if (v16)
  {
    v17 = v16[1];
  }

  else
  {
    v17 = 0;
  }

  if (v13 <= v17)
  {
    v18 = v17;
  }

  else
  {
    v18 = v13;
  }

  if (!v18)
  {
    v14 = **(Phase::Logger::GetInstance(a1) + 1264);
    if (!os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      return;
    }

    *buf = 136315394;
    *&buf[4] = "XfadeDirectionalMetadata.cpp";
    *&buf[12] = 1024;
    *&buf[14] = 36;
    v15 = "%25s:%-5d CombineMetadataScaled: Called with both empty metadata.";
    goto LABEL_18;
  }

  if (v12)
  {
    v19 = *v12;
  }

  else
  {
    v19 = 0;
  }

  if (v16)
  {
    v20 = *v16;
  }

  else
  {
    v20 = 0;
  }

  v69 = 4;
  v70 = v20 + v19;
  *buf = &v70;
  *&buf[8] = &v69;
  Phase::details::AllocArray<Phase::Vector<float,3ul>,std::unique_ptr<Phase::Vector<float,3ul> [],std::function<void ()(void *)>> Phase::details::AllocArray<Phase::Vector<float,3ul>>(unsigned long,unsigned long)::{lambda(void)#1} const&,std::unique_ptr<Phase::Vector<float,3ul> [],std::function<void ()(void *)>> Phase::details::AllocArray<Phase::Vector<float,3ul>>(unsigned long,unsigned long)::{lambda(Phase::Vector<float,3ul>*)#1} const&>(v20 + v19, buf, &v73);
  v21 = v73;
  v73 = 0;
  *buf = v21;
  std::__function::__value_func<void ()(void *)>::__value_func[abi:ne200100](&buf[8], v74);
  v72 = v20 + v19;
  std::unique_ptr<Phase::Vector<float,3ul> [],std::function<void ()(void *)>>::reset[abi:ne200100](&v73);
  std::__function::__value_func<void ()(void *)>::~__value_func[abi:ne200100](v74);
  std::unique_ptr<Phase::Vector<float,3ul> [],std::function<void ()(void *)>>::operator=[abi:ne200100]((a3 + 8), buf);
  *(a3 + 48) = v72;
  std::unique_ptr<Phase::Vector<float,3ul> [],std::function<void ()(void *)>>::reset[abi:ne200100](buf);
  std::__function::__value_func<void ()(void *)>::~__value_func[abi:ne200100](&buf[8]);
  v69 = 4;
  v70 = v20 + v19;
  *buf = &v70;
  *&buf[8] = &v69;
  Phase::details::AllocArray<float,std::unique_ptr<float [],std::function<void ()(void *)>> Phase::details::AllocArray<float>(unsigned long,unsigned long)::{lambda(void)#1} const&,std::unique_ptr<float [],std::function<void ()(void *)>> Phase::details::AllocArray<float>(unsigned long,unsigned long)::{lambda(float*)#1} const&>(v20 + v19, buf, &v73);
  v22 = v73;
  v73 = 0;
  *buf = v22;
  std::__function::__value_func<void ()(void *)>::__value_func[abi:ne200100](&buf[8], v74);
  v72 = v20 + v19;
  std::unique_ptr<float [],std::function<void ()(void *)>>::reset[abi:ne200100](&v73);
  std::__function::__value_func<void ()(void *)>::~__value_func[abi:ne200100](v74);
  std::unique_ptr<float [],std::function<void ()(void *)>>::operator=[abi:ne200100]((a3 + 56), buf);
  *(a3 + 96) = v72;
  std::unique_ptr<float [],std::function<void ()(void *)>>::reset[abi:ne200100](buf);
  std::__function::__value_func<void ()(void *)>::~__value_func[abi:ne200100](&buf[8]);
  Phase::AllocPackedSubbandArray<float>(v20 + v19, v18, buf);
  std::unique_ptr<Phase::PackedSubbandArray<float>,std::function<void ()(void *)>>::operator=[abi:ne200100]((a3 + 104), buf);
  std::unique_ptr<Phase::PackedSubbandArray<float>,std::function<void ()(void *)>>::reset[abi:ne200100](buf, 0);
  std::__function::__value_func<void ()(void *)>::~__value_func[abi:ne200100](&buf[8]);
  v69 = 1;
  v70 = v20 + v19;
  *buf = &v70;
  *&buf[8] = &v69;
  Phase::details::AllocArray<BOOL,std::unique_ptr<BOOL [],std::function<void ()(void *)>> Phase::details::AllocArray<BOOL>(unsigned long,unsigned long)::{lambda(void)#1} const&,std::unique_ptr<BOOL [],std::function<void ()(void *)>> Phase::details::AllocArray<BOOL>(unsigned long,unsigned long)::{lambda(BOOL*)#1} const&>(v20 + v19, buf, &v73);
  v23 = v73;
  v73 = 0;
  *buf = v23;
  std::__function::__value_func<void ()(void *)>::__value_func[abi:ne200100](&buf[8], v74);
  v72 = v20 + v19;
  std::unique_ptr<BOOL [],std::function<void ()(void *)>>::reset[abi:ne200100](&v73);
  std::__function::__value_func<void ()(void *)>::~__value_func[abi:ne200100](v74);
  std::unique_ptr<BOOL [],std::function<void ()(void *)>>::operator=[abi:ne200100]((a3 + 144), buf);
  *(a3 + 184) = v72;
  std::unique_ptr<BOOL [],std::function<void ()(void *)>>::reset[abi:ne200100](buf);
  std::__function::__value_func<void ()(void *)>::~__value_func[abi:ne200100](&buf[8]);
  v24 = a4;
  if (v19)
  {
    v25 = 0;
    v26 = *(a1 + 8);
    v27 = *(a3 + 8);
    v28 = *(a1 + 56);
    v29 = *(a3 + 56);
    v30 = *(a1 + 104);
    v31 = (v30 + 16);
    v32 = *(v30 + 8);
    v33 = *(a3 + 104);
    v34 = (v33 + 16);
    v35 = *(v33 + 8);
    v36 = sqrtf(a5);
    v37 = *(a1 + 144);
    v38 = *(a3 + 144);
    v39 = 4 * v35;
    do
    {
      v40 = (v26 + 12 * v25);
      v41 = (v27 + 12 * v25);
      *v41 = *v40;
      v41[1] = v40[1];
      v41[2] = v40[2];
      *(v29 + 4 * v25) = *(v28 + 4 * v25);
      v42 = v31;
      v43 = v34;
      for (i = v32; i; --i)
      {
        v45 = *v42++;
        *v43++ = v36 * v45;
      }

      *(v38 + v25) = *(v37 + v25);
      ++v25;
      v34 = (v34 + v39);
      v31 += v32;
    }

    while (v25 != v19);
  }

  if (v20)
  {
    v46 = 0;
    v47 = *(a2 + 8);
    v48 = *(a3 + 8);
    v49 = *(a2 + 56);
    v50 = *(a3 + 56);
    v51 = *(a2 + 104);
    v52 = (v51 + 16);
    v53 = *(v51 + 8);
    v54 = *(a3 + 104);
    v55 = *(v54 + 8);
    v56 = sqrtf(a6);
    v57 = *(a2 + 144);
    v58 = v54 + 4 * v19 * v55;
    v59 = *(a3 + 144);
    v60 = (v58 + 16);
    v61 = 4 * v55;
    do
    {
      v62 = (v47 + 12 * v46);
      v63 = (v48 + 12 * (v46 + v19));
      *v63 = *v62;
      v63[1] = v62[1];
      v63[2] = v62[2];
      *(v50 + 4 * (v46 + v19)) = *(v49 + 4 * v46);
      v64 = v52;
      v65 = v60;
      for (j = v53; j; --j)
      {
        v67 = *v64++;
        *v65++ = v56 * v67;
      }

      *(v59 + v46 + v19) = *(v57 + v46);
      ++v46;
      v60 = (v60 + v61);
      v52 += v53;
    }

    while (v46 != v20);
  }

  if (a4)
  {
    Phase::SpatialModeler::SortMetadataByDelay<float>(a3);
    v24 = a4;
  }

  *(a3 + 201) = v24;
}

void Phase::SpatialModeler::XfadeDirectionalMetadata(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>, float a4@<S0>, float a5@<S1>)
{
  *a3 = 3;
  *(a3 + 4) = 1;
  *(a3 + 8) = 0;
  *(a3 + 204) = 0;
  *(a3 + 48) = 0;
  *(a3 + 56) = 0;
  *(a3 + 40) = 0;
  *(a3 + 96) = 0;
  *(a3 + 104) = 0;
  *(a3 + 88) = 0;
  *(a3 + 136) = 0;
  *(a3 + 144) = 0;
  *(a3 + 184) = 0;
  *(a3 + 192) = 0;
  *(a3 + 176) = 0;
  *(a3 + 200) = 0;
  if (a4 == 0.0 && a5 == 1.0)
  {
    goto LABEL_6;
  }

  if (a4 == 1.0 && a5 == 0.0)
  {
    a2 = a1;
LABEL_6:
    Phase::SpatialModeler::CopyMetadata<float>(a2, a3);
    return;
  }

  Phase::SpatialModeler::CombineMetadataScaled_EnergyDomain(a1, a2, a3, 1, a4, a5);
}

void *Phase::Controller::XTCBinauralSpatializer::XTCBinauralSpatializer(void *a1, __int128 *a2, uint64_t a3, uint64_t a4)
{
  LOBYTE(__p[0]) = 0;
  std::vector<char>::vector[abi:ne200100](v12, 32);
  v8 = v12[0];
  *v12[0] = 6619138;
  v8[2] = 0;
  std::string::basic_string[abi:ne200100]<0>(__p, "XTCBinaural");
  Phase::Controller::Spatializer::Spatializer(a1, a2, v12, __p);
  if (v11 < 0)
  {
    operator delete(__p[0]);
  }

  if (v12[0])
  {
    v12[1] = v12[0];
    operator delete(v12[0]);
  }

  *a1 = &unk_284D3CB00;
  IR::IRDataAttributes::IRDataAttributes((a1 + 12), a3);
  a1[31] = a4;
  return a1;
}

void sub_23A549038(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, void *a15, uint64_t a16)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  if (a15)
  {
    operator delete(a15);
  }

  _Unwind_Resume(exception_object);
}

void Phase::Controller::XTCBinauralSpatializer::~XTCBinauralSpatializer(void **this)
{
  *this = &unk_284D3CB00;
  IR::IRDataAttributes::~IRDataAttributes((this + 12));

  Phase::Controller::Spatializer::~Spatializer(this);
}

{
  *this = &unk_284D3CB00;
  IR::IRDataAttributes::~IRDataAttributes((this + 12));
  Phase::Controller::Spatializer::~Spatializer(this);

  JUMPOUT(0x23EE864A0);
}

void sub_23A5493E0(_Unwind_Exception *a1)
{
  __cxa_free_exception(v2);
  std::unique_ptr<Phase::Controller::HrirAsset>::reset[abi:ne200100]((v1 + 568), 0);
  IR::IRDataAttributes::~IRDataAttributes((v1 + 416));
  for (i = 352; i != 16; i -= 48)
  {
    Phase::Controller::SpatializerFilterHandle::~SpatializerFilterHandle((v1 + i));
  }

  v5 = *(v1 + 56);
  if (v5)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v5);
  }

  std::__shared_weak_count::~__shared_weak_count(v1);
  operator delete(v6);
  _Unwind_Resume(a1);
}

void Phase::Controller::XTCBinauralEncoder::SetDeviceOrientation(void *a1, unsigned int a2)
{
  v11 = *MEMORY[0x277D85DE8];
  v2 = a1 + 5;
  if (!a1[6 * a2 + 5])
  {
    v3 = a2 - 1;
    if (a2)
    {
      v3 = a2 + 1;
    }

    if (a2)
    {
      v4 = v3;
    }

    else
    {
      v4 = 0;
    }

    if (!v2[6 * v4] && !a1[23] && !a1[29] && !*v2)
    {
      v5 = **(Phase::Logger::GetInstance(a1) + 592);
      if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
      {
        *buf = 136315394;
        v8 = "XTCBinauralSpatializer.mm";
        v9 = 1024;
        v10 = 410;
        _os_log_impl(&dword_23A302000, v5, OS_LOG_TYPE_ERROR, "%25s:%-5d EXCEPTION (std::runtime_error): [XTCBinauralSpatializer] No valid HRIR filter database for current orientation.", buf, 0x12u);
      }

      exception = __cxa_allocate_exception(0x10uLL);
      std::runtime_error::runtime_error(exception, "[XTCBinauralSpatializer] No valid HRIR filter database for current orientation.");
    }
  }

  operator new();
}

void std::__shared_ptr_emplace<Phase::Controller::XTCBinauralEncoder::FilterMetadata>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_284D3CB38;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x23EE864A0);
}

void std::__shared_ptr_emplace<Phase::Controller::XTCBinauralEncoder>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_284D3CB90;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x23EE864A0);
}

void Phase::Controller::XTCBinauralEncoder::~XTCBinauralEncoder(uint64_t **this)
{
  Phase::Controller::XTCBinauralEncoder::~XTCBinauralEncoder(this);

  JUMPOUT(0x23EE864A0);
}

{
  *this = &unk_284D3CBC8;
  std::unique_ptr<Phase::Controller::HrirAsset>::reset[abi:ne200100](this + 68, 0);
  IR::IRDataAttributes::~IRDataAttributes((this + 49));
  for (i = 0; i != -42; i -= 6)
  {
    v3 = this[i + 46];
    if (v3)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v3);
    }

    v4 = this[i + 44];
    if (v4)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v4);
    }

    v5 = this[i + 42];
    if (v5)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v5);
    }
  }

  v6 = this[4];
  if (v6)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v6);
  }
}

void Phase::Controller::XTCBinauralEncoder::Initialize(IR::IRData **this)
{
  __p[35] = *MEMORY[0x277D85DE8];
  IR::IRDataLoader::instance(this);
  cf = 0;
  memset(__p, 0, 24);
  IR::IRDataLoader::load();
  v2 = *v25;
  v25[0] = 0;
  v25[1] = 0;
  v3 = this[4];
  *(this + 3) = v2;
  if (v3)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v3);
    if (v25[1])
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v25[1]);
    }
  }

  if (__p[0])
  {
    __p[1] = __p[0];
    operator delete(__p[0]);
  }

  if (cf)
  {
    CFRelease(cf);
  }

  *(this + 94) = IR::IRData::getFilterLength(this[3]);
  IR::IRData::getMaxDelay(this[3]);
  *(this + 95) = v4;
  v5 = v4 + *(this + 94);
  v6 = v5;
  if ((v5 ^ (v5 - 1)) <= v5 - 1)
  {
    v7 = SLODWORD(v5) >> 23;
    if ((LODWORD(v5) & 0x7FFFFF) != 0)
    {
      LOBYTE(v7) = v7 + 1;
    }

    v6 = (1 << (v7 - 127));
  }

  *(this + 96) = v6;
  if (IR::IRData::getNumDimensions(this[3]) <= 2)
  {
    v8 = *(this + 96);
    v25[0] = this[2];
    *buf = 0;
    LODWORD(v24[0]) = v8;
    std::allocate_shared[abi:ne200100]<Phase::Controller::SpatializerFilterDatabase,std::allocator<Phase::Controller::SpatializerFilterDatabase>,Phase::Controller::Spatializer const*&,Phase::Controller::SpatializerEncoder const*&,unsigned int &,0>();
  }

  CoordinateTree = IR::IRData::getCoordinateTree(v25, this[3]);
  if (LODWORD(v25[0]) == 5)
  {
    v10 = 0;
    while (1)
    {
      v11 = v25[1];
      if (v26 != v25[1])
      {
        v12 = (v26 - v25[1]) >> 2;
        if (v12 <= 1)
        {
          v12 = 1;
        }

        do
        {
          if (*v11 == v10)
          {
            *(this + 97) = v10;
            v13 = *(this + 96);
            *buf = this[2];
            v24[0] = 0;
            LODWORD(v23) = v13;
            std::allocate_shared[abi:ne200100]<Phase::Controller::SpatializerFilterDatabase,std::allocator<Phase::Controller::SpatializerFilterDatabase>,Phase::Controller::Spatializer const*&,Phase::Controller::SpatializerEncoder const*&,unsigned int &,0>();
          }

          ++v11;
          --v12;
        }

        while (v12);
      }

      if (++v10 == 7)
      {
        v14 = 0;
        v24[0] = v24;
        v24[1] = v24;
        v24[2] = 0;
        for (i = 5; !this[i]; i += 6)
        {
          v16 = v14 - 1;
          if (v14)
          {
            v16 = v14 + 1;
          }

          if (!v14)
          {
            v16 = 0;
          }

          if (this[6 * v16 + 5])
          {
            break;
          }

          if (++v14 == 7)
          {
            v17 = **(Phase::Logger::GetInstance(CoordinateTree) + 592);
            if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
            {
              (*(*this + 5))(buf, this);
              v18 = v30 >= 0 ? buf : *buf;
              LODWORD(__p[0]) = 136315650;
              *(__p + 4) = "XTCBinauralSpatializer.mm";
              WORD2(__p[1]) = 1024;
              *(&__p[1] + 6) = 131;
              WORD1(__p[2]) = 2080;
              *(&__p[2] + 4) = v18;
              _os_log_impl(&dword_23A302000, v17, OS_LOG_TYPE_ERROR, "%25s:%-5d [XTCBinauralSpatializer] %s Initialize: IR asset has orientation dimension but no valid data.", __p, 0x1Cu);
              if (v30 < 0)
              {
                operator delete(*buf);
              }
            }

            if (this[23] || this[29])
            {
              std::__list_imp<std::string>::clear(v24);
              __p[0] = &v27;
              std::vector<IR::IRCoordinateTree>::__destroy_vector::operator()[abi:ne200100](__p);
              if (v25[1])
              {
                v26 = v25[1];
                operator delete(v25[1]);
              }

              v20 = CAGetDeviceOrientation();
              Phase::Controller::XTCBinauralEncoder::SetDeviceOrientation(this, v20);
            }

            v21 = **(Phase::Logger::GetInstance(v19) + 592);
            if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
            {
              LODWORD(__p[0]) = 136315394;
              *(__p + 4) = "XTCBinauralSpatializer.mm";
              WORD2(__p[1]) = 1024;
              *(&__p[1] + 6) = 136;
              _os_log_impl(&dword_23A302000, v21, OS_LOG_TYPE_ERROR, "%25s:%-5d POSTCONDITION: IsDeviceOrientationSupported(static_cast<CAOrientation>(kDefaultDeviceOrientation)) is false.", __p, 0x12u);
            }

            exception = __cxa_allocate_exception(0x10uLL);
            std::runtime_error::runtime_error(exception, "POSTCONDITION: IsDeviceOrientationSupported(static_cast<CAOrientation>(kDefaultDeviceOrientation)) is false.");
          }
        }

        Phase::Device::GetOrientationString(__p);
        operator new();
      }
    }
  }

  std::terminate();
}

void sub_23A54A40C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14, int a15, __int16 a16, char a17, char a18, uint64_t a19, uint64_t a20, uint64_t a21, char a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, char a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, void *a36, uint64_t a37, int a38, __int16 a39, char a40, char a41)
{
  std::__list_imp<std::string>::clear(&a19);
  IR::IRCoordinateTree::~IRCoordinateTree(&a22);
  _Unwind_Resume(a1);
}

uint64_t Phase::Controller::XTCBinauralEncoder::GetFiltersAndDelays(uint64_t a1, float *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v21 = *MEMORY[0x277D85DE8];
  if (!*(a1 + 24))
  {
    v12 = **(Phase::Logger::GetInstance(a1) + 592);
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315394;
      v18 = "XTCBinauralSpatializer.mm";
      v19 = 1024;
      v20 = 217;
      _os_log_impl(&dword_23A302000, v12, OS_LOG_TYPE_ERROR, "%25s:%-5d PRECONDITION: nullptr != mIRData.get() is false.", buf, 0x12u);
    }

    exception = __cxa_allocate_exception(0x10uLL);
    std::logic_error::logic_error(exception, "PRECONDITION: nullptr != mIRData.get() is false.");
  }

  Phase::Controller::SpatializerEncoder::VerifyCoordinateRanges(a1, a2);
  IR::IRCoordinates::IRCoordinates(buf);
  IR::IRCoordinates::set();
  IR::IRCoordinates::set();
  if (IR::IRData::getNumDimensions(*(a1 + 24)) >= 3)
  {
    IR::IRCoordinates::set();
  }

  if (IR::IRData::getNumFiltersPerSpatialPoint(*(a1 + 24)) != 2)
  {
    std::terminate();
  }

  FilterLength = IR::IRData::getFilterLength(*(a1 + 24));
  std::vector<float>::vector[abi:ne200100](&__p, FilterLength);
  std::vector<std::vector<float>>::vector[abi:ne200100](v16, 2uLL);
  if (__p)
  {
    v15 = __p;
    operator delete(__p);
  }

  std::vector<float>::vector[abi:ne200100](&__p, 2uLL);
  IR::IRData::getInterpolatedTimeDomainCoeffs();
  v9 = 0;
  for (i = 0; i < (*(*a1 + 48))(a1); ++i)
  {
    if (0xAAAAAAAAAAAAAAABLL * ((v16[1] - v16[0]) >> 3) <= i)
    {
      std::vector<std::vector<float>>::__throw_out_of_range[abi:ne200100]();
    }

    memcpy(*(a4 + 8 * i), *(v16[0] + v9), 4 * *(a1 + 376));
    *(a5 + 4 * i) = *(__p + i);
    v9 += 24;
  }

  if (__p)
  {
    v15 = __p;
    operator delete(__p);
  }

  __p = v16;
  std::vector<std::vector<float>>::__destroy_vector::operator()[abi:ne200100](&__p);
  return 1;
}

_BYTE *Phase::Controller::XTCBinauralEncoder::GetDescription@<X0>(Phase::Controller::XTCBinauralEncoder *this@<X0>, _BYTE *a2@<X8>)
{
  v10 = *MEMORY[0x277D85DE8];
  v3 = *(this + 94);
  v4 = (*(*this + 48))();
  Phase::Device::GetOrientationString(__p);
  if (v8 >= 0)
  {
    v5 = __p;
  }

  else
  {
    v5 = __p[0];
  }

  snprintf(__str, 0x100uLL, "<Encoder Type: XTCBinaural, Filter Length: %d, Output Channel Count: %d, Device Orientation: %s>", v3, v4, v5);
  if (v8 < 0)
  {
    operator delete(__p[0]);
  }

  return std::string::basic_string[abi:ne200100]<0>(a2, __str);
}

uint64_t Phase::Controller::XTCBinauralEncoder::GetCoordinateCount(Phase::Controller::XTCBinauralEncoder *this, const Phase::Controller::SpatializerFilterHandle *a2)
{
  result = 0;
  for (i = 40; i != 376; i += 48)
  {
    v5 = *(this + i);
    if (v5)
    {
      result = (*v5 + result);
    }
  }

  return result;
}

unint64_t Phase::Controller::XTCBinauralEncoder::GetWorkBufferSizeInBytes(void *a1, void *a2, float *a3, __n128 a4, __n128 a5)
{
  v6 = a1[69];
  if (*v6 <= *a3)
  {
    v7 = 0;
  }

  else
  {
    v7 = 8 * *(*a2 + 8);
  }

  if (*(a2[4] + 8) == 1)
  {
    a4.n128_f32[0] = *a3;
    a5.n128_f32[0] = *v6;
    v8 = (*(*a1 + 56))(a1, a4, a5);
    v9 = 4 * ((*(*a1 + 48))(a1) * v8);
  }

  else
  {
    v9 = 0;
  }

  if (v7 <= v9)
  {
    return v9;
  }

  else
  {
    return v7;
  }
}

uint64_t Phase::Controller::XTCBinauralEncoder::GetNearestFilter(Phase::Logger *a1, uint64_t a2, float *a3, uint64_t a4)
{
  v38 = *MEMORY[0x277D85DE8];
  if (!*a2)
  {
    v28 = **(Phase::Logger::GetInstance(a1) + 592);
    if (os_log_type_enabled(v28, OS_LOG_TYPE_ERROR))
    {
      v34 = 136315394;
      v35 = "XTCBinauralSpatializer.mm";
      v36 = 1024;
      v37 = 295;
      _os_log_impl(&dword_23A302000, v28, OS_LOG_TYPE_ERROR, "%25s:%-5d PRECONDITION: inHandle is false.", &v34, 0x12u);
    }

    exception = __cxa_allocate_exception(0x10uLL);
    std::invalid_argument::invalid_argument[abi:ne200100](exception, "PRECONDITION: inHandle is false.");
  }

  v9 = Phase::Controller::SpatializerEncoder::VerifyCoordinateRanges(a1, a3);
  if (*(*(a2 + 32) + 8) == 1)
  {
    if (!a4)
    {
      v30 = **(Phase::Logger::GetInstance(v8) + 592);
      if (os_log_type_enabled(v30, OS_LOG_TYPE_ERROR))
      {
        v34 = 136315394;
        v35 = "XTCBinauralSpatializer.mm";
        v36 = 1024;
        v37 = 306;
        _os_log_impl(&dword_23A302000, v30, OS_LOG_TYPE_ERROR, "%25s:%-5d PRECONDITION: nullptr != pInWorkBuffer is false.", &v34, 0x12u);
      }

      v31 = __cxa_allocate_exception(0x10uLL);
      std::invalid_argument::invalid_argument[abi:ne200100](v31, "PRECONDITION: nullptr != pInWorkBuffer is false.");
    }

    v10 = (*(*a1 + 48))(a1, v9);
    if (v10 != 2)
    {
      v32 = **(Phase::Logger::GetInstance(v10) + 592);
      if (os_log_type_enabled(v32, OS_LOG_TYPE_ERROR))
      {
        v34 = 136315394;
        v35 = "XTCBinauralSpatializer.mm";
        v36 = 1024;
        v37 = 307;
        _os_log_impl(&dword_23A302000, v32, OS_LOG_TYPE_ERROR, "%25s:%-5d PRECONDITION: 2 == GetOutputChannelCount() is false.", &v34, 0x12u);
      }

      v33 = __cxa_allocate_exception(0x10uLL);
      std::logic_error::logic_error(v33, "PRECONDITION: 2 == GetOutputChannelCount() is false.");
    }

    v11 = a3[2];
    if (v11 <= 0.0)
    {
      v12 = a3[2];
    }

    else
    {
      v12 = 360.0 - v11;
    }

    NearestFilterData = Phase::Controller::SpatializerFilterDatabase::GetNearestFilterData(*a2, a3[1], v12);
    v34 = LODWORD(v12);
    v35 = vrev64_s32(*a3);
    v14 = *(a1 + 69);
    MiddleFilter = Phase::Controller::SpatializerFilterDatabase::GetMiddleFilter(*a2, 3);
    v17 = Phase::Controller::BinauralUtility::ApplyInHeadFilter(v14, NearestFilterData, MiddleFilter, *(*a2 + 8), &v34, a4, v16);
    v18 = (*(*a1 + 56))(a1, a2);
    if (v17 == a4)
    {
      if (v18)
      {
        v27 = a4;
        do
        {
          *v27 = vrev64_s32(*v27);
          ++v27;
          --v18;
        }

        while (v18);
      }
    }

    else if (v18)
    {
      v19 = (v17 + 4);
      v20 = (a4 + 4);
      do
      {
        *(v20 - 1) = *v19;
        *v20 = *(v19 - 1);
        v20 += 2;
        v19 += 2;
        --v18;
      }

      while (v18);
    }

    return a4;
  }

  else
  {
    v21 = *(a1 + 69);
    v22 = Phase::Controller::SpatializerFilterDatabase::GetNearestFilterData(*a2, a3[1], a3[2]);
    v23 = Phase::Controller::SpatializerFilterDatabase::GetMiddleFilter(*a2, 3);
    v25 = *(*a2 + 8);

    return Phase::Controller::BinauralUtility::ApplyInHeadFilter(v21, v22, v23, v25, a3, a4, v24);
  }
}

void IR::IRCoordinateTree::~IRCoordinateTree(IR::IRCoordinateTree *this)
{
  v3 = (this + 32);
  std::vector<IR::IRCoordinateTree>::__destroy_vector::operator()[abi:ne200100](&v3);
  v2 = *(this + 1);
  if (v2)
  {
    *(this + 2) = v2;
    operator delete(v2);
  }
}

uint64_t std::ostream_iterator<std::string,char,std::char_traits<char>>::operator=[abi:ne200100](uint64_t a1, uint64_t a2)
{
  v3 = *a1;
  v4 = *(a2 + 8);
  if (*(a2 + 23) >= 0)
  {
    v5 = *(a2 + 23);
  }

  else
  {
    a2 = *a2;
    v5 = v4;
  }

  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v3, a2, v5);
  v6 = *(a1 + 8);
  if (v6)
  {
    v7 = strlen(*(a1 + 8));
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(*a1, v6, v7);
  }

  return a1;
}

void std::__list_imp<std::string>::clear(void *a1)
{
  if (a1[2])
  {
    v2 = a1[1];
    v3 = *(*a1 + 8);
    v4 = *v2;
    v4[1] = v3;
    *v3 = v4;
    a1[2] = 0;
    while (v2 != a1)
    {
      v5 = *(v2 + 8);
      std::__list_imp<std::string>::__delete_node[abi:ne200100](a1, v2);
      v2 = v5;
    }
  }
}

void std::__list_imp<std::string>::__delete_node[abi:ne200100](int a1, void **__p)
{
  if (*(__p + 39) < 0)
  {
    operator delete(__p[2]);
  }

  operator delete(__p);
}

void std::vector<IR::IRCoordinateTree>::__destroy_vector::operator()[abi:ne200100](void ***a1)
{
  v1 = *a1;
  v2 = **a1;
  if (v2)
  {
    v4 = v1[1];
    v5 = **a1;
    if (v4 != v2)
    {
      v6 = v4 - 24;
      do
      {
        v9 = v6;
        std::vector<IR::IRCoordinateTree>::__destroy_vector::operator()[abi:ne200100](&v9);
        v7 = *(v6 - 24);
        if (v7)
        {
          *(v6 - 16) = v7;
          operator delete(v7);
        }

        v8 = (v6 - 32);
        v6 -= 56;
      }

      while (v8 != v2);
      v5 = **a1;
    }

    v1[1] = v2;

    operator delete(v5);
  }
}

Phase::Zeppelin::HorizontalSliceDatabaseContext *Phase::Zeppelin::HorizontalSliceDatabaseContext::HorizontalSliceDatabaseContext(Phase::Zeppelin::HorizontalSliceDatabaseContext *this)
{
  *this = 181;
  DefaultThirdOctaveBandCenterFrequencies = Phase::Zeppelin::AcousticsUtils::GetDefaultThirdOctaveBandCenterFrequencies(this);
  *(this + 2) = 0;
  *(this + 3) = 0;
  *(this + 1) = 0;
  std::vector<float>::__init_with_size[abi:ne200100]<float *,float *>(this + 8, *DefaultThirdOctaveBandCenterFrequencies, DefaultThirdOctaveBandCenterFrequencies[1], (DefaultThirdOctaveBandCenterFrequencies[1] - *DefaultThirdOctaveBandCenterFrequencies) >> 2);
  return this;
}

Phase::Zeppelin::HorizontalSliceDatabaseContext *Phase::Zeppelin::HorizontalSliceDatabaseContext::HorizontalSliceDatabaseContext(Phase::Zeppelin::HorizontalSliceDatabaseContext *this, int a2, const float *a3, unint64_t a4)
{
  v14 = *MEMORY[0x277D85DE8];
  *this = a2;
  *(this + 1) = 0;
  v5 = this + 8;
  *(this + 2) = 0;
  *(this + 3) = 0;
  if (!a2 || !a3 || !a4)
  {
    v12 = **(Phase::Logger::GetInstance(this) + 944);
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315394;
      *&buf[4] = "ZeppelinContexts.cpp";
      *&buf[12] = 1024;
      *&buf[14] = 46;
      _os_log_impl(&dword_23A302000, v12, OS_LOG_TYPE_ERROR, "%25s:%-5d EXCEPTION (std::invalid_argument) [(!SphereSampling::IsDatabaseContextValid(inNumAngles, kNumElevation, pInCenterFrequenciesArr, inCenterFrequenciesArrLength)) is true]: ErrorDescriptions::kErrDescr_invalidHorizontalSliceDatabaseDefinition", buf, 0x12u);
    }

    exception = __cxa_allocate_exception(0x10uLL);
    std::logic_error::logic_error(exception, Phase::Zeppelin::ErrorDescriptions::kErrDescr_invalidHorizontalSliceDatabaseDefinition);
LABEL_14:
    exception->__vftable = (MEMORY[0x277D828F8] + 16);
  }

  memset(buf, 0, sizeof(buf));
  std::vector<float>::__init_with_size[abi:ne200100]<float const*,float const*>(buf, a3, &a3[a4], a4);
  v6 = *v5;
  if (*v5)
  {
    *(this + 2) = v6;
    operator delete(v6);
    *v5 = 0;
    *(v5 + 1) = 0;
    *(v5 + 2) = 0;
  }

  v7 = *buf;
  *(this + 8) = *buf;
  *(this + 3) = *&buf[16];
  for (i = v7; i != *(&v7 + 1); ++i)
  {
    if (*i <= 0.0)
    {
      v10 = **(Phase::Logger::GetInstance(v6) + 944);
      if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
      {
        *buf = 136315394;
        *&buf[4] = "ZeppelinContexts.cpp";
        *&buf[12] = 1024;
        *&buf[14] = 53;
        _os_log_impl(&dword_23A302000, v10, OS_LOG_TYPE_ERROR, "%25s:%-5d EXCEPTION (std::invalid_argument) [(!AcousticsUtils::AreCenterFrequenciesValid(mCenterFrequencies)) is true]: ErrorDescriptions::kErrDescr_invalidCenterFrequencies", buf, 0x12u);
      }

      exception = __cxa_allocate_exception(0x10uLL);
      std::logic_error::logic_error(exception, Phase::Zeppelin::ErrorDescriptions::kErrDescr_invalidCenterFrequencies);
      goto LABEL_14;
    }
  }

  return this;
}

void sub_23A54B3C4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void **a10)
{
  __cxa_free_exception(v11);
  v13 = *a10;
  if (*a10)
  {
    *(v10 + 16) = v13;
    operator delete(v13);
  }

  _Unwind_Resume(a1);
}

uint64_t Phase::Zeppelin::ScsRadiationContext::ScsRadiationContext(uint64_t result, unsigned int a2, int a3, double a4, double a5)
{
  v11 = *MEMORY[0x277D85DE8];
  *result = a4;
  *(result + 8) = a5;
  *(result + 16) = a2;
  *(result + 20) = a3;
  if (a2 > 0xC || a5 > 3.14159265 || a4 <= 0.0 || a5 <= 0.0)
  {
    v5 = **(Phase::Logger::GetInstance(result) + 944);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      v7 = 136315394;
      v8 = "ZeppelinContexts.cpp";
      v9 = 1024;
      v10 = 275;
      _os_log_impl(&dword_23A302000, v5, OS_LOG_TYPE_ERROR, "%25s:%-5d EXCEPTION (std::invalid_argument) [(!ScsRadiationContext::IsValid(mSphereRadius, mCapHalfAngleRad, mNumberOfExpansionTerms)) is true]: ErrorDescriptions::kErrDescr_invalidScsDefinition", &v7, 0x12u);
    }

    exception = __cxa_allocate_exception(0x10uLL);
    std::invalid_argument::invalid_argument[abi:ne200100](exception, Phase::Zeppelin::ErrorDescriptions::kErrDescr_invalidScsDefinition);
  }

  return result;
}

float *Phase::Zeppelin::PropagationMediumContext::PropagationMediumContext(float *this, float a2, float a3)
{
  v9 = *MEMORY[0x277D85DE8];
  *this = a2;
  this[1] = a3;
  if (a2 <= 0.0 || a3 <= 0.0)
  {
    v3 = **(Phase::Logger::GetInstance(this) + 944);
    if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
    {
      v5 = 136315394;
      v6 = "ZeppelinContexts.cpp";
      v7 = 1024;
      v8 = 364;
      _os_log_impl(&dword_23A302000, v3, OS_LOG_TYPE_ERROR, "%25s:%-5d EXCEPTION (std::invalid_argument) [(!PropagationMediumContext::IsValid(mSpeedOfSound, mMediumDensity)) is true]: ErrorDescriptions::kErrDescr_invalidPropagationMedium", &v5, 0x12u);
    }

    exception = __cxa_allocate_exception(0x10uLL);
    std::invalid_argument::invalid_argument[abi:ne200100](exception, Phase::Zeppelin::ErrorDescriptions::kErrDescr_invalidPropagationMedium);
  }

  return this;
}

void Phase::Zeppelin::SCSRadiationPrecomputedData::~SCSRadiationPrecomputedData(Phase::Zeppelin::SCSRadiationPrecomputedData *this)
{
  v2 = *(this + 1);
  *(this + 1) = 0;
  if (v2)
  {
    std::unique_ptr<Phase::Zeppelin::SphereSampling::NDimEquiangularHalfCircleData<unsigned int,double>>::~unique_ptr[abi:ne200100](v2 + 3);
    std::unique_ptr<Phase::Zeppelin::SphereSampling::NDimEquiangularHalfCircleData<unsigned int,double>>::~unique_ptr[abi:ne200100](v2 + 2);
    std::unique_ptr<Phase::Zeppelin::SphereSampling::NDimEquiangularData<unsigned int,double>>::~unique_ptr[abi:ne200100](v2 + 1);
    v3 = std::unique_ptr<Phase::Zeppelin::SphereSampling::NDimEquiangularData<unsigned int,double>>::~unique_ptr[abi:ne200100](v2);
    MEMORY[0x23EE864A0](v3, 0x20C40DC1BFBCFLL);
  }

  v4 = *this;
  *this = 0;
  if (v4)
  {
    Phase::Zeppelin::SCSRadiationSphereSamplingIndependentPrecomputedData::~SCSRadiationSphereSamplingIndependentPrecomputedData(v4);
    MEMORY[0x23EE864A0]();
  }
}

uint64_t Phase::Zeppelin::SphereSampling::NDimEquiangularHalfCircleData<float,double>::Populate(uint64_t result, uint64_t a2, int a3)
{
  v3 = *(result + 8) - *result;
  if (v3)
  {
    v6 = result;
    v7 = 0;
    v8 = 0;
    v9 = *(result + 28);
    v10 = v3 >> 2;
    v11 = *(result + 24);
    v12 = 0.0;
    do
    {
      v13 = *(*v6 + 4 * v7);
      if (a3)
      {
        result = std::function<double ()(float,float)>::operator()(*(a2 + 24), 0.0, *(*v6 + 4 * v7));
        v12 = v14;
      }

      if (v11)
      {
        for (i = 0; i != v11; ++i)
        {
          v16 = (v9 * i) * 0.0174532925;
          result = std::function<double ()(float,float)>::operator()(*(a2 + 24), v16, v13);
          if (a3)
          {
            v17 = v17 / v12;
          }

          *(*(v6[4] + 8 * i) + 8 * v7) = v17;
        }
      }

      v7 = ++v8;
    }

    while (v10 > v8);
  }

  return result;
}

void Phase::Zeppelin::HorizontalSliceDatabase::HorizontalSliceDatabase(Phase::Logger *a1, unsigned int *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v17 = *MEMORY[0x277D85DE8];
  *a1 = 0;
  if (a2 && a3 && a4 && a5)
  {
    memset(v12, 0, sizeof(v12));
    std::vector<float>::__init_with_size[abi:ne200100]<float *,float *>(v12, *(a2 + 1), *(a2 + 2), (*(a2 + 2) - *(a2 + 1)) >> 2);
    Phase::Zeppelin::SCSRadiationPrecomputedData::SCSRadiationPrecomputedData(&v11, v12, *a2, a3, a4, a5);
  }

  v9 = **(Phase::Logger::GetInstance(a1) + 944);
  if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
  {
    *buf = 136315394;
    v14 = "ZeppelinContexts.cpp";
    v15 = 1024;
    v16 = 597;
    _os_log_impl(&dword_23A302000, v9, OS_LOG_TYPE_ERROR, "%25s:%-5d EXCEPTION (std::invalid_argument) [(nullptr == pInHorSlcDbContext || nullptr == pInScsRadiationCtx || nullptr == pInPropagationMediumCtx || nullptr == pInNormalizationCtx) is true]: ErrorDescriptions::kErrDescr_nullPtr", buf, 0x12u);
  }

  exception = __cxa_allocate_exception(0x10uLL);
  std::logic_error::logic_error(exception, Phase::Zeppelin::ErrorDescriptions::kErrDescr_nullPtr);
  exception->__vftable = (MEMORY[0x277D828F8] + 16);
}

uint64_t Phase::Zeppelin::SphereSampling::NDimEquiangularHalfCircleData<float,double>::GetValuesForAllDimensionsAt(uint64_t a1, int a2, float a3)
{
  if (a2)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    std::invalid_argument::invalid_argument[abi:ne200100](exception, Phase::Zeppelin::ErrorDescriptions::kErrDescr_invalidLookupMode);
  }

  return *(*(a1 + 32) + 8 * ((llroundf((a3 * 57.296) / *(a1 + 28)) % *(a1 + 24) + *(a1 + 24)) % *(a1 + 24)));
}

void Phase::Zeppelin::HorizontalSliceDatabase::GenerateDatabaseForNewFrequencyResolution(Phase::Zeppelin::HorizontalSliceDatabase *this, const float *a2, uint64_t a3)
{
  v11 = *MEMORY[0x277D85DE8];
  if (a2)
  {
    if (a3)
    {
      operator new();
    }

    v5 = **(Phase::Logger::GetInstance(this) + 944);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      buf = 136315394;
      buf_4 = "ZeppelinContexts.cpp";
      v9 = 1024;
      v10 = 673;
      _os_log_impl(&dword_23A302000, v5, OS_LOG_TYPE_ERROR, "%25s:%-5d EXCEPTION (std::invalid_argument): HorizontalSliceDatabase: The passed frequencies array length is smaller than or equal to zero.", &buf, 0x12u);
    }

    exception = __cxa_allocate_exception(0x10uLL);
    std::invalid_argument::invalid_argument[abi:ne200100](exception, "HorizontalSliceDatabase: The passed frequencies array length is smaller than or equal to zero.");
  }

  v3 = **(Phase::Logger::GetInstance(this) + 944);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
  {
    buf = 136315394;
    buf_4 = "ZeppelinContexts.cpp";
    v9 = 1024;
    v10 = 667;
    _os_log_impl(&dword_23A302000, v3, OS_LOG_TYPE_ERROR, "%25s:%-5d EXCEPTION (std::invalid_argument) [(nullptr == pInNewCenterFrequenciesArr) is true]: ErrorDescriptions::kErrDescr_nullPtr", &buf, 0x12u);
  }

  v4 = __cxa_allocate_exception(0x10uLL);
  std::invalid_argument::invalid_argument[abi:ne200100](v4, Phase::Zeppelin::ErrorDescriptions::kErrDescr_nullPtr);
}

uint64_t std::unique_ptr<Phase::Zeppelin::SphereSampling::NDimEquiangularHalfCircleData<float,double>>::reset[abi:ne200100](uint64_t *a1, uint64_t a2)
{
  result = *a1;
  *a1 = a2;
  if (result)
  {
    Phase::Zeppelin::SphereSampling::NDimEquiangularHalfCircleData<float,double>::~NDimEquiangularHalfCircleData(result);

    JUMPOUT(0x23EE864A0);
  }

  return result;
}

void Phase::Zeppelin::SphereSampling::NDimEquiangularHalfCircleData<float,double>::NDimEquiangularHalfCircleData(uint64_t a1, int a2, uint64_t *a3)
{
  *a1 = 0;
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  std::vector<float>::__init_with_size[abi:ne200100]<float *,float *>(a1, *a3, a3[1], (a3[1] - *a3) >> 2);
  *(a1 + 24) = a2;
  *(a1 + 28) = 180.0 / (a2 - 1);
  operator new[]();
}

void sub_23A54C9C0(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

uint64_t std::__function::__value_func<double ()(float,float)>::~__value_func[abi:ne200100](uint64_t a1)
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

uint64_t std::function<double ()(float,float)>::operator()(uint64_t a1, float a2, float a3)
{
  v5 = a2;
  v4 = a3;
  if (!a1)
  {
    std::__throw_bad_function_call[abi:ne200100]();
  }

  return (*(*a1 + 48))(a1, &v5, &v4);
}

uint64_t std::__function::__value_func<double ()(float,float)>::__value_func[abi:ne200100](uint64_t a1, uint64_t a2)
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

void *std::__function::__func<Phase::Zeppelin::HorizontalSliceDatabase::HorizontalSliceDatabase(Phase::Zeppelin::HorizontalSliceDatabaseContext const*,Phase::Zeppelin::ScsRadiationContext *,Phase::Zeppelin::PropagationMediumContext const*,Phase::Zeppelin::NormalizationContext const*)::$_0,std::allocator<Phase::Zeppelin::HorizontalSliceDatabase::HorizontalSliceDatabase(Phase::Zeppelin::HorizontalSliceDatabaseContext const*,Phase::Zeppelin::ScsRadiationContext *,Phase::Zeppelin::PropagationMediumContext const*,Phase::Zeppelin::NormalizationContext const*)::$_0>,double ()(float,float)>::~__func(void *a1)
{
  *a1 = &unk_284D3CC90;
  v2 = a1[1];
  if (v2)
  {
    a1[2] = v2;
    operator delete(v2);
  }

  return a1;
}

void std::__function::__func<Phase::Zeppelin::HorizontalSliceDatabase::HorizontalSliceDatabase(Phase::Zeppelin::HorizontalSliceDatabaseContext const*,Phase::Zeppelin::ScsRadiationContext *,Phase::Zeppelin::PropagationMediumContext const*,Phase::Zeppelin::NormalizationContext const*)::$_0,std::allocator<Phase::Zeppelin::HorizontalSliceDatabase::HorizontalSliceDatabase(Phase::Zeppelin::HorizontalSliceDatabaseContext const*,Phase::Zeppelin::ScsRadiationContext *,Phase::Zeppelin::PropagationMediumContext const*,Phase::Zeppelin::NormalizationContext const*)::$_0>,double ()(float,float)>::~__func(void *a1)
{
  *a1 = &unk_284D3CC90;
  v2 = a1[1];
  if (v2)
  {
    a1[2] = v2;
    operator delete(v2);
  }

  JUMPOUT(0x23EE864A0);
}

__n128 std::__function::__func<Phase::Zeppelin::HorizontalSliceDatabase::HorizontalSliceDatabase(Phase::Zeppelin::HorizontalSliceDatabaseContext const*,Phase::Zeppelin::ScsRadiationContext *,Phase::Zeppelin::PropagationMediumContext const*,Phase::Zeppelin::NormalizationContext const*)::$_0,std::allocator<Phase::Zeppelin::HorizontalSliceDatabase::HorizontalSliceDatabase(Phase::Zeppelin::HorizontalSliceDatabaseContext const*,Phase::Zeppelin::ScsRadiationContext *,Phase::Zeppelin::PropagationMediumContext const*,Phase::Zeppelin::NormalizationContext const*)::$_0>,double ()(float,float)>::__clone(__n128 *a1, __n128 *a2)
{
  a2->n128_u64[0] = &unk_284D3CC90;
  a2[1].n128_u64[0] = 0;
  a2[1].n128_u64[1] = 0;
  a2->n128_u64[1] = 0;
  std::vector<float>::__init_with_size[abi:ne200100]<float *,float *>(&a2->n128_i64[1], a1->n128_i64[1], a1[1].n128_i64[0], (a1[1].n128_u64[0] - a1->n128_u64[1]) >> 2);
  result = a1[2];
  a2[2] = result;
  return result;
}

void std::__function::__func<Phase::Zeppelin::HorizontalSliceDatabase::HorizontalSliceDatabase(Phase::Zeppelin::HorizontalSliceDatabaseContext const*,Phase::Zeppelin::ScsRadiationContext *,Phase::Zeppelin::PropagationMediumContext const*,Phase::Zeppelin::NormalizationContext const*)::$_0,std::allocator<Phase::Zeppelin::HorizontalSliceDatabase::HorizontalSliceDatabase(Phase::Zeppelin::HorizontalSliceDatabaseContext const*,Phase::Zeppelin::ScsRadiationContext *,Phase::Zeppelin::PropagationMediumContext const*,Phase::Zeppelin::NormalizationContext const*)::$_0>,double ()(float,float)>::destroy(uint64_t a1)
{
  v2 = *(a1 + 8);
  if (v2)
  {
    *(a1 + 16) = v2;
    operator delete(v2);
  }
}

void std::__function::__func<Phase::Zeppelin::HorizontalSliceDatabase::HorizontalSliceDatabase(Phase::Zeppelin::HorizontalSliceDatabaseContext const*,Phase::Zeppelin::ScsRadiationContext *,Phase::Zeppelin::PropagationMediumContext const*,Phase::Zeppelin::NormalizationContext const*)::$_0,std::allocator<Phase::Zeppelin::HorizontalSliceDatabase::HorizontalSliceDatabase(Phase::Zeppelin::HorizontalSliceDatabaseContext const*,Phase::Zeppelin::ScsRadiationContext *,Phase::Zeppelin::PropagationMediumContext const*,Phase::Zeppelin::NormalizationContext const*)::$_0>,double ()(float,float)>::destroy_deallocate(void *__p)
{
  v2 = __p[1];
  if (v2)
  {
    __p[2] = v2;
    operator delete(v2);
  }

  operator delete(__p);
}

double std::__function::__func<Phase::Zeppelin::HorizontalSliceDatabase::HorizontalSliceDatabase(Phase::Zeppelin::HorizontalSliceDatabaseContext const*,Phase::Zeppelin::ScsRadiationContext *,Phase::Zeppelin::PropagationMediumContext const*,Phase::Zeppelin::NormalizationContext const*)::$_0,std::allocator<Phase::Zeppelin::HorizontalSliceDatabase::HorizontalSliceDatabase(Phase::Zeppelin::HorizontalSliceDatabaseContext const*,Phase::Zeppelin::ScsRadiationContext *,Phase::Zeppelin::PropagationMediumContext const*,Phase::Zeppelin::NormalizationContext const*)::$_0>,double ()(float,float)>::operator()(uint64_t a1, float *a2, float *a3)
{
  v15 = *MEMORY[0x277D85DE8];
  v3 = *(a1 + 8);
  v4 = *(a1 + 16);
  if (v3 == v4)
  {
    v5 = *(a1 + 8);
  }

  else
  {
    v5 = *(a1 + 8);
    while (*v5 != *a3)
    {
      if (++v5 == v4)
      {
        v5 = *(a1 + 16);
        break;
      }
    }
  }

  if (v4 == v5)
  {
    v9 = **(Phase::Logger::GetInstance(a1) + 944);
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      v11 = 136315394;
      v12 = "ZeppelinContexts.cpp";
      v13 = 1024;
      v14 = 616;
      _os_log_impl(&dword_23A302000, v9, OS_LOG_TYPE_ERROR, "%25s:%-5d EXCEPTION (std::invalid_argument) [(it == centerFreqs.end()) is true]: ErrorDescriptions::kErrDescr_nonexistingFrequency", &v11, 0x12u);
    }

    exception = __cxa_allocate_exception(0x10uLL);
    std::invalid_argument::invalid_argument[abi:ne200100](exception, Phase::Zeppelin::ErrorDescriptions::kErrDescr_nonexistingFrequency);
  }

  v6 = Phase::Zeppelin::SCSRadiationModel::ComputeDirectionalResponse(*(a1 + 32), *(a1 + 40), (v5 - v3) >> 2, *a2);

  return hypot(v6, v7);
}

Phase::Logger *Phase::GetBandsFromCenterFrequencies<std::__wrap_iter<double const*>,double>(double **a1, double *a2, double *a3)
{
  v4 = a2;
  v40 = *MEMORY[0x277D85DE8];
  v6 = a3 - a2;
  *v35 = 0;
  *&v35[8] = 0;
  result = std::vector<Phase::FrequencyBand<double>>::vector[abi:ne200100](a1, v6);
  v8 = *a1;
  **a1 = 10.0;
  if (v6 == 31)
  {
    if (a3 == v4)
    {
      v10 = 0;
      v9 = 1;
      goto LABEL_23;
    }

    v15 = v4 + 1;
    v16 = &Phase::sThirdOctaveBandFrequencies;
    do
    {
      v17 = *v16++;
      v9 = *(v15 - 1) == v17;
      v18 = *(v15 - 1) != v17 || v15 == a3;
      ++v15;
    }

    while (!v18);
    goto LABEL_21;
  }

  if (v6 != 10)
  {
    v9 = 0;
LABEL_21:
    v10 = 0;
    goto LABEL_22;
  }

  if (a3 == v4)
  {
    v9 = 0;
    v10 = 1;
LABEL_23:
    v19 = 0;
    v20 = v8 + 2;
    v21 = v6 - 1;
    while (1)
    {
      v22 = *v4;
      if (v10)
      {
        v23 = fmin(v22 + v22 / 1.41421356 * 0.5, 22000.0);
        v24 = 20.3630682;
      }

      else if (v9)
      {
        v23 = fmin(v22 + v22 / 4.24264069 * 0.5, 22000.0);
        v24 = 17.6429774;
      }

      else
      {
        if ((*&v22 & 0x7FFFFFFFFFFFFFFFuLL) >= 0x7FF0000000000000)
        {
          v30 = **(Phase::Logger::GetInstance(result) + 1152);
          if (os_log_type_enabled(v30, OS_LOG_TYPE_ERROR))
          {
            v31 = *v4;
            *v35 = 136315650;
            *&v35[4] = "FrequencyResponse.hpp";
            *&v35[12] = 1024;
            *&v35[14] = 99;
            v36 = 2048;
            v37 = v31;
            _os_log_impl(&dword_23A302000, v30, OS_LOG_TYPE_ERROR, "%25s:%-5d EXCEPTION (std::invalid_argument) [!std::isfinite(inFrequenciesFirst[i]) is true]: GetBandsFromCenterFrequencies: bad center frequency: %fHz", v35, 0x1Cu);
          }

          exception = __cxa_allocate_exception(0x10uLL);
          std::logic_error::logic_error(exception, "GetBandsFromCenterFrequencies: bad center frequency: %fHz");
LABEL_52:
          exception->__vftable = (MEMORY[0x277D828F8] + 16);
        }

        if (v22 < 10.0)
        {
          v28 = **(Phase::Logger::GetInstance(result) + 1152);
          if (os_log_type_enabled(v28, OS_LOG_TYPE_ERROR))
          {
            v29 = *v4;
            *v35 = 136315906;
            *&v35[4] = "FrequencyResponse.hpp";
            *&v35[12] = 1024;
            *&v35[14] = 103;
            v36 = 2048;
            v37 = v29;
            v38 = 2048;
            v39 = 0x4024000000000000;
            _os_log_impl(&dword_23A302000, v28, OS_LOG_TYPE_ERROR, "%25s:%-5d EXCEPTION (std::invalid_argument) [inFrequenciesFirst[i] < lowestSupportedFreqInHz is true]: GetBandsFromCenterFrequencies: center frequency: %fHz cannot be below lowest supported frequency: %fHz", v35, 0x26u);
          }

          exception = __cxa_allocate_exception(0x10uLL);
          std::logic_error::logic_error(exception, "GetBandsFromCenterFrequencies: center frequency: %fHz cannot be below lowest supported frequency: %fHz");
          goto LABEL_52;
        }

        if (v22 > 22000.0)
        {
          v25 = **(Phase::Logger::GetInstance(result) + 1152);
          if (os_log_type_enabled(v25, OS_LOG_TYPE_ERROR))
          {
            v26 = *v4;
            *v35 = 136315906;
            *&v35[4] = "FrequencyResponse.hpp";
            *&v35[12] = 1024;
            *&v35[14] = 107;
            v36 = 2048;
            v37 = v26;
            v38 = 2048;
            v39 = 0x40D57C0000000000;
            _os_log_impl(&dword_23A302000, v25, OS_LOG_TYPE_ERROR, "%25s:%-5d EXCEPTION (std::invalid_argument) [inFrequenciesFirst[i] > highestSupportedFreqInHz is true]: GetBandsFromCenterFrequencies: center frequency: %fHz cannot be above highest supported frequency: %fHz", v35, 0x26u);
          }

          exception = __cxa_allocate_exception(0x10uLL);
          std::logic_error::logic_error(exception, "GetBandsFromCenterFrequencies: center frequency: %fHz cannot be above highest supported frequency: %fHz");
          goto LABEL_52;
        }

        if (v19 && *(v4 - 1) >= v22)
        {
          v32 = **(Phase::Logger::GetInstance(result) + 1152);
          if (os_log_type_enabled(v32, OS_LOG_TYPE_ERROR))
          {
            v33 = *(v4 - 1);
            v34 = *v4;
            *v35 = 136315906;
            *&v35[4] = "FrequencyResponse.hpp";
            *&v35[12] = 1024;
            *&v35[14] = 111;
            v36 = 2048;
            v37 = v33;
            v38 = 2048;
            v39 = *&v34;
            _os_log_impl(&dword_23A302000, v32, OS_LOG_TYPE_ERROR, "%25s:%-5d EXCEPTION (std::invalid_argument) [i > 0 && inFrequenciesFirst[i - 1] >= inFrequenciesFirst[i] is true]: GetBandsFromCenterFrequencies: center frequencies are not in ascending order. %fHz is before %fHz", v35, 0x26u);
          }

          exception = __cxa_allocate_exception(0x10uLL);
          std::logic_error::logic_error(exception, "GetBandsFromCenterFrequencies: center frequencies are not in ascending order. %fHz is before %fHz");
          goto LABEL_52;
        }

        v24 = 10.0;
        if (v21 <= v19)
        {
          v23 = 22000.0;
        }

        else
        {
          v23 = v22 * sqrt(v4[1] / v22);
        }
      }

      *(v20 - 1) = v23;
      *v8 = v24;
      if (v21 > v19)
      {
        *v20 = v23;
      }

      ++v19;
      ++v4;
      v20 += 2;
      if (v6 == v19)
      {
        return result;
      }
    }
  }

  v11 = v4 + 1;
  v12 = &Phase::sOctaveBandFrequencies;
  do
  {
    v13 = *v12++;
    v10 = *(v11 - 1) == v13;
    v14 = *(v11 - 1) != v13 || v11 == a3;
    ++v11;
  }

  while (!v14);
  v9 = 0;
LABEL_22:
  if (v6 >= 1)
  {
    goto LABEL_23;
  }

  return result;
}

void sub_23A54D444(_Unwind_Exception *a1)
{
  __cxa_free_exception(v2);
  v4 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v4;
    operator delete(v4);
  }

  _Unwind_Resume(a1);
}

std::logic_error *__cdecl std::logic_error::logic_error(std::logic_error *this, const char *a2)
{
  return MEMORY[0x2821F7478](this, a2);
}

{
  return MEMORY[0x2821F7490](this, a2);
}

std::runtime_error *__cdecl std::runtime_error::runtime_error(std::runtime_error *this, const char *a2)
{
  return MEMORY[0x2821F7518](this, a2);
}

{
  return MEMORY[0x2821F7530](this, a2);
}

uint64_t std::ostream::operator<<()
{
  return MEMORY[0x2821F78D0]();
}

{
  return MEMORY[0x2821F78E8]();
}

{
  return MEMORY[0x2821F78F8]();
}

{
  return MEMORY[0x2821F7900]();
}

{
  return MEMORY[0x2821F7908]();
}

{
  return MEMORY[0x2821F7910]();
}

{
  return MEMORY[0x2821F7918]();
}

{
  return MEMORY[0x2821F7938]();
}

std::string *__cdecl std::to_string(std::string *__return_ptr retstr, unint64_t __val)
{
  return MEMORY[0x2821F7F28](retstr, __val);
}

{
  return MEMORY[0x2821F7F38](retstr, __val);
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

void operator delete(void *__p, std::align_val_t a2)
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

void *__cdecl operator new(size_t __sz)
{
    ;
  }
}

void *__cdecl operator new(size_t __sz, const std::nothrow_t *a2)
{
    ;
  }
}

void *__cdecl operator new(size_t __sz, std::align_val_t a2)
{
    ;
  }
}

void operator new()
{
    ;
  }
}

simd_float4x4 __invert_f4(simd_float4x4 a1)
{
  MEMORY[0x2822043A8](a1.columns[0], a1.columns[1], a1.columns[2], a1.columns[3]);
  result.columns[3].i64[1] = v8;
  result.columns[3].i64[0] = v7;
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
  MEMORY[0x2822043C0](a1);
  result.__cosval = v2;
  result.__sinval = v1;
  return result;
}

__float2 __sincosf_stret(float a1)
{
  MEMORY[0x2822043C8](a1);
  result.__cosval = v2;
  result.__sinval = v1;
  return result;
}