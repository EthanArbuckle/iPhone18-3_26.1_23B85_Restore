void sub_18F6D6994(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, char a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, void *a29, uint64_t a30)
{
  MP4BoxParser_TrackFragmentRun::~MP4BoxParser_TrackFragmentRun(&a15);
  v31 = a30;
  a29 = &unk_1F0330650;
  a30 = 0;
  if (v31)
  {
    (*(*v31 + 8))(v31);
  }

  _Unwind_Resume(a1);
}

void acv2::PostDecodeRenderer::~PostDecodeRenderer(acv2::PostDecodeRenderer *this)
{
  acv2::PostDecodeRenderer::~PostDecodeRenderer(this);

  JUMPOUT(0x193ADF220);
}

{
  *this = &unk_1F0326310;
  AudioUnitUninitialize(*(this + 1));
  AudioComponentInstanceDispose(*(this + 1));
  v2 = *(this + 9);
  if (v2)
  {
    *(this + 10) = v2;
    operator delete(v2);
  }

  std::unique_ptr<CA::AudioBuffersBase>::reset[abi:ne200100](this + 8, 0);
}

uint64_t **std::unique_ptr<CA::AudioBuffersBase>::reset[abi:ne200100](uint64_t **result, uint64_t *a2)
{
  v2 = *result;
  *result = a2;
  if (v2)
  {
    ExtendedAudioBufferList_Destroy(*v2);

    JUMPOUT(0x193ADF220);
  }

  return result;
}

BOOL acv2::PostDecodeRenderer::SupportsProperty(acv2::PostDecodeRenderer *this, AudioUnitPropertyID a2)
{
  outWritable = 0;
  outDataSize = 0;
  return AudioUnitGetPropertyInfo(this, a2, 0, 0, &outDataSize, &outWritable) == 0;
}

uint64_t MP4BoxParser_TrackExtends::Init(MP4BoxParser_TrackExtends *this)
{
  v7 = *MEMORY[0x1E69E9840];
  result = MP4BoxParser_Full::Initialize(this);
  if (!result)
  {
    if (*(this + 5) == 1953654136)
    {
      v5 = 0uLL;
      v6 = 0;
      v3 = (*(*this + 24))(this);
      result = MP4BoxParser::ReadDataSourceBytes(*(this + 1), v3, 0x14uLL, &v5);
      if (!result)
      {
        *(this + 60) = vrev32q_s8(v5);
        *(this + 19) = bswap32(v6);
      }
    }

    else
    {
      result = 4294967294;
    }
  }

  v4 = *MEMORY[0x1E69E9840];
  return result;
}

void MP4BoxParser_TrackExtends::~MP4BoxParser_TrackExtends(MP4BoxParser_TrackExtends *this)
{
  v2 = *(this + 1);
  *this = &unk_1F0330650;
  *(this + 1) = 0;
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  JUMPOUT(0x193ADF220);
}

{
  v2 = *(this + 1);
  *this = &unk_1F0330650;
  *(this + 1) = 0;
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }
}

uint64_t MP4BoxParser_Track::GetNumPackets(MP4BoxParser_Track *this)
{
  if (MP4BoxParser_Track::GetInfoFromTrackSubBoxes(this))
  {
    return 0;
  }

  else
  {
    return *(this + 25);
  }
}

uint64_t MP4BoxParser_Track::GetInfoFromTrackSubBoxes(MP4BoxParser_Track *this)
{
  v105 = *MEMORY[0x1E69E9840];
  if (*(this + 80))
  {
LABEL_2:
    SampleSize = 0;
    goto LABEL_15;
  }

  v3 = *(this + 8);
  if (!v3)
  {
    goto LABEL_14;
  }

  v4 = *(v3 + 8);
  if (v4 == v3)
  {
    goto LABEL_14;
  }

  while (*(v4 + 16) != 1835297121)
  {
    v4 = *(v4 + 8);
    if (v4 == v3)
    {
      goto LABEL_14;
    }
  }

  v5 = *(v4 + 40);
  if (!v5 || (v6 = *(v5 + 8), v6 == v5))
  {
LABEL_14:
    SampleSize = 0xFFFFFFFFLL;
    goto LABEL_15;
  }

  SampleSize = 0xFFFFFFFFLL;
  while (*(v6 + 16) != 1835296868)
  {
    v6 = *(v6 + 8);
    if (v6 == v5)
    {
      goto LABEL_15;
    }
  }

  v9 = *(v6 + 32);
  v10 = *(v6 + 48);
  if (v10)
  {
    atomic_fetch_add_explicit(&v10->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  v11 = *(v4 + 32);
  v12 = *(this + 1);
  v97 = &unk_1F0330650;
  (*(*v12 + 88))(&v98);
  v99 = 0;
  v100 = 0;
  v101 = 0;
  v102 = 0;
  v103 = 8;
  v97 = &unk_1F0337450;
  v104 = 0;
  SampleSize = MP4BoxParser_MediaHeader::Init(&v97);
  if (SampleSize)
  {
    v13 = v98;
    v97 = &unk_1F0330650;
    v98 = 0;
    if (v13)
    {
      (*(*v13 + 8))(v13);
    }

    LOBYTE(v14) = 0;
    goto LABEL_60;
  }

  *(this + 24) = v104;
  SampleTableBox = MP4BoxParser_Track::GetSampleTableBox(v75, *(this + 8));
  if (v79)
  {
    v14 = v77;
    if (v77)
    {
      SampleTableBox = MP4BoxParser_Track::GetChunkOffsetBox(v71, *(this + 8));
      if (v74)
      {
        MP4BoxParser_ChunkOffset::MP4BoxParser_ChunkOffset(&v94, *(this + 1), v72);
        SampleSize = MP4BoxParser_ChunkOffset::Init(v16);
        if (SampleSize)
        {
          v17 = v95;
          v94 = &unk_1F0330650;
          v95 = 0;
          if (v17)
          {
            (*(*v17 + 8))(v17);
          }

          LOBYTE(v14) = 0;
LABEL_54:
          if (v73)
          {
            std::__shared_weak_count::__release_shared[abi:ne200100](v73);
          }

          goto LABEL_56;
        }

        if (v96)
        {
          v84[0] = 0;
          MP4BoxParser_ChunkOffset::GetChunkOffset(&v94, 0, v84);
          v19 = v84[0];
        }

        else
        {
          v19 = 0;
        }

        *(this + 11) = v19;
        MP4BoxParser_Track::GetSampleSizeBox(v67, this);
        if (v70 != 1)
        {
          v23 = v95;
          v94 = &unk_1F0330650;
          v95 = 0;
          if (v23)
          {
            (*(*v23 + 8))(v23);
          }

          LOBYTE(v14) = 0;
          SampleSize = 0xFFFFFFFFLL;
          goto LABEL_54;
        }

        MP4BoxParser_SampleSize::MP4BoxParser_SampleSize(&v89, *(this + 1), v68);
        SampleSize = MP4BoxParser_SampleSize::Init(&v89);
        if (SampleSize)
        {
          goto LABEL_44;
        }

        *(this + 25) = v93;
        *(this + 13) = MP4BoxParser_SampleSize::GetByteCount(&v89);
        if (v91 == 1937011578)
        {
          if (v92)
          {
            SampleSize = MP4BoxParser_SampleSize::GetSampleSize(&v89, 0, this + 92);
            if (SampleSize)
            {
              goto LABEL_44;
            }
          }
        }

        v20 = v76;
        SampleSize = MP4GetRollGroupDescription(*(this + 1), v14, v76, 1919904876, this + 120, SampleTableBox);
        if (SampleSize)
        {
          goto LABEL_44;
        }

        SampleSize = MP4GetRollGroupDescription(*(this + 1), v14, v20, 1886547820, this + 208, SampleTableBox);
        if (SampleSize)
        {
          goto LABEL_44;
        }

        MP4GetRollGroup(*(this + 1), v14, v20, 1919904876, this + 120, *(this + 25), this + 152);
        if ((*(this + 152) & 1) == 0)
        {
          MP4GetRollGroup(*(this + 1), v14, v20, 1886547820, this + 208, *(this + 25), this + 240);
        }

        v25 = *(v14 + 8);
        if (v25 != v14)
        {
          while (*(v25 + 16) != 1937011571)
          {
            v25 = *(v25 + 8);
            if (v25 == v14)
            {
              goto LABEL_75;
            }
          }

          MP4BoxParser_SyncSampleTable::MP4BoxParser_SyncSampleTable(v84, *(this + 1), *(v25 + 32) + v20);
          SampleSize = MP4BoxParser_SyncSampleTable::Init(v84);
          if (SampleSize || v85 == 1 && (SampleSize = MP4BoxParser_SyncSampleTable::GetSyncSampleTable(v84, (this + 296)), SampleSize))
          {
            MP4BoxParser_SyncSampleTable::~MP4BoxParser_SyncSampleTable(v84);
LABEL_44:
            LOBYTE(v14) = 0;
LABEL_45:
            v21 = v90;
            v89 = &unk_1F0330650;
            v90 = 0;
            if (v21)
            {
              (*(*v21 + 8))(v21);
            }

            if (v69)
            {
              std::__shared_weak_count::__release_shared[abi:ne200100](v69);
            }

            v22 = v95;
            v94 = &unk_1F0330650;
            v95 = 0;
            if (v22)
            {
              (*(*v22 + 8))(v22);
            }

            goto LABEL_54;
          }

          MP4BoxParser_SyncSampleTable::~MP4BoxParser_SyncSampleTable(v84);
        }

LABEL_75:
        SampleTableBox = MP4BoxParser_Track::GetSampleTableSubBox(v63, *(this + 8), 1937011556);
        if (v66 == 1)
        {
          MP4BoxParser_SampleDescription::MP4BoxParser_SampleDescription(v84, *(this + 1), v64);
          SampleSize = MP4BoxParser_SampleDescription::Init(v84);
          if (SampleSize || (MP4BoxParser_SampleDescription::GetASEBoxes(v84, this + 54), v26 = (this + 328), *(this + 45) = 0, *(this + 328) = 0u, *(this + 344) = 0u, SampleSize = MP4BoxParser_SampleDescription::GetASBD(v84, (this + 328), v27, v28, v29, v30, v31, v32), SampleSize))
          {
            MP4BoxParser_SampleDescription::~MP4BoxParser_SampleDescription(v84);
            LOBYTE(v14) = 0;
          }

          else
          {
            if (*(this + 86))
            {
              if (*(this + 92))
              {
                v33 = v96;
                MP4BoxParser_Track::GetSampleTableSubBox(v59, *(this + 8), 1937011555);
                if (v62 == 1)
                {
                  MP4BoxParser_SampleToChunk::MP4BoxParser_SampleToChunk(&v80, *(this + 1), v60);
                  if (!MP4BoxParser_SampleToChunk::Init(&v80))
                  {
                    *v58 = 0;
                    v34 = 0;
                    if (v33)
                    {
                      v35 = 0;
                      v36 = *(this + 11);
                      while (1)
                      {
                        v57 = 0;
                        if (MP4BoxParser_Track::GetChunkOffset(this, v34, &v57))
                        {
                          break;
                        }

                        v37 = v57;
                        if (v57 != v36 + *(this + 92) * v58[0])
                        {
                          break;
                        }

                        if (v34 >= v58[1])
                        {
                          if (MP4BoxParser_SampleToChunk::GetSampleCountForChunkIndex(&v80, v34, v35, v58, &v58[1]))
                          {
                            break;
                          }

                          ++v35;
                        }

                        ++v34;
                        v36 = v37;
                        if (v33 == v34)
                        {
                          v34 = v33;
                          break;
                        }
                      }
                    }

                    *(this + 440) = v33 == v34;
                  }

                  v38 = v81;
                  v80 = &unk_1F0330650;
                  v81 = 0;
                  if (v38)
                  {
                    (*(*v38 + 8))(v38);
                  }

                  if (v61)
                  {
                    std::__shared_weak_count::__release_shared[abi:ne200100](v61);
                  }
                }
              }
            }

            v39 = size;
            *(this + 96) = size;
            v40 = malloc_type_malloc(v39, 0x4CDDC682uLL);
            v41 = v40;
            if (v39 && !v40)
            {
              exception = __cxa_allocate_exception(8uLL);
              v56 = std::bad_alloc::bad_alloc(exception);
            }

            bzero(v40, v39);
            LOBYTE(v14) = 0;
            *(this + 49) = v41;
            SampleSize = 0xFFFFFFFFLL;
            if (v41)
            {
              v42 = size;
              if (*(this + 96) >= size)
              {
                memcpy(v41, __src, size);
                *(this + 96) = v42;
                SampleSize = MP4BoxParser_SampleDescription::GetChannelLayout(v84, this + 47, this + 93, v43, v44, v45, v46, v47);
                if (SampleSize)
                {
                  LOBYTE(v14) = 0;
                }

                else
                {
                  if ((*(this + 120) & 1) != 0 || (*(this + 208) & 1) != 0 || *(this + 296) == 1)
                  {
                    v48 = *(this + 8);
                    v49 = *(v48 + 8);
                    if (v49 != v48)
                    {
                      while (*(v49 + 16) != 1701082227)
                      {
                        v49 = *(v49 + 8);
                        if (v49 == v48)
                        {
                          goto LABEL_120;
                        }
                      }

                      MP4BoxParser_EditListExcludingPrimingAndRemainderFrames::MP4BoxParser_EditListExcludingPrimingAndRemainderFrames(&v80, *(this + 1), *(v49 + 32) + 8);
                      SampleSize = &v80;
                      if (!MP4BoxParser_EditListExcludingPrimingAndRemainderFrames::Init(&v80))
                      {
                        LODWORD(v50) = v83;
                        *(this + 105) = v82;
                        v51 = *(this + 24);
                        if (v51 && vabdd_f64(*v26, v51) >= 0.0000999999975)
                        {
                          v50 = (*v26 / v51 * v50);
                        }

                        *(this + 104) = v50;
                      }

                      v52 = v81;
                      v80 = &unk_1F0330650;
                      v81 = 0;
                      if (v52)
                      {
                        (*(*v52 + 8))(v52);
                      }
                    }
                  }

LABEL_120:
                  *(this + 106) = v88;
                  v53 = *(this + 84);
                  v54 = v53 == 1935767394 || v53 == 1935764850;
                  if (v54 && *(this + 86) && (v91 != 1937011578 || !v92))
                  {
                    *(this + 88) = 0;
                    *(this + 86) = 0;
                  }

                  LOBYTE(v14) = 1;
                  *(this + 80) = 1;
                }
              }
            }

            MP4BoxParser_SampleDescription::~MP4BoxParser_SampleDescription(v84);
          }

          if (v65)
          {
            std::__shared_weak_count::__release_shared[abi:ne200100](v65);
          }
        }

        else
        {
          LOBYTE(v14) = 0;
          SampleSize = 0xFFFFFFFFLL;
        }

        goto LABEL_45;
      }

      LOBYTE(v14) = 0;
    }

    SampleSize = 0xFFFFFFFFLL;
LABEL_56:
    if (v78)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v78);
    }

    v24 = v98;
    v97 = &unk_1F0330650;
    v98 = 0;
    if (v24)
    {
      (*(*v24 + 8))(v24, SampleTableBox);
    }

    goto LABEL_60;
  }

  v18 = v98;
  v97 = &unk_1F0330650;
  v98 = 0;
  if (v18)
  {
    (*(*v18 + 8))(v18, SampleTableBox);
  }

  LOBYTE(v14) = 0;
  SampleSize = 0xFFFFFFFFLL;
LABEL_60:
  if (v10)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v10);
  }

  if (v14)
  {
    goto LABEL_2;
  }

LABEL_15:
  v7 = *MEMORY[0x1E69E9840];
  return SampleSize;
}

void sub_18F6D7754(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, std::__shared_weak_count *a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, std::__shared_weak_count *a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, std::__shared_weak_count *a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, std::__shared_weak_count *a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, char a52)
{
  if (a43)
  {
    (*(*a43 + 8))(a43);
  }

  MP4BoxParser_SampleDescription::~MP4BoxParser_SampleDescription(&a52);
  if (a22)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a22);
  }

  v56 = STACK[0x220];
  STACK[0x218] = &unk_1F0330650;
  STACK[0x220] = 0;
  if (v56)
  {
    (*(*v56 + 8))(v56);
  }

  if (a28)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a28);
  }

  v57 = *(v54 - 216);
  *(v54 - 224) = &unk_1F0330650;
  *(v54 - 216) = 0;
  if (v57)
  {
    (*(*v57 + 8))(v57);
  }

  if (a34)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a34);
  }

  if (a40)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a40);
  }

  v58 = *(v54 - 152);
  *(v54 - 160) = v53;
  *(v54 - 152) = 0;
  if (v58)
  {
    (*(*v58 + 8))(v58);
  }

  if (v52)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v52);
  }

  _Unwind_Resume(a1);
}

__n128 MP4BoxParser_Track::GetSampleTableBox(MP4BoxParser_Track *this, uint64_t a2)
{
  if (a2)
  {
    v2 = *(a2 + 8);
    if (v2 == a2)
    {
      goto LABEL_16;
    }

    while (*(v2 + 16) != 1835297121)
    {
      v2 = *(v2 + 8);
      if (v2 == a2)
      {
        goto LABEL_16;
      }
    }

    v3 = *(v2 + 40);
    if (!v3)
    {
      goto LABEL_16;
    }

    v4 = *(v3 + 8);
    if (v4 == v3)
    {
      goto LABEL_16;
    }

    while (*(v4 + 16) != 1835626086)
    {
      v4 = *(v4 + 8);
      if (v4 == v3)
      {
        goto LABEL_16;
      }
    }

    v5 = *(v4 + 40);
    if (!v5 || (v6 = *(v5 + 8), v6 == v5))
    {
LABEL_16:
      *this = 0;
      *(this + 40) = 0;
    }

    else
    {
      while (v6[1].n128_u32[0] != 1937007212)
      {
        v6 = v6->n128_u64[1];
        if (v6 == v5)
        {
          goto LABEL_16;
        }
      }

      v12 = v6[1];
      v8 = v6[2].n128_u64[0];
      v7 = v6[2].n128_u64[1];
      v9 = v6[3].n128_u64[0];
      if (v9)
      {
        atomic_fetch_add_explicit((v9 + 8), 1uLL, memory_order_relaxed);
      }

      v10 = *(v2 + 32) + v8 + *(v4 + 32);
      result = v12;
      *this = v12;
      *(this + 2) = v10;
      *(this + 3) = v7;
      *(this + 4) = v9;
      *(this + 40) = 1;
    }
  }

  else
  {
    *this = 0;
    *(this + 40) = 0;
  }

  return result;
}

__n128 MP4BoxParser_Track::GetChunkOffsetBox(MP4BoxParser_Track *this, uint64_t a2)
{
  if (a2)
  {
    result.n128_u64[0] = MP4BoxParser_Track::GetSampleTableBox(v12, a2).n128_u64[0];
    v4 = v16;
    if (v16 == 1 && v14 && (v5 = *(v14 + 8), v5 != v14))
    {
      v6 = *(v14 + 8);
      while (v6[1].n128_u32[0] != 1937007471)
      {
        v6 = v6->n128_u64[1];
        if (v6 == v14)
        {
          while (v5[1].n128_u32[0] != 1668232756)
          {
            v5 = v5->n128_u64[1];
            if (v5 == v14)
            {
              goto LABEL_10;
            }
          }

          v6 = v5;
          break;
        }
      }

      v11 = v6[1];
      v8 = v6[2].n128_u64[0];
      v7 = v6[2].n128_u64[1];
      v9 = v6[3].n128_u64[0];
      if (v9)
      {
        atomic_fetch_add_explicit((v9 + 8), 1uLL, memory_order_relaxed);
      }

      v10 = v13 + v8;
      result = v11;
      *this = v11;
      *(this + 2) = v10;
      *(this + 3) = v7;
      *(this + 4) = v9;
      *(this + 40) = 1;
    }

    else
    {
LABEL_10:
      *this = 0;
      *(this + 40) = 0;
      if (!v4)
      {
        return result;
      }
    }

    if (v15)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v15);
    }
  }

  else
  {
    *this = 0;
    *(this + 40) = 0;
  }

  return result;
}

void MP4BoxParser_Track::GetSampleSizeBox(MP4BoxParser_Track *this, uint64_t a2)
{
  MP4BoxParser_Track::GetSampleTableSubBox(this, *(a2 + 64), 1937011578);
  v4 = *(this + 40);
  if ((v4 & 1) == 0)
  {
    MP4BoxParser_Track::GetSampleTableSubBox(&v6, *(a2 + 64), 1937013298);
    v5 = v9;
    if (v4 != v9)
    {
      *this = v6;
      *(this + 2) = v7;
      *(this + 24) = v8;
      v8 = 0uLL;
      *(this + 40) = 1;
    }

    if (v5)
    {
      if (*(&v8 + 1))
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](*(&v8 + 1));
      }
    }
  }
}

__n128 MP4BoxParser_Track::GetSampleTableSubBox(MP4BoxParser_Track *this, uint64_t a2, int a3)
{
  if (a2)
  {
    result.n128_u64[0] = MP4BoxParser_Track::GetSampleTableBox(v13, a2).n128_u64[0];
    v6 = v17;
    if (v17 == 1 && v15)
    {
      for (i = *(v15 + 8); i != v15; i = i->n128_u64[1])
      {
        if (i[1].n128_u32[0] == a3)
        {
          v12 = i[1];
          v9 = i[2].n128_u64[0];
          v8 = i[2].n128_u64[1];
          v10 = i[3].n128_u64[0];
          if (v10)
          {
            atomic_fetch_add_explicit((v10 + 8), 1uLL, memory_order_relaxed);
          }

          v11 = v14 + v9;
          result = v12;
          *this = v12;
          *(this + 2) = v11;
          *(this + 3) = v8;
          *(this + 4) = v10;
          *(this + 40) = 1;
          goto LABEL_9;
        }
      }
    }

    *this = 0;
    *(this + 40) = 0;
    if (v6)
    {
LABEL_9:
      if (v16)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v16);
      }
    }
  }

  else
  {
    *this = 0;
    *(this + 40) = 0;
  }

  return result;
}

uint64_t MP4BoxParser_Track::GetChunkOffset(MP4BoxParser_Track *this, int a2, uint64_t *a3)
{
  v23 = *MEMORY[0x1E69E9840];
  ChunkOffsetBox = MP4BoxParser_Track::GetChunkOffsetBox(v12, *(this + 8));
  if (v14 == 1)
  {
    v7 = *(this + 1);
    v15 = &unk_1F0330650;
    (*(*v7 + 88))(&v16, ChunkOffsetBox);
    v17 = 0;
    v18 = 0;
    v19 = 0;
    v20 = 0;
    v21 = 8;
    v15 = &unk_1F03306E8;
    v22 = 0;
    v8 = MP4BoxParser_ChunkOffset::Init(&v15);
    if (!v8)
    {
      MP4BoxParser_ChunkOffset::GetChunkOffset(&v15, a2, a3);
    }

    v9 = v16;
    v15 = &unk_1F0330650;
    v16 = 0;
    if (v9)
    {
      (*(*v9 + 8))(v9);
    }

    if (v13)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v13);
    }
  }

  else
  {
    v8 = 1667787583;
  }

  v10 = *MEMORY[0x1E69E9840];
  return v8;
}

void sub_18F6D7E84(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, std::__shared_weak_count *a14, uint64_t a15, uint64_t a16, uint64_t a17)
{
  if (a14)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a14);
  }

  _Unwind_Resume(exception_object);
}

uint64_t MP4BoxParser_Track::Init(MP4BoxParser_Track *this)
{
  result = MP4BoxParser::Initialize(this);
  if (!result)
  {
    if (*(this + 5) == 1953653099)
    {
      if (*(this + 56) == 1)
      {
        operator new();
      }

      return 0;
    }

    else
    {
      return 4294967294;
    }
  }

  return result;
}

void MP4BoxParser_Track::~MP4BoxParser_Track(MP4BoxParser_Track *this)
{
  MP4BoxParser_Track::~MP4BoxParser_Track(this);

  JUMPOUT(0x193ADF220);
}

{
  *this = &unk_1F0326360;
  v2 = *(this + 47);
  if (v2)
  {
    free(v2);
  }

  v3 = *(this + 49);
  if (v3)
  {
    free(v3);
  }

  if (*(this + 56) == 1)
  {
    v4 = *(this + 8);
    if (v4)
    {
      std::__list_imp<MP4BoxInfo>::clear(*(this + 8));
      MEMORY[0x193ADF220](v4, 0x1020C4062D53EE8);
    }
  }

  v5 = *(this + 14);
  if (v5)
  {
    CompressedPacketTable::~CompressedPacketTable(v5);
    MEMORY[0x193ADF220]();
  }

  v6 = *(this + 54);
  if (v6)
  {
    CFRelease(v6);
  }

  v7 = *(this + 38);
  if (v7)
  {
    *(this + 39) = v7;
    operator delete(v7);
  }

  v8 = *(this + 34);
  if (v8)
  {
    *(this + 35) = v8;
    operator delete(v8);
  }

  v9 = *(this + 31);
  if (v9)
  {
    *(this + 32) = v9;
    operator delete(v9);
  }

  v10 = *(this + 27);
  if (v10)
  {
    *(this + 28) = v10;
    operator delete(v10);
  }

  v11 = *(this + 23);
  if (v11)
  {
    *(this + 24) = v11;
    operator delete(v11);
  }

  v12 = *(this + 20);
  if (v12)
  {
    *(this + 21) = v12;
    operator delete(v12);
  }

  v13 = *(this + 16);
  if (v13)
  {
    *(this + 17) = v13;
    operator delete(v13);
  }

  v14 = *(this + 1);
  *this = &unk_1F0330650;
  *(this + 1) = 0;
  if (v14)
  {
    (*(*v14 + 8))(v14);
  }
}

uint64_t MP4Parser_PacketProvider::GetNumPackets(MP4Parser_PacketProvider *this)
{
  if (MP4BoxParser_Track::GetInfoFromTrackSubBoxes(this))
  {
    v2 = 0;
  }

  else
  {
    v2 = *(this + 25);
  }

  return (*(this + 111) + v2);
}

void MP4Parser_PacketProvider::~MP4Parser_PacketProvider(MP4Parser_PacketProvider *this)
{
  MP4Parser_PacketProvider::~MP4Parser_PacketProvider(this);

  JUMPOUT(0x193ADF220);
}

{
  *this = &unk_1F0326398;
  v2 = *(this + 58);
  if (v2)
  {
    CompressedPacketTable::~CompressedPacketTable(v2);
    MEMORY[0x193ADF220]();
  }

  MP4BoxParser_Track::~MP4BoxParser_Track(this);
}

uint64_t MP4BoxParser_Track::MP4BoxParser_Track(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, int a5)
{
  *a1 = &unk_1F0330650;
  (*(*a2 + 88))(a2, a3);
  *(a1 + 16) = 0;
  *(a1 + 20) = 0;
  *(a1 + 24) = 0;
  *(a1 + 32) = 0;
  *(a1 + 36) = 8;
  *a1 = &unk_1F0326360;
  *(a1 + 56) = 0;
  *(a1 + 64) = a4;
  *(a1 + 72) = 0;
  *(a1 + 76) = a5;
  *(a1 + 80) = 0;
  *(a1 + 312) = 0;
  *(a1 + 320) = 0;
  *(a1 + 304) = 0;
  *(a1 + 88) = 0u;
  *(a1 + 104) = 0u;
  *(a1 + 120) = 0;
  *(a1 + 124) = 0;
  *(a1 + 140) = 0;
  *(a1 + 132) = 0;
  *(a1 + 145) = 0;
  *(a1 + 208) = 0;
  *(a1 + 176) = 0u;
  *(a1 + 192) = 0u;
  *(a1 + 160) = 0u;
  *(a1 + 228) = 0;
  *(a1 + 233) = 0;
  *(a1 + 212) = 0;
  *(a1 + 220) = 0;
  *(a1 + 296) = 0;
  *(a1 + 248) = 0u;
  *(a1 + 264) = 0u;
  *(a1 + 280) = 0u;
  *(a1 + 384) = 0;
  *(a1 + 368) = 0;
  *(a1 + 376) = 0;
  *(a1 + 400) = 0;
  *(a1 + 408) = 0;
  *(a1 + 416) = 0;
  *(a1 + 392) = 0;
  *(a1 + 420) = 0xFFFFFFFFLL;
  *(a1 + 432) = 0;
  *(a1 + 440) = 0;
  return a1;
}

uint64_t MP4BoxParser_Track::GetTrackType(MP4BoxParser_Track *this)
{
  v21 = *MEMORY[0x1E69E9840];
  v1 = *(this + 8);
  if (!v1)
  {
    goto LABEL_14;
  }

  v2 = *(v1 + 8);
  if (v2 == v1)
  {
    goto LABEL_14;
  }

  while (*(v2 + 16) != 1835297121)
  {
    v2 = *(v2 + 8);
    if (v2 == v1)
    {
      goto LABEL_14;
    }
  }

  v3 = *(v2 + 40);
  if (!v3)
  {
    goto LABEL_14;
  }

  v4 = *(v3 + 8);
  if (v4 == v3)
  {
    goto LABEL_14;
  }

  while (*(v4 + 16) != 1751411826)
  {
    v4 = *(v4 + 8);
    if (v4 == v3)
    {
      goto LABEL_14;
    }
  }

  v5 = *(this + 1);
  v6 = *(v2 + 32);
  v7 = *(v4 + 32);
  v13 = &unk_1F0330650;
  (*(*v5 + 88))(&v14);
  v15 = 0;
  v16 = 0;
  v17 = 0;
  v18 = 0;
  v19 = 8;
  v13 = off_1F0327F00;
  if (MP4BoxParser_HandlerReference::Init(&v13))
  {
    v8 = v14;
    v13 = &unk_1F0330650;
    v14 = 0;
    if (v8)
    {
      (*(*v8 + 8))(v8);
    }

LABEL_14:
    v9 = 0;
    goto LABEL_15;
  }

  v9 = v20;
  v12 = v14;
  v13 = &unk_1F0330650;
  v14 = 0;
  if (v12)
  {
    (*(*v12 + 8))(v12);
  }

LABEL_15:
  v10 = *MEMORY[0x1E69E9840];
  return v9;
}

void sub_18F6D8584(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11)
{
  if (a11)
  {
    (*(*a11 + 8))(a11);
  }

  _Unwind_Resume(exception_object);
}

uint64_t MP4BoxParser_Track::GetTrackID(MP4BoxParser_Track *this)
{
  v18 = *MEMORY[0x1E69E9840];
  v1 = *(this + 8);
  if (!v1 || (v2 = *(v1 + 8), v2 == v1))
  {
LABEL_9:
    v6 = 0;
    goto LABEL_10;
  }

  while (*(v2 + 16) != 1953196132)
  {
    v2 = *(v2 + 8);
    if (v2 == v1)
    {
      goto LABEL_9;
    }
  }

  v3 = *(this + 1);
  v4 = *(v2 + 32);
  v10 = &unk_1F0330650;
  (*(*v3 + 88))(&v11);
  v12 = 0;
  v13 = 0;
  v14 = 0;
  v15 = 0;
  v16 = 8;
  v10 = off_1F03305F0;
  v17 = 0;
  if (MP4BoxParser_TrackHeader::Init(&v10))
  {
    v5 = v11;
    v10 = &unk_1F0330650;
    v11 = 0;
    if (v5)
    {
      (*(*v5 + 8))(v5);
    }

    goto LABEL_9;
  }

  v6 = v17;
  v9 = v11;
  v10 = &unk_1F0330650;
  v11 = 0;
  if (v9)
  {
    (*(*v9 + 8))(v9);
  }

LABEL_10:
  v7 = *MEMORY[0x1E69E9840];
  return v6;
}

void sub_18F6D8754(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11)
{
  if (a11)
  {
    (*(*a11 + 8))(a11);
  }

  _Unwind_Resume(exception_object);
}

