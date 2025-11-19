float _perfEndRender(double a1)
{
  v1 = (a1 - *&qword_27CDDD110) * 1000.0;
  result = *&dword_27CDDD118 + fmaxf(v1, 0.0);
  dword_27CDDD118 = LODWORD(result);
  ++qword_27CDDD108;
  return result;
}

float _perfMarkCADisplayLinkStart(double a1)
{
  if (*&qword_27CDDD140 != 0.0)
  {
    v1 = (a1 - *&qword_27CDDD140) * 1000.0;
    *&a1 = fmaxf(v1, 0.0) + *&dword_27CDDD148;
    dword_27CDDD148 = LODWORD(a1);
    ++qword_27CDDD138;
  }

  return *&a1;
}

float _perfEndRequestDrawable(double a1)
{
  v1 = (a1 - *&qword_27CDDD158) * 1000.0;
  result = *&dword_27CDDD160 + fmaxf(v1, 0.0);
  dword_27CDDD160 = LODWORD(result);
  ++qword_27CDDD150;
  return result;
}

uint64_t *std::__hash_table<std::__hash_value_type<int,SKPerformanceDataMapping>,std::__unordered_map_hasher<int,std::__hash_value_type<int,SKPerformanceDataMapping>,std::hash<int>,std::equal_to<int>,true>,std::__unordered_map_equal<int,std::__hash_value_type<int,SKPerformanceDataMapping>,std::equal_to<int>,std::hash<int>,true>,std::allocator<std::__hash_value_type<int,SKPerformanceDataMapping>>>::__emplace_unique_key_args<int,std::piecewise_construct_t const&,std::tuple<int const&>,std::tuple<>>(void *a1, int *a2)
{
  v2 = *a2;
  v3 = a1[1];
  if (!*&v3)
  {
    goto LABEL_18;
  }

  v4 = vcnt_s8(v3);
  v4.i16[0] = vaddlv_u8(v4);
  if (v4.u32[0] > 1uLL)
  {
    v5 = *a2;
    if (*&v3 <= v2)
    {
      v5 = v2 % *&v3;
    }
  }

  else
  {
    v5 = (*&v3 - 1) & v2;
  }

  v6 = *(*a1 + 8 * v5);
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

  if (*(v7 + 4) != v2)
  {
    goto LABEL_17;
  }

  return v7;
}

uint64_t std::unordered_map<int,SKPerformanceDataMapping>::unordered_map(uint64_t a1, uint64_t a2)
{
  *a1 = 0u;
  *(a1 + 16) = 0u;
  *(a1 + 32) = *(a2 + 32);
  std::__hash_table<std::__hash_value_type<unsigned long long,SKCTileMapNodeRenderBatch>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,SKCTileMapNodeRenderBatch>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,SKCTileMapNodeRenderBatch>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,SKCTileMapNodeRenderBatch>>>::__rehash<true>(a1, *(a2 + 8));
  for (i = *(a2 + 16); i; i = *i)
  {
    std::__hash_table<std::__hash_value_type<int,SKPerformanceDataMapping>,std::__unordered_map_hasher<int,std::__hash_value_type<int,SKPerformanceDataMapping>,std::hash<int>,std::equal_to<int>,true>,std::__unordered_map_equal<int,std::__hash_value_type<int,SKPerformanceDataMapping>,std::equal_to<int>,std::hash<int>,true>,std::allocator<std::__hash_value_type<int,SKPerformanceDataMapping>>>::__emplace_unique_key_args<int,std::pair<int const,SKPerformanceDataMapping> const&>(a1, i + 4);
  }

  return a1;
}

uint64_t *std::__hash_table<std::__hash_value_type<int,SKPerformanceDataMapping>,std::__unordered_map_hasher<int,std::__hash_value_type<int,SKPerformanceDataMapping>,std::hash<int>,std::equal_to<int>,true>,std::__unordered_map_equal<int,std::__hash_value_type<int,SKPerformanceDataMapping>,std::equal_to<int>,std::hash<int>,true>,std::allocator<std::__hash_value_type<int,SKPerformanceDataMapping>>>::__emplace_unique_key_args<int,std::pair<int const,SKPerformanceDataMapping> const&>(void *a1, int *a2)
{
  v2 = *a2;
  v3 = a1[1];
  if (!*&v3)
  {
    goto LABEL_18;
  }

  v4 = vcnt_s8(v3);
  v4.i16[0] = vaddlv_u8(v4);
  if (v4.u32[0] > 1uLL)
  {
    v5 = *a2;
    if (*&v3 <= v2)
    {
      v5 = v2 % *&v3;
    }
  }

  else
  {
    v5 = (*&v3 - 1) & v2;
  }

  v6 = *(*a1 + 8 * v5);
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

  if (*(v7 + 4) != v2)
  {
    goto LABEL_17;
  }

  return v7;
}

uint64_t std::__hash_table<std::__hash_value_type<int,SKPerformanceDataMapping>,std::__unordered_map_hasher<int,std::__hash_value_type<int,SKPerformanceDataMapping>,std::hash<int>,std::equal_to<int>,true>,std::__unordered_map_equal<int,std::__hash_value_type<int,SKPerformanceDataMapping>,std::equal_to<int>,std::hash<int>,true>,std::allocator<std::__hash_value_type<int,SKPerformanceDataMapping>>>::~__hash_table(uint64_t a1)
{
  v2 = *(a1 + 16);
  if (v2)
  {
    do
    {
      v3 = *v2;
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

uint64_t *std::__hash_table<std::__hash_value_type<int,SKPerformanceDataMapping>,std::__unordered_map_hasher<int,std::__hash_value_type<int,SKPerformanceDataMapping>,std::hash<int>,std::equal_to<int>,true>,std::__unordered_map_equal<int,std::__hash_value_type<int,SKPerformanceDataMapping>,std::equal_to<int>,std::hash<int>,true>,std::allocator<std::__hash_value_type<int,SKPerformanceDataMapping>>>::find<int>(void *a1, int *a2)
{
  v2 = a1[1];
  if (!*&v2)
  {
    return 0;
  }

  v3 = *a2;
  v4 = vcnt_s8(v2);
  v4.i16[0] = vaddlv_u8(v4);
  if (v4.u32[0] > 1uLL)
  {
    v5 = *a2;
    if (*&v2 <= v3)
    {
      v5 = v3 % *&v2;
    }
  }

  else
  {
    v5 = (*&v2 - 1) & v3;
  }

  v6 = *(*a1 + 8 * v5);
  if (!v6)
  {
    return 0;
  }

  for (result = *v6; result; result = *result)
  {
    v8 = result[1];
    if (v8 == v3)
    {
      if (*(result + 4) == v3)
      {
        return result;
      }
    }

    else
    {
      if (v4.u32[0] > 1uLL)
      {
        if (v8 >= *&v2)
        {
          v8 %= *&v2;
        }
      }

      else
      {
        v8 &= *&v2 - 1;
      }

      if (v8 != v5)
      {
        return 0;
      }
    }
  }

  return result;
}

uint64_t OUTLINED_FUNCTION_0()
{
  *(v0 + 24) = 0u;
  *(v0 + 8) = 0u;
  *(v0 + 40) = 1065353216;
  return v0;
}

void SKCStats::SKCStats(SKCStats *this)
{
  this->_vptr$SKCStats = &unk_282E17368;
  this->clientUpdate.duration = 0.0;
  this->update.duration = 0.0;
  this->physics.duration = 0.0;
  this->physics.bodyCount = 0;
  this->constraints.duration = 0.0;
  this->constraints.constraintCount = 0;
  *&this->frameBeginTime = 0u;
  *&this->baseTime = 0u;
  this->frameCount = 0;
  *&this->render.duration = 0u;
  *&this->render.nodeTraversalCount = 0u;
  *&this->render.passCount = 0;
}

SKCStats *SKCStats::beginFrame(SKCStats *this, double a2)
{
  if (this->baseTime <= 0.0)
  {
    this->baseTime = a2;
  }

  this->frameBeginTime = a2;
  this->currentTime = a2;
  return this;
}

double SKCStats::endFrame(SKCStats *this, double a2)
{
  this->currentTime = a2;
  v2 = a2 - this->frameBeginTime;
  result = fmaxf(v2, 0.0);
  this->frameDuration = result;
  ++this->frameCount;
  return result;
}

double SKCStats::endClientUpdate(SKCStats *this, double a2)
{
  v2 = a2 - this->clientUpdate.beginTime;
  result = fmaxf(v2, 0.0);
  this->clientUpdate.duration = result;
  return result;
}

double SKCStats::endPhysics(SKCStats *this, double a2)
{
  v2 = a2 - this->physics.beginTime;
  result = fmaxf(v2, 0.0);
  this->physics.duration = result;
  return result;
}

double SKCStats::endConstraints(SKCStats *this, double a2)
{
  v2 = a2 - this->constraints.beginTime;
  result = fmaxf(v2, 0.0);
  this->constraints.duration = result;
  return result;
}

double SKCStats::endRender(SKCStats *this, double a2)
{
  v2 = a2 - this->render.beginTime;
  result = fmaxf(v2, 0.0);
  this->render.duration = result;
  return result;
}

int32x2_t SKCStats::operator+@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  *a3 = &unk_282E17368;
  *(a3 + 120) = *(a1 + 120);
  *(a3 + 136) = *(a1 + 136);
  *(a3 + 152) = *(a1 + 152);
  *(a3 + 168) = *(a1 + 168);
  *(a3 + 56) = *(a1 + 56);
  *(a3 + 72) = *(a1 + 72);
  *(a3 + 88) = *(a1 + 88);
  *(a3 + 104) = *(a1 + 104);
  *(a3 + 8) = *(a1 + 8);
  *(a3 + 24) = *(a1 + 24);
  *(a3 + 40) = *(a1 + 40);
  return SKCStats::operator+=(a3, a2);
}

int32x2_t SKCStats::operator+=(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 24) <= 0.0)
  {
    *(a1 + 24) = *(a2 + 24);
  }

  *(a1 + 32) = fmax(*(a1 + 32), *(a2 + 32));
  v2 = *(a2 + 16) + *(a1 + 16);
  v3 = fmax(*(a1 + 8), *(a2 + 8));
  *(a1 + 40) += *(a2 + 40);
  *(a1 + 8) = v3;
  *(a1 + 16) = v2;
  *(a1 + 56) = *(a2 + 56) + *(a1 + 56);
  *(a1 + 72) = *(a2 + 72) + *(a1 + 72);
  *(a1 + 88) = *(a2 + 88) + *(a1 + 88);
  *(a1 + 96) += *(a2 + 96);
  *(a1 + 112) = *(a2 + 112) + *(a1 + 112);
  *(a1 + 120) += *(a2 + 120);
  *(a1 + 136) = *(a2 + 136) + *(a1 + 136);
  *(a1 + 160) += *(a2 + 160);
  *(a1 + 144) = vaddq_s32(*(a1 + 144), *(a2 + 144));
  result = vadd_s32(*(a1 + 164), *(a2 + 164));
  *(a1 + 164) = result;
  return result;
}

uint64_t SKCEmitterNode::addSubEmitterNode(uint64_t this, SKCEmitterNode *a2)
{
  if (a2)
  {
    if (*(a2 + 988) == 1)
    {
      *(a2 + 980) = 0;
      *(a2 + 124) = this;
      *(a2 + 989) = 0;
      SKCEmitterNode::initializeSystem(a2);
    }

    operator new();
  }

  return this;
}

void sub_21C464714(_Unwind_Exception *a1)
{
  MEMORY[0x21CF0A160](v2, 0x1080C4001E39035);

  _Unwind_Resume(a1);
}

void sub_21C4648CC(_Unwind_Exception *a1)
{
  MEMORY[0x21CF0A160](v2, 0x1080C4001E39035);

  _Unwind_Resume(a1);
}

void SKCEmitterNode::setTargetNode(SKCEmitterNode *this, SKNode *a2)
{
  v3 = a2;
  if (!v3)
  {
    v3 = *(this + 1);
  }

  obj = v3;
  WeakRetained = objc_loadWeakRetained(this + 71);

  v5 = obj;
  if (obj != WeakRetained)
  {
    v6 = objc_loadWeakRetained(this + 71);
    v7 = v6;
    if (v6)
    {
      SKCNode::removeInternalChild([v6 _backingNode], *(this + 74));
    }

    *(this + 174) = 0;
    objc_storeWeak(this + 71, obj);
    SKCEmitterNode::addParticlesToTargetNode(this);
    v5 = obj;
  }
}

void sub_21C4656E0(_Unwind_Exception *a1)
{
  MEMORY[0x21CF0A160](v2, 0x1080C4001E39035);

  _Unwind_Resume(a1);
}

void sub_21C4658B4(_Unwind_Exception *a1)
{
  MEMORY[0x21CF0A160](v3, v2);

  _Unwind_Resume(a1);
}

void sub_21C465AA8(_Unwind_Exception *a1)
{
  MEMORY[0x21CF0A160](v3, v2);

  _Unwind_Resume(a1);
}

void sub_21C465C7C(_Unwind_Exception *a1)
{
  MEMORY[0x21CF0A160](v3, v2);

  _Unwind_Resume(a1);
}

void sub_21C465E44(_Unwind_Exception *a1)
{
  MEMORY[0x21CF0A160](v3, v2);

  _Unwind_Resume(a1);
}

void SKCEmitterNode::resetSimulation(SKCParticleSystem **this)
{
  if ((*(this + 988) & 1) == 0)
  {
    SKCParticleSystem::removePatricles(this[75], 0, *(this[75] + 21));
    SKCParticleSystem::compact(this[75]);
    *(this + 174) = 0;
    this[86] = 0;
    this[91] = 0;
    v2 = skCurrentTime();
    *(this + 88) = v2;
    v3 = *(this + 228);
    if (v3 <= 0.0)
    {
      v4 = 1.79769313e308;
    }

    else
    {
      v4 = v2 + 1.0 / v3;
    }

    *(this + 89) = v4;
  }
}

void sub_21C4673E0(_Unwind_Exception *a1)
{
  v4 = v3;

  _Unwind_Resume(a1);
}

void sub_21C4682DC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, objc_super a9)
{
  v11 = v10;

  a9.super_class = SKEmitterNode;
  [(_Unwind_Exception *)&a9 dealloc];
  _Unwind_Resume(a1);
}

void SKCEmitterNode::removeSubEmitterNodes(SKCEmitterNode *this)
{
  v2 = (this + 1000);
  for (i = *(this + 126); i != v2; i = i[1])
  {
    *(i[2] + 992) = 0;
    i[2] = 0;
  }

  std::__list_imp<SKCRenderSortInfo *>::clear(v2);
  SKCEmitterNode::resetSimulation(this);
  *(this + 989) = 0;
}

void SKCEmitterNode::removeSubEmitterNode(SKCEmitterNode *this, SKCEmitterNode *a2)
{
  if (a2)
  {
    v3 = (this + 1000);
    for (i = *(this + 126); i != v3; i = i[1])
    {
      if (i[2] == a2)
      {
        if (i != v3)
        {
          i[2] = 0;
          v6 = *i;
          v5 = i[1];
          *(v6 + 1) = v5;
          *v5 = v6;
          --*(this + 127);
          operator delete(i);
        }

        break;
      }
    }
  }

  if (!*(this + 127))
  {
    SKCEmitterNode::resetSimulation(this);
    *(this + 989) = 0;
  }
}

void SKCEmitterNode::SKCEmitterNode(SKCEmitterNode *this)
{
  SKCNode::SKCNode(this);
  *v2 = &unk_282E16E88;
  *(v2 + 560) = 0;
  *(v2 + 568) = 0;
  *(v2 + 576) = 0u;
  *(v2 + 592) = 0u;
  *(v2 + 608) = 0x3FF0000000000000;
  *(v2 + 616) = 0;
  *(v2 + 764) = 0;
  v3 = (v2 + 848);
  *(v2 + 848) = v2 + 848;
  *(v2 + 856) = v2 + 848;
  *(v2 + 864) = 0;
  *(v2 + 960) = 0;
  *(v2 + 976) = 0;
  *(v2 + 1000) = v2 + 1000;
  *(v2 + 1008) = v2 + 1000;
  *(v2 + 1016) = 0;
  v4 = +[(SKNode *)SKParticleSystemNode];
  v5 = *(this + 73);
  *(this + 73) = v4;

  *(this + 74) = [*(this + 73) _backingNode];
  v6 = skCurrentTime();
  *(this + 88) = v6;
  *(this + 90) = v6;
  *(this + 91) = 0;
  *(this + 39) = 0u;
  *(this + 40) = 0u;
  *(this + 41) = 0u;
  *(this + 42) = 0u;
  *(this + 86) = 0;
  *(this + 46) = *MEMORY[0x277CBF3A8];
  *(this + 94) = 0;
  *(this + 190) = 0;
  *(this + 104) = 0;
  __asm { FMOV            V0.2S, #1.0 }

  *(this + 98) = _D0;
  *(this + 198) = 1065353216;
  *(this + 228) = 0;
  *(this + 203) = 0;
  *(this + 796) = 0u;
  v12 = *(this + 120);
  *(this + 120) = 0;

  *(this + 872) = 0u;
  *(this + 237) = 1065353216;
  *(this + 121) = 0;
  *(this + 232) = 0;
  *(this + 115) = 0;
  *(this + 229) = 0;
  *(this + 888) = xmmword_21C4B9900;
  *(this + 113) = 0;
  *(this + 210) = 0;
  *(this + 932) = xmmword_21C4B9100;
  *(this + 119) = 0;
  *(this + 174) = 0;
  *(this + 51) = 0u;
  std::__list_imp<SKCRenderSortInfo *>::clear(v3);
  v13 = *(this + 228);
  if (v13 <= 0.0)
  {
    v14 = 1.79769313e308;
  }

  else
  {
    v14 = 1.0 / v13 + *(this + 88);
  }

  *(this + 89) = v14;
  *(this + 175) = vcvtps_s32_f32(((v13 * (*(this + 229) + (*(this + 230) * 0.5))) * 1.04) + 2.0);
  *(this + 280) = 257;
  v15 = *(this + 74);
  v16 = *(v15 + 568);
  *(v15 + 568) = 0;

  *(this + 980) = 0x3E800000064;
  *(this + 494) = 257;
  *(this + 124) = 0;
}

void sub_21C4693FC(_Unwind_Exception *a1)
{
  std::__list_imp<SKCRenderSortInfo *>::clear(v3);

  std::__list_imp<SKCRenderSortInfo *>::clear(v2);
  objc_destroyWeak(v1 + 71);
  SKCNode::~SKCNode(v1);
  _Unwind_Resume(a1);
}

void sub_21C4696F0(_Unwind_Exception *a1)
{
  v5 = v4;

  _Unwind_Resume(a1);
}

void sub_21C469870(_Unwind_Exception *a1)
{
  v3 = v2;

  _Unwind_Resume(a1);
}

void sub_21C46A85C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, objc_super a9)
{
  a9.super_class = SKVideoNode;
  [(_Unwind_Exception *)&a9 dealloc];
  _Unwind_Resume(a1);
}

void sub_21C46AD1C(_Unwind_Exception *a1)
{
  v4 = v3;

  _Unwind_Resume(a1);
}

void sub_21C46AE18(_Unwind_Exception *a1)
{
  v5 = v4;

  _Unwind_Resume(a1);
}

void sub_21C46AF4C(_Unwind_Exception *a1)
{
  v5 = v4;

  _Unwind_Resume(a1);
}

void sub_21C46B03C(_Unwind_Exception *a1)
{
  v4 = v3;

  _Unwind_Resume(a1);
}

void sub_21C46C048(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, objc_super a9)
{
  v10 = v9;
  a9.receiver = v10;
  a9.super_class = SKTextureCache;
  [(_Unwind_Exception *)&a9 dealloc];
  _Unwind_Resume(a1);
}

void sub_21C46CC54(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_21C470908(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, std::__shared_weak_count *a10)
{
  if (a10)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a10);
  }

  _Unwind_Resume(a1);
}

void sub_21C470A8C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, std::__shared_weak_count *a10)
{
  if (a10)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a10);
  }

  _Unwind_Resume(a1);
}

void sub_21C470CC0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, std::__shared_weak_count *a16)
{
  if (a16)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a16);
  }

  v18 = *(v16 - 72);
  if (v18)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v18);
  }

  v19 = *(v16 - 56);
  if (v19)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v19);
  }

  _Unwind_Resume(exception_object);
}

void sub_21C470DF8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10, uint64_t a11, std::__shared_weak_count *a12)
{
  if (a10)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a10);
  }

  if (a12)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a12);
  }

  _Unwind_Resume(exception_object);
}

void sub_21C470F50(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, std::__shared_weak_count *a12)
{
  if (a12)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a12);
  }

  _Unwind_Resume(a1);
}

uint64_t __copy_helper_block_ea8_40c39_ZTSNSt3__110shared_ptrI11jet_textureEE(uint64_t result, uint64_t a2)
{
  v2 = *(a2 + 48);
  *(result + 40) = *(a2 + 40);
  *(result + 48) = v2;
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 8), 1uLL, memory_order_relaxed);
  }

  return result;
}

void __destroy_helper_block_ea8_40c39_ZTSNSt3__110shared_ptrI11jet_textureEE(uint64_t a1)
{
  v1 = *(a1 + 48);
  if (v1)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v1);
  }
}

void sub_21C471BC4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, std::__shared_weak_count *a16, uint64_t a17, std::__shared_weak_count *a18)
{
  if (a16)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a16);
  }

  if (a18)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a18);
  }

  _Block_object_dispose((v18 - 48), 8);
  _Unwind_Resume(a1);
}

void sub_21C471D14(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v1);
  }

  _Unwind_Resume(exception_object);
}

void sub_21C471E74(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, std::__shared_weak_count *a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, char a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, std::__shared_weak_count *a26)
{
  if (a11)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a11);
  }

  _Block_object_dispose(&a19, 8);
  if (a26)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a26);
  }

  _Unwind_Resume(a1);
}

__n128 __Block_byref_object_copy__4(__n128 *a1, __n128 *a2)
{
  result = a2[3];
  a1[3] = result;
  a2[3].n128_u64[0] = 0;
  a2[3].n128_u64[1] = 0;
  return result;
}

void __Block_byref_object_dispose__4(uint64_t a1)
{
  v1 = *(a1 + 56);
  if (v1)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v1);
  }
}

void sub_21C4720BC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, std::__shared_weak_count *a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, void *a15, uint64_t a16, char a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, std::__shared_weak_count *a24)
{
  if (a10)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a10);
  }

  _Block_object_dispose(&a17, 8);
  if (a24)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a24);
  }

  _Unwind_Resume(a1);
}

void sub_21C47223C(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v1);
  }

  _Unwind_Resume(exception_object);
}

void sub_21C472380(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, std::__shared_weak_count *a16, uint64_t a17, std::__shared_weak_count *a18)
{
  if (a16)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a16);
  }

  if (a18)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a18);
  }

  _Block_object_dispose((v18 - 64), 8);

  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__374(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_21C472500(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v1);
  }

  _Unwind_Resume(exception_object);
}

void sub_21C472CC0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, std::__shared_weak_count *a25)
{
  if (a25)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a25);
  }

  _Unwind_Resume(a1);
}

uint64_t jet_texture::get_bytes_per_element(jet_texture *this)
{
  v2 = (*(*this + 32))(this) - 7;
  if (v2 > 6)
  {
    v3 = 1;
  }

  else
  {
    v3 = dword_21C4B993C[v2];
  }

  v4 = (*(*this + 32))(this) - 1;
  if (v4 > 0xC)
  {
    v5 = 4;
  }

  else
  {
    v5 = dword_21C4B9958[v4];
  }

  return (v5 * v3);
}

void sub_21C473068(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  std::pair<std::string,SKAttributeValue * {__strong}>::~pair(&a9);

  _Unwind_Resume(a1);
}

void sub_21C473380(_Unwind_Exception *a1)
{
  v5 = v4;

  _Unwind_Resume(a1);
}

void sub_21C4756D4(_Unwind_Exception *a1, void *a2, void *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, ...)
{
  va_start(va, a15);

  std::__hash_table<std::__hash_value_type<CGImage *,SKTexture * {__strong}>,std::__unordered_map_hasher<CGImage *,std::__hash_value_type<CGImage *,SKTexture * {__strong}>,std::hash<CGImage *>,std::equal_to<CGImage *>,true>,std::__unordered_map_equal<CGImage *,std::__hash_value_type<CGImage *,SKTexture * {__strong}>,std::equal_to<CGImage *>,std::hash<CGImage *>,true>,std::allocator<std::__hash_value_type<CGImage *,SKTexture * {__strong}>>>::~__hash_table(va);
  _Unwind_Resume(a1);
}

void sub_21C476324(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, objc_super a9)
{
  v10 = v9;
  a9.receiver = v10;
  a9.super_class = SKTextureAtlas;
  [(_Unwind_Exception *)&a9 dealloc];
  _Unwind_Resume(a1);
}

