uint64_t VectorMap<AGX::TileDispatchVertexProgramKey,AGX::ProgramVariantEntry<AGX::HAL300::TileDispatchVertexProgramVariant>,4u>::Chunk::~Chunk(uint64_t a1)
{
  v2 = *(a1 + 336);
  if (v2)
  {
    dispatch_release(v2);
  }

  v3 = *(a1 + 344);
  if (v3)
  {
    (*(*v3 + 8))(v3);
  }

  v4 = *(a1 + 288);
  if (v4)
  {
    dispatch_release(v4);
  }

  v5 = *(a1 + 296);
  if (v5)
  {
    (*(*v5 + 8))(v5);
  }

  v6 = *(a1 + 240);
  if (v6)
  {
    dispatch_release(v6);
  }

  v7 = *(a1 + 248);
  if (v7)
  {
    (*(*v7 + 8))(v7);
  }

  v8 = *(a1 + 192);
  if (v8)
  {
    dispatch_release(v8);
  }

  v9 = *(a1 + 200);
  if (v9)
  {
    (*(*v9 + 8))(v9);
  }

  *(a1 + 144) = &unk_2A23F96F8;
  v10 = *(a1 + 160);
  if (v10)
  {
    *(a1 + 168) = v10;
    operator delete(v10);
  }

  *(a1 + 96) = &unk_2A23F96F8;
  v11 = *(a1 + 112);
  if (v11)
  {
    *(a1 + 120) = v11;
    operator delete(v11);
  }

  *(a1 + 48) = &unk_2A23F96F8;
  v12 = *(a1 + 64);
  if (v12)
  {
    *(a1 + 72) = v12;
    operator delete(v12);
  }

  *a1 = &unk_2A23F96F8;
  v13 = *(a1 + 16);
  if (v13)
  {
    *(a1 + 24) = v13;
    operator delete(v13);
  }

  return a1;
}

void ProgramKey<(_AGCStreamToken)25,(AGX::DriverShaderCompilationMode)1>::serialize(uint64_t a1, uint64_t *a2, void *a3)
{
  v5 = (a1 + 16);
  *(a1 + 24) = *(a1 + 16);
  v7 = *(a1 + 8) | 0x100;
  std::vector<unsigned int>::push_back[abi:nn200100](a1 + 16, &v7);
  v8 = 96;
  std::vector<unsigned int>::push_back[abi:nn200100](v5, &v8);
  v6 = *v5;
  *a2 = *v5;
  *a3 = v5[1] - v6;
}

uint64_t VectorMap<AGX::ComputeControlFlowPredicateProgramKey,AGX::ProgramVariantEntry<AGX::HAL300::ComputeProgramVariant>,4u>::Chunk::~Chunk(uint64_t a1)
{
  v2 = *(a1 + 336);
  if (v2)
  {
    dispatch_release(v2);
  }

  v3 = *(a1 + 344);
  if (v3)
  {
    (*(*v3 + 8))(v3);
  }

  v4 = *(a1 + 288);
  if (v4)
  {
    dispatch_release(v4);
  }

  v5 = *(a1 + 296);
  if (v5)
  {
    (*(*v5 + 8))(v5);
  }

  v6 = *(a1 + 240);
  if (v6)
  {
    dispatch_release(v6);
  }

  v7 = *(a1 + 248);
  if (v7)
  {
    (*(*v7 + 8))(v7);
  }

  v8 = *(a1 + 192);
  if (v8)
  {
    dispatch_release(v8);
  }

  v9 = *(a1 + 200);
  if (v9)
  {
    (*(*v9 + 8))(v9);
  }

  *(a1 + 144) = &unk_2A23F6F58;
  v10 = *(a1 + 160);
  if (v10)
  {
    *(a1 + 168) = v10;
    operator delete(v10);
  }

  *(a1 + 96) = &unk_2A23F6F58;
  v11 = *(a1 + 112);
  if (v11)
  {
    *(a1 + 120) = v11;
    operator delete(v11);
  }

  *(a1 + 48) = &unk_2A23F6F58;
  v12 = *(a1 + 64);
  if (v12)
  {
    *(a1 + 72) = v12;
    operator delete(v12);
  }

  *a1 = &unk_2A23F6F58;
  v13 = *(a1 + 16);
  if (v13)
  {
    *(a1 + 24) = v13;
    operator delete(v13);
  }

  return a1;
}

void ProgramKey<(_AGCStreamToken)42,(AGX::DriverShaderCompilationMode)0>::serialize(uint64_t a1, uint64_t *a2, void *a3)
{
  v5 = (a1 + 16);
  *(a1 + 24) = *(a1 + 16);
  v7 = *(a1 + 8) | 0x100;
  std::vector<unsigned int>::push_back[abi:nn200100](a1 + 16, &v7);
  v8 = 96;
  std::vector<unsigned int>::push_back[abi:nn200100](v5, &v8);
  v6 = *v5;
  *a2 = *v5;
  *a3 = v5[1] - v6;
}

uint64_t VectorMap<AGX::BlitComputeProgramKey,AGX::ProgramVariantEntry<AGX::HAL300::BlitComputeProgramVariant>,4u>::Chunk::~Chunk(uint64_t a1)
{
  v2 = *(a1 + 496);
  if (v2)
  {
    dispatch_release(v2);
  }

  v3 = *(a1 + 504);
  if (v3)
  {
    (*(*v3 + 8))(v3);
  }

  v4 = *(a1 + 448);
  if (v4)
  {
    dispatch_release(v4);
  }

  v5 = *(a1 + 456);
  if (v5)
  {
    (*(*v5 + 8))(v5);
  }

  v6 = *(a1 + 400);
  if (v6)
  {
    dispatch_release(v6);
  }

  v7 = *(a1 + 408);
  if (v7)
  {
    (*(*v7 + 8))(v7);
  }

  v8 = *(a1 + 352);
  if (v8)
  {
    dispatch_release(v8);
  }

  v9 = *(a1 + 360);
  if (v9)
  {
    (*(*v9 + 8))(v9);
  }

  *(a1 + 264) = &unk_2A23F6620;
  v10 = *(a1 + 280);
  if (v10)
  {
    *(a1 + 288) = v10;
    operator delete(v10);
  }

  *(a1 + 176) = &unk_2A23F6620;
  v11 = *(a1 + 192);
  if (v11)
  {
    *(a1 + 200) = v11;
    operator delete(v11);
  }

  *(a1 + 88) = &unk_2A23F6620;
  v12 = *(a1 + 104);
  if (v12)
  {
    *(a1 + 112) = v12;
    operator delete(v12);
  }

  *a1 = &unk_2A23F6620;
  v13 = *(a1 + 16);
  if (v13)
  {
    *(a1 + 24) = v13;
    operator delete(v13);
  }

  return a1;
}

void ProgramKey<(_AGCStreamToken)16,(AGX::DriverShaderCompilationMode)0>::serialize(uint64_t a1, uint64_t *a2, void *a3)
{
  v5 = (a1 + 16);
  *(a1 + 24) = *(a1 + 16);
  v7 = *(a1 + 8) | 0x100;
  std::vector<unsigned int>::push_back[abi:nn200100](a1 + 16, &v7);
  v8 = 96;
  std::vector<unsigned int>::push_back[abi:nn200100](v5, &v8);
  v6 = *v5;
  *a2 = *v5;
  *a3 = v5[1] - v6;
}

uint64_t VectorMap<AGX::BlitVertexProgramKey,AGX::ProgramVariantEntry<AGX::HAL300::BlitVertexProgramVariant>,4u>::Chunk::~Chunk(uint64_t a1)
{
  v2 = *(a1 + 336);
  if (v2)
  {
    dispatch_release(v2);
  }

  v3 = *(a1 + 344);
  if (v3)
  {
    (*(*v3 + 8))(v3);
  }

  v4 = *(a1 + 288);
  if (v4)
  {
    dispatch_release(v4);
  }

  v5 = *(a1 + 296);
  if (v5)
  {
    (*(*v5 + 8))(v5);
  }

  v6 = *(a1 + 240);
  if (v6)
  {
    dispatch_release(v6);
  }

  v7 = *(a1 + 248);
  if (v7)
  {
    (*(*v7 + 8))(v7);
  }

  v8 = *(a1 + 192);
  if (v8)
  {
    dispatch_release(v8);
  }

  v9 = *(a1 + 200);
  if (v9)
  {
    (*(*v9 + 8))(v9);
  }

  *(a1 + 144) = &unk_2A23F66A0;
  v10 = *(a1 + 160);
  if (v10)
  {
    *(a1 + 168) = v10;
    operator delete(v10);
  }

  *(a1 + 96) = &unk_2A23F66A0;
  v11 = *(a1 + 112);
  if (v11)
  {
    *(a1 + 120) = v11;
    operator delete(v11);
  }

  *(a1 + 48) = &unk_2A23F66A0;
  v12 = *(a1 + 64);
  if (v12)
  {
    *(a1 + 72) = v12;
    operator delete(v12);
  }

  *a1 = &unk_2A23F66A0;
  v13 = *(a1 + 16);
  if (v13)
  {
    *(a1 + 24) = v13;
    operator delete(v13);
  }

  return a1;
}

void ProgramKey<(_AGCStreamToken)15,(AGX::DriverShaderCompilationMode)0>::serialize(uint64_t a1, uint64_t *a2, void *a3)
{
  v5 = (a1 + 16);
  *(a1 + 24) = *(a1 + 16);
  v7 = *(a1 + 8) | 0x100;
  std::vector<unsigned int>::push_back[abi:nn200100](a1 + 16, &v7);
  v8 = 96;
  std::vector<unsigned int>::push_back[abi:nn200100](v5, &v8);
  v6 = *v5;
  *a2 = *v5;
  *a3 = v5[1] - v6;
}

uint64_t VectorMap<AGX::BlitFragmentProgramKey,AGX::ProgramVariantEntry<AGX::HAL300::BlitFragmentProgramVariant>,4u>::Chunk::~Chunk(uint64_t a1)
{
  v2 = *(a1 + 496);
  if (v2)
  {
    dispatch_release(v2);
  }

  v3 = *(a1 + 504);
  if (v3)
  {
    (*(*v3 + 8))(v3);
  }

  v4 = *(a1 + 448);
  if (v4)
  {
    dispatch_release(v4);
  }

  v5 = *(a1 + 456);
  if (v5)
  {
    (*(*v5 + 8))(v5);
  }

  v6 = *(a1 + 400);
  if (v6)
  {
    dispatch_release(v6);
  }

  v7 = *(a1 + 408);
  if (v7)
  {
    (*(*v7 + 8))(v7);
  }

  v8 = *(a1 + 352);
  if (v8)
  {
    dispatch_release(v8);
  }

  v9 = *(a1 + 360);
  if (v9)
  {
    (*(*v9 + 8))(v9);
  }

  *(a1 + 264) = &unk_2A23F65A0;
  v10 = *(a1 + 280);
  if (v10)
  {
    *(a1 + 288) = v10;
    operator delete(v10);
  }

  *(a1 + 176) = &unk_2A23F65A0;
  v11 = *(a1 + 192);
  if (v11)
  {
    *(a1 + 200) = v11;
    operator delete(v11);
  }

  *(a1 + 88) = &unk_2A23F65A0;
  v12 = *(a1 + 104);
  if (v12)
  {
    *(a1 + 112) = v12;
    operator delete(v12);
  }

  *a1 = &unk_2A23F65A0;
  v13 = *(a1 + 16);
  if (v13)
  {
    *(a1 + 24) = v13;
    operator delete(v13);
  }

  return a1;
}

void ProgramKey<(_AGCStreamToken)14,(AGX::DriverShaderCompilationMode)0>::serialize(uint64_t a1, uint64_t *a2, void *a3)
{
  v5 = (a1 + 16);
  *(a1 + 24) = *(a1 + 16);
  v7 = *(a1 + 8) | 0x100;
  std::vector<unsigned int>::push_back[abi:nn200100](a1 + 16, &v7);
  v8 = 96;
  std::vector<unsigned int>::push_back[abi:nn200100](v5, &v8);
  v6 = *v5;
  *a2 = *v5;
  *a3 = v5[1] - v6;
}

void *VectorMap<AGX::EndOfTileProgramKey,AGX::ProgramVariantEntry<AGX::HAL300::SWEndOfTileProgramVariant>,4u>::Chunk::~Chunk(void *a1)
{
  AGX::ProgramVariantEntry<AGX::HAL300::SWEndOfTileProgramVariant>::~ProgramVariantEntry((a1 + 82));
  AGX::ProgramVariantEntry<AGX::HAL300::SWEndOfTileProgramVariant>::~ProgramVariantEntry((a1 + 76));
  AGX::ProgramVariantEntry<AGX::HAL300::SWEndOfTileProgramVariant>::~ProgramVariantEntry((a1 + 70));
  AGX::ProgramVariantEntry<AGX::HAL300::SWEndOfTileProgramVariant>::~ProgramVariantEntry((a1 + 64));
  a1[48] = &unk_2A23F9778;
  v2 = a1[50];
  if (v2)
  {
    a1[51] = v2;
    operator delete(v2);
  }

  a1[32] = &unk_2A23F9778;
  v3 = a1[34];
  if (v3)
  {
    a1[35] = v3;
    operator delete(v3);
  }

  a1[16] = &unk_2A23F9778;
  v4 = a1[18];
  if (v4)
  {
    a1[19] = v4;
    operator delete(v4);
  }

  *a1 = &unk_2A23F9778;
  v5 = a1[2];
  if (v5)
  {
    a1[3] = v5;
    operator delete(v5);
  }

  return a1;
}

uint64_t AGX::ProgramVariantEntry<AGX::HAL300::SWEndOfTileProgramVariant>::~ProgramVariantEntry(uint64_t a1)
{
  v2 = *a1;
  if (v2)
  {
    dispatch_release(v2);
  }

  v3 = *(a1 + 8);
  if (v3)
  {
    v4 = *(v3 + 2112);
    if (v4)
    {
      v5 = ProgramVaryingTable<AGX::HAL300::Encoders,AGX::HAL300::Classes>::~ProgramVaryingTable(v4);
      MEMORY[0x29ED520D0](v5, 0x10F0C4099BF1763);
    }

    AGX::ProgramVariantESLState<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::UserFragmentArgumentTableLayout,true,9ul>::~ProgramVariantESLState((v3 + 680));
    v6 = AGX::EndOfTileProgramVariantBase<AGX::HAL300::Encoders,AGX::HAL300::Classes>::~EndOfTileProgramVariantBase(v3);
    MEMORY[0x29ED520D0](v6, 0x10F2C40EBD6C646);
  }

  return a1;
}

uint64_t VectorMap<AGX::EndOfTileProgramKey,AGX::ProgramVariantEntry<AGX::HAL300::EndOfTileProgramVariant>,4u>::Chunk::~Chunk(uint64_t a1)
{
  v2 = *(a1 + 656);
  if (v2)
  {
    dispatch_release(v2);
  }

  v3 = *(a1 + 664);
  if (v3)
  {
    AGX::ProgramVariantESLState<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::UserVertexArgumentTableLayout,true,8ul>::~ProgramVariantESLState((v3 + 680));
    v4 = AGX::EndOfTileProgramVariantBase<AGX::HAL300::Encoders,AGX::HAL300::Classes>::~EndOfTileProgramVariantBase(v3);
    MEMORY[0x29ED520D0](v4, 0x10F2C406B241CDELL);
  }

  v5 = *(a1 + 608);
  if (v5)
  {
    dispatch_release(v5);
  }

  v6 = *(a1 + 616);
  if (v6)
  {
    AGX::ProgramVariantESLState<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::UserVertexArgumentTableLayout,true,8ul>::~ProgramVariantESLState((v6 + 680));
    v7 = AGX::EndOfTileProgramVariantBase<AGX::HAL300::Encoders,AGX::HAL300::Classes>::~EndOfTileProgramVariantBase(v6);
    MEMORY[0x29ED520D0](v7, 0x10F2C406B241CDELL);
  }

  v8 = *(a1 + 560);
  if (v8)
  {
    dispatch_release(v8);
  }

  v9 = *(a1 + 568);
  if (v9)
  {
    AGX::ProgramVariantESLState<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::UserVertexArgumentTableLayout,true,8ul>::~ProgramVariantESLState((v9 + 680));
    v10 = AGX::EndOfTileProgramVariantBase<AGX::HAL300::Encoders,AGX::HAL300::Classes>::~EndOfTileProgramVariantBase(v9);
    MEMORY[0x29ED520D0](v10, 0x10F2C406B241CDELL);
  }

  v11 = *(a1 + 512);
  if (v11)
  {
    dispatch_release(v11);
  }

  v12 = *(a1 + 520);
  if (v12)
  {
    AGX::ProgramVariantESLState<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::UserVertexArgumentTableLayout,true,8ul>::~ProgramVariantESLState((v12 + 680));
    v13 = AGX::EndOfTileProgramVariantBase<AGX::HAL300::Encoders,AGX::HAL300::Classes>::~EndOfTileProgramVariantBase(v12);
    MEMORY[0x29ED520D0](v13, 0x10F2C406B241CDELL);
  }

  *(a1 + 384) = &unk_2A23F9778;
  v14 = *(a1 + 400);
  if (v14)
  {
    *(a1 + 408) = v14;
    operator delete(v14);
  }

  *(a1 + 256) = &unk_2A23F9778;
  v15 = *(a1 + 272);
  if (v15)
  {
    *(a1 + 280) = v15;
    operator delete(v15);
  }

  *(a1 + 128) = &unk_2A23F9778;
  v16 = *(a1 + 144);
  if (v16)
  {
    *(a1 + 152) = v16;
    operator delete(v16);
  }

  *a1 = &unk_2A23F9778;
  v17 = *(a1 + 16);
  if (v17)
  {
    *(a1 + 24) = v17;
    operator delete(v17);
  }

  return a1;
}

uint64_t VectorMap<AGX::BackgroundObjectProgramKey,AGX::ProgramVariantEntry<AGX::HAL300::BackgroundObjectProgramVariant>,4u>::Chunk::~Chunk(uint64_t a1)
{
  v2 = *(a1 + 496);
  if (v2)
  {
    dispatch_release(v2);
  }

  v3 = *(a1 + 504);
  if (v3)
  {
    (*(*v3 + 8))(v3);
  }

  v4 = *(a1 + 448);
  if (v4)
  {
    dispatch_release(v4);
  }

  v5 = *(a1 + 456);
  if (v5)
  {
    (*(*v5 + 8))(v5);
  }

  v6 = *(a1 + 400);
  if (v6)
  {
    dispatch_release(v6);
  }

  v7 = *(a1 + 408);
  if (v7)
  {
    (*(*v7 + 8))(v7);
  }

  v8 = *(a1 + 352);
  if (v8)
  {
    dispatch_release(v8);
  }

  v9 = *(a1 + 360);
  if (v9)
  {
    (*(*v9 + 8))(v9);
  }

  *(a1 + 264) = &unk_2A23F79D0;
  v10 = *(a1 + 280);
  if (v10)
  {
    *(a1 + 288) = v10;
    operator delete(v10);
  }

  *(a1 + 176) = &unk_2A23F79D0;
  v11 = *(a1 + 192);
  if (v11)
  {
    *(a1 + 200) = v11;
    operator delete(v11);
  }

  *(a1 + 88) = &unk_2A23F79D0;
  v12 = *(a1 + 104);
  if (v12)
  {
    *(a1 + 112) = v12;
    operator delete(v12);
  }

  *a1 = &unk_2A23F79D0;
  v13 = *(a1 + 16);
  if (v13)
  {
    *(a1 + 24) = v13;
    operator delete(v13);
  }

  return a1;
}

void AGX::HAL300::EncoderComputeServiceCDMSubstreamProcessor::~EncoderComputeServiceCDMSubstreamProcessor(AGX::HAL300::EncoderComputeServiceCDMSubstreamProcessor *this)
{
  *this = &unk_2A23F6AA0;
  v2 = *(this + 12);
  v3 = *(this + 4);
  if (v2)
  {
    do
    {
      v4 = 16 * v2;

      v3 = *(this + 4);
      v2 = *&v3[v4 + 8];
    }

    while (*&v3[v4 + 8]);
  }

  free(v3);
  dispatch_release(*(this + 2));

  JUMPOUT(0x29ED520D0);
}

{
  *this = &unk_2A23F6AA0;
  v2 = *(this + 12);
  v3 = *(this + 4);
  if (v2)
  {
    do
    {
      v4 = 16 * v2;

      v3 = *(this + 4);
      v2 = *&v3[v4 + 8];
    }

    while (*&v3[v4 + 8]);
  }

  free(v3);
  dispatch_release(*(this + 2));
}

uint64_t AGXGPUCoreConfig::MaxActiveUSCsInMGPU(AGXGPUCoreConfig *this)
{
  v2 = 0;
  v22 = 0;
  v23 = 0;
  v3 = *(this + 26);
  v4 = v3;
  v5 = v3 - 64;
  if (v3 >= 0x40)
  {
    v6 = v5 >> 6;
    memset(&v22, 255, 8 * (v5 >> 6) + 8);
    v2 = v6 + 1;
    v4 = v3 & 0x3F;
  }

  if (v4)
  {
    *(&v22 + v2) |= ~(-1 << v4);
  }

  v7 = *this == 0;
  v8 = *(this + 21);
  if (v8)
  {
    v9 = 0;
    LODWORD(result) = 0;
    while (1)
    {
      v24 = *(this + v7);
      v14 = v9 >> 6;
      v15 = v9 & 0x3F;
      if ((v9 & 0x3F) != 0)
      {
        break;
      }

      if (v9 > 0x7F)
      {
        v18 = 0;
        v19 = 0;
      }

      else
      {
        v18 = *(&v24 + v14);
        if (v9 >= 0x40)
        {
          v19 = 0;
        }

        else
        {
          v19 = *(&v24 + 1);
        }
      }

LABEL_23:
      v20 = (v22 & v18);
      v21 = (v23 & v19);
      if (*&v20 == v22 && *&v21 == v23)
      {
        return v3;
      }

      v11 = vcnt_s8(v21);
      v11.i16[0] = vaddlv_u8(v11);
      v12 = v11.i32[0];
      v13 = vcnt_s8(v20);
      v13.i16[0] = vaddlv_u8(v13);
      if (result <= v12 + v13.i32[0])
      {
        result = (v12 + v13.i32[0]);
      }

      else
      {
        result = result;
      }

      v9 += v3;
      if (!--v8)
      {
        return result;
      }
    }

    if (v9 >= 0x80)
    {
      v16 = 0;
    }

    else
    {
      v16 = *(&v24 + v14);
      if (v9 < 0x40)
      {
        v17 = *(&v24 + 1);
        v18 = (*(&v24 + 1) << (64 - v15)) | (v16 >> v15);
LABEL_21:
        v19 = v17 >> v15;
        goto LABEL_23;
      }
    }

    v17 = 0;
    v18 = v16 >> v15;
    goto LABEL_21;
  }

  return 0;
}

double ___ZN3AGX6DeviceINS_6HAL3008EncodersENS1_7ClassesENS1_10ObjClassesEE21setupDataBufferParamsERK16AGXGPUCoreConfig_block_invoke(uint64_t a1)
{
  qword_2A179E3D0 = 0x8000;
  dword_2A179E3D8 = 1;
  qword_2A179E3E0 = 0x8000;
  dword_2A179E3E8 = 1;
  AGX::Device<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses>::databuffer_params = 0x8000;
  dword_2A179E3A8 = 1;
  qword_2A179E3F0 = 0x8000;
  dword_2A179E3F8 = 1;
  qword_2A179E400 = 0x8000;
  dword_2A179E408 = 1;
  qword_2A179E410 = 786432;
  dword_2A179E418 = 1;
  qword_2A179E420 = 0x100000;
  dword_2A179E428 = 1;
  qword_2A179E430 = 0x8000;
  dword_2A179E438 = 1;
  v1 = *(*(a1 + 32) + 84);
  *&xmmword_2A179E440 = (1792 * v1 + 3456) + 0x8000;
  DWORD2(xmmword_2A179E440) = 1;
  qword_2A179E450 = 0x8000;
  dword_2A179E458 = 1;
  qword_2A179E460 = 0x8000;
  dword_2A179E468 = 1;
  qword_2A179E470 = 0x8000;
  dword_2A179E478 = 1;
  qword_2A179E490 = 0x8000;
  dword_2A179E498 = 1;
  qword_2A179E4A0 = 0x8000;
  dword_2A179E4A8 = 1;
  qword_2A179E480 = 0x8000;
  dword_2A179E488 = 1;
  qword_2A179E3B0 = 0x8000;
  dword_2A179E3B8 = 1;
  qword_2A179E3C0 = 0x8000;
  dword_2A179E3C8 = 1;
  qword_2A179E4B0 = 0x8000;
  dword_2A179E4B8 = 1;
  qword_2A179E4C0 = 0x8000;
  dword_2A179E4C8 = 1;
  qword_2A179E4D0 = 1024;
  dword_2A179E4D8 = 1;
  qword_2A179E4E0 = 64;
  dword_2A179E4E8 = 1;
  qword_2A179E4F0 = 0x8000;
  dword_2A179E4F8 = 1;
  qword_2A179E500 = 0x8000;
  dword_2A179E508 = 1;
  qword_2A179E510 = 0x8000;
  dword_2A179E518 = 1;
  qword_2A179E520 = 0x8000;
  dword_2A179E528 = 1;
  qword_2A179E530 = 0x8000;
  dword_2A179E538 = 1;
  qword_2A179E540 = 0x8000;
  dword_2A179E548 = 1;
  qword_2A179E550 = 0x8000;
  dword_2A179E558 = 1;
  qword_2A179E560 = 0;
  dword_2A179E568 = 1;
  qword_2A179E570 = 0x8000;
  dword_2A179E578 = 1;
  qword_2A179E580 = 0x8000;
  dword_2A179E588 = 1;
  v2 = v1 == 1;
  if (v1 == 1)
  {
    v3 = 736;
  }

  else
  {
    v3 = (736 * v1 + 736);
  }

  v4 = (v3 + 63) & 0x1FFFFFFC0;
  LODWORD(v5) = 1664 * v1 + 2048;
  if (v2)
  {
    v5 = 1664;
  }

  else
  {
    v5 = v5;
  }

  *&xmmword_2A179E590 = v4 + v5 + 0x8000;
  DWORD2(xmmword_2A179E590) = 1;
  qword_2A179E5A0 = 0x8000;
  dword_2A179E5A8 = 1;
  qword_2A179E5B0 = 15360;
  dword_2A179E5B8 = 1;
  qword_2A179E5C0 = 0x8000;
  dword_2A179E5C8 = 1;
  result = *&xmmword_2A179E440;
  xmmword_2A179E5D0 = xmmword_2A179E440;
  unk_2A179E5E0 = *&qword_2A179E450;
  xmmword_2A179E630 = xmmword_2A179E440;
  unk_2A179E640 = *&qword_2A179E450;
  xmmword_2A179E5F0 = xmmword_2A179E590;
  unk_2A179E600 = xmmword_2A179E440;
  xmmword_2A179E610 = *&qword_2A179E450;
  unk_2A179E620 = xmmword_2A179E590;
  xmmword_2A179E650 = xmmword_2A179E590;
  return result;
}

void AGX::Device<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses>::deviceNotificationCallback(uint64_t a1, int a2, int a3, int a4)
{
  v40 = *MEMORY[0x29EDCA608];
  if (a2)
  {
    return;
  }

  if (a3 == 1)
  {
    v12 = AGX::USCProfileControlStateLoaderGen1<AGX::HAL300::Encoders,AGX::HAL300::Classes>::instance;
    v13 = *AGX::USCProfileControlStateLoaderGen1<AGX::HAL300::Encoders,AGX::HAL300::Classes>::instance;
    buf[17] = 0;
    *&v35[4] = v13;
    v14 = *(v13 + 7092);
    LODWORD(v13) = *(v13 + 7112);
    v36 = v14;
    v37 = v13;
    if (!AGX::USCProfileControlGen1<AGX::HAL300::Encoders,AGX::HAL300::Classes>::initializeWithKernelState(buf))
    {
      fwrite("AGX: Cannot determine the current kernel state of USC profile control. Falling back on default settings\n", 0x68uLL, 1uLL, *MEMORY[0x29EDCA610]);
      v38 = 33554434;
      v39 = 0;
      *buf = 0;
      *&buf[8] = 0;
      *&buf[16] = 256;
    }

    if (*(v12 + 112) == 1)
    {
      v15 = *(v12 + 16) + *(v12 + 64);
      AGX::USCProfileControlGen1<AGX::HAL300::Encoders,AGX::HAL300::Classes>::atomicWriteBranchBlocks(buf, v12 + 96, v15 + *(v12 + 80), 1);
      AGX::USCProfileControlGen1<AGX::HAL300::Encoders,AGX::HAL300::Classes>::atomicWriteBranchBlocks(buf, v12 + 96, v15 + *(v12 + 88), 1);
    }

    v16 = buf[16];
    *(v12 + 112) = buf[16];
    if (v16 == 1)
    {
      *(v12 + 96) = *buf;
    }

    v17 = *(v12 + 16) + *(v12 + 64);
    AGX::USCProfileControlGen1<AGX::HAL300::Encoders,AGX::HAL300::Classes>::emitGlobalConfigurationUpdate(buf, 0, v17 + *(v12 + 80));
    AGX::USCProfileControlGen1<AGX::HAL300::Encoders,AGX::HAL300::Classes>::emitGlobalConfigurationUpdate(buf, 1, v17 + *(v12 + 88));
  }

  else if (a3)
  {
    fprintf(*MEMORY[0x29EDCA610], "AGX: %s:%d:%s: *** Invalid AGX device notification\n", "agxa_device_template.hpp", 4229, "deviceNotificationCallback");
    if (os_log_type_enabled(MEMORY[0x29EDCA988], OS_LOG_TYPE_ERROR))
    {
      *buf = 136315650;
      *&buf[4] = "agxa_device_template.hpp";
      *&buf[12] = 1024;
      *&buf[14] = 4229;
      v34 = 2080;
      *v35 = "deviceNotificationCallback";
      _os_log_error_impl(&dword_29CA13000, MEMORY[0x29EDCA988], OS_LOG_TYPE_ERROR, "AGX: AGX: %s:%d:%s: *** Invalid AGX device notification\n", buf, 0x1Cu);
    }

    if (os_log_type_enabled(MEMORY[0x29EDCA988], OS_LOG_TYPE_INFO))
    {
      *buf = 136315650;
      *&buf[4] = "agxa_device_template.hpp";
      *&buf[12] = 1024;
      *&buf[14] = 4229;
      v34 = 2080;
      *v35 = "deviceNotificationCallback";
      _os_log_impl(&dword_29CA13000, MEMORY[0x29EDCA988], OS_LOG_TYPE_INFO, "AGX: AGX: %s:%d:%s: *** Invalid AGX device notification\n", buf, 0x1Cu);
    }
  }

  else
  {
    os_unfair_lock_lock((a1 + 16696));
    *(a1 + 16752) = a4;
    v6 = *(a1 + 16704);
    if (v6 != (a1 + 16712))
    {
      do
      {
        WeakRetained = objc_loadWeakRetained(v6 + 13);
        if (WeakRetained)
        {
          v8 = WeakRetained[15] & 0xF03FFFFFFFFFFFFFLL;
          if (a4)
          {
            v8 |= 0xF80000000000000uLL;
          }

          WeakRetained[15] = v8;
        }

        v9 = v6[1];
        if (v9)
        {
          do
          {
            v10 = v9;
            v9 = *v9;
          }

          while (v9);
        }

        else
        {
          do
          {
            v10 = v6[2];
            v11 = *v10 == v6;
            v6 = v10;
          }

          while (!v11);
        }

        v6 = v10;
      }

      while (v10 != (a1 + 16712));
    }

    v18 = *(a1 + 16728);
    v19 = *(a1 + 16736);
    while (v18 != v19)
    {
      v20 = **v18;
      for (i = (*v18)[1]; v20 != i; *v22 = v24)
      {
        v23 = *v20++;
        v22 = v23;
        v24 = *v23 & 0xF03FFFFFFFFFFFFFLL;
        if (a4)
        {
          v24 |= 0xF80000000000000uLL;
        }
      }

      ++v18;
    }

    v25 = *(a1 + 16760);
    if (v25 != (a1 + 16768))
    {
      do
      {
        v26 = v25[14];
        if (!v26)
        {
          goto LABEL_47;
        }

        v27 = std::__shared_weak_count::lock(v26);
        if (!v27)
        {
          goto LABEL_47;
        }

        v28 = v25[13];
        if (v28)
        {
          v29 = *(v28 + 72) & 0xF03FFFFFFFFFFFFFLL;
          if (a4)
          {
            v29 |= 0xF80000000000000uLL;
          }

          *(v28 + 72) = v29;
        }

        if (!atomic_fetch_add(&v27->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
        {
          v32 = v27;
          (v27->__on_zero_shared)();
          std::__shared_weak_count::__release_weak(v32);
          v30 = v25[1];
          if (!v30)
          {
            do
            {
LABEL_51:
              v31 = v25[2];
              v11 = *v31 == v25;
              v25 = v31;
            }

            while (!v11);
            goto LABEL_39;
          }
        }

        else
        {
LABEL_47:
          v30 = v25[1];
          if (!v30)
          {
            goto LABEL_51;
          }
        }

        do
        {
          v31 = v30;
          v30 = *v30;
        }

        while (v30);
LABEL_39:
        v25 = v31;
      }

      while (v31 != (a1 + 16768));
    }

    os_unfair_lock_unlock((a1 + 16696));
  }
}

uint64_t std::shared_ptr<AGX::HAL300::Sampler>::~shared_ptr[abi:nn200100](uint64_t result)
{
  v1 = *(result + 8);
  if (v1)
  {
    if (!atomic_fetch_add(&v1->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      v2 = result;
      (v1->__on_zero_shared)(v1);
      std::__shared_weak_count::__release_weak(v1);
      return v2;
    }
  }

  return result;
}

void ___ZN3AGX6DeviceINS_6HAL3008EncodersENS1_7ClassesENS1_10ObjClassesEEC2EPU23objcproto12MTLDeviceSPI16IOGPUMetalDevicePNS5_13DeviceOptionsE_block_invoke(uint64_t a1, int a2)
{
  v30 = *MEMORY[0x29EDCA608];
  if (a2)
  {
    v2 = *(a1 + 32);
    os_unfair_lock_lock((v2 + 17144));
    v3 = *(v2 + 17168);
    if (v3)
    {
      v4 = MEMORY[0x29EDCA990];
      do
      {
        {
          {
            v6 = v3[3];
            v7 = v3[4];
            v8 = v3[5];
            v9 = v3[6];
            v10 = *(v3 + 14);
            v11 = v3[8];
            v12 = v3[9];
            v13 = v3[10];
            *buf = 136448002;
            v15 = v6;
            v16 = 2082;
            v17 = v7;
            v18 = 2082;
            v19 = v8;
            v20 = 2082;
            v21 = v9;
            v22 = 1026;
            v23 = v10;
            v24 = 2050;
            v25 = v11;
            v26 = 2050;
            v27 = v12;
            v28 = 2050;
            v29 = v13;
            _os_signpost_emit_with_name_impl(&dword_29CA13000, v5, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "FunctionCompiled", "Name=%{public,signpost.description:attribute}s \t\t\t\t\t\t\t\t\t\t\t  Label=%{public,signpost.description:attribute}s \t\t\t\t\t\t\t\t\t\t\t  Type=%{public,signpost.description:attribute}s \t\t\t\t\t\t\t\t\t\t\t  RequestHash=%{public,signpost.description:attribute}s \t\t\t\t\t\t\t\t\t\t\t  ID=%{public,signpost.description:attribute}u \t\t\t\t\t\t\t\t\t\t\t  UniqueID=%{public,signpost.description:attribute}llu \t\t\t\t\t\t\t\t\t\t\t  Addr=%{public,signpost.description:attribute}llu \t\t\t\t\t\t\t\t\t\t\t  Size=%{public,signpost.description:attribute}llu", buf, 0x4Eu);
          }
        }

        v3 = *v3;
      }

      while (v3);
    }

    os_unfair_lock_unlock((v2 + 17144));
  }
}

void AGX::TileDispatchVertexProgramKey::serialize(AGX::TileDispatchVertexProgramKey *this, const void **a2, unint64_t *a3)
{
  v6 = (this + 16);
  *(this + 3) = *(this + 2);
  v12 = *(this + 8) | 0x100;
  std::vector<unsigned int>::push_back[abi:nn200100](this + 16, &v12);
  begin = v6->__begin_;
  v8 = v6->__end_ - v6->__begin_;
  if (v8 > 0xFFFFFFFFFFFFFFF7)
  {
    v9 = begin + v8 + 8;
    *(this + 3) = v9;
  }

  else
  {
    std::vector<unsigned int>::__append(v6, 2uLL);
    begin = *(this + 2);
    v9 = *(this + 3);
  }

  v10 = (begin + v8);
  *v10 = ((v9 - begin) >> 2 << 8) | 0x57;
  v10[1] = *(this + 10);
  v13 = 96;
  std::vector<unsigned int>::push_back[abi:nn200100](v6, &v13);
  v11 = *(this + 2);
  *a2 = v11;
  *a3 = *(this + 3) - v11;
}

void AGX::ComputeControlFlowPredicateProgramKey::serialize(AGX::ComputeControlFlowPredicateProgramKey *this, const void **a2, unint64_t *a3)
{
  v6 = (this + 16);
  *(this + 3) = *(this + 2);
  v12 = *(this + 8) | 0x100;
  std::vector<unsigned int>::push_back[abi:nn200100](this + 16, &v12);
  begin = v6->__begin_;
  v8 = v6->__end_ - v6->__begin_;
  if (v8 > 0xFFFFFFFFFFFFFFF7)
  {
    v9 = begin + v8 + 8;
    *(this + 3) = v9;
  }

  else
  {
    std::vector<unsigned int>::__append(v6, 2uLL);
    begin = *(this + 2);
    v9 = *(this + 3);
  }

  v10 = (begin + v8);
  *v10 = ((v9 - begin) >> 2 << 8) | 0x56;
  v10[1] = *(this + 10);
  v13 = 96;
  std::vector<unsigned int>::push_back[abi:nn200100](v6, &v13);
  v11 = *(this + 2);
  *a2 = v11;
  *a3 = *(this + 3) - v11;
}

void AGX::BlitVertexFastClearProgramKey::serialize(AGX::BlitVertexFastClearProgramKey *this, const void **a2, unint64_t *a3)
{
  v6 = (this + 16);
  *(this + 3) = *(this + 2);
  v12 = *(this + 8) | 0x100;
  std::vector<unsigned int>::push_back[abi:nn200100](this + 16, &v12);
  begin = v6->__begin_;
  v8 = v6->__end_ - v6->__begin_;
  if (v8 > 0xFFFFFFFFFFFFFFF7)
  {
    v9 = begin + v8 + 8;
    *(this + 3) = v9;
  }

  else
  {
    std::vector<unsigned int>::__append(v6, 2uLL);
    begin = *(this + 2);
    v9 = *(this + 3);
  }

  v10 = (begin + v8);
  *v10 = ((v9 - begin) >> 2 << 8) | 0x4A;
  v10[1] = *(this + 10);
  v13 = 96;
  std::vector<unsigned int>::push_back[abi:nn200100](v6, &v13);
  v11 = *(this + 2);
  *a2 = v11;
  *a3 = *(this + 3) - v11;
}

void AGX::BlitFastClearProgramKey::serialize(AGX::BlitFastClearProgramKey *this, const void **a2, unint64_t *a3)
{
  v6 = (this + 16);
  *(this + 3) = *(this + 2);
  v12 = *(this + 8) | 0x100;
  std::vector<unsigned int>::push_back[abi:nn200100](this + 16, &v12);
  begin = v6->__begin_;
  v8 = v6->__end_ - v6->__begin_;
  if (v8 > 0xFFFFFFFFFFFFFFF7)
  {
    v9 = begin + v8 + 8;
    *(this + 3) = v9;
  }

  else
  {
    std::vector<unsigned int>::__append(v6, 2uLL);
    begin = *(this + 2);
    v9 = *(this + 3);
  }

  v10 = (begin + v8);
  *v10 = ((v9 - begin) >> 2 << 8) | 0x4A;
  v10[1] = *(this + 10);
  v13 = 96;
  std::vector<unsigned int>::push_back[abi:nn200100](v6, &v13);
  v11 = *(this + 2);
  *a2 = v11;
  *a3 = *(this + 3) - v11;
}

void AGX::BlitSparseProgramKey::serialize(AGX::BlitSparseProgramKey *this, const void **a2, unint64_t *a3)
{
  v6 = (this + 16);
  *(this + 3) = *(this + 2);
  v12 = *(this + 8) | 0x100;
  std::vector<unsigned int>::push_back[abi:nn200100](this + 16, &v12);
  begin = v6->__begin_;
  v8 = v6->__end_ - v6->__begin_;
  if (v8 > 0xFFFFFFFFFFFFFFF7)
  {
    v9 = begin + v8 + 8;
    *(this + 3) = v9;
  }

  else
  {
    std::vector<unsigned int>::__append(v6, 2uLL);
    begin = *(this + 2);
    v9 = *(this + 3);
  }

  v10 = (begin + v8);
  *v10 = ((v9 - begin) >> 2 << 8) | 0x49;
  v10[1] = *(this + 10);
  v13 = 96;
  std::vector<unsigned int>::push_back[abi:nn200100](v6, &v13);
  v11 = *(this + 2);
  *a2 = v11;
  *a3 = *(this + 3) - v11;
}

void AGX::BlitComputeProgramKey::serialize(AGX::BlitComputeProgramKey *this, const void **a2, unint64_t *a3)
{
  v6 = this + 16;
  *(this + 3) = *(this + 2);
  v18 = *(this + 8) | 0x100;
  std::vector<unsigned int>::push_back[abi:nn200100](this + 16, &v18);
  v7 = *v6;
  v8 = *(v6 + 1) - *v6;
  if (v8 > 0xFFFFFFFFFFFFFFCFLL)
  {
    v9 = v7 + v8 + 48;
    *(this + 3) = v9;
  }

  else
  {
    std::vector<unsigned int>::__append(v6, 0xCuLL);
    v7 = *(this + 2);
    v9 = *(this + 3);
  }

  v10 = v7 + v8;
  *v10 = ((v9 - v7) >> 2 << 8) | 0x42;
  v11 = *(v6 + 24);
  v12 = *(v6 + 40);
  *(v10 + 36) = *(v6 + 7);
  *(v10 + 20) = v12;
  *(v10 + 4) = v11;
  v13 = *(this + 2);
  v14 = *(this + 3) - v13;
  if (v14 > 0xFFFFFFFFFFFFFFF7)
  {
    v15 = *(this + 3) + 8;
    *(this + 3) = v15;
  }

  else
  {
    std::vector<unsigned int>::__append(v6, 2uLL);
    v13 = *(this + 2);
    v15 = *(this + 3);
  }

  v16 = (v13 + v14);
  *v16 = ((v15 - v13) >> 2 << 8) | 0x48;
  v16[1] = *(this + 20);
  v19 = 96;
  std::vector<unsigned int>::push_back[abi:nn200100](v6, &v19);
  v17 = *(this + 2);
  *a2 = v17;
  *a3 = *(this + 3) - v17;
}

void AGX::BlitVertexProgramKey::serialize(AGX::BlitVertexProgramKey *this, const void **a2, unint64_t *a3)
{
  v6 = (this + 16);
  *(this + 3) = *(this + 2);
  v12 = *(this + 8) | 0x100;
  std::vector<unsigned int>::push_back[abi:nn200100](this + 16, &v12);
  begin = v6->__begin_;
  v8 = v6->__end_ - v6->__begin_;
  if (v8 > 0xFFFFFFFFFFFFFFF7)
  {
    v9 = begin + v8 + 8;
    *(this + 3) = v9;
  }

  else
  {
    std::vector<unsigned int>::__append(v6, 2uLL);
    begin = *(this + 2);
    v9 = *(this + 3);
  }

  v10 = (begin + v8);
  *v10 = ((v9 - begin) >> 2 << 8) | 0x47;
  v10[1] = *(this + 10);
  v13 = 96;
  std::vector<unsigned int>::push_back[abi:nn200100](v6, &v13);
  v11 = *(this + 2);
  *a2 = v11;
  *a3 = *(this + 3) - v11;
}

void AGX::BlitFragmentProgramKey::serialize(AGX::BlitFragmentProgramKey *this, const void **a2, unint64_t *a3)
{
  v6 = this + 16;
  *(this + 3) = *(this + 2);
  v18 = *(this + 8) | 0x100;
  std::vector<unsigned int>::push_back[abi:nn200100](this + 16, &v18);
  v7 = *v6;
  v8 = *(v6 + 1) - *v6;
  if (v8 > 0xFFFFFFFFFFFFFFCFLL)
  {
    v9 = v7 + v8 + 48;
    *(this + 3) = v9;
  }

  else
  {
    std::vector<unsigned int>::__append(v6, 0xCuLL);
    v7 = *(this + 2);
    v9 = *(this + 3);
  }

  v10 = v7 + v8;
  *v10 = ((v9 - v7) >> 2 << 8) | 0x42;
  v11 = *(v6 + 24);
  v12 = *(v6 + 40);
  *(v10 + 36) = *(v6 + 7);
  *(v10 + 20) = v12;
  *(v10 + 4) = v11;
  v13 = *(this + 2);
  v14 = *(this + 3) - v13;
  if (v14 > 0xFFFFFFFFFFFFFFF7)
  {
    v15 = *(this + 3) + 8;
    *(this + 3) = v15;
  }

  else
  {
    std::vector<unsigned int>::__append(v6, 2uLL);
    v13 = *(this + 2);
    v15 = *(this + 3);
  }

  v16 = (v13 + v14);
  *v16 = ((v15 - v13) >> 2 << 8) | 0x46;
  v16[1] = *(this + 20);
  v19 = 96;
  std::vector<unsigned int>::push_back[abi:nn200100](v6, &v19);
  v17 = *(this + 2);
  *a2 = v17;
  *a3 = *(this + 3) - v17;
}

void ___ZL19gatherDeviceOptionsPN3AGX6HAL3006DeviceEPP8NSStringS5__block_invoke()
{
  v0 = 0;
  LOBYTE(block) = 0;
  findEnvVarNum<BOOL>("MTL_SHADER_PAGE_FAULT_REPORTING", &block);
  operator new();
}

void sub_29CCCBCAC(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  std::vector<AppBundleInfo>::~vector[abi:nn200100](va);
  _Unwind_Resume(a1);
}

void **std::vector<AppBundleInfo>::~vector[abi:nn200100](void **a1)
{
  v2 = *a1;
  if (*a1)
  {
    v3 = a1[1];
    v4 = *a1;
    if (v3 != v2)
    {
      do
      {
        v5 = *(v3 - 3);
        if (v5)
        {
          *(v3 - 2) = v5;
          operator delete(v5);
        }

        v3 -= 56;
      }

      while (v3 != v2);
      v4 = *a1;
    }

    a1[1] = v2;
    operator delete(v4);
  }

  return a1;
}

void ___ZN3AGX6DeviceINS_6HAL3008EncodersENS1_7ClassesENS1_10ObjClassesEE36setupDriverIntersectionTableIfNeededEv_block_invoke(uint64_t a1)
{
  v8 = *MEMORY[0x29EDCA608];
  v1 = *(*(a1 + 32) + 6288);
  AGX::Mempool<32u,0u,true,0u,0u,std::array<AGX::IntersectionFunctionTableEncoderGen2<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses>::Entry,8ul>>::RangeAllocation::RangeAllocation(&c, (*(v1 + 176) + 14136), 0x70u, 0);
  v2 = *(v1 + 184);
  *(v1 + 184) = *c.count;
  *c.count = v2;
  v3 = *(v1 + 192);
  *(v1 + 192) = *c.hash;
  *c.hash = v3;
  v4 = *(v1 + 200);
  *(v1 + 200) = c.hash[2];
  LOBYTE(c.hash[2]) = v4;
  if (v2)
  {
    if ((v4 & 1) == 0)
    {
      os_unfair_lock_lock(v3 + 188);
      AGX::Mempool<16u,0u,true,0u,0u,unsigned long long>::FreeIntervalList::push(*c.hash + 696, c.count[0], c.count[0] + c.count[1] - 1);
      os_unfair_lock_unlock(v3 + 188);
    }
  }

  v6[0] = 0;
  v6[1] = v6;
  v6[2] = 0x4812000000;
  v6[3] = __Block_byref_object_copy__6262;
  v6[4] = __Block_byref_object_dispose__6263;
  v6[5] = &unk_29D31B497;
  memset(&v6[6], 0, 24);
  RaytracingConstantsGen1::getCommonDriverIntersectionShaderInfos(&v5);
}

void sub_29CCCD1B0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, void *a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, void *a34, uint64_t a35, uint64_t a36, uint64_t a37, void *__p, uint64_t a39, uint64_t a40, char a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, void *a47)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Block_object_dispose(&a41, 8);
  std::vector<std::shared_ptr<AGX::HAL300::IntersectionPipelineSet>>::~vector[abi:nn200100](&a47);
  _Unwind_Resume(a1);
}

uint64_t AGX::Device<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses>::findOrCreateDepthBiasIndex(uint64_t a1, uint64_t a2, void *a3, _BYTE *a4, _BYTE *a5, float a6, float a7, float a8)
{
  *a3 = 0xDE876B1A5;
  os_unfair_lock_lock((a1 + 16784));
  *a4 = 0;
  *a5 = 0;
  v16 = *(a1 + 16816);
  os_unfair_lock_lock((v16 + 48));
  if (*(v16 + 32) <= 0xBuLL)
  {
    *(v16 + 32) = 12;
    AGX::DeviceInternalBuffer<AGX::DepthBiasBitsBufferInfo>::grow(v16, 0xCu);
  }

  v17 = *(v16 + 24);
  v18 = *(v16 + 40);
  os_unfair_lock_unlock((v16 + 48));
  if (v18 != a2)
  {
    goto LABEL_31;
  }

  *a5 = 1;
  v19 = *(a1 + 16800);
  if (!v19)
  {
    if (*(a1 + 16808) < 0xFFFF)
    {
LABEL_39:
      operator new();
    }

    goto LABEL_31;
  }

  v20 = (a1 + 16800);
  v21 = *(a1 + 16800);
  do
  {
    v22 = v21[7];
    if (v22 < a6)
    {
LABEL_6:
      v21 += 2;
      goto LABEL_7;
    }

    if (a6 < v22)
    {
      goto LABEL_10;
    }

    v23 = v21[8];
    if (v23 < a7)
    {
      goto LABEL_6;
    }

    if (a7 < v23)
    {
LABEL_10:
      v20 = v21;
    }

    else
    {
      v24 = v21[9];
      if (v24 >= a8)
      {
        v20 = v21;
      }

      v21 += 2 * (v24 < a8);
    }

LABEL_7:
    v21 = *v21;
  }

  while (v21);
  if (v20 == (a1 + 16800) || (v25 = v20[7], a6 < v25) || v25 >= a6 && ((v31 = v20[8], a7 < v31) || v31 >= a7 && a8 < v20[9]))
  {
    v26 = *(a1 + 16808);
    if (v26 <= 0xFFFE)
    {
      while (1)
      {
        v27 = v19;
        v28 = *(v19 + 7);
        if (a6 < v28)
        {
          goto LABEL_20;
        }

        if (v28 < a6)
        {
          goto LABEL_23;
        }

        v29 = *(v19 + 8);
        if (a7 < v29)
        {
          goto LABEL_20;
        }

        if (v29 < a7)
        {
          goto LABEL_23;
        }

        v30 = *(v19 + 9);
        if (a8 < v30)
        {
LABEL_20:
          v19 = *v19;
          if (!*v27)
          {
            goto LABEL_39;
          }
        }

        else
        {
          if (v30 >= a8)
          {
            *(v19 + 10) = v26;
            *a4 = 1;
            v32 = ([v17 contents] + 12 * v26);
            *v32 = a6;
            v32[1] = a7;
            v32[2] = a8;
            goto LABEL_40;
          }

LABEL_23:
          v19 = v19[1];
          if (!v19)
          {
            goto LABEL_39;
          }
        }
      }
    }

LABEL_31:
    v26 = 0xFFFFFFFFLL;
    goto LABEL_40;
  }

  v26 = *(v20 + 10);
  *a4 = 1;
LABEL_40:
  if (*a4 == 1)
  {
    *a3 = v18 + 12 * v26;
  }

  os_unfair_lock_unlock((a1 + 16784));
  return v26;
}

void sub_29CCCD5C8(_Unwind_Exception *a1)
{
  os_unfair_lock_unlock(v2 + 12);
  os_unfair_lock_unlock(v1 + 4196);
  _Unwind_Resume(a1);
}

uint64_t AGX::Device<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses>::getDepthBiasBuffer(uint64_t a1, uint64_t a2, uint64_t a3)
{
  os_unfair_lock_lock((a1 + 16784));
  v6 = *(a1 + 16816);
  v9[0] = MEMORY[0x29EDCA5F8];
  v9[1] = 3221225472;
  v10 = ___ZN3AGX20DeviceInternalBufferINS_23DepthBiasBitsBufferInfoEE13getBufferInfoEjP15MTLResourceList_block_invoke;
  v11 = &unk_29F344258;
  v12 = a2;
  os_unfair_lock_lock((v6 + 48));
  if (*(v6 + 32) >> 18 <= 2uLL)
  {
    *(v6 + 32) = 786432;
    AGX::DeviceInternalBuffer<AGX::DepthBiasBitsBufferInfo>::grow(v6, 0xC0000u);
  }

  v7 = *(v6 + 40);
  (v10)(v9, *(v6 + 8));
  os_unfair_lock_unlock((v6 + 48));
  if (a3)
  {
    IOGPUResourceListAddResource();
  }

  os_unfair_lock_unlock((a1 + 16784));
  return v7;
}

void sub_29CCCD714(_Unwind_Exception *a1)
{
  os_unfair_lock_unlock(v2 + 12);
  os_unfair_lock_unlock((v1 + v3));
  _Unwind_Resume(a1);
}

void AGX::Device<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses>::resetDepthBiasBuffer(uint64_t a1)
{
  os_unfair_lock_lock((a1 + 16784));
  std::__tree<AGX::Mempool<16u,0u,true,0u,0u,unsigned long long>::FreeIntervalList::Interval,AGX::Mempool<16u,0u,true,0u,0u,unsigned long long>::FreeIntervalList::IntervalRangeComparator,std::allocator<AGX::Mempool<16u,0u,true,0u,0u,unsigned long long>::FreeIntervalList::Interval>>::destroy(*(a1 + 16800));
  *(a1 + 16792) = a1 + 16800;
  *(a1 + 16800) = 0u;
  v2 = *(a1 + 16816);
  os_unfair_lock_lock((v2 + 48));
  *(v2 + 32) = 0;
  v3 = *(v2 + 8);
  *(v2 + 8) = 0;
  os_unfair_lock_unlock((v2 + 48));

  os_unfair_lock_unlock((a1 + 16784));
}

uint64_t AGX::Device<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses>::findOrCreateScissorIndex(uint64_t a1, uint64_t a2, int a3, uint64_t a4, void *a5, _BYTE *a6, _BYTE *a7)
{
  v9 = a5;
  v47 = 0;
  v14 = a2 + 520;
  memset(&__src[2], 0, 224);
  *a5 = 4123088130;
  memset(__src, 0, 32);
  os_unfair_lock_lock((a1 + 16824));
  if (a3)
  {
    v15 = 1;
    LODWORD(__src[0]) = 1;
    v16 = *(v14 + 256);
    v17 = vextq_s8(v16, v16, 4uLL).u64[0];
    v16.i32[1] = vextq_s8(v16, v16, 8uLL).i32[1];
    v16.i32[0] = vshl_n_s32(*v16.i8, 0x10uLL).u32[0];
    v16.i32[1] = v16.u16[2];
    v18 = vshl_n_s32(v17, 0x10uLL);
    v17.i16[1] = 0;
    v19 = *(v14 + 564);
    v17.i32[1] = v18.i32[1];
    *(__src + 4) = vorr_s8(v17, *v16.i8);
    *(__src + 12) = v19;
  }

  else
  {
    v15 = *(a2 + 796);
    if (v15)
    {
      v20 = (__src + 4);
      v21 = (v14 + 308);
      v22 = *(a2 + 804);
      v23 = *(a2 + 796);
      do
      {
        v24 = *v14;
        v14 += 16;
        v25 = v24;
        if (v22)
        {
          v26 = v21;
        }

        else
        {
          v26 = (a2 + 1084);
        }

        v27 = *v26;
        v28.i32[0] = vshl_n_s32(*v25.i8, 0x10uLL).u32[0];
        v28.i32[1] = vextq_s8(v25, v25, 8uLL).u16[2];
        v29 = vextq_s8(v25, v25, 4uLL).u64[0];
        v30 = vshl_n_s32(v29, 0x10uLL);
        v29.i16[1] = 0;
        v29.i32[1] = v30.i32[1];
        *v20 = vorr_s8(v29, v28);
        v20[1] = v27;
        v20 += 2;
        ++v21;
        --v23;
      }

      while (v23);
    }

    LODWORD(__src[0]) = v15;
  }

  v31 = (16 * v15);
  v32 = *(a1 + 16856);
  os_unfair_lock_lock((v32 + 48));
  if (*(v32 + 32) < v31)
  {
    *(v32 + 32) = v31;
    AGX::DeviceInternalBuffer<AGX::DepthBiasBitsBufferInfo>::grow(v32, 16 * v15);
  }

  v33 = *(v32 + 24);
  v34 = *(v32 + 40);
  os_unfair_lock_unlock((v32 + 48));
  *a6 = 0;
  *a7 = 0;
  if (v34 != a4)
  {
LABEL_31:
    v41 = 0xFFFFFFFFLL;
    goto LABEL_35;
  }

  v45 = v33;
  v35 = v9;
  *a7 = 1;
  v36 = *(a1 + 16840);
  if (!v36)
  {
    v9 = v35;
    if ((v15 + *(a1 + 16864)) < 0x10000)
    {
LABEL_34:
      operator new();
    }

    goto LABEL_31;
  }

  v37 = a1 + 16840;
  v38 = *(a1 + 16840);
  do
  {
    v39 = AGX::scissorMapInfo<AGX::HAL300::Encoders>::less_impl<0ul,1ul,2ul,3ul,4ul,5ul,6ul,7ul,8ul,9ul,10ul,11ul,12ul,13ul,14ul,15ul>((v38 + 28), __src);
    if (v39)
    {
      v40 = 8;
    }

    else
    {
      v40 = 0;
    }

    if (!v39)
    {
      v37 = v38;
    }

    v38 = *(v38 + v40);
  }

  while (v38);
  if (v37 == a1 + 16840 || AGX::scissorMapInfo<AGX::HAL300::Encoders>::less_impl<0ul,1ul,2ul,3ul,4ul,5ul,6ul,7ul,8ul,9ul,10ul,11ul,12ul,13ul,14ul,15ul>(__src, (v37 + 28)))
  {
    v41 = *(a1 + 16864);
    if ((v15 + v41) >= 0x10000)
    {
      v41 = 0xFFFFFFFFLL;
      v9 = v35;
    }

    else
    {
      while (1)
      {
        while (1)
        {
          v42 = v36;
          if (!AGX::scissorMapInfo<AGX::HAL300::Encoders>::less_impl<0ul,1ul,2ul,3ul,4ul,5ul,6ul,7ul,8ul,9ul,10ul,11ul,12ul,13ul,14ul,15ul>(__src, v36 + 7))
          {
            break;
          }

          v36 = *v36;
          if (!*v42)
          {
            goto LABEL_34;
          }
        }

        if (!AGX::scissorMapInfo<AGX::HAL300::Encoders>::less_impl<0ul,1ul,2ul,3ul,4ul,5ul,6ul,7ul,8ul,9ul,10ul,11ul,12ul,13ul,14ul,15ul>(v36 + 7, __src))
        {
          break;
        }

        v36 = v36[1];
        if (!v36)
        {
          goto LABEL_34;
        }
      }

      v44 = v36;
      v9 = v35;
      *(v44 + 72) = v41;
      *a6 = 1;
      [v45 contents];
      *(a1 + 16864) += LODWORD(__src[0]);
    }
  }

  else
  {
    v41 = *(v37 + 288);
    *a6 = 1;
    v9 = v35;
  }

LABEL_35:
  if (*a6 == 1)
  {
    *v9 = v34 + 16 * v41;
  }

  os_unfair_lock_unlock((a1 + 16824));
  return v41;
}

void sub_29CCCDB5C(_Unwind_Exception *a1)
{
  os_unfair_lock_unlock(v2 + 12);
  os_unfair_lock_unlock(v1 + 4206);
  _Unwind_Resume(a1);
}

BOOL AGX::scissorMapInfo<AGX::HAL300::Encoders>::less_impl<0ul,1ul,2ul,3ul,4ul,5ul,6ul,7ul,8ul,9ul,10ul,11ul,12ul,13ul,14ul,15ul>(unsigned int *a1, unsigned int *a2)
{
  v13[0] = a1;
  v13[1] = a1 + 1;
  v13[2] = a1 + 5;
  v13[3] = a1 + 9;
  v13[4] = a1 + 13;
  v13[5] = a1 + 17;
  v13[6] = a1 + 21;
  v13[7] = a1 + 25;
  v13[8] = a1 + 29;
  v13[9] = a1 + 33;
  v13[10] = a1 + 37;
  v13[11] = a1 + 41;
  v13[12] = a1 + 45;
  v13[13] = a1 + 49;
  v13[14] = a1 + 53;
  v13[15] = a1 + 57;
  v13[16] = a1 + 61;
  v12[0] = a2;
  v12[1] = a2 + 1;
  v12[2] = a2 + 5;
  v12[3] = a2 + 9;
  v12[4] = a2 + 13;
  v12[5] = a2 + 17;
  v12[6] = a2 + 21;
  v12[7] = a2 + 25;
  v12[8] = a2 + 29;
  v12[9] = a2 + 33;
  v12[10] = a2 + 37;
  v12[11] = a2 + 41;
  v12[12] = a2 + 45;
  v12[13] = a2 + 49;
  v12[14] = a2 + 53;
  v12[15] = a2 + 57;
  v2 = *a2;
  v12[16] = a2 + 61;
  if (*a1 < v2)
  {
    return 1;
  }

  if (v2 < *a1)
  {
    return 0;
  }

  v4 = a1[1];
  v5 = a2[1];
  if (v4 < v5)
  {
    return 1;
  }

  if (v5 < v4)
  {
    return 0;
  }

  v6 = a1[2];
  v7 = a2[2];
  if (v6 < v7)
  {
    return 1;
  }

  if (v7 < v6)
  {
    return 0;
  }

  v8 = a1[3];
  v9 = a2[3];
  if (v8 < v9)
  {
    return 1;
  }

  if (v9 < v8)
  {
    return 0;
  }

  v10 = a1[4];
  v11 = a2[4];
  if (v10 < v11)
  {
    return 1;
  }

  if (v11 >= v10)
  {
    return std::__tuple_less<15ul>::operator()[abi:nn200100]<std::tuple<unsigned int const&,AGX::IPFEncoderGen4<kAGXRevHAL300>::ScissorBits const&,AGX::IPFEncoderGen4<kAGXRevHAL300>::ScissorBits const&,AGX::IPFEncoderGen4<kAGXRevHAL300>::ScissorBits const&,AGX::IPFEncoderGen4<kAGXRevHAL300>::ScissorBits const&,AGX::IPFEncoderGen4<kAGXRevHAL300>::ScissorBits const&,AGX::IPFEncoderGen4<kAGXRevHAL300>::ScissorBits const&,AGX::IPFEncoderGen4<kAGXRevHAL300>::ScissorBits const&,AGX::IPFEncoderGen4<kAGXRevHAL300>::ScissorBits const&,AGX::IPFEncoderGen4<kAGXRevHAL300>::ScissorBits const&,AGX::IPFEncoderGen4<kAGXRevHAL300>::ScissorBits const&,AGX::IPFEncoderGen4<kAGXRevHAL300>::ScissorBits const&,AGX::IPFEncoderGen4<kAGXRevHAL300>::ScissorBits const&,AGX::IPFEncoderGen4<kAGXRevHAL300>::ScissorBits const&,AGX::IPFEncoderGen4<kAGXRevHAL300>::ScissorBits const&,AGX::IPFEncoderGen4<kAGXRevHAL300>::ScissorBits const&,AGX::IPFEncoderGen4<kAGXRevHAL300>::ScissorBits const&>,std::tuple<unsigned int const&,AGX::IPFEncoderGen4<kAGXRevHAL300>::ScissorBits const&,AGX::IPFEncoderGen4<kAGXRevHAL300>::ScissorBits const&,AGX::IPFEncoderGen4<kAGXRevHAL300>::ScissorBits const&,AGX::IPFEncoderGen4<kAGXRevHAL300>::ScissorBits const&,AGX::IPFEncoderGen4<kAGXRevHAL300>::ScissorBits const&,AGX::IPFEncoderGen4<kAGXRevHAL300>::ScissorBits const&,AGX::IPFEncoderGen4<kAGXRevHAL300>::ScissorBits const&,AGX::IPFEncoderGen4<kAGXRevHAL300>::ScissorBits const&,AGX::IPFEncoderGen4<kAGXRevHAL300>::ScissorBits const&,AGX::IPFEncoderGen4<kAGXRevHAL300>::ScissorBits const&,AGX::IPFEncoderGen4<kAGXRevHAL300>::ScissorBits const&,AGX::IPFEncoderGen4<kAGXRevHAL300>::ScissorBits const&,AGX::IPFEncoderGen4<kAGXRevHAL300>::ScissorBits const&,AGX::IPFEncoderGen4<kAGXRevHAL300>::ScissorBits const&,AGX::IPFEncoderGen4<kAGXRevHAL300>::ScissorBits const&,AGX::IPFEncoderGen4<kAGXRevHAL300>::ScissorBits const&>>(v13, v12);
  }

  return 0;
}

BOOL std::__tuple_less<15ul>::operator()[abi:nn200100]<std::tuple<unsigned int const&,AGX::IPFEncoderGen4<kAGXRevHAL300>::ScissorBits const&,AGX::IPFEncoderGen4<kAGXRevHAL300>::ScissorBits const&,AGX::IPFEncoderGen4<kAGXRevHAL300>::ScissorBits const&,AGX::IPFEncoderGen4<kAGXRevHAL300>::ScissorBits const&,AGX::IPFEncoderGen4<kAGXRevHAL300>::ScissorBits const&,AGX::IPFEncoderGen4<kAGXRevHAL300>::ScissorBits const&,AGX::IPFEncoderGen4<kAGXRevHAL300>::ScissorBits const&,AGX::IPFEncoderGen4<kAGXRevHAL300>::ScissorBits const&,AGX::IPFEncoderGen4<kAGXRevHAL300>::ScissorBits const&,AGX::IPFEncoderGen4<kAGXRevHAL300>::ScissorBits const&,AGX::IPFEncoderGen4<kAGXRevHAL300>::ScissorBits const&,AGX::IPFEncoderGen4<kAGXRevHAL300>::ScissorBits const&,AGX::IPFEncoderGen4<kAGXRevHAL300>::ScissorBits const&,AGX::IPFEncoderGen4<kAGXRevHAL300>::ScissorBits const&,AGX::IPFEncoderGen4<kAGXRevHAL300>::ScissorBits const&,AGX::IPFEncoderGen4<kAGXRevHAL300>::ScissorBits const&>,std::tuple<unsigned int const&,AGX::IPFEncoderGen4<kAGXRevHAL300>::ScissorBits const&,AGX::IPFEncoderGen4<kAGXRevHAL300>::ScissorBits const&,AGX::IPFEncoderGen4<kAGXRevHAL300>::ScissorBits const&,AGX::IPFEncoderGen4<kAGXRevHAL300>::ScissorBits const&,AGX::IPFEncoderGen4<kAGXRevHAL300>::ScissorBits const&,AGX::IPFEncoderGen4<kAGXRevHAL300>::ScissorBits const&,AGX::IPFEncoderGen4<kAGXRevHAL300>::ScissorBits const&,AGX::IPFEncoderGen4<kAGXRevHAL300>::ScissorBits const&,AGX::IPFEncoderGen4<kAGXRevHAL300>::ScissorBits const&,AGX::IPFEncoderGen4<kAGXRevHAL300>::ScissorBits const&,AGX::IPFEncoderGen4<kAGXRevHAL300>::ScissorBits const&,AGX::IPFEncoderGen4<kAGXRevHAL300>::ScissorBits const&,AGX::IPFEncoderGen4<kAGXRevHAL300>::ScissorBits const&,AGX::IPFEncoderGen4<kAGXRevHAL300>::ScissorBits const&,AGX::IPFEncoderGen4<kAGXRevHAL300>::ScissorBits const&,AGX::IPFEncoderGen4<kAGXRevHAL300>::ScissorBits const&>>(void *a1, void *a2)
{
  v2 = a1[2];
  v3 = a2[2];
  if (*v2 < *v3)
  {
    return 1;
  }

  if (*v3 < *v2)
  {
    return 0;
  }

  v5 = v2[1];
  v6 = v3[1];
  if (v5 < v6)
  {
    return 1;
  }

  if (v6 < v5)
  {
    return 0;
  }

  v7 = v2[2];
  v8 = v3[2];
  if (v7 < v8)
  {
    return 1;
  }

  if (v8 >= v7)
  {
    v9 = v2[3];
    v10 = v3[3];
    v11 = v9 >= v10;
    v12 = v9 < v10;
    if (!v11)
    {
      return v12;
    }
  }

  v13 = v3[2];
  v14 = v2[2];
  if (v13 < v14 || v14 >= v13 && v3[3] < v2[3])
  {
    return 0;
  }

  v15 = a1[3];
  v16 = a2[3];
  if (*v15 < *v16)
  {
    return 1;
  }

  if (*v16 < *v15)
  {
    return 0;
  }

  v17 = v15[1];
  v18 = v16[1];
  if (v17 < v18)
  {
    return 1;
  }

  if (v18 < v17)
  {
    return 0;
  }

  v19 = v15[2];
  v20 = v16[2];
  if (v19 < v20)
  {
    return 1;
  }

  if (v20 < v19)
  {
    return 0;
  }

  v21 = v15[3];
  v22 = v16[3];
  if (v21 < v22)
  {
    return 1;
  }

  if (v22 < v21)
  {
    return 0;
  }

  return std::__tuple_less<13ul>::operator()[abi:nn200100]<std::tuple<unsigned int const&,AGX::IPFEncoderGen4<kAGXRevHAL300>::ScissorBits const&,AGX::IPFEncoderGen4<kAGXRevHAL300>::ScissorBits const&,AGX::IPFEncoderGen4<kAGXRevHAL300>::ScissorBits const&,AGX::IPFEncoderGen4<kAGXRevHAL300>::ScissorBits const&,AGX::IPFEncoderGen4<kAGXRevHAL300>::ScissorBits const&,AGX::IPFEncoderGen4<kAGXRevHAL300>::ScissorBits const&,AGX::IPFEncoderGen4<kAGXRevHAL300>::ScissorBits const&,AGX::IPFEncoderGen4<kAGXRevHAL300>::ScissorBits const&,AGX::IPFEncoderGen4<kAGXRevHAL300>::ScissorBits const&,AGX::IPFEncoderGen4<kAGXRevHAL300>::ScissorBits const&,AGX::IPFEncoderGen4<kAGXRevHAL300>::ScissorBits const&,AGX::IPFEncoderGen4<kAGXRevHAL300>::ScissorBits const&,AGX::IPFEncoderGen4<kAGXRevHAL300>::ScissorBits const&,AGX::IPFEncoderGen4<kAGXRevHAL300>::ScissorBits const&,AGX::IPFEncoderGen4<kAGXRevHAL300>::ScissorBits const&,AGX::IPFEncoderGen4<kAGXRevHAL300>::ScissorBits const&>,std::tuple<unsigned int const&,AGX::IPFEncoderGen4<kAGXRevHAL300>::ScissorBits const&,AGX::IPFEncoderGen4<kAGXRevHAL300>::ScissorBits const&,AGX::IPFEncoderGen4<kAGXRevHAL300>::ScissorBits const&,AGX::IPFEncoderGen4<kAGXRevHAL300>::ScissorBits const&,AGX::IPFEncoderGen4<kAGXRevHAL300>::ScissorBits const&,AGX::IPFEncoderGen4<kAGXRevHAL300>::ScissorBits const&,AGX::IPFEncoderGen4<kAGXRevHAL300>::ScissorBits const&,AGX::IPFEncoderGen4<kAGXRevHAL300>::ScissorBits const&,AGX::IPFEncoderGen4<kAGXRevHAL300>::ScissorBits const&,AGX::IPFEncoderGen4<kAGXRevHAL300>::ScissorBits const&,AGX::IPFEncoderGen4<kAGXRevHAL300>::ScissorBits const&,AGX::IPFEncoderGen4<kAGXRevHAL300>::ScissorBits const&,AGX::IPFEncoderGen4<kAGXRevHAL300>::ScissorBits const&,AGX::IPFEncoderGen4<kAGXRevHAL300>::ScissorBits const&,AGX::IPFEncoderGen4<kAGXRevHAL300>::ScissorBits const&,AGX::IPFEncoderGen4<kAGXRevHAL300>::ScissorBits const&>>(a1, a2);
}

BOOL std::__tuple_less<13ul>::operator()[abi:nn200100]<std::tuple<unsigned int const&,AGX::IPFEncoderGen4<kAGXRevHAL300>::ScissorBits const&,AGX::IPFEncoderGen4<kAGXRevHAL300>::ScissorBits const&,AGX::IPFEncoderGen4<kAGXRevHAL300>::ScissorBits const&,AGX::IPFEncoderGen4<kAGXRevHAL300>::ScissorBits const&,AGX::IPFEncoderGen4<kAGXRevHAL300>::ScissorBits const&,AGX::IPFEncoderGen4<kAGXRevHAL300>::ScissorBits const&,AGX::IPFEncoderGen4<kAGXRevHAL300>::ScissorBits const&,AGX::IPFEncoderGen4<kAGXRevHAL300>::ScissorBits const&,AGX::IPFEncoderGen4<kAGXRevHAL300>::ScissorBits const&,AGX::IPFEncoderGen4<kAGXRevHAL300>::ScissorBits const&,AGX::IPFEncoderGen4<kAGXRevHAL300>::ScissorBits const&,AGX::IPFEncoderGen4<kAGXRevHAL300>::ScissorBits const&,AGX::IPFEncoderGen4<kAGXRevHAL300>::ScissorBits const&,AGX::IPFEncoderGen4<kAGXRevHAL300>::ScissorBits const&,AGX::IPFEncoderGen4<kAGXRevHAL300>::ScissorBits const&,AGX::IPFEncoderGen4<kAGXRevHAL300>::ScissorBits const&>,std::tuple<unsigned int const&,AGX::IPFEncoderGen4<kAGXRevHAL300>::ScissorBits const&,AGX::IPFEncoderGen4<kAGXRevHAL300>::ScissorBits const&,AGX::IPFEncoderGen4<kAGXRevHAL300>::ScissorBits const&,AGX::IPFEncoderGen4<kAGXRevHAL300>::ScissorBits const&,AGX::IPFEncoderGen4<kAGXRevHAL300>::ScissorBits const&,AGX::IPFEncoderGen4<kAGXRevHAL300>::ScissorBits const&,AGX::IPFEncoderGen4<kAGXRevHAL300>::ScissorBits const&,AGX::IPFEncoderGen4<kAGXRevHAL300>::ScissorBits const&,AGX::IPFEncoderGen4<kAGXRevHAL300>::ScissorBits const&,AGX::IPFEncoderGen4<kAGXRevHAL300>::ScissorBits const&,AGX::IPFEncoderGen4<kAGXRevHAL300>::ScissorBits const&,AGX::IPFEncoderGen4<kAGXRevHAL300>::ScissorBits const&,AGX::IPFEncoderGen4<kAGXRevHAL300>::ScissorBits const&,AGX::IPFEncoderGen4<kAGXRevHAL300>::ScissorBits const&,AGX::IPFEncoderGen4<kAGXRevHAL300>::ScissorBits const&,AGX::IPFEncoderGen4<kAGXRevHAL300>::ScissorBits const&>>(void *a1, void *a2)
{
  v2 = a1[4];
  v3 = a2[4];
  if (*v2 < *v3)
  {
    return 1;
  }

  if (*v3 < *v2)
  {
    return 0;
  }

  v5 = v2[1];
  v6 = v3[1];
  if (v5 < v6)
  {
    return 1;
  }

  if (v6 < v5)
  {
    return 0;
  }

  v7 = v2[2];
  v8 = v3[2];
  if (v7 < v8)
  {
    return 1;
  }

  if (v8 >= v7)
  {
    v9 = v2[3];
    v10 = v3[3];
    v11 = v9 >= v10;
    v12 = v9 < v10;
    if (!v11)
    {
      return v12;
    }
  }

  v13 = v3[2];
  v14 = v2[2];
  if (v13 < v14 || v14 >= v13 && v3[3] < v2[3])
  {
    return 0;
  }

  v15 = a1[5];
  v16 = a2[5];
  if (*v15 < *v16)
  {
    return 1;
  }

  if (*v16 < *v15)
  {
    return 0;
  }

  v17 = v15[1];
  v18 = v16[1];
  if (v17 < v18)
  {
    return 1;
  }

  if (v18 < v17)
  {
    return 0;
  }

  v19 = v15[2];
  v20 = v16[2];
  if (v19 < v20)
  {
    return 1;
  }

  if (v20 < v19)
  {
    return 0;
  }

  v21 = v15[3];
  v22 = v16[3];
  if (v21 < v22)
  {
    return 1;
  }

  if (v22 < v21)
  {
    return 0;
  }

  return std::__tuple_less<11ul>::operator()[abi:nn200100]<std::tuple<unsigned int const&,AGX::IPFEncoderGen4<kAGXRevHAL300>::ScissorBits const&,AGX::IPFEncoderGen4<kAGXRevHAL300>::ScissorBits const&,AGX::IPFEncoderGen4<kAGXRevHAL300>::ScissorBits const&,AGX::IPFEncoderGen4<kAGXRevHAL300>::ScissorBits const&,AGX::IPFEncoderGen4<kAGXRevHAL300>::ScissorBits const&,AGX::IPFEncoderGen4<kAGXRevHAL300>::ScissorBits const&,AGX::IPFEncoderGen4<kAGXRevHAL300>::ScissorBits const&,AGX::IPFEncoderGen4<kAGXRevHAL300>::ScissorBits const&,AGX::IPFEncoderGen4<kAGXRevHAL300>::ScissorBits const&,AGX::IPFEncoderGen4<kAGXRevHAL300>::ScissorBits const&,AGX::IPFEncoderGen4<kAGXRevHAL300>::ScissorBits const&,AGX::IPFEncoderGen4<kAGXRevHAL300>::ScissorBits const&,AGX::IPFEncoderGen4<kAGXRevHAL300>::ScissorBits const&,AGX::IPFEncoderGen4<kAGXRevHAL300>::ScissorBits const&,AGX::IPFEncoderGen4<kAGXRevHAL300>::ScissorBits const&,AGX::IPFEncoderGen4<kAGXRevHAL300>::ScissorBits const&>,std::tuple<unsigned int const&,AGX::IPFEncoderGen4<kAGXRevHAL300>::ScissorBits const&,AGX::IPFEncoderGen4<kAGXRevHAL300>::ScissorBits const&,AGX::IPFEncoderGen4<kAGXRevHAL300>::ScissorBits const&,AGX::IPFEncoderGen4<kAGXRevHAL300>::ScissorBits const&,AGX::IPFEncoderGen4<kAGXRevHAL300>::ScissorBits const&,AGX::IPFEncoderGen4<kAGXRevHAL300>::ScissorBits const&,AGX::IPFEncoderGen4<kAGXRevHAL300>::ScissorBits const&,AGX::IPFEncoderGen4<kAGXRevHAL300>::ScissorBits const&,AGX::IPFEncoderGen4<kAGXRevHAL300>::ScissorBits const&,AGX::IPFEncoderGen4<kAGXRevHAL300>::ScissorBits const&,AGX::IPFEncoderGen4<kAGXRevHAL300>::ScissorBits const&,AGX::IPFEncoderGen4<kAGXRevHAL300>::ScissorBits const&,AGX::IPFEncoderGen4<kAGXRevHAL300>::ScissorBits const&,AGX::IPFEncoderGen4<kAGXRevHAL300>::ScissorBits const&,AGX::IPFEncoderGen4<kAGXRevHAL300>::ScissorBits const&,AGX::IPFEncoderGen4<kAGXRevHAL300>::ScissorBits const&>>(a1, a2);
}

BOOL std::__tuple_less<11ul>::operator()[abi:nn200100]<std::tuple<unsigned int const&,AGX::IPFEncoderGen4<kAGXRevHAL300>::ScissorBits const&,AGX::IPFEncoderGen4<kAGXRevHAL300>::ScissorBits const&,AGX::IPFEncoderGen4<kAGXRevHAL300>::ScissorBits const&,AGX::IPFEncoderGen4<kAGXRevHAL300>::ScissorBits const&,AGX::IPFEncoderGen4<kAGXRevHAL300>::ScissorBits const&,AGX::IPFEncoderGen4<kAGXRevHAL300>::ScissorBits const&,AGX::IPFEncoderGen4<kAGXRevHAL300>::ScissorBits const&,AGX::IPFEncoderGen4<kAGXRevHAL300>::ScissorBits const&,AGX::IPFEncoderGen4<kAGXRevHAL300>::ScissorBits const&,AGX::IPFEncoderGen4<kAGXRevHAL300>::ScissorBits const&,AGX::IPFEncoderGen4<kAGXRevHAL300>::ScissorBits const&,AGX::IPFEncoderGen4<kAGXRevHAL300>::ScissorBits const&,AGX::IPFEncoderGen4<kAGXRevHAL300>::ScissorBits const&,AGX::IPFEncoderGen4<kAGXRevHAL300>::ScissorBits const&,AGX::IPFEncoderGen4<kAGXRevHAL300>::ScissorBits const&,AGX::IPFEncoderGen4<kAGXRevHAL300>::ScissorBits const&>,std::tuple<unsigned int const&,AGX::IPFEncoderGen4<kAGXRevHAL300>::ScissorBits const&,AGX::IPFEncoderGen4<kAGXRevHAL300>::ScissorBits const&,AGX::IPFEncoderGen4<kAGXRevHAL300>::ScissorBits const&,AGX::IPFEncoderGen4<kAGXRevHAL300>::ScissorBits const&,AGX::IPFEncoderGen4<kAGXRevHAL300>::ScissorBits const&,AGX::IPFEncoderGen4<kAGXRevHAL300>::ScissorBits const&,AGX::IPFEncoderGen4<kAGXRevHAL300>::ScissorBits const&,AGX::IPFEncoderGen4<kAGXRevHAL300>::ScissorBits const&,AGX::IPFEncoderGen4<kAGXRevHAL300>::ScissorBits const&,AGX::IPFEncoderGen4<kAGXRevHAL300>::ScissorBits const&,AGX::IPFEncoderGen4<kAGXRevHAL300>::ScissorBits const&,AGX::IPFEncoderGen4<kAGXRevHAL300>::ScissorBits const&,AGX::IPFEncoderGen4<kAGXRevHAL300>::ScissorBits const&,AGX::IPFEncoderGen4<kAGXRevHAL300>::ScissorBits const&,AGX::IPFEncoderGen4<kAGXRevHAL300>::ScissorBits const&,AGX::IPFEncoderGen4<kAGXRevHAL300>::ScissorBits const&>>(void *a1, void *a2)
{
  v2 = a1[6];
  v3 = a2[6];
  if (*v2 < *v3)
  {
    return 1;
  }

  if (*v3 < *v2)
  {
    return 0;
  }

  v5 = v2[1];
  v6 = v3[1];
  if (v5 < v6)
  {
    return 1;
  }

  if (v6 < v5)
  {
    return 0;
  }

  v7 = v2[2];
  v8 = v3[2];
  if (v7 < v8)
  {
    return 1;
  }

  if (v8 >= v7)
  {
    v9 = v2[3];
    v10 = v3[3];
    v11 = v9 >= v10;
    v12 = v9 < v10;
    if (!v11)
    {
      return v12;
    }
  }

  v13 = v3[2];
  v14 = v2[2];
  if (v13 < v14 || v14 >= v13 && v3[3] < v2[3])
  {
    return 0;
  }

  v15 = a1[7];
  v16 = a2[7];
  if (*v15 < *v16)
  {
    return 1;
  }

  if (*v16 < *v15)
  {
    return 0;
  }

  v17 = v15[1];
  v18 = v16[1];
  if (v17 < v18)
  {
    return 1;
  }

  if (v18 < v17)
  {
    return 0;
  }

  v19 = v15[2];
  v20 = v16[2];
  if (v19 < v20)
  {
    return 1;
  }

  if (v20 < v19)
  {
    return 0;
  }

  v21 = v15[3];
  v22 = v16[3];
  if (v21 < v22)
  {
    return 1;
  }

  if (v22 < v21)
  {
    return 0;
  }

  return std::__tuple_less<9ul>::operator()[abi:nn200100]<std::tuple<unsigned int const&,AGX::IPFEncoderGen4<kAGXRevHAL300>::ScissorBits const&,AGX::IPFEncoderGen4<kAGXRevHAL300>::ScissorBits const&,AGX::IPFEncoderGen4<kAGXRevHAL300>::ScissorBits const&,AGX::IPFEncoderGen4<kAGXRevHAL300>::ScissorBits const&,AGX::IPFEncoderGen4<kAGXRevHAL300>::ScissorBits const&,AGX::IPFEncoderGen4<kAGXRevHAL300>::ScissorBits const&,AGX::IPFEncoderGen4<kAGXRevHAL300>::ScissorBits const&,AGX::IPFEncoderGen4<kAGXRevHAL300>::ScissorBits const&,AGX::IPFEncoderGen4<kAGXRevHAL300>::ScissorBits const&,AGX::IPFEncoderGen4<kAGXRevHAL300>::ScissorBits const&,AGX::IPFEncoderGen4<kAGXRevHAL300>::ScissorBits const&,AGX::IPFEncoderGen4<kAGXRevHAL300>::ScissorBits const&,AGX::IPFEncoderGen4<kAGXRevHAL300>::ScissorBits const&,AGX::IPFEncoderGen4<kAGXRevHAL300>::ScissorBits const&,AGX::IPFEncoderGen4<kAGXRevHAL300>::ScissorBits const&,AGX::IPFEncoderGen4<kAGXRevHAL300>::ScissorBits const&>,std::tuple<unsigned int const&,AGX::IPFEncoderGen4<kAGXRevHAL300>::ScissorBits const&,AGX::IPFEncoderGen4<kAGXRevHAL300>::ScissorBits const&,AGX::IPFEncoderGen4<kAGXRevHAL300>::ScissorBits const&,AGX::IPFEncoderGen4<kAGXRevHAL300>::ScissorBits const&,AGX::IPFEncoderGen4<kAGXRevHAL300>::ScissorBits const&,AGX::IPFEncoderGen4<kAGXRevHAL300>::ScissorBits const&,AGX::IPFEncoderGen4<kAGXRevHAL300>::ScissorBits const&,AGX::IPFEncoderGen4<kAGXRevHAL300>::ScissorBits const&,AGX::IPFEncoderGen4<kAGXRevHAL300>::ScissorBits const&,AGX::IPFEncoderGen4<kAGXRevHAL300>::ScissorBits const&,AGX::IPFEncoderGen4<kAGXRevHAL300>::ScissorBits const&,AGX::IPFEncoderGen4<kAGXRevHAL300>::ScissorBits const&,AGX::IPFEncoderGen4<kAGXRevHAL300>::ScissorBits const&,AGX::IPFEncoderGen4<kAGXRevHAL300>::ScissorBits const&,AGX::IPFEncoderGen4<kAGXRevHAL300>::ScissorBits const&,AGX::IPFEncoderGen4<kAGXRevHAL300>::ScissorBits const&>>(a1, a2);
}

BOOL std::__tuple_less<9ul>::operator()[abi:nn200100]<std::tuple<unsigned int const&,AGX::IPFEncoderGen4<kAGXRevHAL300>::ScissorBits const&,AGX::IPFEncoderGen4<kAGXRevHAL300>::ScissorBits const&,AGX::IPFEncoderGen4<kAGXRevHAL300>::ScissorBits const&,AGX::IPFEncoderGen4<kAGXRevHAL300>::ScissorBits const&,AGX::IPFEncoderGen4<kAGXRevHAL300>::ScissorBits const&,AGX::IPFEncoderGen4<kAGXRevHAL300>::ScissorBits const&,AGX::IPFEncoderGen4<kAGXRevHAL300>::ScissorBits const&,AGX::IPFEncoderGen4<kAGXRevHAL300>::ScissorBits const&,AGX::IPFEncoderGen4<kAGXRevHAL300>::ScissorBits const&,AGX::IPFEncoderGen4<kAGXRevHAL300>::ScissorBits const&,AGX::IPFEncoderGen4<kAGXRevHAL300>::ScissorBits const&,AGX::IPFEncoderGen4<kAGXRevHAL300>::ScissorBits const&,AGX::IPFEncoderGen4<kAGXRevHAL300>::ScissorBits const&,AGX::IPFEncoderGen4<kAGXRevHAL300>::ScissorBits const&,AGX::IPFEncoderGen4<kAGXRevHAL300>::ScissorBits const&,AGX::IPFEncoderGen4<kAGXRevHAL300>::ScissorBits const&>,std::tuple<unsigned int const&,AGX::IPFEncoderGen4<kAGXRevHAL300>::ScissorBits const&,AGX::IPFEncoderGen4<kAGXRevHAL300>::ScissorBits const&,AGX::IPFEncoderGen4<kAGXRevHAL300>::ScissorBits const&,AGX::IPFEncoderGen4<kAGXRevHAL300>::ScissorBits const&,AGX::IPFEncoderGen4<kAGXRevHAL300>::ScissorBits const&,AGX::IPFEncoderGen4<kAGXRevHAL300>::ScissorBits const&,AGX::IPFEncoderGen4<kAGXRevHAL300>::ScissorBits const&,AGX::IPFEncoderGen4<kAGXRevHAL300>::ScissorBits const&,AGX::IPFEncoderGen4<kAGXRevHAL300>::ScissorBits const&,AGX::IPFEncoderGen4<kAGXRevHAL300>::ScissorBits const&,AGX::IPFEncoderGen4<kAGXRevHAL300>::ScissorBits const&,AGX::IPFEncoderGen4<kAGXRevHAL300>::ScissorBits const&,AGX::IPFEncoderGen4<kAGXRevHAL300>::ScissorBits const&,AGX::IPFEncoderGen4<kAGXRevHAL300>::ScissorBits const&,AGX::IPFEncoderGen4<kAGXRevHAL300>::ScissorBits const&,AGX::IPFEncoderGen4<kAGXRevHAL300>::ScissorBits const&>>(void *a1, void *a2)
{
  v2 = a1[8];
  v3 = a2[8];
  if (*v2 < *v3)
  {
    return 1;
  }

  if (*v3 < *v2)
  {
    return 0;
  }

  v5 = v2[1];
  v6 = v3[1];
  if (v5 < v6)
  {
    return 1;
  }

  if (v6 < v5)
  {
    return 0;
  }

  v7 = v2[2];
  v8 = v3[2];
  if (v7 < v8)
  {
    return 1;
  }

  if (v8 >= v7)
  {
    v9 = v2[3];
    v10 = v3[3];
    v11 = v9 >= v10;
    v12 = v9 < v10;
    if (!v11)
    {
      return v12;
    }
  }

  v13 = v3[2];
  v14 = v2[2];
  if (v13 < v14 || v14 >= v13 && v3[3] < v2[3])
  {
    return 0;
  }

  v15 = a1[9];
  v16 = a2[9];
  if (*v15 < *v16)
  {
    return 1;
  }

  if (*v16 < *v15)
  {
    return 0;
  }

  v17 = v15[1];
  v18 = v16[1];
  if (v17 < v18)
  {
    return 1;
  }

  if (v18 < v17)
  {
    return 0;
  }

  v19 = v15[2];
  v20 = v16[2];
  if (v19 < v20)
  {
    return 1;
  }

  if (v20 < v19)
  {
    return 0;
  }

  v21 = v15[3];
  v22 = v16[3];
  if (v21 < v22)
  {
    return 1;
  }

  if (v22 < v21)
  {
    return 0;
  }

  return std::__tuple_less<7ul>::operator()[abi:nn200100]<std::tuple<unsigned int const&,AGX::IPFEncoderGen4<kAGXRevHAL300>::ScissorBits const&,AGX::IPFEncoderGen4<kAGXRevHAL300>::ScissorBits const&,AGX::IPFEncoderGen4<kAGXRevHAL300>::ScissorBits const&,AGX::IPFEncoderGen4<kAGXRevHAL300>::ScissorBits const&,AGX::IPFEncoderGen4<kAGXRevHAL300>::ScissorBits const&,AGX::IPFEncoderGen4<kAGXRevHAL300>::ScissorBits const&,AGX::IPFEncoderGen4<kAGXRevHAL300>::ScissorBits const&,AGX::IPFEncoderGen4<kAGXRevHAL300>::ScissorBits const&,AGX::IPFEncoderGen4<kAGXRevHAL300>::ScissorBits const&,AGX::IPFEncoderGen4<kAGXRevHAL300>::ScissorBits const&,AGX::IPFEncoderGen4<kAGXRevHAL300>::ScissorBits const&,AGX::IPFEncoderGen4<kAGXRevHAL300>::ScissorBits const&,AGX::IPFEncoderGen4<kAGXRevHAL300>::ScissorBits const&,AGX::IPFEncoderGen4<kAGXRevHAL300>::ScissorBits const&,AGX::IPFEncoderGen4<kAGXRevHAL300>::ScissorBits const&,AGX::IPFEncoderGen4<kAGXRevHAL300>::ScissorBits const&>,std::tuple<unsigned int const&,AGX::IPFEncoderGen4<kAGXRevHAL300>::ScissorBits const&,AGX::IPFEncoderGen4<kAGXRevHAL300>::ScissorBits const&,AGX::IPFEncoderGen4<kAGXRevHAL300>::ScissorBits const&,AGX::IPFEncoderGen4<kAGXRevHAL300>::ScissorBits const&,AGX::IPFEncoderGen4<kAGXRevHAL300>::ScissorBits const&,AGX::IPFEncoderGen4<kAGXRevHAL300>::ScissorBits const&,AGX::IPFEncoderGen4<kAGXRevHAL300>::ScissorBits const&,AGX::IPFEncoderGen4<kAGXRevHAL300>::ScissorBits const&,AGX::IPFEncoderGen4<kAGXRevHAL300>::ScissorBits const&,AGX::IPFEncoderGen4<kAGXRevHAL300>::ScissorBits const&,AGX::IPFEncoderGen4<kAGXRevHAL300>::ScissorBits const&,AGX::IPFEncoderGen4<kAGXRevHAL300>::ScissorBits const&,AGX::IPFEncoderGen4<kAGXRevHAL300>::ScissorBits const&,AGX::IPFEncoderGen4<kAGXRevHAL300>::ScissorBits const&,AGX::IPFEncoderGen4<kAGXRevHAL300>::ScissorBits const&,AGX::IPFEncoderGen4<kAGXRevHAL300>::ScissorBits const&>>(a1, a2);
}

BOOL std::__tuple_less<7ul>::operator()[abi:nn200100]<std::tuple<unsigned int const&,AGX::IPFEncoderGen4<kAGXRevHAL300>::ScissorBits const&,AGX::IPFEncoderGen4<kAGXRevHAL300>::ScissorBits const&,AGX::IPFEncoderGen4<kAGXRevHAL300>::ScissorBits const&,AGX::IPFEncoderGen4<kAGXRevHAL300>::ScissorBits const&,AGX::IPFEncoderGen4<kAGXRevHAL300>::ScissorBits const&,AGX::IPFEncoderGen4<kAGXRevHAL300>::ScissorBits const&,AGX::IPFEncoderGen4<kAGXRevHAL300>::ScissorBits const&,AGX::IPFEncoderGen4<kAGXRevHAL300>::ScissorBits const&,AGX::IPFEncoderGen4<kAGXRevHAL300>::ScissorBits const&,AGX::IPFEncoderGen4<kAGXRevHAL300>::ScissorBits const&,AGX::IPFEncoderGen4<kAGXRevHAL300>::ScissorBits const&,AGX::IPFEncoderGen4<kAGXRevHAL300>::ScissorBits const&,AGX::IPFEncoderGen4<kAGXRevHAL300>::ScissorBits const&,AGX::IPFEncoderGen4<kAGXRevHAL300>::ScissorBits const&,AGX::IPFEncoderGen4<kAGXRevHAL300>::ScissorBits const&,AGX::IPFEncoderGen4<kAGXRevHAL300>::ScissorBits const&>,std::tuple<unsigned int const&,AGX::IPFEncoderGen4<kAGXRevHAL300>::ScissorBits const&,AGX::IPFEncoderGen4<kAGXRevHAL300>::ScissorBits const&,AGX::IPFEncoderGen4<kAGXRevHAL300>::ScissorBits const&,AGX::IPFEncoderGen4<kAGXRevHAL300>::ScissorBits const&,AGX::IPFEncoderGen4<kAGXRevHAL300>::ScissorBits const&,AGX::IPFEncoderGen4<kAGXRevHAL300>::ScissorBits const&,AGX::IPFEncoderGen4<kAGXRevHAL300>::ScissorBits const&,AGX::IPFEncoderGen4<kAGXRevHAL300>::ScissorBits const&,AGX::IPFEncoderGen4<kAGXRevHAL300>::ScissorBits const&,AGX::IPFEncoderGen4<kAGXRevHAL300>::ScissorBits const&,AGX::IPFEncoderGen4<kAGXRevHAL300>::ScissorBits const&,AGX::IPFEncoderGen4<kAGXRevHAL300>::ScissorBits const&,AGX::IPFEncoderGen4<kAGXRevHAL300>::ScissorBits const&,AGX::IPFEncoderGen4<kAGXRevHAL300>::ScissorBits const&,AGX::IPFEncoderGen4<kAGXRevHAL300>::ScissorBits const&,AGX::IPFEncoderGen4<kAGXRevHAL300>::ScissorBits const&>>(void *a1, void *a2)
{
  v2 = a1[10];
  v3 = a2[10];
  if (*v2 < *v3)
  {
    return 1;
  }

  if (*v3 < *v2)
  {
    return 0;
  }

  v5 = v2[1];
  v6 = v3[1];
  if (v5 < v6)
  {
    return 1;
  }

  if (v6 < v5)
  {
    return 0;
  }

  v7 = v2[2];
  v8 = v3[2];
  if (v7 < v8)
  {
    return 1;
  }

  if (v8 >= v7)
  {
    v9 = v2[3];
    v10 = v3[3];
    v11 = v9 >= v10;
    v12 = v9 < v10;
    if (!v11)
    {
      return v12;
    }
  }

  v13 = v3[2];
  v14 = v2[2];
  if (v13 < v14 || v14 >= v13 && v3[3] < v2[3])
  {
    return 0;
  }

  v15 = a1[11];
  v16 = a2[11];
  if (*v15 < *v16)
  {
    return 1;
  }

  if (*v16 < *v15)
  {
    return 0;
  }

  v17 = v15[1];
  v18 = v16[1];
  if (v17 < v18)
  {
    return 1;
  }

  if (v18 < v17)
  {
    return 0;
  }

  v19 = v15[2];
  v20 = v16[2];
  if (v19 < v20)
  {
    return 1;
  }

  if (v20 < v19)
  {
    return 0;
  }

  v21 = v15[3];
  v22 = v16[3];
  if (v21 < v22)
  {
    return 1;
  }

  if (v22 < v21)
  {
    return 0;
  }

  return std::__tuple_less<5ul>::operator()[abi:nn200100]<std::tuple<unsigned int const&,AGX::IPFEncoderGen4<kAGXRevHAL300>::ScissorBits const&,AGX::IPFEncoderGen4<kAGXRevHAL300>::ScissorBits const&,AGX::IPFEncoderGen4<kAGXRevHAL300>::ScissorBits const&,AGX::IPFEncoderGen4<kAGXRevHAL300>::ScissorBits const&,AGX::IPFEncoderGen4<kAGXRevHAL300>::ScissorBits const&,AGX::IPFEncoderGen4<kAGXRevHAL300>::ScissorBits const&,AGX::IPFEncoderGen4<kAGXRevHAL300>::ScissorBits const&,AGX::IPFEncoderGen4<kAGXRevHAL300>::ScissorBits const&,AGX::IPFEncoderGen4<kAGXRevHAL300>::ScissorBits const&,AGX::IPFEncoderGen4<kAGXRevHAL300>::ScissorBits const&,AGX::IPFEncoderGen4<kAGXRevHAL300>::ScissorBits const&,AGX::IPFEncoderGen4<kAGXRevHAL300>::ScissorBits const&,AGX::IPFEncoderGen4<kAGXRevHAL300>::ScissorBits const&,AGX::IPFEncoderGen4<kAGXRevHAL300>::ScissorBits const&,AGX::IPFEncoderGen4<kAGXRevHAL300>::ScissorBits const&,AGX::IPFEncoderGen4<kAGXRevHAL300>::ScissorBits const&>,std::tuple<unsigned int const&,AGX::IPFEncoderGen4<kAGXRevHAL300>::ScissorBits const&,AGX::IPFEncoderGen4<kAGXRevHAL300>::ScissorBits const&,AGX::IPFEncoderGen4<kAGXRevHAL300>::ScissorBits const&,AGX::IPFEncoderGen4<kAGXRevHAL300>::ScissorBits const&,AGX::IPFEncoderGen4<kAGXRevHAL300>::ScissorBits const&,AGX::IPFEncoderGen4<kAGXRevHAL300>::ScissorBits const&,AGX::IPFEncoderGen4<kAGXRevHAL300>::ScissorBits const&,AGX::IPFEncoderGen4<kAGXRevHAL300>::ScissorBits const&,AGX::IPFEncoderGen4<kAGXRevHAL300>::ScissorBits const&,AGX::IPFEncoderGen4<kAGXRevHAL300>::ScissorBits const&,AGX::IPFEncoderGen4<kAGXRevHAL300>::ScissorBits const&,AGX::IPFEncoderGen4<kAGXRevHAL300>::ScissorBits const&,AGX::IPFEncoderGen4<kAGXRevHAL300>::ScissorBits const&,AGX::IPFEncoderGen4<kAGXRevHAL300>::ScissorBits const&,AGX::IPFEncoderGen4<kAGXRevHAL300>::ScissorBits const&,AGX::IPFEncoderGen4<kAGXRevHAL300>::ScissorBits const&>>(a1, a2);
}

BOOL std::__tuple_less<5ul>::operator()[abi:nn200100]<std::tuple<unsigned int const&,AGX::IPFEncoderGen4<kAGXRevHAL300>::ScissorBits const&,AGX::IPFEncoderGen4<kAGXRevHAL300>::ScissorBits const&,AGX::IPFEncoderGen4<kAGXRevHAL300>::ScissorBits const&,AGX::IPFEncoderGen4<kAGXRevHAL300>::ScissorBits const&,AGX::IPFEncoderGen4<kAGXRevHAL300>::ScissorBits const&,AGX::IPFEncoderGen4<kAGXRevHAL300>::ScissorBits const&,AGX::IPFEncoderGen4<kAGXRevHAL300>::ScissorBits const&,AGX::IPFEncoderGen4<kAGXRevHAL300>::ScissorBits const&,AGX::IPFEncoderGen4<kAGXRevHAL300>::ScissorBits const&,AGX::IPFEncoderGen4<kAGXRevHAL300>::ScissorBits const&,AGX::IPFEncoderGen4<kAGXRevHAL300>::ScissorBits const&,AGX::IPFEncoderGen4<kAGXRevHAL300>::ScissorBits const&,AGX::IPFEncoderGen4<kAGXRevHAL300>::ScissorBits const&,AGX::IPFEncoderGen4<kAGXRevHAL300>::ScissorBits const&,AGX::IPFEncoderGen4<kAGXRevHAL300>::ScissorBits const&,AGX::IPFEncoderGen4<kAGXRevHAL300>::ScissorBits const&>,std::tuple<unsigned int const&,AGX::IPFEncoderGen4<kAGXRevHAL300>::ScissorBits const&,AGX::IPFEncoderGen4<kAGXRevHAL300>::ScissorBits const&,AGX::IPFEncoderGen4<kAGXRevHAL300>::ScissorBits const&,AGX::IPFEncoderGen4<kAGXRevHAL300>::ScissorBits const&,AGX::IPFEncoderGen4<kAGXRevHAL300>::ScissorBits const&,AGX::IPFEncoderGen4<kAGXRevHAL300>::ScissorBits const&,AGX::IPFEncoderGen4<kAGXRevHAL300>::ScissorBits const&,AGX::IPFEncoderGen4<kAGXRevHAL300>::ScissorBits const&,AGX::IPFEncoderGen4<kAGXRevHAL300>::ScissorBits const&,AGX::IPFEncoderGen4<kAGXRevHAL300>::ScissorBits const&,AGX::IPFEncoderGen4<kAGXRevHAL300>::ScissorBits const&,AGX::IPFEncoderGen4<kAGXRevHAL300>::ScissorBits const&,AGX::IPFEncoderGen4<kAGXRevHAL300>::ScissorBits const&,AGX::IPFEncoderGen4<kAGXRevHAL300>::ScissorBits const&,AGX::IPFEncoderGen4<kAGXRevHAL300>::ScissorBits const&,AGX::IPFEncoderGen4<kAGXRevHAL300>::ScissorBits const&>>(void *a1, void *a2)
{
  v2 = a1[12];
  v3 = a2[12];
  if (*v2 < *v3)
  {
    return 1;
  }

  if (*v3 < *v2)
  {
    return 0;
  }

  v5 = v2[1];
  v6 = v3[1];
  if (v5 < v6)
  {
    return 1;
  }

  if (v6 < v5)
  {
    return 0;
  }

  v7 = v2[2];
  v8 = v3[2];
  if (v7 < v8)
  {
    return 1;
  }

  if (v8 >= v7)
  {
    v9 = v2[3];
    v10 = v3[3];
    v11 = v9 >= v10;
    v12 = v9 < v10;
    if (!v11)
    {
      return v12;
    }
  }

  v13 = v3[2];
  v14 = v2[2];
  if (v13 < v14 || v14 >= v13 && v3[3] < v2[3])
  {
    return 0;
  }

  v15 = a1[13];
  v16 = a2[13];
  if (*v15 < *v16)
  {
    return 1;
  }

  if (*v16 < *v15)
  {
    return 0;
  }

  v17 = v15[1];
  v18 = v16[1];
  if (v17 < v18)
  {
    return 1;
  }

  if (v18 < v17)
  {
    return 0;
  }

  v19 = v15[2];
  v20 = v16[2];
  if (v19 < v20)
  {
    return 1;
  }

  if (v20 < v19)
  {
    return 0;
  }

  v21 = v15[3];
  v22 = v16[3];
  if (v21 < v22)
  {
    return 1;
  }

  if (v22 < v21)
  {
    return 0;
  }

  return std::__tuple_less<3ul>::operator()[abi:nn200100]<std::tuple<unsigned int const&,AGX::IPFEncoderGen4<kAGXRevHAL300>::ScissorBits const&,AGX::IPFEncoderGen4<kAGXRevHAL300>::ScissorBits const&,AGX::IPFEncoderGen4<kAGXRevHAL300>::ScissorBits const&,AGX::IPFEncoderGen4<kAGXRevHAL300>::ScissorBits const&,AGX::IPFEncoderGen4<kAGXRevHAL300>::ScissorBits const&,AGX::IPFEncoderGen4<kAGXRevHAL300>::ScissorBits const&,AGX::IPFEncoderGen4<kAGXRevHAL300>::ScissorBits const&,AGX::IPFEncoderGen4<kAGXRevHAL300>::ScissorBits const&,AGX::IPFEncoderGen4<kAGXRevHAL300>::ScissorBits const&,AGX::IPFEncoderGen4<kAGXRevHAL300>::ScissorBits const&,AGX::IPFEncoderGen4<kAGXRevHAL300>::ScissorBits const&,AGX::IPFEncoderGen4<kAGXRevHAL300>::ScissorBits const&,AGX::IPFEncoderGen4<kAGXRevHAL300>::ScissorBits const&,AGX::IPFEncoderGen4<kAGXRevHAL300>::ScissorBits const&,AGX::IPFEncoderGen4<kAGXRevHAL300>::ScissorBits const&,AGX::IPFEncoderGen4<kAGXRevHAL300>::ScissorBits const&>,std::tuple<unsigned int const&,AGX::IPFEncoderGen4<kAGXRevHAL300>::ScissorBits const&,AGX::IPFEncoderGen4<kAGXRevHAL300>::ScissorBits const&,AGX::IPFEncoderGen4<kAGXRevHAL300>::ScissorBits const&,AGX::IPFEncoderGen4<kAGXRevHAL300>::ScissorBits const&,AGX::IPFEncoderGen4<kAGXRevHAL300>::ScissorBits const&,AGX::IPFEncoderGen4<kAGXRevHAL300>::ScissorBits const&,AGX::IPFEncoderGen4<kAGXRevHAL300>::ScissorBits const&,AGX::IPFEncoderGen4<kAGXRevHAL300>::ScissorBits const&,AGX::IPFEncoderGen4<kAGXRevHAL300>::ScissorBits const&,AGX::IPFEncoderGen4<kAGXRevHAL300>::ScissorBits const&,AGX::IPFEncoderGen4<kAGXRevHAL300>::ScissorBits const&,AGX::IPFEncoderGen4<kAGXRevHAL300>::ScissorBits const&,AGX::IPFEncoderGen4<kAGXRevHAL300>::ScissorBits const&,AGX::IPFEncoderGen4<kAGXRevHAL300>::ScissorBits const&,AGX::IPFEncoderGen4<kAGXRevHAL300>::ScissorBits const&,AGX::IPFEncoderGen4<kAGXRevHAL300>::ScissorBits const&>>(a1, a2);
}

BOOL std::__tuple_less<3ul>::operator()[abi:nn200100]<std::tuple<unsigned int const&,AGX::IPFEncoderGen4<kAGXRevHAL300>::ScissorBits const&,AGX::IPFEncoderGen4<kAGXRevHAL300>::ScissorBits const&,AGX::IPFEncoderGen4<kAGXRevHAL300>::ScissorBits const&,AGX::IPFEncoderGen4<kAGXRevHAL300>::ScissorBits const&,AGX::IPFEncoderGen4<kAGXRevHAL300>::ScissorBits const&,AGX::IPFEncoderGen4<kAGXRevHAL300>::ScissorBits const&,AGX::IPFEncoderGen4<kAGXRevHAL300>::ScissorBits const&,AGX::IPFEncoderGen4<kAGXRevHAL300>::ScissorBits const&,AGX::IPFEncoderGen4<kAGXRevHAL300>::ScissorBits const&,AGX::IPFEncoderGen4<kAGXRevHAL300>::ScissorBits const&,AGX::IPFEncoderGen4<kAGXRevHAL300>::ScissorBits const&,AGX::IPFEncoderGen4<kAGXRevHAL300>::ScissorBits const&,AGX::IPFEncoderGen4<kAGXRevHAL300>::ScissorBits const&,AGX::IPFEncoderGen4<kAGXRevHAL300>::ScissorBits const&,AGX::IPFEncoderGen4<kAGXRevHAL300>::ScissorBits const&,AGX::IPFEncoderGen4<kAGXRevHAL300>::ScissorBits const&>,std::tuple<unsigned int const&,AGX::IPFEncoderGen4<kAGXRevHAL300>::ScissorBits const&,AGX::IPFEncoderGen4<kAGXRevHAL300>::ScissorBits const&,AGX::IPFEncoderGen4<kAGXRevHAL300>::ScissorBits const&,AGX::IPFEncoderGen4<kAGXRevHAL300>::ScissorBits const&,AGX::IPFEncoderGen4<kAGXRevHAL300>::ScissorBits const&,AGX::IPFEncoderGen4<kAGXRevHAL300>::ScissorBits const&,AGX::IPFEncoderGen4<kAGXRevHAL300>::ScissorBits const&,AGX::IPFEncoderGen4<kAGXRevHAL300>::ScissorBits const&,AGX::IPFEncoderGen4<kAGXRevHAL300>::ScissorBits const&,AGX::IPFEncoderGen4<kAGXRevHAL300>::ScissorBits const&,AGX::IPFEncoderGen4<kAGXRevHAL300>::ScissorBits const&,AGX::IPFEncoderGen4<kAGXRevHAL300>::ScissorBits const&,AGX::IPFEncoderGen4<kAGXRevHAL300>::ScissorBits const&,AGX::IPFEncoderGen4<kAGXRevHAL300>::ScissorBits const&,AGX::IPFEncoderGen4<kAGXRevHAL300>::ScissorBits const&,AGX::IPFEncoderGen4<kAGXRevHAL300>::ScissorBits const&>>(void *a1, void *a2)
{
  v2 = a1[14];
  v3 = a2[14];
  if (*v2 < *v3)
  {
    return 1;
  }

  if (*v3 < *v2)
  {
    return 0;
  }

  v5 = v2[1];
  v6 = v3[1];
  if (v5 < v6)
  {
    return 1;
  }

  if (v6 < v5)
  {
    return 0;
  }

  v7 = v2[2];
  v8 = v3[2];
  if (v7 < v8)
  {
    return 1;
  }

  if (v8 >= v7)
  {
    v9 = v2[3];
    v10 = v3[3];
    v11 = v9 >= v10;
    v12 = v9 < v10;
    if (!v11)
    {
      return v12;
    }
  }

  v13 = v3[2];
  v14 = v2[2];
  if (v13 < v14 || v14 >= v13 && v3[3] < v2[3])
  {
    return 0;
  }

  v15 = a1[15];
  v16 = a2[15];
  if (*v15 < *v16)
  {
    return 1;
  }

  if (*v16 < *v15)
  {
    return 0;
  }

  v17 = v15[1];
  v18 = v16[1];
  if (v17 < v18)
  {
    return 1;
  }

  if (v18 < v17)
  {
    return 0;
  }

  v19 = v15[2];
  v20 = v16[2];
  if (v19 < v20)
  {
    return 1;
  }

  if (v20 < v19)
  {
    return 0;
  }

  v21 = v15[3];
  v22 = v16[3];
  if (v21 < v22)
  {
    return 1;
  }

  if (v22 < v21)
  {
    return 0;
  }

  v23 = a1[16];
  v24 = a2[16];
  if (*v23 < *v24)
  {
    return 1;
  }

  if (*v24 < *v23)
  {
    return 0;
  }

  v25 = v23[1];
  v26 = v24[1];
  if (v25 < v26)
  {
    return 1;
  }

  if (v26 < v25)
  {
    return 0;
  }

  v27 = v23[2];
  v28 = v24[2];
  if (v27 < v28)
  {
    return 1;
  }

  return v28 >= v27 && v23[3] < v24[3];
}

uint64_t AGX::Device<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses>::getScissorBuffer(uint64_t a1, uint64_t a2, uint64_t a3)
{
  os_unfair_lock_lock((a1 + 16824));
  v6 = *(a1 + 16856);
  v9[0] = MEMORY[0x29EDCA5F8];
  v9[1] = 3221225472;
  v10 = ___ZN3AGX20DeviceInternalBufferINS_21ScissorBitsBufferInfoEE13getBufferInfoEjP15MTLResourceList_block_invoke;
  v11 = &unk_29F344258;
  v12 = a2;
  os_unfair_lock_lock((v6 + 48));
  if (!(*(v6 + 32) >> 20))
  {
    *(v6 + 32) = 0x100000;
    AGX::DeviceInternalBuffer<AGX::DepthBiasBitsBufferInfo>::grow(v6, 0x100000u);
  }

  v7 = *(v6 + 40);
  (v10)(v9, *(v6 + 8));
  os_unfair_lock_unlock((v6 + 48));
  if (a3)
  {
    IOGPUResourceListAddResource();
  }

  os_unfair_lock_unlock((a1 + 16824));
  return v7;
}

void sub_29CCCE760(_Unwind_Exception *a1)
{
  os_unfair_lock_unlock(v2 + 12);
  os_unfair_lock_unlock((v1 + v3));
  _Unwind_Resume(a1);
}

void AGX::Device<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses>::resetScissorBuffer(uint64_t a1)
{
  os_unfair_lock_lock((a1 + 16824));
  std::__tree<AGX::Mempool<16u,0u,true,0u,0u,unsigned long long>::FreeIntervalList::Interval,AGX::Mempool<16u,0u,true,0u,0u,unsigned long long>::FreeIntervalList::IntervalRangeComparator,std::allocator<AGX::Mempool<16u,0u,true,0u,0u,unsigned long long>::FreeIntervalList::Interval>>::destroy(*(a1 + 16840));
  *(a1 + 16832) = a1 + 16840;
  *(a1 + 16840) = 0u;
  v2 = *(a1 + 16856);
  os_unfair_lock_lock((v2 + 48));
  *(v2 + 32) = 0;
  v3 = *(v2 + 8);
  *(v2 + 8) = 0;
  os_unfair_lock_unlock((v2 + 48));

  *(a1 + 16864) = 0;

  os_unfair_lock_unlock((a1 + 16824));
}

void AGX::Device<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses>::registerConstantSamplerList(uint64_t a1, unint64_t ***a2)
{
  v4 = *a2;
  v5 = a2[1];
  if (*a2 != v5)
  {
    v6 = *(a1 + 16752);
    do
    {
      v8 = *v4++;
      v7 = v8;
      v9 = *v8 & 0xF03FFFFFFFFFFFFFLL;
      if (v6)
      {
        v9 |= 0xF80000000000000uLL;
      }

      *v7 = v9;
    }

    while (v4 != v5);
  }

  os_unfair_lock_lock((a1 + 16696));
  v10 = *(a1 + 16736);
  v11 = *(a1 + 16744);
  if (v10 >= v11)
  {
    v13 = *(a1 + 16728);
    v14 = v10 - v13;
    v15 = (v10 - v13) >> 3;
    v16 = v15 + 1;
    if ((v15 + 1) >> 61)
    {
      std::__throw_bad_array_new_length[abi:nn200100]();
    }

    v17 = v11 - v13;
    if (v17 >> 2 > v16)
    {
      v16 = v17 >> 2;
    }

    if (v17 >= 0x7FFFFFFFFFFFFFF8)
    {
      v18 = 0x1FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v18 = v16;
    }

    if (v18)
    {
      if (!(v18 >> 61))
      {
        operator new();
      }

      std::__throw_bad_array_new_length[abi:nn200100]();
    }

    v19 = (v10 - v13) >> 3;
    v20 = (8 * v15);
    v21 = (8 * v15 - 8 * v19);
    *v20 = a2;
    v12 = v20 + 1;
    memcpy(v21, v13, v14);
    *(a1 + 16728) = v21;
    *(a1 + 16736) = v12;
    *(a1 + 16744) = 0;
    if (v13)
    {
      operator delete(v13);
    }
  }

  else
  {
    *v10 = a2;
    v12 = v10 + 8;
  }

  *(a1 + 16736) = v12;

  os_unfair_lock_unlock((a1 + 16696));
}

void AGX::Device<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses>::allocateBindlessConstantSampler(void *a1, uint64_t a2, unsigned __int16 *a3)
{
  *a1 = 0;
  a1[1] = 0;
  os_unfair_lock_lock((a2 + 16696));
  v6 = *(a2 + 16768);
  if (!v6)
  {
    goto LABEL_17;
  }

  v7 = a2 + 16768;
  do
  {
    v8 = AGX::SamplerDescriptor::operator<((v6 + 32), a3);
    if (v8)
    {
      v9 = 8;
    }

    else
    {
      v9 = 0;
    }

    if (!v8)
    {
      v7 = v6;
    }

    v6 = *(v6 + v9);
  }

  while (v6);
  if (v7 == a2 + 16768 || AGX::SamplerDescriptor::operator<(a3, (v7 + 32)))
  {
    goto LABEL_17;
  }

  v10 = *(v7 + 112);
  if (!v10 || (v11 = std::__shared_weak_count::lock(v10)) == 0)
  {
    *a1 = 0;
    a1[1] = 0;
    goto LABEL_17;
  }

  v12 = *(v7 + 104);
  *a1 = v12;
  a1[1] = v11;
  if (!v12)
  {
LABEL_17:
    operator new();
  }

  os_unfair_lock_unlock((a2 + 16696));
}

void sub_29CCCEC38(_Unwind_Exception *a1)
{
  os_unfair_lock_unlock((v1 + v3));
  std::shared_ptr<AGX::HAL300::Sampler>::~shared_ptr[abi:nn200100](v2);
  _Unwind_Resume(a1);
}

void std::__shared_ptr_emplace<AGX::HAL300::Sampler>::__on_zero_shared(uint64_t a1)
{
  if (*(a1 + 120) && (*(a1 + 136) & 1) == 0)
  {
    v2 = *(a1 + 128);
    os_unfair_lock_lock(v2 + 194);
    AGX::Mempool<16u,0u,true,0u,0u,unsigned long long>::FreeIntervalList::push(*(a1 + 128) + 720, *(a1 + 120), *(a1 + 120) + *(a1 + 124) - 1);
    os_unfair_lock_unlock(v2 + 194);
  }

  if (*(a1 + 95) < 0)
  {
    v3 = *(a1 + 72);

    operator delete(v3);
  }
}

void std::__shared_ptr_emplace<AGX::HAL300::Sampler>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_2A23F5928;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x29ED520D0);
}

uint64_t areDriverUberShadersDisabled(void)
{
  {
    keyExistsAndHasValidFormat = 0;
    v1 = *MEMORY[0x29EDB8ED8];
    v2 = CFStringCreateWithCString(*MEMORY[0x29EDB8ED8], "DisableDriverUberVariants", 0x8000100u);
    if (v2)
    {
      v3 = CFStringCreateWithCString(v1, "com.apple.Metal", 0x8000100u);
      if (v3)
      {
        AppBooleanValue = CFPreferencesGetAppBooleanValue(v2, v3, &keyExistsAndHasValidFormat);
        CFRelease(v2);
        CFRelease(v3);
        if (AppBooleanValue)
        {
          v5 = keyExistsAndHasValidFormat == 0;
        }

        else
        {
          v5 = 1;
        }

        v6 = !v5;
        goto LABEL_14;
      }

      CFRelease(v2);
    }

    v6 = 0;
LABEL_14:
    areDriverUberShadersDisabled(void)::disableUberVariants = v6;
  }

  return areDriverUberShadersDisabled(void)::disableUberVariants;
}

uint64_t AGX::Device<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses>::findOrCreateDriverProgramVariant<AGX::HAL300::BackgroundObjectProgramVariant,AGX::BackgroundObjectProgramKey,AGX::HAL300::BackgroundObjectProgram>(uint64_t a1, os_unfair_lock_s *a2, uint64_t a3, uint64_t a4)
{
  v14 = 0;
  v15 = &v14;
  v16 = 0x2020000000;
  v17 = 0;
  v13 = 0;
  v7 = AGX::Program<AGX::HAL300::BackgroundObjectProgramVariant,AGX::BackgroundObjectProgramKey,AGX::HAL300::IndirectArgumentLayout,AGXG18PFamilyIndirectArgumentBufferLayout>::getOrCreateVariantEntry(a2, a3, &v13);
  v8 = v7;
  if (v13 == 1)
  {
    if (**MEMORY[0x29EDC56B0])
    {
      IOGPUDeviceTraceEvent();
    }

    v9 = *(a1 + 7160);
    v12[0] = MEMORY[0x29EDCA5F8];
    v12[1] = 3221225472;
    v12[2] = ___ZN3AGX6DeviceINS_6HAL3008EncodersENS1_7ClassesENS1_10ObjClassesEE32findOrCreateDriverProgramVariantINS1_30BackgroundObjectProgramVariantENS_26BackgroundObjectProgramKeyENS1_23BackgroundObjectProgramEEEPT_PT1_RKT0_P7NSArrayIPU27objcproto16MTLBinaryArchive11objc_objectE_block_invoke;
    v12[3] = &unk_29F340F80;
    v12[4] = &v14;
    v12[5] = a1;
    v12[6] = a3;
    v12[7] = v8;
    AGX::Compiler::compileProgram<AGX::BackgroundObjectProgramKey>(v9, a3, a4, v12, 0);
    v10 = v15[3];
  }

  else
  {
    dispatch_group_wait(*v7, 0xFFFFFFFFFFFFFFFFLL);
    v10 = v8[1];
    v15[3] = v10;
  }

  if (v10)
  {
    _Block_object_dispose(&v14, 8);
    return v10;
  }

  else
  {
    result = MTLReleaseAssertionFailure();
    __break(1u);
  }

  return result;
}

uint64_t AGX::Program<AGX::HAL300::BackgroundObjectProgramVariant,AGX::BackgroundObjectProgramKey,AGX::HAL300::IndirectArgumentLayout,AGXG18PFamilyIndirectArgumentBufferLayout>::getOrCreateVariantEntry(os_unfair_lock_s *a1, uint64_t a2, _BYTE *a3)
{
  *a3 = 0;
  os_unfair_lock_lock(a1 + 222);
  v6 = VectorMap<AGX::BackgroundObjectProgramKey,AGX::ProgramVariantEntry<AGX::HAL300::BackgroundObjectProgramVariant>,4u>::operator[](a1, a2);
  v7 = v6;
  if (!*v6)
  {
    v10 = dispatch_group_create();
    *v7 = v10;
LABEL_7:
    dispatch_group_enter(v10);
    *a3 = 1;
    goto LABEL_8;
  }

  if (*(v6 + 40) == 1)
  {
    v9 = (v6 + 8);
    v8 = *(v6 + 8);
    if (v8)
    {
      (*(*v8 + 8))(v8);
    }

    *v9 = 0;
    *(v7 + 16) = 0;

    *(v7 + 24) = 0;
    *(v7 + 32) = 0;
    *(v7 + 40) = 0;
    v10 = *v7;
    goto LABEL_7;
  }

LABEL_8:
  os_unfair_lock_unlock(a1 + 222);
  return v7;
}

void ___ZN3AGX6DeviceINS_6HAL3008EncodersENS1_7ClassesENS1_10ObjClassesEE32findOrCreateDriverProgramVariantINS1_30BackgroundObjectProgramVariantENS_26BackgroundObjectProgramKeyENS1_23BackgroundObjectProgramEEEPT_PT1_RKT0_P7NSArrayIPU27objcproto16MTLBinaryArchive11objc_objectE_block_invoke(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (!a3)
  {
    operator new();
  }

  v5 = "MTLCompilerErrorTimeout";
  v6 = "UnknownErrorCode";
  if (a3 == 2)
  {
    v6 = "MTLCompilerErrorCompilationError";
  }

  if (a3 != 3)
  {
    v5 = v6;
  }

  if (a3 == 1)
  {
    v7 = "MTLCompilerErrorFatalError";
  }

  else
  {
    v7 = v5;
  }

  v12 = 0;
  v13 = 0;
  AGX::BackgroundObjectProgramKey::serialize(*(a1 + 48), &v13, &v12);
  v8 = a4;
  v9 = v7;
  v10 = v12;
  v11 = v13;
  _ZZZN3AGX6DeviceINS_6HAL3008EncodersENS1_7ClassesENS1_10ObjClassesEE30findOrCreateBlitProgramVariantERNS_20BlitVertexProgramKeyEEUb_ENKUlvE_clB14_AGX__Crashed_Ev();
}

void sub_29CCCF2E0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  AGX::ProgramBindingRemap<AGX::HAL300::Encoders,AGX::HAL300::Classes>::~ProgramBindingRemap(va);
  MEMORY[0x29ED520D0](v5, v4);
  _Unwind_Resume(a1);
}

void AGX::Compiler::compileProgram<AGX::BackgroundObjectProgramKey>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, int a5)
{
  v55 = *MEMORY[0x29EDCA608];
  v10 = *(a1 + 8);
  v11 = *(a2 + 72);
  v12 = v11 & 0x10000000 | (((3 - __clz(1 << ((v11 >> 10) & 3) << 24)) & 3) << 10) | 0x400000;
  v13 = *(a2 + 80);
  v14 = vorrq_s8(*(a2 + 40), *(a2 + 56));
  v15 = vorr_s8(*v14.i8, *&vextq_s8(v14, v14, 8uLL));
  if ((v13 != 0x10000000000 || *&v15 != 0 || v12 != v11) && (v15.i32[0] | v15.i32[1] | v11 || v13 != 0))
  {
    v10 = 0;
  }

  v19 = objc_opt_new();
  [v19 setSync:a5 ^ 1u];
  [v19 setPipelineCache:v10];
  [v19 setBinaryArchives:a3];
  v38 = MEMORY[0x29EDCA5F8];
  v39 = 3221225472;
  v40 = ___ZN3AGX8Compiler14compileProgramINS_26BackgroundObjectProgramKeyEEEvRKT_P7NSArrayIPU27objcproto16MTLBinaryArchive11objc_objectEU13block_pointerFvRK20AGCDeserializedReply16MTLCompilerErrorP8NSStringEb_block_invoke;
  v41 = &unk_29F342280;
  v42 = a4;
  v20 = *(a1 + 24);
  if (v20 && *(v20 + 120) == 1)
  {
    v21 = [objc_msgSend(v19 binaryArchives];
    v22 = 0x200000000000;
    if (!v21)
    {
      v22 = 1;
    }

    atomic_fetch_or(v20, v22);
    v23 = *(a1 + 24);
    v24 = [v19 destinationBinaryArchive];
    v25 = 0x400000000000;
    if (!v24)
    {
      v25 = 1;
    }

    atomic_fetch_or(v23, v25);
  }

  if ([v19 destinationBinaryArchive])
  {
    {
      AGX::Compiler::shouldUseAIRNTInterfacesForBinaryArchiveAddRequests(void)::envDisable = 0;
    }

    if (AGX::Compiler::shouldUseAIRNTInterfacesForBinaryArchiveAddRequests(void)::envDisable == 1)
    {
      [v19 setUseAIRNTInterfaces:0];
    }
  }

  v46 = 0;
  v47 = 0;
  AGX::BackgroundObjectProgramKey::serialize(a2, &v47, &v46);
  v26 = dispatch_data_create(v47, v46, 0, 0);
  [v19 setDriverKeyData:v26];
  if ([v19 airScript])
  {
    v27 = [v19 airScript];
    v44 = 0;
    v45 = 0;
    object = dispatch_data_create_map(v27, &v44, &v45);
    v28 = v44;
    v29 = *v44;
    CC_SHA256_Init(&c);
    (**a2)(a2, &c);
    *len = 0;
    data = 0;
    if (AGX::GetSerializedVertexFormat((v28 + v29), &data, len, v30, v31))
    {
      v32 = data;
      CC_SHA256_Update(&c, data, len[0]);
      free(v32);
    }

    CC_SHA256_Final(md, &c);
    dispatch_release(object);
    *c.count = *md;
    *&c.hash[2] = v51;
    [v19 setVendorPluginFunctionId:&c];
  }

  *c.count = MEMORY[0x29EDCA5F8];
  *c.hash = 3221225472;
  *&c.hash[2] = ___ZN3AGX8Compiler14compileProgramINS_26BackgroundObjectProgramKeyE20AGCDeserializedReplyEEvRKT_P29MTLCompileFunctionRequestDataPU27objcproto16MTL4CompilerTask11objc_objectU13block_pointerFvRKT0_PU27objcproto16OS_dispatch_data8NSObjectSG_SG_SG_SG_16MTLCompilerErrorP8NSStringyE_block_invoke;
  *&c.hash[4] = &unk_29F3422D0;
  *&c.hash[6] = v19;
  *c.wbuf = &v38;
  if ([v19 function])
  {
    v33 = mach_absolute_time();
    v34 = *a1;
    *md = MEMORY[0x29EDCA5F8];
    *&md[8] = 3221225472;
    *&v51 = ___ZN3AGX8Compiler14compileProgramINS_26BackgroundObjectProgramKeyE20AGCDeserializedReplyEEvRKT_P29MTLCompileFunctionRequestDataPU27objcproto16MTL4CompilerTask11objc_objectU13block_pointerFvRKT0_PU27objcproto16OS_dispatch_data8NSObjectSG_SG_SG_SG_16MTLCompilerErrorP8NSStringyE_block_invoke_4;
    *(&v51 + 1) = &unk_29F342320;
    p_c = &c;
    v53 = v33;
    [v34 compileFunctionRequest:v19 compilerTask:0 completionHandler:md];
  }

  else
  {
    if ([v19 frameworkData] || objc_msgSend(v19, "pipelineOptions"))
    {
      AGX::Device<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses>::alertCommandBufferActivityStart(void)::{lambda(void)#1}::operator()[abi:[AGX] Failed assertion _previousValue _ 2147483647_]();
    }

    *md = MEMORY[0x29EDCA5F8];
    *&md[8] = 3221225472;
    *&v51 = ___ZN3AGX8Compiler14compileProgramINS_26BackgroundObjectProgramKeyE20AGCDeserializedReplyEEvRKT_P29MTLCompileFunctionRequestDataPU27objcproto16MTL4CompilerTask11objc_objectU13block_pointerFvRKT0_PU27objcproto16OS_dispatch_data8NSObjectSG_SG_SG_SG_16MTLCompilerErrorP8NSStringyE_block_invoke_3;
    *(&v51 + 1) = &unk_29F3422F8;
    p_c = &c;
    v35 = [objc_msgSend(v19 "binaryArchives")] == 0;
    v36 = *a1;
    v37 = [v19 driverKeyData];
    if (v35)
    {
      [v36 compileRequest:v37 pipelineCache:objc_msgSend(v19 sync:"pipelineCache") completionHandler:{objc_msgSend(v19, "sync"), md}];
    }

    else
    {
      [v36 compileRequest:v37 binaryArchives:objc_msgSend(v19 failOnBinaryArchiveMiss:"binaryArchives") pipelineCache:0 sync:objc_msgSend(v19 completionHandler:{"pipelineCache"), objc_msgSend(v19, "sync"), md}];
    }
  }

  dispatch_release(v26);
}

uint64_t ___ZN3AGX8Compiler14compileProgramINS_26BackgroundObjectProgramKeyEEEvRKT_P7NSArrayIPU27objcproto16MTLBinaryArchive11objc_objectEU13block_pointerFvRK20AGCDeserializedReply16MTLCompilerErrorP8NSStringEb_block_invoke(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  if (a5)
  {
    AGX::Device<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses>::alertCommandBufferActivityStart(void)::{lambda(void)#1}::operator()[abi:[AGX] Failed assertion _previousValue _ 2147483647_]();
  }

  v5 = *(*(a1 + 32) + 16);

  return v5();
}

void ___ZN3AGX8Compiler14compileProgramINS_26BackgroundObjectProgramKeyE20AGCDeserializedReplyEEvRKT_P29MTLCompileFunctionRequestDataPU27objcproto16MTL4CompilerTask11objc_objectU13block_pointerFvRKT0_PU27objcproto16OS_dispatch_data8NSObjectSG_SG_SG_SG_16MTLCompilerErrorP8NSStringyE_block_invoke(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  v14[0] = MEMORY[0x29EDCA5F8];
  v14[1] = 3221225472;
  v15 = ___ZN3AGX8Compiler14compileProgramINS_26BackgroundObjectProgramKeyE20AGCDeserializedReplyEEvRKT_P29MTLCompileFunctionRequestDataPU27objcproto16MTL4CompilerTask11objc_objectU13block_pointerFvRKT0_PU27objcproto16OS_dispatch_data8NSObjectSG_SG_SG_SG_16MTLCompilerErrorP8NSStringyE_block_invoke_2;
  v16 = &unk_29F3422A8;
  v17 = a9;
  v18 = a3;
  v19 = a4;
  v20 = a5;
  v21 = a6;
  v22 = a7;
  v12 = a1 + 32;
  v10 = *(a1 + 32);
  v11 = *(v12 + 8);
  v23 = a8;
  v24 = v11;
  v25 = a2;
  v26 = a10;
  if ([v10 sync])
  {
    v15(v14);
  }

  else
  {
    global_queue = dispatch_get_global_queue(0, 0);
    dispatch_async(global_queue, v14);
  }
}

uint64_t ___ZN3AGX8Compiler14compileProgramINS_26BackgroundObjectProgramKeyE20AGCDeserializedReplyEEvRKT_P29MTLCompileFunctionRequestDataPU27objcproto16MTL4CompilerTask11objc_objectU13block_pointerFvRKT0_PU27objcproto16OS_dispatch_data8NSObjectSG_SG_SG_SG_16MTLCompilerErrorP8NSStringyE_block_invoke_4(uint64_t a1, void *a2)
{
  mach_absolute_time();
  if (getTimebaseInfo(void)::once != -1)
  {
    dispatch_once(&getTimebaseInfo(void)::once, &__block_literal_global_11354);
  }

  return (*(*(a1 + 32) + 16))(*(a1 + 32), *a2);
}

void ___ZN3AGX8Compiler14compileProgramINS_26BackgroundObjectProgramKeyE20AGCDeserializedReplyEEvRKT_P29MTLCompileFunctionRequestDataPU27objcproto16MTL4CompilerTask11objc_objectU13block_pointerFvRKT0_PU27objcproto16OS_dispatch_data8NSObjectSG_SG_SG_SG_16MTLCompilerErrorP8NSStringyE_block_invoke_2(void *a1)
{
  size_ptr = 0;
  buffer_ptr = 0;
  v2 = a1[12];
  AGCDeserializedReply::AGCDeserializedReply(v5);
  if (v2 || (v4 = a1[5]) == 0)
  {
    v3 = 0;
  }

  else
  {
    v3 = dispatch_data_create_map(v4, &buffer_ptr, &size_ptr);
    AGCDeserializedReply::deserialize(v5, buffer_ptr, size_ptr);
  }

  (*(a1[11] + 16))(a1[11], v5);
  if (v3)
  {
    dispatch_release(v3);
  }

  AGCDeserializedReply::~AGCDeserializedReply(v5);
}

void sub_29CCCFAD0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  AGCDeserializedReply::~AGCDeserializedReply(va);
  _Unwind_Resume(a1);
}

void AGX::HAL300::BackgroundObjectProgramVariant::~BackgroundObjectProgramVariant(AGX::HAL300::BackgroundObjectProgramVariant *this)
{
  *this = &unk_2A23F7750;
  AGX::ProgramVariantESLState<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::UserVertexArgumentTableLayout,true,8ul>::~ProgramVariantESLState(this + 223);
  AGX::ProgramVariant<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::BackgroundObjectArgumentTable,false,false,AGX::NoCombinedUserDriverArgumentTable>::~ProgramVariant(this);

  JUMPOUT(0x29ED520D0);
}

{
  *this = &unk_2A23F7750;
  AGX::ProgramVariantESLState<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::UserVertexArgumentTableLayout,true,8ul>::~ProgramVariantESLState(this + 223);

  AGX::ProgramVariant<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::BackgroundObjectArgumentTable,false,false,AGX::NoCombinedUserDriverArgumentTable>::~ProgramVariant(this);
}

unint64_t AGX::ProgramVariant<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::BackgroundObjectArgumentTable,false,false,AGX::NoCombinedUserDriverArgumentTable>::~ProgramVariant(unint64_t a1)
{
  *a1 = &unk_2A23F7E40;
  if (*(a1 + 984))
  {
    v2 = *(a1 + 992);
    v3 = *(v2 + 16);
    v47 = MEMORY[0x29EDCA5F8];
    v48 = 3221225472;
    v49 = ___ZN3AGX4HeapILb1EE14deallocateImplERKNS1_10AllocationE_block_invoke;
    v50 = &__block_descriptor_48_e5_v8__0l;
    v51 = v2;
    v52 = a1 + 960;
    dispatch_sync(v3, &v47);
    *(a1 + 985) = 0u;
    *(a1 + 960) = 0u;
    *(a1 + 976) = 0u;
  }

  if (*(a1 + 1032))
  {
    v4 = *(a1 + 1040);
    v5 = *(v4 + 16);
    v47 = MEMORY[0x29EDCA5F8];
    v48 = 3221225472;
    v49 = ___ZN3AGX4HeapILb1EE14deallocateImplERKNS1_10AllocationE_block_invoke;
    v50 = &__block_descriptor_48_e5_v8__0l;
    v51 = v4;
    v52 = a1 + 1008;
    dispatch_sync(v5, &v47);
    *(a1 + 1033) = 0u;
    *(a1 + 1008) = 0u;
    *(a1 + 1024) = 0u;
  }

  if (*(a1 + 1080))
  {
    v6 = *(a1 + 1088);
    v7 = *(v6 + 16);
    v47 = MEMORY[0x29EDCA5F8];
    v48 = 3221225472;
    v49 = ___ZN3AGX4HeapILb1EE14deallocateImplERKNS1_10AllocationE_block_invoke;
    v50 = &__block_descriptor_48_e5_v8__0l;
    v51 = v6;
    v52 = a1 + 1056;
    dispatch_sync(v7, &v47);
    *(a1 + 1081) = 0u;
    *(a1 + 1072) = 0u;
    *(a1 + 1056) = 0u;
  }

  if (*(a1 + 1128))
  {
    v8 = *(a1 + 1136);
    v9 = *(v8 + 16);
    v47 = MEMORY[0x29EDCA5F8];
    v48 = 3221225472;
    v49 = ___ZN3AGX4HeapILb1EE14deallocateImplERKNS1_10AllocationE_block_invoke;
    v50 = &__block_descriptor_48_e5_v8__0l;
    v51 = v8;
    v52 = a1 + 1104;
    dispatch_sync(v9, &v47);
    *(a1 + 1129) = 0u;
    *(a1 + 1120) = 0u;
    *(a1 + 1104) = 0u;
  }

  v10 = *(a1 + 8);
  if (v10)
  {
    AGX::Device<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses>::unregisterVariantEventInfo(v10, a1);
  }

  if (*(a1 + 1783) < 0)
  {
    operator delete(*(a1 + 1760));
  }

  v11 = *(a1 + 1736);
  if (v11)
  {
    *(a1 + 1744) = v11;
    operator delete(v11);
  }

  v12 = *(a1 + 1712);
  if (v12)
  {
    v13 = *(a1 + 1720);
    v14 = *(a1 + 1712);
    if (v13 != v12)
    {
      do
      {
        v15 = *(v13 - 1);
        v13 -= 3;
        if (v15 < 0)
        {
          operator delete(*v13);
        }
      }

      while (v13 != v12);
      v14 = *(a1 + 1712);
    }

    *(a1 + 1720) = v12;
    operator delete(v14);
  }

  std::__tree<AGX::Mempool<16u,0u,true,0u,0u,unsigned long long>::FreeIntervalList::Interval,AGX::Mempool<16u,0u,true,0u,0u,unsigned long long>::FreeIntervalList::IntervalRangeComparator,std::allocator<AGX::Mempool<16u,0u,true,0u,0u,unsigned long long>::FreeIntervalList::Interval>>::destroy(*(a1 + 1600));
  v16 = *(a1 + 1560);
  if (v16)
  {
    v17 = *(a1 + 1568);
    v18 = *(a1 + 1560);
    if (v17 != v16)
    {
      do
      {
        v19 = *(v17 - 8);
        if (v19 && !atomic_fetch_add(&v19->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
        {
          (v19->__on_zero_shared)(v19);
          std::__shared_weak_count::__release_weak(v19);
        }

        v17 -= 16;
      }

      while (v17 != v16);
      v18 = *(a1 + 1560);
    }

    *(a1 + 1568) = v16;
    operator delete(v18);
  }

  v20 = *(a1 + 1536);
  if (v20)
  {
    *(a1 + 1544) = v20;
    operator delete(v20);
  }

  v21 = *(a1 + 1512);
  if (v21)
  {
    *(a1 + 1520) = v21;
    operator delete(v21);
  }

  if (*(a1 + 1423) < 0)
  {
    operator delete(*(a1 + 1400));
    if ((*(a1 + 919) & 0x80000000) == 0)
    {
LABEL_38:
      if ((*(a1 + 887) & 0x80000000) == 0)
      {
        goto LABEL_39;
      }

      goto LABEL_92;
    }
  }

  else if ((*(a1 + 919) & 0x80000000) == 0)
  {
    goto LABEL_38;
  }

  operator delete(*(a1 + 896));
  if ((*(a1 + 887) & 0x80000000) == 0)
  {
LABEL_39:
    if ((*(a1 + 863) & 0x80000000) == 0)
    {
      goto LABEL_40;
    }

LABEL_93:
    operator delete(*(a1 + 840));
    if ((*(a1 + 839) & 0x80000000) == 0)
    {
      goto LABEL_41;
    }

    goto LABEL_94;
  }

LABEL_92:
  operator delete(*(a1 + 864));
  if (*(a1 + 863) < 0)
  {
    goto LABEL_93;
  }

LABEL_40:
  if ((*(a1 + 839) & 0x80000000) == 0)
  {
    goto LABEL_41;
  }

LABEL_94:
  operator delete(*(a1 + 816));
LABEL_41:
  std::__tree<AGX::Mempool<16u,0u,true,0u,0u,unsigned long long>::FreeIntervalList::Interval,AGX::Mempool<16u,0u,true,0u,0u,unsigned long long>::FreeIntervalList::IntervalRangeComparator,std::allocator<AGX::Mempool<16u,0u,true,0u,0u,unsigned long long>::FreeIntervalList::Interval>>::destroy(*(a1 + 544));
  v22 = *(a1 + 512);
  if (v22)
  {
    *(a1 + 520) = v22;
    operator delete(v22);
  }

  v23 = *(a1 + 472);
  if (v23)
  {
    *(a1 + 480) = v23;
    operator delete(v23);
  }

  v24 = *(a1 + 448);
  if (v24)
  {
    v25 = *(a1 + 456);
    v26 = *(a1 + 448);
    if (v25 != v24)
    {
      do
      {
        v27 = *(v25 - 24);
        if (v27)
        {
          *(v25 - 16) = v27;
          operator delete(v27);
        }

        v25 -= 32;
      }

      while (v25 != v24);
      v26 = *(a1 + 448);
    }

    *(a1 + 456) = v24;
    operator delete(v26);
  }

  v28 = *(a1 + 424);
  if (v28)
  {
    *(a1 + 432) = v28;
    operator delete(v28);
  }

  v29 = *(a1 + 328);
  if (v29)
  {
    *(a1 + 336) = v29;
    operator delete(v29);
  }

  v30 = *(a1 + 304);
  if (v30)
  {
    *(a1 + 312) = v30;
    operator delete(v30);
  }

  v31 = *(a1 + 280);
  if (v31)
  {
    *(a1 + 288) = v31;
    operator delete(v31);
  }

  v32 = *(a1 + 256);
  if (v32)
  {
    *(a1 + 264) = v32;
    operator delete(v32);
  }

  v33 = *(a1 + 216);
  if (v33)
  {
    *(a1 + 224) = v33;
    operator delete(v33);
  }

  v34 = *(a1 + 192);
  if (v34)
  {
    v35 = *(a1 + 200);
    v36 = *(a1 + 192);
    if (v35 != v34)
    {
      do
      {
        v37 = *(v35 - 24);
        if (v37)
        {
          *(v35 - 16) = v37;
          operator delete(v37);
        }

        v35 -= 32;
      }

      while (v35 != v34);
      v36 = *(a1 + 192);
    }

    *(a1 + 200) = v34;
    operator delete(v36);
  }

  v38 = *(a1 + 168);
  if (v38)
  {
    *(a1 + 176) = v38;
    operator delete(v38);
  }

  v39 = *(a1 + 144);
  if (v39)
  {
    *(a1 + 152) = v39;
    operator delete(v39);
  }

  v40 = *(a1 + 104);
  if (v40)
  {
    *(a1 + 112) = v40;
    operator delete(v40);
  }

  v41 = *(a1 + 80);
  if (v41)
  {
    v42 = *(a1 + 88);
    v43 = *(a1 + 80);
    if (v42 != v41)
    {
      do
      {
        v44 = *(v42 - 24);
        if (v44)
        {
          *(v42 - 16) = v44;
          operator delete(v44);
        }

        v42 -= 32;
      }

      while (v42 != v41);
      v43 = *(a1 + 80);
    }

    *(a1 + 88) = v41;
    operator delete(v43);
  }

  v45 = *(a1 + 56);
  if (v45)
  {
    *(a1 + 64) = v45;
    operator delete(v45);
  }

  return a1;
}

void AGX::Device<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses>::unregisterVariantEventInfo(uint64_t a1, unint64_t a2)
{
  os_unfair_lock_lock((a1 + 17144));
  v4 = *(a1 + 17160);
  if (v4)
  {
    v5 = vcnt_s8(v4);
    v5.i16[0] = vaddlv_u8(v5);
    if (v5.u32[0] > 1uLL)
    {
      v6 = a2;
      if (*&v4 <= a2)
      {
        v6 = a2 % *&v4;
      }
    }

    else
    {
      v6 = (*&v4 - 1) & a2;
    }

    v7 = *(a1 + 17152);
    v8 = *(v7 + 8 * v6);
    if (v8)
    {
      v9 = *v8;
      if (*v8)
      {
        v10 = *&v4 - 1;
        if (v5.u32[0] < 2uLL)
        {
          while (1)
          {
            v11 = v9[1];
            if (v11 == a2)
            {
              if (v9[2] == a2)
              {
                goto LABEL_22;
              }
            }

            else if ((v11 & v10) != v6)
            {
              goto LABEL_49;
            }

            v9 = *v9;
            if (!v9)
            {
              goto LABEL_49;
            }
          }
        }

        do
        {
          v12 = v9[1];
          if (v12 == a2)
          {
            if (v9[2] == a2)
            {
LABEL_22:
              if (v5.u32[0] > 1uLL)
              {
                if (*&v4 <= a2)
                {
                  a2 %= *&v4;
                }
              }

              else
              {
                a2 &= v10;
              }

              v13 = *(v7 + 8 * a2);
              do
              {
                v14 = v13;
                v13 = *v13;
              }

              while (v13 != v9);
              if (v14 == (a1 + 17168))
              {
                goto LABEL_39;
              }

              v15 = v14[1];
              if (v5.u32[0] > 1uLL)
              {
                if (v15 >= *&v4)
                {
                  v15 %= *&v4;
                }
              }

              else
              {
                v15 &= v10;
              }

              if (v15 != a2)
              {
LABEL_39:
                if (!*v9)
                {
                  goto LABEL_40;
                }

                v16 = *(*v9 + 8);
                if (v5.u32[0] > 1uLL)
                {
                  if (v16 >= *&v4)
                  {
                    v16 %= *&v4;
                  }
                }

                else
                {
                  v16 &= v10;
                }

                if (v16 != a2)
                {
LABEL_40:
                  *(v7 + 8 * a2) = 0;
                }
              }

              v17 = *v9;
              if (*v9)
              {
                v18 = *(v17 + 8);
                if (v5.u32[0] > 1uLL)
                {
                  if (v18 >= *&v4)
                  {
                    v18 %= *&v4;
                  }
                }

                else
                {
                  v18 &= v10;
                }

                if (v18 != a2)
                {
                  *(v7 + 8 * v18) = v14;
                  v17 = *v9;
                }
              }

              *v14 = v17;
              *v9 = 0;
              --*(a1 + 17176);
              operator delete(v9);
              break;
            }
          }

          else
          {
            if (v12 >= *&v4)
            {
              v12 %= *&v4;
            }

            if (v12 != v6)
            {
              break;
            }
          }

          v9 = *v9;
        }

        while (v9);
      }
    }
  }

LABEL_49:

  os_unfair_lock_unlock((a1 + 17144));
}

void CompileStatistics::~CompileStatistics(void **this)
{
  if (*(this + 167) < 0)
  {
    operator delete(this[18]);
  }

  v2 = this[15];
  if (v2)
  {
    this[16] = v2;
    operator delete(v2);
  }

  v3 = this[12];
  if (v3)
  {
    v4 = this[13];
    v5 = this[12];
    if (v4 != v3)
    {
      do
      {
        v6 = *(v4 - 1);
        v4 -= 3;
        if (v6 < 0)
        {
          operator delete(*v4);
        }
      }

      while (v4 != v3);
      v5 = this[12];
    }

    this[13] = v3;
    operator delete(v5);
  }
}

uint64_t AGX::SegmentedArgumentGatherer<(AGX::SegmentedArgumentGathererAlgorthim)1,unsigned int,AGX::NoCombinedUserDriverArgumentTable>::~SegmentedArgumentGatherer(uint64_t a1)
{
  v2 = *(a1 + 48);
  if (v2)
  {
    *(a1 + 56) = v2;
    operator delete(v2);
  }

  v3 = *(a1 + 24);
  if (v3)
  {
    v4 = *(a1 + 32);
    v5 = *(a1 + 24);
    if (v4 != v3)
    {
      do
      {
        v6 = *(v4 - 24);
        if (v6)
        {
          *(v4 - 16) = v6;
          operator delete(v6);
        }

        v4 -= 32;
      }

      while (v4 != v3);
      v5 = *(a1 + 24);
    }

    *(a1 + 32) = v3;
    operator delete(v5);
  }

  v7 = *a1;
  if (*a1)
  {
    *(a1 + 8) = v7;
    operator delete(v7);
  }

  return a1;
}

void AGX::ProgramVariant<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::BackgroundObjectArgumentTable,false,false,AGX::NoCombinedUserDriverArgumentTable>::~ProgramVariant(unint64_t a1)
{
  AGX::ProgramVariant<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::BackgroundObjectArgumentTable,false,false,AGX::NoCombinedUserDriverArgumentTable>::~ProgramVariant(a1);

  JUMPOUT(0x29ED520D0);
}

void AGX::BackgroundObjectProgramVariant<AGX::HAL300::Encoders,AGX::HAL300::Classes>::~BackgroundObjectProgramVariant(void *a1)
{
  *a1 = &unk_2A23F7750;
  AGX::ProgramVariantESLState<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::UserVertexArgumentTableLayout,true,8ul>::~ProgramVariantESLState(a1 + 223);
  AGX::ProgramVariant<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::BackgroundObjectArgumentTable,false,false,AGX::NoCombinedUserDriverArgumentTable>::~ProgramVariant(a1);

  JUMPOUT(0x29ED520D0);
}

unint64_t AGX::BackgroundObjectProgramVariant<AGX::HAL300::Encoders,AGX::HAL300::Classes>::~BackgroundObjectProgramVariant(void *a1)
{
  *a1 = &unk_2A23F7750;
  AGX::ProgramVariantESLState<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::UserVertexArgumentTableLayout,true,8ul>::~ProgramVariantESLState(a1 + 223);

  return AGX::ProgramVariant<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::BackgroundObjectArgumentTable,false,false,AGX::NoCombinedUserDriverArgumentTable>::~ProgramVariant(a1);
}

uint64_t AGX::Device<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses>::tryFindOrCreateDriverProgramVariant<AGX::HAL300::BackgroundObjectProgramVariant,AGX::BackgroundObjectProgramKey,AGX::HAL300::BackgroundObjectProgram>(uint64_t a1, os_unfair_lock_s *a2, uint64_t a3, uint64_t a4)
{
  v32[0] = 0;
  VariantEntry = AGX::Program<AGX::HAL300::BackgroundObjectProgramVariant,AGX::BackgroundObjectProgramKey,AGX::HAL300::IndirectArgumentLayout,AGXG18PFamilyIndirectArgumentBufferLayout>::getOrCreateVariantEntry(a2, a3, v32);
  if (v32[0] == 1)
  {
    if ((*(*a3 + 24))(a3))
    {
      v8 = 0;
    }

    else
    {
      v8 = (*(*a3 + 32))(a3) ^ 1;
    }

    if (**MEMORY[0x29EDC56B0])
    {
      IOGPUDeviceTraceEvent();
    }

    v24 = &unk_2A23F79D0;
    v9 = *(a3 + 8);
    v25 = v9;
    v27 = 0;
    v28 = 0;
    v26 = 0;
    v11 = *(a3 + 16);
    v10 = *(a3 + 24);
    if (v10 != v11)
    {
      if (((v10 - v11) & 0x8000000000000000) == 0)
      {
        operator new();
      }

      std::__throw_bad_array_new_length[abi:nn200100]();
    }

    v24 = &unk_2A23F7990;
    v29 = *(a3 + 40);
    v30 = *(a3 + 56);
    v31 = *(a3 + 72);
    v12 = *(a1 + 7160);
    v14[0] = MEMORY[0x29EDCA5F8];
    v14[1] = 3321888768;
    v14[2] = ___ZN3AGX6DeviceINS_6HAL3008EncodersENS1_7ClassesENS1_10ObjClassesEE35tryFindOrCreateDriverProgramVariantINS1_30BackgroundObjectProgramVariantENS_26BackgroundObjectProgramKeyENS1_23BackgroundObjectProgramEEEPT_PT1_RKT0_P7NSArrayIPU27objcproto16MTLBinaryArchive11objc_objectE_block_invoke;
    v14[3] = &__block_descriptor_136_e8_40c38_ZTSN3AGX26BackgroundObjectProgramKeyE_e26_v32__0r_v8Q16__NSString_24l;
    v14[4] = a1;
    v16 = v9;
    v18 = 0;
    v19 = 0;
    __p = 0;
    v15 = &unk_2A23F7990;
    v20 = v29;
    v21 = v30;
    v22 = v31;
    v23 = VariantEntry;
    AGX::Compiler::compileProgram<AGX::BackgroundObjectProgramKey>(v12, a3, a4, v14, v8);
    v15 = &unk_2A23F79D0;
    if (__p)
    {
      v18 = __p;
      operator delete(__p);
    }

    v24 = &unk_2A23F79D0;
    if (v26)
    {
      v27 = v26;
      operator delete(v26);
    }
  }

  return *(VariantEntry + 8);
}

void sub_29CCD0824(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, void *a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, void *__p, uint64_t a31)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void ___ZN3AGX6DeviceINS_6HAL3008EncodersENS1_7ClassesENS1_10ObjClassesEE35tryFindOrCreateDriverProgramVariantINS1_30BackgroundObjectProgramVariantENS_26BackgroundObjectProgramKeyENS1_23BackgroundObjectProgramEEEPT_PT1_RKT0_P7NSArrayIPU27objcproto16MTLBinaryArchive11objc_objectE_block_invoke(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v19 = *MEMORY[0x29EDCA608];
  if (a3 <= 1)
  {
    if (!a3)
    {
      operator new();
    }

    if (a3 == 1)
    {
      v7 = "MTLCompilerErrorFatalError";
      goto LABEL_11;
    }

LABEL_8:
    v7 = "UnknownErrorCode";
    goto LABEL_11;
  }

  if (a3 != 3)
  {
    if (a3 == 2)
    {
      v7 = "MTLCompilerErrorCompilationError";
      goto LABEL_11;
    }

    goto LABEL_8;
  }

  v7 = "MTLCompilerErrorTimeout";
LABEL_11:
  v9 = 0;
  v10 = 0;
  AGX::BackgroundObjectProgramKey::serialize((a1 + 40), &v10, &v9);
  if (os_log_type_enabled(MEMORY[0x29EDCA988], OS_LOG_TYPE_FAULT))
  {
    *buf = 138544130;
    v12 = a4;
    v13 = 2082;
    v14 = v7;
    v15 = 1040;
    v16 = v9;
    v17 = 2098;
    v18 = v10;
    _os_log_fault_impl(&dword_29CA13000, MEMORY[0x29EDCA988], OS_LOG_TYPE_FAULT, "AGX: %{public}@ (%{public}s). %{public}.*P", buf, 0x26u);
  }

  v8 = *(a1 + 128);
  *(v8 + 8) = 0;
  *(v8 + 16) = a3;

  *(v8 + 24) = [a4 copy];
  if (*(v8 + 8))
  {

    *(v8 + 32) = 0;
  }

  else
  {
    *(v8 + 40) = 0;
  }

  dispatch_group_leave(*v8);
}

void sub_29CCD0B20(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  AGX::ProgramBindingRemap<AGX::HAL300::Encoders,AGX::HAL300::Classes>::~ProgramBindingRemap(va);
  MEMORY[0x29ED520D0](v5, v6);
  _Unwind_Resume(a1);
}

void __destroy_helper_block_e8_40c38_ZTSN3AGX26BackgroundObjectProgramKeyE(void *a1)
{
  a1[5] = &unk_2A23F79D0;
  v1 = a1[7];
  if (v1)
  {
    a1[8] = v1;
    operator delete(v1);
  }
}

__n128 __copy_helper_block_e8_40c38_ZTSN3AGX26BackgroundObjectProgramKeyE(uint64_t a1, uint64_t a2)
{
  *(a1 + 40) = &unk_2A23F79D0;
  *(a1 + 48) = *(a2 + 48);
  *(a1 + 64) = 0;
  *(a1 + 72) = 0;
  *(a1 + 56) = 0;
  v3 = *(a2 + 56);
  v2 = *(a2 + 64);
  if (v2 != v3)
  {
    if (((v2 - v3) & 0x8000000000000000) == 0)
    {
      operator new();
    }

    std::__throw_bad_array_new_length[abi:nn200100]();
  }

  *(a1 + 40) = &unk_2A23F7990;
  result = *(a2 + 80);
  v5 = *(a2 + 112);
  *(a1 + 96) = *(a2 + 96);
  *(a1 + 112) = v5;
  *(a1 + 80) = result;
  return result;
}

void AGX::Device<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses>::populateEndOfTileProgramVariants(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4, uint64_t *a5, uint64_t *a6)
{
  v57 = *(a1 + 8);
  if (**MEMORY[0x29EDC56B0])
  {
    IOGPUDeviceTraceEvent();
  }

  if ((areDriverUberShadersDisabled() & 1) == 0)
  {
    v21 = *(a2 + 44);
    v22 = *(a2 + 52);
    v23 = *(a2 + 76);
    v24.i32[0] = *(a2 + 40);
    v24.i32[1] = *(a2 + 48);
    v24.i64[1] = v22;
    v25 = vorrq_s8(*(a2 + 60), *(a2 + 92));
    v26 = vorrq_s8(v24, vorrq_s8(v23, v25));
    v27 = vorr_s8(*v26.i8, *&vextq_s8(v26, v26, 8uLL));
    v28 = (v27.i8[0] | v21) | v27.i8[4] ? ((v27.i32[0] | v21 | v27.i32[1]) & 0x2000000) + 1 : (v27.i32[0] | v21 | v27.i32[1]) & 0x2000000;
    v29 = *(a2 + 112);
    if ((v29 & 0x180000000000000) == 0)
    {
      v30 = v22;
      v31 = HIDWORD(v22);
      v32 = vorrq_s8(v25, v23);
      v33 = vorr_s8(*v32.i8, *&vextq_s8(v32, v32, 8uLL));
      if ((v29 | v33.i32[0] | v30 | v33.i32[1] | v31 | v21 | v28 ^ *(a2 + 40) | *(a2 + 120) | *(a2 + 122) | *(a2 + 124) | *(a2 + 48)) != 0x200000000000000)
      {
        v34 = *a4;
        if (*a4)
        {
          v35 = *a5;
          if (*a5)
          {
            goto LABEL_49;
          }
        }

        else
        {
          v34 = AGX::Device<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses>::tryFindOrCreateDriverProgramVariant<AGX::HAL300::EndOfTileProgramVariant,AGX::EndOfTileProgramKey,AGX::HAL300::EndOfTileProgram>(a1, v57, a2, a3);
          *a4 = v34;
          v35 = *a5;
          if (*a5)
          {
            goto LABEL_49;
          }
        }

        v38 = *(a2 + 120);
        if (v38 > 0xFF || *(a2 + 122) || *(a2 + 124))
        {
          if (v34 && (v35 = *(v34 + 2040)) != 0)
          {
            *a5 = v35;
          }

          else
          {
            v82 = &unk_2A23F9778;
            v83 = *(a2 + 8);
            v85 = 0;
            v86 = 0;
            v84 = 0;
            v42 = *(a2 + 16);
            v41 = *(a2 + 24);
            if (v41 != v42)
            {
              if (((v41 - v42) & 0x8000000000000000) == 0)
              {
                operator new();
              }

              goto LABEL_86;
            }

            v43 = *(a2 + 88);
            *&v87[64] = *(a2 + 104);
            *&v87[32] = *(a2 + 72);
            *&v87[48] = v43;
            v44 = *(a2 + 56);
            *v87 = *(a2 + 40);
            v82 = &unk_2A23F9738;
            *&v87[80] = *(a2 + 120);
            *&v87[16] = v44;
            *&v87[80] = v38;
            *&v87[82] = 0;
            *&v87[72] = v38;
            v35 = AGX::Device<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses>::tryFindOrCreateDriverProgramVariant<AGX::HAL300::EndOfTileProgramVariant,AGX::EndOfTileProgramKey,AGX::HAL300::EndOfTileProgram>(a1, v57, &v82, a3);
            *a5 = v35;
            v82 = &unk_2A23F9778;
            if (v84)
            {
              v85 = v84;
              operator delete(v84);
              v35 = *a5;
            }

            if (!v35)
            {
              goto LABEL_53;
            }

            if (*a4)
            {
              *(*a4 + 2040) = v35;
              v35 = *a5;
            }
          }
        }

        else
        {
          *a5 = v34;
          v35 = v34;
        }

LABEL_49:
        if (*a4 && v35)
        {
          if (**MEMORY[0x29EDC56B0])
          {
            IOGPUDeviceTraceEvent();
          }

          goto LABEL_71;
        }

LABEL_53:
        v12 = 0;
        v13 = 0;
        v45 = vorrq_s8(vorrq_s8(*(a2 + 40), *(a2 + 72)), vorrq_s8(*(a2 + 56), *(a2 + 88)));
        *v45.i8 = vorr_s8(*v45.i8, *&vextq_s8(v45, v45, 8uLL));
        v46 = v45.i32[0] | *(a2 + 104);
        v83 = 19;
        v47 = v46 | v45.i32[1];
        v85 = 0;
        v86 = 0;
        v84 = 0;
        v82 = &unk_2A23F9738;
        *&v87[78] = 0;
        *&v87[72] = 0x200000000000000;
        v48 = v47 == 0;
        v49 = v47 & 0x2000000;
        memset(v87, 0, 72);
        if (!v48)
        {
          ++v49;
        }

        *v87 = v49;
        goto LABEL_8;
      }
    }
  }

  v82 = &unk_2A23F9778;
  v83 = *(a2 + 8);
  v85 = 0;
  v86 = 0;
  v84 = 0;
  v10 = *(a2 + 16);
  v9 = *(a2 + 24);
  if (v9 != v10)
  {
    if (((v9 - v10) & 0x8000000000000000) == 0)
    {
      operator new();
    }

    goto LABEL_86;
  }

  *&v87[32] = *(a2 + 72);
  *&v87[48] = *(a2 + 88);
  *&v87[64] = *(a2 + 104);
  v11 = *(a2 + 120);
  v82 = &unk_2A23F9738;
  *&v87[80] = v11;
  *v87 = *(a2 + 40);
  v12 = 1;
  v13 = a3;
  *&v87[16] = *(a2 + 56);
LABEL_8:
  os_unfair_lock_lock((a1 + 16884));
  v14.i64[0] = __PAIR64__(*&v87[8], *v87);
  v14.i64[1] = *&v87[12];
  v15 = vorrq_s8(*&v87[20], *&v87[52]);
  v16 = vorrq_s8(v14, vorrq_s8(*&v87[36], v15));
  *v16.i8 = vorr_s8(*v16.i8, *&vextq_s8(v16, v16, 8uLL));
  v17 = (v16.i32[0] | *&v87[4] | v16.i32[1]) & 0x2000000;
  if ((v16.i8[0] | v87[4]) | v16.i8[4])
  {
    ++v17;
  }

  v18 = vorrq_s8(v15, *&v87[36]);
  v19 = vorr_s8(*v18.i8, *&vextq_s8(v18, v18, 8uLL));
  if ((*&v87[72] | *&v87[80] | *&v87[82] | *&v87[84] | v19.i32[0] | *&v87[12] | v19.i32[1] | *&v87[16] | *&v87[4] | *&v87[8] | v17 ^ *v87) == 0x200000000000000)
  {
    atomic_fetch_add(&AGX::EndOfTileProgramVariant<AGX::HAL300::Encoders,AGX::HAL300::Classes>::liveUberVariantUses, 1uLL);
  }

  v20 = *a4;
  if (*a4)
  {
    if (!*a5)
    {
LABEL_24:
      v36 = *(a2 + 120);
      if (v36 <= 0xFF && !*(a2 + 122) && !*(a2 + 124))
      {
        *a5 = v20;
        goto LABEL_67;
      }

      v37 = *(v20 + 2040);
      if (v37)
      {
        *a5 = v37;
        goto LABEL_67;
      }

      v71 = &unk_2A23F9778;
      v72 = *(a2 + 8);
      v74 = 0;
      v75 = 0;
      v73 = 0;
      v40 = *(a2 + 16);
      v39 = *(a2 + 24);
      if (v39 == v40)
      {
        v71 = &unk_2A23F9738;
        v81 = *(a2 + 120);
        v80 = *(a2 + 104);
        v78 = *(a2 + 72);
        v79 = *(a2 + 88);
        v76 = *(a2 + 40);
        v77 = *(a2 + 56);
        LOWORD(v81) = v36;
        *(&v81 + 2) = 0;
        DWORD2(v80) = v36;
        if (v12)
        {
          v62 = v72;
          v64 = 0;
          v65 = 0;
          __p = 0;
          v61 = &unk_2A23F9738;
          v68 = v78;
          v69 = v79;
          *v70 = v80;
          *&v70[16] = v81;
          v66 = v76;
          v67 = v77;
        }

        else
        {
          v50 = vorrq_s8(vorrq_s8(v76, v78), vorrq_s8(v77, v79));
          *v50.i8 = vorr_s8(*v50.i8, *&vextq_s8(v50, v50, 8uLL));
          v62 = 19;
          v51 = (v50.i32[0] | v80 | v50.i32[1]) & 0x2000000;
          v64 = 0;
          v65 = 0;
          __p = 0;
          v61 = &unk_2A23F9738;
          v69 = 0u;
          *v70 = 0;
          *&v70[14] = 0;
          v66 = 0u;
          v67 = 0u;
          v68 = 0u;
          *&v70[8] = 0x200000000000000;
          if ((v50.i8[0] | v80) | v50.i8[4])
          {
            ++v51;
          }

          v66.i32[0] = v51;
        }

        v52 = AGX::Device<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses>::findOrCreateDriverProgramVariant<AGX::HAL300::EndOfTileProgramVariant,AGX::EndOfTileProgramKey,AGX::HAL300::EndOfTileProgram>(a1, v57, &v61, v13);
        *a5 = v52;
        if (*(*a4 + 2032) == *(v52 + 2032))
        {
          *(*a4 + 2040) = v52;
        }

        v61 = &unk_2A23F9778;
        if (__p)
        {
          v64 = __p;
          operator delete(__p);
        }

        v71 = &unk_2A23F9778;
        if (v73)
        {
          v74 = v73;
          operator delete(v73);
        }

        goto LABEL_67;
      }

      if (((v39 - v40) & 0x8000000000000000) == 0)
      {
        operator new();
      }

LABEL_86:
      std::__throw_bad_array_new_length[abi:nn200100]();
    }
  }

  else
  {
    v20 = AGX::Device<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses>::findOrCreateDriverProgramVariant<AGX::HAL300::EndOfTileProgramVariant,AGX::EndOfTileProgramKey,AGX::HAL300::EndOfTileProgram>(a1, v57, &v82, v13);
    *a4 = v20;
    if (!*a5)
    {
      goto LABEL_24;
    }
  }

LABEL_67:
  if (**MEMORY[0x29EDC56B0])
  {
    IOGPUDeviceTraceEvent();
  }

  os_unfair_lock_unlock((a1 + 16884));
  v82 = &unk_2A23F9778;
  if (v84)
  {
    v85 = v84;
    operator delete(v84);
  }

LABEL_71:
  {
    AGX::Device<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses>::enableGIN1403EOT2ReadSWWA(void)::enable_gin1403_swwa = 1;
  }

  v82 = &unk_2A23F9778;
  v83 = *(a2 + 8);
  v85 = 0;
  v86 = 0;
  v84 = 0;
  v54 = *(a2 + 16);
  v53 = *(a2 + 24);
  if (v53 != v54)
  {
    if (((v53 - v54) & 0x8000000000000000) == 0)
    {
      operator new();
    }

    goto LABEL_86;
  }

  *&v87[64] = *(a2 + 104);
  *&v87[80] = *(a2 + 120);
  *&v87[48] = *(a2 + 88);
  *&v87[32] = *(a2 + 72);
  *v87 = *(a2 + 40);
  *&v87[16] = *(a2 + 56);
  *&v87[80] = *(a2 + 126) & *(a2 + 120);
  v55 = 0x100000000000000;
  if (AGX::Device<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses>::enableGIN1403EOT2ReadSWWA(void)::enable_gin1403_swwa)
  {
    v55 = 0x500000000000000;
  }

  v82 = &unk_2A23F9738;
  *&v87[72] = v55 | *&v87[72] & 0xFA7FFFFFFFFF0000 | ~*&v87[82] & *&v87[80];
  if (**MEMORY[0x29EDC56B0])
  {
    IOGPUDeviceTraceEvent();
  }

  os_unfair_lock_lock((a1 + 16884));
  v56 = AGX::Device<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses>::tryFindOrCreateDriverProgramVariant<AGX::HAL300::EndOfTileProgramVariant,AGX::EndOfTileProgramKey,AGX::HAL300::EndOfTileProgram>(a1, *(a1 + 8), &v82, a3);
  *a6 = v56;
  if (!v56)
  {
    *a6 = *a4;
  }

  if (**MEMORY[0x29EDC56B0])
  {
    IOGPUDeviceTraceEvent();
  }

  os_unfair_lock_unlock((a1 + 16884));
  v82 = &unk_2A23F9778;
  if (v84)
  {
    v85 = v84;
    operator delete(v84);
  }
}

void sub_29CCD17A4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, void *a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, void *__p, uint64_t a35)
{
  if (__p)
  {
    operator delete(__p);
  }

  os_unfair_lock_unlock(v35 + 4221);
  *(v36 - 216) = &unk_2A23F9778;
  v38 = *(v36 - 200);
  if (v38)
  {
    *(v36 - 192) = v38;
    operator delete(v38);
  }

  _Unwind_Resume(a1);
}

uint64_t AGX::Device<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses>::tryFindOrCreateDriverProgramVariant<AGX::HAL300::EndOfTileProgramVariant,AGX::EndOfTileProgramKey,AGX::HAL300::EndOfTileProgram>(uint64_t a1, os_unfair_lock_s *a2, uint64_t a3, uint64_t a4)
{
  v39[0] = 0;
  VariantEntry = AGX::Program<AGX::HAL300::EndOfTileProgramVariant,AGX::EndOfTileProgramKey,AGX::HAL300::IndirectArgumentLayout,AGXG18PFamilyIndirectArgumentBufferLayout>::getOrCreateVariantEntry(a2, a3, v39);
  if (v39[0] == 1)
  {
    if ((*(*a3 + 24))(a3))
    {
      v8 = 0;
    }

    else
    {
      v8 = (*(*a3 + 32))(a3) ^ 1;
    }

    if (**MEMORY[0x29EDC56B0])
    {
      IOGPUDeviceTraceEvent();
    }

    v28 = &unk_2A23F9778;
    v9 = *(a3 + 8);
    v29 = v9;
    v31 = 0;
    v32 = 0;
    v30 = 0;
    v11 = *(a3 + 16);
    v10 = *(a3 + 24);
    if (v10 != v11)
    {
      if (((v10 - v11) & 0x8000000000000000) == 0)
      {
        operator new();
      }

      std::__throw_bad_array_new_length[abi:nn200100]();
    }

    v35 = *(a3 + 72);
    v36 = *(a3 + 88);
    v37 = *(a3 + 104);
    v12 = *(a3 + 120);
    v28 = &unk_2A23F9738;
    v38 = v12;
    v33 = *(a3 + 40);
    v34 = *(a3 + 56);
    v13 = *(a1 + 7160);
    v15[0] = MEMORY[0x29EDCA5F8];
    v15[1] = 3321888768;
    v15[2] = ___ZN3AGX6DeviceINS_6HAL3008EncodersENS1_7ClassesENS1_10ObjClassesEE35tryFindOrCreateDriverProgramVariantINS1_23EndOfTileProgramVariantENS_19EndOfTileProgramKeyENS1_16EndOfTileProgramEEEPT_PT1_RKT0_P7NSArrayIPU27objcproto16MTLBinaryArchive11objc_objectE_block_invoke;
    v15[3] = &__block_descriptor_176_e8_40c31_ZTSN3AGX19EndOfTileProgramKeyE_e26_v32__0r_v8Q16__NSString_24l;
    v15[4] = a1;
    v17 = v9;
    __p = 0;
    v19 = 0;
    v20 = 0;
    v16 = &unk_2A23F9738;
    v23 = v35;
    v24 = v36;
    v25 = v37;
    v21 = v33;
    v22 = v34;
    v26 = v12;
    v27 = VariantEntry;
    AGX::Compiler::compileProgram<AGX::EndOfTileProgramKey>(v13, a3, a4, v15, v8);
    v16 = &unk_2A23F9778;
    if (__p)
    {
      v19 = __p;
      operator delete(__p);
    }

    v28 = &unk_2A23F9778;
    if (v30)
    {
      v31 = v30;
      operator delete(v30);
    }
  }

  return *(VariantEntry + 8);
}

void sub_29CCD1BA8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, void *a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, void *__p, uint64_t a36)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t AGX::Program<AGX::HAL300::EndOfTileProgramVariant,AGX::EndOfTileProgramKey,AGX::HAL300::IndirectArgumentLayout,AGXG18PFamilyIndirectArgumentBufferLayout>::getOrCreateVariantEntry(os_unfair_lock_s *a1, uint64_t a2, _BYTE *a3)
{
  *a3 = 0;
  os_unfair_lock_lock(a1 + 262);
  v6 = VectorMap<AGX::EndOfTileProgramKey,AGX::ProgramVariantEntry<AGX::HAL300::EndOfTileProgramVariant>,4u>::operator[](a1, a2);
  v7 = v6;
  if (!*v6)
  {
    v11 = dispatch_group_create();
    *v7 = v11;
LABEL_7:
    dispatch_group_enter(v11);
    *a3 = 1;
    goto LABEL_8;
  }

  if (*(v6 + 40) == 1)
  {
    v9 = (v6 + 8);
    v8 = *(v6 + 8);
    if (v8)
    {
      AGX::ProgramVariantESLState<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::UserVertexArgumentTableLayout,true,8ul>::~ProgramVariantESLState((v8 + 680));
      v10 = AGX::EndOfTileProgramVariantBase<AGX::HAL300::Encoders,AGX::HAL300::Classes>::~EndOfTileProgramVariantBase(v8);
      MEMORY[0x29ED520D0](v10, 0x10F2C406B241CDELL);
    }

    *v9 = 0;
    *(v7 + 16) = 0;

    *(v7 + 24) = 0;
    *(v7 + 32) = 0;
    *(v7 + 40) = 0;
    v11 = *v7;
    goto LABEL_7;
  }

LABEL_8:
  os_unfair_lock_unlock(a1 + 262);
  return v7;
}

void ___ZN3AGX6DeviceINS_6HAL3008EncodersENS1_7ClassesENS1_10ObjClassesEE35tryFindOrCreateDriverProgramVariantINS1_23EndOfTileProgramVariantENS_19EndOfTileProgramKeyENS1_16EndOfTileProgramEEEPT_PT1_RKT0_P7NSArrayIPU27objcproto16MTLBinaryArchive11objc_objectE_block_invoke(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v28 = *MEMORY[0x29EDCA608];
  if (a3 <= 1)
  {
    if (!a3)
    {
      operator new();
    }

    if (a3 == 1)
    {
      v7 = "MTLCompilerErrorFatalError";
      goto LABEL_11;
    }

LABEL_8:
    v7 = "UnknownErrorCode";
    goto LABEL_11;
  }

  if (a3 != 3)
  {
    if (a3 == 2)
    {
      v7 = "MTLCompilerErrorCompilationError";
      goto LABEL_11;
    }

    goto LABEL_8;
  }

  v7 = "MTLCompilerErrorTimeout";
LABEL_11:
  v8 = (a1 + 56);
  *(a1 + 64) = *(a1 + 56);
  v9 = (a1 + 64);
  *buf = *(a1 + 48) | 0x100;
  std::vector<unsigned int>::push_back[abi:nn200100](a1 + 56, buf);
  v10 = *v8;
  v11 = *v9 - *v8;
  if (v11 > 0xFFFFFFFFFFFFFFA7)
  {
    v12 = v10 + v11 + 88;
    *(a1 + 64) = v12;
  }

  else
  {
    std::vector<unsigned int>::__append((a1 + 56), 0x16uLL);
    v10 = *(a1 + 56);
    v12 = *(a1 + 64);
  }

  v13 = v10 + v11;
  *v13 = ((v12 - v10) >> 2 << 8) | 0x45;
  *(v13 + 4) = *(a1 + 80);
  v14 = *(a1 + 96);
  v15 = *(a1 + 112);
  v16 = *(a1 + 128);
  *(v13 + 68) = *(a1 + 144);
  *(v13 + 52) = v16;
  *(v13 + 36) = v15;
  *(v13 + 20) = v14;
  *buf = 96;
  std::vector<unsigned int>::push_back[abi:nn200100](a1 + 56, buf);
  if (os_log_type_enabled(MEMORY[0x29EDCA988], OS_LOG_TYPE_FAULT))
  {
    v18 = *(a1 + 56);
    v19 = *(a1 + 64) - v18;
    *buf = 138544130;
    v21 = a4;
    v22 = 2082;
    v23 = v7;
    v24 = 1040;
    v25 = v19;
    v26 = 2098;
    v27 = v18;
    _os_log_fault_impl(&dword_29CA13000, MEMORY[0x29EDCA988], OS_LOG_TYPE_FAULT, "AGX: %{public}@ (%{public}s). %{public}.*P", buf, 0x26u);
  }

  v17 = *(a1 + 168);
  *(v17 + 8) = 0;
  *(v17 + 16) = a3;

  *(v17 + 24) = [a4 copy];
  if (*(v17 + 8))
  {

    *(v17 + 32) = 0;
  }

  else
  {
    *(v17 + 40) = 0;
  }

  dispatch_group_leave(*v17);
}

void sub_29CCD2018(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  AGX::ProgramBindingRemap<AGX::HAL300::Encoders,AGX::HAL300::Classes>::~ProgramBindingRemap(va);
  MEMORY[0x29ED520D0](v3, v4);
  _Unwind_Resume(a1);
}

void AGX::Compiler::compileProgram<AGX::EndOfTileProgramKey>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, int a5)
{
  v71 = *MEMORY[0x29EDCA608];
  v10 = *(a1 + 8);
  v12 = *(a2 + 40);
  v11 = *(a2 + 44);
  v13 = (a2 + 40);
  v14 = *(a2 + 48);
  v15 = *(a2 + 52);
  v16 = *(a2 + 56);
  v17 = *(a2 + 64);
  v18 = *(a2 + 80);
  v19 = *(a2 + 104);
  v20 = *(a2 + 112);
  v21 = *(a2 + 120);
  v22 = *(a2 + 122);
  v23 = *(a2 + 124);
  v24.i64[0] = __PAIR64__(v15, v11);
  v24.u64[1] = v16;
  v25.i64[0] = *(a2 + 96);
  v25.i64[1] = __PAIR64__(v12, v19);
  v26 = vorrq_s8(vorrq_s8(v24, v18), vorrq_s8(v17, v25));
  *v26.i8 = vorr_s8(*v26.i8, *&vextq_s8(v26, v26, 8uLL));
  if (v20 | v26.i32[0] | v21 | v22 | v23 | v26.i32[1] | v14)
  {
    v27 = vorrq_s8(v17, v18);
    *v27.i8 = vorr_s8(*v27.i8, *&vextq_s8(v27, v27, 8uLL));
    v28 = v27.i32[0] | *(a2 + 96) | v27.i32[1] | vorr_s8(vdup_lane_s32(*(a2 + 96), 1), v16).u32[0];
    v29 = (v28 | v12 | v11 | v19 | v15 | v16.i32[1] | v14) & 0x2000000;
    if (v28 | (v12 | v11 | v19 | v15 | v16.i8[4] | v14))
    {
      ++v29;
    }

    if ((v20 | v29 ^ v12 | v21 | v22 | v23 | v14 | v15 | v19 | v11 | v16.i32[1] | v28) != 0x200000000000000)
    {
      v10 = 0;
    }
  }

  v30 = objc_opt_new();
  [v30 setSync:a5 ^ 1u];
  [v30 setPipelineCache:v10];
  [v30 setBinaryArchives:a3];
  v56 = MEMORY[0x29EDCA5F8];
  v57 = 3221225472;
  v58 = ___ZN3AGX8Compiler14compileProgramINS_19EndOfTileProgramKeyEEEvRKT_P7NSArrayIPU27objcproto16MTLBinaryArchive11objc_objectEU13block_pointerFvRK20AGCDeserializedReply16MTLCompilerErrorP8NSStringEb_block_invoke;
  v59 = &unk_29F342280;
  v60 = a4;
  v31 = *(a1 + 24);
  if (v31 && *(v31 + 120) == 1)
  {
    v32 = [objc_msgSend(v30 binaryArchives];
    v33 = 0x200000000000;
    if (!v32)
    {
      v33 = 1;
    }

    atomic_fetch_or(v31, v33);
    v34 = *(a1 + 24);
    v35 = [v30 destinationBinaryArchive];
    v36 = 0x400000000000;
    if (!v35)
    {
      v36 = 1;
    }

    atomic_fetch_or(v34, v36);
  }

  if ([v30 destinationBinaryArchive])
  {
    {
      AGX::Compiler::shouldUseAIRNTInterfacesForBinaryArchiveAddRequests(void)::envDisable = 0;
    }

    if (AGX::Compiler::shouldUseAIRNTInterfacesForBinaryArchiveAddRequests(void)::envDisable == 1)
    {
      [v30 setUseAIRNTInterfaces:0];
    }
  }

  *(a2 + 24) = *(a2 + 16);
  c.count[0] = *(a2 + 8) | 0x100;
  std::vector<unsigned int>::push_back[abi:nn200100](a2 + 16, &c);
  v37 = *(a2 + 16);
  v38 = *(a2 + 24) - v37;
  if (v38 > 0xFFFFFFFFFFFFFFA7)
  {
    v39 = *(a2 + 24) + 88;
    *(a2 + 24) = v39;
  }

  else
  {
    std::vector<unsigned int>::__append((a2 + 16), 0x16uLL);
    v37 = *(a2 + 16);
    v39 = *(a2 + 24);
  }

  v40 = v37 + v38;
  *v40 = ((v39 - v37) >> 2 << 8) | 0x45;
  *(v40 + 4) = *v13;
  v41 = v13[1];
  v42 = v13[2];
  v43 = v13[3];
  *(v40 + 68) = v13[4];
  *(v40 + 52) = v43;
  *(v40 + 36) = v42;
  *(v40 + 20) = v41;
  c.count[0] = 96;
  std::vector<unsigned int>::push_back[abi:nn200100](a2 + 16, &c);
  v44 = dispatch_data_create(*(a2 + 16), *(a2 + 24) - *(a2 + 16), 0, 0);
  [v30 setDriverKeyData:v44];
  if ([v30 airScript])
  {
    v45 = [v30 airScript];
    v62 = 0;
    v63 = 0;
    object = dispatch_data_create_map(v45, &v62, &v63);
    v46 = v62;
    v47 = *v62;
    CC_SHA256_Init(&c);
    (**a2)(a2, &c);
    *len = 0;
    data = 0;
    if (AGX::GetSerializedVertexFormat((v46 + v47), &data, len, v48, v49))
    {
      v50 = data;
      CC_SHA256_Update(&c, data, len[0]);
      free(v50);
    }

    CC_SHA256_Final(md, &c);
    dispatch_release(object);
    *c.count = *md;
    *&c.hash[2] = v67;
    [v30 setVendorPluginFunctionId:&c];
  }

  *c.count = MEMORY[0x29EDCA5F8];
  *c.hash = 3221225472;
  *&c.hash[2] = ___ZN3AGX8Compiler14compileProgramINS_19EndOfTileProgramKeyE20AGCDeserializedReplyEEvRKT_P29MTLCompileFunctionRequestDataPU27objcproto16MTL4CompilerTask11objc_objectU13block_pointerFvRKT0_PU27objcproto16OS_dispatch_data8NSObjectSG_SG_SG_SG_16MTLCompilerErrorP8NSStringyE_block_invoke;
  *&c.hash[4] = &unk_29F3422D0;
  *&c.hash[6] = v30;
  *c.wbuf = &v56;
  if ([v30 function])
  {
    v51 = mach_absolute_time();
    v52 = *a1;
    *md = MEMORY[0x29EDCA5F8];
    *&md[8] = 3221225472;
    *&v67 = ___ZN3AGX8Compiler14compileProgramINS_19EndOfTileProgramKeyE20AGCDeserializedReplyEEvRKT_P29MTLCompileFunctionRequestDataPU27objcproto16MTL4CompilerTask11objc_objectU13block_pointerFvRKT0_PU27objcproto16OS_dispatch_data8NSObjectSG_SG_SG_SG_16MTLCompilerErrorP8NSStringyE_block_invoke_4;
    *(&v67 + 1) = &unk_29F342320;
    p_c = &c;
    v69 = v51;
    [v52 compileFunctionRequest:v30 compilerTask:0 completionHandler:md];
  }

  else
  {
    if ([v30 frameworkData] || objc_msgSend(v30, "pipelineOptions"))
    {
      AGX::Device<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses>::alertCommandBufferActivityStart(void)::{lambda(void)#1}::operator()[abi:[AGX] Failed assertion _previousValue _ 2147483647_]();
    }

    *md = MEMORY[0x29EDCA5F8];
    *&md[8] = 3221225472;
    *&v67 = ___ZN3AGX8Compiler14compileProgramINS_19EndOfTileProgramKeyE20AGCDeserializedReplyEEvRKT_P29MTLCompileFunctionRequestDataPU27objcproto16MTL4CompilerTask11objc_objectU13block_pointerFvRKT0_PU27objcproto16OS_dispatch_data8NSObjectSG_SG_SG_SG_16MTLCompilerErrorP8NSStringyE_block_invoke_3;
    *(&v67 + 1) = &unk_29F3422F8;
    p_c = &c;
    v53 = [objc_msgSend(v30 "binaryArchives")] == 0;
    v54 = *a1;
    v55 = [v30 driverKeyData];
    if (v53)
    {
      [v54 compileRequest:v55 pipelineCache:objc_msgSend(v30 sync:"pipelineCache") completionHandler:{objc_msgSend(v30, "sync"), md}];
    }

    else
    {
      [v54 compileRequest:v55 binaryArchives:objc_msgSend(v30 failOnBinaryArchiveMiss:"binaryArchives") pipelineCache:0 sync:objc_msgSend(v30 completionHandler:{"pipelineCache"), objc_msgSend(v30, "sync"), md}];
    }
  }

  dispatch_release(v44);
}

uint64_t ___ZN3AGX8Compiler14compileProgramINS_19EndOfTileProgramKeyEEEvRKT_P7NSArrayIPU27objcproto16MTLBinaryArchive11objc_objectEU13block_pointerFvRK20AGCDeserializedReply16MTLCompilerErrorP8NSStringEb_block_invoke(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  if (a5)
  {
    AGX::Device<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses>::alertCommandBufferActivityStart(void)::{lambda(void)#1}::operator()[abi:[AGX] Failed assertion _previousValue _ 2147483647_]();
  }

  v5 = *(*(a1 + 32) + 16);

  return v5();
}

void ___ZN3AGX8Compiler14compileProgramINS_19EndOfTileProgramKeyE20AGCDeserializedReplyEEvRKT_P29MTLCompileFunctionRequestDataPU27objcproto16MTL4CompilerTask11objc_objectU13block_pointerFvRKT0_PU27objcproto16OS_dispatch_data8NSObjectSG_SG_SG_SG_16MTLCompilerErrorP8NSStringyE_block_invoke(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  v14[0] = MEMORY[0x29EDCA5F8];
  v14[1] = 3221225472;
  v15 = ___ZN3AGX8Compiler14compileProgramINS_19EndOfTileProgramKeyE20AGCDeserializedReplyEEvRKT_P29MTLCompileFunctionRequestDataPU27objcproto16MTL4CompilerTask11objc_objectU13block_pointerFvRKT0_PU27objcproto16OS_dispatch_data8NSObjectSG_SG_SG_SG_16MTLCompilerErrorP8NSStringyE_block_invoke_2;
  v16 = &unk_29F3422A8;
  v17 = a9;
  v18 = a3;
  v19 = a4;
  v20 = a5;
  v21 = a6;
  v22 = a7;
  v12 = a1 + 32;
  v10 = *(a1 + 32);
  v11 = *(v12 + 8);
  v23 = a8;
  v24 = v11;
  v25 = a2;
  v26 = a10;
  if ([v10 sync])
  {
    v15(v14);
  }

  else
  {
    global_queue = dispatch_get_global_queue(0, 0);
    dispatch_async(global_queue, v14);
  }
}

uint64_t ___ZN3AGX8Compiler14compileProgramINS_19EndOfTileProgramKeyE20AGCDeserializedReplyEEvRKT_P29MTLCompileFunctionRequestDataPU27objcproto16MTL4CompilerTask11objc_objectU13block_pointerFvRKT0_PU27objcproto16OS_dispatch_data8NSObjectSG_SG_SG_SG_16MTLCompilerErrorP8NSStringyE_block_invoke_4(uint64_t a1, void *a2)
{
  mach_absolute_time();
  if (getTimebaseInfo(void)::once != -1)
  {
    dispatch_once(&getTimebaseInfo(void)::once, &__block_literal_global_11354);
  }

  return (*(*(a1 + 32) + 16))(*(a1 + 32), *a2);
}

void ___ZN3AGX8Compiler14compileProgramINS_19EndOfTileProgramKeyE20AGCDeserializedReplyEEvRKT_P29MTLCompileFunctionRequestDataPU27objcproto16MTL4CompilerTask11objc_objectU13block_pointerFvRKT0_PU27objcproto16OS_dispatch_data8NSObjectSG_SG_SG_SG_16MTLCompilerErrorP8NSStringyE_block_invoke_2(void *a1)
{
  size_ptr = 0;
  buffer_ptr = 0;
  v2 = a1[12];
  AGCDeserializedReply::AGCDeserializedReply(v5);
  if (v2 || (v4 = a1[5]) == 0)
  {
    v3 = 0;
  }

  else
  {
    v3 = dispatch_data_create_map(v4, &buffer_ptr, &size_ptr);
    AGCDeserializedReply::deserialize(v5, buffer_ptr, size_ptr);
  }

  (*(a1[11] + 16))(a1[11], v5);
  if (v3)
  {
    dispatch_release(v3);
  }

  AGCDeserializedReply::~AGCDeserializedReply(v5);
}

void sub_29CCD2950(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  AGCDeserializedReply::~AGCDeserializedReply(va);
  _Unwind_Resume(a1);
}

void __destroy_helper_block_e8_40c31_ZTSN3AGX19EndOfTileProgramKeyE(void *a1)
{
  a1[5] = &unk_2A23F9778;
  v1 = a1[7];
  if (v1)
  {
    a1[8] = v1;
    operator delete(v1);
  }
}

__n128 __copy_helper_block_e8_40c31_ZTSN3AGX19EndOfTileProgramKeyE(uint64_t a1, uint64_t a2)
{
  *(a1 + 40) = &unk_2A23F9778;
  *(a1 + 48) = *(a2 + 48);
  *(a1 + 64) = 0;
  *(a1 + 72) = 0;
  *(a1 + 56) = 0;
  v3 = *(a2 + 56);
  v2 = *(a2 + 64);
  if (v2 != v3)
  {
    if (((v2 - v3) & 0x8000000000000000) == 0)
    {
      operator new();
    }

    std::__throw_bad_array_new_length[abi:nn200100]();
  }

  *(a1 + 40) = &unk_2A23F9738;
  v4 = *(a2 + 96);
  *(a1 + 80) = *(a2 + 80);
  *(a1 + 96) = v4;
  result = *(a2 + 112);
  v6 = *(a2 + 128);
  v7 = *(a2 + 144);
  *(a1 + 160) = *(a2 + 160);
  *(a1 + 128) = v6;
  *(a1 + 144) = v7;
  *(a1 + 112) = result;
  return result;
}

uint64_t AGX::Device<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses>::findOrCreateDriverProgramVariant<AGX::HAL300::EndOfTileProgramVariant,AGX::EndOfTileProgramKey,AGX::HAL300::EndOfTileProgram>(uint64_t a1, os_unfair_lock_s *a2, uint64_t a3, uint64_t a4)
{
  v14 = 0;
  v15 = &v14;
  v16 = 0x2020000000;
  v17 = 0;
  v13 = 0;
  v7 = AGX::Program<AGX::HAL300::EndOfTileProgramVariant,AGX::EndOfTileProgramKey,AGX::HAL300::IndirectArgumentLayout,AGXG18PFamilyIndirectArgumentBufferLayout>::getOrCreateVariantEntry(a2, a3, &v13);
  v8 = v7;
  if (v13 == 1)
  {
    if (**MEMORY[0x29EDC56B0])
    {
      IOGPUDeviceTraceEvent();
    }

    v9 = *(a1 + 7160);
    v12[0] = MEMORY[0x29EDCA5F8];
    v12[1] = 3221225472;
    v12[2] = ___ZN3AGX6DeviceINS_6HAL3008EncodersENS1_7ClassesENS1_10ObjClassesEE32findOrCreateDriverProgramVariantINS1_23EndOfTileProgramVariantENS_19EndOfTileProgramKeyENS1_16EndOfTileProgramEEEPT_PT1_RKT0_P7NSArrayIPU27objcproto16MTLBinaryArchive11objc_objectE_block_invoke;
    v12[3] = &unk_29F340F80;
    v12[4] = &v14;
    v12[5] = a1;
    v12[6] = a3;
    v12[7] = v8;
    AGX::Compiler::compileProgram<AGX::EndOfTileProgramKey>(v9, a3, a4, v12, 0);
    v10 = v15[3];
  }

  else
  {
    dispatch_group_wait(*v7, 0xFFFFFFFFFFFFFFFFLL);
    v10 = v8[1];
    v15[3] = v10;
  }

  if (v10)
  {
    _Block_object_dispose(&v14, 8);
    return v10;
  }

  else
  {
    result = MTLReleaseAssertionFailure();
    __break(1u);
  }

  return result;
}

void ___ZN3AGX6DeviceINS_6HAL3008EncodersENS1_7ClassesENS1_10ObjClassesEE32findOrCreateDriverProgramVariantINS1_23EndOfTileProgramVariantENS_19EndOfTileProgramKeyENS1_16EndOfTileProgramEEEPT_PT1_RKT0_P7NSArrayIPU27objcproto16MTLBinaryArchive11objc_objectE_block_invoke(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (!a3)
  {
    operator new();
  }

  v5 = "MTLCompilerErrorTimeout";
  v6 = "UnknownErrorCode";
  if (a3 == 2)
  {
    v6 = "MTLCompilerErrorCompilationError";
  }

  if (a3 != 3)
  {
    v5 = v6;
  }

  if (a3 == 1)
  {
    v7 = "MTLCompilerErrorFatalError";
  }

  else
  {
    v7 = v5;
  }

  v12 = 0;
  v13 = 0;
  AGX::EndOfTileProgramKey::serialize(*(a1 + 48), &v13, &v12);
  v8 = a4;
  v9 = v7;
  v10 = v12;
  v11 = v13;
  _ZZZN3AGX6DeviceINS_6HAL3008EncodersENS1_7ClassesENS1_10ObjClassesEE30findOrCreateBlitProgramVariantERNS_20BlitVertexProgramKeyEEUb_ENKUlvE_clB14_AGX__Crashed_Ev();
}

void sub_29CCD2DC8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  AGX::ProgramBindingRemap<AGX::HAL300::Encoders,AGX::HAL300::Classes>::~ProgramBindingRemap(va);
  MEMORY[0x29ED520D0](v5, v4);
  _Unwind_Resume(a1);
}

uint64_t AGX::Device<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses>::enableGIN1403EOT2ReadSWWA()
{
  {
    return AGX::Device<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses>::enableGIN1403EOT2ReadSWWA(void)::enable_gin1403_swwa;
  }

  {
    AGX::Device<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses>::enableGIN1403EOT2ReadSWWA(void)::enable_gin1403_swwa = 1;
  }

  return AGX::Device<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses>::enableGIN1403EOT2ReadSWWA(void)::enable_gin1403_swwa;
}

void ___ZN3AGX6DeviceINS_6HAL3008EncodersENS1_7ClassesENS1_10ObjClassesEE32findOrCreateDriverProgramVariantINS1_25SWEndOfTileProgramVariantENS_19EndOfTileProgramKeyENS1_18SWEndOfTileProgramEEEPT_PT1_RKT0_P7NSArrayIPU27objcproto16MTLBinaryArchive11objc_objectE_block_invoke(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (!a3)
  {
    operator new();
  }

  v5 = "MTLCompilerErrorTimeout";
  v6 = "UnknownErrorCode";
  if (a3 == 2)
  {
    v6 = "MTLCompilerErrorCompilationError";
  }

  if (a3 != 3)
  {
    v5 = v6;
  }

  if (a3 == 1)
  {
    v7 = "MTLCompilerErrorFatalError";
  }

  else
  {
    v7 = v5;
  }

  v12 = 0;
  v13 = 0;
  AGX::EndOfTileProgramKey::serialize(*(a1 + 48), &v12, &v13);
  v8 = a4;
  v9 = v7;
  v10 = v13;
  v11 = v12;
  _ZZZN3AGX6DeviceINS_6HAL3008EncodersENS1_7ClassesENS1_10ObjClassesEE30findOrCreateBlitProgramVariantERNS_20BlitVertexProgramKeyEEUb_ENKUlvE_clB14_AGX__Crashed_Ev();
}

void sub_29CCD30D0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  AGX::HAL300::FragmentProgramVariantESLState::~FragmentProgramVariantESLState((v5 + 680));
  AGX::EndOfTileProgramVariantBase<AGX::HAL300::Encoders,AGX::HAL300::Classes>::~EndOfTileProgramVariantBase(v5);
  AGX::ProgramBindingRemap<AGX::HAL300::Encoders,AGX::HAL300::Classes>::~ProgramBindingRemap(va);
  MEMORY[0x29ED520D0](v5, v4);
  _Unwind_Resume(a1);
}

uint64_t AGX::Device<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses>::findOrCreateBlitProgramVariant(uint64_t a1, uint64_t a2)
{
  v73 = *MEMORY[0x29EDCA608];
  os_unfair_lock_lock((a1 + 16892));
  v4 = *(a1 + 16);
  v56 = 0;
  v57 = &v56;
  v58 = 0x2020000000;
  v59 = 0;
  os_unfair_lock_lock((v4 + 888));
  v5 = *(v4 + 560);
  v6 = *(v4 + 552);
  if (v5)
  {
    v7 = 0;
    v8 = (v6 + 40);
    v9 = (v6 + 40);
    while (1)
    {
      v10 = *v9;
      v9 += 22;
      if (*(a2 + 40) == v10 && *(a2 + 44) == v8[1] && *(a2 + 48) == v8[2] && *(a2 + 52) == v8[3] && *(a2 + 56) == v8[4] && *(a2 + 60) == v8[5] && *(a2 + 64) == v8[6] && *(a2 + 68) == v8[7] && !(v8[10] ^ *(a2 + 80) | (*(a2 + 72) != v8[8])))
      {
        break;
      }

      ++v7;
      v8 = v9;
      if (v5 == v7)
      {
        goto LABEL_14;
      }
    }

    v11 = v6 + 48 * v7;
  }

  else
  {
LABEL_14:
    v12 = *(v6 + 544);
    if (v12)
    {
      v13 = *(a2 + 40);
      v14 = *(a2 + 44);
      v15 = *(a2 + 48);
      v16 = *(a2 + 52);
      v17 = *(a2 + 56);
      v18 = *(a2 + 60);
      v20 = *(a2 + 64);
      v19 = *(a2 + 68);
      v21 = *(a2 + 72);
      v22 = 1;
      v23 = *(a2 + 80);
      while (1)
      {
        if (v13 == *(v12 + 40) && v14 == *(v12 + 44) && v15 == *(v12 + 48) && v16 == *(v12 + 52) && v17 == *(v12 + 56) && v18 == *(v12 + 60) && v20 == *(v12 + 64) && v19 == *(v12 + 68) && !(*(v12 + 80) ^ v23 | (v21 != *(v12 + 72))))
        {
          v22 = 0;
          goto LABEL_96;
        }

        if (v13 == *(v12 + 128) && v14 == *(v12 + 132) && v15 == *(v12 + 136) && v16 == *(v12 + 140) && v17 == *(v12 + 144) && v18 == *(v12 + 148) && v20 == *(v12 + 152) && v19 == *(v12 + 156) && !(*(v12 + 168) ^ v23 | (v21 != *(v12 + 160))))
        {
          goto LABEL_96;
        }

        if (v13 == *(v12 + 216) && v14 == *(v12 + 220) && v15 == *(v12 + 224) && v16 == *(v12 + 228) && v17 == *(v12 + 232) && v18 == *(v12 + 236) && v20 == *(v12 + 240) && v19 == *(v12 + 244) && !(*(v12 + 256) ^ v23 | (v21 != *(v12 + 248))))
        {
          break;
        }

        if (v13 == *(v12 + 304) && v14 == *(v12 + 308) && v15 == *(v12 + 312) && v16 == *(v12 + 316) && v17 == *(v12 + 320) && v18 == *(v12 + 324) && v20 == *(v12 + 328) && v19 == *(v12 + 332) && !(*(v12 + 344) ^ v23 | (v21 != *(v12 + 336))))
        {
          v22 = 3;
          goto LABEL_96;
        }

        v12 = *(v12 + 544);
        if (!v12)
        {
          goto LABEL_54;
        }
      }

      v22 = 2;
LABEL_96:
      v11 = v12 + 48 * v22;
    }

    else
    {
LABEL_54:
      if (v5 == 4)
      {
        operator new();
      }

      v24 = v6 + 88 * v5;
      *(v24 + 8) = *(a2 + 8);
      if (v24 != a2)
      {
        std::vector<unsigned int>::__assign_with_size[abi:nn200100]<unsigned int *,unsigned int *>((v24 + 16), *(a2 + 16), *(a2 + 24), (*(a2 + 24) - *(a2 + 16)) >> 2);
      }

      v25 = *(a2 + 40);
      v26 = *(a2 + 56);
      *(v24 + 72) = *(a2 + 72);
      *(v24 + 56) = v26;
      *(v24 + 40) = v25;
      v27 = *(v4 + 560);
      v11 = *(v4 + 552) + 48 * v27;
      *(v4 + 560) = v27 + 1;
    }
  }

  v28 = v11 + 352;
  if (*(v11 + 352))
  {
    if (*(v11 + 392) != 1)
    {
      os_unfair_lock_unlock((v4 + 888));
      dispatch_group_wait(*v28, 0xFFFFFFFFFFFFFFFFLL);
      v50 = *(v28 + 8);
      v57[3] = v50;
      goto LABEL_92;
    }

    v29 = *(v11 + 360);
    if (v29)
    {
      (*(*v29 + 8))(v29);
    }

    *(v28 + 8) = 0;
    *(v28 + 16) = 0;

    *(v28 + 24) = 0;
    *(v28 + 32) = 0;
    *(v28 + 40) = 0;
    v30 = *v28;
  }

  else
  {
    v30 = dispatch_group_create();
    *v28 = v30;
  }

  dispatch_group_enter(v30);
  os_unfair_lock_unlock((v4 + 888));
  v31 = *(a1 + 7160);
  v55[0] = MEMORY[0x29EDCA5F8];
  v55[1] = 3221225472;
  v55[2] = ___ZN3AGX6DeviceINS_6HAL3008EncodersENS1_7ClassesENS1_10ObjClassesEE32findOrCreateDriverProgramVariantINS1_26BlitFragmentProgramVariantENS_22BlitFragmentProgramKeyENS1_19BlitFragmentProgramEEEPT_PT1_RKT0_P7NSArrayIPU27objcproto16MTLBinaryArchive11objc_objectE_block_invoke;
  v55[3] = &unk_29F340F80;
  v55[4] = &v56;
  v55[5] = a1;
  v55[6] = a2;
  v55[7] = v28;
  v32 = *(v31 + 8);
  if ((*(*a2 + 24))(a2))
  {
    v33 = v32;
  }

  else
  {
    v33 = 0;
  }

  v34 = objc_opt_new();
  [v34 setSync:1];
  [v34 setPipelineCache:v33];
  [v34 setBinaryArchives:0];
  v60[0] = MEMORY[0x29EDCA5F8];
  v60[1] = 3221225472;
  v60[2] = ___ZN3AGX8Compiler14compileProgramINS_22BlitFragmentProgramKeyEEEvRKT_P7NSArrayIPU27objcproto16MTLBinaryArchive11objc_objectEU13block_pointerFvRK20AGCDeserializedReply16MTLCompilerErrorP8NSStringEb_block_invoke;
  v60[3] = &unk_29F342280;
  v60[4] = v55;
  v35 = *(v31 + 24);
  if (v35 && *(v35 + 120) == 1)
  {
    v36 = [objc_msgSend(v34 "binaryArchives")];
    v37 = 0x200000000000;
    if (!v36)
    {
      v37 = 1;
    }

    atomic_fetch_or(v35, v37);
    v38 = *(v31 + 24);
    v39 = [v34 destinationBinaryArchive];
    v40 = 0x400000000000;
    if (!v39)
    {
      v40 = 1;
    }

    atomic_fetch_or(v38, v40);
  }

  if ([v34 destinationBinaryArchive])
  {
    {
      AGX::Compiler::shouldUseAIRNTInterfacesForBinaryArchiveAddRequests(void)::envDisable = 0;
    }

    if (AGX::Compiler::shouldUseAIRNTInterfacesForBinaryArchiveAddRequests(void)::envDisable == 1)
    {
      [v34 setUseAIRNTInterfaces:0];
    }
  }

  v64 = 0;
  v65 = 0;
  (*(*a2 + 16))(a2, &v65, &v64);
  v41 = dispatch_data_create(v65, v64, 0, 0);
  [v34 setDriverKeyData:v41];
  if ([v34 airScript])
  {
    v42 = [v34 airScript];
    object = 0;
    v62 = 0;
    v63 = 0;
    object = dispatch_data_create_map(v42, &v62, &v63);
    v43 = v62;
    v44 = *v62;
    CC_SHA256_Init(&c);
    (**a2)(a2, &c);
    *len = 0;
    data = 0;
    if (AGX::GetSerializedVertexFormat((v43 + v44), &data, len, v45, v46))
    {
      v47 = data;
      CC_SHA256_Update(&c, data, len[0]);
      free(v47);
    }

    CC_SHA256_Final(md, &c);
    dispatch_release(object);
    *c.count = *md;
    *&c.hash[2] = v69;
    [v34 setVendorPluginFunctionId:&c];
  }

  *c.count = MEMORY[0x29EDCA5F8];
  *c.hash = 3221225472;
  *&c.hash[2] = ___ZN3AGX8Compiler14compileProgramINS_22BlitFragmentProgramKeyE20AGCDeserializedReplyEEvRKT_P29MTLCompileFunctionRequestDataPU27objcproto16MTL4CompilerTask11objc_objectU13block_pointerFvRKT0_PU27objcproto16OS_dispatch_data8NSObjectSG_SG_SG_SG_16MTLCompilerErrorP8NSStringyE_block_invoke;
  *&c.hash[4] = &unk_29F3422D0;
  *&c.hash[6] = v34;
  *c.wbuf = v60;
  if ([v34 function])
  {
    v48 = mach_absolute_time();
    v49 = *v31;
    *md = MEMORY[0x29EDCA5F8];
    *&md[8] = 3221225472;
    *&v69 = ___ZN3AGX8Compiler14compileProgramINS_22BlitFragmentProgramKeyE20AGCDeserializedReplyEEvRKT_P29MTLCompileFunctionRequestDataPU27objcproto16MTL4CompilerTask11objc_objectU13block_pointerFvRKT0_PU27objcproto16OS_dispatch_data8NSObjectSG_SG_SG_SG_16MTLCompilerErrorP8NSStringyE_block_invoke_4;
    *(&v69 + 1) = &unk_29F342320;
    p_c = &c;
    v71 = v48;
    [v49 compileFunctionRequest:v34 compilerTask:0 completionHandler:md];
  }

  else
  {
    if ([v34 frameworkData] || objc_msgSend(v34, "pipelineOptions"))
    {
      AGX::Device<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses>::alertCommandBufferActivityStart(void)::{lambda(void)#1}::operator()[abi:[AGX] Failed assertion _previousValue _ 2147483647_]();
    }

    *md = MEMORY[0x29EDCA5F8];
    *&md[8] = 3221225472;
    *&v69 = ___ZN3AGX8Compiler14compileProgramINS_22BlitFragmentProgramKeyE20AGCDeserializedReplyEEvRKT_P29MTLCompileFunctionRequestDataPU27objcproto16MTL4CompilerTask11objc_objectU13block_pointerFvRKT0_PU27objcproto16OS_dispatch_data8NSObjectSG_SG_SG_SG_16MTLCompilerErrorP8NSStringyE_block_invoke_3;
    *(&v69 + 1) = &unk_29F3422F8;
    p_c = &c;
    v51 = [objc_msgSend(v34 "binaryArchives")];
    v52 = *v31;
    v53 = [v34 driverKeyData];
    if (v51)
    {
      [v52 compileRequest:v53 binaryArchives:objc_msgSend(v34 failOnBinaryArchiveMiss:"binaryArchives") pipelineCache:0 sync:objc_msgSend(v34 completionHandler:{"pipelineCache"), objc_msgSend(v34, "sync"), md}];
    }

    else
    {
      [v52 compileRequest:v53 pipelineCache:objc_msgSend(v34 sync:"pipelineCache") completionHandler:{objc_msgSend(v34, "sync"), md}];
    }
  }

  dispatch_release(v41);

  v50 = v57[3];
LABEL_92:
  if (!v50)
  {
    MTLReleaseAssertionFailure();
    __break(1u);
  }

  _Block_object_dispose(&v56, 8);
  os_unfair_lock_unlock((a1 + 16892));
  return v50;
}

{
  v61 = *MEMORY[0x29EDCA608];
  v44 = 0;
  v45 = &v44;
  v46 = 0x2020000000;
  v47 = 0;
  os_unfair_lock_lock((a1 + 16888));
  v4 = *(a1 + 24);
  os_unfair_lock_lock((v4 + 728));
  v5 = *(v4 + 400);
  v6 = *(v4 + 392);
  if (v5)
  {
    v7 = 0;
    v8 = (v6 + 40);
    while (1)
    {
      v9 = *v8;
      v8 += 12;
      if (*(a2 + 40) == v9)
      {
        break;
      }

      if (v5 == ++v7)
      {
        goto LABEL_5;
      }
    }

    v15 = v6 + 48 * v7;
  }

  else
  {
LABEL_5:
    v10 = *(v6 + 384);
    if (v10)
    {
      v11 = *(a2 + 40);
      v12 = 1;
      while (1)
      {
        if (v11 == *(v10 + 40))
        {
          v12 = 0;
          goto LABEL_21;
        }

        if (v11 == *(v10 + 88))
        {
          goto LABEL_21;
        }

        if (v11 == *(v10 + 136))
        {
          v12 = 2;
          goto LABEL_21;
        }

        if (v11 == *(v10 + 184))
        {
          break;
        }

        v10 = *(v10 + 384);
        if (!v10)
        {
          goto LABEL_12;
        }
      }

      v12 = 3;
LABEL_21:
      v15 = v10 + 48 * v12;
    }

    else
    {
LABEL_12:
      if (v5 == 4)
      {
        operator new();
      }

      v13 = v6 + 48 * v5;
      *(v13 + 8) = *(a2 + 8);
      if (v13 != a2)
      {
        std::vector<unsigned int>::__assign_with_size[abi:nn200100]<unsigned int *,unsigned int *>((v13 + 16), *(a2 + 16), *(a2 + 24), (*(a2 + 24) - *(a2 + 16)) >> 2);
      }

      *(v13 + 40) = *(a2 + 40);
      v14 = *(v4 + 400);
      v15 = *(v4 + 392) + 48 * v14;
      *(v4 + 400) = v14 + 1;
    }
  }

  v16 = v15 + 192;
  if (*(v15 + 192))
  {
    if (*(v15 + 232) != 1)
    {
      os_unfair_lock_unlock((v4 + 728));
      v45[3] = *(v16 + 8);
      goto LABEL_55;
    }

    v17 = *(v15 + 200);
    if (v17)
    {
      (*(*v17 + 8))(v17);
    }

    *(v16 + 8) = 0;
    *(v16 + 16) = 0;

    *(v16 + 24) = 0;
    *(v16 + 32) = 0;
    *(v16 + 40) = 0;
    v18 = *v16;
  }

  else
  {
    v18 = dispatch_group_create();
    *v16 = v18;
  }

  dispatch_group_enter(v18);
  os_unfair_lock_unlock((v4 + 728));
  v19 = *(a1 + 7160);
  v43[0] = MEMORY[0x29EDCA5F8];
  v43[1] = 3221225472;
  v43[2] = ___ZN3AGX6DeviceINS_6HAL3008EncodersENS1_7ClassesENS1_10ObjClassesEE30findOrCreateBlitProgramVariantERNS_20BlitVertexProgramKeyE_block_invoke;
  v43[3] = &unk_29F340F80;
  v43[4] = &v44;
  v43[5] = a1;
  v43[6] = a2;
  v43[7] = v16;
  v20 = *(v19 + 8);
  if ((*(*a2 + 24))(a2))
  {
    v21 = v20;
  }

  else
  {
    v21 = 0;
  }

  v22 = objc_opt_new();
  [v22 setSync:1];
  [v22 setPipelineCache:v21];
  [v22 setBinaryArchives:0];
  v48[0] = MEMORY[0x29EDCA5F8];
  v48[1] = 3221225472;
  v48[2] = ___ZN3AGX8Compiler14compileProgramINS_20BlitVertexProgramKeyEEEvRKT_P7NSArrayIPU27objcproto16MTLBinaryArchive11objc_objectEU13block_pointerFvRK20AGCDeserializedReply16MTLCompilerErrorP8NSStringEb_block_invoke;
  v48[3] = &unk_29F342280;
  v48[4] = v43;
  v23 = *(v19 + 24);
  if (v23 && *(v23 + 120) == 1)
  {
    v24 = [objc_msgSend(v22 "binaryArchives")];
    v25 = 0x200000000000;
    if (!v24)
    {
      v25 = 1;
    }

    atomic_fetch_or(v23, v25);
    v26 = *(v19 + 24);
    v27 = [v22 destinationBinaryArchive];
    v28 = 0x400000000000;
    if (!v27)
    {
      v28 = 1;
    }

    atomic_fetch_or(v26, v28);
  }

  if ([v22 destinationBinaryArchive])
  {
    {
      AGX::Compiler::shouldUseAIRNTInterfacesForBinaryArchiveAddRequests(void)::envDisable = 0;
    }

    if (AGX::Compiler::shouldUseAIRNTInterfacesForBinaryArchiveAddRequests(void)::envDisable == 1)
    {
      [v22 setUseAIRNTInterfaces:0];
    }
  }

  v52 = 0;
  v53 = 0;
  (*(*a2 + 16))(a2, &v53, &v52);
  v29 = dispatch_data_create(v53, v52, 0, 0);
  [v22 setDriverKeyData:v29];
  if ([v22 airScript])
  {
    v30 = [v22 airScript];
    object = 0;
    v50 = 0;
    v51 = 0;
    object = dispatch_data_create_map(v30, &v50, &v51);
    v31 = v50;
    v32 = *v50;
    CC_SHA256_Init(&c);
    (**a2)(a2, &c);
    *len = 0;
    data = 0;
    if (AGX::GetSerializedVertexFormat((v31 + v32), &data, len, v33, v34))
    {
      v35 = data;
      CC_SHA256_Update(&c, data, len[0]);
      free(v35);
    }

    CC_SHA256_Final(md, &c);
    dispatch_release(object);
    *c.count = *md;
    *&c.hash[2] = v57;
    [v22 setVendorPluginFunctionId:&c];
  }

  *c.count = MEMORY[0x29EDCA5F8];
  *c.hash = 3221225472;
  *&c.hash[2] = ___ZN3AGX8Compiler14compileProgramINS_20BlitVertexProgramKeyE20AGCDeserializedReplyEEvRKT_P29MTLCompileFunctionRequestDataPU27objcproto16MTL4CompilerTask11objc_objectU13block_pointerFvRKT0_PU27objcproto16OS_dispatch_data8NSObjectSG_SG_SG_SG_16MTLCompilerErrorP8NSStringyE_block_invoke;
  *&c.hash[4] = &unk_29F3422D0;
  *&c.hash[6] = v22;
  *c.wbuf = v48;
  if ([v22 function])
  {
    v36 = mach_absolute_time();
    v37 = *v19;
    *md = MEMORY[0x29EDCA5F8];
    *&md[8] = 3221225472;
    *&v57 = ___ZN3AGX8Compiler14compileProgramINS_20BlitVertexProgramKeyE20AGCDeserializedReplyEEvRKT_P29MTLCompileFunctionRequestDataPU27objcproto16MTL4CompilerTask11objc_objectU13block_pointerFvRKT0_PU27objcproto16OS_dispatch_data8NSObjectSG_SG_SG_SG_16MTLCompilerErrorP8NSStringyE_block_invoke_4;
    *(&v57 + 1) = &unk_29F342320;
    p_c = &c;
    v59 = v36;
    [v37 compileFunctionRequest:v22 compilerTask:0 completionHandler:md];
  }

  else
  {
    if ([v22 frameworkData] || objc_msgSend(v22, "pipelineOptions"))
    {
      AGX::Device<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses>::alertCommandBufferActivityStart(void)::{lambda(void)#1}::operator()[abi:[AGX] Failed assertion _previousValue _ 2147483647_]();
    }

    *md = MEMORY[0x29EDCA5F8];
    *&md[8] = 3221225472;
    *&v57 = ___ZN3AGX8Compiler14compileProgramINS_20BlitVertexProgramKeyE20AGCDeserializedReplyEEvRKT_P29MTLCompileFunctionRequestDataPU27objcproto16MTL4CompilerTask11objc_objectU13block_pointerFvRKT0_PU27objcproto16OS_dispatch_data8NSObjectSG_SG_SG_SG_16MTLCompilerErrorP8NSStringyE_block_invoke_3;
    *(&v57 + 1) = &unk_29F3422F8;
    p_c = &c;
    v38 = [objc_msgSend(v22 "binaryArchives")];
    v39 = *v19;
    v40 = [v22 driverKeyData];
    if (v38)
    {
      [v39 compileRequest:v40 binaryArchives:objc_msgSend(v22 failOnBinaryArchiveMiss:"binaryArchives") pipelineCache:0 sync:objc_msgSend(v22 completionHandler:{"pipelineCache"), objc_msgSend(v22, "sync"), md}];
    }

    else
    {
      [v39 compileRequest:v40 pipelineCache:objc_msgSend(v22 sync:"pipelineCache") completionHandler:{objc_msgSend(v22, "sync"), md}];
    }
  }

  dispatch_release(v29);

LABEL_55:
  os_unfair_lock_unlock((a1 + 16888));
  v41 = v45[3];
  _Block_object_dispose(&v44, 8);
  return v41;
}

{
  v74 = *MEMORY[0x29EDCA608];
  os_unfair_lock_lock((a1 + 16896));
  v4 = *(a1 + 32);
  v57 = 0;
  v58 = &v57;
  v59 = 0x2020000000;
  v60 = 0;
  os_unfair_lock_lock((v4 + 888));
  v5 = *(v4 + 560);
  v6 = *(v4 + 552);
  if (v5)
  {
    v7 = 0;
    v8 = *(a2 + 72);
    v9 = *(a2 + 80);
LABEL_5:
    v10 = v6 + 88 * v7;
    v11 = *(a2 + 72);
    while (v11)
    {
      v12 = __clz(__rbit32(v11));
      v11 &= ~(1 << v12);
      if (*(a2 + 40 + 4 * v12) != *(v10 + 40 + 4 * v12))
      {
LABEL_4:
        if (++v7 == v5)
        {
          goto LABEL_10;
        }

        goto LABEL_5;
      }
    }

    if (*(v10 + 80) ^ v9 | (v8 != *(v10 + 72)))
    {
      goto LABEL_4;
    }

    v28 = v6 + 48 * v7;
  }

  else
  {
    v8 = *(a2 + 72);
    v9 = *(a2 + 80);
LABEL_10:
    v13 = (a2 + 40);
    v14 = *(v6 + 544);
    if (v14)
    {
      v15 = 1;
LABEL_14:
      v16 = v8;
      while (v16)
      {
        v17 = __clz(__rbit32(v16));
        v16 &= ~(1 << v17);
        if (*(v13 + v17) != *(v14 + 40 + 4 * v17))
        {
LABEL_19:
          v18 = v8;
          while (v18)
          {
            v19 = __clz(__rbit32(v18));
            v18 &= ~(1 << v19);
            if (*(v13 + v19) != *(v14 + 128 + 4 * v19))
            {
              goto LABEL_24;
            }
          }

          if (!(*(v14 + 168) ^ v9 | (v8 != *(v14 + 160))))
          {
            goto LABEL_42;
          }

LABEL_24:
          v20 = v8;
          while (v20)
          {
            v21 = __clz(__rbit32(v20));
            v20 &= ~(1 << v21);
            if (*(v13 + v21) != *(v14 + 216 + 4 * v21))
            {
              goto LABEL_29;
            }
          }

          if (!(*(v14 + 256) ^ v9 | (v8 != *(v14 + 248))))
          {
            v15 = 2;
            goto LABEL_42;
          }

LABEL_29:
          v22 = v8;
          while (v22)
          {
            v23 = __clz(__rbit32(v22));
            v22 &= ~(1 << v23);
            if (*(v13 + v23) != *(v14 + 304 + 4 * v23))
            {
              goto LABEL_13;
            }
          }

          if (!(*(v14 + 344) ^ v9 | (v8 != *(v14 + 336))))
          {
            v15 = 3;
            goto LABEL_42;
          }

LABEL_13:
          v14 = *(v14 + 544);
          if (!v14)
          {
            goto LABEL_33;
          }

          goto LABEL_14;
        }
      }

      if (*(v14 + 80) ^ v9 | (v8 != *(v14 + 72)))
      {
        goto LABEL_19;
      }

      v15 = 0;
LABEL_42:
      v28 = v14 + 48 * v15;
    }

    else
    {
LABEL_33:
      if (v5 == 4)
      {
        operator new();
      }

      v24 = v6 + 88 * v5;
      *(v24 + 8) = *(a2 + 8);
      if (v24 != a2)
      {
        std::vector<unsigned int>::__assign_with_size[abi:nn200100]<unsigned int *,unsigned int *>((v24 + 16), *(a2 + 16), *(a2 + 24), (*(a2 + 24) - *(a2 + 16)) >> 2);
      }

      v25 = *v13;
      v26 = *(a2 + 56);
      *(v24 + 68) = *(a2 + 68);
      *(v24 + 56) = v26;
      *(v24 + 40) = v25;
      v27 = *(v4 + 560);
      v28 = *(v4 + 552) + 48 * v27;
      *(v4 + 560) = v27 + 1;
    }
  }

  v29 = v28 + 352;
  if (*(v28 + 352))
  {
    if (*(v28 + 392) != 1)
    {
      os_unfair_lock_unlock((v4 + 888));
      dispatch_group_wait(*v29, 0xFFFFFFFFFFFFFFFFLL);
      v51 = *(v29 + 8);
      v58[3] = v51;
      goto LABEL_76;
    }

    v30 = *(v28 + 360);
    if (v30)
    {
      (*(*v30 + 8))(v30);
    }

    *(v29 + 8) = 0;
    *(v29 + 16) = 0;

    *(v29 + 24) = 0;
    *(v29 + 32) = 0;
    *(v29 + 40) = 0;
    v31 = *v29;
  }

  else
  {
    v31 = dispatch_group_create();
    *v29 = v31;
  }

  dispatch_group_enter(v31);
  os_unfair_lock_unlock((v4 + 888));
  v32 = *(a1 + 7160);
  v56[0] = MEMORY[0x29EDCA5F8];
  v56[1] = 3221225472;
  v56[2] = ___ZN3AGX6DeviceINS_6HAL3008EncodersENS1_7ClassesENS1_10ObjClassesEE32findOrCreateDriverProgramVariantINS1_25BlitComputeProgramVariantENS_21BlitComputeProgramKeyENS1_18BlitComputeProgramEEEPT_PT1_RKT0_P7NSArrayIPU27objcproto16MTLBinaryArchive11objc_objectE_block_invoke;
  v56[3] = &unk_29F340F80;
  v56[4] = &v57;
  v56[5] = a1;
  v56[6] = a2;
  v56[7] = v29;
  v33 = *(v32 + 8);
  if ((*(*a2 + 24))(a2))
  {
    v34 = v33;
  }

  else
  {
    v34 = 0;
  }

  v35 = objc_opt_new();
  [v35 setSync:1];
  [v35 setPipelineCache:v34];
  [v35 setBinaryArchives:0];
  v61[0] = MEMORY[0x29EDCA5F8];
  v61[1] = 3221225472;
  v61[2] = ___ZN3AGX8Compiler14compileProgramINS_21BlitComputeProgramKeyEEEvRKT_P7NSArrayIPU27objcproto16MTLBinaryArchive11objc_objectEU13block_pointerFvRK20AGCDeserializedReply16MTLCompilerErrorP8NSStringEb_block_invoke;
  v61[3] = &unk_29F342280;
  v61[4] = v56;
  v36 = *(v32 + 24);
  if (v36 && *(v36 + 120) == 1)
  {
    v37 = [objc_msgSend(v35 "binaryArchives")];
    v38 = 0x200000000000;
    if (!v37)
    {
      v38 = 1;
    }

    atomic_fetch_or(v36, v38);
    v39 = *(v32 + 24);
    v40 = [v35 destinationBinaryArchive];
    v41 = 0x400000000000;
    if (!v40)
    {
      v41 = 1;
    }

    atomic_fetch_or(v39, v41);
  }

  if ([v35 destinationBinaryArchive])
  {
    {
      AGX::Compiler::shouldUseAIRNTInterfacesForBinaryArchiveAddRequests(void)::envDisable = 0;
    }

    if (AGX::Compiler::shouldUseAIRNTInterfacesForBinaryArchiveAddRequests(void)::envDisable == 1)
    {
      [v35 setUseAIRNTInterfaces:0];
    }
  }

  v65 = 0;
  v66 = 0;
  (*(*a2 + 16))(a2, &v66, &v65);
  v42 = dispatch_data_create(v66, v65, 0, 0);
  [v35 setDriverKeyData:v42];
  if ([v35 airScript])
  {
    v43 = [v35 airScript];
    object = 0;
    v63 = 0;
    v64 = 0;
    object = dispatch_data_create_map(v43, &v63, &v64);
    v44 = v63;
    v45 = *v63;
    CC_SHA256_Init(&c);
    (**a2)(a2, &c);
    *len = 0;
    data = 0;
    if (AGX::GetSerializedVertexFormat((v44 + v45), &data, len, v46, v47))
    {
      v48 = data;
      CC_SHA256_Update(&c, data, len[0]);
      free(v48);
    }

    CC_SHA256_Final(md, &c);
    dispatch_release(object);
    *c.count = *md;
    *&c.hash[2] = v70;
    [v35 setVendorPluginFunctionId:&c];
  }

  *c.count = MEMORY[0x29EDCA5F8];
  *c.hash = 3221225472;
  *&c.hash[2] = ___ZN3AGX8Compiler14compileProgramINS_21BlitComputeProgramKeyE20AGCDeserializedReplyEEvRKT_P29MTLCompileFunctionRequestDataPU27objcproto16MTL4CompilerTask11objc_objectU13block_pointerFvRKT0_PU27objcproto16OS_dispatch_data8NSObjectSG_SG_SG_SG_16MTLCompilerErrorP8NSStringyE_block_invoke;
  *&c.hash[4] = &unk_29F3422D0;
  *&c.hash[6] = v35;
  *c.wbuf = v61;
  if ([v35 function])
  {
    v49 = mach_absolute_time();
    v50 = *v32;
    *md = MEMORY[0x29EDCA5F8];
    *&md[8] = 3221225472;
    *&v70 = ___ZN3AGX8Compiler14compileProgramINS_21BlitComputeProgramKeyE20AGCDeserializedReplyEEvRKT_P29MTLCompileFunctionRequestDataPU27objcproto16MTL4CompilerTask11objc_objectU13block_pointerFvRKT0_PU27objcproto16OS_dispatch_data8NSObjectSG_SG_SG_SG_16MTLCompilerErrorP8NSStringyE_block_invoke_4;
    *(&v70 + 1) = &unk_29F342320;
    p_c = &c;
    v72 = v49;
    [v50 compileFunctionRequest:v35 compilerTask:0 completionHandler:md];
  }

  else
  {
    if ([v35 frameworkData] || objc_msgSend(v35, "pipelineOptions"))
    {
      AGX::Device<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses>::alertCommandBufferActivityStart(void)::{lambda(void)#1}::operator()[abi:[AGX] Failed assertion _previousValue _ 2147483647_]();
    }

    *md = MEMORY[0x29EDCA5F8];
    *&md[8] = 3221225472;
    *&v70 = ___ZN3AGX8Compiler14compileProgramINS_21BlitComputeProgramKeyE20AGCDeserializedReplyEEvRKT_P29MTLCompileFunctionRequestDataPU27objcproto16MTL4CompilerTask11objc_objectU13block_pointerFvRKT0_PU27objcproto16OS_dispatch_data8NSObjectSG_SG_SG_SG_16MTLCompilerErrorP8NSStringyE_block_invoke_3;
    *(&v70 + 1) = &unk_29F3422F8;
    p_c = &c;
    v52 = [objc_msgSend(v35 "binaryArchives")];
    v53 = *v32;
    v54 = [v35 driverKeyData];
    if (v52)
    {
      [v53 compileRequest:v54 binaryArchives:objc_msgSend(v35 failOnBinaryArchiveMiss:"binaryArchives") pipelineCache:0 sync:objc_msgSend(v35 completionHandler:{"pipelineCache"), objc_msgSend(v35, "sync"), md}];
    }

    else
    {
      [v53 compileRequest:v54 pipelineCache:objc_msgSend(v35 sync:"pipelineCache") completionHandler:{objc_msgSend(v35, "sync"), md}];
    }
  }

  dispatch_release(v42);

  v51 = v58[3];
LABEL_76:
  if (!v51)
  {
    MTLReleaseAssertionFailure();
    __break(1u);
  }

  _Block_object_dispose(&v57, 8);
  os_unfair_lock_unlock((a1 + 16896));
  return v51;
}

{
  v61 = *MEMORY[0x29EDCA608];
  os_unfair_lock_lock((a1 + 16900));
  v4 = *(a1 + 40);
  v44 = 0;
  v45 = &v44;
  v46 = 0x2020000000;
  v47 = 0;
  os_unfair_lock_lock((v4 + 728));
  v5 = *(v4 + 400);
  v6 = *(v4 + 392);
  if (v5)
  {
    v7 = 0;
    v8 = (v6 + 40);
    while (1)
    {
      v9 = *v8;
      v8 += 12;
      if (*(a2 + 40) == v9)
      {
        break;
      }

      if (v5 == ++v7)
      {
        goto LABEL_5;
      }
    }

    v15 = v6 + 48 * v7;
  }

  else
  {
LABEL_5:
    v10 = *(v6 + 384);
    if (v10)
    {
      v11 = *(a2 + 40);
      v12 = 1;
      while (1)
      {
        if (v11 == *(v10 + 40))
        {
          v12 = 0;
          goto LABEL_21;
        }

        if (v11 == *(v10 + 88))
        {
          goto LABEL_21;
        }

        if (v11 == *(v10 + 136))
        {
          v12 = 2;
          goto LABEL_21;
        }

        if (v11 == *(v10 + 184))
        {
          break;
        }

        v10 = *(v10 + 384);
        if (!v10)
        {
          goto LABEL_12;
        }
      }

      v12 = 3;
LABEL_21:
      v15 = v10 + 48 * v12;
    }

    else
    {
LABEL_12:
      if (v5 == 4)
      {
        operator new();
      }

      v13 = v6 + 48 * v5;
      *(v13 + 8) = *(a2 + 8);
      if (v13 != a2)
      {
        std::vector<unsigned int>::__assign_with_size[abi:nn200100]<unsigned int *,unsigned int *>((v13 + 16), *(a2 + 16), *(a2 + 24), (*(a2 + 24) - *(a2 + 16)) >> 2);
      }

      *(v13 + 40) = *(a2 + 40);
      v14 = *(v4 + 400);
      v15 = *(v4 + 392) + 48 * v14;
      *(v4 + 400) = v14 + 1;
    }
  }

  v16 = v15 + 192;
  if (*(v15 + 192))
  {
    if (*(v15 + 232) != 1)
    {
      os_unfair_lock_unlock((v4 + 728));
      dispatch_group_wait(*v16, 0xFFFFFFFFFFFFFFFFLL);
      v38 = *(v16 + 8);
      v45[3] = v38;
      goto LABEL_55;
    }

    v17 = *(v15 + 200);
    if (v17)
    {
      (*(*v17 + 8))(v17);
    }

    *(v16 + 8) = 0;
    *(v16 + 16) = 0;

    *(v16 + 24) = 0;
    *(v16 + 32) = 0;
    *(v16 + 40) = 0;
    v18 = *v16;
  }

  else
  {
    v18 = dispatch_group_create();
    *v16 = v18;
  }

  dispatch_group_enter(v18);
  os_unfair_lock_unlock((v4 + 728));
  v19 = *(a1 + 7160);
  v43[0] = MEMORY[0x29EDCA5F8];
  v43[1] = 3221225472;
  v43[2] = ___ZN3AGX6DeviceINS_6HAL3008EncodersENS1_7ClassesENS1_10ObjClassesEE32findOrCreateDriverProgramVariantINS1_25BlitComputeProgramVariantENS_20BlitSparseProgramKeyENS1_17BlitSparseProgramEEEPT_PT1_RKT0_P7NSArrayIPU27objcproto16MTLBinaryArchive11objc_objectE_block_invoke;
  v43[3] = &unk_29F340F80;
  v43[4] = &v44;
  v43[5] = a1;
  v43[6] = a2;
  v43[7] = v16;
  v20 = *(v19 + 8);
  if ((*(*a2 + 24))(a2))
  {
    v21 = v20;
  }

  else
  {
    v21 = 0;
  }

  v22 = objc_opt_new();
  [v22 setSync:1];
  [v22 setPipelineCache:v21];
  [v22 setBinaryArchives:0];
  v48[0] = MEMORY[0x29EDCA5F8];
  v48[1] = 3221225472;
  v48[2] = ___ZN3AGX8Compiler14compileProgramINS_20BlitSparseProgramKeyEEEvRKT_P7NSArrayIPU27objcproto16MTLBinaryArchive11objc_objectEU13block_pointerFvRK20AGCDeserializedReply16MTLCompilerErrorP8NSStringEb_block_invoke;
  v48[3] = &unk_29F342280;
  v48[4] = v43;
  v23 = *(v19 + 24);
  if (v23 && *(v23 + 120) == 1)
  {
    v24 = [objc_msgSend(v22 "binaryArchives")];
    v25 = 0x200000000000;
    if (!v24)
    {
      v25 = 1;
    }

    atomic_fetch_or(v23, v25);
    v26 = *(v19 + 24);
    v27 = [v22 destinationBinaryArchive];
    v28 = 0x400000000000;
    if (!v27)
    {
      v28 = 1;
    }

    atomic_fetch_or(v26, v28);
  }

  if ([v22 destinationBinaryArchive])
  {
    {
      AGX::Compiler::shouldUseAIRNTInterfacesForBinaryArchiveAddRequests(void)::envDisable = 0;
    }

    if (AGX::Compiler::shouldUseAIRNTInterfacesForBinaryArchiveAddRequests(void)::envDisable == 1)
    {
      [v22 setUseAIRNTInterfaces:0];
    }
  }

  v52 = 0;
  v53 = 0;
  (*(*a2 + 16))(a2, &v53, &v52);
  v29 = dispatch_data_create(v53, v52, 0, 0);
  [v22 setDriverKeyData:v29];
  if ([v22 airScript])
  {
    v30 = [v22 airScript];
    object = 0;
    v50 = 0;
    v51 = 0;
    object = dispatch_data_create_map(v30, &v50, &v51);
    v31 = v50;
    v32 = *v50;
    CC_SHA256_Init(&c);
    (**a2)(a2, &c);
    *len = 0;
    data = 0;
    if (AGX::GetSerializedVertexFormat((v31 + v32), &data, len, v33, v34))
    {
      v35 = data;
      CC_SHA256_Update(&c, data, len[0]);
      free(v35);
    }

    CC_SHA256_Final(md, &c);
    dispatch_release(object);
    *c.count = *md;
    *&c.hash[2] = v57;
    [v22 setVendorPluginFunctionId:&c];
  }

  *c.count = MEMORY[0x29EDCA5F8];
  *c.hash = 3221225472;
  *&c.hash[2] = ___ZN3AGX8Compiler14compileProgramINS_20BlitSparseProgramKeyE20AGCDeserializedReplyEEvRKT_P29MTLCompileFunctionRequestDataPU27objcproto16MTL4CompilerTask11objc_objectU13block_pointerFvRKT0_PU27objcproto16OS_dispatch_data8NSObjectSG_SG_SG_SG_16MTLCompilerErrorP8NSStringyE_block_invoke;
  *&c.hash[4] = &unk_29F3422D0;
  *&c.hash[6] = v22;
  *c.wbuf = v48;
  if ([v22 function])
  {
    v36 = mach_absolute_time();
    v37 = *v19;
    *md = MEMORY[0x29EDCA5F8];
    *&md[8] = 3221225472;
    *&v57 = ___ZN3AGX8Compiler14compileProgramINS_20BlitSparseProgramKeyE20AGCDeserializedReplyEEvRKT_P29MTLCompileFunctionRequestDataPU27objcproto16MTL4CompilerTask11objc_objectU13block_pointerFvRKT0_PU27objcproto16OS_dispatch_data8NSObjectSG_SG_SG_SG_16MTLCompilerErrorP8NSStringyE_block_invoke_4;
    *(&v57 + 1) = &unk_29F342320;
    p_c = &c;
    v59 = v36;
    [v37 compileFunctionRequest:v22 compilerTask:0 completionHandler:md];
  }

  else
  {
    if ([v22 frameworkData] || objc_msgSend(v22, "pipelineOptions"))
    {
      AGX::Device<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses>::alertCommandBufferActivityStart(void)::{lambda(void)#1}::operator()[abi:[AGX] Failed assertion _previousValue _ 2147483647_]();
    }

    *md = MEMORY[0x29EDCA5F8];
    *&md[8] = 3221225472;
    *&v57 = ___ZN3AGX8Compiler14compileProgramINS_20BlitSparseProgramKeyE20AGCDeserializedReplyEEvRKT_P29MTLCompileFunctionRequestDataPU27objcproto16MTL4CompilerTask11objc_objectU13block_pointerFvRKT0_PU27objcproto16OS_dispatch_data8NSObjectSG_SG_SG_SG_16MTLCompilerErrorP8NSStringyE_block_invoke_3;
    *(&v57 + 1) = &unk_29F3422F8;
    p_c = &c;
    v39 = [objc_msgSend(v22 "binaryArchives")];
    v40 = *v19;
    v41 = [v22 driverKeyData];
    if (v39)
    {
      [v40 compileRequest:v41 binaryArchives:objc_msgSend(v22 failOnBinaryArchiveMiss:"binaryArchives") pipelineCache:0 sync:objc_msgSend(v22 completionHandler:{"pipelineCache"), objc_msgSend(v22, "sync"), md}];
    }

    else
    {
      [v40 compileRequest:v41 pipelineCache:objc_msgSend(v22 sync:"pipelineCache") completionHandler:{objc_msgSend(v22, "sync"), md}];
    }
  }

  dispatch_release(v29);

  v38 = v45[3];
LABEL_55:
  if (!v38)
  {
    MTLReleaseAssertionFailure();
    __break(1u);
  }

  _Block_object_dispose(&v44, 8);
  os_unfair_lock_unlock((a1 + 16900));
  return v38;
}

{
  v61 = *MEMORY[0x29EDCA608];
  os_unfair_lock_lock((a1 + 16904));
  v4 = *(a1 + 48);
  v44 = 0;
  v45 = &v44;
  v46 = 0x2020000000;
  v47 = 0;
  os_unfair_lock_lock((v4 + 728));
  v5 = *(v4 + 400);
  v6 = *(v4 + 392);
  if (v5)
  {
    v7 = 0;
    v8 = (v6 + 40);
    while (1)
    {
      v9 = *v8;
      v8 += 12;
      if (*(a2 + 40) == v9)
      {
        break;
      }

      if (v5 == ++v7)
      {
        goto LABEL_5;
      }
    }

    v15 = v6 + 48 * v7;
  }

  else
  {
LABEL_5:
    v10 = *(v6 + 384);
    if (v10)
    {
      v11 = *(a2 + 40);
      v12 = 1;
      while (1)
      {
        if (v11 == *(v10 + 40))
        {
          v12 = 0;
          goto LABEL_21;
        }

        if (v11 == *(v10 + 88))
        {
          goto LABEL_21;
        }

        if (v11 == *(v10 + 136))
        {
          v12 = 2;
          goto LABEL_21;
        }

        if (v11 == *(v10 + 184))
        {
          break;
        }

        v10 = *(v10 + 384);
        if (!v10)
        {
          goto LABEL_12;
        }
      }

      v12 = 3;
LABEL_21:
      v15 = v10 + 48 * v12;
    }

    else
    {
LABEL_12:
      if (v5 == 4)
      {
        operator new();
      }

      v13 = v6 + 48 * v5;
      *(v13 + 8) = *(a2 + 8);
      if (v13 != a2)
      {
        std::vector<unsigned int>::__assign_with_size[abi:nn200100]<unsigned int *,unsigned int *>((v13 + 16), *(a2 + 16), *(a2 + 24), (*(a2 + 24) - *(a2 + 16)) >> 2);
      }

      *(v13 + 40) = *(a2 + 40);
      v14 = *(v4 + 400);
      v15 = *(v4 + 392) + 48 * v14;
      *(v4 + 400) = v14 + 1;
    }
  }

  v16 = v15 + 192;
  if (*(v15 + 192))
  {
    if (*(v15 + 232) != 1)
    {
      os_unfair_lock_unlock((v4 + 728));
      dispatch_group_wait(*v16, 0xFFFFFFFFFFFFFFFFLL);
      v38 = *(v16 + 8);
      v45[3] = v38;
      goto LABEL_55;
    }

    v17 = *(v15 + 200);
    if (v17)
    {
      (*(*v17 + 8))(v17);
    }

    *(v16 + 8) = 0;
    *(v16 + 16) = 0;

    *(v16 + 24) = 0;
    *(v16 + 32) = 0;
    *(v16 + 40) = 0;
    v18 = *v16;
  }

  else
  {
    v18 = dispatch_group_create();
    *v16 = v18;
  }

  dispatch_group_enter(v18);
  os_unfair_lock_unlock((v4 + 728));
  v19 = *(a1 + 7160);
  v43[0] = MEMORY[0x29EDCA5F8];
  v43[1] = 3221225472;
  v43[2] = ___ZN3AGX6DeviceINS_6HAL3008EncodersENS1_7ClassesENS1_10ObjClassesEE32findOrCreateDriverProgramVariantINS1_25BlitComputeProgramVariantENS_23BlitFastClearProgramKeyENS1_20BlitFastClearProgramEEEPT_PT1_RKT0_P7NSArrayIPU27objcproto16MTLBinaryArchive11objc_objectE_block_invoke;
  v43[3] = &unk_29F340F80;
  v43[4] = &v44;
  v43[5] = a1;
  v43[6] = a2;
  v43[7] = v16;
  v20 = *(v19 + 8);
  if ((*(*a2 + 24))(a2))
  {
    v21 = v20;
  }

  else
  {
    v21 = 0;
  }

  v22 = objc_opt_new();
  [v22 setSync:1];
  [v22 setPipelineCache:v21];
  [v22 setBinaryArchives:0];
  v48[0] = MEMORY[0x29EDCA5F8];
  v48[1] = 3221225472;
  v48[2] = ___ZN3AGX8Compiler14compileProgramINS_23BlitFastClearProgramKeyEEEvRKT_P7NSArrayIPU27objcproto16MTLBinaryArchive11objc_objectEU13block_pointerFvRK20AGCDeserializedReply16MTLCompilerErrorP8NSStringEb_block_invoke;
  v48[3] = &unk_29F342280;
  v48[4] = v43;
  v23 = *(v19 + 24);
  if (v23 && *(v23 + 120) == 1)
  {
    v24 = [objc_msgSend(v22 "binaryArchives")];
    v25 = 0x200000000000;
    if (!v24)
    {
      v25 = 1;
    }

    atomic_fetch_or(v23, v25);
    v26 = *(v19 + 24);
    v27 = [v22 destinationBinaryArchive];
    v28 = 0x400000000000;
    if (!v27)
    {
      v28 = 1;
    }

    atomic_fetch_or(v26, v28);
  }

  if ([v22 destinationBinaryArchive])
  {
    {
      AGX::Compiler::shouldUseAIRNTInterfacesForBinaryArchiveAddRequests(void)::envDisable = 0;
    }

    if (AGX::Compiler::shouldUseAIRNTInterfacesForBinaryArchiveAddRequests(void)::envDisable == 1)
    {
      [v22 setUseAIRNTInterfaces:0];
    }
  }

  v52 = 0;
  v53 = 0;
  (*(*a2 + 16))(a2, &v53, &v52);
  v29 = dispatch_data_create(v53, v52, 0, 0);
  [v22 setDriverKeyData:v29];
  if ([v22 airScript])
  {
    v30 = [v22 airScript];
    object = 0;
    v50 = 0;
    v51 = 0;
    object = dispatch_data_create_map(v30, &v50, &v51);
    v31 = v50;
    v32 = *v50;
    CC_SHA256_Init(&c);
    (**a2)(a2, &c);
    *len = 0;
    data = 0;
    if (AGX::GetSerializedVertexFormat((v31 + v32), &data, len, v33, v34))
    {
      v35 = data;
      CC_SHA256_Update(&c, data, len[0]);
      free(v35);
    }

    CC_SHA256_Final(md, &c);
    dispatch_release(object);
    *c.count = *md;
    *&c.hash[2] = v57;
    [v22 setVendorPluginFunctionId:&c];
  }

  *c.count = MEMORY[0x29EDCA5F8];
  *c.hash = 3221225472;
  *&c.hash[2] = ___ZN3AGX8Compiler14compileProgramINS_23BlitFastClearProgramKeyE20AGCDeserializedReplyEEvRKT_P29MTLCompileFunctionRequestDataPU27objcproto16MTL4CompilerTask11objc_objectU13block_pointerFvRKT0_PU27objcproto16OS_dispatch_data8NSObjectSG_SG_SG_SG_16MTLCompilerErrorP8NSStringyE_block_invoke;
  *&c.hash[4] = &unk_29F3422D0;
  *&c.hash[6] = v22;
  *c.wbuf = v48;
  if ([v22 function])
  {
    v36 = mach_absolute_time();
    v37 = *v19;
    *md = MEMORY[0x29EDCA5F8];
    *&md[8] = 3221225472;
    *&v57 = ___ZN3AGX8Compiler14compileProgramINS_23BlitFastClearProgramKeyE20AGCDeserializedReplyEEvRKT_P29MTLCompileFunctionRequestDataPU27objcproto16MTL4CompilerTask11objc_objectU13block_pointerFvRKT0_PU27objcproto16OS_dispatch_data8NSObjectSG_SG_SG_SG_16MTLCompilerErrorP8NSStringyE_block_invoke_4;
    *(&v57 + 1) = &unk_29F342320;
    p_c = &c;
    v59 = v36;
    [v37 compileFunctionRequest:v22 compilerTask:0 completionHandler:md];
  }

  else
  {
    if ([v22 frameworkData] || objc_msgSend(v22, "pipelineOptions"))
    {
      AGX::Device<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses>::alertCommandBufferActivityStart(void)::{lambda(void)#1}::operator()[abi:[AGX] Failed assertion _previousValue _ 2147483647_]();
    }

    *md = MEMORY[0x29EDCA5F8];
    *&md[8] = 3221225472;
    *&v57 = ___ZN3AGX8Compiler14compileProgramINS_23BlitFastClearProgramKeyE20AGCDeserializedReplyEEvRKT_P29MTLCompileFunctionRequestDataPU27objcproto16MTL4CompilerTask11objc_objectU13block_pointerFvRKT0_PU27objcproto16OS_dispatch_data8NSObjectSG_SG_SG_SG_16MTLCompilerErrorP8NSStringyE_block_invoke_3;
    *(&v57 + 1) = &unk_29F3422F8;
    p_c = &c;
    v39 = [objc_msgSend(v22 "binaryArchives")];
    v40 = *v19;
    v41 = [v22 driverKeyData];
    if (v39)
    {
      [v40 compileRequest:v41 binaryArchives:objc_msgSend(v22 failOnBinaryArchiveMiss:"binaryArchives") pipelineCache:0 sync:objc_msgSend(v22 completionHandler:{"pipelineCache"), objc_msgSend(v22, "sync"), md}];
    }

    else
    {
      [v40 compileRequest:v41 pipelineCache:objc_msgSend(v22 sync:"pipelineCache") completionHandler:{objc_msgSend(v22, "sync"), md}];
    }
  }

  dispatch_release(v29);

  v38 = v45[3];
LABEL_55:
  if (!v38)
  {
    MTLReleaseAssertionFailure();
    __break(1u);
  }

  _Block_object_dispose(&v44, 8);
  os_unfair_lock_unlock((a1 + 16904));
  return v38;
}

{
  v61 = *MEMORY[0x29EDCA608];
  v44 = 0;
  v45 = &v44;
  v46 = 0x2020000000;
  v47 = 0;
  os_unfair_lock_lock((a1 + 16888));
  v4 = *(a1 + 56);
  os_unfair_lock_lock((v4 + 728));
  v5 = *(v4 + 400);
  v6 = *(v4 + 392);
  if (v5)
  {
    v7 = 0;
    v8 = (v6 + 40);
    while (1)
    {
      v9 = *v8;
      v8 += 12;
      if (*(a2 + 40) == v9)
      {
        break;
      }

      if (v5 == ++v7)
      {
        goto LABEL_5;
      }
    }

    v15 = v6 + 48 * v7;
  }

  else
  {
LABEL_5:
    v10 = *(v6 + 384);
    if (v10)
    {
      v11 = *(a2 + 40);
      v12 = 1;
      while (1)
      {
        if (v11 == *(v10 + 40))
        {
          v12 = 0;
          goto LABEL_21;
        }

        if (v11 == *(v10 + 88))
        {
          goto LABEL_21;
        }

        if (v11 == *(v10 + 136))
        {
          v12 = 2;
          goto LABEL_21;
        }

        if (v11 == *(v10 + 184))
        {
          break;
        }

        v10 = *(v10 + 384);
        if (!v10)
        {
          goto LABEL_12;
        }
      }

      v12 = 3;
LABEL_21:
      v15 = v10 + 48 * v12;
    }

    else
    {
LABEL_12:
      if (v5 == 4)
      {
        operator new();
      }

      v13 = v6 + 48 * v5;
      *(v13 + 8) = *(a2 + 8);
      if (v13 != a2)
      {
        std::vector<unsigned int>::__assign_with_size[abi:nn200100]<unsigned int *,unsigned int *>((v13 + 16), *(a2 + 16), *(a2 + 24), (*(a2 + 24) - *(a2 + 16)) >> 2);
      }

      *(v13 + 40) = *(a2 + 40);
      v14 = *(v4 + 400);
      v15 = *(v4 + 392) + 48 * v14;
      *(v4 + 400) = v14 + 1;
    }
  }

  v16 = v15 + 192;
  if (*(v15 + 192))
  {
    if (*(v15 + 232) != 1)
    {
      os_unfair_lock_unlock((v4 + 728));
      v45[3] = *(v16 + 8);
      goto LABEL_55;
    }

    v17 = *(v15 + 200);
    if (v17)
    {
      (*(*v17 + 8))(v17);
    }

    *(v16 + 8) = 0;
    *(v16 + 16) = 0;

    *(v16 + 24) = 0;
    *(v16 + 32) = 0;
    *(v16 + 40) = 0;
    v18 = *v16;
  }

  else
  {
    v18 = dispatch_group_create();
    *v16 = v18;
  }

  dispatch_group_enter(v18);
  os_unfair_lock_unlock((v4 + 728));
  v19 = *(a1 + 7160);
  v43[0] = MEMORY[0x29EDCA5F8];
  v43[1] = 3221225472;
  v43[2] = ___ZN3AGX6DeviceINS_6HAL3008EncodersENS1_7ClassesENS1_10ObjClassesEE30findOrCreateBlitProgramVariantERNS_29BlitVertexFastClearProgramKeyE_block_invoke;
  v43[3] = &unk_29F340F80;
  v43[4] = &v44;
  v43[5] = a1;
  v43[6] = a2;
  v43[7] = v16;
  v20 = *(v19 + 8);
  if ((*(*a2 + 24))(a2))
  {
    v21 = v20;
  }

  else
  {
    v21 = 0;
  }

  v22 = objc_opt_new();
  [v22 setSync:1];
  [v22 setPipelineCache:v21];
  [v22 setBinaryArchives:0];
  v48[0] = MEMORY[0x29EDCA5F8];
  v48[1] = 3221225472;
  v48[2] = ___ZN3AGX8Compiler14compileProgramINS_29BlitVertexFastClearProgramKeyEEEvRKT_P7NSArrayIPU27objcproto16MTLBinaryArchive11objc_objectEU13block_pointerFvRK20AGCDeserializedReply16MTLCompilerErrorP8NSStringEb_block_invoke;
  v48[3] = &unk_29F342280;
  v48[4] = v43;
  v23 = *(v19 + 24);
  if (v23 && *(v23 + 120) == 1)
  {
    v24 = [objc_msgSend(v22 "binaryArchives")];
    v25 = 0x200000000000;
    if (!v24)
    {
      v25 = 1;
    }

    atomic_fetch_or(v23, v25);
    v26 = *(v19 + 24);
    v27 = [v22 destinationBinaryArchive];
    v28 = 0x400000000000;
    if (!v27)
    {
      v28 = 1;
    }

    atomic_fetch_or(v26, v28);
  }

  if ([v22 destinationBinaryArchive])
  {
    {
      AGX::Compiler::shouldUseAIRNTInterfacesForBinaryArchiveAddRequests(void)::envDisable = 0;
    }

    if (AGX::Compiler::shouldUseAIRNTInterfacesForBinaryArchiveAddRequests(void)::envDisable == 1)
    {
      [v22 setUseAIRNTInterfaces:0];
    }
  }

  v52 = 0;
  v53 = 0;
  (*(*a2 + 16))(a2, &v53, &v52);
  v29 = dispatch_data_create(v53, v52, 0, 0);
  [v22 setDriverKeyData:v29];
  if ([v22 airScript])
  {
    v30 = [v22 airScript];
    object = 0;
    v50 = 0;
    v51 = 0;
    object = dispatch_data_create_map(v30, &v50, &v51);
    v31 = v50;
    v32 = *v50;
    CC_SHA256_Init(&c);
    (**a2)(a2, &c);
    *len = 0;
    data = 0;
    if (AGX::GetSerializedVertexFormat((v31 + v32), &data, len, v33, v34))
    {
      v35 = data;
      CC_SHA256_Update(&c, data, len[0]);
      free(v35);
    }

    CC_SHA256_Final(md, &c);
    dispatch_release(object);
    *c.count = *md;
    *&c.hash[2] = v57;
    [v22 setVendorPluginFunctionId:&c];
  }

  *c.count = MEMORY[0x29EDCA5F8];
  *c.hash = 3221225472;
  *&c.hash[2] = ___ZN3AGX8Compiler14compileProgramINS_29BlitVertexFastClearProgramKeyE20AGCDeserializedReplyEEvRKT_P29MTLCompileFunctionRequestDataPU27objcproto16MTL4CompilerTask11objc_objectU13block_pointerFvRKT0_PU27objcproto16OS_dispatch_data8NSObjectSG_SG_SG_SG_16MTLCompilerErrorP8NSStringyE_block_invoke;
  *&c.hash[4] = &unk_29F3422D0;
  *&c.hash[6] = v22;
  *c.wbuf = v48;
  if ([v22 function])
  {
    v36 = mach_absolute_time();
    v37 = *v19;
    *md = MEMORY[0x29EDCA5F8];
    *&md[8] = 3221225472;
    *&v57 = ___ZN3AGX8Compiler14compileProgramINS_29BlitVertexFastClearProgramKeyE20AGCDeserializedReplyEEvRKT_P29MTLCompileFunctionRequestDataPU27objcproto16MTL4CompilerTask11objc_objectU13block_pointerFvRKT0_PU27objcproto16OS_dispatch_data8NSObjectSG_SG_SG_SG_16MTLCompilerErrorP8NSStringyE_block_invoke_4;
    *(&v57 + 1) = &unk_29F342320;
    p_c = &c;
    v59 = v36;
    [v37 compileFunctionRequest:v22 compilerTask:0 completionHandler:md];
  }

  else
  {
    if ([v22 frameworkData] || objc_msgSend(v22, "pipelineOptions"))
    {
      AGX::Device<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses>::alertCommandBufferActivityStart(void)::{lambda(void)#1}::operator()[abi:[AGX] Failed assertion _previousValue _ 2147483647_]();
    }

    *md = MEMORY[0x29EDCA5F8];
    *&md[8] = 3221225472;
    *&v57 = ___ZN3AGX8Compiler14compileProgramINS_29BlitVertexFastClearProgramKeyE20AGCDeserializedReplyEEvRKT_P29MTLCompileFunctionRequestDataPU27objcproto16MTL4CompilerTask11objc_objectU13block_pointerFvRKT0_PU27objcproto16OS_dispatch_data8NSObjectSG_SG_SG_SG_16MTLCompilerErrorP8NSStringyE_block_invoke_3;
    *(&v57 + 1) = &unk_29F3422F8;
    p_c = &c;
    v38 = [objc_msgSend(v22 "binaryArchives")];
    v39 = *v19;
    v40 = [v22 driverKeyData];
    if (v38)
    {
      [v39 compileRequest:v40 binaryArchives:objc_msgSend(v22 failOnBinaryArchiveMiss:"binaryArchives") pipelineCache:0 sync:objc_msgSend(v22 completionHandler:{"pipelineCache"), objc_msgSend(v22, "sync"), md}];
    }

    else
    {
      [v39 compileRequest:v40 pipelineCache:objc_msgSend(v22 sync:"pipelineCache") completionHandler:{objc_msgSend(v22, "sync"), md}];
    }
  }

  dispatch_release(v29);

LABEL_55:
  os_unfair_lock_unlock((a1 + 16888));
  v41 = v45[3];
  _Block_object_dispose(&v44, 8);
  return v41;
}

void sub_29CCD3BE8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, char a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, dispatch_object_t object)
{
  dispatch_release(object);
  _Block_object_dispose(&a17, 8);
  os_unfair_lock_unlock((v26 + v27));
  _Unwind_Resume(a1);
}

void ___ZN3AGX6DeviceINS_6HAL3008EncodersENS1_7ClassesENS1_10ObjClassesEE32findOrCreateDriverProgramVariantINS1_26BlitFragmentProgramVariantENS_22BlitFragmentProgramKeyENS1_19BlitFragmentProgramEEEPT_PT1_RKT0_P7NSArrayIPU27objcproto16MTLBinaryArchive11objc_objectE_block_invoke(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (!a3)
  {
    operator new();
  }

  v5 = "MTLCompilerErrorTimeout";
  v6 = "UnknownErrorCode";
  if (a3 == 2)
  {
    v6 = "MTLCompilerErrorCompilationError";
  }

  if (a3 != 3)
  {
    v5 = v6;
  }

  if (a3 == 1)
  {
    v7 = "MTLCompilerErrorFatalError";
  }

  else
  {
    v7 = v5;
  }

  v12 = 0;
  v13 = 0;
  (*(**(a1 + 48) + 16))(*(a1 + 48), &v13, &v12);
  v8 = a4;
  v9 = v7;
  v10 = v12;
  v11 = v13;
  _ZZZN3AGX6DeviceINS_6HAL3008EncodersENS1_7ClassesENS1_10ObjClassesEE30findOrCreateBlitProgramVariantERNS_20BlitVertexProgramKeyEEUb_ENKUlvE_clB14_AGX__Crashed_Ev();
}

void sub_29CCD3DE0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  AGX::ProgramBindingRemap<AGX::HAL300::Encoders,AGX::HAL300::Classes>::~ProgramBindingRemap(va);
  MEMORY[0x29ED520D0](v5, v4);
  _Unwind_Resume(a1);
}

uint64_t ___ZN3AGX8Compiler14compileProgramINS_22BlitFragmentProgramKeyEEEvRKT_P7NSArrayIPU27objcproto16MTLBinaryArchive11objc_objectEU13block_pointerFvRK20AGCDeserializedReply16MTLCompilerErrorP8NSStringEb_block_invoke(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  if (a5)
  {
    AGX::Device<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses>::alertCommandBufferActivityStart(void)::{lambda(void)#1}::operator()[abi:[AGX] Failed assertion _previousValue _ 2147483647_]();
  }

  v5 = *(*(a1 + 32) + 16);

  return v5();
}

void ___ZN3AGX8Compiler14compileProgramINS_22BlitFragmentProgramKeyE20AGCDeserializedReplyEEvRKT_P29MTLCompileFunctionRequestDataPU27objcproto16MTL4CompilerTask11objc_objectU13block_pointerFvRKT0_PU27objcproto16OS_dispatch_data8NSObjectSG_SG_SG_SG_16MTLCompilerErrorP8NSStringyE_block_invoke(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  v14[0] = MEMORY[0x29EDCA5F8];
  v14[1] = 3221225472;
  v15 = ___ZN3AGX8Compiler14compileProgramINS_22BlitFragmentProgramKeyE20AGCDeserializedReplyEEvRKT_P29MTLCompileFunctionRequestDataPU27objcproto16MTL4CompilerTask11objc_objectU13block_pointerFvRKT0_PU27objcproto16OS_dispatch_data8NSObjectSG_SG_SG_SG_16MTLCompilerErrorP8NSStringyE_block_invoke_2;
  v16 = &unk_29F3422A8;
  v17 = a9;
  v18 = a3;
  v19 = a4;
  v20 = a5;
  v21 = a6;
  v22 = a7;
  v12 = a1 + 32;
  v10 = *(a1 + 32);
  v11 = *(v12 + 8);
  v23 = a8;
  v24 = v11;
  v25 = a2;
  v26 = a10;
  if ([v10 sync])
  {
    v15(v14);
  }

  else
  {
    global_queue = dispatch_get_global_queue(0, 0);
    dispatch_async(global_queue, v14);
  }
}

uint64_t ___ZN3AGX8Compiler14compileProgramINS_22BlitFragmentProgramKeyE20AGCDeserializedReplyEEvRKT_P29MTLCompileFunctionRequestDataPU27objcproto16MTL4CompilerTask11objc_objectU13block_pointerFvRKT0_PU27objcproto16OS_dispatch_data8NSObjectSG_SG_SG_SG_16MTLCompilerErrorP8NSStringyE_block_invoke_4(uint64_t a1, void *a2)
{
  mach_absolute_time();
  if (getTimebaseInfo(void)::once != -1)
  {
    dispatch_once(&getTimebaseInfo(void)::once, &__block_literal_global_11354);
  }

  return (*(*(a1 + 32) + 16))(*(a1 + 32), *a2);
}

void ___ZN3AGX8Compiler14compileProgramINS_22BlitFragmentProgramKeyE20AGCDeserializedReplyEEvRKT_P29MTLCompileFunctionRequestDataPU27objcproto16MTL4CompilerTask11objc_objectU13block_pointerFvRKT0_PU27objcproto16OS_dispatch_data8NSObjectSG_SG_SG_SG_16MTLCompilerErrorP8NSStringyE_block_invoke_2(void *a1)
{
  size_ptr = 0;
  buffer_ptr = 0;
  v2 = a1[12];
  AGCDeserializedReply::AGCDeserializedReply(v5);
  if (v2 || (v4 = a1[5]) == 0)
  {
    v3 = 0;
  }

  else
  {
    v3 = dispatch_data_create_map(v4, &buffer_ptr, &size_ptr);
    AGCDeserializedReply::deserialize(v5, buffer_ptr, size_ptr);
  }

  (*(a1[11] + 16))(a1[11], v5);
  if (v3)
  {
    dispatch_release(v3);
  }

  AGCDeserializedReply::~AGCDeserializedReply(v5);
}

void sub_29CCD40E0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  AGCDeserializedReply::~AGCDeserializedReply(va);
  _Unwind_Resume(a1);
}

void AGX::HAL300::BlitFragmentProgramVariant::~BlitFragmentProgramVariant(AGX::HAL300::BlitFragmentProgramVariant *this)
{
  *this = &unk_2A23F7770;
  if (*(this + 398))
  {
    v2 = (this + 3160);
    v3 = *(this + 399);
    v4 = *(v3 + 16);
    v5[0] = MEMORY[0x29EDCA5F8];
    v5[1] = 3221225472;
    v5[2] = ___ZN3AGX4HeapILb1EE14deallocateImplERKNS1_10AllocationE_block_invoke;
    v5[3] = &__block_descriptor_48_e5_v8__0l;
    v5[4] = v3;
    v5[5] = this + 3160;
    dispatch_sync(v4, v5);
    *(this + 3185) = 0u;
    *v2 = 0u;
    *(this + 3176) = 0u;
  }

  AGX::ProgramVariantESLState<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::UserFragmentArgumentTableLayout,true,9ul>::~ProgramVariantESLState(this + 223);
  AGX::ProgramVariant<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::BlitFragmentArgumentTable,false,false,AGX::NoCombinedUserDriverArgumentTable>::~ProgramVariant(this);

  JUMPOUT(0x29ED520D0);
}

{
  *this = &unk_2A23F7770;
  if (*(this + 398))
  {
    v2 = (this + 3160);
    v3 = *(this + 399);
    v4 = *(v3 + 16);
    v5[0] = MEMORY[0x29EDCA5F8];
    v5[1] = 3221225472;
    v5[2] = ___ZN3AGX4HeapILb1EE14deallocateImplERKNS1_10AllocationE_block_invoke;
    v5[3] = &__block_descriptor_48_e5_v8__0l;
    v5[4] = v3;
    v5[5] = this + 3160;
    dispatch_sync(v4, v5);
    *(this + 3185) = 0u;
    *v2 = 0u;
    *(this + 3176) = 0u;
  }

  AGX::ProgramVariantESLState<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::UserFragmentArgumentTableLayout,true,9ul>::~ProgramVariantESLState(this + 223);

  AGX::ProgramVariant<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::BlitFragmentArgumentTable,false,false,AGX::NoCombinedUserDriverArgumentTable>::~ProgramVariant(this);
}

unint64_t AGX::ProgramVariant<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::BlitFragmentArgumentTable,false,false,AGX::NoCombinedUserDriverArgumentTable>::~ProgramVariant(unint64_t a1)
{
  *a1 = &unk_2A23F7E60;
  if (*(a1 + 984))
  {
    v2 = *(a1 + 992);
    v3 = *(v2 + 16);
    v47 = MEMORY[0x29EDCA5F8];
    v48 = 3221225472;
    v49 = ___ZN3AGX4HeapILb1EE14deallocateImplERKNS1_10AllocationE_block_invoke;
    v50 = &__block_descriptor_48_e5_v8__0l;
    v51 = v2;
    v52 = a1 + 960;
    dispatch_sync(v3, &v47);
    *(a1 + 985) = 0u;
    *(a1 + 960) = 0u;
    *(a1 + 976) = 0u;
  }

  if (*(a1 + 1032))
  {
    v4 = *(a1 + 1040);
    v5 = *(v4 + 16);
    v47 = MEMORY[0x29EDCA5F8];
    v48 = 3221225472;
    v49 = ___ZN3AGX4HeapILb1EE14deallocateImplERKNS1_10AllocationE_block_invoke;
    v50 = &__block_descriptor_48_e5_v8__0l;
    v51 = v4;
    v52 = a1 + 1008;
    dispatch_sync(v5, &v47);
    *(a1 + 1033) = 0u;
    *(a1 + 1008) = 0u;
    *(a1 + 1024) = 0u;
  }

  if (*(a1 + 1080))
  {
    v6 = *(a1 + 1088);
    v7 = *(v6 + 16);
    v47 = MEMORY[0x29EDCA5F8];
    v48 = 3221225472;
    v49 = ___ZN3AGX4HeapILb1EE14deallocateImplERKNS1_10AllocationE_block_invoke;
    v50 = &__block_descriptor_48_e5_v8__0l;
    v51 = v6;
    v52 = a1 + 1056;
    dispatch_sync(v7, &v47);
    *(a1 + 1081) = 0u;
    *(a1 + 1072) = 0u;
    *(a1 + 1056) = 0u;
  }

  if (*(a1 + 1128))
  {
    v8 = *(a1 + 1136);
    v9 = *(v8 + 16);
    v47 = MEMORY[0x29EDCA5F8];
    v48 = 3221225472;
    v49 = ___ZN3AGX4HeapILb1EE14deallocateImplERKNS1_10AllocationE_block_invoke;
    v50 = &__block_descriptor_48_e5_v8__0l;
    v51 = v8;
    v52 = a1 + 1104;
    dispatch_sync(v9, &v47);
    *(a1 + 1129) = 0u;
    *(a1 + 1120) = 0u;
    *(a1 + 1104) = 0u;
  }

  v10 = *(a1 + 8);
  if (v10)
  {
    AGX::Device<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses>::unregisterVariantEventInfo(v10, a1);
  }

  if (*(a1 + 1783) < 0)
  {
    operator delete(*(a1 + 1760));
  }

  v11 = *(a1 + 1736);
  if (v11)
  {
    *(a1 + 1744) = v11;
    operator delete(v11);
  }

  v12 = *(a1 + 1712);
  if (v12)
  {
    v13 = *(a1 + 1720);
    v14 = *(a1 + 1712);
    if (v13 != v12)
    {
      do
      {
        v15 = *(v13 - 1);
        v13 -= 3;
        if (v15 < 0)
        {
          operator delete(*v13);
        }
      }

      while (v13 != v12);
      v14 = *(a1 + 1712);
    }

    *(a1 + 1720) = v12;
    operator delete(v14);
  }

  std::__tree<AGX::Mempool<16u,0u,true,0u,0u,unsigned long long>::FreeIntervalList::Interval,AGX::Mempool<16u,0u,true,0u,0u,unsigned long long>::FreeIntervalList::IntervalRangeComparator,std::allocator<AGX::Mempool<16u,0u,true,0u,0u,unsigned long long>::FreeIntervalList::Interval>>::destroy(*(a1 + 1600));
  v16 = *(a1 + 1560);
  if (v16)
  {
    v17 = *(a1 + 1568);
    v18 = *(a1 + 1560);
    if (v17 != v16)
    {
      do
      {
        v19 = *(v17 - 8);
        if (v19 && !atomic_fetch_add(&v19->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
        {
          (v19->__on_zero_shared)(v19);
          std::__shared_weak_count::__release_weak(v19);
        }

        v17 -= 16;
      }

      while (v17 != v16);
      v18 = *(a1 + 1560);
    }

    *(a1 + 1568) = v16;
    operator delete(v18);
  }

  v20 = *(a1 + 1536);
  if (v20)
  {
    *(a1 + 1544) = v20;
    operator delete(v20);
  }

  v21 = *(a1 + 1512);
  if (v21)
  {
    *(a1 + 1520) = v21;
    operator delete(v21);
  }

  if (*(a1 + 1423) < 0)
  {
    operator delete(*(a1 + 1400));
    if ((*(a1 + 919) & 0x80000000) == 0)
    {
LABEL_38:
      if ((*(a1 + 887) & 0x80000000) == 0)
      {
        goto LABEL_39;
      }

      goto LABEL_92;
    }
  }

  else if ((*(a1 + 919) & 0x80000000) == 0)
  {
    goto LABEL_38;
  }

  operator delete(*(a1 + 896));
  if ((*(a1 + 887) & 0x80000000) == 0)
  {
LABEL_39:
    if ((*(a1 + 863) & 0x80000000) == 0)
    {
      goto LABEL_40;
    }

LABEL_93:
    operator delete(*(a1 + 840));
    if ((*(a1 + 839) & 0x80000000) == 0)
    {
      goto LABEL_41;
    }

    goto LABEL_94;
  }

LABEL_92:
  operator delete(*(a1 + 864));
  if (*(a1 + 863) < 0)
  {
    goto LABEL_93;
  }

LABEL_40:
  if ((*(a1 + 839) & 0x80000000) == 0)
  {
    goto LABEL_41;
  }

LABEL_94:
  operator delete(*(a1 + 816));
LABEL_41:
  std::__tree<AGX::Mempool<16u,0u,true,0u,0u,unsigned long long>::FreeIntervalList::Interval,AGX::Mempool<16u,0u,true,0u,0u,unsigned long long>::FreeIntervalList::IntervalRangeComparator,std::allocator<AGX::Mempool<16u,0u,true,0u,0u,unsigned long long>::FreeIntervalList::Interval>>::destroy(*(a1 + 544));
  v22 = *(a1 + 512);
  if (v22)
  {
    *(a1 + 520) = v22;
    operator delete(v22);
  }

  v23 = *(a1 + 472);
  if (v23)
  {
    *(a1 + 480) = v23;
    operator delete(v23);
  }

  v24 = *(a1 + 448);
  if (v24)
  {
    v25 = *(a1 + 456);
    v26 = *(a1 + 448);
    if (v25 != v24)
    {
      do
      {
        v27 = *(v25 - 24);
        if (v27)
        {
          *(v25 - 16) = v27;
          operator delete(v27);
        }

        v25 -= 32;
      }

      while (v25 != v24);
      v26 = *(a1 + 448);
    }

    *(a1 + 456) = v24;
    operator delete(v26);
  }

  v28 = *(a1 + 424);
  if (v28)
  {
    *(a1 + 432) = v28;
    operator delete(v28);
  }

  v29 = *(a1 + 328);
  if (v29)
  {
    *(a1 + 336) = v29;
    operator delete(v29);
  }

  v30 = *(a1 + 304);
  if (v30)
  {
    *(a1 + 312) = v30;
    operator delete(v30);
  }

  v31 = *(a1 + 280);
  if (v31)
  {
    *(a1 + 288) = v31;
    operator delete(v31);
  }

  v32 = *(a1 + 256);
  if (v32)
  {
    *(a1 + 264) = v32;
    operator delete(v32);
  }

  v33 = *(a1 + 216);
  if (v33)
  {
    *(a1 + 224) = v33;
    operator delete(v33);
  }

  v34 = *(a1 + 192);
  if (v34)
  {
    v35 = *(a1 + 200);
    v36 = *(a1 + 192);
    if (v35 != v34)
    {
      do
      {
        v37 = *(v35 - 24);
        if (v37)
        {
          *(v35 - 16) = v37;
          operator delete(v37);
        }

        v35 -= 32;
      }

      while (v35 != v34);
      v36 = *(a1 + 192);
    }

    *(a1 + 200) = v34;
    operator delete(v36);
  }

  v38 = *(a1 + 168);
  if (v38)
  {
    *(a1 + 176) = v38;
    operator delete(v38);
  }

  v39 = *(a1 + 144);
  if (v39)
  {
    *(a1 + 152) = v39;
    operator delete(v39);
  }

  v40 = *(a1 + 104);
  if (v40)
  {
    *(a1 + 112) = v40;
    operator delete(v40);
  }

  v41 = *(a1 + 80);
  if (v41)
  {
    v42 = *(a1 + 88);
    v43 = *(a1 + 80);
    if (v42 != v41)
    {
      do
      {
        v44 = *(v42 - 24);
        if (v44)
        {
          *(v42 - 16) = v44;
          operator delete(v44);
        }

        v42 -= 32;
      }

      while (v42 != v41);
      v43 = *(a1 + 80);
    }

    *(a1 + 88) = v41;
    operator delete(v43);
  }

  v45 = *(a1 + 56);
  if (v45)
  {
    *(a1 + 64) = v45;
    operator delete(v45);
  }

  return a1;
}

void AGX::ProgramVariant<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::BlitFragmentArgumentTable,false,false,AGX::NoCombinedUserDriverArgumentTable>::~ProgramVariant(unint64_t a1)
{
  AGX::ProgramVariant<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::BlitFragmentArgumentTable,false,false,AGX::NoCombinedUserDriverArgumentTable>::~ProgramVariant(a1);

  JUMPOUT(0x29ED520D0);
}

void AGX::BlitFragmentProgramVariant<AGX::HAL300::Encoders,AGX::HAL300::Classes>::~BlitFragmentProgramVariant(unint64_t a1)
{
  *a1 = &unk_2A23F7770;
  if (*(a1 + 3184))
  {
    v2 = (a1 + 3160);
    v3 = *(a1 + 3192);
    v4 = *(v3 + 16);
    v5[0] = MEMORY[0x29EDCA5F8];
    v5[1] = 3221225472;
    v5[2] = ___ZN3AGX4HeapILb1EE14deallocateImplERKNS1_10AllocationE_block_invoke;
    v5[3] = &__block_descriptor_48_e5_v8__0l;
    v5[4] = v3;
    v5[5] = a1 + 3160;
    dispatch_sync(v4, v5);
    *(a1 + 3185) = 0u;
    *v2 = 0u;
    *(a1 + 3176) = 0u;
  }

  AGX::ProgramVariantESLState<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::UserFragmentArgumentTableLayout,true,9ul>::~ProgramVariantESLState((a1 + 1784));
  AGX::ProgramVariant<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::BlitFragmentArgumentTable,false,false,AGX::NoCombinedUserDriverArgumentTable>::~ProgramVariant(a1);

  JUMPOUT(0x29ED520D0);
}

unint64_t AGX::BlitFragmentProgramVariant<AGX::HAL300::Encoders,AGX::HAL300::Classes>::~BlitFragmentProgramVariant(unint64_t a1)
{
  *a1 = &unk_2A23F7770;
  if (*(a1 + 3184))
  {
    v2 = (a1 + 3160);
    v3 = *(a1 + 3192);
    v4 = *(v3 + 16);
    v6[0] = MEMORY[0x29EDCA5F8];
    v6[1] = 3221225472;
    v6[2] = ___ZN3AGX4HeapILb1EE14deallocateImplERKNS1_10AllocationE_block_invoke;
    v6[3] = &__block_descriptor_48_e5_v8__0l;
    v6[4] = v3;
    v6[5] = a1 + 3160;
    dispatch_sync(v4, v6);
    *(a1 + 3185) = 0u;
    *v2 = 0u;
    *(a1 + 3176) = 0u;
  }

  AGX::ProgramVariantESLState<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::UserFragmentArgumentTableLayout,true,9ul>::~ProgramVariantESLState((a1 + 1784));

  return AGX::ProgramVariant<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::BlitFragmentArgumentTable,false,false,AGX::NoCombinedUserDriverArgumentTable>::~ProgramVariant(a1);
}

void sub_29CCD51C4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, char a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, dispatch_object_t object)
{
  os_unfair_lock_unlock(v27 + 182);
  os_unfair_lock_unlock((v26 + v28));
  _Block_object_dispose(&a17, 8);
  _Unwind_Resume(a1);
}

void ___ZN3AGX6DeviceINS_6HAL3008EncodersENS1_7ClassesENS1_10ObjClassesEE30findOrCreateBlitProgramVariantERNS_20BlitVertexProgramKeyE_block_invoke(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (!a3)
  {
    operator new();
  }

  v5 = "MTLCompilerErrorTimeout";
  v6 = "UnknownErrorCode";
  if (a3 == 2)
  {
    v6 = "MTLCompilerErrorCompilationError";
  }

  if (a3 != 3)
  {
    v5 = v6;
  }

  if (a3 == 1)
  {
    v7 = "MTLCompilerErrorFatalError";
  }

  else
  {
    v7 = v5;
  }

  v8[0] = 0;
  v9 = 0;
  (*(**(a1 + 48) + 16))(*(a1 + 48), v8, &v9);
  v8[7] = a4;
  v8[8] = v7;
  v8[9] = v9;
  v8[10] = v8[0];
  _ZZZN3AGX6DeviceINS_6HAL3008EncodersENS1_7ClassesENS1_10ObjClassesEE30findOrCreateBlitProgramVariantERNS_20BlitVertexProgramKeyEEUb_ENKUlvE_clB14_AGX__Crashed_Ev();
}

void sub_29CCD53CC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  AGX::ProgramBindingRemap<AGX::HAL300::Encoders,AGX::HAL300::Classes>::~ProgramBindingRemap(va);
  MEMORY[0x29ED520D0](v12, v11);
  _Unwind_Resume(a1);
}

uint64_t ___ZN3AGX8Compiler14compileProgramINS_20BlitVertexProgramKeyEEEvRKT_P7NSArrayIPU27objcproto16MTLBinaryArchive11objc_objectEU13block_pointerFvRK20AGCDeserializedReply16MTLCompilerErrorP8NSStringEb_block_invoke(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  if (a5)
  {
    AGX::Device<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses>::alertCommandBufferActivityStart(void)::{lambda(void)#1}::operator()[abi:[AGX] Failed assertion _previousValue _ 2147483647_]();
  }

  v5 = *(*(a1 + 32) + 16);

  return v5();
}

void ___ZN3AGX8Compiler14compileProgramINS_20BlitVertexProgramKeyE20AGCDeserializedReplyEEvRKT_P29MTLCompileFunctionRequestDataPU27objcproto16MTL4CompilerTask11objc_objectU13block_pointerFvRKT0_PU27objcproto16OS_dispatch_data8NSObjectSG_SG_SG_SG_16MTLCompilerErrorP8NSStringyE_block_invoke(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  v14[0] = MEMORY[0x29EDCA5F8];
  v14[1] = 3221225472;
  v15 = ___ZN3AGX8Compiler14compileProgramINS_20BlitVertexProgramKeyE20AGCDeserializedReplyEEvRKT_P29MTLCompileFunctionRequestDataPU27objcproto16MTL4CompilerTask11objc_objectU13block_pointerFvRKT0_PU27objcproto16OS_dispatch_data8NSObjectSG_SG_SG_SG_16MTLCompilerErrorP8NSStringyE_block_invoke_2;
  v16 = &unk_29F3422A8;
  v17 = a9;
  v18 = a3;
  v19 = a4;
  v20 = a5;
  v21 = a6;
  v22 = a7;
  v12 = a1 + 32;
  v10 = *(a1 + 32);
  v11 = *(v12 + 8);
  v23 = a8;
  v24 = v11;
  v25 = a2;
  v26 = a10;
  if ([v10 sync])
  {
    v15(v14);
  }

  else
  {
    global_queue = dispatch_get_global_queue(0, 0);
    dispatch_async(global_queue, v14);
  }
}

uint64_t ___ZN3AGX8Compiler14compileProgramINS_20BlitVertexProgramKeyE20AGCDeserializedReplyEEvRKT_P29MTLCompileFunctionRequestDataPU27objcproto16MTL4CompilerTask11objc_objectU13block_pointerFvRKT0_PU27objcproto16OS_dispatch_data8NSObjectSG_SG_SG_SG_16MTLCompilerErrorP8NSStringyE_block_invoke_4(uint64_t a1, void *a2)
{
  mach_absolute_time();
  if (getTimebaseInfo(void)::once != -1)
  {
    dispatch_once(&getTimebaseInfo(void)::once, &__block_literal_global_11354);
  }

  return (*(*(a1 + 32) + 16))(*(a1 + 32), *a2);
}

void ___ZN3AGX8Compiler14compileProgramINS_20BlitVertexProgramKeyE20AGCDeserializedReplyEEvRKT_P29MTLCompileFunctionRequestDataPU27objcproto16MTL4CompilerTask11objc_objectU13block_pointerFvRKT0_PU27objcproto16OS_dispatch_data8NSObjectSG_SG_SG_SG_16MTLCompilerErrorP8NSStringyE_block_invoke_2(void *a1)
{
  size_ptr = 0;
  buffer_ptr = 0;
  v2 = a1[12];
  AGCDeserializedReply::AGCDeserializedReply(v5);
  if (v2 || (v4 = a1[5]) == 0)
  {
    v3 = 0;
  }

  else
  {
    v3 = dispatch_data_create_map(v4, &buffer_ptr, &size_ptr);
    AGCDeserializedReply::deserialize(v5, buffer_ptr, size_ptr);
  }

  (*(a1[11] + 16))(a1[11], v5);
  if (v3)
  {
    dispatch_release(v3);
  }

  AGCDeserializedReply::~AGCDeserializedReply(v5);
}

void sub_29CCD56CC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  AGCDeserializedReply::~AGCDeserializedReply(va);
  _Unwind_Resume(a1);
}

void _ZZZN3AGX6DeviceINS_6HAL3008EncodersENS1_7ClassesENS1_10ObjClassesEE30findOrCreateBlitProgramVariantERNS_20BlitVertexProgramKeyEEUb_ENKUlvE_clB14_AGX__Crashed_Ev()
{
  os_log_type_enabled(MEMORY[0x29EDCA988], OS_LOG_TYPE_ERROR);
  _os_log_send_and_compose_impl();
  _os_crash_msg();
  __break(1u);
}

void AGX::HAL300::BlitVertexProgramVariant::~BlitVertexProgramVariant(AGX::HAL300::BlitVertexProgramVariant *this)
{
  AGX::BlitVertexProgramVariant<AGX::HAL300::Encoders,AGX::HAL300::Classes>::~BlitVertexProgramVariant(this);

  JUMPOUT(0x29ED520D0);
}

void sub_29CCD61B4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, char a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, dispatch_object_t object)
{
  os_unfair_lock_unlock(v27 + 222);
  _Block_object_dispose(&a17, 8);
  os_unfair_lock_unlock((v26 + v28));
  _Unwind_Resume(a1);
}

void ___ZN3AGX6DeviceINS_6HAL3008EncodersENS1_7ClassesENS1_10ObjClassesEE32findOrCreateDriverProgramVariantINS1_25BlitComputeProgramVariantENS_21BlitComputeProgramKeyENS1_18BlitComputeProgramEEEPT_PT1_RKT0_P7NSArrayIPU27objcproto16MTLBinaryArchive11objc_objectE_block_invoke(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (!a3)
  {
    operator new();
  }

  v5 = "MTLCompilerErrorTimeout";
  v6 = "UnknownErrorCode";
  if (a3 == 2)
  {
    v6 = "MTLCompilerErrorCompilationError";
  }

  if (a3 != 3)
  {
    v5 = v6;
  }

  if (a3 == 1)
  {
    v7 = "MTLCompilerErrorFatalError";
  }

  else
  {
    v7 = v5;
  }

  v12 = 0;
  *&v13 = 0;
  (*(**(a1 + 48) + 16))(*(a1 + 48), &v13, &v12);
  v8 = a4;
  v9 = v7;
  v10 = v12;
  v11 = v13;
  _ZZZN3AGX6DeviceINS_6HAL3008EncodersENS1_7ClassesENS1_10ObjClassesEE30findOrCreateBlitProgramVariantERNS_20BlitVertexProgramKeyEEUb_ENKUlvE_clB14_AGX__Crashed_Ev();
}

void sub_29CCD64DC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  AGX::ProgramVariantESLState<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::UserVertexArgumentTableLayout,true,8ul>::~ProgramVariantESLState((v3 + 1784));
  AGX::ProgramVariant<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::BlitComputeArgumentTable,false,false,AGX::NoCombinedUserDriverArgumentTable>::~ProgramVariant(v3);
  AGX::ProgramBindingRemap<AGX::HAL300::Encoders,AGX::HAL300::Classes>::~ProgramBindingRemap(va);
  MEMORY[0x29ED520D0](v3, v4);
  _Unwind_Resume(a1);
}

uint64_t ___ZN3AGX8Compiler14compileProgramINS_21BlitComputeProgramKeyEEEvRKT_P7NSArrayIPU27objcproto16MTLBinaryArchive11objc_objectEU13block_pointerFvRK20AGCDeserializedReply16MTLCompilerErrorP8NSStringEb_block_invoke(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  if (a5)
  {
    AGX::Device<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses>::alertCommandBufferActivityStart(void)::{lambda(void)#1}::operator()[abi:[AGX] Failed assertion _previousValue _ 2147483647_]();
  }

  v5 = *(*(a1 + 32) + 16);

  return v5();
}

void ___ZN3AGX8Compiler14compileProgramINS_21BlitComputeProgramKeyE20AGCDeserializedReplyEEvRKT_P29MTLCompileFunctionRequestDataPU27objcproto16MTL4CompilerTask11objc_objectU13block_pointerFvRKT0_PU27objcproto16OS_dispatch_data8NSObjectSG_SG_SG_SG_16MTLCompilerErrorP8NSStringyE_block_invoke(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  v14[0] = MEMORY[0x29EDCA5F8];
  v14[1] = 3221225472;
  v15 = ___ZN3AGX8Compiler14compileProgramINS_21BlitComputeProgramKeyE20AGCDeserializedReplyEEvRKT_P29MTLCompileFunctionRequestDataPU27objcproto16MTL4CompilerTask11objc_objectU13block_pointerFvRKT0_PU27objcproto16OS_dispatch_data8NSObjectSG_SG_SG_SG_16MTLCompilerErrorP8NSStringyE_block_invoke_2;
  v16 = &unk_29F3422A8;
  v17 = a9;
  v18 = a3;
  v19 = a4;
  v20 = a5;
  v21 = a6;
  v22 = a7;
  v12 = a1 + 32;
  v10 = *(a1 + 32);
  v11 = *(v12 + 8);
  v23 = a8;
  v24 = v11;
  v25 = a2;
  v26 = a10;
  if ([v10 sync])
  {
    v15(v14);
  }

  else
  {
    global_queue = dispatch_get_global_queue(0, 0);
    dispatch_async(global_queue, v14);
  }
}

uint64_t ___ZN3AGX8Compiler14compileProgramINS_21BlitComputeProgramKeyE20AGCDeserializedReplyEEvRKT_P29MTLCompileFunctionRequestDataPU27objcproto16MTL4CompilerTask11objc_objectU13block_pointerFvRKT0_PU27objcproto16OS_dispatch_data8NSObjectSG_SG_SG_SG_16MTLCompilerErrorP8NSStringyE_block_invoke_4(uint64_t a1, void *a2)
{
  mach_absolute_time();
  if (getTimebaseInfo(void)::once != -1)
  {
    dispatch_once(&getTimebaseInfo(void)::once, &__block_literal_global_11354);
  }

  return (*(*(a1 + 32) + 16))(*(a1 + 32), *a2);
}

void ___ZN3AGX8Compiler14compileProgramINS_21BlitComputeProgramKeyE20AGCDeserializedReplyEEvRKT_P29MTLCompileFunctionRequestDataPU27objcproto16MTL4CompilerTask11objc_objectU13block_pointerFvRKT0_PU27objcproto16OS_dispatch_data8NSObjectSG_SG_SG_SG_16MTLCompilerErrorP8NSStringyE_block_invoke_2(void *a1)
{
  size_ptr = 0;
  buffer_ptr = 0;
  v2 = a1[12];
  AGCDeserializedReply::AGCDeserializedReply(v5);
  if (v2 || (v4 = a1[5]) == 0)
  {
    v3 = 0;
  }

  else
  {
    v3 = dispatch_data_create_map(v4, &buffer_ptr, &size_ptr);
    AGCDeserializedReply::deserialize(v5, buffer_ptr, size_ptr);
  }

  (*(a1[11] + 16))(a1[11], v5);
  if (v3)
  {
    dispatch_release(v3);
  }

  AGCDeserializedReply::~AGCDeserializedReply(v5);
}

void sub_29CCD680C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  AGCDeserializedReply::~AGCDeserializedReply(va);
  _Unwind_Resume(a1);
}

void sub_29CCD704C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, char a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, dispatch_object_t object)
{
  os_unfair_lock_unlock(v27 + 182);
  _Block_object_dispose(&a17, 8);
  os_unfair_lock_unlock((v26 + v28));
  _Unwind_Resume(a1);
}

void ___ZN3AGX6DeviceINS_6HAL3008EncodersENS1_7ClassesENS1_10ObjClassesEE32findOrCreateDriverProgramVariantINS1_25BlitComputeProgramVariantENS_20BlitSparseProgramKeyENS1_17BlitSparseProgramEEEPT_PT1_RKT0_P7NSArrayIPU27objcproto16MTLBinaryArchive11objc_objectE_block_invoke(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (!a3)
  {
    operator new();
  }

  v5 = "MTLCompilerErrorTimeout";
  v6 = "UnknownErrorCode";
  if (a3 == 2)
  {
    v6 = "MTLCompilerErrorCompilationError";
  }

  if (a3 != 3)
  {
    v5 = v6;
  }

  if (a3 == 1)
  {
    v7 = "MTLCompilerErrorFatalError";
  }

  else
  {
    v7 = v5;
  }

  v12 = 0;
  *&v13 = 0;
  (*(**(a1 + 48) + 16))(*(a1 + 48), &v13, &v12);
  v8 = a4;
  v9 = v7;
  v10 = v12;
  v11 = v13;
  _ZZZN3AGX6DeviceINS_6HAL3008EncodersENS1_7ClassesENS1_10ObjClassesEE30findOrCreateBlitProgramVariantERNS_20BlitVertexProgramKeyEEUb_ENKUlvE_clB14_AGX__Crashed_Ev();
}

void sub_29CCD7374(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  AGX::ProgramVariantESLState<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::UserVertexArgumentTableLayout,true,8ul>::~ProgramVariantESLState((v3 + 1784));
  AGX::ProgramVariant<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::BlitComputeArgumentTable,false,false,AGX::NoCombinedUserDriverArgumentTable>::~ProgramVariant(v3);
  AGX::ProgramBindingRemap<AGX::HAL300::Encoders,AGX::HAL300::Classes>::~ProgramBindingRemap(va);
  MEMORY[0x29ED520D0](v3, v4);
  _Unwind_Resume(a1);
}

uint64_t ___ZN3AGX8Compiler14compileProgramINS_20BlitSparseProgramKeyEEEvRKT_P7NSArrayIPU27objcproto16MTLBinaryArchive11objc_objectEU13block_pointerFvRK20AGCDeserializedReply16MTLCompilerErrorP8NSStringEb_block_invoke(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  if (a5)
  {
    AGX::Device<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses>::alertCommandBufferActivityStart(void)::{lambda(void)#1}::operator()[abi:[AGX] Failed assertion _previousValue _ 2147483647_]();
  }

  v5 = *(*(a1 + 32) + 16);

  return v5();
}

void ___ZN3AGX8Compiler14compileProgramINS_20BlitSparseProgramKeyE20AGCDeserializedReplyEEvRKT_P29MTLCompileFunctionRequestDataPU27objcproto16MTL4CompilerTask11objc_objectU13block_pointerFvRKT0_PU27objcproto16OS_dispatch_data8NSObjectSG_SG_SG_SG_16MTLCompilerErrorP8NSStringyE_block_invoke(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  v14[0] = MEMORY[0x29EDCA5F8];
  v14[1] = 3221225472;
  v15 = ___ZN3AGX8Compiler14compileProgramINS_20BlitSparseProgramKeyE20AGCDeserializedReplyEEvRKT_P29MTLCompileFunctionRequestDataPU27objcproto16MTL4CompilerTask11objc_objectU13block_pointerFvRKT0_PU27objcproto16OS_dispatch_data8NSObjectSG_SG_SG_SG_16MTLCompilerErrorP8NSStringyE_block_invoke_2;
  v16 = &unk_29F3422A8;
  v17 = a9;
  v18 = a3;
  v19 = a4;
  v20 = a5;
  v21 = a6;
  v22 = a7;
  v12 = a1 + 32;
  v10 = *(a1 + 32);
  v11 = *(v12 + 8);
  v23 = a8;
  v24 = v11;
  v25 = a2;
  v26 = a10;
  if ([v10 sync])
  {
    v15(v14);
  }

  else
  {
    global_queue = dispatch_get_global_queue(0, 0);
    dispatch_async(global_queue, v14);
  }
}

uint64_t ___ZN3AGX8Compiler14compileProgramINS_20BlitSparseProgramKeyE20AGCDeserializedReplyEEvRKT_P29MTLCompileFunctionRequestDataPU27objcproto16MTL4CompilerTask11objc_objectU13block_pointerFvRKT0_PU27objcproto16OS_dispatch_data8NSObjectSG_SG_SG_SG_16MTLCompilerErrorP8NSStringyE_block_invoke_4(uint64_t a1, void *a2)
{
  mach_absolute_time();
  if (getTimebaseInfo(void)::once != -1)
  {
    dispatch_once(&getTimebaseInfo(void)::once, &__block_literal_global_11354);
  }

  return (*(*(a1 + 32) + 16))(*(a1 + 32), *a2);
}

void ___ZN3AGX8Compiler14compileProgramINS_20BlitSparseProgramKeyE20AGCDeserializedReplyEEvRKT_P29MTLCompileFunctionRequestDataPU27objcproto16MTL4CompilerTask11objc_objectU13block_pointerFvRKT0_PU27objcproto16OS_dispatch_data8NSObjectSG_SG_SG_SG_16MTLCompilerErrorP8NSStringyE_block_invoke_2(void *a1)
{
  size_ptr = 0;
  buffer_ptr = 0;
  v2 = a1[12];
  AGCDeserializedReply::AGCDeserializedReply(v5);
  if (v2 || (v4 = a1[5]) == 0)
  {
    v3 = 0;
  }

  else
  {
    v3 = dispatch_data_create_map(v4, &buffer_ptr, &size_ptr);
    AGCDeserializedReply::deserialize(v5, buffer_ptr, size_ptr);
  }

  (*(a1[11] + 16))(a1[11], v5);
  if (v3)
  {
    dispatch_release(v3);
  }

  AGCDeserializedReply::~AGCDeserializedReply(v5);
}

void sub_29CCD76A4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  AGCDeserializedReply::~AGCDeserializedReply(va);
  _Unwind_Resume(a1);
}

void sub_29CCD7EE4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, char a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, dispatch_object_t object)
{
  os_unfair_lock_unlock(v27 + 182);
  _Block_object_dispose(&a17, 8);
  os_unfair_lock_unlock((v26 + v28));
  _Unwind_Resume(a1);
}

void ___ZN3AGX6DeviceINS_6HAL3008EncodersENS1_7ClassesENS1_10ObjClassesEE32findOrCreateDriverProgramVariantINS1_25BlitComputeProgramVariantENS_23BlitFastClearProgramKeyENS1_20BlitFastClearProgramEEEPT_PT1_RKT0_P7NSArrayIPU27objcproto16MTLBinaryArchive11objc_objectE_block_invoke(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (!a3)
  {
    operator new();
  }

  v5 = "MTLCompilerErrorTimeout";
  v6 = "UnknownErrorCode";
  if (a3 == 2)
  {
    v6 = "MTLCompilerErrorCompilationError";
  }

  if (a3 != 3)
  {
    v5 = v6;
  }

  if (a3 == 1)
  {
    v7 = "MTLCompilerErrorFatalError";
  }

  else
  {
    v7 = v5;
  }

  v12 = 0;
  *&v13 = 0;
  (*(**(a1 + 48) + 16))(*(a1 + 48), &v13, &v12);
  v8 = a4;
  v9 = v7;
  v10 = v12;
  v11 = v13;
  _ZZZN3AGX6DeviceINS_6HAL3008EncodersENS1_7ClassesENS1_10ObjClassesEE30findOrCreateBlitProgramVariantERNS_20BlitVertexProgramKeyEEUb_ENKUlvE_clB14_AGX__Crashed_Ev();
}

void sub_29CCD820C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  AGX::ProgramVariantESLState<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::UserVertexArgumentTableLayout,true,8ul>::~ProgramVariantESLState((v3 + 1784));
  AGX::ProgramVariant<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::BlitComputeArgumentTable,false,false,AGX::NoCombinedUserDriverArgumentTable>::~ProgramVariant(v3);
  AGX::ProgramBindingRemap<AGX::HAL300::Encoders,AGX::HAL300::Classes>::~ProgramBindingRemap(va);
  MEMORY[0x29ED520D0](v3, v4);
  _Unwind_Resume(a1);
}

uint64_t ___ZN3AGX8Compiler14compileProgramINS_23BlitFastClearProgramKeyEEEvRKT_P7NSArrayIPU27objcproto16MTLBinaryArchive11objc_objectEU13block_pointerFvRK20AGCDeserializedReply16MTLCompilerErrorP8NSStringEb_block_invoke(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  if (a5)
  {
    AGX::Device<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses>::alertCommandBufferActivityStart(void)::{lambda(void)#1}::operator()[abi:[AGX] Failed assertion _previousValue _ 2147483647_]();
  }

  v5 = *(*(a1 + 32) + 16);

  return v5();
}

void ___ZN3AGX8Compiler14compileProgramINS_23BlitFastClearProgramKeyE20AGCDeserializedReplyEEvRKT_P29MTLCompileFunctionRequestDataPU27objcproto16MTL4CompilerTask11objc_objectU13block_pointerFvRKT0_PU27objcproto16OS_dispatch_data8NSObjectSG_SG_SG_SG_16MTLCompilerErrorP8NSStringyE_block_invoke(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  v14[0] = MEMORY[0x29EDCA5F8];
  v14[1] = 3221225472;
  v15 = ___ZN3AGX8Compiler14compileProgramINS_23BlitFastClearProgramKeyE20AGCDeserializedReplyEEvRKT_P29MTLCompileFunctionRequestDataPU27objcproto16MTL4CompilerTask11objc_objectU13block_pointerFvRKT0_PU27objcproto16OS_dispatch_data8NSObjectSG_SG_SG_SG_16MTLCompilerErrorP8NSStringyE_block_invoke_2;
  v16 = &unk_29F3422A8;
  v17 = a9;
  v18 = a3;
  v19 = a4;
  v20 = a5;
  v21 = a6;
  v22 = a7;
  v12 = a1 + 32;
  v10 = *(a1 + 32);
  v11 = *(v12 + 8);
  v23 = a8;
  v24 = v11;
  v25 = a2;
  v26 = a10;
  if ([v10 sync])
  {
    v15(v14);
  }

  else
  {
    global_queue = dispatch_get_global_queue(0, 0);
    dispatch_async(global_queue, v14);
  }
}

uint64_t ___ZN3AGX8Compiler14compileProgramINS_23BlitFastClearProgramKeyE20AGCDeserializedReplyEEvRKT_P29MTLCompileFunctionRequestDataPU27objcproto16MTL4CompilerTask11objc_objectU13block_pointerFvRKT0_PU27objcproto16OS_dispatch_data8NSObjectSG_SG_SG_SG_16MTLCompilerErrorP8NSStringyE_block_invoke_4(uint64_t a1, void *a2)
{
  mach_absolute_time();
  if (getTimebaseInfo(void)::once != -1)
  {
    dispatch_once(&getTimebaseInfo(void)::once, &__block_literal_global_11354);
  }

  return (*(*(a1 + 32) + 16))(*(a1 + 32), *a2);
}

void ___ZN3AGX8Compiler14compileProgramINS_23BlitFastClearProgramKeyE20AGCDeserializedReplyEEvRKT_P29MTLCompileFunctionRequestDataPU27objcproto16MTL4CompilerTask11objc_objectU13block_pointerFvRKT0_PU27objcproto16OS_dispatch_data8NSObjectSG_SG_SG_SG_16MTLCompilerErrorP8NSStringyE_block_invoke_2(void *a1)
{
  size_ptr = 0;
  buffer_ptr = 0;
  v2 = a1[12];
  AGCDeserializedReply::AGCDeserializedReply(v5);
  if (v2 || (v4 = a1[5]) == 0)
  {
    v3 = 0;
  }

  else
  {
    v3 = dispatch_data_create_map(v4, &buffer_ptr, &size_ptr);
    AGCDeserializedReply::deserialize(v5, buffer_ptr, size_ptr);
  }

  (*(a1[11] + 16))(a1[11], v5);
  if (v3)
  {
    dispatch_release(v3);
  }

  AGCDeserializedReply::~AGCDeserializedReply(v5);
}

void sub_29CCD853C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  AGCDeserializedReply::~AGCDeserializedReply(va);
  _Unwind_Resume(a1);
}

void sub_29CCD8D4C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, char a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, dispatch_object_t object)
{
  os_unfair_lock_unlock(v27 + 182);
  os_unfair_lock_unlock((v26 + v28));
  _Block_object_dispose(&a17, 8);
  _Unwind_Resume(a1);
}

void ___ZN3AGX6DeviceINS_6HAL3008EncodersENS1_7ClassesENS1_10ObjClassesEE30findOrCreateBlitProgramVariantERNS_29BlitVertexFastClearProgramKeyE_block_invoke(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (!a3)
  {
    operator new();
  }

  v5 = "MTLCompilerErrorTimeout";
  v6 = "UnknownErrorCode";
  if (a3 == 2)
  {
    v6 = "MTLCompilerErrorCompilationError";
  }

  if (a3 != 3)
  {
    v5 = v6;
  }

  if (a3 == 1)
  {
    v7 = "MTLCompilerErrorFatalError";
  }

  else
  {
    v7 = v5;
  }

  v8[0] = 0;
  v9 = 0;
  (*(**(a1 + 48) + 16))(*(a1 + 48), v8, &v9);
  v8[7] = a4;
  v8[8] = v7;
  v8[9] = v9;
  v8[10] = v8[0];
  _ZZZN3AGX6DeviceINS_6HAL3008EncodersENS1_7ClassesENS1_10ObjClassesEE30findOrCreateBlitProgramVariantERNS_20BlitVertexProgramKeyEEUb_ENKUlvE_clB14_AGX__Crashed_Ev();
}

void sub_29CCD8F54(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  AGX::ProgramBindingRemap<AGX::HAL300::Encoders,AGX::HAL300::Classes>::~ProgramBindingRemap(va);
  MEMORY[0x29ED520D0](v12, v11);
  _Unwind_Resume(a1);
}

uint64_t ___ZN3AGX8Compiler14compileProgramINS_29BlitVertexFastClearProgramKeyEEEvRKT_P7NSArrayIPU27objcproto16MTLBinaryArchive11objc_objectEU13block_pointerFvRK20AGCDeserializedReply16MTLCompilerErrorP8NSStringEb_block_invoke(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  if (a5)
  {
    AGX::Device<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses>::alertCommandBufferActivityStart(void)::{lambda(void)#1}::operator()[abi:[AGX] Failed assertion _previousValue _ 2147483647_]();
  }

  v5 = *(*(a1 + 32) + 16);

  return v5();
}

void ___ZN3AGX8Compiler14compileProgramINS_29BlitVertexFastClearProgramKeyE20AGCDeserializedReplyEEvRKT_P29MTLCompileFunctionRequestDataPU27objcproto16MTL4CompilerTask11objc_objectU13block_pointerFvRKT0_PU27objcproto16OS_dispatch_data8NSObjectSG_SG_SG_SG_16MTLCompilerErrorP8NSStringyE_block_invoke(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  v14[0] = MEMORY[0x29EDCA5F8];
  v14[1] = 3221225472;
  v15 = ___ZN3AGX8Compiler14compileProgramINS_29BlitVertexFastClearProgramKeyE20AGCDeserializedReplyEEvRKT_P29MTLCompileFunctionRequestDataPU27objcproto16MTL4CompilerTask11objc_objectU13block_pointerFvRKT0_PU27objcproto16OS_dispatch_data8NSObjectSG_SG_SG_SG_16MTLCompilerErrorP8NSStringyE_block_invoke_2;
  v16 = &unk_29F3422A8;
  v17 = a9;
  v18 = a3;
  v19 = a4;
  v20 = a5;
  v21 = a6;
  v22 = a7;
  v12 = a1 + 32;
  v10 = *(a1 + 32);
  v11 = *(v12 + 8);
  v23 = a8;
  v24 = v11;
  v25 = a2;
  v26 = a10;
  if ([v10 sync])
  {
    v15(v14);
  }

  else
  {
    global_queue = dispatch_get_global_queue(0, 0);
    dispatch_async(global_queue, v14);
  }
}

uint64_t ___ZN3AGX8Compiler14compileProgramINS_29BlitVertexFastClearProgramKeyE20AGCDeserializedReplyEEvRKT_P29MTLCompileFunctionRequestDataPU27objcproto16MTL4CompilerTask11objc_objectU13block_pointerFvRKT0_PU27objcproto16OS_dispatch_data8NSObjectSG_SG_SG_SG_16MTLCompilerErrorP8NSStringyE_block_invoke_4(uint64_t a1, void *a2)
{
  mach_absolute_time();
  if (getTimebaseInfo(void)::once != -1)
  {
    dispatch_once(&getTimebaseInfo(void)::once, &__block_literal_global_11354);
  }

  return (*(*(a1 + 32) + 16))(*(a1 + 32), *a2);
}

void ___ZN3AGX8Compiler14compileProgramINS_29BlitVertexFastClearProgramKeyE20AGCDeserializedReplyEEvRKT_P29MTLCompileFunctionRequestDataPU27objcproto16MTL4CompilerTask11objc_objectU13block_pointerFvRKT0_PU27objcproto16OS_dispatch_data8NSObjectSG_SG_SG_SG_16MTLCompilerErrorP8NSStringyE_block_invoke_2(void *a1)
{
  size_ptr = 0;
  buffer_ptr = 0;
  v2 = a1[12];
  AGCDeserializedReply::AGCDeserializedReply(v5);
  if (v2 || (v4 = a1[5]) == 0)
  {
    v3 = 0;
  }

  else
  {
    v3 = dispatch_data_create_map(v4, &buffer_ptr, &size_ptr);
    AGCDeserializedReply::deserialize(v5, buffer_ptr, size_ptr);
  }

  (*(a1[11] + 16))(a1[11], v5);
  if (v3)
  {
    dispatch_release(v3);
  }

  AGCDeserializedReply::~AGCDeserializedReply(v5);
}

void sub_29CCD9254(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  AGCDeserializedReply::~AGCDeserializedReply(va);
  _Unwind_Resume(a1);
}

void AGX::HAL300::BlitVertexFastClearProgramVariant::~BlitVertexFastClearProgramVariant(AGX::HAL300::BlitVertexFastClearProgramVariant *this)
{
  *this = &unk_2A23F77B0;
  if (*(this + 403))
  {
    v2 = *(this + 404);
    v3 = *(v2 + 16);
    v4[0] = MEMORY[0x29EDCA5F8];
    v4[1] = 3221225472;
    v4[2] = ___ZN3AGX4HeapILb1EE14deallocateImplERKNS1_10AllocationE_block_invoke;
    v4[3] = &__block_descriptor_48_e5_v8__0l;
    v4[4] = v2;
    v4[5] = this + 3200;
    dispatch_sync(v3, v4);
    *(this + 3225) = 0u;
    *(this + 201) = 0u;
    *(this + 200) = 0u;
  }

  AGX::ProgramVariantESLState<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::UserVertexArgumentTableLayout,true,8ul>::~ProgramVariantESLState(this + 223);
  AGX::ProgramVariant<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::BlitFastClearVertexArgumentTable,false,false,AGX::NoCombinedUserDriverArgumentTable>::~ProgramVariant(this);

  JUMPOUT(0x29ED520D0);
}

{
  *this = &unk_2A23F77B0;
  if (*(this + 403))
  {
    v2 = *(this + 404);
    v3 = *(v2 + 16);
    v4[0] = MEMORY[0x29EDCA5F8];
    v4[1] = 3221225472;
    v4[2] = ___ZN3AGX4HeapILb1EE14deallocateImplERKNS1_10AllocationE_block_invoke;
    v4[3] = &__block_descriptor_48_e5_v8__0l;
    v4[4] = v2;
    v4[5] = this + 3200;
    dispatch_sync(v3, v4);
    *(this + 3225) = 0u;
    *(this + 201) = 0u;
    *(this + 200) = 0u;
  }

  AGX::ProgramVariantESLState<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::UserVertexArgumentTableLayout,true,8ul>::~ProgramVariantESLState(this + 223);

  AGX::ProgramVariant<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::BlitFastClearVertexArgumentTable,false,false,AGX::NoCombinedUserDriverArgumentTable>::~ProgramVariant(this);
}

unint64_t AGX::Device<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses>::findOrCreateUberBlitPipeline(uint64_t a1, unsigned int *a2)
{
  v47 = *MEMORY[0x29EDCA608];
  v2 = a2[10];
  v30 = 0;
  v31 = &v30;
  v32 = 0x2020000000;
  explicit = atomic_load_explicit((a1 + 8 * v2 + 6128), memory_order_acquire);
  v3 = explicit;
  if (!explicit)
  {
    os_unfair_lock_lock((a1 + 6120));
    v6 = *(a1 + 7160);
    v29[0] = MEMORY[0x29EDCA5F8];
    v29[1] = 3221225472;
    v29[2] = ___ZN3AGX6DeviceINS_6HAL3008EncodersENS1_7ClassesENS1_10ObjClassesEE28findOrCreateUberBlitPipelineERNS_18UberBlitProgramKeyE_block_invoke;
    v29[3] = &unk_29F340FA8;
    v29[4] = &v30;
    v29[5] = a1;
    v29[6] = v2;
    v7 = *(v6 + 8);
    if ((*(*a2 + 24))(a2))
    {
      v8 = v7;
    }

    else
    {
      v8 = 0;
    }

    v9 = objc_opt_new();
    [v9 setSync:1];
    [v9 setPipelineCache:v8];
    [v9 setBinaryArchives:0];
    v34[0] = MEMORY[0x29EDCA5F8];
    v34[1] = 3221225472;
    v34[2] = ___ZN3AGX8Compiler14compileProgramINS_18UberBlitProgramKeyEEEvRKT_P7NSArrayIPU27objcproto16MTLBinaryArchive11objc_objectEU13block_pointerFvRK20AGCDeserializedReply16MTLCompilerErrorP8NSStringEb_block_invoke;
    v34[3] = &unk_29F342280;
    v34[4] = v29;
    v10 = *(v6 + 24);
    if (v10 && *(v10 + 120) == 1)
    {
      v11 = [objc_msgSend(v9 "binaryArchives")];
      v12 = 0x200000000000;
      if (!v11)
      {
        v12 = 1;
      }

      atomic_fetch_or(v10, v12);
      v13 = *(v6 + 24);
      v14 = [v9 destinationBinaryArchive];
      v15 = 0x400000000000;
      if (!v14)
      {
        v15 = 1;
      }

      atomic_fetch_or(v13, v15);
    }

    if ([v9 destinationBinaryArchive])
    {
      {
        AGX::Compiler::shouldUseAIRNTInterfacesForBinaryArchiveAddRequests(void)::envDisable = 0;
      }

      if (AGX::Compiler::shouldUseAIRNTInterfacesForBinaryArchiveAddRequests(void)::envDisable == 1)
      {
        [v9 setUseAIRNTInterfaces:0];
      }
    }

    v38 = 0;
    v39 = 0;
    (*(*a2 + 16))(a2, &v39, &v38);
    v16 = dispatch_data_create(v39, v38, 0, 0);
    [v9 setDriverKeyData:v16];
    if ([v9 airScript])
    {
      v17 = [v9 airScript];
      object = 0;
      v36 = 0;
      v37 = 0;
      object = dispatch_data_create_map(v17, &v36, &v37);
      v18 = v36;
      v19 = *v36;
      CC_SHA256_Init(&c);
      (**a2)(a2, &c);
      *len = 0;
      data = 0;
      if (AGX::GetSerializedVertexFormat((v18 + v19), &data, len, v20, v21))
      {
        v22 = data;
        CC_SHA256_Update(&c, data, len[0]);
        free(v22);
      }

      CC_SHA256_Final(&md, &c);
      dispatch_release(object);
      *c.count = md;
      *&c.hash[2] = v43;
      [v9 setVendorPluginFunctionId:&c];
    }

    *c.count = MEMORY[0x29EDCA5F8];
    *c.hash = 3221225472;
    *&c.hash[2] = ___ZN3AGX8Compiler14compileProgramINS_18UberBlitProgramKeyE20AGCDeserializedReplyEEvRKT_P29MTLCompileFunctionRequestDataPU27objcproto16MTL4CompilerTask11objc_objectU13block_pointerFvRKT0_PU27objcproto16OS_dispatch_data8NSObjectSG_SG_SG_SG_16MTLCompilerErrorP8NSStringyE_block_invoke;
    *&c.hash[4] = &unk_29F3422D0;
    *&c.hash[6] = v9;
    *c.wbuf = v34;
    if ([v9 function])
    {
      v23 = mach_absolute_time();
      v24 = *v6;
      *&md = MEMORY[0x29EDCA5F8];
      *(&md + 1) = 3221225472;
      *&v43 = ___ZN3AGX8Compiler14compileProgramINS_18UberBlitProgramKeyE20AGCDeserializedReplyEEvRKT_P29MTLCompileFunctionRequestDataPU27objcproto16MTL4CompilerTask11objc_objectU13block_pointerFvRKT0_PU27objcproto16OS_dispatch_data8NSObjectSG_SG_SG_SG_16MTLCompilerErrorP8NSStringyE_block_invoke_4;
      *(&v43 + 1) = &unk_29F342320;
      p_c = &c;
      v45 = v23;
      [v24 compileFunctionRequest:v9 compilerTask:0 completionHandler:&md];
    }

    else
    {
      if ([v9 frameworkData] || objc_msgSend(v9, "pipelineOptions"))
      {
        AGX::Device<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses>::alertCommandBufferActivityStart(void)::{lambda(void)#1}::operator()[abi:[AGX] Failed assertion _previousValue _ 2147483647_]();
      }

      *&md = MEMORY[0x29EDCA5F8];
      *(&md + 1) = 3221225472;
      *&v43 = ___ZN3AGX8Compiler14compileProgramINS_18UberBlitProgramKeyE20AGCDeserializedReplyEEvRKT_P29MTLCompileFunctionRequestDataPU27objcproto16MTL4CompilerTask11objc_objectU13block_pointerFvRKT0_PU27objcproto16OS_dispatch_data8NSObjectSG_SG_SG_SG_16MTLCompilerErrorP8NSStringyE_block_invoke_3;
      *(&v43 + 1) = &unk_29F3422F8;
      p_c = &c;
      v25 = [objc_msgSend(v9 "binaryArchives")];
      v26 = *v6;
      v27 = [v9 driverKeyData];
      if (v25)
      {
        [v26 compileRequest:v27 binaryArchives:objc_msgSend(v9 failOnBinaryArchiveMiss:"binaryArchives") pipelineCache:0 sync:objc_msgSend(v9 completionHandler:{"pipelineCache"), objc_msgSend(v9, "sync"), &md}];
      }

      else
      {
        [v26 compileRequest:v27 pipelineCache:objc_msgSend(v9 sync:"pipelineCache") completionHandler:{objc_msgSend(v9, "sync"), &md}];
      }
    }

    dispatch_release(v16);

    v3 = v31[3];
    os_unfair_lock_unlock((a1 + 6120));
  }

  _Block_object_dispose(&v30, 8);
  return v3;
}

void sub_29CCD9980(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, char a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, dispatch_object_t object)
{
  dispatch_release(object);
  os_unfair_lock_unlock((v26 + v27));
  _Block_object_dispose(&a17, 8);
  _Unwind_Resume(a1);
}

void ___ZN3AGX6DeviceINS_6HAL3008EncodersENS1_7ClassesENS1_10ObjClassesEE28findOrCreateUberBlitPipelineERNS_18UberBlitProgramKeyE_block_invoke(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  if (!a3)
  {
    operator new();
  }

  _ZZZN3AGX6DeviceINS_6HAL3008EncodersENS1_7ClassesENS1_10ObjClassesEE28findOrCreateUberBlitPipelineERNS_18UberBlitProgramKeyEEUb_ENKUlvE_clB57_AGX__Failed_assertion__error____MTLCompilerErrorNoError_Ev(a4);
}

uint64_t ___ZN3AGX8Compiler14compileProgramINS_18UberBlitProgramKeyEEEvRKT_P7NSArrayIPU27objcproto16MTLBinaryArchive11objc_objectEU13block_pointerFvRK20AGCDeserializedReply16MTLCompilerErrorP8NSStringEb_block_invoke(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  if (a5)
  {
    AGX::Device<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses>::alertCommandBufferActivityStart(void)::{lambda(void)#1}::operator()[abi:[AGX] Failed assertion _previousValue _ 2147483647_]();
  }

  v5 = *(*(a1 + 32) + 16);

  return v5();
}

void ___ZN3AGX8Compiler14compileProgramINS_18UberBlitProgramKeyE20AGCDeserializedReplyEEvRKT_P29MTLCompileFunctionRequestDataPU27objcproto16MTL4CompilerTask11objc_objectU13block_pointerFvRKT0_PU27objcproto16OS_dispatch_data8NSObjectSG_SG_SG_SG_16MTLCompilerErrorP8NSStringyE_block_invoke(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  v14[0] = MEMORY[0x29EDCA5F8];
  v14[1] = 3221225472;
  v15 = ___ZN3AGX8Compiler14compileProgramINS_18UberBlitProgramKeyE20AGCDeserializedReplyEEvRKT_P29MTLCompileFunctionRequestDataPU27objcproto16MTL4CompilerTask11objc_objectU13block_pointerFvRKT0_PU27objcproto16OS_dispatch_data8NSObjectSG_SG_SG_SG_16MTLCompilerErrorP8NSStringyE_block_invoke_2;
  v16 = &unk_29F3422A8;
  v17 = a9;
  v18 = a3;
  v19 = a4;
  v20 = a5;
  v21 = a6;
  v22 = a7;
  v12 = a1 + 32;
  v10 = *(a1 + 32);
  v11 = *(v12 + 8);
  v23 = a8;
  v24 = v11;
  v25 = a2;
  v26 = a10;
  if ([v10 sync])
  {
    v15(v14);
  }

  else
  {
    global_queue = dispatch_get_global_queue(0, 0);
    dispatch_async(global_queue, v14);
  }
}

uint64_t ___ZN3AGX8Compiler14compileProgramINS_18UberBlitProgramKeyE20AGCDeserializedReplyEEvRKT_P29MTLCompileFunctionRequestDataPU27objcproto16MTL4CompilerTask11objc_objectU13block_pointerFvRKT0_PU27objcproto16OS_dispatch_data8NSObjectSG_SG_SG_SG_16MTLCompilerErrorP8NSStringyE_block_invoke_4(uint64_t a1, void *a2)
{
  mach_absolute_time();
  if (getTimebaseInfo(void)::once != -1)
  {
    dispatch_once(&getTimebaseInfo(void)::once, &__block_literal_global_11354);
  }

  return (*(*(a1 + 32) + 16))(*(a1 + 32), *a2);
}

void ___ZN3AGX8Compiler14compileProgramINS_18UberBlitProgramKeyE20AGCDeserializedReplyEEvRKT_P29MTLCompileFunctionRequestDataPU27objcproto16MTL4CompilerTask11objc_objectU13block_pointerFvRKT0_PU27objcproto16OS_dispatch_data8NSObjectSG_SG_SG_SG_16MTLCompilerErrorP8NSStringyE_block_invoke_2(void *a1)
{
  size_ptr = 0;
  buffer_ptr = 0;
  v2 = a1[12];
  AGCDeserializedReply::AGCDeserializedReply(v5);
  if (v2 || (v4 = a1[5]) == 0)
  {
    v3 = 0;
  }

  else
  {
    v3 = dispatch_data_create_map(v4, &buffer_ptr, &size_ptr);
    AGCDeserializedReply::deserialize(v5, buffer_ptr, size_ptr);
  }

  (*(a1[11] + 16))(a1[11], v5);
  if (v3)
  {
    dispatch_release(v3);
  }

  AGCDeserializedReply::~AGCDeserializedReply(v5);
}

void sub_29CCD9FCC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  AGCDeserializedReply::~AGCDeserializedReply(va);
  _Unwind_Resume(a1);
}

void _ZZZN3AGX6DeviceINS_6HAL3008EncodersENS1_7ClassesENS1_10ObjClassesEE28findOrCreateUberBlitPipelineERNS_18UberBlitProgramKeyEEUb_ENKUlvE_clB57_AGX__Failed_assertion__error____MTLCompilerErrorNoError_Ev(void *a1)
{
  os_log_type_enabled(MEMORY[0x29EDCA988], OS_LOG_TYPE_ERROR);
  [a1 UTF8String];
  _os_log_send_and_compose_impl();
  _os_crash_msg();
  __break(1u);
}

void ___ZN3AGX6DeviceINS_6HAL3008EncodersENS1_7ClassesENS1_10ObjClassesEE46findOrCreateComputeControlFlowPredicateProgramERKNS_37ComputeControlFlowPredicateProgramKeyE_block_invoke(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (!a3)
  {
    operator new();
  }

  v5 = "MTLCompilerErrorTimeout";
  v6 = "UnknownErrorCode";
  if (a3 == 2)
  {
    v6 = "MTLCompilerErrorCompilationError";
  }

  if (a3 != 3)
  {
    v5 = v6;
  }

  if (a3 == 1)
  {
    v7 = "MTLCompilerErrorFatalError";
  }

  else
  {
    v7 = v5;
  }

  v12 = 0;
  v13 = 0;
  (*(**(a1 + 48) + 16))(*(a1 + 48), &v13, &v12);
  v8 = a4;
  v9 = v7;
  v10 = v12;
  v11 = v13;
  _ZZZN3AGX6DeviceINS_6HAL3008EncodersENS1_7ClassesENS1_10ObjClassesEE30findOrCreateBlitProgramVariantERNS_20BlitVertexProgramKeyEEUb_ENKUlvE_clB14_AGX__Crashed_Ev();
}

void sub_29CCDA280(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  if (*(v6 - 65) < 0)
  {
    operator delete(*(v6 - 88));
  }

  AGX::ProgramBindingRemap<AGX::HAL300::Encoders,AGX::HAL300::Classes>::~ProgramBindingRemap(va);
  MEMORY[0x29ED520D0](v4, v5);
  _Unwind_Resume(a1);
}

uint64_t ___ZN3AGX8Compiler14compileProgramINS_37ComputeControlFlowPredicateProgramKeyEEEvRKT_P7NSArrayIPU27objcproto16MTLBinaryArchive11objc_objectEU13block_pointerFvRK20AGCDeserializedReply16MTLCompilerErrorP8NSStringEb_block_invoke(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  if (a5)
  {
    AGX::Device<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses>::alertCommandBufferActivityStart(void)::{lambda(void)#1}::operator()[abi:[AGX] Failed assertion _previousValue _ 2147483647_]();
  }

  v5 = *(*(a1 + 32) + 16);

  return v5();
}

void ___ZN3AGX8Compiler14compileProgramINS_37ComputeControlFlowPredicateProgramKeyE20AGCDeserializedReplyEEvRKT_P29MTLCompileFunctionRequestDataPU27objcproto16MTL4CompilerTask11objc_objectU13block_pointerFvRKT0_PU27objcproto16OS_dispatch_data8NSObjectSG_SG_SG_SG_16MTLCompilerErrorP8NSStringyE_block_invoke(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  v14[0] = MEMORY[0x29EDCA5F8];
  v14[1] = 3221225472;
  v15 = ___ZN3AGX8Compiler14compileProgramINS_37ComputeControlFlowPredicateProgramKeyE20AGCDeserializedReplyEEvRKT_P29MTLCompileFunctionRequestDataPU27objcproto16MTL4CompilerTask11objc_objectU13block_pointerFvRKT0_PU27objcproto16OS_dispatch_data8NSObjectSG_SG_SG_SG_16MTLCompilerErrorP8NSStringyE_block_invoke_2;
  v16 = &unk_29F3422A8;
  v17 = a9;
  v18 = a3;
  v19 = a4;
  v20 = a5;
  v21 = a6;
  v22 = a7;
  v12 = a1 + 32;
  v10 = *(a1 + 32);
  v11 = *(v12 + 8);
  v23 = a8;
  v24 = v11;
  v25 = a2;
  v26 = a10;
  if ([v10 sync])
  {
    v15(v14);
  }

  else
  {
    global_queue = dispatch_get_global_queue(0, 0);
    dispatch_async(global_queue, v14);
  }
}

uint64_t ___ZN3AGX8Compiler14compileProgramINS_37ComputeControlFlowPredicateProgramKeyE20AGCDeserializedReplyEEvRKT_P29MTLCompileFunctionRequestDataPU27objcproto16MTL4CompilerTask11objc_objectU13block_pointerFvRKT0_PU27objcproto16OS_dispatch_data8NSObjectSG_SG_SG_SG_16MTLCompilerErrorP8NSStringyE_block_invoke_4(uint64_t a1, void *a2)
{
  mach_absolute_time();
  if (getTimebaseInfo(void)::once != -1)
  {
    dispatch_once(&getTimebaseInfo(void)::once, &__block_literal_global_11354);
  }

  return (*(*(a1 + 32) + 16))(*(a1 + 32), *a2);
}

void ___ZN3AGX8Compiler14compileProgramINS_37ComputeControlFlowPredicateProgramKeyE20AGCDeserializedReplyEEvRKT_P29MTLCompileFunctionRequestDataPU27objcproto16MTL4CompilerTask11objc_objectU13block_pointerFvRKT0_PU27objcproto16OS_dispatch_data8NSObjectSG_SG_SG_SG_16MTLCompilerErrorP8NSStringyE_block_invoke_2(void *a1)
{
  size_ptr = 0;
  buffer_ptr = 0;
  v2 = a1[12];
  AGCDeserializedReply::AGCDeserializedReply(v5);
  if (v2 || (v4 = a1[5]) == 0)
  {
    v3 = 0;
  }

  else
  {
    v3 = dispatch_data_create_map(v4, &buffer_ptr, &size_ptr);
    AGCDeserializedReply::deserialize(v5, buffer_ptr, size_ptr);
  }

  (*(a1[11] + 16))(a1[11], v5);
  if (v3)
  {
    dispatch_release(v3);
  }

  AGCDeserializedReply::~AGCDeserializedReply(v5);
}

void sub_29CCDA590(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  AGCDeserializedReply::~AGCDeserializedReply(va);
  _Unwind_Resume(a1);
}

uint64_t AGX::Device<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses>::findOrCreateTileDispatchVertexProgram(uint64_t a1, uint64_t a2)
{
  v61 = *MEMORY[0x29EDCA608];
  v44 = 0;
  v45 = &v44;
  v46 = 0x2020000000;
  v47 = 0;
  os_unfair_lock_lock((a1 + 16916));
  v4 = *(a1 + 6168);
  os_unfair_lock_lock((v4 + 728));
  v5 = *(v4 + 400);
  v6 = *(v4 + 392);
  if (v5)
  {
    v7 = 0;
    v8 = (v6 + 40);
    while (1)
    {
      v9 = *v8;
      v8 += 48;
      if (((v9 ^ *(a2 + 40)) & 7) == 0)
      {
        break;
      }

      if (v5 == ++v7)
      {
        goto LABEL_5;
      }
    }

    v15 = v6 + 48 * v7;
  }

  else
  {
LABEL_5:
    v10 = *(v6 + 384);
    if (v10)
    {
      v11 = *(a2 + 40);
      v12 = 1;
      while (1)
      {
        if (((*(v10 + 40) ^ v11) & 7) == 0)
        {
          v12 = 0;
          goto LABEL_21;
        }

        if (((*(v10 + 88) ^ v11) & 7) == 0)
        {
          goto LABEL_21;
        }

        if (((*(v10 + 136) ^ v11) & 7) == 0)
        {
          v12 = 2;
          goto LABEL_21;
        }

        if (((*(v10 + 184) ^ v11) & 7) == 0)
        {
          break;
        }

        v10 = *(v10 + 384);
        if (!v10)
        {
          goto LABEL_12;
        }
      }

      v12 = 3;
LABEL_21:
      v15 = v10 + 48 * v12;
    }

    else
    {
LABEL_12:
      if (v5 == 4)
      {
        operator new();
      }

      v13 = v6 + 48 * v5;
      *(v13 + 8) = *(a2 + 8);
      if (v13 != a2)
      {
        std::vector<unsigned int>::__assign_with_size[abi:nn200100]<unsigned int *,unsigned int *>((v13 + 16), *(a2 + 16), *(a2 + 24), (*(a2 + 24) - *(a2 + 16)) >> 2);
      }

      *(v13 + 40) = *(a2 + 40);
      v14 = *(v4 + 400);
      v15 = *(v4 + 392) + 48 * v14;
      *(v4 + 400) = v14 + 1;
    }
  }

  v16 = v15 + 192;
  if (*(v15 + 192))
  {
    if (*(v15 + 232) != 1)
    {
      os_unfair_lock_unlock((v4 + 728));
      v45[3] = *(v16 + 8);
      goto LABEL_55;
    }

    v17 = *(v15 + 200);
    if (v17)
    {
      (*(*v17 + 8))(v17);
    }

    *(v16 + 8) = 0;
    *(v16 + 16) = 0;

    *(v16 + 24) = 0;
    *(v16 + 32) = 0;
    *(v16 + 40) = 0;
    v18 = *v16;
  }

  else
  {
    v18 = dispatch_group_create();
    *v16 = v18;
  }

  dispatch_group_enter(v18);
  os_unfair_lock_unlock((v4 + 728));
  v19 = *(a1 + 7160);
  v43[0] = MEMORY[0x29EDCA5F8];
  v43[1] = 3221225472;
  v43[2] = ___ZN3AGX6DeviceINS_6HAL3008EncodersENS1_7ClassesENS1_10ObjClassesEE37findOrCreateTileDispatchVertexProgramERKNS_28TileDispatchVertexProgramKeyE_block_invoke;
  v43[3] = &unk_29F340FA8;
  v43[4] = &v44;
  v43[5] = a1;
  v43[6] = v16;
  v20 = *(v19 + 8);
  if ((*(*a2 + 24))(a2))
  {
    v21 = v20;
  }

  else
  {
    v21 = 0;
  }

  v22 = objc_opt_new();
  [v22 setSync:1];
  [v22 setPipelineCache:v21];
  [v22 setBinaryArchives:0];
  v48[0] = MEMORY[0x29EDCA5F8];
  v48[1] = 3221225472;
  v48[2] = ___ZN3AGX8Compiler14compileProgramINS_28TileDispatchVertexProgramKeyEEEvRKT_P7NSArrayIPU27objcproto16MTLBinaryArchive11objc_objectEU13block_pointerFvRK20AGCDeserializedReply16MTLCompilerErrorP8NSStringEb_block_invoke;
  v48[3] = &unk_29F342280;
  v48[4] = v43;
  v23 = *(v19 + 24);
  if (v23 && *(v23 + 120) == 1)
  {
    v24 = [objc_msgSend(v22 "binaryArchives")];
    v25 = 0x200000000000;
    if (!v24)
    {
      v25 = 1;
    }

    atomic_fetch_or(v23, v25);
    v26 = *(v19 + 24);
    v27 = [v22 destinationBinaryArchive];
    v28 = 0x400000000000;
    if (!v27)
    {
      v28 = 1;
    }

    atomic_fetch_or(v26, v28);
  }

  if ([v22 destinationBinaryArchive])
  {
    {
      AGX::Compiler::shouldUseAIRNTInterfacesForBinaryArchiveAddRequests(void)::envDisable = 0;
    }

    if (AGX::Compiler::shouldUseAIRNTInterfacesForBinaryArchiveAddRequests(void)::envDisable == 1)
    {
      [v22 setUseAIRNTInterfaces:0];
    }
  }

  v52 = 0;
  v53 = 0;
  (*(*a2 + 16))(a2, &v53, &v52);
  v29 = dispatch_data_create(v53, v52, 0, 0);
  [v22 setDriverKeyData:v29];
  if ([v22 airScript])
  {
    v30 = [v22 airScript];
    object = 0;
    v50 = 0;
    v51 = 0;
    object = dispatch_data_create_map(v30, &v50, &v51);
    v31 = v50;
    v32 = *v50;
    CC_SHA256_Init(&c);
    (**a2)(a2, &c);
    *len = 0;
    data = 0;
    if (AGX::GetSerializedVertexFormat((v31 + v32), &data, len, v33, v34))
    {
      v35 = data;
      CC_SHA256_Update(&c, data, len[0]);
      free(v35);
    }

    CC_SHA256_Final(&md, &c);
    dispatch_release(object);
    *c.count = md;
    *&c.hash[2] = v57;
    [v22 setVendorPluginFunctionId:&c];
  }

  *c.count = MEMORY[0x29EDCA5F8];
  *c.hash = 3221225472;
  *&c.hash[2] = ___ZN3AGX8Compiler14compileProgramINS_28TileDispatchVertexProgramKeyE20AGCDeserializedReplyEEvRKT_P29MTLCompileFunctionRequestDataPU27objcproto16MTL4CompilerTask11objc_objectU13block_pointerFvRKT0_PU27objcproto16OS_dispatch_data8NSObjectSG_SG_SG_SG_16MTLCompilerErrorP8NSStringyE_block_invoke;
  *&c.hash[4] = &unk_29F3422D0;
  *&c.hash[6] = v22;
  *c.wbuf = v48;
  if ([v22 function])
  {
    v36 = mach_absolute_time();
    v37 = *v19;
    *&md = MEMORY[0x29EDCA5F8];
    *(&md + 1) = 3221225472;
    *&v57 = ___ZN3AGX8Compiler14compileProgramINS_28TileDispatchVertexProgramKeyE20AGCDeserializedReplyEEvRKT_P29MTLCompileFunctionRequestDataPU27objcproto16MTL4CompilerTask11objc_objectU13block_pointerFvRKT0_PU27objcproto16OS_dispatch_data8NSObjectSG_SG_SG_SG_16MTLCompilerErrorP8NSStringyE_block_invoke_4;
    *(&v57 + 1) = &unk_29F342320;
    p_c = &c;
    v59 = v36;
    [v37 compileFunctionRequest:v22 compilerTask:0 completionHandler:&md];
  }

  else
  {
    if ([v22 frameworkData] || objc_msgSend(v22, "pipelineOptions"))
    {
      AGX::Device<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses>::alertCommandBufferActivityStart(void)::{lambda(void)#1}::operator()[abi:[AGX] Failed assertion _previousValue _ 2147483647_]();
    }

    *&md = MEMORY[0x29EDCA5F8];
    *(&md + 1) = 3221225472;
    *&v57 = ___ZN3AGX8Compiler14compileProgramINS_28TileDispatchVertexProgramKeyE20AGCDeserializedReplyEEvRKT_P29MTLCompileFunctionRequestDataPU27objcproto16MTL4CompilerTask11objc_objectU13block_pointerFvRKT0_PU27objcproto16OS_dispatch_data8NSObjectSG_SG_SG_SG_16MTLCompilerErrorP8NSStringyE_block_invoke_3;
    *(&v57 + 1) = &unk_29F3422F8;
    p_c = &c;
    v38 = [objc_msgSend(v22 "binaryArchives")];
    v39 = *v19;
    v40 = [v22 driverKeyData];
    if (v38)
    {
      [v39 compileRequest:v40 binaryArchives:objc_msgSend(v22 failOnBinaryArchiveMiss:"binaryArchives") pipelineCache:0 sync:objc_msgSend(v22 completionHandler:{"pipelineCache"), objc_msgSend(v22, "sync"), &md}];
    }

    else
    {
      [v39 compileRequest:v40 pipelineCache:objc_msgSend(v22 sync:"pipelineCache") completionHandler:{objc_msgSend(v22, "sync"), &md}];
    }
  }

  dispatch_release(v29);

LABEL_55:
  os_unfair_lock_unlock((a1 + 16916));
  v41 = v45[3];
  _Block_object_dispose(&v44, 8);
  return v41;
}

void sub_29CCDADB8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, char a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, dispatch_object_t object)
{
  os_unfair_lock_unlock(v27 + 182);
  os_unfair_lock_unlock((v26 + v28));
  _Block_object_dispose(&a17, 8);
  _Unwind_Resume(a1);
}

void ___ZN3AGX6DeviceINS_6HAL3008EncodersENS1_7ClassesENS1_10ObjClassesEE37findOrCreateTileDispatchVertexProgramERKNS_28TileDispatchVertexProgramKeyE_block_invoke(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  if (!a3)
  {
    operator new();
  }

  _ZZZN3AGX6DeviceINS_6HAL3008EncodersENS1_7ClassesENS1_10ObjClassesEE28findOrCreateUberBlitPipelineERNS_18UberBlitProgramKeyEEUb_ENKUlvE_clB57_AGX__Failed_assertion__error____MTLCompilerErrorNoError_Ev(a4);
}

void sub_29CCDAF40(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, ...)
{
  va_start(va, a10);
  AGX::ProgramBindingRemap<AGX::HAL300::Encoders,AGX::HAL300::Classes>::~ProgramBindingRemap(va);
  MEMORY[0x29ED520D0](v11, v10);
  _Unwind_Resume(a1);
}

uint64_t ___ZN3AGX8Compiler14compileProgramINS_28TileDispatchVertexProgramKeyEEEvRKT_P7NSArrayIPU27objcproto16MTLBinaryArchive11objc_objectEU13block_pointerFvRK20AGCDeserializedReply16MTLCompilerErrorP8NSStringEb_block_invoke(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  if (a5)
  {
    AGX::Device<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses>::alertCommandBufferActivityStart(void)::{lambda(void)#1}::operator()[abi:[AGX] Failed assertion _previousValue _ 2147483647_]();
  }

  v5 = *(*(a1 + 32) + 16);

  return v5();
}

void ___ZN3AGX8Compiler14compileProgramINS_28TileDispatchVertexProgramKeyE20AGCDeserializedReplyEEvRKT_P29MTLCompileFunctionRequestDataPU27objcproto16MTL4CompilerTask11objc_objectU13block_pointerFvRKT0_PU27objcproto16OS_dispatch_data8NSObjectSG_SG_SG_SG_16MTLCompilerErrorP8NSStringyE_block_invoke(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  v14[0] = MEMORY[0x29EDCA5F8];
  v14[1] = 3221225472;
  v15 = ___ZN3AGX8Compiler14compileProgramINS_28TileDispatchVertexProgramKeyE20AGCDeserializedReplyEEvRKT_P29MTLCompileFunctionRequestDataPU27objcproto16MTL4CompilerTask11objc_objectU13block_pointerFvRKT0_PU27objcproto16OS_dispatch_data8NSObjectSG_SG_SG_SG_16MTLCompilerErrorP8NSStringyE_block_invoke_2;
  v16 = &unk_29F3422A8;
  v17 = a9;
  v18 = a3;
  v19 = a4;
  v20 = a5;
  v21 = a6;
  v22 = a7;
  v12 = a1 + 32;
  v10 = *(a1 + 32);
  v11 = *(v12 + 8);
  v23 = a8;
  v24 = v11;
  v25 = a2;
  v26 = a10;
  if ([v10 sync])
  {
    v15(v14);
  }

  else
  {
    global_queue = dispatch_get_global_queue(0, 0);
    dispatch_async(global_queue, v14);
  }
}

uint64_t ___ZN3AGX8Compiler14compileProgramINS_28TileDispatchVertexProgramKeyE20AGCDeserializedReplyEEvRKT_P29MTLCompileFunctionRequestDataPU27objcproto16MTL4CompilerTask11objc_objectU13block_pointerFvRKT0_PU27objcproto16OS_dispatch_data8NSObjectSG_SG_SG_SG_16MTLCompilerErrorP8NSStringyE_block_invoke_4(uint64_t a1, void *a2)
{
  mach_absolute_time();
  if (getTimebaseInfo(void)::once != -1)
  {
    dispatch_once(&getTimebaseInfo(void)::once, &__block_literal_global_11354);
  }

  return (*(*(a1 + 32) + 16))(*(a1 + 32), *a2);
}

void ___ZN3AGX8Compiler14compileProgramINS_28TileDispatchVertexProgramKeyE20AGCDeserializedReplyEEvRKT_P29MTLCompileFunctionRequestDataPU27objcproto16MTL4CompilerTask11objc_objectU13block_pointerFvRKT0_PU27objcproto16OS_dispatch_data8NSObjectSG_SG_SG_SG_16MTLCompilerErrorP8NSStringyE_block_invoke_2(void *a1)
{
  size_ptr = 0;
  buffer_ptr = 0;
  v2 = a1[12];
  AGCDeserializedReply::AGCDeserializedReply(v5);
  if (v2 || (v4 = a1[5]) == 0)
  {
    v3 = 0;
  }

  else
  {
    v3 = dispatch_data_create_map(v4, &buffer_ptr, &size_ptr);
    AGCDeserializedReply::deserialize(v5, buffer_ptr, size_ptr);
  }

  (*(a1[11] + 16))(a1[11], v5);
  if (v3)
  {
    dispatch_release(v3);
  }

  AGCDeserializedReply::~AGCDeserializedReply(v5);
}

void sub_29CCDB240(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  AGCDeserializedReply::~AGCDeserializedReply(va);
  _Unwind_Resume(a1);
}

void AGX::HAL300::TileDispatchVertexProgramVariant::~TileDispatchVertexProgramVariant(AGX::HAL300::TileDispatchVertexProgramVariant *this)
{
  *this = &unk_2A23F7810;
  if (*(this + 403))
  {
    v2 = *(this + 404);
    v3 = *(v2 + 16);
    v4[0] = MEMORY[0x29EDCA5F8];
    v4[1] = 3221225472;
    v4[2] = ___ZN3AGX4HeapILb1EE14deallocateImplERKNS1_10AllocationE_block_invoke;
    v4[3] = &__block_descriptor_48_e5_v8__0l;
    v4[4] = v2;
    v4[5] = this + 3200;
    dispatch_sync(v3, v4);
    *(this + 3225) = 0u;
    *(this + 201) = 0u;
    *(this + 200) = 0u;
  }

  AGX::ProgramVariantESLState<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::UserVertexArgumentTableLayout,true,8ul>::~ProgramVariantESLState(this + 223);
  AGX::ProgramVariant<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::TileDispatchVertexArgumentTable,false,false,AGX::NoCombinedUserDriverArgumentTable>::~ProgramVariant(this);

  JUMPOUT(0x29ED520D0);
}

{
  *this = &unk_2A23F7810;
  if (*(this + 403))
  {
    v2 = *(this + 404);
    v3 = *(v2 + 16);
    v4[0] = MEMORY[0x29EDCA5F8];
    v4[1] = 3221225472;
    v4[2] = ___ZN3AGX4HeapILb1EE14deallocateImplERKNS1_10AllocationE_block_invoke;
    v4[3] = &__block_descriptor_48_e5_v8__0l;
    v4[4] = v2;
    v4[5] = this + 3200;
    dispatch_sync(v3, v4);
    *(this + 3225) = 0u;
    *(this + 201) = 0u;
    *(this + 200) = 0u;
  }

  AGX::ProgramVariantESLState<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::UserVertexArgumentTableLayout,true,8ul>::~ProgramVariantESLState(this + 223);

  AGX::ProgramVariant<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::TileDispatchVertexArgumentTable,false,false,AGX::NoCombinedUserDriverArgumentTable>::~ProgramVariant(this);
}

unint64_t AGX::Device<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses>::findOrCreateBVHBuilderPipeline(uint64_t a1, int *a2)
{
  v49 = *MEMORY[0x29EDCA608];
  v3 = ((a2[10] >> 31) & 0xB8) + (a2[10] & 0x3FFFFFFF) + (((2 * a2[10]) >> 31) & 0x170u);
  v4 = a1 + 88;
  result = atomic_load_explicit((a1 + 88 + 8 * v3), memory_order_acquire);
  if (!result)
  {
    os_unfair_lock_lock((a1 + 80));
    v32 = 0;
    v33 = &v32;
    v34 = 0x2020000000;
    v7 = *(v4 + 8 * v3);
    v35 = v7;
    if (!v7)
    {
      v8 = *(a1 + 7160);
      v31[0] = MEMORY[0x29EDCA5F8];
      v31[1] = 3221225472;
      v31[2] = ___ZN3AGX6DeviceINS_6HAL3008EncodersENS1_7ClassesENS1_10ObjClassesEE30findOrCreateBVHBuilderPipelineERNS_20BVHBuilderProgramKeyE_block_invoke;
      v31[3] = &unk_29F340FA8;
      v31[4] = &v32;
      v31[5] = a1;
      v31[6] = v3;
      v9 = *(v8 + 8);
      if ((*(*a2 + 24))(a2))
      {
        v10 = v9;
      }

      else
      {
        v10 = 0;
      }

      v11 = objc_opt_new();
      [v11 setSync:1];
      [v11 setPipelineCache:v10];
      [v11 setBinaryArchives:0];
      v36[0] = MEMORY[0x29EDCA5F8];
      v36[1] = 3221225472;
      v36[2] = ___ZN3AGX8Compiler14compileProgramINS_20BVHBuilderProgramKeyEEEvRKT_P7NSArrayIPU27objcproto16MTLBinaryArchive11objc_objectEU13block_pointerFvRK20AGCDeserializedReply16MTLCompilerErrorP8NSStringEb_block_invoke;
      v36[3] = &unk_29F342280;
      v36[4] = v31;
      v12 = *(v8 + 24);
      if (v12 && *(v12 + 120) == 1)
      {
        v13 = [objc_msgSend(v11 "binaryArchives")];
        v14 = 0x200000000000;
        if (!v13)
        {
          v14 = 1;
        }

        atomic_fetch_or(v12, v14);
        v15 = *(v8 + 24);
        v16 = [v11 destinationBinaryArchive];
        v17 = 0x400000000000;
        if (!v16)
        {
          v17 = 1;
        }

        atomic_fetch_or(v15, v17);
      }

      if ([v11 destinationBinaryArchive])
      {
        {
          AGX::Compiler::shouldUseAIRNTInterfacesForBinaryArchiveAddRequests(void)::envDisable = 0;
        }

        if (AGX::Compiler::shouldUseAIRNTInterfacesForBinaryArchiveAddRequests(void)::envDisable == 1)
        {
          [v11 setUseAIRNTInterfaces:0];
        }
      }

      v40 = 0;
      v41 = 0;
      (*(*a2 + 16))(a2, &v41, &v40);
      v18 = dispatch_data_create(v41, v40, 0, 0);
      [v11 setDriverKeyData:v18];
      if ([v11 airScript])
      {
        v19 = [v11 airScript];
        object = 0;
        v38 = 0;
        v39 = 0;
        object = dispatch_data_create_map(v19, &v38, &v39);
        v20 = v38;
        v21 = *v38;
        CC_SHA256_Init(&c);
        (**a2)(a2, &c);
        *len = 0;
        data = 0;
        if (AGX::GetSerializedVertexFormat((v20 + v21), &data, len, v22, v23))
        {
          v24 = data;
          CC_SHA256_Update(&c, data, len[0]);
          free(v24);
        }

        CC_SHA256_Final(&md, &c);
        dispatch_release(object);
        *c.count = md;
        *&c.hash[2] = v45;
        [v11 setVendorPluginFunctionId:&c];
      }

      *c.count = MEMORY[0x29EDCA5F8];
      *c.hash = 3221225472;
      *&c.hash[2] = ___ZN3AGX8Compiler14compileProgramINS_20BVHBuilderProgramKeyE20AGCDeserializedReplyEEvRKT_P29MTLCompileFunctionRequestDataPU27objcproto16MTL4CompilerTask11objc_objectU13block_pointerFvRKT0_PU27objcproto16OS_dispatch_data8NSObjectSG_SG_SG_SG_16MTLCompilerErrorP8NSStringyE_block_invoke;
      *&c.hash[4] = &unk_29F3422D0;
      *&c.hash[6] = v11;
      *c.wbuf = v36;
      if ([v11 function])
      {
        v25 = mach_absolute_time();
        v26 = *v8;
        *&md = MEMORY[0x29EDCA5F8];
        *(&md + 1) = 3221225472;
        *&v45 = ___ZN3AGX8Compiler14compileProgramINS_20BVHBuilderProgramKeyE20AGCDeserializedReplyEEvRKT_P29MTLCompileFunctionRequestDataPU27objcproto16MTL4CompilerTask11objc_objectU13block_pointerFvRKT0_PU27objcproto16OS_dispatch_data8NSObjectSG_SG_SG_SG_16MTLCompilerErrorP8NSStringyE_block_invoke_4;
        *(&v45 + 1) = &unk_29F342320;
        p_c = &c;
        v47 = v25;
        [v26 compileFunctionRequest:v11 compilerTask:0 completionHandler:&md];
      }

      else
      {
        if ([v11 frameworkData] || objc_msgSend(v11, "pipelineOptions"))
        {
          AGX::Device<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses>::alertCommandBufferActivityStart(void)::{lambda(void)#1}::operator()[abi:[AGX] Failed assertion _previousValue _ 2147483647_]();
        }

        *&md = MEMORY[0x29EDCA5F8];
        *(&md + 1) = 3221225472;
        *&v45 = ___ZN3AGX8Compiler14compileProgramINS_20BVHBuilderProgramKeyE20AGCDeserializedReplyEEvRKT_P29MTLCompileFunctionRequestDataPU27objcproto16MTL4CompilerTask11objc_objectU13block_pointerFvRKT0_PU27objcproto16OS_dispatch_data8NSObjectSG_SG_SG_SG_16MTLCompilerErrorP8NSStringyE_block_invoke_3;
        *(&v45 + 1) = &unk_29F3422F8;
        p_c = &c;
        v27 = [objc_msgSend(v11 "binaryArchives")];
        v28 = *v8;
        v29 = [v11 driverKeyData];
        if (v27)
        {
          [v28 compileRequest:v29 binaryArchives:objc_msgSend(v11 failOnBinaryArchiveMiss:"binaryArchives") pipelineCache:0 sync:objc_msgSend(v11 completionHandler:{"pipelineCache"), objc_msgSend(v11, "sync"), &md}];
        }

        else
        {
          [v28 compileRequest:v29 pipelineCache:objc_msgSend(v11 sync:"pipelineCache") completionHandler:{objc_msgSend(v11, "sync"), &md}];
        }
      }

      dispatch_release(v18);

      v7 = v33[3];
    }

    v30 = v7;
    _Block_object_dispose(&v32, 8);
    os_unfair_lock_unlock((a1 + 80));
    return v30;
  }

  return result;
}

void sub_29CCDB980(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, char a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, dispatch_object_t object)
{
  dispatch_release(object);
  _Block_object_dispose(&a17, 8);
  os_unfair_lock_unlock(v26 + 20);
  _Unwind_Resume(a1);
}

void ___ZN3AGX6DeviceINS_6HAL3008EncodersENS1_7ClassesENS1_10ObjClassesEE30findOrCreateBVHBuilderPipelineERNS_20BVHBuilderProgramKeyE_block_invoke(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  if (!a3)
  {
    operator new();
  }

  _ZZZN3AGX6DeviceINS_6HAL3008EncodersENS1_7ClassesENS1_10ObjClassesEE28findOrCreateUberBlitPipelineERNS_18UberBlitProgramKeyEEUb_ENKUlvE_clB57_AGX__Failed_assertion__error____MTLCompilerErrorNoError_Ev(a4);
}

uint64_t ___ZN3AGX8Compiler14compileProgramINS_20BVHBuilderProgramKeyEEEvRKT_P7NSArrayIPU27objcproto16MTLBinaryArchive11objc_objectEU13block_pointerFvRK20AGCDeserializedReply16MTLCompilerErrorP8NSStringEb_block_invoke(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  if (a5)
  {
    AGX::Device<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses>::alertCommandBufferActivityStart(void)::{lambda(void)#1}::operator()[abi:[AGX] Failed assertion _previousValue _ 2147483647_]();
  }

  v5 = *(*(a1 + 32) + 16);

  return v5();
}