void MP4BoxParser_Track::UpdateOffsetTableToIndex(MP4BoxParser_Track *this, unsigned int a2)
{
  v56 = *MEMORY[0x1E69E9840];
  if ((*(this + 440) & 1) == 0)
  {
    CompressedPacketCount = MP4BoxParser_Track::GetCompressedPacketCount(this);
    if (CompressedPacketCount <= a2)
    {
      SampleTableSubBox = MP4BoxParser_Track::GetSampleTableSubBox(v36, *(this + 8), 1937011555);
      if (v38 == 1)
      {
        v6 = *(this + 1);
        v48 = &unk_1F0330650;
        (*(*v6 + 88))(&v49, SampleTableSubBox);
        v50 = 0;
        v51 = 0;
        v52 = 0;
        v53 = 0;
        v54 = 8;
        v48 = &unk_1F0336550;
        v55 = 0;
        if (!MP4BoxParser_SampleToChunk::Init(&v48))
        {
          MP4BoxParser_Track::GetSampleSizeBox(v33, this);
          if (v35 == 1)
          {
            v7 = *(this + 1);
            v39 = &unk_1F0330650;
            (*(*v7 + 88))(&v40);
            v41 = 0;
            v42 = 0;
            v43 = 0;
            v44 = 0;
            v45 = 8;
            v39 = &unk_1F032BFF8;
            v46 = 0;
            v47 = 0;
            if (!MP4BoxParser_SampleSize::Init(&v39))
            {
              v9 = v47 - 1;
              if (v47 - 1 >= a2)
              {
                v9 = a2;
              }

              v10 = *(this + 100);
              *&v8 = *(this + 51);
              v27 = v8;
              v11 = *(this + 101);
              v31 = 0;
              *v32 = 0;
              DWORD2(v30) = 0;
              v12 = v9 + 1;
              if (v9 + 1 > CompressedPacketCount)
              {
                v13 = 0;
                v14 = v9 - CompressedPacketCount;
                v25 = v9 - CompressedPacketCount;
                while (1)
                {
                  MP4BoxParser_SampleToChunk::GetSampleCountForChunkIndex(&v48, v10, v11, v32, &v32[1]);
                  ++v13;
                  if (v27 < v32[0])
                  {
                    break;
                  }

                  v16 = v13 >= v14;
LABEL_24:
                  *(this + 51) = 0;
                  if (++v10 == v32[1])
                  {
                    ++v11;
                    *(this + 101) = v10;
                  }

                  v27 = 0u;
                  if ((CompressedPacketCount >= v12) | v16 & 1)
                  {
                    goto LABEL_27;
                  }
                }

                v26 = v11;
                v15 = 0;
                v16 = 0;
                while (1)
                {
                  v29 = 0;
                  if (MP4BoxParser_SampleSize::GetSampleSize(&v39, CompressedPacketCount + v15, &v29))
                  {
                    break;
                  }

                  v17 = v29;
                  v28 = 0;
                  if (MP4BoxParser_Track::GetChunkOffset(this, v10, &v28))
                  {
                    break;
                  }

                  *&v30 = v28 + *(this + 103);
                  HIDWORD(v30) = v17;
                  v18 = *(this + 14);
                  if (!v18)
                  {
                    if (!(*(**(this + 1) + 144))(*(this + 1)))
                    {
                      break;
                    }

                    if (!MP4BoxParser_Track::GetInfoFromTrackSubBoxes(this))
                    {
                      v19 = *(this + 87);
                      operator new();
                    }

                    v18 = *(this + 14);
                    if (!v18)
                    {
                      break;
                    }
                  }

                  CompressedPacketTable::push_back(v18, &v30);
                  v20.i32[0] = 1;
                  v20.i32[1] = v17;
                  *(&v21 + 1) = *(&v27 + 1);
                  *&v21 = vadd_s32(v20, *&v27);
                  v27 = v21;
                  *(this + 51) = v21;
                  ++v15;
                  v16 |= CompressedPacketCount + v15 >= v12;
                  if (v15 >= v32[0])
                  {
                    ++*(this + 100);
                    CompressedPacketCount += v15;
                    v11 = v26;
                    v14 = v25;
                    goto LABEL_24;
                  }
                }
              }
            }

LABEL_27:
            v22 = v40;
            v39 = &unk_1F0330650;
            v40 = 0;
            if (v22)
            {
              (*(*v22 + 8))(v22);
            }

            if (v34)
            {
              std::__shared_weak_count::__release_shared[abi:ne200100](v34);
            }
          }
        }

        v23 = v49;
        v48 = &unk_1F0330650;
        v49 = 0;
        if (v23)
        {
          (*(*v23 + 8))(v23);
        }

        if (v37)
        {
          std::__shared_weak_count::__release_shared[abi:ne200100](v37);
        }
      }
    }
  }

  v24 = *MEMORY[0x1E69E9840];
}

void sub_18F6D8BDC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, std::__shared_weak_count *a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, std::__shared_weak_count *a30, uint64_t a31, uint64_t a32, uint64_t a33)
{
  if (a33)
  {
    (*(*a33 + 8))(a33);
  }

  if (a24)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a24);
  }

  v36 = *(v34 - 152);
  *(v34 - 160) = v33;
  *(v34 - 152) = 0;
  if (v36)
  {
    (*(*v36 + 8))(v36);
  }

  if (a30)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a30);
  }

  _Unwind_Resume(exception_object);
}

uint64_t MP4BoxParser_Track::GetCompressedPacketCount(MP4BoxParser_Track *this)
{
  if (!MP4BoxParser_Track::GetInfoFromTrackSubBoxes(this) && *(this + 86))
  {
    return (*(*this + 32))(this);
  }

  v2 = *(this + 14);
  if (v2)
  {
    return *(v2 + 24);
  }

  else
  {
    return 0;
  }
}

uint64_t MP4BoxParser_Track::GetCompressedPacketOffset(MP4BoxParser_Track *this, unsigned int a2, unint64_t *a3)
{
  if (*(this + 440) == 1)
  {
    result = MP4BoxParser_Track::GetInfoFromTrackSubBoxes(this);
    if (result)
    {
      return result;
    }

    v7 = *(this + 11) + *(this + 86) * a2;
    goto LABEL_6;
  }

  if (*(this + 14))
  {
    MP4BoxParser_Track::UpdateOffsetTableToIndex(this, a2);
    CompressedPacketTable::operator[](v8, *(this + 14), a2);
    result = 0;
    v7 = v8[0];
LABEL_6:
    *a3 = v7;
    return result;
  }

  return 0xFFFFFFFFLL;
}

uint64_t MP4BoxParser_Track::GetByteCountForPackets(MP4BoxParser_Track *this, unsigned int a2, int a3)
{
  v27 = *MEMORY[0x1E69E9840];
  MP4BoxParser_Track::GetSampleSizeBox(v15, this);
  if (v17 == 1)
  {
    v6 = *(this + 1);
    v18 = &unk_1F0330650;
    (*(*v6 + 88))(&v19);
    v20 = 0;
    v21 = 0;
    v22 = 0;
    v23 = 0;
    v24 = 8;
    v18 = &unk_1F032BFF8;
    v25 = 0;
    v26 = 0;
    if (MP4BoxParser_SampleSize::Init(&v18))
    {
      v7 = v19;
      v18 = &unk_1F0330650;
      v19 = 0;
      if (v7)
      {
        (*(*v7 + 8))(v7);
      }

      v8 = 0;
    }

    else
    {
      v14 = 0;
      if (v21 == 1937011578 && v25)
      {
        SampleSize = MP4BoxParser_SampleSize::GetSampleSize(&v18, 0, &v14);
        v12 = v19;
        if (SampleSize)
        {
          v8 = 0;
        }

        else
        {
          v8 = v14 * a3;
        }

        v18 = &unk_1F0330650;
        v19 = 0;
        if (v12)
        {
          (*(*v12 + 8))(v12);
        }
      }

      else
      {
        if (a3 + a2 > a2)
        {
          LODWORD(v8) = 0;
          while (1)
          {
            v14 = 0;
            if (MP4BoxParser_SampleSize::GetSampleSize(&v18, a2, &v14))
            {
              break;
            }

            v8 = v14 + v8;
            ++a2;
            if (!--a3)
            {
              goto LABEL_23;
            }
          }
        }

        v8 = 0;
LABEL_23:
        v13 = v19;
        v18 = &unk_1F0330650;
        v19 = 0;
        if (v13)
        {
          (*(*v13 + 8))(v13);
        }
      }
    }

    if (v16)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v16);
    }
  }

  else
  {
    v8 = 0;
  }

  v9 = *MEMORY[0x1E69E9840];
  return v8;
}

void sub_18F6D8FEC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, std::__shared_weak_count *a15, uint64_t a16, uint64_t a17, uint64_t a18)
{
  if (a18)
  {
    (*(*a18 + 8))(a18);
  }

  if (a15)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a15);
  }

  _Unwind_Resume(exception_object);
}

uint64_t MP4BoxParser_Track::GetLoudnessInfo(MP4BoxParser_Track *this, const __CFDictionary **a2)
{
  v3 = *(this + 8);
  if (!v3)
  {
    goto LABEL_14;
  }

  v4 = *(v3 + 8);
  if (v4 == v3)
  {
    goto LABEL_14;
  }

  while (*(v4 + 16) != 1969517665)
  {
    v4 = *(v4 + 8);
    if (v4 == v3)
    {
      goto LABEL_14;
    }
  }

  v6 = *(v4 + 40);
  if (!v6 || (v7 = *(v6 + 8), v7 == v6))
  {
LABEL_14:
    v10 = 0;
    *a2 = 0;
  }

  else
  {
    v8 = 1819632756;
    v9 = *(v6 + 8);
    while (*(v9 + 16) != 1819632756)
    {
      v9 = *(v9 + 8);
      if (v9 == v6)
      {
        v8 = 1818848870;
        while (*(v7 + 16) != 1818848870)
        {
          v7 = *(v7 + 8);
          if (v7 == v6)
          {
            goto LABEL_14;
          }
        }

        v9 = v7;
        break;
      }
    }

    v13 = *(v9 + 24);
    v12 = *(v9 + 32);
    v14 = *(v9 + 48);
    if (v14)
    {
      atomic_fetch_add_explicit(&v14->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    v15 = *(v4 + 32) + v12;
    if ((v8 & 0x6C7D6E76) == 0x6C756474)
    {
      v21 = 0;
      v22 = 0;
      __p = 0;
      LOBYTE(inSpecifier[0]) = 0;
      if (v13 == 8)
      {
        v17 = 0;
        v16 = 0;
        v18 = 0;
      }

      else
      {
        std::vector<unsigned char>::__append(&v21, (v13 - 8), inSpecifier);
        v16 = v21;
        v17 = v22;
        v18 = v22;
      }

      DataSourceBytes = MP4BoxParser::ReadDataSourceBytes(*(this + 1), v15 + 8, v18 - v16, v16);
      if (DataSourceBytes)
      {
        goto LABEL_27;
      }

      if (v17 == v16)
      {
        goto LABEL_32;
      }

      inSpecifier[0] = CFDataCreate(*MEMORY[0x1E695E480], v16, v17 - v16);
      ioPropertyDataSize[0] = 8;
      DataSourceBytes = AudioFormatGetProperty(0x6C646C62u, 8u, inSpecifier, ioPropertyDataSize, a2);
      if (inSpecifier[0])
      {
        CFRelease(inSpecifier[0]);
      }

      if (DataSourceBytes)
      {
LABEL_27:
        v20 = 0;
      }

      else
      {
LABEL_32:
        DataSourceBytes = 0;
        v20 = 1;
      }

      if (v16)
      {
        operator delete(v16);
      }

      v10 = DataSourceBytes;
      if (v20)
      {
        v10 = DataSourceBytes;
      }
    }

    else
    {
      if ((v8 & 0x6C7D6E76) == 0x6C696E66)
      {
        memset(inSpecifier, 0, sizeof(inSpecifier));
        v21 = inSpecifier;
        LOBYTE(v22) = 0;
        operator new();
      }

      v10 = 4294967246;
    }

    if (v14)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v14);
    }
  }

  return v10;
}

void sub_18F6D9540(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, char a12, uint64_t a13, char a14, uint64_t a15, uint64_t a16, uint64_t a17, void *__p, uint64_t a19, uint64_t a20, uint64_t a21)
{
  CACFDictionary::~CACFDictionary(&a12);
  CACFDictionary::~CACFDictionary(&a14);
  if (__p)
  {
    a19 = __p;
    operator delete(__p);
  }

  operator delete(v22);
  a16 = v23 - 72;
  std::vector<ISOLoudnessInfoBox>::__destroy_vector::operator()[abi:ne200100](&a16);
  if (v21)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v21);
  }

  _Unwind_Resume(a1);
}

void std::vector<ISOLoudnessInfoBox>::__destroy_vector::operator()[abi:ne200100](void ***a1)
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
        v4 -= 3;
        v6 = v4;
        std::vector<ISOLoudnessInfo>::__destroy_vector::operator()[abi:ne200100](&v6);
      }

      while (v4 != v2);
      v5 = **a1;
    }

    v1[1] = v2;

    operator delete(v5);
  }
}

void std::vector<unsigned char>::__append(char **a1, size_t __len, unsigned __int8 *a3)
{
  v6 = a1[1];
  v5 = a1[2];
  if (v5 - v6 >= __len)
  {
    if (__len)
    {
      memset(a1[1], *a3, __len);
      v6 += __len;
    }

    a1[1] = v6;
  }

  else
  {
    v7 = *a1;
    v8 = (v6 - *a1);
    v9 = &v8[__len];
    if (&v8[__len] < 0)
    {
      std::vector<APAC::UI18>::__throw_length_error[abi:ne200100]();
    }

    v10 = v5 - v7;
    if (2 * v10 > v9)
    {
      v9 = 2 * v10;
    }

    if (v10 >= 0x3FFFFFFFFFFFFFFFLL)
    {
      v11 = 0x7FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v11 = v9;
    }

    if (v11)
    {
      operator new();
    }

    v12 = v6 - *a1;
    memset(v8, *a3, __len);
    memcpy(&v8[v7 - v6], v7, v12);
    *a1 = &v8[v7 - v6];
    a1[1] = &v8[__len];
    a1[2] = 0;
    if (v7)
    {

      operator delete(v7);
    }
  }
}

void std::vector<ISOLoudnessInfo>::resize(uint64_t *a1, unint64_t a2)
{
  v3 = *a1;
  v4 = a1[1];
  v5 = 0xCCCCCCCCCCCCCCCDLL * ((v4 - *a1) >> 3);
  v6 = a2 - v5;
  if (a2 <= v5)
  {
    if (a2 < v5)
    {
      v11 = v3 + 40 * a2;
      while (v4 != v11)
      {
        v12 = *(v4 - 24);
        if (v12)
        {
          *(v4 - 16) = v12;
          operator delete(v12);
        }

        v4 -= 40;
      }

      a1[1] = v11;
    }
  }

  else
  {
    v7 = a1[2];
    if (0xCCCCCCCCCCCCCCCDLL * ((v7 - v4) >> 3) < v6)
    {
      if (a2 <= 0x666666666666666)
      {
        v8 = 0xCCCCCCCCCCCCCCCDLL * ((v7 - v3) >> 3);
        v9 = 2 * v8;
        if (2 * v8 <= a2)
        {
          v9 = a2;
        }

        if (v8 >= 0x333333333333333)
        {
          v10 = 0x666666666666666;
        }

        else
        {
          v10 = v9;
        }

        std::allocator<ISOLoudnessInfo>::allocate_at_least[abi:ne200100](v10);
      }

      std::vector<APAC::UI18>::__throw_length_error[abi:ne200100]();
    }

    v13 = 40 * ((40 * v6 - 40) / 0x28) + 40;
    bzero(a1[1], v13);
    a1[1] = v4 + v13;
  }
}

void std::vector<LoudnessMethod>::resize(uint64_t *a1, unint64_t a2)
{
  v3 = *a1;
  v4 = a1[1];
  v5 = (v4 - *a1) >> 2;
  if (a2 <= v5)
  {
    if (a2 >= v5)
    {
      return;
    }

    v11 = v3 + 4 * a2;
  }

  else
  {
    v6 = a2 - v5;
    v7 = a1[2];
    if (v6 > (v7 - v4) >> 2)
    {
      if (!(a2 >> 62))
      {
        v8 = v7 - v3;
        v9 = v8 >> 1;
        if (v8 >> 1 <= a2)
        {
          v9 = a2;
        }

        if (v8 >= 0x7FFFFFFFFFFFFFFCLL)
        {
          v10 = 0x3FFFFFFFFFFFFFFFLL;
        }

        else
        {
          v10 = v9;
        }

        std::allocator<APAC::UI18>::allocate_at_least[abi:ne200100](v10);
      }

      std::vector<APAC::UI18>::__throw_length_error[abi:ne200100]();
    }

    bzero(a1[1], 4 * v6);
    v11 = v4 + 4 * v6;
  }

  a1[1] = v11;
}

void std::allocator<ISOLoudnessInfo>::allocate_at_least[abi:ne200100](unint64_t a1)
{
  if (a1 < 0x666666666666667)
  {
    operator new();
  }

  std::__throw_bad_array_new_length[abi:ne200100]();
}

uint64_t std::__exception_guard_exceptions<std::_AllocatorDestroyRangeReverse<std::allocator<ISOLoudnessInfo>,ISOLoudnessInfo*>>::~__exception_guard_exceptions[abi:ne200100](uint64_t a1)
{
  if ((*(a1 + 24) & 1) == 0)
  {
    v3 = **(a1 + 16);
    v4 = **(a1 + 8);
    while (v3 != v4)
    {
      v5 = *(v3 - 24);
      if (v5)
      {
        *(v3 - 16) = v5;
        operator delete(v5);
      }

      v3 -= 40;
    }
  }

  return a1;
}

void std::vector<ISOLoudnessInfo>::__destroy_vector::operator()[abi:ne200100](void ***a1)
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
        v6 = *(v4 - 3);
        if (v6)
        {
          *(v4 - 2) = v6;
          operator delete(v6);
        }

        v4 -= 40;
      }

      while (v4 != v2);
      v5 = **a1;
    }

    v1[1] = v2;

    operator delete(v5);
  }
}

BOOL MP4BoxParser_Track::GetPacketTableInfo(MP4BoxParser_Track *this, AudioFilePacketTableInfo *a2, uint64_t a3, unsigned int a4, int a5)
{
  v5 = *(this + 105);
  if ((v5 & 0x80000000) == 0)
  {
    v6 = *(this + 87);
    v7 = *(this + 104);
    if (v6 * a3 >= v7)
    {
      v8 = v6 * a3 - v7;
    }

    else
    {
      LODWORD(v7) = v6 * a3;
      v8 = 0;
    }

    a2->mPrimingFrames = v7;
    v9 = *(this + 41) * v5;
    a2->mNumberValidFrames = v8;
    v10 = (v9 / a4);
    if (v10 >= 1 && v8 > v10)
    {
      v12 = v8 - v10;
      if (!a5 || v12 < v6)
      {
        a2->mRemainderFrames = v12;
        a2->mNumberValidFrames = v8 - v12;
      }
    }
  }

  return (v5 & 0x80000000) == 0;
}

uint64_t MP4Parser_PacketProvider::AddTrackFragment(unsigned int *a1, const void *a2)
{
  v7[35] = *MEMORY[0x1E69E9840];
  result = MP4BoxParser_Track::GetInfoFromTrackSubBoxes(a1);
  if (!result)
  {
    v5 = a1[87];
    MP4BoxParser::MP4BoxParser(v7, a2);
  }

  v6 = *MEMORY[0x1E69E9840];
  return result;
}

void sub_18F6DA21C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  MP4BoxParser_TrackFragment::~MP4BoxParser_TrackFragment(va);
  _Unwind_Resume(a1);
}

void SampleToRollDistanceTable::append_entry(uint64_t a1, __int128 *a2)
{
  if (*a1 == 1 && (v4 = *(a1 + 40), v4 != *(a1 + 32)) && (v5 = *(v4 - 16), *a2 == v5 + *(v4 - 24)) && *(a2 + 8) == *(v4 - 8))
  {
    *(v4 - 16) = *(a2 + 1) + v5;
  }

  else
  {
    v6 = *(a1 + 8);
    v7 = *(a1 + 16);
    if (v6 == v7)
    {
LABEL_10:
      v9 = *(a1 + 24);
      if (v7 >= v9)
      {
        v11 = v7 - v6;
        v12 = (v7 - v6) >> 1;
        if (v12 <= -2)
        {
          std::vector<APAC::UI18>::__throw_length_error[abi:ne200100]();
        }

        v13 = v9 - v6;
        if (v13 <= v12 + 1)
        {
          v14 = v12 + 1;
        }

        else
        {
          v14 = v13;
        }

        if (v13 >= 0x7FFFFFFFFFFFFFFELL)
        {
          v15 = 0x7FFFFFFFFFFFFFFFLL;
        }

        else
        {
          v15 = v14;
        }

        if (v15)
        {
          std::allocator<APAC::UI13>::allocate_at_least[abi:ne200100](v15);
        }

        v16 = (v7 - v6) >> 1;
        v17 = (2 * v12);
        v18 = (2 * v12 - 2 * v16);
        *v17 = *(a2 + 8);
        v10 = v17 + 1;
        memcpy(v18, v6, v11);
        v19 = *(a1 + 8);
        *(a1 + 8) = v18;
        *(a1 + 16) = v10;
        *(a1 + 24) = 0;
        if (v19)
        {
          operator delete(v19);
        }
      }

      else
      {
        *v7 = *(a2 + 8);
        v10 = v7 + 2;
      }

      *(a1 + 16) = v10;
    }

    else
    {
      v8 = *(a1 + 8);
      while (*v8 != *(a2 + 8))
      {
        if (++v8 == v7)
        {
          goto LABEL_10;
        }
      }
    }

    v21 = *(a1 + 40);
    v20 = *(a1 + 48);
    if (v21 >= v20)
    {
      v24 = *(a1 + 32);
      v25 = v21 - v24;
      v26 = 0xAAAAAAAAAAAAAAABLL * ((v21 - v24) >> 3);
      v27 = v26 + 1;
      if (v26 + 1 > 0xAAAAAAAAAAAAAAALL)
      {
        std::vector<APAC::UI18>::__throw_length_error[abi:ne200100]();
      }

      v28 = 0xAAAAAAAAAAAAAAABLL * ((v20 - v24) >> 3);
      if (2 * v28 > v27)
      {
        v27 = 2 * v28;
      }

      if (v28 >= 0x555555555555555)
      {
        v29 = 0xAAAAAAAAAAAAAAALL;
      }

      else
      {
        v29 = v27;
      }

      if (v29)
      {
        if (v29 <= 0xAAAAAAAAAAAAAAALL)
        {
          operator new();
        }

        std::__throw_bad_array_new_length[abi:ne200100]();
      }

      v30 = 24 * v26;
      *v30 = *a2;
      *(v30 + 16) = *(a2 + 2);
      v23 = 24 * v26 + 24;
      v31 = v30 - v25;
      memcpy((v30 - v25), v24, v25);
      *(a1 + 32) = v31;
      *(a1 + 40) = v23;
      *(a1 + 48) = 0;
      if (v24)
      {
        operator delete(v24);
      }
    }

    else
    {
      v22 = *a2;
      *(v21 + 16) = *(a2 + 2);
      *v21 = v22;
      v23 = v21 + 24;
    }

    *(a1 + 40) = v23;
    *a1 = 1;
  }
}

uint64_t MP4Parser_PacketProvider::GetMaximumPacketSize(MP4Parser_PacketProvider *this)
{
  v24 = *MEMORY[0x1E69E9840];
  if (!(*(**(this + 1) + 144))(*(this + 1)) || (MP4BoxParser_Track::GetSampleSizeBox(v11, this), v13 != 1))
  {
    v3 = 0;
    goto LABEL_19;
  }

  v2 = *(this + 1);
  v15 = &unk_1F0330650;
  (*(*v2 + 88))(&v16);
  v17 = 0;
  v18 = 0;
  v19 = 0;
  v20 = 0;
  v21 = 8;
  v15 = &unk_1F032BFF8;
  v22 = 0;
  v23 = 0;
  if (!MP4BoxParser_SampleSize::Init(&v15))
  {
    if (v18 == 1937011578)
    {
      v3 = v22;
      if (v22)
      {
        goto LABEL_15;
      }
    }

    v14 = 0;
    if (v23)
    {
      v4 = 0;
      v3 = 0;
      do
      {
        SampleSize = MP4BoxParser_SampleSize::GetSampleSize(&v15, v4, &v14);
        v6 = v14;
        if (v14 <= v3)
        {
          v6 = v3;
        }

        if (!SampleSize)
        {
          v3 = v6;
        }

        ++v4;
      }

      while (v4 < v23);
      goto LABEL_15;
    }
  }

  v3 = 0;
LABEL_15:
  v7 = v16;
  v15 = &unk_1F0330650;
  v16 = 0;
  if (v7)
  {
    (*(*v7 + 8))(v7);
  }

  if (v12)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v12);
  }

LABEL_19:
  v8 = *(this + 114);
  if (v3 <= v8)
  {
    result = v8;
  }

  else
  {
    result = v3;
  }

  v10 = *MEMORY[0x1E69E9840];
  return result;
}

void sub_18F6DA6B4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, std::__shared_weak_count *a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18)
{
  if (a18)
  {
    (*(*a18 + 8))(a18);
  }

  if (a14)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a14);
  }

  _Unwind_Resume(exception_object);
}

uint64_t MP4Parser_PacketProvider::GetPacketInfo(MP4Parser_PacketProvider *this, unsigned int a2, unsigned int *a3, unint64_t *a4)
{
  v30 = *MEMORY[0x1E69E9840];
  if (MP4BoxParser_Track::GetInfoFromTrackSubBoxes(this))
  {
    v8 = 0;
LABEL_9:
    v10 = 1885563711;
    if ((*(*this + 32))(this) > a2)
    {
      v12 = *(this + 58);
      if (v12)
      {
        v13 = a2 - v8;
        CompressedPacketTable::operator[](&v21, v12, v13);
        *a4 = v21;
        CompressedPacketTable::operator[](&v21, v12, v13);
        v10 = 0;
        *a3 = HIDWORD(v22);
      }
    }

    goto LABEL_21;
  }

  v8 = *(this + 25);
  if (v8 <= a2)
  {
    goto LABEL_9;
  }

  if ((*(**(this + 1) + 144))(*(this + 1)))
  {
    MP4BoxParser_Track::GetSampleSizeBox(v18, this);
    if (v20 == 1)
    {
      v9 = *(this + 1);
      v21 = &unk_1F0330650;
      (*(*v9 + 88))(&v22);
      v23 = 0;
      v24 = 0;
      v25 = 0;
      v26 = 0;
      v27 = 8;
      v21 = &unk_1F032BFF8;
      v28 = 0;
      v29 = 0;
      v10 = MP4BoxParser_SampleSize::Init(&v21);
      if (v10)
      {
        v11 = v22;
        v21 = &unk_1F0330650;
        v22 = 0;
        if (v11)
        {
          (*(*v11 + 8))(v11);
        }
      }

      else
      {
        v17 = 0;
        if (!MP4BoxParser_SampleSize::GetSampleSize(&v21, a2, &v17))
        {
          *a3 = v17;
          MP4BoxParser_Track::GetCompressedPacketOffset(this, a2, a4);
        }

        v14 = v22;
        v21 = &unk_1F0330650;
        v22 = 0;
        if (v14)
        {
          (*(*v14 + 8))(v14);
        }

        v10 = 0;
      }

      if (v19)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v19);
      }
    }

    else
    {
      v10 = 0;
    }
  }

  else
  {
    v10 = 0xFFFFFFFFLL;
  }

LABEL_21:
  v15 = *MEMORY[0x1E69E9840];
  return v10;
}

void sub_18F6DA9A8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, std::__shared_weak_count *a15, uint64_t a16, uint64_t a17, uint64_t a18)
{
  if (a18)
  {
    (*(*a18 + 8))(a18);
  }

  if (a15)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a15);
  }

  _Unwind_Resume(exception_object);
}

uint64_t MP4Parser_PacketProvider::GetContiguousPacketCountAndSize(MP4Parser_PacketProvider *this, unsigned int a2, unsigned int a3, unsigned int *a4, unsigned int *a5)
{
  *a4 = 0;
  *a5 = 0;
  InfoFromTrackSubBoxes = MP4BoxParser_Track::GetInfoFromTrackSubBoxes(this);
  v11 = 0;
  if (!InfoFromTrackSubBoxes)
  {
    v11 = *(this + 25);
    if (v11 > a2)
    {
      MP4BoxParser_Track::UpdateOffsetTableToIndex(this, a3 + a2);
      CompressedPacketCount = MP4BoxParser_Track::GetCompressedPacketCount(this);
      if (CompressedPacketCount > a2)
      {
        if (*(this + 440) == 1)
        {
          v13 = (*(*this + 32))(this) - a2;
          if (v13 >= a3)
          {
            v14 = a3;
          }

          else
          {
            v14 = v13;
          }

LABEL_28:
          if (v14 >= a3)
          {
            v28 = a3;
          }

          else
          {
            v28 = v14;
          }

          *a4 = v28;
          if (v28)
          {
            ByteCountForPackets = MP4BoxParser_Track::GetByteCountForPackets(this, a2, v28);
          }

          else
          {
            ByteCountForPackets = 0;
          }

          result = 0;
          *a5 = ByteCountForPackets;
          return result;
        }

        v22 = *(this + 14);
        if (v22)
        {
          if (a3 + a2 <= CompressedPacketCount)
          {
            v23 = a3;
          }

          else
          {
            v23 = CompressedPacketCount - a2;
          }

          CompressedPacketTable::operator[](&v33, v22, a2);
          v24 = v33;
          CompressedPacketTable::operator[](&v33, *(this + 14), a2);
          if (v23 == 1)
          {
            v14 = 1;
          }

          else
          {
            v25 = v34;
            v14 = 1;
            while (1)
            {
              v26 = v25 + v24;
              CompressedPacketTable::operator[](&v33, *(this + 14), a2 + v14);
              if (v26 < v33)
              {
                break;
              }

              CompressedPacketTable::operator[](&v33, *(this + 14), a2 + v14);
              v24 = v33;
              CompressedPacketTable::operator[](&v33, *(this + 14), a2 + v14);
              v25 = v34;
              if (v14++ >= v23 - 1)
              {
                v14 = v23;
                goto LABEL_28;
              }
            }
          }

          goto LABEL_28;
        }
      }

      v14 = 0;
      goto LABEL_28;
    }
  }

  v15 = a2 - v11;
  if (v15 >= *(this + 111))
  {
    return 1885563711;
  }

  v16 = *(this + 58);
  if (v16)
  {
    do
    {
      ++*a4;
      CompressedPacketTable::operator[](&v33, v16, v15);
      *a5 += v34;
      if (*a4 == a3)
      {
        break;
      }

      v17 = v15 + 1;
      v18 = *(this + 111);
      if (v15 + 1 < v18)
      {
        CompressedPacketTable::operator[](&v33, v16, v15);
        v19 = v33;
        CompressedPacketTable::operator[](v31, v16, v15);
        v20 = v19 + v32;
        CompressedPacketTable::operator[](v30, v16, v17);
        if (v20 != v30[0])
        {
          return 0;
        }

        v18 = *(this + 111);
      }

      v15 = v17;
    }

    while (v17 < v18);
  }

  return 0;
}

uint64_t MP4Parser_PacketProvider::GetPacketOffset(MP4Parser_PacketProvider *this, unsigned int a2, unint64_t *a3)
{
  if ((*(*this + 32))(this) <= a2)
  {
    return 1885563711;
  }

  if (!(*(**(this + 1) + 144))(*(this + 1)))
  {
    return 0xFFFFFFFFLL;
  }

  if (MP4BoxParser_Track::GetInfoFromTrackSubBoxes(this) || *(this + 25) <= a2)
  {
    if (!*(this + 58))
    {
      return 0xFFFFFFFFLL;
    }

    CompressedPacketTable::operator[](v7, *(this + 58), a2 - *(this + 25));
    *a3 = v7[0];
    return 0;
  }

  if (!(*(**(this + 1) + 144))(*(this + 1)))
  {
    return 0xFFFFFFFFLL;
  }

  MP4BoxParser_Track::UpdateOffsetTableToIndex(this, a2);

  return MP4BoxParser_Track::GetCompressedPacketOffset(this, a2, a3);
}