void sub_21C476718(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *a12, uint64_t a13, void *a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, void *__p, uint64_t a43, int a44, __int16 a45, char a46, char a47)
{
  if (a47 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

const void **std::__hash_table<std::__hash_value_type<std::string,SKTexture * {__strong}>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,SKTexture * {__strong}>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,SKTexture * {__strong}>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,SKTexture * {__strong}>>>::__emplace_unique_key_args<std::string,std::pair<std::string,SKTexture * {__strong}>>(void *a1, const void **a2)
{
  v4 = std::__string_hash<char>::operator()[abi:ne200100](a1, a2);
  v5 = v4;
  v6 = a1[1];
  if (!*&v6)
  {
    goto LABEL_18;
  }

  v7 = vcnt_s8(v6);
  v7.i16[0] = vaddlv_u8(v7);
  v8 = v7.u32[0];
  if (v7.u32[0] > 1uLL)
  {
    v9 = v4;
    if (v4 >= *&v6)
    {
      v9 = v4 % *&v6;
    }
  }

  else
  {
    v9 = (*&v6 - 1) & v4;
  }

  v10 = *(*a1 + 8 * v9);
  if (!v10 || (v11 = *v10) == 0)
  {
LABEL_18:
    operator new();
  }

  while (1)
  {
    v12 = v11[1];
    if (v12 == v5)
    {
      break;
    }

    if (v8 > 1)
    {
      if (v12 >= *&v6)
      {
        v12 %= *&v6;
      }
    }

    else
    {
      v12 &= *&v6 - 1;
    }

    if (v12 != v9)
    {
      goto LABEL_18;
    }

LABEL_17:
    v11 = *v11;
    if (!v11)
    {
      goto LABEL_18;
    }
  }

  if (!std::equal_to<std::string>::operator()[abi:ne200100](a1, v11 + 2, a2))
  {
    goto LABEL_17;
  }

  return v11;
}

void sub_21C477D90(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  std::unique_ptr<std::__hash_node<std::__hash_value_type<std::string,SKAttributeValue * {__strong}>,void *>,std::__hash_node_destructor<std::allocator<std::__hash_node<std::__hash_value_type<std::string,SKAttributeValue * {__strong}>,void *>>>>::~unique_ptr[abi:ne200100](va);
  _Unwind_Resume(a1);
}

uint64_t std::__hash_table<std::__hash_value_type<CGImage *,SKTexture * {__strong}>,std::__unordered_map_hasher<CGImage *,std::__hash_value_type<CGImage *,SKTexture * {__strong}>,std::hash<CGImage *>,std::equal_to<CGImage *>,true>,std::__unordered_map_equal<CGImage *,std::__hash_value_type<CGImage *,SKTexture * {__strong}>,std::equal_to<CGImage *>,std::hash<CGImage *>,true>,std::allocator<std::__hash_value_type<CGImage *,SKTexture * {__strong}>>>::~__hash_table(uint64_t a1)
{
  std::__hash_table<std::__hash_value_type<CGImage *,SKTexture * {__strong}>,std::__unordered_map_hasher<CGImage *,std::__hash_value_type<CGImage *,SKTexture * {__strong}>,std::hash<CGImage *>,std::equal_to<CGImage *>,true>,std::__unordered_map_equal<CGImage *,std::__hash_value_type<CGImage *,SKTexture * {__strong}>,std::equal_to<CGImage *>,std::hash<CGImage *>,true>,std::allocator<std::__hash_value_type<CGImage *,SKTexture * {__strong}>>>::__deallocate_node(a1, *(a1 + 16));
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    operator delete(v2);
  }

  return a1;
}

void std::__hash_table<std::__hash_value_type<CGImage *,SKTexture * {__strong}>,std::__unordered_map_hasher<CGImage *,std::__hash_value_type<CGImage *,SKTexture * {__strong}>,std::hash<CGImage *>,std::equal_to<CGImage *>,true>,std::__unordered_map_equal<CGImage *,std::__hash_value_type<CGImage *,SKTexture * {__strong}>,std::equal_to<CGImage *>,std::hash<CGImage *>,true>,std::allocator<std::__hash_value_type<CGImage *,SKTexture * {__strong}>>>::__deallocate_node(uint64_t a1, id *a2)
{
  if (a2)
  {
    v2 = a2;
    do
    {
      v3 = *v2;

      operator delete(v2);
      v2 = v3;
    }

    while (v3);
  }
}

void *std::__hash_table<std::__hash_value_type<CGImage *,SKTexture * {__strong}>,std::__unordered_map_hasher<CGImage *,std::__hash_value_type<CGImage *,SKTexture * {__strong}>,std::hash<CGImage *>,std::equal_to<CGImage *>,true>,std::__unordered_map_equal<CGImage *,std::__hash_value_type<CGImage *,SKTexture * {__strong}>,std::equal_to<CGImage *>,std::hash<CGImage *>,true>,std::allocator<std::__hash_value_type<CGImage *,SKTexture * {__strong}>>>::find<CGImage *>(void *a1, void *a2)
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

void *std::__hash_table<std::__hash_value_type<CGImage *,SKTexture * {__strong}>,std::__unordered_map_hasher<CGImage *,std::__hash_value_type<CGImage *,SKTexture * {__strong}>,std::hash<CGImage *>,std::equal_to<CGImage *>,true>,std::__unordered_map_equal<CGImage *,std::__hash_value_type<CGImage *,SKTexture * {__strong}>,std::equal_to<CGImage *>,std::hash<CGImage *>,true>,std::allocator<std::__hash_value_type<CGImage *,SKTexture * {__strong}>>>::__emplace_unique_key_args<CGImage *,std::piecewise_construct_t const&,std::tuple<CGImage * const&>,std::tuple<>>(void *a1, void *a2)
{
  v2 = 0x9DDFEA08EB382D69 * ((8 * (*a2 & 0x1FFFFFFFLL) + 8) ^ HIDWORD(*a2));
  v3 = 0x9DDFEA08EB382D69 * (HIDWORD(*a2) ^ (v2 >> 47) ^ v2);
  v4 = 0x9DDFEA08EB382D69 * (v3 ^ (v3 >> 47));
  v5 = a1[1];
  if (!*&v5)
  {
    goto LABEL_18;
  }

  v6 = vcnt_s8(v5);
  v6.i16[0] = vaddlv_u8(v6);
  if (v6.u32[0] > 1uLL)
  {
    v7 = 0x9DDFEA08EB382D69 * (v3 ^ (v3 >> 47));
    if (v4 >= *&v5)
    {
      v7 = v4 % *&v5;
    }
  }

  else
  {
    v7 = v4 & (*&v5 - 1);
  }

  v8 = *(*a1 + 8 * v7);
  if (!v8 || (v9 = *v8) == 0)
  {
LABEL_18:
    operator new();
  }

  while (1)
  {
    v10 = v9[1];
    if (v10 == v4)
    {
      break;
    }

    if (v6.u32[0] > 1uLL)
    {
      if (v10 >= *&v5)
      {
        v10 %= *&v5;
      }
    }

    else
    {
      v10 &= *&v5 - 1;
    }

    if (v10 != v7)
    {
      goto LABEL_18;
    }

LABEL_17:
    v9 = *v9;
    if (!v9)
    {
      goto LABEL_18;
    }
  }

  if (v9[2] != *a2)
  {
    goto LABEL_17;
  }

  return v9;
}

void sub_21C478190(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  std::unique_ptr<std::__hash_node<std::__hash_value_type<CGImage *,SKTexture * {__strong}>,void *>,std::__hash_node_destructor<std::allocator<std::__hash_node<std::__hash_value_type<CGImage *,SKTexture * {__strong}>,void *>>>>::~unique_ptr[abi:ne200100](va);
  _Unwind_Resume(a1);
}

uint64_t std::unique_ptr<std::__hash_node<std::__hash_value_type<CGImage *,SKTexture * {__strong}>,void *>,std::__hash_node_destructor<std::allocator<std::__hash_node<std::__hash_value_type<CGImage *,SKTexture * {__strong}>,void *>>>>::~unique_ptr[abi:ne200100](uint64_t a1)
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

const void **std::__hash_table<std::__hash_value_type<std::string,SKTexture * {__strong}>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,SKTexture * {__strong}>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,SKTexture * {__strong}>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,SKTexture * {__strong}>>>::find<std::string>(void *a1, const void **a2)
{
  v4 = std::__string_hash<char>::operator()[abi:ne200100](a1, a2);
  v5 = a1[1];
  if (!*&v5)
  {
    return 0;
  }

  v6 = v4;
  v7 = vcnt_s8(v5);
  v7.i16[0] = vaddlv_u8(v7);
  v8 = v7.u32[0];
  if (v7.u32[0] > 1uLL)
  {
    v9 = v4;
    if (v4 >= *&v5)
    {
      v9 = v4 % *&v5;
    }
  }

  else
  {
    v9 = (*&v5 - 1) & v4;
  }

  v10 = *(*a1 + 8 * v9);
  if (!v10)
  {
    return 0;
  }

  for (i = *v10; i; i = *i)
  {
    v12 = i[1];
    if (v12 == v6)
    {
      if (std::equal_to<std::string>::operator()[abi:ne200100](a1, i + 2, a2))
      {
        return i;
      }
    }

    else
    {
      if (v8 > 1)
      {
        if (v12 >= *&v5)
        {
          v12 %= *&v5;
        }
      }

      else
      {
        v12 &= *&v5 - 1;
      }

      if (v12 != v9)
      {
        return 0;
      }
    }
  }

  return i;
}

void SKCVideoBackdropNode::~SKCVideoBackdropNode(SKCVideoBackdropNode *this)
{
  SKCVideoNode::~SKCVideoNode(this);

  JUMPOUT(0x21CF0A160);
}

void SKCVideoBackdropNode::addRenderOps(float32x4_t *a1, uint64_t a2, uint64_t *a3)
{
  v67 = *MEMORY[0x277D85DE8];
  v6 = a1[43].i64[1];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = ___ZN20SKCVideoBackdropNode12addRenderOpsEP13SKCRenderInfoRKNSt3__110shared_ptrI18jet_command_bufferEE_block_invoke;
  block[3] = &__block_descriptor_48_e5_v8__0l;
  block[4] = a1;
  block[5] = a2;
  dispatch_sync(v6, block);
  if (!a1[37].i64[0] || !a1[38].i64[0])
  {
    return;
  }

  v7 = 0;
  v65 = xmmword_21C4B99A0;
  v66 = unk_21C4B99B0;
  v64[0] = xmmword_21C4B99C0;
  v64[1] = unk_21C4B99D0;
  v64[2] = xmmword_21C4B99E0;
  v64[3] = unk_21C4B99F0;
  v8.i64[0] = 0xBF000000BF000000;
  v8.i64[1] = 0xBF000000BF000000;
  do
  {
    v9 = vaddq_f32(v64[v7], v8);
    v9.i64[0] = vaddq_f32(v9, v9).u64[0];
    v9.i64[1] = *(&v64[v7] + 1);
    v64[v7++] = v9;
  }

  while (v7 != 4);
  v10 = *(a1[43].i64[0] + 16);
  if (v10 || (v10 = a1[41].i64[0]) != 0)
  {
    Width = CVPixelBufferGetWidth(v10);
    Height = CVPixelBufferGetHeight(v10);
    v13 = Width;
  }

  else
  {
    Height = 0.0;
    v13 = 0.0;
  }

  v14 = [MEMORY[0x277D75128] sharedApplication];
  v15 = [v14 statusBarOrientation];

  _D3 = 1065353216;
  LODWORD(_D0) = 0;
  LODWORD(_D1) = 0;
  __asm { FMOV            V2.2S, #1.0 }

  v25 = -0.5;
  v26 = 0.5;
  if (v15 > 2)
  {
    if (v15 == 3)
    {
      LODWORD(_D1) = 0;
      *&v65 = 0x3F80000000000000;
      _D0 = 1065353216;
      v25 = 0.5;
      v26 = -0.5;
      _D2 = 0;
      __asm { FMOV            V3.2S, #1.0 }

      v27 = -0.5;
      goto LABEL_17;
    }

    v27 = 0.5;
    v28 = -0.5;
    if (v15 == 4)
    {
      LODWORD(_D1) = 1065353216;
      *&v65 = 1065353216;
      _D0 = 0x3F80000000000000;
      __asm { FMOV            V2.2S, #1.0 }

      _D3 = 0;
LABEL_18:
      *(&v65 + 1) = _D3;
      *&v66 = _D2;
      *(&v66 + 1) = _D0;
    }
  }

  else
  {
    if (v15 < 2)
    {
      __asm { FMOV            V1.2S, #1.0 }

      *&v65 = _D1;
      _D2 = 0x3F80000000000000;
      _D3 = 1065353216;
      v27 = 0.5;
      v26 = -0.5;
      _D0 = 0;
LABEL_17:
      v28 = 0.5;
      goto LABEL_18;
    }

    v27 = 0.5;
    v28 = -0.5;
    if (v15 == 2)
    {
      LODWORD(_D1) = 0;
      *&v65 = 0;
      _D2 = 1065353216;
      _D3 = 0x3F80000000000000;
      v27 = -0.5;
      __asm { FMOV            V0.2S, #1.0 }

      v25 = 0.5;
      goto LABEL_18;
    }
  }

  v58 = *&_D2;
  v59 = *&_D1;
  v60 = *&_D0;
  v61 = *(a2 + 112);
  v29 = [MEMORY[0x277D75128] sharedApplication];
  v30 = [v29 statusBarOrientation];

  if (v30 >= 3)
  {
    v31 = vrev64_s32(*&vextq_s8(v61, v61, 8uLL));
  }

  else
  {
    v31 = *(a2 + 120);
  }

  v32 = v31.u32[0];
  v33 = Height * v31.u32[1];
  v34 = v13 * v32;
  if (v33 <= (v13 * v32))
  {
    if (v33 < (v13 * v32))
    {
      v36 = v33 / v34;
      *&v65 = ((v59 + -0.5) * v36) + 0.5;
      *(&v65 + 2) = ((v57 + -0.5) * v36) + 0.5;
      *&v66 = ((v58 + -0.5) * v36) + 0.5;
      *(&v66 + 2) = ((v60 + -0.5) * v36) + 0.5;
    }
  }

  else
  {
    v35 = v34 / v33;
    *(&v65 + 1) = (v28 * v35) + 0.5;
    *(&v65 + 3) = (v25 * v35) + 0.5;
    *(&v66 + 1) = (v27 * v35) + 0.5;
    *(&v66 + 3) = (v26 * v35) + 0.5;
  }

  v37 = 0;
  v38 = v65;
  v65 = v66;
  *&v66 = *(&v38 + 1);
  *(&v66 + 1) = v38;
  v39 = *a2 >> 2;
  v40 = vmovn_s32(vcvtq_s32_f32(vmulq_f32(vmulq_n_f32(a1[19], fminf(fmaxf(vmuls_lane_f32(*(a2 + 96), a1[19], 3) * a1[20].f32[1], 0.0), 1.0)), vdupq_n_s32(0x437F0000u))));
  v41 = vuzp1_s8(v40, v40).u32[0];
  do
  {
    *(*(a2 + 24) + 16 * (v37 + *a2)) = v64[v37];
    *(*(a2 + 16) + 8 * (v37 + *a2)) = *(&v65 + v37);
    *(*(a2 + 8) + 4 * (v37++ + *a2)) = v41;
  }

  while (v37 != 4);
  v42 = *a3;
  v43 = *(a2 + 280);
  LODWORD(__p.__r_.__value_.__l.__data_) = 31;
  v44 = *(v42 + 16);
  if (v44 >= *(v42 + 24))
  {
    v45 = std::vector<jet_render_op>::__emplace_back_slow_path<jet_render_opcode>(v42 + 8, &__p);
  }

  else
  {
    *v44 = &unk_282E15828;
    *(v44 + 8) = 31;
    *(v44 + 24) = 0;
    *(v44 + 32) = 0;
    *(v44 + 16) = 0;
    *(v44 + 64) = 0;
    v45 = v44 + 192;
    *(v44 + 96) = 0;
  }

  *(v42 + 16) = v45;
  *(v45 - 80) = v43;
  *(v45 - 64) = xmmword_21C4B8530;
  *(v45 - 48) = 0x30000000FLL;
  v46 = *a3;
  std::string::basic_string[abi:ne200100]<0>(&__p, "a_position");
  jet_command_buffer::set_vertex_buffer(v46, &__p, *(a2 + 328));
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  v47 = *a3;
  std::string::basic_string[abi:ne200100]<0>(&__p, "a_color");
  jet_command_buffer::set_vertex_buffer(v47, &__p, *(a2 + 336));
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  v48 = *a3;
  std::string::basic_string[abi:ne200100]<0>(&__p, "a_tex_coord");
  jet_command_buffer::set_vertex_buffer(v48, &__p, *(a2 + 344));
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  v49 = *a3;
  std::string::basic_string[abi:ne200100]<0>(&__p, "u_texture");
  jet_command_buffer::set_fragment_texture(v49, &__p, a1[37].i64[0]);
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  v50 = *a3;
  std::string::basic_string[abi:ne200100]<0>(&__p, "u_texture2");
  jet_command_buffer::set_fragment_texture(v50, &__p, a1[38].i64[0]);
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  v51 = *a3;
  v52 = *(a2 + 400);
  LODWORD(__p.__r_.__value_.__l.__data_) = 4;
  v53 = *(v51 + 16);
  if (v53 >= *(v51 + 24))
  {
    v54 = std::vector<jet_render_op>::__emplace_back_slow_path<jet_render_opcode>(v51 + 8, &__p);
  }

  else
  {
    *v53 = &unk_282E15828;
    *(v53 + 8) = 4;
    *(v53 + 24) = 0;
    *(v53 + 32) = 0;
    *(v53 + 16) = 0;
    *(v53 + 64) = 0;
    v54 = v53 + 192;
    *(v53 + 96) = 0;
  }

  *(v51 + 16) = v54;
  *(v54 - 80) = v52;
  *(v54 - 64) = 3;
  *(v54 - 60) = 6 * v39;
  *(v54 - 56) = 6;
  v55 = *(a2 + 664);
  v56 = 6 * v39 + 6;
  if (v55[43] > v56)
  {
    v56 = v55[43];
  }

  v55[43] = v56;
  ++v55[41];
  ++v55[37];
  *a2 += 4;
}

void sub_21C4789A4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, void *__p, uint64_t a21, int a22, __int16 a23, char a24, char a25)
{
  if (a25 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t SKGetLinkedOnOrAfter(uint64_t a1)
{
  v1 = dyld_get_active_platform() | (a1 << 32);

  return MEMORY[0x282202220](v1);
}

uint64_t sk_get_info_plist_flag_is_set(NSString *a1)
{
  v1 = a1;
  v2 = [MEMORY[0x277CCA8D8] mainBundle];
  v3 = [v2 infoDictionary];

  v4 = [v3 objectForKey:v1];
  if (v4 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    v5 = [v4 BOOLValue];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

id sk_get_debug_options(void)
{
  if (sk_get_debug_options(void)::onceToken != -1)
  {
    sk_get_debug_options();
  }

  v0 = sk_get_debug_options(void)::options;
  if (!sk_get_debug_options(void)::options)
  {
    v1 = [MEMORY[0x277CBEBD0] standardUserDefaults];
    v2 = [v1 dictionaryForKey:@"SKDefaults"];
    v3 = [v2 mutableCopy];
    v4 = sk_get_debug_options(void)::options;
    sk_get_debug_options(void)::options = v3;

    if (!sk_get_debug_options(void)::options)
    {
      v5 = [MEMORY[0x277CBEB38] dictionary];
      v6 = sk_get_debug_options(void)::options;
      sk_get_debug_options(void)::options = v5;
    }

    v0 = sk_get_debug_options(void)::options;
  }

  return v0;
}

uint64_t ___Z20sk_get_debug_optionsv_block_invoke()
{
  out_token = 0;
  v0 = [@"SKDefaults_ReloadNotification" UTF8String];
  return notify_register_dispatch(v0, &out_token, MEMORY[0x277D85CD0], &__block_literal_global_4_0);
}

void ___Z20sk_get_debug_optionsv_block_invoke_2()
{
  v5 = [MEMORY[0x277CBEBD0] standardUserDefaults];
  v0 = [v5 dictionaryForKey:@"SKDefaults"];
  v1 = [v0 mutableCopy];
  v2 = sk_get_debug_options(void)::options;
  sk_get_debug_options(void)::options = v1;

  if (!sk_get_debug_options(void)::options)
  {
    v3 = [MEMORY[0x277CBEB38] dictionary];
    v4 = sk_get_debug_options(void)::options;
    sk_get_debug_options(void)::options = v3;
  }
}

BOOL sk_debug_option_exists(NSString *a1)
{
  v1 = a1;
  v2 = sk_get_debug_options();
  v3 = [v2 objectForKey:v1];
  v4 = v3 != 0;

  return v4;
}

uint64_t sk_debug_option_get_BOOL(NSString *a1)
{
  v1 = a1;
  v2 = sk_get_debug_options();
  v3 = [v2 objectForKey:v1];

  if (v3)
  {
    v4 = [v3 BOOLValue];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

uint64_t sk_debug_option_get_int(NSString *a1)
{
  v1 = a1;
  v2 = sk_get_debug_options();
  v3 = [v2 objectForKey:v1];

  if (v3)
  {
    v4 = [v3 integerValue];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

float sk_debug_option_get_float(NSString *a1)
{
  v1 = a1;
  v2 = sk_get_debug_options();
  v3 = [v2 objectForKey:v1];

  if (v3)
  {
    [v3 floatValue];
    v5 = v4;
  }

  else
  {
    v5 = 0.0;
  }

  return v5;
}

id sk_debug_option_get_string(NSString *a1)
{
  v1 = a1;
  v2 = sk_get_debug_options();
  v3 = [v2 objectForKey:v1];

  return v3;
}

uint64_t sk_debug_check_optional(void)
{
  result = sk_debug_option_get_BOOL(&cfstr_Enablealldebug.isa);
  enableAllDebugEvents = result;
  return result;
}

id SKGetGraphicsPerformanceStatistics(void)
{
  v0 = CACurrentMediaTime();
  if (v0 - *&_graphicsPerformanceStatisticsDictionaryQueryTime > 1.0)
  {
    v1 = _accelerator;
    if (!_accelerator)
    {
      existing = 0;
      v2 = *MEMORY[0x277CD28A0];
      v3 = IOServiceMatching("IOAcceleratorES");
      if (!IOServiceGetMatchingServices(v2, v3, &existing))
      {
        _accelerator = IOIteratorNext(existing);
      }

      IOObjectRelease(existing);
      v1 = _accelerator;
    }

    CFProperty = IORegistryEntryCreateCFProperty(v1, @"PerformanceStatistics", *MEMORY[0x277CBECE8], 0);
    if (CFProperty)
    {
      objc_storeStrong(&_graphicsPerformanceStatisticsDictionary, CFProperty);
    }

    _graphicsPerformanceStatisticsDictionaryQueryTime = *&v0;
  }

  v5 = [_graphicsPerformanceStatisticsDictionary copy];

  return v5;
}

id SKGetProcessorPerformanceStatistics(void)
{
  v23[3] = *MEMORY[0x277D85DE8];
  v0 = CACurrentMediaTime();
  if (v0 - *&_processorPerformanceStatisticsDictionaryQueryTime > 1.0)
  {
    *out_processor_infoCnt = 0;
    out_processor_info = 0;
    v1 = MEMORY[0x21CF0A7C0]();
    host_processor_info(v1, 2, out_processor_infoCnt, &out_processor_info, &out_processor_infoCnt[1]);
    v2 = out_processor_infoCnt[0];
    v3 = 0;
    v4 = 0.0;
    if (out_processor_infoCnt[0])
    {
      v5 = out_processor_info;
      do
      {
        v4 = (v4 + *v5) + v5[3];
        v3 = vadd_f32(v3, vcvt_f32_u32(*(v5 + 1)));
        v5 += 4;
        --v2;
      }

      while (v2);
    }

    v19 = v3;
    MEMORY[0x21CF0AD30](*MEMORY[0x277D85F48], out_processor_info, 4 * out_processor_infoCnt[1]);
    v6 = 0.0;
    v7 = 0.0;
    v8 = 0.0;
    if (*&SKGetProcessorPerformanceStatistics(void)::lastUsr >= 0.0)
    {
      v9 = (v19.f32[1] + (v19.f32[0] + v4)) - ((*&SKGetProcessorPerformanceStatistics(void)::lastUsr + *&SKGetProcessorPerformanceStatistics(void)::lastSys) + *&SKGetProcessorPerformanceStatistics(void)::lastIdl);
      v10 = 0.0;
      if (v9 > 0.0)
      {
        v10 = (1.0 / v9) * 100.0;
      }

      v6 = (v4 - *&SKGetProcessorPerformanceStatistics(void)::lastUsr) * v10;
      v7 = (v19.f32[0] - *&SKGetProcessorPerformanceStatistics(void)::lastSys) * v10;
      v8 = (v19.f32[1] - *&SKGetProcessorPerformanceStatistics(void)::lastIdl) * v10;
    }

    v11 = v19;
    SKGetProcessorPerformanceStatistics(void)::lastIdl = HIDWORD(*&v11);
    SKGetProcessorPerformanceStatistics(void)::lastSys = v11;
    SKGetProcessorPerformanceStatistics(void)::lastUsr = LODWORD(v4);
    v22[0] = @"User CPU %";
    v12 = [MEMORY[0x277CCABB0] numberWithDouble:roundf(v6)];
    v23[0] = v12;
    v22[1] = @"System CPU %";
    v13 = [MEMORY[0x277CCABB0] numberWithDouble:roundf(v7)];
    v23[1] = v13;
    v22[2] = @"Idle CPU %";
    v14 = [MEMORY[0x277CCABB0] numberWithDouble:roundf(v8)];
    v23[2] = v14;
    v15 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v23 forKeys:v22 count:3];
    v16 = _processorPerformanceStatisticsDictionary;
    _processorPerformanceStatisticsDictionary = v15;

    _processorPerformanceStatisticsDictionaryQueryTime = *&v0;
  }

  v17 = _processorPerformanceStatisticsDictionary;

  return v17;
}

void sub_21C479368(_Unwind_Exception *a1)
{
  v4 = v3;

  _Unwind_Resume(a1);
}

void SKCParticleSystem::SKCParticleSystem(SKCParticleSystem *this, int a2)
{
  *this = &unk_282E175C8;
  *(this + 2) = 0;
  *(this + 1) = this + 16;
  *(this + 3) = 0;
  *(this + 4) = 0;
  *(this + 5) = 0;
  *(this + 6) = 0;
  *(this + 7) = this + 56;
  *(this + 8) = this + 56;
  *(this + 9) = 0;
  *(this + 10) = 0;
  *(this + 88) = 0;
  SKCParticleSystem::resize(this, a2);
}

void sub_21C479420(_Unwind_Exception *a1)
{
  v6 = v5;
  v7 = v3;
  std::__list_imp<SKCRenderSortInfo *>::clear(v6);
  v9 = *v7;
  if (*v7)
  {
    *(v1 + 40) = v9;
    operator delete(v9);
  }

  std::__tree<std::__value_type<std::string,SKCDataSlice *>,std::__map_value_compare<std::string,std::__value_type<std::string,SKCDataSlice *>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,SKCDataSlice *>>>::destroy(v2, *v4);
  _Unwind_Resume(a1);
}

void SKCParticleSystem::resize(SKCParticleSystem *this, int a2)
{
  if (*(this + 20) != a2)
  {
    v4[5] = v2;
    v4[6] = v3;
    *(this + 20) = a2;
    v4[0] = MEMORY[0x277D85DD0];
    v4[1] = 3221225472;
    v4[2] = ___ZN17SKCParticleSystem6resizeEj_block_invoke;
    v4[3] = &__block_descriptor_40_e9_v16__0_v8l;
    v4[4] = this;
    SKCParticleSystem::enumerateSlices(this, v4);
  }
}

void SKCParticleSystem::update(SKCParticleSystem *this, float a2)
{
  v2 = this + 56;
  v3 = *(this + 8);
  if (v3 != this + 56)
  {
    do
    {
      v6 = *(v3 + 2);
      if (SKCParticleUpdater::getEnabled(v6))
      {
        v7 = SKCParticleUpdater::getUpdateBlock(v6);
        (v7)[2](v7, this, a2);
      }

      v3 = *(v3 + 1);
    }

    while (v3 != v2);
  }
}

void *std::list<SKCParticleUpdater *>::remove(uint64_t a1, void *a2)
{
  v10[0] = v10;
  v10[1] = v10;
  v10[2] = 0;
  v2 = *(a1 + 8);
  if (v2 != a1)
  {
    do
    {
      v6 = v2[1];
      v5 = v2[2];
      if (v5 == *a2)
      {
        if (v6 == a1)
        {
          v8 = 1;
        }

        else
        {
          do
          {
            v7 = v6[2];
            v8 = v7 == v5;
            if (v7 != v5)
            {
              break;
            }

            v6 = v6[1];
          }

          while (v6 != a1);
        }

        std::list<SKCAction *>::splice(v10, v10, a1, v2, v6);
        if (!v8)
        {
          v6 = v6[1];
        }
      }

      v2 = v6;
    }

    while (v6 != a1);
  }

  return std::__list_imp<SKCRenderSortInfo *>::clear(v10);
}

void sub_21C4796B4(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  std::__list_imp<SKCRenderSortInfo *>::clear(va);
  _Unwind_Resume(a1);
}

void SKCParticleSystem::enumerateSlices(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(a1 + 8);
  v5 = (a1 + 16);
  if (v4 != v5)
  {
    do
    {
      if (*(v4 + 55) < 0)
      {
        std::string::__init_copy_ctor_external(&__p, v4[4], v4[5]);
      }

      else
      {
        __p = *(v4 + 4);
      }

      v10 = v4[7];
      v3[2](v3);
      if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(__p.__r_.__value_.__l.__data_);
      }

      v6 = v4[1];
      if (v6)
      {
        do
        {
          v7 = v6;
          v6 = *v6;
        }

        while (v6);
      }

      else
      {
        do
        {
          v7 = v4[2];
          v8 = *v7 == v4;
          v4 = v7;
        }

        while (!v8);
      }

      v4 = v7;
    }

    while (v7 != v5);
  }
}

void **___ZN17SKCParticleSystem6resizeEj_block_invoke(void **result, void **this)
{
  if (*(this + 49) == 1)
  {
    return SKCDataSlice::resize(this, *(result[4] + 20));
  }

  return result;
}

void SKCParticleSystem::compact(SKCParticleSystem *this)
{
  v4 = this + 32;
  v2 = *(this + 4);
  v3 = *(v4 + 1);
  if (v3 != v2)
  {
    v5 = (v3 - v2) >> 2;
    std::__sort<std::__less<unsigned int,unsigned int> &,unsigned int *>();
    v6[0] = MEMORY[0x277D85DD0];
    v6[1] = 3221225472;
    v6[2] = ___ZN17SKCParticleSystem7compactEv_block_invoke;
    v6[3] = &__block_descriptor_48_e9_v16__0_v8l;
    v6[4] = this;
    v6[5] = v5;
    SKCParticleSystem::enumerateSlices(this, v6);
    *(this + 5) = *(this + 4);
    *(this + 21) -= v5;
  }
}

void *___ZN17SKCParticleSystem7compactEv_block_invoke(void *result, uint64_t a2)
{
  if (*(a2 + 48) == 1)
  {
    v3 = result;
    v4 = *(a2 + 16);
    v5 = *(a2 + 12);
    v7 = result[4];
    v6 = result[5];
    v8 = **(v7 + 32);
    v9 = v8 + 1;
    if (v6 >= 2)
    {
      for (i = 1; i < v6; ++i)
      {
        v11 = *(*(v7 + 32) + 4 * i);
        v12 = v11 - v9;
        if (v11 != v9)
        {
          memmove((v4 + v5 * v8), (v4 + v5 * v9), v5 * v12);
          v8 += v12;
          v6 = v3[5];
          v9 = v11;
        }

        ++v9;
      }
    }

    v13 = v5 * (*(v7 + 84) - v9);

    return memmove((v4 + v5 * v8), (v4 + v5 * v9), v13);
  }

  return result;
}

void SKCParticleSystem::addPatricles(SKCParticleSystem *this, int a2)
{
  v3 = *(this + 20);
  v4 = *(this + 21) + a2;
  if (v4 <= v3)
  {
LABEL_7:
    v3 = v4;
    goto LABEL_8;
  }

  if (*(this + 88) == 1)
  {
    if (v4 <= 2 * v3)
    {
      v5 = 2 * v3;
    }

    else
    {
      v5 = *(this + 21) + a2;
    }

    SKCParticleSystem::resize(this, v5);
    goto LABEL_7;
  }

LABEL_8:
  *(this + 21) = v3;
}

void SKCParticleSystem::addPatricles(SKCParticleSystem *this, int a2, unsigned int *a3, unsigned int *a4)
{
  v7 = *(this + 20);
  v8 = *(this + 21) + a2;
  if (v8 > v7)
  {
    if (*(this + 88) != 1)
    {
      goto LABEL_8;
    }

    if (v8 <= 2 * v7)
    {
      v9 = 2 * v7;
    }

    else
    {
      v9 = *(this + 21) + a2;
    }

    SKCParticleSystem::resize(this, v9);
  }

  v7 = v8;
LABEL_8:
  if (a4)
  {
    *a4 = v7 - *(this + 21);
  }

  if (a3)
  {
    *a3 = *(this + 21);
  }

  *(this + 21) = v7;
}

void SKCParticleSystem::removePatricles(SKCParticleSystem *this, int a2, int a3)
{
  v3 = a2;
  if (a3 + a2 == *(this + 21))
  {
    *(this + 21) = a2;
  }

  else
  {
    v5 = a3;
    if (a3)
    {
      v6 = *(this + 5);
      do
      {
        v7 = *(this + 6);
        if (v6 >= v7)
        {
          v8 = *(this + 4);
          v9 = v6 - v8;
          v10 = (v6 - v8) >> 2;
          v11 = v10 + 1;
          if ((v10 + 1) >> 62)
          {
            std::vector<jet_render_op>::__throw_length_error[abi:ne200100]();
          }

          v12 = v7 - v8;
          if (v12 >> 1 > v11)
          {
            v11 = v12 >> 1;
          }

          if (v12 >= 0x7FFFFFFFFFFFFFFCLL)
          {
            v13 = 0x3FFFFFFFFFFFFFFFLL;
          }

          else
          {
            v13 = v11;
          }

          if (v13)
          {
            std::__allocate_at_least[abi:ne200100]<std::allocator<unsigned int>>(this + 32, v13);
          }

          v14 = (v6 - v8) >> 2;
          v15 = (4 * v10);
          v16 = (4 * v10 - 4 * v14);
          *v15 = v3;
          v6 = (v15 + 1);
          memcpy(v16, v8, v9);
          v17 = *(this + 4);
          *(this + 4) = v16;
          *(this + 5) = v6;
          *(this + 6) = 0;
          if (v17)
          {
            operator delete(v17);
          }
        }

        else
        {
          *v6 = v3;
          v6 += 4;
        }

        *(this + 5) = v6;
        ++v3;
        --v5;
      }

      while (v5);
    }
  }
}

uint64_t SKCParticleSystem::getSlice(uint64_t a1, const void **a2)
{
  v3 = std::__tree<std::__value_type<std::string,SKCDataSlice *>,std::__map_value_compare<std::string,std::__value_type<std::string,SKCDataSlice *>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,SKCDataSlice *>>>::find<std::string>(a1 + 8, a2);
  if (a1 + 16 == v3)
  {
    return 0;
  }

  else
  {
    return *(v3 + 56);
  }
}

void SKCParticleSystem::~SKCParticleSystem(SKCParticleSystem *this)
{
  *this = &unk_282E175C8;
  v2 = this + 8;
  v3 = *(this + 1);
  v4 = this + 16;
  if (v3 != (this + 16))
  {
    do
    {
      if (*(v3 + 55) < 0)
      {
        std::string::__init_copy_ctor_external(&__p, v3[4], v3[5]);
      }

      else
      {
        __p = *(v3 + 4);
      }

      v5 = v3[7];
      v11 = v5;
      if (v5)
      {
        (*(*v5 + 8))(v5);
      }

      if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(__p.__r_.__value_.__l.__data_);
      }

      v6 = v3[1];
      if (v6)
      {
        do
        {
          v7 = v6;
          v6 = *v6;
        }

        while (v6);
      }

      else
      {
        do
        {
          v7 = v3[2];
          v8 = *v7 == v3;
          v3 = v7;
        }

        while (!v8);
      }

      v3 = v7;
    }

    while (v7 != v4);
  }

  std::__tree<std::__value_type<std::string,SKCDataSlice *>,std::__map_value_compare<std::string,std::__value_type<std::string,SKCDataSlice *>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,SKCDataSlice *>>>::destroy(v2, *(this + 2));
  *(this + 2) = 0;
  *(this + 3) = 0;
  *(this + 1) = v4;
  std::__list_imp<SKCRenderSortInfo *>::clear(this + 7);
  v9 = *(this + 4);
  if (v9)
  {
    *(this + 5) = v9;
    operator delete(v9);
  }

  std::__tree<std::__value_type<std::string,SKCDataSlice *>,std::__map_value_compare<std::string,std::__value_type<std::string,SKCDataSlice *>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,SKCDataSlice *>>>::destroy(v2, *(this + 2));
}

{
  SKCParticleSystem::~SKCParticleSystem(this);

  JUMPOUT(0x21CF0A160);
}

void std::__tree<std::__value_type<std::string,SKCDataSlice *>,std::__map_value_compare<std::string,std::__value_type<std::string,SKCDataSlice *>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,SKCDataSlice *>>>::destroy(uint64_t a1, char *a2)
{
  if (a2)
  {
    std::__tree<std::__value_type<std::string,SKCDataSlice *>,std::__map_value_compare<std::string,std::__value_type<std::string,SKCDataSlice *>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,SKCDataSlice *>>>::destroy(a1, *a2);
    std::__tree<std::__value_type<std::string,SKCDataSlice *>,std::__map_value_compare<std::string,std::__value_type<std::string,SKCDataSlice *>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,SKCDataSlice *>>>::destroy(a1, *(a2 + 1));
    if (a2[55] < 0)
    {
      operator delete(*(a2 + 4));
    }

    operator delete(a2);
  }
}

void std::__allocate_at_least[abi:ne200100]<std::allocator<unsigned int>>(uint64_t a1, unint64_t a2)
{
  if (!(a2 >> 62))
  {
    operator new();
  }

  std::__throw_bad_array_new_length[abi:ne200100]();
}

uint64_t std::__tree<std::__value_type<std::string,SKCDataSlice *>,std::__map_value_compare<std::string,std::__value_type<std::string,SKCDataSlice *>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,SKCDataSlice *>>>::find<std::string>(uint64_t a1, const void **a2)
{
  v2 = a1 + 8;
  v3 = *(a1 + 8);
  if (!v3)
  {
    return v2;
  }

  v6 = a1 + 8;
  do
  {
    v7 = std::__map_value_compare<std::string,std::__value_type<std::string,SKCDataSlice *>,std::less<std::string>,true>::operator()[abi:ne200100](a1, (v3 + 32), a2);
    if (v7)
    {
      v8 = 8;
    }

    else
    {
      v8 = 0;
    }

    if (!v7)
    {
      v6 = v3;
    }

    v3 = *(v3 + v8);
  }

  while (v3);
  if (v6 == v2 || std::__map_value_compare<std::string,std::__value_type<std::string,SKCDataSlice *>,std::less<std::string>,true>::operator()[abi:ne200100](a1, a2, (v6 + 32)))
  {
    return v2;
  }

  return v6;
}

BOOL std::__map_value_compare<std::string,std::__value_type<std::string,SKCDataSlice *>,std::less<std::string>,true>::operator()[abi:ne200100](uint64_t a1, const void **a2, const void **a3)
{
  v3 = *(a3 + 23);
  v4 = *(a2 + 23);
  if (v4 >= 0)
  {
    v5 = *(a2 + 23);
  }

  else
  {
    v5 = a2[1];
  }

  if (v4 >= 0)
  {
    v6 = a2;
  }

  else
  {
    v6 = *a2;
  }

  if (v3 >= 0)
  {
    v7 = *(a3 + 23);
  }

  else
  {
    v7 = a3[1];
  }

  if (v3 >= 0)
  {
    v8 = a3;
  }

  else
  {
    v8 = *a3;
  }

  if (v7 >= v5)
  {
    v9 = v5;
  }

  else
  {
    v9 = v7;
  }

  v10 = memcmp(v6, v8, v9);
  if (v10)
  {
    return v10 < 0;
  }

  else
  {
    return v5 < v7;
  }
}

uint64_t std::__tree<std::__value_type<std::string,SKCDataSlice *>,std::__map_value_compare<std::string,std::__value_type<std::string,SKCDataSlice *>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,SKCDataSlice *>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(uint64_t a1, const void **a2)
{
  v2 = *std::__tree<std::__value_type<std::string,SKCDataSlice *>,std::__map_value_compare<std::string,std::__value_type<std::string,SKCDataSlice *>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,SKCDataSlice *>>>::__find_equal<std::string>(a1, &v4, a2);
  if (!v2)
  {
    operator new();
  }

  return v2;
}

uint64_t std::__tree<std::__value_type<std::string,SKCDataSlice *>,std::__map_value_compare<std::string,std::__value_type<std::string,SKCDataSlice *>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,SKCDataSlice *>>>::__find_equal<std::string>(uint64_t a1, uint64_t *a2, const void **a3)
{
  v5 = a1 + 8;
  v4 = *(a1 + 8);
  if (v4)
  {
    do
    {
      while (1)
      {
        v8 = v4;
        if (!std::__map_value_compare<std::string,std::__value_type<std::string,SKCDataSlice *>,std::less<std::string>,true>::operator()[abi:ne200100](a1, a3, (v4 + 32)))
        {
          break;
        }

        v4 = *v8;
        v5 = v8;
        if (!*v8)
        {
          goto LABEL_9;
        }
      }

      if (!std::__map_value_compare<std::string,std::__value_type<std::string,SKCDataSlice *>,std::less<std::string>,true>::operator()[abi:ne200100](a1, (v8 + 32), a3))
      {
        break;
      }

      v5 = v8 + 8;
      v4 = *(v8 + 8);
    }

    while (v4);
  }

  else
  {
    v8 = a1 + 8;
  }

LABEL_9:
  *a2 = v8;
  return v5;
}

uint64_t std::__tree<std::__value_type<std::string,SKCDataSlice *>,std::__map_value_compare<std::string,std::__value_type<std::string,SKCDataSlice *>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,SKCDataSlice *>>>::__erase_unique<std::string>(uint64_t **a1, const void **a2)
{
  v3 = std::__tree<std::__value_type<std::string,SKCDataSlice *>,std::__map_value_compare<std::string,std::__value_type<std::string,SKCDataSlice *>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,SKCDataSlice *>>>::find<std::string>(a1, a2);
  if (a1 + 1 == v3)
  {
    return 0;
  }

  std::__tree<std::__value_type<std::string,SKCDataSlice *>,std::__map_value_compare<std::string,std::__value_type<std::string,SKCDataSlice *>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,SKCDataSlice *>>>::erase(a1, v3);
  return 1;
}

uint64_t *std::__tree<std::__value_type<std::string,SKCDataSlice *>,std::__map_value_compare<std::string,std::__value_type<std::string,SKCDataSlice *>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,SKCDataSlice *>>>::erase(uint64_t **a1, uint64_t a2)
{
  v3 = std::__tree<SKCParticleSystem *>::__remove_node_pointer(a1, a2);
  if (*(a2 + 55) < 0)
  {
    operator delete(*(a2 + 32));
  }

  operator delete(a2);
  return v3;
}

uint64_t SKGetPrefersLowPowerGPUs()
{
  if (_SK_PrefersLowPowerGPUs)
  {
    return 1;
  }

  else
  {
    return sk_get_info_plist_flag_is_set(&cfstr_Preferslowpowe.isa);
  }
}

uint64_t SKGetPrefersOpenGL()
{
  if (SKGetLinkedOnOrAfter(917504))
  {
    return 0;
  }

  if (_SK_PrefersOpenGL)
  {
    return 1;
  }

  return sk_get_info_plist_flag_is_set(&cfstr_Prefersopengl.isa);
}

uint64_t SKGetUserProcessorUtilizationPercent()
{
  v0 = SKGetProcessorPerformanceStatistics();
  v1 = v0;
  if (v0)
  {
    v2 = [v0 objectForKey:@"User CPU %"];
    v3 = [v2 intValue];
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

uint64_t SKGetSystemProcessorUtilizationPercent()
{
  v0 = SKGetProcessorPerformanceStatistics();
  v1 = v0;
  if (v0)
  {
    v2 = [v0 objectForKey:@"System CPU %"];
    v3 = [v2 intValue];
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

uint64_t SKGetIdleProcessorUtilizationPercent()
{
  v0 = SKGetProcessorPerformanceStatistics();
  v1 = v0;
  if (v0)
  {
    v2 = [v0 objectForKey:@"Idle CPU %"];
    v3 = [v2 intValue];
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

uint64_t SKGetGraphicsDeviceUtilizationPercent()
{
  v0 = SKGetGraphicsPerformanceStatistics();
  v1 = v0;
  if (v0)
  {
    v2 = [v0 objectForKey:@"Device Utilization %"];
    v3 = [v2 intValue];
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

uint64_t SKGetGraphicsRendererUtilizationPercent()
{
  v0 = SKGetGraphicsPerformanceStatistics();
  v1 = v0;
  if (v0)
  {
    v2 = [v0 objectForKey:@"Renderer Utilization %"];
    v3 = [v2 intValue];
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

uint64_t SKGetGraphicsTilerUtilizationPercent()
{
  v0 = SKGetGraphicsPerformanceStatistics();
  v1 = v0;
  if (v0)
  {
    v2 = [v0 objectForKey:@"Tiler Utilization %"];
    v3 = [v2 intValue];
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

double SKGetCoreAnimationFPS()
{
  FrameCounter = CARenderServerGetFrameCounter();
  v1 = CACurrentMediaTime();
  if (v1 - *&SKGetCoreAnimationFPS::oldtime <= 0.0166666667)
  {
    v4 = SKGetCoreAnimationFPS::fps;
  }

  else
  {
    if (SKGetCoreAnimationFPS::oldframe)
    {
      v2 = v1 - *&SKGetCoreAnimationFPS::oldtime;
      v3 = (FrameCounter - SKGetCoreAnimationFPS::oldframe) / v2;
      if (v3 > 60.0)
      {
        v3 = 60.0;
      }
    }

    else
    {
      v3 = 0.0;
    }

    *&v4 = ceilf(v3 * 10.0) / 10.0;
    SKGetCoreAnimationFPS::fps = v4;
    SKGetCoreAnimationFPS::oldframe = FrameCounter;
    SKGetCoreAnimationFPS::oldtime = *&v1;
  }

  return *&v4;
}

id SKGetResourceBundle()
{
  if (_SKResourceBundle)
  {
    v0 = _SKResourceBundle;
  }

  else
  {
    v0 = [MEMORY[0x277CCA8D8] mainBundle];
  }

  return v0;
}

void SKGLPrintFramebufferStatus()
{
  v0 = glCheckFramebufferStatus(0x8D40u) - 36053;
  if (v0 > 8)
  {
    NSLog(&cfstr_GlFramebufferS.isa);
  }

  else
  {
    NSLog(&off_278310338[v0]->isa);
  }
}

void SKGLPrintInteger(NSString *a1, GLenum a2)
{
  v3 = a1;
  params = 0;
  glGetIntegerv(a2, &params);
  NSLog(&cfstr_D.isa, v3, params);
}

void SKGLPrintFloat(NSString *a1, GLenum a2)
{
  v3 = a1;
  params = 0.0;
  glGetFloatv(a2, &params);
  NSLog(&cfstr_F.isa, v3, params);
}

void SKGLPrintBoolean(NSString *a1, GLenum a2)
{
  v3 = a1;
  params = 0;
  glGetBooleanv(a2, &params);
  NSLog(&cfstr_D.isa, v3, params);
}

void SKGLPrintVertexAttribInteger(NSString *a1, GLuint a2, GLenum a3)
{
  v8 = *MEMORY[0x277D85DE8];
  v5 = a1;
  glGetVertexAttribiv(a2, a3, params);
  if (a3 == 34341)
  {
    if ((params[0] - 5120) > 0xC)
    {
      v6 = @"GL_TYPE_UNKNOWN";
    }

    else
    {
      v6 = off_278310380[params[0] - 5120];
    }

    NSLog(&stru_282E1E5F8.isa, v5, v6);
  }

  else if (a3 != 34342)
  {
    NSLog(&cfstr_D.isa, v5, params[0]);
  }
}

void SKGLPrintVertexAttrib(uint64_t a1)
{
  v1 = a1;
  NSLog(&cfstr_Skglprintverte.isa, a1);
  SKGLPrintVertexAttribInteger(&cfstr_GlVertexAttrib.isa, v1, 0x889Fu);
  SKGLPrintVertexAttribInteger(&cfstr_GlVertexAttrib_0.isa, v1, 0x8622u);
  SKGLPrintVertexAttribInteger(&cfstr_GlVertexAttrib_1.isa, v1, 0x8623u);
  SKGLPrintVertexAttribInteger(&cfstr_GlVertexAttrib_2.isa, v1, 0x8624u);
  SKGLPrintVertexAttribInteger(&cfstr_GlVertexAttrib_3.isa, v1, 0x8625u);
  SKGLPrintVertexAttribInteger(&cfstr_GlVertexAttrib_4.isa, v1, 0x886Au);
  NSLog(&stru_282E1E6F8.isa);
}

void SKGLPrintState()
{
  NSLog(&cfstr_Skglprintstate.isa);
  SKGLPrintInteger(&cfstr_GlCurrentProgr.isa, 0x8B8Du);
  SKGLPrintInteger(&cfstr_GlArrayBufferB.isa, 0x8894u);
  SKGLPrintInteger(&cfstr_GlElementArray.isa, 0x8895u);
  NSLog(&stru_282E1E6F8.isa);
}

void SKGLPrintError()
{
  Error = glGetError();
  if (Error > 1281)
  {
    if (Error == 1282 || Error == 1285 || Error == 1286)
    {
      NSLog(&cfstr_GlInvalidOpera.isa);
      return;
    }

    goto LABEL_11;
  }

  if (!Error)
  {
    NSLog(&cfstr_GlNoError.isa);
    return;
  }

  if (Error != 1280)
  {
    if (Error == 1281)
    {
      NSLog(&cfstr_GlInvalidValue.isa);
      return;
    }

LABEL_11:
    NSLog(&cfstr_GlErrorUnknown.isa);
    return;
  }

  NSLog(&cfstr_GlInvalidEnum.isa);
}

id SKGetVersionString()
{
  v0 = [MEMORY[0x277CCACA8] stringWithFormat:@"%d.%d", 52, 0];
  v1 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@.%d", v0, 1];

  return v1;
}

uint64_t SKCParticleUpdater::SKCParticleUpdater(uint64_t a1, uint64_t a2)
{
  *a1 = MEMORY[0x21CF0AB10](a2);
  *(a1 + 8) = 1;
  return a1;
}

void SKCParticleUpdater::setUpdateBlock(void **a1, uint64_t a2)
{
  v3 = MEMORY[0x21CF0AB10](a2);
  v4 = *a1;
  *a1 = v3;
}

id SKCParticleUpdater::getUpdateBlock(SKCParticleUpdater *this)
{
  v1 = MEMORY[0x21CF0AB10](*this);

  return v1;
}

void SKCSceneNode::SKCSceneNode(SKCSceneNode *this)
{
  SKCEffectNode::SKCEffectNode(this);
  *v1 = &unk_282E17600;
  *(v1 + 728) = 0;
  *(v1 + 736) = 0;
  *(v1 + 704) = 0;
  *(v1 + 352) = 0;
  *(v1 + 360) = 0;
  operator new();
}

void SKCSceneNode::~SKCSceneNode(SKCSceneNode *this)
{
  *this = &unk_282E17600;
  v2 = *(this + 93);
  if (v2)
  {
    (*(*v2 + 88))(v2);
  }

  v3 = *(this + 94);
  if (v3)
  {
    (*(*v3 + 88))(v3);
  }

  v4 = *(this + 95);
  if (v4)
  {
    (*(*v4 + 88))(v4);
  }

  SKCEffectNode::~SKCEffectNode(this);
}

{
  SKCSceneNode::~SKCSceneNode(this);

  JUMPOUT(0x21CF0A160);
}

double SKCSceneNode::getBoundingBox(float32x4_t *this)
{
  v1.i64[0] = 0x3F0000003F000000;
  v1.i64[1] = 0x3F0000003F000000;
  *&result = vmulq_f32(vsubq_f32(v1, this[22]), this[21]).u64[0];
  return result;
}

double SKCSceneNode::getInverseTransformMatrix(SKCSceneNode *this)
{
  (*(*this + 104))(this);

  *&result = __invert_f4(v1);
  return result;
}

void SKCSceneNode::matrixForDestination(SKCSceneNode *this, __n128 a2, float a3)
{
  *v4.i64 = (*(*this + 120))(this);
  v85.columns[0] = v4;
  v85.columns[1] = v5;
  v85.columns[2] = v6;
  v85.columns[3] = v7;
  AABB = SKCBoundingBoxGetAABB(&v85);
  v9 = *(this + 1);
  if (v9)
  {
    v10 = v9;
    [v10 visibleRect];
    v12 = v11;
    [v10 visibleRect];
    v14 = v13;
    [v10 visibleRect];
    v16 = v15;
    [v10 visibleRect];
    v18 = v17;
    v19 = [v10 camera];
    v20 = [v19 _backingNode];
    v21.f32[0] = v12;
    v22 = v14;
    *&v23 = v16;
    *&v24 = v18;
    v21.f32[1] = v22;
    v21.i64[1] = __PAIR64__(v24, v23);
    v72 = v21;

    AABB = v72;
  }

  else
  {
    v20 = 0;
  }

  v25 = a2.n128_f32[0] / a3;
  v26 = AABB.i64[1];
  v27 = AABB.f32[1];
  *&v28 = AABB.i64[0];
  *(&v28 + 1) = 3304718336;
  v29 = vextq_s8(AABB, AABB, 8uLL).u64[0];
  *&v30 = vadd_f32(*AABB.f32, v29);
  *(&v30 + 1) = 1157234688;
  v31 = *(this + 91);
  v32 = AABB.f32[2] / AABB.f32[3];
  v71 = v29;
  v75 = v30;
  v77 = v28;
  if (v31 == 1)
  {
    v74 = AABB.f32[0];
    SKCNode::setHidden(*(this + 93), 1);
    SKCNode::setHidden(*(this + 94), 1);
    if (v25 >= v32)
    {
      v41 = v27 + (*(&v26 + 1) * 0.5);
      v40 = v75;
      v39 = v77;
      *(&v39 + 1) = v41 - ((*&v26 / v25) * 0.5);
      *(&v40 + 1) = v41 + ((*&v26 / v25) * 0.5);
    }

    else
    {
      v40 = v75;
      v38 = v74 + (*&v26 * 0.5);
      v39 = v77;
      *&v39 = v38 - ((v25 * *(&v26 + 1)) * 0.5);
      *&v40 = v38 + ((v25 * *(&v26 + 1)) * 0.5);
    }
  }

  else
  {
    if (v31 == 2 && (COERCE_UNSIGNED_INT(v25 - v32) & 0x60000000) != 0)
    {
      v73 = AABB.f32[0];
      SKCNode::setHidden(*(this + 93), 0);
      SKCNode::setHidden(*(this + 94), 0);
      SKCNode::setTranslation(*(this + 94), a2, a3);
      v33 = *(this + 93);
      if (v25 <= v32)
      {
        v42 = v27 + (*(&v26 + 1) * 0.5);
        v43 = v77;
        *(&v43 + 1) = v42 + ((*&v26 / v25) * -0.5);
        v77 = v43;
        v44 = v75;
        *(&v44 + 1) = v42 + ((*&v26 / v25) * 0.5);
        v75 = v44;
        v82 = __PAIR64__((((*(&v26 + 1) * -0.5) + ((*&v26 / v25) * 0.5)) / (*(&v44 + 1) - (v42 + ((*&v26 / v25) * -0.5)))) * a3, a2.n128_u32[0]);
        v85.columns[0] = v82;
      }

      else
      {
        v34 = v73 + (*&v26 * 0.5);
        v35 = v77;
        *&v35 = v34 + ((v25 * *(&v26 + 1)) * -0.5);
        v77 = v35;
        v36 = v75;
        *&v36 = v34 + ((v25 * *(&v26 + 1)) * 0.5);
        v75 = v36;
        *&v37 = (((*&v26 * -0.5) + ((v25 * *(&v26 + 1)) * 0.5)) / (*&v36 - (v34 + ((v25 * *(&v26 + 1)) * -0.5)))) * a2.n128_f32[0];
        *(&v37 + 1) = a3;
        v82 = v37;
        v85.columns[0] = v37;
      }

      SKCNode::setSize(v33, &v85);
      v45 = *(this + 94);
      v85.columns[0] = v82;
      SKCNode::setSize(v45, &v85);
    }

    else
    {
      SKCNode::setHidden(*(this + 93), 1);
      SKCNode::setHidden(*(this + 94), 1);
    }

    v40 = v75;
    v39 = v77;
  }

  v46 = 0;
  if (*(&v40 + 2) >= *(&v39 + 2))
  {
    v47 = *(&v40 + 2);
  }

  else
  {
    v47 = *(&v39 + 2);
  }

  if (*(&v40 + 2) >= *(&v39 + 2))
  {
    v48 = *(&v39 + 2);
  }

  else
  {
    v48 = *(&v40 + 2);
  }

  v49 = MEMORY[0x277D860B8];
  v50 = *MEMORY[0x277D860B8];
  v51 = *(MEMORY[0x277D860B8] + 16);
  v58 = *(MEMORY[0x277D860B8] + 32);
  v59 = *(MEMORY[0x277D860B8] + 48);
  v52 = v47 - v48;
  v53 = v58;
  v53.f32[2] = -2.0 / v52;
  v54 = vsub_f32(*&v40, *&v39);
  v55 = *MEMORY[0x277D860B8];
  v55.f32[0] = 2.0 / v54.f32[0];
  v56 = v51;
  v56.f32[1] = 2.0 / v54.f32[1];
  *v57.f32 = vdiv_f32(vneg_f32(vadd_f32(*&v40, *&v39)), v54);
  v57.i32[3] = vextq_s8(*&v59, *&v59, 8uLL).i32[1];
  v57.f32[2] = -(*(&v40 + 2) + *(&v39 + 2)) / v52;
  v58.i32[2] = 0.5;
  v59.i32[2] = 0.5;
  v84.columns[0] = v55;
  v84.columns[1] = v56;
  v84.columns[2] = v53;
  v84.columns[3] = v57;
  do
  {
    v85.columns[v46] = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v50, COERCE_FLOAT(*&v84.columns[v46])), v51, *v84.columns[v46].f32, 1), v58, v84.columns[v46], 2), v59, v84.columns[v46], 3);
    ++v46;
  }

  while (v46 != 4);
  if (v20)
  {
    v76 = v85.columns[3];
    v78 = v85.columns[2];
    v80 = v85.columns[1];
    v83 = v85.columns[0];
    ConversionMatrixFromWorld = SKCNode::getConversionMatrixFromWorld(v20);
    v61 = 0;
    *v66.f32 = vmul_f32(v71, vsub_f32(0x3F0000003F000000, *(this + 352)));
    v62 = *v49;
    v63 = *(v49 + 1);
    v64 = *(v49 + 2);
    v65 = *(v49 + 3);
    v65.i32[2] = 0;
    v66.i64[1] = vextq_s8(v65, v65, 8uLL).u64[0];
    v84.columns[0] = ConversionMatrixFromWorld;
    v84.columns[1] = v67;
    v84.columns[2] = v68;
    v84.columns[3] = v69;
    do
    {
      v85.columns[v61] = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v62, COERCE_FLOAT(*&v84.columns[v61])), v63, *v84.columns[v61].f32, 1), v64, v84.columns[v61], 2), v66, v84.columns[v61], 3);
      ++v61;
    }

    while (v61 != 4);
    v70 = 0;
    v84 = v85;
    do
    {
      v85.columns[v70] = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v83, COERCE_FLOAT(*&v84.columns[v70])), v80, *v84.columns[v70].f32, 1), v78, v84.columns[v70], 2), v76, v84.columns[v70], 3);
      ++v70;
    }

    while (v70 != 4);
  }
}

void sub_21C47BC40(_Unwind_Exception *exception_object)
{
  v3 = *(v1 + 8);
  if (v3)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v3);
  }

  _Unwind_Resume(exception_object);
}

void SKCSceneNode::notifyDirtyState(SKCSceneNode *this)
{
  if (*(this + 736) == 1)
  {
    *(this + 736) = 0;
    v2 = [MEMORY[0x277CCAB98] defaultCenter];
    [v2 postNotificationName:@"kC3DSceneDidUpdateNotification" object:*(this + 1)];
  }
}

void SKCSceneNode::setBackgroundFromPixelBuffer(SKCSceneNode *this, CVPixelBufferRef texture)
{
  if (texture)
  {
    v3 = *(this + 95);
    if (!v3)
    {
      operator new();
    }

    SKCVideoNode::setNextVideoFrame(v3, texture);
    SKCNode::setDirty(this);
    SKCNode::recomputeFlags(this, 1);
  }
}

void sub_21C47BFAC(_Unwind_Exception *a1)
{
  v4 = v3;

  _Unwind_Resume(a1);
}

void sub_21C47C384(_Unwind_Exception *a1)
{
  v4 = v3;

  _Unwind_Resume(a1);
}

void sub_21C47C48C(_Unwind_Exception *a1)
{
  MEMORY[0x21CF0A160](v2, 0x1081C40E99573A4);

  _Unwind_Resume(a1);
}

void sub_21C47C5C0(_Unwind_Exception *a1)
{
  MEMORY[0x21CF0A160](v3, 0x1081C40E99573A4);

  _Unwind_Resume(a1);
}

void SKCHide::SKCHide(SKCHide *this, SKCAction *a2)
{
  SKCAction::SKCAction(this);
  *v3 = &unk_282E17700;
  *(v3 + 112) = 1;
  *(v3 + 24) = a2->var4;
  *(v3 + 40) = *&a2->var6;
  *(v3 + 72) = *&a2->var11;
  *(v3 + 56) = *&a2->var8;
  *(v3 + 88) = a2->var14;
  *(v3 + 32) = 1;
}

void SKCHide::~SKCHide(SKCHide *this)
{
  SKCAction::~SKCAction(this);

  JUMPOUT(0x21CF0A160);
}

SKCHide *SKCHide::cpp_updateWithTargetForTime(SKCHide *this, SKCNode *a2, double a3)
{
  if (!this->var11)
  {
    v6 = this;
    SKCNode::setHidden(a2, this->var19);
    v7 = *(v6->var0 + 13);
    v8.n128_f64[0] = a3;

    return v7(v6, a2, v8);
  }

  return this;
}

void sub_21C47CD90(_Unwind_Exception *a1)
{

  _Unwind_Resume(a1);
}

void sub_21C47D8D0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, objc_super a9)
{
  a9.super_class = SKSoundBuffer;
  [(_Unwind_Exception *)&a9 dealloc];
  _Unwind_Resume(a1);
}

void MaxRectsBinPack::MaxRectsBinPack(MaxRectsBinPack *this)
{
  *(this + 6) = 0;
  *(this + 1) = 0u;
  *(this + 2) = 0u;
  *this = 0u;
}

void MaxRectsBinPack::MaxRectsBinPack(MaxRectsBinPack *this, int a2, int a3)
{
  *(this + 8) = 0u;
  *(this + 40) = 0u;
  *(this + 24) = 0u;
  *this = a2;
  *(this + 1) = a3;
  v3 = 0uLL;
  v4 = a2;
  v5 = a3;
  *(this + 2) = 0;
  *(this + 5) = 0;
  std::vector<CGRect>::push_back[abi:ne200100](this + 32, &v3);
}

void sub_21C47D98C(_Unwind_Exception *exception_object)
{
  v4 = v1[4];
  if (v4)
  {
    v1[5] = v4;
    operator delete(v4);
  }

  v5 = *v2;
  if (*v2)
  {
    v1[2] = v5;
    operator delete(v5);
  }

  _Unwind_Resume(exception_object);
}

void MaxRectsBinPack::Init(MaxRectsBinPack *this, int a2, int a3)
{
  *this = a2;
  *(this + 1) = a3;
  v5 = 0uLL;
  v6 = a2;
  v7 = a3;
  v4 = *(this + 4);
  v3 = this + 32;
  *(v3 - 2) = *(v3 - 3);
  *(v3 + 1) = v4;
  std::vector<CGRect>::push_back[abi:ne200100](v3, &v5);
}

void std::vector<CGRect>::push_back[abi:ne200100](uint64_t a1, _OWORD *a2)
{
  v4 = *(a1 + 8);
  v5 = *(a1 + 16);
  if (v4 >= v5)
  {
    v8 = (v4 - *a1) >> 5;
    v9 = v8 + 1;
    if ((v8 + 1) >> 59)
    {
      std::vector<jet_render_op>::__throw_length_error[abi:ne200100]();
    }

    v10 = v5 - *a1;
    if (v10 >> 4 > v9)
    {
      v9 = v10 >> 4;
    }

    if (v10 >= 0x7FFFFFFFFFFFFFE0)
    {
      v11 = 0x7FFFFFFFFFFFFFFLL;
    }

    else
    {
      v11 = v9;
    }

    if (v11)
    {
      std::__allocate_at_least[abi:ne200100]<std::allocator<CGRect>>(a1, v11);
    }

    v12 = (32 * v8);
    v13 = a2[1];
    *v12 = *a2;
    v12[1] = v13;
    v7 = 32 * v8 + 32;
    v14 = *(a1 + 8) - *a1;
    v15 = v12 - v14;
    memcpy(v12 - v14, *a1, v14);
    v16 = *a1;
    *a1 = v15;
    *(a1 + 8) = v7;
    *(a1 + 16) = 0;
    if (v16)
    {
      operator delete(v16);
    }
  }

  else
  {
    v6 = a2[1];
    *v4 = *a2;
    v4[1] = v6;
    v7 = (v4 + 2);
  }

  *(a1 + 8) = v7;
}

double MaxRectsBinPack::Insert(MaxRectsBinPack *this, int a2, uint64_t a3, int a4)
{
  *v16 = 0;
  if (a4 <= 1)
  {
    if (a4)
    {
      if (a4 != 1)
      {
        goto LABEL_13;
      }

      MaxRectsBinPack::FindPositionForNewNodeBestLongSideFit(this, a2, a3, v16, &v16[1]);
    }

    else
    {
      MaxRectsBinPack::FindPositionForNewNodeBestShortSideFit(this, a2, a3, &v16[1], v16);
    }

LABEL_12:
    v17.origin.x = result;
    v17.origin.y = v6;
    v17.size.width = v7;
    v17.size.height = v8;
    if (v8 == 0.0)
    {
      return result;
    }

    goto LABEL_13;
  }

  switch(a4)
  {
    case 2:
      MaxRectsBinPack::FindPositionForNewNodeBestAreaFit(this, a2, a3, &v16[1], v16);
      goto LABEL_12;
    case 3:
      MaxRectsBinPack::FindPositionForNewNodeBottomLeft(this, a2, a3, &v16[1], v16);
      goto LABEL_12;
    case 4:
      result = MaxRectsBinPack::FindPositionForNewNodeContactPoint(this, a2, a3, &v16[1]);
      goto LABEL_12;
  }

LABEL_13:
  v9 = *(this + 5) - *(this + 4);
  if (v9)
  {
    v10 = 0;
    v11 = v9 >> 5;
    do
    {
      if (MaxRectsBinPack::SplitFreeNode(this, *(*(this + 4) + 32 * v10), &v17))
      {
        v12 = *(this + 4);
        v13 = *(this + 5);
        v14 = v12 + 32 * v10;
        v15 = v13 - (v14 + 32);
        if (v13 != v14 + 32)
        {
          memmove((v12 + 32 * v10), (v14 + 32), v13 - (v14 + 32));
        }

        *(this + 5) = v14 + v15;
        --v10;
        --v11;
      }

      ++v10;
    }

    while (v10 < v11);
  }

  MaxRectsBinPack::PruneFreeList(this);
  std::vector<CGRect>::push_back[abi:ne200100](this + 8, &v17);
  return v17.origin.x;
}

uint64_t MaxRectsBinPack::FindPositionForNewNodeBestShortSideFit(uint64_t this, int a2, int a3, int *a4, int *a5)
{
  *a4 = 0x7FFFFFFF;
  v5 = *(this + 32);
  v6 = *(this + 40) - v5;
  if (v6)
  {
    v7 = a2;
    v8 = v6 >> 5;
    v9 = a3;
    if (v8 <= 1)
    {
      v8 = 1;
    }

    v10 = (v5 + 24);
    do
    {
      v11 = *(v10 - 1);
      if (v11 >= v7 && *v10 >= v9)
      {
        v13 = v11 - a2;
        if (v13 < 0)
        {
          v13 = a2 - v11;
        }

        v12 = *v10;
        if (*v10 - a3 >= 0)
        {
          v14 = v12 - a3;
        }

        else
        {
          v14 = a3 - v12;
        }

        if (v14 >= v13)
        {
          v15 = v13;
        }

        else
        {
          v15 = v14;
        }

        if (v13 <= v14)
        {
          v13 = v14;
        }

        if (v15 < *a4 || (v15 == *a4 ? (v16 = v13 < *a5) : (v16 = 0), v16))
        {
          *a4 = v15;
          *a5 = v13;
        }
      }

      if (v11 >= v9 && *v10 >= v7)
      {
        v18 = v11 - a3;
        if (v18 < 0)
        {
          v18 = a3 - v11;
        }

        v17 = *v10;
        if (*v10 - a2 >= 0)
        {
          v19 = v17 - a2;
        }

        else
        {
          v19 = a2 - v17;
        }

        if (v19 >= v18)
        {
          v20 = v18;
        }

        else
        {
          v20 = v19;
        }

        if (v18 <= v19)
        {
          v18 = v19;
        }

        if (v20 < *a4 || (v20 == *a4 ? (v21 = v18 < *a5) : (v21 = 0), v21))
        {
          *a4 = v20;
          *a5 = v18;
        }
      }

      v10 += 4;
      --v8;
    }

    while (v8);
  }

  return this;
}

uint64_t MaxRectsBinPack::FindPositionForNewNodeBottomLeft(uint64_t this, int a2, int a3, int *a4, int *a5)
{
  *a4 = 0x7FFFFFFF;
  v5 = *(this + 32);
  v6 = *(this + 40) - v5;
  if (v6)
  {
    v7 = v6 >> 5;
    v8 = a2;
    v9 = a3;
    if (v7 <= 1)
    {
      v7 = 1;
    }

    do
    {
      v10 = v5[2];
      if (v10 >= v8 && v5[3] >= v9)
      {
        v11 = (v5[1] + v9);
        if (*a4 > v11)
        {
          v12 = *v5;
LABEL_8:
          *a4 = v11;
          *a5 = v12;
          goto LABEL_11;
        }

        if (*a4 == v11)
        {
          v12 = *v5;
          if (*v5 < *a5)
          {
            goto LABEL_8;
          }
        }
      }

LABEL_11:
      if (v10 < v9 || v5[3] < v8)
      {
        goto LABEL_18;
      }

      v13 = (v5[1] + v8);
      if (*a4 <= v13)
      {
        if (*a4 != v13)
        {
          goto LABEL_18;
        }

        v14 = *v5;
        if (*v5 >= *a5)
        {
          goto LABEL_18;
        }
      }

      else
      {
        v14 = *v5;
      }

      *a4 = v13;
      *a5 = v14;
LABEL_18:
      v5 += 4;
      --v7;
    }

    while (v7);
  }

  return this;
}

double MaxRectsBinPack::FindPositionForNewNodeContactPoint(MaxRectsBinPack *this, int a2, uint64_t a3, int *a4)
{
  v22 = *MEMORY[0x277CBF3A0];
  *a4 = -1;
  v4 = *(this + 4);
  v5 = *(this + 5) - v4;
  if (v5)
  {
    v10 = v5 >> 5;
    v11 = a2;
    v12 = a3;
    if (v10 <= 1)
    {
      v13 = 1;
    }

    else
    {
      v13 = v10;
    }

    v14 = (v4 + 24);
    v15 = -1;
    do
    {
      v16 = *(v14 - 1);
      if (v16 >= v11 && *v14 >= v12)
      {
        v17 = *(v14 - 3);
        v18 = MaxRectsBinPack::ContactPointScoreNode(this, v17, *(v14 - 2), a2, a3);
        if (v18 > v15)
        {
          v15 = v18;
          *a4 = v18;
          v22 = v17;
        }
      }

      if (v16 >= v12 && *v14 >= v11)
      {
        v19 = *(v14 - 3);
        v20 = MaxRectsBinPack::ContactPointScoreNode(this, v19, *(v14 - 2), a2, a3);
        if (v20 > v15)
        {
          v15 = v20;
          *a4 = v20;
          v22 = v19;
        }
      }

      v14 += 4;
      --v13;
    }

    while (v13);
  }

  return v22;
}

uint64_t MaxRectsBinPack::FindPositionForNewNodeBestLongSideFit(uint64_t this, int a2, int a3, int *a4, int *a5)
{
  *a5 = 0x7FFFFFFF;
  v5 = *(this + 32);
  v6 = *(this + 40) - v5;
  if (v6)
  {
    v7 = v6 >> 5;
    v8 = a2;
    v9 = a3;
    if (v7 <= 1)
    {
      v7 = 1;
    }

    v10 = (v5 + 24);
    v11 = 0x7FFFFFFF;
    do
    {
      v12 = *(v10 - 1);
      if (v12 >= v8 && *v10 >= v9)
      {
        v14 = v12 - a2;
        if (v14 < 0)
        {
          v14 = a2 - v12;
        }

        v13 = *v10;
        if (*v10 - a3 >= 0)
        {
          v15 = v13 - a3;
        }

        else
        {
          v15 = a3 - v13;
        }

        if (v15 >= v14)
        {
          v16 = v14;
        }

        else
        {
          v16 = v15;
        }

        if (v14 <= v15)
        {
          v14 = v15;
        }

        if (v14 < v11 || (v14 == v11 ? (v17 = v16 < *a4) : (v17 = 0), v17))
        {
          *a4 = v16;
          v11 = v14;
          *a5 = v14;
        }
      }

      if (v12 >= v9 && *v10 >= v8)
      {
        v19 = v12 - a3;
        if (v19 < 0)
        {
          v19 = a3 - v12;
        }

        v18 = *v10;
        if (*v10 - a2 >= 0)
        {
          v20 = v18 - a2;
        }

        else
        {
          v20 = a2 - v18;
        }

        if (v20 >= v19)
        {
          v21 = v19;
        }

        else
        {
          v21 = v20;
        }

        if (v19 <= v20)
        {
          v19 = v20;
        }

        if (v19 < v11 || (v19 == v11 ? (v22 = v21 < *a4) : (v22 = 0), v22))
        {
          *a4 = v21;
          v11 = v19;
          *a5 = v19;
        }
      }

      v10 += 4;
      --v7;
    }

    while (v7);
  }

  return this;
}

uint64_t MaxRectsBinPack::FindPositionForNewNodeBestAreaFit(uint64_t this, int a2, int a3, int *a4, int *a5)
{
  *a4 = 0x7FFFFFFF;
  v5 = *(this + 32);
  v6 = *(this + 40) - v5;
  if (v6)
  {
    v7 = v6 >> 5;
    v8 = a2;
    v9 = a3;
    if (v7 <= 1)
    {
      v7 = 1;
    }

    v10 = 0x7FFFFFFF;
    do
    {
      v12 = *(v5 + 16);
      v11 = *(v5 + 24);
      v13 = v12 * v11 - (a3 * a2);
      v14 = v13;
      if (v12 >= v8 && v11 >= v9)
      {
        v16 = v12 - a2;
        if (v16 < 0)
        {
          v16 = a2 - v12;
        }

        v17 = v11 - a3;
        if (v17 < 0)
        {
          v17 = a3 - v11;
        }

        if (v17 < v16)
        {
          v16 = v17;
        }

        if (v10 > v14 || (v10 == v14 ? (v18 = v16 < *a5) : (v18 = 0), v18))
        {
          *a5 = v16;
          v10 = v13;
          *a4 = v14;
        }
      }

      if (v12 >= v9 && v11 >= v8)
      {
        v20 = v12 - a3;
        if (v20 < 0)
        {
          v20 = a3 - v12;
        }

        v21 = v11 - a2;
        if (v21 < 0)
        {
          v21 = a2 - v11;
        }

        if (v21 < v20)
        {
          v20 = v21;
        }

        if (v10 > v14 || (v10 == v14 ? (v22 = v20 < *a5) : (v22 = 0), v22))
        {
          *a5 = v20;
          v10 = v13;
          *a4 = v14;
        }
      }

      v5 += 32;
      --v7;
    }

    while (v7);
  }

  return this;
}

uint64_t MaxRectsBinPack::SplitFreeNode(MaxRectsBinPack *this, CGRect a2, const CGRect *a3)
{
  width = a2.size.width;
  x = a3->origin.x;
  v5 = a2.origin.x + width;
  if (a3->origin.x >= a2.origin.x + width)
  {
    return 0;
  }

  height = a2.size.height;
  v8 = a2.origin.x;
  v9 = x + a3->size.width;
  if (v9 <= a2.origin.x)
  {
    return 0;
  }

  y = a2.origin.y;
  v11 = a3->origin.y;
  v12 = a2.origin.y + height;
  if (v11 >= a2.origin.y + height)
  {
    return 0;
  }

  v13 = v11 + a3->size.height;
  if (v13 <= y)
  {
    return 0;
  }

  if (x < v5 && v9 > v8)
  {
    if (v11 > y && v11 < v12)
    {
      *&v20 = v8;
      *(&v20 + 1) = y;
      v21 = width;
      v22 = v11 - y;
      std::vector<CGRect>::push_back[abi:ne200100](this + 32, &v20);
      v11 = a3->origin.y;
      v13 = v11 + a3->size.height;
    }

    if (v13 < v12)
    {
      *&v20 = v8;
      *(&v20 + 1) = v13;
      v21 = width;
      v22 = v12 - v13;
      std::vector<CGRect>::push_back[abi:ne200100](this + 32, &v20);
      v11 = a3->origin.y;
    }
  }

  if (v11 < v12 && v11 + a3->size.height > y)
  {
    v17 = a3->origin.x;
    if (a3->origin.x > v8 && v17 < v5)
    {
      *&v20 = v8;
      *(&v20 + 1) = y;
      v21 = v17 - v8;
      v22 = height;
      std::vector<CGRect>::push_back[abi:ne200100](this + 32, &v20);
      v17 = a3->origin.x;
    }

    v18 = v17 + a3->size.width;
    if (v18 < v5)
    {
      *&v20 = v18;
      *(&v20 + 1) = y;
      v21 = v5 - v18;
      v22 = height;
      std::vector<CGRect>::push_back[abi:ne200100](this + 32, &v20);
    }
  }

  return 1;
}

const CGRect **MaxRectsBinPack::PruneFreeList(const CGRect **this)
{
  v1 = this[4];
  v2 = this[5];
  if (v2 != v1)
  {
    v3 = this;
    v4 = 0;
    do
    {
      if (v4 + 1 >= v2 - v1)
      {
LABEL_12:
        ++v4;
      }

      else
      {
        v5 = v4 + 1;
        v6 = v4;
        while (1)
        {
          v7 = &v1[v4];
          v8 = &v1[v5];
          this = MaxRectsBinPack::IsContainedIn(this, v7, v8);
          if (this)
          {
            break;
          }

          this = MaxRectsBinPack::IsContainedIn(this, &v1[v5], &v1[v4]);
          if (this)
          {
            v9 = v2 - &v8[1];
            if (v2 != &v8[1])
            {
              this = memmove(&v1[v5], &v8[1], v2 - &v8[1]);
              v1 = *(v3 + 32);
            }

            --v2;
            *(v3 + 40) = v8 + v9;
          }

          else
          {
            v6 = v5;
          }

          v5 = v6 + 1;
          if (v6 + 1 >= v2 - v1)
          {
            goto LABEL_12;
          }
        }

        v10 = v2 - &v7[1];
        if (v2 != &v7[1])
        {
          this = memmove(&v1[v4], &v7[1], v2 - &v7[1]);
          v1 = *(v3 + 32);
        }

        --v2;
        *(v3 + 40) = v7 + v10;
      }
    }

    while (v4 < v2 - v1);
  }

  return this;
}

double MaxRectsBinPack::TrimmedSize(MaxRectsBinPack *this)
{
  v2 = *this;
  v3 = *(this + 1);
  v4 = v3;
  if (v3 < 1)
  {
    v5 = *this;
  }

  else
  {
    v5 = *this;
    while (v5 < 1)
    {
LABEL_12:
      v4 = v4 + -1.0;
      v9 = v3-- <= 1;
      if (v9)
      {
        goto LABEL_16;
      }
    }

    v6 = *(this + 4);
    v7 = *(this + 5);
    if (v6 != v7)
    {
      v8 = 0;
      do
      {
        while (1)
        {
          v16.x = v8;
          v16.y = (v3 - 1);
          if (!CGRectContainsPoint(*v6, v16))
          {
            break;
          }

          ++v8;
          v5 = *this;
          if (v8 >= *this)
          {
            goto LABEL_12;
          }

          v6 = *(this + 4);
          v7 = *(this + 5);
          if (v6 == v7)
          {
            goto LABEL_16;
          }
        }

        ++v6;
      }

      while (v6 != v7);
      v5 = *this;
    }
  }

LABEL_16:
  v10 = v2;
  if (v5 >= 1)
  {
    v11 = *(this + 1);
    while (v11 < 1)
    {
LABEL_25:
      v10 = v10 + -1.0;
      v9 = v5-- <= 1;
      if (v9)
      {
        return v10;
      }
    }

    v12 = 0;
    while (1)
    {
      v13 = *(this + 4);
      v14 = *(this + 5);
      if (v13 == v14)
      {
        break;
      }

      while (1)
      {
        v17.x = (v5 - 1);
        v17.y = v12;
        if (CGRectContainsPoint(*v13, v17))
        {
          break;
        }

        if (++v13 == v14)
        {
          return v10;
        }
      }

      ++v12;
      v11 = *(this + 1);
      if (v12 >= v11)
      {
        goto LABEL_25;
      }
    }
  }

  return v10;
}

void MaxRectsBinPack::Insert(MaxRectsBinPack *a1, uint64_t *a2, void *a3, int a4)
{
  a3[1] = *a3;
  v6 = *a2;
  v7 = a2[1] - *a2;
  if (v7)
  {
    v28 = v4;
    v29 = v5;
    do
    {
      if (!v7)
      {
        break;
      }

      v11 = 0;
      v12 = v7 >> 4;
      v13 = v12 <= 1 ? 1 : v12;
      v14 = (v6 + 8);
      v15 = -1;
      v16 = 0x7FFFFFFF;
      v17 = 0x7FFFFFFF;
      do
      {
        *v26 = 0;
        MaxRectsBinPack::ScoreRect(a1, *(v14 - 1), *v14, a4, &v26[1], v26);
        if (v26[1] < v16 || (v26[1] == v16 ? (v22 = v26[0] < v17) : (v22 = 0), v22))
        {
          v27.origin.x = v18;
          v27.origin.y = v19;
          v17 = v26[0];
          v15 = v11;
          v16 = v26[1];
          v27.size.width = v20;
          v27.size.height = v21;
        }

        ++v11;
        v14 += 2;
      }

      while (v13 != v11);
      if (v15 == -1)
      {
        break;
      }

      MaxRectsBinPack::PlaceRect(a1, &v27);
      v6 = *a2;
      v23 = a2[1];
      v24 = *a2 + 16 * v15;
      v25 = v23 - (v24 + 16);
      if (v23 != v24 + 16)
      {
        memmove((*a2 + 16 * v15), (v24 + 16), v23 - (v24 + 16));
        v6 = *a2;
      }

      a2[1] = v24 + v25;
      v7 = v24 + v25 - v6;
    }

    while (v24 + v25 != v6);
  }
}

void MaxRectsBinPack::ScoreRect(MaxRectsBinPack *a1, int a2, uint64_t a3, int a4, int *a5, int *a6)
{
  *a5 = 0x7FFFFFFF;
  *a6 = 0x7FFFFFFF;
  if (a4 <= 1)
  {
    if (a4)
    {
      if (a4 != 1)
      {
        return;
      }

      MaxRectsBinPack::FindPositionForNewNodeBestLongSideFit(a1, a2, a3, a6, a5);
    }

    else
    {
      MaxRectsBinPack::FindPositionForNewNodeBestShortSideFit(a1, a2, a3, a5, a6);
    }
  }

  else
  {
    switch(a4)
    {
      case 2:
        MaxRectsBinPack::FindPositionForNewNodeBestAreaFit(a1, a2, a3, a5, a6);
        break;
      case 3:
        MaxRectsBinPack::FindPositionForNewNodeBottomLeft(a1, a2, a3, a5, a6);
        break;
      case 4:
        MaxRectsBinPack::FindPositionForNewNodeContactPoint(a1, a2, a3, a5);
        *a5 = -*a5;
        break;
      default:
        return;
    }
  }

  if (v8 == 0.0)
  {
    *a5 = 0x7FFFFFFF;
    *a6 = 0x7FFFFFFF;
  }
}

void MaxRectsBinPack::PlaceRect(MaxRectsBinPack *this, CGRect *a2)
{
  v4 = *(this + 5) - *(this + 4);
  if (v4)
  {
    v5 = 0;
    v6 = v4 >> 5;
    do
    {
      if (MaxRectsBinPack::SplitFreeNode(this, *(*(this + 4) + 32 * v5), a2))
      {
        v7 = *(this + 4);
        v8 = *(this + 5);
        v9 = v7 + 32 * v5;
        v10 = v8 - (v9 + 32);
        if (v8 != v9 + 32)
        {
          memmove((v7 + 32 * v5), (v9 + 32), v8 - (v9 + 32));
        }

        *(this + 5) = v9 + v10;
        --v5;
        --v6;
      }

      ++v5;
    }

    while (v5 < v6);
  }

  MaxRectsBinPack::PruneFreeList(this);

  std::vector<CGRect>::push_back[abi:ne200100](this + 8, a2);
}

float MaxRectsBinPack::Occupancy(MaxRectsBinPack *this)
{
  v2 = *(this + 1);
  v1 = *(this + 2);
  v3 = v1 - v2;
  if (v1 == v2)
  {
    v7 = 0.0;
  }

  else
  {
    v4 = 0;
    v5 = v3 >> 5;
    if (v5 <= 1)
    {
      v5 = 1;
    }

    v6 = (v2 + 24);
    do
    {
      v4 = (v4 + *(v6 - 1) * *v6);
      v6 += 4;
      --v5;
    }

    while (v5);
    v7 = v4;
  }

  return v7 / (*(this + 1) * *this);
}

uint64_t MaxRectsBinPack::ContactPointScoreNode(MaxRectsBinPack *this, int a2, int a3, int a4, uint64_t a5)
{
  if (!a2 || a4 + a2 == *this)
  {
    result = a5;
    if (!a3)
    {
      goto LABEL_7;
    }

LABEL_6:
    if (a5 + a3 != *(this + 1))
    {
      goto LABEL_8;
    }

    goto LABEL_7;
  }

  result = 0;
  if (a3)
  {
    goto LABEL_6;
  }

LABEL_7:
  result = (result + a4);
LABEL_8:
  v8 = *(this + 1);
  v7 = *(this + 2);
  v9 = v7 - v8;
  if (v7 != v8)
  {
    v10 = a4 + a2;
    v11 = a5 + a3;
    v12 = v9 >> 5;
    if (v12 <= 1)
    {
      v12 = 1;
    }

    v13 = (v8 + 16);
    do
    {
      v14 = *(v13 - 2);
      if (v14 == (a4 + a2) || v14 + *v13 == a2)
      {
        v15 = *(v13 - 1);
        v16 = v15;
        v17 = (v15 + v13[1]);
        if (v11 >= v17)
        {
          v18 = (v15 + v13[1]);
        }

        else
        {
          v18 = a5 + a3;
        }

        if (v16 <= a3)
        {
          v19 = a3;
        }

        else
        {
          v19 = v15;
        }

        v20 = v18 - v19;
        if (v11 < v16 || v17 < a3)
        {
          v22 = 0;
        }

        else
        {
          v22 = v20;
        }

        result = (v22 + result);
      }

      else
      {
        v15 = *(v13 - 1);
      }

      if (v15 == (a5 + a3) || v15 + v13[1] == a3)
      {
        v23 = v14;
        v24 = (v14 + *v13);
        if (v10 >= v24)
        {
          v25 = (v14 + *v13);
        }

        else
        {
          v25 = a4 + a2;
        }

        if (v23 <= a2)
        {
          v26 = a2;
        }

        else
        {
          v26 = v14;
        }

        v27 = v25 - v26;
        if (v10 < v23 || v24 < a2)
        {
          v29 = 0;
        }

        else
        {
          v29 = v27;
        }

        result = (v29 + result);
      }

      v13 += 4;
      --v12;
    }

    while (v12);
  }

  return result;
}

BOOL MaxRectsBinPack::IsContainedIn(MaxRectsBinPack *this, const CGRect *a2, const CGRect *a3)
{
  if (a2->origin.x >= a3->origin.x && (y = a2->origin.y, v4 = a3->origin.y, y >= v4) && a2->origin.x + a2->size.width <= a3->origin.x + a3->size.width)
  {
    return y + a2->size.height <= v4 + a3->size.height;
  }

  else
  {
    return 0;
  }
}

void sub_21C480300(_Unwind_Exception *a1)
{
  v4 = v3;

  _Unwind_Resume(a1);
}

uint64_t std::vector<TextureInfo>::push_back[abi:ne200100](uint64_t *a1, uint64_t a2)
{
  v3 = a1[1];
  if (v3 >= a1[2])
  {
    result = std::vector<TextureInfo>::__emplace_back_slow_path<TextureInfo const&>(a1, a2);
  }

  else
  {
    std::vector<TextureInfo>::__construct_one_at_end[abi:ne200100]<TextureInfo const&>(a1, a2);
    result = v3 + 32;
  }

  a1[1] = result;
  return result;
}

BOOL sortTextureFunc(CGImageRef *a1, CGImageRef *a2)
{
  Width = CGImageGetWidth(*a1);
  v5 = CGImageGetHeight(*a1) * Width;
  v6 = CGImageGetWidth(*a2);
  return v5 > CGImageGetHeight(*a2) * v6;
}

void MaxRectTexturePacker::~MaxRectTexturePacker(MaxRectTexturePacker *this)
{
  MaxRectTexturePacker::~MaxRectTexturePacker(this);

  JUMPOUT(0x21CF0A160);
}

{
  *this = &unk_282E177B8;
  v2 = (this + 16);
  std::vector<std::shared_ptr<PKCField>>::clear[abi:ne200100](this + 2);
  v3 = *(this + 8);
  if (v3)
  {
    *(this + 9) = v3;
    operator delete(v3);
  }

  v4 = (this + 40);
  std::vector<std::vector<MaxRectTexturePacker::PackedTexInfo>>::__destroy_vector::operator()[abi:ne200100](&v4);
  v4 = v2;
  std::vector<std::shared_ptr<PKCField>>::__destroy_vector::operator()[abi:ne200100](&v4);
}

void MaxRectTexturePacker::addTexture(MaxRectTexturePacker *this, const CGSize *a2)
{
  width = a2->width;
  height = a2->height;
  v6 = *(this + 9);
  v5 = *(this + 10);
  if (v6 >= v5)
  {
    v8 = *(this + 8);
    v9 = 0xAAAAAAAAAAAAAAABLL * ((v6 - v8) >> 3);
    v10 = v9 + 1;
    if (v9 + 1 > 0xAAAAAAAAAAAAAAALL)
    {
      std::vector<jet_render_op>::__throw_length_error[abi:ne200100]();
    }

    v11 = 0xAAAAAAAAAAAAAAABLL * ((v5 - v8) >> 3);
    if (2 * v11 > v10)
    {
      v10 = 2 * v11;
    }

    if (v11 >= 0x555555555555555)
    {
      v12 = 0xAAAAAAAAAAAAAAALL;
    }

    else
    {
      v12 = v10;
    }

    if (v12)
    {
      std::__allocate_at_least[abi:ne200100]<std::allocator<MaxRectTexturePacker::InputTexInfo>>(this + 64, v12);
    }

    v13 = 24 * v9;
    *v13 = width;
    *(v13 + 8) = height;
    *(v13 + 16) = 15;
    v7 = 24 * v9 + 24;
    v14 = *(this + 8);
    v15 = *(this + 9) - v14;
    v16 = 24 * v9 - v15;
    memcpy((v13 - v15), v14, v15);
    v17 = *(this + 8);
    *(this + 8) = v16;
    *(this + 9) = v7;
    *(this + 10) = 0;
    if (v17)
    {
      operator delete(v17);
    }
  }

  else
  {
    *v6 = width;
    v6[1] = height;
    *(v6 + 2) = 15;
    v7 = (v6 + 3);
  }

  *(this + 9) = v7;
}

void MaxRectTexturePacker::packTextures(uint64_t a1, uint64_t a2, int a3, char a4)
{
  *(a1 + 8) = a4;
  std::vector<std::vector<MaxRectTexturePacker::PackedTexInfo>>::clear[abi:ne200100]((a1 + 40));
  v6 = *(a1 + 64);
  v7 = *(a1 + 72) - v6;
  if (v7)
  {
    v8 = 0xAAAAAAAAAAAAAAABLL * (v7 >> 3);
    v9 = *(a1 + 8);
    if (v8 <= 1)
    {
      v8 = 1;
    }

    v10 = (v6 + 8);
    v11 = 0.0;
    v12 = 0.0;
    v13 = 0.0;
    do
    {
      v14 = *(v10 - 1);
      if (v9)
      {
        v14 = v14 + 2.0;
        v15 = *v10 + 2.0;
        *(v10 - 1) = v14;
        *v10 = v15;
      }

      else
      {
        v15 = *v10;
      }

      v11 = fmax(v14, v11);
      v12 = fmax(v15, v12);
      v13 = v13 + v14 * v15;
      v10 += 3;
      --v8;
    }

    while (v8);
  }

  else
  {
    v13 = 0.0;
    v12 = 0.0;
    v11 = 0.0;
  }

  v16 = fmax(v11, v12);
  std::vector<std::shared_ptr<PKCField>>::clear[abi:ne200100]((a1 + 16));
  v17 = 1.0;
  v18 = *(a1 + 88);
  v19 = *(a1 + 96);
  v20 = v18 == *MEMORY[0x277CBF3A8];
  if (v19 != *(MEMORY[0x277CBF3A8] + 8))
  {
    v20 = 0;
  }

  while (1)
  {
    v21 = ceil(sqrt(v13 / v17));
    if (a3)
    {
      v22 = v21;
      v23 = 1;
      do
      {
        v24 = v23;
        v23 *= 2;
      }

      while (v24 < v22);
      v25 = 1;
      do
      {
        v26 = v25;
        v25 *= 2;
      }

      while (v26 < v22);
      v21 = v24;
      v27 = v26;
      if (!v20)
      {
LABEL_19:
        v21 = fmin(v18, v21);
        v28 = v19 == fmin(v19, v27) && v18 == v21;
        goto LABEL_24;
      }
    }

    else
    {
      v27 = v21;
      if (!v20)
      {
        goto LABEL_19;
      }
    }

    v28 = 0;
LABEL_24:
    v29 = fmax(v17 + -0.02, 0.01);
    if (v21 >= v16)
    {
      v30 = 0;
    }

    else
    {
      v17 = v29;
      v30 = !v28;
    }

    if (!v30)
    {
      operator new();
    }
  }
}

void sub_21C48127C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, std::__shared_weak_count *a18, void *__p, uint64_t a20)
{
  if (a18)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a18);
  }

  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

BOOL MaxRectTexturePacker::getTextureLocationInAtlas(MaxRectTexturePacker *this, uint64_t a2, uint64_t a3, unsigned int *a4, CGRect *a5, unsigned int *a6)
{
  v11 = (*(this + 5) + 24 * a2);
  v23 = 0;
  v24 = 0;
  __p = 0;
  std::vector<MaxRectTexturePacker::PackedTexInfo>::__init_with_size[abi:ne200100]<MaxRectTexturePacker::PackedTexInfo*,MaxRectTexturePacker::PackedTexInfo*>(&__p, *v11, v11[1], 0xCCCCCCCCCCCCCCCDLL * ((v11[1] - *v11) >> 3));
  v12 = __p;
  v13 = __p + 40 * a3;
  v15 = *v13;
  v14 = *(v13 + 1);
  v16 = *(v13 + 24);
  a5->origin = *(v13 + 8);
  a5->size = v16;
  *a4 = v15;
  *a6 = v14;
  width = a5->size.width;
  v18 = *(*(this + 8) + 24 * v15);
  if (*(this + 8) != 1)
  {
    goto LABEL_7;
  }

  v19 = a5->size.width;
  if (v14)
  {
    a5->origin.x = a5->origin.x + 1.0;
    v19 = width + -1.0;
    a5->size.width = width + -1.0;
    if ((v14 & 2) == 0)
    {
LABEL_4:
      if ((v14 & 8) == 0)
      {
        goto LABEL_5;
      }

LABEL_10:
      a5->origin.y = a5->origin.y + 1.0;
      a5->size.height = a5->size.height + -1.0;
      if ((v14 & 4) == 0)
      {
        goto LABEL_7;
      }

      goto LABEL_6;
    }
  }

  else if ((v14 & 2) == 0)
  {
    goto LABEL_4;
  }

  a5->size.width = v19 + -1.0;
  if ((v14 & 8) != 0)
  {
    goto LABEL_10;
  }

LABEL_5:
  if ((v14 & 4) != 0)
  {
LABEL_6:
    a5->size.height = a5->size.height + -1.0;
  }

LABEL_7:
  v20 = width != v18;
  v23 = v12;
  operator delete(v12);
  return v20;
}

void std::vector<std::vector<MaxRectTexturePacker::PackedTexInfo>>::__destroy_vector::operator()[abi:ne200100](void ***a1)
{
  v2 = *a1;
  if (*v2)
  {
    std::vector<std::vector<MaxRectTexturePacker::PackedTexInfo>>::clear[abi:ne200100](v2);
    v3 = **a1;

    operator delete(v3);
  }
}

void std::vector<std::vector<MaxRectTexturePacker::PackedTexInfo>>::clear[abi:ne200100](uint64_t *a1)
{
  v3 = *a1;
  v2 = a1[1];
  if (v2 != *a1)
  {
    v4 = a1[1];
    do
    {
      v6 = *(v4 - 24);
      v4 -= 24;
      v5 = v6;
      if (v6)
      {
        *(v2 - 16) = v5;
        operator delete(v5);
      }

      v2 = v4;
    }

    while (v4 != v3);
  }

  a1[1] = v3;
}

void std::__allocate_at_least[abi:ne200100]<std::allocator<MaxRectTexturePacker::InputTexInfo>>(uint64_t a1, unint64_t a2)
{
  if (a2 < 0xAAAAAAAAAAAAAABLL)
  {
    operator new();
  }

  std::__throw_bad_array_new_length[abi:ne200100]();
}

void std::vector<MaxRectTexturePacker::PackedTexInfo>::push_back[abi:ne200100](uint64_t a1, __int128 *a2)
{
  v4 = *(a1 + 8);
  v5 = *(a1 + 16);
  if (v4 >= v5)
  {
    v9 = 0xCCCCCCCCCCCCCCCDLL * ((v4 - *a1) >> 3);
    v10 = v9 + 1;
    if (v9 + 1 > 0x666666666666666)
    {
      std::vector<jet_render_op>::__throw_length_error[abi:ne200100]();
    }

    v11 = 0xCCCCCCCCCCCCCCCDLL * ((v5 - *a1) >> 3);
    if (2 * v11 > v10)
    {
      v10 = 2 * v11;
    }

    if (v11 >= 0x333333333333333)
    {
      v12 = 0x666666666666666;
    }

    else
    {
      v12 = v10;
    }

    if (v12)
    {
      std::__allocate_at_least[abi:ne200100]<std::allocator<MaxRectTexturePacker::PackedTexInfo>>(a1, v12);
    }

    v13 = 40 * v9;
    v14 = *a2;
    v15 = a2[1];
    *(v13 + 32) = *(a2 + 4);
    *v13 = v14;
    *(v13 + 16) = v15;
    v8 = 40 * v9 + 40;
    v16 = *(a1 + 8) - *a1;
    v17 = v13 - v16;
    memcpy((v13 - v16), *a1, v16);
    v18 = *a1;
    *a1 = v17;
    *(a1 + 8) = v8;
    *(a1 + 16) = 0;
    if (v18)
    {
      operator delete(v18);
    }
  }

  else
  {
    v6 = *a2;
    v7 = a2[1];
    *(v4 + 32) = *(a2 + 4);
    *v4 = v6;
    *(v4 + 16) = v7;
    v8 = v4 + 40;
  }

  *(a1 + 8) = v8;
}

void std::vector<CGSize>::push_back[abi:ne200100](uint64_t a1, _OWORD *a2)
{
  v5 = *(a1 + 8);
  v4 = *(a1 + 16);
  if (v5 >= v4)
  {
    v7 = (v5 - *a1) >> 4;
    v8 = v7 + 1;
    if ((v7 + 1) >> 60)
    {
      std::vector<jet_render_op>::__throw_length_error[abi:ne200100]();
    }

    v9 = v4 - *a1;
    if (v9 >> 3 > v8)
    {
      v8 = v9 >> 3;
    }

    if (v9 >= 0x7FFFFFFFFFFFFFF0)
    {
      v10 = 0xFFFFFFFFFFFFFFFLL;
    }

    else
    {
      v10 = v8;
    }

    if (v10)
    {
      std::__allocate_at_least[abi:ne200100]<std::allocator<CGSize>>(a1, v10);
    }

    v11 = (16 * v7);
    *v11 = *a2;
    v6 = 16 * v7 + 16;
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

uint64_t std::vector<std::vector<MaxRectTexturePacker::PackedTexInfo>>::push_back[abi:ne200100](uint64_t a1, uint64_t *a2)
{
  v3 = *(a1 + 8);
  if (v3 >= *(a1 + 16))
  {
    result = std::vector<std::vector<MaxRectTexturePacker::PackedTexInfo>>::__emplace_back_slow_path<std::vector<MaxRectTexturePacker::PackedTexInfo> const&>(a1, a2);
  }

  else
  {
    std::vector<std::vector<MaxRectTexturePacker::PackedTexInfo>>::__construct_one_at_end[abi:ne200100]<std::vector<MaxRectTexturePacker::PackedTexInfo> const&>(a1, a2);
    result = v3 + 24;
  }

  *(a1 + 8) = result;
  return result;
}

void sub_21C4818B4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10)
{
  a10 = 0;
  if (v10)
  {
    std::default_delete<MaxRectsBinPack>::operator()[abi:ne200100](&a10, v10);
  }

  _Unwind_Resume(exception_object);
}

void std::__shared_ptr_pointer<MaxRectsBinPack *,std::shared_ptr<MaxRectsBinPack>::__shared_ptr_default_delete<MaxRectsBinPack,MaxRectsBinPack>,std::allocator<MaxRectsBinPack>>::~__shared_ptr_pointer(std::__shared_weak_count *a1)
{
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x21CF0A160);
}

uint64_t std::__shared_ptr_pointer<MaxRectsBinPack *,std::shared_ptr<MaxRectsBinPack>::__shared_ptr_default_delete<MaxRectsBinPack,MaxRectsBinPack>,std::allocator<MaxRectsBinPack>>::__get_deleter(uint64_t a1, uint64_t a2)
{
  {
    return a1;
  }

  else
  {
    return 0;
  }
}

void std::default_delete<MaxRectsBinPack>::operator()[abi:ne200100](uint64_t a1, void *a2)
{
  if (a2)
  {
    v3 = a2[4];
    if (v3)
    {
      a2[5] = v3;
      operator delete(v3);
    }

    v4 = a2[1];
    if (v4)
    {
      a2[2] = v4;
      operator delete(v4);
    }

    JUMPOUT(0x21CF0A160);
  }
}

void std::__allocate_at_least[abi:ne200100]<std::allocator<MaxRectTexturePacker::PackedTexInfo>>(uint64_t a1, unint64_t a2)
{
  if (a2 < 0x666666666666667)
  {
    operator new();
  }

  std::__throw_bad_array_new_length[abi:ne200100]();
}

void std::__allocate_at_least[abi:ne200100]<std::allocator<CGSize>>(uint64_t a1, unint64_t a2)
{
  if (!(a2 >> 60))
  {
    operator new();
  }

  std::__throw_bad_array_new_length[abi:ne200100]();
}

uint64_t std::vector<std::vector<MaxRectTexturePacker::PackedTexInfo>>::__construct_one_at_end[abi:ne200100]<std::vector<MaxRectTexturePacker::PackedTexInfo> const&>(uint64_t a1, uint64_t *a2)
{
  v3 = *(a1 + 8);
  *v3 = 0;
  v3[1] = 0;
  v3[2] = 0;
  result = std::vector<MaxRectTexturePacker::PackedTexInfo>::__init_with_size[abi:ne200100]<MaxRectTexturePacker::PackedTexInfo*,MaxRectTexturePacker::PackedTexInfo*>(v3, *a2, a2[1], 0xCCCCCCCCCCCCCCCDLL * ((a2[1] - *a2) >> 3));
  *(a1 + 8) = v3 + 3;
  return result;
}

uint64_t std::vector<std::vector<MaxRectTexturePacker::PackedTexInfo>>::__emplace_back_slow_path<std::vector<MaxRectTexturePacker::PackedTexInfo> const&>(uint64_t a1, uint64_t *a2)
{
  v2 = 0xAAAAAAAAAAAAAAABLL * ((*(a1 + 8) - *a1) >> 3);
  v3 = v2 + 1;
  if (v2 + 1 > 0xAAAAAAAAAAAAAAALL)
  {
    std::vector<jet_render_op>::__throw_length_error[abi:ne200100]();
  }

  if (0x5555555555555556 * ((*(a1 + 16) - *a1) >> 3) > v3)
  {
    v3 = 0x5555555555555556 * ((*(a1 + 16) - *a1) >> 3);
  }

  if (0xAAAAAAAAAAAAAAABLL * ((*(a1 + 16) - *a1) >> 3) >= 0x555555555555555)
  {
    v6 = 0xAAAAAAAAAAAAAAALL;
  }

  else
  {
    v6 = v3;
  }

  v18 = a1;
  if (v6)
  {
    std::__allocate_at_least[abi:ne200100]<std::allocator<std::vector<MaxRectTexturePacker::PackedTexInfo>>>(a1, v6);
  }

  v7 = 24 * v2;
  v14 = 0;
  v15 = v7;
  v16 = 24 * v2;
  v17 = 0;
  *v7 = 0;
  *(v7 + 8) = 0;
  *(v7 + 16) = 0;
  std::vector<MaxRectTexturePacker::PackedTexInfo>::__init_with_size[abi:ne200100]<MaxRectTexturePacker::PackedTexInfo*,MaxRectTexturePacker::PackedTexInfo*>(24 * v2, *a2, a2[1], 0xCCCCCCCCCCCCCCCDLL * ((a2[1] - *a2) >> 3));
  v8 = v16 + 24;
  v9 = *(a1 + 8) - *a1;
  v10 = &v15[-v9];
  memcpy(&v15[-v9], *a1, v9);
  v11 = *a1;
  *a1 = v10;
  *(a1 + 8) = v8;
  v12 = *(a1 + 16);
  *(a1 + 16) = v17;
  v16 = v11;
  v17 = v12;
  v14 = v11;
  v15 = v11;
  std::__split_buffer<std::vector<MaxRectTexturePacker::PackedTexInfo>>::~__split_buffer(&v14);
  return v8;
}

void sub_21C481BEC(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  std::__split_buffer<std::vector<MaxRectTexturePacker::PackedTexInfo>>::~__split_buffer(va);
  _Unwind_Resume(a1);
}

uint64_t std::vector<MaxRectTexturePacker::PackedTexInfo>::__init_with_size[abi:ne200100]<MaxRectTexturePacker::PackedTexInfo*,MaxRectTexturePacker::PackedTexInfo*>(uint64_t result, uint64_t a2, uint64_t a3, unint64_t a4)
{
  if (a4)
  {
    std::vector<MaxRectTexturePacker::PackedTexInfo>::__vallocate[abi:ne200100](result, a4);
  }

  return result;
}

void sub_21C481C60(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

void std::vector<MaxRectTexturePacker::PackedTexInfo>::__vallocate[abi:ne200100](uint64_t a1, unint64_t a2)
{
  if (a2 < 0x666666666666667)
  {
    std::__allocate_at_least[abi:ne200100]<std::allocator<MaxRectTexturePacker::PackedTexInfo>>(a1, a2);
  }

  std::vector<jet_render_op>::__throw_length_error[abi:ne200100]();
}

void std::__allocate_at_least[abi:ne200100]<std::allocator<std::vector<MaxRectTexturePacker::PackedTexInfo>>>(uint64_t a1, unint64_t a2)
{
  if (a2 < 0xAAAAAAAAAAAAAABLL)
  {
    operator new();
  }

  std::__throw_bad_array_new_length[abi:ne200100]();
}

uint64_t std::__split_buffer<std::vector<MaxRectTexturePacker::PackedTexInfo>>::~__split_buffer(uint64_t a1)
{
  std::__split_buffer<std::vector<MaxRectTexturePacker::PackedTexInfo>>::__destruct_at_end[abi:ne200100](a1, *(a1 + 8));
  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

void std::__split_buffer<std::vector<MaxRectTexturePacker::PackedTexInfo>>::__destruct_at_end[abi:ne200100](uint64_t a1, uint64_t a2)
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

void std::__allocate_at_least[abi:ne200100]<std::allocator<CGRect>>(uint64_t a1, unint64_t a2)
{
  if (!(a2 >> 59))
  {
    operator new();
  }

  std::__throw_bad_array_new_length[abi:ne200100]();
}

void std::vector<TextureInfo>::__destroy_vector::operator()[abi:ne200100](void ***a1)
{
  v2 = *a1;
  if (*v2)
  {
    std::vector<TextureInfo>::clear[abi:ne200100](v2);
    v3 = **a1;

    operator delete(v3);
  }
}

void std::vector<TextureInfo>::clear[abi:ne200100](uint64_t *a1)
{
  v2 = *a1;
  for (i = a1[1]; i != v2; i -= 32)
  {
    if (*(i - 1) < 0)
    {
      operator delete(*(i - 24));
    }
  }

  a1[1] = v2;
}

void std::vector<TextureInfo>::__construct_one_at_end[abi:ne200100]<TextureInfo const&>(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 8);
  *v3 = *a2;
  v4 = (v3 + 1);
  if (*(a2 + 31) < 0)
  {
    std::string::__init_copy_ctor_external(v4, *(a2 + 8), *(a2 + 16));
  }

  else
  {
    v5 = *(a2 + 8);
    v3[3] = *(a2 + 24);
    *&v4->__r_.__value_.__l.__data_ = v5;
  }

  *(a1 + 8) = v3 + 4;
}

uint64_t std::vector<TextureInfo>::__emplace_back_slow_path<TextureInfo const&>(uint64_t *a1, uint64_t a2)
{
  v2 = (a1[1] - *a1) >> 5;
  v3 = v2 + 1;
  if ((v2 + 1) >> 59)
  {
    std::vector<jet_render_op>::__throw_length_error[abi:ne200100]();
  }

  v6 = a1[2] - *a1;
  if (v6 >> 4 > v3)
  {
    v3 = v6 >> 4;
  }

  if (v6 >= 0x7FFFFFFFFFFFFFE0)
  {
    v7 = 0x7FFFFFFFFFFFFFFLL;
  }

  else
  {
    v7 = v3;
  }

  v20 = a1;
  if (v7)
  {
    std::__allocate_at_least[abi:ne200100]<std::allocator<TextureInfo>>(a1, v7);
  }

  v8 = 32 * v2;
  v17 = 0;
  v18 = 32 * v2;
  v19 = (32 * v2);
  *(32 * v2) = *a2;
  if (*(a2 + 31) < 0)
  {
    std::string::__init_copy_ctor_external((32 * v2 + 8), *(a2 + 8), *(a2 + 16));
    v8 = v18;
    v10 = v19;
  }

  else
  {
    v9 = *(a2 + 8);
    *(32 * v2 + 0x18) = *(a2 + 24);
    *(32 * v2 + 8) = v9;
    v10 = 32 * v2;
  }

  *&v19 = v10 + 32;
  v11 = a1[1];
  v12 = v8 + *a1 - v11;
  std::__uninitialized_allocator_relocate[abi:ne200100]<std::allocator<TextureInfo>,TextureInfo*>(a1, *a1, v11, v12);
  v13 = *a1;
  *a1 = v12;
  v14 = a1[2];
  v16 = v19;
  *(a1 + 1) = v19;
  *&v19 = v13;
  *(&v19 + 1) = v14;
  v17 = v13;
  v18 = v13;
  std::__split_buffer<TextureInfo>::~__split_buffer(&v17);
  return v16;
}

void sub_21C482030(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  std::__split_buffer<TextureInfo>::~__split_buffer(va);
  _Unwind_Resume(a1);
}

void std::__allocate_at_least[abi:ne200100]<std::allocator<TextureInfo>>(uint64_t a1, unint64_t a2)
{
  if (!(a2 >> 59))
  {
    operator new();
  }

  std::__throw_bad_array_new_length[abi:ne200100]();
}

uint64_t std::__uninitialized_allocator_relocate[abi:ne200100]<std::allocator<TextureInfo>,TextureInfo*>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v12 = a4;
  v11 = a4;
  v9[0] = a1;
  v9[1] = &v11;
  v9[2] = &v12;
  if (a2 == a3)
  {
    v10 = 1;
  }

  else
  {
    v5 = a2;
    v6 = a2;
    do
    {
      *a4 = *v6;
      v7 = *(v6 + 8);
      *(a4 + 24) = *(v6 + 24);
      *(a4 + 8) = v7;
      *(v6 + 16) = 0;
      *(v6 + 24) = 0;
      *(v6 + 8) = 0;
      v6 += 32;
      a4 += 32;
    }

    while (v6 != a3);
    v12 = a4;
    v10 = 1;
    while (v5 != a3)
    {
      if (*(v5 + 31) < 0)
      {
        operator delete(*(v5 + 8));
      }

      v5 += 32;
    }
  }

  return std::__exception_guard_exceptions<std::_AllocatorDestroyRangeReverse<std::allocator<TextureInfo>,TextureInfo*>>::~__exception_guard_exceptions[abi:ne200100](v9);
}

uint64_t std::__exception_guard_exceptions<std::_AllocatorDestroyRangeReverse<std::allocator<TextureInfo>,TextureInfo*>>::~__exception_guard_exceptions[abi:ne200100](uint64_t a1)
{
  if ((*(a1 + 24) & 1) == 0)
  {
    std::_AllocatorDestroyRangeReverse<std::allocator<TextureInfo>,TextureInfo*>::operator()[abi:ne200100](a1);
  }

  return a1;
}

void std::_AllocatorDestroyRangeReverse<std::allocator<TextureInfo>,TextureInfo*>::operator()[abi:ne200100](uint64_t a1)
{
  v1 = **(a1 + 16);
  v2 = **(a1 + 8);
  while (v1 != v2)
  {
    if (*(v1 - 1) < 0)
    {
      operator delete(*(v1 - 24));
    }

    v1 -= 32;
  }
}

uint64_t std::__split_buffer<TextureInfo>::~__split_buffer(uint64_t a1)
{
  std::__split_buffer<TextureInfo>::__destruct_at_end[abi:ne200100](a1, *(a1 + 8));
  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

void std::__split_buffer<TextureInfo>::__destruct_at_end[abi:ne200100](uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  if (v2 != a2)
  {
    do
    {
      v5 = v2 - 32;
      *(a1 + 16) = v2 - 32;
      if (*(v2 - 1) < 0)
      {
        operator delete(*(v2 - 24));
        v5 = *(a1 + 16);
      }

      v2 = v5;
    }

    while (v5 != a2);
  }
}

void std::__introsort<std::_ClassicAlgPolicy,BOOL (*&)(TextureInfo const&,TextureInfo const&),TextureInfo*,false>(__int128 *a1, char *a2, uint64_t (**a3)(__int128 *, __int128 *), uint64_t a4, char a5, __n128 a6)
{
LABEL_1:
  v10 = a1;
LABEL_2:
  v11 = 1 - a4;
  while (1)
  {
    a1 = v10;
    v12 = v11;
    v13 = (a2 - v10) >> 5;
    if (v13 <= 2)
    {
      if (v13 < 2)
      {
        return;
      }

      if (v13 == 2)
      {
        if ((*a3)(a2 - 2, v10))
        {
          *&v34 = *(v10 + 2);
          *(&v34 + 7) = *(v10 + 23);
          v23 = *(v10 + 31);
          v24 = *v10;
          *(v10 + 2) = 0;
          *(v10 + 3) = 0;
          *(v10 + 1) = 0;
          *v10 = *(a2 - 4);
          v25 = *(a2 - 24);
          *(v10 + 3) = *(a2 - 1);
          *(v10 + 8) = v25;
          *(a2 - 2) = v24;
          *(a2 - 2) = v34;
          *(a2 - 9) = *(&v34 + 7);
          *(a2 - 1) = v23;
        }

        return;
      }

      goto LABEL_10;
    }

    if (v13 == 3)
    {
      break;
    }

    if (v13 == 4)
    {
      std::__sort3[abi:ne200100]<std::_ClassicAlgPolicy,BOOL (*&)(TextureInfo const&,TextureInfo const&),TextureInfo*,0>(v10, v10 + 2, (v10 + 4), a3);
      if ((*a3)(a2 - 2, v10 + 4))
      {
        v26 = v10[4];
        *(v10 + 9) = 0;
        *&v35 = *(v10 + 10);
        *(&v35 + 7) = *(v10 + 87);
        v27 = *(v10 + 95);
        *(v10 + 11) = 0;
        *(v10 + 10) = 0;
        *(v10 + 8) = *(a2 - 4);
        v28 = *(a2 - 24);
        *(v10 + 11) = *(a2 - 1);
        *(v10 + 72) = v28;
        *(a2 - 2) = v26;
        *(a2 - 9) = *(&v35 + 7);
        *(a2 - 2) = v35;
        *(a2 - 1) = v27;
        if ((*a3)(v10 + 4, v10 + 2))
        {
          *&v36 = *(v10 + 6);
          *(&v36 + 7) = *(v10 + 55);
          v29 = *(v10 + 63);
          v30 = v10[2];
          *(v10 + 4) = *(v10 + 8);
          *(v10 + 7) = *(v10 + 11);
          *(v10 + 40) = *(v10 + 72);
          v10[4] = v30;
          *(v10 + 10) = v36;
          *(v10 + 87) = *(&v36 + 7);
          *(v10 + 95) = v29;
          if ((*a3)(v10 + 2, v10))
          {
            *&v37 = *(v10 + 2);
            *(&v37 + 7) = *(v10 + 23);
            v31 = *(v10 + 31);
            v32 = *v10;
            *v10 = *(v10 + 4);
            *(v10 + 8) = *(v10 + 40);
            *(v10 + 3) = *(v10 + 7);
            v10[2] = v32;
            *(v10 + 6) = v37;
            *(v10 + 55) = *(&v37 + 7);
            *(v10 + 63) = v31;
          }
        }
      }

      return;
    }

    if (v13 == 5)
    {

      std::__sort5[abi:ne200100]<std::_ClassicAlgPolicy,BOOL (*&)(TextureInfo const&,TextureInfo const&),TextureInfo*,0>(v10, (v10 + 2), (v10 + 4), (v10 + 6), (a2 - 32), a3);
      return;
    }

LABEL_10:
    if (v13 <= 23)
    {
      if (a5)
      {

        std::__insertion_sort[abi:ne200100]<std::_ClassicAlgPolicy,BOOL (*&)(TextureInfo const&,TextureInfo const&),TextureInfo*>(v10, a2, a3);
      }

      else
      {

        std::__insertion_sort_unguarded[abi:ne200100]<std::_ClassicAlgPolicy,BOOL (*&)(TextureInfo const&,TextureInfo const&),TextureInfo*>(v10, a2, a3);
      }

      return;
    }

    if (v12 == 1)
    {
      if (v10 != a2)
      {

        std::__partial_sort_impl[abi:ne200100]<std::_ClassicAlgPolicy,BOOL (*&)(TextureInfo const&,TextureInfo const&),TextureInfo*,TextureInfo*>(v10, a2, a2, a3, a6);
      }

      return;
    }

    v14 = v13 >> 1;
    v15 = &v10[2 * (v13 >> 1)];
    if (v13 < 0x81)
    {
      std::__sort3[abi:ne200100]<std::_ClassicAlgPolicy,BOOL (*&)(TextureInfo const&,TextureInfo const&),TextureInfo*,0>(&v10[2 * (v13 >> 1)], v10, (a2 - 32), a3);
      if (a5)
      {
        goto LABEL_17;
      }
    }

    else
    {
      std::__sort3[abi:ne200100]<std::_ClassicAlgPolicy,BOOL (*&)(TextureInfo const&,TextureInfo const&),TextureInfo*,0>(v10, &v10[2 * (v13 >> 1)], (a2 - 32), a3);
      std::__sort3[abi:ne200100]<std::_ClassicAlgPolicy,BOOL (*&)(TextureInfo const&,TextureInfo const&),TextureInfo*,0>(v10 + 2, v15 - 2, (a2 - 64), a3);
      std::__sort3[abi:ne200100]<std::_ClassicAlgPolicy,BOOL (*&)(TextureInfo const&,TextureInfo const&),TextureInfo*,0>(v10 + 4, &v10[2 * v14 + 2], (a2 - 96), a3);
      std::__sort3[abi:ne200100]<std::_ClassicAlgPolicy,BOOL (*&)(TextureInfo const&,TextureInfo const&),TextureInfo*,0>(v15 - 2, v15, &v10[2 * v14 + 2], a3);
      *&v33 = *(v10 + 2);
      *(&v33 + 7) = *(v10 + 23);
      v16 = *(v10 + 31);
      v17 = *v10;
      *(v10 + 2) = 0;
      *(v10 + 3) = 0;
      *v10 = *v15;
      *(v10 + 1) = 0;
      v18 = *(v15 + 8);
      *(v10 + 3) = *(v15 + 3);
      *(v10 + 8) = v18;
      *v15 = v17;
      *(v15 + 23) = *(&v33 + 7);
      *(v15 + 2) = v33;
      *(v15 + 31) = v16;
      if (a5)
      {
        goto LABEL_17;
      }
    }

    if (((*a3)(v10 - 2, v10) & 1) == 0)
    {
      v10 = std::__partition_with_equals_on_left[abi:ne200100]<std::_ClassicAlgPolicy,TextureInfo *,BOOL (*&)(TextureInfo const&,TextureInfo const&)>(v10, a2, a3);
      goto LABEL_22;
    }

LABEL_17:
    v19 = std::__partition_with_equals_on_right[abi:ne200100]<std::_ClassicAlgPolicy,TextureInfo *,BOOL (*&)(TextureInfo const&,TextureInfo const&)>(v10, a2, a3);
    if ((v20 & 1) == 0)
    {
      goto LABEL_20;
    }

    v21 = std::__insertion_sort_incomplete[abi:ne200100]<std::_ClassicAlgPolicy,BOOL (*&)(TextureInfo const&,TextureInfo const&),TextureInfo*>(v10, v19, a3);
    v10 = (v19 + 32);
    if (std::__insertion_sort_incomplete[abi:ne200100]<std::_ClassicAlgPolicy,BOOL (*&)(TextureInfo const&,TextureInfo const&),TextureInfo*>(v19 + 32, a2, a3))
    {
      a4 = -v12;
      a2 = v19;
      if (v21)
      {
        return;
      }

      goto LABEL_1;
    }

    v11 = v12 + 1;
    if (!v21)
    {
LABEL_20:
      std::__introsort<std::_ClassicAlgPolicy,BOOL (*&)(TextureInfo const&,TextureInfo const&),TextureInfo*,false>(a1, v19, a3, -v12, a5 & 1);
      v10 = (v19 + 32);
LABEL_22:
      a5 = 0;
      a4 = -v12;
      goto LABEL_2;
    }
  }

  std::__sort3[abi:ne200100]<std::_ClassicAlgPolicy,BOOL (*&)(TextureInfo const&,TextureInfo const&),TextureInfo*,0>(v10, v10 + 2, (a2 - 32), a3);
}

uint64_t std::__sort3[abi:ne200100]<std::_ClassicAlgPolicy,BOOL (*&)(TextureInfo const&,TextureInfo const&),TextureInfo*,0>(__int128 *a1, __int128 *a2, uint64_t a3, uint64_t (**a4)(__int128 *, __int128 *))
{
  v8 = (*a4)(a2, a1);
  result = (*a4)(a3, a2);
  if (v8)
  {
    if (result)
    {
      *v23 = *(a1 + 2);
      *&v23[7] = *(a1 + 23);
      v10 = *(a1 + 31);
      v11 = *a1;
      *(a1 + 2) = 0;
      *(a1 + 3) = 0;
      *(a1 + 1) = 0;
      *a1 = *a3;
      v12 = *(a3 + 8);
      *(a1 + 3) = *(a3 + 24);
      *(a1 + 8) = v12;
LABEL_9:
      *a3 = v11;
      *(a3 + 23) = *&v23[7];
      *(a3 + 16) = *v23;
      *(a3 + 31) = v10;
      return 1;
    }

    *&v26 = *(a1 + 2);
    *(&v26 + 7) = *(a1 + 23);
    v19 = *(a1 + 31);
    v20 = *a1;
    *(a1 + 2) = 0;
    *(a1 + 3) = 0;
    *(a1 + 1) = 0;
    *a1 = *a2;
    v21 = *(a2 + 8);
    *(a1 + 3) = *(a2 + 3);
    *(a1 + 8) = v21;
    *a2 = v20;
    *(a2 + 2) = v26;
    *(a2 + 23) = *(&v26 + 7);
    *(a2 + 31) = v19;
    if ((*a4)(a3, a2))
    {
      *v23 = *(a2 + 2);
      *&v23[7] = *(a2 + 23);
      v10 = *(a2 + 31);
      v11 = *a2;
      *(a2 + 2) = 0;
      *(a2 + 3) = 0;
      *(a2 + 1) = 0;
      *a2 = *a3;
      v22 = *(a3 + 8);
      *(a2 + 3) = *(a3 + 24);
      *(a2 + 8) = v22;
      goto LABEL_9;
    }
  }

  else
  {
    if (!result)
    {
      return result;
    }

    v13 = *a2;
    *(a2 + 1) = 0;
    *&v24 = *(a2 + 2);
    *(&v24 + 7) = *(a2 + 23);
    v14 = *(a2 + 31);
    *(a2 + 3) = 0;
    *(a2 + 2) = 0;
    *a2 = *a3;
    v15 = *(a3 + 8);
    *(a2 + 3) = *(a3 + 24);
    *(a2 + 8) = v15;
    *a3 = v13;
    *(a3 + 23) = *(&v24 + 7);
    *(a3 + 16) = v24;
    *(a3 + 31) = v14;
    if ((*a4)(a2, a1))
    {
      *&v25 = *(a1 + 2);
      *(&v25 + 7) = *(a1 + 23);
      v16 = *(a1 + 31);
      v17 = *a1;
      *(a1 + 2) = 0;
      *(a1 + 3) = 0;
      *(a1 + 1) = 0;
      *a1 = *a2;
      v18 = *(a2 + 8);
      *(a1 + 3) = *(a2 + 3);
      *(a1 + 8) = v18;
      *a2 = v17;
      *(a2 + 23) = *(&v25 + 7);
      *(a2 + 2) = v25;
      *(a2 + 31) = v16;
    }
  }

  return 1;
}

uint64_t std::__sort5[abi:ne200100]<std::_ClassicAlgPolicy,BOOL (*&)(TextureInfo const&,TextureInfo const&),TextureInfo*,0>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t (**a6)(__int128 *, __int128 *))
{
  std::__sort3[abi:ne200100]<std::_ClassicAlgPolicy,BOOL (*&)(TextureInfo const&,TextureInfo const&),TextureInfo*,0>(a1, a2, a3, a6);
  if ((*a6)(a4, a3))
  {
    v12 = *a3;
    *(a3 + 8) = 0;
    *&v34 = *(a3 + 16);
    *(&v34 + 7) = *(a3 + 23);
    v13 = *(a3 + 31);
    *(a3 + 24) = 0;
    *(a3 + 16) = 0;
    *a3 = *a4;
    v14 = *(a4 + 8);
    *(a3 + 24) = *(a4 + 24);
    *(a3 + 8) = v14;
    *a4 = v12;
    *(a4 + 23) = *(&v34 + 7);
    *(a4 + 16) = v34;
    *(a4 + 31) = v13;
    if ((*a6)(a3, a2))
    {
      v15 = *a2;
      *(a2 + 8) = 0;
      *&v35 = *(a2 + 16);
      *(&v35 + 7) = *(a2 + 23);
      v16 = *(a2 + 31);
      *(a2 + 24) = 0;
      *(a2 + 16) = 0;
      *a2 = *a3;
      v17 = *(a3 + 8);
      *(a2 + 24) = *(a3 + 24);
      *(a2 + 8) = v17;
      *a3 = v15;
      *(a3 + 23) = *(&v35 + 7);
      *(a3 + 16) = v35;
      *(a3 + 31) = v16;
      if ((*a6)(a2, a1))
      {
        *&v36 = *(a1 + 16);
        *(&v36 + 7) = *(a1 + 23);
        v18 = *(a1 + 31);
        v19 = *a1;
        *(a1 + 16) = 0;
        *(a1 + 24) = 0;
        *(a1 + 8) = 0;
        *a1 = *a2;
        v20 = *(a2 + 8);
        *(a1 + 24) = *(a2 + 24);
        *(a1 + 8) = v20;
        *a2 = v19;
        *(a2 + 23) = *(&v36 + 7);
        *(a2 + 16) = v36;
        *(a2 + 31) = v18;
      }
    }
  }

  result = (*a6)(a5, a4);
  if (result)
  {
    v22 = *a4;
    *(a4 + 8) = 0;
    *&v37 = *(a4 + 16);
    *(&v37 + 7) = *(a4 + 23);
    v23 = *(a4 + 31);
    *(a4 + 24) = 0;
    *(a4 + 16) = 0;
    *a4 = *a5;
    v24 = *(a5 + 8);
    *(a4 + 24) = *(a5 + 24);
    *(a4 + 8) = v24;
    *a5 = v22;
    *(a5 + 23) = *(&v37 + 7);
    *(a5 + 16) = v37;
    *(a5 + 31) = v23;
    result = (*a6)(a4, a3);
    if (result)
    {
      v25 = *a3;
      *(a3 + 8) = 0;
      *&v38 = *(a3 + 16);
      *(&v38 + 7) = *(a3 + 23);
      v26 = *(a3 + 31);
      *(a3 + 24) = 0;
      *(a3 + 16) = 0;
      *a3 = *a4;
      v27 = *(a4 + 8);
      *(a3 + 24) = *(a4 + 24);
      *(a3 + 8) = v27;
      *a4 = v25;
      *(a4 + 23) = *(&v38 + 7);
      *(a4 + 16) = v38;
      *(a4 + 31) = v26;
      result = (*a6)(a3, a2);
      if (result)
      {
        v28 = *a2;
        *(a2 + 8) = 0;
        *&v39 = *(a2 + 16);
        *(&v39 + 7) = *(a2 + 23);
        v29 = *(a2 + 31);
        *(a2 + 24) = 0;
        *(a2 + 16) = 0;
        *a2 = *a3;
        v30 = *(a3 + 8);
        *(a2 + 24) = *(a3 + 24);
        *(a2 + 8) = v30;
        *a3 = v28;
        *(a3 + 23) = *(&v39 + 7);
        *(a3 + 16) = v39;
        *(a3 + 31) = v29;
        result = (*a6)(a2, a1);
        if (result)
        {
          *&v40 = *(a1 + 16);
          *(&v40 + 7) = *(a1 + 23);
          v31 = *(a1 + 31);
          v32 = *a1;
          *(a1 + 16) = 0;
          *(a1 + 24) = 0;
          *(a1 + 8) = 0;
          *a1 = *a2;
          v33 = *(a2 + 8);
          *(a1 + 24) = *(a2 + 24);
          *(a1 + 8) = v33;
          *a2 = v32;
          *(a2 + 23) = *(&v40 + 7);
          *(a2 + 16) = v40;
          *(a2 + 31) = v31;
        }
      }
    }
  }

  return result;
}

void std::__insertion_sort[abi:ne200100]<std::_ClassicAlgPolicy,BOOL (*&)(TextureInfo const&,TextureInfo const&),TextureInfo*>(void *a1, void *a2, uint64_t (**a3)(uint64_t *, uint64_t))
{
  if (a1 != a2)
  {
    v5 = a1 + 4;
    if (a1 + 4 != a2)
    {
      v7 = 0;
      v8 = a1;
      do
      {
        v9 = v5;
        if ((*a3)(v5, v8))
        {
          v17 = *v9;
          v18 = *(v8 + 5);
          v19 = v8[7];
          v8[5] = 0;
          v8[6] = 0;
          v8[7] = 0;
          v10 = v7;
          do
          {
            v11 = v10;
            v12 = a1 + v10;
            *(a1 + v10 + 32) = *(a1 + v10);
            if (*(a1 + v10 + 63) < 0)
            {
              operator delete(*(v12 + 5));
            }

            *(v12 + 40) = *(v12 + 8);
            *(v12 + 7) = *(v12 + 3);
            v12[31] = 0;
            v12[8] = 0;
            if (!v11)
            {
              *a1 = v17;
              goto LABEL_13;
            }

            v13 = (*a3)(&v17, a1 + v11 - 32);
            v10 = v11 - 32;
          }

          while ((v13 & 1) != 0);
          v14 = a1 + v10;
          v15 = v14[63];
          *(v14 + 4) = v17;
          if (v15 < 0)
          {
            operator delete(*(v14 + 5));
          }

LABEL_13:
          v16 = a1 + v11;
          *(v16 + 8) = v18;
          *(v16 + 3) = v19;
        }

        v5 = v9 + 4;
        v7 += 32;
        v8 = v9;
      }

      while (v9 + 4 != a2);
    }
  }
}

void sub_21C482F70(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void std::__insertion_sort_unguarded[abi:ne200100]<std::_ClassicAlgPolicy,BOOL (*&)(TextureInfo const&,TextureInfo const&),TextureInfo*>(void *a1, void *a2, uint64_t (**a3)(uint64_t *, void *))
{
  if (a1 != a2)
  {
    v4 = a1;
    v5 = a1 + 4;
    if (a1 + 4 != a2)
    {
      v7 = a1 - 4;
      do
      {
        v8 = v5;
        if ((*a3)(v5, v4))
        {
          v11 = *v8;
          v12 = *(v4 + 5);
          v13 = v4[7];
          v4[5] = 0;
          v4[6] = 0;
          v4[7] = 0;
          v9 = v7;
          do
          {
            v9[8] = v9[4];
            if (*(v9 + 95) < 0)
            {
              operator delete(v9[9]);
            }

            *(v9 + 9) = *(v9 + 5);
            v9[11] = v9[7];
            *(v9 + 63) = 0;
            *(v9 + 40) = 0;
            v10 = (*a3)(&v11, v9);
            v9 -= 4;
          }

          while ((v10 & 1) != 0);
          v9[8] = v11;
          if (*(v9 + 95) < 0)
          {
            operator delete(v9[9]);
          }

          *(v9 + 9) = v12;
          v9[11] = v13;
        }

        v5 = v8 + 4;
        v7 += 4;
        v4 = v8;
      }

      while (v8 + 4 != a2);
    }
  }
}

void sub_21C4830A8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

__int128 *std::__partition_with_equals_on_left[abi:ne200100]<std::_ClassicAlgPolicy,TextureInfo *,BOOL (*&)(TextureInfo const&,TextureInfo const&)>(__int128 *a1, unint64_t a2, uint64_t (**a3)(uint64_t *, __int128 *))
{
  v4 = a2;
  v21 = *MEMORY[0x277D85DE8];
  v17 = *a1;
  v18 = *(a1 + 8);
  v19 = *(a1 + 3);
  *(a1 + 1) = 0;
  *(a1 + 2) = 0;
  *(a1 + 3) = 0;
  if ((*a3)(&v17, (a2 - 32)))
  {
    v6 = a1;
    do
    {
      v6 += 2;
    }

    while (((*a3)(&v17, v6) & 1) == 0);
  }

  else
  {
    v7 = a1 + 2;
    do
    {
      v6 = v7;
      if (v7 >= v4)
      {
        break;
      }

      v8 = (*a3)(&v17, v7);
      v7 = v6 + 2;
    }

    while (!v8);
  }

  if (v6 < v4)
  {
    do
    {
      v4 -= 32;
    }

    while (((*a3)(&v17, v4) & 1) != 0);
  }

  while (v6 < v4)
  {
    v9 = *v6;
    *&v20[7] = *(v6 + 23);
    *v20 = *(v6 + 2);
    v10 = *(v6 + 31);
    *(v6 + 2) = 0;
    *(v6 + 3) = 0;
    *(v6 + 1) = 0;
    *v6 = *v4;
    v11 = *(v4 + 8);
    *(v6 + 3) = *(v4 + 24);
    *(v6 + 8) = v11;
    *v4 = v9;
    *(v4 + 16) = *v20;
    *(v4 + 23) = *&v20[7];
    *(v4 + 31) = v10;
    do
    {
      v6 += 2;
    }

    while (!(*a3)(&v17, v6));
    do
    {
      v4 -= 32;
    }

    while (((*a3)(&v17, v4) & 1) != 0);
  }

  if (v6 - 2 == a1)
  {
    v14 = *(v6 - 1);
    *(v6 - 4) = v17;
    v12 = v6 - 24;
    if (v14 < 0)
    {
      operator delete(*v12);
    }
  }

  else
  {
    *a1 = *(v6 - 4);
    if (*(a1 + 31) < 0)
    {
      operator delete(*(a1 + 1));
    }

    v12 = v6 - 24;
    v13 = *(v6 - 24);
    *(a1 + 3) = *(v6 - 1);
    *(a1 + 8) = v13;
    *(v6 - 1) = 0;
    *(v6 - 24) = 0;
    *(v6 - 4) = v17;
  }

  v15 = v18;
  *(v12 + 16) = v19;
  *v12 = v15;
  return v6;
}

void sub_21C4832D8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16)
{
  if (a16 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

unint64_t std::__partition_with_equals_on_right[abi:ne200100]<std::_ClassicAlgPolicy,TextureInfo *,BOOL (*&)(TextureInfo const&,TextureInfo const&)>(uint64_t *a1, unint64_t a2, uint64_t (**a3)(uint64_t, uint64_t *))
{
  v6 = 0;
  v23 = *MEMORY[0x277D85DE8];
  v19 = *a1;
  v21 = a1[3];
  v20 = *(a1 + 1);
  a1[1] = 0;
  a1[2] = 0;
  a1[3] = 0;
  do
  {
    v7 = (*a3)(&a1[v6 + 4], &v19);
    v6 += 4;
  }

  while ((v7 & 1) != 0);
  v8 = &a1[v6];
  if (v6 == 4)
  {
    do
    {
      if (v8 >= a2)
      {
        break;
      }

      a2 -= 32;
    }

    while (((*a3)(a2, &v19) & 1) == 0);
  }

  else
  {
    do
    {
      a2 -= 32;
    }

    while (!(*a3)(a2, &v19));
  }

  v9 = &a1[v6];
  if (v8 < a2)
  {
    v10 = a2;
    do
    {
      v11 = *v9;
      *&v22[7] = *(v9 + 23);
      *v22 = *(v9 + 16);
      v12 = *(v9 + 31);
      *(v9 + 16) = 0;
      *(v9 + 24) = 0;
      *(v9 + 8) = 0;
      *v9 = *v10;
      v13 = *(v10 + 8);
      *(v9 + 24) = *(v10 + 24);
      *(v9 + 8) = v13;
      *v10 = v11;
      *(v10 + 16) = *v22;
      *(v10 + 23) = *&v22[7];
      *(v10 + 31) = v12;
      do
      {
        v9 += 32;
      }

      while (((*a3)(v9, &v19) & 1) != 0);
      do
      {
        v10 -= 32;
      }

      while (!(*a3)(v10, &v19));
    }

    while (v9 < v10);
  }

  if ((v9 - 32) == a1)
  {
    v16 = *(v9 - 1);
    *(v9 - 32) = v19;
    v14 = v9 - 24;
    if (v16 < 0)
    {
      operator delete(*v14);
    }
  }

  else
  {
    *a1 = *(v9 - 32);
    if (*(a1 + 31) < 0)
    {
      operator delete(a1[1]);
    }

    v14 = v9 - 24;
    v15 = *(v9 - 24);
    a1[3] = *(v9 - 8);
    *(a1 + 1) = v15;
    *(v9 - 1) = 0;
    *(v9 - 24) = 0;
    *(v9 - 32) = v19;
  }

  v17 = v20;
  *(v14 + 16) = v21;
  *v14 = v17;
  return v9 - 32;
}

void sub_21C483524(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16)
{
  if (a16 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

BOOL std::__insertion_sort_incomplete[abi:ne200100]<std::_ClassicAlgPolicy,BOOL (*&)(TextureInfo const&,TextureInfo const&),TextureInfo*>(uint64_t a1, uint64_t a2, uint64_t (**a3)(__int128 *, __int128 *))
{
  v31 = *MEMORY[0x277D85DE8];
  v6 = (a2 - a1) >> 5;
  if (v6 > 2)
  {
    switch(v6)
    {
      case 3:
        std::__sort3[abi:ne200100]<std::_ClassicAlgPolicy,BOOL (*&)(TextureInfo const&,TextureInfo const&),TextureInfo*,0>(a1, (a1 + 32), a2 - 32, a3);
        break;
      case 4:
        std::__sort3[abi:ne200100]<std::_ClassicAlgPolicy,BOOL (*&)(TextureInfo const&,TextureInfo const&),TextureInfo*,0>(a1, (a1 + 32), a1 + 64, a3);
        if ((*a3)((a2 - 32), (a1 + 64)))
        {
          v21 = *(a1 + 64);
          *(a1 + 72) = 0;
          v29[0] = *(a1 + 80);
          *(v29 + 7) = *(a1 + 87);
          v22 = *(a1 + 95);
          *(a1 + 88) = 0;
          *(a1 + 80) = 0;
          *(a1 + 64) = *(a2 - 32);
          v23 = *(a2 - 24);
          *(a1 + 88) = *(a2 - 8);
          *(a1 + 72) = v23;
          *(a2 - 32) = v21;
          *(a2 - 9) = *(v29 + 7);
          *(a2 - 16) = v29[0];
          *(a2 - 1) = v22;
          if ((*a3)((a1 + 64), (a1 + 32)))
          {
            v29[0] = *(a1 + 48);
            *(v29 + 7) = *(a1 + 55);
            v24 = *(a1 + 63);
            v25 = *(a1 + 32);
            *(a1 + 32) = *(a1 + 64);
            *(a1 + 56) = *(a1 + 88);
            *(a1 + 40) = *(a1 + 72);
            *(a1 + 64) = v25;
            *(a1 + 80) = v29[0];
            *(a1 + 87) = *(v29 + 7);
            *(a1 + 95) = v24;
            if ((*a3)((a1 + 32), a1))
            {
              v29[0] = *(a1 + 16);
              *(v29 + 7) = *(a1 + 23);
              v26 = *(a1 + 31);
              v27 = *a1;
              *a1 = *(a1 + 32);
              *(a1 + 24) = *(a1 + 56);
              *(a1 + 8) = *(a1 + 40);
              *(a1 + 32) = v27;
              *(a1 + 48) = v29[0];
              *(a1 + 55) = *(v29 + 7);
              *(a1 + 63) = v26;
            }
          }
        }

        return 1;
      case 5:
        std::__sort5[abi:ne200100]<std::_ClassicAlgPolicy,BOOL (*&)(TextureInfo const&,TextureInfo const&),TextureInfo*,0>(a1, a1 + 32, a1 + 64, a1 + 96, a2 - 32, a3);
        break;
      default:
        goto LABEL_11;
    }

    return 1;
  }

  if (v6 < 2)
  {
    return 1;
  }

  if (v6 == 2)
  {
    if ((*a3)((a2 - 32), a1))
    {
      v29[0] = *(a1 + 16);
      *(v29 + 7) = *(a1 + 23);
      v7 = *(a1 + 31);
      v8 = *a1;
      *(a1 + 16) = 0;
      *(a1 + 24) = 0;
      *(a1 + 8) = 0;
      *a1 = *(a2 - 32);
      v9 = *(a2 - 24);
      *(a1 + 24) = *(a2 - 8);
      *(a1 + 8) = v9;
      *(a2 - 32) = v8;
      *(a2 - 9) = *(v29 + 7);
      *(a2 - 16) = v29[0];
      *(a2 - 1) = v7;
    }

    return 1;
  }

LABEL_11:
  v10 = (a1 + 64);
  std::__sort3[abi:ne200100]<std::_ClassicAlgPolicy,BOOL (*&)(TextureInfo const&,TextureInfo const&),TextureInfo*,0>(a1, (a1 + 32), a1 + 64, a3);
  v11 = a1 + 96;
  if (a1 + 96 == a2)
  {
    return 1;
  }

  v12 = 0;
  v13 = 0;
  while (1)
  {
    if ((*a3)(v11, v10))
    {
      v29[0] = *v11;
      *&v29[1] = *(v11 + 8);
      v30 = *(v11 + 24);
      *(v11 + 8) = 0;
      *(v11 + 16) = 0;
      *(v11 + 24) = 0;
      v14 = v12;
      do
      {
        v15 = v14;
        v16 = a1 + v14;
        *(a1 + v14 + 96) = *(a1 + v14 + 64);
        if (*(a1 + v14 + 127) < 0)
        {
          operator delete(*(v16 + 104));
        }

        *(v16 + 104) = *(v16 + 72);
        *(v16 + 120) = *(v16 + 88);
        *(v16 + 95) = 0;
        *(v16 + 72) = 0;
        if (v15 == -64)
        {
          *a1 = v29[0];
          goto LABEL_22;
        }

        v17 = (*a3)(v29, (a1 + v15 + 32));
        v14 = v15 - 32;
      }

      while ((v17 & 1) != 0);
      v18 = a1 + v14;
      v19 = *(v18 + 127);
      *(v18 + 96) = v29[0];
      if (v19 < 0)
      {
        operator delete(*(v18 + 104));
      }

LABEL_22:
      v20 = a1 + v15;
      *(v20 + 72) = *&v29[1];
      *(v20 + 88) = v30;
      if (++v13 == 8)
      {
        return v11 + 32 == a2;
      }
    }

    v10 = v11;
    v12 += 32;
    v11 += 32;
    if (v11 == a2)
    {
      return 1;
    }
  }
}

uint64_t std::__partial_sort_impl[abi:ne200100]<std::_ClassicAlgPolicy,BOOL (*&)(TextureInfo const&,TextureInfo const&),TextureInfo*,TextureInfo*>(uint64_t a1, uint64_t a2, uint64_t a3, unsigned int (**a4)(uint64_t, uint64_t), __n128 a5)
{
  if (a1 != a2)
  {
    v7 = a2;
    v9 = (a2 - a1) >> 5;
    if (v9 >= 2)
    {
      v10 = (v9 - 2) >> 1;
      v11 = v10 + 1;
      v12 = (a1 + 32 * v10);
      do
      {
        a5 = std::__sift_down[abi:ne200100]<std::_ClassicAlgPolicy,BOOL (*&)(TextureInfo const&,TextureInfo const&),TextureInfo*>(a1, a4, v9, v12);
        v12 -= 4;
        --v11;
      }

      while (v11);
    }

    v13 = v7;
    if (v7 != a3)
    {
      v13 = v7;
      do
      {
        if ((*a4)(v13, a1, a5))
        {
          *&v19 = *(v13 + 16);
          *(&v19 + 7) = *(v13 + 23);
          v14 = *(v13 + 31);
          v15 = *v13;
          *(v13 + 16) = 0;
          *(v13 + 24) = 0;
          *(v13 + 8) = 0;
          *v13 = *a1;
          v16 = *(a1 + 8);
          *(v13 + 24) = *(a1 + 24);
          *(v13 + 8) = v16;
          *a1 = v15;
          *(a1 + 23) = *(&v19 + 7);
          *(a1 + 16) = v19;
          *(a1 + 31) = v14;
          a5 = std::__sift_down[abi:ne200100]<std::_ClassicAlgPolicy,BOOL (*&)(TextureInfo const&,TextureInfo const&),TextureInfo*>(a1, a4, v9, a1);
        }

        v13 += 32;
      }

      while (v13 != a3);
    }

    if (v9 >= 2)
    {
      do
      {
        std::__pop_heap[abi:ne200100]<std::_ClassicAlgPolicy,BOOL (*)(TextureInfo const&,TextureInfo const&),TextureInfo*>(a1, v7, a4, v9);
        v7 -= 32;
      }

      while (v9-- > 2);
    }

    return v13;
  }

  return a3;
}

__n128 std::__sift_down[abi:ne200100]<std::_ClassicAlgPolicy,BOOL (*&)(TextureInfo const&,TextureInfo const&),TextureInfo*>(uint64_t a1, unsigned int (**a2)(uint64_t, uint64_t), uint64_t a3, uint64_t *a4)
{
  v4 = a3 - 2;
  if (a3 >= 2)
  {
    v5 = a4;
    v7 = v4 >> 1;
    if ((v4 >> 1) >= (a4 - a1) >> 5)
    {
      v10 = (a4 - a1) >> 4;
      v11 = v10 + 1;
      v12 = (a1 + 32 * (v10 + 1));
      v13 = v10 + 2;
      if (v10 + 2 < a3 && (*a2)(v12, (v12 + 4)))
      {
        v12 += 4;
        v11 = v13;
      }

      if (((*a2)(v12, v5) & 1) == 0)
      {
        v19 = *v5;
        v20 = *(v5 + 1);
        v21 = v5[3];
        v5[1] = 0;
        v5[2] = 0;
        v5[3] = 0;
        do
        {
          v15 = v12;
          *v5 = *v12;
          if (*(v5 + 31) < 0)
          {
            operator delete(v5[1]);
          }

          v16 = *(v12 + 1);
          v5[3] = v12[3];
          *(v5 + 1) = v16;
          *(v12 + 31) = 0;
          *(v12 + 8) = 0;
          if (v7 < v11)
          {
            *v12 = v19;
            goto LABEL_20;
          }

          v17 = (2 * v11) | 1;
          v12 = (a1 + 32 * v17);
          v11 = 2 * v11 + 2;
          if (v11 >= a3)
          {
            v11 = v17;
          }

          else if ((*a2)(a1 + 32 * v17, (v12 + 4)))
          {
            v12 += 4;
          }

          else
          {
            v11 = v17;
          }

          v5 = v15;
        }

        while (!(*a2)(v12, &v19));
        v18 = *(v15 + 31);
        *v15 = v19;
        if (v18 < 0)
        {
          operator delete(v15[1]);
        }

LABEL_20:
        result = v20;
        v15[3] = v21;
        *(v15 + 1) = result;
      }
    }
  }

  return result;
}

void sub_21C483C74(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void std::__pop_heap[abi:ne200100]<std::_ClassicAlgPolicy,BOOL (*)(TextureInfo const&,TextureInfo const&),TextureInfo*>(uint64_t a1, uint64_t a2, unsigned int (**a3)(uint64_t, uint64_t), uint64_t a4)
{
  if (a4 >= 2)
  {
    v8 = *a1;
    v7 = *(a1 + 8);
    *v13 = *(a1 + 16);
    *&v13[7] = *(a1 + 23);
    v9 = *(a1 + 31);
    *(a1 + 16) = 0;
    *(a1 + 24) = 0;
    *(a1 + 8) = 0;
    v10 = std::__floyd_sift_down[abi:ne200100]<std::_ClassicAlgPolicy,BOOL (*&)(TextureInfo const&,TextureInfo const&),TextureInfo*>(a1, a3, a4);
    v11 = v10;
    if (v10 == a2 - 32)
    {
      *v10 = v8;
      if (*(v10 + 31) < 0)
      {
        operator delete(*(v10 + 8));
      }

      *(v11 + 8) = v7;
      *(v11 + 16) = *v13;
      *(v11 + 23) = *&v13[7];
      *(v11 + 31) = v9;
    }

    else
    {
      *v10 = *(a2 - 32);
      if (*(v10 + 31) < 0)
      {
        operator delete(*(v10 + 8));
      }

      v12 = *(a2 - 24);
      *(v11 + 24) = *(a2 - 8);
      *(v11 + 8) = v12;
      *(a2 - 32) = v8;
      *(a2 - 24) = v7;
      *(a2 - 16) = *v13;
      *(a2 - 9) = *&v13[7];
      *(a2 - 1) = v9;
      std::__sift_up[abi:ne200100]<std::_ClassicAlgPolicy,BOOL (*&)(TextureInfo const&,TextureInfo const&),TextureInfo*>(a1, v11 + 32, a3, (v11 + 32 - a1) >> 5);
    }
  }
}

void sub_21C483DCC(_Unwind_Exception *exception_object)
{
  if (v2 < 0)
  {
    operator delete(v1);
  }

  _Unwind_Resume(exception_object);
}

uint64_t std::__floyd_sift_down[abi:ne200100]<std::_ClassicAlgPolicy,BOOL (*&)(TextureInfo const&,TextureInfo const&),TextureInfo*>(uint64_t a1, unsigned int (**a2)(uint64_t, uint64_t), uint64_t a3)
{
  v6 = 0;
  v7 = (a3 - 2) / 2;
  do
  {
    v8 = a1 + 32 * v6;
    v9 = v8 + 32;
    v10 = 2 * v6;
    v6 = (2 * v6) | 1;
    v11 = v10 + 2;
    if (v10 + 2 < a3)
    {
      v12 = v8 + 64;
      if ((*a2)(v8 + 32, v8 + 64))
      {
        v9 = v12;
        v6 = v11;
      }
    }

    *a1 = *v9;
    if (*(a1 + 31) < 0)
    {
      operator delete(*(a1 + 8));
    }

    v13 = *(v9 + 8);
    *(a1 + 24) = *(v9 + 24);
    *(a1 + 8) = v13;
    *(v9 + 31) = 0;
    *(v9 + 8) = 0;
    a1 = v9;
  }

  while (v6 <= v7);
  return v9;
}

double std::__sift_up[abi:ne200100]<std::_ClassicAlgPolicy,BOOL (*&)(TextureInfo const&,TextureInfo const&),TextureInfo*>(uint64_t a1, uint64_t a2, uint64_t (**a3)(uint64_t, uint64_t *), uint64_t a4)
{
  v4 = a4 - 2;
  if (a4 >= 2)
  {
    v8 = v4 >> 1;
    v9 = a1 + 32 * (v4 >> 1);
    v10 = a2 - 32;
    if ((*a3)(v9, (a2 - 32)))
    {
      v15 = *(a2 - 32);
      v16 = *(a2 - 24);
      v17 = *(a2 - 8);
      *(a2 - 24) = 0;
      *(a2 - 16) = 0;
      *(a2 - 8) = 0;
      do
      {
        v12 = v9;
        *v10 = *v9;
        if (*(v10 + 31) < 0)
        {
          operator delete(*(v10 + 8));
        }

        v13 = *(v9 + 8);
        *(v10 + 24) = *(v9 + 24);
        *(v10 + 8) = v13;
        *(v9 + 31) = 0;
        *(v9 + 8) = 0;
        if (!v8)
        {
          *v9 = v15;
          goto LABEL_11;
        }

        v8 = (v8 - 1) >> 1;
        v9 = a1 + 32 * v8;
        v10 = v12;
      }

      while (((*a3)(v9, &v15) & 1) != 0);
      v14 = *(v12 + 31);
      *v12 = v15;
      if (v14 < 0)
      {
        operator delete(*(v12 + 8));
      }

LABEL_11:
      result = *&v16;
      *(v12 + 8) = v16;
      *(v12 + 24) = v17;
    }
  }

  return result;
}

void sub_21C483FDC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_21C484060(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    std::shared_ptr<MaxRectTexturePacker>::shared_ptr[abi:ne200100]<MaxRectTexturePacker,0>(v1);
  }

  _Unwind_Resume(exception_object);
}

void std::__shared_ptr_pointer<MaxRectTexturePacker *,std::shared_ptr<MaxRectTexturePacker>::__shared_ptr_default_delete<MaxRectTexturePacker,MaxRectTexturePacker>,std::allocator<MaxRectTexturePacker>>::~__shared_ptr_pointer(std::__shared_weak_count *a1)
{
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x21CF0A160);
}

uint64_t std::__shared_ptr_pointer<MaxRectTexturePacker *,std::shared_ptr<MaxRectTexturePacker>::__shared_ptr_default_delete<MaxRectTexturePacker,MaxRectTexturePacker>,std::allocator<MaxRectTexturePacker>>::__on_zero_shared(uint64_t a1)
{
  result = *(a1 + 24);
  if (result)
  {
    return (*(*result + 8))();
  }

  return result;
}

uint64_t std::__shared_ptr_pointer<MaxRectTexturePacker *,std::shared_ptr<MaxRectTexturePacker>::__shared_ptr_default_delete<MaxRectTexturePacker,MaxRectTexturePacker>,std::allocator<MaxRectTexturePacker>>::__get_deleter(uint64_t a1, uint64_t a2)
{
  {
    return a1;
  }

  else
  {
    return 0;
  }
}

void SKCSpriteNode::SKCSpriteNode(SKCSpriteNode *this)
{
  SKCNode::SKCNode(this);
  *v1 = &unk_282E17900;
  *(v1 + 560) = 0;
  *(v1 + 568) = 0;
  *(v1 + 576) = xmmword_21C4B9CD0;
  *(v1 + 592) = 0u;
  *(v1 + 608) = 0u;
  *(v1 + 624) = 2;
  *(v1 + 632) = 0;
}

void SKCSpriteNode::getBatchInfo(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  *a3 = 0;
  *(a3 + 4) = 0x300000000;
  *(a3 + 16) = 0u;
  v6 = (a3 + 16);
  *(a3 + 32) = 0u;
  *(a3 + 48) = 0u;
  *(a3 + 60) = 0u;
  *(a3 + 4) = (**a1)(a1);
  BackingBlendMode = SKBlendModeGetBackingBlendMode(*(a1 + 288));
  *(a3 + 8) = 0x100000003;
  *(a3 + 12) = BackingBlendMode;
  *(a3 + 24) = *(a2 + 168);
  v8 = *(a1 + 560);
  *(a3 + 68) = v8;
  if (v8)
  {
    v16 = 0uLL;
    SKCNode::resolveWorldPositionRotationAndScale(a1, 0, &v16, 0);
    *(a3 + 72) = DWORD2(v16);
  }

  v9 = *(a1 + 600);
  if (v9)
  {
    [v9 _backingTexture];
    v10 = *(&v16 + 1);
    *(a3 + 32) = v16;
    if (v10)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v10);
    }

    v11 = [*(a1 + 600) filteringMode];
    v12 = 464;
    if (v11 == 1)
    {
      v12 = 480;
    }

    *(a3 + 48) = *(a2 + v12);
  }

  v13 = *(a1 + 608);
  if (v13)
  {
    [v13 _backingTexture];
    v14 = *(&v16 + 1);
    *(a3 + 40) = v16;
    if (v14)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v14);
    }
  }

  v15 = *(a1 + 592);
  if (v15)
  {
    if ((*(a2 + 581) & 1) == 0)
    {
      *v6 = v15;
    }
  }
}

void SKCSpriteNode::setWarpGeometry(id *this, SKWarpGeometry *a2)
{
  v5 = a2;
  objc_storeStrong(this + 77, a2);
  v4 = this[33];
  this[32] = 0;
  this[33] = 0;
  if (v4)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v4);
  }

  SKCNode::setDirty(this);
}

uint64_t SKCSpriteNode::getMaxBatchRenderElementCount(uint64_t a1)
{
  v2 = *(a1 + 616);
  if (v2)
  {
    if (([v2 isIdentityWarp] & 1) == 0)
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v3 = *(a1 + 616);
        v4 = [v3 numberOfColumns];
        v5 = ([v3 numberOfRows] * v4);
        v6 = (exp2((*(a1 + 624) + 1) + (*(a1 + 624) + 1)) * v5);

        return v6;
      }
    }

    v7 = *(a1 + 616);
    if (v7 && ![v7 isIdentityWarp])
    {
      return 4;
    }
  }

  v8 = *(a1 + 576);
  v9 = vmovn_s32(vcgtq_f32(xmmword_21C4B9CD0, v8));
  v8.i32[0] = vmovn_s32(vcgtq_f32(v8, xmmword_21C4B9CD0)).u32[0];
  v8.i32[1] = v9.i32[1];
  if ((vaddvq_s32(vandq_s8(vmovl_s16(*v8.f32), xmmword_21C4B90D0)) & 0xF) != 0)
  {
    return 36;
  }

  else
  {
    return 4;
  }
}