void Slice_DataSource::Slice(Slice *this, unint64_t a2)
{
  v2 = *(this + 6);
  if (*(this + 5) < a2)
  {
    v3 = *(this + 5);
  }

  operator new();
}

uint64_t Slice_DataSource::WithData(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v21 = *MEMORY[0x1E69E9840];
  v14 = 0;
  v8 = (*(*a1 + 24))(a1, &v14);
  if (v8)
  {
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      *buf = 136315394;
      v18 = "DataSource.cpp";
      v19 = 1024;
      v20 = 834;
      _os_log_impl(&dword_18F5DF000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "%25s:%-5d  DataSource data unable to determine size", buf, 0x12u);
    }
  }

  else if (a2 < 0 || v14 <= a2)
  {
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      *buf = 136315394;
      v18 = "DataSource.cpp";
      v19 = 1024;
      v20 = 835;
      _os_log_impl(&dword_18F5DF000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "%25s:%-5d  DataSource data bad position", buf, 0x12u);
    }

    v8 = 4294967256;
  }

  else if (v14 - a3 >= a2)
  {
    v11 = a1[2];
    v12 = a1[3];
    v13 = *(a4 + 24);
    if (v13)
    {
      if (v13 == a4)
      {
        v16 = v15;
        (*(*v13 + 24))(v13, v15);
      }

      else
      {
        v16 = (*(*v13 + 16))(v13);
      }
    }

    else
    {
      v16 = 0;
    }

    (*(*v11 + 80))(v11, v12 + a2, a3, v15);
    std::__function::__value_func<void ()(void const*)>::~__value_func[abi:ne200100](v15);
    v8 = 0;
  }

  else
  {
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      *buf = 136315394;
      v18 = "DataSource.cpp";
      v19 = 1024;
      v20 = 836;
      _os_log_impl(&dword_18F5DF000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "%25s:%-5d  DataSource data insufficient amount", buf, 0x12u);
    }

    v8 = 4294967257;
  }

  v9 = *MEMORY[0x1E69E9840];
  return v8;
}

void sub_18F6DB20C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  std::__function::__value_func<void ()(void const*)>::~__value_func[abi:ne200100](va);
  _Unwind_Resume(a1);
}

uint64_t std::__function::__value_func<void ()(void const*)>::~__value_func[abi:ne200100](uint64_t a1)
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

uint64_t DataSource::WriteBytes64(DataSource *this, unsigned __int16 a2, uint64_t a3, unint64_t a4, char *a5, unint64_t *a6)
{
  if (a4)
  {
    v8 = a4;
    v10 = 0;
    v11 = 0;
    while (1)
    {
      v12 = v8 >= 0xFFFFFFFF ? 0xFFFFFFFFLL : v8;
      v15 = 0;
      result = (*(*this + 56))(this, a2, a3, v12, &a5[v11], &v15);
      v10 += v15;
      if (result || v15 < v12)
      {
        break;
      }

      a3 = 0;
      v11 += v12;
      a2 = 1;
      v8 -= v12;
      if (!v8)
      {
        goto LABEL_14;
      }
    }
  }

  else
  {
    v10 = 0;
LABEL_14:
    result = 0;
  }

  if (a6)
  {
    *a6 = v10;
  }

  return result;
}

uint64_t DataSource::ReadBytes64(DataSource *this, unsigned __int16 a2, uint64_t a3, unint64_t a4, char *a5, unint64_t *a6)
{
  if (a4)
  {
    v8 = a4;
    v10 = 0;
    v11 = 0;
    while (1)
    {
      v12 = v8 >= 0xFFFFFFFF ? 0xFFFFFFFFLL : v8;
      v15 = 0;
      result = (*(*this + 48))(this, a2, a3, v12, &a5[v11], &v15);
      v10 += v15;
      if (result || v15 < v12)
      {
        break;
      }

      a3 = 0;
      v11 += v12;
      a2 = 1;
      v8 -= v12;
      if (!v8)
      {
        goto LABEL_14;
      }
    }
  }

  else
  {
    v10 = 0;
LABEL_14:
    result = 0;
  }

  if (a6)
  {
    *a6 = v10;
  }

  return result;
}

void Slice_DataSource::WriteBytes(Slice_DataSource *this, unsigned __int16 a2, uint64_t a3, unsigned int a4, const void *a5, unsigned int *a6)
{
  exception = __cxa_allocate_exception(0x10uLL);
  std::runtime_error::runtime_error(exception, "not writable");
}

uint64_t Slice_DataSource::ReadBytes(Slice_DataSource *this, char a2, uint64_t a3, unsigned int a4, void *a5, unsigned int *a6)
{
  if (a6)
  {
    *a6 = 0;
  }

  v14 = 0;
  result = (*(*this + 24))(this, &v14);
  if (!result)
  {
    if ((a2 & 3u) > 1)
    {
      if ((a2 & 3) == 2)
      {
        a3 += v14;
      }

      else
      {
        a3 = 0;
      }
    }

    else if ((a2 & 3) != 0)
    {
      a3 += *(this + 4);
    }

    result = 4294967256;
    if ((a3 & 0x8000000000000000) == 0 && v14 > a3)
    {
      if (v14 - a3 >= a4)
      {
        v12 = a4;
      }

      else
      {
        v12 = v14 - a3;
      }

      if (v12 < 1)
      {
        return 4294967246;
      }

      else
      {
        v13 = v12;
        result = (*(**(this + 2) + 48))(*(this + 2), 0, *(this + 3) + a3);
        if (a6)
        {
          *a6 = v13;
        }

        *(this + 4) = a3 + v13;
      }
    }
  }

  return result;
}

uint64_t Slice_DataSource::SetSize(Slice_DataSource *this, uint64_t a2)
{
  *(this + 5) = a2;
  *(this + 48) = 1;
  return 0;
}

uint64_t Slice_DataSource::GetSize(Slice_DataSource *this, uint64_t *a2)
{
  if (*(this + 48) == 1)
  {
    v4 = *(this + 5);
  }

  else
  {
    result = (*(**(this + 2) + 24))(*(this + 2), a2);
    if (result)
    {
      return result;
    }

    v6 = *(this + 3);
    if (*a2 < v6)
    {
      v6 = *a2;
    }

    v4 = *a2 - v6;
  }

  result = 0;
  *a2 = v4;
  return result;
}

uint64_t DataSource::GetSize32(DataSource *this, unsigned int *a2)
{
  v4 = 0;
  result = (*(*this + 24))(this, &v4);
  if (!result)
  {
    if (v4 <= 0xFFFFFFFFLL)
    {
      result = 0;
      *a2 = v4;
    }

    else
    {
      return 1868981823;
    }
  }

  return result;
}

uint64_t DataSource::WithData(uint64_t a1, uint64_t a2, size_t size, uint64_t a4)
{
  v18 = *MEMORY[0x1E69E9840];
  v13 = 0;
  v8 = malloc_type_calloc(1uLL, size, 0xA4215B9EuLL);
  if (v8)
  {
    v9 = (*(*a1 + 48))(a1, 0, a2, size, v8, &v13);
    if (v9)
    {
      v10 = v9;
      if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
      {
        *buf = 136315394;
        v15 = "DataSource.cpp";
        v16 = 1024;
        v17 = 121;
        _os_log_impl(&dword_18F5DF000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "%25s:%-5d  DataSource data read failed", buf, 0x12u);
      }
    }

    else if (v13 >= size)
    {
      std::function<void ()(void const*)>::operator()(*(a4 + 24), v8);
      v10 = 0;
    }

    else
    {
      if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
      {
        *buf = 136315394;
        v15 = "DataSource.cpp";
        v16 = 1024;
        v17 = 122;
        _os_log_impl(&dword_18F5DF000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "%25s:%-5d  DataSource data insufficient amount", buf, 0x12u);
      }

      v10 = 4294967257;
    }
  }

  else
  {
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      *buf = 136315394;
      v15 = "DataSource.cpp";
      v16 = 1024;
      v17 = 118;
      _os_log_impl(&dword_18F5DF000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "%25s:%-5d  DataSource data insufficient memory", buf, 0x12u);
    }

    v10 = 4294967188;
  }

  free(v8);
  v11 = *MEMORY[0x1E69E9840];
  return v10;
}

uint64_t std::function<void ()(void const*)>::operator()(uint64_t a1, uint64_t a2)
{
  v3 = a2;
  if (!a1)
  {
    std::__throw_bad_function_call[abi:ne200100]();
  }

  return (*(*a1 + 48))(a1, &v3);
}

uint64_t UnixFile_DataSource::SetSize(UnixFile_DataSource *this, off_t a2)
{
  *(this + 3) = -1;
  if (ftruncate(*(this + 3), a2) == -1)
  {
    return 1886547263;
  }

  result = 0;
  *(this + 3) = a2;
  return result;
}

uint64_t Seekable_DataSource::WriteBytes(Seekable_DataSource *this, char a2, uint64_t a3, uint64_t a4, const void *a5, unsigned int *a6)
{
  v6 = *(this + 5);
  if (!v6)
  {
    return 1869627199;
  }

  if (!a5)
  {
    return 4294967246;
  }

  v17 = 0;
  if ((a2 & 3) == 2)
  {
    result = (*(*this + 24))(this, &v17);
    if (result)
    {
      return result;
    }

    v13 = (this + 24);
    v14 = v17;
LABEL_12:
    a3 += v14;
    goto LABEL_13;
  }

  v13 = (this + 24);
  if ((a2 & 3) != 0)
  {
    if ((a2 & 3) == 3)
    {
      a3 = 0;
      goto LABEL_15;
    }

    v14 = *v13;
    goto LABEL_12;
  }

LABEL_13:
  if (a3 < 0)
  {
    return 4294967256;
  }

  v6 = *(this + 5);
LABEL_15:
  v16 = 0;
  result = v6(*(this + 2), a3, a4, a5, &v16);
  if (!result)
  {
    v15 = v16;
    if (a6)
    {
      *a6 = v16;
    }

    *v13 = a3 + v15;
  }

  return result;
}

uint64_t Seekable_DataSource::ReadBytes(Seekable_DataSource *this, char a2, uint64_t a3, unsigned int a4, void *a5, unsigned int *a6)
{
  if (a6)
  {
    *a6 = 0;
  }

  if (!*(this + 4))
  {
    return 1869627199;
  }

  if (!a5)
  {
    return 4294967246;
  }

  v16 = 0;
  result = (*(*this + 24))(this, &v16);
  if (!result)
  {
    if ((a2 & 3u) > 1)
    {
      if ((a2 & 3) == 3)
      {
        a3 = 0;
      }

      else
      {
        a3 += v16;
        if (a3 < 0)
        {
          return 4294967256;
        }
      }
    }

    else
    {
      if ((a2 & 3) != 0)
      {
        a3 += *(this + 3);
      }

      if (a3 < 0)
      {
        return 4294967256;
      }
    }

    if (v16 <= a3)
    {
      return 4294967257;
    }

    else
    {
      if (v16 - a3 >= a4)
      {
        v13 = a4;
      }

      else
      {
        v13 = v16 - a3;
      }

      v15 = 0;
      result = (*(this + 4))(*(this + 2), a3, v13, a5, &v15);
      v14 = v15;
      if (a6)
      {
        *a6 = v15;
      }

      *(this + 3) = a3 + v14;
    }
  }

  return result;
}

uint64_t Seekable_DataSource::SetSize(Seekable_DataSource *this)
{
  v1 = *(this + 7);
  if (v1)
  {
    return v1(*(this + 2));
  }

  else
  {
    return 1869627199;
  }
}

uint64_t Seekable_DataSource::GetSize(Seekable_DataSource *this, uint64_t *a2)
{
  v3 = *(this + 6);
  if (v3)
  {
    v4 = v3(*(this + 2));
  }

  else
  {
    v4 = 0x7FFFFFFFFFFFFFFFLL;
  }

  *a2 = v4;
  return 0;
}

void Buffer_DataSource::Slice(Buffer_DataSource *this, unint64_t a2)
{
  if (*(this + 2) < a2)
  {
    v2 = *(this + 2);
  }

  operator new();
}

uint64_t Buffer_DataSource::WithData(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v12 = *MEMORY[0x1E69E9840];
  v4 = a2 - a1[4];
  if (v4 < 0 || (v5 = a1[2], v4 >= v5))
  {
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      v8 = 136315394;
      v9 = "DataSource.cpp";
      v10 = 1024;
      v11 = 764;
      _os_log_impl(&dword_18F5DF000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "%25s:%-5d  DataSource data bad position", &v8, 0x12u);
    }

    result = 4294967256;
  }

  else if (v4 <= v5 - a3)
  {
    std::function<void ()(void const*)>::operator()(*(a4 + 24), a1[3] + v4);
    result = 0;
  }

  else
  {
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      v8 = 136315394;
      v9 = "DataSource.cpp";
      v10 = 1024;
      v11 = 765;
      _os_log_impl(&dword_18F5DF000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "%25s:%-5d  DataSource data insufficient amount", &v8, 0x12u);
    }

    result = 4294967257;
  }

  v7 = *MEMORY[0x1E69E9840];
  return result;
}

void Buffer_DataSource::WriteBytes(Buffer_DataSource *this, unsigned __int16 a2, uint64_t a3, unsigned int a4, const void *a5, unsigned int *a6)
{
  exception = __cxa_allocate_exception(0x10uLL);
  std::runtime_error::runtime_error(exception, "not writable");
}

uint64_t Buffer_DataSource::ReadBytes(Buffer_DataSource *this, char a2, uint64_t a3, unsigned int a4, void *__dst, unsigned int *a6)
{
  if (a6)
  {
    *a6 = 0;
  }

  v8 = *(this + 2);
  v9 = *(this + 4);
  if ((a2 & 3u) > 1)
  {
    if ((a2 & 3) == 2)
    {
      a3 += v8 + v9;
    }

    else
    {
      a3 = 0;
    }
  }

  else if ((a2 & 3) != 0)
  {
    a3 += *(this + 5);
  }

  result = 4294967256;
  v11 = a3 - v9;
  if (a3 - v9 >= 0)
  {
    v12 = v8 <= v11;
    v13 = v8 - v11;
    if (!v12)
    {
      if (v13 >= a4)
      {
        v14 = a4;
      }

      else
      {
        v14 = v13;
      }

      if (v14 <= 0)
      {
        if (a6)
        {
          *a6 = 0;
        }

        return 4294967246;
      }

      else
      {
        memcpy(__dst, (*(this + 3) + v11), v14);
        if (a6)
        {
          *a6 = v14;
        }

        result = 0;
        *(this + 5) = v14 + v11 + *(this + 4);
      }
    }
  }

  return result;
}

uint64_t ParseAC3Header(unsigned __int8 *a1, unsigned int a2, AudioStreamBasicDescription *a3, unsigned int *a4, unsigned int *a5, unsigned int *a6, unsigned int *a7, int *a8)
{
  *&v82[11] = *MEMORY[0x1E69E9840];
  v8 = 560226676;
  if (a1 && a2 >= 0xA)
  {
    if (a2 >= 0xC)
    {
      v16 = 12;
    }

    else
    {
      v16 = a2;
    }

    v17 = CheckAndSwapAC3Header(a1, v16, &v81);
    if (v17)
    {
      goto LABEL_127;
    }

    v79[0] = &v81;
    v79[1] = &v82[v16 - 1];
    v80 = 0;
    if ((&v81 & 3) != 0)
    {
      v18 = 0;
      v19 = &v81;
      v20 = v82;
      v21 = -8;
      do
      {
        v22 = v21;
        v23 = *v19++;
        v18 = v23 | (v18 << 8);
        v21 += 8;
        if ((v20 & 3) == 0)
        {
          break;
        }

        LOBYTE(v20) = v20 + 1;
      }

      while (v19 < &v82[v16 - 1]);
      v79[0] = v19;
      LODWORD(v80) = v18 << (24 - v21);
      HIDWORD(v80) = v22 + 16;
    }

    TBitstreamReader<unsigned int>::SkipBits(v79, 40);
    v24 = v80 >> 27;
    HIDWORD(v80) -= 5;
    if (v80 < 0)
    {
      TBitstreamReader<unsigned int>::FillCacheFrom(v79, v79[0]++);
      v26 = BYTE4(v80);
      v24 |= v80 >> SBYTE4(v80);
      HIDWORD(v80) += 32;
      if (HIDWORD(v80))
      {
        v25 = v80 << -v26;
      }

      else
      {
        v25 = 0;
      }
    }

    else
    {
      v25 = 32 * v80;
    }

    LODWORD(v80) = v25;
    TBitstreamReader<unsigned int>::PutBack(v79, 13);
    if (v24 > 8u)
    {
      if (a2 < 0xC || v24 - 17 < 0xFFFFFFFA)
      {
        goto LABEL_126;
      }

      TBitstreamReader<unsigned int>::PutBack(v79, 16);
      v27 = v80 >> 30;
      HIDWORD(v80) -= 2;
      if (v80 < 0)
      {
        TBitstreamReader<unsigned int>::FillCacheFrom(v79, v79[0]++);
        v32 = BYTE4(v80);
        v27 |= v80 >> SBYTE4(v80);
        HIDWORD(v80) += 32;
        if (HIDWORD(v80))
        {
          v28 = v80 << -v32;
        }

        else
        {
          v28 = 0;
        }
      }

      else
      {
        v28 = 4 * v80;
      }

      LODWORD(v80) = v28;
      TBitstreamReader<unsigned int>::SkipBits(v79, 3);
      v45 = v80 >> 21;
      v46 = HIDWORD(v80) - 11;
      HIDWORD(v80) -= 11;
      if (v80 < 0)
      {
        TBitstreamReader<unsigned int>::FillCacheFrom(v79, v79[0]);
        v48 = ++v79[0];
        v45 |= v80 >> SBYTE4(v80);
        v46 = HIDWORD(v80) + 32;
        if (HIDWORD(v80) == -32)
        {
          v49 = 0;
          v78 = 2 * v45 + 2;
          v80 = 0xFFFFFFFE00000000;
          goto LABEL_54;
        }

        v47 = v80 << -BYTE4(v80);
      }

      else
      {
        v47 = v80 << 11;
      }

      v78 = 2 * v45 + 2;
      v49 = v47 >> 30;
      v50 = v46 - 2;
      v80 = __PAIR64__(v50, v47);
      if (v50 >= 0)
      {
        v51 = 4 * v47;
        goto LABEL_56;
      }

      v48 = v79[0];
LABEL_54:
      TBitstreamReader<unsigned int>::FillCacheFrom(v79, v48);
      v52 = ++v79[0];
      v49 |= v80 >> SBYTE4(v80);
      v50 = HIDWORD(v80) + 32;
      if (HIDWORD(v80) == -32)
      {
        v53 = 0;
        v80 = 0xFFFFFFFE00000000;
        goto LABEL_60;
      }

      v51 = v80 << -BYTE4(v80);
LABEL_56:
      v53 = v51 >> 30;
      v54 = v50 - 2;
      v80 = __PAIR64__(v54, v51);
      if (v54 >= 0)
      {
        v55 = 4 * v51;
LABEL_63:
        LODWORD(v80) = v55;
        if (v49 != 3)
        {
          v56 = &theSampleRateTable[v49];
          v57 = theNumberOfBlocks[v53] << 8;
          goto LABEL_67;
        }

        if (v53 != 3)
        {
          v56 = (&theSecondarySampleRateTable + 8 * v53);
          v57 = 1536;
LABEL_67:
          v76 = v57;
          v34 = *v56;
          v58 = v55 >> 29;
          HIDWORD(v80) = v54 - 3;
          if (v54 - 3 < 0)
          {
            TBitstreamReader<unsigned int>::FillCacheFrom(v79, v79[0]++);
            v60 = BYTE4(v80);
            v58 |= v80 >> SBYTE4(v80);
            HIDWORD(v80) += 32;
            if (HIDWORD(v80))
            {
              v59 = v80 << -v60;
            }

            else
            {
              v59 = 0;
            }
          }

          else
          {
            v59 = 8 * v55;
          }

          LODWORD(v80) = v59;
          Bit = TBitstreamReader<unsigned int>::GetBit(v79);
          TBitstreamReader<unsigned int>::SkipBits(v79, 5);
          v62 = v80 >> 27;
          HIDWORD(v80) -= 5;
          if (v80 < 0)
          {
            TBitstreamReader<unsigned int>::FillCacheFrom(v79, v79[0]++);
            v64 = BYTE4(v80);
            v62 |= v80 >> SBYTE4(v80);
            HIDWORD(v80) += 32;
            if (HIDWORD(v80))
            {
              v63 = v80 << -v64;
            }

            else
            {
              v63 = 0;
            }
          }

          else
          {
            v63 = 32 * v80;
          }

          LODWORD(v80) = v63;
          if (TBitstreamReader<unsigned int>::GetBit(v79))
          {
            TBitstreamReader<unsigned int>::SkipBits(v79, 8);
          }

          if (!v58)
          {
            TBitstreamReader<unsigned int>::SkipBits(v79, 5);
            if (TBitstreamReader<unsigned int>::GetBit(v79))
            {
              TBitstreamReader<unsigned int>::SkipBits(v79, 8);
            }
          }

          if (v27 == 1 && TBitstreamReader<unsigned int>::GetBit(v79))
          {
            v77 = WORD1(v80);
            HIDWORD(v80) -= 16;
            if (v80 < 0)
            {
              TBitstreamReader<unsigned int>::FillCacheFrom(v79, v79[0]);
              v77 |= (v80 >> SBYTE4(v80));
            }
          }

          else
          {
            v77 = 0;
          }

          if (Bit)
          {
            v65 = theChannelTable[v58] + 1;
          }

          else
          {
            v65 = theChannelTable[v58];
          }

          if (!a4)
          {
            v67 = v76;
            if (!a5)
            {
              goto LABEL_114;
            }

            goto LABEL_113;
          }

          ChannelLayoutTag = GetChannelLayoutTag(v58, Bit != 0);
          v67 = v76;
          goto LABEL_112;
        }

LABEL_126:
        v17 = v8;
LABEL_127:
        v8 = v17;
        goto LABEL_128;
      }

      v52 = v79[0];
LABEL_60:
      TBitstreamReader<unsigned int>::FillCacheFrom(v79, v52);
      ++v79[0];
      v53 |= v80 >> SBYTE4(v80);
      v54 = HIDWORD(v80) + 32;
      if (HIDWORD(v80) == -32)
      {
        v55 = 0;
      }

      else
      {
        v55 = v80 << -BYTE4(v80);
      }

      goto LABEL_63;
    }

    v29 = v80 >> 30;
    v30 = HIDWORD(v80) - 2;
    HIDWORD(v80) -= 2;
    if (v80 < 0)
    {
      TBitstreamReader<unsigned int>::FillCacheFrom(v79, v79[0]++);
      v29 |= v80 >> SBYTE4(v80);
      v30 = HIDWORD(v80) + 32;
      if (HIDWORD(v80) == -32)
      {
        v31 = 0;
      }

      else
      {
        v31 = v80 << -BYTE4(v80);
      }
    }

    else
    {
      v31 = 4 * v80;
    }

    LODWORD(v80) = v31;
    v33 = v29;
    if (v29 == 3)
    {
      goto LABEL_126;
    }

    v34 = theSampleRateTable[v29];
    v35 = v31 >> 26;
    HIDWORD(v80) = v30 - 6;
    if (v30 - 6 < 0)
    {
      TBitstreamReader<unsigned int>::FillCacheFrom(v79, v79[0]++);
      v37 = BYTE4(v80);
      v35 |= v80 >> SBYTE4(v80);
      HIDWORD(v80) += 32;
      v36 = HIDWORD(v80) ? v80 << -v37 : 0;
    }

    else
    {
      v36 = v31 << 6;
    }

    LODWORD(v80) = v36;
    if (v35 > 0x25)
    {
      goto LABEL_126;
    }

    v38 = framesizetab[38 * v33 + v35];
    if (a7)
    {
      *a7 = 2 * framesizetab[38 * v33 + 37];
    }

    TBitstreamReader<unsigned int>::SkipBits(v79, 5);
    v39 = v80 >> 29;
    v40 = HIDWORD(v80) - 3;
    HIDWORD(v80) -= 3;
    if (v80 < 0)
    {
      TBitstreamReader<unsigned int>::FillCacheFrom(v79, v79[0]);
      v42 = ++v79[0];
      v39 |= v80 >> SBYTE4(v80);
      v40 = HIDWORD(v80) + 32;
      if (HIDWORD(v80) == -32)
      {
        v43 = 0;
        v80 = 0xFFFFFFFD00000000;
        goto LABEL_95;
      }

      v41 = v80 << -BYTE4(v80);
    }

    else
    {
      v41 = 8 * v80;
    }

    v43 = v41 >> 29;
    LODWORD(v80) = v41;
    HIDWORD(v80) = v40 - 3;
    if (v40 - 3 >= 0)
    {
      v77 = v39;
      v44 = 8 * v41;
LABEL_98:
      LODWORD(v80) = v44;
      v70 = v43;
      if ((v43 & 1) != 0 && v43 != 1)
      {
        TBitstreamReader<unsigned int>::SkipBits(v79, 2);
      }

      if ((v43 & 4) != 0)
      {
        TBitstreamReader<unsigned int>::SkipBits(v79, 2);
      }

      if (v43 == 2)
      {
        TBitstreamReader<unsigned int>::SkipBits(v79, 2);
      }

      v78 = 2 * v38;
      v71 = TBitstreamReader<unsigned int>::GetBit(v79);
      v62 = v80 >> 27;
      HIDWORD(v80) -= 5;
      if (v80 < 0)
      {
        TBitstreamReader<unsigned int>::FillCacheFrom(v79, v79[0]);
        v62 |= v80 >> SBYTE4(v80);
      }

      if (v71)
      {
        v65 = theChannelTable[v70] + 1;
      }

      else
      {
        v65 = theChannelTable[v70];
      }

      if (!a4)
      {
        v67 = 1536;
        if (!a5)
        {
          goto LABEL_114;
        }

        goto LABEL_113;
      }

      ChannelLayoutTag = GetChannelLayoutTag(v70, v71 != 0);
      v67 = 1536;
LABEL_112:
      *a4 = ChannelLayoutTag;
      if (!a5)
      {
LABEL_114:
        if (a3)
        {
          a3->mSampleRate = v34;
          if (v24 <= 8u)
          {
            v72 = 1633889587;
          }

          else
          {
            v72 = 1700998451;
          }

          a3->mFormatID = v72;
          a3->mFormatFlags = 0;
          a3->mBytesPerPacket = 0;
          a3->mFramesPerPacket = v67;
          a3->mBytesPerFrame = 0;
          a3->mChannelsPerFrame = v65;
          *&a3->mBitsPerChannel = 0;
        }

        if (a8)
        {
          if (v62)
          {
            v73 = -v62;
          }

          else
          {
            v73 = -31;
          }

          *a8 = v73;
        }

        v8 = 0;
        if (a6)
        {
          *a6 = v77;
        }

        goto LABEL_126;
      }

LABEL_113:
      *a5 = v78;
      goto LABEL_114;
    }

    v42 = v79[0];
LABEL_95:
    TBitstreamReader<unsigned int>::FillCacheFrom(v79, v42);
    ++v79[0];
    v68 = BYTE4(v80);
    v43 |= v80 >> SBYTE4(v80);
    v69 = HIDWORD(v80) == -32;
    HIDWORD(v80) += 32;
    v77 = v39;
    if (v69)
    {
      v44 = 0;
    }

    else
    {
      v44 = v80 << -v68;
    }

    goto LABEL_98;
  }

LABEL_128:
  v74 = *MEMORY[0x1E69E9840];
  return v8;
}

uint64_t CheckAndSwapAC3Header(unsigned __int8 *a1, unsigned int a2, unsigned __int8 *a3)
{
  v3 = 560226676;
  if (a2 >= 2)
  {
    v4 = *a1;
    if (v4 == 119)
    {
      if (a1[1] == 11)
      {
        if ((a2 & 0xFFFFFFFE) != 0)
        {
          v6 = 0;
          do
          {
            v7 = &a3[v6];
            *v7 = a1[v6 + 1];
            v7[1] = a1[v6];
            v6 += 2;
          }

          while (v6 < (a2 & 0xFFFFFFFE));
        }

        v3 = 0;
        if (a2)
        {
          a3[a2 - 1] = a1[a2 - 1];
        }
      }
    }

    else if (v4 == 11 && a1[1] == 119)
    {
      v3 = a2;
      do
      {
        v5 = *a1++;
        *a3++ = v5;
        --v3;
      }

      while (v3);
    }
  }

  return v3;
}

uint64_t GetChannelLayoutTag(int a1, int a2)
{
  if (a1 <= 4)
  {
    switch(a1)
    {
      case 1:
        v5 = a2 == 0;
        v6 = 6553601;
        v7 = 9764866;
        goto LABEL_18;
      case 3:
        v2 = 9961476;
        v3 = a2 == 0;
        v4 = 9830403;
LABEL_14:
        if (v3)
        {
          return v4;
        }

        else
        {
          return v2;
        }

      case 4:
        v2 = 10027012;
        v3 = a2 == 0;
        v4 = 8585219;
        goto LABEL_14;
    }

    goto LABEL_12;
  }

  if (a1 == 5)
  {
    v5 = a2 == 0;
    v6 = 9895940;
    v7 = 10092549;
    goto LABEL_18;
  }

  if (a1 != 6)
  {
    if (a1 == 7)
    {
      v5 = a2 == 0;
      v6 = 7798789;
      v7 = 8060934;
      goto LABEL_18;
    }

LABEL_12:
    v5 = a2 == 0;
    v6 = 6619138;
    v7 = 8716291;
    goto LABEL_18;
  }

  v5 = a2 == 0;
  v6 = 8650756;
  v7 = 9043973;
LABEL_18:
  if (v5)
  {
    return v6;
  }

  else
  {
    return v7;
  }
}

uint64_t ParseAC3MP4Cookie(unsigned __int8 *a1, unsigned int a2, AudioStreamBasicDescription *a3, unsigned int *a4, unsigned int *a5, unsigned int *a6)
{
  result = 560226676;
  if (a1)
  {
    if (a2 >= 0xB)
    {
      v8 = a1[8] >> 6;
      if (v8 != 3)
      {
        v10 = theSampleRateTable[v8];
        v11 = a1[9];
        v12 = (v11 >> 3) & 7;
        v13 = theChannelTable[v12];
        v14 = v11 & 4;
        if (a4)
        {
          *a4 = GetChannelLayoutTag(v12, v14 != 0);
        }

        result = 0;
        if (a3)
        {
          a3->mSampleRate = v10;
          *&a3->mFormatID = xmmword_18F9017A0;
          a3->mBytesPerFrame = 0;
          a3->mChannelsPerFrame = v13 + (v14 >> 2);
          *&a3->mBitsPerChannel = 0;
        }
      }
    }
  }

  return result;
}

uint64_t ConvertAC3HeaderToAC3MP4Cookie(unsigned __int8 *a1, unsigned int a2, unsigned __int8 *a3, unsigned int *a4)
{
  v22 = *MEMORY[0x1E69E9840];
  result = 560226676;
  if (a1)
  {
    if (a2 >= 0xA)
    {
      if (a3)
      {
        if (*a4 >= 0xB)
        {
          *a3 = 0x336361640B000000;
          result = CheckAndSwapAC3Header(a1, 0xAu, v17);
          if (!result)
          {
            v8 = v18;
            v9 = v19;
            a3[8] = v18 & 0xC0 | (v19 >> 2);
            v10 = v20;
            v11 = (v20 >> 2) & 0x38 | (v9 << 6);
            v12 = v20 >> 5;
            if (((v12 != 1) & (v20 >> 5)) != 0)
            {
              v13 = 5;
            }

            else
            {
              v13 = 3;
            }

            if ((v20 & 0x80u) != 0)
            {
              v13 += 2;
            }

            if (v12 == 2)
            {
              v14 = v13 + 2;
            }

            else
            {
              v14 = v13;
            }

            if (v14 <= 7)
            {
              v15 = 7;
            }

            else
            {
              v10 = v21;
              v15 = 15;
            }

            a3[9] = (4 * ((v10 >> (v15 - v14)) & 1)) | (v8 >> 4) & 3 | v11;
            a3[10] = (16 * v8) & 0x60;
            *a4 = 11;
          }
        }
      }
    }
  }

  v16 = *MEMORY[0x1E69E9840];
  return result;
}

_BYTE *ConvertAC3MP4CookieToAC3Header(_BYTE *result, uint64_t a2, unsigned __int8 *a3, unsigned int *a4)
{
  if (result && a2 && *a3 >= 0xAu)
  {
    *a2 = 30475;
    *(a2 + 2) = 0;
    v4 = result[8] & 0xC0;
    *(a2 + 4) = v4;
    v5 = v4 & 0xCF | (16 * (result[9] & 3));
    *(a2 + 4) = v5;
    *(a2 + 4) = (result[10] >> 4) & 0xE | v5;
    v6 = result[8];
    *(a2 + 5) = 4 * v6;
    *(a2 + 5) = (result[9] >> 6) & 3 | (4 * v6);
    v7 = (4 * result[9]) & 0xE0;
    *(a2 + 6) = v7;
    v8 = result[9];
    v9 = (v8 >> 2) & 1;
    v10 = (v8 >> 3) & 7;
    if (((v10 != 1) & (v8 >> 3)) != 0)
    {
      v11 = 2;
    }

    else
    {
      v11 = 0;
    }

    v12 = v11 + ((v8 >> 4) & 2);
    if (v10 == 2)
    {
      LOBYTE(v12) = v12 + 2;
    }

    *(a2 + 6) = v7 | (v9 << (4 - v12));
    *a3 = 10;
  }

  return result;
}

uint64_t GetAC3PacketIndex(unsigned __int8 *a1, int *a2, unsigned int *a3, unsigned int *a4)
{
  v15 = *MEMORY[0x1E69E9840];
  result = 560226676;
  if (a1)
  {
    result = CheckAndSwapAC3Header(a1, 0xAu, v12);
    if (!result)
    {
      if (v14 - 88 > 0x2F)
      {
        result = 560226676;
        if (v14 <= 0x47u)
        {
          v10 = 0;
          *a3 = 1;
LABEL_10:
          result = 0;
          *a2 = v10;
        }
      }

      else
      {
        v8 = v13;
        v9 = v13 >> 6;
        if (v9 <= 1)
        {
          v9 = v9 == 0;
LABEL_9:
          *a3 = v9;
          v10 = (v8 >> 3) & 7;
          goto LABEL_10;
        }

        result = 560226676;
        if (v9 == 2)
        {
          goto LABEL_9;
        }
      }
    }
  }

  v11 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t CombineEAC3PacketChannelsLayouts(uint64_t result, int a2, int a3, unsigned int *a4)
{
  if (!a3)
  {
    v4 = result;
    if (result == 8060934)
    {
      v4 = 10289159;
      if (a2 > 10027011)
      {
        if (a2 == 10027012)
        {
          goto LABEL_16;
        }

        v5 = 10092549;
      }

      else
      {
        if (a2 == 8585219)
        {
          goto LABEL_16;
        }

        v5 = 9895940;
      }

      if (a2 != v5)
      {
        v4 = 8060934;
      }
    }

LABEL_16:
    *a4 = v4;
    return result;
  }

  v4 = 10485768;
  *a4 = result;
  if ((a3 & 0x400) != 0)
  {
    v4 = 10551304;
    goto LABEL_16;
  }

  if ((a3 & 0x200) != 0)
  {
    goto LABEL_16;
  }

  if ((a3 & 0x100) == 0)
  {
    if ((a3 & 0x80) != 0)
    {
      v4 = 10944520;
      if ((a3 & 8) == 0)
      {
        v4 = 10354695;
      }
    }

    else if ((a3 & 0x40) != 0)
    {
      v4 = 10616840;
    }

    else if ((a3 & 0x20) != 0)
    {
      v4 = 10682376;
    }

    else if ((a3 & 0x10) != 0)
    {
      v4 = 10747912;
    }

    else
    {
      if ((a3 & 8) == 0)
      {
        return result;
      }

      v4 = 10420231;
    }

    goto LABEL_16;
  }

  *a4 = 10289159;
  if ((a3 & 0x80) != 0)
  {
    v4 = 10813448;
    goto LABEL_16;
  }

  if ((a3 & 8) != 0)
  {
    v4 = 10878984;
    goto LABEL_16;
  }

  if (result == 7798789)
  {
    v4 = 10158086;
    goto LABEL_16;
  }

  return result;
}

uint64_t ParseEAC3MP4Cookie(unsigned int *a1, unsigned int a2, BOOL *a3, AudioStreamBasicDescription *a4, unsigned int *a5, AudioStreamBasicDescription *a6, unsigned int *a7, unsigned int *a8, unsigned int *a9, unsigned int a10, BOOL *a11, unsigned int *a12)
{
  v16 = 4294967246;
  if (!a1 || a2 < 0xD)
  {
    return v16;
  }

  v69 = v15;
  v70 = v14;
  v71 = v12;
  v72 = v13;
  v21 = (a1 + a2);
  v66 = a1;
  v67 = v21;
  v68 = 0;
  if ((a1 & 3) != 0)
  {
    v22 = 0;
    v23 = a1 + 1;
    v24 = -8;
    do
    {
      v25 = v24;
      v26 = *a1;
      a1 = (a1 + 1);
      v22 = v26 | (v22 << 8);
      v24 += 8;
      if ((v23 & 3) == 0)
      {
        break;
      }

      ++v23;
    }

    while (a1 < v21);
    v66 = a1;
    LODWORD(v68) = v22 << (24 - v24);
    HIDWORD(v68) = v25 + 16;
  }

  TBitstreamReader<unsigned int>::SkipBits(&v66, 32);
  TBitstreamReader<unsigned int>::SkipBits(&v66, 32);
  v27 = HIDWORD(v68) - 13;
  HIDWORD(v68) -= 13;
  if (v68 < 0)
  {
    TBitstreamReader<unsigned int>::FillCacheFrom(&v66, v66);
    v29 = ++v66;
    v27 = HIDWORD(v68) + 32;
    if (HIDWORD(v68) == -32)
    {
      v30 = 0;
      v68 = 0xFFFFFFFD00000000;
      goto LABEL_16;
    }

    v28 = v68 << -BYTE4(v68);
  }

  else
  {
    v28 = v68 << 13;
  }

  v30 = v28 >> 29;
  v31 = v27 - 3;
  v68 = __PAIR64__(v31, v28);
  if (v31 >= 0)
  {
    v32 = 8 * v28;
    goto LABEL_19;
  }

  v29 = v66;
LABEL_16:
  TBitstreamReader<unsigned int>::FillCacheFrom(&v66, v29);
  ++v66;
  v30 |= v68 >> SBYTE4(v68);
  v31 = HIDWORD(v68) + 32;
  if (HIDWORD(v68) == -32)
  {
    v32 = 0;
  }

  else
  {
    v32 = v68 << -BYTE4(v68);
  }

LABEL_19:
  LODWORD(v68) = v32;
  if (v30 == 0xFF)
  {
    return 4294967246;
  }

  v33 = v32 >> 30;
  v34 = v31 - 2;
  HIDWORD(v68) = v34;
  if (v34 < 0)
  {
    TBitstreamReader<unsigned int>::FillCacheFrom(&v66, v66);
    ++v66;
    v33 |= v68 >> SBYTE4(v68);
    v34 = HIDWORD(v68) + 32;
    if (HIDWORD(v68) == -32)
    {
      v35 = 0;
    }

    else
    {
      v35 = v68 << -BYTE4(v68);
    }
  }

  else
  {
    v35 = 4 * v32;
  }

  LODWORD(v68) = v35;
  v36 = 0.0;
  if (v33 != 3)
  {
    v36 = theSampleRateTable[v33];
  }

  v37 = v35 >> 27;
  HIDWORD(v68) = v34 - 5;
  if (v34 - 5 < 0)
  {
    TBitstreamReader<unsigned int>::FillCacheFrom(&v66, v66);
    ++v66;
    v39 = BYTE4(v68);
    v37 |= v68 >> SBYTE4(v68);
    HIDWORD(v68) += 32;
    if (HIDWORD(v68))
    {
      v38 = v68 << -v39;
    }

    else
    {
      v38 = 0;
    }
  }

  else
  {
    v38 = 32 * v35;
  }

  LODWORD(v68) = v38;
  v40 = v37 - 11;
  if (v37 >= 9u && v40 > 5)
  {
    return 560226676;
  }

  TBitstreamReader<unsigned int>::SkipBits(&v66, 1);
  TBitstreamReader<unsigned int>::GetBit(&v66);
  v41 = HIDWORD(v68) - 3;
  HIDWORD(v68) -= 3;
  if (v68 < 0)
  {
    TBitstreamReader<unsigned int>::FillCacheFrom(&v66, v66);
    v43 = ++v66;
    v41 = HIDWORD(v68) + 32;
    if (HIDWORD(v68) == -32)
    {
      v44 = 0;
      v68 = 0xFFFFFFFD00000000;
      goto LABEL_43;
    }

    v42 = v68 << -BYTE4(v68);
  }

  else
  {
    v42 = 8 * v68;
  }

  v44 = v42 >> 29;
  LODWORD(v68) = v42;
  HIDWORD(v68) = v41 - 3;
  if (v41 - 3 >= 0)
  {
    v45 = 8 * v42;
    goto LABEL_46;
  }

  v43 = v66;
LABEL_43:
  TBitstreamReader<unsigned int>::FillCacheFrom(&v66, v43);
  ++v66;
  v46 = BYTE4(v68);
  v44 |= v68 >> SBYTE4(v68);
  HIDWORD(v68) += 32;
  if (HIDWORD(v68))
  {
    v45 = v68 << -v46;
  }

  else
  {
    v45 = 0;
  }

LABEL_46:
  LODWORD(v68) = v45;
  v47 = TBitstreamReader<unsigned int>::GetBit(&v66) != 0;
  ChannelLayoutTag = GetChannelLayoutTag(v44, v47);
  v65 = ChannelLayoutTag;
  TBitstreamReader<unsigned int>::SkipBits(&v66, 3);
  v50 = v68 >> 28;
  v51 = HIDWORD(v68) - 4;
  HIDWORD(v68) -= 4;
  if (v68 < 0)
  {
    TBitstreamReader<unsigned int>::FillCacheFrom(&v66, v66);
    ++v66;
    v53 = BYTE4(v68);
    v50 |= v68 >> SBYTE4(v68);
    v51 = HIDWORD(v68) + 32;
    HIDWORD(v68) += 32;
    if (HIDWORD(v68))
    {
      v52 = v68 << -v53;
    }

    else
    {
      v52 = 0;
    }
  }

  else
  {
    v52 = 16 * v68;
  }

  LODWORD(v68) = v52;
  if (v50)
  {
    v54 = v52 >> 23;
    v55 = v51 - 9;
    HIDWORD(v68) = v51 - 9;
    if (v51 - 9 < 0)
    {
      TBitstreamReader<unsigned int>::FillCacheFrom(&v66, v66);
      ++v66;
      v57 = BYTE4(v68);
      v54 |= v68 >> SBYTE4(v68);
      v55 = HIDWORD(v68) + 32;
      HIDWORD(v68) += 32;
      if (HIDWORD(v68))
      {
        v56 = v68 << -v57;
      }

      else
      {
        v56 = 0;
      }
    }

    else
    {
      v56 = v52 << 9;
    }

    LODWORD(v68) = v56;
    v58 = (v54 >> 7) & 2 | (__rbit32(v54) >> 21);
    v49.i32[0] = v58;
    v59 = vcnt_s8(v49);
    v59.i16[0] = vaddlv_u8(v59);
    CombineEAC3PacketChannelsLayouts(ChannelLayoutTag, v59.i32[0], v58, &v65);
  }

  else
  {
    TBitstreamReader<unsigned int>::SkipBits(&v66, 1);
    v55 = HIDWORD(v68);
  }

  if (v55 + 8 * (v67 - v66) >= 8)
  {
    TBitstreamReader<unsigned int>::SkipBits(&v66, 7);
    if (TBitstreamReader<unsigned int>::GetBit(&v66))
    {
      v60 = HIDWORD(v68);
      if (HIDWORD(v68) + 8 * (v67 - v66) >= 8)
      {
        v61 = BYTE3(v68);
        HIDWORD(v68) -= 8;
        if (v60 - 8 < 0)
        {
          TBitstreamReader<unsigned int>::FillCacheFrom(&v66, v66);
          v61 |= (v68 >> SBYTE4(v68));
        }

        if ((v61 - 1) > 0xF)
        {
          return 4294967246;
        }
      }
    }
  }

  if (a4)
  {
    LODWORD(a4->mSampleRate) = ChannelLayoutTag;
  }

  v62 = v65;
  if (a6)
  {
    LODWORD(a6->mSampleRate) = v65;
  }

  if (v40 >= 6)
  {
    v63 = 1633889587;
  }

  else
  {
    v63 = 1700998451;
  }

  if (a3)
  {
    *a3 = v36;
    *(a3 + 2) = v63;
    *(a3 + 12) = 0;
    *(a3 + 20) = 1536;
    *(a3 + 7) = ChannelLayoutTag;
    *(a3 + 4) = 0;
  }

  v16 = 0;
  if (a5)
  {
    *a5 = v36;
    a5[2] = v63;
    *(a5 + 3) = 0;
    *(a5 + 5) = 1536;
    a5[7] = v62;
    *(a5 + 4) = 0;
  }

  return v16;
}

uint64_t ConvertEAC3HeaderToEAC3MP4Cookie(unsigned __int8 *a1, unsigned int a2, unsigned __int8 *a3, unsigned int *a4)
{
  *&v169[3] = *MEMORY[0x1E69E9840];
  v4 = 560226676;
  if (!a1)
  {
    goto LABEL_14;
  }

  v5 = a2;
  if (a2 < 0xC)
  {
    goto LABEL_14;
  }

  v164 = 0;
  v165 = 0;
  v166 = 0;
  *v163 = 0;
  v162 = 0;
  memset(v168, 0, sizeof(v168));
  v160 = 0;
  __src = 0x336365640D000000;
  v157[0] = v168;
  v157[1] = v168;
  v157[2] = v169;
  v158 = 0;
  v159 = 16;
  if (ParseAC3Header(a1, a2, &v161, &v160, &v163[1], &v162, v163, 0))
  {
    goto LABEL_14;
  }

  if ((v161.mFormatID & 0xFBFFFFFF) != 0x61632D33)
  {
    *a4 = 0;
    goto LABEL_14;
  }

  v154 = 0;
  v155 = 0;
  v156 = 0;
  if (v5 >= 0x8A)
  {
    v9 = 138;
  }

  else
  {
    v9 = v5 & 0xFFFFFFFE;
  }

  LOBYTE(v143) = 0;
  std::vector<unsigned char>::__append(&v154, v9, &v143);
  v10 = v154;
  v11 = v155 - v154;
  v12 = CheckAndSwapAC3Header(a1, v155 - v154, v154);
  if (v12)
  {
    v4 = v12;
    if (!v10)
    {
      goto LABEL_11;
    }

    goto LABEL_10;
  }

  v152[0] = v10;
  v152[1] = (v10 + v11);
  v153 = 0;
  if ((v10 & 3) != 0 && v11)
  {
    v15 = 0;
    v16 = v10 + 1;
    v17 = -8;
    v18 = (v10 + 1);
    do
    {
      LODWORD(v153) = v15 << 8;
      HIDWORD(v153) = v17 + 16;
      v152[0] = v18;
      v19 = *(v18 - 1) | (v15 << 8);
      LODWORD(v153) = v19;
      v17 += 8;
      if ((v16 & 3) == 0)
      {
        break;
      }

      ++v16;
      v15 = v19;
      v20 = v18 >= (v10 + v11);
      v18 = (v18 + 1);
    }

    while (!v20);
    LODWORD(v153) = v19 << (24 - v17);
  }

  AT::TBitstreamWriter<unsigned short>::PutBits(v157, (v161.mSampleRate * (v163[1] + 1) / (v161.mFramesPerPacket >> 3) / 1000.0), 0xDu);
  AT::TBitstreamWriter<unsigned short>::PutBits(v157, 0, 3u);
  if (v161.mFormatID != 1633889587)
  {
    v127 = a4;
    __dst = a3;
    TBitstreamReader<unsigned int>::SkipBits(v152, 16);
    v24 = v153 >> 30;
    HIDWORD(v153) -= 2;
    if (v153 < 0)
    {
      TBitstreamReader<unsigned int>::FillCacheFrom(v152, v152[0]++);
      v27 = BYTE4(v153);
      v24 |= v153 >> SBYTE4(v153);
      HIDWORD(v153) += 32;
      if (HIDWORD(v153))
      {
        v25 = v153 << -v27;
      }

      else
      {
        v25 = 0;
      }
    }

    else
    {
      v25 = 4 * v153;
    }

    LODWORD(v153) = v25;
    TBitstreamReader<unsigned int>::SkipBits(v152, 14);
    v35 = v153 >> 30;
    v36 = HIDWORD(v153) - 2;
    HIDWORD(v153) -= 2;
    if (v153 < 0)
    {
      TBitstreamReader<unsigned int>::FillCacheFrom(v152, v152[0]++);
      v38 = BYTE4(v153);
      v35 |= v153 >> SBYTE4(v153);
      v36 = HIDWORD(v153) + 32;
      HIDWORD(v153) += 32;
      if (HIDWORD(v153))
      {
        v37 = v153 << -v38;
      }

      else
      {
        v37 = 0;
      }
    }

    else
    {
      v37 = 4 * v153;
    }

    LODWORD(v153) = v37;
    v135 = v35;
    v39 = v35;
    if (v35 == 3)
    {
      TBitstreamReader<unsigned int>::SkipBits(v152, 2);
      v40 = 3;
      v42 = v153;
      v41 = HIDWORD(v153);
    }

    else
    {
      v43 = v37 >> 30;
      v41 = v36 - 2;
      HIDWORD(v153) = v41;
      if (v41 < 0)
      {
        TBitstreamReader<unsigned int>::FillCacheFrom(v152, v152[0]++);
        v43 |= v153 >> SBYTE4(v153);
        v41 = HIDWORD(v153) + 32;
        if (HIDWORD(v153) == -32)
        {
          v42 = 0;
        }

        else
        {
          v42 = v153 << -BYTE4(v153);
        }
      }

      else
      {
        v42 = 4 * v37;
      }

      LODWORD(v153) = v42;
      v40 = v43;
    }

    v48 = v42 >> 29;
    HIDWORD(v153) = v41 - 3;
    if (v41 - 3 < 0)
    {
      TBitstreamReader<unsigned int>::FillCacheFrom(v152, v152[0]++);
      v50 = BYTE4(v153);
      v48 |= v153 >> SBYTE4(v153);
      HIDWORD(v153) += 32;
      if (HIDWORD(v153))
      {
        v49 = v153 << -v50;
      }

      else
      {
        v49 = 0;
      }
    }

    else
    {
      v49 = 8 * v42;
    }

    LODWORD(v153) = v49;
    Bit = TBitstreamReader<unsigned int>::GetBit(v152);
    v51 = v153 >> 27;
    HIDWORD(v153) -= 5;
    if (v153 < 0)
    {
      TBitstreamReader<unsigned int>::FillCacheFrom(v152, v152[0]++);
      v53 = BYTE4(v153);
      v51 |= v153 >> SBYTE4(v153);
      HIDWORD(v153) += 32;
      if (HIDWORD(v153))
      {
        v52 = v153 << -v53;
      }

      else
      {
        v52 = 0;
      }
    }

    else
    {
      v52 = 32 * v153;
    }

    LODWORD(v153) = v52;
    TBitstreamReader<unsigned int>::SkipBits(v152, 5);
    if (TBitstreamReader<unsigned int>::GetBit(v152) == 1)
    {
      TBitstreamReader<unsigned int>::SkipBits(v152, 8);
    }

    if (!v48)
    {
      TBitstreamReader<unsigned int>::SkipBits(v152, 5);
      if (TBitstreamReader<unsigned int>::GetBit(v152) == 1)
      {
        TBitstreamReader<unsigned int>::SkipBits(v152, 8);
      }
    }

    LOBYTE(v141) = v48;
    LOBYTE(v137) = v51;
    if (v24 == 1 && TBitstreamReader<unsigned int>::GetBit(v152) == 1)
    {
      TBitstreamReader<unsigned int>::SkipBits(v152, 16);
    }

    if (TBitstreamReader<unsigned int>::GetBit(v152) != 1)
    {
      goto LABEL_163;
    }

    if (v48 >= 3u)
    {
      TBitstreamReader<unsigned int>::SkipBits(v152, 2);
      if (v48)
      {
        TBitstreamReader<unsigned int>::SkipBits(v152, 6);
      }
    }

    if ((v48 & 4) != 0)
    {
      TBitstreamReader<unsigned int>::SkipBits(v152, 6);
    }

    if (Bit && TBitstreamReader<unsigned int>::GetBit(v152) == 1)
    {
      TBitstreamReader<unsigned int>::SkipBits(v152, 5);
    }

    if (v24)
    {
LABEL_163:
      if (TBitstreamReader<unsigned int>::GetBit(v152) != 1)
      {
        goto LABEL_176;
      }

      TBitstreamReader<unsigned int>::SkipBits(v152, 5);
      if (v48 == 2)
      {
        v64 = 4;
      }

      else
      {
        if (v48 < 7u)
        {
LABEL_169:
          if (TBitstreamReader<unsigned int>::GetBit(v152) == 1)
          {
            TBitstreamReader<unsigned int>::SkipBits(v152, 8);
          }

          if (!v48 && TBitstreamReader<unsigned int>::GetBit(v152) == 1)
          {
            TBitstreamReader<unsigned int>::SkipBits(v152, 8);
          }

          if (v39 <= 2)
          {
            TBitstreamReader<unsigned int>::SkipBits(v152, 1);
          }

LABEL_176:
          if (v24 || v40 == 3)
          {
            LOBYTE(v21) = v135;
            if (v24 != 2)
            {
              goto LABEL_185;
            }

            if (v40 == 3)
            {
              v65 = 1;
            }

            else
            {
              if (TBitstreamReader<unsigned int>::GetBit(v152) != 1)
              {
                goto LABEL_185;
              }

              v65 = 6;
            }
          }

          else
          {
            v65 = 1;
            LOBYTE(v21) = v135;
          }

          TBitstreamReader<unsigned int>::SkipBits(v152, v65);
LABEL_185:
          if (TBitstreamReader<unsigned int>::GetBit(v152) != 1)
          {
            goto LABEL_213;
          }

          v66 = v153 >> 26;
          HIDWORD(v153) -= 6;
          if (v153 < 0)
          {
            TBitstreamReader<unsigned int>::FillCacheFrom(v152, v152[0]++);
            v68 = BYTE4(v153);
            v66 |= v153 >> SBYTE4(v153);
            HIDWORD(v153) += 32;
            v67 = HIDWORD(v153) ? v153 << -v68 : 0;
          }

          else
          {
            v67 = v153 << 6;
          }

          LODWORD(v153) = v67;
          v69 = v66 + 1;
          std::vector<unsigned char>::reserve(&v164, (v66 + 1));
          if (v66 == 0xFF)
          {
LABEL_213:
            LOBYTE(v32) = 0;
          }

          else
          {
            v70 = 0;
            v71 = v165;
            v21 = v166;
            v72 = v164;
            do
            {
              v73 = BYTE3(v153);
              HIDWORD(v153) -= 8;
              if (v153 < 0)
              {
                TBitstreamReader<unsigned int>::FillCacheFrom(v152, v152[0]++);
                v75 = BYTE4(v153);
                v73 |= v153 >> SBYTE4(v153);
                HIDWORD(v153) += 32;
                if (HIDWORD(v153))
                {
                  v74 = v153 << -v75;
                }

                else
                {
                  v74 = 0;
                }
              }

              else
              {
                v74 = v153 << 8;
              }

              LODWORD(v153) = v74;
              if (v71 >= v21)
              {
                v76 = (v71 - v72);
                v77 = v71 - v72 + 1;
                if (v77 < 0)
                {
                  v164 = v72;
                  std::vector<APAC::UI18>::__throw_length_error[abi:ne200100]();
                }

                if (2 * (v21 - v72) > v77)
                {
                  v77 = 2 * (v21 - v72);
                }

                if (v21 - v72 >= 0x3FFFFFFFFFFFFFFFLL)
                {
                  v21 = 0x7FFFFFFFFFFFFFFFLL;
                }

                else
                {
                  v21 = v77;
                }

                if (v21)
                {
                  operator new();
                }

                *v76 = v73;
                v71 = v76 + 1;
                memcpy(0, v72, v76);
                if (v72)
                {
                  operator delete(v72);
                }

                v72 = 0;
              }

              else
              {
                *v71++ = v73;
              }

              ++v70;
            }

            while (v70 < v69);
            LOBYTE(v32) = 0;
            v165 = v71;
            v166 = v21;
            v164 = v72;
            LOBYTE(v21) = v135;
          }

LABEL_214:
          AT::TBitstreamWriter<unsigned short>::PutBits(v157, v21, 2u);
          AT::TBitstreamWriter<unsigned short>::PutBits(v157, v137, 5u);
          AT::TBitstreamWriter<unsigned short>::PutBits(v157, 0, 2u);
          AT::TBitstreamWriter<unsigned short>::PutBits(v157, v32, 3u);
          AT::TBitstreamWriter<unsigned short>::PutBits(v157, v141, 3u);
          AT::TBitstreamWriter<unsigned short>::PutBits(v157, Bit, 1u);
          AT::TBitstreamWriter<unsigned short>::PutBits(v157, 0, 3u);
          AT::TBitstreamWriter<unsigned short>::PutBits(v157, 0, 5u);
          TBitstreamWriter<unsigned short>::Flush(v157);
          v78 = v163[1];
          v79 = 13;
          if (v5 > v163[1] && v5 - v163[1] >= 0xC)
          {
            v80 = 0;
            v142 = 0;
            LODWORD(v81) = 0;
            v82 = 0;
            v83 = v154;
            v136 = v155 - v154;
            mSampleRate = v161.mSampleRate;
            v133 = v154 & 3;
            v134 = v154 + 12;
            mFramesPerPacket = v161.mFramesPerPacket;
            v85 = (v154 ^ 3) & 3;
            v130 = &v154[v85 + 1];
            v129 = (8 * ((v154 ^ 3) & 3)) ^ 0x18;
            v86 = 8 * v85 + 8;
            v132 = -1;
            v140 = -1;
            v131 = -1;
            do
            {
              v5 -= v78;
              v81 = v78 + v81;
              if (ParseAC3Header(&a1[v81], v5, &v161, &v160, &v163[1], &v162, v163, 0))
              {
                v87 = 0;
              }

              else
              {
                v87 = mSampleRate == v161.mSampleRate;
              }

              if (!v87 || mFramesPerPacket != v161.mFramesPerPacket || v161.mFormatID != 1700998451)
              {
                goto LABEL_288;
              }

              bzero(v83, v136);
              v88 = CheckAndSwapAC3Header(&a1[v81], 0xCu, v83);
              if (v88)
              {
                v4 = v88;
                goto LABEL_305;
              }

              v149 = v83;
              v150 = v134;
              v151 = 0;
              if (v133)
              {
                v89 = 0;
                v90 = 0;
                v91 = v83;
                do
                {
                  v92 = *v91++;
                  v90 = v92 | (v90 << 8);
                  v89 += 8;
                }

                while (v86 != v89);
                v149 = v130;
                LODWORD(v151) = v90 << v129;
                HIDWORD(v151) = v89;
              }

              TBitstreamReader<unsigned int>::SkipBits(&v149, 16);
              v93 = v151 >> 30;
              v94 = HIDWORD(v151) - 2;
              HIDWORD(v151) -= 2;
              if (v151 < 0)
              {
                TBitstreamReader<unsigned int>::FillCacheFrom(&v149, v149);
                v96 = ++v149;
                v93 |= v151 >> SBYTE4(v151);
                v94 = HIDWORD(v151) + 32;
                if (HIDWORD(v151) == -32)
                {
                  v97 = 0;
                  v151 = 0xFFFFFFFD00000000;
                  goto LABEL_237;
                }

                v95 = v151 << -BYTE4(v151);
              }

              else
              {
                v95 = 4 * v151;
              }

              v97 = v95 >> 29;
              LODWORD(v151) = v95;
              HIDWORD(v151) = v94 - 3;
              if (v94 - 3 >= 0)
              {
                v98 = 8 * v95;
                goto LABEL_240;
              }

              v96 = v149;
LABEL_237:
              TBitstreamReader<unsigned int>::FillCacheFrom(&v149, v96);
              ++v149;
              v99 = BYTE4(v151);
              v97 |= v151 >> SBYTE4(v151);
              HIDWORD(v151) += 32;
              if (HIDWORD(v151))
              {
                v98 = v151 << -v99;
              }

              else
              {
                v98 = 0;
              }

LABEL_240:
              LODWORD(v151) = v98;
              if (v93 == 1)
              {
                if ((v142 & 1) == 0)
                {
                  ++BYTE3(__src);
                  v79 = BYTE3(__src);
                }

                if (++v80 > 8u || (v100 = v97, v97 <= v140))
                {
LABEL_287:
                  *v127 = 0;
LABEL_288:
                  v4 = 560226676;
                  goto LABEL_305;
                }

                v101 = v162;
                v102 = vandq_s8(vshlq_u32(vdupq_n_s32(v162), xmmword_18F9017B0), xmmword_18F9017C0);
                *v102.i8 = vorr_s8(*v102.i8, *&vextq_s8(v102, v102, 8uLL));
                *(&__src + v79 - 2) = *(&__src + v79 - 2) & 0xE1 | (2 * v80) | ((v162 & 2) != 0);
                *(&__src + v79 - 1) |= v101 & 0x20 | (((v101 & 0x10) != 0) << 6) | (16 * v101) & 0x80 | v102.i8[0] | HIBYTE(v101) & 2 | v102.i8[4];
                v142 = 1;
              }

              else
              {
                if ((v93 | 2) != 2)
                {
                  goto LABEL_276;
                }

                if (!v93 && v97 <= v131)
                {
                  goto LABEL_287;
                }

                if (v97 <= v132 && v93 == 2)
                {
                  goto LABEL_287;
                }

                if (++v82 > 7)
                {
                  goto LABEL_287;
                }

                if (v93)
                {
                  v104 = v131;
                }

                else
                {
                  v104 = v97;
                }

                v105 = v132;
                if (v93)
                {
                  v105 = v97;
                }

                v131 = v104;
                v132 = v105;
                v143 = &v168[v79 - 8];
                v144 = v143;
                v145 = &v143[45 - v79];
                v146 = 0;
                v147 = 16;
                v148 = v143 & 1;
                TBitstreamReader<unsigned int>::SkipBits(&v149, 11);
                v106 = v153 >> 30;
                HIDWORD(v153) -= 2;
                if (v153 < 0)
                {
                  TBitstreamReader<unsigned int>::FillCacheFrom(v152, v152[0]++);
                  v108 = BYTE4(v153);
                  v106 |= v153 >> SBYTE4(v153);
                  HIDWORD(v153) += 32;
                  if (HIDWORD(v153))
                  {
                    v107 = v153 << -v108;
                  }

                  else
                  {
                    v107 = 0;
                  }
                }

                else
                {
                  v107 = 4 * v153;
                }

                LODWORD(v153) = v107;
                TBitstreamReader<unsigned int>::SkipBits(v152, 2);
                v109 = v153 >> 29;
                HIDWORD(v153) -= 3;
                if (v153 < 0)
                {
                  TBitstreamReader<unsigned int>::FillCacheFrom(v152, v152[0]++);
                  v111 = BYTE4(v153);
                  v109 |= v153 >> SBYTE4(v153);
                  HIDWORD(v153) += 32;
                  if (HIDWORD(v153))
                  {
                    v110 = v153 << -v111;
                  }

                  else
                  {
                    v110 = 0;
                  }
                }

                else
                {
                  v110 = 8 * v153;
                }

                LODWORD(v153) = v110;
                v112 = TBitstreamReader<unsigned int>::GetBit(v152);
                v113 = v153 >> 27;
                HIDWORD(v153) -= 5;
                if (v153 < 0)
                {
                  TBitstreamReader<unsigned int>::FillCacheFrom(v152, v152[0]++);
                  v115 = BYTE4(v153);
                  v113 |= v153 >> SBYTE4(v153);
                  HIDWORD(v153) += 32;
                  if (HIDWORD(v153))
                  {
                    v114 = v153 << -v115;
                  }

                  else
                  {
                    v114 = 0;
                  }
                }

                else
                {
                  v114 = 32 * v153;
                }

                LODWORD(v153) = v114;
                AT::TBitstreamWriter<unsigned short>::PutBits(&v143, v106, 2u);
                AT::TBitstreamWriter<unsigned short>::PutBits(&v143, v113, 5u);
                AT::TBitstreamWriter<unsigned short>::PutBits(&v143, 0, 2u);
                AT::TBitstreamWriter<unsigned short>::PutBits(&v143, 0, 3u);
                AT::TBitstreamWriter<unsigned short>::PutBits(&v143, v109, 3u);
                AT::TBitstreamWriter<unsigned short>::PutBits(&v143, v112, 1u);
                AT::TBitstreamWriter<unsigned short>::PutBits(&v143, 0, 3u);
                AT::TBitstreamWriter<unsigned short>::PutBits(&v143, 0, 5u);
                TBitstreamWriter<unsigned short>::Flush(&v143);
                v142 = 0;
                v80 = 0;
                BYTE3(__src) += 3;
                v79 = BYTE3(__src);
                ++v168[1];
                v100 = -1;
              }

              v140 = v100;
LABEL_276:
              v78 = v163[1];
            }

            while (v5 > v163[1] && v5 - v163[1] > 0xB);
          }

          v116 = v164;
          if (v165 - v164 != 2)
          {
            goto LABEL_300;
          }

          v149 = v164;
          v150 = v164 + 2;
          v151 = 0;
          if ((v164 & 3) != 0)
          {
            v117 = 0;
            v118 = 0;
            if ((v164 & 3) == 3)
            {
              v119 = 1;
            }

            else
            {
              v119 = 2;
            }

            v120 = 8 * v119 - 8;
            do
            {
              v121 = v118 + 1;
              v117 = *(v164 + v118) | (v117 << 8);
              v118 = v121;
            }

            while (v119 != v121);
            v116 = (v164 + v121);
            v149 = (v164 + v121);
            v122 = v117 << (32 - 8 * v119);
            v123 = v122 >> 25;
            LODWORD(v151) = v122;
            HIDWORD(v151) = v120 | 1;
            if ((v120 & 0x80000000) == 0)
            {
              v124 = v122 << 7;
              goto LABEL_294;
            }
          }

          else
          {
            v123 = 0;
            HIDWORD(v151) = -7;
          }

          TBitstreamReader<unsigned int>::FillCacheFrom(&v149, v116);
          ++v149;
          v125 = BYTE4(v151);
          v123 |= v151 >> SBYTE4(v151);
          HIDWORD(v151) += 32;
          if (HIDWORD(v151))
          {
            v124 = v151 << -v125;
          }

          else
          {
            v124 = 0;
          }

LABEL_294:
          LODWORD(v151) = v124;
          if (!v123 && TBitstreamReader<unsigned int>::GetBit(&v149) == 1)
          {
            v126 = BYTE3(v151);
            HIDWORD(v151) -= 8;
            if (v151 < 0)
            {
              TBitstreamReader<unsigned int>::FillCacheFrom(&v149, v149);
              v126 |= v151 >> SBYTE4(v151);
            }

            if (v126 - 1 <= 0xF)
            {
              v143 = &v168[v79 - 8];
              v144 = v143;
              v145 = &v143[45 - v79];
              v146 = 0;
              v147 = 16;
              v148 = v143 & 1;
              BYTE3(__src) += 3;
              v79 = BYTE3(__src);
              AT::TBitstreamWriter<unsigned short>::PutBits(&v143, 0, 7u);
              AT::TBitstreamWriter<unsigned short>::PutBits(&v143, 1, 1u);
              AT::TBitstreamWriter<unsigned short>::PutBits(&v143, v126, 8u);
              AT::TBitstreamWriter<unsigned short>::PutBits(&v143, 0, 8u);
            }
          }

LABEL_300:
          if (__dst)
          {
            if (*v127 >= v79)
            {
              *v127 = v79;
              memcpy(__dst, &__src, v79);
              v4 = 0;
            }

            else
            {
              v4 = 560100710;
            }
          }

          else
          {
            v4 = 0;
            *v127 = v79;
          }

          goto LABEL_305;
        }

        v64 = 2;
      }

      TBitstreamReader<unsigned int>::SkipBits(v152, v64);
      goto LABEL_169;
    }

    if (TBitstreamReader<unsigned int>::GetBit(v152) == 1)
    {
      TBitstreamReader<unsigned int>::SkipBits(v152, 6);
    }

    if (!v48 && TBitstreamReader<unsigned int>::GetBit(v152) == 1 && TBitstreamReader<unsigned int>::GetBit(v152) == 1)
    {
      TBitstreamReader<unsigned int>::SkipBits(v152, 6);
    }

    if (TBitstreamReader<unsigned int>::GetBit(v152) == 1)
    {
      TBitstreamReader<unsigned int>::SkipBits(v152, 6);
    }

    v54 = v153 >> 30;
    v55 = HIDWORD(v153) - 2;
    HIDWORD(v153) -= 2;
    if (v153 < 0)
    {
      TBitstreamReader<unsigned int>::FillCacheFrom(v152, v152[0]++);
      v57 = BYTE4(v153);
      v54 |= v153 >> SBYTE4(v153);
      v55 = HIDWORD(v153) + 32;
      HIDWORD(v153) += 32;
      if (HIDWORD(v153))
      {
        v56 = v153 << -v57;
      }

      else
      {
        v56 = 0;
      }
    }

    else
    {
      v56 = 4 * v153;
    }

    LODWORD(v153) = v56;
    switch(v54)
    {
      case 1u:
        v58 = 5;
        break;
      case 3u:
        v59 = v56 >> 27;
        HIDWORD(v153) = v55 - 5;
        if (v55 - 5 < 0)
        {
          TBitstreamReader<unsigned int>::FillCacheFrom(v152, v152[0]++);
          v61 = BYTE4(v153);
          v59 |= v153 >> SBYTE4(v153);
          HIDWORD(v153) += 32;
          if (HIDWORD(v153))
          {
            v60 = v153 << -v61;
          }

          else
          {
            v60 = 0;
          }
        }

        else
        {
          v60 = 32 * v56;
        }

        LODWORD(v153) = v60;
        if (TBitstreamReader<unsigned int>::GetBit(v152) == 1)
        {
          TBitstreamReader<unsigned int>::SkipBits(v152, 5);
          if (TBitstreamReader<unsigned int>::GetBit(v152) == 1)
          {
            TBitstreamReader<unsigned int>::SkipBits(v152, 4);
          }

          if (TBitstreamReader<unsigned int>::GetBit(v152) == 1)
          {
            TBitstreamReader<unsigned int>::SkipBits(v152, 4);
          }

          if (TBitstreamReader<unsigned int>::GetBit(v152) == 1)
          {
            TBitstreamReader<unsigned int>::SkipBits(v152, 4);
          }

          if (TBitstreamReader<unsigned int>::GetBit(v152) == 1)
          {
            TBitstreamReader<unsigned int>::SkipBits(v152, 4);
          }

          if (TBitstreamReader<unsigned int>::GetBit(v152) == 1)
          {
            TBitstreamReader<unsigned int>::SkipBits(v152, 4);
          }

          if (TBitstreamReader<unsigned int>::GetBit(v152) == 1)
          {
            TBitstreamReader<unsigned int>::SkipBits(v152, 4);
          }

          if (TBitstreamReader<unsigned int>::GetBit(v152) == 1)
          {
            if (TBitstreamReader<unsigned int>::GetBit(v152) == 1)
            {
              TBitstreamReader<unsigned int>::SkipBits(v152, 4);
            }

            if (TBitstreamReader<unsigned int>::GetBit(v152) == 1)
            {
              TBitstreamReader<unsigned int>::SkipBits(v152, 4);
            }
          }
        }

        if (TBitstreamReader<unsigned int>::GetBit(v152) == 1)
        {
          TBitstreamReader<unsigned int>::SkipBits(v152, 5);
          if (TBitstreamReader<unsigned int>::GetBit(v152) == 1)
          {
            TBitstreamReader<unsigned int>::SkipBits(v152, 7);
            if (TBitstreamReader<unsigned int>::GetBit(v152) == 1)
            {
              TBitstreamReader<unsigned int>::SkipBits(v152, 8);
            }
          }
        }

        v62 = 0;
        do
        {
          TBitstreamReader<unsigned int>::SkipBits(v152, 8);
          ++v62;
        }

        while (v59 + 2 > v62);
        goto LABEL_148;
      case 2u:
        v58 = 12;
        break;
      default:
LABEL_148:
        if (v48 <= 1u)
        {
          if (TBitstreamReader<unsigned int>::GetBit(v152) == 1)
          {
            TBitstreamReader<unsigned int>::SkipBits(v152, 14);
          }

          if (!v48 && TBitstreamReader<unsigned int>::GetBit(v152) == 1)
          {
            TBitstreamReader<unsigned int>::SkipBits(v152, 14);
          }
        }

        if (TBitstreamReader<unsigned int>::GetBit(v152) == 1)
        {
          if (v40)
          {
            if (v40 <= 3)
            {
              v63 = 0;
              do
              {
                if (TBitstreamReader<unsigned int>::GetBit(v152) == 1)
                {
                  TBitstreamReader<unsigned int>::SkipBits(v152, 5);
                }

                ++v63;
              }

              while (v63 < ((0x60302u >> (8 * (v40 - 1))) & 7));
            }
          }

          else
          {
            TBitstreamReader<unsigned int>::SkipBits(v152, 5);
          }
        }

        goto LABEL_163;
    }

    TBitstreamReader<unsigned int>::SkipBits(v152, v58);
    goto LABEL_148;
  }

  TBitstreamReader<unsigned int>::SkipBits(v152, 32);
  LODWORD(v21) = v153 >> 30;
  v22 = HIDWORD(v153) - 2 < 0;
  HIDWORD(v153) -= 2;
  v4 = 560226676;
  if (v22)
  {
    TBitstreamReader<unsigned int>::FillCacheFrom(v152, v152[0]++);
    v26 = BYTE4(v153);
    LODWORD(v21) = (v153 >> SBYTE4(v153)) | v21;
    HIDWORD(v153) += 32;
    if (HIDWORD(v153))
    {
      v23 = v153 << -v26;
    }

    else
    {
      v23 = 0;
    }
  }

  else
  {
    v23 = 4 * v153;
  }

  LODWORD(v153) = v23;
  if (v21 != 3)
  {
    TBitstreamReader<unsigned int>::SkipBits(v152, 6);
    v28 = v153 >> 27;
    v29 = HIDWORD(v153) - 5;
    HIDWORD(v153) -= 5;
    if (v153 < 0)
    {
      TBitstreamReader<unsigned int>::FillCacheFrom(v152, v152[0]);
      v31 = ++v152[0];
      v29 = HIDWORD(v153) + 32;
      v137 = (v153 >> SBYTE4(v153)) | v28;
      if (HIDWORD(v153) == -32)
      {
        v32 = 0;
        v153 = 0xFFFFFFFD00000000;
        goto LABEL_53;
      }

      v30 = v153 << -BYTE4(v153);
    }

    else
    {
      LOBYTE(v137) = v153 >> 27;
      v30 = 32 * v153;
    }

    v32 = v30 >> 29;
    v33 = v29 - 3;
    v153 = __PAIR64__(v33, v30);
    if (v33 >= 0)
    {
      v34 = 8 * v30;
      goto LABEL_55;
    }

    v31 = v152[0];
LABEL_53:
    TBitstreamReader<unsigned int>::FillCacheFrom(v152, v31);
    v44 = ++v152[0];
    v32 |= v153 >> SBYTE4(v153);
    v33 = HIDWORD(v153) + 32;
    if (HIDWORD(v153) == -32)
    {
      v46 = 0;
      v153 = 0xFFFFFFFD00000000;
      goto LABEL_59;
    }

    v34 = v153 << -BYTE4(v153);
LABEL_55:
    v141 = v34 >> 29;
    LODWORD(v153) = v34;
    HIDWORD(v153) = v33 - 3;
    if (v33 - 3 >= 0)
    {
      v45 = 8 * v34;
LABEL_62:
      LODWORD(v153) = v45;
      if ((v141 & 1) != 0 && v141 != 1)
      {
        TBitstreamReader<unsigned int>::SkipBits(v152, 2);
      }

      if ((v141 & 4) != 0)
      {
        TBitstreamReader<unsigned int>::SkipBits(v152, 2);
      }

      if (v141 == 2)
      {
        TBitstreamReader<unsigned int>::SkipBits(v152, 2);
      }

      v127 = a4;
      __dst = a3;
      Bit = TBitstreamReader<unsigned int>::GetBit(v152);
      goto LABEL_214;
    }

    v44 = v152[0];
    v46 = v34 >> 29;
LABEL_59:
    TBitstreamReader<unsigned int>::FillCacheFrom(v152, v44);
    ++v152[0];
    v47 = BYTE4(v153);
    v141 = (v153 >> SBYTE4(v153)) | v46;
    HIDWORD(v153) += 32;
    if (HIDWORD(v153))
    {
      v45 = v153 << -v47;
    }

    else
    {
      v45 = 0;
    }

    goto LABEL_62;
  }

LABEL_305:
  v10 = v154;
  if (v154)
  {
LABEL_10:
    operator delete(v10);
  }

LABEL_11:
  if (v164)
  {
    operator delete(v164);
  }

LABEL_14:
  v13 = *MEMORY[0x1E69E9840];
  return v4;
}

void sub_18F6DECCC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, void *__p)
{
  if (__p)
  {
    operator delete(__p);
  }

  v36 = *(v34 - 184);
  if (v36)
  {
    operator delete(v36);
  }

  _Unwind_Resume(exception_object);
}