BOOL SKCSpriteNode::needsNinePart(float32x4_t *this)
{
  v2 = this[38].i64[1];
  result = 0;
  if (!v2 || [v2 isIdentityWarp])
  {
    v3 = this[36];
    v4 = vmovn_s32(vcgtq_f32(xmmword_21C4B9CD0, v3));
    v3.i32[0] = vmovn_s32(vcgtq_f32(v3, xmmword_21C4B9CD0)).u32[0];
    v3.i32[1] = v4.i32[1];
    if (vmaxv_u16(*v3.f32))
    {
      return 1;
    }
  }

  return result;
}

BOOL SKCSpriteNode::canAppendToCurrentBatch(uint64_t a1, uint64_t a2)
{
  if (*(a2 + 592) != 3)
  {
    return 0;
  }

  v4 = *(a2 + 596);
  if (v4 != SKBlendModeGetBackingBlendMode(*(a1 + 288)) || *(a2 + 608) != *(a2 + 168) || *(a2 + 600) != *(a1 + 592) || *(a2 + 652) != *(a1 + 560))
  {
    return 0;
  }

  v5 = *(a1 + 600);
  if (v5)
  {
    [v5 _backingTexture];
    v6 = v14;
  }

  else
  {
    v6 = 0;
    v14 = 0;
    v15 = 0;
  }

  if (*(a2 + 616) == v6)
  {
    v9 = *(a1 + 608);
    if (v9)
    {
      [v9 _backingTexture];
      v10 = v12;
    }

    else
    {
      v10 = 0;
      v12 = 0;
      v13 = 0;
    }

    v7 = 0;
    if (*(a2 + 624) == v10)
    {
      if (!*(a2 + 652) || (v11 = 0uLL, SKCNode::resolveWorldPositionRotationAndScale(a1, 0, &v11, 0), *(a2 + 656) == *(&v11 + 2)))
      {
        v7 = 1;
      }
    }

    if (v13)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v13);
    }
  }

  else
  {
    v7 = 0;
  }

  if (v15)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v15);
  }

  return v7;
}