void caulk::function_ref<caulk::expected<unsigned int,int> ()(ACAudioSpan &)>::empty_invoker()
{
  exception = __cxa_allocate_exception(8uLL);
  *exception = MEMORY[0x1E69E5558] + 16;
}

uint64_t acv2::AudioConverterChain::description(acv2::AudioConverterChain *this, void *a2)
{
  std::ostringstream::basic_ostringstream[abi:ne200100](&v23);
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v23, "AudioConverter ", 15);
  v4 = MEMORY[0x193ADEE30](&v23, a2);
  v5 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v4, " (", 2);
  v6 = MEMORY[0x193ADEE30](v5, a2);
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v6, "):\n", 3);
  v7 = a2[44];
  if (*v7 != 0x10000)
  {
    if (*v7)
    {
      if (!*v7)
      {
        goto LABEL_9;
      }
    }

    else if (!v7[2])
    {
      goto LABEL_9;
    }

LABEL_8:
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v23, "  Input layout tag:  0x", 23);
    *(&v23 + *(v23 - 24) + 8) = *(&v23 + *(v23 - 24) + 8) & 0xFFFFFFB5 | 8;
    v9 = MEMORY[0x193ADEE60](&v23, *a2[44]);
    *(v9 + *(*v9 - 24) + 8) = *(v9 + *(*v9 - 24) + 8) & 0xFFFFFFB5 | 2;
    LOBYTE(__p[0]) = 10;
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v9, __p, 1);
    goto LABEL_9;
  }

  v8 = vcnt_s8(v7[1]);
  v8.i16[0] = vaddlv_u8(v8);
  if (v8.i32[0])
  {
    goto LABEL_8;
  }

LABEL_9:
  v10 = a2[13];
  for (i = a2[14]; v10 != i; v10 += 8)
  {
    (*(**v10 + 64))(__p);
    if ((v22 & 0x80u) == 0)
    {
      v12 = __p;
    }

    else
    {
      v12 = __p[0];
    }

    if ((v22 & 0x80u) == 0)
    {
      v13 = v22;
    }

    else
    {
      v13 = __p[1];
    }

    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v23, v12, v13);
    if (v22 < 0)
    {
      operator delete(__p[0]);
    }
  }

  v14 = a2[47];
  if (*v14 != 0x10000)
  {
    if (*v14)
    {
      if (!*v14)
      {
        goto LABEL_27;
      }
    }

    else if (!v14[2])
    {
      goto LABEL_27;
    }

LABEL_26:
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v23, "  Output layout tag:  0x", 24);
    *(&v23 + *(v23 - 24) + 8) = *(&v23 + *(v23 - 24) + 8) & 0xFFFFFFB5 | 8;
    v16 = MEMORY[0x193ADEE60](&v23, *a2[47]);
    *(v16 + *(*v16 - 24) + 8) = *(v16 + *(*v16 - 24) + 8) & 0xFFFFFFB5 | 2;
    LOBYTE(__p[0]) = 10;
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v16, __p, 1);
    goto LABEL_27;
  }

  v15 = vcnt_s8(v14[1]);
  v15.i16[0] = vaddlv_u8(v15);
  if (v15.i32[0])
  {
    goto LABEL_26;
  }

LABEL_27:
  if ((v30 & 0x10) != 0)
  {
    v18 = v29;
    if (v29 < v26)
    {
      v29 = v26;
      v18 = v26;
    }

    locale = v25[4].__locale_;
  }

  else
  {
    if ((v30 & 8) == 0)
    {
      v17 = 0;
      *(this + 23) = 0;
      goto LABEL_40;
    }

    locale = v25[1].__locale_;
    v18 = v25[3].__locale_;
  }

  v17 = v18 - locale;
  if ((v18 - locale) >= 0x7FFFFFFFFFFFFFF8)
  {
    std::string::__throw_length_error[abi:ne200100]();
  }

  if (v17 >= 0x17)
  {
    operator new();
  }

  *(this + 23) = v17;
  if (v17)
  {
    memmove(this, locale, v17);
  }

LABEL_40:
  *(this + v17) = 0;
  v23 = *MEMORY[0x1E69E54E8];
  *(&v23 + *(v23 - 24)) = *(MEMORY[0x1E69E54E8] + 24);
  v24 = MEMORY[0x1E69E5548] + 16;
  if (v28 < 0)
  {
    operator delete(v27);
  }

  v24 = MEMORY[0x1E69E5538] + 16;
  std::locale::~locale(v25);
  std::ostream::~ostream();
  return MEMORY[0x193ADF120](&v31);
}

BOOL acv2::AudioConverterChain::ShouldAutomaticallyEnableSpatialRendering(uint64_t a1, unsigned int **a2)
{
  v2 = *(a1 + 344);
  if (v2)
  {
    outSize = 0;
    v5 = AudioCodecGetPropertyInfo(*(v2 + 168), 0x696D7264u, &outSize, 0) || outSize == 0;
    if (!v5 && (*(a1 + 529) & 1) == 0)
    {
      v7 = 0;
      v8 = **a2;
      while ((AudioFormat_IsSupportedAUSpatialMixerOutputChannelLayout(AudioChannelLayout const*)::unsupportedLayouts[v7] ^ v8) >= 0x10000)
      {
        if (++v7 == 9)
        {
          return v8 + 0x10000 < 0xF0010000;
        }
      }
    }
  }

  return 0;
}

void sub_18F6DF450(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_18F6DF508(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_18F6DF6B8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t acv2::AudioConverterChain::GetOutputLayoutPriv(acv2::AudioConverterChain *this, std::vector<char> *a2, unsigned __int8 *a3)
{
  v4 = *(this + 43);
  if (v4 && *(v4 + 204) == 1)
  {
    v5 = *(this + 43);

    return acv2::CodecConverter::GetOutputLayout(v5, a2, a3);
  }

  v7 = *(this + 47);
  if (*v7 == 0x10000)
  {
    v8 = vcnt_s8(*(v7 + 4));
    v8.i16[0] = vaddlv_u8(v8);
    if (v8.i32[0])
    {
      goto LABEL_11;
    }

    return 1718449215;
  }

  if (*v7)
  {
    if (*v7)
    {
      goto LABEL_11;
    }

    return 1718449215;
  }

  if (!*(v7 + 8))
  {
    return 1718449215;
  }

LABEL_11:
  if ((this + 376) != a2)
  {
    std::vector<unsigned char>::__assign_with_size[abi:ne200100]<unsigned char *,unsigned char *>(a2, v7, *(this + 48), *(this + 48) - v7);
  }

  result = 0;
  *a3 = 1;
  return result;
}

uint64_t acv2::AudioConverterChain::GetInputLayoutPriv(acv2::AudioConverterChain *this, std::vector<char> *a2, unsigned __int8 *a3)
{
  v4 = *(this + 43);
  if (v4 && *(v4 + 205) == 1)
  {
    v5 = *(this + 43);

    return acv2::CodecConverter::GetInputLayout(v5, a2, a3);
  }

  v7 = *(this + 44);
  if (*v7 == 0x10000)
  {
    v8 = vcnt_s8(*(v7 + 4));
    v8.i16[0] = vaddlv_u8(v8);
    if (v8.i32[0])
    {
      goto LABEL_11;
    }

    return 1718449215;
  }

  if (*v7)
  {
    if (*v7)
    {
      goto LABEL_11;
    }

    return 1718449215;
  }

  if (!*(v7 + 8))
  {
    return 1718449215;
  }

LABEL_11:
  if ((this + 352) != a2)
  {
    std::vector<unsigned char>::__assign_with_size[abi:ne200100]<unsigned char *,unsigned char *>(a2, v7, *(this + 45), *(this + 45) - v7);
  }

  result = 0;
  *a3 = 1;
  return result;
}

void sub_18F6DFA08(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void acv2::AudioConverterChain::GetChainBuildSettings(acv2::AudioConverterChain *this)
{
  *this = 0;
  *(this + 2) = 0;
  *(this + 2) = 0;
  *(this + 2) = 0u;
  *(this + 72) = 0;
  *(this + 10) = 0;
  *(this + 88) = 0;
  *(this + 12) = 0;
  *(this + 16) = 0;
  *(this + 23) = 0;
  *(this + 3) = 0u;
  *(this + 64) = 0;
  *(this + 13) = 0;
  *(this + 14) = 0;
  *(this + 119) = 0;
  LOBYTE(v1) = 0;
  std::vector<char>::vector[abi:ne200100](this + 17, 32);
}

uint64_t acv2::AudioConverterChain::RebuildConverterChain(acv2::AudioConverterChain *this, const acv2::ChainBuildSettings *a2)
{
  {
    operator new();
  }

  v4 = acv2::GlobalConverterRegistry(void)::sImpl;
  os_unfair_recursive_lock_lock_with_options();
  if (v4)
  {
    os_unfair_recursive_lock_unlock();
  }

  v5 = *(this + 3);
  v12[2] = *(this + 2);
  v12[3] = v5;
  v12[4] = *(this + 4);
  v6 = *(this + 1);
  v12[0] = *this;
  v12[1] = v6;
  std::vector<std::unique_ptr<acv2::AudioConverterBase>>::clear[abi:ne200100](this + 13);
  *(this + 38) = *(this + 37);
  *(this + 41) = *(this + 40);
  *(this + 43) = 0;
  *(this + 55) = 0;
  *(this + 53) = 0;
  result = (*(**(this + 11) + 48))(*(this + 11), v12, a2, this, v4 + 40);
  if (!result)
  {
    if (*(this + 13) == *(this + 14))
    {
      operator new();
    }

    v8 = *(this + 43);
    if (v8)
    {
      v9 = (*(*v8 + 176))(v8);
    }

    else
    {
      v9 = 0;
    }

    v10 = (*(this + 17) > 1u) & (*(this + 13) >> 5);
    v11 = *this != *(this + 5);
    *(this + 80) = (*(this + 7) > 1u) & (*(this + 3) >> 5);
    *(this + 81) = v10;
    *(this + 82) = v11;
    LODWORD(result) = acv2::AudioConverterChain::PostBuild(this);
    if (v9)
    {
      return v9;
    }

    else
    {
      return result;
    }
  }

  return result;
}

void sub_18F6DFEFC(_Unwind_Exception *a1)
{
  MEMORY[0x193ADF220](v1, 0x1080C4066A550C5);
  _Unwind_Resume(a1);
}

void acv2::ChainBuildSettings::~ChainBuildSettings(acv2::ChainBuildSettings *this)
{
  v2 = *(this + 17);
  if (v2)
  {
    *(this + 18) = v2;
    operator delete(v2);
  }

  v3 = *(this + 12);
  if (v3)
  {
    *(this + 13) = v3;
    operator delete(v3);
  }

  v4 = *(this + 4);
  if (v4)
  {
    *(this + 5) = v4;
    operator delete(v4);
  }
}

uint64_t acv2::AudioConverterChain::SetDownmixEnabled(acv2::AudioConverterChain *this, int a2)
{
  if (*(this + 417) != a2)
  {
    *(this + 417) = a2;
    acv2::AudioConverterChain::GetChainBuildSettings(&v3);
  }

  return 0;
}

uint64_t acv2::AudioConverterChain::SetMixMap(acv2::AudioConverterChain *this, unint64_t a2, const float *a3)
{
  if (*(this + 417) == 1)
  {
    acv2::AudioConverterChain::GetChainBuildSettings(v4);
  }

  return 1869627199;
}

void sub_18F6E0144(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  acv2::ChainBuildSettings::~ChainBuildSettings(va);
  _Unwind_Resume(a1);
}

uint64_t acv2::AudioConverterChain::SetChannelMap(acv2::AudioConverterChain *this, const int *a2)
{
  if (*(this + 417))
  {
    return 1869627199;
  }

  v5 = *(this + 17);
  v6 = malloc_type_malloc(4 * v5, 0x100004052888210uLL);
  if (v5)
  {
    v7 = v6 == 0;
  }

  else
  {
    v7 = 0;
  }

  if (v7)
  {
    exception = __cxa_allocate_exception(8uLL);
    v14 = std::bad_alloc::bad_alloc(exception);
  }

  v8 = v6;
  v16 = 4 * v5;
  acv2::AudioConverterChain::GetProperty(this, 1667788144, &v16, v6);
  if (v5)
  {
    if (*a2 != *v8)
    {
      goto LABEL_13;
    }

    v9 = 0;
    do
    {
      if (v5 - 1 == v9)
      {
        goto LABEL_15;
      }

      v10 = a2[v9 + 1];
      v11 = *(v8 + ++v9);
    }

    while (v10 == v11);
    if (v9 < v5)
    {
LABEL_13:
      *(this + 448) = 1;
      acv2::AudioConverterChain::GetChainBuildSettings(v15);
    }

LABEL_15:
    v2 = 0;
    goto LABEL_17;
  }

  v2 = 0;
  if (v8)
  {
LABEL_17:
    free(v8);
  }

  return v2;
}

void sub_18F6E0354(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  acv2::ChainBuildSettings::~ChainBuildSettings(va);
  if (v2)
  {
    free(v2);
  }

  _Unwind_Resume(a1);
}

uint64_t acv2::AudioConverterChain::SetIOChannelLayout(acv2::AudioConverterChain *this, int a2, AudioChannelLayout *a3, UInt32 a4)
{
  v4 = 376;
  if (a2)
  {
    v4 = 352;
  }

  v5 = (this + v4);
  if (a2)
  {
    v6 = 0;
  }

  else
  {
    v6 = 40;
  }

  if (!a3 || !a4)
  {
    LOBYTE(v14) = 0;
    std::vector<char>::vector[abi:ne200100](__p, 32);
  }

  result = 561211770;
  if (a4 >= 0xC && 20 * a3->mNumberChannelDescriptions + 12 <= a4)
  {
    v14 = 0;
    result = AudioFormatProperty_NumberOfChannelsForLayout(a3, &v14);
    if (!result)
    {
      if (v14 != *(this + v6 + 28))
      {
        return 4294967246;
      }

      v12 = *(this + 43);
      if (!v12)
      {
        goto LABEL_27;
      }

      if (a2)
      {
        if (*(v12 + 205) == 1)
        {
          acv2::CodecConverter::SetInputChannelLayout(*(this + 43), a3, v14);
          return 0;
        }

LABEL_27:
        CA::ChannelLayout::operator=(v5, a3);
        return 0;
      }

      if (v14 != *(v12 + 84) || (result = acv2::CodecConverter::SetOutputChannelLayout(*(this + 43), a3, a4, v14), !result) || result == 561476212 || (*(v12 + 204) & 1) == 0)
      {
        CA::ChannelLayout::ChannelLayout(__p, a3);
        ShouldAutomaticallyEnableSpatialRendering = acv2::AudioConverterChain::ShouldAutomaticallyEnableSpatialRendering(this, __p);
        if (__p[0])
        {
          __p[1] = __p[0];
          operator delete(__p[0]);
        }

        if (ShouldAutomaticallyEnableSpatialRendering)
        {
          *(this + 528) = 1;
        }

        goto LABEL_27;
      }
    }
  }

  return result;
}

void sub_18F6E0540(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t acv2::AudioConverterChain::SetDitherAlgorithm(acv2::AudioConverterChain *this, unsigned int a2, int8x8_t a3)
{
  if (*(this + 108) == a2)
  {
    return 0;
  }

  if (a2 - 1 < 3)
  {
    *(this + 108) = a2;
    acv2::AudioConverterChain::GetChainBuildSettings(v17);
  }

  v3 = 1718449215;
  a3.i32[0] = bswap32(a2);
  v5 = vzip1_s8(a3, a3);
  v6.i64[0] = 0x1F0000001FLL;
  v6.i64[1] = 0x1F0000001FLL;
  v7.i64[0] = 0x5F0000005FLL;
  v7.i64[1] = 0x5F0000005FLL;
  v8 = vbsl_s8(vmovn_s32(vcgtq_u32(v7, vsraq_n_s32(v6, vshlq_n_s32(vmovl_u16(v5), 0x18uLL), 0x18uLL))), v5, 0x2E002E002E002ELL);
  v18 = 4;
  LODWORD(v17[0]) = vuzp1_s8(v8, v5).u32[0];
  BYTE4(v17[0]) = 0;
  v9 = strlen(v17);
  v10 = _os_log_pack_size() + 88;
  message = caulk::deferred_logger::create_message(gAudioConverterDeferredLog, v9 + v10 + 1, 16);
  if (message)
  {
    v12 = message;
    v13 = _os_log_pack_fill();
    v14 = v12 + v10;
    v18 = 4;
    LODWORD(v17[0]) = vuzp1_s8(v8, v15).u32[0];
    BYTE4(v17[0]) = 0;
    stpcpy(v14, v17);
    *v13 = 136315394;
    *(v13 + 4) = v14;
    *(v13 + 12) = 1024;
    *(v13 + 14) = a2;
    if (v18 < 0)
    {
      operator delete(v17[0]);
    }

    caulk::concurrent::messenger::enqueue(*(gAudioConverterDeferredLog + 16), v12);
  }

  return v3;
}

void sub_18F6E072C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

CA::ChannelLayout *CA::ChannelLayout::ChannelLayout(CA::ChannelLayout *this, const AudioChannelLayout *a2)
{
  mNumberChannelDescriptions = a2->mNumberChannelDescriptions;
  if (mNumberChannelDescriptions <= 1)
  {
    mNumberChannelDescriptions = 1;
  }

  v5 = std::vector<char>::vector[abi:ne200100](this, 20 * mNumberChannelDescriptions + 12);
  memcpy(*v5, a2, 20 * a2->mNumberChannelDescriptions + 12);
  return this;
}

std::vector<char> *CA::ChannelLayout::operator=(std::vector<char> *this, _DWORD *a2)
{
  v4 = a2[2];
  if (v4 <= 1)
  {
    v5 = 1;
  }

  else
  {
    v5 = a2[2];
  }

  v6 = 20 * v5 + 12;
  begin = this->__begin_;
  v9 = (this->__end_ - begin);
  if (v6 <= v9)
  {
    if (v6 < v9)
    {
      this->__end_ = &begin[v6];
    }
  }

  else
  {
    std::vector<unsigned char>::__append(this, v6 - v9);
    begin = this->__begin_;
    v4 = a2[2];
  }

  memcpy(begin, a2, 20 * v4 + 12);
  return this;
}

void *std::vector<char>::vector[abi:ne200100](void *result, uint64_t a2)
{
  *result = 0;
  result[1] = 0;
  result[2] = 0;
  if (a2)
  {
    std::vector<unsigned char>::__vallocate[abi:ne200100](result, a2);
  }

  return result;
}

void sub_18F6E0898(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

void std::vector<float>::insert(void *a1, char *__src, unint64_t a3, char *a4, int16x4_t a5)
{
  if (a3)
  {
    v5 = a4;
    v9 = a1[1];
    v10 = a1[2];
    if (a3 <= (v10 - v9) >> 2)
    {
      v15 = v9 - __src;
      v16 = a1[1];
      v17 = a3;
      if (a3 <= (v9 - __src) >> 2)
      {
        goto LABEL_21;
      }

      v18 = 0;
      v17 = v15 >> 2;
      v19 = a3 - (v15 >> 2);
      a5.i32[0] = *a4;
      v20 = (4 * a3 - v15 - 4) >> 2;
      v21 = (v20 + 4) & 0x7FFFFFFFFFFFFFFCLL;
      v22 = vdupq_n_s64(v20);
      v23 = v9 + 8;
      do
      {
        v24 = vdupq_n_s64(v18);
        v25 = vmovn_s64(vcgeq_u64(v22, vorrq_s8(v24, xmmword_18F9016C0)));
        if (vuzp1_s16(v25, a5).u8[0])
        {
          *(v23 - 2) = a5.i32[0];
        }

        if (vuzp1_s16(v25, a5).i8[2])
        {
          *(v23 - 1) = a5.i32[0];
        }

        if (vuzp1_s16(a5, vmovn_s64(vcgeq_u64(v22, vorrq_s8(v24, xmmword_18F9016B0)))).i32[1])
        {
          *v23 = a5.i32[0];
          v23[1] = a5.i32[0];
        }

        v18 += 4;
        v23 += 4;
      }

      while (v21 != v18);
      v16 = &v9[4 * v19];
      a1[1] = v16;
      if (v9 != __src)
      {
LABEL_21:
        v26 = &__src[4 * a3];
        v27 = &v16[-4 * a3];
        v28 = v16;
        if (v27 < v9)
        {
          v28 = v16;
          do
          {
            v29 = *v27;
            v27 += 4;
            *v28 = v29;
            v28 += 4;
          }

          while (v27 < v9);
        }

        a1[1] = v28;
        if (v16 != v26)
        {
          memmove(&__src[4 * a3], __src, v16 - v26);
        }

        if (__src <= v5)
        {
          if (a1[1] <= v5)
          {
            v30 = 0;
          }

          else
          {
            v30 = a3;
          }

          v5 += 4 * v30;
        }

        v31 = 0;
        a5.i32[0] = *v5;
        v32 = vdupq_n_s64(v17 - 1);
        v33 = __src + 8;
        do
        {
          v34 = vdupq_n_s64(v31);
          v35 = vmovn_s64(vcgeq_u64(v32, vorrq_s8(v34, xmmword_18F9016C0)));
          if (vuzp1_s16(v35, a5).u8[0])
          {
            *(v33 - 2) = a5.i32[0];
          }

          if (vuzp1_s16(v35, a5).i8[2])
          {
            *(v33 - 1) = a5.i32[0];
          }

          if (vuzp1_s16(a5, vmovn_s64(vcgeq_u64(v32, vorrq_s8(v34, xmmword_18F9016B0)))).i32[1])
          {
            *v33 = a5.i32[0];
            v33[1] = a5.i32[0];
          }

          v31 += 4;
          v33 += 4;
        }

        while (((v17 + 3) & 0xFFFFFFFFFFFFFFFCLL) != v31);
      }
    }

    else
    {
      v11 = *a1;
      v12 = a3 + (&v9[-*a1] >> 2);
      if (v12 >> 62)
      {
        std::vector<APAC::UI18>::__throw_length_error[abi:ne200100]();
      }

      v13 = v10 - v11;
      if (v13 >> 1 > v12)
      {
        v12 = v13 >> 1;
      }

      if (v13 >= 0x7FFFFFFFFFFFFFFCLL)
      {
        v14 = 0x3FFFFFFFFFFFFFFFLL;
      }

      else
      {
        v14 = v12;
      }

      if (v14)
      {
        std::allocator<APAC::UI18>::allocate_at_least[abi:ne200100](v14);
      }

      v36 = 0;
      v37 = 4 * ((__src - v11) >> 2);
      a5.i32[0] = *a4;
      v38 = (a3 + 0x3FFFFFFFFFFFFFFFLL) & 0x3FFFFFFFFFFFFFFFLL;
      v39 = vdupq_n_s64(v38);
      v40 = v38 - ((a3 + 0x3FFFFFFFFFFFFFFFLL) & 3) + 4;
      v41 = (v37 + 8);
      do
      {
        v42 = vdupq_n_s64(v36);
        v43 = vmovn_s64(vcgeq_u64(v39, vorrq_s8(v42, xmmword_18F9016C0)));
        if (vuzp1_s16(v43, a5).u8[0])
        {
          *(v41 - 2) = a5.i32[0];
        }

        if (vuzp1_s16(v43, a5).i8[2])
        {
          *(v41 - 1) = a5.i32[0];
        }

        if (vuzp1_s16(a5, vmovn_s64(vcgeq_u64(v39, vorrq_s8(v42, xmmword_18F9016B0)))).i32[1])
        {
          *v41 = a5.i32[0];
          v41[1] = a5.i32[0];
        }

        v36 += 4;
        v41 += 4;
      }

      while (v40 != v36);
      v44 = (v37 + 4 * a3);
      memcpy(v44, __src, a1[1] - __src);
      v45 = *a1;
      v46 = &v44[a1[1] - __src];
      a1[1] = __src;
      v47 = (__src - v45);
      v48 = (v37 - (__src - v45));
      memcpy(v48, v45, v47);
      v49 = *a1;
      *a1 = v48;
      a1[1] = v46;
      a1[2] = 0;
      if (v49)
      {

        operator delete(v49);
      }
    }
  }
}

uint64_t CA::ADMBuilder::Impl::parse_pack_format(CA::ADMBuilder::Impl *this, char *__s1, const unsigned __int8 **a3)
{
  if (!strcmp(__s1, "audioChannelFormatIDRef"))
  {
    operator new();
  }

  if (!strcmp(__s1, "audioPackFormatIDRef"))
  {
    operator new();
  }

  if (!strcmp(__s1, "encodePackFormatIDRef"))
  {
    operator new();
  }

  if (!strcmp(__s1, "decodePackFormatIDRef"))
  {
    operator new();
  }

  if (!strcmp(__s1, "inputPackFormatIDRef"))
  {
    operator new();
  }

  if (!strcmp(__s1, "outputPackFormatIDRef"))
  {
    operator new();
  }

  if (!strcmp(__s1, "absoluteDistance"))
  {
    operator new();
  }

  if (!strcmp(__s1, "normalization"))
  {
    operator new();
  }

  if (!strcmp(__s1, "nfcRefDist"))
  {
    operator new();
  }

  if (!strcmp(__s1, "screenRef"))
  {
    operator new();
  }

  return 1;
}

void ___ZN22AudioComponentMgr_Base36postRegistrationsChangedNotificationEv_block_invoke()
{
  v8 = *MEMORY[0x1E69E9840];
  if (!gAudioComponentLogCategory)
  {
    operator new();
  }

  v0 = *gAudioComponentLogCategory;
  if (os_log_type_enabled(*gAudioComponentLogCategory, OS_LOG_TYPE_DEFAULT))
  {
    v4 = 136315394;
    v5 = "AudioComponentPluginMgr.mm";
    v6 = 1024;
    v7 = 1117;
    _os_log_impl(&dword_18F5DF000, v0, OS_LOG_TYPE_DEFAULT, "%25s:%-5d component registrations changed", &v4, 0x12u);
  }

  LocalCenter = CFNotificationCenterGetLocalCenter();
  CFNotificationCenterPostNotification(LocalCenter, @"com.apple.coreaudio.AudioComponentRegistrationsChanged", 0, 0, 1u);
  v3 = *MEMORY[0x1E69E9840];
}

uint64_t std::vector<std::shared_ptr<APComponent>>::erase[abi:ne200100](uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 8);
  if (a2 + 16 == v4)
  {
    v8 = a2;
  }

  else
  {
    v5 = a2;
    do
    {
      v6 = *(v5 + 16);
      *(v5 + 16) = 0;
      *(v5 + 24) = 0;
      v7 = *(v5 + 8);
      *v5 = v6;
      if (v7)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v7);
      }

      v8 = v5 + 16;
      v9 = v5 + 32;
      v5 += 16;
    }

    while (v9 != v4);
    v4 = *(a1 + 8);
  }

  while (v4 != v8)
  {
    v10 = *(v4 - 8);
    if (v10)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v10);
    }

    v4 -= 16;
  }

  *(a1 + 8) = v8;
  return a2;
}