void sub_21C48464C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, std::__shared_weak_count *a12, uint64_t a13, std::__shared_weak_count *a14)
{
  if (a12)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a12);
  }

  if (a14)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a14);
  }

  _Unwind_Resume(exception_object);
}

void SKCSpriteNode::outline(SKCSpriteNode *this@<X0>, void *a2@<X8>)
{
  v44[1] = *MEMORY[0x277D85DE8];
  v4 = *(this + 32);
  if (v4)
  {
    v5 = *(this + 33);
    *a2 = v4;
    a2[1] = v5;
    if (v5)
    {
      atomic_fetch_add_explicit((v5 + 8), 1uLL, memory_order_relaxed);
    }

    return;
  }

  v6 = *(this + 75);
  if (!v6)
  {
    *a2 = 0;
    a2[1] = 0;
    return;
  }

  v7 = *(this + 77);
  if (v7)
  {
    if (![v7 isIdentityWarp])
    {
      *&v12 = (*(*this + 104))(this);
      v37 = v13;
      v39 = v12;
      v35 = v15;
      v36 = v14;
      v16 = MEMORY[0x277D860B8];
      v17 = *(MEMORY[0x277D860B8] + 16);
      *(this + 24) = *MEMORY[0x277D860B8];
      *(this + 25) = v17;
      v18 = *(v16 + 48);
      *(this + 26) = *(v16 + 32);
      *(this + 27) = v18;
      v40 = (*(*this + 120))(this);
      v33 = v20;
      v34 = v19;
      v21 = objc_opt_new();
      v43 = @"doNotRenderChildNodes";
      v44[0] = MEMORY[0x277CBEC38];
      v22 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v44 forKeys:&v43 count:1];
      v23 = [v21 textureFromNode:*(this + 1) withOptions:v22];
      v24 = *(this + 79);
      *(this + 79) = v23;

      *(this + 24) = v39;
      *(this + 25) = v37;
      *(this + 26) = v36;
      *(this + 27) = v35;
      v25 = *(this + 79);

      HIDWORD(v9) = DWORD1(v33);
      v38 = COERCE_DOUBLE(vadd_f32(__PAIR64__(DWORD1(v33), v34), __PAIR64__(DWORD1(v33), v34)));
      HIDWORD(v11) = HIDWORD(v40);
      v10 = HIDWORD(v40);
      v8 = v25;
      goto LABEL_11;
    }

    v6 = *(this + 75);
  }

  v8 = v6;
  v38 = *(this + 42);
  v10 = 0;
  HIDWORD(v11) = 0;
  v40 = 0.0;
LABEL_11:
  LODWORD(v11) = 998277249;
  LODWORD(v9) = 1.0;
  v26 = [SKPhysicsGrid gridFromTexture:v8 alphaThreshold:v11 accuracy:v9, v33, v34];
  v29 = v26;
  if (v26)
  {
    LODWORD(v28) = HIDWORD(v38);
    LODWORD(v27) = v10;
    [v26 pathFromOutlineWithSmoothingThreshold:1.0 bounds:{v40, v27, v38, v28}];
    v31 = v41;
    v30 = v42;
  }

  else
  {
    v30 = 0;
    v31 = 0;
  }

  v32 = *(this + 33);
  *(this + 32) = v31;
  *(this + 33) = v30;
  if (v32)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v32);
    v30 = *(this + 33);
  }

  *a2 = *(this + 32);
  a2[1] = v30;
  if (v30)
  {
    atomic_fetch_add_explicit((v30 + 8), 1uLL, memory_order_relaxed);
  }
}

double SKCSpriteNode::getBoundingBox(SKCSpriteNode *this)
{
  v36 = unk_21C4B92F0;
  *v2.i64 = (*(*this + 104))(this);
  v34 = v5;
  v35 = v2;
  v6 = *(this + 77);
  if (v6 && (v32 = v4, v33 = v3, v7 = [v6 isIdentityWarp], v4 = v32, v3 = v33, (v7 & 1) == 0))
  {
    objc_opt_class();
    isKindOfClass = objc_opt_isKindOfClass();
    v4 = v32;
    v3 = v33;
    v12 = *algn_21C4B92D0;
    v15 = xmmword_21C4B92E0;
    v11 = SKCBoundingBoxEmpty;
    if (isKindOfClass)
    {
      v19 = *(this + 77);
      v20 = [v19 destPositions];
      v21 = 0;
      v22 = 0x80000000800000;
      v23 = vneg_f32(0x80000000800000);
      while ([v19 vertexCount] > v21)
      {
        v24 = *(v20 + 8 * v21);
        v23 = vminnm_f32(v23, v24);
        v22 = vmaxnm_f32(v22, v24);
        ++v21;
      }

      v26 = *(this + 21);
      v25 = *(this + 22);
      *v27.f32 = vmul_f32(vsub_f32(v23, *&v25), *&v26);
      *&v27.u32[2] = vsub_f32(vmul_f32(vsub_f32(v22, *&v25), *&v26), *v27.f32);
      *&v28 = SKCBoundingBoxMake(v27);
      v37 = v28;
      v38 = v29;
      v39 = v30;
      v36 = v31;

      v4 = v32;
      v3 = v33;
      v12 = v38;
      v15 = v39;
      v11 = v37;
    }
  }

  else
  {
    v8.i64[0] = 0x3F0000003F000000;
    v8.i64[1] = 0x3F0000003F000000;
    v9 = *(this + 21);
    *&v11 = vmulq_f32(vsubq_f32(v8, *(this + 22)), v9).u64[0];
    v10 = *algn_21C4B92D0;
    *(&v11 + 1) = *(&SKCBoundingBoxEmpty + 1);
    *&v10 = 0.5 * v9.f32[0];
    v12 = v10;
    v13 = vmuls_lane_f32(0.5, *v9.f32, 1);
    v14 = xmmword_21C4B92E0;
    *(&v14 + 1) = v13;
    v15 = v14;
  }

  v16 = 0;
  v40[0] = v11;
  v40[1] = v12;
  v40[2] = v15;
  v40[3] = v36;
  do
  {
    *(&v41 + v16 * 16) = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v35, COERCE_FLOAT(v40[v16])), v34, *&v40[v16], 1), v3, v40[v16], 2), v4, v40[v16], 3);
    ++v16;
  }

  while (v16 != 4);
  return *&v41;
}