uint64_t std::__function::__func<AudioComponentMgr_RegistrarService::mergeServerRegistrations(AudioComponentVector &,BOOL,NSData *,NSArray *)::$_1,std::allocator<AudioComponentMgr_RegistrarService::mergeServerRegistrations(AudioComponentVector &,BOOL,NSData *,NSArray *)::$_1>,BOOL ()(APComponent &)>::__clone(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_1F03269F0;
  a2[1] = v2;
  return result;
}

__n128 std::__function::__func<AudioComponentMgr_RegistrarService::mergeServerRegistrations(AudioComponentVector &,BOOL,NSData *,NSArray *)::$_0,std::allocator<AudioComponentMgr_RegistrarService::mergeServerRegistrations(AudioComponentVector &,BOOL,NSData *,NSArray *)::$_0>,BOOL ()(APComponent &)>::__clone(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_1F03269A8;
  result = *(a1 + 8);
  *(a2 + 8) = result;
  return result;
}

void AudioComponentMgr_NSExtension::buildExtensionServiceComponentList(NSArray *a1@<X1>, uint64_t a2@<X8>)
{
  v20 = *MEMORY[0x1E69E9840];
  v4 = a1;
  *(a2 + 8) = 0;
  *(a2 + 16) = 0;
  *a2 = 0;
  *(a2 + 24) = 1;
  v5 = [AudioComponentMgr_NSExtension::sExtensionServiceBundle bundleIdentifier];
  BundleWithIdentifier = CFBundleGetBundleWithIdentifier(v5);
  v7 = BundleWithIdentifier;
  if (BundleWithIdentifier)
  {
    CFRetain(BundleWithIdentifier);
    v18 = v7;
    v8 = CFBundleCopyExecutableArchitectures(v7);
    v17 = v8;
    if (!v8 || (v9 = CFGetTypeID(v8), v9 == CFArrayGetTypeID()))
    {
      v10 = v4;
      v11 = v10;
      if (v10)
      {
        CFRetain(v10);
        cf = v11;
        v12 = CFGetTypeID(v11);
        if (v12 != CFArrayGetTypeID())
        {
          exception = __cxa_allocate_exception(0x10uLL);
          std::runtime_error::runtime_error(exception, "Could not construct");
        }
      }

      else
      {
        cf = 0;
      }

      v19 = 0;
      operator new();
    }

    v15 = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(v15, "Could not construct");
  }

  v14 = *MEMORY[0x1E69E9840];
}

void sub_18F6E15C8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, const void *a10, uint64_t a11, char a12)
{
  __cxa_free_exception(v15);
  applesauce::CF::ObjectRef<__CFArray const*>::~ObjectRef(&a9);

  applesauce::CF::ArrayRef::~ArrayRef(&a10);
  applesauce::CF::ObjectRef<__CFBundle *>::~ObjectRef(&a11);

  std::vector<std::shared_ptr<CA::ADMPackFormat>>::__destroy_vector::operator()[abi:ne200100](&a11);
  _Unwind_Resume(a1);
}

const void **applesauce::CF::ObjectRef<__CFArray const*>::~ObjectRef(const void **a1)
{
  v2 = *a1;
  if (v2)
  {
    CFRelease(v2);
  }

  return a1;
}

uint64_t std::__function::__value_func<void ()(AudioComponentRegistrationInfo &)>::~__value_func[abi:ne200100](uint64_t a1)
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

void applesauce::CF::ArrayRef::~ArrayRef(const void **this)
{
  v1 = *this;
  if (v1)
  {
    CFRelease(v1);
  }
}

{
  v1 = *this;
  if (v1)
  {
    CFRelease(v1);
  }
}

const void **applesauce::CF::ObjectRef<__CFBundle *>::~ObjectRef(const void **a1)
{
  v2 = *a1;
  if (v2)
  {
    CFRelease(v2);
  }

  return a1;
}

void std::__function::__func<AudioComponentMgr_NSExtension::buildExtensionServiceComponentList(NSArray *)::$_0,std::allocator<AudioComponentMgr_NSExtension::buildExtensionServiceComponentList(NSArray *)::$_0>,void ()(AudioComponentRegistrationInfo &)>::operator()(uint64_t a1)
{
  v2 = [AudioComponentMgr_NSExtension::sExtensionServiceBundle bundlePath];
  applesauce::CF::StringRef::from_get(&cf, v2);
  v3 = *(a1 + 8);
  v4 = *(a1 + 16);
  APComponent_FromBundle_Loadable::create_shared();
}

void sub_18F6E1878(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v1);
    std::__shared_weak_count::__release_shared[abi:ne200100](v1);
  }

  _Unwind_Resume(exception_object);
}

uint64_t std::__shared_ptr_pointer<APComponent_FromBundle_Loadable *,std::shared_ptr<APComponent_FromBundle_Loadable>::__shared_ptr_default_delete<APComponent_FromBundle_Loadable,APComponent_FromBundle_Loadable>,std::allocator<APComponent_FromBundle_Loadable>>::__on_zero_shared(uint64_t a1)
{
  result = *(a1 + 24);
  if (result)
  {
    return (*(*result + 24))();
  }

  return result;
}

void std::__shared_ptr_pointer<APComponent_FromBundle_Loadable *,std::shared_ptr<APComponent_FromBundle_Loadable>::__shared_ptr_default_delete<APComponent_FromBundle_Loadable,APComponent_FromBundle_Loadable>,std::allocator<APComponent_FromBundle_Loadable>>::~__shared_ptr_pointer(std::__shared_weak_count *a1)
{
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x193ADF220);
}

void *APComponent_FromBundle_Base::APComponent_FromBundle_Base(void *a1, int a2, const void **a3, const void **a4, uint64_t a5)
{
  v21 = *MEMORY[0x1E69E9840];
  v9 = *(a5 + 20);
  v10 = *(a5 + 32);
  v20 = 0;
  APComponent::APComponent(a1, 1, a2, a5, v9, (a5 + 24), v10, v19);
  std::__function::__value_func<AudioComponentPlugInInterface * ()(AudioComponentDescription const*)>::~__value_func[abi:ne200100](v19);
  *a1 = &unk_1F033C9C0;
  v11 = *a3;
  if (v11)
  {
    CFRetain(v11);
  }

  a1[20] = v11;
  v12 = *a4;
  if (v12)
  {
    CFRetain(v12);
  }

  a1[21] = v12;
  v13 = *(a5 + 40);
  if (v13)
  {
    CFRetain(*(a5 + 40));
  }

  a1[22] = v13;
  v14 = *(a5 + 48);
  if (v14)
  {
    CFRetain(*(a5 + 48));
  }

  a1[23] = v14;
  v15 = a1[15];
  v16 = *(a5 + 56);
  a1[15] = v16;
  if (v16)
  {
    CFRetain(v16);
  }

  if (v15)
  {
    CFRelease(v15);
  }

  v17 = *MEMORY[0x1E69E9840];
  return a1;
}

void sub_18F6E1C00(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, char a10)
{
  if (a2)
  {
    __clang_call_terminate(exception_object);
  }

  _Unwind_Resume(exception_object);
}

CFTypeRef APComponent_FromBundle_Base::architectures@<X0>(CFTypeRef this@<X0>, void *a2@<X8>)
{
  v3 = *(this + 21);
  if (v3)
  {
    this = CFRetain(*(this + 21));
  }

  *a2 = v3;
  return this;
}

void APComponent_FromBundle_Base::~APComponent_FromBundle_Base(APComponent *this)
{
  APComponent_FromBundle_Base::~APComponent_FromBundle_Base(this);

  JUMPOUT(0x193ADF220);
}

{
  *this = &unk_1F033C9C0;
  v2 = *(this + 23);
  if (v2)
  {
    CFRelease(v2);
  }

  v3 = *(this + 22);
  if (v3)
  {
    CFRelease(v3);
  }

  v4 = *(this + 21);
  if (v4)
  {
    CFRelease(v4);
  }

  v5 = *(this + 20);
  if (v5)
  {
    CFRelease(v5);
  }

  APComponent::~APComponent(this);
}

__n128 std::__function::__func<AudioComponentMgr_NSExtension::buildExtensionServiceComponentList(NSArray *)::$_0,std::allocator<AudioComponentMgr_NSExtension::buildExtensionServiceComponentList(NSArray *)::$_0>,void ()(AudioComponentRegistrationInfo &)>::__clone(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_1F0326A38;
  result = *(a1 + 8);
  *(a2 + 24) = *(a1 + 24);
  *(a2 + 8) = result;
  return result;
}

void ___ZN34AudioComponentMgr_RegistrarService18retrieveComponentsEbb_block_invoke(uint64_t a1, void *a2)
{
  v12 = *MEMORY[0x1E69E9840];
  v2 = a2;
  if (!gAudioComponentLogCategory)
  {
    operator new();
  }

  v3 = *gAudioComponentLogCategory;
  if (os_log_type_enabled(*gAudioComponentLogCategory, OS_LOG_TYPE_ERROR))
  {
    v6 = 136315650;
    v7 = "AudioComponentPluginMgr.mm";
    v8 = 1024;
    v9 = 590;
    v10 = 2112;
    v11 = v2;
    _os_log_impl(&dword_18F5DF000, v3, OS_LOG_TYPE_ERROR, "%25s:%-5d reg server remote proxy error %@", &v6, 0x1Cu);
  }

  v5 = *MEMORY[0x1E69E9840];
}

void AudioComponentMgr_NSExtension::_prepareRemoveComponent(char **this, APComponent *a2)
{
  *(a2 + 72) = 1;
  v4 = (*(*a2 + 64))(a2);
  if (v4)
  {
    v5 = v4;
    if (!*(v4 + 200))
    {
      return;
    }

    AudioComponentMgr_Base::_addComponent(this, (v4 + 200));
    v6 = this + 1;
    v7 = this[2];
    v8 = this[3];
    while (v7 != v8)
    {
      v9 = *v7;
      v7 += 16;
      *v6 = v9;
      v6 = (v9 + 24);
    }

    *v6 = 0;
    v10 = *(v5 + 208);
    *(v5 + 200) = 0;
    *(v5 + 208) = 0;
    if (!v10)
    {
      return;
    }

    goto LABEL_12;
  }

  v11 = *(a2 + 18);
  if (v11)
  {
    v12 = (*(*v11 + 64))(v11);
    v13 = *(v12 + 208);
    *(v12 + 200) = 0;
    *(v12 + 208) = 0;
    if (v13)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v13);
    }

    v10 = *(a2 + 19);
    *(a2 + 18) = 0;
    *(a2 + 19) = 0;
    if (v10)
    {
LABEL_12:

      std::__shared_weak_count::__release_shared[abi:ne200100](v10);
    }
  }
}

uint64_t AudioComponentMgr_RegistrarService::setComponentUserTags(AudioComponentMgr_RegistrarService *this, OpaqueAudioComponent *a2, const __CFArray *a3)
{
  if (!a2)
  {
    return 4294964296;
  }

  v4 = (**a2)(a2);
  if (!v4)
  {
    return 4294964296;
  }

  v5 = dictionaryFromComponentDescription((v4 + 36), *(v4 + 56));
  GlobalComponentPluginMgr(v8);
  v6 = AudioComponentMgr_RegistrarService::syncPrefServerProxy(v8[1]);
  [v6 setComponentUserTags:v5 tags:a3];

  if (v8[0])
  {
    std::recursive_mutex::unlock(v8[0]);
  }

  return 0;
}

void sub_18F6E213C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, std::recursive_mutex *a9)
{
  if (a9)
  {
    std::recursive_mutex::unlock(a9);
  }

  _Unwind_Resume(a1);
}

id AudioComponentMgr_RegistrarService::syncPrefServerProxy(AudioComponentMgr_RegistrarService *this)
{
  v2 = *(this + 13);
  if (!v2)
  {
    assertXPCServiceReachable(&cfstr_ComAppleAudioA_8.isa);
    v3 = [objc_alloc(MEMORY[0x1E696B0B8]) initWithMachServiceName:@"com.apple.audio.AudioComponentPrefs" options:4096];
    v4 = [MEMORY[0x1E696B0D0] interfaceWithProtocol:&unk_1F0354878];
    [v3 setRemoteObjectInterface:v4];

    v9[0] = MEMORY[0x1E69E9820];
    v9[1] = 3221225472;
    v9[2] = ___ZN34AudioComponentMgr_RegistrarService19syncPrefServerProxyEv_block_invoke;
    v9[3] = &__block_descriptor_40_e5_v8__0l;
    v9[4] = this;
    [v3 setInterruptionHandler:v9];
    v8[0] = MEMORY[0x1E69E9820];
    v8[1] = 3221225472;
    v8[2] = ___ZN34AudioComponentMgr_RegistrarService19syncPrefServerProxyEv_block_invoke_2;
    v8[3] = &__block_descriptor_40_e5_v8__0l;
    v8[4] = this;
    [v3 setInvalidationHandler:v8];
    [v3 resume];
    v5 = *(this + 13);
    *(this + 13) = v3;

    v2 = *(this + 13);
  }

  v6 = [v2 synchronousRemoteObjectProxyWithErrorHandler:&__block_literal_global_51];

  return v6;
}

void ___ZN34AudioComponentMgr_RegistrarService19syncPrefServerProxyEv_block_invoke_3(uint64_t a1, void *a2)
{
  v12 = *MEMORY[0x1E69E9840];
  v2 = a2;
  if (!gAudioComponentLogCategory)
  {
    operator new();
  }

  v3 = *gAudioComponentLogCategory;
  if (os_log_type_enabled(*gAudioComponentLogCategory, OS_LOG_TYPE_ERROR))
  {
    v6 = 136315650;
    v7 = "AudioComponentPluginMgr.mm";
    v8 = 1024;
    v9 = 382;
    v10 = 2112;
    v11 = v2;
    _os_log_impl(&dword_18F5DF000, v3, OS_LOG_TYPE_ERROR, "%25s:%-5d preference server proxy error: %@", &v6, 0x1Cu);
  }

  v5 = *MEMORY[0x1E69E9840];
}

void AudioComponentMgr_RegistrarService::lostPrefServerConnection(AudioComponentMgr_RegistrarService *this, const char *a2)
{
  v12 = *MEMORY[0x1E69E9840];
  if (!gAudioComponentLogCategory)
  {
    operator new();
  }

  v3 = *gAudioComponentLogCategory;
  if (os_log_type_enabled(*gAudioComponentLogCategory, OS_LOG_TYPE_DEFAULT))
  {
    v6 = 136315650;
    v7 = "AudioComponentPluginMgr.mm";
    v8 = 1024;
    v9 = 333;
    v10 = 2080;
    v11 = this;
    _os_log_impl(&dword_18F5DF000, v3, OS_LOG_TYPE_DEFAULT, "%25s:%-5d preference server connection %s", &v6, 0x1Cu);
  }

  v5 = *MEMORY[0x1E69E9840];
}