uint64_t SKCSpriteNode::addBatchRenderElements(SKCSpriteNode *this, float32x4_t *a2)
{
  v130 = *MEMORY[0x277D85DE8];
  v4 = *(this + 77);
  if (!v4 || [v4 isIdentityWarp]) && (v5 = *(this + 36), v6 = vmovn_s32(vcgtq_f32(xmmword_21C4B9CD0, v5)), v5.i32[0] = vmovn_s32(vcgtq_f32(v5, xmmword_21C4B9CD0)).u32[0], v5.i32[1] = v6.i32[1], (vmaxv_u16(*v5.f32)))
  {
    SKCSpriteNode::addBatchRenderElements_NinePart(this, a2);
    return 36;
  }

  else
  {
    v8 = 0uLL;
    __asm { FMOV            V3.4S, #1.0 }

    v14 = *(this + 75);
    v112 = vminnmq_f32(vmaxnmq_f32(*(this + 19), 0), _Q3);
    if (v14)
    {
      v123 = _Q3;
      v15 = *(this + 80);
      [v14 textureRect];
      x = v131.origin.x;
      y = v131.origin.y;
      width = v131.size.width;
      height = v131.size.height;
      MinX = CGRectGetMinX(v131);
      v132.origin.x = x;
      v132.origin.y = y;
      v132.size.width = width;
      v132.size.height = height;
      MaxX = CGRectGetMaxX(v132);
      v133.origin.x = x;
      v133.origin.y = y;
      v133.size.width = width;
      v133.size.height = height;
      MinY = CGRectGetMinY(v133);
      v134.origin.x = x;
      v134.origin.y = y;
      v134.size.width = width;
      v134.size.height = height;
      MaxY = CGRectGetMaxY(v134);
      [*(this + 75) cropOffset];
      v126.x = v24;
      v126.y = v25;
      v26 = sk_vector_make(&v126);
      [*(this + 75) cropScale];
      v126.x = v27;
      v126.y = v28;
      v121 = sk_vector_make(&v126);
      v29 = MinX;
      v110 = v29;
      v30 = MaxX;
      v118 = v30;
      v31 = MinY;
      v32 = *(this + 75);
      v33 = MaxY;
      if (v32)
      {
        [v32 _backingTexture];
        if (*&v126.x && (*(**&v126.x + 24))(*&v126.x) == 1)
        {
          v110 = v110 * (***&v126.x)(*&v126.x);
          v118 = v118 * (***&v126.x)(*&v126.x);
          v31 = v31 * (*(**&v126.x + 8))(*&v126.x);
          v33 = v33 * (*(**&v126.x + 8))(*&v126.x);
        }
      }

      else
      {
        v126.x = 0.0;
        v126.y = 0.0;
      }

      v35 = [*(this + 75) isFlipped];
      v36 = fminf(fmaxf(v15, 0.0), 1.0);
      __asm { FMOV            V0.4S, #-1.0 }

      v38 = vaddq_f32(v112, _Q0);
      __asm { FMOV            V0.4S, #1.0 }

      *v8.f32 = v26;
      __asm { FMOV            V6.2S, #1.0 }

      if (v35)
      {
        v41 = v31;
      }

      else
      {
        v41 = v33;
      }

      v114 = v41;
      if (v35)
      {
        v42 = v33;
      }

      else
      {
        v42 = v31;
      }

      v108 = v42;
      if (*&v126.y)
      {
        v113 = _Q0;
        v119 = v8;
        v116 = v36;
        v105 = _D6;
        v107 = v38;
        std::__shared_weak_count::__release_shared[abi:ne200100](*&v126.y);
        _D6 = v105;
        v38 = v107;
        v36 = v116;
        v8 = v119;
        _Q0 = v113;
      }

      v112 = vmlaq_n_f32(_Q0, v38, v36);
      *v34.f32 = v121;
      _Q3 = v123;
      v34.i64[1] = _D6;
    }

    else
    {
      v108 = 0.0;
      v114 = 1.0;
      v34 = _Q3;
      v118 = 1.0;
      v110 = 0.0;
    }

    v43 = *(this + 21);
    v43.i64[1] = _Q3.i64[1];
    v44.i64[0] = 0x3F0000003F000000;
    v44.i64[1] = 0x3F0000003F000000;
    v124 = *(this + 44);
    v120 = vmulq_f32(v34, v43);
    v122 = vaddq_f32(v8, vdivq_f32(vmulq_f32(vsubq_f32(_Q3, v34), vsubq_f32(v44, v124)), v34));
    v45 = *(this + 77);
    if (v45 && ([v45 isIdentityWarp] & 1) == 0 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
    {
      v46 = *(this + 77);
      v47 = [*(this + 75) isRotated];
      v117 = COERCE_UNSIGNED_INT(v118 - v110);
      v48 = COERCE_DOUBLE(__PAIR64__(LODWORD(v114), LODWORD(v110)));
      v49 = v108 - v114;
      if ((v47 & 1) == 0)
      {
        v49 = v114 - v108;
      }

      v115 = v49;
      if (v47)
      {
        v50 = v48;
      }

      else
      {
        v50 = COERCE_DOUBLE(__PAIR64__(LODWORD(v108), LODWORD(v110)));
      }

      v51 = a2->u32[0];
      *&v52 = a2[1].i64[1] + 16 * v51;
      v125 = (a2[1].i64[0] + 8 * v51);
      v126.x = v52;
      v111 = [v46 numberOfColumns];
      v53 = [v46 numberOfRows];
      v54 = [v46 sourcePositions];
      v55 = [v46 destPositions];
      v103 = v46;
      if (v53 < 1)
      {
        v57 = 0;
      }

      else
      {
        v56 = 0;
        v57 = 0;
        v109 = v53 & 0x7FFFFFFF;
        v104 = 8 * (v111 + 1);
        v106 = v54 + 8;
        v58 = v55 + 8;
        do
        {
          if (v111 <= 0)
          {
            v59 = v56 + 1;
          }

          else
          {
            v59 = v56 + 1;
            v60 = v104 * (v56 + 1);
            v61 = (v106 + v60);
            v62 = v104 * v56;
            v63 = (v106 + v62);
            v64 = (v58 + v60);
            v65 = (v58 + v62);
            v66 = v111 & 0x7FFFFFFF;
            do
            {
              v67.i64[0] = *(v65 - 1);
              v68.i64[0] = *v65;
              v67.i64[1] = 0x3F80000000000000;
              v68.i64[1] = 0x3F80000000000000;
              v70.i64[0] = *(v64 - 1);
              v69.i64[0] = *v64;
              v69.i64[1] = 0x3F80000000000000;
              v70.i64[1] = 0x3F80000000000000;
              v71 = a2[2];
              v72 = a2[3];
              v73 = a2[4];
              v74 = a2[5];
              v75 = vmulq_f32(v120, vaddq_f32(v122, vsubq_f32(v67, v124)));
              v76 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v71, v75.f32[0]), v72, *v75.f32, 1), v73, v75, 2), v74, v75, 3);
              v77 = vmulq_f32(v120, vaddq_f32(v122, vsubq_f32(v68, v124)));
              v78 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v71, v77.f32[0]), v72, *v77.f32, 1), v73, v77, 2), v74, v77, 3);
              v79 = vmulq_f32(v120, vaddq_f32(v122, vsubq_f32(v69, v124)));
              v80 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v71, v79.f32[0]), v72, *v79.f32, 1), v73, v79, 2), v74, v79, 3);
              v81 = vmulq_f32(v120, vaddq_f32(v122, vsubq_f32(v70, v124)));
              add_subdivs(&v126, &v125, *(this + 156), v76, v78, v80, vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v71, v81.f32[0]), v72, *v81.f32, 1), v73, v81, 2), v74, v81, 3), vmla_lane_f32(vmla_n_f32(*&v50, v117, COERCE_FLOAT(*&v63[-1])), __PAIR64__(LODWORD(v115), 0), v63[-1], 1), vmla_lane_f32(vmla_n_f32(*&v50, v117, COERCE_FLOAT(*v63)), __PAIR64__(LODWORD(v115), 0), *v63, 1), vmla_lane_f32(vmla_n_f32(*&v50, v117, COERCE_FLOAT(*v61)), __PAIR64__(LODWORD(v115), 0), *v61, 1), COERCE_DOUBLE(vmla_lane_f32(vmla_n_f32(*&v50, v117, COERCE_FLOAT(*&v61[-1])), __PAIR64__(LODWORD(v115), 0), v61[-1], 1)));
              v57 += v82;
              ++v61;
              ++v63;
              ++v64;
              ++v65;
              --v66;
            }

            while (v66);
          }

          v56 = v59;
        }

        while (v59 != v109);
      }
    }

    else
    {
      v83 = 0;
      v126 = xmmword_21C4B9CF0;
      v127 = unk_21C4B9D00;
      v128 = xmmword_21C4B9D10;
      v129 = unk_21C4B9D20;
      v84 = a2[2];
      v85 = a2[3];
      v86 = a2[4];
      v87 = a2[5];
      do
      {
        v88 = vmulq_f32(v120, vaddq_f32(v122, vsubq_f32(*(&v126 + v83), v124)));
        *(&v126 + v83) = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v84, v88.f32[0]), v85, *v88.f32, 1), v86, v88, 2), v87, v88, 3);
        v83 += 16;
      }

      while (v83 != 64);
      v89 = a2[1].i64[1] + 16 * a2->u32[0];
      *v89 = v126;
      *(v89 + 16) = v127;
      *(v89 + 32) = v128;
      *(v89 + 48) = v129;
      v90 = a2[1].i64[0];
      v91 = a2->u32[0];
      v92 = [*(this + 75) isRotated];
      v93 = __PAIR64__(LODWORD(v108), LODWORD(v118));
      v94 = __PAIR64__(LODWORD(v114), LODWORD(v110));
      v95 = __PAIR64__(LODWORD(v108), LODWORD(v110));
      v96 = (v90 + 8 * v91);
      if (v92)
      {
        v97 = __PAIR64__(LODWORD(v114), LODWORD(v110));
        v94 = __PAIR64__(LODWORD(v114), LODWORD(v118));
      }

      else
      {
        v97 = __PAIR64__(LODWORD(v108), LODWORD(v110));
        v95 = __PAIR64__(LODWORD(v108), LODWORD(v118));
        v93 = __PAIR64__(LODWORD(v114), LODWORD(v118));
      }

      *v96 = v97;
      v96[1] = v95;
      v57 = 4;
      v96[2] = v93;
      v96[3] = v94;
    }

    if (v57)
    {
      v98 = 0;
      v99 = a2->i64[1] + 4 * a2->u32[0];
      result = v57;
      v100 = v112;
      v100.i32[3] = 1.0;
      v101 = vmovn_s32(vcvtq_s32_f32(vmulq_f32(vmulq_n_f32(v100, fminf(fmaxf(vmuls_lane_f32(*(this + 81), v112, 3) * a2[6].f32[0], 0.0), 1.0)), vdupq_n_s32(0x437F0000u))));
      v102 = vuzp1_s8(v101, v101).u32[0];
      do
      {
        *(v99 + 4 * v98++) = v102;
      }

      while (v57 != v98);
    }

    else
    {
      return 0;
    }
  }

  return result;
}

uint64_t SKCSpriteNode::addBatchRenderElements_NinePart(uint64_t a1, float32x4_t *a2)
{
  v127[4] = *MEMORY[0x277D85DE8];
  v4 = *(a1 + 576);
  v5 = 0uLL;
  v127[0] = 0;
  v127[1] = v4.i64[0];
  v127[2] = vadd_f32(*v4.f32, *&vextq_s8(v4, v4, 8uLL));
  __asm { FMOV            V0.2S, #1.0 }

  v123 = *&_D0;
  *&v127[3] = _D0;
  v10 = *(a1 + 544);
  v11 = *(a1 + 600);
  if (v11)
  {
    LODWORD(_D0) = v10.i32[1];
    if (v10.f32[0] == 1.0 && v10.f32[1] == 1.0)
    {
      v116 = v4;
      v119 = v10;
      [v11 size];
      v13 = *(a1 + 336);
      if (v14 == v13)
      {
        [*(a1 + 600) size];
        if (v15 == *(a1 + 340))
        {
          v4 = v116;
          v10 = v119;
          goto LABEL_11;
        }

        v13 = *(a1 + 336);
      }

      [*(a1 + 600) size];
      *&v16 = v13 / v16;
      v17 = v119;
      v17.i32[0] = LODWORD(v16);
      v120 = v17;
      v18 = *(a1 + 340);
      [*(a1 + 600) size];
      v4 = v116;
      v10 = v120;
      v20 = v18 / v19;
      v10.f32[1] = v20;
LABEL_11:
      v5 = 0uLL;
    }
  }

  v21 = vzip2q_s64(v4, v5);
  v4.i64[1] = 0;
  v22 = *(a1 + 336);
  v23 = vmulq_f32(v10, v22);
  v24 = vmul_f32(*v22.f32, vsub_f32(v123, *(a1 + 584)));
  v25 = vdivq_f32(v22, v23);
  v26 = vcgt_f32(v24, *v23.f32);
  if ((v26.i32[0] | v26.i32[1]))
  {
    v27 = vdiv_f32(*v23.f32, v24);
    __asm { FMOV            V3.2S, #1.0 }

    v29 = vminnm_f32(v27, _D3);
    v30 = vextq_s8(v25, v25, 8uLL).u64[0];
    *v25.f32 = vmul_f32(*v25.f32, v29);
    v25.i64[1] = v30;
  }

  v126[0] = 0u;
  v126[1] = vmulq_f32(v4, v25);
  __asm { FMOV            V3.4S, #1.0 }

  v126[2] = vmlsq_f32(_Q3, v25, vsubq_f32(_Q3, vaddq_f32(v4, v21)));
  v126[3] = _Q3;
  v113 = vminnmq_f32(vmaxnmq_f32(*(a1 + 304), 0), _Q3);
  v115 = _Q3;
  v32 = *(a1 + 600);
  if (v32)
  {
    v33 = *(a1 + 320);
    [v32 textureRect];
    x = v128.origin.x;
    y = v128.origin.y;
    width = v128.size.width;
    height = v128.size.height;
    MinX = CGRectGetMinX(v128);
    v129.origin.x = x;
    v129.origin.y = y;
    v129.size.width = width;
    v129.size.height = height;
    MaxX = CGRectGetMaxX(v129);
    v130.origin.x = x;
    v130.origin.y = y;
    v130.size.width = width;
    v130.size.height = height;
    MinY = CGRectGetMinY(v130);
    v131.origin.x = x;
    v131.origin.y = y;
    v131.size.width = width;
    v131.size.height = height;
    MaxY = CGRectGetMaxY(v131);
    [*(a1 + 600) cropOffset];
    __src[0].f64[0] = v42;
    __src[0].f64[1] = v43;
    v44 = sk_vector_make(__src);
    [*(a1 + 600) cropScale];
    __src[0].f64[0] = v45;
    __src[0].f64[1] = v46;
    v47 = sk_vector_make(__src);
    v121 = v47;
    *v47.i32 = MinX;
    v48 = MinY;
    v105 = v47;
    v111 = v48;
    *&v47.i32[1] = v48;
    v117 = v47;
    *v49.i32 = MaxX;
    *v47.i32 = MaxY;
    v106 = *v49.i32;
    v107 = *v47.i32;
    v49.i32[1] = v47.i32[0];
    v109 = v49;
    v50 = *(a1 + 600);
    if (v50)
    {
      [v50 _backingTexture];
      if (*&__src[0].f64[0] && (*(**&__src[0].f64[0] + 24))(*&__src[0].f64[0]) == 1)
      {
        v51 = (***&__src[0].f64[0])(*&__src[0].f64[0]);
        v52 = (***&__src[0].f64[0])(*&__src[0].f64[0]);
        v53 = (*(**&__src[0].f64[0] + 8))(*&__src[0].f64[0]);
        v54 = (*(**&__src[0].f64[0] + 8))(*&__src[0].f64[0]);
        *v55.i32 = v105.f32[0] * v51;
        *&v55.i32[1] = v111 * v53;
        v117 = v55;
        *v55.i32 = v106 * v52;
        *&v55.i32[1] = v107 * v54;
        v109 = v55;
      }
    }

    else
    {
      __src[0] = 0uLL;
    }

    v56 = [*(a1 + 600) isFlipped];
    v57 = fminf(fmaxf(v33, 0.0), 1.0);
    __asm { FMOV            V0.4S, #-1.0 }

    v59 = vaddq_f32(v113, _Q0);
    *_Q0.f32 = v44;
    v112 = _Q0;
    if (v56)
    {
      v60 = -1;
    }

    else
    {
      v60 = 0;
    }

    v61 = vdup_n_s32(v60);
    v62.i32[0] = v117.i32[0];
    v63.i32[0] = v109.i32[0];
    v63.i32[1] = vbsl_s8(v61, v117, v109).i32[1];
    v62.i32[1] = vbsl_s8(v61, v109, v117).i32[1];
    v118 = v62;
    if (*&__src[0].f64[1])
    {
      v114 = v57;
      v108 = v63;
      v110 = v59;
      std::__shared_weak_count::__release_shared[abi:ne200100](*&__src[0].f64[1]);
      v63 = v108;
      v59 = v110;
      v57 = v114;
    }

    v113 = vmlaq_n_f32(v115, v59, v57);
    *v64.f32 = v121;
    *&v64.u32[2] = v123;
    v65 = *(a1 + 600);
    v122 = v64;
    v123 = vsub_f32(v63, v118);
    if (v65 && [v65 isRotated])
    {
      v66 = 0;
      v67 = v125;
      do
      {
        v68 = v66 / 3u;
        v69 = v127[v68];
        LODWORD(v70) = v69;
        HIDWORD(v69) = HIDWORD(v127[2 - v66 % 3u]);
        v71 = v127[v68 + 1];
        HIDWORD(v70) = HIDWORD(v127[(v66 % 3u) ^ 3]);
        HIDWORD(v71) = HIDWORD(v70);
        *(v67 - 2) = v70;
        *(v67 - 1) = v69;
        *v67 = __PAIR64__(HIDWORD(v69), v71);
        v67[1] = v71;
        v67 += 4;
        ++v66;
      }

      while (v66 != 9);
      goto LABEL_33;
    }
  }

  else
  {
    v112 = 0u;
    v118 = 0;
    v122 = _Q3;
  }

  v72 = 0;
  v73 = v125;
  do
  {
    v74 = v72 / 3u;
    v75 = v127[v72 % 3u];
    LODWORD(v76) = v75;
    HIDWORD(v76) = HIDWORD(v127[v74]);
    v77 = v127[(v72 % 3u + 1)];
    LODWORD(v78) = v77;
    HIDWORD(v78) = HIDWORD(v127[v74 + 1]);
    HIDWORD(v77) = HIDWORD(v76);
    HIDWORD(v75) = HIDWORD(v78);
    *(v73 - 2) = v76;
    *(v73 - 1) = v77;
    *v73 = v78;
    v73[1] = v75;
    v73 += 4;
    ++v72;
  }

  while (v72 != 9);
LABEL_33:
  v79 = 0;
  v80 = *(a1 + 336);
  v81 = *(a1 + 352);
  v81.i64[1] = 0;
  v82.i64[0] = 0x3F0000003F000000;
  v82.i64[1] = 0x3F0000003F000000;
  v83 = vaddq_f32(v112, vdivq_f32(vmulq_f32(vsubq_f32(v115, v122), vsubq_f32(v82, v81.u64[0])), v122));
  v84 = &__src[2];
  do
  {
    v85 = v79 / 3u;
    v86 = xmmword_21C4B84C0;
    LODWORD(v86) = v126[v79 % 3u];
    v87 = v86;
    DWORD1(v87) = DWORD1(v126[v85]);
    v88 = xmmword_21C4B84C0;
    LODWORD(v88) = v126[(v79 % 3u + 1)];
    v89 = v88;
    DWORD1(v89) = DWORD1(v126[v85 + 1]);
    DWORD1(v88) = DWORD1(v87);
    DWORD1(v86) = DWORD1(v89);
    v84[-2] = v87;
    v84[-1] = v88;
    *v84 = v89;
    v84[1] = v86;
    v84 += 4;
    ++v79;
  }

  while (v79 != 9);
  v90 = 0;
  v80.i64[1] = v115.i64[1];
  v91 = vmulq_f32(v122, v80);
  v92 = a2[2];
  v93 = a2[3];
  v94 = a2[4];
  v95 = a2[5];
  do
  {
    v96 = vmulq_f32(v91, vaddq_f32(v83, vsubq_f32(__src[v90], v81)));
    __src[v90++] = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v92, v96.f32[0]), v93, *v96.f32, 1), v94, v96, 2), v95, v96, 3);
  }

  while (v90 != 36);
  memcpy((a2[1].i64[1] + 16 * a2->u32[0]), __src, 0x240uLL);
  v97 = 0;
  v98 = a2[1].i64[0] + 8 * a2->u32[0];
  do
  {
    *(v98 + v97 * 8) = vmla_f32(v118, v123, *&__src[36].f64[v97]);
    ++v97;
  }

  while (v97 != 36);
  v99 = 0;
  v100 = a2->i64[1] + 4 * a2->u32[0];
  v101 = v113;
  v101.i32[3] = 1.0;
  v102 = vmovn_s32(vcvtq_s32_f32(vmulq_f32(vmulq_n_f32(v101, fminf(fmaxf(vmuls_lane_f32(*(a1 + 324), v113, 3) * a2[6].f32[0], 0.0), 1.0)), vdupq_n_s32(0x437F0000u))));
  v103 = vuzp1_s8(v102, v102).u32[0];
  do
  {
    *(v100 + v99) = v103;
    v99 += 4;
  }

  while (v99 != 144);
  return 36;
}

void sub_21C485A5C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, std::__shared_weak_count *a30)
{
  if (a30)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a30);
  }

  _Unwind_Resume(exception_object);
}

double add_subdivs(__n128 **a1, double **a2, int a3, float32x4_t a4, float32x4_t a5, float32x4_t a6, float32x4_t a7, float32x2_t a8, float32x2_t a9, float32x2_t a10, double a11)
{
  v15 = a7;
  if (a3)
  {
    v18 = 0;
    v19 = (a3 - 1);
    v52 = vdup_n_s32(0x3C75C28Fu);
    while (1)
    {
      v20 = vaddq_f32(vsubq_f32(a4, a5), vsubq_f32(a6, v15));
      v21 = vmulq_f32(v20, v20);
      v22 = vadd_f32(*v21.i8, *&vextq_s8(v21, v21, 8uLL));
      v23 = vaddq_f32(vsubq_f32(a4, v15), vsubq_f32(a6, a5));
      v24 = vmulq_f32(v23, v23);
      *v24.i8 = vadd_f32(*v24.i8, *&vextq_s8(v24, v24, 8uLL));
      v25 = vcgt_f32(vsqrt_f32(vadd_f32(vzip1_s32(*v24.i8, v22), vzip2_s32(*v24.i8, v22))), v52);
      if (((v25.i32[1] | v25.i32[0]) & 1) == 0)
      {
        break;
      }

      v26.i64[0] = 0x3F0000003F000000;
      v26.i64[1] = 0x3F0000003F000000;
      v27 = vmlaq_f32(a4, v26, vsubq_f32(a5, a4));
      v27.i32[3] = 1.0;
      v28 = v27;
      v29 = vmlaq_f32(a4, v26, vsubq_f32(v15, a4));
      v29.i32[3] = 1.0;
      v54 = v29;
      v30 = vmlaq_f32(a6, v26, vsubq_f32(v15, a6));
      v30.i32[3] = 1.0;
      v55 = v30;
      v31 = vmlaq_f32(v28, v26, vsubq_f32(v30, v28));
      v31.i32[3] = 1.0;
      v56 = v31;
      v32 = vmla_f32(a8, 0x3F0000003F000000, vsub_f32(a9, a8));
      v33 = vmla_f32(a8, 0x3F0000003F000000, vsub_f32(*&a11, a8));
      v34 = COERCE_DOUBLE(vmla_f32(a10, 0x3F0000003F000000, vsub_f32(*&a11, a10)));
      v35 = vmla_f32(v32, 0x3F0000003F000000, vsub_f32(*&v34, v32));
      v36 = add_subdivs(a1, a2, v19);
      v37 = add_subdivs(a1, a2, v19);
      v38 = add_subdivs(a1, a2, v19);
      v39 = v55;
      v40 = v56;
      v41 = v54;
      v15 = a7;
      v18 += v36 + v37 + v38;
      v19 = (v19 - 1);
      *&a10 = v34;
      a9 = v35;
      a8 = v33;
      a6 = v55;
      a5 = v56;
      a4 = v54;
      if (v19 == -1)
      {
        goto LABEL_8;
      }
    }

    v41 = a4;
    v40 = a5;
    v39 = a6;
    v33 = a8;
    v35 = a9;
    v34 = *&a10;
LABEL_8:
    a4 = v41;
    a5 = v40;
    a6 = v39;
    a8 = v33;
    a9 = v35;
    *&a10 = v34;
  }

  v42 = (*a1)++;
  *v42 = a4;
  v43 = (*a1)++;
  *v43 = a5;
  v44 = (*a1)++;
  *v44 = a6;
  v45 = (*a1)++;
  *v45 = v15;
  v46 = (*a2)++;
  *v46 = *&a8;
  v47 = (*a2)++;
  *v47 = *&a9;
  v48 = (*a2)++;
  *v48 = *&a10;
  v49 = (*a2)++;
  result = a11;
  *v49 = a11;
  return result;
}

void SKCSpriteNode::setPrimaryTexture(id *this, SKTexture *a2)
{
  v5 = a2;
  objc_storeStrong(this + 75, a2);
  v4 = this[33];
  this[32] = 0;
  this[33] = 0;
  if (v4)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v4);
  }

  SKCNode::setDirty(this);
}

void SKCSpriteNode::setSecondaryTexture(id *this, SKTexture *a2)
{
  objc_storeStrong(this + 76, a2);

  SKCNode::setDirty(this);
}

void SKCSpriteNode::setShader(id *this, SKShader *a2)
{
  objc_storeStrong(this + 74, a2);
  SKCNode::setDirty(this);

  SKCNode::recomputeFlags(this, 1);
}

void SKCSpriteNode::subclassRecomputeFlags(id *this)
{
  if ([this[74] _usesTimeUniform] && (*(this + 172) & 1) == 0 && (*(this + 171) & 0x60) != 0)
  {

    SKCNode::setFlags(this, 66, 1);
  }
}

void SKCSpriteNode::~SKCSpriteNode(id *this)
{

  SKCNode::~SKCNode(this);
}

{
  SKCSpriteNode::~SKCSpriteNode(this);

  JUMPOUT(0x21CF0A160);
}

id SKGetGlobalDefaults(void)
{
  v0 = _globalFlags;
  if (!_globalFlags)
  {
    v1 = objc_alloc_init(MEMORY[0x277CBEB38]);
    v2 = _globalFlags;
    _globalFlags = v1;

    v0 = _globalFlags;
  }

  return v0;
}

uint64_t SKCRendererEnsureSoundContext(void)
{
  if (SKCRendererEnsureSoundContext(void)::onceToken != -1)
  {
    SKCRendererEnsureSoundContext();
  }

  v1 = _soundContext;

  return [v1 makeCurrentContext];
}

void ___Z29SKCRendererEnsureSoundContextv_block_invoke()
{
  v0 = +[SKSoundContext context];
  v1 = _soundContext;
  _soundContext = v0;
}

void SKCRendererRegisterSoundSource(SKSoundSource *a1)
{
  v1 = a1;
  v3 = v1;
  if (SKCRendererRegisterSoundSource(SKSoundSource *)::onceToken == -1)
  {
    v2 = v1;
  }

  else
  {
    SKCRendererRegisterSoundSource();
    v2 = v3;
  }

  [_soundSources addObject:v2];
}

void ___Z30SKCRendererRegisterSoundSourceP13SKSoundSource_block_invoke()
{
  v0 = objc_alloc_init(SKThreadSafeMutableArray);
  v1 = _soundSources;
  _soundSources = v0;
}

void SKCRendererRemoveCompletedSoundSources(void)
{
  v11 = *MEMORY[0x277D85DE8];
  v0 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v6 = 0u;
  v7 = 0u;
  v8 = 0u;
  v9 = 0u;
  v1 = _soundSources;
  v2 = [v1 countByEnumeratingWithState:&v6 objects:v10 count:16];
  if (v2)
  {
    v3 = *v7;
    do
    {
      for (i = 0; i != v2; ++i)
      {
        if (*v7 != v3)
        {
          objc_enumerationMutation(v1);
        }

        v5 = *(*(&v6 + 1) + 8 * i);
        if ([v5 completedBufferCount] >= 1)
        {
          [v0 addObject:v5];
        }
      }

      v2 = [v1 countByEnumeratingWithState:&v6 objects:v10 count:16];
    }

    while (v2);
  }

  [_soundSources removeObjectsInArray:v0];
}

uint64_t SKBlendModeGetBackingBlendMode(SKBlendMode a1)
{
  if ((a1 - 1) > 6)
  {
    return 0;
  }

  else
  {
    return dword_21C4B9D40[a1 - 1];
  }
}

id _SKLocalizedString(NSString *a1, NSString *a2)
{
  v2 = a1;
  v3 = [MEMORY[0x277CCA8D8] bundleWithIdentifier:@"com.apple.SpriteKit"];
  v4 = v3;
  if (v3)
  {
    v5 = [v3 localizedStringForKey:v2 value:&stru_282E190D8 table:0];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

unint64_t __deviceClassForInterfaceIdiom(unint64_t a1)
{
  if (a1 < 5)
  {
    return a1 + 1;
  }

  else
  {
    return 0;
  }
}

void SKCParticleSystemNode::SKCParticleSystemNode(SKCParticleSystemNode *this)
{
  SKCNode::SKCNode(this);
  *v1 = &unk_282E17A80;
  *(v1 + 560) = 0;
  *(v1 + 576) = 0;
  *(v1 + 568) = 0;
  *(v1 + 584) = 1000;
  operator new();
}

void sub_21C48785C(_Unwind_Exception *a1)
{
  v3 = v2;
  MEMORY[0x21CF0A160](v3, 0x10A1C40A4A8B666);

  SKCNode::~SKCNode(v1);
  _Unwind_Resume(a1);
}

void SKCParticleSystemNode::~SKCParticleSystemNode(SKCParticleSystemNode *this)
{
  *this = &unk_282E17A80;
  v2 = *(this + 74);
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  v3 = *(this + 80);
  if (v3)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v3);
  }

  v4 = *(this + 78);
  if (v4)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v4);
  }

  v5 = *(this + 76);
  if (v5)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v5);
  }

  SKCNode::~SKCNode(this);
}

{
  SKCParticleSystemNode::~SKCParticleSystemNode(this);

  JUMPOUT(0x21CF0A160);
}

double SKCParticleSystemNode::getBatchInfo@<D0>(uint64_t a1@<X8>)
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

void SKCParticleSystemNode::addRenderOps(uint64_t a1, uint64_t a2, jet_command_buffer **a3)
{
  if (*(a1 + 560) == 1)
  {
    SKCParticleSystemNode::addRenderOps_Points(a1, a2, a3);
  }

  else
  {
    SKCParticleSystemNode::addRenderOps_Quads(a1, a2, a3);
  }
}

void SKCParticleSystemNode::addRenderOps_Points(uint64_t a1, uint64_t a2, jet_command_buffer **a3)
{
  RenderData_Points = SKCParticleSystemNode::generateRenderData_Points(a1, a2);
  if (RenderData_Points)
  {
    v7 = RenderData_Points;
    v8 = *(a1 + 576);
    if (!v8)
    {
      goto LABEL_9;
    }

    [v8 _backingProgram];
    if (__p.__r_.__value_.__l.__size_)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](__p.__r_.__value_.__l.__size_);
    }

    if (__p.__r_.__value_.__r.__words[0])
    {
      v9 = *(a1 + 576);
      if (v9)
      {
        [v9 _backingProgram];
        v10 = __p.__r_.__value_.__r.__words[0];
        if (__p.__r_.__value_.__l.__size_)
        {
          std::__shared_weak_count::__release_shared[abi:ne200100](__p.__r_.__value_.__l.__size_);
        }
      }

      else
      {
        v10 = 0;
      }

      v19 = *a3;
      BackingBlendMode = SKBlendModeGetBackingBlendMode(*(a1 + 288));
      LODWORD(__p.__r_.__value_.__l.__data_) = 31;
      v21 = *(v19 + 2);
      if (v21 >= *(v19 + 3))
      {
        v22 = std::vector<jet_render_op>::__emplace_back_slow_path<jet_render_opcode>(v19 + 8, &__p);
      }

      else
      {
        *v21 = &unk_282E15828;
        *(v21 + 8) = 31;
        *(v21 + 24) = 0;
        *(v21 + 32) = 0;
        *(v21 + 16) = 0;
        *(v21 + 64) = 0;
        v22 = v21 + 192;
        *(v21 + 96) = 0;
      }

      *(v19 + 2) = v22;
      *(v22 - 80) = v10;
      *(v22 - 64) = BackingBlendMode;
      *(v22 - 60) = xmmword_21C4B9130;
      *(v22 - 44) = 3;
      v23 = *a3;
      v24 = *(a1 + 576);
      if (v24)
      {
        [v24 _commandsForBatchOffset:0 count:v7];
        v25 = __p.__r_.__value_.__r.__words[0];
      }

      else
      {
        v25 = 0;
        *&__p.__r_.__value_.__l.__data_ = 0uLL;
      }

      jet_command_buffer::add_command_buffer(v23, v25);
      if (__p.__r_.__value_.__l.__size_)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](__p.__r_.__value_.__l.__size_);
      }

      {
        SKCParticleSystemNode::addRenderOps_Points(SKCRenderInfo *,std::shared_ptr<jet_command_buffer> const&)::baseTime = skCurrentTime();
      }

      v26 = skCurrentTime() - *&SKCParticleSystemNode::addRenderOps_Points(SKCRenderInfo *,std::shared_ptr<jet_command_buffer> const&)::baseTime;
      v27 = fmodf(v26, 43200.0);
      v28 = *a3;
      std::string::basic_string[abi:ne200100]<0>(&__p, "u_time");
      jet_command_buffer::set_fragment_constant_value(v28, &__p, v27);
      if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(__p.__r_.__value_.__l.__data_);
      }
    }

    else
    {
LABEL_9:
      v11 = *a3;
      if (*(a2 + 576) == 1)
      {
        v12 = *(a2 + 264);
        LODWORD(__p.__r_.__value_.__l.__data_) = 31;
        v13 = *(v11 + 2);
        if (v13 >= *(v11 + 3))
        {
          v14 = std::vector<jet_render_op>::__emplace_back_slow_path<jet_render_opcode>(v11 + 8, &__p);
        }

        else
        {
          *v13 = &unk_282E15828;
          *(v13 + 8) = 31;
          *(v13 + 24) = 0;
          *(v13 + 32) = 0;
          *(v13 + 16) = 0;
          *(v13 + 64) = 0;
          v14 = v13 + 192;
          *(v13 + 96) = 0;
        }

        *(v11 + 2) = v14;
        *(v14 - 80) = v12;
        *(v14 - 64) = xmmword_21C4B8520;
        *(v14 - 48) = 0x30000000FLL;
      }

      else
      {
        v15 = *(a2 + 248);
        v16 = SKBlendModeGetBackingBlendMode(*(a1 + 288));
        LODWORD(__p.__r_.__value_.__l.__data_) = 31;
        v17 = *(v11 + 2);
        if (v17 >= *(v11 + 3))
        {
          v18 = std::vector<jet_render_op>::__emplace_back_slow_path<jet_render_opcode>(v11 + 8, &__p);
        }

        else
        {
          *v17 = &unk_282E15828;
          *(v17 + 8) = 31;
          *(v17 + 24) = 0;
          *(v17 + 32) = 0;
          *(v17 + 16) = 0;
          *(v17 + 64) = 0;
          v18 = v17 + 192;
          *(v17 + 96) = 0;
        }

        *(v11 + 2) = v18;
        *(v18 - 80) = v15;
        *(v18 - 64) = v16;
        *(v18 - 60) = xmmword_21C4B9130;
        *(v18 - 44) = 3;
      }
    }

    size = *(a1 + 568);
    if (!size || ([(std::__shared_weak_count *)size _backingTexture], size = __p.__r_.__value_.__l.__size_, v32 = *&__p.__r_.__value_.__l.__data_, v30 = (v32 >> 64), v31 = v32, !__p.__r_.__value_.__r.__words[0]))
    {
      v31 = *(a2 + 432);
      v30 = *(a2 + 440);
      if (v30)
      {
        atomic_fetch_add_explicit(&v30->__shared_owners_, 1uLL, memory_order_relaxed);
      }

      if (size)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](size);
      }
    }

    std::vector<std::shared_ptr<jet_buffer>>::push_back[abi:ne200100]((a2 + 672), (a2 + 416));
    v33 = *a3;
    std::string::basic_string[abi:ne200100]<0>(&__p, "u_texture");
    jet_command_buffer::set_fragment_texture(v33, &__p, v31);
    if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__p.__r_.__value_.__l.__data_);
    }

    v34 = *a3;
    std::string::basic_string[abi:ne200100]<0>(&__p, "u_texture");
    jet_command_buffer::set_fragment_sampler(v34, &__p, *(a2 + 480));
    if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__p.__r_.__value_.__l.__data_);
    }

    v35 = *a3;
    std::string::basic_string[abi:ne200100]<0>(&__p, "a_position");
    current_buffer = jet_buffer_pool::get_current_buffer(*(a1 + 600));
    jet_command_buffer::set_vertex_buffer(v35, &__p, current_buffer);
    if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__p.__r_.__value_.__l.__data_);
    }

    v37 = *a3;
    std::string::basic_string[abi:ne200100]<0>(&__p, "a_color");
    v38 = jet_buffer_pool::get_current_buffer(*(a1 + 616));
    jet_command_buffer::set_vertex_buffer(v37, &__p, v38);
    if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__p.__r_.__value_.__l.__data_);
    }

    v39 = *a3;
    LODWORD(__p.__r_.__value_.__l.__data_) = 3;
    v40 = *(v39 + 2);
    if (v40 >= *(v39 + 3))
    {
      v41 = std::vector<jet_render_op>::__emplace_back_slow_path<jet_render_opcode>(v39 + 8, &__p);
    }

    else
    {
      *v40 = &unk_282E15828;
      *(v40 + 8) = 3;
      *(v40 + 24) = 0;
      *(v40 + 32) = 0;
      *(v40 + 16) = 0;
      *(v40 + 64) = 0;
      v41 = v40 + 192;
      *(v40 + 96) = 0;
    }

    *(v39 + 2) = v41;
    *(v41 - 64) = 0;
    *(v41 - 56) = v7;
    v42 = *(a2 + 664);
    ++*(v42 + 164);
    *(v42 + 148) += v7;
    if (v30)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v30);
    }
  }
}