uint64_t std::__function::__func<void CASmartPreferences::AddHandler<long long>(__CFString const*,__CFString const*,long long (*)(void const*,BOOL &),std::function<void ()(long long)>)::{lambda(void const*)#1},std::allocator<void CASmartPreferences::AddHandler<long long>(__CFString const*,__CFString const*,long long (*)(void const*,BOOL &),std::function<void ()(long long)>)::{lambda(void const*)#1}>,BOOL ()(void const*)>::operator()(uint64_t a1, uint64_t *a2)
{
  v3 = *a2;
  v8 = 0;
  v4 = (*(a1 + 8))(v3, &v8);
  v5 = 0;
  if (v8 == 1)
  {
    v9 = v4;
    v6 = *(a1 + 40);
    if (!v6)
    {
      std::__throw_bad_function_call[abi:ne200100]();
    }

    (*(*v6 + 48))(v6, &v9);
    v5 = v8;
  }

  return v5 & 1;
}

uint64_t std::__function::__func<void CASmartPreferences::AddHandler<long long>(__CFString const*,__CFString const*,long long (*)(void const*,BOOL &),std::function<void ()(long long)>)::{lambda(void const*)#1},std::allocator<void CASmartPreferences::AddHandler<long long>(__CFString const*,__CFString const*,long long (*)(void const*,BOOL &),std::function<void ()(long long)>)::{lambda(void const*)#1}>,BOOL ()(void const*)>::__clone(uint64_t a1, void *a2)
{
  v2 = *(a1 + 8);
  *a2 = &unk_1F0336EC0;
  a2[1] = v2;
  return std::__function::__value_func<void ()(long long)>::__value_func[abi:ne200100]((a2 + 2), a1 + 16);
}

void std::__function::__func<void CASmartPreferences::AddHandler<long long>(__CFString const*,__CFString const*,long long (*)(void const*,BOOL &),std::function<void ()(long long)>)::{lambda(void const*)#1},std::allocator<void CASmartPreferences::AddHandler<long long>(__CFString const*,__CFString const*,long long (*)(void const*,BOOL &),std::function<void ()(long long)>)::{lambda(void const*)#1}>,BOOL ()(void const*)>::~__func(void *a1)
{
  *a1 = &unk_1F0336EC0;
  std::__function::__value_func<void ()(long long)>::~__value_func[abi:ne200100]((a1 + 2));

  JUMPOUT(0x193ADF220);
}

void *std::__function::__func<void CASmartPreferences::AddHandler<long long>(__CFString const*,__CFString const*,long long (*)(void const*,BOOL &),std::function<void ()(long long)>)::{lambda(void const*)#1},std::allocator<void CASmartPreferences::AddHandler<long long>(__CFString const*,__CFString const*,long long (*)(void const*,BOOL &),std::function<void ()(long long)>)::{lambda(void const*)#1}>,BOOL ()(void const*)>::~__func(void *a1)
{
  *a1 = &unk_1F0336EC0;
  std::__function::__value_func<void ()(long long)>::~__value_func[abi:ne200100]((a1 + 2));
  return a1;
}

id AudioComponentMgr_RegistrarService::copyComponentUserTags(AudioComponentMgr_RegistrarService *this, OpaqueAudioComponent *a2)
{
  if (!a2)
  {
    return 0;
  }

  v3 = (**a2)(a2);
  if (!v3)
  {
    return 0;
  }

  v4 = dictionaryFromComponentDescription((v3 + 36), *(v3 + 56));
  v9 = 0;
  v10 = &v9;
  v11 = 0x3032000000;
  v12 = __Block_byref_object_copy_;
  v13 = __Block_byref_object_dispose_;
  v14 = 0;
  v5 = AudioComponentMgr_RegistrarService::syncPrefServerProxy(this);
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = ___ZN34AudioComponentMgr_RegistrarService21copyComponentUserTagsEP20OpaqueAudioComponent_block_invoke;
  v8[3] = &unk_1E72BA818;
  v8[4] = &v9;
  [v5 getComponentUserTags:v4 reply:v8];

  v6 = v10[5];
  _Block_object_dispose(&v9, 8);

  return v6;
}

void sub_18F6E289C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, char a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, id a20)
{
  _Block_object_dispose(&a15, 8);

  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy_(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void AudioComponentMgr_NSExtension::requestIcon(AudioComponentMgr_RegistrarService *a1, OpaqueAudioComponent *a2, uint64_t a3)
{
  if (a2)
  {
    v6 = (**a2)(a2);
    if (v6)
    {
      v7 = v6;
      aBlock[0] = MEMORY[0x1E69E9820];
      aBlock[1] = 3221225472;
      aBlock[2] = ___ZN29AudioComponentMgr_NSExtension11requestIconEP20OpaqueAudioComponentR13APIconRequest_block_invoke;
      aBlock[3] = &__block_descriptor_40_e16_v16__0__NSData_8l;
      aBlock[4] = a3;
      v8 = _Block_copy(aBlock);
      v9 = (*(*v7 + 64))(v7);
      if (v9)
      {
        v10 = *(v9 + 160);
        v11 = AudioComponentMgr_RegistrarService::syncPrefServerProxy(a1);
        [v11 getExtensionIcon:v10 reply:v8];

LABEL_17:
        return;
      }

      v12 = (*(*v7 + 56))(v7);
      if (v12)
      {
        v13 = *(v12 + 160);
        if (v13)
        {
          CFRetain(*(v12 + 160));
        }

        v21[0] = v13;
        v14 = AudioComponentMgr_RegistrarService::syncPrefServerProxy(a1);
        [v14 getInterAppIcon:v13 reply:v8];

        if (v13)
        {
          CFRelease(v13);
        }

        goto LABEL_17;
      }

      (*(*v7 + 48))(v7, a3);

      v15 = *(a3 + 8);
      if (v15)
      {
        return;
      }
    }
  }

  if (!Impl_AudioGetComponentInfo(a2, &v19, 0) && v19.componentManufacturer == 1634758764)
  {
    v22 = 0;
    v23 = &v22;
    v24 = 0x2020000000;
    v16 = getCAUI_retrieveHostIconForAudioUnitSymbolLoc(void)::ptr;
    v25 = getCAUI_retrieveHostIconForAudioUnitSymbolLoc(void)::ptr;
    if (!getCAUI_retrieveHostIconForAudioUnitSymbolLoc(void)::ptr)
    {
      v21[0] = MEMORY[0x1E69E9820];
      v21[1] = 3221225472;
      v21[2] = ___ZL45getCAUI_retrieveHostIconForAudioUnitSymbolLocv_block_invoke;
      v21[3] = &unk_1E72C2B68;
      v21[4] = &v22;
      ___ZL45getCAUI_retrieveHostIconForAudioUnitSymbolLocv_block_invoke(v21);
      v16 = v23[3];
    }

    _Block_object_dispose(&v22, 8);
    if (!v16)
    {
      v17 = [MEMORY[0x1E696AAA8] currentHandler];
      v18 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"UIImage *SOFT_CAUI_retrieveHostIconForAudioUnit(AudioComponent)"];
      [v17 handleFailureInFunction:v18 file:@"AudioComponentPluginMgr.mm" lineNumber:917 description:{@"%s", dlerror()}];

      __break(1u);
      return;
    }

    v8 = v16(a2);
    objc_storeStrong((a3 + 8), v8);
    goto LABEL_17;
  }
}

void ___ZN29AudioComponentMgr_NSExtension11requestIconEP20OpaqueAudioComponentR13APIconRequest_block_invoke(uint64_t a1, void *a2)
{
  v4 = a2;
  v3 = [objc_alloc(NSClassFromString(&cfstr_Uiimage.isa)) initWithData:v4];
  objc_storeStrong((*(a1 + 32) + 8), v3);
}

void *___ZL45getCAUI_retrieveHostIconForAudioUnitSymbolLocv_block_invoke(void *a1)
{
  v9 = *MEMORY[0x1E69E9840];
  v6[0] = 0;
  if (!CoreAudioKitLibraryCore(char **)::frameworkLibrary)
  {
    v6[1] = MEMORY[0x1E69E9820];
    v6[2] = 3221225472;
    v6[3] = ___ZL23CoreAudioKitLibraryCorePPc_block_invoke;
    v6[4] = &__block_descriptor_40_e5_v8__0l;
    v6[5] = v6;
    v7 = xmmword_1E72BA858;
    v8 = 0;
    CoreAudioKitLibraryCore(char **)::frameworkLibrary = _sl_dlopen();
  }

  v2 = CoreAudioKitLibraryCore(char **)::frameworkLibrary;
  if (!CoreAudioKitLibraryCore(char **)::frameworkLibrary)
  {
    a1 = [MEMORY[0x1E696AAA8] currentHandler];
    v2 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"void *CoreAudioKitLibrary()"];
    [a1 handleFailureInFunction:v2 file:@"AUAudioUnit_Internal.h" lineNumber:359 description:{@"%s", v6[0]}];

    __break(1u);
    goto LABEL_7;
  }

  v3 = v6[0];
  if (v6[0])
  {
LABEL_7:
    free(v3);
  }

  result = dlsym(v2, "CAUI_retrieveHostIconForAudioUnit");
  *(*(a1[4] + 8) + 24) = result;
  getCAUI_retrieveHostIconForAudioUnitSymbolLoc(void)::ptr = *(*(a1[4] + 8) + 24);
  v5 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t ___ZL23CoreAudioKitLibraryCorePPc_block_invoke(uint64_t a1)
{
  v4 = *MEMORY[0x1E69E9840];
  v1 = *(a1 + 32);
  result = _sl_dlopen();
  CoreAudioKitLibraryCore(char **)::frameworkLibrary = result;
  v3 = *MEMORY[0x1E69E9840];
  return result;
}

void AudioComponentMgr_RegistrarService::lostRegServerConnection(AudioComponentMgr_RegistrarService *this, const char *a2)
{
  v12 = *MEMORY[0x1E69E9840];
  if (!gAudioComponentLogCategory)
  {
    operator new();
  }

  v3 = *gAudioComponentLogCategory;
  if (os_log_type_enabled(*gAudioComponentLogCategory, OS_LOG_TYPE_DEFAULT))
  {
    v6 = 136315650;
    v7 = "AudioComponentPluginMgr.mm";
    v8 = 1024;
    v9 = 326;
    v10 = 2080;
    v11 = this;
    _os_log_impl(&dword_18F5DF000, v3, OS_LOG_TYPE_DEFAULT, "%25s:%-5d registration server connection %s", &v6, 0x1Cu);
  }

  v5 = *MEMORY[0x1E69E9840];
}

void AudioComponentMgr_NSExtension::~AudioComponentMgr_NSExtension(AudioComponentMgr_NSExtension *this)
{
  *this = &unk_1F0326898;
  v2 = *(this + 19);
  *(this + 19) = 0;

  *this = &unk_1F03267F8;
  v3 = (this + 112);
  std::vector<std::shared_ptr<CA::ADMPackFormat>>::__destroy_vector::operator()[abi:ne200100](&v3);

  *this = &unk_1F0326770;
  v3 = (this + 48);
  std::vector<std::shared_ptr<CA::ADMPackFormat>>::__destroy_vector::operator()[abi:ne200100](&v3);
  *this = &unk_1F03265C8;
  v3 = (this + 16);
  std::vector<std::shared_ptr<CA::ADMPackFormat>>::__destroy_vector::operator()[abi:ne200100](&v3);

  JUMPOUT(0x193ADF220);
}

{
  *this = &unk_1F0326898;
  v2 = *(this + 19);
  *(this + 19) = 0;

  *this = &unk_1F03267F8;
  v3 = (this + 112);
  std::vector<std::shared_ptr<CA::ADMPackFormat>>::__destroy_vector::operator()[abi:ne200100](&v3);

  *this = &unk_1F0326770;
  v3 = (this + 48);
  std::vector<std::shared_ptr<CA::ADMPackFormat>>::__destroy_vector::operator()[abi:ne200100](&v3);
  *this = &unk_1F03265C8;
  v3 = (this + 16);
  std::vector<std::shared_ptr<CA::ADMPackFormat>>::__destroy_vector::operator()[abi:ne200100](&v3);
}

void AudioComponentMgr_Base::requestIcon(uint64_t a1, uint64_t (***a2)(void))
{
  if (a2)
  {
    v2 = (**a2)(a2);
    if (v2)
    {
      v3 = *(*v2 + 48);

      v3();
    }
  }
}

void AudioComponentMgr_Base::~AudioComponentMgr_Base(AudioComponentMgr_Base *this)
{
  *this = &unk_1F03265C8;
  v1 = (this + 16);
  std::vector<std::shared_ptr<CA::ADMPackFormat>>::__destroy_vector::operator()[abi:ne200100](&v1);

  JUMPOUT(0x193ADF220);
}

{
  *this = &unk_1F03265C8;
  v1 = (this + 16);
  std::vector<std::shared_ptr<CA::ADMPackFormat>>::__destroy_vector::operator()[abi:ne200100](&v1);
}

void AudioComponentMgr_iOS::initPhase2(AudioComponentMgr_iOS *this)
{
  v1 = EmbeddedComponentManager::registerInternalAudioUnits(this);

  EmbeddedComponentManager::registerInternalAudioCodecs(v1);
}

void AudioComponentMgr_iOS::~AudioComponentMgr_iOS(AudioComponentMgr_iOS *this)
{
  *this = &unk_1F0326770;
  v2 = (this + 48);
  std::vector<std::shared_ptr<CA::ADMPackFormat>>::__destroy_vector::operator()[abi:ne200100](&v2);
  *this = &unk_1F03265C8;
  v2 = (this + 16);
  std::vector<std::shared_ptr<CA::ADMPackFormat>>::__destroy_vector::operator()[abi:ne200100](&v2);

  JUMPOUT(0x193ADF220);
}

{
  *this = &unk_1F0326770;
  v2 = (this + 48);
  std::vector<std::shared_ptr<CA::ADMPackFormat>>::__destroy_vector::operator()[abi:ne200100](&v2);
  *this = &unk_1F03265C8;
  v2 = (this + 16);
  std::vector<std::shared_ptr<CA::ADMPackFormat>>::__destroy_vector::operator()[abi:ne200100](&v2);
}

double AudioComponentMgr_RegistrarService::buildExtensionServiceComponentList@<D0>(uint64_t a1@<X8>)
{
  result = 0.0;
  *a1 = 0u;
  *(a1 + 16) = 0u;
  *(a1 + 24) = 1;
  return result;
}

void AudioComponentMgr_RegistrarService::~AudioComponentMgr_RegistrarService(id *this)
{
  *this = &unk_1F03267F8;
  v2 = this + 14;
  std::vector<std::shared_ptr<CA::ADMPackFormat>>::__destroy_vector::operator()[abi:ne200100](&v2);

  *this = &unk_1F0326770;
  v2 = this + 6;
  std::vector<std::shared_ptr<CA::ADMPackFormat>>::__destroy_vector::operator()[abi:ne200100](&v2);
  *this = &unk_1F03265C8;
  v2 = this + 2;
  std::vector<std::shared_ptr<CA::ADMPackFormat>>::__destroy_vector::operator()[abi:ne200100](&v2);

  JUMPOUT(0x193ADF220);
}

{
  *this = &unk_1F03267F8;
  v2 = this + 14;
  std::vector<std::shared_ptr<CA::ADMPackFormat>>::__destroy_vector::operator()[abi:ne200100](&v2);

  *this = &unk_1F0326770;
  v2 = this + 6;
  std::vector<std::shared_ptr<CA::ADMPackFormat>>::__destroy_vector::operator()[abi:ne200100](&v2);
  *this = &unk_1F03265C8;
  v2 = this + 2;
  std::vector<std::shared_ptr<CA::ADMPackFormat>>::__destroy_vector::operator()[abi:ne200100](&v2);
}

void ___ZN22AudioComponentMgr_BaseC2Ev_block_invoke()
{
  GlobalComponentPluginMgr(v1);
  AudioComponentVector::showAll(&v1[1]->__m_.__opaque[8], "notify request");
  v0 = v1[0];
  if (v1[0])
  {

    std::recursive_mutex::unlock(v0);
  }
}

void sub_18F6E3774(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, std::recursive_mutex *a9)
{
  if (a9)
  {
    std::recursive_mutex::unlock(a9);
  }

  _Unwind_Resume(exception_object);
}

void APComponent_InterApp::getIcon(uint64_t a1, uint64_t a2)
{
  v3 = IPCAUIcons::GetIconFromBundle(*(a1 + 160), a2);
  objc_storeStrong((a2 + 8), v3);
}

void APComponent_InterApp::~APComponent_InterApp(APComponent *this)
{
  APComponent_InterApp::~APComponent_InterApp(this);

  JUMPOUT(0x193ADF220);
}

{
  *this = &unk_1F03266F0;
  v2 = *(this + 20);
  if (v2)
  {
    CFRelease(v2);
  }

  APComponent::~APComponent(this);
}

uint64_t AudioComponentMgr_NSExtension::setExtensionComponentList(AudioComponentMgr_NSExtension *this, NSString *a2, NSArray *a3)
{
  v5 = a2;
  v6 = a3;
  v12 = 0;
  v13 = &v12;
  v14 = 0x2020000000;
  v15 = 560558179;
  v7 = AudioComponentMgr_RegistrarService::syncPrefServerProxy(this);
  v8 = *(this + 80);
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = ___ZN29AudioComponentMgr_NSExtension25setExtensionComponentListEP8NSStringP7NSArray_block_invoke;
  v11[3] = &unk_1E72BA7F0;
  v11[4] = &v12;
  [v7 setExtensionComponentList:v5 linkedSDKRequiresEntitlement:v8 components:v6 reply:v11];

  v9 = *(v13 + 6);
  _Block_object_dispose(&v12, 8);

  return v9;
}

void sub_18F6E3980(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);

  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

id AudioComponentMgr_NSExtension::getExtensionComponentList(AudioComponentMgr_NSExtension *this, NSString *a2)
{
  v3 = a2;
  v9 = 0;
  v10 = &v9;
  v11 = 0x3032000000;
  v12 = __Block_byref_object_copy_;
  v13 = __Block_byref_object_dispose_;
  v14 = 0;
  v4 = AudioComponentMgr_RegistrarService::syncPrefServerProxy(this);
  v5 = *(this + 80);
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = ___ZN29AudioComponentMgr_NSExtension25getExtensionComponentListEP8NSString_block_invoke;
  v8[3] = &unk_1E72BA818;
  v8[4] = &v9;
  [v4 getExtensionComponentList:v3 linkedSDKRequiresEntitlement:v5 reply:v8];

  v6 = v10[5];
  _Block_object_dispose(&v9, 8);

  return v6;
}

void sub_18F6E3AD8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, char a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, id a20)
{
  _Block_object_dispose(&a15, 8);

  _Unwind_Resume(a1);
}

void ___ZN29AudioComponentMgr_NSExtension23iconForInterAppBundleIDEPK10__CFStringR13APIconRequest_block_invoke(uint64_t a1, void *a2)
{
  v4 = a2;
  v3 = [objc_alloc(NSClassFromString(&cfstr_Uiimage.isa)) initWithData:v4];
  objc_storeStrong((*(a1 + 32) + 8), v3);
}

uint64_t AudioComponentCopyUserTags(uint64_t a1)
{
  GlobalComponentPluginMgr(&v4);
  v2 = (*(*v5 + 56))(v5, a1);
  if (v4)
  {
    std::recursive_mutex::unlock(v4);
  }

  return v2;
}

void sub_18F6E3C14(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, std::recursive_mutex *a9)
{
  if (a9)
  {
    std::recursive_mutex::unlock(a9);
  }

  _Unwind_Resume(exception_object);
}

uint64_t AudioComponentSetUserTags(uint64_t a1, uint64_t a2)
{
  GlobalComponentPluginMgr(&v6);
  v4 = (*(*v7 + 64))(v7, a1, a2);
  if (v6)
  {
    std::recursive_mutex::unlock(v6);
  }

  return v4;
}

void sub_18F6E3CA4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, std::recursive_mutex *a9)
{
  if (a9)
  {
    std::recursive_mutex::unlock(a9);
  }

  _Unwind_Resume(exception_object);
}

void std::__shared_ptr_pointer<APComponent *,std::shared_ptr<APComponent>::__shared_ptr_default_delete<APComponent,APComponent>,std::allocator<APComponent>>::~__shared_ptr_pointer(std::__shared_weak_count *a1)
{
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x193ADF220);
}

uint64_t AudioComponentRelease(uint64_t (***a1)(void))
{
  if (!a1)
  {
    return 4294967246;
  }

  v1 = (**a1)(a1);
  if (!v1)
  {
    return 4294964296;
  }

  v2 = v1;
  GlobalComponentPluginMgr(&v9);
  v3 = v10;
  (*(*v10 + 104))(v10, v2);
  AudioComponentVector::remove((v3 + 16), v2);
  v4 = (v3 + 8);
  v5 = *(v3 + 16);
  v6 = *(v3 + 24);
  while (v5 != v6)
  {
    v7 = *v5;
    v5 += 2;
    *v4 = v7;
    v4 = (v7 + 24);
  }

  *v4 = 0;
  dispatch_async(MEMORY[0x1E69E96A0], &__block_literal_global_82);
  if (v9)
  {
    std::recursive_mutex::unlock(v9);
  }

  return 0;
}

void sub_18F6E3E5C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, std::recursive_mutex *a9)
{
  if (a9)
  {
    std::recursive_mutex::unlock(a9);
  }

  _Unwind_Resume(exception_object);
}

IPCAUClient *IPCAUClient::IPCAUFactoryFunction(IPCAUClient *this, const AudioComponentDescription *a2)
{
  v2 = this;
  v54 = *MEMORY[0x1E69E9840];
  if (this)
  {
    v48 = CADeprecated::TSingleton<IPCAUClient>::instance(this);
    os_unfair_recursive_lock_lock_with_options();
    if (AppHasBackgroundAudioInfoPlistKey(char const*)::hasKey < 0)
    {
      AppHasBackgroundAudioInfoPlistKey(char const*)::hasKey = 0;
      MainBundle = CFBundleGetMainBundle();
      if (MainBundle && (ValueForInfoDictionaryKey = CFBundleGetValueForInfoDictionaryKey(MainBundle, @"UIBackgroundModes"), (v5 = ValueForInfoDictionaryKey) != 0) && (v6 = CFGetTypeID(ValueForInfoDictionaryKey), v6 == CFArrayGetTypeID()) && (v55.length = CFArrayGetCount(v5), v55.location = 0, CFArrayContainsValue(v5, v55, @"audio")))
      {
        AppHasBackgroundAudioInfoPlistKey(char const*)::hasKey = 1;
      }

      else if (!AppHasBackgroundAudioInfoPlistKey(char const*)::hasKey)
      {
LABEL_11:
        if (kInterAppAudioScope)
        {
          v7 = *kInterAppAudioScope;
          if (!*kInterAppAudioScope)
          {
            goto LABEL_66;
          }
        }

        else
        {
          v7 = MEMORY[0x1E69E9C10];
        }

        if (!os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
        {
          goto LABEL_66;
        }

        *buf = 136315650;
        *&buf[4] = "IPCAURegistrar.mm";
        *&buf[12] = 1024;
        *&buf[14] = 1624;
        *&buf[18] = 2080;
        *&buf[20] = "AudioComponentInstanceNew";
        _os_log_impl(&dword_18F5DF000, v7, OS_LOG_TYPE_ERROR, "%25s:%-5d %s: failing because app does not have 'audio' in its UIBackgroundModes", buf, 0x1Cu);
        if (!AppHasBackgroundAudioInfoPlistKey(char const*)::hasKey)
        {
          goto LABEL_66;
        }
      }
    }

    else if (!AppHasBackgroundAudioInfoPlistKey(char const*)::hasKey)
    {
      goto LABEL_11;
    }

    v8 = v48 + 8;
    v9 = (*(*(v48 + 8) + 16))(v48 + 8);
    *(v48 + 144) = (*(v48 + 144) + 1);
    if (v9)
    {
      (*(*v8 + 24))(v8);
    }

    v10 = 5;
    v47 = 268435460;
    while (1)
    {
      v11 = CADeprecated::TSingleton<AURegistrationServerConnection>::instance();
      v12 = MEMORY[0x1EEE9AC50];
      v13 = *(v11 + 48);
      *&buf[32] = *v2;
      *&buf[48] = *(v2 + 4);
      v14 = *(v48 + 144);
      *&buf[24] = *MEMORY[0x1E69E99E0];
      LODWORD(v52) = v14;
      reply_port = mig_get_reply_port();
      *buf = 5395;
      *&buf[8] = v13;
      *&buf[12] = reply_port;
      *&buf[16] = 0x15F9800000000;
      if (v12)
      {
        voucher_mach_msg_set(buf);
        v16 = *&buf[12];
      }

      else
      {
        v16 = reply_port;
      }

      v17 = mach_msg(buf, 275, 0x38u, 0x30u, v16, gMediaServerTimeout, 0);
      v18 = v17;
      if ((v17 - 268435458) <= 0xE && ((1 << (v17 - 2)) & 0x4003) != 0)
      {
        mig_put_reply_port(*&buf[12]);
      }

      else
      {
        if (!v17)
        {
          if (*&buf[20] == 71)
          {
            v18 = -308;
          }

          else if (*&buf[20] == 90108)
          {
            if ((*buf & 0x80000000) == 0)
            {
              if (*&buf[4] == 40)
              {
                if (!*&buf[8])
                {
                  v18 = *&buf[32];
                  if (!*&buf[32])
                  {
                    v18 = *&buf[36];
                    goto LABEL_52;
                  }

                  goto LABEL_45;
                }
              }

              else if (*&buf[4] == 36)
              {
                if (*&buf[8])
                {
                  v19 = 1;
                }

                else
                {
                  v19 = *&buf[32] == 0;
                }

                if (v19)
                {
                  v18 = -300;
                }

                else
                {
                  v18 = *&buf[32];
                }

                goto LABEL_45;
              }
            }

            v18 = -300;
          }

          else
          {
            v18 = -301;
          }

LABEL_45:
          mach_msg_destroy(buf);
          goto LABEL_46;
        }

        mig_dealloc_reply_port(*&buf[12]);
      }

      if (v18 == 268435460)
      {
        if ((*buf & 0x1F00) == 0x1100)
        {
          mach_port_deallocate(*MEMORY[0x1E69E9A60], *&buf[12]);
        }

        mach_msg_destroy(buf);
        goto LABEL_59;
      }

LABEL_46:
      if (v18 != 268435459)
      {
        if (!v18)
        {
LABEL_52:
          if (kInterAppAudioScope)
          {
            v21 = *kInterAppAudioScope;
            if (!*kInterAppAudioScope)
            {
              goto LABEL_72;
            }
          }

          else
          {
            v21 = MEMORY[0x1E69E9C10];
          }

          if (os_log_type_enabled(v21, OS_LOG_TYPE_DEBUG))
          {
            *buf = 136315650;
            *&buf[4] = "IPCAUClient.cpp";
            *&buf[12] = 1024;
            *&buf[14] = 215;
            *&buf[18] = 1024;
            *&buf[20] = v18;
            _os_log_impl(&dword_18F5DF000, v21, OS_LOG_TYPE_DEBUG, "%25s:%-5d CheckLaunch says mustWait: %d", buf, 0x18u);
          }

LABEL_72:
          if (v18)
          {
            v49 = v48 + 8;
            v27 = (*(*v8 + 16))(v8);
            v50 = v27;
            while (1)
            {
              v28 = *(v48 + 148);
              if (v28)
              {
                break;
              }

              if ((*(*v8 + 64))(v8, 20000000000))
              {
                if (kInterAppAudioScope)
                {
                  v29 = *kInterAppAudioScope;
                  if (!*kInterAppAudioScope)
                  {
                    goto LABEL_132;
                  }
                }

                else
                {
                  v29 = MEMORY[0x1E69E9C10];
                }

                if (!os_log_type_enabled(v29, OS_LOG_TYPE_ERROR))
                {
                  goto LABEL_132;
                }

                *buf = 136315394;
                *&buf[4] = "IPCAUClient.cpp";
                *&buf[12] = 1024;
                *&buf[14] = 224;
                v32 = "%25s:%-5d Timed out waiting for app to launch";
                goto LABEL_131;
              }
            }

            if (v28 == 1)
            {
              if (kInterAppAudioScope)
              {
                v29 = *kInterAppAudioScope;
                if (!*kInterAppAudioScope)
                {
LABEL_132:
                  if (v27)
                  {
                    (*(*v8 + 24))(v8);
                  }

                  goto LABEL_66;
                }
              }

              else
              {
                v29 = MEMORY[0x1E69E9C10];
              }

              if (!os_log_type_enabled(v29, OS_LOG_TYPE_ERROR))
              {
                goto LABEL_132;
              }

              *buf = 136315394;
              *&buf[4] = "IPCAUClient.cpp";
              *&buf[12] = 1024;
              *&buf[14] = 229;
              v32 = "%25s:%-5d Failed to launch app";
LABEL_131:
              _os_log_impl(&dword_18F5DF000, v29, OS_LOG_TYPE_ERROR, v32, buf, 0x12u);
              goto LABEL_132;
            }

            if (kInterAppAudioScope)
            {
              v31 = *kInterAppAudioScope;
              if (!*kInterAppAudioScope)
              {
                goto LABEL_98;
              }
            }

            else
            {
              v31 = MEMORY[0x1E69E9C10];
            }

            if (os_log_type_enabled(v31, OS_LOG_TYPE_DEBUG))
            {
              *buf = 136315394;
              *&buf[4] = "IPCAUClient.cpp";
              *&buf[12] = 1024;
              *&buf[14] = 233;
              _os_log_impl(&dword_18F5DF000, v31, OS_LOG_TYPE_DEBUG, "%25s:%-5d App seems to be running after wait", buf, 0x12u);
            }

LABEL_98:
            if (v27)
            {
              (*(*v8 + 24))(v8);
            }
          }

          else
          {
            if (kInterAppAudioScope)
            {
              v30 = *kInterAppAudioScope;
              if (!*kInterAppAudioScope)
              {
                goto LABEL_100;
              }
            }

            else
            {
              v30 = MEMORY[0x1E69E9C10];
            }

            if (os_log_type_enabled(v30, OS_LOG_TYPE_DEBUG))
            {
              *buf = 136315394;
              *&buf[4] = "IPCAUClient.cpp";
              *&buf[12] = 1024;
              *&buf[14] = 235;
              _os_log_impl(&dword_18F5DF000, v30, OS_LOG_TYPE_DEBUG, "%25s:%-5d App appears to be already running", buf, 0x12u);
            }
          }

LABEL_100:
          v33 = CADeprecated::TSingleton<AURegistrationServerConnection>::instance();
          v34 = MEMORY[0x1EEE9AC50];
          v35 = *(v33 + 48);
          v53 = 0;
          v52 = 0u;
          memset(&buf[4], 0, 48);
          *&buf[24] = *MEMORY[0x1E69E99E0];
          *&buf[32] = *v2;
          *&buf[48] = *(v2 + 4);
          v36 = mig_get_reply_port();
          *&buf[8] = v35;
          *&buf[12] = v36;
          *buf = 5395;
          *&buf[16] = 0x15F9900000000;
          if (v34)
          {
            voucher_mach_msg_set(buf);
            v37 = *&buf[12];
          }

          else
          {
            v37 = v36;
          }

          v38 = mach_msg(buf, 275, 0x34u, 0x4Cu, v37, gMediaServerTimeout, 0);
          v39 = v38;
          if ((v38 - 268435458) <= 0xE && ((1 << (v38 - 2)) & 0x4003) != 0)
          {
            mig_put_reply_port(*&buf[12]);
            goto LABEL_118;
          }

          if (!v38)
          {
            if (*&buf[20] == 90109 && (*buf & 0x80000000) != 0 && *&buf[24] == 1 && *&buf[4] == 68 && !*&buf[8] && *&buf[38] << 16 == 1114112)
            {
              v40 = *&buf[28];
              v41 = *&buf[48];
              if (*&buf[28] && v41 != getpid())
              {
                if (*v2 > 1635086952)
                {
                  *v2;
                }

                v42 = *(v48 + 256);
                v43 = *(v48 + 264);
                if (v42 != v43)
                {
                  v44 = 0;
                  do
                  {
                    v46 = *v42++;
                    v45 = v46;
                    if (*(v46 + 48) == v40)
                    {
                      v44 = v45;
                    }
                  }

                  while (v42 != v43);
                  if (v44)
                  {
                    operator new();
                  }
                }

                operator new();
              }

              goto LABEL_122;
            }

LABEL_121:
            mach_msg_destroy(buf);
            goto LABEL_122;
          }

          mig_dealloc_reply_port(*&buf[12]);
LABEL_118:
          if (v39 == 268435460)
          {
            if ((*buf & 0x1F00) == 0x1100)
            {
              mach_port_deallocate(*MEMORY[0x1E69E9A60], *&buf[12]);
            }

            goto LABEL_121;
          }

LABEL_122:
          if (kInterAppAudioScope)
          {
            v2 = *kInterAppAudioScope;
            if (!*kInterAppAudioScope)
            {
LABEL_67:
              os_unfair_recursive_lock_unlock();
              break;
            }
          }

          else
          {
            v2 = MEMORY[0x1E69E9C10];
          }

          if (os_log_type_enabled(v2, OS_LOG_TYPE_ERROR))
          {
            *buf = 136315394;
            *&buf[4] = "IPCAUClient.cpp";
            *&buf[12] = 1024;
            *&buf[14] = 243;
            v22 = "%25s:%-5d Host can't be node";
            v23 = v2;
            v24 = 18;
            goto LABEL_65;
          }

LABEL_66:
          v2 = 0;
          goto LABEL_67;
        }

        v47 = v18;
LABEL_59:
        if (kInterAppAudioScope)
        {
          v2 = *kInterAppAudioScope;
          if (!*kInterAppAudioScope)
          {
            goto LABEL_67;
          }
        }

        else
        {
          v2 = MEMORY[0x1E69E9C10];
        }

        if (os_log_type_enabled(v2, OS_LOG_TYPE_ERROR))
        {
          CAX4CCString::CAX4CCString(&v49, v47);
          *buf = 136315650;
          *&buf[4] = "IPCAUClient.cpp";
          *&buf[12] = 1024;
          *&buf[14] = 211;
          *&buf[18] = 2080;
          *&buf[20] = &v49;
          v22 = "%25s:%-5d CheckLaunchAUServer failed (%s)";
          v23 = v2;
          v24 = 28;
LABEL_65:
          _os_log_impl(&dword_18F5DF000, v23, OS_LOG_TYPE_ERROR, v22, buf, v24);
          goto LABEL_66;
        }

        goto LABEL_66;
      }

      sleep(1u);
      v20 = CADeprecated::TSingleton<AURegistrationServerConnection>::instance();
      AURegistrationServerConnection::Connect(v20);
      if (!--v10)
      {
        v47 = 268435459;
        goto LABEL_59;
      }
    }
  }

  v25 = *MEMORY[0x1E69E9840];
  return v2;
}

void sub_18F6E4A7C(_Unwind_Exception *a1)
{
  MEMORY[0x193ADF220](v1, 0x10F1C40DC43F475);
  os_unfair_recursive_lock_unlock();
  _Unwind_Resume(a1);
}

uint64_t std::__shared_ptr_pointer<APComponent_InterApp *,std::shared_ptr<APComponent_InterApp>::__shared_ptr_default_delete<APComponent_InterApp,APComponent_InterApp>,std::allocator<APComponent_InterApp>>::__on_zero_shared(uint64_t a1)
{
  result = *(a1 + 24);
  if (result)
  {
    return (*(*result + 24))();
  }

  return result;
}

void std::__shared_ptr_pointer<APComponent_InterApp *,std::shared_ptr<APComponent_InterApp>::__shared_ptr_default_delete<APComponent_InterApp,APComponent_InterApp>,std::allocator<APComponent_InterApp>>::~__shared_ptr_pointer(std::__shared_weak_count *a1)
{
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x193ADF220);
}

CFAbsoluteTime AudioComponentGetLastActiveTime(AudioComponent comp)
{
  v1 = 0.0;
  if (!comp)
  {
    return v1;
  }

  v2 = (**comp)(comp);
  if (!v2)
  {
    return v1;
  }

  v3 = (*(*v2 + 56))(v2);
  if (!v3)
  {
    return v1;
  }

  v4 = v3;
  valuePtr = 0.0;
  if (!*(v3 + 160))
  {
    return v1;
  }

  Current = CFAbsoluteTimeGetCurrent();
  v6 = APComponent_InterApp::GetLastActiveTime(void)::activeTimes;
  if (Current <= 2.5 && APComponent_InterApp::GetLastActiveTime(void)::activeTimes)
  {
    goto LABEL_11;
  }

  if (APComponent_InterApp::GetLastActiveTime(void)::activeTimes)
  {
    CFRelease(APComponent_InterApp::GetLastActiveTime(void)::activeTimes);
    APComponent_InterApp::GetLastActiveTime(void)::activeTimes = 0;
  }

  v7 = CFPreferencesCopyAppValue(@"InterAppProcessActiveTimes", @"com.apple.coreaudio");
  APComponent_InterApp::GetLastActiveTime(void)::activeTimes = v7;
  if (v7)
  {
    CFRetain(v7);
    v6 = APComponent_InterApp::GetLastActiveTime(void)::activeTimes;
LABEL_11:
    Value = CFDictionaryGetValue(v6, *(v4 + 160));
    if (Value)
    {
      CFNumberGetValue(Value, kCFNumberDoubleType, &valuePtr);
      return valuePtr;
    }
  }

  return v1;
}

uint64_t AudioComponentInstanceSetNoCanDo(uint64_t result, int a2)
{
  if (result)
  {
    result = (*(*result + 8))(result);
    if (result)
    {
      result = APComponentInstance::selectorToMethodPtr(*(result + 8), *(result + 16), a2);
      if (result)
      {
        *result = 0;
      }
    }
  }

  return result;
}

uint64_t *std::unique_ptr<XOSTransactor>::reset[abi:ne200100](uint64_t *result, uint64_t a2)
{
  v2 = *result;
  *result = a2;
  if (v2)
  {
    XOSTransactor::endTransaction(v2);

    JUMPOUT(0x193ADF220);
  }

  return result;
}

void AUOOPRenderingServerUser::~AUOOPRenderingServerUser(AUOOPRenderingServerUser *this)
{
  this->_vptr$CAPrint = &unk_1F0336398;
  BaseOpaqueObject::destroyOpaqueRef(this);

  BaseOpaqueObject::~BaseOpaqueObject(this);
}

{
  AUOOPRenderingServerUser::~AUOOPRenderingServerUser(this);

  JUMPOUT(0x193ADF220);
}

void std::vector<KVOAggregator::Record>::__base_destruct_at_end[abi:ne200100](uint64_t a1, uint64_t a2)
{
  for (i = *(a1 + 8); i != a2; i -= 32)
  {

    objc_destroyWeak((i - 24));
  }

  *(a1 + 8) = a2;
}

void ___ZN5caulk3xpc22reply_watchdog_factory18reply_with_timeoutIJU8__strongP7NSErrorbEEEU13block_pointerFvDpT_ES9_i_block_invoke(uint64_t a1, void *a2)
{
  v5 = a2;
  v3 = *(a1 + 32);
  v4 = applesauce::dispatch::v1::queue::operator*(v3);
  dispatch_source_cancel(v4);

  (*(*(a1 + 40) + 16))();
}

void __destroy_helper_block_ea8_32c122_ZTSKZN5caulk3xpc22reply_watchdog_factory18reply_with_timeoutIJU8__strongP7NSErrorbEEEU13block_pointerFvDpT_ES9_iEUlS4_bE_(uint64_t a1)
{
  v2 = *(a1 + 32);
  *(a1 + 32) = 0;

  v3 = *(a1 + 32);
}

void *__copy_helper_block_ea8_32c122_ZTSKZN5caulk3xpc22reply_watchdog_factory18reply_with_timeoutIJU8__strongP7NSErrorbEEEU13block_pointerFvDpT_ES9_iEUlS4_bE_(uint64_t a1, uint64_t a2)
{
  *(a1 + 32) = *(a2 + 32);
  result = _Block_copy(*(a2 + 40));
  *(a1 + 40) = result;
  return result;
}

id caulk::xpc::reply_watchdog_factory::reply_with_timeout<NSError * {__strong},NSString * {__strong}>(caulk::xpc::reply_watchdog_factory *a1, void *a2)
{
  v3 = a2;
  if ((*a1 & 1) == 0)
  {
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 3321888768;
    aBlock[2] = ___ZN5caulk3xpc22reply_watchdog_factory18reply_with_timeoutIJU8__strongP7NSErrorU8__strongP8NSStringEEEU13block_pointerFvDpT_ESC_i_block_invoke;
    aBlock[3] = &__block_descriptor_48_ea8_32c143_ZTSKZN5caulk3xpc22reply_watchdog_factory18reply_with_timeoutIJU8__strongP7NSErrorU8__strongP8NSStringEEEU13block_pointerFvDpT_ESC_iEUlS4_S7_E__e30_v24__0__NSError_8__NSString_16l;
    caulk::xpc::reply_watchdog_factory::make_timer(a1);
    v8 = _Block_copy(v3);
    v10 = v7;
    v11 = _Block_copy(v8);
    v4 = _Block_copy(aBlock);

    v5 = v10;
    v10 = 0;

    v3 = v4;
  }

  return v3;
}

void ___ZN5caulk3xpc22reply_watchdog_factory18reply_with_timeoutIJU8__strongP7NSErrorU8__strongP8NSStringEEEU13block_pointerFvDpT_ESC_i_block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a3;
  v8 = a2;
  v6 = *(a1 + 32);
  v7 = applesauce::dispatch::v1::queue::operator*(v6);
  dispatch_source_cancel(v7);

  (*(*(a1 + 40) + 16))();
}

void __destroy_helper_block_ea8_32c143_ZTSKZN5caulk3xpc22reply_watchdog_factory18reply_with_timeoutIJU8__strongP7NSErrorU8__strongP8NSStringEEEU13block_pointerFvDpT_ESC_iEUlS4_S7_E_(uint64_t a1)
{
  v2 = *(a1 + 32);
  *(a1 + 32) = 0;

  v3 = *(a1 + 32);
}

void *__copy_helper_block_ea8_32c143_ZTSKZN5caulk3xpc22reply_watchdog_factory18reply_with_timeoutIJU8__strongP7NSErrorU8__strongP8NSStringEEEU13block_pointerFvDpT_ESC_iEUlS4_S7_E_(uint64_t a1, uint64_t a2)
{
  *(a1 + 32) = *(a2 + 32);
  result = _Block_copy(*(a2 + 40));
  *(a1 + 40) = result;
  return result;
}

void sub_18F6E5BEC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, id location)
{
  objc_destroyWeak((v18 + 32));
  objc_destroyWeak(&location);
  objc_destroyWeak((v17 + 32));
  objc_destroyWeak((v16 + 32));
  objc_destroyWeak((v19 - 72));

  _Unwind_Resume(a1);
}

void sub_18F6E5EAC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, id a9)
{
  v13 = v11;

  caulk::xpc::sync_message<objc_object  {objcproto33AUAudioUnitMessageChannelProtocol}* {__strong},NSDictionary * {__strong}>::~sync_message(&a9);
  _Unwind_Resume(a1);
}

void *caulk::xpc::sync_message<objc_object  {objcproto33AUAudioUnitMessageChannelProtocol}* {__strong},NSDictionary * {__strong}>::sync_message(void *a1, void *a2)
{
  v6[4] = *MEMORY[0x1E69E9840];
  v6[0] = &unk_1F032C448;
  v6[1] = a1;
  v6[3] = v6;
  v3 = a2;
  *a1 = v3;
  std::__function::__value_func<void ()(NSError *,std::tuple<NSDictionary * {__strong}> &&)>::__value_func[abi:ne200100]((a1 + 1), v6);

  std::__function::__value_func<void ()(NSError *,std::tuple<NSDictionary * {__strong}> &&)>::~__value_func[abi:ne200100](v6);
  a1[5] = 0;
  a1[6] = 0;
  v4 = *MEMORY[0x1E69E9840];
  return a1;
}

void sub_18F6E5FB8(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);

  std::__function::__value_func<void ()(NSError *,std::tuple<NSDictionary * {__strong}> &&)>::~__value_func[abi:ne200100](va);
  _Unwind_Resume(a1);
}

id caulk::xpc::message<objc_object  {objcproto33AUAudioUnitMessageChannelProtocol}* {__strong},NSDictionary * {__strong}>::sync_proxy(void **a1)
{
  v9 = *MEMORY[0x1E69E9840];
  std::__function::__value_func<void ()(NSError *,std::tuple<NSDictionary * {__strong}> &&)>::__value_func[abi:ne200100](v8, (a1 + 1));
  v2 = *a1;
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3321888768;
  v6[2] = ___ZN5caulk3xpc7messageIU8__strongPU44objcproto33AUAudioUnitMessageChannelProtocol11objc_objectJU8__strongP12NSDictionaryEE10sync_proxyEv_block_invoke;
  v6[3] = &__block_descriptor_64_ea8_32c75_ZTSNSt3__18functionIFvP7NSErrorONS_5tupleIJU8__strongP12NSDictionaryEEEEEE_e17_v16__0__NSError_8l;
  std::__function::__value_func<void ()(NSError *,std::tuple<NSDictionary * {__strong}> &&)>::__value_func[abi:ne200100](v7, v8);
  v3 = [v2 synchronousRemoteObjectProxyWithErrorHandler:v6];
  std::__function::__value_func<void ()(NSError *,std::tuple<NSDictionary * {__strong}> &&)>::~__value_func[abi:ne200100](v7);
  std::__function::__value_func<void ()(NSError *,std::tuple<NSDictionary * {__strong}> &&)>::~__value_func[abi:ne200100](v8);
  v4 = *MEMORY[0x1E69E9840];

  return v3;
}

void sub_18F6E60CC(_Unwind_Exception *a1)
{
  std::__function::__value_func<void ()(NSError *,std::tuple<NSDictionary * {__strong}> &&)>::~__value_func[abi:ne200100](v1 + 32);
  std::__function::__value_func<void ()(NSError *,std::tuple<NSDictionary * {__strong}> &&)>::~__value_func[abi:ne200100](v2 - 56);
  _Unwind_Resume(a1);
}

id caulk::xpc::message<objc_object  {objcproto33AUAudioUnitMessageChannelProtocol}* {__strong},NSDictionary * {__strong}>::reply(uint64_t a1)
{
  v7 = *MEMORY[0x1E69E9840];
  std::__function::__value_func<void ()(NSError *,std::tuple<NSDictionary * {__strong}> &&)>::__value_func[abi:ne200100](v6, a1 + 8);
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3321888768;
  aBlock[2] = ___ZN5caulk3xpc7messageIU8__strongPU44objcproto33AUAudioUnitMessageChannelProtocol11objc_objectJU8__strongP12NSDictionaryEE5replyEv_block_invoke;
  aBlock[3] = &__block_descriptor_64_ea8_32c75_ZTSNSt3__18functionIFvP7NSErrorONS_5tupleIJU8__strongP12NSDictionaryEEEEEE_e34_v24__0__NSError_8__NSDictionary_16l;
  std::__function::__value_func<void ()(NSError *,std::tuple<NSDictionary * {__strong}> &&)>::__value_func[abi:ne200100](v5, v6);
  v1 = _Block_copy(aBlock);
  std::__function::__value_func<void ()(NSError *,std::tuple<NSDictionary * {__strong}> &&)>::~__value_func[abi:ne200100](v5);
  std::__function::__value_func<void ()(NSError *,std::tuple<NSDictionary * {__strong}> &&)>::~__value_func[abi:ne200100](v6);
  v2 = *MEMORY[0x1E69E9840];

  return v1;
}

uint64_t std::__function::__value_func<void ()(NSError *,std::tuple<NSDictionary * {__strong}> &&)>::~__value_func[abi:ne200100](uint64_t a1)
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

id *caulk::xpc::sync_message<objc_object  {objcproto33AUAudioUnitMessageChannelProtocol}* {__strong},NSDictionary * {__strong}>::~sync_message(id *a1)
{
  std::__function::__value_func<void ()(NSError *,std::tuple<NSDictionary * {__strong}> &&)>::~__value_func[abi:ne200100]((a1 + 1));

  return a1;
}

uint64_t std::__function::__value_func<void ()(NSError *,std::tuple<NSDictionary * {__strong}> &&)>::__value_func[abi:ne200100](uint64_t a1, uint64_t a2)
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

void ___ZN5caulk3xpc7messageIU8__strongPU44objcproto33AUAudioUnitMessageChannelProtocol11objc_objectJU8__strongP12NSDictionaryEE5replyEv_block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a3;
  std::function<void ()(NSError *,std::tuple<NSDictionary * {__strong}> &&)>::operator()(a1 + 32, a2, &v5);
}

void std::function<void ()(NSError *,std::tuple<NSDictionary * {__strong}> &&)>::operator()(uint64_t a1, void *a2, uint64_t a3)
{
  v6 = a2;
  v5 = *(a1 + 24);
  if (!v5)
  {
    std::__throw_bad_function_call[abi:ne200100]();
  }

  (*(*v5 + 48))(v5, &v6, a3);
}

void ___ZN5caulk3xpc7messageIU8__strongPU44objcproto33AUAudioUnitMessageChannelProtocol11objc_objectJU8__strongP12NSDictionaryEE10sync_proxyEv_block_invoke(uint64_t a1, void *a2)
{
  v2 = 0;
  std::function<void ()(NSError *,std::tuple<NSDictionary * {__strong}> &&)>::operator()(a1 + 32, a2, &v2);
}

void std::__function::__func<caulk::xpc::sync_message<objc_object  {objcproto33AUAudioUnitMessageChannelProtocol}* {__strong},NSDictionary * {__strong}>::sync_message(NSXPCConnection *)::{lambda(NSError *,std::tuple<NSDictionary *> &&)#1},std::allocator<std::tuple<NSDictionary *> &>,void ()(NSError,std::tuple<NSDictionary *>)>::operator()(uint64_t a1, id *a2, id *a3)
{
  v5 = *a2;
  v6 = *(a1 + 8);
  v7 = *(v6 + 40);
  *(v6 + 40) = v5;
  v8 = v5;

  objc_storeStrong((v6 + 48), *a3);
}

uint64_t std::__function::__func<caulk::xpc::sync_message<objc_object  {objcproto33AUAudioUnitMessageChannelProtocol}* {__strong},NSDictionary * {__strong}>::sync_message(NSXPCConnection *)::{lambda(NSError *,std::tuple<NSDictionary *> &&)#1},std::allocator<std::tuple<NSDictionary *> &>,void ()(NSError,std::tuple<NSDictionary *>)>::__clone(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_1F032C448;
  a2[1] = v2;
  return result;
}

id caulk::strong<AURemoteMessageChannel>(id *a1)
{
  WeakRetained = objc_loadWeakRetained(a1);

  return WeakRetained;
}

void sub_18F6E6788(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id a10)
{
  v12 = v11;

  _Unwind_Resume(a1);
}

id caulk::xpc::reply_watchdog_factory::reply_with_timeout<NSError * {__strong},NSArray * {__strong}>(caulk::xpc::reply_watchdog_factory *a1, void *a2)
{
  v3 = a2;
  if ((*a1 & 1) == 0)
  {
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 3321888768;
    aBlock[2] = ___ZN5caulk3xpc22reply_watchdog_factory18reply_with_timeoutIJU8__strongP7NSErrorU8__strongP7NSArrayEEEU13block_pointerFvDpT_ESC_i_block_invoke;
    aBlock[3] = &__block_descriptor_48_ea8_32c142_ZTSKZN5caulk3xpc22reply_watchdog_factory18reply_with_timeoutIJU8__strongP7NSErrorU8__strongP7NSArrayEEEU13block_pointerFvDpT_ESC_iEUlS4_S7_E__e29_v24__0__NSError_8__NSArray_16l;
    caulk::xpc::reply_watchdog_factory::make_timer(a1);
    v8 = _Block_copy(v3);
    v10 = v7;
    v11 = _Block_copy(v8);
    v4 = _Block_copy(aBlock);

    v5 = v10;
    v10 = 0;

    v3 = v4;
  }

  return v3;
}

void ___ZN5caulk3xpc22reply_watchdog_factory18reply_with_timeoutIJU8__strongP7NSErrorU8__strongP7NSArrayEEEU13block_pointerFvDpT_ESC_i_block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a3;
  v8 = a2;
  v6 = *(a1 + 32);
  v7 = applesauce::dispatch::v1::queue::operator*(v6);
  dispatch_source_cancel(v7);

  (*(*(a1 + 40) + 16))();
}

void __destroy_helper_block_ea8_32c142_ZTSKZN5caulk3xpc22reply_watchdog_factory18reply_with_timeoutIJU8__strongP7NSErrorU8__strongP7NSArrayEEEU13block_pointerFvDpT_ESC_iEUlS4_S7_E_(uint64_t a1)
{
  v2 = *(a1 + 32);
  *(a1 + 32) = 0;

  v3 = *(a1 + 32);
}

void *__copy_helper_block_ea8_32c142_ZTSKZN5caulk3xpc22reply_watchdog_factory18reply_with_timeoutIJU8__strongP7NSErrorU8__strongP7NSArrayEEEU13block_pointerFvDpT_ESC_iEUlS4_S7_E_(uint64_t a1, uint64_t a2)
{
  *(a1 + 32) = *(a2 + 32);
  result = _Block_copy(*(a2 + 40));
  *(a1 + 40) = result;
  return result;
}

void sub_18F6E6AA8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id a10)
{
  v11 = v10;

  _Unwind_Resume(a1);
}

id caulk::xpc::reply_watchdog_factory::reply_with_timeout<NSError * {__strong}>(caulk::xpc::reply_watchdog_factory *a1, void *a2)
{
  v3 = a2;
  if ((*a1 & 1) == 0)
  {
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 3321888768;
    aBlock[2] = ___ZN5caulk3xpc22reply_watchdog_factory18reply_with_timeoutIJU8__strongP7NSErrorEEEU13block_pointerFvDpT_ES9_i_block_invoke;
    aBlock[3] = &__block_descriptor_48_ea8_32c120_ZTSKZN5caulk3xpc22reply_watchdog_factory18reply_with_timeoutIJU8__strongP7NSErrorEEEU13block_pointerFvDpT_ES9_iEUlS4_E__e17_v16__0__NSError_8l;
    caulk::xpc::reply_watchdog_factory::make_timer(a1);
    v8 = _Block_copy(v3);
    v10 = v7;
    v11 = _Block_copy(v8);
    v4 = _Block_copy(aBlock);

    v5 = v10;
    v10 = 0;

    v3 = v4;
  }

  return v3;
}

void ___ZN5caulk3xpc22reply_watchdog_factory18reply_with_timeoutIJU8__strongP7NSErrorEEEU13block_pointerFvDpT_ES9_i_block_invoke(uint64_t a1, void *a2)
{
  v5 = a2;
  v3 = *(a1 + 32);
  v4 = applesauce::dispatch::v1::queue::operator*(v3);
  dispatch_source_cancel(v4);

  (*(*(a1 + 40) + 16))();
}

void __destroy_helper_block_ea8_32c120_ZTSKZN5caulk3xpc22reply_watchdog_factory18reply_with_timeoutIJU8__strongP7NSErrorEEEU13block_pointerFvDpT_ES9_iEUlS4_E_(uint64_t a1)
{
  v2 = *(a1 + 32);
  *(a1 + 32) = 0;

  v3 = *(a1 + 32);
}

void *__copy_helper_block_ea8_32c120_ZTSKZN5caulk3xpc22reply_watchdog_factory18reply_with_timeoutIJU8__strongP7NSErrorEEEU13block_pointerFvDpT_ES9_iEUlS4_E_(uint64_t a1, uint64_t a2)
{
  *(a1 + 32) = *(a2 + 32);
  result = _Block_copy(*(a2 + 40));
  *(a1 + 40) = result;
  return result;
}

void sub_18F6E6DAC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id a10)
{
  v12 = v11;

  _Unwind_Resume(a1);
}

void sub_18F6E6EE8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_18F6E7038(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, void *a8, ...)
{
  va_start(va, a8);
  v12 = v10;

  _ZNSt3__110__function12__value_funcIFvP7NSErrorONS_5tupleIJEEEEED2B8ne200100Ev(va);
  _Unwind_Resume(a1);
}

void *caulk::xpc::message<objc_object  {objcproto23AUAudioUnitHostProtocol}* {__strong}>::message(void *a1, void *a2, uint64_t a3)
{
  v5 = a2;
  *a1 = v5;
  _ZNSt3__110__function12__value_funcIFvP7NSErrorONS_5tupleIJEEEEEC2B8ne200100ERKS8_((a1 + 1), a3);

  return a1;
}

uint64_t _ZNSt3__110__function12__value_funcIFvP7NSErrorONS_5tupleIJEEEEED2B8ne200100Ev(uint64_t a1)
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

id caulk::xpc::message<objc_object  {objcproto23AUAudioUnitHostProtocol}* {__strong}>::async_proxy(void **a1)
{
  v9 = *MEMORY[0x1E69E9840];
  _ZNSt3__110__function12__value_funcIFvP7NSErrorONS_5tupleIJEEEEEC2B8ne200100ERKS8_(v8, (a1 + 1));
  v2 = *a1;
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3321888768;
  v6[2] = ___ZN5caulk3xpc7messageIU8__strongPU34objcproto23AUAudioUnitHostProtocol11objc_objectJEE11async_proxyEv_block_invoke;
  v6[3] = &__block_descriptor_64_ea8_32c50_ZTSNSt3__18functionIFvP7NSErrorONS_5tupleIJEEEEEE_e17_v16__0__NSError_8l;
  _ZNSt3__110__function12__value_funcIFvP7NSErrorONS_5tupleIJEEEEEC2B8ne200100ERKS8_(v7, v8);
  v3 = [v2 remoteObjectProxyWithErrorHandler:v6];
  _ZNSt3__110__function12__value_funcIFvP7NSErrorONS_5tupleIJEEEEED2B8ne200100Ev(v7);
  _ZNSt3__110__function12__value_funcIFvP7NSErrorONS_5tupleIJEEEEED2B8ne200100Ev(v8);
  v4 = *MEMORY[0x1E69E9840];

  return v3;
}

void sub_18F6E7270(_Unwind_Exception *a1)
{
  _ZNSt3__110__function12__value_funcIFvP7NSErrorONS_5tupleIJEEEEED2B8ne200100Ev(v1 + 32);
  _ZNSt3__110__function12__value_funcIFvP7NSErrorONS_5tupleIJEEEEED2B8ne200100Ev(v2 - 56);
  _Unwind_Resume(a1);
}

uint64_t _ZNSt3__110__function12__value_funcIFvP7NSErrorONS_5tupleIJEEEEEC2B8ne200100ERKS8_(uint64_t a1, uint64_t a2)
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

void _ZNKSt3__18functionIFvP7NSErrorONS_5tupleIJEEEEEclES2_S5_(uint64_t a1, void *a2, uint64_t a3)
{
  v6 = a2;
  v5 = *(a1 + 24);
  if (!v5)
  {
    std::__throw_bad_function_call[abi:ne200100]();
  }

  (*(*v5 + 48))(v5, &v6, a3);
}

uint64_t _ZNSt3__110__function6__funcIU8__strongU13block_pointerFvP7NSErrorONS_5tupleIJEEEENS_9allocatorIS9_EES7_E7destroyEv(uint64_t a1)
{
  v1 = *(a1 + 8);
  *(a1 + 8) = 0;
  return MEMORY[0x1EEE66BB8]();
}

void *_ZNKSt3__110__function6__funcIU8__strongU13block_pointerFvP7NSErrorONS_5tupleIJEEEENS_9allocatorIS9_EES7_E7__cloneEPNS0_6__baseIS7_EE(uint64_t a1, void *a2)
{
  *a2 = &unk_1F033F978;
  result = _Block_copy(*(a1 + 8));
  a2[1] = result;
  return result;
}

void _ZNSt3__110__function6__funcIU8__strongU13block_pointerFvP7NSErrorONS_5tupleIJEEEENS_9allocatorIS9_EES7_ED0Ev(uint64_t a1)
{

  JUMPOUT(0x193ADF220);
}

void ___ZN5caulk3xpc22reply_watchdog_factory18reply_with_timeoutIJU8__strongP7NSErrorU8__strongP12NSDictionaryIP8NSStringP11objc_objectEEEEU13block_pointerFvDpT_ESH_i_block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a3;
  v8 = a2;
  v6 = *(a1 + 32);
  v7 = applesauce::dispatch::v1::queue::operator*(v6);
  dispatch_source_cancel(v7);

  (*(*(a1 + 40) + 16))();
}

void __destroy_helper_block_ea8_32c174_ZTSKZN5caulk3xpc22reply_watchdog_factory18reply_with_timeoutIJU8__strongP7NSErrorU8__strongP12NSDictionaryIP8NSStringP11objc_objectEEEEU13block_pointerFvDpT_ESH_iEUlS4_SC_E_(uint64_t a1)
{
  v2 = *(a1 + 32);
  *(a1 + 32) = 0;

  v3 = *(a1 + 32);
}

void *__copy_helper_block_ea8_32c174_ZTSKZN5caulk3xpc22reply_watchdog_factory18reply_with_timeoutIJU8__strongP7NSErrorU8__strongP12NSDictionaryIP8NSStringP11objc_objectEEEEU13block_pointerFvDpT_ESH_iEUlS4_SC_E_(uint64_t a1, uint64_t a2)
{
  *(a1 + 32) = *(a2 + 32);
  result = _Block_copy(*(a2 + 40));
  *(a1 + 40) = result;
  return result;
}

void sub_18F6E7890(_Unwind_Exception *a1)
{
  v3 = v2;

  _Unwind_Resume(a1);
}

void sub_18F6E7974(_Unwind_Exception *a1)
{
  v3 = v2;

  _Unwind_Resume(a1);
}

void ___ZN5caulk3xpc22reply_watchdog_factory18reply_with_timeoutIJU8__strongP7NSErrorU8__strongP7NSArrayIP17AUAudioUnitPresetEEEEU13block_pointerFvDpT_ESF_i_block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a3;
  v8 = a2;
  v6 = *(a1 + 32);
  v7 = applesauce::dispatch::v1::queue::operator*(v6);
  dispatch_source_cancel(v7);

  (*(*(a1 + 40) + 16))();
}

void __destroy_helper_block_ea8_32c164_ZTSKZN5caulk3xpc22reply_watchdog_factory18reply_with_timeoutIJU8__strongP7NSErrorU8__strongP7NSArrayIP17AUAudioUnitPresetEEEEU13block_pointerFvDpT_ESF_iEUlS4_SA_E_(uint64_t a1)
{
  v2 = *(a1 + 32);
  *(a1 + 32) = 0;

  v3 = *(a1 + 32);
}

void *__copy_helper_block_ea8_32c164_ZTSKZN5caulk3xpc22reply_watchdog_factory18reply_with_timeoutIJU8__strongP7NSErrorU8__strongP7NSArrayIP17AUAudioUnitPresetEEEEU13block_pointerFvDpT_ESF_iEUlS4_SA_E_(uint64_t a1, uint64_t a2)
{
  *(a1 + 32) = *(a2 + 32);
  result = _Block_copy(*(a2 + 40));
  *(a1 + 40) = result;
  return result;
}

void ___ZN5caulk3xpc22reply_watchdog_factory18reply_with_timeoutIJU8__strongP7NSErrorU8__strongP18MIDICIProfileStateEEEU13block_pointerFvDpT_ESC_i_block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a3;
  v8 = a2;
  v6 = *(a1 + 32);
  v7 = applesauce::dispatch::v1::queue::operator*(v6);
  dispatch_source_cancel(v7);

  (*(*(a1 + 40) + 16))();
}

void __destroy_helper_block_ea8_32c154_ZTSKZN5caulk3xpc22reply_watchdog_factory18reply_with_timeoutIJU8__strongP7NSErrorU8__strongP18MIDICIProfileStateEEEU13block_pointerFvDpT_ESC_iEUlS4_S7_E_(uint64_t a1)
{
  v2 = *(a1 + 32);
  *(a1 + 32) = 0;

  v3 = *(a1 + 32);
}

void *__copy_helper_block_ea8_32c154_ZTSKZN5caulk3xpc22reply_watchdog_factory18reply_with_timeoutIJU8__strongP7NSErrorU8__strongP18MIDICIProfileStateEEEU13block_pointerFvDpT_ESC_iEUlS4_S7_E_(uint64_t a1, uint64_t a2)
{
  *(a1 + 32) = *(a2 + 32);
  result = _Block_copy(*(a2 + 40));
  *(a1 + 40) = result;
  return result;
}

void ___ZN5caulk3xpc22reply_watchdog_factory18reply_with_timeoutIJU8__strongP7NSErrorU8__strongP10NSIndexSetEEEU13block_pointerFvDpT_ESC_i_block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a3;
  v8 = a2;
  v6 = *(a1 + 32);
  v7 = applesauce::dispatch::v1::queue::operator*(v6);
  dispatch_source_cancel(v7);

  (*(*(a1 + 40) + 16))();
}

void __destroy_helper_block_ea8_32c146_ZTSKZN5caulk3xpc22reply_watchdog_factory18reply_with_timeoutIJU8__strongP7NSErrorU8__strongP10NSIndexSetEEEU13block_pointerFvDpT_ESC_iEUlS4_S7_E_(uint64_t a1)
{
  v2 = *(a1 + 32);
  *(a1 + 32) = 0;

  v3 = *(a1 + 32);
}

void *__copy_helper_block_ea8_32c146_ZTSKZN5caulk3xpc22reply_watchdog_factory18reply_with_timeoutIJU8__strongP7NSErrorU8__strongP10NSIndexSetEEEU13block_pointerFvDpT_ESC_iEUlS4_S7_E_(uint64_t a1, uint64_t a2)
{
  *(a1 + 32) = *(a2 + 32);
  result = _Block_copy(*(a2 + 40));
  *(a1 + 40) = result;
  return result;
}

void sub_18F6E8724(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *a14, ...)
{
  va_start(va, a14);

  _ZNSt3__110__function12__value_funcIFvP7NSErrorONS_5tupleIJEEEEED2B8ne200100Ev(va);
  _Unwind_Resume(a1);
}

void sub_18F6E89E8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id a10)
{
  v12 = v11;

  _Unwind_Resume(a1);
}

id caulk::xpc::reply_watchdog_factory::reply_with_timeout<NSError * {__strong},float>(caulk::xpc::reply_watchdog_factory *a1, void *a2)
{
  v3 = a2;
  if ((*a1 & 1) == 0)
  {
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 3321888768;
    aBlock[2] = ___ZN5caulk3xpc22reply_watchdog_factory18reply_with_timeoutIJU8__strongP7NSErrorfEEEU13block_pointerFvDpT_ES9_i_block_invoke;
    aBlock[3] = &__block_descriptor_48_ea8_32c122_ZTSKZN5caulk3xpc22reply_watchdog_factory18reply_with_timeoutIJU8__strongP7NSErrorfEEEU13block_pointerFvDpT_ES9_iEUlS4_fE__e20_v20__0__NSError_8f16l;
    caulk::xpc::reply_watchdog_factory::make_timer(a1);
    v8 = _Block_copy(v3);
    v10 = v7;
    v11 = _Block_copy(v8);
    v4 = _Block_copy(aBlock);

    v5 = v10;
    v10 = 0;

    v3 = v4;
  }

  return v3;
}

void ___ZN5caulk3xpc22reply_watchdog_factory18reply_with_timeoutIJU8__strongP7NSErrorfEEEU13block_pointerFvDpT_ES9_i_block_invoke(uint64_t a1, void *a2, float a3)
{
  v7 = a2;
  v5 = *(a1 + 32);
  v6 = applesauce::dispatch::v1::queue::operator*(v5);
  dispatch_source_cancel(v6);

  (*(*(a1 + 40) + 16))(a3);
}

void __destroy_helper_block_ea8_32c122_ZTSKZN5caulk3xpc22reply_watchdog_factory18reply_with_timeoutIJU8__strongP7NSErrorfEEEU13block_pointerFvDpT_ES9_iEUlS4_fE_(uint64_t a1)
{
  v2 = *(a1 + 32);
  *(a1 + 32) = 0;

  v3 = *(a1 + 32);
}

void *__copy_helper_block_ea8_32c122_ZTSKZN5caulk3xpc22reply_watchdog_factory18reply_with_timeoutIJU8__strongP7NSErrorfEEEU13block_pointerFvDpT_ES9_iEUlS4_fE_(uint64_t a1, uint64_t a2)
{
  *(a1 + 32) = *(a2 + 32);
  result = _Block_copy(*(a2 + 40));
  *(a1 + 40) = result;
  return result;
}

void sub_18F6E8D3C(_Unwind_Exception *a1)
{
  v3 = v2;

  _Unwind_Resume(a1);
}

void sub_18F6E90D8(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);

  std::unique_ptr<-[AURemoteHost getParameter:sequenceNumber:reply:]::$_4>::~unique_ptr[abi:ne200100](va);
  _Unwind_Resume(a1);
}

void ___ZN5caulk3xpc22reply_watchdog_factory18reply_with_timeoutIJU8__strongP7NSErrorU8__strongP7NSArrayIP8NSNumberEEEEU13block_pointerFvDpT_ESF_i_block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a3;
  v8 = a2;
  v6 = *(a1 + 32);
  v7 = applesauce::dispatch::v1::queue::operator*(v6);
  dispatch_source_cancel(v7);

  (*(*(a1 + 40) + 16))();
}

void __destroy_helper_block_ea8_32c154_ZTSKZN5caulk3xpc22reply_watchdog_factory18reply_with_timeoutIJU8__strongP7NSErrorU8__strongP7NSArrayIP8NSNumberEEEEU13block_pointerFvDpT_ESF_iEUlS4_SA_E_(uint64_t a1)
{
  v2 = *(a1 + 32);
  *(a1 + 32) = 0;

  v3 = *(a1 + 32);
}

void *__copy_helper_block_ea8_32c154_ZTSKZN5caulk3xpc22reply_watchdog_factory18reply_with_timeoutIJU8__strongP7NSErrorU8__strongP7NSArrayIP8NSNumberEEEEU13block_pointerFvDpT_ESF_iEUlS4_SA_E_(uint64_t a1, uint64_t a2)
{
  *(a1 + 32) = *(a2 + 32);
  result = _Block_copy(*(a2 + 40));
  *(a1 + 40) = result;
  return result;
}

void ___ZN5caulk3xpc22reply_watchdog_factory18reply_with_timeoutIJU8__strongP7NSErrorU8__strongP15AUParameterTreeEEEU13block_pointerFvDpT_ESC_i_block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a3;
  v8 = a2;
  v6 = *(a1 + 32);
  v7 = applesauce::dispatch::v1::queue::operator*(v6);
  dispatch_source_cancel(v7);

  (*(*(a1 + 40) + 16))();
}

void __destroy_helper_block_ea8_32c151_ZTSKZN5caulk3xpc22reply_watchdog_factory18reply_with_timeoutIJU8__strongP7NSErrorU8__strongP15AUParameterTreeEEEU13block_pointerFvDpT_ESC_iEUlS4_S7_E_(uint64_t a1)
{
  v2 = *(a1 + 32);
  *(a1 + 32) = 0;

  v3 = *(a1 + 32);
}

void *__copy_helper_block_ea8_32c151_ZTSKZN5caulk3xpc22reply_watchdog_factory18reply_with_timeoutIJU8__strongP7NSErrorU8__strongP15AUParameterTreeEEEU13block_pointerFvDpT_ESC_iEUlS4_S7_E_(uint64_t a1, uint64_t a2)
{
  *(a1 + 32) = *(a2 + 32);
  result = _Block_copy(*(a2 + 40));
  *(a1 + 40) = result;
  return result;
}