void SKCParticleSystemNode::addRenderOps_Quads(uint64_t a1, uint64_t a2, jet_command_buffer **a3)
{
  RenderData_Quads = SKCParticleSystemNode::generateRenderData_Quads(a1, a2);
  if (RenderData_Quads)
  {
    v7 = RenderData_Quads;
    v8 = *(a1 + 576);
    if (!v8)
    {
      goto LABEL_9;
    }

    [v8 _backingProgram];
    if (__p.__r_.__value_.__l.__size_)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](__p.__r_.__value_.__l.__size_);
    }

    if (__p.__r_.__value_.__r.__words[0])
    {
      v9 = *(a1 + 576);
      if (v9)
      {
        [v9 _backingProgram];
        v10 = __p.__r_.__value_.__r.__words[0];
        if (__p.__r_.__value_.__l.__size_)
        {
          std::__shared_weak_count::__release_shared[abi:ne200100](__p.__r_.__value_.__l.__size_);
        }
      }

      else
      {
        v10 = 0;
      }

      v20 = *a3;
      BackingBlendMode = SKBlendModeGetBackingBlendMode(*(a1 + 288));
      LODWORD(__p.__r_.__value_.__l.__data_) = 31;
      v22 = *(v20 + 2);
      if (v22 >= *(v20 + 3))
      {
        v23 = std::vector<jet_render_op>::__emplace_back_slow_path<jet_render_opcode>(v20 + 8, &__p);
      }

      else
      {
        *v22 = &unk_282E15828;
        *(v22 + 8) = 31;
        *(v22 + 24) = 0;
        *(v22 + 32) = 0;
        *(v22 + 16) = 0;
        *(v22 + 64) = 0;
        v23 = v22 + 192;
        *(v22 + 96) = 0;
      }

      *(v20 + 2) = v23;
      *(v23 - 80) = v10;
      *(v23 - 64) = BackingBlendMode;
      *(v23 - 60) = xmmword_21C4B9130;
      *(v23 - 44) = 3;
      v24 = *a3;
      v25 = *(a1 + 576);
      if (v25)
      {
        [v25 _commandsForBatchOffset:0 count:v7];
        v26 = __p.__r_.__value_.__r.__words[0];
      }

      else
      {
        v26 = 0;
        *&__p.__r_.__value_.__l.__data_ = 0uLL;
      }

      jet_command_buffer::add_command_buffer(v24, v26);
      if (__p.__r_.__value_.__l.__size_)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](__p.__r_.__value_.__l.__size_);
      }

      {
        SKCParticleSystemNode::addRenderOps_Quads(SKCRenderInfo *,std::shared_ptr<jet_command_buffer> const&)::baseTime = skCurrentTime();
      }

      v27 = skCurrentTime() - *&SKCParticleSystemNode::addRenderOps_Quads(SKCRenderInfo *,std::shared_ptr<jet_command_buffer> const&)::baseTime;
      v28 = fmodf(v27, 43200.0);
      v29 = *a3;
      std::string::basic_string[abi:ne200100]<0>(&__p, "u_time");
      jet_command_buffer::set_fragment_constant_value(v29, &__p, v28);
      if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(__p.__r_.__value_.__l.__data_);
      }
    }

    else
    {
LABEL_9:
      if (*(a2 + 576) == 1)
      {
        v11 = *a3;
        v12 = *(a2 + 184);
        LODWORD(__p.__r_.__value_.__l.__data_) = 31;
        v13 = *(v11 + 2);
        if (v13 >= *(v11 + 3))
        {
          v14 = std::vector<jet_render_op>::__emplace_back_slow_path<jet_render_opcode>(v11 + 8, &__p);
        }

        else
        {
          *v13 = &unk_282E15828;
          *(v13 + 8) = 31;
          *(v13 + 24) = 0;
          *(v13 + 32) = 0;
          *(v13 + 16) = 0;
          *(v13 + 64) = 0;
          v14 = v13 + 192;
          *(v13 + 96) = 0;
        }

        *(v11 + 2) = v14;
        *(v14 - 80) = v12;
        *(v14 - 64) = xmmword_21C4B8520;
        *(v14 - 48) = 0x30000000FLL;
      }

      else
      {
        v15 = *(a2 + 168);
        v16 = *a3;
        v17 = SKBlendModeGetBackingBlendMode(*(a1 + 288));
        LODWORD(__p.__r_.__value_.__l.__data_) = 31;
        v18 = *(v16 + 2);
        if (v18 >= *(v16 + 3))
        {
          v19 = std::vector<jet_render_op>::__emplace_back_slow_path<jet_render_opcode>(v16 + 8, &__p);
        }

        else
        {
          *v18 = &unk_282E15828;
          *(v18 + 8) = 31;
          *(v18 + 24) = 0;
          *(v18 + 32) = 0;
          *(v18 + 16) = 0;
          *(v18 + 64) = 0;
          v19 = v18 + 192;
          *(v18 + 96) = 0;
        }

        *(v16 + 2) = v19;
        *(v19 - 80) = v15;
        *(v19 - 64) = v17;
        *(v19 - 60) = xmmword_21C4B9130;
        *(v19 - 44) = 3;
      }
    }

    size = *(a1 + 568);
    if (!size || ([(std::__shared_weak_count *)size _backingTexture], size = __p.__r_.__value_.__l.__size_, v33 = *&__p.__r_.__value_.__l.__data_, v31 = (v33 >> 64), v32 = v33, !__p.__r_.__value_.__r.__words[0]))
    {
      v32 = *(a2 + 432);
      v31 = *(a2 + 440);
      if (v31)
      {
        atomic_fetch_add_explicit(&v31->__shared_owners_, 1uLL, memory_order_relaxed);
      }

      if (size)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](size);
      }
    }

    std::vector<std::shared_ptr<jet_buffer>>::push_back[abi:ne200100]((a2 + 672), (a2 + 416));
    v34 = *a3;
    std::string::basic_string[abi:ne200100]<0>(&__p, "u_texture");
    jet_command_buffer::set_fragment_texture(v34, &__p, v32);
    if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__p.__r_.__value_.__l.__data_);
    }

    v35 = *a3;
    std::string::basic_string[abi:ne200100]<0>(&__p, "u_texture");
    jet_command_buffer::set_fragment_sampler(v35, &__p, *(a2 + 480));
    if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__p.__r_.__value_.__l.__data_);
    }

    v36 = *a3;
    std::string::basic_string[abi:ne200100]<0>(&__p, "a_position");
    current_buffer = jet_buffer_pool::get_current_buffer(*(a1 + 600));
    jet_command_buffer::set_vertex_buffer(v36, &__p, current_buffer);
    if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__p.__r_.__value_.__l.__data_);
    }

    v38 = *a3;
    std::string::basic_string[abi:ne200100]<0>(&__p, "a_color");
    v39 = jet_buffer_pool::get_current_buffer(*(a1 + 616));
    jet_command_buffer::set_vertex_buffer(v38, &__p, v39);
    if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__p.__r_.__value_.__l.__data_);
    }

    v40 = *a3;
    std::string::basic_string[abi:ne200100]<0>(&__p, "a_tex_coord");
    v41 = jet_buffer_pool::get_current_buffer(*(a1 + 632));
    jet_command_buffer::set_vertex_buffer(v40, &__p, v41);
    if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__p.__r_.__value_.__l.__data_);
    }

    v42 = *a3;
    v43 = *(a2 + 416);
    LODWORD(__p.__r_.__value_.__l.__data_) = 4;
    v44 = *(v42 + 2);
    if (v44 >= *(v42 + 3))
    {
      v45 = std::vector<jet_render_op>::__emplace_back_slow_path<jet_render_opcode>(v42 + 8, &__p);
    }

    else
    {
      *v44 = &unk_282E15828;
      *(v44 + 8) = 4;
      *(v44 + 24) = 0;
      *(v44 + 32) = 0;
      *(v44 + 16) = 0;
      *(v44 + 64) = 0;
      v45 = v44 + 192;
      *(v44 + 96) = 0;
    }

    *(v42 + 2) = v45;
    *(v45 - 80) = v43;
    *(v45 - 64) = 3;
    *(v45 - 56) = 6 * v7;
    v46 = *(a2 + 664);
    ++*(v46 + 164);
    *(v46 + 148) += 6 * v7 / 6u;
    if (v31)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v31);
    }
  }
}

uint64_t SKCParticleSystemNode::generateRenderData_Quads(uint64_t a1, uint64_t a2)
{
  SKCRenderer::getBackingContext(*(a2 + 104), &v87);
  v83 = 0;
  v84 = &v83;
  v85 = 0x2020000000;
  v86 = 0;
  v4 = *(a1 + 592);
  if (!v4 || (v82[0] = MEMORY[0x277D85DD0], v82[1] = 3221225472, v82[2] = ___ZN21SKCParticleSystemNode24generateRenderData_QuadsEP13SKCRenderInfo_block_invoke, v82[3] = &unk_2783103F0, v82[4] = &v83, SKCParticleManager::enumerateParticleSystems(v4, v82), (v5 = *(v84 + 6)) == 0))
  {
    v9 = 0;
    goto LABEL_59;
  }

  if (*(a1 + 584) <= (4 * v5))
  {
    v6 = 4 * v5;
  }

  else
  {
    v6 = *(a1 + 584);
  }

  v7 = *(a1 + 600);
  if (v7)
  {
    v8 = *(v7 + 16);
  }

  else
  {
    v8 = 0;
  }

  v10 = (a1 + 600);
  if (v8 < v6)
  {
    v11 = *(a1 + 608);
    *v10 = 0;
    *(a1 + 608) = 0;
    if (v11)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v11);
    }

    v12 = *(a1 + 624);
    *(a1 + 616) = 0;
    *(a1 + 624) = 0;
    if (v12)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v12);
    }

    v13 = *(a1 + 640);
    *(a1 + 632) = 0;
    *(a1 + 640) = 0;
    if (v13)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v13);
    }

    do
    {
      v8 = (2 * v8 + 2);
    }

    while (v8 < v6);
  }

  if (!*v10)
  {
    v40 = (*(*v87 + 16))(v87, 0, 4, v8);
    std::shared_ptr<jet_buffer_pool>::shared_ptr[abi:ne200100]<jet_buffer_pool,0>(&v78, v40);
  }

  jet_buffer_pool::next_buffer(*v10);
  v14 = *(a1 + 616);
  if (!v14)
  {
    v41 = (*(*v87 + 16))(v87, 2, 4, v8);
    std::shared_ptr<jet_buffer_pool>::shared_ptr[abi:ne200100]<jet_buffer_pool,0>(&v78, v41);
  }

  jet_buffer_pool::next_buffer(v14);
  v15 = *(a1 + 632);
  if (!v15)
  {
    v42 = (*(*v87 + 16))(v87, 0, 2, v8);
    std::shared_ptr<jet_buffer_pool>::shared_ptr[abi:ne200100]<jet_buffer_pool,0>(&v78, v42);
  }

  jet_buffer_pool::next_buffer(v15);
  if ((((3 * (v8 >> 2)) >> 4) & 0x7FFFFFF) >= 0x271)
  {
    v16 = 6 * (v8 >> 2) + 1;
  }

  else
  {
    v16 = 20000;
  }

  v17 = *(a2 + 416);
  if (!v17 || *(v17 + 48) < v16)
  {
    v18 = (*(*v87 + 8))(v87, 4, 1, v16, 0);
    std::shared_ptr<jet_buffer>::shared_ptr[abi:ne200100]<jet_buffer,0>(&v78, v18);
  }

  v19 = *v10;
  data = jet_buffer_pool::get_data(*v10);
  jet_buffer_pool::get_element_size(v19);
  v21 = *(a1 + 616);
  v22 = jet_buffer_pool::get_data(v21);
  jet_buffer_pool::get_element_size(v21);
  v23 = *(a1 + 632);
  v24 = jet_buffer_pool::get_data(v23);
  jet_buffer_pool::get_element_size(v23);
  v78 = 0;
  v79 = &v78;
  v80 = 0x2020000000;
  v81 = 0;
  v25 = *(a1 + 568);
  if (v25)
  {
    [v25 cropOffset];
    v75.x = v26;
    v75.y = v27;
    v68 = sk_vector_make(&v75);
    [*(a1 + 568) cropScale];
    v75.x = v28;
    v75.y = v29;
    v67 = sk_vector_make(&v75);
    v30 = *(a1 + 568);
    if (v30)
    {
      [v30 textureRect];
      v32 = v31;
      v34 = v33;
      v36 = v35;
      v38 = v37;
      v39 = *(a1 + 568);
      if (v39)
      {
        [v39 _backingTexture];
        if (*&v75.y)
        {
          std::__shared_weak_count::__release_shared[abi:ne200100](*&v75.y);
        }
      }

      goto LABEL_38;
    }

    v36 = 1.0;
    v32 = 0.0;
  }

  else
  {
    v36 = 1.0;
    v32 = 0.0;
    __asm { FMOV            V0.2S, #1.0 }

    v67 = _D0;
    v68 = 0;
  }

  v34 = 0.0;
  v38 = 1.0;
LABEL_38:
  v90.origin.x = v32;
  v90.origin.y = v34;
  v90.size.width = v36;
  v90.size.height = v38;
  MinX = CGRectGetMinX(v90);
  v91.origin.x = v32;
  v91.origin.y = v34;
  v91.size.width = v36;
  v91.size.height = v38;
  MaxX = CGRectGetMaxX(v91);
  v92.origin.x = v32;
  v92.origin.y = v34;
  v92.size.width = v36;
  v92.size.height = v38;
  MinY = CGRectGetMinY(v92);
  v93.origin.x = v32;
  v93.origin.y = v34;
  v93.size.width = v36;
  v93.size.height = v38;
  MaxY = CGRectGetMaxY(v93);
  v52 = MinX;
  v53 = MaxX;
  v54 = MinY;
  v55 = *(a1 + 568);
  v56 = MaxY;
  if (v55)
  {
    [v55 _backingTexture];
    if (*&v75.x && (*(**&v75.x + 24))(*&v75.x) == 1)
    {
      v52 = v52 * (***&v75.x)(*&v75.x);
      v53 = v53 * (***&v75.x)(*&v75.x);
      v54 = v54 * (*(**&v75.x + 8))(*&v75.x);
      v56 = v56 * (*(**&v75.x + 8))(*&v75.x);
    }

    v57 = [*(a1 + 568) isFlipped];
    if (v57)
    {
      v58 = v54;
    }

    else
    {
      v58 = v56;
    }

    if (v57)
    {
      v54 = v56;
    }

    if (*&v75.y)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](*&v75.y);
    }
  }

  else
  {
    v58 = MaxY;
  }

  v59 = *(a2 + 96);
  v75.x = 0.0;
  *&v75.y = &v75;
  v76 = 0x2020000000;
  v77 = 0;
  v60 = *(a1 + 592);
  if (v60)
  {
    v69[0] = MEMORY[0x277D85DD0];
    v69[1] = 3221225472;
    v69[2] = ___ZN21SKCParticleSystemNode24generateRenderData_QuadsEP13SKCRenderInfo_block_invoke_2;
    v69[3] = &unk_278310418;
    v69[7] = v67;
    v69[8] = v68;
    v70 = v52;
    v71 = v54;
    v72 = v53;
    v73 = v58;
    v69[9] = data;
    v69[10] = v24;
    v74 = fminf(fmaxf(v59, 0.0), 1.0);
    v69[11] = v22;
    v69[4] = &v75;
    v69[5] = &v78;
    v69[6] = a2;
    SKCParticleManager::enumerateParticleSystems(v60, v69);
  }

  v61 = v79;
  if (*(v79 + 6))
  {
    v62.i64[0] = 0x80000000800000;
    v62.i64[1] = 0x80000000800000;
    v63 = vnegq_f32(v62);
    *(a1 + 656) = v63;
    *(a1 + 672) = v62;
    if ((v61[3] & 0x3FFFFFFF) != 0)
    {
      v64 = 0;
      do
      {
        v63 = vminnmq_f32(v63, *(data + 16 * v64));
        *(a1 + 656) = v63;
        v62 = vmaxnmq_f32(v62, *(data + 16 * v64));
        *(a1 + 672) = v62;
        ++v64;
      }

      while (v64 < (4 * *(v61 + 6)));
    }

    v89 = __invert_f4(*(a2 + 32));
    v65 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v89.columns[0], COERCE_FLOAT(*(a1 + 656))), v89.columns[1], *(a1 + 656), 1), v89.columns[2], *(a1 + 656), 2), v89.columns[3], *(a1 + 656), 3);
    v89.columns[0] = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v89.columns[0], COERCE_FLOAT(*(a1 + 672))), v89.columns[1], *(a1 + 672), 1), v89.columns[2], *(a1 + 672), 2), v89.columns[3], *(a1 + 672), 3);
    *(a1 + 656) = v65;
    *(a1 + 672) = v89.columns[0];
  }

  else
  {
    *(a1 + 656) = 0u;
    *(a1 + 672) = 0u;
  }

  jet_buffer_pool::commit_data(*v10);
  jet_buffer_pool::commit_data(*(a1 + 632));
  jet_buffer_pool::commit_data(*(a1 + 616));
  v9 = *(v79 + 6);
  _Block_object_dispose(&v75, 8);
  _Block_object_dispose(&v78, 8);
LABEL_59:
  _Block_object_dispose(&v83, 8);
  if (v88)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v88);
  }

  return v9;
}

void sub_21C488CD8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, char a31)
{
  _Block_object_dispose(&a31, 8);
  _Block_object_dispose((v31 - 192), 8);
  v33 = *(v31 - 152);
  if (v33)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v33);
  }

  _Unwind_Resume(a1);
}

void SKCParticleSystemNode::subclassRecomputeFlags(id *this)
{
  if ([this[72] _usesTimeUniform] && (*(this + 172) & 1) == 0 && (*(this + 171) & 0x60) != 0)
  {

    SKCNode::setFlags(this, 66, 1);
  }
}

uint64_t SKCParticleSystemNode::generateRenderData_Points(uint64_t a1, uint64_t a2)
{
  SKCRenderer::getBackingContext(*(a2 + 104), &v49);
  v45 = 0;
  v46 = &v45;
  v47 = 0x2020000000;
  v48 = 0;
  v4 = *(a1 + 592);
  if (v4 && (v44[0] = MEMORY[0x277D85DD0], v44[1] = 3221225472, v44[2] = ___ZN21SKCParticleSystemNode25generateRenderData_PointsEP13SKCRenderInfo_block_invoke, v44[3] = &unk_2783103F0, v44[4] = &v45, SKCParticleManager::enumerateParticleSystems(v4, v44), v5 = (v46 + 3), *(v46 + 6)))
  {
    v6 = (a1 + 600);
    if (*(a1 + 584) >= *(v46 + 6))
    {
      v5 = (a1 + 584);
    }

    v7 = *(a1 + 600);
    if (v7)
    {
      v8 = *(v7 + 16);
    }

    else
    {
      v8 = 0;
    }

    v10 = *v5;
    v11 = *(a1 + 640);
    *(a1 + 632) = 0;
    *(a1 + 640) = 0;
    if (v11)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v11);
    }

    if (v8 < v10)
    {
      v12 = *(a1 + 608);
      *v6 = 0;
      *(a1 + 608) = 0;
      if (v12)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v12);
      }

      v13 = *(a1 + 624);
      *(a1 + 616) = 0;
      *(a1 + 624) = 0;
      if (v13)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v13);
      }

      do
      {
        v8 = (2 * v8 + 2);
      }

      while (v8 < v10);
    }

    if (!*v6)
    {
      v26 = (*(*v49 + 16))(v49, 0, 4, v8);
      std::shared_ptr<jet_buffer_pool>::shared_ptr[abi:ne200100]<jet_buffer_pool,0>(&v40, v26);
    }

    jet_buffer_pool::next_buffer(*v6);
    v14 = *(a1 + 616);
    if (!v14)
    {
      v27 = (*(*v49 + 16))(v49, 2, 4, v8);
      std::shared_ptr<jet_buffer_pool>::shared_ptr[abi:ne200100]<jet_buffer_pool,0>(&v40, v27);
    }

    jet_buffer_pool::next_buffer(v14);
    v15 = *v6;
    data = jet_buffer_pool::get_data(*v6);
    jet_buffer_pool::get_element_size(v15);
    v17 = *(a1 + 616);
    v18 = jet_buffer_pool::get_data(v17);
    jet_buffer_pool::get_element_size(v17);
    v40 = 0;
    v41 = &v40;
    v42 = 0x2020000000;
    v43 = 0;
    v19 = *(a2 + 96);
    v38[0] = 0;
    v38[1] = v38;
    v38[2] = 0x2020000000;
    v39 = 0;
    v20.i64[0] = 0x80000000800000;
    v20.i64[1] = 0x80000000800000;
    *(a1 + 656) = vnegq_f32(v20);
    *(a1 + 672) = v20;
    v21 = 0uLL;
    v22 = *(a1 + 592);
    if (v22)
    {
      v23 = (a2 + 128);
      v20.i64[0] = *(a2 + 120);
      v24 = vld1_dup_f32(v23);
      v29[0] = MEMORY[0x277D85DD0];
      v29[1] = 3221225472;
      v29[2] = ___ZN21SKCParticleSystemNode25generateRenderData_PointsEP13SKCRenderInfo_block_invoke_2;
      v29[3] = &unk_278310440;
      v33 = a1;
      v34 = a2;
      *v20.f32 = vdiv_f32(vcvt_f32_u32(*v20.f32), v24);
      v30 = v20;
      v37 = fminf(fmaxf(v19, 0.0), 1.0);
      v35 = data;
      v36 = v18;
      v31 = v38;
      v32 = &v40;
      SKCParticleManager::enumerateParticleSystems(v22, v29);
      v25 = 0uLL;
      v21 = 0uLL;
      if (*(v41 + 6))
      {
        v51 = __invert_f4(*(a2 + 32));
        v25 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v51.columns[0], COERCE_FLOAT(*(a1 + 656))), v51.columns[1], *(a1 + 656), 1), v51.columns[2], *(a1 + 656), 2), v51.columns[3], *(a1 + 656), 3);
        v21 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v51.columns[0], COERCE_FLOAT(*(a1 + 672))), v51.columns[1], *(a1 + 672), 1), v51.columns[2], *(a1 + 672), 2), v51.columns[3], *(a1 + 672), 3);
      }
    }

    else
    {
      v25 = 0uLL;
    }

    *(a1 + 656) = v25;
    *(a1 + 672) = v21;
    jet_buffer_pool::commit_data(*(a1 + 600));
    jet_buffer_pool::commit_data(*(a1 + 616));
    v9 = *(v41 + 6);
    _Block_object_dispose(v38, 8);
    _Block_object_dispose(&v40, 8);
  }

  else
  {
    v9 = 0;
  }

  _Block_object_dispose(&v45, 8);
  if (v50)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v50);
  }

  return v9;
}

void sub_21C4891B8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, char a23, uint64_t a24, uint64_t a25, uint64_t a26, char a27)
{
  _Block_object_dispose(&a23, 8);
  _Block_object_dispose(&a27, 8);
  _Block_object_dispose((v27 - 128), 8);
  v29 = *(v27 - 88);
  if (v29)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v29);
  }

  _Unwind_Resume(a1);
}

void ___ZN21SKCParticleSystemNode24generateRenderData_QuadsEP13SKCRenderInfo_block_invoke_2(float32x2_t *a1, uint64_t a2)
{
  v4 = *(a2 + 84);
  std::string::basic_string[abi:ne200100]<0>(__p, "pos");
  v5 = *(SKCParticleSystem::getSlice(a2, __p) + 16);
  if (v57 < 0)
  {
    operator delete(__p[0]);
  }

  std::string::basic_string[abi:ne200100]<0>(__p, "size");
  v6 = *(SKCParticleSystem::getSlice(a2, __p) + 16);
  if (v57 < 0)
  {
    operator delete(__p[0]);
  }

  std::string::basic_string[abi:ne200100]<0>(__p, "scale");
  v7 = *(SKCParticleSystem::getSlice(a2, __p) + 16);
  if (v57 < 0)
  {
    operator delete(__p[0]);
  }

  std::string::basic_string[abi:ne200100]<0>(__p, "rot");
  v8 = *(SKCParticleSystem::getSlice(a2, __p) + 16);
  if (v57 < 0)
  {
    operator delete(__p[0]);
  }

  if (v4 >= 1)
  {
    v9 = 0;
    v10 = a1[6];
    v53 = v10[3];
    v54 = v10[2];
    v51 = v10[5];
    v52 = v10[4];
    do
    {
      v11 = *v5++;
      v12 = v11;
      v13 = *v6++;
      v55 = *(v7 + v9);
      v14 = __sincosf_stret(*(v8 + v9));
      v15 = vmul_f32(a1[7], vmul_n_f32(vmul_f32(v13, 0x3F0000003F000000), v55));
      v16 = vadd_f32(v12, vmul_f32(a1[8], v15));
      v17 = vmlaq_f32(vmlaq_lane_f32(vmulq_n_f32(v54, v16.f32[0]), v53, v16, 1), 0, v52);
      v18 = vmlaq_f32(vmlaq_f32(vmlaq_n_f32(vmulq_n_f32(v54, v14.__cosval * v15.f32[0]), v53, v14.__sinval * v15.f32[0]), 0, v52), 0, v51);
      v19 = vmlaq_f32(vmlaq_f32(vmlaq_n_f32(vmulq_n_f32(v54, -(v15.f32[1] * v14.__sinval)), v53, vmuls_lane_f32(v14.__cosval, v15, 1)), 0, v52), 0, v51);
      v20 = vaddq_f32(v51, v17);
      v21 = vsubq_f32(v20, v18);
      v22 = v9 + *(*(*&a1[4] + 8) + 24);
      *(*&a1[9] + 16 * v22) = vsubq_f32(v21, v19);
      v23 = vaddq_f32(v20, v18);
      *(*&a1[9] + 16 * v22 + 16) = vsubq_f32(v23, v19);
      *(*&a1[9] + 16 * v22 + 32) = vaddq_f32(v19, v23);
      *(*&a1[9] + 16 * v22 + 48) = vaddq_f32(v19, v21);
      v9 += 4;
    }

    while (4 * v4 != v9);
  }

  if (v4 >= 1)
  {
    v24 = 0;
    LODWORD(v27) = a1[12].i32[0];
    LODWORD(v25) = v27;
    HIDWORD(v25) = a1[12].i32[1];
    v26 = a1[13];
    HIDWORD(v27) = v26.i32[1];
    v28 = v4;
    do
    {
      v29 = v24 + *(*(*&a1[4] + 8) + 24);
      *(*&a1[10] + 8 * v29) = v25;
      *(*&a1[10] + 8 * v29 + 8) = __PAIR64__(HIDWORD(v25), v26.u32[0]);
      *(*&a1[10] + 8 * v29 + 16) = v26;
      *(*&a1[10] + 8 * v29 + 24) = v27;
      v24 += 4;
      --v28;
    }

    while (v28);
  }

  std::string::basic_string[abi:ne200100]<0>(__p, "outColor");
  v30 = *(SKCParticleSystem::getSlice(a2, __p) + 16);
  if (v57 < 0)
  {
    operator delete(__p[0]);
  }

  if (v4 < 4)
  {
    LODWORD(v36) = 0;
  }

  else
  {
    v35 = 0;
    v36 = 0;
    v37 = (v30 + 8);
    v38 = vdupq_n_s32(0x4B400000u);
    v39 = vdupq_n_s32(0xCB400000);
    do
    {
      v31.i32[0] = *(v37 - 2);
      v32.i32[0] = *(v37 - 1);
      v40 = a1[14].f32[0];
      v33.i32[0] = *v37;
      v34.i32[0] = v37[1];
      v37 += 4;
      v33 = vmulq_n_f32(vaddq_f32(vorrq_s8(vmovl_u16(*&vmovl_u8(*v33.f32)), v38), v39), v40);
      v34 = vaddq_f32(vorrq_s8(vmovl_u16(*&vmovl_u8(*v34.f32)), v38), v39);
      v41 = v35 + *(*(*&a1[4] + 8) + 24);
      v42 = vuzp1_s8(vmovn_s32(vcvtq_s32_f32(vmulq_n_f32(vaddq_f32(vorrq_s8(vmovl_u16(*&vmovl_u8(v31)), v38), v39), v40))), *v38.i8).u32[0];
      *(*&a1[11] + 4 * v41) = v42;
      *(*&a1[11] + 4 * v41 + 4) = v42;
      *(*&a1[11] + 4 * v41 + 8) = v42;
      *(*&a1[11] + 4 * v41 + 12) = v42;
      v43 = vuzp1_s8(vmovn_s32(vcvtq_s32_f32(vmulq_n_f32(vaddq_f32(vorrq_s8(vmovl_u16(*&vmovl_u8(v32)), v38), v39), v40))), *v38.i8).u32[0];
      *(*&a1[11] + 4 * v41 + 16) = v43;
      *(*&a1[11] + 4 * v41 + 20) = v43;
      *(*&a1[11] + 4 * v41 + 24) = v43;
      *(*&a1[11] + 4 * v41 + 28) = v43;
      v44 = vuzp1_s8(vmovn_s32(vcvtq_s32_f32(v33)), *v38.i8).u32[0];
      *(*&a1[11] + 4 * v41 + 32) = v44;
      *(*&a1[11] + 4 * v41 + 36) = v44;
      *(*&a1[11] + 4 * v41 + 40) = v44;
      v32 = vmovn_s32(vcvtq_s32_f32(vmulq_n_f32(v34, v40)));
      *(*&a1[11] + 4 * v41 + 44) = v44;
      v31 = vuzp1_s8(v32, *v38.i8);
      *(*&a1[11] + 4 * v41 + 48) = v31.i32[0];
      *(*&a1[11] + 4 * v41 + 52) = v31.i32[0];
      *(*&a1[11] + 4 * v41 + 56) = v31.i32[0];
      *(*&a1[11] + 4 * v41 + 60) = v31.i32[0];
      v36 += 4;
      v35 += 16;
    }

    while (v36 < (v4 - 3));
  }

  if (v36 < v4)
  {
    v45 = 4 * v36;
    v46 = (v30 + 4 * v36);
    v47 = vdupq_n_s32(0x4B400000u);
    v48 = vdupq_n_s32(0xCB400000);
    v49 = v4 - v36;
    do
    {
      v50 = *v46++;
      v31.i32[0] = v50;
      v31 = vuzp1_s8(vmovn_s32(vcvtq_s32_f32(vmulq_n_f32(vaddq_f32(vorrq_s8(vmovl_u16(*&vmovl_u8(v31)), v47), v48), a1[14].f32[0]))), *v47.i8);
      *(*&a1[11] + 4 * (v45 + *(*(*&a1[4] + 8) + 24))) = v31.i32[0];
      *(*&a1[11] + 4 * (v45 + *(*(*&a1[4] + 8) + 24) + 1)) = v31.i32[0];
      *(*&a1[11] + 4 * (v45 + *(*(*&a1[4] + 8) + 24) + 2)) = v31.i32[0];
      *(*&a1[11] + 4 * (v45 + *(*(*&a1[4] + 8) + 24) + 3)) = v31.i32[0];
      v45 += 4;
      --v49;
    }

    while (v49);
  }

  *(*(*&a1[5] + 8) + 24) += v4;
  *(*(*&a1[4] + 8) + 24) += 4 * v4;
}

void sub_21C489788(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, void *__p, uint64_t a21, int a22, __int16 a23, char a24, char a25)
{
  if (a25 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void ___ZN21SKCParticleSystemNode25generateRenderData_PointsEP13SKCRenderInfo_block_invoke_2(float32x4_t *a1, uint64_t a2)
{
  v4 = a1[4].i64[0];
  v5 = *(a2 + 84);
  std::string::basic_string[abi:ne200100]<0>(__p, "pos");
  v6 = *(SKCParticleSystem::getSlice(a2, __p) + 16);
  if (v34 < 0)
  {
    operator delete(__p[0]);
  }

  std::string::basic_string[abi:ne200100]<0>(__p, "size");
  v7 = *(SKCParticleSystem::getSlice(a2, __p) + 16);
  if (v34 < 0)
  {
    operator delete(__p[0]);
  }

  std::string::basic_string[abi:ne200100]<0>(__p, "scale");
  v8 = *(SKCParticleSystem::getSlice(a2, __p) + 16);
  if (v34 < 0)
  {
    operator delete(__p[0]);
  }

  if (v5 >= 1)
  {
    v9 = 0;
    v10.i64[0] = 0x3F0000003F000000;
    v10.i64[1] = 0x3F0000003F000000;
    do
    {
      v11 = vmul_n_f32(*(v7 + 8 * v9), *(v8 + 4 * v9));
      v12 = a1[4].i64[1];
      v13 = v12[2];
      v14 = v12[3];
      v15 = v12[4];
      v16 = v12[5];
      v17 = vmulq_f32(a1[2], vabsq_f32(vmlaq_f32(vmlaq_f32(vmlaq_lane_f32(vmulq_n_f32(v13, v11.f32[0]), v14, v11, 1), 0, v15), 0, v16)));
      v18 = vaddq_f32(v16, vmlaq_f32(vmlaq_lane_f32(vmulq_n_f32(v13, COERCE_FLOAT(*(v6 + 8 * v9))), v14, *(v6 + 8 * v9), 1), 0, v15));
      v18.f32[3] = (v12[8].f32[0] * vaddv_f32(*v17.f32)) * 0.25;
      *(a1[5].i64[0] + 16 * (v9 + *(*(a1[3].i64[0] + 8) + 24))) = v18;
      v19 = vminnmq_f32(v4[41], vmlsq_f32(v18, v10, v17));
      v20 = vmaxnmq_f32(v4[42], vmlaq_f32(v18, v10, v17));
      v4[41] = v19;
      v4[42] = v20;
      ++v9;
    }

    while (v5 != v9);
  }

  std::string::basic_string[abi:ne200100]<0>(__p, "outColor");
  v21 = *(SKCParticleSystem::getSlice(a2, __p) + 16);
  if (v34 < 0)
  {
    operator delete(__p[0]);
  }

  if (v5 < 4)
  {
    LODWORD(v26) = 0;
  }

  else
  {
    v26 = 0;
    v27 = (v21 + 8);
    v28 = vdupq_n_s32(0x4B400000u);
    v29 = vdupq_n_s32(0xCB400000);
    do
    {
      v22.i32[0] = *(v27 - 2);
      v23.i32[0] = *(v27 - 1);
      v30 = a1[6].f32[0];
      v23 = vmovn_s32(vcvtq_s32_f32(vmulq_n_f32(vaddq_f32(vorrq_s8(vmovl_u16(*&vmovl_u8(v23)), v28), v29), v30)));
      v24.i32[0] = *v27;
      v25.i32[0] = v27[1];
      v27 += 4;
      v24 = vmovn_s32(vcvtq_s32_f32(vmulq_n_f32(vaddq_f32(vorrq_s8(vmovl_u16(*&vmovl_u8(v24)), v28), v29), v30)));
      v25 = vaddq_f32(vorrq_s8(vmovl_u16(*&vmovl_u8(*v25.f32)), v28), v29);
      *(a1[5].i64[1] + 4 * (v26 + *(*(a1[3].i64[0] + 8) + 24))) = vuzp1_s8(vmovn_s32(vcvtq_s32_f32(vmulq_n_f32(vaddq_f32(vorrq_s8(vmovl_u16(*&vmovl_u8(v22)), v28), v29), v30))), *v28.i8).u32[0];
      *(a1[5].i64[1] + 4 * (v26 + *(*(a1[3].i64[0] + 8) + 24) + 1)) = vuzp1_s8(v23, *v28.i8).u32[0];
      *(a1[5].i64[1] + 4 * (v26 + *(*(a1[3].i64[0] + 8) + 24) + 2)) = vuzp1_s8(v24, *v28.i8).u32[0];
      v22 = vuzp1_s8(vmovn_s32(vcvtq_s32_f32(vmulq_n_f32(v25, v30))), *v28.i8);
      *(a1[5].i64[1] + 4 * (v26 + *(*(a1[3].i64[0] + 8) + 24) + 3)) = v22.i32[0];
      v26 += 4;
    }

    while (v26 < (v5 - 3));
  }

  if (v26 < v5)
  {
    v26 = v26;
    v31 = vdupq_n_s32(0x4B400000u);
    v32 = vdupq_n_s32(0xCB400000);
    do
    {
      v22.i32[0] = *(v21 + 4 * v26);
      v22 = vuzp1_s8(vmovn_s32(vcvtq_s32_f32(vmulq_n_f32(vaddq_f32(vorrq_s8(vmovl_u16(*&vmovl_u8(v22)), v31), v32), a1[6].f32[0]))), *v31.i8);
      *(a1[5].i64[1] + 4 * (v26++ + *(*(a1[3].i64[0] + 8) + 24))) = v22.i32[0];
    }

    while (v5 != v26);
  }

  *(*(a1[3].i64[1] + 8) + 24) += v5;
  *(*(a1[3].i64[0] + 8) + 24) += v5;
}